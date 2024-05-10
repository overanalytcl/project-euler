program highly_divisible_triangular_number
   implicit none

   integer, parameter :: no_of_divisors = 500
   ! Based on experimental evidence
   integer, parameter :: sieve_limit = 13056
   integer, parameter :: max_num = sieve_limit / 64 + 1
   integer :: primes(max_num), i, j, isqrt
   integer(kind=8) :: sum

   isqrt = int(sqrt(real(sieve_limit)))
   primes = 0

   do i = 3, isqrt, 2
      if (is_prime(primes, i)) then
         do j = i * i, sieve_limit, i * 2
            call mark_composite(primes, j)
         end do
      end if
   end do

   sum = find_number(no_of_divisors)
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

   integer(kind=8) function count_divisors(n) result(total)
      integer, intent(in) :: n

      integer :: p, count, temp
      temp = n
      total = 1

      do p = 2, temp
         if (is_prime(primes, p)) then
            count = 0
            if (mod(temp, p) == 0) then
               do while (mod(temp, p) == 0)
                  temp = temp / p
                  count = count + 1
               end do
               total = total * (count + 1)
            end if
         end if
      end do
   end function count_divisors

   integer function find_number(n) result(number)
      integer, intent(in) :: n
      integer :: i, count, first, second

      if (n == 3) then
         number = 3
      end if

      i = 2
      count = 0
      second = 1
      first = 1

      do while (count <= n)
         if (mod(i, 2) == 0) then
            first = count_divisors(i + 1)
            count = first * second
         else
            second = count_divisors((i + 1) / 2)
            count = first * second
         end if
         i = i + 1
      end do

      number = i * (i - 1) / 2
   end function find_number


end program highly_divisible_triangular_number
