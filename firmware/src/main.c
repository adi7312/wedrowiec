#include "hal/nn_accelerator.h"
#include "uart/uart.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xiltimer.h"
#include <sleep.h>
#include <stdio.h>
#include <time.h>

int main() {
  if (Init_UART() != XST_SUCCESS) return 1;

  xil_printf("=== Firmware Wedrowiec V1.0 ===\r\n");
  volatile wedrowiec_t *wedrowiec = (wedrowiec_t *)NN_BASE_ADDR;
  msleep(1000);
  uint32_t id = 1u;
  while (1) {
    XTime start_time, end_time;

    NN_TriggerAccelerator(wedrowiec);

    XTime_GetTime(&start_time);
    while (!((wedrowiec->status) & 0x2)) {;;}
    XTime_GetTime(&end_time);

    uint32_t decision = NN_GetDecision(wedrowiec);

    switch (decision) {
    case NN_UP: {
      xil_printf("[%d] Decision: MOVE FORWARD\r\n", id);
      break;
    }
    case NN_DOWN: {
      xil_printf("[%d] Decision: TURN AROUND\r\n",id);
      break;
    }
    case NN_LEFT: {
      xil_printf("[%d] Decision: TURN LEFT\r\n",id);
      break;
    }
    case NN_RIGHT: {
      xil_printf("[%d] Decision: TURN RIGHT\r\n",id);
      break;
    }
    }

    XTime elapsed_ticks = end_time - start_time;

    uint32_t elapsed_us =
        (uint32_t)((elapsed_ticks * 1000000ULL) / COUNTS_PER_SECOND);

    uint32_t ms = elapsed_us / 1000;
    uint32_t fraction = elapsed_us % 1000;

    //xil_printf("Elapsed ticks: %u\r\n", (uint32_t)elapsed_ticks);
    xil_printf("Execution time: %u.%03u milliseconds\r\n", ms, fraction);
    id++;
  }

  return 0;
}