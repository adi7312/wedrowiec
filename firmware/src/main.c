#include <stdio.h>
#include "uart/uart.h"
#include "interrupts/interrupt.h"
#include "nn_accelerator/nn_accelerator.h"
#include "xil_printf.h"

uint8_t frame_buffer[FRAME_SIZE];

int main() {
    if (Init_UART() != XST_SUCCESS) return 1;
    if (NN_Init() != XST_SUCCESS) return 1;
    if (Init_Interrupts() != XST_SUCCESS) return 1;

    xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");

    while (1) {
        UART_ReceiveFrame(frame_buffer);
        xil_printf("Frame received, sending to FPGA...\r\n");

        NN_SendFrame(frame_buffer);

        while (!fpga_finished);

        fpga_finished = 0;

        uint32_t decision = NN_GetDecision();
        xil_printf("Decision: 0x%08lX\r\n", decision);
    }

    return 0;
}