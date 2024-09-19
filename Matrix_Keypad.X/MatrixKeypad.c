/*
 * File:   MatrixKeypad.c
 * Author: ASUS
 *
 * Created on August 8, 2024, 9:52 AM
 */


#include <xc.h>
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
    ADCON1=0X0F;
    TRISB=0XF0; //1111 0000
    TRISC=0X00;
    TRISD=0x00;
    PORTC=0xff;
    int count=0,count1=0,pwd=5678,pass=0;
    while(1)
    {
        PORTB=0X0E;
        if(RB4==0)
        {
            RC0=1;
            display("7");
            pass=(pass*10)+7;
            while(RB4==0);
        }
        if(RB5==0)
        {
            RC1=1;
            display("8");
            pass=(pass*10)+8;
            while(RB5==0);
        }
        else if(RB6==0)
        {
            RC2=1;
            display("9");
            pass=(pass*10)+9;
            while(RB6==0);
        }
        else if(RB7==0)
        {
            RC3=1;
            start_func(0x10);
            data(' ');
            start_func(0x10);
            count++;
            while(RB7==0);
        }
        PORTB=0X0D;
        if(RB4==0)
        {
            RC4=1;
            display("4");
            pass=(pass*10)+4;
            while(RB4==0);
        }
        else if(RB5==0)
        {
            RC5=1;
            display("5");
            pass=(pass*10)+5;
            while(RB5==0);
        }
        else if(RB6==0)
        {
            RC6=1;
            display("6");
            pass=(pass*10)+6;
            while(RB6==0);
        }
        else if(RB7==0)
        {
            RC7=1;
            start_func(0xC0);
            display("          ");
            if(pass==pwd)
            {
               start_func(0xC0);
               display("CORRECT PASSWORD");
               for(int i=0;i<=10;i++)
               {
                start_func(0x08);
                delay(1000);
                start_func(0x0E);
                delay(1000);
               }
               while(RB7==0); 
            }
            else if(pass!=pwd)
            {
               start_func(0xC0);
               display("WRONG PASSWORD");
               for(int i=0;i<=10;i++)
               {
                start_func(0x08);
                delay(1000);
                start_func(0x0E);
                delay(1000);
               }
               while(RB7==0); 
            }
        }
        PORTB=0X0B;
        if(RB4==0)
        {
            RC0=1;
            display("1");
            pass=(pass*10)+1;
            while(RB4==0);
        }
        else if(RB5==0)
        {
            RC1=1;
            display("2");
            pass=(pass*10)+2;
            while(RB5==0);
        }
        else if(RB6==0)
        {
            RC2=1;
            display("3");
            pass=(pass*10)+3;
            while(RB6==0);
        }
        /*else if(RB7==0)
        {
            RC3=1;
            display("C");
            while(RB7==0);
        }*/
       PORTB=0X07;
       if(RB4==0)
        {
            RC4=1;
            if(count1==0)
            {
                start_func(0x0f);//cursor and LCD On
                start_func(0x01);
                start_func(0x38);
                start_func(0x80);
                display("ENTER PASSWORD");
                count1=1;
                start_func(0xC0);
                while(RB4==0);
            }
            else if(count1==1)
            {
                start_func(0x08);//cursor and LCD Off
                count1=0;
                while(RB4==0);
            }
                
        }
        else if(RB5==0)
        {
            RC5=1;
            display("0");
            pass=(pass*10)+0;
            while(RB5==0);
        }
        else if(RB6==0)
        {
            RC6=1;
            start_func(0x01);//clear
            while(RB6==0);
        }
        /*else if(RB7==0)
        {
            RC7=1;
            display("G");
            while(RB7==0);
        }*/
    }
    return;
}