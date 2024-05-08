program smallest_multiple
   implicit none

   integer, parameter :: n = 20
   integer :: i, val = 2

   do i = 3, n
       val = lcm(val, i)
   end do
   print *, val
contains
    integer function gcd(a, b) result(retval)
        integer, intent(in) :: a, b
        integer :: x, y, r
    
        x = a
        y = b
        do while (y /= 0)
            r = mod(x, y)
            x = y
            y = r
        end do
        retval = x
    end function gcd

    integer function lcm(a, b) result(retval)
        integer, intent(in) :: a, b
        retval = a * (b / gcd(a, b))
    end function lcm
end program smallest_multiple
