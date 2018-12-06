	.public _INPUT_GAIN
	.public _MODE
	.extern ___TIMER0_COUNT
	.extern ___TIMER1_COUNT
	.extern ___TIMER1_ENABLE
	.public _coefficients_11k_lpf
	.public _coefficients_3k_hpf
	.public _coefficients_5k_hpf
	.public _sampleBuffer
	.public _temp_left
	.public _temp_nizL11k
	.public _temp_nizL3k
	.public _temp_nizL5k
	.public _temp_nizR11k
	.public _temp_nizR3k
	.public _temp_nizR5k
	.public _temp_right
	.public _x_history0
	.public _x_history1
	.public _x_history2
	.public _x_history3
	.public _x_history4
	.public _x_history5
	.public _y_history0
	.public _y_history1
	.public _y_history2
	.public _y_history3
	.public _y_history4
	.public _y_history5
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.public _processing
	.public _second_order_IIR
	.extern _strcpy
	.extern __div
	.xdata_ovly
_INPUT_GAIN
	.dw  (0x721482c0)
	.xdata_ovly
_MODE
	.dw  (0x140)
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x287a26c5)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x2ae025c3)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0x50c335d4)
	.xdata_ovly
__extractedConst_3_1
	.dw  (0x51b29e30)
	.xdata_ovly
_coefficients_11k_lpf
	.dw  (0x255b5d64)
	.dw  (0x255b5d64)
	.dw  (0x255b5d64)
	.dw  (0x40000000)
	.dw  (0xffbba112)
	.dw  (0x15f6336b)
	.xdata_ovly
_coefficients_3k_hpf
	.dw  (0x4ce53a53)
	.dw  (0xb31ac5ad)
	.dw  (0x4ce53a53)
	.dw  (0x40000000)
	.dw  (0xbdbfc141)
	.dw  (0x2f146bb1)
	.xdata_ovly
_coefficients_5k_hpf
	.dw  (0x5e88f2e5)
	.dw  (0xa1770d1b)
	.dw  (0x5e88f2e5)
	.dw  (0x40000000)
	.dw  (0xa5eb6eb5)
	.dw  (0x45f89c51)
	.xdata_ovly
_sampleBuffer
	.bss (0x50)
	.xdata_ovly
_temp_left
	.bss (0x10)
	.xdata_ovly
_temp_nizL11k
	.bss (0x10)
	.xdata_ovly
_temp_nizL3k
	.bss (0x10)
	.xdata_ovly
_temp_nizL5k
	.bss (0x10)
	.xdata_ovly
_temp_nizR11k
	.bss (0x10)
	.xdata_ovly
_temp_nizR3k
	.bss (0x10)
	.xdata_ovly
_temp_nizR5k
	.bss (0x10)
	.xdata_ovly
_temp_right
	.bss (0x10)
	.xdata_ovly
_x_history0
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history1
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history2
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history3
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history4
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_x_history5
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history0
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history1
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history2
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history3
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history4
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_y_history5
	.dw  (0x0)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 175 | 
	i7 += 1			# LN: 175 | 
	i7 = i7 + (0x20e)			# LN: 175 | 
	i1 = i7 - (0x1)			# LN: 175 | 
	xmem[i1] = a0h			# LN: 175 | 
	i1 = i7 - (0x2)			# LN: 175 | 
	xmem[i1] = i0			# LN: 175 | 
cline_175_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 190 | 
	a0 = 0			# LN: 190 | 
	xmem[i0] = a0h			# LN: 190 | 
	do (0x5), label_end_97			# LN: 190 | 
cline_190_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 193 | 
	a0 = 0			# LN: 193 | 
	xmem[i0] = a0h			# LN: 193 | 
	do (0x10), label_end_96			# LN: 193 | 
cline_193_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 195 | 
	a0 = xmem[i0]; a1 = 0			# LN: 195, 195 | 
	a0 = a0 << 4			# LN: 195 | 
	i0 = a0			# LN: 195 | 
	i1 = i7 - (0x4)			# LN: 195 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 195 | 
	a0 = xmem[i1]			# LN: 195 | 
	b0 = i0			# LN: 195 | 
	a0 = a0 + b0			# LN: 195 | 
	AnyReg(i0, a0h)			# LN: 195 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 195 | 
cline_195_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 193 | 
	a0 = xmem[i0]			# LN: 193 | 
	uhalfword(a1) = (0x1)			# LN: 193 | 
	a0 = a0 + a1			# LN: 193 | 
	i0 = i7 - (0x4)			# LN: 193 | 
label_end_96:			# LN: 193 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 193 | 
cline_193_1:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 190 | 
	a0 = xmem[i0]			# LN: 190 | 
	uhalfword(a1) = (0x1)			# LN: 190 | 
	a0 = a0 + a1			# LN: 190 | 
	i0 = i7 - (0x3)			# LN: 190 | 
label_end_97:			# LN: 190 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 190 | 
cline_190_1:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 199 | 
	a0 = 0			# LN: 199 | 
	xmem[i0] = a0h			# LN: 199 | 
	i0 = (0) + (_temp_nizR3k + 0)			# LN: 199 | 
	do (0x10), label_end_98			# LN: 199 | 
cline_199_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 201 | 
	a0 = xmem[i1]; a1 = 0			# LN: 201, 201 | 
	i1 = a0			# LN: 201 | 
	nop #empty cycle
	i1 = i1 + (_temp_left + 0)			# LN: 201 | 
	xmem[i1] = a1h			# LN: 201 | 
cline_201_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 202 | 
	a0 = xmem[i1]; a1 = 0			# LN: 202, 202 | 
	i1 = a0			# LN: 202 | 
	nop #empty cycle
	i1 = i1 + (_temp_right + 0)			# LN: 202 | 
	xmem[i1] = a1h			# LN: 202 | 
cline_202_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 203 | 
	a0 = xmem[i1]; a1 = 0			# LN: 203, 203 | 
	i1 = a0			# LN: 203 | 
	nop #empty cycle
	i1 = i1 + (_temp_nizL11k + 0)			# LN: 203 | 
	xmem[i1] = a1h			# LN: 203 | 
cline_203_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 204 | 
	a0 = xmem[i1]; a1 = 0			# LN: 204, 204 | 
	i1 = a0			# LN: 204 | 
	nop #empty cycle
	i1 = i1 + (_temp_nizR11k + 0)			# LN: 204 | 
	xmem[i1] = a1h			# LN: 204 | 
cline_204_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 205 | 
	a0 = xmem[i1]; a1 = 0			# LN: 205, 205 | 
	i1 = a0			# LN: 205 | 
	nop #empty cycle
	i1 = i1 + (_temp_nizL5k + 0)			# LN: 205 | 
	xmem[i1] = a1h			# LN: 205 | 
cline_205_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 206 | 
	a0 = xmem[i1]; a1 = 0			# LN: 206, 206 | 
	i1 = a0			# LN: 206 | 
	nop #empty cycle
	i1 = i1 + (_temp_nizR5k + 0)			# LN: 206 | 
	xmem[i1] = a1h			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 207 | 
	a0 = xmem[i1]; a1 = 0			# LN: 207, 207 | 
	i1 = a0			# LN: 207 | 
	nop #empty cycle
	i1 = i1 + (_temp_nizL3k + 0)			# LN: 207 | 
	xmem[i1] = a1h			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 208 | 
	xmem[i0] = a0h			# LN: 208 | 
cline_208_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i1 = i7 - (0x3)			# LN: 199 | 
	a0 = xmem[i1]			# LN: 199 | 
	uhalfword(a1) = (0x1)			# LN: 199 | 
	i0 += 1; a0 = a0 + a1			# LN: 199, 199 | 
	i1 = i7 - (0x3)			# LN: 199 | 
label_end_98:			# LN: 199 | CYCLE: 5 | RULES: ()
	xmem[i1] = a0h			# LN: 199 | 
cline_199_1:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 213 | 
	i0 = xmem[i0]			# LN: 213 | 
	i1 = i7 - (260 - 0)			# LN: 213 | 
	i4 = xmem[i0]			# LN: 213 | 
	i0 = i1			# LN: 213 | 
	i1 = i4			# LN: 213 | 
	call (_strcpy)			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 214 | 
	call (_cl_wavread_open)			# LN: 214 | 
	AnyReg(i0, a0h)			# LN: 214 | 
	i1 = i7 - (0x105)			# LN: 214 | 
	xmem[i1] = i0			# LN: 214 | 
cline_214_0:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 215 | 
	a0 = xmem[i0]			# LN: 215 | 
	a0 & a0			# LN: 215 | 
	if (a != 0) jmp (else_2)			# LN: 215 | 
cline_215_0:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 218 | 
	jmp (__epilogue_200)			# LN: 218 | 
cline_218_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 224 | 
	uhalfword(a0) = (0x5)			# LN: 224 | 
	xmem[i0] = a0h			# LN: 224 | 
cline_224_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	call (_cl_wavread_bits_per_sample)			# LN: 225 | 
	i0 = i7 - (0x107)			# LN: 225 | 
	xmem[i0] = a0h			# LN: 225 | 
cline_225_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	call (_cl_wavread_frame_rate)			# LN: 226 | 
	i0 = i7 - (0x108)			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
cline_226_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	call (_cl_wavread_number_of_frames)			# LN: 227 | 
	i0 = i7 - (0x109)			# LN: 227 | 
	xmem[i0] = a0h			# LN: 227 | 
cline_227_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	i1 = i7 - (521 - 0)			# LN: 232 | 
	i0 += 1			# LN: 232 | 
	i4 = xmem[i0]			# LN: 232 | 
	i0 = i1			# LN: 232 | 
	i1 = i4			# LN: 232 | 
	call (_strcpy)			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 233 | 
	i1 = i7 - (0x107)			# LN: 233 | 
	a0 = xmem[i1]			# LN: 233 | 
	i1 = i7 - (0x106)			# LN: 233 | 
	a1 = xmem[i1]			# LN: 233 | 
	i1 = i7 - (0x108)			# LN: 233 | 
	b0 = xmem[i1]			# LN: 233 | 
	call (_cl_wavwrite_open)			# LN: 233 | 
	AnyReg(i0, a0h)			# LN: 233 | 
	i1 = i7 - (0x20a)			# LN: 233 | 
	xmem[i1] = i0			# LN: 233 | 
cline_233_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	a0 & a0			# LN: 234 | 
	if (a != 0) jmp (else_3)			# LN: 234 | 
cline_234_0:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 237 | 
	jmp (__epilogue_200)			# LN: 237 | 
cline_237_0:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 250 | 
	a0 = 0			# LN: 250 | 
	xmem[i0] = a0h			# LN: 250 | 
for_7:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 250 | 
	a0 = xmem[i0]			# LN: 250 | 
	uhalfword(a1) = (0x10)			# LN: 250 | 
	call (__div)			# LN: 250 | 
	i0 = i7 - (0x20b)			# LN: 250 | 
	a1 = xmem[i0]			# LN: 250 | 
	a1 - a0			# LN: 250 | 
	if (a >= 0) jmp (for_end_7)			# LN: 250 | 
cline_250_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 252 | 
	a0 = 0			# LN: 252 | 
	xmem[i0] = a0h			# LN: 252 | 
	do (0x10), label_end_99			# LN: 252 | 
cline_252_0:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
label_begin_99:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 254 | 
	a0 = 0			# LN: 254 | 
	xmem[i0] = a0h			# LN: 254 | 
for_9:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 254 | 
	a0 = xmem[i0]			# LN: 254 | 
	i0 = i7 - (0x106)			# LN: 254 | 
	a1 = xmem[i0]			# LN: 254 | 
	a0 - a1			# LN: 254 | 
	if (a >= 0) jmp (for_end_9)			# LN: 254 | 
cline_254_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	call (_cl_wavread_recvsample)			# LN: 256 | 
	i0 = i7 - (0x20e)			# LN: 256 | 
	xmem[i0] = a0h			# LN: 256 | 
cline_256_0:			/* LN: 257 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 257 | 
	a0 = xmem[i0]			# LN: 257 | 
	a0 = a0 << 4			# LN: 257 | 
	i0 = a0			# LN: 257 | 
	i1 = i7 - (0x20c)			# LN: 257 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 257 | 
	a0 = xmem[i1]			# LN: 257 | 
	a1 = i0			# LN: 257 | 
	a0 = a1 + a0			# LN: 257 | 
	AnyReg(i0, a0h)			# LN: 257 | 
	i1 = i7 - (0x20e)			# LN: 257 | 
	a0 = xmem[i1]			# LN: 257 | 
	xmem[i0] = a0h			# LN: 257 | 
cline_257_0:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 254 | 
	a0 = xmem[i0]			# LN: 254 | 
	uhalfword(a1) = (0x1)			# LN: 254 | 
	a0 = a0 + a1			# LN: 254 | 
	i0 = i7 - (0x20d)			# LN: 254 | 
	xmem[i0] = a0h			# LN: 254 | 
	jmp (for_9)			# LN: 254 | 
cline_254_1:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 252 | 
	a0 = xmem[i0]			# LN: 252 | 
	uhalfword(a1) = (0x1)			# LN: 252 | 
	a0 = a0 + a1			# LN: 252 | 
	i0 = i7 - (0x20c)			# LN: 252 | 
label_end_99:			# LN: 252 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 252 | 
cline_252_1:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 261 | 
cline_261_0:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 263 | 
	a0 = 0			# LN: 263 | 
	xmem[i0] = a0h			# LN: 263 | 
	do (0x10), label_end_100			# LN: 263 | 
cline_263_0:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
label_begin_100:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 265 | 
	a0 = 0			# LN: 265 | 
	xmem[i0] = a0h			# LN: 265 | 
for_11:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 265 | 
	a0 = xmem[i0]			# LN: 265 | 
	i0 = i7 - (0x106)			# LN: 265 | 
	a1 = xmem[i0]			# LN: 265 | 
	a0 - a1			# LN: 265 | 
	if (a >= 0) jmp (for_end_11)			# LN: 265 | 
cline_265_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 267 | 
	a0 = xmem[i0]			# LN: 267 | 
	a0 = a0 << 4			# LN: 267 | 
	i0 = a0			# LN: 267 | 
	i1 = i7 - (0x20c)			# LN: 267 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 267 | 
	a0 = xmem[i1]			# LN: 267 | 
	a1 = i0			# LN: 267 | 
	a0 = a1 + a0			# LN: 267 | 
	AnyReg(i0, a0h)			# LN: 267 | 
	i1 = i7 - (0x20e)			# LN: 267 | 
	a0 = xmem[i0]			# LN: 267 | 
	xmem[i1] = a0h			# LN: 267 | 
cline_267_0:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 268 | 
	i1 = i7 - (0x20e)			# LN: 268 | 
	a0 = xmem[i1]			# LN: 268 | 
	i0 = xmem[i0]			# LN: 268 | 
	call (_cl_wavwrite_sendsample)			# LN: 268 | 
cline_268_0:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 265 | 
	a0 = xmem[i0]			# LN: 265 | 
	uhalfword(a1) = (0x1)			# LN: 265 | 
	a0 = a0 + a1			# LN: 265 | 
	i0 = i7 - (0x20d)			# LN: 265 | 
	xmem[i0] = a0h			# LN: 265 | 
	jmp (for_11)			# LN: 265 | 
cline_265_1:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 270 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 263 | 
	a0 = xmem[i0]			# LN: 263 | 
	uhalfword(a1) = (0x1)			# LN: 263 | 
	a0 = a0 + a1			# LN: 263 | 
	i0 = i7 - (0x20c)			# LN: 263 | 
label_end_100:			# LN: 263 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 263 | 
cline_263_1:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 250 | 
	a0 = xmem[i0]			# LN: 250 | 
	uhalfword(a1) = (0x1)			# LN: 250 | 
	a0 = a0 + a1			# LN: 250 | 
	i0 = i7 - (0x20b)			# LN: 250 | 
	xmem[i0] = a0h			# LN: 250 | 
	jmp (for_7)			# LN: 250 | 
cline_250_1:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 276 | 
	i0 = xmem[i0]			# LN: 276 | 
	call (_cl_wavread_close)			# LN: 276 | 
cline_276_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 277 | 
	i0 = xmem[i0]			# LN: 277 | 
	call (_cl_wavwrite_close)			# LN: 277 | 
cline_277_0:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 280 | 
	jmp (__epilogue_200)			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
__epilogue_200:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 281 | 
	i7 -= 1			# LN: 281 | 
	ret			# LN: 281 | 



_processing:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 61 | 
	i7 += 1			# LN: 61 | 
	i7 = i7 + (0x11)			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 63 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 63 | 
	xmem[i0] = a0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 64 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 64 | 
	xmem[i0] = a0			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 65 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 65 | 
	xmem[i0] = a0			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 66 | 
	uhalfword(a0) = (_sampleBuffer + 48)			# LN: 66 | 
	xmem[i0] = a0			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 67 | 
	uhalfword(a0) = (_sampleBuffer + 64)			# LN: 67 | 
	xmem[i0] = a0			# LN: 67 | 
cline_67_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 70 | 
	uhalfword(a0) = (_temp_left + 0)			# LN: 70 | 
	xmem[i0] = a0			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 71 | 
	uhalfword(a0) = (_temp_right + 0)			# LN: 71 | 
	xmem[i0] = a0			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 72 | 
	uhalfword(a0) = (_temp_nizL11k + 0)			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 73 | 
	uhalfword(a0) = (_temp_nizR11k + 0)			# LN: 73 | 
	xmem[i0] = a0			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 74 | 
	uhalfword(a0) = (_temp_nizL5k + 0)			# LN: 74 | 
	xmem[i0] = a0			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 75 | 
	uhalfword(a0) = (_temp_nizR5k + 0)			# LN: 75 | 
	xmem[i0] = a0			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 76 | 
	uhalfword(a0) = (_temp_nizL3k + 0)			# LN: 76 | 
	xmem[i0] = a0			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 77 | 
	uhalfword(a0) = (_temp_nizR3k + 0)			# LN: 77 | 
	xmem[i0] = a0			# LN: 77 | 
cline_77_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	do (0x10), label_end_92			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	i1 = i7 - (0x6)			# LN: 84 | 
	i1 = xmem[i1]			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	xmem[i1] = a0h			# LN: 84 | 
	i0 = i7 - (0x1)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	i1 = i7 - (0x1)			# LN: 84 | 
	i0 += 1			# LN: 84 | 
	xmem[i1] = i0			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	i1 = i7 - (0x7)			# LN: 85 | 
	i1 = xmem[i1]			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	xmem[i1] = a0h			# LN: 85 | 
	i0 = i7 - (0x2)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	i1 = i7 - (0x2)			# LN: 85 | 
	i0 += 1			# LN: 85 | 
	xmem[i1] = i0			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	x0 = xmem[_INPUT_GAIN + 0]			# LN: 86 | 
	x1 = xmem[i0]			# LN: 86 | 
	i0 = i7 - (0x6)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	a0 = x1 * x0			# LN: 86 | 
	xmem[i0] = a0			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	x0 = xmem[_INPUT_GAIN + 0]			# LN: 87 | 
	x1 = xmem[i0]			# LN: 87 | 
	i0 = i7 - (0x7)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	a0 = x1 * x0			# LN: 87 | 
	xmem[i0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	i1 = (0) + (_coefficients_11k_lpf)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	i4 = (0) + (_x_history0)			# LN: 88 | 
	i5 = (0) + (_y_history0)			# LN: 88 | 
	i0 = i1			# LN: 88 | 
	i1 = i4			# LN: 88 | 
	i4 = i5			# LN: 88 | 
	call (_second_order_IIR)			# LN: 88 | 
	i0 = i7 - (0x8)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	i1 = (0) + (_coefficients_11k_lpf)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	i4 = (0) + (_x_history1)			# LN: 89 | 
	i5 = (0) + (_y_history1)			# LN: 89 | 
	i0 = i1			# LN: 89 | 
	i1 = i4			# LN: 89 | 
	i4 = i5			# LN: 89 | 
	call (_second_order_IIR)			# LN: 89 | 
	i0 = i7 - (0x9)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	i1 = (0) + (_coefficients_5k_hpf)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	i4 = (0) + (_x_history2)			# LN: 90 | 
	i5 = (0) + (_y_history2)			# LN: 90 | 
	i0 = i1			# LN: 90 | 
	i1 = i4			# LN: 90 | 
	i4 = i5			# LN: 90 | 
	call (_second_order_IIR)			# LN: 90 | 
	i0 = i7 - (0xa)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 90 | 
cline_90_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0x6)			# LN: 91 | 
	i0 += 1			# LN: 91 | 
	xmem[i1] = i0			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 92 | 
	i0 = xmem[i0]			# LN: 92 | 
	x0 = xmem[__extractedConst_0_1 + 0]			# LN: 92 | 
	x1 = xmem[i0]			# LN: 92 | 
	i0 = i7 - (0xa)			# LN: 92 | 
	i0 = xmem[i0]			# LN: 92 | 
	a0 = x1 * x0			# LN: 92 | 
	xmem[i0] = a0			# LN: 92 | 
cline_92_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	i1 = (0) + (_coefficients_5k_hpf)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	i4 = (0) + (_x_history3)			# LN: 93 | 
	i5 = (0) + (_y_history3)			# LN: 93 | 
	i0 = i1			# LN: 93 | 
	i1 = i4			# LN: 93 | 
	i4 = i5			# LN: 93 | 
	call (_second_order_IIR)			# LN: 93 | 
	i0 = i7 - (0xb)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	i1 = i7 - (0x7)			# LN: 94 | 
	i0 += 1			# LN: 94 | 
	xmem[i1] = i0			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	x0 = xmem[__extractedConst_1_1 + 0]			# LN: 95 | 
	x1 = xmem[i0]			# LN: 95 | 
	i0 = i7 - (0xb)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	a0 = x1 * x0			# LN: 95 | 
	xmem[i0] = a0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	i1 = (0) + (_coefficients_3k_hpf)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	i4 = (0) + (_x_history4)			# LN: 96 | 
	i5 = (0) + (_y_history4)			# LN: 96 | 
	i0 = i1			# LN: 96 | 
	i1 = i4			# LN: 96 | 
	i4 = i5			# LN: 96 | 
	call (_second_order_IIR)			# LN: 96 | 
	i0 = i7 - (0xc)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = i7 - (0x8)			# LN: 97 | 
	i0 += 1			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	x0 = xmem[__extractedConst_2_1 + 0]			# LN: 98 | 
	x1 = xmem[i0]			# LN: 98 | 
	i0 = i7 - (0xc)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	a0 = x1 * x0			# LN: 98 | 
	xmem[i0] = a0			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 99 | 
	i0 = xmem[i0]			# LN: 99 | 
	i1 = (0) + (_coefficients_3k_hpf)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	i4 = (0) + (_x_history5)			# LN: 99 | 
	i5 = (0) + (_y_history5)			# LN: 99 | 
	i0 = i1			# LN: 99 | 
	i1 = i4			# LN: 99 | 
	i4 = i5			# LN: 99 | 
	call (_second_order_IIR)			# LN: 99 | 
	i0 = i7 - (0xd)			# LN: 99 | 
	i0 = xmem[i0]			# LN: 99 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	i1 = i7 - (0x9)			# LN: 100 | 
	i0 += 1			# LN: 100 | 
	xmem[i1] = i0			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	x0 = xmem[__extractedConst_3_1 + 0]			# LN: 101 | 
	x1 = xmem[i0]			# LN: 101 | 
	i0 = i7 - (0xd)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	a0 = x1 * x0			# LN: 101 | 
	xmem[i0] = a0			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (0xa)			# LN: 102 | 
	i1 = xmem[i1]			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	a1 = xmem[i1]			# LN: 102 | 
	i0 = i7 - (0xc)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	a0 = a0 + a1			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	i1 = i7 - (0xc)			# LN: 103 | 
	i0 += 1			# LN: 103 | 
	xmem[i1] = i0			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	i1 = i7 - (0xa)			# LN: 104 | 
	i0 += 1			# LN: 104 | 
	xmem[i1] = i0			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	i1 = i7 - (0xb)			# LN: 105 | 
	i1 = xmem[i1]			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	a1 = xmem[i1]			# LN: 105 | 
	i0 = i7 - (0xd)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	a0 = a0 + a1			# LN: 105 | 
	xmem[i0] = a0h			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 106 | 
	i0 = xmem[i0]			# LN: 106 | 
	i1 = i7 - (0xd)			# LN: 106 | 
	i0 += 1			# LN: 106 | 
	xmem[i1] = i0			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	i1 = i7 - (0xb)			# LN: 107 | 
	i0 += 1			# LN: 107 | 
	xmem[i1] = i0			# LN: 107 | 
cline_107_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0xe)			# LN: 82 | 
label_end_92:			# LN: 82 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 82 | 
cline_82_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 110 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 110 | 
	xmem[i0] = a0			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 111 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 111 | 
	xmem[i0] = a0			# LN: 111 | 
cline_111_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 112 | 
	uhalfword(a0) = (_temp_nizL11k + 0)			# LN: 112 | 
	xmem[i0] = a0			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 113 | 
	uhalfword(a0) = (_temp_nizR11k + 0)			# LN: 113 | 
	xmem[i0] = a0			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 114 | 
	uhalfword(a0) = (_temp_nizL5k + 0)			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 115 | 
	uhalfword(a0) = (_temp_nizR5k + 0)			# LN: 115 | 
	xmem[i0] = a0			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 116 | 
	uhalfword(a0) = (_temp_nizL3k + 0)			# LN: 116 | 
	xmem[i0] = a0			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 117 | 
	uhalfword(a0) = (_temp_nizR3k + 0)			# LN: 117 | 
	xmem[i0] = a0			# LN: 117 | 
cline_117_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_MODE + 0]			# LN: 120 | 
	uhalfword(a1) = (0x140)			# LN: 120 | 
	a0 - a1			# LN: 120 | 
	if (a != 0) jmp (else_0)			# LN: 120 | 
cline_120_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 123 | 
	a0 = 0			# LN: 123 | 
	xmem[i0] = a0h			# LN: 123 | 
	do (0x10), label_end_93			# LN: 123 | 
cline_123_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x1)			# LN: 125 | 
	i1 = xmem[i1]			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	xmem[i1] = a0h			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x2)			# LN: 126 | 
	i1 = xmem[i1]			# LN: 126 | 
	a0 = xmem[i0]			# LN: 126 | 
	xmem[i1] = a0h			# LN: 126 | 
cline_126_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	i1 = i7 - (0x3)			# LN: 127 | 
	i1 = xmem[i1]			# LN: 127 | 
	a0 = xmem[i0]			# LN: 127 | 
	xmem[i1] = a0h			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 128 | 
	i0 = xmem[i0]			# LN: 128 | 
	i1 = i7 - (0x4)			# LN: 128 | 
	i1 = xmem[i1]			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	xmem[i1] = a0h			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	i1 = i7 - (0x5)			# LN: 129 | 
	i1 = xmem[i1]			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	xmem[i1] = a0h			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 130 | 
	i0 = xmem[i0]			# LN: 130 | 
	i1 = i7 - (0x1)			# LN: 130 | 
	i0 += 1			# LN: 130 | 
	xmem[i1] = i0			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 131 | 
	i0 = xmem[i0]			# LN: 131 | 
	i1 = i7 - (0x2)			# LN: 131 | 
	i0 += 1			# LN: 131 | 
	xmem[i1] = i0			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	i1 = i7 - (0x3)			# LN: 132 | 
	i0 += 1			# LN: 132 | 
	xmem[i1] = i0			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	i1 = i7 - (0x4)			# LN: 133 | 
	i0 += 1			# LN: 133 | 
	xmem[i1] = i0			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 134 | 
	i0 = xmem[i0]			# LN: 134 | 
	i1 = i7 - (0x5)			# LN: 134 | 
	i0 += 1			# LN: 134 | 
	xmem[i1] = i0			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 135 | 
	i0 = xmem[i0]			# LN: 135 | 
	i1 = i7 - (0xc)			# LN: 135 | 
	i0 += 1			# LN: 135 | 
	xmem[i1] = i0			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 136 | 
	i0 = xmem[i0]			# LN: 136 | 
	i1 = i7 - (0xd)			# LN: 136 | 
	i0 += 1			# LN: 136 | 
	xmem[i1] = i0			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 137 | 
	i0 = xmem[i0]			# LN: 137 | 
	i1 = i7 - (0x8)			# LN: 137 | 
	i0 += 1			# LN: 137 | 
	xmem[i1] = i0			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 138 | 
	i0 = xmem[i0]			# LN: 138 | 
	i1 = i7 - (0x9)			# LN: 138 | 
	i0 += 1			# LN: 138 | 
	xmem[i1] = i0			# LN: 138 | 
cline_138_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 139 | 
	i0 = xmem[i0]			# LN: 139 | 
	i1 = i7 - (0xa)			# LN: 139 | 
	i0 += 1			# LN: 139 | 
	xmem[i1] = i0			# LN: 139 | 
cline_139_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 123 | 
	a0 = xmem[i0]			# LN: 123 | 
	uhalfword(a1) = (0x1)			# LN: 123 | 
	a0 = a0 + a1			# LN: 123 | 
	i0 = i7 - (0xf)			# LN: 123 | 
label_end_93:			# LN: 123 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 123 | 
for_end_1:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	jmp (endif_0)			# LN: 123 | 
cline_123_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_MODE + 0]			# LN: 141 | 
	uhalfword(a1) = (0xdc)			# LN: 141 | 
	a0 - a1			# LN: 141 | 
	if (a != 0) jmp (else_1)			# LN: 141 | 
cline_141_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10)			# LN: 144 | 
	a0 = 0			# LN: 144 | 
	xmem[i0] = a0h			# LN: 144 | 
	do (0x10), label_end_94			# LN: 144 | 
cline_144_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 146 | 
	i0 = xmem[i0]			# LN: 146 | 
	i1 = i7 - (0x1)			# LN: 146 | 
	i1 = xmem[i1]			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	xmem[i1] = a0h			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	i1 = i7 - (0x2)			# LN: 147 | 
	i1 = xmem[i1]			# LN: 147 | 
	a0 = xmem[i0]			# LN: 147 | 
	xmem[i1] = a0h			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	i1 = i7 - (0x3)			# LN: 148 | 
	i1 = xmem[i1]			# LN: 148 | 
	a0 = xmem[i0]			# LN: 148 | 
	xmem[i1] = a0h			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 149 | 
	i0 = xmem[i0]			# LN: 149 | 
	i1 = i7 - (0x4)			# LN: 149 | 
	i1 = xmem[i1]			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	xmem[i1] = a0h			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 150 | 
	i0 = xmem[i0]			# LN: 150 | 
	i1 = i7 - (0x1)			# LN: 150 | 
	i0 += 1			# LN: 150 | 
	xmem[i1] = i0			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 151 | 
	i0 = xmem[i0]			# LN: 151 | 
	i1 = i7 - (0x2)			# LN: 151 | 
	i0 += 1			# LN: 151 | 
	xmem[i1] = i0			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 152 | 
	i0 = xmem[i0]			# LN: 152 | 
	i1 = i7 - (0x3)			# LN: 152 | 
	i0 += 1			# LN: 152 | 
	xmem[i1] = i0			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	i1 = i7 - (0x4)			# LN: 153 | 
	i0 += 1			# LN: 153 | 
	xmem[i1] = i0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0xc)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	i1 = i7 - (0xd)			# LN: 155 | 
	i0 += 1			# LN: 155 | 
	xmem[i1] = i0			# LN: 155 | 
cline_155_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 156 | 
	i0 = xmem[i0]			# LN: 156 | 
	i1 = i7 - (0x8)			# LN: 156 | 
	i0 += 1			# LN: 156 | 
	xmem[i1] = i0			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 157 | 
	i0 = xmem[i0]			# LN: 157 | 
	i1 = i7 - (0x9)			# LN: 157 | 
	i0 += 1			# LN: 157 | 
	xmem[i1] = i0			# LN: 157 | 
cline_157_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	uhalfword(a1) = (0x1)			# LN: 144 | 
	a0 = a0 + a1			# LN: 144 | 
	i0 = i7 - (0x10)			# LN: 144 | 
label_end_94:			# LN: 144 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 144 | 
for_end_2:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	jmp (endif_1)			# LN: 144 | 
cline_144_1:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 161 | 
	a0 = 0			# LN: 161 | 
	xmem[i0] = a0h			# LN: 161 | 
	do (0x10), label_end_95			# LN: 161 | 
cline_161_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 163 | 
	i1 = i7 - (0x6)			# LN: 163 | 
	i1 = xmem[i1]			# LN: 163 | 
	i0 = xmem[i0]			# LN: 163 | 
	a0 = xmem[i1]			# LN: 163 | 
	xmem[i0] = a0h			# LN: 163 | 
	i0 = i7 - (0x1)			# LN: 163 | 
	i0 = xmem[i0]			# LN: 163 | 
	i1 = i7 - (0x1)			# LN: 163 | 
	i0 += 1			# LN: 163 | 
	xmem[i1] = i0			# LN: 163 | 
cline_163_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 164 | 
	i1 = i7 - (0x7)			# LN: 164 | 
	i1 = xmem[i1]			# LN: 164 | 
	i0 = xmem[i0]			# LN: 164 | 
	a0 = xmem[i1]			# LN: 164 | 
	xmem[i0] = a0h			# LN: 164 | 
	i0 = i7 - (0x2)			# LN: 164 | 
	i0 = xmem[i0]			# LN: 164 | 
	i1 = i7 - (0x2)			# LN: 164 | 
	i0 += 1			# LN: 164 | 
	xmem[i1] = i0			# LN: 164 | 
cline_164_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 165 | 
	i0 = xmem[i0]			# LN: 165 | 
	i1 = i7 - (0x1)			# LN: 165 | 
	i0 += 1			# LN: 165 | 
	xmem[i1] = i0			# LN: 165 | 
cline_165_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 166 | 
	i0 = xmem[i0]			# LN: 166 | 
	i1 = i7 - (0x2)			# LN: 166 | 
	i0 += 1			# LN: 166 | 
	xmem[i1] = i0			# LN: 166 | 
cline_166_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 167 | 
	i0 = xmem[i0]			# LN: 167 | 
	i1 = i7 - (0x6)			# LN: 167 | 
	i0 += 1			# LN: 167 | 
	xmem[i1] = i0			# LN: 167 | 
cline_167_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 168 | 
	i0 = xmem[i0]			# LN: 168 | 
	i1 = i7 - (0x7)			# LN: 168 | 
	i0 += 1			# LN: 168 | 
	xmem[i1] = i0			# LN: 168 | 
cline_168_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 161 | 
	a0 = xmem[i0]			# LN: 161 | 
	uhalfword(a1) = (0x1)			# LN: 161 | 
	a0 = a0 + a1			# LN: 161 | 
	i0 = i7 - (0x11)			# LN: 161 | 
label_end_95:			# LN: 161 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 161 | 
cline_161_1:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_198)			# LN: 172 | 
cline_172_0:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
__epilogue_198:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x11)			# LN: 173 | 
	i7 -= 1			# LN: 173 | 
	ret			# LN: 173 | 



_second_order_IIR:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 44 | 
	i7 += 1			# LN: 44 | 
	i7 = i7 + (0x7)			# LN: 44 | 
	i5 = i7 - (0x1)			# LN: 44 | 
	xmem[i5] = a0h			# LN: 44 | 
	i5 = i7 - (0x2)			# LN: 44 | 
	xmem[i5] = i0			# LN: 44 | 
	i0 = i7 - (0x3)			# LN: 44 | 
	xmem[i0] = i1			# LN: 44 | 
	i0 = i7 - (0x4)			# LN: 44 | 
	xmem[i0] = i4			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 45 | 
	a0 = 0			# LN: 45 | 
	xmem[i0] = a0g; i0 += 1			# LN: 45, 45 | 
	xmem[i0] = a0h; i0 += 1			# LN: 45, 45 | 
	xmem[i0] = a0l			# LN: 45 | 
cline_45_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	i1 = i7 - (0x1)			# LN: 47 | 
	x0 = xmem[i0]			# LN: 47 | 
	x1 = xmem[i1]			# LN: 47 | 
	i0 = i7 - (0x7)			# LN: 47 | 
	a0g = xmem[i0]; i0 += 1			# LN: 47, 47 | 
	a0h = xmem[i0]; i0 += 1			# LN: 47, 47 | 
	a0l = xmem[i0]			# LN: 47 | 
	a0 += x0 * x1			# LN: 47 | 
	i0 = i7 - (0x7)			# LN: 47 | 
	xmem[i0] = a0g; i0 += 1			# LN: 47, 47 | 
	xmem[i0] = a0h; i0 += 1			# LN: 47, 47 | 
	xmem[i0] = a0l			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 48 | 
	i0 = xmem[i0]			# LN: 48 | 
	i1 = i7 - (0x3)			# LN: 48 | 
	i0 += 1			# LN: 48 | 
	i1 = xmem[i1]			# LN: 48 | 
	x0 = xmem[i0]			# LN: 48 | 
	x1 = xmem[i1]			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	a0g = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1 = x0 * x1			# LN: 48 | 
	a0h = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1 = a1 << 1			# LN: 48 | 
	a0l = xmem[i0]			# LN: 48 | 
	a0 = a0 + a1			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	xmem[i0] = a0g; i0 += 1			# LN: 48, 48 | 
	xmem[i0] = a0h; i0 += 1			# LN: 48, 48 | 
	xmem[i0] = a0l			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	i1 = i7 - (0x3)			# LN: 49 | 
	i0 += 2			# LN: 49 | 
	i1 = xmem[i1]			# LN: 49 | 
	x0 = xmem[i0]			# LN: 49 | 
	i1 += 1			# LN: 49 | 
	x1 = xmem[i1]			# LN: 49 | 
	i0 = i7 - (0x7)			# LN: 49 | 
	a0g = xmem[i0]; i0 += 1			# LN: 49, 49 | 
	a0h = xmem[i0]; i0 += 1			# LN: 49, 49 | 
	a0l = xmem[i0]			# LN: 49 | 
	a0 += x0 * x1			# LN: 49 | 
	i0 = i7 - (0x7)			# LN: 49 | 
	xmem[i0] = a0g; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0h; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0l			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	i1 = i7 - (0x4)			# LN: 50 | 
	i0 = i0 + (0x4)			# LN: 50 | 
	i1 = xmem[i1]			# LN: 50 | 
	x0 = xmem[i0]			# LN: 50 | 
	x1 = xmem[i1]			# LN: 50 | 
	i0 = i7 - (0x7)			# LN: 50 | 
	a0g = xmem[i0]; i0 += 1			# LN: 50, 50 | 
	a1 = x0 * x1			# LN: 50 | 
	a0h = xmem[i0]; i0 += 1			# LN: 50, 50 | 
	a1 = a1 << 1			# LN: 50 | 
	a0l = xmem[i0]			# LN: 50 | 
	a0 = a0 - a1			# LN: 50 | 
	i0 = i7 - (0x7)			# LN: 50 | 
	xmem[i0] = a0g; i0 += 1			# LN: 50, 50 | 
	xmem[i0] = a0h; i0 += 1			# LN: 50, 50 | 
	xmem[i0] = a0l			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	i1 = i7 - (0x4)			# LN: 51 | 
	i0 = i0 + (0x5)			# LN: 51 | 
	i1 = xmem[i1]			# LN: 51 | 
	x0 = xmem[i0]			# LN: 51 | 
	i1 += 1			# LN: 51 | 
	x1 = xmem[i1]			# LN: 51 | 
	i0 = i7 - (0x7)			# LN: 51 | 
	a0g = xmem[i0]; i0 += 1			# LN: 51, 51 | 
	a0h = xmem[i0]; i0 += 1			# LN: 51, 51 | 
	a0l = xmem[i0]			# LN: 51 | 
	a0 -= x0 * x1			# LN: 51 | 
	i0 = i7 - (0x7)			# LN: 51 | 
	xmem[i0] = a0g; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0h; i0 += 1			# LN: 51, 51 | 
	xmem[i0] = a0l			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	i1 = i7 - (0x4)			# LN: 53 | 
	i1 = xmem[i1]			# LN: 53 | 
	i0 += 1			# LN: 53 | 
	a0 = xmem[i1]			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 54 | 
	a0g = xmem[i0]; i0 += 1			# LN: 54, 54 | 
	a0h = xmem[i0]; i0 += 1			# LN: 54, 54 | 
	i1 = i7 - (0x4)			# LN: 54 | 
	i1 = xmem[i1]			# LN: 54 | 
	a0l = xmem[i0]			# LN: 54 | 
	xmem[i1] = a0			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	i1 = i7 - (0x3)			# LN: 55 | 
	i1 = xmem[i1]			# LN: 55 | 
	i0 += 1			# LN: 55 | 
	a0 = xmem[i1]			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 56 | 
	i1 = i7 - (0x3)			# LN: 56 | 
	i1 = xmem[i1]			# LN: 56 | 
	a0 = xmem[i0]			# LN: 56 | 
	xmem[i1] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 58 | 
	a0g = xmem[i0]; i0 += 1			# LN: 58, 58 | 
	a0h = xmem[i0]; i0 += 1			# LN: 58, 58 | 
	a0l = xmem[i0]			# LN: 58 | 
	jmp (__epilogue_196)			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
__epilogue_196:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 59 | 
	i7 -= 1			# LN: 59 | 
	ret			# LN: 59 | 
