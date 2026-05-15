#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_ufixed<8,1,AP_RND,AP_SAT,0>, 8*1> input_t;
typedef ap_fixed<25,12> dense_accum_t;
typedef nnet::array<ap_fixed<25,12>, 32*1> dense_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_bias_t;
typedef ap_uint<1> layer3_index;
typedef nnet::array<ap_fixed<10,4,AP_RND,AP_SAT,0>, 32*1> layer4_t;
typedef ap_fixed<18,8> dense_relu_table_t;
typedef ap_fixed<26,14> dense_1_accum_t;
typedef nnet::array<ap_fixed<26,14>, 32*1> dense_1_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_1_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_1_bias_t;
typedef ap_uint<1> layer5_index;
typedef nnet::array<ap_fixed<10,4,AP_RND,AP_SAT,0>, 32*1> layer6_t;
typedef ap_fixed<18,8> dense_1_relu_table_t;
typedef ap_fixed<26,14> dense_2_accum_t;
typedef nnet::array<ap_fixed<26,14>, 16*1> dense_2_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_2_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_2_bias_t;
typedef ap_uint<1> layer7_index;
typedef nnet::array<ap_fixed<10,4,AP_RND,AP_SAT,0>, 16*1> layer8_t;
typedef ap_fixed<18,8> dense_2_relu_table_t;
typedef ap_fixed<25,13> dense_3_accum_t;
typedef nnet::array<ap_fixed<25,13>, 4*1> result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_3_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_3_bias_t;
typedef ap_uint<1> layer9_index;

// hls-fpga-machine-learning insert emulator-defines


#endif
