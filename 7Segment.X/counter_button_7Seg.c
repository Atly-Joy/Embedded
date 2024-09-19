/*
 * File:   counter_button_7Seg.c
 * Author: ASUS
 *
 * Created on September 3, 2024, 10:20 AM
 */


#pragma config WDT = OFF  
#include <xc.h>
void delay(long j)
{
    for(long i=0;i<=j;i++);
}
unsigned char seg[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
unsigned char port[]={0x0E,0x0D,0x0B,0x07};
void main(void) 
{
    TRISC=0X00;
    TRISD=0X00;
    while(1)
    {
        for(unsigned char i0=0;i0<10;i0++)
        {
            for(unsigned char i1=0;i1<10;i1++)
            {
                for(unsigned char i2=0;i2<10;i2++)
                {
                    for(unsigned char i3=0;i3<10;i3++)
                    {
                        while(1)
                        {
                            PORTD=port[0];
                            PORTC=seg[i0];
                            delay(50);
                            
                            PORTD=port[1];
                            PORTC=seg[i1];
                            delay(50);
                            
                            PORTD=port[2];
                            PORTC=seg[i2];
                            delay(50);
                            
                            PORTD=port[3];
                            PORTC=seg[i3];
                            delay(50);
                            
                            if(RB5==0)
                            {
                                for(unsigned char k=0;k<=1000;k++);
                                break;
                            }
                            
                        }
                    }    
                }
            }
        }
    }
}
