cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/arm_barycenter_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_bitonic_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_bubble_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_copy_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_copy_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_copy_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_copy_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_copy_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f16_to_float.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f16_to_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_fill_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_fill_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_fill_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_fill_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_fill_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f64_to_float.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f64_to_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f64_to_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_f64_to_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_float_to_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_float_to_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_float_to_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_float_to_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_heap_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_insertion_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_merge_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_merge_sort_init_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q15_to_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q15_to_float.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q15_to_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q15_to_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q31_to_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q31_to_float.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q31_to_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q31_to_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q7_to_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q7_to_float.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q7_to_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_q7_to_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quick_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_selection_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sort_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sort_init_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_weighted_average_f32.c
)

if((NOT ARMAC5) AND(NOT DISABLEFLOAT16))
  target_sources(CMSISDSP PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/arm_copy_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_fill_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_f16_to_q15.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_q15_to_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_float_to_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_f16_to_float.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_weighted_average_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_barycenter_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_f16_to_f64.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_f64_to_f16.c
  )
endif()
