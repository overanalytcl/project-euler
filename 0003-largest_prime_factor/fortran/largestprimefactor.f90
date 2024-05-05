program largestprimefactor
   implicit none

   integer, parameter :: knd = selected_int_kind (12)
   integer(kind=knd) :: n, i, max_factor, limit

   n = 600851475143_knd
   max_factor = 1

   do while (mod(n, 2) == 0)
      max_factor = 2
      n = n / 2
   end do

   limit = int(sqrt(real(n)))
   do i = 3, limit, 2
      do while (mod(n, i) == 0) 
         max_factor = i
         n = n / i
      end do
   end do

   if (n > 2) then
      max_factor = n
   end if

   print *, max_factor
end program largestprimefactor
