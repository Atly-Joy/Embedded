/*
 * File:   Temp_Adc.c
 * Author: ASUS
 *
 * Created on September 25, 2024, 12:10 PM
 */


#include <xc.h>
#include<stdio.h>
#define output_start 0
#define output_end 150ul
#define input_end 308ul
#define input_start 0

void cmd(unsigned char a);
void data(unsigned char a);
void display(const char *p);
void delay(long j);
int adc,result,temp=0;
void main(void) 
{
    TRISA=0x02;
    TRISC=0x00;
    TRISD=0x00;
    cmd(0x01);
    cmd(0x0f);
    ADCON0=0X05;
    ADCON1=0X00;
    ADCON2=0x86;
    while(1)
    {
       
        char cnv[15];
        delay(100);
        GO=1;
        while(ADIF==0);
        ADIF=0;
        adc=ADRES;
        result = output_start + ((float)(output_end - output_start) / (input_end - input_start)) * (adc - input_start);
        sprintf(cnv,"temp=%4d",result);
        if(temp!=result)
        {
            cmd(0x80);
            display(cnv);
            temp=result;
        }
    }
    return;
}
void cmd(unsigned char a)
{
    RC0=0;
    PORTD=a;
    RC1=1;
    delay(5000);
    RC1=0;
    delay(5000);
}
void data(unsigned char a )
{
    RC0=1;
    PORTD=a;
    RC1=1;
    delay(5000);
    RC1=0;
    delay(5000);
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