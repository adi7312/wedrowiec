#ifndef WEDROWIEC_HLS_H_
#define WEDROWIEC_HLS_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"


// Prototype of top level function for C-synthesis
void wedrowiec_hls(
    input_t input_layer[8*8],
    result_t layer9_out[4]
);

// hls-fpga-machine-learning insert emulator-defines


#endif
