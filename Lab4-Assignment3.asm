#Laboratory Exercise 4, Assignment 3d
.text
	li $t1,0	#Set default status ($s1 > $s2)
	li $s1,4	#$s1 = 4
	li $s2,5	#$s2 = 5
	sub $t0,$s1,$s2 #$t0 = $s1 - $s2
	blez $t0,DO	#branch to DO if $t0 < 0
	j END
DO:	
	li $t1,1	#Set $t1 = 1
END:
