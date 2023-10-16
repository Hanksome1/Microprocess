/**************************************************************
 *
 * P2_2: DIN of MAX7219
 * P2_1: CS of MAX7219
 * P2_0: CLK of MAX7219
 * 
**************************************************************/

#include "8051.h"
#include "delay.h"
#include "header7219.h"

#define LOWER_RIGHT 0
#define LOWER_LEFT  1
#define UPPER_LEFT  2
#define UPPER_RIGHT 3

void Move(unsigned char* m, char dir);

void main(void)
{
	unsigned char m[8] = {0x80, 0, 0, 0, 0, 0, 0, 0};
	char i, cnt = 0;

	Initial7219();				 	// MAX7219 initialize
	while (1) {
		Move(m,(cnt++/7)%4);
    	for (i = 8; i >= 1; i--) {
        	Writesingle7219(1, i, m[i - 1]);
    	}
		delay_ms(200);
	}
}

void Move(unsigned char* m, char dir) {
	
	if (dir == LOWER_RIGHT){
		m[0] /=2 ;
	}
	if (dir == LOWER_LEFT){
		for(int i=0; i<=6; i++){
			if(m[i]!=0){
				m[i+1]=m[i];
				m[i]=0;
				return;
			}
		}
	}
	if(dir == UPPER_LEFT){
		m[7]*=2;
	}
	if(dir == UPPER_RIGHT){
		for(int i=7; i>=1; i--){
			if(m[i]!=0){
				m[i-1]=m[i];
				m[i]=0;
				return;
			}
		}
	}	
}