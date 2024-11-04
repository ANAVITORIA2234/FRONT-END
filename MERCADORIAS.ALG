Algoritmo "mercadorias"

Var
 // Declaração de variáveis
 i : inteiro
 nomesprodutos: vetor[1..3] de caractere
 valoresprodutos: vetor[1..3] de real
 valortotal: real

Inicio
// Entrada de dados  - nome e valor

     Para i de 1 ate 3 faca
     escreva( i, " ")
     leia(nomesprodutos[i])
     leia(valoresprodutos[i])
     
 // valor de estoque (valor total de todos os produtos ) e a media
    valortotal <- valoresprodutos[1] + valoresprodutos[2] + valoresprodutos[3]
    
    escreval("o valor total e de ", valortotal)
     
  FimPara

Fimalgoritmo