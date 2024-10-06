.data
prompt: .asciiz "\nEnter your first name: "
string: .space 10
.text
.global main
.main:
li $v0,4
la $a0,prompt
syscall
li $v0,8
la $a0,string
la $a1,10
syscall
li $v0,4
syscall
li $v0,10
syscall