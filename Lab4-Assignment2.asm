#Laboratory Exercise 4, Assignment 2
.text
	li $s0, 0x22000044 		#load test value for these function
	andi $t0, $s0,  0x000000FF 	#Extract the LSB of $s0
	andi $t1, $s0,  0xFF000000 	#Extract the MSB of $s0
	andi $s0, $s0,  0xFF000000 	#Clear LSB of $s0
	ori $s0, $s0, 0xFF		#Set LSB of $s0 (bits 7 to 0 are set to 1)
	xor $s0,$s0,$s0			#Clear $s0