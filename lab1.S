.global lab1
.syntax unified
lab1:
	push {lr}
	mov r0, #4        /*a*/
	mov r1, #2        /*b*/
	mov r2, #4        /*c*/
	mov r3, #1 
	
	add r0, r1        /* a+b */
	lsr r0, r0, #1    /* (a+b)/ 2*/ 
	
	bl fact
	pop {pc}
fact:
	push {r2, r3, lr}
	cmp r2, 1
	ITTTE GE
	mulGE r4, r3, r2
        movGE r3, r4
        subGE r2, r2, #1
	bLT end
	b fact
	pop {r2, r3, pc}
end:
	add r0, r0, r3
	bx lr

