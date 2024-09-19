/*
 * File:   keypad_func.c
 * Author: ASUS
 *
 * Created on August 12, 2024, 9:09 AM
 */


#include <xc.h>
#include <string.h>
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
int keypad(void)
{
    while(1)
    {
        PORTB=0X0E;
        if(RB4==0)
        {
            return '1';
        }
        if(RB5==0)
        {
            return '2';
        }
        else if(RB6==0)
        {
            return '3';
        }
        else if(RB7==0)
        {
            return '4';
        }
        PORTB=0X0D;
        if(RB4==0)
        {
            return '5';
        }
        else if(RB5==0)
        {
            return '6';
        }
        else if(RB6==0)
        {
            return '7';
        }
        else if(RB7==0)
        {
            return '8';
        }
        PORTB=0X0B;
        if(RB4==0)
        {
            return '9';
        }
        else if(RB5==0)
        {
            return 'A';
        }
        else if(RB6==0)
        {
            return 'B';
        }
        else if(RB7==0)
        {
            return 'C';
        }
       PORTB=0X07;
       if(RB4==0)
        {
           return 'D'; 
        }
        if(RB5==0)
        {
            return 'E';
        }
        else if(RB6==0)
        {
            return 'F';
        }
        else if(RB7==0)
        {
            return 'G';
        }
    }
}
void main(void) 
{
    ADCON1=0X0F;
    TRISB=0XF0; //1111 0000
    TRISC=0X00;
    TRISD=0x00;
    PORTC=0xff;
    start_func(0x01);
    start_func(0x0f);//cursor and LCD On
    start_func(0x38);
    char pass[]="1234",inp[]="0000";
    unsigned char index=0;

    while(1)
    {
        start_func(0x01);
        display("ENTER PASSWORD");
        start_func(0xc0);
        for(index=0;index<4;index++)
        {
            inp[index]=keypad();
            data(inp[index]);
            while(RB4==0 || RB5==0 || RB6==0 || RB7==0 );
        }
        if(strcmp(inp,pass)==0)
        {
            for(long i=0;i<=100000;i++);
            start_func(0x01);
            display("Password Correct");
            for(int j=0;j<=10;j++)
               {
                start_func(0x08);
                delay(1000);
                start_func(0x0E);
                delay(1000);
               }
            for(long i=0;i<=100000;i++);
        }
        else
        {
            for(long i=0;i<=100000;i++);
            start_func(0x01);
            display("Password Wrong");
            for(int j=0;j<=10;j++)
               {
                start_func(0x08);
                delay(1000);
                start_func(0x0E);
                delay(1000);
               }
            for(long i=0;i<=1000000;i++);
        }
    }
    /*
     * 
     // if return value is not in ' ' then we have to do this
     * but it will only work till 9 after that we have to print A,B..
     * so it will be data(a+65);
     * both will use with switch case
     while(1)
    {
        char a=keypad();
        data(a+48);
        while(RB4==0 || RB5==0 || RB6==0 || RB7==0);
    }
     */
      
    return;
}
