# Largest Palindrome Product

## Statement

A palindromic number reads the same both ways. The largest palindrome made from the product of two $2$-digit numbers is $9001 = 91 \times 99$.

Find the largest palindrome made from the product of two $3$-digit numbers.
## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have CMake installed, because this is what builds the project. Once you have those (and are in this directory):
```shell
cmake -S . -B build
cmake --build build
./build/largest_palindrome_product
```
