program multiples
   implicit none

   integer, parameter :: limit = 1000
   integer :: sum

   sum = gauss_div(limit, 3) + gauss_div(limit, 5) - gauss_div(limit, 15)

   print *, "The sum of all multiples of 3 or 5 below", limit, "is:", sum

contains
   integer function gauss(x)
      implicit none
      integer, intent(in) :: x

      gauss = x * (x + 1) / 2
   end function gauss

   integer function gauss_div(n, div) result(g)
      implicit none
      integer, intent(in) :: n, div
      g = div * gauss((n - 1) / div)
   end function gauss_div
end program multiples
