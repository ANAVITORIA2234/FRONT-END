Algoritmo "docesdacomeia"
//COMPRA POR QUILO- BOLO
//DESCONTO (DESCONTO POR SITUA��O)
// QUANTIDADE DE UNIDADES- DOCINHO
Var
opcao, finalizarCarrinho, opcaoFinalizar : caractere
valortotal: real

procedimento adicionadoCarrinho(vp  : real)
  VAR
   nomep  : caractere
Inicio
   escreval("Digite o nome do produto:  ")
   leia(nomep)
   escreval ("Item adicionado!")
   valortotal <- valortotal + vp
   escreval(" Valor total do carrinho R$ :" ,Valortotal)
fimProcedimento
//FIM ADICIONADOCARRINHO
inicio
finalizarCarrinho <- "n"
enquanto (finalizarCarrinho = "n") faca
escreval("********catalogo*********")
escreval("1-  TRUFA                R$ 8.00 ")
escreval("2-  BOLO NO POTE         R$ 10.00")
escreval("3-  COPO DA FELICIDADE   R$ 15,00")
escreval("4-  DOCINHO              R$ 3,00")
escreval("5-  PUDIM                R$ 25,00")
escreval("6-  CANCELAR")
escreval("7-  CARRINHO")

leia(opcao)
// switch/ case
escolha (opcao)
  caso"1"
    adicionadoCarrinho(8)
  caso "2"
   adicionadoCarrinho(10)
  caso "3"
   adicionadoCarrinho(15)
  caso "4"
    adicionadoCarrinho(3)
  caso "5"
     adicionadoCarrinho(25)
     escreval("Compra cancelada!")
     outrocaso
     escreval("Op��o invalida")
fimEscolha

   escreval("Deseja adicionar mais alguma coisa?")
   escreval("1 - Sim")
   escreval("2 - N�o")
   leia(opcaoFinalizar)
   
   se(opcaoFinalizar = "1")entao
    finalizarCarrinho <- "n"
    senao
    finalizarCarrinho <- "S"
    fimSe
    limpatela()
fimEnquanto

escreval("------COMPRA FINALIZADA-------")
escreval("Valor total : R$ ",ValorTotal)
escreval("----------------------------")
escreval ("N PEDIDO 1542")
    
Fimalgoritmo