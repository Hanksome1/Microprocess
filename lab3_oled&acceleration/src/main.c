/***************************************************************************************************
                                   ExploreEmbedded Copyright Notice 
 ****************************************************************************************************
 * File:   oled_i2c.c
 * Version: 16.0
 * Author: ExploreEmbedded
 * Website: http://www.exploreembedded.com/wiki
 * Description: SSD1306 I2C OLED library to display strings, numbers, graphs and logos

This code has been developed and tested on ExploreEmbedded boards.  
We strongly believe that the library works on any of development boards for respective controllers. 
Check this link http://www.exploreembedded.com/wiki for awesome tutorials on 8051,PIC,AVR,ARM,Robotics,RTOS,IOT.
ExploreEmbedded invests substantial time and effort developing open source HW and SW tools, to support consider 
buying the ExploreEmbedded boards.

The ExploreEmbedded libraries and examples are licensed under the terms of the new-bsd license(two-clause bsd license).
See also: http://www.opensource.org/licenses/bsd-license.php
EXPLOREEMBEDDED DISCLAIMS ANY KIND OF HARDWARE FAILURE RESULTING OUT OF USAGE OF LIBRARIES, DIRECTLY OR
INDIRECTLY. FILES MAY BE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE. THE REVISION HISTORY CONTAINS THE INFORMATION 
RELATED TO UPDATES.

Permission to use, copy, modify, and distribute this software and its documentation for any purpose
and without fee is hereby granted, provided that this copyright notices appear in all copies 
and that both those copyright notices and this permission notice appear in supporting documentation.
 **************************************************************************************************/ 

#include "8051.h"
#include "oled_i2c.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"

int data_buf;
char i = 0;

int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output



void main(void)
{		 
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    MPU6050_INIT();

    OLED_SetCursor(4,40);
    OLED_DisplayString("START");
    delay_ms(1000);
    OLED_SetCursor(4,40);
    OLED_DisplayString("     ");
    int x=60, y=4;
    int x_prev=60, y_prev=4;
	while(1) {
      readMPU6050_AccelData(&accel_data[0]);
      readMPU6050_GyroData(&gyro_data[0]);
      if(accel_data[1]<0){
        // this means ax is positive, then we add x by 8
        if(x<=120)
        x+=5;
      }
      if(accel_data[1]>0){
        //this means ax is negative, then we minus x by 8;
            x-=5;
            if(x<=0) x=0;
      }
      if(accel_data[0]<0){
        // this mean0 ay is positive then the line number increase
        if(y<=6)
        y+=1;
      }
      if(accel_data[0]>0){
        // this means ay is negative then the line number decrease
        if(y>=1) // the number will only decrease when y is bigger then one
            y-=1;
      }
    OLED_SetCursor(y_prev, x_prev);
    OLED_DisplayChar(' ');
    OLED_SetCursor(y,x);
    OLED_DisplayChar('0');
    y_prev = y;
    x_prev = x;
    delay_ms(250);
    }
}
