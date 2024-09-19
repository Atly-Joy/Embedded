/*
 * File:   tmr2.c
 * Author: ASUS
 *
 * Created on August 27, 2024, 9:21 AM
 */


#include <pic18.h>
#define fosc 20000000
#define pre 16
#define del 0.01
#define post 16
#define a (int)((fosc*del)/(4*pre*post))
void delay(void)
{
    while(TMR2IF==0);
    TMR2IF=0;
    
}
void main(void) 
{
    TRISC=0x00;
    T2CON=0x7E;
    PR2=a;
    while(1)
    {
        PORTC=0x00;
        delay();
        PORTC=0xFF;
        delay();
        
    }
    return;
}
