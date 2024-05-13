program main
   use big_int_mod
   implicit none

   integer, parameter :: digits = 50
   integer, parameter :: n = 100

   character(n) :: line, str
   type(BigInt) :: sum, tmp
   integer, dimension(n, digits) :: numbers

   integer :: i, j, carry, temp, digit, iostat

   open(unit=10, file='numbers.txt', status='old', iostat=iostat)
   if (iostat /= 0) then
      print *, "Error: Unable to open input file."
      stop
   endif

   sum = BigInt()

   do
      read(10, '(A)', iostat=iostat) line
      if (iostat /= 0) then
         if (iostat == -1) exit
         print *, "Error reading line ", i, " from the input file."
         stop
      endif
      tmp = BigInt(line)
      sum = sum + tmp
   end do

   close(10)

   str = sum%tostr()
   print *, str(:10)
end program main
