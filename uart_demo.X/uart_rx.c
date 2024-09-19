/*
 * File:   uart_rx.c
 * Author: ASUS
 *
 * Created on August 21, 2024, 9:28 AM
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
}void uart_tx(unsigned char a)
{
  
    TXREG=a;
    while(TXIF==0);
    TXIF=0;
}

char uart_rx()
{
    while(RCIF==0);
    RCIF=0;
    return (RCREG);
}

void data(unsigned char a)
{
    RC0=1; //RS=0
    RC1=0;
    PORTD=a;
    RC2=1;
    for(int i=0;i<=1000;i++);
    RC2=0;
    //for(int i=0;i<=5000;i++);
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
    TRISC=0x80;
    TRISD=0x00;
    
    TXSTA=0x24;
    RCSTA=0x90;
    SPBRG=129;
    
    ADCON1=0X0F;
    TRISB=0xF0;
    TRISA=0x00;
    
    start_func(0x01);
    start_func(0x0f);
    start_func(0x38);
    start_func(0x06);
    char a;
    
    while(1)
    {
    
        a=uart_rx();
        data(a);
    
    }
    
    return;
}
