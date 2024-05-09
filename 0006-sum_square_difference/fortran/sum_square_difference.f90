program sum_square_difference
   implicit none

   integer, parameter :: knd = selected_int_kind (18)
   integer(kind=knd), parameter :: n = 100_knd

   ! (n(n + 1)/2)^2 - n(n+1)(2n+1)/6
   print *, (n * (n + 1) * (3 * n + 2) * (n - 1) / 12)
end program sum_square_difference
