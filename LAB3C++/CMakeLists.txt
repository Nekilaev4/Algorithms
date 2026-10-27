add_executable(LAB3CXX main.cpp)

target_include_directories(LAB3CXX PRIVATE
    ${PROJECT_SOURCE_DIR}/LibraryCPP
)

target_link_libraries(LAB3CXX PRIVATE LibraryCPP)

set(LAB3CXX_TEST_DIR "${CMAKE_CURRENT_SOURCE_DIR}/tests")
set(LAB3CXX_OUTPUT_DIR "${CMAKE_CURRENT_BINARY_DIR}/test_output")

file(MAKE_DIRECTORY "${LAB3CXX_OUTPUT_DIR}")

add_test(
    NAME LAB3CXXTest1
    COMMAND ${CMAKE_COMMAND}
        "-DPROGRAM=$<TARGET_FILE:LAB3CXX>"
        "-DINPUT=${LAB3CXX_TEST_DIR}/input1.txt"
        "-DEXPECTED=${LAB3CXX_TEST_DIR}/expected1.txt"
        "-DACTUAL=${LAB3CXX_OUTPUT_DIR}/actual1.txt"
        -P "${CMAKE_CURRENT_SOURCE_DIR}/check_path.cmake"
)