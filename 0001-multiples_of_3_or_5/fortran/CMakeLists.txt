cmake_minimum_required(VERSION 3.0)
project(Euler0001)

enable_language(Fortran)

add_library(gauss_module gauss.f90)

add_executable(multiples multiples.f90)
target_link_libraries(multiples PRIVATE gauss_module)

