#Laboratory Exercise 3, Assignment 4a

.text 
	addi $s2, $zero, 5	#j = 5
	addi $s1, $zero, 5	#i = 5
	start: 
		slt $t0,$s1,$s2		#i<j
		bne $t0,$zero,else	#branch to else if i<j
		addi $t1,$t1,1		#then part x+=1
		addi $t3,$zero,1	#z=1
		j endif			#skip else part
	else:   addi $t2,$t2,-1		#begin else part y-=1
		add $t3,$t3,$t3 	#z=2*z
	endif: