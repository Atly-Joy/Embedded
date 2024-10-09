/*
 * File:   Interrupt.c
 * Author: ASUS
 *
 * Created on August 21, 2024, 10:26 AM
 */


#include <xc.h>
void delay(void)
{
    for(int i=0;i<=100;i++)
    {
        TMR0=61;
        while(TMR0IF==0);
        TMR0IF=0;
    }
    
    
}
int count=0;
void main(void) 
{
    TRISC=0x00;
    TRISB=0x01;
    INTCON=0xD0;
    ADCON1=0X0f;
    T0CON=0xC7;
    while(1)
    {
        switch (count)
        {
            case 1:
                PORTC=0XFF;
                break;
            case 2:
                PORTC=0X00;
                break;
            case 3:
                PORTC=0XFF;
                delay();
                PORTC=0X00;
                delay();
        }   
    }
    
}

void  __interrupt () isr(void)
{
    if(INT0IF==1)
    {
        
        if(count==3)
        {
            count=0;
        }
        delay();
        count++;
        INT0IF=0;
    }
}
