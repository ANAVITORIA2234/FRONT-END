function testes(){
//  enquanto condiçao faça
// para tanto ate tanto faça
contador = 0
// while (contador < 3){
//alert('QUE MANEIRO!!' FIZ $(contador+1) vezes)
 // contador++
// }

for (var i = 0;i <3;i++){
    alert('QUE MANEIRO!!  FIZ $(I+1) vezes')
}

}

// testes()

function carregarCatalogo(){
  var livros = [
   ['images/para todos garotos que eu ja amei.jpg','para todos os garotos que eu ja amei'],
   ['images/textoscrueis.jpg','textos crueis demais para serem lidos rapidamente'],
   ['images/abarraca.jpg',' barraca do beijo'],
   ['images/racionais.jpg',' racionais mcs']
]




   
   livros.forEach(cadaLivro => {
   document.getElementById('catalogo').innerHTML += `
   
   <div class="livro">
       <img src="${cadaLivro[0]}" alt="">
       <h4>${cadaLivro[1]}</h4>
       <button>
        Adicionar
       <img src="imagens/icons/mais.svg" alt=""></img>

       </button>
    </div>
   
   `
   })


}

carregarCatalogo()

