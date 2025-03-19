# Basic CNN Implementation from Scratch: CPU vs. CUDA Performance Benchmarking

## Overview
This project implements a basic convolutional neural network (CNN) entirely from scratch. It features two implementations:
- **CPU Version:** Developed using NumPy.
- **GPU Version:** Accelerated using CuPy to leverage CUDA.

The project clearly demonstrates the uniqueness of approach by:
- **Custom Implementation:** Building a CNN without relying on high-level deep learning frameworks, which highlights the underlying algorithms.
- **Performance Comparison:** Benchmarking the same model on CPU and GPU environments. In our tests, the CPU version took approximately **42 seconds** while the GPU (CUDA) version completed in around **15 seconds**, showcasing a significant speedup.


## Project Structure
```
.
├── main2.py         # CPU (NumPy) implementation and training
├── main_cuda.py          # GPU (CuPy) implementation and training
├── README.md              # This file
├── digit-recognizer/      # Directory containing the dataset (CSV file)
│   └── train.csv
```

## Installation
### Prerequisites
- **Python 3.8+**
- **NumPy**
- **CuPy** (for GPU acceleration; requires an NVIDIA GPU with CUDA installed)
- **Pandas**
- **Matplotlib**

### Dependency Installation
Install the required libraries via pip:
```bash
pip install numpy pandas matplotlib
```

For CuPy, install the version matching your CUDA toolkit:
```bash
pip install cupy-cuda12x  # For CUDA 12.x
# or
pip install cupy-cuda11x  # For CUDA 11.x
```

## Usage
### Running the CPU (NumPy) Version
Execute the CPU version with:
```bash
python main2.py
```
This script loads the dataset, trains the CNN using NumPy, and displays the prediction results along with execution time measurements.

### Running the GPU (CuPy) Version
Execute the GPU version with:
```bash
python main_cuda.py
```

### Running in onw go for comparision
```bash
chmod +x run.sh
./run.sh
```

This script leverages CuPy for GPU acceleration, training the same CNN and showing performance gains over the CPU version.

## Benchmarking & Performance
The project includes timing code to benchmark the execution time of both implementations. The logs show:
- **CPU (NumPy) Execution:** ~42 seconds
- **GPU (CuPy) Execution:** ~15 seconds
