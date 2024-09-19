/*
 * File:   PWM.c
 * Author: ASUS
 *
 * Created on August 28, 2024, 9:01 AM
 */


#include <pic18.h>
void delay(void)
{
    while(TMR2IF==0);
    TMR2IF=0;
    
}
void main(void) 
{
    TRISC=0x00;
    T2CON=0x06;
    PR2=255;
    PORTC=0xC7;
    while(1)
    {
        if(RC3==1)
        {
            CCP1CON=0x0C;
            CCPR1L=0x40;
        }
        else if(RC4==1)
        {
            CCP1CON=0x0C;
            CCPR1L=0x80;
        }
        else if(RC5==1)
        {
            CCP1CON=0x0C;
            CCPR1L=0xC0;
        }
    }
    return;
}
