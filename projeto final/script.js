lista_categorias = []

class Categoria {
    constructor(titulo,img,marca){
    this.titulo = titulo
    this.img = img
    this.marca = marca

    }
}

lista_categorias.push(new Categoria("Kit trio argola lisa grossa" , "images/kit argola.webp" , "@Belíssimas"))
lista_categorias.push(new Categoria("Brinco flor de cerejeira", "images/brinco.flor.png", "@Belíssimas"))
lista_categorias.push(new Categoria("Brinco folheado", "images/brinco-folheado.png" ,"@Belíssimas"))


lista_categorias.push(new Categoria("kit brinco cristal rosa" , "images/Android Compact - 1 (4).png" , "@Belíssimas"))
lista_categorias.push(new Categoria("kit brinco gota azul claro", "images/img_7725-fescyb50iz 1.png", "@Belíssimas"))
lista_categorias.push(new Categoria("Kit brinco gota ", "images/brinco6.png" ,"@Belíssimas"))


lista_categorias.forEach(categoria => {
    document.querySelector('#categoriaItens').innerHTML += `




     <div class="card mb-3" style="max-width: 540px;">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="${categoria.img}" class="img-fluid rounded-start" alt="...">
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">${categoria.titulo}</h5>
          <p class="card-text"><small class="text-body-secondary">${categoria.marca}</small></p>
        </div>
        <button onclick="comprar('${categoria.titulo}')">COMPRAR</button>
      </div>
    </div>
  </div>
    
    `
});

function comprar(nomeProduto){
  alert(`O produto ${nomeProduto} foi adicionado! `)
}