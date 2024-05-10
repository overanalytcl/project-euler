program special_pythagorean_triplet
   implicit none

   integer, parameter :: N = 60
   integer(kind=8) :: sqrt_n, ni, i, a, b, c

   ! Solving for a general N
   if (mod(N, 2) == 1) then
      print *, "N has to be even."
      stop
   end if

   ! Divisors appear between 1 and floor(sqrt(n)), so
   ! we don't need to check everything.
   sqrt_n = int(sqrt(real(N)))

   do i = 1, sqrt_n + 1
      ! m^2 - n^2 + 2mn + m^2 + n^2 = N
      ! 2m^2 + 2mn = N
      ! 2m(m + n) = N
      ! n = N / (2m) - m

      ni = N / (2*i) - i
      if (ni <= 0) then
         exit
      end if

      
      if (2 * i * (i+ni) == N) then
         a = i**2 - ni**2
         b = 2 * i * ni
         c = i**2 + ni**2

         print *, a*b*c, i, ni
         ! If it's a Pythagorean triple, it has to form a valid right triangle.
         if (c < a + b) then
            print *, a*b*c, i, ni
            exit
         end if
      end if
   end do
end program special_pythagorean_triplet
