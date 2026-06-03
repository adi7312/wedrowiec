#include "nn_accelerator.h"
#include <stdint.h>


void NN_TriggerAccelerator(volatile wedrowiec_t* wedrowiec)
{
    wedrowiec->ctrl = 1;
}

uint32_t NN_GetDecision(volatile wedrowiec_t* wedrowiec)
{
    int32_t max = 0;
    int res = 0;
    for (int i = 0; i < 4; i++){
        int32_t tmp = wedrowiec->wedrowiec_result[i];
        tmp = (tmp << 15) >> 15;
        if (tmp > max) {
            max = tmp;
            res = i;
        }
    }
    return res;
}
