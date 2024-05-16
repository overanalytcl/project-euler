# Maximum Path Sum II

## Statement

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is $23$.

<div style="text-align:center;font-family: monospace; white-space: pre">
<span style="font-weight:bold;color:red;">3</span>
<span style="font-weight:bold;color:red;">7</span> 4
2 <span style="font-weight:bold;color:red;">4</span> 6
8 5 <span style="font-weight:bold;color:red;">9</span> 3
</div>

That is, $3 + 7 + 4 + 9 = 23$.

Find the maximum total from top to bottom in [triangle.txt](./numbers.txt) (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

> [!NOTE]
> This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are $2^99$ altogether! If you could check one trillion ($10^12$) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

## Instructions

You first need to have a Fortran compiler. I have tested this with `ifort` (Intel® Fortran Compiler Classic), `ifx` (Intel® Fortran Compiler) and `gfortran` (GNU Fortran) and it needs to be visible within your `$PATH`. Second, you need to have [fpm](https://fpm.fortran-lang.org/) installed, because this is what builds the project. Once you have those, it's as easy as doing `fpm run`.
