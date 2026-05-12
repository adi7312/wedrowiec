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
        xil_printf("Blad inicjalizacji UART!\r\n");
        return XST_FAILURE;
    }

    xil_printf("=== System Wedrowiec gotowy ===\r\n");
    xil_printf("Oczekuje na ramke 64 bajtow...\r\n");

    while (1) {
        received_bytes = 0;

        while (received_bytes < FRAME_SIZE) {
            received_bytes += XUartPs_Recv(&Uart_Ps, 
                                           &rx_buffer[received_bytes], 
                                           FRAME_SIZE - received_bytes);
        }

        xil_printf("\r\nOdebrano pelna ramke (64 bajty)!\r\n");
        xil_printf("Pierwszy piksel: %d, Ostatni piksel: %d\r\n", rx_buffer[0], rx_buffer[63]);
        
        XUartPs_Send(&Uart_Ps, rx_buffer, FRAME_SIZE);
        
        xil_printf("\r\nCzekam na kolejna ramke...\r\n");
    }

    return XST_SUCCESS;
}