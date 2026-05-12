#include "xparameters.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "sleep.h"

#define UART_DEVICE_ID      0 
#define FRAME_SIZE          64

XUartPs Uart_Ps;		

uint8_t rx_buffer[FRAME_SIZE];

int Init_UART() {
    int Status;
    XUartPs_Config *Config;

    Config = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (NULL == Config) {
        return XST_FAILURE;
    }

    Status = XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    XUartPs_SetBaudRate(&Uart_Ps, 115200);
    return XST_SUCCESS;
}

int main(void) {
    int Status;
    int received_bytes;

    Status = Init_UART();
    if (Status != XST_SUCCESS) {
        xil_printf("Failed to init UART connection!\r\n");
        return XST_FAILURE;
    }

    xil_printf("=== System Wedrowiec gotowy ===\r\n");
    xil_printf("Awaiting for 64 byte frame...\r\n");

    while (1) {
        received_bytes = 0;

        while (received_bytes < FRAME_SIZE) {
            received_bytes += XUartPs_Recv(&Uart_Ps, 
                                           &rx_buffer[received_bytes], 
                                           FRAME_SIZE - received_bytes);
        }

        xil_printf("\r\nReceived frame (64 byte)!\r\n");
        xil_printf("First pixel: %d, Last pixel: %d\r\n", rx_buffer[0], rx_buffer[63]);
        
        XUartPs_Send(&Uart_Ps, rx_buffer, FRAME_SIZE);
        
        xil_printf("\r\nAwaiting next frame...\r\n");
    }

    return XST_SUCCESS;
}