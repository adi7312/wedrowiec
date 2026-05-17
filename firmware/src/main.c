#include <stdio.h>
#include "uart/uart.h"
#include "hal/nn_accelerator.h"
#include "xil_printf.h"
#include "xil_io.h"

uint8_t frame_buffer[FRAME_SIZE];

int main() {
    if (Init_UART() != XST_SUCCESS) return 1;
    if (NN_Init() != XST_SUCCESS) return 1;

    xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");

    while (1) {
        UART_ReceiveFrame(frame_buffer);
        xil_printf("Frame received, triggering accelerator...\r\n");

        NN_TriggerAccelerator();

        while (Xil_In32(NN_STATUS_REG) & NN_STATUS_BUSY);

        uint32_t decision = NN_GetDecision();
        xil_printf("Decision: 0x%08lX\r\n", decision);
    }

    return 0;
}