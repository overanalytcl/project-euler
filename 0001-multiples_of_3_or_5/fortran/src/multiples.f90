module multiples
   implicit none
   private

   public :: gauss_div
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
end module multiples
