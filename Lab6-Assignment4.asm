#Laboratory Exercise 6, Assignment 4
.data
	A: .word 1, 3, -2, 10, 7, 9, 5, 20
	length: .word 8
	space: .asciiz " "
.text
	la $a0, A
	lw $s0, length	# length	
	li $s1, 0	# key = 0
	li $s2, 0	# j = 0	
	li $s3, 1	# i = 1

Loop:	beq $s3, $s0, Exit	# if i = length => Exit
	sll $t0, $s3, 2		# $t0 = 4*i
	add $s4, $a0, $t0	# $s4 = Adress of A[i]
	lw $s1, 0($s4)		# A[i] = key
	addi $s2, $s3, -1	# j = i - 1
While: 	slt $t1, $s2, $zero	# j >= 0 => $t1 = 0 
	sll $t0, $s2, 2		# $t0 = 4*j
	add $s5, $a0, $t0	# $s5 = Address of A[j]
	lw $t3, 0($s5)		# A[j] = t3
	sge $t4, $s1, $t3	# key < A[j] => $t4 = 0
	add $t1, $t1, $t4	
	bne $t1, $zero,  loop_continue # t1 != 0 => loop_continue
	addi $s5, $s5, 4		# $s5 = Address of A[j+1]
	sw $t3, 0($s5)		# A[j+1] = A[j]
	addi $s2, $s2, -1	# j = j - 1
	j While			
loop_continue:
	addi $s5, $s5, 4		# $s5 = Address of A[j+1]
	sw $s1, 0($s5)		# A[j+1] = key
	addi $s3, $s3, 1		# i++
	j Loop
Exit: 	
	la $a3, A  # Load the address of the array into $a3
    	lw $a1, length  # Load the length of the array into $a1

    # Loop to print each element of the array
    loop:
        lw $t0, 0($a3)  # Load the current element into $t0

        # Print the current element
        li $v0, 1
        move $a0, $t0
        syscall

        # Print a space
        li $v0, 4
        la $a0, space
        syscall

        addiu $a3, $a3, 4  # Move to the next element
        addiu $a1, $a1, -1  # Decrement the length
        bgtz $a1, loop  # If length > 0, repeat the loop

    # Exit the program
    li $v0, 10
    syscall

















