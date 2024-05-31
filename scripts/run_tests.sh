#!/bin/bash

# Delete the analysis file if it exists
rm analysis.txt 2>/dev/null

# File paths
input_images=("../dataset/in1.ppm" "../dataset/sample_5184×3456.ppm" "../dataset/borabora_1.ppm")
output_images=("../dataset/out1_marti.ppm" "../dataset/sample_out_5184×3456.ppm" "../dataset/borabora_1_out.ppm")



# Array of iterations
iterations_list=(10 15 25 50)

# Array of thread counts for second and final parallel architectures
threads_list=(4 8 12)

for ((i=0; i<${#input_images[@]}; i++)); do
    # Navigate to the build directory
    cd ../build || { echo "Failed to change directory to ../build"; exit 1; }
    input_image="${input_images[i]}"
    output_image="${output_images[i]}"

    # Arrays to store times, speedups, and best architecture names
    declare -A times
    declare -A architectures

    # Initialize the arrays
    for iterations in "${iterations_list[@]}"; do
        times["seq_$iterations"]=""
        times["initial_par_$iterations"]=""
        for threads in "${threads_list[@]}"; do
            times["second_par_${threads}_$iterations"]=""
            times["par_${threads}_$iterations"]=""
            times["speedup_second_par_${threads}_$iterations"]=""
            times["speedup_par_${threads}_$iterations"]=""
        done
        times["best_time_$iterations"]=""
        times["best_speedup_$iterations"]=""
        architectures["best_arch_$iterations"]=""
    done

    # Run the sequential tests
    for iterations in "${iterations_list[@]}"; do
        if [[ $iterations -le 100 ]]; then
            echo "Running sequential test with $iterations iterations for image: $input_image..."
            output=$(./project "$input_image" $iterations "$output_image")
            time=$(echo "$output" | awk '/Total time:/ {print $3}')
            times["seq_$iterations"]=$time
        fi
    done

    # Run the initial Parallel Tests
    for iterations in "${iterations_list[@]}"; do
        if [[ $iterations -le 1000 ]]; then
            echo "Running initial parallel test with $iterations iterations for image: $input_image..."
            output=$(./project_par_initial "$input_image" $iterations "$output_image")
            time=$(echo "$output" | awk '/Total time:/ {print $3}')
            times["initial_par_$iterations"]=$time
            if [[ -n ${times["seq_$iterations"]} && -n ${times["initial_par_$iterations"]} ]]; then
                speedup=$(echo "scale=2; ${times["seq_$iterations"]} / ${times["initial_par_$iterations"]}" | bc)
                times["speedup_initial_par_$iterations"]=$speedup
            fi

            # Update best time, speedup, and architecture if the current one is better
            if [[ -z ${times["best_time_$iterations"]} || $(echo "${times["best_time_$iterations"]}>$time" | bc) -eq 1 ]]; then
                times["best_time_$iterations"]=$time
                times["best_speedup_$iterations"]=$speedup
                architectures["best_arch_$iterations"]="Initial Parallel"
            fi
        fi
    done

    # Run the second Parallel Tests
    for iterations in "${iterations_list[@]}"; do
        for threads in "${threads_list[@]}"; do
            echo "Running second parallel test with $iterations iterations and $threads threads for image: $input_image..."
            output=$(OMP_NUM_THREADS=$threads ./project_par_second "$input_image" $iterations "$output_image")
            time=$(echo "$output" | awk '/Total time:/ {print $3}')
            times["second_par_${threads}_$iterations"]=$time
            if [[ -n ${times["seq_$iterations"]} && -n ${times["second_par_${threads}_$iterations"]} ]]; then
                speedup=$(echo "scale=2; ${times["seq_$iterations"]} / ${times["second_par_${threads}_$iterations"]}" | bc)
                times["speedup_second_par_${threads}_$iterations"]=$speedup
            fi

            # Update best time, speedup, and architecture if the current one is better
            if [[ -z ${times["best_time_$iterations"]} || $(echo "${times["best_time_$iterations"]}>$time" | bc) -eq 1 ]]; then
                times["best_time_$iterations"]=$time
                times["best_speedup_$iterations"]=$speedup
                architectures["best_arch_$iterations"]="Second Parallel with $threads threads"
            fi
        done
    done

    # Run the final parallel tests
    for iterations in "${iterations_list[@]}"; do
        for threads in "${threads_list[@]}"; do
            echo "Running final parallel test with $iterations iterations and $threads threads for image: $input_image..."
            output=$(OMP_NUM_THREADS=$threads ./project_par "$input_image" $iterations "$output_image")
            time=$(echo "$output" | awk '/Total time:/ {print $3}')
            times["par_${threads}_$iterations"]=$time
            if [[ -n ${times["seq_$iterations"]} && -n ${times["par_${threads}_$iterations"]} ]]; then
                speedup=$(echo "scale=2; ${times["seq_$iterations"]} / ${times["par_${threads}_$iterations"]}" | bc)
                times["speedup_par_${threads}_$iterations"]=$speedup
            fi

            # Update best time, speedup, and architecture if the current one is better
            if [[ -z ${times["best_time_$iterations"]} || $(echo "${times["best_time_$iterations"]}>$time" | bc) -eq 1 ]]; then
                times["best_time_$iterations"]=$time
                times["best_speedup_$iterations"]=$speedup
                architectures["best_arch_$iterations"]="Final Parallel with $threads threads"
            fi
        done
    done

    # Navigate to the scripts directory
    cd ../scripts || { echo "Failed to change directory to ../scripts"; exit 1; }

    # Write the results to analysis.txt
    {
        echo "Imagem: $input_image"
        echo ""
        echo "                       | Initial Parallel |                      Second Parallel                   |                     Final Parallel                     |          Best "
        echo "Iterações | Sequencial |                  |    4 Threads     |     8 Threads    |    12 Threads    |    4 Threads     |     8 Threads    |    12 Threads    | "
        echo "          |            |Total time Speedup|Total time Speedup|Total time Speedup|Total time Speedup|Total time Speedup|Total time Speedup|Total time Speedup|Time Speedup Architecture"
        echo "__________|____________|__________________|__________________|__________________|__________________|__________________|__________________|__________________|_________________________"
        for iterations in "${iterations_list[@]}"; do
            seq_time=${times["seq_$iterations"]}
            initial_par_time=${times["initial_par_$iterations"]}
            second_par_time_4=${times["second_par_4_$iterations"]}
            second_par_time_8=${times["second_par_8_$iterations"]}
            second_par_time_12=${times["second_par_12_$iterations"]}
            final_par_time_4=${times["par_4_$iterations"]}
            final_par_time_8=${times["par_8_$iterations"]}
            final_par_time_12=${times["par_12_$iterations"]}
            speedup_initial=${times["speedup_initial_par_$iterations"]}
            speedup_second_4=${times["speedup_second_par_4_$iterations"]}
            speedup_second_8=${times["speedup_second_par_8_$iterations"]}
            speedup_second_12=${times["speedup_second_par_12_$iterations"]}
            speedup_final_4=${times["speedup_par_4_$iterations"]}
            speedup_final_8=${times["speedup_par_8_$iterations"]}
            speedup_final_12=${times["speedup_par_12_$iterations"]}
            best_time=${times["best_time_$iterations"]}
            best_speedup=${times["best_speedup_$iterations"]}
            best_arch=${architectures["best_arch_$iterations"]}

            # Print times and speedups in tabular format, using placeholders if a test was not run
            printf "  %-8s|   %-8s |   %-7s   %-5s|   %-7s %-5s  |  %-7s   %-5s |  %-7s   %-5s |   %-7s %-5s  |  %-7s   %-5s |  %-7s   %-5s |%-6s%-5s  %-20s\n" \
                "$iterations" \
                "${seq_time:-N/A}" \
                "${initial_par_time:-N/A}" \
                "${speedup_initial:-N/A}" \
                "${second_par_time_4:-N/A}" "${speedup_second_4:-N/A}" "${second_par_time_8:-N/A}" "${speedup_second_8:-N/A}" "${second_par_time_12:-N/A}" "${speedup_second_12:-N/A}" \
                "${final_par_time_4:-N/A}" "${speedup_final_4:-N/A}" "${final_par_time_8:-N/A}" "${speedup_final_8:-N/A}" "${final_par_time_12:-N/A}" "${speedup_final_12:-N/A}" \
                "${best_time:+$best_time}" "${best_speedup:+$best_speedup}" "${best_arch:+$best_arch}"
        done
        echo ""
        echo "==============================================================================================================================================================================================================================="
        echo ""
    } >> analysis.txt  # Append to the file instead of overwriting
    echo "Analysis for image: $input_image is written to analysis.txt"

done

