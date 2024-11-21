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
   for (let  i = 0;i < 10;i++){
   document.getElementById('catalogo').innerHTML += `
   
   <div class="livro">
       <img src="images/para todos garotos que eu ja amei.jpg" alt="">
       <h4>Para todos os garotos que eu ja amei</h4>
       <button>
        Adicionar
       

       </button>
    </div>
   
   `
   }


}

carregarCatalogo()

