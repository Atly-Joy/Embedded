/*
 * File:   HW_lcd_motor_button.c
 * Author: ASUS
 *
 * Created on September 26, 2024, 11:40 AM
 */


#include <xc.h>
void cmd(unsigned char a );
void data(unsigned char a );
void display(const char *p);
void delay(long j);
void main(void)
{
    TRISC=0x00;
    TRISD=0x00;
    TRISB=0xFF;
    int count=0;
    while(1)
    {
        if(RB2==1 && count==0)
        {
            RC2=1; RC3=0;
            count=1;
            cmd(0x01);//clear
            cmd(0x0f);//cursor and LCD On 
            display("Clockwise");
            delay(300000);
            while(RB2==0);
        }
        else if(RB2==1 && count==1)
        {
            RC2=0;RC3=1;
            count=2;
            cmd(0x01);
            cmd(0x0f);
            //cmd(0xc0);
            display("Anticlockwise");
            delay(300000);
            while(RB2==0);
        }
        else if(RB2==1 && count==2)
        {
            RC2=0;RC3=0;
            count=0;
            cmd(0x01);
            cmd(0x0f);
            display("Stopped");
            delay(300000);
            while(RB2==0);
        }
    }
    return;
}


void cmd(unsigned char a )
{
    RC0=0;
    PORTD=a;
    RC1=1;
    for(int i=0;i<=1000;i++);
    RC1=0;
    for(int i=0;i<=5000;i++);
}
void data(unsigned char a )
{
    RC0=1;
    PORTD=a;
    RC1=1;
    for(int i=0;i<=1000;i++);
    RC1=0;
    for(int i=0;i<=5000;i++);
}

void display(const char *p)
{
    while(*p)
    {
        data(*p);
        p++;
    }
}
void delay(long j)
{
    for(long i=0;i<=j;i++);
}