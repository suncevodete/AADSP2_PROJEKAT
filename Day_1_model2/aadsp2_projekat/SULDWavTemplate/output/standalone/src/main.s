	.public _INITIAL_GAIN
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
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _memset
	.public _processing
	.public _second_order_IIR
	.extern _strcpy
	.extern __div
	.extern __int_to_laccum
	.extern __mul_sat_laccum
	.xdata_ovly
_INITIAL_GAIN
	.dw  (0x0)
	.xdata_ovly
_MODE
	.bss (0x1)
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
_string_const_0
	.dw  (0x43)
	.dw  (0x3a)
	.dw  (0x5c)
	.dw  (0x55)
	.dw  (0x73)
	.dw  (0x65)
	.dw  (0x72)
	.dw  (0x73)
	.dw  (0x5c)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x75)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x5c)
	.dw  (0x44)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x6b)
	.dw  (0x74)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x5c)
	.dw  (0x72)
	.dw  (0x61)
	.dw  (0x32)
	.dw  (0x32)
	.dw  (0x2d)
	.dw  (0x32)
	.dw  (0x30)
	.dw  (0x31)
	.dw  (0x35)
	.dw  (0x5c)
	.dw  (0x41)
	.dw  (0x41)
	.dw  (0x44)
	.dw  (0x53)
	.dw  (0x50)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x50)
	.dw  (0x52)
	.dw  (0x4f)
	.dw  (0x4a)
	.dw  (0x45)
	.dw  (0x4b)
	.dw  (0x41)
	.dw  (0x54)
	.dw  (0x5c)
	.dw  (0x44)
	.dw  (0x61)
	.dw  (0x79)
	.dw  (0x5f)
	.dw  (0x31)
	.dw  (0x5f)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x32)
	.dw  (0x5c)
	.dw  (0x61)
	.dw  (0x61)
	.dw  (0x64)
	.dw  (0x73)
	.dw  (0x70)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x70)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x6a)
	.dw  (0x65)
	.dw  (0x6b)
	.dw  (0x61)
	.dw  (0x74)
	.dw  (0x5c)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x5c)
	.dw  (0x32)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x6c)
	.dw  (0x76)
	.dw  (0x6c)
	.dw  (0x5f)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x34)
	.dw  (0x38)
	.dw  (0x6b)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x6c)
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x73)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x65)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
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

_main:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 162 | 
	i7 += 1			# LN: 162 | 
	i7 = i7 + (0x20d)			# LN: 162 | 
	i1 = i7 - (0x1)			# LN: 162 | 
	xmem[i1] = a0h			# LN: 162 | 
	i1 = i7 - (0x2)			# LN: 162 | 
	xmem[i1] = i0			# LN: 162 | 
cline_162_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 177 | 
	a0 = 0			# LN: 177 | 
	xmem[i0] = a0h			# LN: 177 | 
	do (0x5), label_end_96			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 178 | 
	a1 = xmem[i0]; a0 = 0			# LN: 178, 178 | 
	a1 = a1 << 4			# LN: 178 | 
	i0 = a1			# LN: 178 | 
	uhalfword(a1) = (0x10)			# LN: 178 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 178 | 
	call (_memset)			# LN: 178 | 
cline_178_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 177 | 
	a0 = xmem[i0]			# LN: 177 | 
	uhalfword(a1) = (0x1)			# LN: 177 | 
	a0 = a0 + a1			# LN: 177 | 
	i0 = i7 - (0x3)			# LN: 177 | 
label_end_96:			# LN: 177 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 177 | 
cline_177_1:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 182 | 
	i1 = (0) + (_string_const_0)			# LN: 182 | 
	call (_strcpy)			# LN: 182 | 
cline_182_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 183 | 
	call (_cl_wavread_open)			# LN: 183 | 
	AnyReg(i0, a0h)			# LN: 183 | 
	i1 = i7 - (0x104)			# LN: 183 | 
	xmem[i1] = i0			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 184 | 
	a0 = xmem[i0]			# LN: 184 | 
	a0 & a0			# LN: 184 | 
	if (a != 0) jmp (else_2)			# LN: 184 | 
cline_184_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 187 | 
	jmp (__epilogue_200)			# LN: 187 | 
cline_187_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 193 | 
	i0 = xmem[i0]			# LN: 193 | 
	call (_cl_wavread_getnchannels)			# LN: 193 | 
	i0 = i7 - (0x105)			# LN: 193 | 
	xmem[i0] = a0h			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 194 | 
	i0 = xmem[i0]			# LN: 194 | 
	call (_cl_wavread_bits_per_sample)			# LN: 194 | 
	i0 = i7 - (0x106)			# LN: 194 | 
	xmem[i0] = a0h			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 195 | 
	i0 = xmem[i0]			# LN: 195 | 
	call (_cl_wavread_frame_rate)			# LN: 195 | 
	i0 = i7 - (0x107)			# LN: 195 | 
	xmem[i0] = a0h			# LN: 195 | 
cline_195_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 196 | 
	i0 = xmem[i0]			# LN: 196 | 
	call (_cl_wavread_number_of_frames)			# LN: 196 | 
	i0 = i7 - (0x108)			# LN: 196 | 
	xmem[i0] = a0h			# LN: 196 | 
cline_196_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 201 | 
	i1 = (0) + (_string_const_1)			# LN: 201 | 
	call (_strcpy)			# LN: 201 | 
cline_201_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 202 | 
	i1 = i7 - (0x106)			# LN: 202 | 
	a0 = xmem[i1]			# LN: 202 | 
	i1 = i7 - (0x105)			# LN: 202 | 
	a1 = xmem[i1]			# LN: 202 | 
	i1 = i7 - (0x107)			# LN: 202 | 
	b0 = xmem[i1]			# LN: 202 | 
	call (_cl_wavwrite_open)			# LN: 202 | 
	AnyReg(i0, a0h)			# LN: 202 | 
	i1 = i7 - (0x209)			# LN: 202 | 
	xmem[i1] = i0			# LN: 202 | 
cline_202_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 203 | 
	a0 = xmem[i0]			# LN: 203 | 
	a0 & a0			# LN: 203 | 
	if (a != 0) jmp (else_3)			# LN: 203 | 
cline_203_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 206 | 
	jmp (__epilogue_200)			# LN: 206 | 
cline_206_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 219 | 
	a0 = 0			# LN: 219 | 
	xmem[i0] = a0h			# LN: 219 | 
for_5:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 219 | 
	a0 = xmem[i0]			# LN: 219 | 
	uhalfword(a1) = (0x10)			# LN: 219 | 
	call (__div)			# LN: 219 | 
	i0 = i7 - (0x20a)			# LN: 219 | 
	a1 = xmem[i0]			# LN: 219 | 
	a1 - a0			# LN: 219 | 
	if (a >= 0) jmp (for_end_5)			# LN: 219 | 
cline_219_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 221 | 
	a0 = 0			# LN: 221 | 
	xmem[i0] = a0h			# LN: 221 | 
	do (0x10), label_end_97			# LN: 221 | 
cline_221_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 223 | 
	a0 = 0			# LN: 223 | 
	xmem[i0] = a0h			# LN: 223 | 
for_7:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 223 | 
	a0 = xmem[i0]			# LN: 223 | 
	i0 = i7 - (0x105)			# LN: 223 | 
	a1 = xmem[i0]			# LN: 223 | 
	a0 - a1			# LN: 223 | 
	if (a >= 0) jmp (for_end_7)			# LN: 223 | 
cline_223_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	call (_cl_wavread_recvsample)			# LN: 225 | 
	i0 = i7 - (0x20d)			# LN: 225 | 
	xmem[i0] = a0h			# LN: 225 | 
cline_225_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 226 | 
	a0 = xmem[i0]			# LN: 226 | 
	a0 = a0 << 4			# LN: 226 | 
	i0 = a0			# LN: 226 | 
	i1 = i7 - (0x20b)			# LN: 226 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 226 | 
	a0 = xmem[i1]			# LN: 226 | 
	a1 = i0			# LN: 226 | 
	a0 = a1 + a0			# LN: 226 | 
	AnyReg(i0, a0h)			# LN: 226 | 
	i1 = i7 - (0x20d)			# LN: 226 | 
	a0 = xmem[i1]			# LN: 226 | 
	xmem[i0] = a0h			# LN: 226 | 
cline_226_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 223 | 
	a0 = xmem[i0]			# LN: 223 | 
	uhalfword(a1) = (0x1)			# LN: 223 | 
	a0 = a0 + a1			# LN: 223 | 
	i0 = i7 - (0x20c)			# LN: 223 | 
	xmem[i0] = a0h			# LN: 223 | 
	jmp (for_7)			# LN: 223 | 
cline_223_1:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 221 | 
	a0 = xmem[i0]			# LN: 221 | 
	uhalfword(a1) = (0x1)			# LN: 221 | 
	a0 = a0 + a1			# LN: 221 | 
	i0 = i7 - (0x20b)			# LN: 221 | 
label_end_97:			# LN: 221 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 221 | 
cline_221_1:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 230 | 
cline_230_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 232 | 
	a0 = 0			# LN: 232 | 
	xmem[i0] = a0h			# LN: 232 | 
	do (0x10), label_end_98			# LN: 232 | 
cline_232_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = 0			# LN: 234 | 
	xmem[i0] = a0h			# LN: 234 | 
for_9:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	i0 = i7 - (0x105)			# LN: 234 | 
	a1 = xmem[i0]			# LN: 234 | 
	a0 - a1			# LN: 234 | 
	if (a >= 0) jmp (for_end_9)			# LN: 234 | 
cline_234_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 236 | 
	a0 = xmem[i0]			# LN: 236 | 
	a0 = a0 << 4			# LN: 236 | 
	i0 = a0			# LN: 236 | 
	i1 = i7 - (0x20b)			# LN: 236 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 236 | 
	a0 = xmem[i1]			# LN: 236 | 
	a1 = i0			# LN: 236 | 
	a0 = a1 + a0			# LN: 236 | 
	AnyReg(i0, a0h)			# LN: 236 | 
	i1 = i7 - (0x20d)			# LN: 236 | 
	a0 = xmem[i0]			# LN: 236 | 
	xmem[i1] = a0h			# LN: 236 | 
cline_236_0:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 237 | 
	i1 = i7 - (0x20d)			# LN: 237 | 
	a0 = xmem[i1]			# LN: 237 | 
	i0 = xmem[i0]			# LN: 237 | 
	call (_cl_wavwrite_sendsample)			# LN: 237 | 
cline_237_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	uhalfword(a1) = (0x1)			# LN: 234 | 
	a0 = a0 + a1			# LN: 234 | 
	i0 = i7 - (0x20c)			# LN: 234 | 
	xmem[i0] = a0h			# LN: 234 | 
	jmp (for_9)			# LN: 234 | 
cline_234_1:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 232 | 
	a0 = xmem[i0]			# LN: 232 | 
	uhalfword(a1) = (0x1)			# LN: 232 | 
	a0 = a0 + a1			# LN: 232 | 
	i0 = i7 - (0x20b)			# LN: 232 | 
label_end_98:			# LN: 232 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 232 | 
cline_232_1:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 219 | 
	a0 = xmem[i0]			# LN: 219 | 
	uhalfword(a1) = (0x1)			# LN: 219 | 
	a0 = a0 + a1			# LN: 219 | 
	i0 = i7 - (0x20a)			# LN: 219 | 
	xmem[i0] = a0h			# LN: 219 | 
	jmp (for_5)			# LN: 219 | 
cline_219_1:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	call (_cl_wavread_close)			# LN: 245 | 
cline_245_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	call (_cl_wavwrite_close)			# LN: 246 | 
cline_246_0:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 249 | 
	jmp (__epilogue_200)			# LN: 249 | 
cline_249_0:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
__epilogue_200:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 250 | 
	i7 -= 1			# LN: 250 | 
	ret			# LN: 250 | 



_processing:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 59 | 
	i7 += 1			# LN: 59 | 
	xmem[i7] = i2; i7 += 1			# LN: 59, 59 | 
	i7 = i7 + (0x11)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 61 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 61 | 
	xmem[i0] = a0			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 62 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 62 | 
	xmem[i0] = a0			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 63 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 63 | 
	xmem[i0] = a0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 64 | 
	uhalfword(a0) = (_sampleBuffer + 48)			# LN: 64 | 
	xmem[i0] = a0			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 65 | 
	uhalfword(a0) = (_sampleBuffer + 64)			# LN: 65 | 
	xmem[i0] = a0			# LN: 65 | 
cline_65_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 68 | 
	uhalfword(a0) = (_temp_left + 0)			# LN: 68 | 
	xmem[i0] = a0			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 69 | 
	uhalfword(a0) = (_temp_right + 0)			# LN: 69 | 
	xmem[i0] = a0			# LN: 69 | 
cline_69_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 70 | 
	uhalfword(a0) = (_temp_nizL11k + 0)			# LN: 70 | 
	xmem[i0] = a0			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 71 | 
	uhalfword(a0) = (_temp_nizR11k + 0)			# LN: 71 | 
	xmem[i0] = a0			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 72 | 
	uhalfword(a0) = (_temp_nizL5k + 0)			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 73 | 
	uhalfword(a0) = (_temp_nizR5k + 0)			# LN: 73 | 
	xmem[i0] = a0			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 74 | 
	uhalfword(a0) = (_temp_nizL3k + 0)			# LN: 74 | 
	xmem[i0] = a0			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 75 | 
	uhalfword(a0) = (_temp_nizR3k + 0)			# LN: 75 | 
	xmem[i0] = a0			# LN: 75 | 
cline_75_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	do (0x10), label_end_92			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	i1 = i7 - (0x6)			# LN: 82 | 
	i1 = xmem[i1]			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	xmem[i1] = a0h			# LN: 82 | 
	i0 = i7 - (0x1)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	i1 = i7 - (0x1)			# LN: 82 | 
	i0 += 1			# LN: 82 | 
	xmem[i1] = i0			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	i1 = i7 - (0x7)			# LN: 83 | 
	i1 = xmem[i1]			# LN: 83 | 
	a0 = xmem[i0]			# LN: 83 | 
	xmem[i1] = a0h			# LN: 83 | 
	i0 = i7 - (0x2)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	i1 = i7 - (0x2)			# LN: 83 | 
	i0 += 1			# LN: 83 | 
	xmem[i1] = i0			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	x0 = xmem[_INITIAL_GAIN + 0]			# LN: 84 | 
	x1 = xmem[i0]			# LN: 84 | 
	i0 = i7 - (0x6)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	a0 = x1 * x0			# LN: 84 | 
	xmem[i0] = a0			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	x0 = xmem[_INITIAL_GAIN + 0]			# LN: 85 | 
	x1 = xmem[i0]			# LN: 85 | 
	i0 = i7 - (0x7)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	a0 = x1 * x0			# LN: 85 | 
	xmem[i0] = a0			# LN: 85 | 
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	i1 = (0) + (_coefficients_11k_lpf)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	i4 = (0) + (_x_history0)			# LN: 86 | 
	i0 = i7 - (0x6)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	i5 = (0) + (_y_history0)			# LN: 86 | 
	i0 += 1			# LN: 86 | 
	i2 = i7 - (0x6)			# LN: 86 | 
	xmem[i2] = i0			# LN: 86 | 
	i0 = i1			# LN: 86 | 
	i1 = i4			# LN: 86 | 
	i4 = i5			# LN: 86 | 
	call (_second_order_IIR)			# LN: 86 | 
	i0 = i7 - (0x8)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = (0) + (_coefficients_11k_lpf)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	i4 = (0) + (_x_history1)			# LN: 87 | 
	i5 = (0) + (_y_history1)			# LN: 87 | 
	i0 = i1			# LN: 87 | 
	i1 = i4			# LN: 87 | 
	i4 = i5			# LN: 87 | 
	call (_second_order_IIR)			# LN: 87 | 
	i0 = i7 - (0x9)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	i1 = (0) + (_coefficients_5k_hpf)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	i4 = (0) + (_x_history2)			# LN: 88 | 
	i5 = (0) + (_y_history2)			# LN: 88 | 
	i0 = i1			# LN: 88 | 
	i1 = i4			# LN: 88 | 
	i4 = i5			# LN: 88 | 
	call (_second_order_IIR)			# LN: 88 | 
	i0 = i7 - (0xa)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	i1 = i7 - (0x6)			# LN: 89 | 
	i0 += 1			# LN: 89 | 
	xmem[i1] = i0			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	x0 = xmem[__extractedConst_0_1 + 0]			# LN: 90 | 
	x1 = xmem[i0]			# LN: 90 | 
	i0 = i7 - (0xa)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	a0 = x1 * x0			# LN: 90 | 
	xmem[i0] = a0			# LN: 90 | 
cline_90_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = (0) + (_coefficients_5k_hpf)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	i4 = (0) + (_x_history3)			# LN: 91 | 
	i5 = (0) + (_y_history3)			# LN: 91 | 
	i0 = i1			# LN: 91 | 
	i1 = i4			# LN: 91 | 
	i4 = i5			# LN: 91 | 
	call (_second_order_IIR)			# LN: 91 | 
	i0 = i7 - (0xb)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 91 | 
cline_91_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 92 | 
	i0 = xmem[i0]			# LN: 92 | 
	i1 = i7 - (0x7)			# LN: 92 | 
	i0 += 1			# LN: 92 | 
	xmem[i1] = i0			# LN: 92 | 
cline_92_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	x0 = xmem[__extractedConst_1_1 + 0]			# LN: 93 | 
	x1 = xmem[i0]			# LN: 93 | 
	i0 = i7 - (0xb)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = x1 * x0			# LN: 93 | 
	xmem[i0] = a0			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	i1 = (0) + (_coefficients_3k_hpf)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	i4 = (0) + (_x_history4)			# LN: 94 | 
	i5 = (0) + (_y_history4)			# LN: 94 | 
	i0 = i1			# LN: 94 | 
	i1 = i4			# LN: 94 | 
	i4 = i5			# LN: 94 | 
	call (_second_order_IIR)			# LN: 94 | 
	i0 = i7 - (0xc)			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	i1 = i7 - (0x8)			# LN: 95 | 
	i0 += 1			# LN: 95 | 
	xmem[i1] = i0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	x0 = xmem[__extractedConst_2_1 + 0]			# LN: 96 | 
	x1 = xmem[i0]			# LN: 96 | 
	i0 = i7 - (0xc)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	a0 = x1 * x0			# LN: 96 | 
	xmem[i0] = a0			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = (0) + (_coefficients_3k_hpf)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	i4 = (0) + (_x_history5)			# LN: 97 | 
	i5 = (0) + (_y_history5)			# LN: 97 | 
	i0 = i1			# LN: 97 | 
	i1 = i4			# LN: 97 | 
	i4 = i5			# LN: 97 | 
	call (_second_order_IIR)			# LN: 97 | 
	i0 = i7 - (0xd)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	i1 = i7 - (0x9)			# LN: 98 | 
	i0 += 1			# LN: 98 | 
	xmem[i1] = i0			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 99 | 
	i0 = xmem[i0]			# LN: 99 | 
	x0 = xmem[__extractedConst_3_1 + 0]			# LN: 99 | 
	x1 = xmem[i0]			# LN: 99 | 
	i0 = i7 - (0xd)			# LN: 99 | 
	i0 = xmem[i0]			# LN: 99 | 
	a0 = x1 * x0			# LN: 99 | 
	xmem[i0] = a0			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	i1 = i7 - (0xa)			# LN: 100 | 
	i1 = xmem[i1]			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	a1 = xmem[i1]			# LN: 100 | 
	i0 = i7 - (0xc)			# LN: 100 | 
	i0 = xmem[i0]			# LN: 100 | 
	a0 = a0 + a1			# LN: 100 | 
	xmem[i0] = a0h			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	i1 = i7 - (0xc)			# LN: 101 | 
	i0 += 1			# LN: 101 | 
	xmem[i1] = i0			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (0xa)			# LN: 102 | 
	i0 += 1			# LN: 102 | 
	xmem[i1] = i0			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	i1 = i7 - (0xb)			# LN: 103 | 
	i1 = xmem[i1]			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	a1 = xmem[i1]			# LN: 103 | 
	i0 = i7 - (0xd)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	a0 = a0 + a1			# LN: 103 | 
	xmem[i0] = a0h			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	i1 = i7 - (0xd)			# LN: 104 | 
	i0 += 1			# LN: 104 | 
	xmem[i1] = i0			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	i1 = i7 - (0xb)			# LN: 105 | 
	i0 += 1			# LN: 105 | 
	xmem[i1] = i0			# LN: 105 | 
cline_105_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0xe)			# LN: 80 | 
label_end_92:			# LN: 80 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 80 | 
cline_80_1:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 108 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 108 | 
	xmem[i0] = a0			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 109 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 109 | 
	xmem[i0] = a0			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 110 | 
	uhalfword(a0) = (_temp_nizL11k + 0)			# LN: 110 | 
	xmem[i0] = a0			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 111 | 
	uhalfword(a0) = (_temp_nizR11k + 0)			# LN: 111 | 
	xmem[i0] = a0			# LN: 111 | 
cline_111_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 112 | 
	uhalfword(a0) = (_temp_nizL5k + 0)			# LN: 112 | 
	xmem[i0] = a0			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 113 | 
	uhalfword(a0) = (_temp_nizR5k + 0)			# LN: 113 | 
	xmem[i0] = a0			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 114 | 
	uhalfword(a0) = (_temp_nizL3k + 0)			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 115 | 
	uhalfword(a0) = (_temp_nizR3k + 0)			# LN: 115 | 
	xmem[i0] = a0			# LN: 115 | 
cline_115_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_MODE + 0]			# LN: 118 | 
	uhalfword(a1) = (0x140)			# LN: 118 | 
	a0 - a1			# LN: 118 | 
	if (a != 0) jmp (else_0)			# LN: 118 | 
cline_118_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 121 | 
	a0 = 0			# LN: 121 | 
	xmem[i0] = a0h			# LN: 121 | 
	do (0x10), label_end_93			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 123 | 
	i0 = xmem[i0]			# LN: 123 | 
	i1 = i7 - (0x1)			# LN: 123 | 
	i1 = xmem[i1]			# LN: 123 | 
	a0 = xmem[i0]			# LN: 123 | 
	xmem[i1] = a0h			# LN: 123 | 
cline_123_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 124 | 
	i0 = xmem[i0]			# LN: 124 | 
	i1 = i7 - (0x2)			# LN: 124 | 
	i1 = xmem[i1]			# LN: 124 | 
	a0 = xmem[i0]			# LN: 124 | 
	xmem[i1] = a0h			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x3)			# LN: 125 | 
	i1 = xmem[i1]			# LN: 125 | 
	a0 = xmem[i0]			# LN: 125 | 
	xmem[i1] = a0h			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x4)			# LN: 126 | 
	i1 = xmem[i1]			# LN: 126 | 
	a0 = xmem[i0]			# LN: 126 | 
	xmem[i1] = a0h			# LN: 126 | 
cline_126_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	i1 = i7 - (0x5)			# LN: 127 | 
	i1 = xmem[i1]			# LN: 127 | 
	a0 = xmem[i0]			# LN: 127 | 
	xmem[i1] = a0h			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 128 | 
	i0 = xmem[i0]			# LN: 128 | 
	i1 = i7 - (0x1)			# LN: 128 | 
	i0 += 1			# LN: 128 | 
	xmem[i1] = i0			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	i1 = i7 - (0x2)			# LN: 129 | 
	i0 += 1			# LN: 129 | 
	xmem[i1] = i0			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 130 | 
	i0 = xmem[i0]			# LN: 130 | 
	i1 = i7 - (0x3)			# LN: 130 | 
	i0 += 1			# LN: 130 | 
	xmem[i1] = i0			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 131 | 
	i0 = xmem[i0]			# LN: 131 | 
	i1 = i7 - (0x4)			# LN: 131 | 
	i0 += 1			# LN: 131 | 
	xmem[i1] = i0			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	i1 = i7 - (0x5)			# LN: 132 | 
	i0 += 1			# LN: 132 | 
	xmem[i1] = i0			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	i1 = i7 - (0xc)			# LN: 133 | 
	i0 += 1			# LN: 133 | 
	xmem[i1] = i0			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 134 | 
	i0 = xmem[i0]			# LN: 134 | 
	i1 = i7 - (0xd)			# LN: 134 | 
	i0 += 1			# LN: 134 | 
	xmem[i1] = i0			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 135 | 
	i0 = xmem[i0]			# LN: 135 | 
	i1 = i7 - (0x8)			# LN: 135 | 
	i0 += 1			# LN: 135 | 
	xmem[i1] = i0			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 136 | 
	i0 = xmem[i0]			# LN: 136 | 
	i1 = i7 - (0x9)			# LN: 136 | 
	i0 += 1			# LN: 136 | 
	xmem[i1] = i0			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 137 | 
	i0 = xmem[i0]			# LN: 137 | 
	i1 = i7 - (0xa)			# LN: 137 | 
	i0 += 1			# LN: 137 | 
	xmem[i1] = i0			# LN: 137 | 
cline_137_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 121 | 
	a0 = xmem[i0]			# LN: 121 | 
	uhalfword(a1) = (0x1)			# LN: 121 | 
	a0 = a0 + a1			# LN: 121 | 
	i0 = i7 - (0xf)			# LN: 121 | 
label_end_93:			# LN: 121 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 121 | 
for_end_1:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	jmp (endif_0)			# LN: 121 | 
cline_121_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_MODE + 0]			# LN: 139 | 
	uhalfword(a1) = (0xdc)			# LN: 139 | 
	a0 - a1			# LN: 139 | 
	if (a != 0) jmp (else_1)			# LN: 139 | 
cline_139_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10)			# LN: 142 | 
	a0 = 0			# LN: 142 | 
	xmem[i0] = a0h			# LN: 142 | 
	do (0x10), label_end_94			# LN: 142 | 
cline_142_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 144 | 
	i1 = i7 - (0xc)			# LN: 144 | 
	i1 = xmem[i1]			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	a0 = xmem[i1]			# LN: 144 | 
	xmem[i0] = a0h			# LN: 144 | 
	i0 = i7 - (0x1)			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	i1 = i7 - (0x1)			# LN: 144 | 
	i0 += 1			# LN: 144 | 
	xmem[i1] = i0			# LN: 144 | 
	i0 = i7 - (0xc)			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	i1 = i7 - (0xc)			# LN: 144 | 
	i0 += 1			# LN: 144 | 
	xmem[i1] = i0			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 145 | 
	i1 = i7 - (0xd)			# LN: 145 | 
	i1 = xmem[i1]			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	a0 = xmem[i1]			# LN: 145 | 
	xmem[i0] = a0h			# LN: 145 | 
	i0 = i7 - (0x2)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	i1 = i7 - (0x2)			# LN: 145 | 
	i0 += 1			# LN: 145 | 
	xmem[i1] = i0			# LN: 145 | 
	i0 = i7 - (0xd)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	i1 = i7 - (0xd)			# LN: 145 | 
	i0 += 1			# LN: 145 | 
	xmem[i1] = i0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 146 | 
	i1 = i7 - (0x8)			# LN: 146 | 
	i1 = xmem[i1]			# LN: 146 | 
	i0 = xmem[i0]			# LN: 146 | 
	a0 = xmem[i1]			# LN: 146 | 
	xmem[i0] = a0h			# LN: 146 | 
	i0 = i7 - (0x3)			# LN: 146 | 
	i0 = xmem[i0]			# LN: 146 | 
	i1 = i7 - (0x3)			# LN: 146 | 
	i0 += 1			# LN: 146 | 
	xmem[i1] = i0			# LN: 146 | 
	i0 = i7 - (0x8)			# LN: 146 | 
	i0 = xmem[i0]			# LN: 146 | 
	i1 = i7 - (0x8)			# LN: 146 | 
	i0 += 1			# LN: 146 | 
	xmem[i1] = i0			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 147 | 
	i1 = i7 - (0x9)			# LN: 147 | 
	i1 = xmem[i1]			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	a0 = xmem[i1]			# LN: 147 | 
	xmem[i0] = a0h			# LN: 147 | 
	i0 = i7 - (0x4)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	i1 = i7 - (0x4)			# LN: 147 | 
	i0 += 1			# LN: 147 | 
	xmem[i1] = i0			# LN: 147 | 
	i0 = i7 - (0x9)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	i1 = i7 - (0x9)			# LN: 147 | 
	i0 += 1			# LN: 147 | 
	xmem[i1] = i0			# LN: 147 | 
cline_147_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10)			# LN: 142 | 
	a0 = xmem[i0]			# LN: 142 | 
	uhalfword(a1) = (0x1)			# LN: 142 | 
	a0 = a0 + a1			# LN: 142 | 
	i0 = i7 - (0x10)			# LN: 142 | 
label_end_94:			# LN: 142 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 142 | 
for_end_2:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	jmp (endif_1)			# LN: 142 | 
cline_142_1:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 151 | 
	a0 = 0			# LN: 151 | 
	xmem[i0] = a0h			# LN: 151 | 
	do (0x10), label_end_95			# LN: 151 | 
cline_151_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 153 | 
	i1 = i7 - (0x6)			# LN: 153 | 
	i1 = xmem[i1]			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	a0 = xmem[i1]			# LN: 153 | 
	xmem[i0] = a0h			# LN: 153 | 
	i0 = i7 - (0x1)			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	i1 = i7 - (0x1)			# LN: 153 | 
	i0 += 1			# LN: 153 | 
	xmem[i1] = i0			# LN: 153 | 
	i0 = i7 - (0x6)			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	i1 = i7 - (0x6)			# LN: 153 | 
	i0 += 1			# LN: 153 | 
	xmem[i1] = i0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 154 | 
	i1 = i7 - (0x7)			# LN: 154 | 
	i1 = xmem[i1]			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	a0 = xmem[i1]			# LN: 154 | 
	xmem[i0] = a0h			# LN: 154 | 
	i0 = i7 - (0x2)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0x2)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
	i0 = i7 - (0x7)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0x7)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 151 | 
	a0 = xmem[i0]			# LN: 151 | 
	uhalfword(a1) = (0x1)			# LN: 151 | 
	a0 = a0 + a1			# LN: 151 | 
	i0 = i7 - (0x11)			# LN: 151 | 
label_end_95:			# LN: 151 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 151 | 
cline_151_1:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_198)			# LN: 158 | 
cline_158_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
__epilogue_198:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x11)			# LN: 159 | 
	i7 -= 1			# LN: 159 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 159, 159 | 
	ret			# LN: 159 | 



_second_order_IIR:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 42 | 
	i7 += 1			# LN: 42 | 
	i7 = i7 + (0x7)			# LN: 42 | 
	i5 = i7 - (0x1)			# LN: 42 | 
	xmem[i5] = a0h			# LN: 42 | 
	i5 = i7 - (0x2)			# LN: 42 | 
	xmem[i5] = i0			# LN: 42 | 
	i0 = i7 - (0x3)			# LN: 42 | 
	xmem[i0] = i1			# LN: 42 | 
	i0 = i7 - (0x4)			# LN: 42 | 
	xmem[i0] = i4			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 43 | 
	a0 = 0			# LN: 43 | 
	xmem[i0] = a0g; i0 += 1			# LN: 43, 43 | 
	xmem[i0] = a0h; i0 += 1			# LN: 43, 43 | 
	xmem[i0] = a0l			# LN: 43 | 
cline_43_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	i1 = i7 - (0x1)			# LN: 45 | 
	x0 = xmem[i0]			# LN: 45 | 
	x1 = xmem[i1]			# LN: 45 | 
	i0 = i7 - (0x7)			# LN: 45 | 
	a0g = xmem[i0]; i0 += 1			# LN: 45, 45 | 
	a0h = xmem[i0]; i0 += 1			# LN: 45, 45 | 
	a0l = xmem[i0]			# LN: 45 | 
	a0 += x0 * x1			# LN: 45 | 
	i0 = i7 - (0x7)			# LN: 45 | 
	xmem[i0] = a0g; i0 += 1			# LN: 45, 45 | 
	xmem[i0] = a0h; i0 += 1			# LN: 45, 45 | 
	xmem[i0] = a0l			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	i1 = i7 - (0x3)			# LN: 46 | 
	i0 += 1			# LN: 46 | 
	x0 = xmem[i0]			# LN: 46 | 
	i0 = xmem[i1]			# LN: 46 | 
	uhalfword(a0) = (0x2)			# LN: 46 | 
	x1 = xmem[i0]			# LN: 46 | 
	b0 = x0 * x1			# LN: 46 | 
	call (__int_to_laccum)			# LN: 46 | 
	a1 =+ b0; b1 =+ a0			# LN: 46, 46 | 
	a0 =+ b1			# LN: 46 | 
	call (__mul_sat_laccum)			# LN: 46 | 
	i0 = i7 - (0x7)			# LN: 46 | 
	a1g = xmem[i0]; i0 += 1			# LN: 46, 46 | 
	a1h = xmem[i0]; i0 += 1			# LN: 46, 46 | 
	a1l = xmem[i0]			# LN: 46 | 
	a0 = a1 + a0			# LN: 46 | 
	i0 = i7 - (0x7)			# LN: 46 | 
	xmem[i0] = a0g; i0 += 1			# LN: 46, 46 | 
	xmem[i0] = a0h; i0 += 1			# LN: 46, 46 | 
	xmem[i0] = a0l			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	i1 = i7 - (0x3)			# LN: 47 | 
	i0 += 2			# LN: 47 | 
	i1 = xmem[i1]			# LN: 47 | 
	x0 = xmem[i0]			# LN: 47 | 
	i1 += 1			# LN: 47 | 
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
	i1 = i7 - (0x4)			# LN: 48 | 
	i0 = i0 + (0x4)			# LN: 48 | 
	x0 = xmem[i0]			# LN: 48 | 
	i0 = xmem[i1]			# LN: 48 | 
	uhalfword(a0) = (0x2)			# LN: 48 | 
	x1 = xmem[i0]			# LN: 48 | 
	b0 = x0 * x1			# LN: 48 | 
	call (__int_to_laccum)			# LN: 48 | 
	a1 =+ b0; b1 =+ a0			# LN: 48, 48 | 
	a0 =+ b1			# LN: 48 | 
	call (__mul_sat_laccum)			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	a1g = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1h = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1l = xmem[i0]			# LN: 48 | 
	a0 = a1 - a0			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	xmem[i0] = a0g; i0 += 1			# LN: 48, 48 | 
	xmem[i0] = a0h; i0 += 1			# LN: 48, 48 | 
	xmem[i0] = a0l			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	i1 = i7 - (0x4)			# LN: 49 | 
	i0 = i0 + (0x5)			# LN: 49 | 
	i1 = xmem[i1]			# LN: 49 | 
	x0 = xmem[i0]			# LN: 49 | 
	i1 += 1			# LN: 49 | 
	x1 = xmem[i1]			# LN: 49 | 
	i0 = i7 - (0x7)			# LN: 49 | 
	a0g = xmem[i0]; i0 += 1			# LN: 49, 49 | 
	a0h = xmem[i0]; i0 += 1			# LN: 49, 49 | 
	a0l = xmem[i0]			# LN: 49 | 
	a0 -= x0 * x1			# LN: 49 | 
	i0 = i7 - (0x7)			# LN: 49 | 
	xmem[i0] = a0g; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0h; i0 += 1			# LN: 49, 49 | 
	xmem[i0] = a0l			# LN: 49 | 
cline_49_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	i1 = i7 - (0x4)			# LN: 51 | 
	i1 = xmem[i1]			# LN: 51 | 
	i0 += 1			# LN: 51 | 
	a0 = xmem[i1]			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 52 | 
	a0g = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	a0h = xmem[i0]; i0 += 1			# LN: 52, 52 | 
	i1 = i7 - (0x4)			# LN: 52 | 
	i1 = xmem[i1]			# LN: 52 | 
	a0l = xmem[i0]			# LN: 52 | 
	xmem[i1] = a0			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	i1 = i7 - (0x3)			# LN: 53 | 
	i1 = xmem[i1]			# LN: 53 | 
	i0 += 1			# LN: 53 | 
	a0 = xmem[i1]			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 54 | 
	i1 = i7 - (0x3)			# LN: 54 | 
	i1 = xmem[i1]			# LN: 54 | 
	a0 = xmem[i0]			# LN: 54 | 
	xmem[i1] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 56 | 
	a0g = xmem[i0]; i0 += 1			# LN: 56, 56 | 
	a0h = xmem[i0]; i0 += 1			# LN: 56, 56 | 
	a0l = xmem[i0]			# LN: 56 | 
	jmp (__epilogue_196)			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
__epilogue_196:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 57 | 
	i7 -= 1			# LN: 57 | 
	ret			# LN: 57 | 
