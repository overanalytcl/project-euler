module find_hdtn_mod
   implicit none
   private

   public :: find_number
contains
   integer(kind=8) function count_divisors(n) result(total)
      integer(kind=8), intent(in) :: n
      integer :: sum, i, nn

      sum = 1
      total = 1
      nn = n

      do while (mod(nn, 2) == 0)
         sum = sum + 1
         nn = nn / 2
      end do

      total = total * sum

      i = 3
      do while (i * i <= nn)
         sum = 1
         do while (mod(nn, i) == 0)
            sum = sum + 1
            nn = nn / i
         end do
         total = total * sum
         i = i + 2
      end do

      if (nn > 2) then
         total = total * 2
      end if
   end function count_divisors

   integer(kind=8) function find_number(limit) result(num)
      integer, intent(in) :: limit
      integer(kind=8) :: triangle, divisors

      triangle = 1
      divisors = 1

      do while (divisors <= limit)
         triangle = triangle + 1
         divisors = count_divisors(triangle * (triangle + 1) / 2)
      end do

      num = triangle * (triangle + 1) / 2
   end function find_number
end module find_hdtn_mod
