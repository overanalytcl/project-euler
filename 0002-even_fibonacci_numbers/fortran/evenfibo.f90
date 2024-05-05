program evenfibo
    implicit none
    
    integer :: prev, curr, next, sum

    prev = 2
    curr = 8

    do while (curr <= 4000000)
        next = prev + 4 * curr 
        prev = curr
        curr = next
    end do

    sum = (prev + curr - 2) / 4

    print *, sum
end program evenfibo