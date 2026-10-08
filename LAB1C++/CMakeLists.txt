add_executable(TASK1 LAB1C++_TASK1.cpp)
target_include_directories(TASK1 PRIVATE ../LibraryCPP)
target_link_libraries(TASK1 PRIVATE LibraryCPP)

add_executable(TASK2 LAB1C++_TASK2.cpp)
target_include_directories(TASK2 PRIVATE ../LibraryCPP)
target_link_libraries(TASK2 PRIVATE LibraryCPP)

add_subdirectory(LAB1C++TEST)