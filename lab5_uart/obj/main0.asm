;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14356 (MINGW64)
;--------------------------------------------------------
	.module main0
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
_main_cnt3_65537_16:
	.ds 2
_main_cnt4_65537_16:
	.ds 2
_main_test_131074_35:
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
;	./src/main0.c:13: unsigned char send_flag=0;
	mov	_send_flag,#0x00
;	./src/main0.c:14: unsigned char received_flag=0;
	mov	_received_flag,#0x00
;	./src/main0.c:15: unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };
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
;	./src/main0.c:17: void display(int turn, int flag){	
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
;	./src/main0.c:18: if(flag==1) Write7219(8,1); // if the flag is 1, which means the input is correct, then write 1 in the first number
	mov	a,#0x01
	cjne	a,_display_PARM_2,00129$
	dec	a
	cjne	a,(_display_PARM_2 + 1),00129$
	sjmp	00130$
00129$:
	sjmp	00102$
00130$:
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x08
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
	sjmp	00112$
00102$:
;	./src/main0.c:19: else Write7219(8,0); // vice versa
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x08
	push	ar7
	push	ar6
	lcall	_Write7219
	pop	ar6
	pop	ar7
;	./src/main0.c:20: for(int i=0; i<turn; i++){
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
;	./src/main0.c:21: Write7219(7-i,key[i]); // print out the known key, use turn to control how long to print
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
;	./src/main0.c:20: for(int i=0; i<turn; i++){
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00108$:
;	./src/main0.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;turn                      Allocated to registers 
;cnt1                      Allocated to registers r7 
;cnt2                      Allocated to registers r6 
;cnt3                      Allocated with name '_main_cnt3_65537_16'
;cnt4                      Allocated with name '_main_cnt4_65537_16'
;flag                      Allocated to registers r4 r5 
;test                      Allocated with name '_main_test_131074_35'
;test                      Allocated to registers 
;------------------------------------------------------------
;	./src/main0.c:25: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main0.c:28: TMOD = 0x20;			// set timer1 to mode2 
	mov	_TMOD,#0x20
;	./src/main0.c:29: SCON = 0x50;       		// set serial mode1
	mov	_SCON,#0x50
;	./src/main0.c:30: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	mov	_TH1,#0xfa
;	./src/main0.c:31: TR1 = 1;				// enable timer = 1
;	assignBit
	setb	_TR1
;	./src/main0.c:32: IE = 0x90;				// enable serial port interrupt
	mov	_IE,#0x90
;	./src/main0.c:34: Initial();
	lcall	_Initial
;	./src/main0.c:35: for (int i = 1; i < 9; i++)
	mov	r7,#0x01
00141$:
	cjne	r7,#0x09,00254$
00254$:
	jnc	00101$
;	./src/main0.c:36: Write7219(i, 0x0F);     	// Reset all digits as blank
	mov	dpl,r7
	mov	_Write7219_PARM_2,#0x0f
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main0.c:35: for (int i = 1; i < 9; i++)
	inc	r7
	sjmp	00141$
00101$:
;	./src/main0.c:40: int cnt1=0, cnt2=0, cnt3=0, cnt4=0;
	mov	r7,#0x00
	mov	r6,#0x00
	mov	_main_cnt3_65537_16,r7
	mov	_main_cnt4_65537_16,r7
;	./src/main0.c:41: while(1){	
	mov	r2,#0x00
	mov	r3,#0x00
00138$:
;	./src/main0.c:42: if (but1 == 0) {
	jb	_P3_2,00107$
;	./src/main0.c:43: if (cnt1 < 3) {
	cjne	r7,#0x03,00257$
00257$:
	jnc	00108$
;	./src/main0.c:44: cnt1++;
	inc	r7
;	./src/main0.c:45: if (cnt1 == 3) {
	cjne	r7,#0x03,00108$
;	./src/main0.c:46: send_data = 1;
	mov	_send_data,#0x01
;	./src/main0.c:47: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00108$
00107$:
;	./src/main0.c:51: else { cnt1 = 0; }
	mov	r7,#0x00
00108$:
;	./src/main0.c:53: if (but2 == 0) {
	jb	_P3_3,00114$
;	./src/main0.c:54: if (cnt2 < 3) {
	cjne	r6,#0x03,00262$
00262$:
	jnc	00115$
;	./src/main0.c:55: cnt2++;
	inc	r6
;	./src/main0.c:56: if (cnt2 == 3) {
	cjne	r6,#0x03,00115$
;	./src/main0.c:57: send_data = 2;
	mov	_send_data,#0x02
;	./src/main0.c:58: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00115$
00114$:
;	./src/main0.c:62: else { cnt2 = 0; }
	mov	r6,#0x00
00115$:
;	./src/main0.c:64: if (but3 == 0) {
	jb	_P2_0,00121$
;	./src/main0.c:65: if (cnt3 < 3) {
	mov	a,#0x100 - 0x03
	add	a,_main_cnt3_65537_16
	jc	00122$
;	./src/main0.c:66: cnt3++;
	inc	_main_cnt3_65537_16
;	./src/main0.c:67: if (cnt3 == 3) {
	mov	a,#0x03
	cjne	a,_main_cnt3_65537_16,00122$
;	./src/main0.c:68: send_data = 3;
	mov	_send_data,#0x03
;	./src/main0.c:69: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00122$
00121$:
;	./src/main0.c:73: else { cnt3 = 0; }
	mov	_main_cnt3_65537_16,#0x00
00122$:
;	./src/main0.c:75: if (but4 == 0) {
	jb	_P2_1,00128$
;	./src/main0.c:76: if (cnt4 < 3) {
	mov	a,#0x100 - 0x03
	add	a,_main_cnt4_65537_16
	jc	00129$
;	./src/main0.c:77: cnt4++;
	inc	_main_cnt4_65537_16
;	./src/main0.c:78: if (cnt4 == 3) {
	mov	a,#0x03
	cjne	a,_main_cnt4_65537_16,00129$
;	./src/main0.c:79: send_data = 4;
	mov	_send_data,#0x04
;	./src/main0.c:80: send_flag = 1;
	mov	_send_flag,#0x01
	sjmp	00129$
00128$:
;	./src/main0.c:84: else { cnt4 = 0; }
	mov	_main_cnt4_65537_16,#0x00
00129$:
;	./src/main0.c:87: if (send_flag==1)
	mov	a,#0x01
	cjne	a,_send_flag,00131$
;	./src/main0.c:89: SBUF = send_data;	// send data to SBUF
	mov	_SBUF,_send_data
;	./src/main0.c:90: send_flag = 0;
	mov	_send_flag,#0x00
00131$:
;	./src/main0.c:96: if (received_flag == 1) {      
	mov	a,#0x01
	cjne	a,_received_flag,00133$
;	./src/main0.c:98: received_flag = 0;
	mov	_received_flag,#0x00
00133$:
;	./src/main0.c:100: if(test==key[turn]){ // if the received data is the same as the current key-> print
	mov	a,r2
	add	a,#_key
	mov	r1,a
	mov	ar4,@r1
	mov	r5,#0x00
	mov	a,r4
	cjne	a,_main_test_131074_35,00135$
	mov	a,r5
	cjne	a,(_main_test_131074_35 + 1),00135$
;	./src/main0.c:101: flag = 1;
	mov	r4,#0x01
	mov	r5,#0x00
;	./src/main0.c:102: turn++;
	inc	r2
	cjne	r2,#0x00,00136$
	inc	r3
	sjmp	00136$
00135$:
;	./src/main0.c:105: flag = 0;
	mov	r4,#0x00
	mov	r5,#0x00
00136$:
;	./src/main0.c:107: display(turn,flag);
	mov	_display_PARM_2,r4
	mov	(_display_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_display
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	./src/main0.c:109: }
	ljmp	00138$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;	./src/main0.c:112: void uart_isr(void) __interrupt (4)
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
;	./src/main0.c:114: if(RI==1){
;	./src/main0.c:115: RI=0;
;	assignBit
	jbc	_RI,00119$
	sjmp	00102$
00119$:
;	./src/main0.c:116: received_data = SBUF;
	mov	_received_data,_SBUF
;	./src/main0.c:117: received_flag = 1;
	mov	_received_flag,#0x01
00102$:
;	./src/main0.c:119: if(TI==1){
;	./src/main0.c:120: TI=0;
;	assignBit
	jbc	_TI,00120$
	sjmp	00105$
00120$:
00105$:
;	./src/main0.c:122: }
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
