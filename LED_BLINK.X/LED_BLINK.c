/*
 * File:   LED_BLINK.c
 * Author: ASUS
 *
 * Created on July 26, 2024, 9:49 AM
 */


#include <xc.h>

void main(void) 
{
    TRISC=0x00;
    TRISD=0x00;
    while(1)
    {
        for(long j=1;j<=128;j=j*2)
        {
            PORTC=j;
            for(unsigned long i=0;i<3000;i++);
        }
        PORTC=0x00;
        for(long j=128;j>=1;j=j/2)
        {
            PORTC=j;
            for(unsigned long i=0;i<3000;i++);
        }
    }
    return;
}
