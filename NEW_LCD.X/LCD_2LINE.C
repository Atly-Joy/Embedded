/*
 * File:   LCD_DoubleMotor.c
 * Author: ASUS
 *
 * Created on August 5, 2024, 9:47 AM
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
    TRISB=0x04;
    start_func(0x01);//clear
    start_func(0x0f);//cursor and LCD On
    start_func(0x38);
    int count1=0,count2=0;
    while(1)
    {
        if(RC0==1 && count1==0)
        {
            RC1=1; RC2=0;
            count1=1;
            start_func(0x8f);//position set
            display("M1:Clockwise");
            while(RC0==1);
        }
        else if(RC0==1 && count1==1)
        {
            RC1=0;RC2=1;
            count1=2;
            start_func(0x80);
            display("M1:Anticlockwise");
            while(RC0==1);
        }
        else if(RC0==1 && count1==2)
        {
            RC1=0;RC2=0;
            count1=0;
            start_func(0x80);
            display("M1:Stopped       ");
            while(RC0==1);
        }
        
        ////////////////////
        
        if(RB2==1 && count2==0)
        {
            RC6=1; RC7=0;
            count2=1;
            start_func(0xC0);
            display("M2:Clockwise");
            while(RB2==1);
        }
        else if(RB2==1 && count2==1)
        {
            RC6=0;RC7=1;
            count2=2;
            start_func(0xC0);
            display("M2:Anticlockwise");
            while(RB2==1);
        }
        else if(RB2==1 && count2==2)
        {
            RC6=0;RC7=0;
            count2=0;
            start_func(0xC0);
            display("M2:Stopped       ");
            while(RB2==1);
        }
    }
    return;
}

