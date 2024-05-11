module gcd_mod
   implicit none
   private

   public :: gcd, lcm
contains
   integer function gcd(a, b)
      integer, intent(in) :: a, b
      integer :: x, y, r

      x = a
      y = b
      do while (y /= 0)
         r = mod(x, y)
         x = y
         y = r
      end do
      gcd = x
   end function gcd

   integer function lcm(a, b)
      integer, intent(in) :: a, b
      lcm = a * (b / gcd(a, b))
   end function lcm
end module gcd_mod
