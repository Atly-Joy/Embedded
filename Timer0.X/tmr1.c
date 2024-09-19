/*
 * File:   tmr1.c
 * Author: ASUS
 *
 * Created on August 26, 2024, 9:55 AM
 */


#include <pic18.h>
#define fosc 20000000
#define pre 8
#define del 0.1
#define max 65536
#define a max-((int)(fosc*del)/(4*pre))

  
void delay(void)
{
    TMR1=a;
    while(TMR1IF==0);
    TMR1IF=0;

}
void main(void) 
{
    TRISC=0x00;
    T1CON=0x31;
    while(1)
    {
        PORTC=0x00;
        delay();
        PORTC=0xFF;
        delay();
        
    }
    return;
}
