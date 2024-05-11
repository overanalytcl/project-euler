program main
   use nth_prime, only: find_nth_prime
   implicit none

   integer, parameter :: n = 10001
   integer :: prime

   prime = find_nth_prime(n)

   print *, prime
end program main
