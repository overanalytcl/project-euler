# Lattice Paths
## Statement
Starting in the top left corner of a $2 \times 2$ grid, and only being able to move to the right and down, there are exactly $6$ routes to the bottom right corner.

<div align="center">
    <picture>
        <img src="./paths.svg" width="400">
    </picture>
</div>

How many such routes are there through a $20\times20$ grid?

## Instructions
You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have [fpm](https://fpm.fortran-lang.org/) installed, because this is what builds the project. Once you have those, it's as easy as doing `fpm run`.
