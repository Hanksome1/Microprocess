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
                                     13 	.globl _Write7219
                                     14 	.globl _read_adc3202
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
                                    111 	.globl _distance
                                    112 	.globl _segment_out
                                    113 	.globl _adc_value
                                    114 	.globl _seg_dot
                                    115 	.globl _seg
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
      000008                        231 _seg::
      000008                        232 	.ds 10
      000012                        233 _seg_dot::
      000012                        234 	.ds 10
      00001C                        235 _adc_value::
      00001C                        236 	.ds 2
      00001E                        237 _segment_out::
      00001E                        238 	.ds 2
      000020                        239 _distance::
      000020                        240 	.ds 2
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram
                                    243 ;--------------------------------------------------------
                                    244 ;--------------------------------------------------------
                                    245 ; Stack segment in internal ram
                                    246 ;--------------------------------------------------------
                                    247 	.area SSEG
      000025                        248 __start__stack:
      000025                        249 	.ds	1
                                    250 
                                    251 ;--------------------------------------------------------
                                    252 ; indirectly addressable internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area ISEG    (DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area IABS    (ABS,DATA)
                                    259 	.area IABS    (ABS,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; bit data
                                    262 ;--------------------------------------------------------
                                    263 	.area BSEG    (BIT)
                                    264 ;--------------------------------------------------------
                                    265 ; paged external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area PSEG    (PAG,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; uninitialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XSEG    (XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XABS    (ABS,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; initialized external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XISEG   (XDATA)
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; interrupt vector
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
      000000                        294 __interrupt_vect:
      000000 02 00 06         [24]  295 	ljmp	__sdcc_gsinit_startup
                                    296 ;--------------------------------------------------------
                                    297 ; global & static initialisations
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.globl __sdcc_gsinit_startup
                                    304 	.globl __sdcc_program_startup
                                    305 	.globl __start__stack
                                    306 	.globl __mcs51_genXINIT
                                    307 	.globl __mcs51_genXRAMCLEAR
                                    308 	.globl __mcs51_genRAMCLEAR
                                    309 ;	./src/main.c:5: unsigned char seg[10] = {
      00005F 75 08 7E         [24]  310 	mov	_seg,#0x7e
      000062 75 09 30         [24]  311 	mov	(_seg + 0x0001),#0x30
      000065 75 0A 6D         [24]  312 	mov	(_seg + 0x0002),#0x6d
      000068 75 0B 79         [24]  313 	mov	(_seg + 0x0003),#0x79
      00006B 75 0C 33         [24]  314 	mov	(_seg + 0x0004),#0x33
      00006E 75 0D 5B         [24]  315 	mov	(_seg + 0x0005),#0x5b
      000071 75 0E 5F         [24]  316 	mov	(_seg + 0x0006),#0x5f
      000074 75 0F 70         [24]  317 	mov	(_seg + 0x0007),#0x70
      000077 75 10 7F         [24]  318 	mov	(_seg + 0x0008),#0x7f
      00007A 75 11 7B         [24]  319 	mov	(_seg + 0x0009),#0x7b
                                    320 ;	./src/main.c:17: unsigned char seg_dot[] = {
      00007D 75 12 FE         [24]  321 	mov	_seg_dot,#0xfe
      000080 75 13 B0         [24]  322 	mov	(_seg_dot + 0x0001),#0xb0
      000083 75 14 ED         [24]  323 	mov	(_seg_dot + 0x0002),#0xed
      000086 75 15 F9         [24]  324 	mov	(_seg_dot + 0x0003),#0xf9
      000089 75 16 B3         [24]  325 	mov	(_seg_dot + 0x0004),#0xb3
      00008C 75 17 DB         [24]  326 	mov	(_seg_dot + 0x0005),#0xdb
      00008F 75 18 DF         [24]  327 	mov	(_seg_dot + 0x0006),#0xdf
      000092 75 19 F0         [24]  328 	mov	(_seg_dot + 0x0007),#0xf0
      000095 75 1A FF         [24]  329 	mov	(_seg_dot + 0x0008),#0xff
      000098 75 1B FB         [24]  330 	mov	(_seg_dot + 0x0009),#0xfb
                                    331 	.area GSFINAL (CODE)
      00009B 02 00 03         [24]  332 	ljmp	__sdcc_program_startup
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
      000003                        338 __sdcc_program_startup:
      000003 02 00 9E         [24]  339 	ljmp	_main
                                    340 ;	return from main will return to caller
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'main'
                                    347 ;------------------------------------------------------------
                                    348 ;temp                      Allocated to registers r4 r5 r6 r7 
                                    349 ;d_temp                    Allocated to registers r4 r5 r6 r7 
                                    350 ;------------------------------------------------------------
                                    351 ;	./src/main.c:33: int main()
                                    352 ;	-----------------------------------------
                                    353 ;	 function main
                                    354 ;	-----------------------------------------
      00009E                        355 _main:
                           000007   356 	ar7 = 0x07
                           000006   357 	ar6 = 0x06
                           000005   358 	ar5 = 0x05
                           000004   359 	ar4 = 0x04
                           000003   360 	ar3 = 0x03
                           000002   361 	ar2 = 0x02
                           000001   362 	ar1 = 0x01
                           000000   363 	ar0 = 0x00
                                    364 ;	./src/main.c:35: DOUT = 1; //Setting gpio input mode
                                    365 ;	assignBit
      00009E D2 A2            [12]  366 	setb	_P2_2
                                    367 ;	./src/main.c:36: LOAD = 1; 
                                    368 ;	assignBit
      0000A0 D2 A3            [12]  369 	setb	_P2_3
                                    370 ;	./src/main.c:37: CLK = 0;
                                    371 ;	assignBit
      0000A2 C2 A0            [12]  372 	clr	_P2_0
                                    373 ;	./src/main.c:38: DIN = 0;
                                    374 ;	assignBit
      0000A4 C2 A1            [12]  375 	clr	_P2_1
                                    376 ;	./src/main.c:42: while(1){
      0000A6                        377 00105$:
                                    378 ;	./src/main.c:43: adc_value = read_adc3202(0);    // Read voltage from ADC channel 0
      0000A6 75 82 00         [24]  379 	mov	dpl,#0x00
      0000A9 12 02 E1         [24]  380 	lcall	_read_adc3202
      0000AC 85 82 1C         [24]  381 	mov	_adc_value,dpl
      0000AF 85 83 1D         [24]  382 	mov	(_adc_value + 1),dph
                                    383 ;	./src/main.c:46: delay_ms(200);
      0000B2 90 00 C8         [24]  384 	mov	dptr,#0x00c8
      0000B5 12 03 C4         [24]  385 	lcall	_delay_ms
                                    386 ;	./src/main.c:48: adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
      0000B8 75 82 01         [24]  387 	mov	dpl,#0x01
      0000BB 12 02 E1         [24]  388 	lcall	_read_adc3202
                                    389 ;	./src/main.c:49: segment_out = adc_value;
                                    390 ;	./src/main.c:50: float temp = 0.2554*0.001*adc_value;
      0000BE 85 82 1C         [24]  391 	mov	_adc_value,dpl
      0000C1 85 83 1D         [24]  392 	mov	(_adc_value + 1),dph
      0000C4 85 1C 1E         [24]  393 	mov	_segment_out,_adc_value
      0000C7 85 1D 1F         [24]  394 	mov	(_segment_out + 1),(_adc_value + 1)
      0000CA 12 05 ED         [24]  395 	lcall	___uint2fs
      0000CD AC 82            [24]  396 	mov	r4,dpl
      0000CF AD 83            [24]  397 	mov	r5,dph
      0000D1 AE F0            [24]  398 	mov	r6,b
      0000D3 FF               [12]  399 	mov	r7,a
      0000D4 C0 04            [24]  400 	push	ar4
      0000D6 C0 05            [24]  401 	push	ar5
      0000D8 C0 06            [24]  402 	push	ar6
      0000DA C0 07            [24]  403 	push	ar7
                                    404 ;	./src/main.c:51: temp -=0.0409;
      0000DC 90 E7 35         [24]  405 	mov	dptr,#0xe735
      0000DF 75 F0 85         [24]  406 	mov	b,#0x85
      0000E2 74 39            [12]  407 	mov	a,#0x39
      0000E4 12 04 0F         [24]  408 	lcall	___fsmul
      0000E7 AC 82            [24]  409 	mov	r4,dpl
      0000E9 AD 83            [24]  410 	mov	r5,dph
      0000EB AE F0            [24]  411 	mov	r6,b
      0000ED FF               [12]  412 	mov	r7,a
      0000EE E5 81            [12]  413 	mov	a,sp
      0000F0 24 FC            [12]  414 	add	a,#0xfc
      0000F2 F5 81            [12]  415 	mov	sp,a
      0000F4 74 C2            [12]  416 	mov	a,#0xc2
      0000F6 C0 E0            [24]  417 	push	acc
      0000F8 74 86            [12]  418 	mov	a,#0x86
      0000FA C0 E0            [24]  419 	push	acc
      0000FC 74 27            [12]  420 	mov	a,#0x27
      0000FE C0 E0            [24]  421 	push	acc
      000100 74 3D            [12]  422 	mov	a,#0x3d
      000102 C0 E0            [24]  423 	push	acc
                                    424 ;	./src/main.c:52: float d_temp = 1/temp;
      000104 8C 82            [24]  425 	mov	dpl,r4
      000106 8D 83            [24]  426 	mov	dph,r5
      000108 8E F0            [24]  427 	mov	b,r6
      00010A EF               [12]  428 	mov	a,r7
      00010B 12 03 DB         [24]  429 	lcall	___fssub
      00010E AC 82            [24]  430 	mov	r4,dpl
      000110 AD 83            [24]  431 	mov	r5,dph
      000112 AE F0            [24]  432 	mov	r6,b
      000114 FF               [12]  433 	mov	r7,a
      000115 E5 81            [12]  434 	mov	a,sp
      000117 24 FC            [12]  435 	add	a,#0xfc
      000119 F5 81            [12]  436 	mov	sp,a
      00011B C0 04            [24]  437 	push	ar4
      00011D C0 05            [24]  438 	push	ar5
      00011F C0 06            [24]  439 	push	ar6
      000121 C0 07            [24]  440 	push	ar7
                                    441 ;	./src/main.c:53: d_temp = d_temp *100;
      000123 90 00 00         [24]  442 	mov	dptr,#0x0000
      000126 75 F0 80         [24]  443 	mov	b,#0x80
      000129 74 3F            [12]  444 	mov	a,#0x3f
      00012B 12 06 62         [24]  445 	lcall	___fsdiv
      00012E AC 82            [24]  446 	mov	r4,dpl
      000130 AD 83            [24]  447 	mov	r5,dph
      000132 AE F0            [24]  448 	mov	r6,b
      000134 FF               [12]  449 	mov	r7,a
      000135 E5 81            [12]  450 	mov	a,sp
      000137 24 FC            [12]  451 	add	a,#0xfc
      000139 F5 81            [12]  452 	mov	sp,a
      00013B C0 04            [24]  453 	push	ar4
      00013D C0 05            [24]  454 	push	ar5
      00013F C0 06            [24]  455 	push	ar6
      000141 C0 07            [24]  456 	push	ar7
                                    457 ;	./src/main.c:54: if(segment_out<250){
      000143 90 00 00         [24]  458 	mov	dptr,#0x0000
      000146 75 F0 C8         [24]  459 	mov	b,#0xc8
      000149 74 42            [12]  460 	mov	a,#0x42
      00014B 12 04 0F         [24]  461 	lcall	___fsmul
      00014E AC 82            [24]  462 	mov	r4,dpl
      000150 AD 83            [24]  463 	mov	r5,dph
      000152 AE F0            [24]  464 	mov	r6,b
      000154 FF               [12]  465 	mov	r7,a
      000155 E5 81            [12]  466 	mov	a,sp
      000157 24 FC            [12]  467 	add	a,#0xfc
      000159 F5 81            [12]  468 	mov	sp,a
      00015B C3               [12]  469 	clr	c
      00015C E5 1E            [12]  470 	mov	a,_segment_out
      00015E 94 FA            [12]  471 	subb	a,#0xfa
      000160 E5 1F            [12]  472 	mov	a,(_segment_out + 1)
      000162 94 00            [12]  473 	subb	a,#0x00
      000164 50 08            [24]  474 	jnc	00102$
                                    475 ;	./src/main.c:55: distance = 9900;
      000166 75 20 AC         [24]  476 	mov	_distance,#0xac
      000169 75 21 26         [24]  477 	mov	(_distance + 1),#0x26
      00016C 80 10            [24]  478 	sjmp	00103$
      00016E                        479 00102$:
                                    480 ;	./src/main.c:58: distance = (int) d_temp; 
      00016E 8C 82            [24]  481 	mov	dpl,r4
      000170 8D 83            [24]  482 	mov	dph,r5
      000172 8E F0            [24]  483 	mov	b,r6
      000174 EF               [12]  484 	mov	a,r7
      000175 12 05 B9         [24]  485 	lcall	___fs2sint
      000178 85 82 20         [24]  486 	mov	_distance,dpl
      00017B 85 83 21         [24]  487 	mov	(_distance + 1),dph
      00017E                        488 00103$:
                                    489 ;	./src/main.c:61: Write7219(0x08, seg[distance / 1000]);    // Display on MAX7219
      00017E 75 23 E8         [24]  490 	mov	__divsint_PARM_2,#0xe8
      000181 75 24 03         [24]  491 	mov	(__divsint_PARM_2 + 1),#0x03
      000184 85 20 82         [24]  492 	mov	dpl,_distance
      000187 85 21 83         [24]  493 	mov	dph,(_distance + 1)
      00018A 12 07 6E         [24]  494 	lcall	__divsint
      00018D AE 82            [24]  495 	mov	r6,dpl
      00018F EE               [12]  496 	mov	a,r6
      000190 24 08            [12]  497 	add	a,#_seg
      000192 F9               [12]  498 	mov	r1,a
      000193 87 22            [24]  499 	mov	_Write7219_PARM_2,@r1
      000195 75 82 08         [24]  500 	mov	dpl,#0x08
      000198 12 03 63         [24]  501 	lcall	_Write7219
                                    502 ;	./src/main.c:62: Write7219(0x07, seg_dot[distance % 1000 / 100]);
      00019B 75 23 E8         [24]  503 	mov	__modsint_PARM_2,#0xe8
      00019E 75 24 03         [24]  504 	mov	(__modsint_PARM_2 + 1),#0x03
      0001A1 85 20 82         [24]  505 	mov	dpl,_distance
      0001A4 85 21 83         [24]  506 	mov	dph,(_distance + 1)
      0001A7 12 07 25         [24]  507 	lcall	__modsint
      0001AA 75 23 64         [24]  508 	mov	__divsint_PARM_2,#0x64
      0001AD 75 24 00         [24]  509 	mov	(__divsint_PARM_2 + 1),#0x00
      0001B0 12 07 6E         [24]  510 	lcall	__divsint
      0001B3 AE 82            [24]  511 	mov	r6,dpl
      0001B5 EE               [12]  512 	mov	a,r6
      0001B6 24 12            [12]  513 	add	a,#_seg_dot
      0001B8 F9               [12]  514 	mov	r1,a
      0001B9 87 22            [24]  515 	mov	_Write7219_PARM_2,@r1
      0001BB 75 82 07         [24]  516 	mov	dpl,#0x07
      0001BE 12 03 63         [24]  517 	lcall	_Write7219
                                    518 ;	./src/main.c:63: Write7219(0x06, seg[distance % 100 / 10]);
      0001C1 75 23 64         [24]  519 	mov	__modsint_PARM_2,#0x64
      0001C4 75 24 00         [24]  520 	mov	(__modsint_PARM_2 + 1),#0x00
      0001C7 85 20 82         [24]  521 	mov	dpl,_distance
      0001CA 85 21 83         [24]  522 	mov	dph,(_distance + 1)
      0001CD 12 07 25         [24]  523 	lcall	__modsint
      0001D0 75 23 0A         [24]  524 	mov	__divsint_PARM_2,#0x0a
      0001D3 75 24 00         [24]  525 	mov	(__divsint_PARM_2 + 1),#0x00
      0001D6 12 07 6E         [24]  526 	lcall	__divsint
      0001D9 AE 82            [24]  527 	mov	r6,dpl
      0001DB EE               [12]  528 	mov	a,r6
      0001DC 24 08            [12]  529 	add	a,#_seg
      0001DE F9               [12]  530 	mov	r1,a
      0001DF 87 22            [24]  531 	mov	_Write7219_PARM_2,@r1
      0001E1 75 82 06         [24]  532 	mov	dpl,#0x06
      0001E4 12 03 63         [24]  533 	lcall	_Write7219
                                    534 ;	./src/main.c:64: Write7219(0x05, seg[distance % 10]);
      0001E7 75 23 0A         [24]  535 	mov	__modsint_PARM_2,#0x0a
      0001EA 75 24 00         [24]  536 	mov	(__modsint_PARM_2 + 1),#0x00
      0001ED 85 20 82         [24]  537 	mov	dpl,_distance
      0001F0 85 21 83         [24]  538 	mov	dph,(_distance + 1)
      0001F3 12 07 25         [24]  539 	lcall	__modsint
      0001F6 AE 82            [24]  540 	mov	r6,dpl
      0001F8 EE               [12]  541 	mov	a,r6
      0001F9 24 08            [12]  542 	add	a,#_seg
      0001FB F9               [12]  543 	mov	r1,a
      0001FC 87 22            [24]  544 	mov	_Write7219_PARM_2,@r1
      0001FE 75 82 05         [24]  545 	mov	dpl,#0x05
      000201 12 03 63         [24]  546 	lcall	_Write7219
                                    547 ;	./src/main.c:65: Write7219(0x04, seg_dot[segment_out / 1000]);    // Display on MAX7219
      000204 75 23 E8         [24]  548 	mov	__divuint_PARM_2,#0xe8
      000207 75 24 03         [24]  549 	mov	(__divuint_PARM_2 + 1),#0x03
      00020A 85 1E 82         [24]  550 	mov	dpl,_segment_out
      00020D 85 1F 83         [24]  551 	mov	dph,(_segment_out + 1)
      000210 12 03 E6         [24]  552 	lcall	__divuint
      000213 AE 82            [24]  553 	mov	r6,dpl
      000215 EE               [12]  554 	mov	a,r6
      000216 24 12            [12]  555 	add	a,#_seg_dot
      000218 F9               [12]  556 	mov	r1,a
      000219 87 22            [24]  557 	mov	_Write7219_PARM_2,@r1
      00021B 75 82 04         [24]  558 	mov	dpl,#0x04
      00021E 12 03 63         [24]  559 	lcall	_Write7219
                                    560 ;	./src/main.c:66: Write7219(0x03, seg[segment_out % 1000 / 100]);
      000221 75 23 E8         [24]  561 	mov	__moduint_PARM_2,#0xe8
      000224 75 24 03         [24]  562 	mov	(__moduint_PARM_2 + 1),#0x03
      000227 85 1E 82         [24]  563 	mov	dpl,_segment_out
      00022A 85 1F 83         [24]  564 	mov	dph,(_segment_out + 1)
      00022D 12 05 13         [24]  565 	lcall	__moduint
      000230 75 23 64         [24]  566 	mov	__divuint_PARM_2,#0x64
      000233 75 24 00         [24]  567 	mov	(__divuint_PARM_2 + 1),#0x00
      000236 12 03 E6         [24]  568 	lcall	__divuint
      000239 AE 82            [24]  569 	mov	r6,dpl
      00023B EE               [12]  570 	mov	a,r6
      00023C 24 08            [12]  571 	add	a,#_seg
      00023E F9               [12]  572 	mov	r1,a
      00023F 87 22            [24]  573 	mov	_Write7219_PARM_2,@r1
      000241 75 82 03         [24]  574 	mov	dpl,#0x03
      000244 12 03 63         [24]  575 	lcall	_Write7219
                                    576 ;	./src/main.c:67: Write7219(0x02, seg[segment_out % 100 / 10]);
      000247 75 23 64         [24]  577 	mov	__moduint_PARM_2,#0x64
      00024A 75 24 00         [24]  578 	mov	(__moduint_PARM_2 + 1),#0x00
      00024D 85 1E 82         [24]  579 	mov	dpl,_segment_out
      000250 85 1F 83         [24]  580 	mov	dph,(_segment_out + 1)
      000253 12 05 13         [24]  581 	lcall	__moduint
      000256 75 23 0A         [24]  582 	mov	__divuint_PARM_2,#0x0a
      000259 75 24 00         [24]  583 	mov	(__divuint_PARM_2 + 1),#0x00
      00025C 12 03 E6         [24]  584 	lcall	__divuint
      00025F AE 82            [24]  585 	mov	r6,dpl
      000261 EE               [12]  586 	mov	a,r6
      000262 24 08            [12]  587 	add	a,#_seg
      000264 F9               [12]  588 	mov	r1,a
      000265 87 22            [24]  589 	mov	_Write7219_PARM_2,@r1
      000267 75 82 02         [24]  590 	mov	dpl,#0x02
      00026A 12 03 63         [24]  591 	lcall	_Write7219
                                    592 ;	./src/main.c:68: Write7219(0x01, seg[segment_out % 10]);
      00026D 75 23 0A         [24]  593 	mov	__moduint_PARM_2,#0x0a
      000270 75 24 00         [24]  594 	mov	(__moduint_PARM_2 + 1),#0x00
      000273 85 1E 82         [24]  595 	mov	dpl,_segment_out
      000276 85 1F 83         [24]  596 	mov	dph,(_segment_out + 1)
      000279 12 05 13         [24]  597 	lcall	__moduint
      00027C AE 82            [24]  598 	mov	r6,dpl
      00027E EE               [12]  599 	mov	a,r6
      00027F 24 08            [12]  600 	add	a,#_seg
      000281 F9               [12]  601 	mov	r1,a
      000282 87 22            [24]  602 	mov	_Write7219_PARM_2,@r1
      000284 75 82 01         [24]  603 	mov	dpl,#0x01
      000287 12 03 63         [24]  604 	lcall	_Write7219
                                    605 ;	./src/main.c:69: delay_ms(200);
      00028A 90 00 C8         [24]  606 	mov	dptr,#0x00c8
      00028D 12 03 C4         [24]  607 	lcall	_delay_ms
                                    608 ;	./src/main.c:72: }
      000290 02 00 A6         [24]  609 	ljmp	00105$
                                    610 	.area CSEG    (CODE)
                                    611 	.area CONST   (CODE)
                                    612 	.area XINIT   (CODE)
                                    613 	.area CABS    (ABS,CODE)
