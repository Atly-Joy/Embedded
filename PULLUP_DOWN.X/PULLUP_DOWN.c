/*
 * File:   PULLUP_DOWN.c
 * Author: ASUS
 *
 * Created on July 30, 2024, 9:20 AM
 */


#include <xc.h>
void delay(long j)
{
    for(long i=0;i<=j;i++);
}

void main(void) 
{
    TRISC=0xFF;
    TRISD=0x00;
    while(1)
    {
        if(RC0==1)
        {
            PORTD=0xFF;
            delay(30000);
            PORTD=0x00;
            delay(30000);
        
        }
        else if(RC1==1)
        {
            for(long j=1;j<=128;j=j*2)
            {
                PORTD=j;
                for(int i=0;i<=30000;i++);   
            }
        }
        else if(RC2==1)
        {
            for(long k=1;k<=255;k=((k*2)+1))
            {
                PORTD=k;
                for(int i=0;i<30000;i++);
            }
        }
        
    }
    return;
}
