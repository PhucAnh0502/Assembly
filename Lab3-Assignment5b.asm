#Laboratory Exercise 3, assignment 5b
.data
arr: .word 1,0,3,4,5,6
n: .word 6

.text
	addi $s5, $zero, 0	# sum = 0
	addi $s1, $zero, 0 	# i = 0
	addi $s3, $zero, 6 	# n=6
	la $s2, arr 		#Load array
	addi $s4, $zero, 1 	#step = 1
loop: 
	slt $t2, $s3, $s1 	# $t2 = i > n ? 1 : 0
	beq $t2, $zero, endloop #branch to endloop if i<=n 
	add $t1, $s1, $s1 	# $t1 = 2 * $s1
	add $t1, $t1, $t1 	# $t1 = 4 * $s1
	add $t1, $t1, $s2 	# $t1 store the address of A[i]
	lw $t0, 0($t1)		# load value of A[i] in $t0
	add $s5, $s5, $t0 	# sum = sum + A[i]
	add $s1, $s1, $s4 	# i = i + step
	j loop 			# goto loop
endloop: