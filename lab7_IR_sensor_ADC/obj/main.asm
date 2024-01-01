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
	.globl _Write7219
	.globl _read_adc3202
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
	.globl _distance
	.globl _segment_out
	.globl _adc_value
	.globl _seg_dot
	.globl _seg
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
_seg::
	.ds 10
_seg_dot::
	.ds 10
_adc_value::
	.ds 2
_segment_out::
	.ds 2
_distance::
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
;	./src/main.c:5: unsigned char seg[10] = {
	mov	_seg,#0x7e
	mov	(_seg + 0x0001),#0x30
	mov	(_seg + 0x0002),#0x6d
	mov	(_seg + 0x0003),#0x79
	mov	(_seg + 0x0004),#0x33
	mov	(_seg + 0x0005),#0x5b
	mov	(_seg + 0x0006),#0x5f
	mov	(_seg + 0x0007),#0x70
	mov	(_seg + 0x0008),#0x7f
	mov	(_seg + 0x0009),#0x7b
;	./src/main.c:17: unsigned char seg_dot[] = {
	mov	_seg_dot,#0xfe
	mov	(_seg_dot + 0x0001),#0xb0
	mov	(_seg_dot + 0x0002),#0xed
	mov	(_seg_dot + 0x0003),#0xf9
	mov	(_seg_dot + 0x0004),#0xb3
	mov	(_seg_dot + 0x0005),#0xdb
	mov	(_seg_dot + 0x0006),#0xdf
	mov	(_seg_dot + 0x0007),#0xf0
	mov	(_seg_dot + 0x0008),#0xff
	mov	(_seg_dot + 0x0009),#0xfb
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
;temp                      Allocated to registers r4 r5 r6 r7 
;d_temp                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/main.c:33: int main()
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
;	./src/main.c:35: DOUT = 1; //Setting gpio input mode
;	assignBit
	setb	_P2_2
;	./src/main.c:36: LOAD = 1; 
;	assignBit
	setb	_P2_3
;	./src/main.c:37: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:38: DIN = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:42: while(1){
00105$:
;	./src/main.c:43: adc_value = read_adc3202(0);    // Read voltage from ADC channel 0
	mov	dpl,#0x00
	lcall	_read_adc3202
	mov	_adc_value,dpl
	mov	(_adc_value + 1),dph
;	./src/main.c:46: delay_ms(200);
	mov	dptr,#0x00c8
	lcall	_delay_ms
;	./src/main.c:48: adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
	mov	dpl,#0x01
	lcall	_read_adc3202
;	./src/main.c:49: segment_out = adc_value;
;	./src/main.c:50: float temp = 0.2554*0.001*adc_value;
	mov	_adc_value,dpl
	mov	(_adc_value + 1),dph
	mov	_segment_out,_adc_value
	mov	(_segment_out + 1),(_adc_value + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	./src/main.c:51: temp -=0.0409;
	mov	dptr,#0xe735
	mov	b,#0x85
	mov	a,#0x39
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xc2
	push	acc
	mov	a,#0x86
	push	acc
	mov	a,#0x27
	push	acc
	mov	a,#0x3d
	push	acc
;	./src/main.c:52: float d_temp = 1/temp;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	./src/main.c:53: d_temp = d_temp *100;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	./src/main.c:54: if(segment_out<250){
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	c
	mov	a,_segment_out
	subb	a,#0xfa
	mov	a,(_segment_out + 1)
	subb	a,#0x00
	jnc	00102$
;	./src/main.c:55: distance = 9900;
	mov	_distance,#0xac
	mov	(_distance + 1),#0x26
	sjmp	00103$
00102$:
;	./src/main.c:58: distance = (int) d_temp; 
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	_distance,dpl
	mov	(_distance + 1),dph
00103$:
;	./src/main.c:61: Write7219(0x08, seg[distance / 1000]);    // Display on MAX7219
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl,_distance
	mov	dph,(_distance + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x08
	lcall	_Write7219
;	./src/main.c:62: Write7219(0x07, seg_dot[distance % 1000 / 100]);
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,_distance
	mov	dph,(_distance + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg_dot
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x07
	lcall	_Write7219
;	./src/main.c:63: Write7219(0x06, seg[distance % 100 / 10]);
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_distance
	mov	dph,(_distance + 1)
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x06
	lcall	_Write7219
;	./src/main.c:64: Write7219(0x05, seg[distance % 10]);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_distance
	mov	dph,(_distance + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x05
	lcall	_Write7219
;	./src/main.c:65: Write7219(0x04, seg_dot[segment_out / 1000]);    // Display on MAX7219
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,_segment_out
	mov	dph,(_segment_out + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg_dot
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x04
	lcall	_Write7219
;	./src/main.c:66: Write7219(0x03, seg[segment_out % 1000 / 100]);
	mov	__moduint_PARM_2,#0xe8
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_segment_out
	mov	dph,(_segment_out + 1)
	lcall	__moduint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x03
	lcall	_Write7219
;	./src/main.c:67: Write7219(0x02, seg[segment_out % 100 / 10]);
	mov	__moduint_PARM_2,#0x64
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_segment_out
	mov	dph,(_segment_out + 1)
	lcall	__moduint
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x02
	lcall	_Write7219
;	./src/main.c:68: Write7219(0x01, seg[segment_out % 10]);
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_segment_out
	mov	dph,(_segment_out + 1)
	lcall	__moduint
	mov	r6,dpl
	mov	a,r6
	add	a,#_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,#0x01
	lcall	_Write7219
;	./src/main.c:69: delay_ms(200);
	mov	dptr,#0x00c8
	lcall	_delay_ms
;	./src/main.c:72: }
	ljmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
