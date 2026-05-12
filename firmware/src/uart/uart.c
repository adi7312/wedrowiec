#include "uart.h"
#include "xparameters.h"

static XUartPs Uart_Ps;

int Init_UART() {
    XUartPs_Config *Config = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (NULL == Config) return XST_FAILURE;

    int Status = XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    XUartPs_SetBaudRate(&Uart_Ps, 115200);
    return XST_SUCCESS;
}

void UART_ReceiveFrame(uint8_t* buffer) {
    uint32_t received = 0;
    while (received < FRAME_SIZE) {
        received += XUartPs_Recv(&Uart_Ps, &buffer[received], FRAME_SIZE - received);
    }
}

void UART_Log(const char* msg) {
    XUartPs_Send(&Uart_Ps, (uint8_t*)msg, strlen(msg));
}