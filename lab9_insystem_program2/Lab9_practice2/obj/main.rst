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
                                     12 	.globl _INIT_MOVIE
                                     13 	.globl _buzz_prog_en_error
                                     14 	.globl _buzz_verify_error
                                     15 	.globl _buzz_hal_ok
                                     16 	.globl _AT89S51_Program_erase
                                     17 	.globl _AT89S51_Program_read
                                     18 	.globl _AT89S51_Program_write
                                     19 	.globl _delay_ms
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _erase_flag
                                    117 	.globl _read_flag
                                    118 	.globl _write_flag
                                    119 	.globl _error_flag
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _error_flag::
      000008                        236 	.ds 1
      000009                        237 _write_flag::
      000009                        238 	.ds 1
      00000A                        239 _read_flag::
      00000A                        240 	.ds 1
      00000B                        241 _erase_flag::
      00000B                        242 	.ds 1
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area SSEG
      00000D                        250 __start__stack:
      00000D                        251 	.ds	1
                                    252 
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                                    261 	.area IABS    (ABS,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; bit data
                                    264 ;--------------------------------------------------------
                                    265 	.area BSEG    (BIT)
                                    266 ;--------------------------------------------------------
                                    267 ; paged external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area PSEG    (PAG,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; uninitialized external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XSEG    (XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XABS    (ABS,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; initialized external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XISEG   (XDATA)
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; interrupt vector
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
      000000                        296 __interrupt_vect:
      000000 02 00 06         [24]  297 	ljmp	__sdcc_gsinit_startup
                                    298 ;--------------------------------------------------------
                                    299 ; global & static initialisations
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.globl __sdcc_gsinit_startup
                                    306 	.globl __sdcc_program_startup
                                    307 	.globl __start__stack
                                    308 	.globl __mcs51_genXINIT
                                    309 	.globl __mcs51_genXRAMCLEAR
                                    310 	.globl __mcs51_genRAMCLEAR
                                    311 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  312 	ljmp	__sdcc_program_startup
                                    313 ;--------------------------------------------------------
                                    314 ; Home
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area HOME    (CODE)
      000003                        318 __sdcc_program_startup:
      000003 02 00 62         [24]  319 	ljmp	_main
                                    320 ;	return from main will return to caller
                                    321 ;--------------------------------------------------------
                                    322 ; code
                                    323 ;--------------------------------------------------------
                                    324 	.area CSEG    (CODE)
                                    325 ;------------------------------------------------------------
                                    326 ;Allocation info for local variables in function 'main'
                                    327 ;------------------------------------------------------------
                                    328 ;prebut1                   Allocated to registers r7 
                                    329 ;prebut2                   Allocated to registers r6 
                                    330 ;prebut3                   Allocated to registers r5 
                                    331 ;------------------------------------------------------------
                                    332 ;	./src/main.c:12: void main(void)
                                    333 ;	-----------------------------------------
                                    334 ;	 function main
                                    335 ;	-----------------------------------------
      000062                        336 _main:
                           000007   337 	ar7 = 0x07
                           000006   338 	ar6 = 0x06
                           000005   339 	ar5 = 0x05
                           000004   340 	ar4 = 0x04
                           000003   341 	ar3 = 0x03
                           000002   342 	ar2 = 0x02
                           000001   343 	ar1 = 0x01
                           000000   344 	ar0 = 0x00
                                    345 ;	./src/main.c:15: unsigned int prebut1 = 0;
      000062 7F 00            [12]  346 	mov	r7,#0x00
                                    347 ;	./src/main.c:16: unsigned int prebut2 = 0;
      000064 7E 00            [12]  348 	mov	r6,#0x00
                                    349 ;	./src/main.c:17: unsigned int prebut3 = 0;
      000066 7D 00            [12]  350 	mov	r5,#0x00
                                    351 ;	./src/main.c:19: AT8051_MOSI = 1;			// set MOSI high
                                    352 ;	assignBit
      000068 D2 80            [12]  353 	setb	_P0_0
                                    354 ;	./src/main.c:20: AT8051_MISO = 1;			// set MISO high
                                    355 ;	assignBit
      00006A D2 81            [12]  356 	setb	_P0_1
                                    357 ;	./src/main.c:21: AT8051_SCK = 1;				// set SCK high
                                    358 ;	assignBit
      00006C D2 82            [12]  359 	setb	_P0_2
                                    360 ;	./src/main.c:22: AT8051_RST = 0;				// set RST low
                                    361 ;	assignBit
      00006E C2 83            [12]  362 	clr	_P0_3
                                    363 ;	./src/main.c:25: INIT_MOVIE();
      000070 C0 07            [24]  364 	push	ar7
      000072 C0 06            [24]  365 	push	ar6
      000074 C0 05            [24]  366 	push	ar5
      000076 12 06 46         [24]  367 	lcall	_INIT_MOVIE
      000079 D0 05            [24]  368 	pop	ar5
      00007B D0 06            [24]  369 	pop	ar6
      00007D D0 07            [24]  370 	pop	ar7
                                    371 ;	./src/main.c:27: while (1) {
      00007F                        372 00135$:
                                    373 ;	./src/main.c:28: if ((but1 == 0) && (prebut1 == 1)) {
      00007F 20 A0 49         [24]  374 	jb	_P2_0,00109$
      000082 BF 01 46         [24]  375 	cjne	r7,#0x01,00109$
                                    376 ;	./src/main.c:29: delay_ms(10);
      000085 90 00 0A         [24]  377 	mov	dptr,#0x000a
      000088 C0 06            [24]  378 	push	ar6
      00008A C0 05            [24]  379 	push	ar5
      00008C 12 04 C6         [24]  380 	lcall	_delay_ms
      00008F D0 05            [24]  381 	pop	ar5
      000091 D0 06            [24]  382 	pop	ar6
                                    383 ;	./src/main.c:30: if (but1 == 0) {
      000093 20 A0 35         [24]  384 	jb	_P2_0,00109$
                                    385 ;	./src/main.c:32: write_flag = AT89S51_Program_write();
      000096 C0 06            [24]  386 	push	ar6
      000098 C0 05            [24]  387 	push	ar5
      00009A 12 01 67         [24]  388 	lcall	_AT89S51_Program_write
      00009D 85 82 09         [24]  389 	mov	_write_flag,dpl
      0000A0 D0 05            [24]  390 	pop	ar5
      0000A2 D0 06            [24]  391 	pop	ar6
                                    392 ;	./src/main.c:35: if (write_flag == HAL_OK) {	
      0000A4 E5 09            [12]  393 	mov	a,_write_flag
      0000A6 70 10            [24]  394 	jnz	00104$
                                    395 ;	./src/main.c:36: LED = 0xFE;
      0000A8 75 90 FE         [24]  396 	mov	_P1,#0xfe
                                    397 ;	./src/main.c:37: buzz_hal_ok();
      0000AB C0 06            [24]  398 	push	ar6
      0000AD C0 05            [24]  399 	push	ar5
      0000AF 12 04 16         [24]  400 	lcall	_buzz_hal_ok
      0000B2 D0 05            [24]  401 	pop	ar5
      0000B4 D0 06            [24]  402 	pop	ar6
      0000B6 80 13            [24]  403 	sjmp	00109$
      0000B8                        404 00104$:
                                    405 ;	./src/main.c:39: else if (write_flag == HAL_Prog_En_ERROR) {
      0000B8 74 01            [12]  406 	mov	a,#0x01
      0000BA B5 09 0E         [24]  407 	cjne	a,_write_flag,00109$
                                    408 ;	./src/main.c:40: LED = ~(0x80);
      0000BD 75 90 7F         [24]  409 	mov	_P1,#0x7f
                                    410 ;	./src/main.c:41: buzz_prog_en_error();
      0000C0 C0 06            [24]  411 	push	ar6
      0000C2 C0 05            [24]  412 	push	ar5
      0000C4 12 04 41         [24]  413 	lcall	_buzz_prog_en_error
      0000C7 D0 05            [24]  414 	pop	ar5
      0000C9 D0 06            [24]  415 	pop	ar6
      0000CB                        416 00109$:
                                    417 ;	./src/main.c:46: if ((but2 == 0) && (prebut2 == 1)) {
      0000CB 20 A1 4A         [24]  418 	jb	_P2_1,00122$
      0000CE BE 01 47         [24]  419 	cjne	r6,#0x01,00122$
                                    420 ;	./src/main.c:47: delay_ms(10);
      0000D1 90 00 0A         [24]  421 	mov	dptr,#0x000a
      0000D4 C0 05            [24]  422 	push	ar5
      0000D6 12 04 C6         [24]  423 	lcall	_delay_ms
      0000D9 D0 05            [24]  424 	pop	ar5
                                    425 ;	./src/main.c:48: if (but2 == 0) {
      0000DB 20 A1 3A         [24]  426 	jb	_P2_1,00122$
                                    427 ;	./src/main.c:50: read_flag=AT89S51_Program_read();
      0000DE C0 05            [24]  428 	push	ar5
      0000E0 12 02 6B         [24]  429 	lcall	_AT89S51_Program_read
      0000E3 85 82 0A         [24]  430 	mov	_read_flag,dpl
      0000E6 D0 05            [24]  431 	pop	ar5
                                    432 ;	./src/main.c:53: if (read_flag == HAL_OK) {	
      0000E8 E5 0A            [12]  433 	mov	a,_read_flag
      0000EA 70 0C            [24]  434 	jnz	00117$
                                    435 ;	./src/main.c:54: LED = 0xFC;
      0000EC 75 90 FC         [24]  436 	mov	_P1,#0xfc
                                    437 ;	./src/main.c:55: buzz_hal_ok();
      0000EF C0 05            [24]  438 	push	ar5
      0000F1 12 04 16         [24]  439 	lcall	_buzz_hal_ok
      0000F4 D0 05            [24]  440 	pop	ar5
      0000F6 80 20            [24]  441 	sjmp	00122$
      0000F8                        442 00117$:
                                    443 ;	./src/main.c:57: else if (read_flag == HAL_Prog_En_ERROR) {
      0000F8 74 01            [12]  444 	mov	a,#0x01
      0000FA B5 0A 0C         [24]  445 	cjne	a,_read_flag,00114$
                                    446 ;	./src/main.c:58: LED = ~(0x80);
      0000FD 75 90 7F         [24]  447 	mov	_P1,#0x7f
                                    448 ;	./src/main.c:59: buzz_prog_en_error();
      000100 C0 05            [24]  449 	push	ar5
      000102 12 04 41         [24]  450 	lcall	_buzz_prog_en_error
      000105 D0 05            [24]  451 	pop	ar5
      000107 80 0F            [24]  452 	sjmp	00122$
      000109                        453 00114$:
                                    454 ;	./src/main.c:61: else if (read_flag == HAL_Verify_ERROR) {
      000109 74 02            [12]  455 	mov	a,#0x02
      00010B B5 0A 0A         [24]  456 	cjne	a,_read_flag,00122$
                                    457 ;	./src/main.c:62: LED = ~(0x40);
      00010E 75 90 BF         [24]  458 	mov	_P1,#0xbf
                                    459 ;	./src/main.c:63: buzz_verify_error();
      000111 C0 05            [24]  460 	push	ar5
      000113 12 04 6C         [24]  461 	lcall	_buzz_verify_error
      000116 D0 05            [24]  462 	pop	ar5
      000118                        463 00122$:
                                    464 ;	./src/main.c:68: if ((but3 == 0) && (prebut3 == 1)) {
      000118 20 B2 28         [24]  465 	jb	_P3_2,00132$
      00011B BD 01 25         [24]  466 	cjne	r5,#0x01,00132$
                                    467 ;	./src/main.c:69: delay_ms(10);
      00011E 90 00 0A         [24]  468 	mov	dptr,#0x000a
      000121 12 04 C6         [24]  469 	lcall	_delay_ms
                                    470 ;	./src/main.c:70: if (but3 == 0) {
      000124 20 B2 1C         [24]  471 	jb	_P3_2,00132$
                                    472 ;	./src/main.c:72: erase_flag = AT89S51_Program_erase();
      000127 12 03 C5         [24]  473 	lcall	_AT89S51_Program_erase
                                    474 ;	./src/main.c:75: if (erase_flag == HAL_OK) {	
      00012A E5 82            [12]  475 	mov	a,dpl
      00012C F5 0B            [12]  476 	mov	_erase_flag,a
      00012E 70 08            [24]  477 	jnz	00127$
                                    478 ;	./src/main.c:76: LED = 0xF8;
      000130 75 90 F8         [24]  479 	mov	_P1,#0xf8
                                    480 ;	./src/main.c:77: buzz_hal_ok();
      000133 12 04 16         [24]  481 	lcall	_buzz_hal_ok
      000136 80 0B            [24]  482 	sjmp	00132$
      000138                        483 00127$:
                                    484 ;	./src/main.c:79: else if (erase_flag == HAL_Prog_En_ERROR) {
      000138 74 01            [12]  485 	mov	a,#0x01
      00013A B5 0B 06         [24]  486 	cjne	a,_erase_flag,00132$
                                    487 ;	./src/main.c:80: LED = ~(0x80);
      00013D 75 90 7F         [24]  488 	mov	_P1,#0x7f
                                    489 ;	./src/main.c:81: buzz_prog_en_error();
      000140 12 04 41         [24]  490 	lcall	_buzz_prog_en_error
      000143                        491 00132$:
                                    492 ;	./src/main.c:87: prebut1 = but1;
      000143 A2 A0            [12]  493 	mov	c,_P2_0
      000145 E4               [12]  494 	clr	a
      000146 33               [12]  495 	rlc	a
      000147 FF               [12]  496 	mov	r7,a
                                    497 ;	./src/main.c:88: prebut2 = but2;
      000148 A2 A1            [12]  498 	mov	c,_P2_1
      00014A E4               [12]  499 	clr	a
      00014B 33               [12]  500 	rlc	a
      00014C FE               [12]  501 	mov	r6,a
                                    502 ;	./src/main.c:89: prebut3 = but3;	
      00014D A2 B2            [12]  503 	mov	c,_P3_2
      00014F E4               [12]  504 	clr	a
      000150 33               [12]  505 	rlc	a
      000151 FD               [12]  506 	mov	r5,a
                                    507 ;	./src/main.c:90: delay_ms(20);
      000152 90 00 14         [24]  508 	mov	dptr,#0x0014
      000155 C0 07            [24]  509 	push	ar7
      000157 C0 06            [24]  510 	push	ar6
      000159 C0 05            [24]  511 	push	ar5
      00015B 12 04 C6         [24]  512 	lcall	_delay_ms
      00015E D0 05            [24]  513 	pop	ar5
      000160 D0 06            [24]  514 	pop	ar6
      000162 D0 07            [24]  515 	pop	ar7
                                    516 ;	./src/main.c:92: }
      000164 02 00 7F         [24]  517 	ljmp	00135$
                                    518 	.area CSEG    (CODE)
                                    519 	.area CONST   (CODE)
                                    520 	.area XINIT   (CODE)
                                    521 	.area CABS    (ABS,CODE)
