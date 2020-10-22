.data
msg: .asciiz "Enter value: "
a: .float 32.0
b: .float 5.0
c: .float 9.0

.text
li $v0, 4
la $a0, msg #print msg
syscall

li $v0, 6 #read float
syscall

l.s $f1, a 
l.s $f2, b
l.s $f3, c

sub.s $f0, $f0, $f1
mul.s $f0, $f0, $f2
div.s $f0, $f0, $f3

li $v0, 2
mov.s $f12, $f0
syscall

li $v0, 10
syscall