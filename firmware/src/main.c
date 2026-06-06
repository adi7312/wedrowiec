#include <stdio.h>
#include "uart/uart.h"
#include "hal/nn_accelerator.h"
#include "xil_printf.h"
#include "xil_io.h"
#include <sleep.h>


int main() {
    if (Init_UART() != XST_SUCCESS) return 1;

    xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");
    volatile wedrowiec_t* wedrowiec = (wedrowiec_t*)NN_BASE_ADDR;
    msleep(1000);
    while (1) {

        NN_TriggerAccelerator(wedrowiec);
        
        while (!((wedrowiec->status) & 0x2)){
            ;;
        }

        uint32_t decision = NN_GetDecision(wedrowiec);
        xil_printf("Decision: %d\r\n", decision);
    }

    return 0;
}