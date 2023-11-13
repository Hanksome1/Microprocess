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
      000008                        233 _send_data::
      000008                        234 	.ds 1
      000009                        235 _received_data::
      000009                        236 	.ds 1
      00000A                        237 _send_flag::
      00000A                        238 	.ds 1
      00000B                        239 _received_flag::
      00000B                        240 	.ds 1
      00000C                        241 _key::
      00000C                        242 	.ds 7
      000013                        243 _display_PARM_2:
      000013                        244 	.ds 2
      000015                        245 _main_cnt4_65537_18:
      000015                        246 	.ds 1
      000016                        247 _main_test_65537_18:
      000016                        248 	.ds 2
      000018                        249 _main_flag_65537_18:
      000018                        250 	.ds 2
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram
                                    253 ;--------------------------------------------------------
                                    254 ;--------------------------------------------------------
                                    255 ; Stack segment in internal ram
                                    256 ;--------------------------------------------------------
                                    257 	.area SSEG
      000023                        258 __start__stack:
      000023                        259 	.ds	1
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
      000000                        304 __interrupt_vect:
      000000 02 00 29         [24]  305 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  306 	reti
      000004                        307 	.ds	7
      00000B 32               [24]  308 	reti
      00000C                        309 	.ds	7
      000013 32               [24]  310 	reti
      000014                        311 	.ds	7
      00001B 32               [24]  312 	reti
      00001C                        313 	.ds	7
      000023 02 02 1A         [24]  314 	ljmp	_uart_isr
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
                                    328 ;	./src/main.c:13: unsigned char send_flag=0;
      000082 75 0A 00         [24]  329 	mov	_send_flag,#0x00
                                    330 ;	./src/main.c:14: unsigned char received_flag=0;
      000085 75 0B 00         [24]  331 	mov	_received_flag,#0x00
                                    332 ;	./src/main.c:15: unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };
      000088 75 0C 01         [24]  333 	mov	_key,#0x01
      00008B 75 0D 03         [24]  334 	mov	(_key + 0x0001),#0x03
      00008E 75 0E 01         [24]  335 	mov	(_key + 0x0002),#0x01
      000091 75 0F 02         [24]  336 	mov	(_key + 0x0003),#0x02
      000094 75 10 02         [24]  337 	mov	(_key + 0x0004),#0x02
      000097 75 11 03         [24]  338 	mov	(_key + 0x0005),#0x03
      00009A 75 12 04         [24]  339 	mov	(_key + 0x0006),#0x04
                                    340 	.area GSFINAL (CODE)
      0000A0 02 00 26         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      000026                        347 __sdcc_program_startup:
      000026 02 01 14         [24]  348 	ljmp	_main
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
                                    361 ;	./src/main.c:17: void display(int turn, int flag){	
                                    362 ;	-----------------------------------------
                                    363 ;	 function display
                                    364 ;	-----------------------------------------
      0000A3                        365 _display:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
      0000A3 AE 82            [24]  374 	mov	r6,dpl
      0000A5 AF 83            [24]  375 	mov	r7,dph
                                    376 ;	./src/main.c:18: if(flag==1){
      0000A7 74 01            [12]  377 	mov	a,#0x01
      0000A9 B5 13 06         [24]  378 	cjne	a,_display_PARM_2,00129$
      0000AC 14               [12]  379 	dec	a
      0000AD B5 14 02         [24]  380 	cjne	a,(_display_PARM_2 + 1),00129$
      0000B0 80 02            [24]  381 	sjmp	00130$
      0000B2                        382 00129$:
      0000B2 80 13            [24]  383 	sjmp	00102$
      0000B4                        384 00130$:
                                    385 ;	./src/main.c:19: Write7219(8,1);
      0000B4 75 1A 01         [24]  386 	mov	_Write7219_PARM_2,#0x01
      0000B7 75 82 08         [24]  387 	mov	dpl,#0x08
      0000BA C0 07            [24]  388 	push	ar7
      0000BC C0 06            [24]  389 	push	ar6
      0000BE 12 02 62         [24]  390 	lcall	_Write7219
      0000C1 D0 06            [24]  391 	pop	ar6
      0000C3 D0 07            [24]  392 	pop	ar7
      0000C5 80 11            [24]  393 	sjmp	00112$
      0000C7                        394 00102$:
                                    395 ;	./src/main.c:23: Write7219(8,0); // vice versa
      0000C7 75 1A 00         [24]  396 	mov	_Write7219_PARM_2,#0x00
      0000CA 75 82 08         [24]  397 	mov	dpl,#0x08
      0000CD C0 07            [24]  398 	push	ar7
      0000CF C0 06            [24]  399 	push	ar6
      0000D1 12 02 62         [24]  400 	lcall	_Write7219
      0000D4 D0 06            [24]  401 	pop	ar6
      0000D6 D0 07            [24]  402 	pop	ar7
                                    403 ;	./src/main.c:25: for(int i=0; i<turn; i++){
      0000D8                        404 00112$:
      0000D8 7C 00            [12]  405 	mov	r4,#0x00
      0000DA 7D 00            [12]  406 	mov	r5,#0x00
      0000DC                        407 00106$:
      0000DC C3               [12]  408 	clr	c
      0000DD EC               [12]  409 	mov	a,r4
      0000DE 9E               [12]  410 	subb	a,r6
      0000DF ED               [12]  411 	mov	a,r5
      0000E0 64 80            [12]  412 	xrl	a,#0x80
      0000E2 8F F0            [24]  413 	mov	b,r7
      0000E4 63 F0 80         [24]  414 	xrl	b,#0x80
      0000E7 95 F0            [12]  415 	subb	a,b
      0000E9 50 28            [24]  416 	jnc	00108$
                                    417 ;	./src/main.c:26: Write7219(7-i,key[i]); // print out the known key, use turn to control how long to print
      0000EB 8C 03            [24]  418 	mov	ar3,r4
      0000ED 74 07            [12]  419 	mov	a,#0x07
      0000EF C3               [12]  420 	clr	c
      0000F0 9B               [12]  421 	subb	a,r3
      0000F1 F5 82            [12]  422 	mov	dpl,a
      0000F3 EC               [12]  423 	mov	a,r4
      0000F4 24 0C            [12]  424 	add	a,#_key
      0000F6 F9               [12]  425 	mov	r1,a
      0000F7 87 1A            [24]  426 	mov	_Write7219_PARM_2,@r1
      0000F9 C0 07            [24]  427 	push	ar7
      0000FB C0 06            [24]  428 	push	ar6
      0000FD C0 05            [24]  429 	push	ar5
      0000FF C0 04            [24]  430 	push	ar4
      000101 12 02 62         [24]  431 	lcall	_Write7219
      000104 D0 04            [24]  432 	pop	ar4
      000106 D0 05            [24]  433 	pop	ar5
      000108 D0 06            [24]  434 	pop	ar6
      00010A D0 07            [24]  435 	pop	ar7
                                    436 ;	./src/main.c:25: for(int i=0; i<turn; i++){
      00010C 0C               [12]  437 	inc	r4
      00010D BC 00 CC         [24]  438 	cjne	r4,#0x00,00106$
      000110 0D               [12]  439 	inc	r5
      000111 80 C9            [24]  440 	sjmp	00106$
      000113                        441 00108$:
                                    442 ;	./src/main.c:28: }
      000113 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'main'
                                    446 ;------------------------------------------------------------
                                    447 ;i                         Allocated to registers r6 r7 
                                    448 ;turn                      Allocated to registers 
                                    449 ;cnt1                      Allocated to registers r7 
                                    450 ;cnt2                      Allocated to registers r6 
                                    451 ;cnt3                      Allocated to registers r5 
                                    452 ;cnt4                      Allocated with name '_main_cnt4_65537_18'
                                    453 ;test                      Allocated with name '_main_test_65537_18'
                                    454 ;flag                      Allocated with name '_main_flag_65537_18'
                                    455 ;------------------------------------------------------------
                                    456 ;	./src/main.c:30: void main(void)
                                    457 ;	-----------------------------------------
                                    458 ;	 function main
                                    459 ;	-----------------------------------------
      000114                        460 _main:
                                    461 ;	./src/main.c:33: TMOD = 0x20;			// set timer1 to mode2 
      000114 75 89 20         [24]  462 	mov	_TMOD,#0x20
                                    463 ;	./src/main.c:34: SCON = 0x50;       		// set serial mode1
      000117 75 98 50         [24]  464 	mov	_SCON,#0x50
                                    465 ;	./src/main.c:35: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
      00011A 75 8D FA         [24]  466 	mov	_TH1,#0xfa
                                    467 ;	./src/main.c:36: TR1 = 1;				// enable timer = 1
                                    468 ;	assignBit
      00011D D2 8E            [12]  469 	setb	_TR1
                                    470 ;	./src/main.c:37: IE = 0x90;				// enable serial port interrupt
      00011F 75 A8 90         [24]  471 	mov	_IE,#0x90
                                    472 ;	./src/main.c:39: Initial();
      000122 12 02 C6         [24]  473 	lcall	_Initial
                                    474 ;	./src/main.c:40: for (int i = 1; i < 9; i++)
      000125 7E 01            [12]  475 	mov	r6,#0x01
      000127 7F 00            [12]  476 	mov	r7,#0x00
      000129                        477 00143$:
      000129 C3               [12]  478 	clr	c
      00012A EE               [12]  479 	mov	a,r6
      00012B 94 09            [12]  480 	subb	a,#0x09
      00012D EF               [12]  481 	mov	a,r7
      00012E 64 80            [12]  482 	xrl	a,#0x80
      000130 94 80            [12]  483 	subb	a,#0x80
      000132 50 17            [24]  484 	jnc	00101$
                                    485 ;	./src/main.c:41: Write7219(i, 0x0F);     	// Reset all digits as blank
      000134 8E 82            [24]  486 	mov	dpl,r6
      000136 75 1A 0F         [24]  487 	mov	_Write7219_PARM_2,#0x0f
      000139 C0 07            [24]  488 	push	ar7
      00013B C0 06            [24]  489 	push	ar6
      00013D 12 02 62         [24]  490 	lcall	_Write7219
      000140 D0 06            [24]  491 	pop	ar6
      000142 D0 07            [24]  492 	pop	ar7
                                    493 ;	./src/main.c:40: for (int i = 1; i < 9; i++)
      000144 0E               [12]  494 	inc	r6
      000145 BE 00 E1         [24]  495 	cjne	r6,#0x00,00143$
      000148 0F               [12]  496 	inc	r7
      000149 80 DE            [24]  497 	sjmp	00143$
      00014B                        498 00101$:
                                    499 ;	./src/main.c:45: unsigned char cnt1 = 0;
      00014B 7F 00            [12]  500 	mov	r7,#0x00
                                    501 ;	./src/main.c:46: unsigned char cnt2 = 0;
      00014D 7E 00            [12]  502 	mov	r6,#0x00
                                    503 ;	./src/main.c:47: unsigned char cnt3 = 0;
      00014F 7D 00            [12]  504 	mov	r5,#0x00
                                    505 ;	./src/main.c:48: unsigned char cnt4 = 0;
      000151 8F 15            [24]  506 	mov	_main_cnt4_65537_18,r7
                                    507 ;	./src/main.c:49: int test =0;
      000153 8F 16            [24]  508 	mov	_main_test_65537_18,r7
                                    509 ;	./src/main.c:50: int flag =0;
      000155 E4               [12]  510 	clr	a
      000156 F5 18            [12]  511 	mov	_main_flag_65537_18,a
      000158 F5 19            [12]  512 	mov	(_main_flag_65537_18 + 1),a
                                    513 ;	./src/main.c:51: while(1){	
      00015A FA               [12]  514 	mov	r2,a
      00015B FB               [12]  515 	mov	r3,a
      00015C                        516 00140$:
                                    517 ;	./src/main.c:52: if (but1 == 0) {
      00015C 20 B2 11         [24]  518 	jb	_P3_2,00107$
                                    519 ;	./src/main.c:53: if (cnt1 < 3) {
      00015F BF 03 00         [24]  520 	cjne	r7,#0x03,00265$
      000162                        521 00265$:
      000162 50 0E            [24]  522 	jnc	00108$
                                    523 ;	./src/main.c:54: cnt1++;
      000164 0F               [12]  524 	inc	r7
                                    525 ;	./src/main.c:55: if (cnt1 == 3) {
      000165 BF 03 0A         [24]  526 	cjne	r7,#0x03,00108$
                                    527 ;	./src/main.c:56: send_data = 1;
      000168 75 08 01         [24]  528 	mov	_send_data,#0x01
                                    529 ;	./src/main.c:57: send_flag = 1;
      00016B 75 0A 01         [24]  530 	mov	_send_flag,#0x01
      00016E 80 02            [24]  531 	sjmp	00108$
      000170                        532 00107$:
                                    533 ;	./src/main.c:61: else { cnt1 = 0; }
      000170 7F 00            [12]  534 	mov	r7,#0x00
      000172                        535 00108$:
                                    536 ;	./src/main.c:63: if (but2 == 0) {
      000172 20 B3 11         [24]  537 	jb	_P3_3,00114$
                                    538 ;	./src/main.c:64: if (cnt2 < 3) {
      000175 BE 03 00         [24]  539 	cjne	r6,#0x03,00270$
      000178                        540 00270$:
      000178 50 0E            [24]  541 	jnc	00115$
                                    542 ;	./src/main.c:65: cnt2++;
      00017A 0E               [12]  543 	inc	r6
                                    544 ;	./src/main.c:66: if (cnt2 == 3) {
      00017B BE 03 0A         [24]  545 	cjne	r6,#0x03,00115$
                                    546 ;	./src/main.c:67: send_data = 2;
      00017E 75 08 02         [24]  547 	mov	_send_data,#0x02
                                    548 ;	./src/main.c:68: send_flag = 1;
      000181 75 0A 01         [24]  549 	mov	_send_flag,#0x01
      000184 80 02            [24]  550 	sjmp	00115$
      000186                        551 00114$:
                                    552 ;	./src/main.c:72: else { cnt2 = 0; }
      000186 7E 00            [12]  553 	mov	r6,#0x00
      000188                        554 00115$:
                                    555 ;	./src/main.c:74: if (but3 == 0) {
      000188 20 A0 11         [24]  556 	jb	_P2_0,00121$
                                    557 ;	./src/main.c:75: if (cnt3 < 3) {
      00018B BD 03 00         [24]  558 	cjne	r5,#0x03,00275$
      00018E                        559 00275$:
      00018E 50 0E            [24]  560 	jnc	00122$
                                    561 ;	./src/main.c:76: cnt3++;
      000190 0D               [12]  562 	inc	r5
                                    563 ;	./src/main.c:77: if (cnt3 == 3) {
      000191 BD 03 0A         [24]  564 	cjne	r5,#0x03,00122$
                                    565 ;	./src/main.c:78: send_data = 3;
      000194 75 08 03         [24]  566 	mov	_send_data,#0x03
                                    567 ;	./src/main.c:79: send_flag = 1;
      000197 75 0A 01         [24]  568 	mov	_send_flag,#0x01
      00019A 80 02            [24]  569 	sjmp	00122$
      00019C                        570 00121$:
                                    571 ;	./src/main.c:83: else { cnt3 = 0; }
      00019C 7D 00            [12]  572 	mov	r5,#0x00
      00019E                        573 00122$:
                                    574 ;	./src/main.c:85: if (but4 == 0) {
      00019E 20 A1 15         [24]  575 	jb	_P2_1,00128$
                                    576 ;	./src/main.c:86: if (cnt4 < 3) {
      0001A1 74 FD            [12]  577 	mov	a,#0x100 - 0x03
      0001A3 25 15            [12]  578 	add	a,_main_cnt4_65537_18
      0001A5 40 12            [24]  579 	jc	00129$
                                    580 ;	./src/main.c:87: cnt4++;
      0001A7 05 15            [12]  581 	inc	_main_cnt4_65537_18
                                    582 ;	./src/main.c:88: if (cnt4 == 3) {
      0001A9 74 03            [12]  583 	mov	a,#0x03
      0001AB B5 15 0B         [24]  584 	cjne	a,_main_cnt4_65537_18,00129$
                                    585 ;	./src/main.c:89: send_data = 4;
      0001AE 75 08 04         [24]  586 	mov	_send_data,#0x04
                                    587 ;	./src/main.c:90: send_flag = 1;
      0001B1 75 0A 01         [24]  588 	mov	_send_flag,#0x01
      0001B4 80 03            [24]  589 	sjmp	00129$
      0001B6                        590 00128$:
                                    591 ;	./src/main.c:94: else { cnt4 = 0; }
      0001B6 75 15 00         [24]  592 	mov	_main_cnt4_65537_18,#0x00
      0001B9                        593 00129$:
                                    594 ;	./src/main.c:97: if (send_flag==1)
      0001B9 74 01            [12]  595 	mov	a,#0x01
      0001BB B5 0A 06         [24]  596 	cjne	a,_send_flag,00131$
                                    597 ;	./src/main.c:99: SBUF = send_data;	// send data to SBUF
      0001BE 85 08 99         [24]  598 	mov	_SBUF,_send_data
                                    599 ;	./src/main.c:100: send_flag = 0;
      0001C1 75 0A 00         [24]  600 	mov	_send_flag,#0x00
      0001C4                        601 00131$:
                                    602 ;	./src/main.c:104: if (received_flag == 1) {      
      0001C4 74 01            [12]  603 	mov	a,#0x01
      0001C6 B5 0B 1D         [24]  604 	cjne	a,_received_flag,00136$
                                    605 ;	./src/main.c:105: test = received_data; //receiving data
      0001C9 AC 09            [24]  606 	mov	r4,_received_data
      0001CB 8C 16            [24]  607 	mov	_main_test_65537_18,r4
                                    608 ;	./src/main.c:106: received_flag = 0;
      0001CD 75 0B 00         [24]  609 	mov	_received_flag,#0x00
                                    610 ;	./src/main.c:107: if(test==key[turn]) flag = 1;
      0001D0 EA               [12]  611 	mov	a,r2
      0001D1 24 0C            [12]  612 	add	a,#_key
      0001D3 F9               [12]  613 	mov	r1,a
      0001D4 E7               [12]  614 	mov	a,@r1
      0001D5 FC               [12]  615 	mov	r4,a
      0001D6 B5 16 08         [24]  616 	cjne	a,_main_test_65537_18,00133$
      0001D9 75 18 01         [24]  617 	mov	_main_flag_65537_18,#0x01
      0001DC 75 19 00         [24]  618 	mov	(_main_flag_65537_18 + 1),#0x00
      0001DF 80 05            [24]  619 	sjmp	00136$
      0001E1                        620 00133$:
                                    621 ;	./src/main.c:108: else flag=0;
      0001E1 E4               [12]  622 	clr	a
      0001E2 F5 18            [12]  623 	mov	_main_flag_65537_18,a
      0001E4 F5 19            [12]  624 	mov	(_main_flag_65537_18 + 1),a
      0001E6                        625 00136$:
                                    626 ;	./src/main.c:110: if(test==key[turn]){ // if the received data is the same as the current key-> print
      0001E6 EA               [12]  627 	mov	a,r2
      0001E7 24 0C            [12]  628 	add	a,#_key
      0001E9 F9               [12]  629 	mov	r1,a
      0001EA E7               [12]  630 	mov	a,@r1
      0001EB B5 16 08         [24]  631 	cjne	a,_main_test_65537_18,00138$
                                    632 ;	./src/main.c:111: turn++;
      0001EE 0A               [12]  633 	inc	r2
      0001EF BA 00 01         [24]  634 	cjne	r2,#0x00,00291$
      0001F2 0B               [12]  635 	inc	r3
      0001F3                        636 00291$:
                                    637 ;	./src/main.c:112: test=0;
      0001F3 75 16 00         [24]  638 	mov	_main_test_65537_18,#0x00
      0001F6                        639 00138$:
                                    640 ;	./src/main.c:114: display(turn,flag);
      0001F6 85 18 13         [24]  641 	mov	_display_PARM_2,_main_flag_65537_18
      0001F9 85 19 14         [24]  642 	mov	(_display_PARM_2 + 1),(_main_flag_65537_18 + 1)
      0001FC 8A 82            [24]  643 	mov	dpl,r2
      0001FE 8B 83            [24]  644 	mov	dph,r3
      000200 C0 07            [24]  645 	push	ar7
      000202 C0 06            [24]  646 	push	ar6
      000204 C0 05            [24]  647 	push	ar5
      000206 C0 03            [24]  648 	push	ar3
      000208 C0 02            [24]  649 	push	ar2
      00020A 12 00 A3         [24]  650 	lcall	_display
      00020D D0 02            [24]  651 	pop	ar2
      00020F D0 03            [24]  652 	pop	ar3
      000211 D0 05            [24]  653 	pop	ar5
      000213 D0 06            [24]  654 	pop	ar6
      000215 D0 07            [24]  655 	pop	ar7
                                    656 ;	./src/main.c:116: }
      000217 02 01 5C         [24]  657 	ljmp	00140$
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'uart_isr'
                                    660 ;------------------------------------------------------------
                                    661 ;	./src/main.c:119: void uart_isr(void) __interrupt (4)
                                    662 ;	-----------------------------------------
                                    663 ;	 function uart_isr
                                    664 ;	-----------------------------------------
      00021A                        665 _uart_isr:
                                    666 ;	./src/main.c:121: if(RI==1){
                                    667 ;	./src/main.c:122: RI=0;
                                    668 ;	assignBit
      00021A 10 98 02         [24]  669 	jbc	_RI,00119$
      00021D 80 06            [24]  670 	sjmp	00102$
      00021F                        671 00119$:
                                    672 ;	./src/main.c:123: received_data = SBUF;
      00021F 85 99 09         [24]  673 	mov	_received_data,_SBUF
                                    674 ;	./src/main.c:124: received_flag = 1;
      000222 75 0B 01         [24]  675 	mov	_received_flag,#0x01
      000225                        676 00102$:
                                    677 ;	./src/main.c:126: if(TI==1){
                                    678 ;	./src/main.c:127: TI=0;
                                    679 ;	assignBit
      000225 10 99 02         [24]  680 	jbc	_TI,00120$
      000228 80 00            [24]  681 	sjmp	00105$
      00022A                        682 00120$:
      00022A                        683 00105$:
                                    684 ;	./src/main.c:129: }
      00022A 32               [24]  685 	reti
                                    686 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    687 ;	eliminated unneeded push/pop not_psw
                                    688 ;	eliminated unneeded push/pop dpl
                                    689 ;	eliminated unneeded push/pop dph
                                    690 ;	eliminated unneeded push/pop b
                                    691 ;	eliminated unneeded push/pop acc
                                    692 	.area CSEG    (CODE)
                                    693 	.area CONST   (CODE)
                                    694 	.area XINIT   (CODE)
                                    695 	.area CABS    (ABS,CODE)
