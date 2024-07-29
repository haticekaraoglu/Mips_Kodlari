


#yorum satırı

.data

etiket1: .asciiz "Firat bilgisayar "

.text 


main:

li $t0,0x10010004
lb $t1,0($t0)
lb $t2,3($t0)
 
li $t3,0x10010024
li $s0,0x57
sb $s0,0($t3)


#sonlandırma 
li $v0,10
syscall
