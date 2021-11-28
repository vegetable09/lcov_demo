project(lcov_demo)
cmake_minimum_required(VERSION 3.0)


option(ENABLE_COVERAGE "Enable gcov (debug, Linux builds only)" OFF)
IF (ENABLE_COVERAGE)
  SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fprofile-arcs -ftest-coverage")
  SET(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -fprofile-arcs -ftest-coverage")
  SET(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG} -fprofile-arcs -ftest-coverage -lgcov")
ENDIF()

add_executable(${PROJECT_NAME} src/main.cc)