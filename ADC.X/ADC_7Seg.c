/*
 * File:   ADC_7Seg.c
 * Author: ASUS
 *
 * Created on September 6, 2024, 9:33 AM
 */


#include <xc.h>
#include<stdio.h>
unsigned char seg[10]={~0X3F,~0X06,~0X5B,~0X4F,~0X66,~0X6D,~0X7D,~0X07,~0X7F,~0X67};
unsigned char port[4]={~0x0E,~0x0D,~0x0B,~0x07};
void delay(long j)
{
    for(long i=0;i<=j;i++);
}
void segment(char s)
{
    switch(s)
    {
        case ' ' : PORTC=seg[0];
                break;
        case '0' : PORTC=seg[0];
                break;
        case '1' : PORTC=seg[1];
                break;
        case '2' : PORTC=seg[2];
                break;
        case '3' : PORTC=seg[3];
                break;
        case '4' : PORTC=seg[4];
                break;
        case '5' : PORTC=seg[5];
                break;
        case '6' : PORTC=seg[6];
                break;
        case '7' : PORTC=seg[7];
                break;
        case '8' : PORTC=seg[8];
                break;
        case '9' : PORTC=seg[9];
                break;
    }
}
void main(void)
{
    TRISC=0x00;
    TRISD=0x00;
    ADCON0=0x01;//channel select(analog pin))
    ADCON1=0x00;
    ADCON2=0x86;
    //ADFM=1;
    while(1)
    {
        int adc;//char size=8, integer size=16 we require 10bit thats why we chose int.
        char cnv[15];//adc value convert by sprintf and it store in this array. int to string
        delay(100);
        GO=1;
        while(ADIF==0);
        ADIF=0;
        adc=ADRES;
        sprintf(cnv,"%4d",adc);
        for(int i=0;i<100;i++)
        {
            for(int i=0;i<4;i++)
            {
                PORTD=port[i];
                segment(cnv[i]);
                delay(1000);
            }
        }
        
    }
    return;
}  
