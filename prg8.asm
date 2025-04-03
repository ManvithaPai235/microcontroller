	AREA prg8, CODE, READONLY
START
	LDR r1,=0x40000000 ; Load base memory address into r1
	LDR r5,[r1] ; Load value at 0x40000000 into r5
	LDR r6,[r1,#4] ; Load value at 0x40000004 into r6
	LDR r7,[r1,#8] ; Load value at 0x40000008 into r7
	ADD r2,r5,r6 ; r2=r5+r6(10+20=30)
	SUB r2,r2,r7 ; r2=r2-r7(30-30=0)
HERE B HERE
    END