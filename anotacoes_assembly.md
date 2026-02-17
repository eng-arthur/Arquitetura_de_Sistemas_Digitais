<!-- ================= CAPA ================= -->

<p align="center">
  <h1 align="center">Arquitetura de Sistemas Digitais</h1>
  <h3 align="center">Anotações referentes a linguagem Assembly</h3>
  <br>
  <p align="center">
    Autor: Arthur Emanuell de Sousa Firmino   
    <br>
    Data: 2026
  </p>
</p>

---

## Prefácio

Nesta anotação será falado um pouco sobre Assembly.

---

## Sumário

- [Capítulo 1 — Registradores no RV32I](#capítulo-1--registradores-no-rv32i)
- [Capítulo 2 — Organização da Tabela](#capítulo-2---organizaçao-da-tabela)
- [Capítulo 3 — Expressões e Operadores](#capítulo-3---expressões-e-operadores)
- [Capítulo 4 — Estruturas de Controle](#capítulo-4---estruturas-de-controle)
- [Capítulo 5 — Descrição de Circuitos Lógicos](#capítulo-5---descrição-de-circuitos-lógicos)
- [Capítulo 6 — Módulos](#capítulo-6---módulos)
- [Capítuo 7 — Exercícios](#capítulo-7---exercícios)

---

# Capítulo 1 — Registradores no RV32I

Registradores ficam dentro do processador, então são muito rápidos. Onde neles existem 32 registradores de uso geral como o próprio nome já deixa explicito.

```text
    x0, x1, x2, ..., x31
```
No entanto o x0 é sempre 0 pelo motivo de ser fixo em hardware, caso tente escrever algo nele, o valor será ignorado.

# Capítulo 2 - Organização da Tabela

A tabela mostra o conjunto básico de instruções do RV32I, dividido por categorias:

- Computação de Inteiros
- Loads e Stores
- Transferência de Controle
- Instruções diversas

## 2.1 - Computação de Inteiros

Aqui ficam as operações matemáticas e lógicas

### 2.1.1 - Aritmética

Nesta parte há a soma de registradores ou imediatos, a partir dos códigos:

- Soma de Registradores
```text
    add x3, x1, x2
```
- Soma de valores imediatos
```text
    addi x3, x1, 10
```
Caso queira subtrair, seria da mesma maneira:

```text
    sub x3, x2, x1
```
No caso do sub, não existe o subi, pois seria apenas usar o addi com o valor negativo.

### 2.1.2 - Opeerações Lógicas

Nesta parte há as operações lógicas entre duas variáveis,a partir dos códigos:

- Versão de operação entre registradores

```text 
    and;
    or;
    xor;
``` 

- Versão de operação imediatos

```text
    andi;
    ori;
    xori;
```

### 2.1.3 - Shift (Deslocamento de bits)

Nesta parte há as operações de deslocamento de bits entre duas variáveis,a partir dos códigos:

- Versão de operação entre registradores

```text
    sll; //shift left logical
    srl; //shift right logical
    sra; //shift right arithmetic
```

- Versão de operação imediatos

```text
    slli;
    srli;
    srai;
```

### 2.1.4 - Comparações 

Nesta parte há as operações de comparações de bits entre duas variáveis,a partir dos códigos:

```text
    slt; //set less than
    sltu; //usigned
    slti;
    sltiu;
```
Essas instruções colocam: 

- 1 se a condição for verdadeira
- 0 se for falsa

### 2.1.5 - Instruções especiais

Nesta aba de instruções especiais temos a presença do lui(load upper immediate), o auipc(add upper immediate to pc) e o li (Load Immediate)

O lui (load upper immediate) coloca um valor nos 20 bits superiores do registrador e zera os 12 bits inferiores.

- Exemplo:

```assembly
    //Inicio
    lui x5, 0x12345
    //Resultado
    0x12345000
```
O li (Load Immediate) é uma pseudo instrução, na qual carrega o numero semelhante ao addi, no entando só faz isso se caso o numero for menor que 12 bits, caso seja maior ele adiciona ao lui e logo após ao addi, fazendo todo o trabalho pesado.

- Exemplo:

```assembly
    li x1,0x12345123
``` 

## 2.2 - Loads and Stores

Loads and Stores são as memórias, nem sempre será possivel apenas usar o registrador, as vezes nessecitamos fazer uso de memórias para completar todo o processo.

### 2.2.1 - Loads 

Nos loads temos diferentes tipos de maneira de leitura, são elas: words(32bits) half-words(16bits) e Byte (8bits). A lógica do load é pegar um valor da memória e adicionar num registrador.

```assembly
    lw x1,0(x3) #implica dizer que irei pegar os 4 primeiros bits do x3 e adcionar no registador x1
    lw 
```
### 2.2.2 - Stores

No store temos diferentes tipos de armazenamento, semelhante ao load, são elas: words(32bits), half-word(16bits) e byte(8bits). A lógica do store é receber o valor do registrador e adicionar na memória.

```assembly
    sw x1, x(x2)
    sw valor_que_quer_gravar,offset(endereço_que_vai_gravar)
```