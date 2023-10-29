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
                                     13 	.globl _readMPU6050_GyroData
                                     14 	.globl _readMPU6050_AccelData
                                     15 	.globl _MPU6050_INIT
                                     16 	.globl _OLED_SetCursor
                                     17 	.globl _OLED_DisplayString
                                     18 	.globl _OLED_DisplayChar
                                     19 	.globl _OLED_Init
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
                                    116 	.globl _gyro_data
                                    117 	.globl _accel_data
                                    118 	.globl _i
                                    119 	.globl _data_buf
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
      000008                        235 _data_buf::
      000008                        236 	.ds 2
      00000A                        237 _i::
      00000A                        238 	.ds 1
      00000B                        239 _accel_data::
      00000B                        240 	.ds 6
      000011                        241 _gyro_data::
      000011                        242 	.ds 6
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area SSEG
      000037                        250 __start__stack:
      000037                        251 	.ds	1
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
                                    311 ;	./src/main.c:34: char i = 0;
      00005F 75 0A 00         [24]  312 	mov	_i,#0x00
                                    313 ;	./src/main.c:36: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  314 	clr	a
      000063 F5 0B            [12]  315 	mov	(_accel_data + 0),a
      000065 F5 0C            [12]  316 	mov	(_accel_data + 1),a
      000067 F5 0D            [12]  317 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 0E            [12]  318 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 0F            [12]  319 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 10            [12]  320 	mov	((_accel_data + 0x0004) + 1),a
                                    321 ;	./src/main.c:37: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 11            [12]  322 	mov	(_gyro_data + 0),a
      000071 F5 12            [12]  323 	mov	(_gyro_data + 1),a
      000073 F5 13            [12]  324 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 14            [12]  325 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 15            [12]  326 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 16            [12]  327 	mov	((_gyro_data + 0x0004) + 1),a
                                    328 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  329 	ljmp	__sdcc_program_startup
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
      000003                        335 __sdcc_program_startup:
      000003 02 00 8A         [24]  336 	ljmp	_main
                                    337 ;	return from main will return to caller
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'main'
                                    344 ;------------------------------------------------------------
                                    345 ;x                         Allocated to registers r6 r7 
                                    346 ;y                         Allocated to registers r5 
                                    347 ;x_prev                    Allocated to registers r3 r4 
                                    348 ;y_prev                    Allocated to registers r2 
                                    349 ;------------------------------------------------------------
                                    350 ;	./src/main.c:41: void main(void)
                                    351 ;	-----------------------------------------
                                    352 ;	 function main
                                    353 ;	-----------------------------------------
      00008A                        354 _main:
                           000007   355 	ar7 = 0x07
                           000006   356 	ar6 = 0x06
                           000005   357 	ar5 = 0x05
                           000004   358 	ar4 = 0x04
                           000003   359 	ar3 = 0x03
                           000002   360 	ar2 = 0x02
                           000001   361 	ar1 = 0x01
                           000000   362 	ar0 = 0x00
                                    363 ;	./src/main.c:43: SDA = 1;
                                    364 ;	assignBit
      00008A D2 81            [12]  365 	setb	_P0_1
                                    366 ;	./src/main.c:44: SCL = 1;
                                    367 ;	assignBit
      00008C D2 80            [12]  368 	setb	_P0_0
                                    369 ;	./src/main.c:45: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      00008E 12 05 0A         [24]  370 	lcall	_OLED_Init
                                    371 ;	./src/main.c:46: MPU6050_INIT();
      000091 12 02 BD         [24]  372 	lcall	_MPU6050_INIT
                                    373 ;	./src/main.c:48: OLED_SetCursor(4,40);
      000094 75 1A 28         [24]  374 	mov	_OLED_SetCursor_PARM_2,#0x28
      000097 75 82 04         [24]  375 	mov	dpl,#0x04
      00009A 12 06 20         [24]  376 	lcall	_OLED_SetCursor
                                    377 ;	./src/main.c:49: OLED_DisplayString("START");
      00009D 90 06 C0         [24]  378 	mov	dptr,#___str_0
      0000A0 75 F0 80         [24]  379 	mov	b,#0x80
      0000A3 12 05 CA         [24]  380 	lcall	_OLED_DisplayString
                                    381 ;	./src/main.c:50: delay_ms(1000);
      0000A6 90 03 E8         [24]  382 	mov	dptr,#0x03e8
      0000A9 12 02 AB         [24]  383 	lcall	_delay_ms
                                    384 ;	./src/main.c:51: OLED_SetCursor(4,40);
      0000AC 75 1A 28         [24]  385 	mov	_OLED_SetCursor_PARM_2,#0x28
      0000AF 75 82 04         [24]  386 	mov	dpl,#0x04
      0000B2 12 06 20         [24]  387 	lcall	_OLED_SetCursor
                                    388 ;	./src/main.c:52: OLED_DisplayString("     ");
      0000B5 90 06 C6         [24]  389 	mov	dptr,#___str_1
      0000B8 75 F0 80         [24]  390 	mov	b,#0x80
      0000BB 12 05 CA         [24]  391 	lcall	_OLED_DisplayString
                                    392 ;	./src/main.c:53: int x=60, y=4;
      0000BE 7E 3C            [12]  393 	mov	r6,#0x3c
      0000C0 7F 00            [12]  394 	mov	r7,#0x00
      0000C2 7D 04            [12]  395 	mov	r5,#0x04
                                    396 ;	./src/main.c:54: int x_prev=60, y_prev=4;
      0000C4 7B 3C            [12]  397 	mov	r3,#0x3c
      0000C6 7C 00            [12]  398 	mov	r4,#0x00
      0000C8 7A 04            [12]  399 	mov	r2,#0x04
                                    400 ;	./src/main.c:55: while(1) {
      0000CA                        401 00118$:
                                    402 ;	./src/main.c:56: readMPU6050_AccelData(&accel_data[0]);
      0000CA 90 00 0B         [24]  403 	mov	dptr,#_accel_data
      0000CD 75 F0 40         [24]  404 	mov	b,#0x40
      0000D0 C0 07            [24]  405 	push	ar7
      0000D2 C0 06            [24]  406 	push	ar6
      0000D4 C0 05            [24]  407 	push	ar5
      0000D6 C0 04            [24]  408 	push	ar4
      0000D8 C0 03            [24]  409 	push	ar3
      0000DA C0 02            [24]  410 	push	ar2
      0000DC 12 03 5A         [24]  411 	lcall	_readMPU6050_AccelData
                                    412 ;	./src/main.c:57: readMPU6050_GyroData(&gyro_data[0]);
      0000DF 90 00 11         [24]  413 	mov	dptr,#_gyro_data
      0000E2 75 F0 40         [24]  414 	mov	b,#0x40
      0000E5 12 04 29         [24]  415 	lcall	_readMPU6050_GyroData
      0000E8 D0 02            [24]  416 	pop	ar2
      0000EA D0 03            [24]  417 	pop	ar3
      0000EC D0 04            [24]  418 	pop	ar4
      0000EE D0 05            [24]  419 	pop	ar5
      0000F0 D0 06            [24]  420 	pop	ar6
      0000F2 D0 07            [24]  421 	pop	ar7
                                    422 ;	./src/main.c:58: if(accel_data[1]<0){
      0000F4 E5 0E            [12]  423 	mov	a,((_accel_data + 0x0002) + 1)
      0000F6 30 E7 16         [24]  424 	jnb	acc.7,00104$
                                    425 ;	./src/main.c:60: if(x<=120)
      0000F9 C3               [12]  426 	clr	c
      0000FA 74 78            [12]  427 	mov	a,#0x78
      0000FC 9E               [12]  428 	subb	a,r6
      0000FD 74 80            [12]  429 	mov	a,#(0x00 ^ 0x80)
      0000FF 8F F0            [24]  430 	mov	b,r7
      000101 63 F0 80         [24]  431 	xrl	b,#0x80
      000104 95 F0            [12]  432 	subb	a,b
      000106 40 07            [24]  433 	jc	00104$
                                    434 ;	./src/main.c:61: x+=5;
      000108 74 05            [12]  435 	mov	a,#0x05
      00010A 2E               [12]  436 	add	a,r6
      00010B FE               [12]  437 	mov	r6,a
      00010C E4               [12]  438 	clr	a
      00010D 3F               [12]  439 	addc	a,r7
      00010E FF               [12]  440 	mov	r7,a
      00010F                        441 00104$:
                                    442 ;	./src/main.c:63: if(accel_data[1]>0){
      00010F C3               [12]  443 	clr	c
      000110 E4               [12]  444 	clr	a
      000111 95 0D            [12]  445 	subb	a,(_accel_data + 0x0002)
      000113 74 80            [12]  446 	mov	a,#(0x00 ^ 0x80)
      000115 85 0E F0         [24]  447 	mov	b,((_accel_data + 0x0002) + 1)
      000118 63 F0 80         [24]  448 	xrl	b,#0x80
      00011B 95 F0            [12]  449 	subb	a,b
      00011D 50 1A            [24]  450 	jnc	00108$
                                    451 ;	./src/main.c:65: x-=5;
      00011F EE               [12]  452 	mov	a,r6
      000120 24 FB            [12]  453 	add	a,#0xfb
      000122 FE               [12]  454 	mov	r6,a
      000123 EF               [12]  455 	mov	a,r7
      000124 34 FF            [12]  456 	addc	a,#0xff
      000126 FF               [12]  457 	mov	r7,a
                                    458 ;	./src/main.c:66: if(x<=0) x=0;
      000127 C3               [12]  459 	clr	c
      000128 E4               [12]  460 	clr	a
      000129 9E               [12]  461 	subb	a,r6
      00012A 74 80            [12]  462 	mov	a,#(0x00 ^ 0x80)
      00012C 8F F0            [24]  463 	mov	b,r7
      00012E 63 F0 80         [24]  464 	xrl	b,#0x80
      000131 95 F0            [12]  465 	subb	a,b
      000133 40 04            [24]  466 	jc	00108$
      000135 7E 00            [12]  467 	mov	r6,#0x00
      000137 7F 00            [12]  468 	mov	r7,#0x00
      000139                        469 00108$:
                                    470 ;	./src/main.c:68: if(accel_data[0]<0){
      000139 E5 0C            [12]  471 	mov	a,(_accel_data + 1)
      00013B 30 E7 0D         [24]  472 	jnb	acc.7,00112$
                                    473 ;	./src/main.c:70: if(y<=6)
      00013E C3               [12]  474 	clr	c
      00013F 74 86            [12]  475 	mov	a,#(0x06 ^ 0x80)
      000141 8D F0            [24]  476 	mov	b,r5
      000143 63 F0 80         [24]  477 	xrl	b,#0x80
      000146 95 F0            [12]  478 	subb	a,b
      000148 40 01            [24]  479 	jc	00112$
                                    480 ;	./src/main.c:71: y+=1;
      00014A 0D               [12]  481 	inc	r5
      00014B                        482 00112$:
                                    483 ;	./src/main.c:73: if(accel_data[0]>0){
      00014B C3               [12]  484 	clr	c
      00014C E4               [12]  485 	clr	a
      00014D 95 0B            [12]  486 	subb	a,_accel_data
      00014F 74 80            [12]  487 	mov	a,#(0x00 ^ 0x80)
      000151 85 0C F0         [24]  488 	mov	b,(_accel_data + 1)
      000154 63 F0 80         [24]  489 	xrl	b,#0x80
      000157 95 F0            [12]  490 	subb	a,b
      000159 50 09            [24]  491 	jnc	00116$
                                    492 ;	./src/main.c:75: if(y>=1) // the number will only decrease when y is bigger then one
      00015B C3               [12]  493 	clr	c
      00015C ED               [12]  494 	mov	a,r5
      00015D 64 80            [12]  495 	xrl	a,#0x80
      00015F 94 81            [12]  496 	subb	a,#0x81
      000161 40 01            [24]  497 	jc	00116$
                                    498 ;	./src/main.c:76: y-=1;
      000163 1D               [12]  499 	dec	r5
      000164                        500 00116$:
                                    501 ;	./src/main.c:78: OLED_SetCursor(y_prev, x_prev);
      000164 8A 82            [24]  502 	mov	dpl,r2
      000166 8B 1A            [24]  503 	mov	_OLED_SetCursor_PARM_2,r3
      000168 C0 07            [24]  504 	push	ar7
      00016A C0 06            [24]  505 	push	ar6
      00016C C0 05            [24]  506 	push	ar5
      00016E 12 06 20         [24]  507 	lcall	_OLED_SetCursor
                                    508 ;	./src/main.c:79: OLED_DisplayChar(' ');
      000171 75 82 20         [24]  509 	mov	dpl,#0x20
      000174 12 05 79         [24]  510 	lcall	_OLED_DisplayChar
      000177 D0 05            [24]  511 	pop	ar5
      000179 D0 06            [24]  512 	pop	ar6
                                    513 ;	./src/main.c:80: OLED_SetCursor(y,x);
      00017B 8D 82            [24]  514 	mov	dpl,r5
      00017D 8E 1A            [24]  515 	mov	_OLED_SetCursor_PARM_2,r6
      00017F C0 06            [24]  516 	push	ar6
      000181 C0 05            [24]  517 	push	ar5
      000183 12 06 20         [24]  518 	lcall	_OLED_SetCursor
                                    519 ;	./src/main.c:81: OLED_DisplayChar('0');
      000186 75 82 30         [24]  520 	mov	dpl,#0x30
      000189 12 05 79         [24]  521 	lcall	_OLED_DisplayChar
      00018C D0 05            [24]  522 	pop	ar5
      00018E D0 06            [24]  523 	pop	ar6
      000190 D0 07            [24]  524 	pop	ar7
                                    525 ;	./src/main.c:82: y_prev = y;
      000192 8D 02            [24]  526 	mov	ar2,r5
                                    527 ;	./src/main.c:83: x_prev = x;
      000194 8E 03            [24]  528 	mov	ar3,r6
      000196 8F 04            [24]  529 	mov	ar4,r7
                                    530 ;	./src/main.c:84: delay_ms(250);
      000198 90 00 FA         [24]  531 	mov	dptr,#0x00fa
      00019B C0 07            [24]  532 	push	ar7
      00019D C0 06            [24]  533 	push	ar6
      00019F C0 05            [24]  534 	push	ar5
      0001A1 C0 04            [24]  535 	push	ar4
      0001A3 C0 03            [24]  536 	push	ar3
      0001A5 C0 02            [24]  537 	push	ar2
      0001A7 12 02 AB         [24]  538 	lcall	_delay_ms
      0001AA D0 02            [24]  539 	pop	ar2
      0001AC D0 03            [24]  540 	pop	ar3
      0001AE D0 04            [24]  541 	pop	ar4
      0001B0 D0 05            [24]  542 	pop	ar5
      0001B2 D0 06            [24]  543 	pop	ar6
      0001B4 D0 07            [24]  544 	pop	ar7
                                    545 ;	./src/main.c:86: }
      0001B6 02 00 CA         [24]  546 	ljmp	00118$
                                    547 	.area CSEG    (CODE)
                                    548 	.area CONST   (CODE)
                                    549 	.area CONST   (CODE)
      0006C0                        550 ___str_0:
      0006C0 53 54 41 52 54         551 	.ascii "START"
      0006C5 00                     552 	.db 0x00
                                    553 	.area CSEG    (CODE)
                                    554 	.area CONST   (CODE)
      0006C6                        555 ___str_1:
      0006C6 20 20 20 20 20         556 	.ascii "     "
      0006CB 00                     557 	.db 0x00
                                    558 	.area CSEG    (CODE)
                                    559 	.area XINIT   (CODE)
                                    560 	.area CABS    (ABS,CODE)
