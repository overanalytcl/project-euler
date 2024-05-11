program main
   use palindrome_mod
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
end program main
