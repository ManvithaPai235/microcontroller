	AREA FIBONACCI,CODE,READONLY
START
	LDR R0,=0X40000000 ; Load base address(memory location)into R0
	MOV R1,#0 ; Initilize first Fibonacci number (F0=0)
	MOV R2,#1 ; Initialize second Fibonacci number (F1=1)
	MOV R5,#0x0A ; Set loop counter to 10 (generate 10 Fibonacci numbers)
	STRB R1,[R0] ; Store F0 at memory location
	STRB R2,[R0,#1] ; Store F1 at the next memory location
LOOP
	ADD R3,R2,R1 ; Compute next Fibonacci number : R3=R2+R1
	MOV R1,R2 ; Update R1 to hold the previous value of R2
	MOV R2,R3 ; Update R2 to hold the new Fibonacci number
	STRB R3,[R0,#1] ; Store the new Fibonacci number in memory
	SUB R5,#1 ; Decrement loop counter 
	CMP R5,#0 ; Check if counter reaches zero
	BNE LOOP ; If not zero,repeat loop
HERE B HERE ; Infinite loop(halt execution)
	END