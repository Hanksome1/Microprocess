#include "8051.h"
#include "delay.h"
#include "seven_segment.h"

#define but3 P2_0
#define but4 P2_1
#define but1 P3_2
#define but2 P3_3


unsigned char send_data;
unsigned char received_data;
unsigned char send_flag=0;
unsigned char received_flag=0;
unsigned char key[]={ 1, 3, 1, 2, 2, 3, 4 };

void display(int turn, int flag){	
	if(flag==1){
		Write7219(8,1);
	}
	 // if the flag is 1, which means the input is correct, then write 1 in the first number
	else{
		Write7219(8,0); // vice versa
	}
	for(int i=0; i<turn; i++){
		Write7219(7-i,key[i]); // print out the known key, use turn to control how long to print
	}
}

void main(void)
{	
	// set timer and initialize communication port
	TMOD = 0x20;			// set timer1 to mode2 
	SCON = 0x50;       		// set serial mode1
	TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
	TR1 = 1;				// enable timer = 1
	IE = 0x90;				// enable serial port interrupt

	Initial();
	for (int i = 1; i < 9; i++)
    	Write7219(i, 0x0F);     	// Reset all digits as blank
                              		// Our DecodeMode of MAX7219 is different from lab2
                             		// So we can pass a number to it without building a table
	int turn=0;
	unsigned char cnt1 = 0;
   	unsigned char cnt2 = 0;
   	unsigned char cnt3 = 0;
   	unsigned char cnt4 = 0;
	int test =0;
	int flag =0;
	while(1){	
		if (but1 == 0) {
			if (cnt1 < 3) {
				cnt1++;
				if (cnt1 == 3) {
					send_data = 1;
					send_flag = 1;
				}
			}
		}
		else { cnt1 = 0; }

		if (but2 == 0) {
			if (cnt2 < 3) {
				cnt2++;
				if (cnt2 == 3) {
					send_data = 2;
					send_flag = 1;
				}
			}
		}
		else { cnt2 = 0; }

		if (but3 == 0) {
			if (cnt3 < 3) {
				cnt3++;
				if (cnt3 == 3) {
					send_data = 3;
					send_flag = 1;
				}
			}
		}
		else { cnt3 = 0; }

		if (but4 == 0) {
			if (cnt4 < 3) {
				cnt4++;
				if (cnt4 == 3) {
					send_data = 4;
					send_flag = 1;
				}
			}
		}
		else { cnt4 = 0; }
		
		// sending
		if (send_flag==1)
		{
			SBUF = send_data;	// send data to SBUF
			send_flag = 0;
		} 

		// receiving data from the uart
		if (received_flag == 1) {      
			test = received_data; //receiving data
			received_flag = 0;
			if(test==key[turn]) flag = 1;
			else flag=0;
		}
		if(test==key[turn]){ // if the received data is the same as the current key-> print
			turn++;
			test=0;
		}
		display(turn,flag);
	}
}


void uart_isr(void) __interrupt (4)
{  
    if(RI==1){
		RI=0;
		received_data = SBUF;
		received_flag = 1;
	}
	if(TI==1){
		TI=0;
	}
}