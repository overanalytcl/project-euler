program multiples
    use gauss_module
    implicit none
    
    integer, parameter :: limit = 1000
    integer :: sum
    
    sum = gauss_div(limit, 3) + gauss_div(limit, 5) - gauss_div(limit, 15)
    
    print *, "The sum of all multiples of 3 or 5 below", limit, "is:", sum
end program multiples
