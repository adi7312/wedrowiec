#include <stdio.h>
#include "uart/uart.h"
#include "interrupts/interrupt.h"
#include "xil_printf.h"

uint8_t frame_buffer[FRAME_SIZE];

int main() {
    if (Init_UART() != XST_SUCCESS) return 1;
    if (Init_Interrupts() != XST_SUCCESS) return 1;

    xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");

    while (1) {
        UART_ReceiveFrame(frame_buffer);
        xil_printf("Frame received, sending to processing unit...\r\n");

        // TODO: Next state: transfer data to FPGA
        // TODO: NN_SendToFifo(frame_buffer); 

        // Next state: wait
        while (!fpga_finished) {
            // TODO: Awaiting interrupt
        }
        fpga_finished = 0;

        // TODO: Next state: get decision,
        // TODO: uint32_t decyzja = NN_GetDecision();
        xil_printf("Processing unit ended its job.\r\n");
    }

    return 0;
}