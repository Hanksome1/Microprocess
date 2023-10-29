                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _T0_isr
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _hall_last_state
                                    112 	.globl _hall_ms
                                    113 	.globl _Display
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable bit register bank
                                    227 ;--------------------------------------------------------
                                    228 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        229 bits:
      000020                        230 	.ds 1
                           008000   231 	b0 = bits[0]
                           008100   232 	b1 = bits[1]
                           008200   233 	b2 = bits[2]
                           008300   234 	b3 = bits[3]
                           008400   235 	b4 = bits[4]
                           008500   236 	b5 = bits[5]
                           008600   237 	b6 = bits[6]
                           008700   238 	b7 = bits[7]
                                    239 ;--------------------------------------------------------
                                    240 ; internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area DSEG    (DATA)
      000021                        243 _hall_ms::
      000021                        244 	.ds 2
      000023                        245 _hall_last_state::
      000023                        246 	.ds 1
      000024                        247 _Display_num_65536_11:
      000024                        248 	.ds 4
      000028                        249 _Display_seg_65536_12:
      000028                        250 	.ds 10
      000032                        251 _Display_seg_decimal_65536_12:
      000032                        252 	.ds 10
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram
                                    255 ;--------------------------------------------------------
                                    256 ;--------------------------------------------------------
                                    257 ; Stack segment in internal ram
                                    258 ;--------------------------------------------------------
                                    259 	.area SSEG
      00003C                        260 __start__stack:
      00003C                        261 	.ds	1
                                    262 
                                    263 ;--------------------------------------------------------
                                    264 ; indirectly addressable internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area ISEG    (DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area IABS    (ABS,DATA)
                                    271 	.area IABS    (ABS,DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; bit data
                                    274 ;--------------------------------------------------------
                                    275 	.area BSEG    (BIT)
                                    276 ;--------------------------------------------------------
                                    277 ; paged external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area PSEG    (PAG,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; uninitialized external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XSEG    (XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XABS    (ABS,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; initialized external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XISEG   (XDATA)
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; interrupt vector
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
      000000                        306 __interrupt_vect:
      000000 02 00 11         [24]  307 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  308 	reti
      000004                        309 	.ds	7
      00000B 02 00 74         [24]  310 	ljmp	_T0_isr
                                    311 ;--------------------------------------------------------
                                    312 ; global & static initialisations
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.area GSFINAL (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.globl __sdcc_gsinit_startup
                                    319 	.globl __sdcc_program_startup
                                    320 	.globl __start__stack
                                    321 	.globl __mcs51_genXINIT
                                    322 	.globl __mcs51_genXRAMCLEAR
                                    323 	.globl __mcs51_genRAMCLEAR
                                    324 ;	./src/main.c:7: int hall_ms = 0;									// counter of the time elapsed
      00006A E4               [12]  325 	clr	a
      00006B F5 21            [12]  326 	mov	_hall_ms,a
      00006D F5 22            [12]  327 	mov	(_hall_ms + 1),a
                                    328 ;	./src/main.c:8: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
      00006F F5 23            [12]  329 	mov	_hall_last_state,a
                                    330 	.area GSFINAL (CODE)
      000071 02 00 0E         [24]  331 	ljmp	__sdcc_program_startup
                                    332 ;--------------------------------------------------------
                                    333 ; Home
                                    334 ;--------------------------------------------------------
                                    335 	.area HOME    (CODE)
                                    336 	.area HOME    (CODE)
      00000E                        337 __sdcc_program_startup:
      00000E 02 00 E3         [24]  338 	ljmp	_main
                                    339 ;	return from main will return to caller
                                    340 ;--------------------------------------------------------
                                    341 ; code
                                    342 ;--------------------------------------------------------
                                    343 	.area CSEG    (CODE)
                                    344 ;------------------------------------------------------------
                                    345 ;Allocation info for local variables in function 'T0_isr'
                                    346 ;------------------------------------------------------------
                                    347 ;	./src/main.c:12: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    348 ;	-----------------------------------------
                                    349 ;	 function T0_isr
                                    350 ;	-----------------------------------------
      000074                        351 _T0_isr:
                           000007   352 	ar7 = 0x07
                           000006   353 	ar6 = 0x06
                           000005   354 	ar5 = 0x05
                           000004   355 	ar4 = 0x04
                           000003   356 	ar3 = 0x03
                           000002   357 	ar2 = 0x02
                           000001   358 	ar1 = 0x01
                           000000   359 	ar0 = 0x00
      000074 C0 20            [24]  360 	push	bits
      000076 C0 E0            [24]  361 	push	acc
      000078 C0 F0            [24]  362 	push	b
      00007A C0 82            [24]  363 	push	dpl
      00007C C0 83            [24]  364 	push	dph
      00007E C0 07            [24]  365 	push	(0+7)
      000080 C0 06            [24]  366 	push	(0+6)
      000082 C0 05            [24]  367 	push	(0+5)
      000084 C0 04            [24]  368 	push	(0+4)
      000086 C0 03            [24]  369 	push	(0+3)
      000088 C0 02            [24]  370 	push	(0+2)
      00008A C0 01            [24]  371 	push	(0+1)
      00008C C0 00            [24]  372 	push	(0+0)
      00008E C0 D0            [24]  373 	push	psw
      000090 75 D0 00         [24]  374 	mov	psw,#0x00
                                    375 ;	./src/main.c:14: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
      000093 75 8C FC         [24]  376 	mov	_TH0,#0xfc
                                    377 ;	./src/main.c:15: TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
      000096 75 8A 18         [24]  378 	mov	_TL0,#0x18
                                    379 ;	./src/main.c:16: hall_ms++; // counting how many time
      000099 05 21            [12]  380 	inc	_hall_ms
      00009B E4               [12]  381 	clr	a
      00009C B5 21 02         [24]  382 	cjne	a,_hall_ms,00118$
      00009F 05 22            [12]  383 	inc	(_hall_ms + 1)
      0000A1                        384 00118$:
                                    385 ;	./src/main.c:17: if( (Hall_In==0) && (hall_last_state==1) ){
      0000A1 20 A4 1C         [24]  386 	jb	_P2_4,00102$
      0000A4 74 01            [12]  387 	mov	a,#0x01
      0000A6 B5 23 17         [24]  388 	cjne	a,_hall_last_state,00102$
                                    389 ;	./src/main.c:18: Display(hall_ms);              // display the value of time
      0000A9 AC 21            [24]  390 	mov	r4,_hall_ms
      0000AB E5 22            [12]  391 	mov	a,(_hall_ms + 1)
      0000AD FD               [12]  392 	mov	r5,a
      0000AE 33               [12]  393 	rlc	a
      0000AF 95 E0            [12]  394 	subb	a,acc
      0000B1 FE               [12]  395 	mov	r6,a
      0000B2 8C 82            [24]  396 	mov	dpl,r4
      0000B4 8D 83            [24]  397 	mov	dph,r5
      0000B6 8E F0            [24]  398 	mov	b,r6
      0000B8 12 00 F9         [24]  399 	lcall	_Display
                                    400 ;	./src/main.c:19: hall_ms=0;                    // reset the timer
      0000BB E4               [12]  401 	clr	a
      0000BC F5 21            [12]  402 	mov	_hall_ms,a
      0000BE F5 22            [12]  403 	mov	(_hall_ms + 1),a
      0000C0                        404 00102$:
                                    405 ;	./src/main.c:22: hall_last_state = Hall_In;       // this is the debounce of the hallsensor
      0000C0 A2 A4            [12]  406 	mov	c,_P2_4
      0000C2 E4               [12]  407 	clr	a
      0000C3 33               [12]  408 	rlc	a
      0000C4 F5 23            [12]  409 	mov	_hall_last_state,a
                                    410 ;	./src/main.c:24: }
      0000C6 D0 D0            [24]  411 	pop	psw
      0000C8 D0 00            [24]  412 	pop	(0+0)
      0000CA D0 01            [24]  413 	pop	(0+1)
      0000CC D0 02            [24]  414 	pop	(0+2)
      0000CE D0 03            [24]  415 	pop	(0+3)
      0000D0 D0 04            [24]  416 	pop	(0+4)
      0000D2 D0 05            [24]  417 	pop	(0+5)
      0000D4 D0 06            [24]  418 	pop	(0+6)
      0000D6 D0 07            [24]  419 	pop	(0+7)
      0000D8 D0 83            [24]  420 	pop	dph
      0000DA D0 82            [24]  421 	pop	dpl
      0000DC D0 F0            [24]  422 	pop	b
      0000DE D0 E0            [24]  423 	pop	acc
      0000E0 D0 20            [24]  424 	pop	bits
      0000E2 32               [24]  425 	reti
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'main'
                                    428 ;------------------------------------------------------------
                                    429 ;	./src/main.c:26: int main(void) {
                                    430 ;	-----------------------------------------
                                    431 ;	 function main
                                    432 ;	-----------------------------------------
      0000E3                        433 _main:
                                    434 ;	./src/main.c:29: TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      0000E3 75 89 01         [24]  435 	mov	_TMOD,#0x01
                                    436 ;	./src/main.c:30: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
      0000E6 75 8C FC         [24]  437 	mov	_TH0,#0xfc
                                    438 ;	./src/main.c:31: TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
      0000E9 75 8A 18         [24]  439 	mov	_TL0,#0x18
                                    440 ;	./src/main.c:32: ET0 = 1;													// Enable Timer 0 interrupt
                                    441 ;	assignBit
      0000EC D2 A9            [12]  442 	setb	_ET0
                                    443 ;	./src/main.c:33: EA = 1;														// Enable all interrupt
                                    444 ;	assignBit
      0000EE D2 AF            [12]  445 	setb	_EA
                                    446 ;	./src/main.c:34: TR0 = 1;													// Start Timer 0
                                    447 ;	assignBit
      0000F0 D2 8C            [12]  448 	setb	_TR0
                                    449 ;	./src/main.c:35: Initial();                  			//MAX7219 initialize
      0000F2 12 02 5D         [24]  450 	lcall	_Initial
                                    451 ;	./src/main.c:37: Hall_In = 1;										// Initialize Hall sensor signal (deactivated)
                                    452 ;	assignBit
      0000F5 D2 A4            [12]  453 	setb	_P2_4
                                    454 ;	./src/main.c:38: while(1);
      0000F7                        455 00102$:
                                    456 ;	./src/main.c:39: }
      0000F7 80 FE            [24]  457 	sjmp	00102$
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'Display'
                                    460 ;------------------------------------------------------------
                                    461 ;num                       Allocated with name '_Display_num_65536_11'
                                    462 ;seg                       Allocated with name '_Display_seg_65536_12'
                                    463 ;seg_decimal               Allocated with name '_Display_seg_decimal_65536_12'
                                    464 ;i                         Allocated to registers r2 r3 
                                    465 ;toprint                   Allocated to registers r5 
                                    466 ;print                     Allocated to registers r4 r5 
                                    467 ;------------------------------------------------------------
                                    468 ;	./src/main.c:41: void Display(long int num) {
                                    469 ;	-----------------------------------------
                                    470 ;	 function Display
                                    471 ;	-----------------------------------------
      0000F9                        472 _Display:
      0000F9 85 82 24         [24]  473 	mov	_Display_num_65536_11,dpl
      0000FC 85 83 25         [24]  474 	mov	(_Display_num_65536_11 + 1),dph
      0000FF 85 F0 26         [24]  475 	mov	(_Display_num_65536_11 + 2),b
      000102 F5 27            [12]  476 	mov	(_Display_num_65536_11 + 3),a
                                    477 ;	./src/main.c:42: unsigned char seg[] = {
      000104 75 28 7E         [24]  478 	mov	_Display_seg_65536_12,#0x7e
      000107 75 29 30         [24]  479 	mov	(_Display_seg_65536_12 + 0x0001),#0x30
      00010A 75 2A 6D         [24]  480 	mov	(_Display_seg_65536_12 + 0x0002),#0x6d
      00010D 75 2B 79         [24]  481 	mov	(_Display_seg_65536_12 + 0x0003),#0x79
      000110 75 2C 33         [24]  482 	mov	(_Display_seg_65536_12 + 0x0004),#0x33
      000113 75 2D 5B         [24]  483 	mov	(_Display_seg_65536_12 + 0x0005),#0x5b
      000116 75 2E 5F         [24]  484 	mov	(_Display_seg_65536_12 + 0x0006),#0x5f
      000119 75 2F 70         [24]  485 	mov	(_Display_seg_65536_12 + 0x0007),#0x70
      00011C 75 30 7F         [24]  486 	mov	(_Display_seg_65536_12 + 0x0008),#0x7f
      00011F 75 31 7B         [24]  487 	mov	(_Display_seg_65536_12 + 0x0009),#0x7b
                                    488 ;	./src/main.c:54: unsigned char seg_decimal[] = {
      000122 75 32 FE         [24]  489 	mov	_Display_seg_decimal_65536_12,#0xfe
      000125 75 33 B0         [24]  490 	mov	(_Display_seg_decimal_65536_12 + 0x0001),#0xb0
      000128 75 34 ED         [24]  491 	mov	(_Display_seg_decimal_65536_12 + 0x0002),#0xed
      00012B 75 35 F9         [24]  492 	mov	(_Display_seg_decimal_65536_12 + 0x0003),#0xf9
      00012E 75 36 B3         [24]  493 	mov	(_Display_seg_decimal_65536_12 + 0x0004),#0xb3
      000131 75 37 DB         [24]  494 	mov	(_Display_seg_decimal_65536_12 + 0x0005),#0xdb
      000134 75 38 DF         [24]  495 	mov	(_Display_seg_decimal_65536_12 + 0x0006),#0xdf
      000137 75 39 F0         [24]  496 	mov	(_Display_seg_decimal_65536_12 + 0x0007),#0xf0
      00013A 75 3A FF         [24]  497 	mov	(_Display_seg_decimal_65536_12 + 0x0008),#0xff
      00013D 75 3B FB         [24]  498 	mov	(_Display_seg_decimal_65536_12 + 0x0009),#0xfb
                                    499 ;	./src/main.c:68: while(num>0){
      000140 7A 00            [12]  500 	mov	r2,#0x00
      000142 7B 00            [12]  501 	mov	r3,#0x00
      000144                        502 00104$:
      000144 C3               [12]  503 	clr	c
      000145 E4               [12]  504 	clr	a
      000146 95 24            [12]  505 	subb	a,_Display_num_65536_11
      000148 E4               [12]  506 	clr	a
      000149 95 25            [12]  507 	subb	a,(_Display_num_65536_11 + 1)
      00014B E4               [12]  508 	clr	a
      00014C 95 26            [12]  509 	subb	a,(_Display_num_65536_11 + 2)
      00014E 74 80            [12]  510 	mov	a,#(0x00 ^ 0x80)
      000150 85 27 F0         [24]  511 	mov	b,(_Display_num_65536_11 + 3)
      000153 63 F0 80         [24]  512 	xrl	b,#0x80
      000156 95 F0            [12]  513 	subb	a,b
      000158 40 03            [24]  514 	jc	00159$
      00015A 02 01 D5         [24]  515 	ljmp	00120$
      00015D                        516 00159$:
                                    517 ;	./src/main.c:69: i++;
      00015D 0A               [12]  518 	inc	r2
      00015E BA 00 01         [24]  519 	cjne	r2,#0x00,00160$
      000161 0B               [12]  520 	inc	r3
      000162                        521 00160$:
                                    522 ;	./src/main.c:70: int print = num%10;
      000162 75 09 0A         [24]  523 	mov	__modslong_PARM_2,#0x0a
      000165 E4               [12]  524 	clr	a
      000166 F5 0A            [12]  525 	mov	(__modslong_PARM_2 + 1),a
      000168 F5 0B            [12]  526 	mov	(__modslong_PARM_2 + 2),a
      00016A F5 0C            [12]  527 	mov	(__modslong_PARM_2 + 3),a
      00016C 85 24 82         [24]  528 	mov	dpl,_Display_num_65536_11
      00016F 85 25 83         [24]  529 	mov	dph,(_Display_num_65536_11 + 1)
      000172 85 26 F0         [24]  530 	mov	b,(_Display_num_65536_11 + 2)
      000175 E5 27            [12]  531 	mov	a,(_Display_num_65536_11 + 3)
      000177 C0 03            [24]  532 	push	ar3
      000179 C0 02            [24]  533 	push	ar2
      00017B 12 03 99         [24]  534 	lcall	__modslong
      00017E AC 82            [24]  535 	mov	r4,dpl
      000180 D0 02            [24]  536 	pop	ar2
      000182 D0 03            [24]  537 	pop	ar3
                                    538 ;	./src/main.c:71: if(i==4){
      000184 BA 04 0B         [24]  539 	cjne	r2,#0x04,00102$
      000187 BB 00 08         [24]  540 	cjne	r3,#0x00,00102$
                                    541 ;	./src/main.c:72: toprint = seg_decimal[print];  // add decimal point at the third number counting from the back
      00018A EC               [12]  542 	mov	a,r4
      00018B 24 32            [12]  543 	add	a,#_Display_seg_decimal_65536_12
      00018D F9               [12]  544 	mov	r1,a
      00018E 87 07            [24]  545 	mov	ar7,@r1
      000190 80 06            [24]  546 	sjmp	00103$
      000192                        547 00102$:
                                    548 ;	./src/main.c:75: toprint = seg[print];       // load the seven_segment code to to print
      000192 EC               [12]  549 	mov	a,r4
      000193 24 28            [12]  550 	add	a,#_Display_seg_65536_12
      000195 F9               [12]  551 	mov	r1,a
      000196 87 07            [24]  552 	mov	ar7,@r1
      000198                        553 00103$:
                                    554 ;	./src/main.c:77: Write7219( i , toprint);
      000198 8A 82            [24]  555 	mov	dpl,r2
      00019A 8F 08            [24]  556 	mov	_Write7219_PARM_2,r7
      00019C C0 03            [24]  557 	push	ar3
      00019E C0 02            [24]  558 	push	ar2
      0001A0 12 02 3E         [24]  559 	lcall	_Write7219
      0001A3 D0 02            [24]  560 	pop	ar2
      0001A5 D0 03            [24]  561 	pop	ar3
                                    562 ;	./src/main.c:78: num /= 10 ;
      0001A7 75 09 0A         [24]  563 	mov	__divslong_PARM_2,#0x0a
      0001AA E4               [12]  564 	clr	a
      0001AB F5 0A            [12]  565 	mov	(__divslong_PARM_2 + 1),a
      0001AD F5 0B            [12]  566 	mov	(__divslong_PARM_2 + 2),a
      0001AF F5 0C            [12]  567 	mov	(__divslong_PARM_2 + 3),a
      0001B1 85 24 82         [24]  568 	mov	dpl,_Display_num_65536_11
      0001B4 85 25 83         [24]  569 	mov	dph,(_Display_num_65536_11 + 1)
      0001B7 85 26 F0         [24]  570 	mov	b,(_Display_num_65536_11 + 2)
      0001BA E5 27            [12]  571 	mov	a,(_Display_num_65536_11 + 3)
      0001BC C0 03            [24]  572 	push	ar3
      0001BE C0 02            [24]  573 	push	ar2
      0001C0 12 03 E8         [24]  574 	lcall	__divslong
      0001C3 85 82 24         [24]  575 	mov	_Display_num_65536_11,dpl
      0001C6 85 83 25         [24]  576 	mov	(_Display_num_65536_11 + 1),dph
      0001C9 85 F0 26         [24]  577 	mov	(_Display_num_65536_11 + 2),b
      0001CC F5 27            [12]  578 	mov	(_Display_num_65536_11 + 3),a
      0001CE D0 02            [24]  579 	pop	ar2
      0001D0 D0 03            [24]  580 	pop	ar3
      0001D2 02 01 44         [24]  581 	ljmp	00104$
                                    582 ;	./src/main.c:80: while(i<4){
      0001D5                        583 00120$:
      0001D5 8A 06            [24]  584 	mov	ar6,r2
      0001D7 8B 07            [24]  585 	mov	ar7,r3
      0001D9                        586 00110$:
      0001D9 C3               [12]  587 	clr	c
      0001DA EE               [12]  588 	mov	a,r6
      0001DB 94 04            [12]  589 	subb	a,#0x04
      0001DD EF               [12]  590 	mov	a,r7
      0001DE 64 80            [12]  591 	xrl	a,#0x80
      0001E0 94 80            [12]  592 	subb	a,#0x80
      0001E2 50 22            [24]  593 	jnc	00113$
                                    594 ;	./src/main.c:81: i++;
      0001E4 0E               [12]  595 	inc	r6
      0001E5 BE 00 01         [24]  596 	cjne	r6,#0x00,00164$
      0001E8 0F               [12]  597 	inc	r7
      0001E9                        598 00164$:
                                    599 ;	./src/main.c:82: if(i==4){
      0001E9 BE 04 07         [24]  600 	cjne	r6,#0x04,00108$
      0001EC BF 00 04         [24]  601 	cjne	r7,#0x00,00108$
                                    602 ;	./src/main.c:83: toprint = seg_decimal[0];   // add decimal point at the third number counting from the back
      0001EF AD 32            [24]  603 	mov	r5,_Display_seg_decimal_65536_12
      0001F1 80 02            [24]  604 	sjmp	00109$
      0001F3                        605 00108$:
                                    606 ;	./src/main.c:86: toprint = seg[0];
      0001F3 AD 28            [24]  607 	mov	r5,_Display_seg_65536_12
      0001F5                        608 00109$:
                                    609 ;	./src/main.c:88: Write7219( i , toprint);
      0001F5 8E 82            [24]  610 	mov	dpl,r6
      0001F7 8D 08            [24]  611 	mov	_Write7219_PARM_2,r5
      0001F9 C0 07            [24]  612 	push	ar7
      0001FB C0 06            [24]  613 	push	ar6
      0001FD 12 02 3E         [24]  614 	lcall	_Write7219
      000200 D0 06            [24]  615 	pop	ar6
      000202 D0 07            [24]  616 	pop	ar7
      000204 80 D3            [24]  617 	sjmp	00110$
      000206                        618 00113$:
                                    619 ;	./src/main.c:90: }
      000206 22               [24]  620 	ret
                                    621 	.area CSEG    (CODE)
                                    622 	.area CONST   (CODE)
                                    623 	.area XINIT   (CODE)
                                    624 	.area CABS    (ABS,CODE)
