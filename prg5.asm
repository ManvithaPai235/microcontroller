	AREA prg5, CODE, READONLY
START
	MOV r0,#5 ; Load first number(A=5)into r0
	MOV r1,#10 ; Load second number(B=10)into r1
	           ; Swap r0 and r1 without using a temporary register
	EOR r0,r0,r1 ; r0=r0^r1
	EOR r1,r0,r1 ; r1=r1^r1 (now r1 holds original r0)
	EOR r0,r0,r1 ; r0=r0^r1(now r0 holds original r1)
here b here 
    END