#include "histogram_eq.h"
#include "omp.h"
#include "timer.h"

namespace cp
{
    constexpr auto HISTOGRAM_LENGTH = 256;
    constexpr auto NUM_THREADS = 8;

    static float inline prob(const int x, const int size)
    {
        return (float)x / (float)size;
    }

    static unsigned char inline clamp(unsigned char x)
    {
        return std::min(std::max(x, static_cast<unsigned char>(0)), static_cast<unsigned char>(255));
    }

    static unsigned char inline correct_color(float cdf_val, float cdf_min)
    {
        return clamp(static_cast<unsigned char>(255 * (cdf_val - cdf_min) / (1 - cdf_min)));
    }

    static void convert_to_uchar(const float *input_image_data, unsigned char *uchar_image, int size_channels)
    {
#pragma omp parallel for
        for (int i = 0; i < size_channels; i++)
        {
            uchar_image[i] = static_cast<unsigned char>(255 * input_image_data[i]);
        }
    }

    static void convert_to_grayscale(const unsigned char *uchar_image, unsigned char *gray_image, int size)
    {
#pragma omp parallel for
        for (int i = 0; i < size; i++)
        {
            auto r = uchar_image[3 * i];
            auto g = uchar_image[3 * i + 1];
            auto b = uchar_image[3 * i + 2];
            gray_image[i] = static_cast<unsigned char>(0.21 * r + 0.71 * g + 0.07 * b);
        }
    }

    static void build_histogram(const unsigned char *gray_image, int *histogram, int size)
    {

        std::fill(histogram, histogram + HISTOGRAM_LENGTH, 0);

#pragma omp parallel num_threads(NUM_THREADS)
        {
            int local_histogram[HISTOGRAM_LENGTH] = {0}; // Thread-local histogram

#pragma omp for
            for (int i = 0; i < size; i++)
            {
                local_histogram[gray_image[i]]++;
            }

#pragma omp critical
            {
                // Merge local histograms into the global histogram
                for (int i = 0; i < HISTOGRAM_LENGTH; i++)
                {
                    histogram[i] += local_histogram[i];
                }
            }
        }
    }

    static void calculate_cdf(const int *histogram, float *cdf, int size)
    {
        cdf[0] = prob(histogram[0], size);
        for (int i = 1; i < HISTOGRAM_LENGTH; i++)
        {
            cdf[i] = cdf[i - 1] + prob(histogram[i], size);
        }
    }

    static float find_cdf_min(const float *cdf)
    {
        float cdf_min = cdf[0];
#pragma omp parallel for reduction(min : cdf_min) num_threads(NUM_THREADS)
        for (int i = 1; i < HISTOGRAM_LENGTH; i++)
        {
            cdf_min = std::min(cdf_min, cdf[i]);
        }
        return cdf_min;
    }

    static void process_image_and_build_histogram(const float *input_image_data,
                                                  unsigned char *uchar_image,
                                                  unsigned char *gray_image,
                                                  int *histogram,
                                                  int size,
                                                  int size_channels)
    {

        std::fill(histogram, histogram + HISTOGRAM_LENGTH, 0);

#pragma omp parallel num_threads(NUM_THREADS)
        {
            /*
#pragma omp single
    {
        std::cout << "Number of threads: " << omp_get_num_threads() << std::endl;
    }*/

            int local_histogram[HISTOGRAM_LENGTH] = {0};

#pragma omp for
            for (int i = 0; i < size; i++)
            {
                int idx = 3 * i;
                uchar_image[idx] = static_cast<unsigned char>(255 * input_image_data[idx]);
                uchar_image[idx + 1] = static_cast<unsigned char>(255 * input_image_data[idx + 1]);
                uchar_image[idx + 2] = static_cast<unsigned char>(255 * input_image_data[idx + 2]);

                gray_image[i] = static_cast<unsigned char>(
                    0.21 * uchar_image[idx] +
                    0.71 * uchar_image[idx + 1] +
                    0.07 * uchar_image[idx + 2]);

                local_histogram[gray_image[i]]++;
            }

#pragma omp critical
            {
                for (int i = 0; i < HISTOGRAM_LENGTH; i++)
                {
                    histogram[i] += local_histogram[i];
                }
            }
        }
    }

    static void apply_histogram_equalization_and_convert_to_float(unsigned char *uchar_image, float *output_image_data, const float *cdf, float cdf_min, int size_channels)
    {
#pragma omp parallel for num_threads(NUM_THREADS)
        for (int i = 0; i < size_channels; i++)
        {
            uchar_image[i] = correct_color(cdf[uchar_image[i]], cdf_min);
            output_image_data[i] = static_cast<float>(uchar_image[i]) / 255.0f;
        }
    }

    static void histogram_equalization(const int width, const int height,
                                       const float *input_image_data,
                                       float *output_image_data,
                                       const std::shared_ptr<unsigned char[]> &uchar_image,
                                       const std::shared_ptr<unsigned char[]> &gray_image,
                                       int (&histogram)[HISTOGRAM_LENGTH],
                                       float (&cdf)[HISTOGRAM_LENGTH])
    {
        constexpr auto channels = 3;
        const auto size = width * height;
        const auto size_channels = size * channels;

        process_image_and_build_histogram(input_image_data, uchar_image.get(), gray_image.get(), histogram, size, size_channels);

        // convert_to_uchar(input_image_data, uchar_image.get(), size_channels);
        // convert_to_grayscale(uchar_image.get(), gray_image.get(), size);
        // build_histogram(gray_image.get(), histogram, size);
        calculate_cdf(histogram, cdf, size);
        float cdf_min = find_cdf_min(cdf);
        // apply_histogram_equalization(uchar_image.get(), cdf, cdf_min, size_channels);
        // convert_to_float(uchar_image.get(), output_image_data, size_channels);

        apply_histogram_equalization_and_convert_to_float(uchar_image.get(), output_image_data, cdf, cdf_min, size_channels);
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

        std::shared_ptr<unsigned char[]> uchar_image(new unsigned char[size_channels]);
        std::shared_ptr<unsigned char[]> gray_image(new unsigned char[size]);

        int histogram[HISTOGRAM_LENGTH];
        float cdf[HISTOGRAM_LENGTH];

        // set timer from here
        marrow::timer t;
        t.start();

        for (int i = 0; i < iterations; i++)
        {
            histogram_equalization(width, height,
                                   input_image_data, output_image_data,
                                   uchar_image, gray_image,
                                   histogram, cdf);

            input_image_data = output_image_data;
        }
        // to here
        t.stop();
        t.output_stats(std::cout);

        return output_image;
    }
}
