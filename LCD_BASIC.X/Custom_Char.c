/*
 * File:   Custom_Char.c
 * Author: ASUS
 *
 * Created on August 8, 2024, 8:08 PM
 */


#include <xc.h>
char atly0[]={ 0x00, 0x0D, 0x12, 0x15, 0x15, 0x12, 0x00, 0x00 };
char atly1[]={ 0x00, 0x11, 0x0A, 0x05, 0x05, 0x05, 0x00, 0x00 };
char atly2[]={ 0x00, 0x08, 0x14, 0x0A, 0x0A, 0x12, 0x04, 0x08 };
char atly3[]={ 0x00, 0x00, 0x00, 0x0E, 0x11, 0x11, 0x0A, 0x00 };
char atly4[]={ 0x09, 0x06, 0x00, 0x0E, 0x11, 0x11, 0x0A, 0x00 };
char atly5[]={ 0x01, 0x02, 0x19, 0x19, 0x11, 0x1F, 0x00, 0x00 };
char atly6[]={ 0x10, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00 };
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
void write_char0()
{
    start_func(64);
    for(int i=0;i<8;i++)
    {
        data(atly0[i]);
    }
    start_func(0x80);
    data(0);
    start_func(72);
    for(int i=0;i<8;i++)
    {
        data(atly1[i]);
    }
    start_func(0x81);
    data(1);
    start_func(80);
    for(int i=0;i<8;i++)
    {
        data(atly2[i]);
    }
    start_func(0x82);
    data(2);
    start_func(88);
    for(int i=0;i<8;i++)
    {
        data(atly3[i]);
    }
    start_func(0x83);
    data(3);
    start_func(96);
    for(int i=0;i<8;i++)
    {
        data(atly4[i]);
    }
    start_func(0x84);
    data(4);
    start_func(104);
    for(int i=0;i<8;i++)
    {
        data(atly5[i]);
    }
    start_func(0x85);
    data(5);
    start_func(112);
    for(int i=0;i<8;i++)
    {
        data(atly6[i]);
    }
    start_func(0x86);
    data(6);
    
}
/*void write_char1()
{
    start_func(0x48);
    for(int i=0;i<8;i++)
    {
        data(atly1[i]);
    }
    start_func(0x01);
    data(0x01);
}
void write_char2()
{
    start_func(0x56);
    for(int i=0;i<8;i++)
    {
        data(atly2[i]);
    }
    start_func(0x01);
    data(0x02);
}*/

void main(void) 
{
    //char m;
    TRISC=0X00;
    TRISD=0x00;
    PORTC=0xff;
    PORTD=0xff;
    start_func(0x38);
    start_func(0x0C);
    while(1)
    {
        write_char0();
        //write_char1();
        //write_char2();
        
    }
    return;
}