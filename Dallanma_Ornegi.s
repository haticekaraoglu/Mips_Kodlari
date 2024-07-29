.data 


.text 

main:

li $s0,7
li $s1,5

li $t0,2
li $t1,4
jal carp

j bitir

carp:

addi $sp,$sp,-8
sw $s0,0($sp)
sw $s1,4($sp)

mul $s0,$t0,$t1
li $s1,0x10010000
sw $s0,0($s1)

lw $s0,0($sp)
lw $s1,4($sp)
addi $sp,$sp,8
jr $ra

bitir:
li $v0,10
syscall
