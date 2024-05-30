#include <cuda_runtime.h>
#include "histogram_eq.h"
#include "timer.h"

#define THREADS_PER_BLOCK 256

namespace cp
{
    constexpr auto HISTOGRAM_LENGTH = 256;

    __device__ float prob(const int x, const int size)
    {
        return static_cast<float>(x) / size;
    }

    __device__ unsigned char clamp(unsigned char x)
    {
        return min(max(x, static_cast<unsigned char>(0)), static_cast<unsigned char>(255));
    }

    __device__ unsigned char correct_color(float cdf_val, float cdf_min)
    {
        return clamp(static_cast<unsigned char>(255 * (cdf_val - cdf_min) / (1 - cdf_min)));
    }

    __global__ void process_image_and_build_histogram(const float *input_image_data,
                                                      unsigned char *uchar_image,
                                                      unsigned char *gray_image,
                                                      int *histogram,
                                                      int size,
                                                      int size_channels)
    {
        // histogram shared with all threads, each writes 1 position
        // might need to change strategy to write to original histogram
        extern __shared__ int local_histogram[];

        // Initialize shared histogram
        for (int i = threadIdx.x; i < HISTOGRAM_LENGTH; i += blockDim.x)
        {
            local_histogram[i] = 0;
        }
        __syncthreads();

        // Process image and build local histograms
        for (int i = blockIdx.x * blockDim.x + threadIdx.x; i < size; i += blockDim.x * gridDim.x)
        {
            int idx = 3 * i;
            unsigned char r = static_cast<unsigned char>(255 * input_image_data[idx]);
            unsigned char g = static_cast<unsigned char>(255 * input_image_data[idx + 1]);
            unsigned char b = static_cast<unsigned char>(255 * input_image_data[idx + 2]);

            uchar_image[idx] = r;
            uchar_image[idx + 1] = g;
            uchar_image[idx + 2] = b;

            unsigned char gray = static_cast<unsigned char>(0.21f * r + 0.71f * g + 0.07f * b);
            gray_image[i] = gray;
            atomicAdd(&local_histogram[gray], 1);
        }
        __syncthreads();

        // Merge local histograms into the global histogram
        for (int i = threadIdx.x; i < HISTOGRAM_LENGTH; i += blockDim.x)
        {
            atomicAdd(&histogram[i], local_histogram[i]);
        }
    }

    __global__ void calculate_cdf(const int *histogram, float *cdf, int size)
    {
        __shared__ int temp[HISTOGRAM_LENGTH];
        int idx = threadIdx.x;

        if (idx < HISTOGRAM_LENGTH)
        {
            temp[idx] = histogram[idx];
        }
        __syncthreads();

        if (idx == 0)
        {
            cdf[0] = prob(temp[0], size);
            for (int i = 1; i < HISTOGRAM_LENGTH; i++)
            {
                cdf[i] = cdf[i - 1] + prob(temp[i], size);
            }
        }
    }

    __global__ void find_cdf_min(const float *cdf, float *cdf_min)
    {
        __shared__ float min_val[HISTOGRAM_LENGTH];
        int idx = threadIdx.x;

        if (idx < HISTOGRAM_LENGTH)
        {
            min_val[idx] = cdf[idx];
        }
        __syncthreads();

        for (int stride = HISTOGRAM_LENGTH / 2; stride > 0; stride >>= 1)
        {
            if (idx < stride)
            {
                min_val[idx] = min(min_val[idx], min_val[idx + stride]);
            }
            __syncthreads();
        }

        if (idx == 0)
        {
            *cdf_min = min_val[0];
        }
    }

    __global__ void apply_histogram_equalization_and_convert_to_float(unsigned char *uchar_image, float *output_image_data, const float *cdf, float cdf_min, int size_channels)
    {
        for (int i = blockIdx.x * blockDim.x + threadIdx.x; i < size_channels; i += blockDim.x * gridDim.x)
        {
            uchar_image[i] = correct_color(cdf[uchar_image[i]], cdf_min);
            output_image_data[i] = static_cast<float>(uchar_image[i]) / 255.0f;
        }
    }

    void histogram_equalization(const int width, const int height,
                                float *image_data,
                                unsigned char *uchar_image,
                                unsigned char *gray_image,
                                int *histogram,
                                float *cdf)
    {
        const auto size = width * height;
        const auto size_channels = size * 3;
        const auto grid_size = (size_channels + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;

        process_image_and_build_histogram<<<grid_size, THREADS_PER_BLOCK>>>(
            image_data, uchar_image, gray_image, histogram, size, size_channels);

        calculate_cdf<<<1, HISTOGRAM_LENGTH>>>(histogram, cdf, size);

        float *d_cdf_min;
        cudaMalloc(&d_cdf_min, sizeof(float));

        // need to correct cdf_min
        find_cdf_min<<<1, HISTOGRAM_LENGTH>>>(cdf, d_cdf_min);

        float h_cdf_min; // Host variable to store cdf_min
        cudaMemcpy(&h_cdf_min, d_cdf_min, sizeof(float), cudaMemcpyDeviceToHost);

        apply_histogram_equalization_and_convert_to_float<<<grid_size, THREADS_PER_BLOCK>>>(
            uchar_image, image_data, cdf, h_cdf_min, size_channels);
    }

    wbImage_t iterative_histogram_equalization(wbImage_t &input_image, int iterations)
    {
        const auto width = wbImage_getWidth(input_image);
        const auto height = wbImage_getHeight(input_image);
        constexpr auto channels = 3;
        const auto size = width * height;
        const auto size_channels = size * channels;

        wbImage_t output_image = wbImage_new(width, height, channels);
        float *input_image_data = wbImage_getData(input_image);
        float *output_image_data = wbImage_getData(output_image);

        float *d_image;
        unsigned char *d_uchar_image, *d_gray_image;
        int *d_histogram;
        float *d_cdf;

        cudaMalloc(&d_image, size_channels * sizeof(float));
        cudaMalloc(&d_uchar_image, size_channels * sizeof(unsigned char));
        cudaMalloc(&d_gray_image, size * sizeof(unsigned char));
        cudaMalloc(&d_histogram, HISTOGRAM_LENGTH * sizeof(int));
        cudaMalloc(&d_cdf, HISTOGRAM_LENGTH * sizeof(float));

        cudaMemcpy(d_image, input_image_data, size_channels * sizeof(float), cudaMemcpyHostToDevice);

        marrow::timer t;
        t.start();

        for (int i = 0; i < iterations; i++)
        {
            histogram_equalization(width, height,
                                   d_image,
                                   d_uchar_image, d_gray_image,
                                   d_histogram, d_cdf);
        }

        t.stop();
        t.output_stats(std::cout);

        cudaMemcpy(output_image_data, d_image, size_channels * sizeof(float), cudaMemcpyDeviceToHost);

        wbImage_setData(output_image, output_image_data);

        cudaFree(d_image);
        cudaFree(d_uchar_image);
        cudaFree(d_gray_image);
        cudaFree(d_histogram);
        cudaFree(d_cdf);

        return output_image;
    }
}
