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
typedef ap_ufixed<8,1,AP_RND,AP_SAT,0> input_t;
typedef ap_fixed<25,12> dense_4_accum_t;
typedef ap_fixed<25,12> dense_4_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_4_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_4_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> layer4_t;
typedef ap_fixed<18,8> dense_4_relu_table_t;
typedef ap_fixed<26,14> dense_5_accum_t;
typedef ap_fixed<26,14> dense_5_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_5_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_5_bias_t;
typedef ap_uint<1> layer5_index;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> layer6_t;
typedef ap_fixed<18,8> dense_5_relu_table_t;
typedef ap_fixed<26,14> dense_6_accum_t;
typedef ap_fixed<26,14> dense_6_result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_6_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_6_bias_t;
typedef ap_uint<1> layer7_index;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> layer8_t;
typedef ap_fixed<18,8> dense_6_relu_table_t;
typedef ap_fixed<25,13> dense_7_accum_t;
typedef ap_fixed<25,13> result_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_7_weight_t;
typedef ap_fixed<10,4,AP_RND,AP_SAT,0> dense_7_bias_t;
typedef ap_uint<1> layer9_index;

// hls-fpga-machine-learning insert emulator-defines


#endif
