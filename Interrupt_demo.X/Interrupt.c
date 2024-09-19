/*
 * File:   Interrupt.c
 * Author: ASUS
 *
 * Created on August 21, 2024, 10:26 AM
 */


#include <xc.h>
void delay(long j)
{
    for(long i=0;i<=j;i++);
}

void main(void) 
{
    TRISC=0x00;
    TRISB=0x01;
    INTCON=0xD0;
    ADCON1=0X0f;
    while(1)
    {
        PORTC=0xFF;
        delay(1000);
        PORTC=0x00;
        delay(1000);
    }
    
}

void  __interrupt () isr(void)
{
    if(INT0IF==1)
    {
        for(long j=1;j<=255;j=((j*2)))
        {
            PORTC=j;
            for(unsigned long i=0;i<30000;i++);
        }
        INT0IF=0;
    }
}
