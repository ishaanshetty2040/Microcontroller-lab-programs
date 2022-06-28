	area c2batch, code, readonly
	entry
	mov r0, #1;	odd numbers
	mov r1, #0; counter
	mov r2, #1; sum
	
ne	add r1,r1,#1
	add r0,r0,#2
	add r2,r2,r0
	cmp r1,#9
	bne ne
stop 	b	stop
	end