/*
 * File:   SWITCH_LED.c
 * Author: ASUS
 *
 * Created on September 25, 2024, 11:27 AM
 */


#include <xc.h>

void main(void) 
{
    TRISC=0xFF;
    TRISB=0x20;
    while(1)
    {
        if(RB5==0)
        {
            PORTB=0x00;
            while(RB5==0);
        }
        else if(RC3==0)
        {
            PORTB=0xFF;
            while(RC3==0);
        }
        
    }
    return;
}
