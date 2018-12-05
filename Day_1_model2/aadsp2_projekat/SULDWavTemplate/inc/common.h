#ifndef COMMON_H
#define COMMON_H
#include "stdfix_emu.h"
/* Basic constants */
/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 5
#define INPUT_GAIN 0.8912509381337456
int MODE;

/////////////////////////////////////////////////////////////////////////////////

/*DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;				/* DSP fixed-point fractional */
typedef long_accum DSPaccum;				/* DSP fixed-point fractional */


#endif
