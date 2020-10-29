.data
	msg1: .asciiz " Enter the x number : "
	msg2: .asciiz "\n Enter the y number : "
	result: .asciiz "\n The result of operations is: "
	a: .float 5.4
	b: .float 12.3
	c: .float 18.23
	d: .float 8.23
.text
li $v0,4
la $a0, msg1
syscall
li $v0,6
syscall
mov.s $f2,$f0 #x

li $v0,4
la $a0, msg2
syscall
li $v0,6
syscall
mov.s $f3,$f0 #y

l.s $f5, a
l.s $f6, b
l.s $f7, c 
l.s $f8, d

mul.s $f1, $f5, $f2 #5.4 * x
mul.s $f1, $f1, $f3 #5.4 * x * y

mul.s $f4, $f6, $f3 #12.3 * y

sub.s $f1, $f1, $f4 #5.4xy ? 12.3y

mul.s $f4, $f7, $f2 #18.23x

add.s $f1, $f1, $f4 #5.4xy ? 12.3y + 18.23x

sub.s $f1, $f1, $f8

li $v0,4
la $a0, result
syscall

li $v0,2
mov.s $f12,$f1
syscall

li $v0 ,10
syscall