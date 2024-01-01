#include "8051.h"
#include "delay_func.h"
#include "delay.h"

#define scan_cnt 10
#define but P2_1
#define do 1
#define re 2
#define mi 3 
#define fa 4 
#define so 5 
#define la 6
#define si 7
int prebut=1;
int state=0;
int song[16]={1,1,5,5,6,6,5,5,4,4,3,3,2,2,1,1};
int current = 0;
int ms;
void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
  TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
  TL0 = (65536-1000) % 256;
  if(state==1)					// Load initial lower 8 bits into Timer 0
  ms++; // counting how many time
  if(ms==500){
    if(current<=15){
        current++;
    }
    else{
        current =0;
    }
    ms=0;
  }

}

int main(void) {
    TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	ET0 = 1;													// Enable Timer 0 interrupt
	EA = 1;														// Enable all interrupt
	TR0 = 1;													// Start Timer 0

	while(1) {
        but =1;
		if((but == 0) && (prebut==1)) {
            delay_ms(40);
            if(but == 0){
                if(state==0) state=1;
                else state=0;
            }
        }
        prebut = but;
        if(state == 1){
            int s = song[current]; // s is the current song
            if(s==do){
                P3_7 = 1;
			    Delay_Do();
			    P3_7 = 0;
			    Delay_Do();
            }
            if(s==re){
                P3_7 = 1;
			    Delay_Re();
			    P3_7 = 0;
			    Delay_Re();
            }
            if(s==mi){
                P3_7 = 1;
			    Delay_Mi();
			    P3_7 = 0;
			    Delay_Mi();
            }
            if(s==fa){
                P3_7 = 1;
			    Delay_Fa();
			    P3_7 = 0;
			    Delay_Fa();
            }
            if(s==so){
                P3_7 = 1;
			    Delay_So();
			    P3_7 = 0;
			    Delay_So();
            }
            if(s==la){
                P3_7 = 1;
			    Delay_La();
			    P3_7 = 0;
			    Delay_La();
            }
            if(s==si){
                P3_7 = 1;
			    Delay_Si();
			    P3_7 = 0;
			    Delay_Si();
            }
        }    
    }
    
		
}
