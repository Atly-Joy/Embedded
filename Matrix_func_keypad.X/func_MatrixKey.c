/*
 * File:   func_MatrixKey.c
 * Author: ASUS
 *
 * Created on August 13, 2024, 9:22 AM
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
    int count=0;
    while(1)
    {
        PORTB=0X0E;
        if(RB4==0)
        {
            return '7';
        }
        if(RB5==0)
        {
            return '8';
        }
        else if(RB6==0)
        {
            return '9';
        }
        else if(RB7==0)
        {
            start_func(0x10);
            data(' ');
            start_func(0x10);
            count++;
        }
        PORTB=0X0D;
        if(RB4==0)
        {
            return '4';
        }
        else if(RB5==0)
        {
            return '5';
        }
        else if(RB6==0)
        {
            return '6';
        }
        /*else if(RB7==0)
        {
            return 'p';
        }*/
        PORTB=0X0B;
        if(RB4==0)
        {
            return '1';
        }
        else if(RB5==0)
        {
            return '2';
        }
        else if(RB6==0)
        {
            return '3';
        }
        /*else if(RB7==0)
        {
            return 'C';
        }*/
       PORTB=0X07;
       if(RB4==0)
        {
           start_func(0x0f);//cursor and LCD On
           start_func(0x80);
           display("ENTER PASSWORD");
           start_func(0xc0);
    
        }
        if(RB5==0)
        {
            return '0';
        }
        else if(RB6==0)
        {
            start_func(0x01);//clear
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
    char pass[]="1234",inp[]="0000",m;
    int k;
    start_func(0x38);
    while(1)
    {
        for(k=0;k<4;k++)
        {
            m=keypad();
            inp[k]=m;
            while(RB4==0 || RB5==0 || RB6==0 || RB7==0 );
            if(k==3)
            {
                if(strcmp(inp,pass)==0)
                {
                    start_func(0x01);
                    start_func(0x80);
                    display("Correct Password");
                    delay(5000);
                }
                else
                {
                    start_func(0x01);
                    start_func(0x80);
                    display("Wrong Password");
                    delay(5000);  
                }
            }
            data(m);
            if(m=='G')
            {
                start_func(0x01);
                start_func(0x80);
                display("Enter new pass");
                start_func(0xC0);
                for(int i=0;i<4;i++)
                {
                    m=keypad();
                    data(m);
                    pass[i]=m;
                    while(RB4==0 || RB5==0 || RB6==0 || RB7==0 );
                }
                start_func(0x01);
                display("pass set");
                delay(50000);
            }
            //keypad();
        }
    }
    return;
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