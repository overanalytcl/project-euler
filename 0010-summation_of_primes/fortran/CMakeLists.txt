cmake_minimum_required(VERSION 3.28)
project(Euler0010 Fortran)

find_program(IFX_COMPILER ifx)
find_program(IFORT_COMPILER ifort)
find_program(GFORTRAN_COMPILER gfortran)

# I found a bug with ifx, so I am avoiding it for now on this particular problem.
# https://community.intel.com/t5/Intel-Fortran-Compiler/Incorrect-loop-iteration-behavior-in-ifx-compared-to-ifort/m-p/1596817#M172117
# if(IFX_COMPILER)
#    set(CMAKE_Fortran_COMPILER ifx)
#elseif(IFORT_COMPILER)
if(IFORT_COMPILER)
    set(CMAKE_Fortran_COMPILER ifort)
elseif(GFORTRAN_COMPILER)
    set(CMAKE_Fortran_COMPILER gfortran)
else()
    message(FATAL_ERROR "No supported Fortran compiler found. Please install ifx, ifort, or gfortran.")
endif()

add_executable(summation_of_primes summation_of_primes.f90)