	AREA prg6, CODE, READONLY
START
	MOV R0,#0xF3 ;  Load the number
	MOV R1,#0 ; Set count to 0
count_bits
	AND R2,R0,#1 ; Get last bit
	CMP R2,#1 ; Check if it is 1
	BEQ increment ; If yes,add to count
	B shift_right ; If no,move to next bit
increment
	ADD R1,R1,#1 ; Increment count
shift_right
	MOV R0,R0,LSR #1 ; Shift right to next bit
	CMP R0,#0 ; Check if number is 0
	BNE count_bits ; If not,repeat
here B here ; Stop
	END