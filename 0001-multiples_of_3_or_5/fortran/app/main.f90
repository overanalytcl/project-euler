program main
   use multiples, only: gauss_div
   implicit none

   integer, parameter :: limit = 1000
   integer :: sum

   sum = gauss_div(limit, 3) + gauss_div(limit, 5) - gauss_div(limit, 15)

   print *, sum

end program main
