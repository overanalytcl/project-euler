program main
   use gcd_mod
   implicit none

   integer, parameter :: n = 20
   integer :: i, val = 2

   do i = 3, n
      val = lcm(val, i)
   end do

   print *, val
end program main
