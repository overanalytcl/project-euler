program main
   implicit none

   integer, parameter :: base = 2, exponent = 1000

   integer, parameter :: num_digits = ceiling(exponent * log10(real(base, kind=8))) + 1
   integer, dimension(num_digits) :: digits

   integer(kind=8) :: sum = 0, carry = 0, temp
   integer :: i, j

   digits = 0
   digits(num_digits) = 1

   do i = 1, exponent
      carry = 0
      do j = num_digits, 1, -1
         temp = base * digits(j) + carry
         digits(j) = mod(temp, 10)
         carry = temp / 10
      end do
   end do

   do i = 1, num_digits
      sum = sum + digits(i)
   end do

   print *, sum
end program main
