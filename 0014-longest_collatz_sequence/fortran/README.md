# Longest Collatz Sequence
## Statement
The following iterative sequence is defined for the set of positive integers:
- $n \to \frac{n}{2}$ ($n$ is even)
- $n \to 3n + 1$ ($n$ is odd)

Using the rule above and starting with $13$, we generate the following sequence: 
$$13 \to 40 \to 20 \to 10 \to 5 \to 16 \to 8 \to 4 \to 2 \to 1$$

It can be seen that this sequence (starting at $13$ and finishing at $1$) contains $10$ terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at $1$.

Which starting number, under one million, produces the longest chain?

> [!NOTE] 
> Once the chain starts the terms are allowed to go above one million.

## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have [fpm](https://fpm.fortran-lang.org/) installed, because this is what builds the project. Once you have those, it's as easy as doing `fpm run`.
