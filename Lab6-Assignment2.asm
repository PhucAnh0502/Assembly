#Laboratory Exercise 6, Assignment 2
.data
space: .asciiz " "
A: .word 7, -2, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
Aend: .word
length: .word 13
.text
main:
	la $a0, A		# $a0 = Address(A[0])
	la $a1, Aend
	addi $a1, $a1, -4	# $a1 = Address(A[n-1])
	j sort			# sort
after_sort:
	la $a3, A		# load the address of array into $a0
	lw $a1, length		# load the length of the array into $a1
print_loop:
	lw $t0, 0($a3) 		# load the current element into $t0
	li $v0, 1		# print the current element
	move $a0, $t0
	syscall
	li $v0, 4		# print a space
	la $a0, space
	syscall
	addiu $a3, $a3, 4	# move to the next element
	addiu $a1, $a1, -1	# decrement the length
	bgtz $a1, print_loop	# if length > 0, repeat the loop
	li $v0, 10		# exit
	syscall		
end_main:		
sort: 
	beq $a0, $a1, done	# single element list is sorted
	j max			# call the max procedure
after_max: 
	lw $t0, 0($a1)		# load last element into $t0
	sw $t0, 0($v0)		# copy last element to max location 
	sw $v1, 0($a1)		# copy max value to last element
	addi $a1, $a1, -4	# decrement pointer to last element
	j sort			# repeat sort for smaller list
done: j after_sort
max:
	addi $v0, $a0, 0	# init max pointer to first element
	lw $v1, 0($v0)		# init max value to first value
	addi $t0, $a0, 0	# init next pointer to first 
loop:
	beq $t0, $a1, ret 	# if next = last, return
	addi $t0, $t0, 4	# advance to next element 
	lw $t1, 0($t0)		# load next element into $t1
	slt $t2, $t1, $v1	# (next) < (max), repeat
	bne $t2, $zero, loop	# next element is new max element
	addi $v0, $t0, 0	# next value is new max value
	addi $v1, $t1, 0	# change completed; now repeat
	j loop
ret:
	j after_max