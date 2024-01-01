                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module program
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _hex_size
                                     12 	.globl _hex_file
                                     13 	.globl _delay_ms
                                     14 	.globl _AT89S51_Read_Byte
                                     15 	.globl _AT89S51_Write_Byte
                                     16 	.globl _AT89S51_Chip_Erase
                                     17 	.globl _AT89S51_Prog_En
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _AT89S51_Program_write
                                    115 	.globl _AT89S51_Program_read
                                    116 	.globl _AT89S51_Program_erase
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; uninitialized external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; initialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; global & static initialisations
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; Home
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area HOME    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; code
                                    288 ;--------------------------------------------------------
                                    289 	.area CSEG    (CODE)
                                    290 ;------------------------------------------------------------
                                    291 ;Allocation info for local variables in function 'AT89S51_Program_write'
                                    292 ;------------------------------------------------------------
                                    293 ;spr_r_buf                 Allocated to registers r7 
                                    294 ;program_cnt               Allocated to registers r6 r7 
                                    295 ;------------------------------------------------------------
                                    296 ;	./src/program.c:7: unsigned char AT89S51_Program_write(void)
                                    297 ;	-----------------------------------------
                                    298 ;	 function AT89S51_Program_write
                                    299 ;	-----------------------------------------
      000167                        300 _AT89S51_Program_write:
                           000007   301 	ar7 = 0x07
                           000006   302 	ar6 = 0x06
                           000005   303 	ar5 = 0x05
                           000004   304 	ar4 = 0x04
                           000003   305 	ar3 = 0x03
                           000002   306 	ar2 = 0x02
                           000001   307 	ar1 = 0x01
                           000000   308 	ar0 = 0x00
                                    309 ;	./src/program.c:13: AT8051_MOSI = 0;
                                    310 ;	assignBit
      000167 C2 80            [12]  311 	clr	_P0_0
                                    312 ;	./src/program.c:14: AT8051_SCK = 0;
                                    313 ;	assignBit
      000169 C2 82            [12]  314 	clr	_P0_2
                                    315 ;	./src/program.c:15: delay_ms(1);
      00016B 90 00 01         [24]  316 	mov	dptr,#0x0001
      00016E 12 03 9C         [24]  317 	lcall	_delay_ms
                                    318 ;	./src/program.c:16: AT8051_RST = 1;
                                    319 ;	assignBit
      000171 D2 83            [12]  320 	setb	_P0_3
                                    321 ;	./src/program.c:17: delay_ms(10);
      000173 90 00 0A         [24]  322 	mov	dptr,#0x000a
      000176 12 03 9C         [24]  323 	lcall	_delay_ms
                                    324 ;	./src/program.c:20: spr_r_buf = AT89S51_Prog_En();
      000179 12 04 5C         [24]  325 	lcall	_AT89S51_Prog_En
      00017C AF 82            [24]  326 	mov	r7,dpl
                                    327 ;	./src/program.c:21: if (spr_r_buf != 0x69) {
      00017E BF 69 02         [24]  328 	cjne	r7,#0x69,00128$
      000181 80 16            [24]  329 	sjmp	00102$
      000183                        330 00128$:
                                    331 ;	./src/program.c:22: AT8051_RST = 0;
                                    332 ;	assignBit
      000183 C2 83            [12]  333 	clr	_P0_3
                                    334 ;	./src/program.c:23: delay_ms(100);
      000185 90 00 64         [24]  335 	mov	dptr,#0x0064
      000188 12 03 9C         [24]  336 	lcall	_delay_ms
                                    337 ;	./src/program.c:24: AT8051_MOSI = 1;
                                    338 ;	assignBit
      00018B D2 80            [12]  339 	setb	_P0_0
                                    340 ;	./src/program.c:25: AT8051_SCK = 1;
                                    341 ;	assignBit
      00018D D2 82            [12]  342 	setb	_P0_2
                                    343 ;	./src/program.c:26: delay_ms(1000);
      00018F 90 03 E8         [24]  344 	mov	dptr,#0x03e8
      000192 12 03 9C         [24]  345 	lcall	_delay_ms
                                    346 ;	./src/program.c:28: return HAL_Prog_En_ERROR;
      000195 75 82 01         [24]  347 	mov	dpl,#0x01
      000198 22               [24]  348 	ret
      000199                        349 00102$:
                                    350 ;	./src/program.c:32: AT89S51_Chip_Erase();
      000199 12 04 89         [24]  351 	lcall	_AT89S51_Chip_Erase
                                    352 ;	./src/program.c:33: delay_ms(1000);
      00019C 90 03 E8         [24]  353 	mov	dptr,#0x03e8
      00019F 12 03 9C         [24]  354 	lcall	_delay_ms
                                    355 ;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      0001A2 7E 00            [12]  356 	mov	r6,#0x00
      0001A4 7F 00            [12]  357 	mov	r7,#0x00
      0001A6                        358 00105$:
      0001A6 C3               [12]  359 	clr	c
      0001A7 EE               [12]  360 	mov	a,r6
      0001A8 94 5B            [12]  361 	subb	a,#0x5b
      0001AA EF               [12]  362 	mov	a,r7
      0001AB 94 00            [12]  363 	subb	a,#0x00
      0001AD 50 31            [24]  364 	jnc	00103$
                                    365 ;	./src/program.c:37: AT89S51_Write_Byte(program_cnt + 0x0030, hex_file[program_cnt]);
      0001AF 74 30            [12]  366 	mov	a,#0x30
      0001B1 2E               [12]  367 	add	a,r6
      0001B2 FC               [12]  368 	mov	r4,a
      0001B3 E4               [12]  369 	clr	a
      0001B4 3F               [12]  370 	addc	a,r7
      0001B5 FD               [12]  371 	mov	r5,a
      0001B6 EE               [12]  372 	mov	a,r6
      0001B7 24 5F            [12]  373 	add	a,#_hex_file
      0001B9 F5 82            [12]  374 	mov	dpl,a
      0001BB EF               [12]  375 	mov	a,r7
      0001BC 34 05            [12]  376 	addc	a,#(_hex_file >> 8)
      0001BE F5 83            [12]  377 	mov	dph,a
      0001C0 E4               [12]  378 	clr	a
      0001C1 93               [24]  379 	movc	a,@a+dptr
      0001C2 F5 0C            [12]  380 	mov	_AT89S51_Write_Byte_PARM_2,a
      0001C4 8C 82            [24]  381 	mov	dpl,r4
      0001C6 8D 83            [24]  382 	mov	dph,r5
      0001C8 C0 07            [24]  383 	push	ar7
      0001CA C0 06            [24]  384 	push	ar6
      0001CC 12 04 06         [24]  385 	lcall	_AT89S51_Write_Byte
                                    386 ;	./src/program.c:38: delay_ms(1);
      0001CF 90 00 01         [24]  387 	mov	dptr,#0x0001
      0001D2 12 03 9C         [24]  388 	lcall	_delay_ms
      0001D5 D0 06            [24]  389 	pop	ar6
      0001D7 D0 07            [24]  390 	pop	ar7
                                    391 ;	./src/program.c:36: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      0001D9 0E               [12]  392 	inc	r6
      0001DA BE 00 C9         [24]  393 	cjne	r6,#0x00,00105$
      0001DD 0F               [12]  394 	inc	r7
      0001DE 80 C6            [24]  395 	sjmp	00105$
      0001E0                        396 00103$:
                                    397 ;	./src/program.c:42: AT8051_RST = 0;
                                    398 ;	assignBit
      0001E0 C2 83            [12]  399 	clr	_P0_3
                                    400 ;	./src/program.c:43: delay_ms(100);
      0001E2 90 00 64         [24]  401 	mov	dptr,#0x0064
      0001E5 12 03 9C         [24]  402 	lcall	_delay_ms
                                    403 ;	./src/program.c:44: AT8051_MOSI = 1;
                                    404 ;	assignBit
      0001E8 D2 80            [12]  405 	setb	_P0_0
                                    406 ;	./src/program.c:45: AT8051_SCK = 1;
                                    407 ;	assignBit
      0001EA D2 82            [12]  408 	setb	_P0_2
                                    409 ;	./src/program.c:46: delay_ms(1000);
      0001EC 90 03 E8         [24]  410 	mov	dptr,#0x03e8
      0001EF 12 03 9C         [24]  411 	lcall	_delay_ms
                                    412 ;	./src/program.c:48: return HAL_OK;
      0001F2 75 82 00         [24]  413 	mov	dpl,#0x00
                                    414 ;	./src/program.c:49: }
      0001F5 22               [24]  415 	ret
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'AT89S51_Program_read'
                                    418 ;------------------------------------------------------------
                                    419 ;spr_r_buf                 Allocated to registers r5 
                                    420 ;program_cnt               Allocated to registers r6 r7 
                                    421 ;------------------------------------------------------------
                                    422 ;	./src/program.c:51: unsigned char AT89S51_Program_read(void)
                                    423 ;	-----------------------------------------
                                    424 ;	 function AT89S51_Program_read
                                    425 ;	-----------------------------------------
      0001F6                        426 _AT89S51_Program_read:
                                    427 ;	./src/program.c:57: AT8051_MOSI = 0;
                                    428 ;	assignBit
      0001F6 C2 80            [12]  429 	clr	_P0_0
                                    430 ;	./src/program.c:58: AT8051_SCK = 0;
                                    431 ;	assignBit
      0001F8 C2 82            [12]  432 	clr	_P0_2
                                    433 ;	./src/program.c:59: delay_ms(1);
      0001FA 90 00 01         [24]  434 	mov	dptr,#0x0001
      0001FD 12 03 9C         [24]  435 	lcall	_delay_ms
                                    436 ;	./src/program.c:60: AT8051_RST = 1;
                                    437 ;	assignBit
      000200 D2 83            [12]  438 	setb	_P0_3
                                    439 ;	./src/program.c:61: delay_ms(10);
      000202 90 00 0A         [24]  440 	mov	dptr,#0x000a
      000205 12 03 9C         [24]  441 	lcall	_delay_ms
                                    442 ;	./src/program.c:64: spr_r_buf = AT89S51_Prog_En();
      000208 12 04 5C         [24]  443 	lcall	_AT89S51_Prog_En
      00020B AF 82            [24]  444 	mov	r7,dpl
                                    445 ;	./src/program.c:65: if (spr_r_buf != 0x69) {
      00020D BF 69 02         [24]  446 	cjne	r7,#0x69,00139$
      000210 80 16            [24]  447 	sjmp	00114$
      000212                        448 00139$:
                                    449 ;	./src/program.c:66: AT8051_RST = 0;
                                    450 ;	assignBit
      000212 C2 83            [12]  451 	clr	_P0_3
                                    452 ;	./src/program.c:67: delay_ms(100);	
      000214 90 00 64         [24]  453 	mov	dptr,#0x0064
      000217 12 03 9C         [24]  454 	lcall	_delay_ms
                                    455 ;	./src/program.c:68: AT8051_MOSI = 1;
                                    456 ;	assignBit
      00021A D2 80            [12]  457 	setb	_P0_0
                                    458 ;	./src/program.c:69: AT8051_SCK = 1;
                                    459 ;	assignBit
      00021C D2 82            [12]  460 	setb	_P0_2
                                    461 ;	./src/program.c:70: delay_ms(1000);	
      00021E 90 03 E8         [24]  462 	mov	dptr,#0x03e8
      000221 12 03 9C         [24]  463 	lcall	_delay_ms
                                    464 ;	./src/program.c:71: return HAL_Prog_En_ERROR;
      000224 75 82 01         [24]  465 	mov	dpl,#0x01
      000227 22               [24]  466 	ret
                                    467 ;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      000228                        468 00114$:
      000228 7E 00            [12]  469 	mov	r6,#0x00
      00022A 7F 00            [12]  470 	mov	r7,#0x00
      00022C                        471 00107$:
      00022C C3               [12]  472 	clr	c
      00022D EE               [12]  473 	mov	a,r6
      00022E 94 5B            [12]  474 	subb	a,#0x5b
      000230 EF               [12]  475 	mov	a,r7
      000231 94 00            [12]  476 	subb	a,#0x00
      000233 50 50            [24]  477 	jnc	00105$
                                    478 ;	./src/program.c:76: spr_r_buf = AT89S51_Read_Byte(program_cnt + 0x0030);
      000235 74 30            [12]  479 	mov	a,#0x30
      000237 2E               [12]  480 	add	a,r6
      000238 F5 82            [12]  481 	mov	dpl,a
      00023A E4               [12]  482 	clr	a
      00023B 3F               [12]  483 	addc	a,r7
      00023C F5 83            [12]  484 	mov	dph,a
      00023E C0 07            [24]  485 	push	ar7
      000240 C0 06            [24]  486 	push	ar6
      000242 12 03 C7         [24]  487 	lcall	_AT89S51_Read_Byte
      000245 AD 82            [24]  488 	mov	r5,dpl
                                    489 ;	./src/program.c:77: delay_ms(1);
      000247 90 00 01         [24]  490 	mov	dptr,#0x0001
      00024A C0 05            [24]  491 	push	ar5
      00024C 12 03 9C         [24]  492 	lcall	_delay_ms
      00024F D0 05            [24]  493 	pop	ar5
      000251 D0 06            [24]  494 	pop	ar6
      000253 D0 07            [24]  495 	pop	ar7
                                    496 ;	./src/program.c:80: if(spr_r_buf != hex_file[program_cnt])
      000255 EE               [12]  497 	mov	a,r6
      000256 24 5F            [12]  498 	add	a,#_hex_file
      000258 F5 82            [12]  499 	mov	dpl,a
      00025A EF               [12]  500 	mov	a,r7
      00025B 34 05            [12]  501 	addc	a,#(_hex_file >> 8)
      00025D F5 83            [12]  502 	mov	dph,a
      00025F E4               [12]  503 	clr	a
      000260 93               [24]  504 	movc	a,@a+dptr
      000261 FC               [12]  505 	mov	r4,a
      000262 ED               [12]  506 	mov	a,r5
      000263 B5 04 02         [24]  507 	cjne	a,ar4,00141$
      000266 80 16            [24]  508 	sjmp	00108$
      000268                        509 00141$:
                                    510 ;	./src/program.c:82: AT8051_RST = 0;
                                    511 ;	assignBit
      000268 C2 83            [12]  512 	clr	_P0_3
                                    513 ;	./src/program.c:83: delay_ms(100);
      00026A 90 00 64         [24]  514 	mov	dptr,#0x0064
      00026D 12 03 9C         [24]  515 	lcall	_delay_ms
                                    516 ;	./src/program.c:84: AT8051_MOSI = 1;
                                    517 ;	assignBit
      000270 D2 80            [12]  518 	setb	_P0_0
                                    519 ;	./src/program.c:85: AT8051_SCK = 1;
                                    520 ;	assignBit
      000272 D2 82            [12]  521 	setb	_P0_2
                                    522 ;	./src/program.c:86: delay_ms(1000);
      000274 90 03 E8         [24]  523 	mov	dptr,#0x03e8
      000277 12 03 9C         [24]  524 	lcall	_delay_ms
                                    525 ;	./src/program.c:88: return HAL_Verify_ERROR;
      00027A 75 82 02         [24]  526 	mov	dpl,#0x02
      00027D 22               [24]  527 	ret
      00027E                        528 00108$:
                                    529 ;	./src/program.c:75: for (program_cnt = 0; program_cnt < hex_size; program_cnt ++) {
      00027E 0E               [12]  530 	inc	r6
      00027F BE 00 AA         [24]  531 	cjne	r6,#0x00,00107$
      000282 0F               [12]  532 	inc	r7
      000283 80 A7            [24]  533 	sjmp	00107$
      000285                        534 00105$:
                                    535 ;	./src/program.c:93: AT8051_RST = 0;
                                    536 ;	assignBit
      000285 C2 83            [12]  537 	clr	_P0_3
                                    538 ;	./src/program.c:94: delay_ms(100);
      000287 90 00 64         [24]  539 	mov	dptr,#0x0064
      00028A 12 03 9C         [24]  540 	lcall	_delay_ms
                                    541 ;	./src/program.c:95: AT8051_MOSI = 1;
                                    542 ;	assignBit
      00028D D2 80            [12]  543 	setb	_P0_0
                                    544 ;	./src/program.c:96: AT8051_SCK = 1;
                                    545 ;	assignBit
      00028F D2 82            [12]  546 	setb	_P0_2
                                    547 ;	./src/program.c:97: delay_ms(1000);
      000291 90 03 E8         [24]  548 	mov	dptr,#0x03e8
      000294 12 03 9C         [24]  549 	lcall	_delay_ms
                                    550 ;	./src/program.c:99: return HAL_OK;
      000297 75 82 00         [24]  551 	mov	dpl,#0x00
                                    552 ;	./src/program.c:100: }
      00029A 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'AT89S51_Program_erase'
                                    556 ;------------------------------------------------------------
                                    557 ;spr_r_buf                 Allocated to registers r7 
                                    558 ;program_cnt               Allocated to registers 
                                    559 ;------------------------------------------------------------
                                    560 ;	./src/program.c:102: unsigned char AT89S51_Program_erase(void)
                                    561 ;	-----------------------------------------
                                    562 ;	 function AT89S51_Program_erase
                                    563 ;	-----------------------------------------
      00029B                        564 _AT89S51_Program_erase:
                                    565 ;	./src/program.c:108: AT8051_MOSI = 0;
                                    566 ;	assignBit
      00029B C2 80            [12]  567 	clr	_P0_0
                                    568 ;	./src/program.c:109: AT8051_SCK = 0;
                                    569 ;	assignBit
      00029D C2 82            [12]  570 	clr	_P0_2
                                    571 ;	./src/program.c:110: delay_ms(1);
      00029F 90 00 01         [24]  572 	mov	dptr,#0x0001
      0002A2 12 03 9C         [24]  573 	lcall	_delay_ms
                                    574 ;	./src/program.c:111: AT8051_RST = 1;
                                    575 ;	assignBit
      0002A5 D2 83            [12]  576 	setb	_P0_3
                                    577 ;	./src/program.c:112: delay_ms(10);
      0002A7 90 00 0A         [24]  578 	mov	dptr,#0x000a
      0002AA 12 03 9C         [24]  579 	lcall	_delay_ms
                                    580 ;	./src/program.c:115: spr_r_buf = AT89S51_Prog_En();
      0002AD 12 04 5C         [24]  581 	lcall	_AT89S51_Prog_En
      0002B0 AF 82            [24]  582 	mov	r7,dpl
                                    583 ;	./src/program.c:116: if(spr_r_buf != 0x69)
      0002B2 BF 69 02         [24]  584 	cjne	r7,#0x69,00111$
      0002B5 80 16            [24]  585 	sjmp	00102$
      0002B7                        586 00111$:
                                    587 ;	./src/program.c:118: AT8051_RST = 0;
                                    588 ;	assignBit
      0002B7 C2 83            [12]  589 	clr	_P0_3
                                    590 ;	./src/program.c:119: delay_ms(100);
      0002B9 90 00 64         [24]  591 	mov	dptr,#0x0064
      0002BC 12 03 9C         [24]  592 	lcall	_delay_ms
                                    593 ;	./src/program.c:120: AT8051_MOSI = 1;
                                    594 ;	assignBit
      0002BF D2 80            [12]  595 	setb	_P0_0
                                    596 ;	./src/program.c:121: AT8051_SCK = 1;
                                    597 ;	assignBit
      0002C1 D2 82            [12]  598 	setb	_P0_2
                                    599 ;	./src/program.c:122: delay_ms(1000);
      0002C3 90 03 E8         [24]  600 	mov	dptr,#0x03e8
      0002C6 12 03 9C         [24]  601 	lcall	_delay_ms
                                    602 ;	./src/program.c:124: return HAL_Prog_En_ERROR;
      0002C9 75 82 01         [24]  603 	mov	dpl,#0x01
      0002CC 22               [24]  604 	ret
      0002CD                        605 00102$:
                                    606 ;	./src/program.c:128: AT89S51_Chip_Erase();
      0002CD 12 04 89         [24]  607 	lcall	_AT89S51_Chip_Erase
                                    608 ;	./src/program.c:129: delay_ms(1000);
      0002D0 90 03 E8         [24]  609 	mov	dptr,#0x03e8
      0002D3 12 03 9C         [24]  610 	lcall	_delay_ms
                                    611 ;	./src/program.c:132: AT8051_RST = 0;
                                    612 ;	assignBit
      0002D6 C2 83            [12]  613 	clr	_P0_3
                                    614 ;	./src/program.c:133: delay_ms(100);
      0002D8 90 00 64         [24]  615 	mov	dptr,#0x0064
      0002DB 12 03 9C         [24]  616 	lcall	_delay_ms
                                    617 ;	./src/program.c:134: AT8051_MOSI = 1;
                                    618 ;	assignBit
      0002DE D2 80            [12]  619 	setb	_P0_0
                                    620 ;	./src/program.c:135: AT8051_SCK = 1;
                                    621 ;	assignBit
      0002E0 D2 82            [12]  622 	setb	_P0_2
                                    623 ;	./src/program.c:136: delay_ms(1000);
      0002E2 90 03 E8         [24]  624 	mov	dptr,#0x03e8
      0002E5 12 03 9C         [24]  625 	lcall	_delay_ms
                                    626 ;	./src/program.c:138: return HAL_OK;
      0002E8 75 82 00         [24]  627 	mov	dpl,#0x00
                                    628 ;	./src/program.c:139: }
      0002EB 22               [24]  629 	ret
                                    630 	.area CSEG    (CODE)
                                    631 	.area CONST   (CODE)
      00055F                        632 _hex_file:
      00055F 7C                     633 	.db #0x7c	; 124
      000560 19                     634 	.db #0x19	; 25
      000561 7D                     635 	.db #0x7d	; 125
      000562 19                     636 	.db #0x19	; 25
      000563 D2                     637 	.db #0xd2	; 210
      000564 B7                     638 	.db #0xb7	; 183
      000565 11                     639 	.db #0x11	; 17
      000566 62                     640 	.db #0x62	; 98	'b'
      000567 C2                     641 	.db #0xc2	; 194
      000568 B7                     642 	.db #0xb7	; 183
      000569 11                     643 	.db #0x11	; 17
      00056A 62                     644 	.db #0x62	; 98	'b'
      00056B DD                     645 	.db #0xdd	; 221
      00056C F6                     646 	.db #0xf6	; 246
      00056D DC                     647 	.db #0xdc	; 220
      00056E F2                     648 	.db #0xf2	; 242
      00056F 7C                     649 	.db #0x7c	; 124
      000570 19                     650 	.db #0x19	; 25
      000571 7D                     651 	.db #0x7d	; 125
      000572 19                     652 	.db #0x19	; 25
      000573 D2                     653 	.db #0xd2	; 210
      000574 B7                     654 	.db #0xb7	; 183
      000575 11                     655 	.db #0x11	; 17
      000576 6F                     656 	.db #0x6f	; 111	'o'
      000577 C2                     657 	.db #0xc2	; 194
      000578 B7                     658 	.db #0xb7	; 183
      000579 11                     659 	.db #0x11	; 17
      00057A 6F                     660 	.db #0x6f	; 111	'o'
      00057B DD                     661 	.db #0xdd	; 221
      00057C F6                     662 	.db #0xf6	; 246
      00057D DC                     663 	.db #0xdc	; 220
      00057E F2                     664 	.db #0xf2	; 242
      00057F 7C                     665 	.db #0x7c	; 124
      000580 19                     666 	.db #0x19	; 25
      000581 7D                     667 	.db #0x7d	; 125
      000582 19                     668 	.db #0x19	; 25
      000583 D2                     669 	.db #0xd2	; 210
      000584 B7                     670 	.db #0xb7	; 183
      000585 11                     671 	.db #0x11	; 17
      000586 7C                     672 	.db #0x7c	; 124
      000587 C2                     673 	.db #0xc2	; 194
      000588 B7                     674 	.db #0xb7	; 183
      000589 11                     675 	.db #0x11	; 17
      00058A 7C                     676 	.db #0x7c	; 124
      00058B DD                     677 	.db #0xdd	; 221
      00058C F6                     678 	.db #0xf6	; 246
      00058D DC                     679 	.db #0xdc	; 220
      00058E F2                     680 	.db #0xf2	; 242
      00058F 80                     681 	.db #0x80	; 128
      000590 27                     682 	.db #0x27	; 39
      000591 7E                     683 	.db #0x7e	; 126
      000592 0A                     684 	.db #0x0a	; 10
      000593 7F                     685 	.db #0x7f	; 127
      000594 13                     686 	.db #0x13	; 19
      000595 DF                     687 	.db #0xdf	; 223
      000596 FE                     688 	.db #0xfe	; 254
      000597 DE                     689 	.db #0xde	; 222
      000598 FA                     690 	.db #0xfa	; 250
      000599 7F                     691 	.db #0x7f	; 127
      00059A 0D                     692 	.db #0x0d	; 13
      00059B DF                     693 	.db #0xdf	; 223
      00059C FE                     694 	.db #0xfe	; 254
      00059D 22                     695 	.db #0x22	; 34
      00059E 7E                     696 	.db #0x7e	; 126
      00059F 0A                     697 	.db #0x0a	; 10
      0005A0 7F                     698 	.db #0x7f	; 127
      0005A1 11                     699 	.db #0x11	; 17
      0005A2 DF                     700 	.db #0xdf	; 223
      0005A3 FE                     701 	.db #0xfe	; 254
      0005A4 DE                     702 	.db #0xde	; 222
      0005A5 FA                     703 	.db #0xfa	; 250
      0005A6 7F                     704 	.db #0x7f	; 127
      0005A7 09                     705 	.db #0x09	; 9
      0005A8 DF                     706 	.db #0xdf	; 223
      0005A9 FE                     707 	.db #0xfe	; 254
      0005AA 22                     708 	.db #0x22	; 34
      0005AB 7E                     709 	.db #0x7e	; 126
      0005AC 0A                     710 	.db #0x0a	; 10
      0005AD 7F                     711 	.db #0x7f	; 127
      0005AE 0F                     712 	.db #0x0f	; 15
      0005AF DF                     713 	.db #0xdf	; 223
      0005B0 FE                     714 	.db #0xfe	; 254
      0005B1 DE                     715 	.db #0xde	; 222
      0005B2 FA                     716 	.db #0xfa	; 250
      0005B3 7F                     717 	.db #0x7f	; 127
      0005B4 07                     718 	.db #0x07	; 7
      0005B5 DF                     719 	.db #0xdf	; 223
      0005B6 FE                     720 	.db #0xfe	; 254
      0005B7 22                     721 	.db #0x22	; 34
      0005B8 80                     722 	.db #0x80	; 128
      0005B9 FE                     723 	.db #0xfe	; 254
      0005BA                        724 _hex_size:
      0005BA 5B 00                  725 	.byte #0x5b, #0x00	; 91
                                    726 	.area XINIT   (CODE)
                                    727 	.area CABS    (ABS,CODE)
