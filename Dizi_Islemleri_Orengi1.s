.data
etiket1: .asciiz "muhendislik dekani"
etiket2: .word 0x78ab2cdf

.text 


main:

li $t0,0x10010014
lhu $t1,0($t0)

li $t2,0xcebd
sh $t2,2($t0)


 
li $v0,10
syscall