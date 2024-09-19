/*
 * File:   Tmr0.c
 * Author: ASUS
 *
 * Created on August 23, 2024, 9:17 AM
 */


#include <pic18.h>
void delay(void)
{
    for(int i=0;i<=100;i++)
    {
        TMR0=61;
        while(TMR0IF==0);
        TMR0IF=0;
    }
    
    
}
void main(void) 
{
    TRISC=0x00;
    T0CON=0xC7;
    while(1)
    {
        PORTC=0x00;
        delay();
        PORTC=0xFF;
        delay();
        
    }
    return;
}
