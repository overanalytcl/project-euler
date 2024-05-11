program main
   use primes1_mod
   implicit none

   integer, parameter :: n = 2e6
   integer, allocatable :: primes(:)
   integer(kind=8) :: sum
   integer :: i

   call sieve_of_eratosthenes(primes, n)

   sum = 2

   do i = 3, n, 2
      if (is_prime(primes, i)) then
         sum = sum + i
      end if
   end do

   print *, sum
end program main
