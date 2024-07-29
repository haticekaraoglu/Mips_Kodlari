.data 

etiket: .asciiz "Firat bilgisayar"


.text


main:

li $t0,0x10010000
li $t7,0x20


dongu:

lb $t1,0($t0)
addi $t0,$t0,1
bne $t1,$t7,dongu

j bitir

bitir :

li $v0,10
syscall