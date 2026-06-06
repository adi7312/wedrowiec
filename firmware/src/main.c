#include "hal/nn_accelerator.h"
#include "uart/uart.h"
#include "xil_io.h"
#include "xil_printf.h"
#include <sleep.h>
#include <stdio.h>

int main() {
  if (Init_UART() != XST_SUCCESS)
    return 1;

  xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");
  volatile wedrowiec_t *wedrowiec = (wedrowiec_t *)NN_BASE_ADDR;
  msleep(1000);
  while (1) {

    NN_TriggerAccelerator(wedrowiec);

    while (!((wedrowiec->status) & 0x2)) {;;}
    
    uint32_t decision = NN_GetDecision(wedrowiec);
    switch (decision) {
    case NN_UP: {
      xil_printf("Decision: MOVE FORWARD\r\n");
      break;
    }
    case NN_DOWN: {
      xil_printf("Decision: TURN AROUND\r\n");
      break;
    }
    case NN_LEFT: {
      xil_printf("Decision: TURN LEFT\r\n");
      break;
    }
    case NN_RIGHT: {
      xil_printf("Decision: TURN RIGHT\r\n");
      break;
    }
    }
  }

  return 0;
}