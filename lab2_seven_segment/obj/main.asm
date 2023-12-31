;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14356 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Initial7219
	.globl _Write7219
	.globl _delay_ms
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Display
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Display_num_65536_12:
	.ds 4
_Display_seg_65536_13:
	.ds 10
_Display_i_65536_13:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;num                       Allocated to registers r4 r5 r6 r7 
;tmp                       Allocated to registers r2 
;but                       Allocated to registers r2 
;prebut                    Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:20: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:22: long int num = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:23: unsigned char tmp, but, prebut = 0xFF;
	mov	r3,#0xff
;	./src/main.c:25: Initial7219();					// MAX7219 initialize
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Initial7219
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:26: while (1) {
00116$:
;	./src/main.c:27: P0 = 0x0F;
	mov	_P0,#0x0f
;	./src/main.c:28: tmp = P0;					// button detection (cul)
	mov	r2,_P0
;	./src/main.c:29: P0 = 0xF0;
	mov	_P0,#0xf0
;	./src/main.c:30: but = tmp | P0;				// button detection (row)
	mov	a,_P0
	orl	ar2,a
;	./src/main.c:33: if (but != prebut && but != 0xFF) {
	mov	a,r2
	cjne	a,ar3,00192$
	ljmp	00113$
00192$:
	cjne	r2,#0xff,00193$
	ljmp	00113$
00193$:
;	./src/main.c:34: num *= 10;
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
;	./src/main.c:35: switch (but) {
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar2
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	cjne	r2,#0xb7,00194$
	sjmp	00107$
00194$:
	cjne	r2,#0xbb,00195$
	ljmp	00108$
00195$:
	cjne	r2,#0xbd,00196$
	ljmp	00109$
00196$:
	cjne	r2,#0xd7,00197$
	sjmp	00104$
00197$:
	cjne	r2,#0xdb,00198$
	sjmp	00105$
00198$:
	cjne	r2,#0xdd,00199$
	sjmp	00106$
00199$:
	cjne	r2,#0xe7,00200$
	sjmp	00101$
00200$:
	cjne	r2,#0xeb,00201$
	sjmp	00102$
00201$:
;	./src/main.c:36: case 0xE7:  num++;	// 9
	cjne	r2,#0xed,00113$
	sjmp	00103$
00101$:
	inc	r4
	cjne	r4,#0x00,00203$
	inc	r5
	cjne	r5,#0x00,00203$
	inc	r6
	cjne	r6,#0x00,00203$
	inc	r7
00203$:
;	./src/main.c:37: case 0xEB:  num++;	// 8
00102$:
	inc	r4
	cjne	r4,#0x00,00204$
	inc	r5
	cjne	r5,#0x00,00204$
	inc	r6
	cjne	r6,#0x00,00204$
	inc	r7
00204$:
;	./src/main.c:38: case 0xED:  num++;	// 7
00103$:
	inc	r4
	cjne	r4,#0x00,00205$
	inc	r5
	cjne	r5,#0x00,00205$
	inc	r6
	cjne	r6,#0x00,00205$
	inc	r7
00205$:
;	./src/main.c:39: case 0xD7:  num++;	// 6
00104$:
	inc	r4
	cjne	r4,#0x00,00206$
	inc	r5
	cjne	r5,#0x00,00206$
	inc	r6
	cjne	r6,#0x00,00206$
	inc	r7
00206$:
;	./src/main.c:40: case 0xDB:  num++;	// 5
00105$:
	inc	r4
	cjne	r4,#0x00,00207$
	inc	r5
	cjne	r5,#0x00,00207$
	inc	r6
	cjne	r6,#0x00,00207$
	inc	r7
00207$:
;	./src/main.c:41: case 0xDD:  num++;	// 4
00106$:
	inc	r4
	cjne	r4,#0x00,00208$
	inc	r5
	cjne	r5,#0x00,00208$
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r7
00208$:
;	./src/main.c:42: case 0xB7:  num++;	// 3
00107$:
	inc	r4
	cjne	r4,#0x00,00209$
	inc	r5
	cjne	r5,#0x00,00209$
	inc	r6
	cjne	r6,#0x00,00209$
	inc	r7
00209$:
;	./src/main.c:43: case 0xBB:  num++;	// 2
00108$:
	inc	r4
	cjne	r4,#0x00,00210$
	inc	r5
	cjne	r5,#0x00,00210$
	inc	r6
	cjne	r6,#0x00,00210$
	inc	r7
00210$:
;	./src/main.c:44: case 0xBD:  num++;	// 1
00109$:
	inc	r4
	cjne	r4,#0x00,00211$
	inc	r5
	cjne	r5,#0x00,00211$
	inc	r6
	cjne	r6,#0x00,00211$
	inc	r7
00211$:
;	./src/main.c:46: }
00113$:
;	./src/main.c:48: prebut = but;
	mov	ar3,r2
;	./src/main.c:49: Display(num);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Display
;	./src/main.c:50: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:52: }
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;num                       Allocated with name '_Display_num_65536_12'
;seg                       Allocated with name '_Display_seg_65536_13'
;i                         Allocated with name '_Display_i_65536_13'
;print                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	./src/main.c:54: void Display(long int num) {
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
	mov	_Display_num_65536_12,dpl
	mov	(_Display_num_65536_12 + 1),dph
	mov	(_Display_num_65536_12 + 2),b
	mov	(_Display_num_65536_12 + 3),a
;	./src/main.c:55: unsigned char seg[] = {
	mov	_Display_seg_65536_13,#0x7e
	mov	(_Display_seg_65536_13 + 0x0001),#0x30
	mov	(_Display_seg_65536_13 + 0x0002),#0x6d
	mov	(_Display_seg_65536_13 + 0x0003),#0x79
	mov	(_Display_seg_65536_13 + 0x0004),#0x33
	mov	(_Display_seg_65536_13 + 0x0005),#0x5b
	mov	(_Display_seg_65536_13 + 0x0006),#0x5f
	mov	(_Display_seg_65536_13 + 0x0007),#0x70
	mov	(_Display_seg_65536_13 + 0x0008),#0x7f
	mov	(_Display_seg_65536_13 + 0x0009),#0x7b
;	./src/main.c:70: while(num>0){
	clr	a
	mov	_Display_i_65536_13,a
	mov	(_Display_i_65536_13 + 1),a
00101$:
	clr	c
	clr	a
	subb	a,_Display_num_65536_12
	clr	a
	subb	a,(_Display_num_65536_12 + 1)
	clr	a
	subb	a,(_Display_num_65536_12 + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Display_num_65536_12 + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	./src/main.c:71: int print = num%10;
	mov	__modslong_PARM_2,#0x0a
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_12
	mov	dph,(_Display_num_65536_12 + 1)
	mov	b,(_Display_num_65536_12 + 2)
	mov	a,(_Display_num_65536_12 + 3)
	lcall	__modslong
	mov	r2,dpl
;	./src/main.c:72: i++;
	inc	_Display_i_65536_13
	clr	a
	cjne	a,_Display_i_65536_13,00120$
	inc	(_Display_i_65536_13 + 1)
00120$:
;	./src/main.c:73: Write7219( i , seg[print]);
	mov	dpl,_Display_i_65536_13
	mov	a,r2
	add	a,#_Display_seg_65536_13
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	lcall	_Write7219
;	./src/main.c:74: num /= 10 ;
	mov	__divslong_PARM_2,#0x0a
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_Display_num_65536_12
	mov	dph,(_Display_num_65536_12 + 1)
	mov	b,(_Display_num_65536_12 + 2)
	mov	a,(_Display_num_65536_12 + 3)
	lcall	__divslong
	mov	_Display_num_65536_12,dpl
	mov	(_Display_num_65536_12 + 1),dph
	mov	(_Display_num_65536_12 + 2),b
	mov	(_Display_num_65536_12 + 3),a
	sjmp	00101$
00104$:
;	./src/main.c:76: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
