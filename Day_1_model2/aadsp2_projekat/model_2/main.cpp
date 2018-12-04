
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "stdfix_emu.h"
#include "fixed_point_math.h"
#include "common.h"

DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

DSPfract x_history0[2];
DSPfract y_history0[2];
DSPfract x_history1[2];
DSPfract y_history1[2];
DSPfract x_history2[2];
DSPfract y_history2[2];
DSPfract x_history3[2];
DSPfract y_history3[2];
DSPfract x_history4[2];
DSPfract y_history4[2];
DSPfract x_history5[2];
DSPfract y_history5[2];

// pomocni nizovi
DSPfract temp_nizL11k[BLOCK_SIZE];
DSPfract temp_nizR11k[BLOCK_SIZE];
DSPfract temp_nizL5k[BLOCK_SIZE];
DSPfract temp_nizR5k[BLOCK_SIZE];
DSPfract temp_nizL3k[BLOCK_SIZE];
DSPfract temp_nizR3k[BLOCK_SIZE];

DSPfract coefficients_11k_lpf[6] = { 0.29185073257004568000, 0.58370146514009136000, 0.29185073257004568000, 1.00000000000000000000, -0.00417302338598968350, 0.17157595366680914000};
DSPfract coefficients_5k_hpf[6] = { 0.73855434570188305000, -1.47710869140376610000, 0.73855434570188305000, 1.00000000000000000000, -1.40750534395471780000, 0.54664949370997029000};
DSPfract coefficients_3k_hpf[6] = { 0.60074547832695790000, -1.20149095665391580000, 0.60074547832695790000, 1.00000000000000000000, -1.03517120979351820000, 0.36781068948958456000};

DSPfract temp_left[BLOCK_SIZE];
DSPfract temp_right[BLOCK_SIZE];

DSPfract second_order_IIR(DSPfract input, DSPfract* coefficients, DSPfract* x_history, DSPfract* y_history) {
	DSPfract output = 0;

	output += *coefficients * input;        /* A0 * x(n)     */
	output += *(coefficients + 1) * *x_history; /* A1 * x(n-1) */
	output += *(coefficients + 2) * *(x_history + 1); /* A2 * x(n-2)   */
	output -= *(coefficients + 4) * *y_history; /* B1 * y(n-1) */
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
	for (int i = 0; i < BLOCK_SIZE; i++)
	{
		*tempLptr = *SBPtr0++;
		*tempRptr = *SBPtr1++;
		*tempLptr = *tempLptr * INPUT_GAIN;
		*tempRptr = *tempRptr * INPUT_GAIN;
		*temp_nizL11k_ptr = second_order_IIR(*tempLptr, coefficients_11k_lpf, x_history0, y_history0);
		*temp_nizR11k_ptr = second_order_IIR(*tempRptr, coefficients_11k_lpf, x_history1, y_history1);
		*temp_nizL5K_ptr = second_order_IIR(*tempLptr++, coefficients_5k_hpf, x_history2, y_history2) * 0.31622776601683794;
		*temp_nizR5k_ptr = second_order_IIR(*tempRptr++, coefficients_5k_hpf, x_history3, y_history3) * 0.33496543915782767;
		*temp_nizL3k_ptr = second_order_IIR(*temp_nizL11k_ptr++, coefficients_3k_hpf, x_history4, y_history4) * 0.6309573444801932;
		*temp_nizR3k_ptr = second_order_IIR(*temp_nizR11k_ptr++, coefficients_3k_hpf, x_history5, y_history5) * 0.6382634861905486;
		*temp_nizL3k_ptr++ += *temp_nizL5K_ptr++;
		*temp_nizR3k_ptr++ += *temp_nizR5k_ptr++;
	}

	SBPtr0 = sampleBuffer[0];
	SBPtr1 = sampleBuffer[1];
	temp_nizL11k_ptr = temp_nizL11k;
	temp_nizR11k_ptr = temp_nizR11k;
	temp_nizL5K_ptr = temp_nizL5k;
	temp_nizR5k_ptr = temp_nizR5k;
	temp_nizL3k_ptr = temp_nizL3k;
	temp_nizR3k_ptr = temp_nizR3k;
	
	// Ovde odma povezujem na Ls i Rs izlaze 
	if (MODE == 320)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *temp_nizL3k_ptr++;
			*SBPtr1++ = *temp_nizR3k_ptr++;
			*SBPtr2++ = *temp_nizL11k_ptr++;
			*SBPtr3++ = *temp_nizR11k_ptr++;
			*SBPtr4++ = *temp_nizL5K_ptr++;
		}	
	} else if (MODE == 220)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *temp_nizL3k_ptr++;
			*SBPtr1++ = *temp_nizR3k_ptr++;
			*SBPtr2++ = *temp_nizL11k_ptr++;
			*SBPtr3++ = *temp_nizR11k_ptr++;
		}
	} else {
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *tempLptr++;
			*SBPtr1++ = *tempRptr++;
		}
	}
	
	return;
}



DSPint main(DSPint argc, char* argv[])
{
	FILE *wav_in = NULL;
	FILE *wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;

	// Init channel buffers
	for (DSPint i = 0; i < MAX_NUM_CHANNEL; i++)
	{
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);
	}
	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	MODE = atoi(argv[3]);
	INITIAL_GAIN = atof(argv[4]);
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = MAX_NUM_CHANNEL; // change number of channels

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign * outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);

	// Processing loop
	//-------------------------------------------------	
	{
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (DSPint i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}


			processing();

			for (DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j] * SAMPLE_SCALE;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}