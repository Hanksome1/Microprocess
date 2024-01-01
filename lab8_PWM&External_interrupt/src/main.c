#include "8051.h"
#include "delay.h"
#define cnt 100
#define freq 65536 - cnt 	
#define PWM_CNT_UPPER 40	  
int pwm_count=0;
int duty_cycle = 0;
char shift_idx = 0;
char rotate = 0;
int decrease_flag=0; 
unsigned char LED = 0x80;
int main(void)
{	      
    int i;

    // ===== Timer interrupt config  ===== //
    TMOD = 0x01;            // 16 bit timer
    TH0 = freq >> 8;        
    TL0 = freq & 0xFF;  
    ET0 = 1;				// timer 0 overflow enable				
    TR0 = 1;                // timer 0 turn on

    // ===== External interrupt enable  ===== //
    EA = 1;					// enable all interrupt
    EX0=1;          // INT0 enable
    EX1=1;	        // INT1 enable
    IT1 = 0;        // INT0 edge trigger INT1 level trigger
    IT0 = 1;           


    /**ToDo: Complete function in practice**/
    while(1){  
        for(i = 0; i <= PWM_CNT_UPPER; i++)
    	{
    		duty_cycle = i;
    		delay_ms(5);
    	}	
        for(i = PWM_CNT_UPPER; i >= 0 ; i--)
    	{
    		duty_cycle = i;
    		delay_ms(5);
        }
        if(rotate){
            shift_idx+=1; 
            shift_idx%=8;
        }
    }
    /**You can refer to example project for some help**/
    
}

void PWM_Dimming_LED(void) __interrupt (1)  
{
    TH0 = freq >> 8;
    TL0 = freq & 0xFF;   
    pwm_count++;

    if(pwm_count >= PWM_CNT_UPPER)
        pwm_count = 0;

    if(duty_cycle > pwm_count) {
        switch(shift_idx){
            case 0 : P1_0 = 0; break;  
            case 1 : P1_1 = 0; break; 
            case 2 : P1_2 = 0; break; 
            case 3 : P1_3 = 0; break; 
            case 4 : P1_4 = 0; break; 
            case 5 : P1_5 = 0; break; 
            case 6 : P1_6 = 0; break; 
            case 7 : P1_7 = 0; break; 
        }
    }
    else {
        switch(shift_idx){
            case 0 : P1_0 = 1; break; 
            case 1 : P1_1 = 1; break; 
            case 2 : P1_2 = 1; break; 
            case 3 : P1_3 = 1; break; 
            case 4 : P1_4 = 1; break; 
            case 5 : P1_5 = 1; break; 
            case 6 : P1_6 = 1; break; 
            case 7 : P1_7 = 1; break; 
        }
    } 
}

void EX0_int(void) __interrupt (0) // External interrupt 0, edge trigger
{
  if (rotate == 0) rotate =1;
  else rotate = 0;
}  

void EX1_int(void) __interrupt (2) // External interrupt 1, level trigger
{
  unsigned char j;
  j=LED;      	
  P1=0x00;
  delay_ms(100); 
  P1=0xff;
  switch(shift_idx){
            case 0 : P1_0 = 0; break; 
            case 1 : P1_1 = 0; break; 
            case 2 : P1_2 = 0; break; 
            case 3 : P1_3 = 0; break; 
            case 4 : P1_4 = 0; break; 
            case 5 : P1_5 = 0; break; 
            case 6 : P1_6 = 0; break; 
            case 7 : P1_7 = 0; break; 
        }
} 	
