# 10001st Prime

## Statement
By listing the first six prime numbers: $2,\,3,\,5,\,7,\,11$, and $13$, we can see that the $6$-th prime is $13$.

What is the $10001$-st prime number?
## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have CMake installed, because this is what builds the project. Once you have those (and are in this directory):
```shell
cmake -S . -B build
cmake --build build
./build/nth_prime
```
