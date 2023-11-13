;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14356 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_isr
	.globl _main
	.globl _display
	.globl _Initial
	.globl _Write7219
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
	.globl _display_PARM_2
	.globl _key
	.globl _received_flag
	.globl _send_flag
	.globl _received_data
	.globl _send_data
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
_send_data::
	.ds 1
_received_data::
	.ds 1
_send_flag::
	.ds 1
_received_flag::
	.ds 1
_key::
	.ds 7
_display_PARM_2:
	.ds 2
_main_cnt4_65537_18:
	.ds 1
_main_test_65537_18:
	.ds 2
_main_flag_65537_18:
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_isr
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
;	./src/main.c:13: unsigned char send_flag=0;
	mov	_send_flag,#0x00
;	./src/main.c:14: unsigned char received_flag=0;
	mov	_received_flag,#0x00
;	./src/main.c:15: unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };
	mov	_key,#0x01
	mov	(_key + 0x0001),#0x03
	mov	(_key + 0x0002),#0x01
	mov	(_key + 0x0003),#0x02
	mov	(_key + 0x0004),#0x02
	mov	(_key + 0x0005),#0x03
	mov	(_key + 0x0006),#0x04
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
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;flag                      Allocated with name '_display_PARM_2'
;turn                      Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:17: void display(int turn, int flag){	
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:18: if(flag==1){
	mov	a,#0x01
	cjne	a,_display_PARM_2,00129$
	dec	a
	cjne	a,(_display_PARM_2 + 1),00129$
	sjmp	00130$
00129$:
	sjmp	00102$
00130$:
;	./src/main.c:19: Write7219(8,1);
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x08
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
	sjmp	00112$
00102$:
;	./src/main.c:23: Write7219(8,0); // vice versa
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x08
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:25: for(int i=0; i<turn; i++){
00112$:
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	./src/main.c:26: Write7219(7-i,key[i]); // print out the known key, use turn to control how long to print
	mov	ar3,r4
	mov	a,#0x07
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r4
	add	a,#_key
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Write7219
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:25: for(int i=0; i<turn; i++){
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00108$:
;	./src/main.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;turn                      Allocated to registers 
;cnt1                      Allocated to registers r7 
;cnt2                      Allocated to registers r6 
;cnt3                      Allocated to registers r5 
;cnt4                      Allocated with name '_main_cnt4_65537_18'
;test                      Allocated with name '_main_test_65537_18'
;flag                      Allocated with name '_main_flag_65537_18'
;------------------------------------------------------------
;	./src/main.c:30: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:33: TMOD = 0x20;			// set timer1 to mode2 
	mov	_TMOD,#0x20
;	./src/main.c:34: SCON = 0x50;       		// set serial mode1
	mov	_SCON,#0x50
;	./src/main.c:35: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	mov	_TH1,#0xfa
;	./src/main.c:36: TR1 = 1;				// enable timer = 1
;	assignBit
	setb	_TR1
;	./src/main.c:37: IE = 0x90;				// enable serial port interrupt
	mov	_IE,#0x90
;	./src/main.c:39: Initial();
	lcall	_Initial
;	./src/main.c:40: for (int i = 1; i < 9; i++)
	mov	r6,#0x01
	mov	r7,#0x00
00143$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	./src/main.c:41: Write7219(i, 0x0F);     	// Reset all digits as blank
	mov	dpl,r6
	mov	_Write7219_PARM_2,#0x0f
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main.c:40: for (int i = 1; i < 9; i++)
	inc	r6
	cjne	r6,#0x00,00143$
	inc	r7
	sjmp	00143$
00101$:
;	./src/main.c:45: unsigned char cnt1 = 0;
	mov	r7,#0x00
;	./src/main.c:46: unsigned char cnt2 = 0;
	mov	r6,#0x00
;	./src/main.c:47: unsigned char cnt3 = 0;
	mov	r5,#0x00
;	./src/main.c:48: unsigned char cnt4 = 0;
	mov	_main_cnt4_65537_18,r7
;	./src/main.c:49: int test =0;
	mov	_main_test_65537_18,r7
;	./src/main.c:50: int flag =0;
	clr	a
	mov	_main_flag_65537_18,a
	mov	(_main_flag_65537_18 + 1),a
;	./src/main.c:51: while(1){	
	mov	r2,a
	mov	r3,a
00140$:
;	./src/main.c:52: if (but1 == 0) {
	jb	_P3_2,00107$
;	./src/main.c:53: if (cnt1 < 3) {
	cjne	r7,#0x03,00265$
00265$:
	jnc	00108$
;	./src/main.c:54: cnt1++;
	inc	r7
;	./src/main.c:55: if (cnt1 == 3) {
	cjne	r7,#0x03,00108$
;	./src/main.c:56: send_data = 1;
	mov	_send_data,#0x01
;	./src/main.c:57: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00108$
00107$:
;	./src/main.c:61: else { cnt1 = 0; }
	mov	r7,#0x00
00108$:
;	./src/main.c:63: if (but2 == 0) {
	jb	_P3_3,00114$
;	./src/main.c:64: if (cnt2 < 3) {
	cjne	r6,#0x03,00270$
00270$:
	jnc	00115$
;	./src/main.c:65: cnt2++;
	inc	r6
;	./src/main.c:66: if (cnt2 == 3) {
	cjne	r6,#0x03,00115$
;	./src/main.c:67: send_data = 2;
	mov	_send_data,#0x02
;	./src/main.c:68: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00115$
00114$:
;	./src/main.c:72: else { cnt2 = 0; }
	mov	r6,#0x00
00115$:
;	./src/main.c:74: if (but3 == 0) {
	jb	_P2_0,00121$
;	./src/main.c:75: if (cnt3 < 3) {
	cjne	r5,#0x03,00275$
00275$:
	jnc	00122$
;	./src/main.c:76: cnt3++;
	inc	r5
;	./src/main.c:77: if (cnt3 == 3) {
	cjne	r5,#0x03,00122$
;	./src/main.c:78: send_data = 3;
	mov	_send_data,#0x03
;	./src/main.c:79: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00122$
00121$:
;	./src/main.c:83: else { cnt3 = 0; }
	mov	r5,#0x00
00122$:
;	./src/main.c:85: if (but4 == 0) {
	jb	_P2_1,00128$
;	./src/main.c:86: if (cnt4 < 3) {
	mov	a,#0x100 - 0x03
	add	a,_main_cnt4_65537_18
	jc	00129$
;	./src/main.c:87: cnt4++;
	inc	_main_cnt4_65537_18
;	./src/main.c:88: if (cnt4 == 3) {
	mov	a,#0x03
	cjne	a,_main_cnt4_65537_18,00129$
;	./src/main.c:89: send_data = 4;
	mov	_send_data,#0x04
;	./src/main.c:90: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00129$
00128$:
;	./src/main.c:94: else { cnt4 = 0; }
	mov	_main_cnt4_65537_18,#0x00
00129$:
;	./src/main.c:97: if (send_flag==1)
	mov	a,#0x01
	cjne	a,_send_flag,00131$
;	./src/main.c:99: SBUF = send_data;	// send data to SBUF
	mov	_SBUF,_send_data
;	./src/main.c:100: send_flag = 0;
	mov	_send_flag,#0x00
00131$:
;	./src/main.c:104: if (received_flag == 1) {      
	mov	a,#0x01
	cjne	a,_received_flag,00136$
;	./src/main.c:105: test = received_data; //receiving data
	mov	r4,_received_data
	mov	_main_test_65537_18,r4
;	./src/main.c:106: received_flag = 0;
	mov	_received_flag,#0x00
;	./src/main.c:107: if(test==key[turn]) flag = 1;
	mov	a,r2
	add	a,#_key
	mov	r1,a
	mov	a,@r1
	mov	r4,a
	cjne	a,_main_test_65537_18,00133$
	mov	_main_flag_65537_18,#0x01
	mov	(_main_flag_65537_18 + 1),#0x00
	sjmp	00136$
00133$:
;	./src/main.c:108: else flag=0;
	clr	a
	mov	_main_flag_65537_18,a
	mov	(_main_flag_65537_18 + 1),a
00136$:
;	./src/main.c:110: if(test==key[turn]){ // if the received data is the same as the current key-> print
	mov	a,r2
	add	a,#_key
	mov	r1,a
	mov	a,@r1
	cjne	a,_main_test_65537_18,00138$
;	./src/main.c:111: turn++;
	inc	r2
	cjne	r2,#0x00,00291$
	inc	r3
00291$:
;	./src/main.c:112: test=0;
	mov	_main_test_65537_18,#0x00
00138$:
;	./src/main.c:114: display(turn,flag);
	mov	_display_PARM_2,_main_flag_65537_18
	mov	(_display_PARM_2 + 1),(_main_flag_65537_18 + 1)
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_display
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/main.c:116: }
	ljmp	00140$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;	./src/main.c:119: void uart_isr(void) __interrupt (4)
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
;	./src/main.c:121: if(RI==1){
;	./src/main.c:122: RI=0;
;	assignBit
	jbc	_RI,00119$
	sjmp	00102$
00119$:
;	./src/main.c:123: received_data = SBUF;
	mov	_received_data,_SBUF
;	./src/main.c:124: received_flag = 1;
	mov	_received_flag,#0x01
00102$:
;	./src/main.c:126: if(TI==1){
;	./src/main.c:127: TI=0;
;	assignBit
	jbc	_TI,00120$
	sjmp	00105$
00120$:
00105$:
;	./src/main.c:129: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
