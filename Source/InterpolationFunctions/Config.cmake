cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/arm_bilinear_interp_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_bilinear_interp_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_bilinear_interp_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_bilinear_interp_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_linear_interp_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_linear_interp_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_linear_interp_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_linear_interp_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_spline_interp_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_spline_interp_init_f32.c
)

if((NOT ARMAC5) AND(NOT DISABLEFLOAT16))
  target_sources(CMSISDSP PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/arm_bilinear_interp_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_linear_interp_f16.c
  )
endif()
