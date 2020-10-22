.data
msg: .asciiz "Enter value: "

.text
li $v0, 4
la $a0, msg
syscall

li $v0, 5
syscall

move $a0, $v0
li $a1, 0
li $a2, 1
jal sum

li $v0, 1
move $a0, $a1
syscall 

li $v0, 10
syscall


sum:
add $a1, $a1, $a2
beq $a2, $a0, ex
add $a2, $a2, 1
j sum 

ex:
jr $ra