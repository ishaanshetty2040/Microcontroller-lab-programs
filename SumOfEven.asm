		area sum_of_even,code,readonly
		ENTRY
		MOV R0,#0;even numbers
		MOV R1,#0;counter
		MOV R2,#0;sum
NE
		ADD R1,R1,#1
		ADD R0,R0,#2
		ADD R2,R2,R0
		CMP R1,#5
		BNE NE
STOP	B	STOP
		END
		