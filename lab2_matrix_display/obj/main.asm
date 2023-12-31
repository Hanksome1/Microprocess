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
	.globl _Writesingle7219
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
	.globl _Move_PARM_2
	.globl _Move
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
_main_m_65536_8:
	.ds 8
_Move_PARM_2:
	.ds 1
_Move_m_65536_12:
	.ds 3
_Move_sloc0_1_0:
	.ds 3
_Move_sloc1_1_0:
	.ds 1
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
;m                         Allocated with name '_main_m_65536_8'
;i                         Allocated to registers r6 
;cnt                       Allocated to registers 
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
;	./src/main.c:22: unsigned char m[8] = {0x80, 0, 0, 0, 0, 0, 0, 0};
	mov	_main_m_65536_8,#0x80
	mov	(_main_m_65536_8 + 0x0001),#0x00
	mov	(_main_m_65536_8 + 0x0002),#0x00
	mov	(_main_m_65536_8 + 0x0003),#0x00
	mov	(_main_m_65536_8 + 0x0004),#0x00
	mov	(_main_m_65536_8 + 0x0005),#0x00
	mov	(_main_m_65536_8 + 0x0006),#0x00
	mov	(_main_m_65536_8 + 0x0007),#0x00
;	./src/main.c:25: Initial7219();				 	// MAX7219 initialize
	lcall	_Initial7219
;	./src/main.c:26: while (1) {
	mov	r7,#0x00
00103$:
;	./src/main.c:27: Move(m,(cnt++/7)%4);
	mov	ar5,r7
	mov	r6,#0x00
	inc	r7
	mov	__divsint_PARM_2,#0x07
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	_Move_PARM_2,r5
	mov	dptr,#_main_m_65536_8
	mov	b,#0x40
	lcall	_Move
	pop	ar7
;	./src/main.c:28: for (i = 8; i >= 1; i--) {
	mov	r6,#0x08
00105$:
;	./src/main.c:29: Writesingle7219(1, i, m[i - 1]);
	mov	ar5,r6
	mov	a,r5
	dec	a
	add	a,#_main_m_65536_8
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,r6
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_Writesingle7219
	pop	ar6
	pop	ar7
;	./src/main.c:28: for (i = 8; i >= 1; i--) {
	dec	r6
	cjne	r6,#0x01,00128$
00128$:
	jnc	00105$
;	./src/main.c:31: delay_ms(200);
	mov	dptr,#0x00c8
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	./src/main.c:33: }
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'Move'
;------------------------------------------------------------
;dir                       Allocated with name '_Move_PARM_2'
;m                         Allocated with name '_Move_m_65536_12'
;i                         Allocated to registers r3 r4 
;i                         Allocated with name '_Move_sloc0_1_0'
;sloc0                     Allocated with name '_Move_sloc0_1_0'
;sloc1                     Allocated with name '_Move_sloc1_1_0'
;------------------------------------------------------------
;	./src/main.c:35: void Move(unsigned char* m, char dir) {
;	-----------------------------------------
;	 function Move
;	-----------------------------------------
_Move:
	mov	_Move_m_65536_12,dpl
	mov	(_Move_m_65536_12 + 1),dph
	mov	(_Move_m_65536_12 + 2),b
;	./src/main.c:37: if (dir == LOWER_RIGHT){
	mov	a,_Move_PARM_2
	jnz	00102$
;	./src/main.c:38: m[0] /=2 ;
	mov	dpl,_Move_m_65536_12
	mov	dph,(_Move_m_65536_12 + 1)
	mov	b,(_Move_m_65536_12 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	mov	dpl,_Move_m_65536_12
	mov	dph,(_Move_m_65536_12 + 1)
	mov	b,(_Move_m_65536_12 + 2)
	mov	a,r3
	lcall	__gptrput
00102$:
;	./src/main.c:40: if (dir == LOWER_LEFT){
	mov	a,#0x01
	cjne	a,_Move_PARM_2,00107$
;	./src/main.c:41: for(int i=0; i<=6; i++){
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
00116$:
	clr	c
	mov	a,#0x06
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00107$
;	./src/main.c:42: if(m[i]!=0){
	mov	a,r1
	add	a,_Move_m_65536_12
	mov	_Move_sloc0_1_0,a
	mov	a,r2
	addc	a,(_Move_m_65536_12 + 1)
	mov	(_Move_sloc0_1_0 + 1),a
	mov	(_Move_sloc0_1_0 + 2),(_Move_m_65536_12 + 2)
	mov	dpl,_Move_sloc0_1_0
	mov	dph,(_Move_sloc0_1_0 + 1)
	mov	b,(_Move_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	jz	00117$
;	./src/main.c:43: m[i+1]=m[i];
	mov	a,#0x01
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r6
	add	a,_Move_m_65536_12
	mov	r6,a
	mov	a,r7
	addc	a,(_Move_m_65536_12 + 1)
	mov	r7,a
	mov	r5,(_Move_m_65536_12 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
;	./src/main.c:44: m[i]=0;
	mov	dpl,_Move_sloc0_1_0
	mov	dph,(_Move_sloc0_1_0 + 1)
	mov	b,(_Move_sloc0_1_0 + 2)
	clr	a
;	./src/main.c:45: return;
	ljmp	__gptrput
00117$:
;	./src/main.c:41: for(int i=0; i<=6; i++){
	inc	r1
	cjne	r1,#0x00,00188$
	inc	r2
00188$:
	mov	ar3,r1
	mov	ar4,r2
	sjmp	00116$
00107$:
;	./src/main.c:49: if(dir == UPPER_LEFT){
	mov	a,#0x02
	cjne	a,_Move_PARM_2,00109$
;	./src/main.c:50: m[7]*=2;
	mov	a,#0x07
	add	a,_Move_m_65536_12
	mov	r5,a
	clr	a
	addc	a,(_Move_m_65536_12 + 1)
	mov	r6,a
	mov	r7,(_Move_m_65536_12 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,acc
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00109$:
;	./src/main.c:52: if(dir == UPPER_RIGHT){
	mov	a,#0x03
	cjne	a,_Move_PARM_2,00121$
;	./src/main.c:53: for(int i=7; i>=1; i--){
	mov	_Move_sloc0_1_0,#0x07
	mov	(_Move_sloc0_1_0 + 1),#0x00
	mov	r4,#0x07
	mov	r5,#0x00
00119$:
	clr	c
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00121$
;	./src/main.c:54: if(m[i]!=0){
	mov	a,r4
	add	a,_Move_m_65536_12
	mov	r1,a
	mov	a,r5
	addc	a,(_Move_m_65536_12 + 1)
	mov	r2,a
	mov	r3,(_Move_m_65536_12 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_Move_sloc1_1_0,a
	jz	00120$
;	./src/main.c:55: m[i-1]=m[i];
	mov	a,_Move_sloc0_1_0
	add	a,#0xff
	mov	r6,a
	mov	a,(_Move_sloc0_1_0 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	a,r6
	add	a,_Move_m_65536_12
	mov	r6,a
	mov	a,r7
	addc	a,(_Move_m_65536_12 + 1)
	mov	r0,a
	mov	r7,(_Move_m_65536_12 + 2)
	mov	dpl,r6
	mov	dph,r0
	mov	b,r7
	mov	a,_Move_sloc1_1_0
	lcall	__gptrput
;	./src/main.c:56: m[i]=0;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
;	./src/main.c:57: return;
	ljmp	__gptrput
00120$:
;	./src/main.c:53: for(int i=7; i>=1; i--){
	dec	r4
	cjne	r4,#0xff,00195$
	dec	r5
00195$:
	mov	_Move_sloc0_1_0,r4
	mov	(_Move_sloc0_1_0 + 1),r5
	sjmp	00119$
00121$:
;	./src/main.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
