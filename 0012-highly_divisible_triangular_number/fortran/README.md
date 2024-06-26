# Highly Divisible Triangular Number

## Statement
The sequence of triangle numbers is generated by adding the natural numbers. So the $7$-th triangle number would be $1 + 2 + 3 + 4 + 5 + 6 + 7 = 28$. The first ten terms would be: $$1,\,3,\,6,\,10,\,15,\,21,\,28,\,36,\,45,\,55, ...$$

For example, $3^2 + 4^2 = 9 + 16 = 25 = 5^2$. 

Let us list the factors of the first seven triangle numbers:
$$
\begin{align*}
\mathbf 1 &\colon 1\\
\mathbf 3 &\colon 1,3\\
\mathbf 6 &\colon 1,2,3,6\\
\mathbf{10} &\colon 1,2,5,10\\
\mathbf{15} &\colon 1,3,5,15\\
\mathbf{21} &\colon 1,3,7,21\\
\mathbf{28} &\colon 1,2,4,7,14,28
\end{align*}
$$

We can see that $28$ is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have [fpm](https://fpm.fortran-lang.org/) installed, because this is what builds the project. Once you have those, it's as easy as doing `fpm run`.
