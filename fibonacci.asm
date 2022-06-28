	AREA FIBO,CODE
	LDR R0,=FIBO_TERMS;allocationg some space for R0
	MOV R1,#0;the first number
	MOV R2,#1;the second number
	MOV R3,#8;number of terms in the series
	STRB R1,[R0],#1;the values assigned to R1 is stored in the space in R0, where in offset is given every now and then
	STRB R2,[R0],#1
GEN_NEXT
	ADD R1,R1,R2
	STRB R1,[R0],#1
	EOR R1,R1,R2;XOR operation is used here
	EOR R2,R1,R2;XOR
	EOR R1,R1,R2;XOR
	SUBS R3,R3,#1
	BNE GEN_NEXT
GO  BAL GO
	AREA FIBOTERM,DATA
FIBO_TERMS SPACE 10
	END