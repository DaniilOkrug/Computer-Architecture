.data
pi: .float 3.1415
e: .float  2.71828
.text
l.s $f2, pi
l.s $f4, e
mul.s $f4, $f4, $f4
div.s $f4, $f4, $f2

li $v0, 2
mov.s $f12, $f4
syscall 

li $v0, 10
syscall