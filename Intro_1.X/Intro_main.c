/*
 * File:   Intro_main.c
 * Author: ASUS
 *
 * Created on July 24, 2024, 9:51 AM
 */


#include <xc.h>
#define _XTAL_FREQ 20000000

void main(void) 
{
    TRISC=0x00;
    PORTC=0xFF;
    return;
}
