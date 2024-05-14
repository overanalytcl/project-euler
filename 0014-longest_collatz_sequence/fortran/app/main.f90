program main
  implicit none
  integer, parameter :: limit = int(1e6)
  integer(kind=8) :: n, max_steps, max_num, steps
  integer(kind=8), dimension(1:limit) :: memo
  integer(kind=8) :: i

  memo = 0

  max_steps = 0
  max_num = 0

  do i = 1, limit
      n = i
      steps = 0

      if (memo(n) /= 0) then
          steps = memo(n)
      else
          do while (n /= 1)
              if (mod(n, 2) == 0) then
                  n = n / 2
              else
                  n = 3 * n + 1
              end if
              steps = steps + 1
          end do
          memo(i) = steps
      end if

      if (steps > max_steps) then
          max_steps = steps
          max_num = i
      end if
  end do

  print *, "Number with the longest sequence:", max_num
  print *, "Number of steps:", max_steps
end program main
