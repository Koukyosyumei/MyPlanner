cmake_minimum_required(VERSION 3.13)

add_executable(myplan planner.cpp)

target_link_libraries(myplan pthread libmyplan)
