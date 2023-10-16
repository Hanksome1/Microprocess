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
                                     12 	.globl _Initial7219
                                     13 	.globl _Write7219
                                     14 	.globl _delay_ms
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
                                    111 	.globl _Display
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _Display_num_65536_12:
      000008                        228 	.ds 4
      00000C                        229 _Display_seg_65536_13:
      00000C                        230 	.ds 10
      000016                        231 _Display_i_65536_13:
      000016                        232 	.ds 2
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
                                    236 ;--------------------------------------------------------
                                    237 ; Stack segment in internal ram
                                    238 ;--------------------------------------------------------
                                    239 	.area SSEG
      00001F                        240 __start__stack:
      00001F                        241 	.ds	1
                                    242 
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; interrupt vector
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
      000000                        286 __interrupt_vect:
      000000 02 00 06         [24]  287 	ljmp	__sdcc_gsinit_startup
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      000003                        308 __sdcc_program_startup:
      000003 02 00 62         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'main'
                                    317 ;------------------------------------------------------------
                                    318 ;num                       Allocated to registers r4 r5 r6 r7 
                                    319 ;tmp                       Allocated to registers r2 
                                    320 ;but                       Allocated to registers r2 
                                    321 ;prebut                    Allocated to registers r3 
                                    322 ;------------------------------------------------------------
                                    323 ;	./src/main.c:20: void main(void)
                                    324 ;	-----------------------------------------
                                    325 ;	 function main
                                    326 ;	-----------------------------------------
      000062                        327 _main:
                           000007   328 	ar7 = 0x07
                           000006   329 	ar6 = 0x06
                           000005   330 	ar5 = 0x05
                           000004   331 	ar4 = 0x04
                           000003   332 	ar3 = 0x03
                           000002   333 	ar2 = 0x02
                           000001   334 	ar1 = 0x01
                           000000   335 	ar0 = 0x00
                                    336 ;	./src/main.c:22: long int num = 0;
      000062 7C 00            [12]  337 	mov	r4,#0x00
      000064 7D 00            [12]  338 	mov	r5,#0x00
      000066 7E 00            [12]  339 	mov	r6,#0x00
      000068 7F 00            [12]  340 	mov	r7,#0x00
                                    341 ;	./src/main.c:23: unsigned char tmp, but, prebut = 0xFF;
      00006A 7B FF            [12]  342 	mov	r3,#0xff
                                    343 ;	./src/main.c:25: Initial7219();					// MAX7219 initialize
      00006C C0 07            [24]  344 	push	ar7
      00006E C0 06            [24]  345 	push	ar6
      000070 C0 05            [24]  346 	push	ar5
      000072 C0 04            [24]  347 	push	ar4
      000074 C0 03            [24]  348 	push	ar3
      000076 12 02 DD         [24]  349 	lcall	_Initial7219
      000079 D0 03            [24]  350 	pop	ar3
      00007B D0 04            [24]  351 	pop	ar4
      00007D D0 05            [24]  352 	pop	ar5
      00007F D0 06            [24]  353 	pop	ar6
      000081 D0 07            [24]  354 	pop	ar7
                                    355 ;	./src/main.c:26: while (1) {
      000083                        356 00116$:
                                    357 ;	./src/main.c:27: P0 = 0x0F;
      000083 75 80 0F         [24]  358 	mov	_P0,#0x0f
                                    359 ;	./src/main.c:28: tmp = P0;					// button detection (cul)
      000086 AA 80            [24]  360 	mov	r2,_P0
                                    361 ;	./src/main.c:29: P0 = 0xF0;
      000088 75 80 F0         [24]  362 	mov	_P0,#0xf0
                                    363 ;	./src/main.c:30: but = tmp | P0;				// button detection (row)
      00008B E5 80            [12]  364 	mov	a,_P0
      00008D 42 02            [12]  365 	orl	ar2,a
                                    366 ;	./src/main.c:33: if (but != prebut && but != 0xFF) {
      00008F EA               [12]  367 	mov	a,r2
      000090 B5 03 03         [24]  368 	cjne	a,ar3,00192$
      000093 02 01 5C         [24]  369 	ljmp	00113$
      000096                        370 00192$:
      000096 BA FF 03         [24]  371 	cjne	r2,#0xff,00193$
      000099 02 01 5C         [24]  372 	ljmp	00113$
      00009C                        373 00193$:
                                    374 ;	./src/main.c:34: num *= 10;
      00009C 8C 1B            [24]  375 	mov	__mullong_PARM_2,r4
      00009E 8D 1C            [24]  376 	mov	(__mullong_PARM_2 + 1),r5
      0000A0 8E 1D            [24]  377 	mov	(__mullong_PARM_2 + 2),r6
      0000A2 8F 1E            [24]  378 	mov	(__mullong_PARM_2 + 3),r7
                                    379 ;	./src/main.c:35: switch (but) {
      0000A4 90 00 0A         [24]  380 	mov	dptr,#(0x0a&0x00ff)
      0000A7 E4               [12]  381 	clr	a
      0000A8 F5 F0            [12]  382 	mov	b,a
      0000AA C0 02            [24]  383 	push	ar2
      0000AC 12 04 07         [24]  384 	lcall	__mullong
      0000AF AC 82            [24]  385 	mov	r4,dpl
      0000B1 AD 83            [24]  386 	mov	r5,dph
      0000B3 AE F0            [24]  387 	mov	r6,b
      0000B5 FF               [12]  388 	mov	r7,a
      0000B6 D0 02            [24]  389 	pop	ar2
      0000B8 BA B7 02         [24]  390 	cjne	r2,#0xb7,00194$
      0000BB 80 78            [24]  391 	sjmp	00107$
      0000BD                        392 00194$:
      0000BD BA BB 03         [24]  393 	cjne	r2,#0xbb,00195$
      0000C0 02 01 42         [24]  394 	ljmp	00108$
      0000C3                        395 00195$:
      0000C3 BA BD 03         [24]  396 	cjne	r2,#0xbd,00196$
      0000C6 02 01 4F         [24]  397 	ljmp	00109$
      0000C9                        398 00196$:
      0000C9 BA D7 02         [24]  399 	cjne	r2,#0xd7,00197$
      0000CC 80 40            [24]  400 	sjmp	00104$
      0000CE                        401 00197$:
      0000CE BA DB 02         [24]  402 	cjne	r2,#0xdb,00198$
      0000D1 80 48            [24]  403 	sjmp	00105$
      0000D3                        404 00198$:
      0000D3 BA DD 02         [24]  405 	cjne	r2,#0xdd,00199$
      0000D6 80 50            [24]  406 	sjmp	00106$
      0000D8                        407 00199$:
      0000D8 BA E7 02         [24]  408 	cjne	r2,#0xe7,00200$
      0000DB 80 0A            [24]  409 	sjmp	00101$
      0000DD                        410 00200$:
      0000DD BA EB 02         [24]  411 	cjne	r2,#0xeb,00201$
      0000E0 80 12            [24]  412 	sjmp	00102$
      0000E2                        413 00201$:
                                    414 ;	./src/main.c:36: case 0xE7:  num++;	// 9
      0000E2 BA ED 77         [24]  415 	cjne	r2,#0xed,00113$
      0000E5 80 1A            [24]  416 	sjmp	00103$
      0000E7                        417 00101$:
      0000E7 0C               [12]  418 	inc	r4
      0000E8 BC 00 09         [24]  419 	cjne	r4,#0x00,00203$
      0000EB 0D               [12]  420 	inc	r5
      0000EC BD 00 05         [24]  421 	cjne	r5,#0x00,00203$
      0000EF 0E               [12]  422 	inc	r6
      0000F0 BE 00 01         [24]  423 	cjne	r6,#0x00,00203$
      0000F3 0F               [12]  424 	inc	r7
      0000F4                        425 00203$:
                                    426 ;	./src/main.c:37: case 0xEB:  num++;	// 8
      0000F4                        427 00102$:
      0000F4 0C               [12]  428 	inc	r4
      0000F5 BC 00 09         [24]  429 	cjne	r4,#0x00,00204$
      0000F8 0D               [12]  430 	inc	r5
      0000F9 BD 00 05         [24]  431 	cjne	r5,#0x00,00204$
      0000FC 0E               [12]  432 	inc	r6
      0000FD BE 00 01         [24]  433 	cjne	r6,#0x00,00204$
      000100 0F               [12]  434 	inc	r7
      000101                        435 00204$:
                                    436 ;	./src/main.c:38: case 0xED:  num++;	// 7
      000101                        437 00103$:
      000101 0C               [12]  438 	inc	r4
      000102 BC 00 09         [24]  439 	cjne	r4,#0x00,00205$
      000105 0D               [12]  440 	inc	r5
      000106 BD 00 05         [24]  441 	cjne	r5,#0x00,00205$
      000109 0E               [12]  442 	inc	r6
      00010A BE 00 01         [24]  443 	cjne	r6,#0x00,00205$
      00010D 0F               [12]  444 	inc	r7
      00010E                        445 00205$:
                                    446 ;	./src/main.c:39: case 0xD7:  num++;	// 6
      00010E                        447 00104$:
      00010E 0C               [12]  448 	inc	r4
      00010F BC 00 09         [24]  449 	cjne	r4,#0x00,00206$
      000112 0D               [12]  450 	inc	r5
      000113 BD 00 05         [24]  451 	cjne	r5,#0x00,00206$
      000116 0E               [12]  452 	inc	r6
      000117 BE 00 01         [24]  453 	cjne	r6,#0x00,00206$
      00011A 0F               [12]  454 	inc	r7
      00011B                        455 00206$:
                                    456 ;	./src/main.c:40: case 0xDB:  num++;	// 5
      00011B                        457 00105$:
      00011B 0C               [12]  458 	inc	r4
      00011C BC 00 09         [24]  459 	cjne	r4,#0x00,00207$
      00011F 0D               [12]  460 	inc	r5
      000120 BD 00 05         [24]  461 	cjne	r5,#0x00,00207$
      000123 0E               [12]  462 	inc	r6
      000124 BE 00 01         [24]  463 	cjne	r6,#0x00,00207$
      000127 0F               [12]  464 	inc	r7
      000128                        465 00207$:
                                    466 ;	./src/main.c:41: case 0xDD:  num++;	// 4
      000128                        467 00106$:
      000128 0C               [12]  468 	inc	r4
      000129 BC 00 09         [24]  469 	cjne	r4,#0x00,00208$
      00012C 0D               [12]  470 	inc	r5
      00012D BD 00 05         [24]  471 	cjne	r5,#0x00,00208$
      000130 0E               [12]  472 	inc	r6
      000131 BE 00 01         [24]  473 	cjne	r6,#0x00,00208$
      000134 0F               [12]  474 	inc	r7
      000135                        475 00208$:
                                    476 ;	./src/main.c:42: case 0xB7:  num++;	// 3
      000135                        477 00107$:
      000135 0C               [12]  478 	inc	r4
      000136 BC 00 09         [24]  479 	cjne	r4,#0x00,00209$
      000139 0D               [12]  480 	inc	r5
      00013A BD 00 05         [24]  481 	cjne	r5,#0x00,00209$
      00013D 0E               [12]  482 	inc	r6
      00013E BE 00 01         [24]  483 	cjne	r6,#0x00,00209$
      000141 0F               [12]  484 	inc	r7
      000142                        485 00209$:
                                    486 ;	./src/main.c:43: case 0xBB:  num++;	// 2
      000142                        487 00108$:
      000142 0C               [12]  488 	inc	r4
      000143 BC 00 09         [24]  489 	cjne	r4,#0x00,00210$
      000146 0D               [12]  490 	inc	r5
      000147 BD 00 05         [24]  491 	cjne	r5,#0x00,00210$
      00014A 0E               [12]  492 	inc	r6
      00014B BE 00 01         [24]  493 	cjne	r6,#0x00,00210$
      00014E 0F               [12]  494 	inc	r7
      00014F                        495 00210$:
                                    496 ;	./src/main.c:44: case 0xBD:  num++;	// 1
      00014F                        497 00109$:
      00014F 0C               [12]  498 	inc	r4
      000150 BC 00 09         [24]  499 	cjne	r4,#0x00,00211$
      000153 0D               [12]  500 	inc	r5
      000154 BD 00 05         [24]  501 	cjne	r5,#0x00,00211$
      000157 0E               [12]  502 	inc	r6
      000158 BE 00 01         [24]  503 	cjne	r6,#0x00,00211$
      00015B 0F               [12]  504 	inc	r7
      00015C                        505 00211$:
                                    506 ;	./src/main.c:46: }
      00015C                        507 00113$:
                                    508 ;	./src/main.c:48: prebut = but;
      00015C 8A 03            [24]  509 	mov	ar3,r2
                                    510 ;	./src/main.c:49: Display(num);
      00015E 8C 82            [24]  511 	mov	dpl,r4
      000160 8D 83            [24]  512 	mov	dph,r5
      000162 8E F0            [24]  513 	mov	b,r6
      000164 EF               [12]  514 	mov	a,r7
      000165 C0 07            [24]  515 	push	ar7
      000167 C0 06            [24]  516 	push	ar6
      000169 C0 05            [24]  517 	push	ar5
      00016B C0 04            [24]  518 	push	ar4
      00016D C0 03            [24]  519 	push	ar3
      00016F 12 01 85         [24]  520 	lcall	_Display
                                    521 ;	./src/main.c:50: delay_ms(10);
      000172 90 00 0A         [24]  522 	mov	dptr,#0x000a
      000175 12 02 1D         [24]  523 	lcall	_delay_ms
      000178 D0 03            [24]  524 	pop	ar3
      00017A D0 04            [24]  525 	pop	ar4
      00017C D0 05            [24]  526 	pop	ar5
      00017E D0 06            [24]  527 	pop	ar6
      000180 D0 07            [24]  528 	pop	ar7
                                    529 ;	./src/main.c:52: }
      000182 02 00 83         [24]  530 	ljmp	00116$
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'Display'
                                    533 ;------------------------------------------------------------
                                    534 ;num                       Allocated with name '_Display_num_65536_12'
                                    535 ;seg                       Allocated with name '_Display_seg_65536_13'
                                    536 ;i                         Allocated with name '_Display_i_65536_13'
                                    537 ;print                     Allocated to registers r2 r3 
                                    538 ;------------------------------------------------------------
                                    539 ;	./src/main.c:54: void Display(long int num) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function Display
                                    542 ;	-----------------------------------------
      000185                        543 _Display:
      000185 85 82 08         [24]  544 	mov	_Display_num_65536_12,dpl
      000188 85 83 09         [24]  545 	mov	(_Display_num_65536_12 + 1),dph
      00018B 85 F0 0A         [24]  546 	mov	(_Display_num_65536_12 + 2),b
      00018E F5 0B            [12]  547 	mov	(_Display_num_65536_12 + 3),a
                                    548 ;	./src/main.c:55: unsigned char seg[] = {
      000190 75 0C 7E         [24]  549 	mov	_Display_seg_65536_13,#0x7e
      000193 75 0D 30         [24]  550 	mov	(_Display_seg_65536_13 + 0x0001),#0x30
      000196 75 0E 6D         [24]  551 	mov	(_Display_seg_65536_13 + 0x0002),#0x6d
      000199 75 0F 79         [24]  552 	mov	(_Display_seg_65536_13 + 0x0003),#0x79
      00019C 75 10 33         [24]  553 	mov	(_Display_seg_65536_13 + 0x0004),#0x33
      00019F 75 11 5B         [24]  554 	mov	(_Display_seg_65536_13 + 0x0005),#0x5b
      0001A2 75 12 5F         [24]  555 	mov	(_Display_seg_65536_13 + 0x0006),#0x5f
      0001A5 75 13 70         [24]  556 	mov	(_Display_seg_65536_13 + 0x0007),#0x70
      0001A8 75 14 7F         [24]  557 	mov	(_Display_seg_65536_13 + 0x0008),#0x7f
      0001AB 75 15 7B         [24]  558 	mov	(_Display_seg_65536_13 + 0x0009),#0x7b
                                    559 ;	./src/main.c:70: while(num>0){
      0001AE E4               [12]  560 	clr	a
      0001AF F5 16            [12]  561 	mov	_Display_i_65536_13,a
      0001B1 F5 17            [12]  562 	mov	(_Display_i_65536_13 + 1),a
      0001B3                        563 00101$:
      0001B3 C3               [12]  564 	clr	c
      0001B4 E4               [12]  565 	clr	a
      0001B5 95 08            [12]  566 	subb	a,_Display_num_65536_12
      0001B7 E4               [12]  567 	clr	a
      0001B8 95 09            [12]  568 	subb	a,(_Display_num_65536_12 + 1)
      0001BA E4               [12]  569 	clr	a
      0001BB 95 0A            [12]  570 	subb	a,(_Display_num_65536_12 + 2)
      0001BD 74 80            [12]  571 	mov	a,#(0x00 ^ 0x80)
      0001BF 85 0B F0         [24]  572 	mov	b,(_Display_num_65536_12 + 3)
      0001C2 63 F0 80         [24]  573 	xrl	b,#0x80
      0001C5 95 F0            [12]  574 	subb	a,b
      0001C7 50 53            [24]  575 	jnc	00104$
                                    576 ;	./src/main.c:71: int print = num%10;
      0001C9 75 1B 0A         [24]  577 	mov	__modslong_PARM_2,#0x0a
      0001CC E4               [12]  578 	clr	a
      0001CD F5 1C            [12]  579 	mov	(__modslong_PARM_2 + 1),a
      0001CF F5 1D            [12]  580 	mov	(__modslong_PARM_2 + 2),a
      0001D1 F5 1E            [12]  581 	mov	(__modslong_PARM_2 + 3),a
      0001D3 85 08 82         [24]  582 	mov	dpl,_Display_num_65536_12
      0001D6 85 09 83         [24]  583 	mov	dph,(_Display_num_65536_12 + 1)
      0001D9 85 0A F0         [24]  584 	mov	b,(_Display_num_65536_12 + 2)
      0001DC E5 0B            [12]  585 	mov	a,(_Display_num_65536_12 + 3)
      0001DE 12 04 75         [24]  586 	lcall	__modslong
      0001E1 AA 82            [24]  587 	mov	r2,dpl
                                    588 ;	./src/main.c:72: i++;
      0001E3 05 16            [12]  589 	inc	_Display_i_65536_13
      0001E5 E4               [12]  590 	clr	a
      0001E6 B5 16 02         [24]  591 	cjne	a,_Display_i_65536_13,00120$
      0001E9 05 17            [12]  592 	inc	(_Display_i_65536_13 + 1)
      0001EB                        593 00120$:
                                    594 ;	./src/main.c:73: Write7219( i , seg[print]);
      0001EB 85 16 82         [24]  595 	mov	dpl,_Display_i_65536_13
      0001EE EA               [12]  596 	mov	a,r2
      0001EF 24 0C            [12]  597 	add	a,#_Display_seg_65536_13
      0001F1 F9               [12]  598 	mov	r1,a
      0001F2 87 18            [24]  599 	mov	_Write7219_PARM_2,@r1
      0001F4 12 02 7B         [24]  600 	lcall	_Write7219
                                    601 ;	./src/main.c:74: num /= 10 ;
      0001F7 75 1B 0A         [24]  602 	mov	__divslong_PARM_2,#0x0a
      0001FA E4               [12]  603 	clr	a
      0001FB F5 1C            [12]  604 	mov	(__divslong_PARM_2 + 1),a
      0001FD F5 1D            [12]  605 	mov	(__divslong_PARM_2 + 2),a
      0001FF F5 1E            [12]  606 	mov	(__divslong_PARM_2 + 3),a
      000201 85 08 82         [24]  607 	mov	dpl,_Display_num_65536_12
      000204 85 09 83         [24]  608 	mov	dph,(_Display_num_65536_12 + 1)
      000207 85 0A F0         [24]  609 	mov	b,(_Display_num_65536_12 + 2)
      00020A E5 0B            [12]  610 	mov	a,(_Display_num_65536_12 + 3)
      00020C 12 04 C4         [24]  611 	lcall	__divslong
      00020F 85 82 08         [24]  612 	mov	_Display_num_65536_12,dpl
      000212 85 83 09         [24]  613 	mov	(_Display_num_65536_12 + 1),dph
      000215 85 F0 0A         [24]  614 	mov	(_Display_num_65536_12 + 2),b
      000218 F5 0B            [12]  615 	mov	(_Display_num_65536_12 + 3),a
      00021A 80 97            [24]  616 	sjmp	00101$
      00021C                        617 00104$:
                                    618 ;	./src/main.c:76: }
      00021C 22               [24]  619 	ret
                                    620 	.area CSEG    (CODE)
                                    621 	.area CONST   (CODE)
                                    622 	.area XINIT   (CODE)
                                    623 	.area CABS    (ABS,CODE)
