#include "8051.h"
#include "seven_segment.h"
#include "delay.h"

#define Hall_In P2_4

int hall_ms = 0;									// counter of the time elapsed
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor
void Display(long int num);


void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
  TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
  TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
  hall_ms++; // counting how many time
	if( (Hall_In==0) && (hall_last_state==1) ){
    Display(hall_ms);              // display the value of time
    hall_ms=0;                    // reset the timer
  }

  hall_last_state = Hall_In;       // this is the debounce of the hallsensor

}

int main(void) {

	// Initialization
	TMOD = 0x01;											// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;					// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;					// Load initial lower 8 bits into Timer 0
	ET0 = 1;													// Enable Timer 0 interrupt
	EA = 1;														// Enable all interrupt
	TR0 = 1;													// Start Timer 0
	Initial();                  			//MAX7219 initialize

    Hall_In = 1;										// Initialize Hall sensor signal (deactivated)
    while(1);
}

void Display(long int num) {
	unsigned char seg[] = {
    	0b01111110,  	// 0
    	0b00110000,  	// 1
    	0b01101101,  	// 2
    	0b01111001,  	// 3
    	0b00110011,  	// 4
    	0b01011011,  	// 5
    	0b01011111,  	// 6
    	0b01110000, 	// 7
    	0b01111111,  	// 8
    	0b01111011 		// 9
    };
	unsigned char seg_decimal[] = {
    	0b11111110,  	// 0
    	0b10110000,  	// 1
    	0b11101101,  	// 2
    	0b11111001,  	// 3
    	0b10110011,  	// 4
    	0b11011011,  	// 5
    	0b11011111,  	// 6
    	0b11110000, 	// 7
    	0b11111111,  	// 8
    	0b11111011 		// 9
    };
	int i = 0;
  char toprint;
	while(num>0){
    i++;
		int print = num%10;
      if(i==4){
        toprint = seg_decimal[print];  // add decimal point at the third number counting from the back
      }
      else {
        toprint = seg[print];       // load the seven_segment code to to print
      }
		Write7219( i , toprint);
		num /= 10 ;
	}
  while(i<4){
    i++;
    if(i==4){
        toprint = seg_decimal[0];   // add decimal point at the third number counting from the back
      }
      else {
        toprint = seg[0];
      }
		Write7219( i , toprint);
  }
}
