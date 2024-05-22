.data
input_prompt: .asciiz "Enter a string: "
output_prompt: .asciiz "The sorted string is: "
buffer: .space 100  # Allocate space for input buffer

.text

main:
    	# Prompt user for input
    	la $a0, input_prompt
    	li $v0, 4
    	syscall

    	# Read user input
    	la $a0, buffer
    	li $a1, 100
    	li $v0, 8
    	syscall

    	# Sort the string
    	jal sort_string

    	# Print the sorted string
    	la $a0, output_prompt
    	li $v0, 4
    	syscall

    	la $a0, buffer
    	li $v0, 4
    	syscall

    	# Exit the program
    	li $v0, 10
    	syscall

sort_string:
    	# Initialize pointers and counter
    	la $t0, buffer    # $t0 = address of input buffer
    	li $t1, 1         # $t1 = i
    	li $t2, 0         # $t2 = j
    	li $t3, 0         # $t3 = length of the string
	li $t6, 0	  # $t6 = key
    	# Get length of input string
    	la $t4, buffer
str_len_loop:
    	lb $t5, ($t4)     # Load a byte from the buffer
    	beqz $t5, end_str_len_loop  # If it's null (end of string), exit loop
    	addi $t4, $t4, 1  # Increment buffer address
    	addi $t3, $t3, 1  # Increment length counter
    	j str_len_loop
end_str_len_loop:
    	addi $t3, $t3, -1

outer_loop:
	bge $t1, $t3, end_outer_loop # i >= length => end
	add $t4, $t0, $t1 # $t4 = address arr[i]
	lb $t5, 0($t4) # $t5 = arr[i]
	addi $t6, $t5, 0 # key = arr[i]
	addi $t2, $t1, -1 # j = i - 1
inner_loop:
	bltz $t2, end_inner_loop
	add $t7, $t2, $t0 # $t7 = address arr[j]
	lb $t8, 0($t7) # $t8 = arr[j]
	ble $t8, $t6, end_inner_loop # arr[j] <= key => end inner loop
	lb $t9, 1($t7) # $t9 = arr[j+1]
	addi $t9, $t8, 0 # arr[j+1] = arr[j]
	addi $t2, $t2, -1
	j inner_loop 
end_inner_loop:
	addi $t9, $t6, 0 # arr[j + 1] = key
	addi $t1, $t1, 1 # i++
	j outer_loop
end_outer_loop:
    	jr $ra  # Return from the sort_string function
