#Laboratory Exercise 5, Assignment 2
.data
text1: .asciiz "The sum of "
text2: .asciiz " and "
text3: .asciiz " is "
.text
	addi $s0, $zero, 8
	addi $s1, $zero, 10
	add $s2, $s0, $s1
	li $v0, 4
	la $a0, text1
	syscall
	li $v0, 1
	la $a0, ($s0)
	syscall
	li $v0, 4
	la $a0, text2
	syscall
	li $v0, 1
	la $a0, ($s1)
	syscall
	li $v0, 4
	la $a0, text3
	syscall
	li $v0, 1
	la $a0, ($s2)
	syscall