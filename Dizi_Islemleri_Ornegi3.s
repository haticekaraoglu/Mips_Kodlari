
.data 

etiket1: .asciiz "Firat Bilgisayar"
etiket2: .word 0xffff8bcd

.text 


main:




li $t0,0x10010016 
lh $t1,0($t0)





li $v0,10 
syscall
