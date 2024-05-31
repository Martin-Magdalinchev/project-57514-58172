#!/bin/bash

# File paths
input_image="../dataset/in1.ppm"
output_image="../dataset/out1_marti.ppm"

# Navigate to the build directory
cd ../build || { echo "Failed to change directory to ../build"; exit 1; }

# Arrays to store times
seq_times=()
initial_par_times=()
second_par_times=()
par_times=()

# Run the sequential tests
for iterations in 10 15 20 50 100; do
    echo "Running sequential test with $iterations iterations..."
    output=$(./project "$input_image" $iterations "$output_image")
    time=$(echo "$output" | awk '/Total time:/ {print $3}')
    seq_times+=($time)
done

# Run the initial Parallel Tests
for iterations in 10 15 20 50 100 1000; do
    echo "Running initial parallel test with $iterations iterations..."
    output=$(./project_par_initial "$input_image" $iterations "$output_image")
    time=$(echo "$output" | awk '/Total time:/ {print $3}')
    initial_par_times+=($time)
done

# Run the second Parallel Tests
for iterations in 10 15 20 50 100 1000 2000; do
    echo "Running second parallel test with $iterations iterations..."
    output=$(./project_par_second "$input_image" $iterations "$output_image")
    time=$(echo "$output" | awk '/Total time:/ {print $3}')
    second_par_times+=($time)
done

# Run the final parallel tests
for iterations in 10 15 20 50 100 1000 2000; do
    echo "Running final parallel test with $iterations iterations..."
    output=$(./project_par "$input_image" $iterations "$output_image")
    time=$(echo "$output" | awk '/Total time:/ {print $3}')
    par_times+=($time)
done

# Navigate to the scripts directory
cd ../scripts || { echo "Failed to change directory to ../scripts"; exit 1; }

# Write the results to analysis.txt
{
    echo "imagem: 3000x2500 px"
    echo ""
    echo "Sequential Version:"
    echo "Iterações    Tempo de Execução"
    echo "    10              ${seq_times[0]} ms"
    echo "    15              ${seq_times[1]} ms"
    echo "    20              ${seq_times[2]} ms"
    echo "    50              ${seq_times[3]} ms"
    echo "    100             ${seq_times[4]} ms"
    echo ""
    echo "Parallelized Version:"
    echo ""
    echo "Initial parallelization"
    echo "Iterações    Tempo de Execução"
    echo "    10              ${initial_par_times[0]} ms"
    echo "    15              ${initial_par_times[1]} ms"
    echo "    20              ${initial_par_times[2]} ms"
    echo "    50              ${initial_par_times[3]} ms"
    echo "    100             ${initial_par_times[4]} ms"
    echo "    1000            ${initial_par_times[5]} ms"
    echo ""
    echo "Speedup:"
    speedup_initial=$(echo "scale=2; ${seq_times[4]} / ${initial_par_times[4]}" | bc)
    echo "    100 iterations speedup = ${seq_times[4]}/${initial_par_times[4]} = $speedup_initial"
    echo ""
    echo "Second parallelization"
    echo "num_threads = 8"
    echo "Iterações    Tempo de Execução"
    echo "    10              ${second_par_times[0]} ms"
    echo "    15              ${second_par_times[1]} ms"
    echo "    20              ${second_par_times[2]} ms"
    echo "    50              ${second_par_times[3]} ms"
    echo "    100             ${second_par_times[4]} ms"
    echo "    1000            ${second_par_times[5]} ms"
    echo "    2000            ${second_par_times[6]} ms"
    echo ""
    echo "Speedup:"
    speedup_second=$(echo "scale=2; ${seq_times[4]} / ${second_par_times[4]}" | bc)
    echo "    100 iterations speedup = ${seq_times[4]}/${second_par_times[4]} = $speedup_second"
    echo ""
    echo "Final parallelization"
    echo "num_threads = 8"
    echo "Iterações    Tempo de Execução"
    echo "    10              ${par_times[0]} ms"
    echo "    15              ${par_times[1]} ms"
    echo "    20              ${par_times[2]} ms"
    echo "    50              ${par_times[3]} ms"
    echo "    100             ${par_times[4]} ms"
    echo "    1000            ${par_times[5]} ms"
    echo "    2000            ${par_times[6]} ms"
    echo ""
    echo "Speedup:"
    speedup_final=$(echo "scale=2; ${seq_times[4]} / ${par_times[4]}" | bc)
    echo "    100 iterations speedup = ${seq_times[4]}/${par_times[4]} = $speedup_final"
} > analysis.txt
