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
       ['images/filmes/ate_que_a_sorte.jpg','até que a sorte nos separe'],
       ['images/filmes/meupassado.jpg','meu passado me condena'],
       ['images/filmes/sintonia.jpg','sintonia de natal'],
       ['images/filmes/corra.webp','corra'],
       ['images/filmes/amordealuguel.webp','amor de aluguel'],
       ['images/filmes/opoço2.webp', 'o poço 2']
    ]
    
    
    
    
       
       livros.forEach(cadaLivro => {
       document.getElementById('catalogo').innerHTML += `
       
       <div class="filme">
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
    
    