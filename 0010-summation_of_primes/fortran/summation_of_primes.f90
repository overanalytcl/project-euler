program summation_of_primes
   implicit none

   integer, parameter :: n = 2e6
   integer, parameter :: max_num = n / 64 + 1
   integer :: primes(max_num), i, j
   integer(kind=8) :: sum

   primes = 0

   do i = 3, int(sqrt(real(n))), 2
      if (is_prime(primes, i)) then
         do j = i * i, n, i * 2
            call mark_composite(primes, j)
         end do
      end if
   end do

   sum = 2

   do i = 3, n, 2
      if (is_prime(primes, i)) then
         sum = sum + i
      end if
   end do

   print *, sum

contains

   logical function is_prime(prime, x)
      integer, intent(in) :: prime(max_num)
      integer, intent(in) :: x

      is_prime = .not. btest(prime((x-1)/64 + 1), x / 2)
   end function is_prime

   subroutine mark_composite(prime, x)
      integer, intent(inout) :: prime(max_num)
      integer, intent(in) :: x

      prime((x-1)/64 + 1) = ibset(prime((x-1)/64 + 1), mod(x/2, 32))
   end subroutine mark_composite

end program summation_of_primes
