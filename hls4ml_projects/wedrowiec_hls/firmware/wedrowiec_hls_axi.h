#ifndef WEDROWIEC_HLS_AXI_H_
#define WEDROWIEC_HLS_AXI_H_

#include <iostream>
#include "ap_axi_sdata.h"
#include "defines.h"
#include "wedrowiec_hls.h"

static const unsigned N_IN = 64;
static const unsigned N_OUT = 4;
typedef ap_ufixed<8,1,AP_RND,AP_SAT,0> T_in;
typedef ap_fixed<25,13> T_out;
typedef hls::axis_data<T_in, AXIS_ENABLE_LAST> input_axi_t;
typedef hls::axis_data<T_out, AXIS_ENABLE_LAST> output_axi_t;

static inline input_axi_t make_input_axi(const T_in& data, const ap_uint<1>& last) {
    input_axi_t word;
    word.data = data;
    word.last = last;
    return word;
}

static inline output_axi_t make_output_axi(const T_out& data, const ap_uint<1>& last) {
    output_axi_t word;
    word.data = data;
    word.last = last;
    return word;
}

static inline std::ostream& operator<<(std::ostream& stream, const output_axi_t& word)
{ return stream << "{ data: " << word.data.to_float() << ", last: " << word.last << " }" << std::endl; }

void wedrowiec_hls_axi(hls::stream<input_axi_t> &in, hls::stream<output_axi_t> &out);
#endif
