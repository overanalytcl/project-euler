program sum_square_difference
   implicit none

   integer, parameter :: n = 100

   ! (n(n + 1)/2)^2 - n(n+1)(2n+1)/6
   print *, (n * (n + 1) * (3 * n + 2) * (n - 1) / 12)
end program sum_square_difference
