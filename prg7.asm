	AREA prg7, CODE, READONLY ; Define a code section named "Demo" as read-only
ENTRY
    LDR R0,=0x10 ; Load the immediate value 0x10 into register R0
	MSR CPSR_c,R0 ; Move the value in R0 to the CPSR(changing processor mode)
	MRS R1,CPSR ; Move the current CPSR value into R1(read status register)
	MOV R2,R1 ; Copy the CPSR value from R1 to R2
HERE B HERE ; Infinite loop to halt execution
    END ; End of the project