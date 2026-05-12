#ifndef UART_COMM_H
#define UART_COMM_H

#include <stdint.h>
#include "xuartps.h"

#define UART_DEVICE_ID      0
#define FRAME_SIZE          64

int Init_UART();
void UART_ReceiveFrame(uint8_t* buffer);
void UART_Log(const char* msg);

#endif