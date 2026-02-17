li x1, 0x10000000
li x2, 0x11223344
sw x2,0(x1) #adiocionamos o valor de x2 no endereço escrito em x1 no 1° byte de x1.
addi x1,x1,4 #somamos 4 no x1
sh x2,0(x1) #adicionamos meia palavra no x1 = (0x1000004) qu representa o 2° byte do x1.
addi x1,x1,4
sb x2,0(x1)