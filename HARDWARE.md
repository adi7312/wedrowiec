# Running `wedrowiec_hls` On PYNQ-Z2 Hardware

Current target:

- Board: PYNQ-Z2
- FPGA part: `xc7z020clg400-1`
- Tool version used here: Vitis HLS 2024.2
- Clock target: `20 ns` / 50 MHz
- HLS top function: `wedrowiec_hls_axi`
- Interface: AXI Stream input/output, 32-bit float `TDATA` plus `TLAST`
- Control protocol: `ap_ctrl_none`
- Output: four logits, choose class with `argmax`

The dense layers are configured for `Resource` strategy with high reuse factors so the design fits on the Zynq-7020. This trades latency for area.

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

The weights are compiled into the HLS IP from `firmware/weights/*.h`.

## 2. Prepare Testbench Data

`tb_data` is needed for HLS simulation and validation. It is not needed on the final PYNQ board.

The generated testbench tries to read:

```text
hls4ml_projects/wedrowiec_hls/tb_data/tb_input_features.dat
hls4ml_projects/wedrowiec_hls/tb_data/tb_output_predictions.dat
```

If those files are missing, the testbench prints:

```text
INFO: Unable to open input/predictions file, using default input.
```

That fallback is fine for a smoke test, but it does not test real notebook samples. Generate small testbench data from the notebook after `x_test_for_hls` and `keras_hls_predictions` exist:

```python
N_TB = 32
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

## 3. Run HLS On Windows

From Command Prompt:

```bat
cd /d G:\Xlinix-workspace\projekt-hls\hls4ml_projects\wedrowiec_hls
call G:\Xilinx\Vitis\2024.2\settings64.bat
```

C simulation only:

```bat
vitis_hls -f build_prj.tcl "csim=1" "synth=0" "cosim=0" "validation=0" "export=0"
```

Full test with C simulation, synthesis, RTL cosim, and validation:

```bat
vitis_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

Clean full test:

```bat
vitis_hls -f build_prj.tcl "reset=1" "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

Validation only, after cosim has already produced logs:

```bat
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=1" "export=0"
```

Export IP after tests pass:

```bat
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=0" "export=1"
```

From PowerShell, wrap the environment setup through `cmd /c`:

```powershell
cmd /c "call G:\Xilinx\Vitis\2024.2\settings64.bat && cd /d G:\Xlinix-workspace\projekt-hls\hls4ml_projects\wedrowiec_hls && vitis_hls -f build_prj.tcl ""csim=1"" ""synth=1"" ""cosim=1"" ""validation=1"" ""export=0"""
```

## 4. Run HLS On Linux

Adjust the Vitis install path if needed. Common paths are `/tools/Xilinx/...` or `/opt/Xilinx/...`.

```bash
cd /path/to/projekt-hls/hls4ml_projects/wedrowiec_hls
source /tools/Xilinx/Vitis/2024.2/settings64.sh
```

C simulation only:

```bash
vitis_hls -f build_prj.tcl "csim=1" "synth=0" "cosim=0" "validation=0" "export=0"
```

Full test with validation:

```bash
vitis_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

Clean full test:

```bash
vitis_hls -f build_prj.tcl "reset=1" "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

Validation only:

```bash
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=1" "export=0"
```

Export IP:

```bash
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=0" "export=1"
```

Newer Vitis versions may prefer:

```bash
vitis-run --mode hls --tcl build_prj.tcl -- "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

## 5. What Passing Looks Like

The important success lines are:

```text
Verilog|      Pass
***** C/RTL VALIDATION *****
INFO: Test PASSED
```

The cosim latency table can show `NA` for latency because the top function uses `ap_ctrl_none`, so there is no `ap_start`/`ap_done` transaction boundary for cosim to time. Use the synthesis report for latency instead.

The validation compares:

```text
wedrowiec_hls_prj/solution1/csim/build/tb_data/csim_results.log
wedrowiec_hls_prj/solution1/sim/wrapc/tb_data/rtl_cosim_results.log
```

## 6. Check Reports

Top-level synthesis report:

```text
hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/syn/report/wedrowiec_hls_axi_csynth.rpt
```

Current expected area after the resource-mode changes is approximately:

```text
BRAM_18K: 7 / 280
DSP:      4 / 220
FF:       about 12k / 106400
LUT:      about 29k / 53200
```

Current expected HLS latency is approximately:

```text
2151-2152 cycles
about 43 us at 20 ns clock
```

## 7. Check LUT Usage

LUT usage is not measured on the PYNQ board at runtime. It is reported by Vivado when it synthesizes and implements the bitstream.

There are two useful reports:

- HLS estimate: quick, from Vitis HLS, good for early feedback.
- Vivado post-implementation utilization: authoritative, use this before programming the board.

HLS estimate:

```text
hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/syn/report/wedrowiec_hls_axi_csynth.rpt
```

Look for:

```text
== Utilization Estimates
LUT
Utilization (%)
```

Vivado post-implementation report from GUI:

1. Open the Vivado project.
2. Run synthesis and implementation.
3. Open implemented design.
4. Go to `Reports -> Report Utilization`.
5. Check the `LUT` row and the percentage of available LUTs.

Vivado post-implementation report from Tcl:

```tcl
open_project wedrowiec_hls_vivado_accelerator/project_1.xpr
open_run impl_1
report_utilization -file util_impl.rpt -hierarchical -hierarchical_percentages
```

If using this repository's `design.tcl`, it already runs:

```tcl
report_utilization -file util.rpt -hierarchical -hierarchical_percentages
```

After the Vivado build finishes, check:

```text
hls4ml_projects/wedrowiec_hls/util.rpt
```

For PYNQ-Z2 / `xc7z020clg400-1`, the LUT budget is about:

```text
Available LUT: 53200
```

Aim to stay comfortably below 100%. The current HLS estimate is about 55% LUT, but the Vivado post-implementation number is the one to trust for the final bitstream.

## 8. Exported IP And Vivado Project

The exported IP appears under:

```text
hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/impl/ip
```

This project also has a `design.tcl` that creates a PYNQ-Z2 Vivado block design with:

- Zynq Processing System
- AXI DMA
- `wedrowiec_hls_axi` HLS IP
- AXI Stream connections between DMA and HLS IP

To build the bitstream from the HLS project flow, use:

```bash
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=0" "export=1" "vsynth=1"
```

If building manually in Vivado:

1. Create/open a Vivado project for PYNQ-Z2 / `xc7z020clg400-1`.
2. Add `wedrowiec_hls_prj` as an IP repository after `export=1`.
3. Create a block design.
4. Add `ZYNQ7 Processing System` and run block automation.
5. Add AXI DMA.
6. Add `wedrowiec_hls_axi`.
7. Connect DMA `M_AXIS_MM2S` to HLS `in_r`.
8. Connect HLS `out_r` to DMA `S_AXIS_S2MM`.
9. Connect clocks/resets to the PS clock/reset network.
10. Generate wrapper, run synthesis, implementation, and bitstream generation.

## 9. Use On PYNQ

Copy the generated `.bit` and `.hwh` files to the board.

Load from Python:

```python
from pynq import Overlay

overlay = Overlay("wedrowiec_hls.bit")
overlay.ip_dict
```

Runtime data should be sent through the AXI DMA as 32-bit float words. The HLS IP expects 64 input float values and returns 4 output float logits.
