cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE 
  ${CMAKE_CURRENT_LIST_DIR}/arm_entropy_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_entropy_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_kullback_leibler_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_kullback_leibler_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_logsumexp_dot_prod_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_logsumexp_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mean_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mean_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mean_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mean_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mean_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_power_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_power_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_power_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_power_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_power_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_rms_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_rms_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_rms_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_std_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_std_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_std_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_std_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_var_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_var_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_var_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_var_q31.c

  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_q7.c

  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_q7.c

  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_q7.c

  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_q7.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_q15.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_q31.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_f16.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_mse_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_accumulate_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_accumulate_f32.c
)

if((NOT ARMAC5) AND(NOT DISABLEFLOAT16))
  target_sources(CMSISDSP PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/arm_max_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_min_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_mean_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_power_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_rms_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_std_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_var_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_entropy_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_kullback_leibler_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_logsumexp_dot_prod_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_logsumexp_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_max_no_idx_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_min_no_idx_f16.c

    ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_absmax_no_idx_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_absmin_no_idx_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_accumulate_f16.c
  )
endif()
