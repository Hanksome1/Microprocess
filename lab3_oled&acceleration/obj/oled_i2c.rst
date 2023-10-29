                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14356 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _OLED_SetCursor_PARM_2
                                     14 	.globl _OLED_Init
                                     15 	.globl _OLED_DisplayChar
                                     16 	.globl _OLED_DisplayString
                                     17 	.globl _OLED_Clear
                                     18 	.globl _OLED_SetCursor
                                     19 	.globl _oledSendCommand
                                     20 	.globl _oledSendData
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; special function bits
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable register banks
                                     33 ;--------------------------------------------------------
                                     34 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         35 	.ds 8
                                     36 ;--------------------------------------------------------
                                     37 ; internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DSEG    (DATA)
      00001A                         40 _OLED_SetCursor_PARM_2:
      00001A                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable items in internal ram
                                     44 ;--------------------------------------------------------
                                     45 ;--------------------------------------------------------
                                     46 ; indirectly addressable internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area ISEG    (DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; absolute internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area IABS    (ABS,DATA)
                                     53 	.area IABS    (ABS,DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; bit data
                                     56 ;--------------------------------------------------------
                                     57 	.area BSEG    (BIT)
                                     58 ;--------------------------------------------------------
                                     59 ; paged external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area PSEG    (PAG,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; uninitialized external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XSEG    (XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XABS    (ABS,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; initialized external ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XISEG   (XDATA)
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; Home
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area HOME    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; code
                                     98 ;--------------------------------------------------------
                                     99 	.area CSEG    (CODE)
                                    100 ;------------------------------------------------------------
                                    101 ;Allocation info for local variables in function 'OLED_Init'
                                    102 ;------------------------------------------------------------
                                    103 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      00050A                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      00050A 75 82 A8         [24]  117 	mov	dpl,#0xa8
      00050D 12 06 50         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      000510 75 82 3F         [24]  120 	mov	dpl,#0x3f
      000513 12 06 50         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      000516 75 82 D3         [24]  123 	mov	dpl,#0xd3
      000519 12 06 50         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      00051C 75 82 00         [24]  126 	mov	dpl,#0x00
      00051F 12 06 50         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      000522 75 82 40         [24]  129 	mov	dpl,#0x40
      000525 12 06 50         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      000528 75 82 A1         [24]  132 	mov	dpl,#0xa1
      00052B 12 06 50         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      00052E 75 82 C8         [24]  135 	mov	dpl,#0xc8
      000531 12 06 50         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      000534 75 82 DA         [24]  138 	mov	dpl,#0xda
      000537 12 06 50         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      00053A 75 82 12         [24]  141 	mov	dpl,#0x12
      00053D 12 06 50         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000540 75 82 81         [24]  144 	mov	dpl,#0x81
      000543 12 06 50         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      000546 75 82 7F         [24]  147 	mov	dpl,#0x7f
      000549 12 06 50         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      00054C 75 82 A4         [24]  150 	mov	dpl,#0xa4
      00054F 12 06 50         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000552 75 82 A6         [24]  153 	mov	dpl,#0xa6
      000555 12 06 50         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      000558 75 82 D5         [24]  156 	mov	dpl,#0xd5
      00055B 12 06 50         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      00055E 75 82 80         [24]  159 	mov	dpl,#0x80
      000561 12 06 50         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000564 75 82 8D         [24]  162 	mov	dpl,#0x8d
      000567 12 06 50         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      00056A 75 82 14         [24]  165 	mov	dpl,#0x14
      00056D 12 06 50         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      000570 75 82 AF         [24]  168 	mov	dpl,#0xaf
      000573 12 06 50         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      000576 02 05 F5         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      000579                        184 _OLED_DisplayChar:
      000579 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      00057B BF 0A 01         [24]  187 	cjne	r7,#0x0a,00130$
      00057E 22               [24]  188 	ret
      00057F                        189 00130$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      00057F 7E 00            [12]  191 	mov	r6,#0x00
      000581 EF               [12]  192 	mov	a,r7
      000582 24 E0            [12]  193 	add	a,#0xe0
      000584 F5 1B            [12]  194 	mov	__mulint_PARM_2,a
      000586 EE               [12]  195 	mov	a,r6
      000587 34 FF            [12]  196 	addc	a,#0xff
      000589 F5 1C            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
                                    199 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      00058B 90 00 05         [24]  200 	mov	dptr,#0x0005
      00058E 12 06 83         [24]  201 	lcall	__mulint
      000591 AE 82            [24]  202 	mov	r6,dpl
      000593 AF 83            [24]  203 	mov	r7,dph
      000595 7D 00            [12]  204 	mov	r5,#0x00
      000597                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      000597 8D 03            [24]  207 	mov	ar3,r5
      000599 7C 00            [12]  208 	mov	r4,#0x00
      00059B EB               [12]  209 	mov	a,r3
      00059C 2E               [12]  210 	add	a,r6
      00059D FB               [12]  211 	mov	r3,a
      00059E EC               [12]  212 	mov	a,r4
      00059F 3F               [12]  213 	addc	a,r7
      0005A0 FC               [12]  214 	mov	r4,a
      0005A1 EB               [12]  215 	mov	a,r3
      0005A2 24 CC            [12]  216 	add	a,#_OledFontTable
      0005A4 F5 82            [12]  217 	mov	dpl,a
      0005A6 EC               [12]  218 	mov	a,r4
      0005A7 34 06            [12]  219 	addc	a,#(_OledFontTable >> 8)
      0005A9 F5 83            [12]  220 	mov	dph,a
      0005AB E4               [12]  221 	clr	a
      0005AC 93               [24]  222 	movc	a,@a+dptr
      0005AD F5 82            [12]  223 	mov	dpl,a
      0005AF C0 07            [24]  224 	push	ar7
      0005B1 C0 06            [24]  225 	push	ar6
      0005B3 C0 05            [24]  226 	push	ar5
      0005B5 12 06 5C         [24]  227 	lcall	_oledSendData
      0005B8 D0 05            [24]  228 	pop	ar5
      0005BA D0 06            [24]  229 	pop	ar6
      0005BC D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0005BE 0D               [12]  232 	inc	r5
      0005BF BD 05 00         [24]  233 	cjne	r5,#0x05,00131$
      0005C2                        234 00131$:
      0005C2 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      0005C4 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      0005C7 02 06 5C         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      0005CA                        249 _OLED_DisplayString:
      0005CA AD 82            [24]  250 	mov	r5,dpl
      0005CC AE 83            [24]  251 	mov	r6,dph
      0005CE AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      0005D0                        254 00101$:
      0005D0 8D 82            [24]  255 	mov	dpl,r5
      0005D2 8E 83            [24]  256 	mov	dph,r6
      0005D4 8F F0            [24]  257 	mov	b,r7
      0005D6 12 06 A0         [24]  258 	lcall	__gptrget
      0005D9 FC               [12]  259 	mov	r4,a
      0005DA 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      0005DC 8C 82            [24]  262 	mov	dpl,r4
      0005DE 0D               [12]  263 	inc	r5
      0005DF BD 00 01         [24]  264 	cjne	r5,#0x00,00120$
      0005E2 0E               [12]  265 	inc	r6
      0005E3                        266 00120$:
      0005E3 C0 07            [24]  267 	push	ar7
      0005E5 C0 06            [24]  268 	push	ar6
      0005E7 C0 05            [24]  269 	push	ar5
      0005E9 12 05 79         [24]  270 	lcall	_OLED_DisplayChar
      0005EC D0 05            [24]  271 	pop	ar5
      0005EE D0 06            [24]  272 	pop	ar6
      0005F0 D0 07            [24]  273 	pop	ar7
      0005F2 80 DC            [24]  274 	sjmp	00101$
      0005F4                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      0005F4 22               [24]  277 	ret
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'OLED_Clear'
                                    280 ;------------------------------------------------------------
                                    281 ;oled_clean_col            Allocated to registers r6 
                                    282 ;oled_clean_page           Allocated to registers r7 
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    285 ;	-----------------------------------------
                                    286 ;	 function OLED_Clear
                                    287 ;	-----------------------------------------
      0005F5                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      0005F5 7F 00            [12]  290 	mov	r7,#0x00
      0005F7                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      0005F7 75 1A 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      0005FA 8F 82            [24]  294 	mov	dpl,r7
      0005FC C0 07            [24]  295 	push	ar7
      0005FE 12 06 20         [24]  296 	lcall	_OLED_SetCursor
      000601 D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000603 7E 00            [12]  299 	mov	r6,#0x00
      000605                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      000605 75 82 00         [24]  302 	mov	dpl,#0x00
      000608 C0 07            [24]  303 	push	ar7
      00060A C0 06            [24]  304 	push	ar6
      00060C 12 06 5C         [24]  305 	lcall	_oledSendData
      00060F D0 06            [24]  306 	pop	ar6
      000611 D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      000613 0E               [12]  309 	inc	r6
      000614 BE 80 00         [24]  310 	cjne	r6,#0x80,00129$
      000617                        311 00129$:
      000617 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      000619 0F               [12]  314 	inc	r7
      00061A BF 08 00         [24]  315 	cjne	r7,#0x08,00131$
      00061D                        316 00131$:
      00061D 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      00061F 22               [24]  319 	ret
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    322 ;------------------------------------------------------------
                                    323 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    324 ;lineNumber                Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    327 ;	-----------------------------------------
                                    328 ;	 function OLED_SetCursor
                                    329 ;	-----------------------------------------
      000620                        330 _OLED_SetCursor:
      000620 AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      000622 AE 1A            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      000624 74 02            [12]  334 	mov	a,#0x02
      000626 2E               [12]  335 	add	a,r6
      000627 F5 1A            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      000629 AE 1A            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      00062B 74 0F            [12]  339 	mov	a,#0x0f
      00062D 5E               [12]  340 	anl	a,r6
      00062E F5 82            [12]  341 	mov	dpl,a
      000630 C0 07            [24]  342 	push	ar7
      000632 C0 06            [24]  343 	push	ar6
      000634 12 06 50         [24]  344 	lcall	_oledSendCommand
      000637 D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      000639 EE               [12]  347 	mov	a,r6
      00063A C4               [12]  348 	swap	a
      00063B 54 0F            [12]  349 	anl	a,#0x0f
      00063D FE               [12]  350 	mov	r6,a
      00063E 74 10            [12]  351 	mov	a,#0x10
      000640 4E               [12]  352 	orl	a,r6
      000641 F5 82            [12]  353 	mov	dpl,a
      000643 12 06 50         [24]  354 	lcall	_oledSendCommand
      000646 D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      000648 74 B0            [12]  357 	mov	a,#0xb0
      00064A 4F               [12]  358 	orl	a,r7
      00064B F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      00064D 02 06 50         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      000650                        371 _oledSendCommand:
      000650 85 82 18         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000653 75 17 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      000656 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      000659 02 02 4F         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      00065C                        387 _oledSendData:
      00065C 85 82 18         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      00065F 75 17 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      000662 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      000665 02 02 4F         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      0006CC                        396 _OledFontTable:
      0006CC 00                     397 	.db #0x00	; 0
      0006CD 00                     398 	.db #0x00	; 0
      0006CE 00                     399 	.db #0x00	; 0
      0006CF 00                     400 	.db #0x00	; 0
      0006D0 00                     401 	.db #0x00	; 0
      0006D1 00                     402 	.db #0x00	; 0
      0006D2 00                     403 	.db #0x00	; 0
      0006D3 2F                     404 	.db #0x2f	; 47
      0006D4 00                     405 	.db #0x00	; 0
      0006D5 00                     406 	.db #0x00	; 0
      0006D6 00                     407 	.db #0x00	; 0
      0006D7 07                     408 	.db #0x07	; 7
      0006D8 00                     409 	.db #0x00	; 0
      0006D9 07                     410 	.db #0x07	; 7
      0006DA 00                     411 	.db #0x00	; 0
      0006DB 14                     412 	.db #0x14	; 20
      0006DC 7F                     413 	.db #0x7f	; 127
      0006DD 14                     414 	.db #0x14	; 20
      0006DE 7F                     415 	.db #0x7f	; 127
      0006DF 14                     416 	.db #0x14	; 20
      0006E0 24                     417 	.db #0x24	; 36
      0006E1 2A                     418 	.db #0x2a	; 42
      0006E2 7F                     419 	.db #0x7f	; 127
      0006E3 2A                     420 	.db #0x2a	; 42
      0006E4 12                     421 	.db #0x12	; 18
      0006E5 23                     422 	.db #0x23	; 35
      0006E6 13                     423 	.db #0x13	; 19
      0006E7 08                     424 	.db #0x08	; 8
      0006E8 64                     425 	.db #0x64	; 100	'd'
      0006E9 62                     426 	.db #0x62	; 98	'b'
      0006EA 36                     427 	.db #0x36	; 54	'6'
      0006EB 49                     428 	.db #0x49	; 73	'I'
      0006EC 55                     429 	.db #0x55	; 85	'U'
      0006ED 22                     430 	.db #0x22	; 34
      0006EE 50                     431 	.db #0x50	; 80	'P'
      0006EF 00                     432 	.db #0x00	; 0
      0006F0 05                     433 	.db #0x05	; 5
      0006F1 03                     434 	.db #0x03	; 3
      0006F2 00                     435 	.db #0x00	; 0
      0006F3 00                     436 	.db #0x00	; 0
      0006F4 00                     437 	.db #0x00	; 0
      0006F5 1C                     438 	.db #0x1c	; 28
      0006F6 22                     439 	.db #0x22	; 34
      0006F7 41                     440 	.db #0x41	; 65	'A'
      0006F8 00                     441 	.db #0x00	; 0
      0006F9 00                     442 	.db #0x00	; 0
      0006FA 41                     443 	.db #0x41	; 65	'A'
      0006FB 22                     444 	.db #0x22	; 34
      0006FC 1C                     445 	.db #0x1c	; 28
      0006FD 00                     446 	.db #0x00	; 0
      0006FE 14                     447 	.db #0x14	; 20
      0006FF 08                     448 	.db #0x08	; 8
      000700 3E                     449 	.db #0x3e	; 62
      000701 08                     450 	.db #0x08	; 8
      000702 14                     451 	.db #0x14	; 20
      000703 08                     452 	.db #0x08	; 8
      000704 08                     453 	.db #0x08	; 8
      000705 3E                     454 	.db #0x3e	; 62
      000706 08                     455 	.db #0x08	; 8
      000707 08                     456 	.db #0x08	; 8
      000708 00                     457 	.db #0x00	; 0
      000709 00                     458 	.db #0x00	; 0
      00070A A0                     459 	.db #0xa0	; 160
      00070B 60                     460 	.db #0x60	; 96
      00070C 00                     461 	.db #0x00	; 0
      00070D 08                     462 	.db #0x08	; 8
      00070E 08                     463 	.db #0x08	; 8
      00070F 08                     464 	.db #0x08	; 8
      000710 08                     465 	.db #0x08	; 8
      000711 08                     466 	.db #0x08	; 8
      000712 00                     467 	.db #0x00	; 0
      000713 60                     468 	.db #0x60	; 96
      000714 60                     469 	.db #0x60	; 96
      000715 00                     470 	.db #0x00	; 0
      000716 00                     471 	.db #0x00	; 0
      000717 20                     472 	.db #0x20	; 32
      000718 10                     473 	.db #0x10	; 16
      000719 08                     474 	.db #0x08	; 8
      00071A 04                     475 	.db #0x04	; 4
      00071B 02                     476 	.db #0x02	; 2
      00071C 3E                     477 	.db #0x3e	; 62
      00071D 51                     478 	.db #0x51	; 81	'Q'
      00071E 49                     479 	.db #0x49	; 73	'I'
      00071F 45                     480 	.db #0x45	; 69	'E'
      000720 3E                     481 	.db #0x3e	; 62
      000721 00                     482 	.db #0x00	; 0
      000722 42                     483 	.db #0x42	; 66	'B'
      000723 7F                     484 	.db #0x7f	; 127
      000724 40                     485 	.db #0x40	; 64
      000725 00                     486 	.db #0x00	; 0
      000726 42                     487 	.db #0x42	; 66	'B'
      000727 61                     488 	.db #0x61	; 97	'a'
      000728 51                     489 	.db #0x51	; 81	'Q'
      000729 49                     490 	.db #0x49	; 73	'I'
      00072A 46                     491 	.db #0x46	; 70	'F'
      00072B 21                     492 	.db #0x21	; 33
      00072C 41                     493 	.db #0x41	; 65	'A'
      00072D 45                     494 	.db #0x45	; 69	'E'
      00072E 4B                     495 	.db #0x4b	; 75	'K'
      00072F 31                     496 	.db #0x31	; 49	'1'
      000730 18                     497 	.db #0x18	; 24
      000731 14                     498 	.db #0x14	; 20
      000732 12                     499 	.db #0x12	; 18
      000733 7F                     500 	.db #0x7f	; 127
      000734 10                     501 	.db #0x10	; 16
      000735 27                     502 	.db #0x27	; 39
      000736 45                     503 	.db #0x45	; 69	'E'
      000737 45                     504 	.db #0x45	; 69	'E'
      000738 45                     505 	.db #0x45	; 69	'E'
      000739 39                     506 	.db #0x39	; 57	'9'
      00073A 3C                     507 	.db #0x3c	; 60
      00073B 4A                     508 	.db #0x4a	; 74	'J'
      00073C 49                     509 	.db #0x49	; 73	'I'
      00073D 49                     510 	.db #0x49	; 73	'I'
      00073E 30                     511 	.db #0x30	; 48	'0'
      00073F 01                     512 	.db #0x01	; 1
      000740 71                     513 	.db #0x71	; 113	'q'
      000741 09                     514 	.db #0x09	; 9
      000742 05                     515 	.db #0x05	; 5
      000743 03                     516 	.db #0x03	; 3
      000744 36                     517 	.db #0x36	; 54	'6'
      000745 49                     518 	.db #0x49	; 73	'I'
      000746 49                     519 	.db #0x49	; 73	'I'
      000747 49                     520 	.db #0x49	; 73	'I'
      000748 36                     521 	.db #0x36	; 54	'6'
      000749 06                     522 	.db #0x06	; 6
      00074A 49                     523 	.db #0x49	; 73	'I'
      00074B 49                     524 	.db #0x49	; 73	'I'
      00074C 29                     525 	.db #0x29	; 41
      00074D 1E                     526 	.db #0x1e	; 30
      00074E 00                     527 	.db #0x00	; 0
      00074F 36                     528 	.db #0x36	; 54	'6'
      000750 36                     529 	.db #0x36	; 54	'6'
      000751 00                     530 	.db #0x00	; 0
      000752 00                     531 	.db #0x00	; 0
      000753 00                     532 	.db #0x00	; 0
      000754 56                     533 	.db #0x56	; 86	'V'
      000755 36                     534 	.db #0x36	; 54	'6'
      000756 00                     535 	.db #0x00	; 0
      000757 00                     536 	.db #0x00	; 0
      000758 08                     537 	.db #0x08	; 8
      000759 14                     538 	.db #0x14	; 20
      00075A 22                     539 	.db #0x22	; 34
      00075B 41                     540 	.db #0x41	; 65	'A'
      00075C 00                     541 	.db #0x00	; 0
      00075D 14                     542 	.db #0x14	; 20
      00075E 14                     543 	.db #0x14	; 20
      00075F 14                     544 	.db #0x14	; 20
      000760 14                     545 	.db #0x14	; 20
      000761 14                     546 	.db #0x14	; 20
      000762 00                     547 	.db #0x00	; 0
      000763 41                     548 	.db #0x41	; 65	'A'
      000764 22                     549 	.db #0x22	; 34
      000765 14                     550 	.db #0x14	; 20
      000766 08                     551 	.db #0x08	; 8
      000767 02                     552 	.db #0x02	; 2
      000768 01                     553 	.db #0x01	; 1
      000769 51                     554 	.db #0x51	; 81	'Q'
      00076A 09                     555 	.db #0x09	; 9
      00076B 06                     556 	.db #0x06	; 6
      00076C 32                     557 	.db #0x32	; 50	'2'
      00076D 49                     558 	.db #0x49	; 73	'I'
      00076E 59                     559 	.db #0x59	; 89	'Y'
      00076F 51                     560 	.db #0x51	; 81	'Q'
      000770 3E                     561 	.db #0x3e	; 62
      000771 7C                     562 	.db #0x7c	; 124
      000772 12                     563 	.db #0x12	; 18
      000773 11                     564 	.db #0x11	; 17
      000774 12                     565 	.db #0x12	; 18
      000775 7C                     566 	.db #0x7c	; 124
      000776 7F                     567 	.db #0x7f	; 127
      000777 49                     568 	.db #0x49	; 73	'I'
      000778 49                     569 	.db #0x49	; 73	'I'
      000779 49                     570 	.db #0x49	; 73	'I'
      00077A 36                     571 	.db #0x36	; 54	'6'
      00077B 3E                     572 	.db #0x3e	; 62
      00077C 41                     573 	.db #0x41	; 65	'A'
      00077D 41                     574 	.db #0x41	; 65	'A'
      00077E 41                     575 	.db #0x41	; 65	'A'
      00077F 22                     576 	.db #0x22	; 34
      000780 7F                     577 	.db #0x7f	; 127
      000781 41                     578 	.db #0x41	; 65	'A'
      000782 41                     579 	.db #0x41	; 65	'A'
      000783 22                     580 	.db #0x22	; 34
      000784 1C                     581 	.db #0x1c	; 28
      000785 7F                     582 	.db #0x7f	; 127
      000786 49                     583 	.db #0x49	; 73	'I'
      000787 49                     584 	.db #0x49	; 73	'I'
      000788 49                     585 	.db #0x49	; 73	'I'
      000789 41                     586 	.db #0x41	; 65	'A'
      00078A 7F                     587 	.db #0x7f	; 127
      00078B 09                     588 	.db #0x09	; 9
      00078C 09                     589 	.db #0x09	; 9
      00078D 09                     590 	.db #0x09	; 9
      00078E 01                     591 	.db #0x01	; 1
      00078F 3E                     592 	.db #0x3e	; 62
      000790 41                     593 	.db #0x41	; 65	'A'
      000791 49                     594 	.db #0x49	; 73	'I'
      000792 49                     595 	.db #0x49	; 73	'I'
      000793 7A                     596 	.db #0x7a	; 122	'z'
      000794 7F                     597 	.db #0x7f	; 127
      000795 08                     598 	.db #0x08	; 8
      000796 08                     599 	.db #0x08	; 8
      000797 08                     600 	.db #0x08	; 8
      000798 7F                     601 	.db #0x7f	; 127
      000799 00                     602 	.db #0x00	; 0
      00079A 41                     603 	.db #0x41	; 65	'A'
      00079B 7F                     604 	.db #0x7f	; 127
      00079C 41                     605 	.db #0x41	; 65	'A'
      00079D 00                     606 	.db #0x00	; 0
      00079E 20                     607 	.db #0x20	; 32
      00079F 40                     608 	.db #0x40	; 64
      0007A0 41                     609 	.db #0x41	; 65	'A'
      0007A1 3F                     610 	.db #0x3f	; 63
      0007A2 01                     611 	.db #0x01	; 1
      0007A3 7F                     612 	.db #0x7f	; 127
      0007A4 08                     613 	.db #0x08	; 8
      0007A5 14                     614 	.db #0x14	; 20
      0007A6 22                     615 	.db #0x22	; 34
      0007A7 41                     616 	.db #0x41	; 65	'A'
      0007A8 7F                     617 	.db #0x7f	; 127
      0007A9 40                     618 	.db #0x40	; 64
      0007AA 40                     619 	.db #0x40	; 64
      0007AB 40                     620 	.db #0x40	; 64
      0007AC 40                     621 	.db #0x40	; 64
      0007AD 7F                     622 	.db #0x7f	; 127
      0007AE 02                     623 	.db #0x02	; 2
      0007AF 0C                     624 	.db #0x0c	; 12
      0007B0 02                     625 	.db #0x02	; 2
      0007B1 7F                     626 	.db #0x7f	; 127
      0007B2 7F                     627 	.db #0x7f	; 127
      0007B3 04                     628 	.db #0x04	; 4
      0007B4 08                     629 	.db #0x08	; 8
      0007B5 10                     630 	.db #0x10	; 16
      0007B6 7F                     631 	.db #0x7f	; 127
      0007B7 3E                     632 	.db #0x3e	; 62
      0007B8 41                     633 	.db #0x41	; 65	'A'
      0007B9 41                     634 	.db #0x41	; 65	'A'
      0007BA 41                     635 	.db #0x41	; 65	'A'
      0007BB 3E                     636 	.db #0x3e	; 62
      0007BC 7F                     637 	.db #0x7f	; 127
      0007BD 09                     638 	.db #0x09	; 9
      0007BE 09                     639 	.db #0x09	; 9
      0007BF 09                     640 	.db #0x09	; 9
      0007C0 06                     641 	.db #0x06	; 6
      0007C1 3E                     642 	.db #0x3e	; 62
      0007C2 41                     643 	.db #0x41	; 65	'A'
      0007C3 51                     644 	.db #0x51	; 81	'Q'
      0007C4 21                     645 	.db #0x21	; 33
      0007C5 5E                     646 	.db #0x5e	; 94
      0007C6 7F                     647 	.db #0x7f	; 127
      0007C7 09                     648 	.db #0x09	; 9
      0007C8 19                     649 	.db #0x19	; 25
      0007C9 29                     650 	.db #0x29	; 41
      0007CA 46                     651 	.db #0x46	; 70	'F'
      0007CB 46                     652 	.db #0x46	; 70	'F'
      0007CC 49                     653 	.db #0x49	; 73	'I'
      0007CD 49                     654 	.db #0x49	; 73	'I'
      0007CE 49                     655 	.db #0x49	; 73	'I'
      0007CF 31                     656 	.db #0x31	; 49	'1'
      0007D0 01                     657 	.db #0x01	; 1
      0007D1 01                     658 	.db #0x01	; 1
      0007D2 7F                     659 	.db #0x7f	; 127
      0007D3 01                     660 	.db #0x01	; 1
      0007D4 01                     661 	.db #0x01	; 1
      0007D5 3F                     662 	.db #0x3f	; 63
      0007D6 40                     663 	.db #0x40	; 64
      0007D7 40                     664 	.db #0x40	; 64
      0007D8 40                     665 	.db #0x40	; 64
      0007D9 3F                     666 	.db #0x3f	; 63
      0007DA 1F                     667 	.db #0x1f	; 31
      0007DB 20                     668 	.db #0x20	; 32
      0007DC 40                     669 	.db #0x40	; 64
      0007DD 20                     670 	.db #0x20	; 32
      0007DE 1F                     671 	.db #0x1f	; 31
      0007DF 3F                     672 	.db #0x3f	; 63
      0007E0 40                     673 	.db #0x40	; 64
      0007E1 38                     674 	.db #0x38	; 56	'8'
      0007E2 40                     675 	.db #0x40	; 64
      0007E3 3F                     676 	.db #0x3f	; 63
      0007E4 63                     677 	.db #0x63	; 99	'c'
      0007E5 14                     678 	.db #0x14	; 20
      0007E6 08                     679 	.db #0x08	; 8
      0007E7 14                     680 	.db #0x14	; 20
      0007E8 63                     681 	.db #0x63	; 99	'c'
      0007E9 07                     682 	.db #0x07	; 7
      0007EA 08                     683 	.db #0x08	; 8
      0007EB 70                     684 	.db #0x70	; 112	'p'
      0007EC 08                     685 	.db #0x08	; 8
      0007ED 07                     686 	.db #0x07	; 7
      0007EE 61                     687 	.db #0x61	; 97	'a'
      0007EF 51                     688 	.db #0x51	; 81	'Q'
      0007F0 49                     689 	.db #0x49	; 73	'I'
      0007F1 45                     690 	.db #0x45	; 69	'E'
      0007F2 43                     691 	.db #0x43	; 67	'C'
      0007F3 00                     692 	.db #0x00	; 0
      0007F4 7F                     693 	.db #0x7f	; 127
      0007F5 41                     694 	.db #0x41	; 65	'A'
      0007F6 41                     695 	.db #0x41	; 65	'A'
      0007F7 00                     696 	.db #0x00	; 0
      0007F8 55                     697 	.db #0x55	; 85	'U'
      0007F9 AA                     698 	.db #0xaa	; 170
      0007FA 55                     699 	.db #0x55	; 85	'U'
      0007FB AA                     700 	.db #0xaa	; 170
      0007FC 55                     701 	.db #0x55	; 85	'U'
      0007FD 00                     702 	.db #0x00	; 0
      0007FE 41                     703 	.db #0x41	; 65	'A'
      0007FF 41                     704 	.db #0x41	; 65	'A'
      000800 7F                     705 	.db #0x7f	; 127
      000801 00                     706 	.db #0x00	; 0
      000802 04                     707 	.db #0x04	; 4
      000803 02                     708 	.db #0x02	; 2
      000804 01                     709 	.db #0x01	; 1
      000805 02                     710 	.db #0x02	; 2
      000806 04                     711 	.db #0x04	; 4
      000807 40                     712 	.db #0x40	; 64
      000808 40                     713 	.db #0x40	; 64
      000809 40                     714 	.db #0x40	; 64
      00080A 40                     715 	.db #0x40	; 64
      00080B 40                     716 	.db #0x40	; 64
      00080C 00                     717 	.db #0x00	; 0
      00080D 03                     718 	.db #0x03	; 3
      00080E 05                     719 	.db #0x05	; 5
      00080F 00                     720 	.db #0x00	; 0
      000810 00                     721 	.db #0x00	; 0
      000811 20                     722 	.db #0x20	; 32
      000812 54                     723 	.db #0x54	; 84	'T'
      000813 54                     724 	.db #0x54	; 84	'T'
      000814 54                     725 	.db #0x54	; 84	'T'
      000815 78                     726 	.db #0x78	; 120	'x'
      000816 7F                     727 	.db #0x7f	; 127
      000817 48                     728 	.db #0x48	; 72	'H'
      000818 44                     729 	.db #0x44	; 68	'D'
      000819 44                     730 	.db #0x44	; 68	'D'
      00081A 38                     731 	.db #0x38	; 56	'8'
      00081B 38                     732 	.db #0x38	; 56	'8'
      00081C 44                     733 	.db #0x44	; 68	'D'
      00081D 44                     734 	.db #0x44	; 68	'D'
      00081E 44                     735 	.db #0x44	; 68	'D'
      00081F 20                     736 	.db #0x20	; 32
      000820 38                     737 	.db #0x38	; 56	'8'
      000821 44                     738 	.db #0x44	; 68	'D'
      000822 44                     739 	.db #0x44	; 68	'D'
      000823 48                     740 	.db #0x48	; 72	'H'
      000824 7F                     741 	.db #0x7f	; 127
      000825 38                     742 	.db #0x38	; 56	'8'
      000826 54                     743 	.db #0x54	; 84	'T'
      000827 54                     744 	.db #0x54	; 84	'T'
      000828 54                     745 	.db #0x54	; 84	'T'
      000829 18                     746 	.db #0x18	; 24
      00082A 08                     747 	.db #0x08	; 8
      00082B 7E                     748 	.db #0x7e	; 126
      00082C 09                     749 	.db #0x09	; 9
      00082D 01                     750 	.db #0x01	; 1
      00082E 02                     751 	.db #0x02	; 2
      00082F 18                     752 	.db #0x18	; 24
      000830 A4                     753 	.db #0xa4	; 164
      000831 A4                     754 	.db #0xa4	; 164
      000832 A4                     755 	.db #0xa4	; 164
      000833 7C                     756 	.db #0x7c	; 124
      000834 7F                     757 	.db #0x7f	; 127
      000835 08                     758 	.db #0x08	; 8
      000836 04                     759 	.db #0x04	; 4
      000837 04                     760 	.db #0x04	; 4
      000838 78                     761 	.db #0x78	; 120	'x'
      000839 00                     762 	.db #0x00	; 0
      00083A 44                     763 	.db #0x44	; 68	'D'
      00083B 7D                     764 	.db #0x7d	; 125
      00083C 40                     765 	.db #0x40	; 64
      00083D 00                     766 	.db #0x00	; 0
      00083E 40                     767 	.db #0x40	; 64
      00083F 80                     768 	.db #0x80	; 128
      000840 84                     769 	.db #0x84	; 132
      000841 7D                     770 	.db #0x7d	; 125
      000842 00                     771 	.db #0x00	; 0
      000843 7F                     772 	.db #0x7f	; 127
      000844 10                     773 	.db #0x10	; 16
      000845 28                     774 	.db #0x28	; 40
      000846 44                     775 	.db #0x44	; 68	'D'
      000847 00                     776 	.db #0x00	; 0
      000848 00                     777 	.db #0x00	; 0
      000849 41                     778 	.db #0x41	; 65	'A'
      00084A 7F                     779 	.db #0x7f	; 127
      00084B 40                     780 	.db #0x40	; 64
      00084C 00                     781 	.db #0x00	; 0
      00084D 7C                     782 	.db #0x7c	; 124
      00084E 04                     783 	.db #0x04	; 4
      00084F 18                     784 	.db #0x18	; 24
      000850 04                     785 	.db #0x04	; 4
      000851 78                     786 	.db #0x78	; 120	'x'
      000852 7C                     787 	.db #0x7c	; 124
      000853 08                     788 	.db #0x08	; 8
      000854 04                     789 	.db #0x04	; 4
      000855 04                     790 	.db #0x04	; 4
      000856 78                     791 	.db #0x78	; 120	'x'
      000857 38                     792 	.db #0x38	; 56	'8'
      000858 44                     793 	.db #0x44	; 68	'D'
      000859 44                     794 	.db #0x44	; 68	'D'
      00085A 44                     795 	.db #0x44	; 68	'D'
      00085B 38                     796 	.db #0x38	; 56	'8'
      00085C FC                     797 	.db #0xfc	; 252
      00085D 24                     798 	.db #0x24	; 36
      00085E 24                     799 	.db #0x24	; 36
      00085F 24                     800 	.db #0x24	; 36
      000860 18                     801 	.db #0x18	; 24
      000861 18                     802 	.db #0x18	; 24
      000862 24                     803 	.db #0x24	; 36
      000863 24                     804 	.db #0x24	; 36
      000864 18                     805 	.db #0x18	; 24
      000865 FC                     806 	.db #0xfc	; 252
      000866 7C                     807 	.db #0x7c	; 124
      000867 08                     808 	.db #0x08	; 8
      000868 04                     809 	.db #0x04	; 4
      000869 04                     810 	.db #0x04	; 4
      00086A 08                     811 	.db #0x08	; 8
      00086B 48                     812 	.db #0x48	; 72	'H'
      00086C 54                     813 	.db #0x54	; 84	'T'
      00086D 54                     814 	.db #0x54	; 84	'T'
      00086E 54                     815 	.db #0x54	; 84	'T'
      00086F 20                     816 	.db #0x20	; 32
      000870 04                     817 	.db #0x04	; 4
      000871 3F                     818 	.db #0x3f	; 63
      000872 44                     819 	.db #0x44	; 68	'D'
      000873 40                     820 	.db #0x40	; 64
      000874 20                     821 	.db #0x20	; 32
      000875 3C                     822 	.db #0x3c	; 60
      000876 40                     823 	.db #0x40	; 64
      000877 40                     824 	.db #0x40	; 64
      000878 20                     825 	.db #0x20	; 32
      000879 7C                     826 	.db #0x7c	; 124
      00087A 1C                     827 	.db #0x1c	; 28
      00087B 20                     828 	.db #0x20	; 32
      00087C 40                     829 	.db #0x40	; 64
      00087D 20                     830 	.db #0x20	; 32
      00087E 1C                     831 	.db #0x1c	; 28
      00087F 3C                     832 	.db #0x3c	; 60
      000880 40                     833 	.db #0x40	; 64
      000881 30                     834 	.db #0x30	; 48	'0'
      000882 40                     835 	.db #0x40	; 64
      000883 3C                     836 	.db #0x3c	; 60
      000884 44                     837 	.db #0x44	; 68	'D'
      000885 28                     838 	.db #0x28	; 40
      000886 10                     839 	.db #0x10	; 16
      000887 28                     840 	.db #0x28	; 40
      000888 44                     841 	.db #0x44	; 68	'D'
      000889 1C                     842 	.db #0x1c	; 28
      00088A A0                     843 	.db #0xa0	; 160
      00088B A0                     844 	.db #0xa0	; 160
      00088C A0                     845 	.db #0xa0	; 160
      00088D 7C                     846 	.db #0x7c	; 124
      00088E 44                     847 	.db #0x44	; 68	'D'
      00088F 64                     848 	.db #0x64	; 100	'd'
      000890 54                     849 	.db #0x54	; 84	'T'
      000891 4C                     850 	.db #0x4c	; 76	'L'
      000892 44                     851 	.db #0x44	; 68	'D'
      000893 00                     852 	.db #0x00	; 0
      000894 10                     853 	.db #0x10	; 16
      000895 7C                     854 	.db #0x7c	; 124
      000896 82                     855 	.db #0x82	; 130
      000897 00                     856 	.db #0x00	; 0
      000898 00                     857 	.db #0x00	; 0
      000899 00                     858 	.db #0x00	; 0
      00089A FF                     859 	.db #0xff	; 255
      00089B 00                     860 	.db #0x00	; 0
      00089C 00                     861 	.db #0x00	; 0
      00089D 00                     862 	.db #0x00	; 0
      00089E 82                     863 	.db #0x82	; 130
      00089F 7C                     864 	.db #0x7c	; 124
      0008A0 10                     865 	.db #0x10	; 16
      0008A1 00                     866 	.db #0x00	; 0
      0008A2 00                     867 	.db #0x00	; 0
      0008A3 06                     868 	.db #0x06	; 6
      0008A4 09                     869 	.db #0x09	; 9
      0008A5 09                     870 	.db #0x09	; 9
      0008A6 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
