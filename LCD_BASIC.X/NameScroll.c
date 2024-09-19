/*
 * File:   NameScroll.c
 * Author: ASUS
 *
 * Created on August 6, 2024, 9:49 AM
 */


#include <xc.h>
const char *p;
void delay(long j)
{
    for(long i=0;i<=j;i++);
}
void start_func(unsigned char a)
{
    RC0=0; //RS=0
    RC1=0;
    PORTD=a;
    RC2=1;
    delay(100);
    RC2=0;
    delay(5000);
}
void data(unsigned char a)
{
    RC0=1; //RS=1
    RC1=0;
    PORTD=a;
    RC2=1;
    delay(100);//enable communication delay,ie;enable pin high 
                    //to low transfer time
    RC2=0;
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
    TRISC=0x08;
    TRISD=0x00;
    int count=0;   
    while(1)
    {
        start_func(0x01);//clear
        start_func(0x0f);//cursor and LCD On 
        start_func(0x0f);//position set(start),if its (0x8f)it start from last
        display("Atly");
        while(1)
            {
                for(int i=0;i<32;i++)
                {
                    start_func(0x1C);//right shift
                    delay(5000);
                }
                start_func(0x02);
                
            }
        
        
        return;
    }
}
