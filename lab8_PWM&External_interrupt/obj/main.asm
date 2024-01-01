;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14356 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EX1_int
	.globl _EX0_int
	.globl _PWM_Dimming_LED
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
	.globl _LED
	.globl _decrease_flag
	.globl _rotate
	.globl _shift_idx
	.globl _duty_cycle
	.globl _pwm_count
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_pwm_count::
	.ds 2
_duty_cycle::
	.ds 2
_shift_idx::
	.ds 1
_rotate::
	.ds 1
_decrease_flag::
	.ds 2
_LED::
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
	ljmp	_EX0_int
	.ds	5
	ljmp	_PWM_Dimming_LED
	.ds	5
	ljmp	_EX1_int
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
;	./src/main.c:6: int pwm_count=0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
;	./src/main.c:7: int duty_cycle = 0;
	mov	_duty_cycle,a
	mov	(_duty_cycle + 1),a
;	./src/main.c:8: char shift_idx = 0;
	mov	_shift_idx,a
;	./src/main.c:9: char rotate = 0;
	mov	_rotate,a
;	./src/main.c:10: int decrease_flag=0; 
	mov	_decrease_flag,a
	mov	(_decrease_flag + 1),a
;	./src/main.c:11: unsigned char LED = 0x80;
	mov	_LED,#0x80
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
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:12: int main(void)
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
;	./src/main.c:17: TMOD = 0x01;            // 16 bit timer
	mov	_TMOD,#0x01
;	./src/main.c:18: TH0 = freq >> 8;        
	mov	_TH0,#0xff
;	./src/main.c:19: TL0 = freq & 0xFF;  
	mov	_TL0,#0x9c
;	./src/main.c:20: ET0 = 1;				// timer 0 overflow enable				
;	assignBit
	setb	_ET0
;	./src/main.c:21: TR0 = 1;                // timer 0 turn on
;	assignBit
	setb	_TR0
;	./src/main.c:24: EA = 1;					// enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:25: EX0=1;          // INT0 enable
;	assignBit
	setb	_EX0
;	./src/main.c:26: EX1=1;	        // INT1 enable
;	assignBit
	setb	_EX1
;	./src/main.c:27: IT1 = 0;        // INT0 edge trigger INT1 level trigger
;	assignBit
	clr	_IT1
;	./src/main.c:28: IT0 = 1;           
;	assignBit
	setb	_IT0
;	./src/main.c:33: for(i = 0; i <= PWM_CNT_UPPER; i++)
00114$:
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
;	./src/main.c:35: duty_cycle = i;
	mov	_duty_cycle,r6
	mov	(_duty_cycle + 1),r7
;	./src/main.c:36: delay_ms(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:33: for(i = 0; i <= PWM_CNT_UPPER; i++)
	inc	r6
	cjne	r6,#0x00,00152$
	inc	r7
00152$:
	clr	c
	mov	a,#0x28
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	./src/main.c:38: for(i = PWM_CNT_UPPER; i >= 0 ; i--)
	mov	r6,#0x28
	mov	r7,#0x00
00110$:
;	./src/main.c:40: duty_cycle = i;
	mov	_duty_cycle,r6
	mov	(_duty_cycle + 1),r7
;	./src/main.c:41: delay_ms(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:38: for(i = PWM_CNT_UPPER; i >= 0 ; i--)
	dec	r6
	cjne	r6,#0xff,00154$
	dec	r7
00154$:
	mov	a,r7
	jnb	acc.7,00110$
;	./src/main.c:43: if(rotate){
	mov	a,_rotate
	jz	00114$
;	./src/main.c:44: shift_idx+=1; 
	mov	a,_shift_idx
	mov	r7,a
	inc	a
	mov	_shift_idx,a
;	./src/main.c:45: shift_idx%=8;
	anl	_shift_idx,#0x07
;	./src/main.c:50: }
	sjmp	00114$
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM_Dimming_LED'
;------------------------------------------------------------
;	./src/main.c:52: void PWM_Dimming_LED(void) __interrupt (1)  
;	-----------------------------------------
;	 function PWM_Dimming_LED
;	-----------------------------------------
_PWM_Dimming_LED:
	push	acc
	push	b
	push	dpl
	push	dph
	push	psw
;	./src/main.c:54: TH0 = freq >> 8;
	mov	_TH0,#0xff
;	./src/main.c:55: TL0 = freq & 0xFF;   
	mov	_TL0,#0x9c
;	./src/main.c:56: pwm_count++;
	inc	_pwm_count
	clr	a
	cjne	a,_pwm_count,00150$
	inc	(_pwm_count + 1)
00150$:
;	./src/main.c:58: if(pwm_count >= PWM_CNT_UPPER)
	clr	c
	mov	a,_pwm_count
	subb	a,#0x28
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	./src/main.c:59: pwm_count = 0;
	clr	a
	mov	_pwm_count,a
	mov	(_pwm_count + 1),a
00102$:
;	./src/main.c:61: if(duty_cycle > pwm_count) {
	clr	c
	mov	a,_pwm_count
	subb	a,_duty_cycle
	mov	a,(_pwm_count + 1)
	xrl	a,#0x80
	mov	b,(_duty_cycle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	./src/main.c:62: switch(shift_idx){
	mov	a,_shift_idx
	add	a,#0xff - 0x07
	jnc	00153$
	ljmp	00124$
00153$:
	mov	a,_shift_idx
	add	a,#(00154$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_shift_idx
	add	a,#(00155$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00154$:
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
00155$:
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
;	./src/main.c:63: case 0 : P1_0 = 0; break;  
00103$:
;	assignBit
	clr	_P1_0
;	./src/main.c:64: case 1 : P1_1 = 0; break; 
	sjmp	00124$
00104$:
;	assignBit
	clr	_P1_1
;	./src/main.c:65: case 2 : P1_2 = 0; break; 
	sjmp	00124$
00105$:
;	assignBit
	clr	_P1_2
;	./src/main.c:66: case 3 : P1_3 = 0; break; 
	sjmp	00124$
00106$:
;	assignBit
	clr	_P1_3
;	./src/main.c:67: case 4 : P1_4 = 0; break; 
	sjmp	00124$
00107$:
;	assignBit
	clr	_P1_4
;	./src/main.c:68: case 5 : P1_5 = 0; break; 
	sjmp	00124$
00108$:
;	assignBit
	clr	_P1_5
;	./src/main.c:69: case 6 : P1_6 = 0; break; 
	sjmp	00124$
00109$:
;	assignBit
	clr	_P1_6
;	./src/main.c:70: case 7 : P1_7 = 0; break; 
	sjmp	00124$
00110$:
;	assignBit
	clr	_P1_7
;	./src/main.c:71: }
	sjmp	00124$
00122$:
;	./src/main.c:74: switch(shift_idx){
	mov	a,_shift_idx
	add	a,#0xff - 0x07
	jc	00124$
	mov	a,_shift_idx
	add	a,#(00157$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_shift_idx
	add	a,#(00158$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00157$:
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
00158$:
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
;	./src/main.c:75: case 0 : P1_0 = 1; break; 
00112$:
;	assignBit
	setb	_P1_0
;	./src/main.c:76: case 1 : P1_1 = 1; break; 
	sjmp	00124$
00113$:
;	assignBit
	setb	_P1_1
;	./src/main.c:77: case 2 : P1_2 = 1; break; 
	sjmp	00124$
00114$:
;	assignBit
	setb	_P1_2
;	./src/main.c:78: case 3 : P1_3 = 1; break; 
	sjmp	00124$
00115$:
;	assignBit
	setb	_P1_3
;	./src/main.c:79: case 4 : P1_4 = 1; break; 
	sjmp	00124$
00116$:
;	assignBit
	setb	_P1_4
;	./src/main.c:80: case 5 : P1_5 = 1; break; 
	sjmp	00124$
00117$:
;	assignBit
	setb	_P1_5
;	./src/main.c:81: case 6 : P1_6 = 1; break; 
	sjmp	00124$
00118$:
;	assignBit
	setb	_P1_6
;	./src/main.c:82: case 7 : P1_7 = 1; break; 
	sjmp	00124$
00119$:
;	assignBit
	setb	_P1_7
;	./src/main.c:83: }
00124$:
;	./src/main.c:85: }
	pop	psw
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;------------------------------------------------------------
;Allocation info for local variables in function 'EX0_int'
;------------------------------------------------------------
;	./src/main.c:87: void EX0_int(void) __interrupt (0) // External interrupt 0, edge trigger
;	-----------------------------------------
;	 function EX0_int
;	-----------------------------------------
_EX0_int:
	push	acc
;	./src/main.c:89: if (rotate == 0) rotate =1;
	mov	a,_rotate
	jnz	00102$
	mov	_rotate,#0x01
	sjmp	00104$
00102$:
;	./src/main.c:90: else rotate = 0;
	mov	_rotate,#0x00
00104$:
;	./src/main.c:91: }  
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EX1_int'
;------------------------------------------------------------
;j                         Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:93: void EX1_int(void) __interrupt (2) // External interrupt 1, level trigger
;	-----------------------------------------
;	 function EX1_int
;	-----------------------------------------
_EX1_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/main.c:97: P1=0x00;
	mov	_P1,#0x00
;	./src/main.c:98: delay_ms(100); 
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:99: P1=0xff;
	mov	_P1,#0xff
;	./src/main.c:100: switch(shift_idx){
	mov	a,_shift_idx
	add	a,#0xff - 0x07
	jc	00110$
	mov	a,_shift_idx
	add	a,#(00119$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_shift_idx
	add	a,#(00120$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00119$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00120$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	./src/main.c:101: case 0 : P1_0 = 0; break; 
00101$:
;	assignBit
	clr	_P1_0
;	./src/main.c:102: case 1 : P1_1 = 0; break; 
	sjmp	00110$
00102$:
;	assignBit
	clr	_P1_1
;	./src/main.c:103: case 2 : P1_2 = 0; break; 
	sjmp	00110$
00103$:
;	assignBit
	clr	_P1_2
;	./src/main.c:104: case 3 : P1_3 = 0; break; 
	sjmp	00110$
00104$:
;	assignBit
	clr	_P1_3
;	./src/main.c:105: case 4 : P1_4 = 0; break; 
	sjmp	00110$
00105$:
;	assignBit
	clr	_P1_4
;	./src/main.c:106: case 5 : P1_5 = 0; break; 
	sjmp	00110$
00106$:
;	assignBit
	clr	_P1_5
;	./src/main.c:107: case 6 : P1_6 = 0; break; 
	sjmp	00110$
00107$:
;	assignBit
	clr	_P1_6
;	./src/main.c:108: case 7 : P1_7 = 0; break; 
	sjmp	00110$
00108$:
;	assignBit
	clr	_P1_7
;	./src/main.c:109: }
00110$:
;	./src/main.c:110: } 	
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
