.data 

.text 

main:

li $t1,5
sw $t1,0x1001000c

lw $t0,0x1001000c
addi $t4,$t4,3
mult $t2,$t0,$t0
mfhi $t5,$t2
mult $t3,$t4,$t5
mfhi $t7,$t3
sw $t7,0x10010014
sll $t7,$t7,1
sw $t7,0x10010018


li $v0,10
syscall
