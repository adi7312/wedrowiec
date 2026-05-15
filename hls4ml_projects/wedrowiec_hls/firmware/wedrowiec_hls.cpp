#include <iostream>

#include "wedrowiec_hls.h"
#include "parameters.h"


void wedrowiec_hls(
    hls::stream<input_t> &input_layer,
    hls::stream<result_t> &layer9_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_layer,layer9_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<dense_weight_t, 2048>(w3, "w3.txt");
        nnet::load_weights_from_txt<dense_bias_t, 32>(b3, "b3.txt");
        nnet::load_weights_from_txt<dense_1_weight_t, 1024>(w5, "w5.txt");
        nnet::load_weights_from_txt<dense_1_bias_t, 32>(b5, "b5.txt");
        nnet::load_weights_from_txt<dense_2_weight_t, 512>(w7, "w7.txt");
        nnet::load_weights_from_txt<dense_2_bias_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<dense_3_weight_t, 64>(w9, "w9.txt");
        nnet::load_weights_from_txt<dense_3_bias_t, 4>(b9, "b9.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    auto& layer2_out = input_layer;
    hls::stream<dense_result_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=1

    hls::stream<dense_1_result_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=1

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=1

    hls::stream<dense_2_result_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=1

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=1

    nnet::dense<input_t, dense_result_t, config3>(layer2_out, layer3_out, w3, b3); // dense

    nnet::relu<dense_result_t, layer4_t, relu_config4>(layer3_out, layer4_out); // dense_relu

    nnet::dense<layer4_t, dense_1_result_t, config5>(layer4_out, layer5_out, w5, b5); // dense_1

    nnet::relu<dense_1_result_t, layer6_t, relu_config6>(layer5_out, layer6_out); // dense_1_relu

    nnet::dense<layer6_t, dense_2_result_t, config7>(layer6_out, layer7_out, w7, b7); // dense_2

    nnet::relu<dense_2_result_t, layer8_t, relu_config8>(layer7_out, layer8_out); // dense_2_relu

    nnet::dense<layer8_t, result_t, config9>(layer8_out, layer9_out, w9, b9); // dense_3

}

