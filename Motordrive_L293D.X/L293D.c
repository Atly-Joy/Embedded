/*
 * File:   L293D.c
 * Author: ASUS
 *
 * Created on August 1, 2024, 9:09 AM
 */


#include <xc.h>
void delay(long j)
{
    for(long i=0;i<=j;i++);
}

void main(void) 
{
    TRISC=0x21;
    //PORTC=0x1E;
    int count1=0,count2=0;
    while(1)
    {
        if(RC0==1 && count1==0)
        {
            RC1=1; RC2=0;
            count1=1;
            while(RC0==0);
        }
        else if(RC0==1 && count1==1)
        {
            RC1=0;RC2=1;
            count1=2;
            while(RC0==0);
        }
        else if(RC0==1 && count1==2)
        {
            RC1=0;RC2=0;
            count1=0;
            while(RC0==0);
        }
        if(RC5==1 && count2==0)
        {
            RC3=1; RC4=0;
            count2=1;
            while(RC5==0);
        }
        else if(RC5==1 && count2==1)
        {
            RC3=0; RC4=1;
            count2=2;
            while(RC5==0);
        }
        else if(RC5==1 && count2==2)
        {
            RC3=0; RC4=0;
            count2=0;
            while(RC5==0);
        }
    }
     return;
}
