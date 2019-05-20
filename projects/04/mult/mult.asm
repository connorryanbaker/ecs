// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
	@0 //sets A Register to value = R[0]
	D=M //sets D Register to A register
(LOOP)
	D=M+M //sets D Register to D + D
	@2 //sets A Register to value of R[2]
	M=D //sets A Register to D Register
	@1 //sets A Register to R[1]
	M=M-1 //Decrements A Register by 1
	@END
	D;JGT
	@r2
	M=M+R0
	@LOOP
	0;JMP
(END)
	@END
	0;JMP       
	
