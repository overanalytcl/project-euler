# Summation of primes

## Statement
A Pythagorean triplet is a set of three natural numbers, $a < b < c$, for which, $$a^2 + b^2 = c^2.$$

For example, $3^2 + 4^2 = 9 + 16 = 25 = 5^2$. 

There exists exactly one Pythagorean triplet for which $a + b + c = 1000$. Find the product $abc$.
## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have CMake installed, because this is what builds the project. Once you have those (and are in this directory):
```shell
cmake -S . -B build
cmake --build build
./build/summation_of_primes
```
