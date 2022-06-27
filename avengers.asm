.global _start

_start:
	mov r0, #1 @3 6
	mov r1, #3 @2 2
	mov r2, #9 @7 14
	mov r3, #9 @6 42
	mov r4, #6 @5 45
	mov r5, #7 @4 0
	mov r6, #7 @3 6
	mov r7, #6 @2 0
	
	mov r9,#2

	mul r8, r7,r9
	add r10,r8
	mov r9,#3

	mul r8, r6,r9
	add r10,r8
	mov r9,#4

	mul r8, r5,r9
	add r10,r8
	mov r9,#5

	mul r8, r4,r9
	add r10,r8
	mov r9,#6

	mul r8, r3,r9
	add r10,r8
	mov r9,#7

	mul r8, r2,r9
	add r10,r8
	mov r9,#2

	mul r8, r1,r9
	add r10,r8
	mov r9,#3

	mul r8, r0,r9
	add r10,r8
	
	mov r9,#11
	@r11 = 115
	mov r11,r10
	loop:
		sub r10, r10,r9
		cmp r10, #0
		blt fin
		add r12, r12, #1
		bge loop

	fin:
	
	mul r1, r12,r9 @ 110
	
	sub r8, r11,r1
	
	sub r7, r9,r8
	
	cmp r7,#11
	moveq r7,#0
	
	cmp r7,#10
	moveq r7,#75
	