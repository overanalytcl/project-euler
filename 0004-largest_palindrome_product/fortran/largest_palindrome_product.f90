program largest_palindrome_product
   implicit none

   integer :: max = 0, max_i = 0, max_j = 0, i, j, product

   do i = 999, 100, -1
       do j = 990, 100, -11
           product = i * j
           if (product > max .and. is_palindrome(product)) then
               max = product
               max_i = i
               max_j = j
           end if
       end do
   end do

   print *, "Largest palindrome product:", max, "with i:", max_i, "and j:", max_j
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

end program largest_palindrome_product
