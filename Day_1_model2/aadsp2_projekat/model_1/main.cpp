
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "common.h"

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

double x_history0[2];
double y_history0[2];
double x_history1[2];
double y_history1[2];
double x_history2[2];
double y_history2[2];
double x_history3[2];
double y_history3[2];
double x_history4[2];
double y_history4[2];
double x_history5[2];
double y_history5[2];

// pomocni nizovi
double temp_nizL11k[BLOCK_SIZE];
double temp_nizR11k[BLOCK_SIZE];
double temp_nizL5k[BLOCK_SIZE];
double temp_nizR5k[BLOCK_SIZE];
double temp_nizL3k[BLOCK_SIZE];
double temp_nizR3k[BLOCK_SIZE];

double coefficients_11k_lpf[6] = { 0.29185073257004568000, 0.58370146514009136000, 0.29185073257004568000, 1.00000000000000000000, -0.00417302338598968350, 0.17157595366680914000}; 
double coefficients_5k_hpf[6] = { 0.73855434570188305000, -1.47710869140376610000, 0.73855434570188305000, 1.00000000000000000000, -1.40750534395471780000, 0.54664949370997029000}; 
double coefficients_3k_hpf[6] = { 0.60074547832695790000, -1.20149095665391580000, 0.60074547832695790000, 1.00000000000000000000, -1.03517120979351820000, 0.36781068948958456000};

double temp_left[BLOCK_SIZE];
double temp_right[BLOCK_SIZE];

double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history) {
	double output = 0;

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
	//pokazivaci na izlazne nizove
	double* SBPtr0 = sampleBuffer[0];
	double* SBPtr1 = sampleBuffer[1];
	double* SBPtr2 = sampleBuffer[2];
	double* SBPtr3 = sampleBuffer[3];
	double* SBPtr4 = sampleBuffer[4];

	//pokazivaci na pomocne nizove
	double* tempLptr = temp_left;
	double* tempRptr = temp_right;
	double* temp_nizL11k_ptr = temp_nizL11k;
	double* temp_nizR11k_ptr = temp_nizR11k;
	double* temp_nizL5K_ptr = temp_nizL5k;
	double* temp_nizR5k_ptr = temp_nizR5k;
	double* temp_nizL3k_ptr = temp_nizL3k;
	double* temp_nizR3k_ptr = temp_nizR3k;

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
		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *temp_nizL3k_ptr++;
			*SBPtr1++ = *temp_nizR3k_ptr++;
			*SBPtr2++ = *temp_nizL11k_ptr++;
			*SBPtr3++ = *temp_nizR11k_ptr++;
			*SBPtr4++ = *temp_nizL5K_ptr++;
		}	
	} else if (MODE == 220)
	{
		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *temp_nizL3k_ptr++;
			*SBPtr1++ = *temp_nizR3k_ptr++;
			*SBPtr2++ = *temp_nizL11k_ptr++;
			*SBPtr3++ = *temp_nizR11k_ptr++;
		}
	} else {
		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			*SBPtr0++ = *tempLptr++;
			*SBPtr1++ = *tempRptr++;
		}
	}
	
	return;
}



int main(int argc, char* argv[])
{
	FILE *wav_in = NULL;
	FILE *wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;

	// Init channel buffers
	for (int i = 0; i < MAX_NUM_CHANNEL; i++)
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
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = MAX_NUM_CHANNEL; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign * outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);

	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (int i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}


			processing();

			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
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