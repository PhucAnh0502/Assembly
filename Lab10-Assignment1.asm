.eqv SEVENSEG_LEFT 0xFFFF0011  	# Dia chi cua LED 7 doan trai
.eqv SEVENSEG_RIGHT 0xFFFF0010 	# Dia chi cua LED 7 doan phai

.text
main:
	li $a0, 0x3f 		# Set value for segment
	jal SHOW_7SEG_LEFT 	# Show
	nop
	li $a0, 0x6f		# Set value for segment
	jal SHOW_7SEG_RIGHT 	# Show
	nop
	li $a0, 0x7f		# Set value for segment
	jal SHOW_7SEG_RIGHT 	# Show
	nop
	li $a0, 0x07		# Set value for segment
	jal SHOW_7SEG_RIGHT 	# Show
	nop
exit:
	li $v0, 10
	syscall
endmain:
SHOW_7SEG_LEFT:
	li $t0, SEVENSEG_LEFT 	# Assign port's address
	sb $a0, 0($t0) 		# Assign new value
	nop
	jr $ra
	nop
SHOW_7SEG_RIGHT:
	li $t0, SEVENSEG_RIGHT 	# Assign port's address
	sb $a0, 0($t0) 		# Assign new value
	nop
	jr $ra
	nop
	