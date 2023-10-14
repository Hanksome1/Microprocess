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
;patt                      Allocated to registers r7 
;prebut1                   Allocated to registers r6 
;prebut2                   Allocated to registers r5 
;prebut3                   Allocated to registers r4 
;time                      Allocated to registers r1 r2 
;shift_two                 Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:12: void main(void)
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
;	./src/main.c:14: unsigned char patt = 0x80;
	mov	r7,#0x80
;	./src/main.c:15: unsigned int prebut1 = 1;
	mov	r6,#0x01
;	./src/main.c:16: unsigned int prebut2 = 1;
	mov	r5,#0x01
;	./src/main.c:17: unsigned int prebut3 = 1;
	mov	r4,#0x01
;	./src/main.c:18: but1 = 1;
;	assignBit
	setb	_P2_2
;	./src/main.c:19: but2 = 1;
;	assignBit
	setb	_P2_3
;	./src/main.c:20: but3 = 1;
;	assignBit
	setb	_P2_4
;	./src/main.c:23: while(1){
00173$:
;	./src/main.c:25: o1 = 0; o2 = 1; o3 = 1; // selecting the output line
;	assignBit
	clr	_P2_5
;	assignBit
	setb	_P2_6
;	assignBit
	setb	_P2_7
;	./src/main.c:26: if(( but1==0 )&&( prebut1==1 )){
	jb	_P2_2,00111$
	cjne	r6,#0x01,00111$
;	./src/main.c:28: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar7
;	./src/main.c:29: if(but1==0){
	jb	_P2_2,00111$
;	./src/main.c:30: patt = patt >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	./src/main.c:31: if(patt == 0x00)	// reset
	mov	r7,a
	jnz	00102$
;	./src/main.c:32: patt = 0x80;
	mov	r7,#0x80
00102$:
;	./src/main.c:33: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:34: delay_ms(800);
	mov	dptr,#0x0320
	push	ar7
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar7
;	./src/main.c:35: while(but1==0){
00105$:
	jb	_P2_2,00111$
;	./src/main.c:36: patt = patt >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	./src/main.c:37: if(patt == 0x00)	// reset
	mov	r7,a
	jnz	00104$
;	./src/main.c:38: patt = 0x80;
	mov	r7,#0x80
00104$:
;	./src/main.c:39: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:40: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar7
	sjmp	00105$
00111$:
;	./src/main.c:44: prebut1=but1; // debounce
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	r6,a
;	./src/main.c:45: if(but2==0){
	jb	_P2_3,00114$
;	./src/main.c:46: patt = 0x01 ;
	mov	r7,#0x01
;	./src/main.c:47: led = ~patt ;
	mov	_P1,#0xfe
00114$:
;	./src/main.c:49: if(but3==0){
	jb	_P2_4,00116$
;	./src/main.c:50: patt = 0x02 ;
	mov	r7,#0x02
;	./src/main.c:51: led = ~patt ;
	mov	_P1,#0xfd
00116$:
;	./src/main.c:53: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:55: o1 = 1; o2 = 0; o3 = 1; // selecting the output line;
;	assignBit
	setb	_P2_5
;	assignBit
	clr	_P2_6
;	assignBit
	setb	_P2_7
;	./src/main.c:56: if(but1==0){
	jb	_P2_2,00118$
;	./src/main.c:57: patt = 0x04 ;
	mov	r7,#0x04
;	./src/main.c:58: led = ~patt ;
	mov	_P1,#0xfb
00118$:
;	./src/main.c:61: if(( but2==0 )&&( prebut2==1 )){
	jb	_P2_3,00129$
	cjne	r5,#0x01,00129$
;	./src/main.c:63: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:64: if(but2==0){
	jb	_P2_3,00129$
;	./src/main.c:65: patt = patt << 1;
	mov	ar3,r7
	mov	a,r3
	add	a,r3
;	./src/main.c:66: if(patt == 0x00)
	mov	r7,a
	jnz	00120$
;	./src/main.c:67: patt = 0x01;
	mov	r7,#0x01
00120$:
;	./src/main.c:68: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:69: delay_ms(800);
	mov	dptr,#0x0320
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar6
	pop	ar7
;	./src/main.c:70: while(but2==0){
00123$:
	jb	_P2_3,00129$
;	./src/main.c:71: patt = patt << 1;
	mov	ar3,r7
	mov	a,r3
	add	a,r3
;	./src/main.c:72: if(patt == 0x00)
	mov	r7,a
	jnz	00122$
;	./src/main.c:73: patt = 0x01;
	mov	r7,#0x01
00122$:
;	./src/main.c:74: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	./src/main.c:75: delay_ms(50);
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar6
	pop	ar7
	sjmp	00123$
00129$:
;	./src/main.c:79: prebut2=but2; // debounce
	mov	c,_P2_3
	clr	a
	rlc	a
	mov	r5,a
;	./src/main.c:80: if(but3==0){
	jb	_P2_4,00132$
;	./src/main.c:81: patt = 0x010;
	mov	r7,#0x10
;	./src/main.c:82: led = ~patt ;
	mov	_P1,#0xef
00132$:
;	./src/main.c:84: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:86: o1 = 1; o2 = 1; o3 = 0; // selecting the output line;
;	assignBit
	setb	_P2_5
;	assignBit
	setb	_P2_6
;	assignBit
	clr	_P2_7
;	./src/main.c:87: if(but1==0){
	jb	_P2_2,00134$
;	./src/main.c:88: patt = 0x20;
	mov	r7,#0x20
;	./src/main.c:89: led = ~patt ;
	mov	_P1,#0xdf
00134$:
;	./src/main.c:91: if(but2==0){
	jb	_P2_3,00136$
;	./src/main.c:92: patt = 0x40;
	mov	r7,#0x40
;	./src/main.c:93: led = ~patt ;
	mov	_P1,#0xbf
00136$:
;	./src/main.c:95: if( (but3==0) && (prebut3==1)){
	jnb	_P2_4,00413$
	ljmp	00170$
00413$:
	cjne	r4,#0x01,00414$
	sjmp	00415$
00414$:
	ljmp	00170$
00415$:
;	./src/main.c:96: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:97: if(but3==0){ //check for fast double press
	jnb	_P2_4,00416$
	ljmp	00170$
00416$:
;	./src/main.c:98: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:99: int time=0, shift_two=0; // time is being used to count the ms we went through, shift_two is used to record whether the user click twice
	mov	r3,#0x00
;	./src/main.c:100: if(but3==1){
	jb	_P2_4,00417$
	ljmp	00165$
00417$:
;	./src/main.c:101: while(time<200){ //check if there is a click within 50ms
	mov	r1,#0x00
	mov	r2,#0x00
00139$:
	clr	c
	mov	a,r1
	subb	a,#0xc8
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00141$
;	./src/main.c:102: delay_ms(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:103: time++;
	inc	r1
	cjne	r1,#0x00,00419$
	inc	r2
00419$:
;	./src/main.c:104: if(but3==0){
	jb	_P2_4,00139$
;	./src/main.c:105: shift_two = 1;
	mov	r3,#0x01
	sjmp	00139$
00141$:
;	./src/main.c:108: if(shift_two==0){ // if there is only one click , left shift once
	mov	a,r3
	jnz	00154$
;	./src/main.c:109: patt = patt >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	./src/main.c:110: if(patt == 0x00)	// reset
	mov	r7,a
	jnz	00143$
;	./src/main.c:111: patt = 0x80;
	mov	r7,#0x80
00143$:
;	./src/main.c:112: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
	sjmp	00170$
00154$:
;	./src/main.c:115: if (patt == 0x01)
	cjne	r7,#0x01,00151$
;	./src/main.c:116: patt = 0x20;
	mov	r7,#0x20
	sjmp	00152$
00151$:
;	./src/main.c:117: else if (patt == 0x02)
	cjne	r7,#0x02,00148$
;	./src/main.c:118: patt = 0x40;
	mov	r7,#0x40
	sjmp	00152$
00148$:
;	./src/main.c:119: else if (patt == 0x04)
	cjne	r7,#0x04,00145$
;	./src/main.c:120: patt = 0x80;
	mov	r7,#0x80
	sjmp	00152$
00145$:
;	./src/main.c:122: patt = patt >> 3;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
00152$:
;	./src/main.c:123: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
	sjmp	00170$
00165$:
;	./src/main.c:127: delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:128: if(but3==0){
	jb	_P2_4,00170$
;	./src/main.c:129: if (patt == 0x01)
	cjne	r7,#0x01,00160$
;	./src/main.c:130: patt = 0x40;
	mov	r7,#0x40
	sjmp	00161$
00160$:
;	./src/main.c:131: else if (patt == 0x02)
	cjne	r7,#0x02,00157$
;	./src/main.c:132: patt = 0x80;
	mov	r7,#0x80
	sjmp	00161$
00157$:
;	./src/main.c:134: patt = patt >> 2;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r7,a
00161$:
;	./src/main.c:135: led = ~patt;
	mov	a,r7
	cpl	a
	mov	_P1,a
00170$:
;	./src/main.c:141: prebut3 = but3;
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	r4,a
;	./src/main.c:142: delay_ms(10);
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:144: }
	ljmp	00173$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
