lista_categorias = []

class Categoria {
    constructor(titulo,img,desc,marca){
    this.titulo = titulo
    this.img = img
    this.desc = desc
    this.marca = marca

    }
}

lista_categorias.push(new Categoria("Drink com pimenta" , "images/drink1.jpg" , " Um drink vibrante que combina tequila, limão fresco e um toque de pimenta vermelha.","Drink por @Mistura Perfeita"))
lista_categorias.push(new Categoria("Drink com uva", "images/drink2.jpg", " Uma explosão de frescor em cada gole. Este drink delicado combina a suavidade da uva.","Drink por @Mistura Perfeita"))
lista_categorias.push(new Categoria("Drink com abacaxi", "images/drink3.jpg", "Um drink refrescante e exótico que traz o sabor vibrante do abacaxi em sua forma mais pura. ","Drink por @Mistura Perfeita"))






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
          <p class="card-text">${categoria.desc}</p>
          <p class="card-text"><small class="text-body-secondary">${categoria.marca}</small></p>
        </div>
      </div>
    </div>
  </div>
    
    `
});