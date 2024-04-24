.data
message1: .asciiz "The digit degree of "
message2: .asciiz " is "
message3: .asciiz "The input number is not a positive integer"
.text
main:
	li $v0, 5		# Input n
	syscall
	bltz $v0, warning	# If input < 0 => warning
	add $t0, $zero, $v0 	# t0 = n
	add $s1, $zero, $v0
	addi $s0, $zero, 0 	# Count = 0
while:
	slti $t1, $t0, 10 	# If n < 10 => t1 = 1
	bnez $t1, print 	# If t1 == 1 => Print count
	add $a0, $zero, $t0 	# m = a0 = n = input of sumDigit
	jal sumDigit 		# Else call sumDigit
	add $t0, $zero, $v0 	# n = sumDigit(n)
	addi $s0, $s0, 1 	# Count++
	j while
end_while:
print:
	li $v0, 4
	la $a0, message1
	syscall
	li $v0, 1		# Print count
	add $a0, $zero, $s1
	syscall
	li $v0, 4
	la $a0, message2
	syscall
	li $v0, 1		# Print count
	add $a0, $zero, $s0
	syscall
	li $v0, 10 		# Exit
	syscall 
end_main:
#----------------------------------------------------------------
# function sumDigit : calculate sum of a digit of a number
# param[in] : $a0 : The number want to calculate sum digit
# return : $v0 : Sum digit
#----------------------------------------------------------------
sumDigit:
	addi $v0, $zero, 0 	# Sum = 0
loop:
	sgt $t2, $a0, $zero 	# If m > 0 => t2 = 1
	beqz $t2, end_loop 	# If t2 = 0 => end_loop
	addi $t3, $zero, 10 
	div $a0, $t3		# m/10
	mflo $a0		# m = m/10
	mfhi $t4		# t4 = m%10 = digit
	add $v0, $v0, $t4 	# Sum += digit
	j loop
end_loop:
	jr $ra
warning:
	li $v0, 4
	la $a0, message3
	syscall
	j main
	
	
	
	 
