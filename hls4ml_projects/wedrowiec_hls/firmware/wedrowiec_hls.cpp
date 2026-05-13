#include <iostream>

#include "wedrowiec_hls.h"
#include "parameters.h"


void wedrowiec_hls(
    input_t input_layer[8*8],
    result_t layer9_out[4]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_layer complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_layer,layer9_out 
    #pragma HLS PIPELINE

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<dense_4_weight_t, 2048>(w3, "w3.txt");
        nnet::load_weights_from_txt<dense_4_bias_t, 32>(b3, "b3.txt");
        nnet::load_weights_from_txt<dense_5_weight_t, 1024>(w5, "w5.txt");
        nnet::load_weights_from_txt<dense_5_bias_t, 32>(b5, "b5.txt");
        nnet::load_weights_from_txt<dense_6_weight_t, 512>(w7, "w7.txt");
        nnet::load_weights_from_txt<dense_6_bias_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<dense_7_weight_t, 64>(w9, "w9.txt");
        nnet::load_weights_from_txt<dense_7_bias_t, 4>(b9, "b9.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    auto& layer2_out = input_layer;
    dense_4_result_t layer3_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0

    layer4_t layer4_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0

    dense_5_result_t layer5_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0

    layer6_t layer6_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0

    dense_6_result_t layer7_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0

    layer8_t layer8_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0

    nnet::dense<input_t, dense_4_result_t, config3>(layer2_out, layer3_out, w3, b3); // dense_4

    nnet::relu<dense_4_result_t, layer4_t, relu_config4>(layer3_out, layer4_out); // dense_4_relu

    nnet::dense<layer4_t, dense_5_result_t, config5>(layer4_out, layer5_out, w5, b5); // dense_5

    nnet::relu<dense_5_result_t, layer6_t, relu_config6>(layer5_out, layer6_out); // dense_5_relu

    nnet::dense<layer6_t, dense_6_result_t, config7>(layer6_out, layer7_out, w7, b7); // dense_6

    nnet::relu<dense_6_result_t, layer8_t, relu_config8>(layer7_out, layer8_out); // dense_6_relu

    nnet::dense<layer8_t, result_t, config9>(layer8_out, layer9_out, w9, b9); // dense_7

}

