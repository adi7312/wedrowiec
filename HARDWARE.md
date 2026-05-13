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
