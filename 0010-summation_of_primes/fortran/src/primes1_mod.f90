module primes1_mod
   implicit none
   private

   public :: sieve_of_eratosthenes, is_prime
contains

   integer function mod2(n, p)
      integer, intent(in) :: n, p
      mod2 = iand(n, lshift(1, p) - 1)
   end function mod2
   logical function is_prime(prime, n)
      integer, intent(in) :: prime(:)
      integer, intent(in) :: n

      is_prime = .not. btest(prime(rshift((n-1), 6) + 1), n / 2)
   end function is_prime

   subroutine sieve_of_eratosthenes(prime_list, limit)
      integer, intent(inout), allocatable :: prime_list(:)
      integer, intent(in) :: limit
      integer :: i, j, stat

      allocate(prime_list(rshift(limit, 6) + 1), stat=i)

      if (i /= 0) then
         stop "Allocation failed"
      else
         prime_list = 0
      end if

      call mark_composites(prime_list, limit)
   end subroutine sieve_of_eratosthenes

   subroutine mark_composites(primes_list, limit)
      integer, intent(inout) :: primes_list(:)
      integer, intent(in) :: limit
      integer :: isqrt, i, j

      isqrt = nint(sqrt(real(limit)))

      !$omp parallel do private(j) schedule(dynamic)
      do i = 3, isqrt, 2
         if (is_prime(primes_list, i)) then
            do j = i * i, limit, i * 2
               primes_list(rshift(j-1, 6) + 1) = ibset(primes_list(rshift(j-1, 6) + 1), mod2(j/2, 5))
            end do
         end if
      end do
      !$omp end parallel do
   end subroutine mark_composites

end module primes1_mod
