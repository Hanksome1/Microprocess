                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module buzz
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _buzz_hal_ok
                                    109 	.globl _buzz_prog_en_error
                                    110 	.globl _buzz_verify_error
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable items in internal ram
                                    228 ;--------------------------------------------------------
                                    229 ;--------------------------------------------------------
                                    230 ; indirectly addressable internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area ISEG    (DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; absolute internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area IABS    (ABS,DATA)
                                    237 	.area IABS    (ABS,DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; bit data
                                    240 ;--------------------------------------------------------
                                    241 	.area BSEG    (BIT)
                                    242 ;--------------------------------------------------------
                                    243 ; paged external ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area PSEG    (PAG,XDATA)
                                    246 ;--------------------------------------------------------
                                    247 ; uninitialized external ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area XSEG    (XDATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area XABS    (ABS,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; initialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XISEG   (XDATA)
                                    258 	.area HOME    (CODE)
                                    259 	.area GSINIT0 (CODE)
                                    260 	.area GSINIT1 (CODE)
                                    261 	.area GSINIT2 (CODE)
                                    262 	.area GSINIT3 (CODE)
                                    263 	.area GSINIT4 (CODE)
                                    264 	.area GSINIT5 (CODE)
                                    265 	.area GSINIT  (CODE)
                                    266 	.area GSFINAL (CODE)
                                    267 	.area CSEG    (CODE)
                                    268 ;--------------------------------------------------------
                                    269 ; global & static initialisations
                                    270 ;--------------------------------------------------------
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 	.area GSFINAL (CODE)
                                    274 	.area GSINIT  (CODE)
                                    275 ;--------------------------------------------------------
                                    276 ; Home
                                    277 ;--------------------------------------------------------
                                    278 	.area HOME    (CODE)
                                    279 	.area HOME    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; code
                                    282 ;--------------------------------------------------------
                                    283 	.area CSEG    (CODE)
                                    284 ;------------------------------------------------------------
                                    285 ;Allocation info for local variables in function 'buzz_hal_ok'
                                    286 ;------------------------------------------------------------
                                    287 ;delay_cnt                 Allocated to registers r6 r7 
                                    288 ;------------------------------------------------------------
                                    289 ;	./src/buzz.c:5: void buzz_hal_ok(void)
                                    290 ;	-----------------------------------------
                                    291 ;	 function buzz_hal_ok
                                    292 ;	-----------------------------------------
      0002EC                        293 _buzz_hal_ok:
                           000007   294 	ar7 = 0x07
                           000006   295 	ar6 = 0x06
                           000005   296 	ar5 = 0x05
                           000004   297 	ar4 = 0x04
                           000003   298 	ar3 = 0x03
                           000002   299 	ar2 = 0x02
                           000001   300 	ar1 = 0x01
                           000000   301 	ar0 = 0x00
                                    302 ;	./src/buzz.c:9: for(delay_cnt = 0; delay_cnt < 100; delay_cnt ++)
      0002EC 7E 00            [12]  303 	mov	r6,#0x00
      0002EE 7F 00            [12]  304 	mov	r7,#0x00
      0002F0                        305 00102$:
                                    306 ;	./src/buzz.c:11: P3_7 = 1;
                                    307 ;	assignBit
      0002F0 D2 B7            [12]  308 	setb	_P3_7
                                    309 ;	./src/buzz.c:12: delay_ms(1);
      0002F2 90 00 01         [24]  310 	mov	dptr,#0x0001
      0002F5 C0 07            [24]  311 	push	ar7
      0002F7 C0 06            [24]  312 	push	ar6
      0002F9 12 03 9C         [24]  313 	lcall	_delay_ms
                                    314 ;	./src/buzz.c:13: P3_7 = 0;
                                    315 ;	assignBit
      0002FC C2 B7            [12]  316 	clr	_P3_7
                                    317 ;	./src/buzz.c:14: delay_ms(1);
      0002FE 90 00 01         [24]  318 	mov	dptr,#0x0001
      000301 12 03 9C         [24]  319 	lcall	_delay_ms
      000304 D0 06            [24]  320 	pop	ar6
      000306 D0 07            [24]  321 	pop	ar7
                                    322 ;	./src/buzz.c:9: for(delay_cnt = 0; delay_cnt < 100; delay_cnt ++)
      000308 0E               [12]  323 	inc	r6
      000309 BE 00 01         [24]  324 	cjne	r6,#0x00,00113$
      00030C 0F               [12]  325 	inc	r7
      00030D                        326 00113$:
      00030D C3               [12]  327 	clr	c
      00030E EE               [12]  328 	mov	a,r6
      00030F 94 64            [12]  329 	subb	a,#0x64
      000311 EF               [12]  330 	mov	a,r7
      000312 94 00            [12]  331 	subb	a,#0x00
      000314 40 DA            [24]  332 	jc	00102$
                                    333 ;	./src/buzz.c:16: }
      000316 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'buzz_prog_en_error'
                                    337 ;------------------------------------------------------------
                                    338 ;delay_cnt                 Allocated to registers r6 r7 
                                    339 ;------------------------------------------------------------
                                    340 ;	./src/buzz.c:18: void buzz_prog_en_error(void)
                                    341 ;	-----------------------------------------
                                    342 ;	 function buzz_prog_en_error
                                    343 ;	-----------------------------------------
      000317                        344 _buzz_prog_en_error:
                                    345 ;	./src/buzz.c:22: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      000317 7E 00            [12]  346 	mov	r6,#0x00
      000319 7F 00            [12]  347 	mov	r7,#0x00
      00031B                        348 00102$:
                                    349 ;	./src/buzz.c:24: P3_7 = 1;
                                    350 ;	assignBit
      00031B D2 B7            [12]  351 	setb	_P3_7
                                    352 ;	./src/buzz.c:25: delay_ms(1);
      00031D 90 00 01         [24]  353 	mov	dptr,#0x0001
      000320 C0 07            [24]  354 	push	ar7
      000322 C0 06            [24]  355 	push	ar6
      000324 12 03 9C         [24]  356 	lcall	_delay_ms
                                    357 ;	./src/buzz.c:26: P3_7 = 0;
                                    358 ;	assignBit
      000327 C2 B7            [12]  359 	clr	_P3_7
                                    360 ;	./src/buzz.c:27: delay_ms(1);
      000329 90 00 01         [24]  361 	mov	dptr,#0x0001
      00032C 12 03 9C         [24]  362 	lcall	_delay_ms
      00032F D0 06            [24]  363 	pop	ar6
      000331 D0 07            [24]  364 	pop	ar7
                                    365 ;	./src/buzz.c:22: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      000333 0E               [12]  366 	inc	r6
      000334 BE 00 01         [24]  367 	cjne	r6,#0x00,00113$
      000337 0F               [12]  368 	inc	r7
      000338                        369 00113$:
      000338 C3               [12]  370 	clr	c
      000339 EE               [12]  371 	mov	a,r6
      00033A 94 F4            [12]  372 	subb	a,#0xf4
      00033C EF               [12]  373 	mov	a,r7
      00033D 94 01            [12]  374 	subb	a,#0x01
      00033F 40 DA            [24]  375 	jc	00102$
                                    376 ;	./src/buzz.c:29: }
      000341 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'buzz_verify_error'
                                    380 ;------------------------------------------------------------
                                    381 ;delay_cnt                 Allocated to registers r6 r7 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/buzz.c:31: void buzz_verify_error(void)
                                    384 ;	-----------------------------------------
                                    385 ;	 function buzz_verify_error
                                    386 ;	-----------------------------------------
      000342                        387 _buzz_verify_error:
                                    388 ;	./src/buzz.c:35: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      000342 7E 00            [12]  389 	mov	r6,#0x00
      000344 7F 00            [12]  390 	mov	r7,#0x00
      000346                        391 00103$:
                                    392 ;	./src/buzz.c:37: P3_7 = 1;
                                    393 ;	assignBit
      000346 D2 B7            [12]  394 	setb	_P3_7
                                    395 ;	./src/buzz.c:38: delay_ms(1);
      000348 90 00 01         [24]  396 	mov	dptr,#0x0001
      00034B C0 07            [24]  397 	push	ar7
      00034D C0 06            [24]  398 	push	ar6
      00034F 12 03 9C         [24]  399 	lcall	_delay_ms
                                    400 ;	./src/buzz.c:39: P3_7 = 0;
                                    401 ;	assignBit
      000352 C2 B7            [12]  402 	clr	_P3_7
                                    403 ;	./src/buzz.c:40: delay_ms(1);
      000354 90 00 01         [24]  404 	mov	dptr,#0x0001
      000357 12 03 9C         [24]  405 	lcall	_delay_ms
      00035A D0 06            [24]  406 	pop	ar6
      00035C D0 07            [24]  407 	pop	ar7
                                    408 ;	./src/buzz.c:35: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      00035E 0E               [12]  409 	inc	r6
      00035F BE 00 01         [24]  410 	cjne	r6,#0x00,00129$
      000362 0F               [12]  411 	inc	r7
      000363                        412 00129$:
      000363 C3               [12]  413 	clr	c
      000364 EE               [12]  414 	mov	a,r6
      000365 94 F4            [12]  415 	subb	a,#0xf4
      000367 EF               [12]  416 	mov	a,r7
      000368 94 01            [12]  417 	subb	a,#0x01
      00036A 40 DA            [24]  418 	jc	00103$
                                    419 ;	./src/buzz.c:43: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      00036C 7E 00            [12]  420 	mov	r6,#0x00
      00036E 7F 00            [12]  421 	mov	r7,#0x00
      000370                        422 00105$:
                                    423 ;	./src/buzz.c:45: P3_7 = 1;
                                    424 ;	assignBit
      000370 D2 B7            [12]  425 	setb	_P3_7
                                    426 ;	./src/buzz.c:46: delay_ms(1);
      000372 90 00 01         [24]  427 	mov	dptr,#0x0001
      000375 C0 07            [24]  428 	push	ar7
      000377 C0 06            [24]  429 	push	ar6
      000379 12 03 9C         [24]  430 	lcall	_delay_ms
                                    431 ;	./src/buzz.c:47: P3_7 = 0;
                                    432 ;	assignBit
      00037C C2 B7            [12]  433 	clr	_P3_7
                                    434 ;	./src/buzz.c:48: delay_ms(1);
      00037E 90 00 01         [24]  435 	mov	dptr,#0x0001
      000381 12 03 9C         [24]  436 	lcall	_delay_ms
      000384 D0 06            [24]  437 	pop	ar6
      000386 D0 07            [24]  438 	pop	ar7
                                    439 ;	./src/buzz.c:43: for(delay_cnt = 0; delay_cnt < 500; delay_cnt ++)
      000388 0E               [12]  440 	inc	r6
      000389 BE 00 01         [24]  441 	cjne	r6,#0x00,00131$
      00038C 0F               [12]  442 	inc	r7
      00038D                        443 00131$:
      00038D C3               [12]  444 	clr	c
      00038E EE               [12]  445 	mov	a,r6
      00038F 94 F4            [12]  446 	subb	a,#0xf4
      000391 EF               [12]  447 	mov	a,r7
      000392 94 01            [12]  448 	subb	a,#0x01
      000394 40 DA            [24]  449 	jc	00105$
                                    450 ;	./src/buzz.c:50: }
      000396 22               [24]  451 	ret
                                    452 	.area CSEG    (CODE)
                                    453 	.area CONST   (CODE)
                                    454 	.area XINIT   (CODE)
                                    455 	.area CABS    (ABS,CODE)
