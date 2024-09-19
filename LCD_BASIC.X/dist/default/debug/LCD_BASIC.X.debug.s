subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18Fxxxx_DFP/1.6.159/xc8\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_cmd
	FNCALL	_main,_display
	FNCALL	_display,_data
	FNROOT	_main
	global	_RC2
_RC2	set	0x7C12
	global	_RC1
_RC1	set	0x7C11
	global	_TRISC
_TRISC	set	0xF94
	global	_RC0
_RC0	set	0x7C10
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTD
_PORTD	set	0xF83
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	104	;'h'
	db	101	;'e'
	db	108	;'l'
	db	108	;'l'
	db	111	;'o'
	db	0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"dist/default/debug\LCD_BASIC.X.debug.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_cmd:	; 1 bytes @ 0x0
??_cmd:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_data:	; 1 bytes @ 0x0
??_data:	; 1 bytes @ 0x0
	global	cmd@a
cmd@a:	; 1 bytes @ 0x0
	global	data@a
data@a:	; 1 bytes @ 0x0
	ds   1
	global	cmd@i
cmd@i:	; 2 bytes @ 0x1
	global	data@i
data@i:	; 2 bytes @ 0x1
	ds   2
	global	cmd@i_49
cmd@i_49:	; 2 bytes @ 0x3
	global	data@i_53
data@i_53:	; 2 bytes @ 0x3
	ds   2
?_display:	; 1 bytes @ 0x5
	global	display@p
display@p:	; 1 bytes @ 0x5
	ds   1
??_display:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
;!
;!Data Sizes:
;!    Strings     6
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      6       6
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    display@p	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_1(CODE[6]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_display
;!    _display->_data
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     271
;!                                _cmd
;!                            _display
;! ---------------------------------------------------------------------------------
;! (1) _display                                              1     0      1     196
;!                                              5 COMRAM     1     0      1
;!                               _data
;! ---------------------------------------------------------------------------------
;! (2) _data                                                 5     5      0      75
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _cmd                                                  5     5      0      75
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _cmd
;!   _display
;!     _data
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      6       6       1        6.3%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBIGSFRh          6A      0       0      16        0.0%
;!BITBIGSFRlh         10      0       0      17        0.0%
;!BITBIGSFRll        282      0       0      18        0.0%
;!ABS                  0      0       0      19        0.0%
;!BIGRAM             5FF      0       0      20        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "LCD_BASIC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_cmd
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"LCD_BASIC.c"
	line	6
global __ptext0
__ptext0:
psect	text0
	file	"LCD_BASIC.c"
	line	6
	
_main:
;incstack = 0
	callstack 29
	line	7
	
l796:
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	movff	(c:3989),(c:3988)	;volatile
	line	10
	
l798:
	movlw	(01h)&0ffh
	
	call	_cmd
	line	11
	
l800:
	movlw	(0Fh)&0ffh
	
	call	_cmd
	line	12
	
l802:
		movlw	low(STR_1)
	movwf	((c:display@p))^00h,c

	call	_display	;wreg free
	goto	l798
	global	start
	goto	start
	callstack 0
	line	15
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_display

;; *************** function _display *****************
;; Defined at:
;;		line 39 in file "LCD_BASIC.c"
;; Parameters:    Size  Location     Type
;;  p               1    5[COMRAM] PTR const unsigned char 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	39
global __ptext1
__ptext1:
psect	text1
	file	"LCD_BASIC.c"
	line	39
	
_display:
;incstack = 0
	callstack 29
	line	41
	
l788:
	goto	l794
	line	43
	
l790:
	movff	(c:display@p),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_data
	line	44
	
l792:
	incf	((c:display@p))^00h,c
	line	41
	
l794:
	movff	(c:display@p),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l790
u60:
	line	46
	
l44:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display
	__end_of_display:
	signat	_display,4217
	global	_data

;; *************** function _data *****************
;; Defined at:
;;		line 28 in file "LCD_BASIC.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMRAM] unsigned char 
;;  i               2    3[COMRAM] int 
;;  i               2    1[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	28
global __ptext2
__ptext2:
psect	text2
	file	"LCD_BASIC.c"
	line	28
	
_data:
;incstack = 0
	callstack 29
	movwf	((c:data@a))^00h,c
	line	30
	
l720:
	bsf	c:(31760/8),(31760)&7	;volatile
	line	31
	bcf	c:(31761/8),(31761)&7	;volatile
	line	32
	
l722:
	movff	(c:data@a),(c:3971)	;volatile
	line	33
	
l724:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	34
	
l726:
	movlw	high(0)
	movwf	((c:data@i+1))^00h,c
	movlw	low(0)
	movwf	((c:data@i))^00h,c
	
l732:
	infsnz	((c:data@i))^00h,c
	incf	((c:data@i+1))^00h,c
	
l734:
	btfsc	((c:data@i+1))^00h,c,7
	goto	u11
	movf	((c:data@i+1))^00h,c,w
	bnz	u10
	movlw	101
	subwf	 ((c:data@i))^00h,c,w
	btfss	status,0
	goto	u11
	goto	u10

u11:
	goto	l732
u10:
	
l35:
	line	35
	bcf	c:(31762/8),(31762)&7	;volatile
	line	36
	
l736:
	movlw	high(0)
	movwf	((c:data@i_53+1))^00h,c
	movlw	low(0)
	movwf	((c:data@i_53))^00h,c
	
l742:
	infsnz	((c:data@i_53))^00h,c
	incf	((c:data@i_53+1))^00h,c
	
l744:
	btfsc	((c:data@i_53+1))^00h,c,7
	goto	u21
	movlw	137
	subwf	 ((c:data@i_53))^00h,c,w
	movlw	19
	subwfb	((c:data@i_53+1))^00h,c,w
	btfss	status,0
	goto	u21
	goto	u20

u21:
	goto	l742
u20:
	line	37
	
l38:
	return	;funcret
	callstack 0
GLOBAL	__end_of_data
	__end_of_data:
	signat	_data,4217
	global	_cmd

;; *************** function _cmd *****************
;; Defined at:
;;		line 18 in file "LCD_BASIC.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMRAM] unsigned char 
;;  i               2    3[COMRAM] int 
;;  i               2    1[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext3
__ptext3:
psect	text3
	file	"LCD_BASIC.c"
	line	18
	
_cmd:
;incstack = 0
	callstack 30
	movwf	((c:cmd@a))^00h,c
	line	20
	
l746:
	bcf	c:(31760/8),(31760)&7	;volatile
	line	21
	bcf	c:(31761/8),(31761)&7	;volatile
	line	22
	
l748:
	movff	(c:cmd@a),(c:3971)	;volatile
	line	23
	
l750:
	bsf	c:(31762/8),(31762)&7	;volatile
	line	24
	
l752:
	movlw	high(0)
	movwf	((c:cmd@i+1))^00h,c
	movlw	low(0)
	movwf	((c:cmd@i))^00h,c
	
l758:
	infsnz	((c:cmd@i))^00h,c
	incf	((c:cmd@i+1))^00h,c
	
l760:
	btfsc	((c:cmd@i+1))^00h,c,7
	goto	u31
	movf	((c:cmd@i+1))^00h,c,w
	bnz	u30
	movlw	101
	subwf	 ((c:cmd@i))^00h,c,w
	btfss	status,0
	goto	u31
	goto	u30

u31:
	goto	l758
u30:
	
l28:
	line	25
	bcf	c:(31762/8),(31762)&7	;volatile
	line	26
	
l762:
	movlw	high(0)
	movwf	((c:cmd@i_49+1))^00h,c
	movlw	low(0)
	movwf	((c:cmd@i_49))^00h,c
	
l768:
	infsnz	((c:cmd@i_49))^00h,c
	incf	((c:cmd@i_49+1))^00h,c
	
l770:
	btfsc	((c:cmd@i_49+1))^00h,c,7
	goto	u41
	movlw	137
	subwf	 ((c:cmd@i_49))^00h,c,w
	movlw	19
	subwfb	((c:cmd@i_49+1))^00h,c,w
	btfss	status,0
	goto	u41
	goto	u40

u41:
	goto	l768
u40:
	line	27
	
l31:
	return	;funcret
	callstack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
	signat	_cmd,4217
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
