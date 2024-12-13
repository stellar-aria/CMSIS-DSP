cmake_minimum_required (VERSION 3.14)
cmake_policy(SET CMP0077 NEW)
project(CMSISDSP)

# DSP Sources
SET(DSP ${CMAKE_CURRENT_SOURCE_DIR}/..)

option(NEON "Neon acceleration" OFF)
option(NEONEXPERIMENTAL "Neon experimental acceleration" OFF)
option(HELIUMEXPERIMENTAL "Helium experimental acceleration" OFF)
option(LOOPUNROLL "Loop unrolling" ON)
option(ROUNDING "Rounding" OFF)
option(MATRIXCHECK "Matrix Checks" OFF)
option(HELIUM "Helium acceleration (MVEF and MVEI supported)" OFF)
option(MVEF "MVEF intrinsics supported" OFF)
option(MVEI "MVEI intrinsics supported" OFF)
option(MVEFLOAT16 "Float16 MVE intrinsics supported" OFF)
option(DISABLEFLOAT16 "Disable building float16 kernels" OFF)
option(HOST "Build for host" OFF)
option(AUTOVECTORIZE "Prefer autovectorizable code to one using C intrinsics" OFF)
option(LAXVECTORCONVERSIONS "Lax vector conversions" ON)
option(NEON_RIFFT_SCALING "Scaling of RIFFT with Neon" ON)

###########################
#
# CMSIS DSP
#
###########################

add_library(CMSISDSP STATIC)

add_subdirectory(BasicMathFunctions)
add_subdirectory(ComplexMathFunctions)
add_subdirectory(QuaternionMathFunctions)
add_subdirectory(ControllerFunctions)
add_subdirectory(FastMathFunctions)
add_subdirectory(FilteringFunctions)
add_subdirectory(MatrixFunctions)
add_subdirectory(StatisticsFunctions)
add_subdirectory(SupportFunctions)
add_subdirectory(TransformFunctions)
add_subdirectory(CommonTables)
add_subdirectory(SVMFunctions)
add_subdirectory(BayesFunctions)
add_subdirectory(DistanceFunctions)
add_subdirectory(InterpolationFunctions)
add_subdirectory(WindowFunctions)

### Includes
target_include_directories(CMSISDSP PUBLIC "${DSP}/Include")
if (DEFINED CMSISCORE)
target_include_directories(CMSISDSP PUBLIC "${CMSISCORE}/Include")
endif()

include(configDsp.cmake)

configDsp(CMSISDSP)
