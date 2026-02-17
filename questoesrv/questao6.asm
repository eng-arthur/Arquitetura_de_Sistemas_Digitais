addi x1, x0, 256     # o valor de x1 e 4 / Exercicio 5.a)
addi x2, x0, -256    # o valor de x2 e -4  / Exercicio 5.b)
addi x3, x0, 8     # o valor de x3 e 8   / Exercicio 5.c)
slli x4, x1, 4     # o valor de x4 e 64 dado que o bit 1 esta na posicao 6 (2^6 = 64) / Exercicio 5.d)
slli x5, x2, 4     # o valor de x5 e -64. O sofware interpreta como negativa (complemento de 2 de 64). / Exercicio 5.e)
srl  x6, x1, x3    # como x3 tem mais bits que x1, x6 recebera valor 0 / Exercicio 5.f)
srl x7, x2, x3     # como x2 e 4 negativo, os 32 bits sao diferentes de 4. Ao deslocar 8 bits para direita, x7 fica igual a 16777215 / Exercicio 5.g)
sra x8, x1, x3     # sra e o deslocamento aritmetico, onde preserva sinal. x1 deslocou 8 bits para direita (4/256). Como o registrador e inteiro, o resultado sera 0 / Exercicio 5.h)
sra x9, x2, x3     # o resultado de x9 e -1 dado que 0xFFFFFFFF quando considera sinal (sem ser unsigned) e -1. (2e32 - 1 = 0xFFFFFFFF, que e -1)
slli x10, x1, 23   # o resultado de x10 e 33554432 dado que 2e(2+23) => 2e25 (posicao do bit do 4 apos o deslocamento)
srli x10, x10, 23  # x10 anterior armezenou o valor do x1 deslocado. Ao deslocar novamente no sentido contrario, x10 voltara ao valro de x1
slli x11, x1, 23   # nao ha aritmetico para esquerda. x11 sera o resultado anterior de x10. onde o resultado e  o resultado de x10 e 33554432 dado que 2e(2+23) => 2e25
srai x11, x11, 23  # x11 deu igual a x10 (4). Como x1 e positivo, o sra e srl tiveram resultados iguais