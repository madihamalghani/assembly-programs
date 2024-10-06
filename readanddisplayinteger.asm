.data
prompt: .asciiz "\nEnter an integer: "
.text
.global main
.main:
li $v0,4
la $a0,prompt
syscall
li $v0,5
syscall
li $v0,1
move $a0,$v0
syscall
li $v0,10
syscall
