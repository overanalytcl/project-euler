program main
   use nth_prime_mod, only: nth_prime
   implicit none

   integer, parameter :: n = 10001
   print *, nth_prime(n)
end program main
