#Laboratory Exercise 3, Assignment 4d

.text 
	addi $s2, $zero, 5	#j = 5
	addi $s1, $zero, 5	#i = 5
	addi $s3, $zero, 1	#m = 1
	addi $s4, $zero, 2	#n = 2
	start: 
		add $t0,$s1,$s2		#$t0 = i + j
		add $t4,$s3,$s4		#$t4 = m + n
		bgt $t0,$t4,else	#branch to else if i+j<=m+n
		addi $t1,$t1,1		#then part x+=1
		addi $t3,$zero,1	#z=1
		j endif			#skip else part
	else:   addi $t2,$t2,-1		#begin else part y-=1
		add $t3,$t3,$t3 	#z=2*z
	endif: