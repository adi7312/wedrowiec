#ifndef WEDROWIEC_HLS_BRIDGE_H_
#define WEDROWIEC_HLS_BRIDGE_H_

#include "firmware/wedrowiec_hls_axi.h"
#include "firmware/nnet_utils/nnet_helpers.h"
#include <algorithm>
#include <map>

// hls-fpga-machine-learning insert bram

namespace nnet {
bool trace_enabled = false;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

extern "C" {

struct trace_data {
    const char *name;
    void *data;
};

void allocate_trace_storage(size_t element_size) {
    nnet::trace_enabled = true;
    nnet::trace_outputs = new std::map<std::string, void *>;
    nnet::trace_type_size = element_size;
}

void free_trace_storage() {
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        void *ptr = i->second;
        free(ptr);
    }
    nnet::trace_outputs->clear();
    delete nnet::trace_outputs;
    nnet::trace_outputs = NULL;
    nnet::trace_enabled = false;
}

void collect_trace_output(struct trace_data *c_trace_outputs) {
    int ii = 0;
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        c_trace_outputs[ii].name = i->first.c_str();
        c_trace_outputs[ii].data = i->second;
        ii++;
    }
}

// hls-fpga-machine-learning insert tb_input_writer

// Wrapper of top level function for Python bridge
void wedrowiec_hls_float(
    float *input_layer,
    float *layer9_out
) {

    input_axi_t input_layer_ap[N_IN];
    nnet::convert_data<float, input_axi_t, 8*8>(input_layer, input_layer_ap);

    output_axi_t layer9_out_ap[N_OUT];

    wedrowiec_hls_axi(input_layer_ap,layer9_out_ap);

    nnet::convert_data<output_axi_t, float, 4>(layer9_out_ap, layer9_out);
}

void wedrowiec_hls_double(
    double *input_layer,
    double *layer9_out
) {

    input_axi_t input_layer_ap[N_IN];
    nnet::convert_data<double, input_axi_t, 8*8>(input_layer, input_layer_ap);

    output_axi_t layer9_out_ap[N_OUT];

    wedrowiec_hls_axi(input_layer_ap,layer9_out_ap);

    nnet::convert_data<output_axi_t, double, 4>(layer9_out_ap, layer9_out);
}
}

#endif
