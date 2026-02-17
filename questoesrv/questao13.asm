li x28, 0x3333EEEE
li x29, 0x10000000
sw x28, 0(x29)
lb x1, 0(x29)
lbu x2, 0(x29)
addi x29, x29, 2
lb x3, 0(x29)
lbu x4, 0(x29)
addi x29, x29, -2
lh x5, 0(x29)
lhu x6, 0(x29)
addi x29,x29, 2
lh x7, 0(x29)
lhu x8, 0(x29)