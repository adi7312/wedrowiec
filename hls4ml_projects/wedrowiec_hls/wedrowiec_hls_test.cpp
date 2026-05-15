#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>

#include "firmware/wedrowiec_hls_axi.h"
#include "firmware/nnet_utils/nnet_helpers.h"

// hls-fpga-machine-learning insert bram

#define CHECKPOINT 5000

namespace nnet {
bool trace_enabled = true;
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

int main(int argc, char **argv) {

    // load input data from text file
    std::ifstream fin("tb_data/tb_input_features.dat");
    // load predictions from text file
    std::ifstream fpr("tb_data/tb_output_predictions.dat");

#ifdef RTL_SIM
    std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
#else
    std::string RESULTS_LOG = "tb_data/csim_results.log";
#endif
    std::ofstream fout(RESULTS_LOG);

    std::string iline;
    std::string pline;
    int e = 0;

    if (fin.is_open() && fpr.is_open()) {
        while (std::getline(fin, iline) && std::getline(fpr, pline)) {
            if (e % CHECKPOINT == 0)
                std::cout << "Processing input " << e << std::endl;
            char *cstr = const_cast<char *>(iline.c_str());
            char *current;
            std::vector<float> in;
            current = strtok(cstr, " ");
            while (current != NULL) {
                in.push_back(atof(current));
                current = strtok(NULL, " ");
            }
            cstr = const_cast<char *>(pline.c_str());
            std::vector<float> pr;
            current = strtok(cstr, " ");
            while (current != NULL) {
                pr.push_back(atof(current));
                current = strtok(NULL, " ");
            }

            // hls-fpga-machine-learning insert data
      input_axi_t inputs[N_IN];
      nnet::copy_data_axi<float, input_axi_t, 0, 8*8>(in, inputs);
      output_axi_t outputs[N_OUT];
      hls::stream<input_axi_t> input_stream("input_stream");
      hls::stream<output_axi_t> output_stream("output_stream");
      write_input_stream(inputs, input_stream);

            // hls-fpga-machine-learning insert top-level-function
            wedrowiec_hls_axi(input_stream,output_stream);
            read_output_stream(output_stream, outputs);

            if (e % CHECKPOINT == 0) {
                std::cout << "Predictions" << std::endl;
                // hls-fpga-machine-learning insert predictions
                for(int i = 0; i < 4; i++) {
                  std::cout << pr[i] << " ";
                }
                std::cout << std::endl;
                std::cout << "Quantized predictions" << std::endl;
                // hls-fpga-machine-learning insert quantized
                nnet::print_result<output_axi_t, 4>(outputs, std::cout, true);
            }
            e++;

            // hls-fpga-machine-learning insert tb-output
            nnet::print_result<output_axi_t, 4>(outputs, fout);
        }
        fin.close();
        fpr.close();
    } else {
        std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;
        const unsigned NUM_TEST_SAMPLES = 5;
        for (unsigned i = 0; i < NUM_TEST_SAMPLES; i++) {
            // hls-fpga-machine-learning insert zero
            input_axi_t inputs[N_IN];
            for (unsigned j = 0; j < N_IN; j++) {
                inputs[j] = make_input_axi(0, j == N_IN - 1);
            }
            output_axi_t outputs[N_OUT];
            hls::stream<input_axi_t> input_stream("input_stream");
            hls::stream<output_axi_t> output_stream("output_stream");
            write_input_stream(inputs, input_stream);

            // hls-fpga-machine-learning insert top-level-function
            wedrowiec_hls_axi(input_stream,output_stream);
            read_output_stream(output_stream, outputs);

            // hls-fpga-machine-learning insert output
            nnet::print_result<output_axi_t, 4>(outputs, std::cout, true);

            // hls-fpga-machine-learning insert tb-output
            nnet::print_result<output_axi_t, 4>(outputs, fout);
        }
    }

    fout.close();
    std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

    return 0;
}
