cmake_minimum_required(VERSION 3.28)
project(Euler0004 Fortran)

find_program(IFX_COMPILER ifx)
find_program(IFORT_COMPILER ifort)
find_program(GFORTRAN_COMPILER gfortran)

if(IFX_COMPILER)
    set(CMAKE_Fortran_COMPILER ifx)
elseif(IFORT_COMPILER)
    set(CMAKE_Fortran_COMPILER ifort)
elseif(GFORTRAN_COMPILER)
    set(CMAKE_Fortran_COMPILER gfortran)
else()
    message(FATAL_ERROR "No supported Fortran compiler found. Please install ifx, ifort, or gfortran.")
endif()

add_executable(largest_palindrome_product largest_palindrome_product.f90)

