#include "bgmv_config.h"
#include "bgmv_impl.cuh"

#if (__CUDA_ARCH__ >= 800)
FOR_BGMV_WIDE_NARROW(INST_BGMV_TWOSIDE, nv_bfloat16, float, nv_half)
#endif
