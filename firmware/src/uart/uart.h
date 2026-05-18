#ifndef UART_COMM_H
#define UART_COMM_H

#include <stdint.h>
#include "xuartps.h"

/******************************************************************************
 * UART Communication Module
 *
 * Wraps the Xilinx UARTPS driver for reliable frame reception and debug
 * logging over the USB-UART port (baud rate 115200).
 *
 * The module operates the UART in polled mode — each call to
 * UART_ReceiveFrame blocks until FRAME_SIZE bytes have been collected.
 ******************************************************************************/

/* UARTPS device ID as defined in xparameters.h */
#define UART_DEVICE_ID      0

/* Size of a single frame in bytes (8x8 pixel matrix) */
#define FRAME_SIZE          64

/******************************************************************************
 * Public API
 ******************************************************************************/

/**
 * Init_UART() - Initialise the UART peripheral.
 *
 * Looks up the UARTPS configuration by device ID and performs the
 * full initialisation sequence (clock, pins, baud rate).
 *
 * @return  XST_SUCCESS  on successful initialisation,
 *          XST_FAILURE  if the configuration lookup or initialisation fails.
 */
int Init_UART(void);

/**
 * UART_ReceiveFrame() - Blocking receive of a single frame.
 *
 * Receives exactly FRAME_SIZE bytes from the UART into the provided
 * buffer. The function will not return until all bytes are collected.
 *
 * @param buffer  Pointer to a buffer of at least FRAME_SIZE bytes.
 */
void UART_ReceiveFrame(uint8_t *buffer);

/**
 * UART_Log() - Transmit a null-terminated string over UART.
 *
 * Sends the string character-by-character via the UARTPS driver.
 * Intended for debug logging to the host terminal.
 *
 * @param msg  Null-terminated string to transmit.
 */
void UART_Log(const char *msg);

#endif /* UART_COMM_H */