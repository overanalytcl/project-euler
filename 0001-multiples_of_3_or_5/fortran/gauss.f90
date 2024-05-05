module gauss_module
    implicit none
contains
    integer function gauss(x) 
        implicit none
        integer, intent(in) :: x
        
        gauss = x * (x + 1) / 2
    end function gauss

    integer function gauss_div(limit, div) result(g)
        implicit none
        integer, intent(in) :: limit, div
        g = div * gauss((limit - 1) / div)
    end function gauss_div
end module gauss_module
