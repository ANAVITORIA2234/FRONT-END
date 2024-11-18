function explicacao1(){
 // SE CONDICAO / SENAO
 escolha = confirm(' DESEJA RODAR TRUE OU FALSE') 
   if  (escolha) {
    // console.log 'FIZ O SE'
    alert( 'VOCE ESCOLHEU TRUE')
   }else{
    // console.log ('SENAO')
    alert ('VOCE ESCOLHEU FALSE')
   }

}

function explicacao2(){
    alert ("SEJA BEM VINDO A LOJINHA!")
    escolha = prompt('A)  Bolo no pote R$ 10, B) Açai R$ 20, C) TORTA R$ 15')

switch(escolha){
    case 'A':
         alert('Voce escolheu bolo no pote')
         break
     case 'B':
         alert('Voce escolheu bolo no açai')
         break
    case 'C':
         alert('Voce escolheu bolo no torta')
         break
  }
}
   function explicacao3(){
   // idade = parseInt()
   idade = Number(prompt('Digite a sua idade'))

   if (idade >=18){
   alert ('Seja bem vindo(a)wbsite')
   document.querySelector('tody').innerHTML = 'VIVA!!!'
    }else{
    alert('idade invalida')
    // WINDON - JANELA
   // LOCATION - "URL"
    window.location = 'https://www.google.com'
}
   }