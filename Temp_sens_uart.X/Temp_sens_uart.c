/*
 * File:   Temp_sens_uart.c
 * Author: ASUS
 *
 * Created on September 20, 2024, 9:04 AM
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
void uart_tx(unsigned char a);
void delay(long j);
int adc,result,temp=0;
void main(void) 
{
    TRISA=0x01;
    TRISC=0x00;
    TXSTA=0x24;
    RCSTA=0x90;
    SPBRG=129;
    ADCON0=0X01;
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
        sprintf(cnv,"temp=%d\r\n",result);
        if(temp!=result)
        {
            for(int i=0;cnv[i]!=0;i++)
            {
                uart_tx(cnv[i]);
            }
            temp=result;
        }
        
    }
    return;
}
void cmd(unsigned char a)
{
    RC0=0;
    RC1=0;
    PORTD=a;
    RC2=1;
    delay(5000);
    RC2=0;
    delay(5000);
}
void data(unsigned char a )
{
    RC0=1;
    RC1=0;
    PORTD=a;
    RC2=1;
    delay(5000);
    RC2=0;
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
void uart_tx(unsigned char a)
{
    while(TXIF==0);
    TXIF=0;
    TXREG=a;
}
