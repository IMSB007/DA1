;
; AssemblerApplication2.asm
;
; Created: 2018/2/23 14:22:59
; Author : Administrator
;


; Replace with your application code
.org 0
.equ STARTADDS=0x0222

ldi r24, 0
ldi r25, 30
ldi r21, 10
ldi xl,low(STARTADDS)
ldi xh,high(STARTADDS)
ldi yl,low(0x0400)
ldi yh,high(0x0400)
ldi zl,low(0x0600)
ldi zh,high(0x0600)
loop:
 add R24, xl
 adc R24, xh
 st x+,r24
 rjmp start_mod5
divisible:
 st y, R24
 ld r2,y+
 add r17,r2
 adc r16,r0
 rjmp next
not_divisible:
 st z,r24
 ld r3,z+
 add r19,r3
 adc r18,r0
 
next:
 dec r25
 cpi r25,0x0
 brne loop
 dec r21 
 ldi r25,30
 cpi r21,0
 brne loop
 
end:
 rjmp end
start_mod5:
ldi r23, 0
add r23,r24
mod5:

	SUBI R23,5
	CPI R23,0
	
	BREQ divisible
	BRGE mod5
	BRLT not_divisible
	




