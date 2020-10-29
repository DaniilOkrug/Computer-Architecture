.data
msg1: .asciiz " Enter the y number : "
msg2: .asciiz "\n Enter the z number : "
msg3: .asciiz "\n Enter the f number : "
msg4: .asciiz "\n Enter the q number : "
result: .asciiz "\n The result of operations is: "
.text
li $v0,4
la $a0, msg1
syscall
li $v0,5
syscall
move $t1,$v0
li $v0,4
la $a0, msg2
syscall
li $v0,5
syscall
move $t2,$v0
li $v0,4
la $a0, msg3
syscall
li $v0,5
syscall
move $t3,$v0
li $v0,4
la $a0, msg4
syscall
li $v0,5
syscall
move $t4,$v0
mul $t1,$t1,$t2
mul $t1,$t1,$t2
div $t1,$t1,$t3
sub $t5,$t1,$t4
li $v0,4
la $a0, result
syscall
li $v0,1
move $a0,$t5
syscall
li $v0 ,10
syscall
