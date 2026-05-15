# Moving `wedrowiec_hls` To PYNQ-Z2 Hardware

Current target:

- Board: PYNQ-Z2
- FPGA part: `xc7z020clg400-1`
- Clock target: `20 ns` / 50 MHz (we can try faster though)
- HLS top function: `wedrowiec_hls`
- Current interface: `io_parallel`
- Output: four fixed-point logits, choose class with `argmax`

## 1. Generate The HLS Project

In `dnn.ipynb`, run the HLS cells from `hls4ml-setup` through `hls4ml-compare-predictions`.

Expected check:

```text
hls4ml test accuracy: about 99.9%
hls4ml/reference label agreement: about 100%
```

The generated project is:

```text
hls4ml_projects/wedrowiec_hls
```

Do not copy `tb_data` to the board. `tb_data` is only for C simulation. The weights are compiled into the HLS IP from `firmware/weights/*.h`.

## 2. Run HLS Synthesis And Export IP

From the notebook, uncomment and run:

```python
hls_model.build(csim=True, synth=True, cosim=False, export=True)
hls4ml.report.read_vivado_report(str(hls_output_dir))
```

Or from a shell with Vivado HLS available:

```bash
cd hls4ml_projects/wedrowiec_hls
vivado_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=0" "export=1"
```

The exported IP should appear under:

```text
hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/impl/ip
```

## 3. Add IP In Vivado

1. Create/open a Vivado project for PYNQ-Z2 / `xc7z020clg400-1`.
2. Add the exported HLS IP folder as an IP repository.
3. Create a block design.
4. Add `ZYNQ7 Processing System` and run block automation.
5. Add the `wedrowiec_hls` IP.
6. Connect `ap_clk` to the PS clock, and reset through a processor reset block.

Important: the current `io_parallel` IP has scalar input/output ports, not a nice PYNQ Python AXI interface. This is fine for a first hardware IP, but awkward to drive directly from Python.

## 4. Build Bitstream

In Vivado:

1. Generate HDL wrapper.
2. Run synthesis.
3. Run implementation.
4. Generate bitstream.
5. Export/copy the `.bit` and `.hwh` files.

## 5. Use On PYNQ

Copy to the board:

```text
wedrowiec_hls.bit
wedrowiec_hls.hwh
```

Load from Python:

```python
from pynq import Overlay

overlay = Overlay("wedrowiec_hls.bit")
overlay.ip_dict
```

For an easy Python-controlled accelerator, regenerate later with hls4ml `VivadoAccelerator` and `axi_stream` for `board='pynq-z2'`. That creates a friendlier AXI wrapper and PYNQ driver path than the current raw `io_parallel` IP.

## 6. Vitis HLS Simulation

`tb_data` is needed for Vitis/Vivado HLS simulation, not for the final board runtime. The generated testbench reads:

```text
hls4ml_projects/wedrowiec_hls/tb_data/tb_input_features.dat
hls4ml_projects/wedrowiec_hls/tb_data/tb_output_predictions.dat
```

If those files are missing, the testbench runs only a few all-zero inputs. That is useful as a smoke test, but not useful for checking the network.

Generate small testbench data from the notebook after the HLS check cell has created `x_test_for_hls` and `keras_hls_predictions`:

```python
N_TB = 32  # keep cosim quick
tb_dir = hls_output_dir / "tb_data"
tb_dir.mkdir(exist_ok=True)

np.savetxt(
    tb_dir / "tb_input_features.dat",
    x_test_for_hls[:N_TB].reshape(N_TB, -1),
    fmt="%.8f",
)
np.savetxt(
    tb_dir / "tb_output_predictions.dat",
    keras_hls_predictions[:N_TB],
    fmt="%.8f",
)
```

Then run C simulation:

```bash
cd hls4ml_projects/wedrowiec_hls
vitis_hls -f build_prj.tcl "csim=1" "synth=0" "cosim=0" "export=0"
```

If your install uses the older command name:

```bash
vivado_hls -f build_prj.tcl "csim=1" "synth=0" "cosim=0" "export=0"
```

The C simulation output is written to:

```text
hls4ml_projects/wedrowiec_hls/tb_data/csim_results.log
```

For RTL co-simulation, run synthesis first and then cosim:

```bash
cd hls4ml_projects/wedrowiec_hls
vitis_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=1" "export=0"
```

Outputs to compare:

```text
tb_data/csim_results.log
tb_data/rtl_cosim_results.log
```

Timing/resource report after synthesis:

```text
wedrowiec_hls_prj/solution1/syn/report/wedrowiec_hls_csynth.rpt
```

In the Vitis HLS GUI, this is the same sequence:

1. Open/create project from `hls4ml_projects/wedrowiec_hls/build_prj.tcl`.
2. Run C Simulation.
3. Run C Synthesis.
4. Run C/RTL Co-simulation.
5. Open the synthesis report and check estimated clock, DSP, LUT, FF, and BRAM usage.
