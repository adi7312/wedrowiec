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

static void write_input_stream(input_axi_t inputs[N_IN], hls::stream<input_axi_t> &input_stream) {
    for (unsigned i = 0; i < N_IN; i++) {
        input_stream.write(inputs[i]);
    }
}

static void read_output_stream(hls::stream<output_axi_t> &output_stream, output_axi_t outputs[N_OUT]) {
    for (unsigned i = 0; i < N_OUT; i++) {
        outputs[i] = output_stream.read();
    }
}

static void copy_input_data(float *input_layer, input_axi_t inputs[N_IN]) {
    for (unsigned i = 0; i < N_IN; i++) {
        inputs[i] = make_input_axi(input_layer[i], i == N_IN - 1);
    }
}

static void copy_input_data(double *input_layer, input_axi_t inputs[N_IN]) {
    for (unsigned i = 0; i < N_IN; i++) {
        inputs[i] = make_input_axi(input_layer[i], i == N_IN - 1);
    }
}

static void copy_output_data(output_axi_t outputs[N_OUT], float *layer9_out) {
    for (unsigned i = 0; i < N_OUT; i++) {
        layer9_out[i] = outputs[i].data;
    }
}

static void copy_output_data(output_axi_t outputs[N_OUT], double *layer9_out) {
    for (unsigned i = 0; i < N_OUT; i++) {
        layer9_out[i] = outputs[i].data;
    }
}

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
    copy_input_data(input_layer, input_layer_ap);

    output_axi_t layer9_out_ap[N_OUT];
    hls::stream<input_axi_t> input_layer_stream("input_layer_stream");
    hls::stream<output_axi_t> layer9_out_stream("layer9_out_stream");
    write_input_stream(input_layer_ap, input_layer_stream);

    wedrowiec_hls_axi(input_layer_stream,layer9_out_stream);
    read_output_stream(layer9_out_stream, layer9_out_ap);

    copy_output_data(layer9_out_ap, layer9_out);
}

void wedrowiec_hls_double(
    double *input_layer,
    double *layer9_out
) {

    input_axi_t input_layer_ap[N_IN];
    copy_input_data(input_layer, input_layer_ap);

    output_axi_t layer9_out_ap[N_OUT];
    hls::stream<input_axi_t> input_layer_stream("input_layer_stream");
    hls::stream<output_axi_t> layer9_out_stream("layer9_out_stream");
    write_input_stream(input_layer_ap, input_layer_stream);

    wedrowiec_hls_axi(input_layer_stream,layer9_out_stream);
    read_output_stream(layer9_out_stream, layer9_out_ap);

    copy_output_data(layer9_out_ap, layer9_out);
}
}

#endif
