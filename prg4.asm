	AREA prg4, CODE,READONLY
START
	MOV R0,#2 ; r0 will be contain the input value
	MOV R1,#2 ; Start divisor
	MOV R2,#1 ; Assume Prime(1=Prime,0=Not Prime)
CHECK
	CMP R1,R0 ; Compare divisor with number
	BGE STOP ; If divisor >= number,stop
	
	MOV R3,R0 ; Copy number to R3
	MOV R4,R3 ; Copy again for subtraction 
SUBTRACT
	SUB R4,R4,R1 ; Subtract divisor from number
	CMP R4,#0
	BGE SUBTRACT ; Keep subtracting if positive
	
	CMP R4,#0
	MOVNE R2,#0 ; If remainder is not zero,move to next divisor
	MOVEQ R2,#0 ; If remainder is zero,number is not prime
	
	ADD R1,R1,#31 ; Increase divisor
	CMP R1,R0
	BLT CHECK ; Repeat checking until divisor reaches number
STOP 
HERE B HERE
	END
	