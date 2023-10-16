/**************************************************************
 *
 * P1  : 8 LEDs
 * P0_1: buttons column 1
 * P0_2: buttons column 2
 * P0_3: buttons column 3
 * P0_4: buttons row 1
 * P0_5: buttons row 2
 * P0_6: buttons row 3
 * P2_2: DIN of MAX7219
 * P2_1: CS of MAX7219
 * P2_0: CLK of MAX7219
 * 
**************************************************************/

#include "8051.h"
#include "delay.h"
#include "header7219.h"
void Display(long int num);
void main(void)
{
	long int num = 0;
	unsigned char tmp, but, prebut = 0xFF;

	Initial7219();					// MAX7219 initialize
    while (1) {
        P0 = 0x0F;
        tmp = P0;					// button detection (cul)
        P0 = 0xF0;
        but = tmp | P0;				// button detection (row)
		// P1 = but;				// LED for check

		if (but != prebut && but != 0xFF) {
			num *= 10;
			switch (but) {
				case 0xE7:  num++;	// 9
				case 0xEB:  num++;	// 8
				case 0xED:  num++;	// 7
				case 0xD7:  num++;	// 6
				case 0xDB:  num++;	// 5
				case 0xDD:  num++;	// 4
				case 0xB7:  num++;	// 3
				case 0xBB:  num++;	// 2
				case 0xBD:  num++;	// 1
				default  : 	num = num;
			}
		}
		prebut = but;
		Display(num);
		delay_ms(10);
    }
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
	//you are 9@y
	//dont be shy shy shy
	int i = 0; 
	while(num>0){
		int print = num%10;
		i++;
		Write7219( i , seg[print]);
		num /= 10 ;
	}
}
