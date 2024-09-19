/*
 * File:   ADC.c
 * Author: ASUS
 *
 * Created on September 4, 2024, 9:57 AM
 */


#include <xc.h>
#include <stdio.h>
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
    TRISC=0x00;
    TRISD=0x00;
    start_func(0x01);//clear
    start_func(0x0C);//cursor and LCD On
    ADCON0=0x01;//channel select(analog pin)
    ADCON1=0x00;
    ADCON2=0x86;
    //ADFM=1;
    while(1)
    {
        int adc;//char size=8, integer size=16 we require 10bit thats why we chose int.
        char cnv[15];//adc value convert by sprintf and it store in this array. int to string
        GO=1;
        while(ADIF==0);
        ADIF=0;
        adc=ADRES;
        sprintf(cnv,"ADC value %4d",adc);
        start_func(0x80);
        display(cnv);
        
    }
}        

