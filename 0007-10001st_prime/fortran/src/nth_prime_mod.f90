module nth_prime_mod
   implicit none
   private

   public :: nth_prime
contains
   integer function nth_prime(x) result(retval)
      integer, intent(in) :: x
      integer, allocatable :: primes(:)

      integer :: max_primes, i, j, count

      ! Heuristic to estimate the bound for no. of primes
      ! https://math.stackexchange.com/a/2742578
      max_primes = 2 * x * nint(log(real(x)) + log(log(real(x))) - 1 + (log(log(real(x))) - 2.1) / log(real(x)))

      allocate(primes(max_primes), stat=i)

      if (i /= 0) then
         stop "Allocation failed"
      end if

      primes = 1
      primes(1:2) = 0

      count = 0
      do i = 2, max_primes
         if (primes(i) == 1) then
            count = count + 1

            if (count == x) then
               retval = i
               deallocate(primes)
               return
            end if

            primes(2*i:max_primes:i) = 0
         end if
      end do

      deallocate(primes)
   end function nth_prime

end module nth_prime_mod
