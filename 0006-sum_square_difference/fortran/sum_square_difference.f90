program sum_square_difference
   implicit none

   integer, parameter :: kind = selected_int_kind (18)
   integer(kind=kind), parameter :: n = 100_kind

   ! (n(n + 1)/2)^2 - n(n+1)(2n+1)/6
   print *, (n * (n + 1) * (3 * n + 2) * (n - 1) / 12)
end program sum_square_difference
