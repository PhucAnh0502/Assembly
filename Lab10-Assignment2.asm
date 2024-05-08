# Laboratory 10 Exercise 2
.eqv MONITOR_SCREEN 0x10010000 # Dia chi bat dau cua bo nho man hinh
.eqv RED 0x00FF0000
.eqv GREEN 0x0000FF00
.eqv BLUE 0x000000FF
.eqv WHITE 0x00FFFFFF
.eqv YELLOW 0x00FFFF00
.eqv ORANGE 0x00FF652E

.text
	li $k0, MONITOR_SCREEN # Nhap dia chi bat dau cua man hinh
	
 	li $t0, WHITE
 	sw $t0, 8($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 12($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 16($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 20($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 132($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 152($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 256($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 284($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 384($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 412($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 512($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 540($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 640($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 668($k0)
 	nop 
 	li $t0, WHITE
 	sw $t0, 772($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 792($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 904($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 908($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 912($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 916($k0)
 	nop
 	li $t0, WHITE
 	sw $t0, 260($k0)
 	nop
 	li $t0, RED
 	sw $t0, 136($k0)
 	nop
 	li $t0, RED
 	sw $t0, 140($k0)
 	nop
 	li $t0, RED
 	sw $t0, 144($k0)
 	nop
 	li $t0, RED
 	sw $t0, 148($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 260($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 264($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 268($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 272($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 276($k0)
 	nop
 	li $t0, GREEN
 	sw $t0, 280($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 388($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 392($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 396($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 400($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 404($k0)
 	nop
 	li $t0, BLUE
 	sw $t0, 408($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 516($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 520($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 524($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 528($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 532($k0)
 	nop
 	li $t0, YELLOW
 	sw $t0, 536($k0)
 	nop
 	li $t0, ORANGE
 	sw $t0, 776($k0)
 	nop
 	li $t0, ORANGE
 	sw $t0, 780($k0)
 	nop
 	li $t0, ORANGE
 	sw $t0, 784($k0)
 	nop
 	li $t0, ORANGE
 	sw $t0, 788($k0)
 	
 	
 	
 	
