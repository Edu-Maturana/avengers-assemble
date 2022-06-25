.global _start
_start:
	LDR R0,=rut
	LDR R1,[R0]
	ADD R2,R2,R1
	
.data
rut:
	.word 2,1,0,6,8,3,1,7