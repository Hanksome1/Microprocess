#include "8051.h"
#include "delay.h"

#define led P1
#define but1 P2_2
#define but2 P2_3
#define but3 P2_4
#define o1 P2_5
#define o2 P2_6
#define o3 P2_7

void main(void)
{ 
	unsigned char patt = 0x80;
    unsigned int prebut1 = 1;
    unsigned int prebut2 = 1;
    unsigned int prebut3 = 1;
    but1 = 1;
    but2 = 1;
    but3 = 1;


    while(1){
        // scan the first line;
        o1 = 0; o2 = 1; o3 = 1; // selecting the output line
        if(( but1==0 )&&( prebut1==1 )){
            //leftshift one (short) and keep shifting(long)
            delay_ms(10);
            if(but1==0){
                patt = patt >> 1;
	            if(patt == 0x00)	// reset
	                patt = 0x80;
                led = ~patt;
                delay_ms(800);
                while(but1==0){
                    patt = patt >> 1;
	                if(patt == 0x00)	// reset
	                    patt = 0x80;
                    led = ~patt;
                    delay_ms(50);
                }
            }
        }
        prebut1=but1; // debounce
        if(but2==0){
            patt = 0x01 ;
            led = ~patt ;
        }
        if(but3==0){
            patt = 0x02 ;
            led = ~patt ;
        }
        delay_ms(10);
        //scan the second line;
        o1 = 1; o2 = 0; o3 = 1; // selecting the output line;
        if(but1==0){
            patt = 0x04 ;
            led = ~patt ;
        }
        //right shift 
        if(( but2==0 )&&( prebut2==1 )){
            //leftshift one (short) and keep shifting(long)
            delay_ms(10);
            if(but2==0){
                patt = patt << 1;
					if(patt == 0x00)
						patt = 0x01;
                led = ~patt;
                delay_ms(800);
                while(but2==0){
                    patt = patt << 1;
					if(patt == 0x00)
						patt = 0x01;
                    led = ~patt;
                    delay_ms(50);
                }
            }
        }
        prebut2=but2; // debounce
        if(but3==0){
            patt = 0x010;
            led = ~patt ;
        }
        delay_ms(10);
        //scan the third line;
        o1 = 1; o2 = 1; o3 = 0; // selecting the output line;
        if(but1==0){
            patt = 0x20;
            led = ~patt ;
        }
        if(but2==0){
            patt = 0x40;
            led = ~patt ;
        }
        if( (but3==0) && (prebut3==1)){
            delay_ms(10);
            if(but3==0){ //check for fast double press
                delay_ms(100);
                int time=0, shift_two=0; // time is being used to count the ms we went through, shift_two is used to record whether the user click twice
                if(but3==1){
                    while(time<200){ //check if there is a click within 50ms
                        delay_ms(1);
                        time++;
                        if(but3==0){
                            shift_two = 1;
                        }
                    }
                    if(shift_two==0){ // if there is only one click , left shift once
                        patt = patt >> 1;
	                    if(patt == 0x00)	// reset
	                        patt = 0x80;
                        led = ~patt;
                    }
                    else{ // else if there is two click, left shift twice.
                        if (patt == 0x01)
						    patt = 0x20;
					    else if (patt == 0x02)
						    patt = 0x40;
                        else if (patt == 0x04)
                            patt = 0x80;
					    else
						    patt = patt >> 3;
                        led = ~patt;
                    }
                }
                else{
                    delay_ms(1000);
                    if(but3==0){
                    if (patt == 0x01)
						patt = 0x40;
					else if (patt == 0x02)
						patt = 0x80;
					else
						patt = patt >> 2;
                    led = ~patt;
                    }
                }
            }
            
        }
        prebut3 = but3;
        delay_ms(10);
    }
}