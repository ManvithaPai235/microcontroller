	AREA prg3,CODE,READONLY
START
	MOV R0,#1 ; First number
	MOV R1,#1 ; Second number
	MOV R2,#1 ; Third number
	MOV R3,#1 ; Fourth number
	MOV R4,#1 ; Fifth number
	
	MOV R5,#1 ; Initialize sum
	
	MUL R6,R0,R0 ; Square 1
	ADD R5,R5,R6 ; Add to sum
	
	MUL R6,R1,R1 ; Square 2
	ADD R5,R5,R6 ; Add to sum
	
	MUL R6,R2,R2 ; Square 3
	ADD R5,R5,R6 ; Add to sum
	
	MUL R6,R3,R3 ; Square 4
	ADD R5,R5,R6 ; Add to sum
	
	MUL R6,R4,R4 ; Square 5
	ADD R5,R5,R6 ; Add to sum 
	             ; R5 now contains the sum of squares 
HERE B HERE
    END