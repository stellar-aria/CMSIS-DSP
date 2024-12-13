cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_norm_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_inverse_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_conjugate_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_normalize_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_product_single_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion_product_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_quaternion2rotation_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_rotation2quaternion_f32.c
)
