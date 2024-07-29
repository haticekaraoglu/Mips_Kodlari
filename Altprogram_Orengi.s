.data

.text

main:
li $s5,5
li $s6,0x10010000
lw $s5,0($s6)

la $s4,0x10010000
lw $a0,0($s4)
jal altprog

addi $s1,$at,46
la $ra,10010000
sw $s1,8($ra)
li $v0,10
syscall

altprog:
li $t1,1
li $t2,0

mul $t3,$t1,$t1
add $t2,$t2,$t3
addi $t1,$t1,1
slt $s4,$a0,$t1
beq $at,$s4,topla

topla:
add $v0,$s4,$t2
jr $ra






