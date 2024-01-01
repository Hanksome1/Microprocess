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
	.globl _T0_isr
	.globl _delay_ms
	.globl _Delay_Si
	.globl _Delay_La
	.globl _Delay_So
	.globl _Delay_Fa
	.globl _Delay_Mi
	.globl _Delay_Re
	.globl _Delay_Do
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
	.globl _ms
	.globl _current
	.globl _song
	.globl _state
	.globl _prebut
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
_prebut::
	.ds 2
_state::
	.ds 2
_song::
	.ds 32
_current::
	.ds 2
_ms::
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
	reti
	.ds	7
	ljmp	_T0_isr
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
;	./src/main.c:14: int prebut=1;
	mov	_prebut,#0x01
	mov	(_prebut + 1),#0x00
;	./src/main.c:15: int state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	./src/main.c:16: int song[16]={1,1,5,5,6,6,5,5,4,4,3,3,2,2,1,1};
	mov	(_song + 0),#0x01
	mov	(_song + 1),a
	mov	((_song + 0x0002) + 0),#0x01
	mov	((_song + 0x0002) + 1),a
	mov	((_song + 0x0004) + 0),#0x05
	mov	((_song + 0x0004) + 1),a
	mov	((_song + 0x0006) + 0),#0x05
	mov	((_song + 0x0006) + 1),a
	mov	((_song + 0x0008) + 0),#0x06
	mov	((_song + 0x0008) + 1),a
	mov	((_song + 0x000a) + 0),#0x06
	mov	((_song + 0x000a) + 1),a
	mov	((_song + 0x000c) + 0),#0x05
	mov	((_song + 0x000c) + 1),a
	mov	((_song + 0x000e) + 0),#0x05
	mov	((_song + 0x000e) + 1),a
	mov	((_song + 0x0010) + 0),#0x04
	mov	((_song + 0x0010) + 1),a
	mov	((_song + 0x0012) + 0),#0x04
	mov	((_song + 0x0012) + 1),a
	mov	((_song + 0x0014) + 0),#0x03
	mov	((_song + 0x0014) + 1),a
	mov	((_song + 0x0016) + 0),#0x03
	mov	((_song + 0x0016) + 1),a
	mov	((_song + 0x0018) + 0),#0x02
	mov	((_song + 0x0018) + 1),a
	mov	((_song + 0x001a) + 0),#0x02
	mov	((_song + 0x001a) + 1),a
	mov	((_song + 0x001c) + 0),#0x01
	mov	((_song + 0x001c) + 1),a
	mov	((_song + 0x001e) + 0),#0x01
	mov	((_song + 0x001e) + 1),a
;	./src/main.c:17: int current = 0;
	mov	_current,a
	mov	(_current + 1),a
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
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:19: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	b
	push	psw
;	./src/main.c:21: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:22: TL0 = (65536-1000) % 256;
	mov	_TL0,#0x18
;	./src/main.c:23: if(state==1)					// Load initial lower 8 bits into Timer 0
	mov	a,#0x01
	cjne	a,_state,00128$
	dec	a
	cjne	a,(_state + 1),00128$
	sjmp	00129$
00128$:
	sjmp	00102$
00129$:
;	./src/main.c:24: ms++; // counting how many time
	inc	_ms
	clr	a
	cjne	a,_ms,00130$
	inc	(_ms + 1)
00130$:
00102$:
;	./src/main.c:25: if(ms==500){
	mov	a,#0xf4
	cjne	a,_ms,00108$
	mov	a,#0x01
	cjne	a,(_ms + 1),00108$
;	./src/main.c:26: if(current<=15){
	clr	c
	mov	a,#0x0f
	subb	a,_current
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_current + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00104$
;	./src/main.c:27: current++;
	inc	_current
	clr	a
	cjne	a,_current,00105$
	inc	(_current + 1)
	sjmp	00105$
00104$:
;	./src/main.c:30: current =0;
	clr	a
	mov	_current,a
	mov	(_current + 1),a
00105$:
;	./src/main.c:32: ms=0;
	clr	a
	mov	_ms,a
	mov	(_ms + 1),a
00108$:
;	./src/main.c:35: }
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;s                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:37: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:38: TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:39: TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:40: TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:41: ET0 = 1;													// Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:42: EA = 1;														// Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:43: TR0 = 1;													// Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:45: while(1) {
00126$:
;	./src/main.c:46: but =1;
;	assignBit
	setb	_P2_1
;	./src/main.c:47: if((but == 0) && (prebut==1)) {
	jb	_P2_1,00107$
	mov	a,#0x01
	cjne	a,_prebut,00209$
	dec	a
	cjne	a,(_prebut + 1),00209$
	sjmp	00210$
00209$:
	sjmp	00107$
00210$:
;	./src/main.c:48: delay_ms(40);
	mov	dpl,#0x28
	lcall	_delay_ms
;	./src/main.c:49: if(but == 0){
	jb	_P2_1,00107$
;	./src/main.c:50: if(state==0) state=1;
	mov	a,_state
	orl	a,(_state + 1)
	jnz	00102$
	mov	_state,#0x01
	mov	(_state + 1),a
	sjmp	00107$
00102$:
;	./src/main.c:51: else state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
00107$:
;	./src/main.c:54: prebut = but;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut,a
	mov	(_prebut + 1),#0x00
;	./src/main.c:55: if(state == 1){
	mov	a,#0x01
	cjne	a,_state,00213$
	dec	a
	cjne	a,(_state + 1),00213$
	sjmp	00214$
00213$:
	sjmp	00126$
00214$:
;	./src/main.c:56: int s = song[current]; // s is the current song
	mov	a,_current
	add	a,_current
	mov	r6,a
	mov	a,(_current + 1)
	rlc	a
	mov	a,r6
	add	a,#_song
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
;	./src/main.c:57: if(s==do){
	cjne	r6,#0x01,00110$
	cjne	r7,#0x00,00110$
;	./src/main.c:58: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:59: Delay_Do();
	push	ar7
	push	ar6
	lcall	_Delay_Do
;	./src/main.c:60: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:61: Delay_Do();
	lcall	_Delay_Do
	pop	ar6
	pop	ar7
00110$:
;	./src/main.c:63: if(s==re){
	cjne	r6,#0x02,00112$
	cjne	r7,#0x00,00112$
;	./src/main.c:64: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:65: Delay_Re();
	push	ar7
	push	ar6
	lcall	_Delay_Re
;	./src/main.c:66: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:67: Delay_Re();
	lcall	_Delay_Re
	pop	ar6
	pop	ar7
00112$:
;	./src/main.c:69: if(s==mi){
	cjne	r6,#0x03,00114$
	cjne	r7,#0x00,00114$
;	./src/main.c:70: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:71: Delay_Mi();
	push	ar7
	push	ar6
	lcall	_Delay_Mi
;	./src/main.c:72: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:73: Delay_Mi();
	lcall	_Delay_Mi
	pop	ar6
	pop	ar7
00114$:
;	./src/main.c:75: if(s==fa){
	cjne	r6,#0x04,00116$
	cjne	r7,#0x00,00116$
;	./src/main.c:76: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:77: Delay_Fa();
	push	ar7
	push	ar6
	lcall	_Delay_Fa
;	./src/main.c:78: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:79: Delay_Fa();
	lcall	_Delay_Fa
	pop	ar6
	pop	ar7
00116$:
;	./src/main.c:81: if(s==so){
	cjne	r6,#0x05,00118$
	cjne	r7,#0x00,00118$
;	./src/main.c:82: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:83: Delay_So();
	push	ar7
	push	ar6
	lcall	_Delay_So
;	./src/main.c:84: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:85: Delay_So();
	lcall	_Delay_So
	pop	ar6
	pop	ar7
00118$:
;	./src/main.c:87: if(s==la){
	cjne	r6,#0x06,00120$
	cjne	r7,#0x00,00120$
;	./src/main.c:88: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:89: Delay_La();
	push	ar7
	push	ar6
	lcall	_Delay_La
;	./src/main.c:90: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:91: Delay_La();
	lcall	_Delay_La
	pop	ar6
	pop	ar7
00120$:
;	./src/main.c:93: if(s==si){
	cjne	r6,#0x07,00227$
	cjne	r7,#0x00,00227$
	sjmp	00228$
00227$:
	ljmp	00126$
00228$:
;	./src/main.c:94: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:95: Delay_Si();
	lcall	_Delay_Si
;	./src/main.c:96: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:97: Delay_Si();
	lcall	_Delay_Si
;	./src/main.c:103: }
	ljmp	00126$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
