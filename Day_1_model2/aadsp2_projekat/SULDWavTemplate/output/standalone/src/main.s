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
	.xdata_ovly
_INITIAL_GAIN
	.dw  (0x0)
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

_main:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 173 | 
	i7 += 1			# LN: 173 | 
	i7 = i7 + (0x20d)			# LN: 173 | 
	i1 = i7 - (0x1)			# LN: 173 | 
	xmem[i1] = a0h			# LN: 173 | 
	i1 = i7 - (0x2)			# LN: 173 | 
	xmem[i1] = i0			# LN: 173 | 
cline_173_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 188 | 
	a0 = 0			# LN: 188 | 
	xmem[i0] = a0h			# LN: 188 | 
	do (0x5), label_end_96			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 189 | 
	a1 = xmem[i0]; a0 = 0			# LN: 189, 189 | 
	a1 = a1 << 4			# LN: 189 | 
	i0 = a1			# LN: 189 | 
	uhalfword(a1) = (0x10)			# LN: 189 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 189 | 
	call (_memset)			# LN: 189 | 
cline_189_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 188 | 
	a0 = xmem[i0]			# LN: 188 | 
	uhalfword(a1) = (0x1)			# LN: 188 | 
	a0 = a0 + a1			# LN: 188 | 
	i0 = i7 - (0x3)			# LN: 188 | 
label_end_96:			# LN: 188 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 188 | 
cline_188_1:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 193 | 
	i0 = xmem[i0]			# LN: 193 | 
	i1 = i7 - (259 - 0)			# LN: 193 | 
	i4 = xmem[i0]			# LN: 193 | 
	i0 = i1			# LN: 193 | 
	i1 = i4			# LN: 193 | 
	call (_strcpy)			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 194 | 
	call (_cl_wavread_open)			# LN: 194 | 
	AnyReg(i0, a0h)			# LN: 194 | 
	i1 = i7 - (0x104)			# LN: 194 | 
	xmem[i1] = i0			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 195 | 
	a0 = xmem[i0]			# LN: 195 | 
	a0 & a0			# LN: 195 | 
	if (a != 0) jmp (else_2)			# LN: 195 | 
cline_195_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 198 | 
	jmp (__epilogue_200)			# LN: 198 | 
cline_198_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 204 | 
	uhalfword(a0) = (0x5)			# LN: 204 | 
	xmem[i0] = a0h			# LN: 204 | 
cline_204_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 205 | 
	i0 = xmem[i0]			# LN: 205 | 
	call (_cl_wavread_bits_per_sample)			# LN: 205 | 
	i0 = i7 - (0x106)			# LN: 205 | 
	xmem[i0] = a0h			# LN: 205 | 
cline_205_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 206 | 
	i0 = xmem[i0]			# LN: 206 | 
	call (_cl_wavread_frame_rate)			# LN: 206 | 
	i0 = i7 - (0x107)			# LN: 206 | 
	xmem[i0] = a0h			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 207 | 
	i0 = xmem[i0]			# LN: 207 | 
	call (_cl_wavread_number_of_frames)			# LN: 207 | 
	i0 = i7 - (0x108)			# LN: 207 | 
	xmem[i0] = a0h			# LN: 207 | 
cline_207_0:			/* LN: 212 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 212 | 
	i0 = xmem[i0]			# LN: 212 | 
	i1 = i7 - (520 - 0)			# LN: 212 | 
	i0 += 1			# LN: 212 | 
	i4 = xmem[i0]			# LN: 212 | 
	i0 = i1			# LN: 212 | 
	i1 = i4			# LN: 212 | 
	call (_strcpy)			# LN: 212 | 
cline_212_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 213 | 
	i1 = i7 - (0x106)			# LN: 213 | 
	a0 = xmem[i1]			# LN: 213 | 
	i1 = i7 - (0x105)			# LN: 213 | 
	a1 = xmem[i1]			# LN: 213 | 
	i1 = i7 - (0x107)			# LN: 213 | 
	b0 = xmem[i1]			# LN: 213 | 
	call (_cl_wavwrite_open)			# LN: 213 | 
	AnyReg(i0, a0h)			# LN: 213 | 
	i1 = i7 - (0x209)			# LN: 213 | 
	xmem[i1] = i0			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 214 | 
	a0 = xmem[i0]			# LN: 214 | 
	a0 & a0			# LN: 214 | 
	if (a != 0) jmp (else_3)			# LN: 214 | 
cline_214_0:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 217 | 
	jmp (__epilogue_200)			# LN: 217 | 
cline_217_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 230 | 
	a0 = 0			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
for_5:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 230 | 
	a0 = xmem[i0]			# LN: 230 | 
	uhalfword(a1) = (0x10)			# LN: 230 | 
	call (__div)			# LN: 230 | 
	i0 = i7 - (0x20a)			# LN: 230 | 
	a1 = xmem[i0]			# LN: 230 | 
	a1 - a0			# LN: 230 | 
	if (a >= 0) jmp (for_end_5)			# LN: 230 | 
cline_230_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 232 | 
	a0 = 0			# LN: 232 | 
	xmem[i0] = a0h			# LN: 232 | 
	do (0x10), label_end_97			# LN: 232 | 
cline_232_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = 0			# LN: 234 | 
	xmem[i0] = a0h			# LN: 234 | 
for_7:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	i0 = i7 - (0x105)			# LN: 234 | 
	a1 = xmem[i0]			# LN: 234 | 
	a0 - a1			# LN: 234 | 
	if (a >= 0) jmp (for_end_7)			# LN: 234 | 
cline_234_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 236 | 
	i0 = xmem[i0]			# LN: 236 | 
	call (_cl_wavread_recvsample)			# LN: 236 | 
	i0 = i7 - (0x20d)			# LN: 236 | 
	xmem[i0] = a0h			# LN: 236 | 
cline_236_0:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 237 | 
	a0 = xmem[i0]			# LN: 237 | 
	a0 = a0 << 4			# LN: 237 | 
	i0 = a0			# LN: 237 | 
	i1 = i7 - (0x20b)			# LN: 237 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 237 | 
	a0 = xmem[i1]			# LN: 237 | 
	a1 = i0			# LN: 237 | 
	a0 = a1 + a0			# LN: 237 | 
	AnyReg(i0, a0h)			# LN: 237 | 
	i1 = i7 - (0x20d)			# LN: 237 | 
	a0 = xmem[i1]			# LN: 237 | 
	xmem[i0] = a0h			# LN: 237 | 
cline_237_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 234 | 
	a0 = xmem[i0]			# LN: 234 | 
	uhalfword(a1) = (0x1)			# LN: 234 | 
	a0 = a0 + a1			# LN: 234 | 
	i0 = i7 - (0x20c)			# LN: 234 | 
	xmem[i0] = a0h			# LN: 234 | 
	jmp (for_7)			# LN: 234 | 
cline_234_1:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 232 | 
	a0 = xmem[i0]			# LN: 232 | 
	uhalfword(a1) = (0x1)			# LN: 232 | 
	a0 = a0 + a1			# LN: 232 | 
	i0 = i7 - (0x20b)			# LN: 232 | 
label_end_97:			# LN: 232 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 232 | 
cline_232_1:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 241 | 
cline_241_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 243 | 
	a0 = 0			# LN: 243 | 
	xmem[i0] = a0h			# LN: 243 | 
	do (0x10), label_end_98			# LN: 243 | 
cline_243_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 245 | 
	a0 = 0			# LN: 245 | 
	xmem[i0] = a0h			# LN: 245 | 
for_9:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 245 | 
	a0 = xmem[i0]			# LN: 245 | 
	i0 = i7 - (0x105)			# LN: 245 | 
	a1 = xmem[i0]			# LN: 245 | 
	a0 - a1			# LN: 245 | 
	if (a >= 0) jmp (for_end_9)			# LN: 245 | 
cline_245_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 247 | 
	a0 = xmem[i0]			# LN: 247 | 
	a0 = a0 << 4			# LN: 247 | 
	i0 = a0			# LN: 247 | 
	i1 = i7 - (0x20b)			# LN: 247 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 247 | 
	a0 = xmem[i1]			# LN: 247 | 
	a1 = i0			# LN: 247 | 
	a0 = a1 + a0			# LN: 247 | 
	AnyReg(i0, a0h)			# LN: 247 | 
	i1 = i7 - (0x20d)			# LN: 247 | 
	a0 = xmem[i0]			# LN: 247 | 
	xmem[i1] = a0h			# LN: 247 | 
cline_247_0:			/* LN: 248 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 248 | 
	i1 = i7 - (0x20d)			# LN: 248 | 
	a0 = xmem[i1]			# LN: 248 | 
	i0 = xmem[i0]			# LN: 248 | 
	call (_cl_wavwrite_sendsample)			# LN: 248 | 
cline_248_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 245 | 
	a0 = xmem[i0]			# LN: 245 | 
	uhalfword(a1) = (0x1)			# LN: 245 | 
	a0 = a0 + a1			# LN: 245 | 
	i0 = i7 - (0x20c)			# LN: 245 | 
	xmem[i0] = a0h			# LN: 245 | 
	jmp (for_9)			# LN: 245 | 
cline_245_1:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 250 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 243 | 
	a0 = xmem[i0]			# LN: 243 | 
	uhalfword(a1) = (0x1)			# LN: 243 | 
	a0 = a0 + a1			# LN: 243 | 
	i0 = i7 - (0x20b)			# LN: 243 | 
label_end_98:			# LN: 243 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 243 | 
cline_243_1:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 251 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 230 | 
	a0 = xmem[i0]			# LN: 230 | 
	uhalfword(a1) = (0x1)			# LN: 230 | 
	a0 = a0 + a1			# LN: 230 | 
	i0 = i7 - (0x20a)			# LN: 230 | 
	xmem[i0] = a0h			# LN: 230 | 
	jmp (for_5)			# LN: 230 | 
cline_230_1:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 256 | 
	i0 = xmem[i0]			# LN: 256 | 
	call (_cl_wavread_close)			# LN: 256 | 
cline_256_0:			/* LN: 257 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 257 | 
	i0 = xmem[i0]			# LN: 257 | 
	call (_cl_wavwrite_close)			# LN: 257 | 
cline_257_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 260 | 
	jmp (__epilogue_200)			# LN: 260 | 
cline_260_0:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
__epilogue_200:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 261 | 
	i7 -= 1			# LN: 261 | 
	ret			# LN: 261 | 



_processing:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 59 | 
	i7 += 1			# LN: 59 | 
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
	i5 = (0) + (_y_history0)			# LN: 86 | 
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
	i0 = i7 - (0xc)			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	i1 = i7 - (0x1)			# LN: 144 | 
	i1 = xmem[i1]			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	xmem[i1] = a0h			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	i1 = i7 - (0x2)			# LN: 145 | 
	i1 = xmem[i1]			# LN: 145 | 
	a0 = xmem[i0]			# LN: 145 | 
	xmem[i1] = a0h			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 146 | 
	i0 = xmem[i0]			# LN: 146 | 
	i1 = i7 - (0x3)			# LN: 146 | 
	i1 = xmem[i1]			# LN: 146 | 
	a0 = xmem[i0]			# LN: 146 | 
	xmem[i1] = a0h			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	i1 = i7 - (0x4)			# LN: 147 | 
	i1 = xmem[i1]			# LN: 147 | 
	a0 = xmem[i0]			# LN: 147 | 
	xmem[i1] = a0h			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	i1 = i7 - (0x1)			# LN: 148 | 
	i0 += 1			# LN: 148 | 
	xmem[i1] = i0			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 149 | 
	i0 = xmem[i0]			# LN: 149 | 
	i1 = i7 - (0x2)			# LN: 149 | 
	i0 += 1			# LN: 149 | 
	xmem[i1] = i0			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 150 | 
	i0 = xmem[i0]			# LN: 150 | 
	i1 = i7 - (0x3)			# LN: 150 | 
	i0 += 1			# LN: 150 | 
	xmem[i1] = i0			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 151 | 
	i0 = xmem[i0]			# LN: 151 | 
	i1 = i7 - (0x4)			# LN: 151 | 
	i0 += 1			# LN: 151 | 
	xmem[i1] = i0			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 152 | 
	i0 = xmem[i0]			# LN: 152 | 
	i1 = i7 - (0xc)			# LN: 152 | 
	i0 += 1			# LN: 152 | 
	xmem[i1] = i0			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	i1 = i7 - (0xd)			# LN: 153 | 
	i0 += 1			# LN: 153 | 
	xmem[i1] = i0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0x8)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	i1 = i7 - (0x9)			# LN: 155 | 
	i0 += 1			# LN: 155 | 
	xmem[i1] = i0			# LN: 155 | 
cline_155_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10)			# LN: 142 | 
	a0 = xmem[i0]			# LN: 142 | 
	uhalfword(a1) = (0x1)			# LN: 142 | 
	a0 = a0 + a1			# LN: 142 | 
	i0 = i7 - (0x10)			# LN: 142 | 
label_end_94:			# LN: 142 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 142 | 
for_end_2:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	jmp (endif_1)			# LN: 142 | 
cline_142_1:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 159 | 
	a0 = 0			# LN: 159 | 
	xmem[i0] = a0h			# LN: 159 | 
	do (0x10), label_end_95			# LN: 159 | 
cline_159_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 161 | 
	i1 = i7 - (0x6)			# LN: 161 | 
	i1 = xmem[i1]			# LN: 161 | 
	i0 = xmem[i0]			# LN: 161 | 
	a0 = xmem[i1]			# LN: 161 | 
	xmem[i0] = a0h			# LN: 161 | 
	i0 = i7 - (0x1)			# LN: 161 | 
	i0 = xmem[i0]			# LN: 161 | 
	i1 = i7 - (0x1)			# LN: 161 | 
	i0 += 1			# LN: 161 | 
	xmem[i1] = i0			# LN: 161 | 
cline_161_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 162 | 
	i1 = i7 - (0x7)			# LN: 162 | 
	i1 = xmem[i1]			# LN: 162 | 
	i0 = xmem[i0]			# LN: 162 | 
	a0 = xmem[i1]			# LN: 162 | 
	xmem[i0] = a0h			# LN: 162 | 
	i0 = i7 - (0x2)			# LN: 162 | 
	i0 = xmem[i0]			# LN: 162 | 
	i1 = i7 - (0x2)			# LN: 162 | 
	i0 += 1			# LN: 162 | 
	xmem[i1] = i0			# LN: 162 | 
cline_162_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 163 | 
	i0 = xmem[i0]			# LN: 163 | 
	i1 = i7 - (0x1)			# LN: 163 | 
	i0 += 1			# LN: 163 | 
	xmem[i1] = i0			# LN: 163 | 
cline_163_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 164 | 
	i0 = xmem[i0]			# LN: 164 | 
	i1 = i7 - (0x2)			# LN: 164 | 
	i0 += 1			# LN: 164 | 
	xmem[i1] = i0			# LN: 164 | 
cline_164_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 165 | 
	i0 = xmem[i0]			# LN: 165 | 
	i1 = i7 - (0x6)			# LN: 165 | 
	i0 += 1			# LN: 165 | 
	xmem[i1] = i0			# LN: 165 | 
cline_165_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 166 | 
	i0 = xmem[i0]			# LN: 166 | 
	i1 = i7 - (0x7)			# LN: 166 | 
	i0 += 1			# LN: 166 | 
	xmem[i1] = i0			# LN: 166 | 
cline_166_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x11)			# LN: 159 | 
	a0 = xmem[i0]			# LN: 159 | 
	uhalfword(a1) = (0x1)			# LN: 159 | 
	a0 = a0 + a1			# LN: 159 | 
	i0 = i7 - (0x11)			# LN: 159 | 
label_end_95:			# LN: 159 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 159 | 
cline_159_1:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_198)			# LN: 170 | 
cline_170_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
__epilogue_198:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x11)			# LN: 171 | 
	i7 -= 1			# LN: 171 | 
	ret			# LN: 171 | 



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
	i1 = xmem[i1]			# LN: 46 | 
	x0 = xmem[i0]			# LN: 46 | 
	x1 = xmem[i1]			# LN: 46 | 
	i0 = i7 - (0x7)			# LN: 46 | 
	a0g = xmem[i0]; i0 += 1			# LN: 46, 46 | 
	a1 = x0 * x1			# LN: 46 | 
	a0h = xmem[i0]; i0 += 1			# LN: 46, 46 | 
	a1 = a1 << 1			# LN: 46 | 
	a0l = xmem[i0]			# LN: 46 | 
	a0 = a0 + a1			# LN: 46 | 
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
	i1 = xmem[i1]			# LN: 48 | 
	x0 = xmem[i0]			# LN: 48 | 
	x1 = xmem[i1]			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	a0g = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1 = x0 * x1			# LN: 48 | 
	a0h = xmem[i0]; i0 += 1			# LN: 48, 48 | 
	a1 = a1 << 1			# LN: 48 | 
	a0l = xmem[i0]			# LN: 48 | 
	a0 = a0 - a1			# LN: 48 | 
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
