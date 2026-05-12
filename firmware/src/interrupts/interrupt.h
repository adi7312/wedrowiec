#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include "xscugic.h"


#define FPGA_INTR_ID        61  // interrupt ID from FPGA to CPU (IRQ_F2P[0])   
#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID

extern volatile uint8_t fpga_finished;

int Init_Interrupts();

#endif