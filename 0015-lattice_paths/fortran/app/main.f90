program main
   implicit none
   integer(kind=8) :: n, k, res

   n = 20

   res = 1
   do k = 1, n
      res = res * (n + k) / k
   end do

   print *, res 
end program main
