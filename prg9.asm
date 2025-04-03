	AREA prg9, CODE, READONLY ; Define a code section named EXAMPLE1,marked s read-only
START
	LDR R0,=0x0000000 ; Load immediate value 0x0000000 into register R0
	LDR R1,=0x11112222 ; Load immediate value 0x11112222 into register R1
	LDR R2,=0x4000000; Load immediate value 0x4000000 into register  R2(assumed memory address)
	SWP R0,R1,[R2] ; Swap the value at memory address [R2] with R1 and store old value in R0
HERE B HERE ; Infinite loop to halt execution
END ; Mark the end of the program
		