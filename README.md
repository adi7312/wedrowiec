# wedrowiec

Neural network accelerator for arrow direction classification on the **PYNQ-Z2** FPGA board. Classifies 8×8 binarized grayscale arrow images into four directions: up, down, left, right. Data is sent over **UART via a USB-to-UART converter**.

Training data from [arrows8 on Kaggle](https://www.kaggle.com/datasets/msmart2/arrows8).

---

## Hardware Requirements

| Item | Notes |
|---|---|
| **PYNQ-Z2** board (XC7Z020-1CLG400C) | Main target |
| **USB-to-UART converter** (e.g., CP2102, FTDI FT232) | Required to send image data to the FPGA. Connect TX of converter to PMOD/JA or appropriate GPIO pins. **Do not rely on the UART-to-USB from the PYNQ-Z2's programming port alone** — a dedicated USB-UART bridge is needed for the custom UART receiver implemented in the FPGA fabric. |
| Micro-USB cable | For PYNQ-Z2 power/programming |
| MicroSD card (8 GB+) | For PYNQ boot image |

### UART Connections

The Verilog UART RX (`uart_rx.v`) expects 115200 baud, 8-N-1 on the `rxd` input of `wedrowiec_top`.

Suggested PMOD wiring (adjust for your board setup):

| USB-UART Converter | PYNQ-Z2 Pin |
|---|---|
| TXD | PMOD JA / JD (any GPIO input) |
| GND | GND |

---

## Software Requirements

| Tool | Version | Used for |
|---|---|---|
| Python | ≥ 3.13 (see `.python-version`) | Training, hls4ml, data preparation |
| Vitis HLS | 2024.2 | HLS synthesis and IP export |
| Vivado | 2025.1 | Block design and bitstream generation |
| Vitis (classic) | 2024.2 | Building ARM firmware (standalone/bare-metal) |

---

## Project Structure

```
wedrowiec/
├── main.py                       # Data preparation script
├── dnn.ipynb                     # Neural network training + hls4ml conversion
├── dnn2hw.ipynb                  # Additional HLS export steps
├── pyproject.toml                # Python dependencies
├── uart_rx.v                     # Verilog UART receiver (115200 baud)
├── uart_tb.v                     # UART testbench
├── uart_tx.py                    # Python script to send data over USB-UART
├── wedrowiec_top.v               # Top-level Verilog wrapper (UART + HLS IP)
├── wedrowiec_tb.v                # Full-system testbench
├── wedrowiec-pre_hls.h5          # Pre-trained Keras weights
├── wedrowiec_hls.tar.gz          # Pre-built HLS project archive
├── arrows8_keras_format.npz      # Dataset in Keras-compatible format
├── firmware/                     # Vitis standalone firmware for the Zynq PS
│   └── src/
│       ├── main.c                # Firmware entry point
│       ├── hal/                  # NN accelerator HAL
│       │   ├── nn_accelerator.h
│       │   └── nn_accelerator.c
│       ├── uart/                 # UART driver (Xilinx UARTPS)
│       │   ├── uart.h
│       │   └── uart.c
│       └── CMakeLists.txt
├── hls4ml_projects/wedrowiec_hls/ # Generated hls4ml HLS project
├── ip_repo/                      # Exported HLS IP (after export step)
├── project_1.tcl                 # Vivado Tcl project script
├── wedrowiec/                    # Vivado project directory
│   └── wedrowiec.xpr
├── image_test_data.txt           # Test images for UART transmission
├── test_data.txt                 # Preprocessed numerical test data
└── input.txt                     # Text input for UART loopback test
```

---

## Setup Guide

### 1. Python Environment

```bash
# Requires Python ≥ 3.13 (the project uses uv for package management)
uv sync
# or with pip:
pip install -e .
```

Key dependencies (see `pyproject.toml`):
- `tensorflow` ≥ 2.21 — model training
- `hls4ml` ≥ 1.3.0 — Keras-to-HLS conversion
- `numpy`, `scikit-learn`, `matplotlib`, `scipy`
- `pyserial` — for `uart_tx.py` (install separately: `pip install pyserial`)

### 2. Train the Neural Network

Open `dnn.ipynb` in Jupyter and run all cells. This will:

1. Load the arrows8 dataset from `arrows8_keras_format.npz`
2. Train a small fully-connected neural network (8×8 → 64 → 32 → 4)
3. Save the trained weights to `wedrowiec-pre_hls.h5`
4. Compare Keras predictions against hls4ml cosimulation

Expected accuracy: **~99.9%** on the test set.

### 3. Generate the HLS IP

In the same notebook (`dnn.ipynb`), run the hls4ml cells (from `hls4ml-setup` through `hls4ml-compare-predictions`). This produces:

```
hls4ml_projects/wedrowiec_hls/
└── wedrowiec_hls_prj/
```

The HLS top function is `wedrowiec_hls_axi` with:
- AXI Stream input/output (32-bit float TDATA + TLAST)
- `ap_ctrl_none` (no handshake, free-running)
- 64 input floats (8×8 pixels)
- 4 output logits (argmax for class)
- Target clock: 20 ns / 50 MHz
- Resource strategy with high reuse factors to fit Zynq-7020

### 4. Run HLS Synthesis

#### On Linux

```bash
cd hls4ml_projects/wedrowiec_hls
source /tools/Xilinx/Vitis/2024.2/settings64.sh
```

C simulation:
```bash
vitis_hls -f build_prj.tcl "csim=1" "synth=0" "cosim=0" "validation=0" "export=0"
```

Full flow (synth + cosim + validation):
```bash
vitis_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

Export IP:
```bash
vitis_hls -f build_prj.tcl "csim=0" "synth=0" "cosim=0" "validation=0" "export=1"
```

#### On Windows

```bat
cd /d G:\Xlinix-workspace\projekt-hls\hls4ml_projects\wedrowiec_hls
call G:\Xilinx\Vitis\2024.2\settings64.bat
vitis_hls -f build_prj.tcl "csim=1" "synth=1" "cosim=1" "validation=1" "export=0"
```

**Expected results:**
- C/RTL validation: `PASSED`
- Area estimate (post-synthesis): ~7 BRAM, 4 DSP, ~12k FF, ~29k LUT
- Latency: ~2151 cycles (~43 µs at 20 ns clock)

### 5. Generate the Vivado Bitstream


1. Create a new Vivado project for **xc7z020clg400-1** (PYNQ-Z2).
2. Add `hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/impl/ip` as an IP repository.
3. Create a block design containing:
   - **ZYNQ7 Processing System** — run block automation to configure PS7
   - **AXI DMA** — for moving data between PS DRAM and the HLS IP
   - **wedrowiec_hls_axi** — the HLS accelerator IP
4. Connect:
   - DMA `M_AXIS_MM2S` → HLS `in_r`
   - HLS `out_r` → DMA `S_AXIS_S2MM`
   - Clocks and resets from the PS clock/reset network
5. Add a **UART RX** wrapper (`uart_rx.v`) connected to a GPIO pin for receiving pixel data.
6. Wrap the HLS IP and UART RX with `wedrowiec_top.v` (this project's top module).
7. Generate the HDL wrapper, run synthesis, implementation, and bitstream generation.

### 6. Program the Board (Bare-Metal)

The system runs on bare metal — no PYNQ Linux image required. The bitstream is loaded and the firmware is run using Vitis.

1. Connect the board via JTAG (USB cable to the programming port).
2. Open Vivado, open the implemented design, and **Program the device** with the generated `.bit` file.
3. Launch **Vitis 2024.2**, create a platform from the XSA exported by Vivado, then create an application project from `firmware/src/`.
4. Build `firmware.elf` and run/debug it on the board via JTAG. The firmware will:
   - Initialize the PS UART (for debug logging)
   - Wait for image data (received via the FPGA-fabric UART RX connected to your USB-to-UART converter)
   - Trigger the accelerator and print classification results

### 7. Send Test Data via UART

Connect the **USB-to-UART converter** to your PC and to the PYNQ-Z2 (see wiring table above).

Configure `uart_tx.py` with your serial port and run:

```bash
python uart_tx.py
```

The script reads `image_test_data.txt` (64 space-separated integers per line, one 8×8 image per line) and sends each line as raw binary bytes at **115200 baud**.

Key parameters in `uart_tx.py`:

| Variable | Default | Description |
|---|---|---|
| `FILE_TO_SEND` | `image_test_data.txt` | Input file with test images |
| `COM_PORT` | `COM3` | Serial port (e.g., `/dev/ttyUSB0` on Linux) |
| `BAUD_RATE` | `115200` | Must match the Verilog UART RX |
| `LINE_DELAY` | `0.005` | Delay between images (seconds) |

On Linux, the port will be something like `/dev/ttyUSB0` or `/dev/ttyACM0`. Check with `ls /dev/ttyU*` or `ls /dev/ttyA*`.

### 8. Build and Run the Firmware (Zynq PS)

The firmware in `firmware/src/` runs on the ARM Cortex-A9 (PS side) and orchestrates the accelerator:

1. Opens Vitis 2024.2.
2. Create a platform from the XSA exported by Vivado.
3. Create an application project from `firmware/src/`.
4. Build.
5. Program the board.

The firmware (`main.c`) loops:
- Triggers the NN accelerator
- Waits for completion (polling status register)
- Reads the decision (UP/DOWN/LEFT/RIGHT)
- Prints the result over UART (PS UART, e.g., USB-UART on the PYNQ board)
- Measures and prints execution time

---

## Interface Summary

### Accelerator (HLS IP)

| Port | Direction | Width | Description |
|---|---|---|---|
| `input_layer_TDATA` | In | 64 | AXI Stream — 8 × 8-bit pixels packed as 64-bit word |
| `input_layer_TVALID` | In | 1 | Valid signal for input |
| `input_layer_TREADY` | Out | 1 | Ready signal for input |
| `layer9_out_TDATA` | Out | 128 | AXI Stream — 4 × 32-bit float logits |
| `layer9_out_TVALID` | Out | 1 | Valid signal for output |
| `layer9_out_TREADY` | In | 1 | Ready signal for output |

### UART RX (Verilog)

| Parameter | Value |
|---|---|
| Baud rate | 115200 |
| Data bits | 8 |
| Stop bits | 1 |
| Parity | None |
| Clock | 100 MHz (derived from system clock) |

### Classification Output

| Decision | Code | Meaning |
|---|---|---|
| `NN_UP` | 0x0 | Move forward |
| `NN_LEFT` | 0x1 | Turn left |
| `NN_DOWN` | 0x2 | Turn around |
| `NN_RIGHT` | 0x3 | Turn right |

