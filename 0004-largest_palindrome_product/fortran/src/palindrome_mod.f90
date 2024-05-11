module palindrome_mod
   implicit none
   private

   public :: is_palindrome
contains
   logical function is_palindrome(n)
      integer, intent(in) :: n
      integer :: rev, temp

      rev = 0
      temp = n

      do while (temp /= 0)
         rev = rev * 10 + mod(temp, 10)
         temp = temp / 10
      end do

      is_palindrome = n == rev
   end function is_palindrome
end module palindrome_mod
