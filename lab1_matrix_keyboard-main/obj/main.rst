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
                                     12 	.globl _delay_ms
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; Stack segment in internal ram
                                    229 ;--------------------------------------------------------
                                    230 	.area SSEG
      000008                        231 __start__stack:
      000008                        232 	.ds	1
                                    233 
                                    234 ;--------------------------------------------------------
                                    235 ; indirectly addressable internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area ISEG    (DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; absolute internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area IABS    (ABS,DATA)
                                    242 	.area IABS    (ABS,DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; bit data
                                    245 ;--------------------------------------------------------
                                    246 	.area BSEG    (BIT)
                                    247 ;--------------------------------------------------------
                                    248 ; paged external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area PSEG    (PAG,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; uninitialized external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XSEG    (XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XABS    (ABS,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; initialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XISEG   (XDATA)
                                    263 	.area HOME    (CODE)
                                    264 	.area GSINIT0 (CODE)
                                    265 	.area GSINIT1 (CODE)
                                    266 	.area GSINIT2 (CODE)
                                    267 	.area GSINIT3 (CODE)
                                    268 	.area GSINIT4 (CODE)
                                    269 	.area GSINIT5 (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area CSEG    (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; interrupt vector
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
      000000                        277 __interrupt_vect:
      000000 02 00 06         [24]  278 	ljmp	__sdcc_gsinit_startup
                                    279 ;--------------------------------------------------------
                                    280 ; global & static initialisations
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.globl __sdcc_gsinit_startup
                                    287 	.globl __sdcc_program_startup
                                    288 	.globl __start__stack
                                    289 	.globl __mcs51_genXINIT
                                    290 	.globl __mcs51_genXRAMCLEAR
                                    291 	.globl __mcs51_genRAMCLEAR
                                    292 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  293 	ljmp	__sdcc_program_startup
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
      000003                        299 __sdcc_program_startup:
      000003 02 00 62         [24]  300 	ljmp	_main
                                    301 ;	return from main will return to caller
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'main'
                                    308 ;------------------------------------------------------------
                                    309 ;patt                      Allocated to registers r7 
                                    310 ;prebut1                   Allocated to registers r6 
                                    311 ;prebut2                   Allocated to registers r5 
                                    312 ;prebut3                   Allocated to registers r4 
                                    313 ;time                      Allocated to registers r1 r2 
                                    314 ;shift_two                 Allocated to registers r3 
                                    315 ;------------------------------------------------------------
                                    316 ;	./src/main.c:12: void main(void)
                                    317 ;	-----------------------------------------
                                    318 ;	 function main
                                    319 ;	-----------------------------------------
      000062                        320 _main:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	./src/main.c:14: unsigned char patt = 0x80;
      000062 7F 80            [12]  330 	mov	r7,#0x80
                                    331 ;	./src/main.c:15: unsigned int prebut1 = 1;
      000064 7E 01            [12]  332 	mov	r6,#0x01
                                    333 ;	./src/main.c:16: unsigned int prebut2 = 1;
      000066 7D 01            [12]  334 	mov	r5,#0x01
                                    335 ;	./src/main.c:17: unsigned int prebut3 = 1;
      000068 7C 01            [12]  336 	mov	r4,#0x01
                                    337 ;	./src/main.c:18: but1 = 1;
                                    338 ;	assignBit
      00006A D2 A2            [12]  339 	setb	_P2_2
                                    340 ;	./src/main.c:19: but2 = 1;
                                    341 ;	assignBit
      00006C D2 A3            [12]  342 	setb	_P2_3
                                    343 ;	./src/main.c:20: but3 = 1;
                                    344 ;	assignBit
      00006E D2 A4            [12]  345 	setb	_P2_4
                                    346 ;	./src/main.c:23: while(1){
      000070                        347 00173$:
                                    348 ;	./src/main.c:25: o1 = 0; o2 = 1; o3 = 1; // selecting the output line
                                    349 ;	assignBit
      000070 C2 A5            [12]  350 	clr	_P2_5
                                    351 ;	assignBit
      000072 D2 A6            [12]  352 	setb	_P2_6
                                    353 ;	assignBit
      000074 D2 A7            [12]  354 	setb	_P2_7
                                    355 ;	./src/main.c:26: if(( but1==0 )&&( prebut1==1 )){
      000076 20 A2 59         [24]  356 	jb	_P2_2,00111$
      000079 BE 01 56         [24]  357 	cjne	r6,#0x01,00111$
                                    358 ;	./src/main.c:28: delay_ms(10);
      00007C 90 00 0A         [24]  359 	mov	dptr,#0x000a
      00007F C0 07            [24]  360 	push	ar7
      000081 C0 05            [24]  361 	push	ar5
      000083 C0 04            [24]  362 	push	ar4
      000085 12 02 98         [24]  363 	lcall	_delay_ms
      000088 D0 04            [24]  364 	pop	ar4
      00008A D0 05            [24]  365 	pop	ar5
      00008C D0 07            [24]  366 	pop	ar7
                                    367 ;	./src/main.c:29: if(but1==0){
      00008E 20 A2 41         [24]  368 	jb	_P2_2,00111$
                                    369 ;	./src/main.c:30: patt = patt >> 1;
      000091 EF               [12]  370 	mov	a,r7
      000092 C3               [12]  371 	clr	c
      000093 13               [12]  372 	rrc	a
                                    373 ;	./src/main.c:31: if(patt == 0x00)	// reset
      000094 FF               [12]  374 	mov	r7,a
      000095 70 02            [24]  375 	jnz	00102$
                                    376 ;	./src/main.c:32: patt = 0x80;
      000097 7F 80            [12]  377 	mov	r7,#0x80
      000099                        378 00102$:
                                    379 ;	./src/main.c:33: led = ~patt;
      000099 EF               [12]  380 	mov	a,r7
      00009A F4               [12]  381 	cpl	a
      00009B F5 90            [12]  382 	mov	_P1,a
                                    383 ;	./src/main.c:34: delay_ms(800);
      00009D 90 03 20         [24]  384 	mov	dptr,#0x0320
      0000A0 C0 07            [24]  385 	push	ar7
      0000A2 C0 05            [24]  386 	push	ar5
      0000A4 C0 04            [24]  387 	push	ar4
      0000A6 12 02 98         [24]  388 	lcall	_delay_ms
      0000A9 D0 04            [24]  389 	pop	ar4
      0000AB D0 05            [24]  390 	pop	ar5
      0000AD D0 07            [24]  391 	pop	ar7
                                    392 ;	./src/main.c:35: while(but1==0){
      0000AF                        393 00105$:
      0000AF 20 A2 20         [24]  394 	jb	_P2_2,00111$
                                    395 ;	./src/main.c:36: patt = patt >> 1;
      0000B2 EF               [12]  396 	mov	a,r7
      0000B3 C3               [12]  397 	clr	c
      0000B4 13               [12]  398 	rrc	a
                                    399 ;	./src/main.c:37: if(patt == 0x00)	// reset
      0000B5 FF               [12]  400 	mov	r7,a
      0000B6 70 02            [24]  401 	jnz	00104$
                                    402 ;	./src/main.c:38: patt = 0x80;
      0000B8 7F 80            [12]  403 	mov	r7,#0x80
      0000BA                        404 00104$:
                                    405 ;	./src/main.c:39: led = ~patt;
      0000BA EF               [12]  406 	mov	a,r7
      0000BB F4               [12]  407 	cpl	a
      0000BC F5 90            [12]  408 	mov	_P1,a
                                    409 ;	./src/main.c:40: delay_ms(50);
      0000BE 90 00 32         [24]  410 	mov	dptr,#0x0032
      0000C1 C0 07            [24]  411 	push	ar7
      0000C3 C0 05            [24]  412 	push	ar5
      0000C5 C0 04            [24]  413 	push	ar4
      0000C7 12 02 98         [24]  414 	lcall	_delay_ms
      0000CA D0 04            [24]  415 	pop	ar4
      0000CC D0 05            [24]  416 	pop	ar5
      0000CE D0 07            [24]  417 	pop	ar7
      0000D0 80 DD            [24]  418 	sjmp	00105$
      0000D2                        419 00111$:
                                    420 ;	./src/main.c:44: prebut1=but1; // debounce
      0000D2 A2 A2            [12]  421 	mov	c,_P2_2
      0000D4 E4               [12]  422 	clr	a
      0000D5 33               [12]  423 	rlc	a
      0000D6 FE               [12]  424 	mov	r6,a
                                    425 ;	./src/main.c:45: if(but2==0){
      0000D7 20 A3 05         [24]  426 	jb	_P2_3,00114$
                                    427 ;	./src/main.c:46: patt = 0x01 ;
      0000DA 7F 01            [12]  428 	mov	r7,#0x01
                                    429 ;	./src/main.c:47: led = ~patt ;
      0000DC 75 90 FE         [24]  430 	mov	_P1,#0xfe
      0000DF                        431 00114$:
                                    432 ;	./src/main.c:49: if(but3==0){
      0000DF 20 A4 05         [24]  433 	jb	_P2_4,00116$
                                    434 ;	./src/main.c:50: patt = 0x02 ;
      0000E2 7F 02            [12]  435 	mov	r7,#0x02
                                    436 ;	./src/main.c:51: led = ~patt ;
      0000E4 75 90 FD         [24]  437 	mov	_P1,#0xfd
      0000E7                        438 00116$:
                                    439 ;	./src/main.c:53: delay_ms(10);
      0000E7 90 00 0A         [24]  440 	mov	dptr,#0x000a
      0000EA C0 07            [24]  441 	push	ar7
      0000EC C0 06            [24]  442 	push	ar6
      0000EE C0 05            [24]  443 	push	ar5
      0000F0 C0 04            [24]  444 	push	ar4
      0000F2 12 02 98         [24]  445 	lcall	_delay_ms
      0000F5 D0 04            [24]  446 	pop	ar4
      0000F7 D0 05            [24]  447 	pop	ar5
      0000F9 D0 06            [24]  448 	pop	ar6
      0000FB D0 07            [24]  449 	pop	ar7
                                    450 ;	./src/main.c:55: o1 = 1; o2 = 0; o3 = 1; // selecting the output line;
                                    451 ;	assignBit
      0000FD D2 A5            [12]  452 	setb	_P2_5
                                    453 ;	assignBit
      0000FF C2 A6            [12]  454 	clr	_P2_6
                                    455 ;	assignBit
      000101 D2 A7            [12]  456 	setb	_P2_7
                                    457 ;	./src/main.c:56: if(but1==0){
      000103 20 A2 05         [24]  458 	jb	_P2_2,00118$
                                    459 ;	./src/main.c:57: patt = 0x04 ;
      000106 7F 04            [12]  460 	mov	r7,#0x04
                                    461 ;	./src/main.c:58: led = ~patt ;
      000108 75 90 FB         [24]  462 	mov	_P1,#0xfb
      00010B                        463 00118$:
                                    464 ;	./src/main.c:61: if(( but2==0 )&&( prebut2==1 )){
      00010B 20 A3 5B         [24]  465 	jb	_P2_3,00129$
      00010E BD 01 58         [24]  466 	cjne	r5,#0x01,00129$
                                    467 ;	./src/main.c:63: delay_ms(10);
      000111 90 00 0A         [24]  468 	mov	dptr,#0x000a
      000114 C0 07            [24]  469 	push	ar7
      000116 C0 06            [24]  470 	push	ar6
      000118 C0 04            [24]  471 	push	ar4
      00011A 12 02 98         [24]  472 	lcall	_delay_ms
      00011D D0 04            [24]  473 	pop	ar4
      00011F D0 06            [24]  474 	pop	ar6
      000121 D0 07            [24]  475 	pop	ar7
                                    476 ;	./src/main.c:64: if(but2==0){
      000123 20 A3 43         [24]  477 	jb	_P2_3,00129$
                                    478 ;	./src/main.c:65: patt = patt << 1;
      000126 8F 03            [24]  479 	mov	ar3,r7
      000128 EB               [12]  480 	mov	a,r3
      000129 2B               [12]  481 	add	a,r3
                                    482 ;	./src/main.c:66: if(patt == 0x00)
      00012A FF               [12]  483 	mov	r7,a
      00012B 70 02            [24]  484 	jnz	00120$
                                    485 ;	./src/main.c:67: patt = 0x01;
      00012D 7F 01            [12]  486 	mov	r7,#0x01
      00012F                        487 00120$:
                                    488 ;	./src/main.c:68: led = ~patt;
      00012F EF               [12]  489 	mov	a,r7
      000130 F4               [12]  490 	cpl	a
      000131 F5 90            [12]  491 	mov	_P1,a
                                    492 ;	./src/main.c:69: delay_ms(800);
      000133 90 03 20         [24]  493 	mov	dptr,#0x0320
      000136 C0 07            [24]  494 	push	ar7
      000138 C0 06            [24]  495 	push	ar6
      00013A C0 04            [24]  496 	push	ar4
      00013C 12 02 98         [24]  497 	lcall	_delay_ms
      00013F D0 04            [24]  498 	pop	ar4
      000141 D0 06            [24]  499 	pop	ar6
      000143 D0 07            [24]  500 	pop	ar7
                                    501 ;	./src/main.c:70: while(but2==0){
      000145                        502 00123$:
      000145 20 A3 21         [24]  503 	jb	_P2_3,00129$
                                    504 ;	./src/main.c:71: patt = patt << 1;
      000148 8F 03            [24]  505 	mov	ar3,r7
      00014A EB               [12]  506 	mov	a,r3
      00014B 2B               [12]  507 	add	a,r3
                                    508 ;	./src/main.c:72: if(patt == 0x00)
      00014C FF               [12]  509 	mov	r7,a
      00014D 70 02            [24]  510 	jnz	00122$
                                    511 ;	./src/main.c:73: patt = 0x01;
      00014F 7F 01            [12]  512 	mov	r7,#0x01
      000151                        513 00122$:
                                    514 ;	./src/main.c:74: led = ~patt;
      000151 EF               [12]  515 	mov	a,r7
      000152 F4               [12]  516 	cpl	a
      000153 F5 90            [12]  517 	mov	_P1,a
                                    518 ;	./src/main.c:75: delay_ms(50);
      000155 90 00 32         [24]  519 	mov	dptr,#0x0032
      000158 C0 07            [24]  520 	push	ar7
      00015A C0 06            [24]  521 	push	ar6
      00015C C0 04            [24]  522 	push	ar4
      00015E 12 02 98         [24]  523 	lcall	_delay_ms
      000161 D0 04            [24]  524 	pop	ar4
      000163 D0 06            [24]  525 	pop	ar6
      000165 D0 07            [24]  526 	pop	ar7
      000167 80 DC            [24]  527 	sjmp	00123$
      000169                        528 00129$:
                                    529 ;	./src/main.c:79: prebut2=but2; // debounce
      000169 A2 A3            [12]  530 	mov	c,_P2_3
      00016B E4               [12]  531 	clr	a
      00016C 33               [12]  532 	rlc	a
      00016D FD               [12]  533 	mov	r5,a
                                    534 ;	./src/main.c:80: if(but3==0){
      00016E 20 A4 05         [24]  535 	jb	_P2_4,00132$
                                    536 ;	./src/main.c:81: patt = 0x010;
      000171 7F 10            [12]  537 	mov	r7,#0x10
                                    538 ;	./src/main.c:82: led = ~patt ;
      000173 75 90 EF         [24]  539 	mov	_P1,#0xef
      000176                        540 00132$:
                                    541 ;	./src/main.c:84: delay_ms(10);
      000176 90 00 0A         [24]  542 	mov	dptr,#0x000a
      000179 C0 07            [24]  543 	push	ar7
      00017B C0 06            [24]  544 	push	ar6
      00017D C0 05            [24]  545 	push	ar5
      00017F C0 04            [24]  546 	push	ar4
      000181 12 02 98         [24]  547 	lcall	_delay_ms
      000184 D0 04            [24]  548 	pop	ar4
      000186 D0 05            [24]  549 	pop	ar5
      000188 D0 06            [24]  550 	pop	ar6
      00018A D0 07            [24]  551 	pop	ar7
                                    552 ;	./src/main.c:86: o1 = 1; o2 = 1; o3 = 0; // selecting the output line;
                                    553 ;	assignBit
      00018C D2 A5            [12]  554 	setb	_P2_5
                                    555 ;	assignBit
      00018E D2 A6            [12]  556 	setb	_P2_6
                                    557 ;	assignBit
      000190 C2 A7            [12]  558 	clr	_P2_7
                                    559 ;	./src/main.c:87: if(but1==0){
      000192 20 A2 05         [24]  560 	jb	_P2_2,00134$
                                    561 ;	./src/main.c:88: patt = 0x20;
      000195 7F 20            [12]  562 	mov	r7,#0x20
                                    563 ;	./src/main.c:89: led = ~patt ;
      000197 75 90 DF         [24]  564 	mov	_P1,#0xdf
      00019A                        565 00134$:
                                    566 ;	./src/main.c:91: if(but2==0){
      00019A 20 A3 05         [24]  567 	jb	_P2_3,00136$
                                    568 ;	./src/main.c:92: patt = 0x40;
      00019D 7F 40            [12]  569 	mov	r7,#0x40
                                    570 ;	./src/main.c:93: led = ~patt ;
      00019F 75 90 BF         [24]  571 	mov	_P1,#0xbf
      0001A2                        572 00136$:
                                    573 ;	./src/main.c:95: if( (but3==0) && (prebut3==1)){
      0001A2 30 A4 03         [24]  574 	jnb	_P2_4,00413$
      0001A5 02 02 7A         [24]  575 	ljmp	00170$
      0001A8                        576 00413$:
      0001A8 BC 01 02         [24]  577 	cjne	r4,#0x01,00414$
      0001AB 80 03            [24]  578 	sjmp	00415$
      0001AD                        579 00414$:
      0001AD 02 02 7A         [24]  580 	ljmp	00170$
      0001B0                        581 00415$:
                                    582 ;	./src/main.c:96: delay_ms(10);
      0001B0 90 00 0A         [24]  583 	mov	dptr,#0x000a
      0001B3 C0 07            [24]  584 	push	ar7
      0001B5 C0 06            [24]  585 	push	ar6
      0001B7 C0 05            [24]  586 	push	ar5
      0001B9 12 02 98         [24]  587 	lcall	_delay_ms
      0001BC D0 05            [24]  588 	pop	ar5
      0001BE D0 06            [24]  589 	pop	ar6
      0001C0 D0 07            [24]  590 	pop	ar7
                                    591 ;	./src/main.c:97: if(but3==0){ //check for fast double press
      0001C2 30 A4 03         [24]  592 	jnb	_P2_4,00416$
      0001C5 02 02 7A         [24]  593 	ljmp	00170$
      0001C8                        594 00416$:
                                    595 ;	./src/main.c:98: delay_ms(100);
      0001C8 90 00 64         [24]  596 	mov	dptr,#0x0064
      0001CB C0 07            [24]  597 	push	ar7
      0001CD C0 06            [24]  598 	push	ar6
      0001CF C0 05            [24]  599 	push	ar5
      0001D1 12 02 98         [24]  600 	lcall	_delay_ms
      0001D4 D0 05            [24]  601 	pop	ar5
      0001D6 D0 06            [24]  602 	pop	ar6
      0001D8 D0 07            [24]  603 	pop	ar7
                                    604 ;	./src/main.c:99: int time=0, shift_two=0; // time is being used to count the ms we went through, shift_two is used to record whether the user click twice
      0001DA 7B 00            [12]  605 	mov	r3,#0x00
                                    606 ;	./src/main.c:100: if(but3==1){
      0001DC 20 A4 03         [24]  607 	jb	_P2_4,00417$
      0001DF 02 02 4D         [24]  608 	ljmp	00165$
      0001E2                        609 00417$:
                                    610 ;	./src/main.c:101: while(time<200){ //check if there is a click within 50ms
      0001E2 79 00            [12]  611 	mov	r1,#0x00
      0001E4 7A 00            [12]  612 	mov	r2,#0x00
      0001E6                        613 00139$:
      0001E6 C3               [12]  614 	clr	c
      0001E7 E9               [12]  615 	mov	a,r1
      0001E8 94 C8            [12]  616 	subb	a,#0xc8
      0001EA EA               [12]  617 	mov	a,r2
      0001EB 64 80            [12]  618 	xrl	a,#0x80
      0001ED 94 80            [12]  619 	subb	a,#0x80
      0001EF 50 2A            [24]  620 	jnc	00141$
                                    621 ;	./src/main.c:102: delay_ms(1);
      0001F1 90 00 01         [24]  622 	mov	dptr,#0x0001
      0001F4 C0 07            [24]  623 	push	ar7
      0001F6 C0 06            [24]  624 	push	ar6
      0001F8 C0 05            [24]  625 	push	ar5
      0001FA C0 03            [24]  626 	push	ar3
      0001FC C0 02            [24]  627 	push	ar2
      0001FE C0 01            [24]  628 	push	ar1
      000200 12 02 98         [24]  629 	lcall	_delay_ms
      000203 D0 01            [24]  630 	pop	ar1
      000205 D0 02            [24]  631 	pop	ar2
      000207 D0 03            [24]  632 	pop	ar3
      000209 D0 05            [24]  633 	pop	ar5
      00020B D0 06            [24]  634 	pop	ar6
      00020D D0 07            [24]  635 	pop	ar7
                                    636 ;	./src/main.c:103: time++;
      00020F 09               [12]  637 	inc	r1
      000210 B9 00 01         [24]  638 	cjne	r1,#0x00,00419$
      000213 0A               [12]  639 	inc	r2
      000214                        640 00419$:
                                    641 ;	./src/main.c:104: if(but3==0){
      000214 20 A4 CF         [24]  642 	jb	_P2_4,00139$
                                    643 ;	./src/main.c:105: shift_two = 1;
      000217 7B 01            [12]  644 	mov	r3,#0x01
      000219 80 CB            [24]  645 	sjmp	00139$
      00021B                        646 00141$:
                                    647 ;	./src/main.c:108: if(shift_two==0){ // if there is only one click , left shift once
      00021B EB               [12]  648 	mov	a,r3
      00021C 70 0E            [24]  649 	jnz	00154$
                                    650 ;	./src/main.c:109: patt = patt >> 1;
      00021E EF               [12]  651 	mov	a,r7
      00021F C3               [12]  652 	clr	c
      000220 13               [12]  653 	rrc	a
                                    654 ;	./src/main.c:110: if(patt == 0x00)	// reset
      000221 FF               [12]  655 	mov	r7,a
      000222 70 02            [24]  656 	jnz	00143$
                                    657 ;	./src/main.c:111: patt = 0x80;
      000224 7F 80            [12]  658 	mov	r7,#0x80
      000226                        659 00143$:
                                    660 ;	./src/main.c:112: led = ~patt;
      000226 EF               [12]  661 	mov	a,r7
      000227 F4               [12]  662 	cpl	a
      000228 F5 90            [12]  663 	mov	_P1,a
      00022A 80 4E            [24]  664 	sjmp	00170$
      00022C                        665 00154$:
                                    666 ;	./src/main.c:115: if (patt == 0x01)
      00022C BF 01 04         [24]  667 	cjne	r7,#0x01,00151$
                                    668 ;	./src/main.c:116: patt = 0x20;
      00022F 7F 20            [12]  669 	mov	r7,#0x20
      000231 80 14            [24]  670 	sjmp	00152$
      000233                        671 00151$:
                                    672 ;	./src/main.c:117: else if (patt == 0x02)
      000233 BF 02 04         [24]  673 	cjne	r7,#0x02,00148$
                                    674 ;	./src/main.c:118: patt = 0x40;
      000236 7F 40            [12]  675 	mov	r7,#0x40
      000238 80 0D            [24]  676 	sjmp	00152$
      00023A                        677 00148$:
                                    678 ;	./src/main.c:119: else if (patt == 0x04)
      00023A BF 04 04         [24]  679 	cjne	r7,#0x04,00145$
                                    680 ;	./src/main.c:120: patt = 0x80;
      00023D 7F 80            [12]  681 	mov	r7,#0x80
      00023F 80 06            [24]  682 	sjmp	00152$
      000241                        683 00145$:
                                    684 ;	./src/main.c:122: patt = patt >> 3;
      000241 EF               [12]  685 	mov	a,r7
      000242 C4               [12]  686 	swap	a
      000243 23               [12]  687 	rl	a
      000244 54 1F            [12]  688 	anl	a,#0x1f
      000246 FF               [12]  689 	mov	r7,a
      000247                        690 00152$:
                                    691 ;	./src/main.c:123: led = ~patt;
      000247 EF               [12]  692 	mov	a,r7
      000248 F4               [12]  693 	cpl	a
      000249 F5 90            [12]  694 	mov	_P1,a
      00024B 80 2D            [24]  695 	sjmp	00170$
      00024D                        696 00165$:
                                    697 ;	./src/main.c:127: delay_ms(1000);
      00024D 90 03 E8         [24]  698 	mov	dptr,#0x03e8
      000250 C0 07            [24]  699 	push	ar7
      000252 C0 06            [24]  700 	push	ar6
      000254 C0 05            [24]  701 	push	ar5
      000256 12 02 98         [24]  702 	lcall	_delay_ms
      000259 D0 05            [24]  703 	pop	ar5
      00025B D0 06            [24]  704 	pop	ar6
      00025D D0 07            [24]  705 	pop	ar7
                                    706 ;	./src/main.c:128: if(but3==0){
      00025F 20 A4 18         [24]  707 	jb	_P2_4,00170$
                                    708 ;	./src/main.c:129: if (patt == 0x01)
      000262 BF 01 04         [24]  709 	cjne	r7,#0x01,00160$
                                    710 ;	./src/main.c:130: patt = 0x40;
      000265 7F 40            [12]  711 	mov	r7,#0x40
      000267 80 0D            [24]  712 	sjmp	00161$
      000269                        713 00160$:
                                    714 ;	./src/main.c:131: else if (patt == 0x02)
      000269 BF 02 04         [24]  715 	cjne	r7,#0x02,00157$
                                    716 ;	./src/main.c:132: patt = 0x80;
      00026C 7F 80            [12]  717 	mov	r7,#0x80
      00026E 80 06            [24]  718 	sjmp	00161$
      000270                        719 00157$:
                                    720 ;	./src/main.c:134: patt = patt >> 2;
      000270 EF               [12]  721 	mov	a,r7
      000271 03               [12]  722 	rr	a
      000272 03               [12]  723 	rr	a
      000273 54 3F            [12]  724 	anl	a,#0x3f
      000275 FF               [12]  725 	mov	r7,a
      000276                        726 00161$:
                                    727 ;	./src/main.c:135: led = ~patt;
      000276 EF               [12]  728 	mov	a,r7
      000277 F4               [12]  729 	cpl	a
      000278 F5 90            [12]  730 	mov	_P1,a
      00027A                        731 00170$:
                                    732 ;	./src/main.c:141: prebut3 = but3;
      00027A A2 A4            [12]  733 	mov	c,_P2_4
      00027C E4               [12]  734 	clr	a
      00027D 33               [12]  735 	rlc	a
      00027E FC               [12]  736 	mov	r4,a
                                    737 ;	./src/main.c:142: delay_ms(10);
      00027F 90 00 0A         [24]  738 	mov	dptr,#0x000a
      000282 C0 07            [24]  739 	push	ar7
      000284 C0 06            [24]  740 	push	ar6
      000286 C0 05            [24]  741 	push	ar5
      000288 C0 04            [24]  742 	push	ar4
      00028A 12 02 98         [24]  743 	lcall	_delay_ms
      00028D D0 04            [24]  744 	pop	ar4
      00028F D0 05            [24]  745 	pop	ar5
      000291 D0 06            [24]  746 	pop	ar6
      000293 D0 07            [24]  747 	pop	ar7
                                    748 ;	./src/main.c:144: }
      000295 02 00 70         [24]  749 	ljmp	00173$
                                    750 	.area CSEG    (CODE)
                                    751 	.area CONST   (CODE)
                                    752 	.area XINIT   (CODE)
                                    753 	.area CABS    (ABS,CODE)
