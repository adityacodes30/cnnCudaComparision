#!/bin/bash

# Timing the execution of main2.py
echo "Timing main2.py..."
start_time=$(date +%s)
python main2.py
end_time=$(date +%s)
execution_time1=$((end_time - start_time))


# Timing the execution of main_cida.py
echo "Timing main_cuda.py..."
start_time=$(date +%s)
python3.11 main_cuda.py
end_time=$(date +%s)
execution_time=$((end_time - start_time))


echo "Execution time for main2.py: ${execution_time1} seconds"
echo "Execution time for main_cuda.py: ${execution_time} seconds"