.data
	user_n: .asciiz "Enter the N number: "
	result: .asciiz "\n The result of operations is: "
.text
li $v0, 4
la $a0, user_n
syscall

li $v0, 5
syscall

move $t0, $v0
add $t0, $t0, 1
li $t1, 1

li $t2, 0

loop1:
bge  $t1, $t0, exit
move $a0, $t1
jal c_2i
add $t1, $t1, 1
add $t2, $t2, $a0
j loop1


exit:
li $v0,4
la $a0, result
syscall

li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall

c_2i:
li $t7, 1
li $t8, 0

loop2:
beq $t8, $a0, end
mul $t7, $t7, 2
add $t8, $t8, 1
j loop2

end:
move $a0, $t7
jr $ra