.data
space: .asciiz " "
input1: .asciiz "Nhap n: "
input2: .asciiz "Nhap m: "
.text
main:
	li $v0, 4
	la $a0, input1
	syscall
	li $v0,5 		# Enter n
	syscall
	addi $t0, $v0, 0 	# t0 = i = n
	li $v0, 4
	la $a0, input2
	syscall
	li $v0,5 		# Enter m
	syscall
	addi $t1, $v0, 0 	# t1 = m 
loop:
	slt $t2, $t1, $t0	# if m < n => t2 = 1
	bnez $t2,Done  		# if t2 = 1 => Done
	add $a0, $t0, 0		# a0 = i
	jal nguyen_to		# jump and link to nguyen_to 
	add $t0, $t0, 1		# i++
	j loop			# jump to loop
end_main:
#----------------------------------------------------------------
# function nguyen_to : print if a number ís a prime number
# param[in] : $a0 : The number want to check
#----------------------------------------------------------------
nguyen_to:
	slti $t3, $a0, 2	# i < 2 => t3 = 1
	bnez $t3, end_nguyen_to # if t3 = 1 => end_nguyen_to
	li $t4, 2		# j = 2
loop2: 
	bge $t4, $a0, end_loop2 # if j >= i => end_loop2
	div $a0, $t4		
	mfhi $s0		# s0 = i%j
	beqz $s0, end_nguyen_to # if s0 == 0 => end_nguyen_to
	addi $t4, $t4, 1	# j++
	j loop2			# continue loop
end_loop2:
print: 
	li $v0, 1		# print the prime number
	addi $a0, $a0, 0
	syscall
	li $v0, 4
	la $a0, space
	syscall
end_nguyen_to:
	jr $ra
Done:
	li $v0, 10		# exit
	syscall
