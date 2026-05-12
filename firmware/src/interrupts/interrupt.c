#include "interrupt.h"
#include "xil_exception.h"

volatile uint8_t fpga_finished = 0;
static XScuGic IntcInstance;

void FpgaDone_ISR(void *CallbackRef) {
    fpga_finished = 1; // classification and voting finished
}

int Init_Interrupts() {
    XScuGic_Config *IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) return XST_FAILURE;

    int Status = XScuGic_CfgInitialize(&IntcInstance, IntcConfig, IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    Status = XScuGic_Connect(&IntcInstance, FPGA_INTR_ID, (Xil_ExceptionHandler)FpgaDone_ISR, NULL);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    XScuGic_Enable(&IntcInstance, FPGA_INTR_ID);
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &IntcInstance);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}