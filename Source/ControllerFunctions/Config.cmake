cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_init_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_init_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_init_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_reset_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_reset_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_pid_reset_q31c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sin_cos_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sin_cos_q31.c
)
