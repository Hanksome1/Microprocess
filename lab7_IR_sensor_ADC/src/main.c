#include "param.h"
#include "adc.h"
#include "seven_segment.h"
#include "delay.h"
unsigned char seg[10] = {
	0x7E,  //0
	0x30,  //1
	0x6D,  //2
	0x79,  //3
	0x33,  //4
	0x5B,  //5
	0x5F,  //6
	0x70,  //7
	0x7F,  //8
	0x7B	 //9
};
unsigned char seg_dot[] = {
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
unsigned int adc_value;
unsigned int segment_out;
int distance; 

int main()
{
  DOUT = 1; //Setting gpio input mode
  LOAD = 1; 
  CLK = 0;
  DIN = 0;

  Initial; 

  while(1){
    adc_value = read_adc3202(0);    // Read voltage from ADC channel 0
    //led_out = adc_value >> 4;       // Right shift 4 bit to obtain 8-bit signal from the original 12 bits
    //P1 = ~led_out;                  // Display on LED
    delay_ms(200);

    adc_value = read_adc3202(1);    // Read voltage from ADC channel 1
    segment_out = adc_value;
    float temp = 0.2554*0.001*adc_value;
    temp -=0.0409;
    float d_temp = 1/temp;
    d_temp = d_temp *100;
    if(segment_out<250){
        distance = 9900;
    }
    else{
        distance = (int) d_temp; 
    }
    // Writing the distance 
    Write7219(0x08, seg[distance / 1000]);    // Display on MAX7219
    Write7219(0x07, seg_dot[distance % 1000 / 100]);
    Write7219(0x06, seg[distance % 100 / 10]);
    Write7219(0x05, seg[distance % 10]);
    Write7219(0x04, seg_dot[segment_out / 1000]);    // Display on MAX7219
    Write7219(0x03, seg[segment_out % 1000 / 100]);
    Write7219(0x02, seg[segment_out % 100 / 10]);
    Write7219(0x01, seg[segment_out % 10]);
    delay_ms(200);
  }
  
}