program main
   implicit none

   integer, dimension(:, :), allocatable :: triangle
   integer :: size, i, j, total
   integer :: io_status

   open(unit=10, file='numbers.txt', status='old', iostat=io_status)

   if (io_status /= 0) then
      print *, "Error opening file"
      stop
   end if

   size = 0
   do
      read(10, *, iostat=io_status)
      if (io_status /= 0) exit
      size = size + 1
   end do

   allocate(triangle(size, size))

   rewind(10)

   do i = 1, size
      read(10, *) (triangle(i, j), j = 1, i)
   end do

   close(10)

   do i = size-1, 1, -1
      do j = 1, i
         triangle(i, j) = triangle(i, j) + max(triangle(i+1, j), triangle(i+1, j+1))
      end do
   end do

   print *, triangle(1, 1)
end program main
