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
                                     13 	.globl _Writesingle7219
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
                                    111 	.globl _Move_PARM_2
                                    112 	.globl _Move
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _main_m_65536_8:
      000008                        229 	.ds 8
      000010                        230 _Move_PARM_2:
      000010                        231 	.ds 1
      000011                        232 _Move_m_65536_12:
      000011                        233 	.ds 3
      000014                        234 _Move_sloc0_1_0:
      000014                        235 	.ds 3
      000017                        236 _Move_sloc1_1_0:
      000017                        237 	.ds 1
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable items in internal ram
                                    240 ;--------------------------------------------------------
                                    241 ;--------------------------------------------------------
                                    242 ; Stack segment in internal ram
                                    243 ;--------------------------------------------------------
                                    244 	.area SSEG
      00001D                        245 __start__stack:
      00001D                        246 	.ds	1
                                    247 
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; uninitialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; initialized external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; interrupt vector
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
      000000                        291 __interrupt_vect:
      000000 02 00 06         [24]  292 	ljmp	__sdcc_gsinit_startup
                                    293 ;--------------------------------------------------------
                                    294 ; global & static initialisations
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.globl __sdcc_gsinit_startup
                                    301 	.globl __sdcc_program_startup
                                    302 	.globl __start__stack
                                    303 	.globl __mcs51_genXINIT
                                    304 	.globl __mcs51_genXRAMCLEAR
                                    305 	.globl __mcs51_genRAMCLEAR
                                    306 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  307 	ljmp	__sdcc_program_startup
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
      000003                        313 __sdcc_program_startup:
      000003 02 00 62         [24]  314 	ljmp	_main
                                    315 ;	return from main will return to caller
                                    316 ;--------------------------------------------------------
                                    317 ; code
                                    318 ;--------------------------------------------------------
                                    319 	.area CSEG    (CODE)
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'main'
                                    322 ;------------------------------------------------------------
                                    323 ;m                         Allocated with name '_main_m_65536_8'
                                    324 ;i                         Allocated to registers r6 
                                    325 ;cnt                       Allocated to registers 
                                    326 ;------------------------------------------------------------
                                    327 ;	./src/main.c:20: void main(void)
                                    328 ;	-----------------------------------------
                                    329 ;	 function main
                                    330 ;	-----------------------------------------
      000062                        331 _main:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
                                    340 ;	./src/main.c:22: unsigned char m[8] = {0x80, 0, 0, 0, 0, 0, 0, 0};
      000062 75 08 80         [24]  341 	mov	_main_m_65536_8,#0x80
      000065 75 09 00         [24]  342 	mov	(_main_m_65536_8 + 0x0001),#0x00
      000068 75 0A 00         [24]  343 	mov	(_main_m_65536_8 + 0x0002),#0x00
      00006B 75 0B 00         [24]  344 	mov	(_main_m_65536_8 + 0x0003),#0x00
      00006E 75 0C 00         [24]  345 	mov	(_main_m_65536_8 + 0x0004),#0x00
      000071 75 0D 00         [24]  346 	mov	(_main_m_65536_8 + 0x0005),#0x00
      000074 75 0E 00         [24]  347 	mov	(_main_m_65536_8 + 0x0006),#0x00
      000077 75 0F 00         [24]  348 	mov	(_main_m_65536_8 + 0x0007),#0x00
                                    349 ;	./src/main.c:25: Initial7219();				 	// MAX7219 initialize
      00007A 12 02 C6         [24]  350 	lcall	_Initial7219
                                    351 ;	./src/main.c:26: while (1) {
      00007D 7F 00            [12]  352 	mov	r7,#0x00
      00007F                        353 00103$:
                                    354 ;	./src/main.c:27: Move(m,(cnt++/7)%4);
      00007F 8F 05            [24]  355 	mov	ar5,r7
      000081 7E 00            [12]  356 	mov	r6,#0x00
      000083 0F               [12]  357 	inc	r7
      000084 75 1B 07         [24]  358 	mov	__divsint_PARM_2,#0x07
      000087 8E 1C            [24]  359 	mov	(__divsint_PARM_2 + 1),r6
      000089 8D 82            [24]  360 	mov	dpl,r5
      00008B 8E 83            [24]  361 	mov	dph,r6
      00008D C0 07            [24]  362 	push	ar7
      00008F 12 03 EB         [24]  363 	lcall	__divsint
      000092 75 1B 04         [24]  364 	mov	__modsint_PARM_2,#0x04
      000095 75 1C 00         [24]  365 	mov	(__modsint_PARM_2 + 1),#0x00
      000098 12 03 B5         [24]  366 	lcall	__modsint
      00009B AD 82            [24]  367 	mov	r5,dpl
      00009D 8D 10            [24]  368 	mov	_Move_PARM_2,r5
      00009F 90 00 08         [24]  369 	mov	dptr,#_main_m_65536_8
      0000A2 75 F0 40         [24]  370 	mov	b,#0x40
      0000A5 12 00 D7         [24]  371 	lcall	_Move
      0000A8 D0 07            [24]  372 	pop	ar7
                                    373 ;	./src/main.c:28: for (i = 8; i >= 1; i--) {
      0000AA 7E 08            [12]  374 	mov	r6,#0x08
      0000AC                        375 00105$:
                                    376 ;	./src/main.c:29: Writesingle7219(1, i, m[i - 1]);
      0000AC 8E 05            [24]  377 	mov	ar5,r6
      0000AE ED               [12]  378 	mov	a,r5
      0000AF 14               [12]  379 	dec	a
      0000B0 24 08            [12]  380 	add	a,#_main_m_65536_8
      0000B2 F9               [12]  381 	mov	r1,a
      0000B3 87 1A            [24]  382 	mov	_Writesingle7219_PARM_3,@r1
      0000B5 8E 19            [24]  383 	mov	_Writesingle7219_PARM_2,r6
      0000B7 75 82 01         [24]  384 	mov	dpl,#0x01
      0000BA C0 07            [24]  385 	push	ar7
      0000BC C0 06            [24]  386 	push	ar6
      0000BE 12 02 83         [24]  387 	lcall	_Writesingle7219
      0000C1 D0 06            [24]  388 	pop	ar6
      0000C3 D0 07            [24]  389 	pop	ar7
                                    390 ;	./src/main.c:28: for (i = 8; i >= 1; i--) {
      0000C5 1E               [12]  391 	dec	r6
      0000C6 BE 01 00         [24]  392 	cjne	r6,#0x01,00128$
      0000C9                        393 00128$:
      0000C9 50 E1            [24]  394 	jnc	00105$
                                    395 ;	./src/main.c:31: delay_ms(200);
      0000CB 90 00 C8         [24]  396 	mov	dptr,#0x00c8
      0000CE C0 07            [24]  397 	push	ar7
      0000D0 12 02 06         [24]  398 	lcall	_delay_ms
      0000D3 D0 07            [24]  399 	pop	ar7
                                    400 ;	./src/main.c:33: }
      0000D5 80 A8            [24]  401 	sjmp	00103$
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'Move'
                                    404 ;------------------------------------------------------------
                                    405 ;dir                       Allocated with name '_Move_PARM_2'
                                    406 ;m                         Allocated with name '_Move_m_65536_12'
                                    407 ;i                         Allocated to registers r3 r4 
                                    408 ;i                         Allocated with name '_Move_sloc0_1_0'
                                    409 ;sloc0                     Allocated with name '_Move_sloc0_1_0'
                                    410 ;sloc1                     Allocated with name '_Move_sloc1_1_0'
                                    411 ;------------------------------------------------------------
                                    412 ;	./src/main.c:35: void Move(unsigned char* m, char dir) {
                                    413 ;	-----------------------------------------
                                    414 ;	 function Move
                                    415 ;	-----------------------------------------
      0000D7                        416 _Move:
      0000D7 85 82 11         [24]  417 	mov	_Move_m_65536_12,dpl
      0000DA 85 83 12         [24]  418 	mov	(_Move_m_65536_12 + 1),dph
      0000DD 85 F0 13         [24]  419 	mov	(_Move_m_65536_12 + 2),b
                                    420 ;	./src/main.c:37: if (dir == LOWER_RIGHT){
      0000E0 E5 10            [12]  421 	mov	a,_Move_PARM_2
      0000E2 70 2C            [24]  422 	jnz	00102$
                                    423 ;	./src/main.c:38: m[0] /=2 ;
      0000E4 85 11 82         [24]  424 	mov	dpl,_Move_m_65536_12
      0000E7 85 12 83         [24]  425 	mov	dph,(_Move_m_65536_12 + 1)
      0000EA 85 13 F0         [24]  426 	mov	b,(_Move_m_65536_12 + 2)
      0000ED 12 03 99         [24]  427 	lcall	__gptrget
      0000F0 FC               [12]  428 	mov	r4,a
      0000F1 7B 00            [12]  429 	mov	r3,#0x00
      0000F3 75 1B 02         [24]  430 	mov	__divsint_PARM_2,#0x02
      0000F6 8B 1C            [24]  431 	mov	(__divsint_PARM_2 + 1),r3
      0000F8 8C 82            [24]  432 	mov	dpl,r4
      0000FA 8B 83            [24]  433 	mov	dph,r3
      0000FC 12 03 EB         [24]  434 	lcall	__divsint
      0000FF AB 82            [24]  435 	mov	r3,dpl
      000101 AC 83            [24]  436 	mov	r4,dph
      000103 85 11 82         [24]  437 	mov	dpl,_Move_m_65536_12
      000106 85 12 83         [24]  438 	mov	dph,(_Move_m_65536_12 + 1)
      000109 85 13 F0         [24]  439 	mov	b,(_Move_m_65536_12 + 2)
      00010C EB               [12]  440 	mov	a,r3
      00010D 12 03 08         [24]  441 	lcall	__gptrput
      000110                        442 00102$:
                                    443 ;	./src/main.c:40: if (dir == LOWER_LEFT){
      000110 74 01            [12]  444 	mov	a,#0x01
      000112 B5 10 66         [24]  445 	cjne	a,_Move_PARM_2,00107$
                                    446 ;	./src/main.c:41: for(int i=0; i<=6; i++){
      000115 7B 00            [12]  447 	mov	r3,#0x00
      000117 7C 00            [12]  448 	mov	r4,#0x00
      000119 79 00            [12]  449 	mov	r1,#0x00
      00011B 7A 00            [12]  450 	mov	r2,#0x00
      00011D                        451 00116$:
      00011D C3               [12]  452 	clr	c
      00011E 74 06            [12]  453 	mov	a,#0x06
      000120 99               [12]  454 	subb	a,r1
      000121 74 80            [12]  455 	mov	a,#(0x00 ^ 0x80)
      000123 8A F0            [24]  456 	mov	b,r2
      000125 63 F0 80         [24]  457 	xrl	b,#0x80
      000128 95 F0            [12]  458 	subb	a,b
      00012A 40 4F            [24]  459 	jc	00107$
                                    460 ;	./src/main.c:42: if(m[i]!=0){
      00012C E9               [12]  461 	mov	a,r1
      00012D 25 11            [12]  462 	add	a,_Move_m_65536_12
      00012F F5 14            [12]  463 	mov	_Move_sloc0_1_0,a
      000131 EA               [12]  464 	mov	a,r2
      000132 35 12            [12]  465 	addc	a,(_Move_m_65536_12 + 1)
      000134 F5 15            [12]  466 	mov	(_Move_sloc0_1_0 + 1),a
      000136 85 13 16         [24]  467 	mov	(_Move_sloc0_1_0 + 2),(_Move_m_65536_12 + 2)
      000139 85 14 82         [24]  468 	mov	dpl,_Move_sloc0_1_0
      00013C 85 15 83         [24]  469 	mov	dph,(_Move_sloc0_1_0 + 1)
      00013F 85 16 F0         [24]  470 	mov	b,(_Move_sloc0_1_0 + 2)
      000142 12 03 99         [24]  471 	lcall	__gptrget
      000145 F8               [12]  472 	mov	r0,a
      000146 60 28            [24]  473 	jz	00117$
                                    474 ;	./src/main.c:43: m[i+1]=m[i];
      000148 74 01            [12]  475 	mov	a,#0x01
      00014A 2B               [12]  476 	add	a,r3
      00014B FE               [12]  477 	mov	r6,a
      00014C E4               [12]  478 	clr	a
      00014D 3C               [12]  479 	addc	a,r4
      00014E FF               [12]  480 	mov	r7,a
      00014F EE               [12]  481 	mov	a,r6
      000150 25 11            [12]  482 	add	a,_Move_m_65536_12
      000152 FE               [12]  483 	mov	r6,a
      000153 EF               [12]  484 	mov	a,r7
      000154 35 12            [12]  485 	addc	a,(_Move_m_65536_12 + 1)
      000156 FF               [12]  486 	mov	r7,a
      000157 AD 13            [24]  487 	mov	r5,(_Move_m_65536_12 + 2)
      000159 8E 82            [24]  488 	mov	dpl,r6
      00015B 8F 83            [24]  489 	mov	dph,r7
      00015D 8D F0            [24]  490 	mov	b,r5
      00015F E8               [12]  491 	mov	a,r0
      000160 12 03 08         [24]  492 	lcall	__gptrput
                                    493 ;	./src/main.c:44: m[i]=0;
      000163 85 14 82         [24]  494 	mov	dpl,_Move_sloc0_1_0
      000166 85 15 83         [24]  495 	mov	dph,(_Move_sloc0_1_0 + 1)
      000169 85 16 F0         [24]  496 	mov	b,(_Move_sloc0_1_0 + 2)
      00016C E4               [12]  497 	clr	a
                                    498 ;	./src/main.c:45: return;
      00016D 02 03 08         [24]  499 	ljmp	__gptrput
      000170                        500 00117$:
                                    501 ;	./src/main.c:41: for(int i=0; i<=6; i++){
      000170 09               [12]  502 	inc	r1
      000171 B9 00 01         [24]  503 	cjne	r1,#0x00,00188$
      000174 0A               [12]  504 	inc	r2
      000175                        505 00188$:
      000175 89 03            [24]  506 	mov	ar3,r1
      000177 8A 04            [24]  507 	mov	ar4,r2
      000179 80 A2            [24]  508 	sjmp	00116$
      00017B                        509 00107$:
                                    510 ;	./src/main.c:49: if(dir == UPPER_LEFT){
      00017B 74 02            [12]  511 	mov	a,#0x02
      00017D B5 10 20         [24]  512 	cjne	a,_Move_PARM_2,00109$
                                    513 ;	./src/main.c:50: m[7]*=2;
      000180 74 07            [12]  514 	mov	a,#0x07
      000182 25 11            [12]  515 	add	a,_Move_m_65536_12
      000184 FD               [12]  516 	mov	r5,a
      000185 E4               [12]  517 	clr	a
      000186 35 12            [12]  518 	addc	a,(_Move_m_65536_12 + 1)
      000188 FE               [12]  519 	mov	r6,a
      000189 AF 13            [24]  520 	mov	r7,(_Move_m_65536_12 + 2)
      00018B 8D 82            [24]  521 	mov	dpl,r5
      00018D 8E 83            [24]  522 	mov	dph,r6
      00018F 8F F0            [24]  523 	mov	b,r7
      000191 12 03 99         [24]  524 	lcall	__gptrget
      000194 25 E0            [12]  525 	add	a,acc
      000196 FC               [12]  526 	mov	r4,a
      000197 8D 82            [24]  527 	mov	dpl,r5
      000199 8E 83            [24]  528 	mov	dph,r6
      00019B 8F F0            [24]  529 	mov	b,r7
      00019D 12 03 08         [24]  530 	lcall	__gptrput
      0001A0                        531 00109$:
                                    532 ;	./src/main.c:52: if(dir == UPPER_RIGHT){
      0001A0 74 03            [12]  533 	mov	a,#0x03
      0001A2 B5 10 60         [24]  534 	cjne	a,_Move_PARM_2,00121$
                                    535 ;	./src/main.c:53: for(int i=7; i>=1; i--){
      0001A5 75 14 07         [24]  536 	mov	_Move_sloc0_1_0,#0x07
      0001A8 75 15 00         [24]  537 	mov	(_Move_sloc0_1_0 + 1),#0x00
      0001AB 7C 07            [12]  538 	mov	r4,#0x07
      0001AD 7D 00            [12]  539 	mov	r5,#0x00
      0001AF                        540 00119$:
      0001AF C3               [12]  541 	clr	c
      0001B0 EC               [12]  542 	mov	a,r4
      0001B1 94 01            [12]  543 	subb	a,#0x01
      0001B3 ED               [12]  544 	mov	a,r5
      0001B4 64 80            [12]  545 	xrl	a,#0x80
      0001B6 94 80            [12]  546 	subb	a,#0x80
      0001B8 40 4B            [24]  547 	jc	00121$
                                    548 ;	./src/main.c:54: if(m[i]!=0){
      0001BA EC               [12]  549 	mov	a,r4
      0001BB 25 11            [12]  550 	add	a,_Move_m_65536_12
      0001BD F9               [12]  551 	mov	r1,a
      0001BE ED               [12]  552 	mov	a,r5
      0001BF 35 12            [12]  553 	addc	a,(_Move_m_65536_12 + 1)
      0001C1 FA               [12]  554 	mov	r2,a
      0001C2 AB 13            [24]  555 	mov	r3,(_Move_m_65536_12 + 2)
      0001C4 89 82            [24]  556 	mov	dpl,r1
      0001C6 8A 83            [24]  557 	mov	dph,r2
      0001C8 8B F0            [24]  558 	mov	b,r3
      0001CA 12 03 99         [24]  559 	lcall	__gptrget
      0001CD F5 17            [12]  560 	mov	_Move_sloc1_1_0,a
      0001CF 60 29            [24]  561 	jz	00120$
                                    562 ;	./src/main.c:55: m[i-1]=m[i];
      0001D1 E5 14            [12]  563 	mov	a,_Move_sloc0_1_0
      0001D3 24 FF            [12]  564 	add	a,#0xff
      0001D5 FE               [12]  565 	mov	r6,a
      0001D6 E5 15            [12]  566 	mov	a,(_Move_sloc0_1_0 + 1)
      0001D8 34 FF            [12]  567 	addc	a,#0xff
      0001DA FF               [12]  568 	mov	r7,a
      0001DB EE               [12]  569 	mov	a,r6
      0001DC 25 11            [12]  570 	add	a,_Move_m_65536_12
      0001DE FE               [12]  571 	mov	r6,a
      0001DF EF               [12]  572 	mov	a,r7
      0001E0 35 12            [12]  573 	addc	a,(_Move_m_65536_12 + 1)
      0001E2 F8               [12]  574 	mov	r0,a
      0001E3 AF 13            [24]  575 	mov	r7,(_Move_m_65536_12 + 2)
      0001E5 8E 82            [24]  576 	mov	dpl,r6
      0001E7 88 83            [24]  577 	mov	dph,r0
      0001E9 8F F0            [24]  578 	mov	b,r7
      0001EB E5 17            [12]  579 	mov	a,_Move_sloc1_1_0
      0001ED 12 03 08         [24]  580 	lcall	__gptrput
                                    581 ;	./src/main.c:56: m[i]=0;
      0001F0 89 82            [24]  582 	mov	dpl,r1
      0001F2 8A 83            [24]  583 	mov	dph,r2
      0001F4 8B F0            [24]  584 	mov	b,r3
      0001F6 E4               [12]  585 	clr	a
                                    586 ;	./src/main.c:57: return;
      0001F7 02 03 08         [24]  587 	ljmp	__gptrput
      0001FA                        588 00120$:
                                    589 ;	./src/main.c:53: for(int i=7; i>=1; i--){
      0001FA 1C               [12]  590 	dec	r4
      0001FB BC FF 01         [24]  591 	cjne	r4,#0xff,00195$
      0001FE 1D               [12]  592 	dec	r5
      0001FF                        593 00195$:
      0001FF 8C 14            [24]  594 	mov	_Move_sloc0_1_0,r4
      000201 8D 15            [24]  595 	mov	(_Move_sloc0_1_0 + 1),r5
      000203 80 AA            [24]  596 	sjmp	00119$
      000205                        597 00121$:
                                    598 ;	./src/main.c:61: }
      000205 22               [24]  599 	ret
                                    600 	.area CSEG    (CODE)
                                    601 	.area CONST   (CODE)
                                    602 	.area XINIT   (CODE)
                                    603 	.area CABS    (ABS,CODE)
