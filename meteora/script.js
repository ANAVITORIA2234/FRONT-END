lista_categorias = []

class Categoria {
    constructor(titulo,img){
    this.titulo = titulo
    this.img = img

    }
}

lista_categorias.push(new Categoria("Categoria" , "assets/Desktop/categorias/categoria-bolsa.png"))
lista_categorias.push(new Categoria("Categoria", "assets/Desktop/categorias/categoria-calcados.png", " ",""))
lista_categorias.push(new Categoria("Categoria", "assets/Desktop/categorias/categoria-calcas.png", " ",""))
lista_categorias.push(new Categoria("Categoria", "assets/Desktop/categorias/categoria-camiseta.png", " ",""))
lista_categorias.push(new Categoria("Categoria", "assets/Desktop/categorias/categoria-casacos.png", " ",""))
lista_categorias.push(new Categoria("Categoria", "assets/Desktop/categorias/categoria-oculos.png", " ",""))



lista_categorias.forEach(categoria => {
    document.querySelector('#categoriaItens').innerHTML += `



  <div class="card" style="width: 8rem;">
  <img src="${categoria.img}" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">${categoria.titulo}</p>
  </div>
</div>
 
    `

});