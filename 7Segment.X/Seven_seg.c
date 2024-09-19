/*
 * File:   Seven_seg.c
 * Author: ASUS
 *
 * Created on September 3, 2024, 8:51 AM
 */


#include <pic18.h>
unsigned char seg[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
void main(void) 
{
    TRISC=0X00;
    while(1)
    {
        for(unsigned char i=0;i<10;i++)
        {
            PORTC=seg[i];
            for(long i=0;i<50000;i++);
        }
    }  
}
