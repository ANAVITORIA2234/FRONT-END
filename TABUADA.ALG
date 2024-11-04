Algoritmo "tabuada"
//ESCREVER UM PROGRAMA ONDE O USUARIO DIGITA UM NUMERO.
//ONDE CALCULE A TATUADA DESSE NUMERO ATE O 10. APOS MOSTRAR A TABUADA,
//O PROGRAMA PERGUNTA SE O USUARIO DESEJA VER OUTRA TABUADA,
//SE FOR SIM A RESPOSTA, ELE TEM QUE FAZER DE NOVO CASO CONTRARIO TERMINAR
Var
num, i: inteiro
resposta: caractere

Inicio
// Seçao de Comandos

  repita
  escreval("Digite um numero qualquer")
  leia(num)
      para i <- 1 ate 10 faca
          escreval(num, " x " , i, " =  ", i*num)
          fimpara
          escreval ("Deseja executar outra tabuada ? (S/N)")
          leia(resposta)
ate (resposta="n")
 fimSe
Fimalgoritmo