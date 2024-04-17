#Laboratory Exercise 7, Assignment 2
.text
main:
	li $a0, 10		# Load test input
	li $a1, 35
	li $a2, 20
	jal max			# Call max procedure
	nop
endmain:
	add $s0, $v0, $zero
	li $v0, 10
	syscall
max:
	add $v0, $a0, $zero	# Copy a0 in v0
	sub $t0, $a1, $v0	# Compute a1 - v0 = t0
	bltz $t0, okay		# If t0 < 0 => okay
	nop
	add $v0, $a1, $zero	# else a1 is the largest thus far
okay:
	sub $t0, $a2, $v0	# Compute a2 - v0 = t0
	bltz $t0, done		# If t0 < 0 => no change
	nop
	add $v0, $a2, $zero	# Else a2 is the largest overall
done:
	jr $ra			# Return to calling program