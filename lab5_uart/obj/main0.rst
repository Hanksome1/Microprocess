                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart_isr
                                     12 	.globl _main
                                     13 	.globl _display
                                     14 	.globl _Initial
                                     15 	.globl _Write7219
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _display_PARM_2
                                    113 	.globl _key
                                    114 	.globl _received_flag
                                    115 	.globl _send_flag
                                    116 	.globl _received_data
                                    117 	.globl _send_data
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      00001A                        233 _send_data::
      00001A                        234 	.ds 1
      00001B                        235 _received_data::
      00001B                        236 	.ds 1
      00001C                        237 _send_flag::
      00001C                        238 	.ds 1
      00001D                        239 _received_flag::
      00001D                        240 	.ds 1
      00001E                        241 _key::
      00001E                        242 	.ds 7
      000025                        243 _display_PARM_2:
      000025                        244 	.ds 2
      000027                        245 _main_cnt3_65537_16:
      000027                        246 	.ds 2
      000029                        247 _main_cnt4_65537_16:
      000029                        248 	.ds 2
      00002B                        249 _main_test_131074_35:
      00002B                        250 	.ds 2
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram
                                    253 ;--------------------------------------------------------
                                    254 ;--------------------------------------------------------
                                    255 ; Stack segment in internal ram
                                    256 ;--------------------------------------------------------
                                    257 	.area SSEG
      00002F                        258 __start__stack:
      00002F                        259 	.ds	1
                                    260 
                                    261 ;--------------------------------------------------------
                                    262 ; indirectly addressable internal ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area ISEG    (DATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area IABS    (ABS,DATA)
                                    269 	.area IABS    (ABS,DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; bit data
                                    272 ;--------------------------------------------------------
                                    273 	.area BSEG    (BIT)
                                    274 ;--------------------------------------------------------
                                    275 ; paged external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area PSEG    (PAG,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; uninitialized external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XSEG    (XDATA)
                                    282 ;--------------------------------------------------------
                                    283 ; absolute external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area XABS    (ABS,XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; initialized external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XISEG   (XDATA)
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT0 (CODE)
                                    292 	.area GSINIT1 (CODE)
                                    293 	.area GSINIT2 (CODE)
                                    294 	.area GSINIT3 (CODE)
                                    295 	.area GSINIT4 (CODE)
                                    296 	.area GSINIT5 (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area CSEG    (CODE)
                                    300 ;--------------------------------------------------------
                                    301 ; interrupt vector
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
      000029                        304 __interrupt_vect:
      000029 02 00 52         [24]  305 	ljmp	__sdcc_gsinit_startup
      00002C 32               [24]  306 	reti
      00002D                        307 	.ds	7
      000034 32               [24]  308 	reti
      000035                        309 	.ds	7
      00003C 32               [24]  310 	reti
      00003D                        311 	.ds	7
      000044 32               [24]  312 	reti
      000045                        313 	.ds	7
      00004C 02 04 C3         [24]  314 	ljmp	_uart_isr
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.globl __sdcc_gsinit_startup
                                    323 	.globl __sdcc_program_startup
                                    324 	.globl __start__stack
                                    325 	.globl __mcs51_genXINIT
                                    326 	.globl __mcs51_genXRAMCLEAR
                                    327 	.globl __mcs51_genRAMCLEAR
                                    328 ;	./src/main0.c:13: unsigned char send_flag=0;
      0000C9 75 1C 00         [24]  329 	mov	_send_flag,#0x00
                                    330 ;	./src/main0.c:14: unsigned char received_flag=0;
      0000CC 75 1D 00         [24]  331 	mov	_received_flag,#0x00
                                    332 ;	./src/main0.c:15: unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };
      0000CF 75 1E 01         [24]  333 	mov	_key,#0x01
      0000D2 75 1F 03         [24]  334 	mov	(_key + 0x0001),#0x03
      0000D5 75 20 01         [24]  335 	mov	(_key + 0x0002),#0x01
      0000D8 75 21 02         [24]  336 	mov	(_key + 0x0003),#0x02
      0000DB 75 22 02         [24]  337 	mov	(_key + 0x0004),#0x02
      0000DE 75 23 03         [24]  338 	mov	(_key + 0x0005),#0x03
      0000E1 75 24 04         [24]  339 	mov	(_key + 0x0006),#0x04
                                    340 	.area GSFINAL (CODE)
      0000E7 02 00 4F         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      00004F                        347 __sdcc_program_startup:
      00004F 02 03 DE         [24]  348 	ljmp	_main
                                    349 ;	return from main will return to caller
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'display'
                                    356 ;------------------------------------------------------------
                                    357 ;flag                      Allocated with name '_display_PARM_2'
                                    358 ;turn                      Allocated to registers r6 r7 
                                    359 ;i                         Allocated to registers r4 r5 
                                    360 ;------------------------------------------------------------
                                    361 ;	./src/main0.c:17: void display(int turn, int flag){	
                                    362 ;	-----------------------------------------
                                    363 ;	 function display
                                    364 ;	-----------------------------------------
      00036D                        365 _display:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
      00036D AE 82            [24]  374 	mov	r6,dpl
      00036F AF 83            [24]  375 	mov	r7,dph
                                    376 ;	./src/main0.c:18: if(flag==1) Write7219(8,1); // if the flag is 1, which means the input is correct, then write 1 in the first number
      000371 74 01            [12]  377 	mov	a,#0x01
      000373 B5 25 06         [24]  378 	cjne	a,_display_PARM_2,00129$
      000376 14               [12]  379 	dec	a
      000377 B5 26 02         [24]  380 	cjne	a,(_display_PARM_2 + 1),00129$
      00037A 80 02            [24]  381 	sjmp	00130$
      00037C                        382 00129$:
      00037C 80 13            [24]  383 	sjmp	00102$
      00037E                        384 00130$:
      00037E 75 13 01         [24]  385 	mov	_Write7219_PARM_2,#0x01
      000381 75 82 08         [24]  386 	mov	dpl,#0x08
      000384 C0 07            [24]  387 	push	ar7
      000386 C0 06            [24]  388 	push	ar6
      000388 12 01 D0         [24]  389 	lcall	_Write7219
      00038B D0 06            [24]  390 	pop	ar6
      00038D D0 07            [24]  391 	pop	ar7
      00038F 80 11            [24]  392 	sjmp	00112$
      000391                        393 00102$:
                                    394 ;	./src/main0.c:19: else Write7219(8,0); // vice versa
      000391 75 13 00         [24]  395 	mov	_Write7219_PARM_2,#0x00
      000394 75 82 08         [24]  396 	mov	dpl,#0x08
      000397 C0 07            [24]  397 	push	ar7
      000399 C0 06            [24]  398 	push	ar6
      00039B 12 01 D0         [24]  399 	lcall	_Write7219
      00039E D0 06            [24]  400 	pop	ar6
      0003A0 D0 07            [24]  401 	pop	ar7
                                    402 ;	./src/main0.c:20: for(int i=0; i<turn; i++){
      0003A2                        403 00112$:
      0003A2 7C 00            [12]  404 	mov	r4,#0x00
      0003A4 7D 00            [12]  405 	mov	r5,#0x00
      0003A6                        406 00106$:
      0003A6 C3               [12]  407 	clr	c
      0003A7 EC               [12]  408 	mov	a,r4
      0003A8 9E               [12]  409 	subb	a,r6
      0003A9 ED               [12]  410 	mov	a,r5
      0003AA 64 80            [12]  411 	xrl	a,#0x80
      0003AC 8F F0            [24]  412 	mov	b,r7
      0003AE 63 F0 80         [24]  413 	xrl	b,#0x80
      0003B1 95 F0            [12]  414 	subb	a,b
      0003B3 50 28            [24]  415 	jnc	00108$
                                    416 ;	./src/main0.c:21: Write7219(7-i,key[i]); // print out the known key, use turn to control how long to print
      0003B5 8C 03            [24]  417 	mov	ar3,r4
      0003B7 74 07            [12]  418 	mov	a,#0x07
      0003B9 C3               [12]  419 	clr	c
      0003BA 9B               [12]  420 	subb	a,r3
      0003BB F5 82            [12]  421 	mov	dpl,a
      0003BD EC               [12]  422 	mov	a,r4
      0003BE 24 1E            [12]  423 	add	a,#_key
      0003C0 F9               [12]  424 	mov	r1,a
      0003C1 87 13            [24]  425 	mov	_Write7219_PARM_2,@r1
      0003C3 C0 07            [24]  426 	push	ar7
      0003C5 C0 06            [24]  427 	push	ar6
      0003C7 C0 05            [24]  428 	push	ar5
      0003C9 C0 04            [24]  429 	push	ar4
      0003CB 12 01 D0         [24]  430 	lcall	_Write7219
      0003CE D0 04            [24]  431 	pop	ar4
      0003D0 D0 05            [24]  432 	pop	ar5
      0003D2 D0 06            [24]  433 	pop	ar6
      0003D4 D0 07            [24]  434 	pop	ar7
                                    435 ;	./src/main0.c:20: for(int i=0; i<turn; i++){
      0003D6 0C               [12]  436 	inc	r4
      0003D7 BC 00 CC         [24]  437 	cjne	r4,#0x00,00106$
      0003DA 0D               [12]  438 	inc	r5
      0003DB 80 C9            [24]  439 	sjmp	00106$
      0003DD                        440 00108$:
                                    441 ;	./src/main0.c:23: }
      0003DD 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'main'
                                    445 ;------------------------------------------------------------
                                    446 ;i                         Allocated to registers r7 
                                    447 ;turn                      Allocated to registers 
                                    448 ;cnt1                      Allocated to registers r7 
                                    449 ;cnt2                      Allocated to registers r6 
                                    450 ;cnt3                      Allocated with name '_main_cnt3_65537_16'
                                    451 ;cnt4                      Allocated with name '_main_cnt4_65537_16'
                                    452 ;flag                      Allocated to registers r4 r5 
                                    453 ;test                      Allocated with name '_main_test_131074_35'
                                    454 ;test                      Allocated to registers 
                                    455 ;------------------------------------------------------------
                                    456 ;	./src/main0.c:25: void main(void)
                                    457 ;	-----------------------------------------
                                    458 ;	 function main
                                    459 ;	-----------------------------------------
      0003DE                        460 _main:
                                    461 ;	./src/main0.c:28: TMOD = 0x20;			// set timer1 to mode2 
      0003DE 75 89 20         [24]  462 	mov	_TMOD,#0x20
                                    463 ;	./src/main0.c:29: SCON = 0x50;       		// set serial mode1
      0003E1 75 98 50         [24]  464 	mov	_SCON,#0x50
                                    465 ;	./src/main0.c:30: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
      0003E4 75 8D FA         [24]  466 	mov	_TH1,#0xfa
                                    467 ;	./src/main0.c:31: TR1 = 1;				// enable timer = 1
                                    468 ;	assignBit
      0003E7 D2 8E            [12]  469 	setb	_TR1
                                    470 ;	./src/main0.c:32: IE = 0x90;				// enable serial port interrupt
      0003E9 75 A8 90         [24]  471 	mov	_IE,#0x90
                                    472 ;	./src/main0.c:34: Initial();
      0003EC 12 02 34         [24]  473 	lcall	_Initial
                                    474 ;	./src/main0.c:35: for (int i = 1; i < 9; i++)
      0003EF 7F 01            [12]  475 	mov	r7,#0x01
      0003F1                        476 00141$:
      0003F1 BF 09 00         [24]  477 	cjne	r7,#0x09,00254$
      0003F4                        478 00254$:
      0003F4 50 0F            [24]  479 	jnc	00101$
                                    480 ;	./src/main0.c:36: Write7219(i, 0x0F);     	// Reset all digits as blank
      0003F6 8F 82            [24]  481 	mov	dpl,r7
      0003F8 75 13 0F         [24]  482 	mov	_Write7219_PARM_2,#0x0f
      0003FB C0 07            [24]  483 	push	ar7
      0003FD 12 01 D0         [24]  484 	lcall	_Write7219
      000400 D0 07            [24]  485 	pop	ar7
                                    486 ;	./src/main0.c:35: for (int i = 1; i < 9; i++)
      000402 0F               [12]  487 	inc	r7
      000403 80 EC            [24]  488 	sjmp	00141$
      000405                        489 00101$:
                                    490 ;	./src/main0.c:40: int cnt1=0, cnt2=0, cnt3=0, cnt4=0;
      000405 7F 00            [12]  491 	mov	r7,#0x00
      000407 7E 00            [12]  492 	mov	r6,#0x00
      000409 8F 27            [24]  493 	mov	_main_cnt3_65537_16,r7
      00040B 8F 29            [24]  494 	mov	_main_cnt4_65537_16,r7
                                    495 ;	./src/main0.c:41: while(1){	
      00040D 7A 00            [12]  496 	mov	r2,#0x00
      00040F 7B 00            [12]  497 	mov	r3,#0x00
      000411                        498 00138$:
                                    499 ;	./src/main0.c:42: if (but1 == 0) {
      000411 20 B2 11         [24]  500 	jb	_P3_2,00107$
                                    501 ;	./src/main0.c:43: if (cnt1 < 3) {
      000414 BF 03 00         [24]  502 	cjne	r7,#0x03,00257$
      000417                        503 00257$:
      000417 50 0E            [24]  504 	jnc	00108$
                                    505 ;	./src/main0.c:44: cnt1++;
      000419 0F               [12]  506 	inc	r7
                                    507 ;	./src/main0.c:45: if (cnt1 == 3) {
      00041A BF 03 0A         [24]  508 	cjne	r7,#0x03,00108$
                                    509 ;	./src/main0.c:46: send_data = 1;
      00041D 75 1A 01         [24]  510 	mov	_send_data,#0x01
                                    511 ;	./src/main0.c:47: send_flag = 1;
      000420 75 1C 01         [24]  512 	mov	_send_flag,#0x01
      000423 80 02            [24]  513 	sjmp	00108$
      000425                        514 00107$:
                                    515 ;	./src/main0.c:51: else { cnt1 = 0; }
      000425 7F 00            [12]  516 	mov	r7,#0x00
      000427                        517 00108$:
                                    518 ;	./src/main0.c:53: if (but2 == 0) {
      000427 20 B3 11         [24]  519 	jb	_P3_3,00114$
                                    520 ;	./src/main0.c:54: if (cnt2 < 3) {
      00042A BE 03 00         [24]  521 	cjne	r6,#0x03,00262$
      00042D                        522 00262$:
      00042D 50 0E            [24]  523 	jnc	00115$
                                    524 ;	./src/main0.c:55: cnt2++;
      00042F 0E               [12]  525 	inc	r6
                                    526 ;	./src/main0.c:56: if (cnt2 == 3) {
      000430 BE 03 0A         [24]  527 	cjne	r6,#0x03,00115$
                                    528 ;	./src/main0.c:57: send_data = 2;
      000433 75 1A 02         [24]  529 	mov	_send_data,#0x02
                                    530 ;	./src/main0.c:58: send_flag = 1;
      000436 75 1C 01         [24]  531 	mov	_send_flag,#0x01
      000439 80 02            [24]  532 	sjmp	00115$
      00043B                        533 00114$:
                                    534 ;	./src/main0.c:62: else { cnt2 = 0; }
      00043B 7E 00            [12]  535 	mov	r6,#0x00
      00043D                        536 00115$:
                                    537 ;	./src/main0.c:64: if (but3 == 0) {
      00043D 20 A0 15         [24]  538 	jb	_P2_0,00121$
                                    539 ;	./src/main0.c:65: if (cnt3 < 3) {
      000440 74 FD            [12]  540 	mov	a,#0x100 - 0x03
      000442 25 27            [12]  541 	add	a,_main_cnt3_65537_16
      000444 40 12            [24]  542 	jc	00122$
                                    543 ;	./src/main0.c:66: cnt3++;
      000446 05 27            [12]  544 	inc	_main_cnt3_65537_16
                                    545 ;	./src/main0.c:67: if (cnt3 == 3) {
      000448 74 03            [12]  546 	mov	a,#0x03
      00044A B5 27 0B         [24]  547 	cjne	a,_main_cnt3_65537_16,00122$
                                    548 ;	./src/main0.c:68: send_data = 3;
      00044D 75 1A 03         [24]  549 	mov	_send_data,#0x03
                                    550 ;	./src/main0.c:69: send_flag = 1;
      000450 75 1C 01         [24]  551 	mov	_send_flag,#0x01
      000453 80 03            [24]  552 	sjmp	00122$
      000455                        553 00121$:
                                    554 ;	./src/main0.c:73: else { cnt3 = 0; }
      000455 75 27 00         [24]  555 	mov	_main_cnt3_65537_16,#0x00
      000458                        556 00122$:
                                    557 ;	./src/main0.c:75: if (but4 == 0) {
      000458 20 A1 15         [24]  558 	jb	_P2_1,00128$
                                    559 ;	./src/main0.c:76: if (cnt4 < 3) {
      00045B 74 FD            [12]  560 	mov	a,#0x100 - 0x03
      00045D 25 29            [12]  561 	add	a,_main_cnt4_65537_16
      00045F 40 12            [24]  562 	jc	00129$
                                    563 ;	./src/main0.c:77: cnt4++;
      000461 05 29            [12]  564 	inc	_main_cnt4_65537_16
                                    565 ;	./src/main0.c:78: if (cnt4 == 3) {
      000463 74 03            [12]  566 	mov	a,#0x03
      000465 B5 29 0B         [24]  567 	cjne	a,_main_cnt4_65537_16,00129$
                                    568 ;	./src/main0.c:79: send_data = 4;
      000468 75 1A 04         [24]  569 	mov	_send_data,#0x04
                                    570 ;	./src/main0.c:80: send_flag = 1;
      00046B 75 1C 01         [24]  571 	mov	_send_flag,#0x01
      00046E 80 03            [24]  572 	sjmp	00129$
      000470                        573 00128$:
                                    574 ;	./src/main0.c:84: else { cnt4 = 0; }
      000470 75 29 00         [24]  575 	mov	_main_cnt4_65537_16,#0x00
      000473                        576 00129$:
                                    577 ;	./src/main0.c:87: if (send_flag==1)
      000473 74 01            [12]  578 	mov	a,#0x01
      000475 B5 1C 06         [24]  579 	cjne	a,_send_flag,00131$
                                    580 ;	./src/main0.c:89: SBUF = send_data;	// send data to SBUF
      000478 85 1A 99         [24]  581 	mov	_SBUF,_send_data
                                    582 ;	./src/main0.c:90: send_flag = 0;
      00047B 75 1C 00         [24]  583 	mov	_send_flag,#0x00
      00047E                        584 00131$:
                                    585 ;	./src/main0.c:96: if (received_flag == 1) {      
      00047E 74 01            [12]  586 	mov	a,#0x01
      000480 B5 1D 03         [24]  587 	cjne	a,_received_flag,00133$
                                    588 ;	./src/main0.c:98: received_flag = 0;
      000483 75 1D 00         [24]  589 	mov	_received_flag,#0x00
      000486                        590 00133$:
                                    591 ;	./src/main0.c:100: if(test==key[turn]){ // if the received data is the same as the current key-> print
      000486 EA               [12]  592 	mov	a,r2
      000487 24 1E            [12]  593 	add	a,#_key
      000489 F9               [12]  594 	mov	r1,a
      00048A 87 04            [24]  595 	mov	ar4,@r1
      00048C 7D 00            [12]  596 	mov	r5,#0x00
      00048E EC               [12]  597 	mov	a,r4
      00048F B5 2B 0F         [24]  598 	cjne	a,_main_test_131074_35,00135$
      000492 ED               [12]  599 	mov	a,r5
      000493 B5 2C 0B         [24]  600 	cjne	a,(_main_test_131074_35 + 1),00135$
                                    601 ;	./src/main0.c:101: flag = 1;
      000496 7C 01            [12]  602 	mov	r4,#0x01
      000498 7D 00            [12]  603 	mov	r5,#0x00
                                    604 ;	./src/main0.c:102: turn++;
      00049A 0A               [12]  605 	inc	r2
      00049B BA 00 07         [24]  606 	cjne	r2,#0x00,00136$
      00049E 0B               [12]  607 	inc	r3
      00049F 80 04            [24]  608 	sjmp	00136$
      0004A1                        609 00135$:
                                    610 ;	./src/main0.c:105: flag = 0;
      0004A1 7C 00            [12]  611 	mov	r4,#0x00
      0004A3 7D 00            [12]  612 	mov	r5,#0x00
      0004A5                        613 00136$:
                                    614 ;	./src/main0.c:107: display(turn,flag);
      0004A5 8C 25            [24]  615 	mov	_display_PARM_2,r4
      0004A7 8D 26            [24]  616 	mov	(_display_PARM_2 + 1),r5
      0004A9 8A 82            [24]  617 	mov	dpl,r2
      0004AB 8B 83            [24]  618 	mov	dph,r3
      0004AD C0 07            [24]  619 	push	ar7
      0004AF C0 06            [24]  620 	push	ar6
      0004B1 C0 03            [24]  621 	push	ar3
      0004B3 C0 02            [24]  622 	push	ar2
      0004B5 12 03 6D         [24]  623 	lcall	_display
      0004B8 D0 02            [24]  624 	pop	ar2
      0004BA D0 03            [24]  625 	pop	ar3
      0004BC D0 06            [24]  626 	pop	ar6
      0004BE D0 07            [24]  627 	pop	ar7
                                    628 ;	./src/main0.c:109: }
      0004C0 02 04 11         [24]  629 	ljmp	00138$
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'uart_isr'
                                    632 ;------------------------------------------------------------
                                    633 ;	./src/main0.c:112: void uart_isr(void) __interrupt (4)
                                    634 ;	-----------------------------------------
                                    635 ;	 function uart_isr
                                    636 ;	-----------------------------------------
      0004C3                        637 _uart_isr:
                                    638 ;	./src/main0.c:114: if(RI==1){
                                    639 ;	./src/main0.c:115: RI=0;
                                    640 ;	assignBit
      0004C3 10 98 02         [24]  641 	jbc	_RI,00119$
      0004C6 80 06            [24]  642 	sjmp	00102$
      0004C8                        643 00119$:
                                    644 ;	./src/main0.c:116: received_data = SBUF;
      0004C8 85 99 1B         [24]  645 	mov	_received_data,_SBUF
                                    646 ;	./src/main0.c:117: received_flag = 1;
      0004CB 75 1D 01         [24]  647 	mov	_received_flag,#0x01
      0004CE                        648 00102$:
                                    649 ;	./src/main0.c:119: if(TI==1){
                                    650 ;	./src/main0.c:120: TI=0;
                                    651 ;	assignBit
      0004CE 10 99 02         [24]  652 	jbc	_TI,00120$
      0004D1 80 00            [24]  653 	sjmp	00105$
      0004D3                        654 00120$:
      0004D3                        655 00105$:
                                    656 ;	./src/main0.c:122: }
      0004D3 32               [24]  657 	reti
                                    658 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    659 ;	eliminated unneeded push/pop not_psw
                                    660 ;	eliminated unneeded push/pop dpl
                                    661 ;	eliminated unneeded push/pop dph
                                    662 ;	eliminated unneeded push/pop b
                                    663 ;	eliminated unneeded push/pop acc
                                    664 	.area CSEG    (CODE)
                                    665 	.area CONST   (CODE)
                                    666 	.area XINIT   (CODE)
                                    667 	.area CABS    (ABS,CODE)
