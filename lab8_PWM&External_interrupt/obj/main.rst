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
                                     11 	.globl _EX1_int
                                     12 	.globl _EX0_int
                                     13 	.globl _PWM_Dimming_LED
                                     14 	.globl _main
                                     15 	.globl _delay_ms
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
                                    112 	.globl _LED
                                    113 	.globl _decrease_flag
                                    114 	.globl _rotate
                                    115 	.globl _shift_idx
                                    116 	.globl _duty_cycle
                                    117 	.globl _pwm_count
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
                                    230 ; overlayable bit register bank
                                    231 ;--------------------------------------------------------
                                    232 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        233 bits:
      000020                        234 	.ds 1
                           008000   235 	b0 = bits[0]
                           008100   236 	b1 = bits[1]
                           008200   237 	b2 = bits[2]
                           008300   238 	b3 = bits[3]
                           008400   239 	b4 = bits[4]
                           008500   240 	b5 = bits[5]
                           008600   241 	b6 = bits[6]
                           008700   242 	b7 = bits[7]
                                    243 ;--------------------------------------------------------
                                    244 ; internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area DSEG    (DATA)
      000008                        247 _pwm_count::
      000008                        248 	.ds 2
      00000A                        249 _duty_cycle::
      00000A                        250 	.ds 2
      00000C                        251 _shift_idx::
      00000C                        252 	.ds 1
      00000D                        253 _rotate::
      00000D                        254 	.ds 1
      00000E                        255 _decrease_flag::
      00000E                        256 	.ds 2
      000010                        257 _LED::
      000010                        258 	.ds 1
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable items in internal ram
                                    261 ;--------------------------------------------------------
                                    262 ;--------------------------------------------------------
                                    263 ; Stack segment in internal ram
                                    264 ;--------------------------------------------------------
                                    265 	.area SSEG
      000021                        266 __start__stack:
      000021                        267 	.ds	1
                                    268 
                                    269 ;--------------------------------------------------------
                                    270 ; indirectly addressable internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area ISEG    (DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area IABS    (ABS,DATA)
                                    277 	.area IABS    (ABS,DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; bit data
                                    280 ;--------------------------------------------------------
                                    281 	.area BSEG    (BIT)
                                    282 ;--------------------------------------------------------
                                    283 ; paged external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area PSEG    (PAG,XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; uninitialized external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XSEG    (XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XABS    (ABS,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; initialized external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XISEG   (XDATA)
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT0 (CODE)
                                    300 	.area GSINIT1 (CODE)
                                    301 	.area GSINIT2 (CODE)
                                    302 	.area GSINIT3 (CODE)
                                    303 	.area GSINIT4 (CODE)
                                    304 	.area GSINIT5 (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area CSEG    (CODE)
                                    308 ;--------------------------------------------------------
                                    309 ; interrupt vector
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
      000000                        312 __interrupt_vect:
      000000 02 00 19         [24]  313 	ljmp	__sdcc_gsinit_startup
      000003 02 01 CD         [24]  314 	ljmp	_EX0_int
      000006                        315 	.ds	5
      00000B 02 00 F8         [24]  316 	ljmp	_PWM_Dimming_LED
      00000E                        317 	.ds	5
      000013 02 01 DE         [24]  318 	ljmp	_EX1_int
                                    319 ;--------------------------------------------------------
                                    320 ; global & static initialisations
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.globl __sdcc_gsinit_startup
                                    327 	.globl __sdcc_program_startup
                                    328 	.globl __start__stack
                                    329 	.globl __mcs51_genXINIT
                                    330 	.globl __mcs51_genXRAMCLEAR
                                    331 	.globl __mcs51_genRAMCLEAR
                                    332 ;	./src/main.c:6: int pwm_count=0;
      000072 E4               [12]  333 	clr	a
      000073 F5 08            [12]  334 	mov	_pwm_count,a
      000075 F5 09            [12]  335 	mov	(_pwm_count + 1),a
                                    336 ;	./src/main.c:7: int duty_cycle = 0;
      000077 F5 0A            [12]  337 	mov	_duty_cycle,a
      000079 F5 0B            [12]  338 	mov	(_duty_cycle + 1),a
                                    339 ;	./src/main.c:8: char shift_idx = 0;
      00007B F5 0C            [12]  340 	mov	_shift_idx,a
                                    341 ;	./src/main.c:9: char rotate = 0;
      00007D F5 0D            [12]  342 	mov	_rotate,a
                                    343 ;	./src/main.c:10: int decrease_flag=0; 
      00007F F5 0E            [12]  344 	mov	_decrease_flag,a
      000081 F5 0F            [12]  345 	mov	(_decrease_flag + 1),a
                                    346 ;	./src/main.c:11: unsigned char LED = 0x80;
      000083 75 10 80         [24]  347 	mov	_LED,#0x80
                                    348 	.area GSFINAL (CODE)
      000086 02 00 16         [24]  349 	ljmp	__sdcc_program_startup
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
      000016                        355 __sdcc_program_startup:
      000016 02 00 89         [24]  356 	ljmp	_main
                                    357 ;	return from main will return to caller
                                    358 ;--------------------------------------------------------
                                    359 ; code
                                    360 ;--------------------------------------------------------
                                    361 	.area CSEG    (CODE)
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'main'
                                    364 ;------------------------------------------------------------
                                    365 ;i                         Allocated to registers r6 r7 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/main.c:12: int main(void)
                                    368 ;	-----------------------------------------
                                    369 ;	 function main
                                    370 ;	-----------------------------------------
      000089                        371 _main:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	./src/main.c:17: TMOD = 0x01;            // 16 bit timer
      000089 75 89 01         [24]  381 	mov	_TMOD,#0x01
                                    382 ;	./src/main.c:18: TH0 = freq >> 8;        
      00008C 75 8C FF         [24]  383 	mov	_TH0,#0xff
                                    384 ;	./src/main.c:19: TL0 = freq & 0xFF;  
      00008F 75 8A 9C         [24]  385 	mov	_TL0,#0x9c
                                    386 ;	./src/main.c:20: ET0 = 1;				// timer 0 overflow enable				
                                    387 ;	assignBit
      000092 D2 A9            [12]  388 	setb	_ET0
                                    389 ;	./src/main.c:21: TR0 = 1;                // timer 0 turn on
                                    390 ;	assignBit
      000094 D2 8C            [12]  391 	setb	_TR0
                                    392 ;	./src/main.c:24: EA = 1;					// enable all interrupt
                                    393 ;	assignBit
      000096 D2 AF            [12]  394 	setb	_EA
                                    395 ;	./src/main.c:25: EX0=1;          // INT0 enable
                                    396 ;	assignBit
      000098 D2 A8            [12]  397 	setb	_EX0
                                    398 ;	./src/main.c:26: EX1=1;	        // INT1 enable
                                    399 ;	assignBit
      00009A D2 AA            [12]  400 	setb	_EX1
                                    401 ;	./src/main.c:27: IT1 = 0;        // INT0 edge trigger INT1 level trigger
                                    402 ;	assignBit
      00009C C2 8A            [12]  403 	clr	_IT1
                                    404 ;	./src/main.c:28: IT0 = 1;           
                                    405 ;	assignBit
      00009E D2 88            [12]  406 	setb	_IT0
                                    407 ;	./src/main.c:33: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000A0                        408 00114$:
      0000A0 7E 00            [12]  409 	mov	r6,#0x00
      0000A2 7F 00            [12]  410 	mov	r7,#0x00
      0000A4                        411 00108$:
                                    412 ;	./src/main.c:35: duty_cycle = i;
      0000A4 8E 0A            [24]  413 	mov	_duty_cycle,r6
      0000A6 8F 0B            [24]  414 	mov	(_duty_cycle + 1),r7
                                    415 ;	./src/main.c:36: delay_ms(5);
      0000A8 90 00 05         [24]  416 	mov	dptr,#0x0005
      0000AB C0 07            [24]  417 	push	ar7
      0000AD C0 06            [24]  418 	push	ar6
      0000AF 12 02 6A         [24]  419 	lcall	_delay_ms
      0000B2 D0 06            [24]  420 	pop	ar6
      0000B4 D0 07            [24]  421 	pop	ar7
                                    422 ;	./src/main.c:33: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000B6 0E               [12]  423 	inc	r6
      0000B7 BE 00 01         [24]  424 	cjne	r6,#0x00,00152$
      0000BA 0F               [12]  425 	inc	r7
      0000BB                        426 00152$:
      0000BB C3               [12]  427 	clr	c
      0000BC 74 28            [12]  428 	mov	a,#0x28
      0000BE 9E               [12]  429 	subb	a,r6
      0000BF 74 80            [12]  430 	mov	a,#(0x00 ^ 0x80)
      0000C1 8F F0            [24]  431 	mov	b,r7
      0000C3 63 F0 80         [24]  432 	xrl	b,#0x80
      0000C6 95 F0            [12]  433 	subb	a,b
      0000C8 50 DA            [24]  434 	jnc	00108$
                                    435 ;	./src/main.c:38: for(i = PWM_CNT_UPPER; i >= 0 ; i--)
      0000CA 7E 28            [12]  436 	mov	r6,#0x28
      0000CC 7F 00            [12]  437 	mov	r7,#0x00
      0000CE                        438 00110$:
                                    439 ;	./src/main.c:40: duty_cycle = i;
      0000CE 8E 0A            [24]  440 	mov	_duty_cycle,r6
      0000D0 8F 0B            [24]  441 	mov	(_duty_cycle + 1),r7
                                    442 ;	./src/main.c:41: delay_ms(5);
      0000D2 90 00 05         [24]  443 	mov	dptr,#0x0005
      0000D5 C0 07            [24]  444 	push	ar7
      0000D7 C0 06            [24]  445 	push	ar6
      0000D9 12 02 6A         [24]  446 	lcall	_delay_ms
      0000DC D0 06            [24]  447 	pop	ar6
      0000DE D0 07            [24]  448 	pop	ar7
                                    449 ;	./src/main.c:38: for(i = PWM_CNT_UPPER; i >= 0 ; i--)
      0000E0 1E               [12]  450 	dec	r6
      0000E1 BE FF 01         [24]  451 	cjne	r6,#0xff,00154$
      0000E4 1F               [12]  452 	dec	r7
      0000E5                        453 00154$:
      0000E5 EF               [12]  454 	mov	a,r7
      0000E6 30 E7 E5         [24]  455 	jnb	acc.7,00110$
                                    456 ;	./src/main.c:43: if(rotate){
      0000E9 E5 0D            [12]  457 	mov	a,_rotate
      0000EB 60 B3            [24]  458 	jz	00114$
                                    459 ;	./src/main.c:44: shift_idx+=1; 
      0000ED E5 0C            [12]  460 	mov	a,_shift_idx
      0000EF FF               [12]  461 	mov	r7,a
      0000F0 04               [12]  462 	inc	a
      0000F1 F5 0C            [12]  463 	mov	_shift_idx,a
                                    464 ;	./src/main.c:45: shift_idx%=8;
      0000F3 53 0C 07         [24]  465 	anl	_shift_idx,#0x07
                                    466 ;	./src/main.c:50: }
      0000F6 80 A8            [24]  467 	sjmp	00114$
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'PWM_Dimming_LED'
                                    470 ;------------------------------------------------------------
                                    471 ;	./src/main.c:52: void PWM_Dimming_LED(void) __interrupt (1)  
                                    472 ;	-----------------------------------------
                                    473 ;	 function PWM_Dimming_LED
                                    474 ;	-----------------------------------------
      0000F8                        475 _PWM_Dimming_LED:
      0000F8 C0 E0            [24]  476 	push	acc
      0000FA C0 F0            [24]  477 	push	b
      0000FC C0 82            [24]  478 	push	dpl
      0000FE C0 83            [24]  479 	push	dph
      000100 C0 D0            [24]  480 	push	psw
                                    481 ;	./src/main.c:54: TH0 = freq >> 8;
      000102 75 8C FF         [24]  482 	mov	_TH0,#0xff
                                    483 ;	./src/main.c:55: TL0 = freq & 0xFF;   
      000105 75 8A 9C         [24]  484 	mov	_TL0,#0x9c
                                    485 ;	./src/main.c:56: pwm_count++;
      000108 05 08            [12]  486 	inc	_pwm_count
      00010A E4               [12]  487 	clr	a
      00010B B5 08 02         [24]  488 	cjne	a,_pwm_count,00150$
      00010E 05 09            [12]  489 	inc	(_pwm_count + 1)
      000110                        490 00150$:
                                    491 ;	./src/main.c:58: if(pwm_count >= PWM_CNT_UPPER)
      000110 C3               [12]  492 	clr	c
      000111 E5 08            [12]  493 	mov	a,_pwm_count
      000113 94 28            [12]  494 	subb	a,#0x28
      000115 E5 09            [12]  495 	mov	a,(_pwm_count + 1)
      000117 64 80            [12]  496 	xrl	a,#0x80
      000119 94 80            [12]  497 	subb	a,#0x80
      00011B 40 05            [24]  498 	jc	00102$
                                    499 ;	./src/main.c:59: pwm_count = 0;
      00011D E4               [12]  500 	clr	a
      00011E F5 08            [12]  501 	mov	_pwm_count,a
      000120 F5 09            [12]  502 	mov	(_pwm_count + 1),a
      000122                        503 00102$:
                                    504 ;	./src/main.c:61: if(duty_cycle > pwm_count) {
      000122 C3               [12]  505 	clr	c
      000123 E5 08            [12]  506 	mov	a,_pwm_count
      000125 95 0A            [12]  507 	subb	a,_duty_cycle
      000127 E5 09            [12]  508 	mov	a,(_pwm_count + 1)
      000129 64 80            [12]  509 	xrl	a,#0x80
      00012B 85 0B F0         [24]  510 	mov	b,(_duty_cycle + 1)
      00012E 63 F0 80         [24]  511 	xrl	b,#0x80
      000131 95 F0            [12]  512 	subb	a,b
      000133 50 49            [24]  513 	jnc	00122$
                                    514 ;	./src/main.c:62: switch(shift_idx){
      000135 E5 0C            [12]  515 	mov	a,_shift_idx
      000137 24 F8            [12]  516 	add	a,#0xff - 0x07
      000139 50 03            [24]  517 	jnc	00153$
      00013B 02 01 C2         [24]  518 	ljmp	00124$
      00013E                        519 00153$:
      00013E E5 0C            [12]  520 	mov	a,_shift_idx
      000140 24 0B            [12]  521 	add	a,#(00154$-3-.)
      000142 83               [24]  522 	movc	a,@a+pc
      000143 F5 82            [12]  523 	mov	dpl,a
      000145 E5 0C            [12]  524 	mov	a,_shift_idx
      000147 24 0C            [12]  525 	add	a,#(00155$-3-.)
      000149 83               [24]  526 	movc	a,@a+pc
      00014A F5 83            [12]  527 	mov	dph,a
      00014C E4               [12]  528 	clr	a
      00014D 73               [24]  529 	jmp	@a+dptr
      00014E                        530 00154$:
      00014E 5E                     531 	.db	00103$
      00014F 62                     532 	.db	00104$
      000150 66                     533 	.db	00105$
      000151 6A                     534 	.db	00106$
      000152 6E                     535 	.db	00107$
      000153 72                     536 	.db	00108$
      000154 76                     537 	.db	00109$
      000155 7A                     538 	.db	00110$
      000156                        539 00155$:
      000156 01                     540 	.db	00103$>>8
      000157 01                     541 	.db	00104$>>8
      000158 01                     542 	.db	00105$>>8
      000159 01                     543 	.db	00106$>>8
      00015A 01                     544 	.db	00107$>>8
      00015B 01                     545 	.db	00108$>>8
      00015C 01                     546 	.db	00109$>>8
      00015D 01                     547 	.db	00110$>>8
                                    548 ;	./src/main.c:63: case 0 : P1_0 = 0; break;  
      00015E                        549 00103$:
                                    550 ;	assignBit
      00015E C2 90            [12]  551 	clr	_P1_0
                                    552 ;	./src/main.c:64: case 1 : P1_1 = 0; break; 
      000160 80 60            [24]  553 	sjmp	00124$
      000162                        554 00104$:
                                    555 ;	assignBit
      000162 C2 91            [12]  556 	clr	_P1_1
                                    557 ;	./src/main.c:65: case 2 : P1_2 = 0; break; 
      000164 80 5C            [24]  558 	sjmp	00124$
      000166                        559 00105$:
                                    560 ;	assignBit
      000166 C2 92            [12]  561 	clr	_P1_2
                                    562 ;	./src/main.c:66: case 3 : P1_3 = 0; break; 
      000168 80 58            [24]  563 	sjmp	00124$
      00016A                        564 00106$:
                                    565 ;	assignBit
      00016A C2 93            [12]  566 	clr	_P1_3
                                    567 ;	./src/main.c:67: case 4 : P1_4 = 0; break; 
      00016C 80 54            [24]  568 	sjmp	00124$
      00016E                        569 00107$:
                                    570 ;	assignBit
      00016E C2 94            [12]  571 	clr	_P1_4
                                    572 ;	./src/main.c:68: case 5 : P1_5 = 0; break; 
      000170 80 50            [24]  573 	sjmp	00124$
      000172                        574 00108$:
                                    575 ;	assignBit
      000172 C2 95            [12]  576 	clr	_P1_5
                                    577 ;	./src/main.c:69: case 6 : P1_6 = 0; break; 
      000174 80 4C            [24]  578 	sjmp	00124$
      000176                        579 00109$:
                                    580 ;	assignBit
      000176 C2 96            [12]  581 	clr	_P1_6
                                    582 ;	./src/main.c:70: case 7 : P1_7 = 0; break; 
      000178 80 48            [24]  583 	sjmp	00124$
      00017A                        584 00110$:
                                    585 ;	assignBit
      00017A C2 97            [12]  586 	clr	_P1_7
                                    587 ;	./src/main.c:71: }
      00017C 80 44            [24]  588 	sjmp	00124$
      00017E                        589 00122$:
                                    590 ;	./src/main.c:74: switch(shift_idx){
      00017E E5 0C            [12]  591 	mov	a,_shift_idx
      000180 24 F8            [12]  592 	add	a,#0xff - 0x07
      000182 40 3E            [24]  593 	jc	00124$
      000184 E5 0C            [12]  594 	mov	a,_shift_idx
      000186 24 0B            [12]  595 	add	a,#(00157$-3-.)
      000188 83               [24]  596 	movc	a,@a+pc
      000189 F5 82            [12]  597 	mov	dpl,a
      00018B E5 0C            [12]  598 	mov	a,_shift_idx
      00018D 24 0C            [12]  599 	add	a,#(00158$-3-.)
      00018F 83               [24]  600 	movc	a,@a+pc
      000190 F5 83            [12]  601 	mov	dph,a
      000192 E4               [12]  602 	clr	a
      000193 73               [24]  603 	jmp	@a+dptr
      000194                        604 00157$:
      000194 A4                     605 	.db	00112$
      000195 A8                     606 	.db	00113$
      000196 AC                     607 	.db	00114$
      000197 B0                     608 	.db	00115$
      000198 B4                     609 	.db	00116$
      000199 B8                     610 	.db	00117$
      00019A BC                     611 	.db	00118$
      00019B C0                     612 	.db	00119$
      00019C                        613 00158$:
      00019C 01                     614 	.db	00112$>>8
      00019D 01                     615 	.db	00113$>>8
      00019E 01                     616 	.db	00114$>>8
      00019F 01                     617 	.db	00115$>>8
      0001A0 01                     618 	.db	00116$>>8
      0001A1 01                     619 	.db	00117$>>8
      0001A2 01                     620 	.db	00118$>>8
      0001A3 01                     621 	.db	00119$>>8
                                    622 ;	./src/main.c:75: case 0 : P1_0 = 1; break; 
      0001A4                        623 00112$:
                                    624 ;	assignBit
      0001A4 D2 90            [12]  625 	setb	_P1_0
                                    626 ;	./src/main.c:76: case 1 : P1_1 = 1; break; 
      0001A6 80 1A            [24]  627 	sjmp	00124$
      0001A8                        628 00113$:
                                    629 ;	assignBit
      0001A8 D2 91            [12]  630 	setb	_P1_1
                                    631 ;	./src/main.c:77: case 2 : P1_2 = 1; break; 
      0001AA 80 16            [24]  632 	sjmp	00124$
      0001AC                        633 00114$:
                                    634 ;	assignBit
      0001AC D2 92            [12]  635 	setb	_P1_2
                                    636 ;	./src/main.c:78: case 3 : P1_3 = 1; break; 
      0001AE 80 12            [24]  637 	sjmp	00124$
      0001B0                        638 00115$:
                                    639 ;	assignBit
      0001B0 D2 93            [12]  640 	setb	_P1_3
                                    641 ;	./src/main.c:79: case 4 : P1_4 = 1; break; 
      0001B2 80 0E            [24]  642 	sjmp	00124$
      0001B4                        643 00116$:
                                    644 ;	assignBit
      0001B4 D2 94            [12]  645 	setb	_P1_4
                                    646 ;	./src/main.c:80: case 5 : P1_5 = 1; break; 
      0001B6 80 0A            [24]  647 	sjmp	00124$
      0001B8                        648 00117$:
                                    649 ;	assignBit
      0001B8 D2 95            [12]  650 	setb	_P1_5
                                    651 ;	./src/main.c:81: case 6 : P1_6 = 1; break; 
      0001BA 80 06            [24]  652 	sjmp	00124$
      0001BC                        653 00118$:
                                    654 ;	assignBit
      0001BC D2 96            [12]  655 	setb	_P1_6
                                    656 ;	./src/main.c:82: case 7 : P1_7 = 1; break; 
      0001BE 80 02            [24]  657 	sjmp	00124$
      0001C0                        658 00119$:
                                    659 ;	assignBit
      0001C0 D2 97            [12]  660 	setb	_P1_7
                                    661 ;	./src/main.c:83: }
      0001C2                        662 00124$:
                                    663 ;	./src/main.c:85: }
      0001C2 D0 D0            [24]  664 	pop	psw
      0001C4 D0 83            [24]  665 	pop	dph
      0001C6 D0 82            [24]  666 	pop	dpl
      0001C8 D0 F0            [24]  667 	pop	b
      0001CA D0 E0            [24]  668 	pop	acc
      0001CC 32               [24]  669 	reti
                                    670 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'EX0_int'
                                    673 ;------------------------------------------------------------
                                    674 ;	./src/main.c:87: void EX0_int(void) __interrupt (0) // External interrupt 0, edge trigger
                                    675 ;	-----------------------------------------
                                    676 ;	 function EX0_int
                                    677 ;	-----------------------------------------
      0001CD                        678 _EX0_int:
      0001CD C0 E0            [24]  679 	push	acc
                                    680 ;	./src/main.c:89: if (rotate == 0) rotate =1;
      0001CF E5 0D            [12]  681 	mov	a,_rotate
      0001D1 70 05            [24]  682 	jnz	00102$
      0001D3 75 0D 01         [24]  683 	mov	_rotate,#0x01
      0001D6 80 03            [24]  684 	sjmp	00104$
      0001D8                        685 00102$:
                                    686 ;	./src/main.c:90: else rotate = 0;
      0001D8 75 0D 00         [24]  687 	mov	_rotate,#0x00
      0001DB                        688 00104$:
                                    689 ;	./src/main.c:91: }  
      0001DB D0 E0            [24]  690 	pop	acc
      0001DD 32               [24]  691 	reti
                                    692 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    693 ;	eliminated unneeded push/pop not_psw
                                    694 ;	eliminated unneeded push/pop dpl
                                    695 ;	eliminated unneeded push/pop dph
                                    696 ;	eliminated unneeded push/pop b
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'EX1_int'
                                    699 ;------------------------------------------------------------
                                    700 ;j                         Allocated to registers 
                                    701 ;------------------------------------------------------------
                                    702 ;	./src/main.c:93: void EX1_int(void) __interrupt (2) // External interrupt 1, level trigger
                                    703 ;	-----------------------------------------
                                    704 ;	 function EX1_int
                                    705 ;	-----------------------------------------
      0001DE                        706 _EX1_int:
      0001DE C0 20            [24]  707 	push	bits
      0001E0 C0 E0            [24]  708 	push	acc
      0001E2 C0 F0            [24]  709 	push	b
      0001E4 C0 82            [24]  710 	push	dpl
      0001E6 C0 83            [24]  711 	push	dph
      0001E8 C0 07            [24]  712 	push	(0+7)
      0001EA C0 06            [24]  713 	push	(0+6)
      0001EC C0 05            [24]  714 	push	(0+5)
      0001EE C0 04            [24]  715 	push	(0+4)
      0001F0 C0 03            [24]  716 	push	(0+3)
      0001F2 C0 02            [24]  717 	push	(0+2)
      0001F4 C0 01            [24]  718 	push	(0+1)
      0001F6 C0 00            [24]  719 	push	(0+0)
      0001F8 C0 D0            [24]  720 	push	psw
      0001FA 75 D0 00         [24]  721 	mov	psw,#0x00
                                    722 ;	./src/main.c:97: P1=0x00;
      0001FD 75 90 00         [24]  723 	mov	_P1,#0x00
                                    724 ;	./src/main.c:98: delay_ms(100); 
      000200 90 00 64         [24]  725 	mov	dptr,#0x0064
      000203 12 02 6A         [24]  726 	lcall	_delay_ms
                                    727 ;	./src/main.c:99: P1=0xff;
      000206 75 90 FF         [24]  728 	mov	_P1,#0xff
                                    729 ;	./src/main.c:100: switch(shift_idx){
      000209 E5 0C            [12]  730 	mov	a,_shift_idx
      00020B 24 F8            [12]  731 	add	a,#0xff - 0x07
      00020D 40 3E            [24]  732 	jc	00110$
      00020F E5 0C            [12]  733 	mov	a,_shift_idx
      000211 24 0B            [12]  734 	add	a,#(00119$-3-.)
      000213 83               [24]  735 	movc	a,@a+pc
      000214 F5 82            [12]  736 	mov	dpl,a
      000216 E5 0C            [12]  737 	mov	a,_shift_idx
      000218 24 0C            [12]  738 	add	a,#(00120$-3-.)
      00021A 83               [24]  739 	movc	a,@a+pc
      00021B F5 83            [12]  740 	mov	dph,a
      00021D E4               [12]  741 	clr	a
      00021E 73               [24]  742 	jmp	@a+dptr
      00021F                        743 00119$:
      00021F 2F                     744 	.db	00101$
      000220 33                     745 	.db	00102$
      000221 37                     746 	.db	00103$
      000222 3B                     747 	.db	00104$
      000223 3F                     748 	.db	00105$
      000224 43                     749 	.db	00106$
      000225 47                     750 	.db	00107$
      000226 4B                     751 	.db	00108$
      000227                        752 00120$:
      000227 02                     753 	.db	00101$>>8
      000228 02                     754 	.db	00102$>>8
      000229 02                     755 	.db	00103$>>8
      00022A 02                     756 	.db	00104$>>8
      00022B 02                     757 	.db	00105$>>8
      00022C 02                     758 	.db	00106$>>8
      00022D 02                     759 	.db	00107$>>8
      00022E 02                     760 	.db	00108$>>8
                                    761 ;	./src/main.c:101: case 0 : P1_0 = 0; break; 
      00022F                        762 00101$:
                                    763 ;	assignBit
      00022F C2 90            [12]  764 	clr	_P1_0
                                    765 ;	./src/main.c:102: case 1 : P1_1 = 0; break; 
      000231 80 1A            [24]  766 	sjmp	00110$
      000233                        767 00102$:
                                    768 ;	assignBit
      000233 C2 91            [12]  769 	clr	_P1_1
                                    770 ;	./src/main.c:103: case 2 : P1_2 = 0; break; 
      000235 80 16            [24]  771 	sjmp	00110$
      000237                        772 00103$:
                                    773 ;	assignBit
      000237 C2 92            [12]  774 	clr	_P1_2
                                    775 ;	./src/main.c:104: case 3 : P1_3 = 0; break; 
      000239 80 12            [24]  776 	sjmp	00110$
      00023B                        777 00104$:
                                    778 ;	assignBit
      00023B C2 93            [12]  779 	clr	_P1_3
                                    780 ;	./src/main.c:105: case 4 : P1_4 = 0; break; 
      00023D 80 0E            [24]  781 	sjmp	00110$
      00023F                        782 00105$:
                                    783 ;	assignBit
      00023F C2 94            [12]  784 	clr	_P1_4
                                    785 ;	./src/main.c:106: case 5 : P1_5 = 0; break; 
      000241 80 0A            [24]  786 	sjmp	00110$
      000243                        787 00106$:
                                    788 ;	assignBit
      000243 C2 95            [12]  789 	clr	_P1_5
                                    790 ;	./src/main.c:107: case 6 : P1_6 = 0; break; 
      000245 80 06            [24]  791 	sjmp	00110$
      000247                        792 00107$:
                                    793 ;	assignBit
      000247 C2 96            [12]  794 	clr	_P1_6
                                    795 ;	./src/main.c:108: case 7 : P1_7 = 0; break; 
      000249 80 02            [24]  796 	sjmp	00110$
      00024B                        797 00108$:
                                    798 ;	assignBit
      00024B C2 97            [12]  799 	clr	_P1_7
                                    800 ;	./src/main.c:109: }
      00024D                        801 00110$:
                                    802 ;	./src/main.c:110: } 	
      00024D D0 D0            [24]  803 	pop	psw
      00024F D0 00            [24]  804 	pop	(0+0)
      000251 D0 01            [24]  805 	pop	(0+1)
      000253 D0 02            [24]  806 	pop	(0+2)
      000255 D0 03            [24]  807 	pop	(0+3)
      000257 D0 04            [24]  808 	pop	(0+4)
      000259 D0 05            [24]  809 	pop	(0+5)
      00025B D0 06            [24]  810 	pop	(0+6)
      00025D D0 07            [24]  811 	pop	(0+7)
      00025F D0 83            [24]  812 	pop	dph
      000261 D0 82            [24]  813 	pop	dpl
      000263 D0 F0            [24]  814 	pop	b
      000265 D0 E0            [24]  815 	pop	acc
      000267 D0 20            [24]  816 	pop	bits
      000269 32               [24]  817 	reti
                                    818 	.area CSEG    (CODE)
                                    819 	.area CONST   (CODE)
                                    820 	.area XINIT   (CODE)
                                    821 	.area CABS    (ABS,CODE)
