#include "nn_accelerator.h"

int NN_Init(void)
{
    NN_Reset();

    uint32_t status = Xil_In32(NN_STATUS_REG);

    if (status == 0xFFFFFFFF) {
        return XST_FAILURE;
    }

    if (status & NN_STATUS_ERROR) {
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

void NN_SendFrame(uint8_t *frame_ptr)
{
    for (int i = 0; i < NN_FRAME_SIZE; i++) {
        Xil_Out8(NN_DATA_FIFO_ADDR, frame_ptr[i]);
    }

    Xil_Out32(NN_CONTROL_REG, NN_CTRL_START);
}

uint32_t NN_GetDecision(void)
{
    return Xil_In32(NN_RESULT_REG);
}

void NN_Reset(void)
{
    Xil_Out32(NN_CONTROL_REG, NN_CTRL_RESET);

    for (volatile int i = 0; i < 100; i++);

    Xil_Out32(NN_CONTROL_REG, 0);
}
