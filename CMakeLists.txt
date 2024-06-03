cmake_minimum_required(VERSION 3.16)
project(project LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)

####################
## OpenMP
####################

find_package(OpenMP REQUIRED)

###############
# libWB
###############

set(BUILD_LIBWB_LIBRARY ON CACHE BOOL "Turn on build of libwb library")
add_subdirectory(libwb)
include_directories(libwb)

##############################################################
# Autodetect CUDA architecture(s)
##############################################################

include(FindCUDA/select_compute_arch)
CUDA_DETECT_INSTALLED_GPUS(INSTALLED_GPU_CCS_1)
string(STRIP "${INSTALLED_GPU_CCS_1}" INSTALLED_GPU_CCS_2)
string(REPLACE " " ";" INSTALLED_GPU_CCS_3 "${INSTALLED_GPU_CCS_2}")
string(REPLACE "." "" CUDA_ARCH_LIST "${INSTALLED_GPU_CCS_3}")
# Filter out unsupported architecture 'compute_86+PTX'
list(REMOVE_ITEM CUDA_ARCH_LIST "86+PTX")
SET(CMAKE_CUDA_ARCHITECTURES ${CUDA_ARCH_LIST})
set_property(GLOBAL PROPERTY CUDA_ARCHITECTURES "${CUDA_ARCH_LIST}")

cuda_select_nvcc_arch_flags(ARCH_FLAGS Auto)
list(APPEND CUDA_NVCC_FLAGS ${ARCH_FLAGS})
message("-- CUDA Architecture(s): " ${CMAKE_CUDA_ARCHITECTURES})

###############
# project
###############

include_directories(include)

add_executable(project
        src/main.cpp
        src/histogram_eq.cpp
)

target_link_libraries(project wb)

###################
# dataset_generator
###################

add_executable(dataset_generator
        src/dataset_generator.cpp
)

target_link_libraries(dataset_generator wb)

###############
# project_par
###############

add_executable(project_par
        src/main.cpp
        src/histogram_par.cpp
)

target_link_libraries(project_par PUBLIC wb PUBLIC OpenMP::OpenMP_CXX)

###############
# project_par_initial
###############
add_executable(project_par_initial
        src/main.cpp
        src/histogram_par_initial.cpp)

target_link_libraries(project_par_initial PUBLIC wb PUBLIC OpenMP::OpenMP_CXX)


###############
# project_par_second
###############
add_executable(project_par_second
        src/main.cpp
        src/histogram_par_second.cpp)

target_link_libraries(project_par_second PUBLIC wb PUBLIC OpenMP::OpenMP_CXX)

###############
# project_cuda
###############

add_executable(project_cuda
        src/main.cpp
        src/histogram_cuda.cu
)

target_link_libraries(project_cuda wb )

##################
# project_cuda_512
##################

add_executable(project_cuda_512
        src/main.cpp
        src/histogram_cuda_512.cu
)

target_link_libraries(project_cuda_512 wb )

##############################################################
# Tests
##############################################################

enable_testing()

#############
# Download and unpack googletest at configure time
#############

set (GTEST_HOME ${CMAKE_CURRENT_BINARY_DIR}/googletest)

message ("-- Loading Google Test from ${GTEST_HOME}")

configure_file(${PROJECT_SOURCE_DIR}/cmake/CMakeLists.googletest.in ${GTEST_HOME}/download/CMakeLists.txt)

execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
        RESULT_VARIABLE result
        WORKING_DIRECTORY ${GTEST_HOME}/download )
if(result)
    message(FATAL_ERROR "CMake step for googletest failed: ${result}")
endif()

execute_process(COMMAND ${CMAKE_COMMAND} --build .
        RESULT_VARIABLE result
        WORKING_DIRECTORY ${GTEST_HOME}/download )
if(result)
    message(FATAL_ERROR "Build step for googletest failed: ${result}")
endif()

# Prevent overriding the parent project's compiler/linker settings on Windows
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

# Add googletest directly to our build. This defines the gtest and gtest_main targets.
add_subdirectory(${GTEST_HOME}/src
        ${GTEST_HOME}/build
        EXCLUDE_FROM_ALL)

set (GTEST_BOTH_LIBRARIES gtest_main gtest)

add_subdirectory (test)

