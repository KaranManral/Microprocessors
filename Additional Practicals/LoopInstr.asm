org 100H

MOV CX, 63H
MOV AX, 1H
MOV BX, 3H
sum:ADC AX, BX
	ADD BX, 1H;
	LOOP sum