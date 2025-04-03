	AREA prg10, CODE, READONLY ; Define a read-only code section named EXAMPLE
START
	LDR R9,=0x40000000 ; Load starting source address into R9
	LDR R11,=0x40000000 ; Load ending address(stop condition)into R11
	LDR R10,=0x40000400 ; Load destination address into R10
LOOP
	LDMIA R9!,{R0-R7} ; Load multiple registers {R0-R7} from source {increment R9}
	STMIA R10!,{R0-R7} ; Store multiple registers {R0-R7} to destination {increment R10}
	CMP R9,R11 ; Compare current address in R9 with stop address
	BNE LOOP ; If not equal,continue loopong
	BX LR ; Return from subroutine
	END ; Mark end of the program
	