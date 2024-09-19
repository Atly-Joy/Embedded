#include <xc.h>

void main(void) 
{
    TRISC=0x00;   
    TRISD=0x00;
    while(1)
    {
        for(long j=1;j<=255;j=((j*2)+1))
        {
            PORTC=j;
            for(unsigned long i=0;i<30000;i++);
        }
        for(long k=1;k<=255;k=((k*2)+1))
            {
                PORTD=k;
                for(unsigned long i=0;i<30000;i++);
            }
        PORTD=0x00;
        for(long k=255;k>0;k=k/2)
            {
                PORTD=k;
                for(unsigned long i=0;i<30000;i++);
            }
        for(long j=255;j>0;j=j/2)
        {
            PORTC=j;
            for(unsigned long i=0;i<30000;i++);
        }
        PORTC=0x00;
    }
    return;
}
