                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_5
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
                                    108 	.globl _SPI_WR
                                    109 	.globl _read_adc3202
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; uninitialized external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area XABS    (ABS,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; initialized external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area XISEG   (XDATA)
                                    257 	.area HOME    (CODE)
                                    258 	.area GSINIT0 (CODE)
                                    259 	.area GSINIT1 (CODE)
                                    260 	.area GSINIT2 (CODE)
                                    261 	.area GSINIT3 (CODE)
                                    262 	.area GSINIT4 (CODE)
                                    263 	.area GSINIT5 (CODE)
                                    264 	.area GSINIT  (CODE)
                                    265 	.area GSFINAL (CODE)
                                    266 	.area CSEG    (CODE)
                                    267 ;--------------------------------------------------------
                                    268 ; global & static initialisations
                                    269 ;--------------------------------------------------------
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; Home
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area HOME    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; code
                                    281 ;--------------------------------------------------------
                                    282 	.area CSEG    (CODE)
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'SPI_WR'
                                    285 ;------------------------------------------------------------
                                    286 ;data_in                   Allocated to registers r7 
                                    287 ;data_out                  Allocated to registers r6 
                                    288 ;i                         Allocated to registers r5 
                                    289 ;------------------------------------------------------------
                                    290 ;	./src/adc.c:5: char SPI_WR(char data_in)
                                    291 ;	-----------------------------------------
                                    292 ;	 function SPI_WR
                                    293 ;	-----------------------------------------
      000293                        294 _SPI_WR:
                           000007   295 	ar7 = 0x07
                           000006   296 	ar6 = 0x06
                           000005   297 	ar5 = 0x05
                           000004   298 	ar4 = 0x04
                           000003   299 	ar3 = 0x03
                           000002   300 	ar2 = 0x02
                           000001   301 	ar1 = 0x01
                           000000   302 	ar0 = 0x00
      000293 AF 82            [24]  303 	mov	r7,dpl
                                    304 ;	./src/adc.c:7: char data_out = 0;
      000295 7E 00            [12]  305 	mov	r6,#0x00
                                    306 ;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
      000297 7D 00            [12]  307 	mov	r5,#0x00
      000299                        308 00104$:
                                    309 ;	./src/adc.c:11: data_out <<= 1;
      000299 8E 04            [24]  310 	mov	ar4,r6
      00029B EC               [12]  311 	mov	a,r4
      00029C 2C               [12]  312 	add	a,r4
      00029D FE               [12]  313 	mov	r6,a
                                    314 ;	./src/adc.c:13: CLK = 0;
                                    315 ;	assignBit
      00029E C2 A0            [12]  316 	clr	_P2_0
                                    317 ;	./src/adc.c:14: delay_5();
      0002A0 C0 07            [24]  318 	push	ar7
      0002A2 C0 06            [24]  319 	push	ar6
      0002A4 C0 05            [24]  320 	push	ar5
      0002A6 12 03 D6         [24]  321 	lcall	_delay_5
      0002A9 D0 05            [24]  322 	pop	ar5
      0002AB D0 06            [24]  323 	pop	ar6
      0002AD D0 07            [24]  324 	pop	ar7
                                    325 ;	./src/adc.c:15: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
      0002AF 8F 04            [24]  326 	mov	ar4,r7
      0002B1 53 04 80         [24]  327 	anl	ar4,#0x80
                                    328 ;	assignBit
      0002B4 EC               [12]  329 	mov	a,r4
      0002B5 24 FF            [12]  330 	add	a,#0xff
      0002B7 92 A1            [24]  331 	mov	_P2_1,c
                                    332 ;	./src/adc.c:16: delay_5();
      0002B9 C0 07            [24]  333 	push	ar7
      0002BB C0 06            [24]  334 	push	ar6
      0002BD C0 05            [24]  335 	push	ar5
      0002BF 12 03 D6         [24]  336 	lcall	_delay_5
                                    337 ;	./src/adc.c:17: CLK = 1;
                                    338 ;	assignBit
      0002C2 D2 A0            [12]  339 	setb	_P2_0
                                    340 ;	./src/adc.c:18: delay_5();
      0002C4 12 03 D6         [24]  341 	lcall	_delay_5
      0002C7 D0 05            [24]  342 	pop	ar5
      0002C9 D0 06            [24]  343 	pop	ar6
      0002CB D0 07            [24]  344 	pop	ar7
                                    345 ;	./src/adc.c:20: if(DOUT == 1)   // Read DOUT
      0002CD 30 A2 03         [24]  346 	jnb	_P2_2,00102$
                                    347 ;	./src/adc.c:21: data_out = (data_out | 0x01);   // Store into data_out
      0002D0 43 06 01         [24]  348 	orl	ar6,#0x01
      0002D3                        349 00102$:
                                    350 ;	./src/adc.c:22: data_in <<= 1;
      0002D3 8F 04            [24]  351 	mov	ar4,r7
      0002D5 EC               [12]  352 	mov	a,r4
      0002D6 2C               [12]  353 	add	a,r4
      0002D7 FF               [12]  354 	mov	r7,a
                                    355 ;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
      0002D8 0D               [12]  356 	inc	r5
      0002D9 BD 08 00         [24]  357 	cjne	r5,#0x08,00128$
      0002DC                        358 00128$:
      0002DC 40 BB            [24]  359 	jc	00104$
                                    360 ;	./src/adc.c:24: return data_out;
      0002DE 8E 82            [24]  361 	mov	dpl,r6
                                    362 ;	./src/adc.c:25: }
      0002E0 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'read_adc3202'
                                    366 ;------------------------------------------------------------
                                    367 ;channel                   Allocated to registers r7 
                                    368 ;data_buff                 Allocated to registers r7 r6 
                                    369 ;spi_buff                  Allocated to registers r5 
                                    370 ;------------------------------------------------------------
                                    371 ;	./src/adc.c:27: unsigned int read_adc3202(unsigned char channel)
                                    372 ;	-----------------------------------------
                                    373 ;	 function read_adc3202
                                    374 ;	-----------------------------------------
      0002E1                        375 _read_adc3202:
      0002E1 AF 82            [24]  376 	mov	r7,dpl
                                    377 ;	./src/adc.c:33: LOAD = 0;
                                    378 ;	assignBit
      0002E3 C2 A3            [12]  379 	clr	_P2_3
                                    380 ;	./src/adc.c:36: SPI_WR(0x01);               // First byte transaction includes start bit
      0002E5 75 82 01         [24]  381 	mov	dpl,#0x01
      0002E8 C0 07            [24]  382 	push	ar7
      0002EA 12 02 93         [24]  383 	lcall	_SPI_WR
      0002ED D0 07            [24]  384 	pop	ar7
                                    385 ;	./src/adc.c:37: if(channel == 1)            // Channel 1: 11100000, to IR sensor
      0002EF BF 01 0A         [24]  386 	cjne	r7,#0x01,00102$
                                    387 ;	./src/adc.c:38: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      0002F2 75 82 E0         [24]  388 	mov	dpl,#0xe0
      0002F5 12 02 93         [24]  389 	lcall	_SPI_WR
      0002F8 AF 82            [24]  390 	mov	r7,dpl
      0002FA 80 08            [24]  391 	sjmp	00103$
      0002FC                        392 00102$:
                                    393 ;	./src/adc.c:40: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      0002FC 75 82 A0         [24]  394 	mov	dpl,#0xa0
      0002FF 12 02 93         [24]  395 	lcall	_SPI_WR
      000302 AF 82            [24]  396 	mov	r7,dpl
      000304                        397 00103$:
                                    398 ;	./src/adc.c:41: data_buff = spi_buff & 0x0f;
      000304 53 07 0F         [24]  399 	anl	ar7,#0x0f
                                    400 ;	./src/adc.c:42: data_buff <<= 8;            // Store higher 4 bit ADC output
      000307 8F 06            [24]  401 	mov	ar6,r7
      000309 7F 00            [12]  402 	mov	r7,#0x00
                                    403 ;	./src/adc.c:44: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
      00030B 75 82 00         [24]  404 	mov	dpl,#0x00
      00030E C0 07            [24]  405 	push	ar7
      000310 C0 06            [24]  406 	push	ar6
      000312 12 02 93         [24]  407 	lcall	_SPI_WR
      000315 AD 82            [24]  408 	mov	r5,dpl
      000317 D0 06            [24]  409 	pop	ar6
      000319 D0 07            [24]  410 	pop	ar7
                                    411 ;	./src/adc.c:45: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
      00031B 7C 00            [12]  412 	mov	r4,#0x00
      00031D ED               [12]  413 	mov	a,r5
      00031E 4F               [12]  414 	orl	a,r7
      00031F F5 82            [12]  415 	mov	dpl,a
      000321 EC               [12]  416 	mov	a,r4
      000322 4E               [12]  417 	orl	a,r6
      000323 F5 83            [12]  418 	mov	dph,a
                                    419 ;	./src/adc.c:47: LOAD = 1;  
                                    420 ;	assignBit
      000325 D2 A3            [12]  421 	setb	_P2_3
                                    422 ;	./src/adc.c:48: CLK = 0;
                                    423 ;	assignBit
      000327 C2 A0            [12]  424 	clr	_P2_0
                                    425 ;	./src/adc.c:49: DIN = 0;
                                    426 ;	assignBit
      000329 C2 A1            [12]  427 	clr	_P2_1
                                    428 ;	./src/adc.c:51: return data_buff;
                                    429 ;	./src/adc.c:52: }
      00032B 22               [24]  430 	ret
                                    431 	.area CSEG    (CODE)
                                    432 	.area CONST   (CODE)
                                    433 	.area XINIT   (CODE)
                                    434 	.area CABS    (ABS,CODE)
