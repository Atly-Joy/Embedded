/*
 * File:   ADC_2Channel.c
 * Author: ASUS
 *
 * Created on September 6, 2024, 9:13 AM
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
    delay(100);
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
    delay(100);//enable execution delay
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
    start_func(0x38);
    ADCON1=0x00;
    ADCON2=0x86;
    //ADFM=1;this avoided because this value is setting in ADCON2
    while(1)
    {
        int adc1,adc2;//char size=8, integer size=16 we require 10bit thats why we chose int.
        char cnv1[15],cnv2[15];//adc value convert by sprintf and it store in this array. int to string
        ADCON0=0x01;//channel select(analog pin))
        delay(100);
        GO=1;
        while(ADIF==0);
        ADIF=0;
        adc1=ADRES;
        sprintf(cnv1,"ADC value1= %4d",adc1);
        start_func(0x80);
        display(cnv1);
        ADCON0=0x05;//channel select(analog pin)
        delay(100);
        GO=1;
        while(ADIF==0);
        ADIF=0;
        adc2=ADRES;
        sprintf(cnv2,"ADC value2= %4d",adc2);
        start_func(0xC0);
        display(cnv2);
        
    }
    return;
}
