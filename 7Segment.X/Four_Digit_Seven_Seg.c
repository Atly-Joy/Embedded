/*
 * File:   Four_Digit_Seven_Seg.c
 * Author: ASUS
 *
 * Created on September 3, 2024, 9:11 AM
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
                        for(unsigned char j=0;j<=50;j++)
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
                            
                            
                        }
                    }    
                }
            }
        }
        /*PORTD=0x07;
        PORTC=0x3F;
        delay(1000);
        PORTD=0x03;
        PORTC=0x3F;
        delay(1000);
        PORTD=0x01;
        PORTC=0x3F;
        delay(1000);
        PORTD=0x00;
        PORTC=0x3F;
        delay(1000);*/
    }  
}
