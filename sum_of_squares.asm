		area sumOfEven, code, readonly
		entry
		mov r1, #1; inital value
		mov r2, #0; sum
		mov r3, #0; temp
next	cmp r1, #5
		mul r3, r1, r1
		add r1, r1, #1
		add r2, r2, r3
		bne next
l	b	l
		end