/*
 * File:   Remote.c
 * Author: ASUS
 *
 * Created on July 30, 2024, 10:22 AM
 */


#include <xc.h>
void delay(unsigned int j)
{
    for(unsigned int i=0;i<=j;i++);
}

void main(void) 
{
    TRISC=0x03;
    TRISD=0x00;
    int flag=0;
    while(1)
    {
        if(RC3==1)
        {
            while(1)
            {
                if(RC3==0)
                {
                    if(flag==0)
                    {
                        PORTD=0xff;
                        flag=1;
                        break;
                    }
                    else if(flag==1)
                    {
                        PORTD=0x00;
                        flag=2;
                        break;
                    }
                    else
                    {
                        do
                        {
                            PORTD=0xFF;
                            delay(30000);
                            PORTD=0x00;
                            delay(30000);
                            flag=1;
                        }while(flag!=1);
                        
                    }
                }
   
            }
        }
        
    }
    return;
}
