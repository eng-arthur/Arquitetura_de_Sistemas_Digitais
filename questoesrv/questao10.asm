li x1, 0x80000000
li x2, 0x80000800 #o Li pelo fato de ser um pseudocódigo, ele irá ler o valor a ser atribuido ao registrador, caso esse numero for menor que 12 bits (-2048 à 2028) ele irá utilizar apenas um addi
		  #no entanto, caso esse valor seja maior que 12 bits, ele irá usar o lui e o addi.