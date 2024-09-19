/*
 * File:   2Line_LCD.c
 * Author: ASUS
 *
 * Created on August 5, 2024, 8:58 AM
 */


#include <xc.h>
void delay(long j)
{
    for(long i=0;i<=j;i++);
}
void start_func(unsigned char a)
{
    RC3=0; //RS=0
    RC4=0;
    PORTD=a;
    RC5=1;
    delay(100);
    RC5=0;
    delay(5000);
}
void data(unsigned char a)
{
    RC3=1; //RS=1
    RC4=0;
    PORTD=a;
    RC5=1;
    delay(100);//enable communication delay,ie;enable pin high 
                    //to low transfer time
    RC5=0;
    delay(5000);//enable execution delay
}
void display(const char *p)
{
    while(*p)
    {
        data(*p);
        p++;
    }
}
void main(void)
{
    TRISC=0x01;
    TRISD=0x00;
    int count=0;
    
    while(1)
    {
        if(RC0==1 && count==0)
        {
            RC1=1; RC2=0;
            count=1;
            start_func(0x01);
            start_func(0x0f);
            start_func(0x0f);
            display("Clockwise");
            while(RC0==0);
        }
        else if(RC0==1 && count==1)
        {
            RC1=0;RC2=1;
            count=2;
            start_func(0x01);
            start_func(0xff);
            display("Anticlockwise");
            while(RC0==0);
        }
        else if(RC0==1 && count==2)
        {
            RC1=0;RC2=0;
            count=0;
            start_func(0x01);
            start_func(0x0f);
            display("Stopped");
            while(RC0==0);
        }
    }
    return;
}
