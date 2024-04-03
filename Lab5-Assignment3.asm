#Laboratory Exercise 5, Assignment 3
.data
	x: .space 32		# Destination string x, empty
	y: .asciiz "Hello"	# Source string y
.text
	la $a0, x
	la $a1, y
strcpy:
	add $s0, $zero, $zero	# s0 = i = 0
L1:
	add $t1, $s0, $a1	# t1 = s0 + a1 = i + y[0] = address of y[i]
	lb $t2, 0($t1)		# t2 = y[i]
	add $t3, $s0, $a0	# t3 = s0 + a0 = i + x[0] = address of x[i]
	sb $t2, 0($t3)		# x[i] = y[i]
	beq $t2, $zero, END	# If y[i] == 0, exit
	nop
	addi $s0, $s0, 1	# s0 += 1 <=> i += 1
	j L1			# Next character
	nop
END:
	li $v0, 4
	la $a0, x
	syscall