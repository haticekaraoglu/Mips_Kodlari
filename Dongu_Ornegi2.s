.data
mesaj : .asciiz "dizi değerlerini giriniz :"
.text 

main:

li $s2,10010050
li $t7,0

Loop1:
li $v0,4
la $a0,mesaj
syscall

li $v0,5
syscall
move $t3,$v0

sw $t3,0($s2)
addi $s2,$s2,4
addi $t7,1
bne $t7,8,Loop1


bitir:

li $v0,10
syscall
