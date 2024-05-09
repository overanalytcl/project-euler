program nth_prime
   implicit none

   integer, parameter :: n = 10001
   integer :: prime 

   prime = find_nth_prime(n)

   print *, prime
contains 
   integer function find_nth_prime(x) result(retval)
      integer, intent(in) :: x
      integer :: max_primes, i, j, count 
      real :: lnx, lnlnx
      logical, allocatable :: is_prime(:)

      ! Heuristic to estimate the bound for is_prime
      ! https://math.stackexchange.com/a/2742578
      lnx = log(real(x))
      lnlnx = log(log(real(x)))
      max_primes = 2*int(x * lnx + x * lnlnx - x + (x*lnlnx - 2.1*x)/lnx)

      allocate(is_prime(1:max_primes), stat=i)
      if (i /= 0) stop "Allocation failed"

      is_prime = .true.
      is_prime(1:2) = .false.

      count = 0
      do i = 2, max_primes
         if (is_prime(i)) then 
            count = count + 1
            if (count == x) then
               retval = i
               return
            end if
            do j = 2*i, max_primes, i
               is_prime(j) = .false.
            end do
         end if
      end do
      deallocate(is_prime)
   end function find_nth_prime
end program nth_prime
