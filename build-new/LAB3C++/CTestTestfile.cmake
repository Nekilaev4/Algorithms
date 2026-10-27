# CMake generated Testfile for 
# Source directory: C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++
# Build directory: C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(LAB3CXXTest1 "C:/Program Files/CMake/bin/cmake.exe" "-DPROGRAM=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/Debug/LAB3CXX.exe" "-DINPUT=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/input1.txt" "-DEXPECTED=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/expected1.txt" "-DACTUAL=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/test_output/actual1.txt" "-P" "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/check_path.cmake")
  set_tests_properties(LAB3CXXTest1 PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/Debug/LAB3CXX.exe" _BACKTRACE_TRIPLES "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;14;add_test;C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(LAB3CXXTest1 "C:/Program Files/CMake/bin/cmake.exe" "-DPROGRAM=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/Release/LAB3CXX.exe" "-DINPUT=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/input1.txt" "-DEXPECTED=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/expected1.txt" "-DACTUAL=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/test_output/actual1.txt" "-P" "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/check_path.cmake")
  set_tests_properties(LAB3CXXTest1 PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/Release/LAB3CXX.exe" _BACKTRACE_TRIPLES "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;14;add_test;C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(LAB3CXXTest1 "C:/Program Files/CMake/bin/cmake.exe" "-DPROGRAM=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/MinSizeRel/LAB3CXX.exe" "-DINPUT=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/input1.txt" "-DEXPECTED=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/expected1.txt" "-DACTUAL=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/test_output/actual1.txt" "-P" "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/check_path.cmake")
  set_tests_properties(LAB3CXXTest1 PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/MinSizeRel/LAB3CXX.exe" _BACKTRACE_TRIPLES "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;14;add_test;C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(LAB3CXXTest1 "C:/Program Files/CMake/bin/cmake.exe" "-DPROGRAM=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/RelWithDebInfo/LAB3CXX.exe" "-DINPUT=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/input1.txt" "-DEXPECTED=C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/tests/expected1.txt" "-DACTUAL=C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/test_output/actual1.txt" "-P" "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/check_path.cmake")
  set_tests_properties(LAB3CXXTest1 PROPERTIES  _CMAKE_TEST_BUILD_DEPENDS "C:/Users/moshe/Проекты/файлы-универ/Algorithms/build-new/LAB3C++/RelWithDebInfo/LAB3CXX.exe" _BACKTRACE_TRIPLES "C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;14;add_test;C:/Users/moshe/Проекты/файлы-универ/Algorithms/LAB3C++/CMakeLists.txt;0;")
else()
  add_test(LAB3CXXTest1 NOT_AVAILABLE)
endif()
