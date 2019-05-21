// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
	@2 // store val of R2 in A register
	M=0 // set it to 0
	@c // initialize counter variable
	M=0 // set it to 0
    (LOOP)
	@c // set A reg to counter
	D=M // set D reg to counter
	@0 // set A reg to R0
	D=D-M // D=c-R0 (this will likely be negative initially)
	@END
	D;JGE // if D (i - R0 >= 0) goto END
	
	@1 // set A reg to val of R1
	D=M // set D reg to val of R1
	@2 // set A reg to val of R2
	M=D+M // set A reg to val of R2+R1
	@c
	M=M+1 // increment counter
	@LOOP
	0;JMP // loop
    (END)
	@END
	0;JMP
		
