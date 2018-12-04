
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 5
int MODE;
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
double INITIAL_GAIN = 0;

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

double coefficients_11k_lpf[6] = { 0.29185073257004568000, 0.58370146514009136000, 0.29185073257004568000, 1.00000000000000000000, -0.00417302338598968350, 0.17157595366680914000 };
double coefficients_5k_hpf[6] = { 0.73855434570188305000, -1.47710869140376610000, 0.73855434570188305000, 1.00000000000000000000, -1.40750534395471780000, 0.54664949370997029000 };
double coefficients_3k_hpf[6] = { 0.60074547832695790000, -1.20149095665391580000, 0.60074547832695790000, 1.00000000000000000000, -1.03517120979351820000, 0.36781068948958456000 };

double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history) {
	double output = 0;

	output += coefficients[0] * input;        /* A0 * x(n)     */
	output += coefficients[1] * x_history[0]; /* A1 * x(n-1) */
	output += coefficients[2] * x_history[1]; /* A2 * x(n-2)   */
	output -= coefficients[4] * y_history[0]; /* B1 * y(n-1) */
	output -= coefficients[5] * y_history[1]; /* B2 * y(n-2)   */


	y_history[1] = y_history[0];    /* y(n-2) = y(n-1) */
	y_history[0] = output; /* y(n-1) = y(n)   */
	x_history[1] = x_history[0];  /* x(n-2) = x(n-1) */
	x_history[0] = input;          /* x(n-1) = x(n)   */

	return output;
}
void processing(double niz_L[], double niz_R[]) {
	// gain uradjen ovde
	for (int i = 0; i < BLOCK_SIZE; i++) {
		niz_L[i] = niz_L[i] * INITIAL_GAIN;
		niz_R[i] = niz_R[i] * INITIAL_GAIN;
	}
	// pomocni nizovi
	double temp_nizL11k[BLOCK_SIZE];
	double temp_nizR11k[BLOCK_SIZE];
	double temp_nizL5k[BLOCK_SIZE];
	double temp_nizR5k[BLOCK_SIZE];
	double temp_nizL3k[BLOCK_SIZE];
	double temp_nizR3k[BLOCK_SIZE];

	// Napravio lpf i hpf za L i R 
	for (int i = 0; i < BLOCK_SIZE; i++) {
		temp_nizL11k[i] = second_order_IIR(niz_L[i], coefficients_11k_lpf, x_history0, y_history0);
		temp_nizR11k[i] = second_order_IIR(niz_R[i], coefficients_11k_lpf, x_history1, y_history1);
		temp_nizL5k[i] = second_order_IIR(niz_L[i], coefficients_5k_hpf, x_history2, y_history2);
		temp_nizR5k[i] = second_order_IIR(niz_R[i], coefficients_5k_hpf, x_history3, y_history3);
	}

	// hpf nad prethodno lpf signalima
	for (int i = 0; i < BLOCK_SIZE; i++) {
		temp_nizL3k[i] = second_order_IIR(temp_nizL11k[i], coefficients_3k_hpf, x_history4, y_history4);
		temp_nizR3k[i] = second_order_IIR(temp_nizR11k[i], coefficients_3k_hpf, x_history5, y_history5);
	}
	// gain -4 i - 3.9 za temp_niz L i R 3k
	for (int i = 0; i < BLOCK_SIZE; i++) {
		temp_nizL3k[i] = temp_nizL3k[i] * 0.6309573444801932;
		temp_nizR3k[i] = temp_nizR3k[i] * 0.6382634861905486;
		temp_nizL5k[i] = temp_nizL5k[i] * 0.31622776601683794;
		temp_nizR5k[i] = temp_nizR5k[i] * 0.33496543915782767;
	}
	// sabiranje trazenih pomocnih nizova;
	for (int i = 0; i < BLOCK_SIZE; i++) {
		temp_nizL3k[i] += temp_nizL5k[i];
		temp_nizR3k[i] += temp_nizR5k[i];
	}
	// Ovde odma povezujem na Ls i Rs izlaze 
	if(MODE == 320){
		for (int i = 0; i < BLOCK_SIZE; i++) {
			sampleBuffer[0][i] = temp_nizL3k[i];
			sampleBuffer[1][i] = temp_nizR3k[i];
			sampleBuffer[2][i] = temp_nizL11k[i];
			sampleBuffer[3][i] = temp_nizR11k[i];
			sampleBuffer[4][i] = temp_nizL5k[i];
		}
	}
	else if (MODE == 220) {
		for (int i = 0; i < BLOCK_SIZE; i++) {
			sampleBuffer[0][i] = temp_nizL3k[i];
			sampleBuffer[1][i] = temp_nizR3k[i];
			sampleBuffer[2][i] = temp_nizL11k[i];
			sampleBuffer[3][i] = temp_nizR11k[i];
		}
	}
	else {
		for (int i = 0; i < BLOCK_SIZE; i++) {
			sampleBuffer[0][i] = temp_nizL3k[i];
			sampleBuffer[1][i] = temp_nizR3k[i];
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


			double temp_left[BLOCK_SIZE];
			double temp_right[BLOCK_SIZE];

			for (int j = 0; j < BLOCK_SIZE; j++) {
				temp_left[j] = sampleBuffer[0][j];
				temp_right[j] = sampleBuffer[1][j];
			}

			processing(temp_left, temp_right);


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

