# Smallest Multiple

## Statement

$2520$ is the smallest number that can be divided by each of the numbers from $1$ to $10$ without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from $1$ to $20$?
## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have CMake installed, because this is what builds the project. Once you have those (and are in this directory):
```shell
cmake -S . -B build
cmake --build build
./build/smallest_multiple
```
