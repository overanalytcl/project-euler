program main
   implicit none
   integer, dimension(0:1000) :: lengths

   integer :: i, rem

   lengths(0:19) = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8]

   do i = 20,  99
      select case (i / 10)
       case (4:6)
         ! forty, fifty, sixty
         lengths(i) = lengths(mod(i, 10)) + 5
       case (2:3, 8:9)
         ! twenty, thirty, eighty, ninety
         lengths(i) = lengths(mod(i, 10)) + 6
       case (7)
         ! seventy
         lengths(i) = lengths(mod(i, 10)) + 7
       case default
         ! ten, but we don't count it
         lengths(i) = lengths(mod(i, 10))
      end select
   end do

   do i = 100, 999
      select case (mod(i, 100))
       case (0)
         lengths(i) = lengths(i / 100) + 7
       case default
         lengths(i) = lengths(i / 100) + lengths(mod(i, 100)) + 10
      end select
   end do

   lengths(1000) = 11

   print *, sum(lengths(1:1000))
end program main
