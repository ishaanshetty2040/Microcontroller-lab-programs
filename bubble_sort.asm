		AREA ASC,CODE,READONLY
		ENTRY
START
		MOV R1,#4; initialise counter to 4
		LDR R2, =Array;load the address of the first element of the array
		LDR R3, =DST ; Load the address of the first element position of destination
UP
		LDR R4, [R2],#4; load the first element of the array into R4
		STR R4, [R3],#4; STORE the first element to the destinatin region
		SUBS R1,R1,#1; decrement the counter
		CMP R1, #0; compare the counter to 0
		BNE UP; LOOP BACK TILL ARRAY ENDS
		
		MOV R7, #3;(No. of pass is 3)
PASS
		MOV R1,#3; (no. of inner comparisons is 3)
		LDR R0, =DST; load the address of the first element of the memory
COMP
		LDR R2, [R0],#4;load the first number
		LDR R3, [R0]; load the second number
		CMP R2,R3 ;COMPARE TWO NUMBERS
		BLS CHECK; if the firstnumber is lt;then go to Loop2
		
		STR R2, [R0],#-4;Interchange the position of first and second numbers
		STR R3, [R0]
		ADD R0, #4; restore the pointer
CHECK
		SUBS R1,R1,#1; DECREMENT THE COUNTER
		CMP R1, #0;COMPARE COUNTER TO 0
		BNE COMP; LOOP BACK TILL Array ends
		SUBS R7,R7,#1
		CMP R7,#0;CHECK THE FLAG
		BNE PASS
STOP	B STOP
		AREA SRC,DATA,READONLY
Array	DCD 0x33333333, 0x22222222, 0x99999999, 0x55555555
		ALIGN
		
		AREA DST, DATA
		SPACE 10
		ALIGN 
		END
		
		