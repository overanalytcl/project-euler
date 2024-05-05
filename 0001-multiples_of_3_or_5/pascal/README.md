# Multiples of 3 or 5

## Statement

If we list all the natural numbers below $10$ that are multiples of $3$ or $5$, we get $3,\,5,\,6$ and $9$. The sum of these multiples is $23$.

Find the sum of all the multiples of $3$ or $5$ below $1000$.

## Instructions
You need to have the Free Pascal compiler installed and have the executables visible within your `$PATH`. Optional (but highly recommended) is the Lazarus IDE.

You can either do:
```shell
fpc multiples.lpr -omultiples
./multiples
```
or, if you have Lazarus (you can also open this .lpi file and build it from within the IDE and then execute the resulting executable from a terminal):
```shell
lazbuild multiples.lpi
./multiples
```
