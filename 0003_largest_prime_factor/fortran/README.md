# Largest Prime Factor

## Statement

The prime factors of $13195$ are $5$, $7$, $13$ and $29$.

What is the largest prime factor of the number $600851475143$?

## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have CMake installed, because this is what builds the project. Once you have those (and are in this directory):
```shell
cmake -S . -B build
cmake --build build
./build/largestprimefactor
```
