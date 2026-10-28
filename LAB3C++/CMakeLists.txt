add_executable(LAB3CXX main.cpp)

target_include_directories(LAB3CXX PRIVATE
    ${PROJECT_SOURCE_DIR}/LibraryCPP
)

target_link_libraries(LAB3CXX PRIVATE LibraryCPP)

set(LAB3CXX_TEST_DIR "${CMAKE_CURRENT_SOURCE_DIR}/tests")
set(LAB3CXX_OUTPUT_DIR "${CMAKE_CURRENT_BINARY_DIR}/test_output")

file(MAKE_DIRECTORY "${LAB3CXX_OUTPUT_DIR}")

foreach(TEST_NUMBER RANGE 1 7)
    add_test(
        NAME LAB3CXXTest${TEST_NUMBER}
        COMMAND ${CMAKE_COMMAND}
            "-DPROGRAM=$<TARGET_FILE:LAB3CXX>"
            "-DINPUT=${LAB3CXX_TEST_DIR}/input${TEST_NUMBER}.txt"
            "-DEXPECTED=${LAB3CXX_TEST_DIR}/expected${TEST_NUMBER}.txt"
            "-DACTUAL=${LAB3CXX_OUTPUT_DIR}/actual${TEST_NUMBER}.txt"
            -P "${CMAKE_CURRENT_SOURCE_DIR}/check_path.cmake"
    )
endforeach()