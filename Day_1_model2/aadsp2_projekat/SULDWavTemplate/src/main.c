
#include <stdlib.h>
#include <string.h>
#include "common.h"
#include <dsplib\wavefile.h>
#include <dsplib\timers.h>

DSPfract INITIAL_GAIN = FRACT_NUM(0.0);
DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

DSPfract x_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history0[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract x_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history1[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract x_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history2[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract x_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history3[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract x_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history4[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract x_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
DSPfract y_history5[] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

// pomocni nizovi
DSPfract temp_nizL11k[BLOCK_SIZE];
DSPfract temp_nizR11k[BLOCK_SIZE];
DSPfract temp_nizL5k[BLOCK_SIZE];
DSPfract temp_nizR5k[BLOCK_SIZE];
DSPfract temp_nizL3k[BLOCK_SIZE];
DSPfract temp_nizR3k[BLOCK_SIZE];

DSPfract coefficients_11k_lpf[6] = { FRACT_NUM(0.29185073257004568000), FRACT_NUM(0.29185073257000000000), FRACT_NUM(0.29185073257004568000),
									 FRACT_NUM(0.50000000000000000000), FRACT_NUM(-0.0020865116900000000), FRACT_NUM(0.17157595366680914000)};
DSPfract coefficients_5k_hpf[6] = { FRACT_NUM(0.73855434570188305000), FRACT_NUM(-0.73855434570000000000), FRACT_NUM(0.73855434570188305000),
									FRACT_NUM(0.50000000000000000000), FRACT_NUM(-0.70375267197000000000), FRACT_NUM(0.54664949370997029000)};
DSPfract coefficients_3k_hpf[6] = { FRACT_NUM(0.60074547832695790000), FRACT_NUM(-0.60074547832000000000), FRACT_NUM(0.60074547832695790000),
									FRACT_NUM(0.50000000000000000000), FRACT_NUM(-0.51758560489000000000), FRACT_NUM(0.36781068948958456000)};

DSPfract temp_left[BLOCK_SIZE];
DSPfract temp_right[BLOCK_SIZE];

DSPaccum second_order_IIR(DSPfract input, DSPfract* coefficients, DSPfract* x_history, DSPfract* y_history) {
	DSPaccum output = 0;

	output += *coefficients * input;        /* A0 * x(n)     */
	output += (*(coefficients + 1) * *x_history) << 1; /* A1 * x(n-1)  * 2 jer su coeff[1] podeljeni sa 2*/
	output += *(coefficients + 2) * *(x_history + 1); /* A2 * x(n-2)   */
	output -= (*(coefficients + 4) * *y_history) << 1; /* B1 * y(n-1) */
	output -= *(coefficients + 5) * *(y_history + 1); /* B2 * y(n-2)   */

	*(y_history + 1) = *y_history;    /* y(n-2) = y(n-1) */
	*y_history = output; /* y(n-1) = y(n)   */
	*(x_history + 1) = *x_history;  /* x(n-2) = x(n-1) */
	*x_history = input;          /* x(n-1) = x(n)   */

	return output;
}

void processing() {
	//pokazivaci na nizove
	DSPfract* SBPtr0 = sampleBuffer[0];
	DSPfract* SBPtr1 = sampleBuffer[1];
	DSPfract* SBPtr2 = sampleBuffer[2];
	DSPfract* SBPtr3 = sampleBuffer[3];
	DSPfract* SBPtr4 = sampleBuffer[4];

	//pokazivaci na pomocne nizove
	DSPfract* tempLptr = temp_left;
	DSPfract* tempRptr = temp_right;
	DSPfract* temp_nizL11k_ptr = temp_nizL11k;
	DSPfract* temp_nizR11k_ptr = temp_nizR11k;
	DSPfract* temp_nizL5K_ptr = temp_nizL5k;
	DSPfract* temp_nizR5k_ptr = temp_nizR5k;
	DSPfract* temp_nizL3k_ptr = temp_nizL3k;
	DSPfract* temp_nizR3k_ptr = temp_nizR3k;


	// Napravio lpf i hpf za L i R
	for (DSPint i = 0; i < BLOCK_SIZE; i++)
	{
		*tempLptr = *SBPtr0++;
		*tempRptr = *SBPtr1++;
		*tempLptr = *tempLptr * INITIAL_GAIN;
		*tempRptr = *tempRptr * INITIAL_GAIN;
		*temp_nizL11k_ptr = second_order_IIR(*tempLptr, coefficients_11k_lpf, x_history0, y_history0);
		*temp_nizR11k_ptr = second_order_IIR(*tempRptr, coefficients_11k_lpf, x_history1, y_history1);
		*temp_nizL5K_ptr = second_order_IIR(*tempLptr, coefficients_5k_hpf, x_history2, y_history2);
		tempLptr++;
		*temp_nizL5K_ptr = *temp_nizL5K_ptr * FRACT_NUM(0.31622776601683794);
		*temp_nizR5k_ptr = second_order_IIR(*tempRptr, coefficients_5k_hpf, x_history3, y_history3);
		tempRptr++;
		*temp_nizR5k_ptr = *temp_nizR5k_ptr * FRACT_NUM(0.33496543915782767);
		*temp_nizL3k_ptr = second_order_IIR(*temp_nizL11k_ptr, coefficients_3k_hpf, x_history4, y_history4);
		temp_nizL11k_ptr++;
		*temp_nizL3k_ptr = *temp_nizL3k_ptr * FRACT_NUM(0.6309573444801932);
		*temp_nizR3k_ptr = second_order_IIR(*temp_nizR11k_ptr, coefficients_3k_hpf, x_history5, y_history5);
		temp_nizR11k_ptr++;
		*temp_nizR3k_ptr = *temp_nizR3k_ptr * FRACT_NUM(0.6382634861905486);
		*temp_nizL3k_ptr = *temp_nizL3k_ptr + *temp_nizL5K_ptr;
		temp_nizL3k_ptr++;
		temp_nizL5K_ptr++;
		*temp_nizR3k_ptr = *temp_nizR3k_ptr + *temp_nizR5k_ptr;
		temp_nizR3k_ptr++;
		temp_nizR5k_ptr++;
	}

	SBPtr0 = sampleBuffer[0];
	SBPtr1 = sampleBuffer[1];
	temp_nizL11k_ptr = temp_nizL11k;
	temp_nizR11k_ptr = temp_nizR11k;
	temp_nizL5K_ptr = temp_nizL5k;
	temp_nizR5k_ptr = temp_nizR5k;
	temp_nizL3k_ptr = temp_nizL3k;
	temp_nizR3k_ptr = temp_nizR3k;

	// Ovde odmah povezujem na Ls i Rs izlaze
	if (MODE == 320)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0 = *temp_nizL3k_ptr;
			*SBPtr1 = *temp_nizR3k_ptr;
			*SBPtr2 = *temp_nizL11k_ptr;
			*SBPtr3 = *temp_nizR11k_ptr;
			*SBPtr4 = *temp_nizL5K_ptr;
			SBPtr0++;
			SBPtr1++;
			SBPtr2++;
			SBPtr3++;
			SBPtr4++;
			temp_nizL3k_ptr++;
			temp_nizR3k_ptr++;
			temp_nizL11k_ptr++;
			temp_nizR11k_ptr++;
			temp_nizL5K_ptr++;
		}
	} else if (MODE == 220)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0 = *temp_nizL3k_ptr;
			*SBPtr1 = *temp_nizR3k_ptr;
			*SBPtr2 = *temp_nizL11k_ptr;
			*SBPtr3 = *temp_nizR11k_ptr;
			SBPtr0++;
			SBPtr1++;
			SBPtr2++;
			SBPtr3++;
			temp_nizL3k_ptr++;
			temp_nizR3k_ptr++;
			temp_nizL11k_ptr++;
			temp_nizR11k_ptr++;
		}
	} else {
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *tempLptr;
			*SBPtr1++ = *tempRptr;
			SBPtr0++;
			SBPtr1++;
			tempLptr++;
			tempRptr++;
		}
	}
	
	return;
}

int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,"C:\\Users\\student\\Desktop\\ra22-2015\\AADSP2_PROJEKAT\\Day_1_model2\\aadsp2_projekat\\TestStreams\\2ch_lvl_amt_48k.wav");
	wav_in = cl_wavread_open(WavInputName);
	if(wav_in == NULL)
    {
		//printf("Error: Could not open input wavefile.\n");
		return -1;
	}
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------

	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,"model3_output_speech_2ch_2.wav");
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, nChannels, sampleRate);
	if(!wav_out)
    {
        //printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;

		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			processing();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
