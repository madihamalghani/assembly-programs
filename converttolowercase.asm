.data
prompt: .asciiz "\n Enter your name: "
out_msg: .asciiz "\n Your name in small letter is: "
in_name: .space 20
.text
.globl main
main:
la $a0,prompt
li $v0,4
syscall
la $a0,in_name
la $a1,20
li $v0,8
syscall
la $a0,out_msg
li $v0,4
syscall
la $t0,in_name
loop:
lb $t1,($t0)
beqz $t1,exit_loop
blt $t1,'A',no_change
bgt $t1,'Z',no_change
addiu $t1,$t1,+32 
sb $t1,($t0)
no_change:
addiu $t0,$t0,1
j loop
exit_loop:
la $a0,in_name
li $v0,4
syscall
li $v0,10
syscall





