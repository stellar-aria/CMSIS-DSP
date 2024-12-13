cmake_minimum_required(VERSION 3.14)

target_sources(CMSISDSP PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/arm_boolean_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_braycurtis_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_canberra_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_chebyshev_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_chebyshev_distance_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_cityblock_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_cityblock_distance_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_correlation_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_cosine_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_cosine_distance_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_dice_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_euclidean_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_euclidean_distance_f64.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_hamming_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_jaccard_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_jensenshannon_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_kulsinski_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_minkowski_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_rogerstanimoto_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_russellrao_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sokalmichener_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_sokalsneath_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_yule_distance.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_dtw_distance_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_dtw_path_f32.c
  ${CMAKE_CURRENT_LIST_DIR}/arm_dtw_init_window_q7.c
)

target_include_directories(CMSISDSP PRIVATE ${CMAKE_CURRENT_LIST_DIR}/Include)

if((NOT ARMAC5) AND(NOT DISABLEFLOAT16))
  target_sources(CMSISDSP PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/arm_braycurtis_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_canberra_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_chebyshev_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_cityblock_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_correlation_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_cosine_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_euclidean_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_jensenshannon_distance_f16.c
    ${CMAKE_CURRENT_LIST_DIR}/arm_minkowski_distance_f16.c
  )
endif()
