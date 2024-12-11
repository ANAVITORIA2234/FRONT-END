// lista_categorias = []

// class Categoria {
//     constructor(titulo,img,desc,marca){
//     this.titulo = titulo
//     this.img = img
//     this.desc = desc
//     this.marca = marca

//     }
// }

// lista_categorias.push(new Categoria("Capitão américa admirável mundo novo" , "style/images/capitao.jpeg" ,"Sam Wilson se encontra com o presidente Thaddeus Ross e logo é envolvido em um incidente internacional. Ele deve desvendar um plano global antes que cause um desastre mundial.", "@Megaflix"))
// lista_categorias.push(new Categoria("Moana 2", "style/images/moana.jpeg","as aventuras de Moana, que precisa viajar para os mares distantes após receber uma inesperada ligação de seus ancestrais.","@Megaflix"))
// lista_categorias.push(new Categoria("Wish o poder dos desejos", "style/images/wish.jpeg", "é uma comédia musical animada que leva o público para o reino mágico de Rosas." , "@Megaflix"))






// lista_categorias.forEach(categoria => {
//     document.querySelector('#categoriaItens').innerHTML += `








//      <div class="card mb-3" style="max-width: 540px;">
//     <div class="row g-0">
//       <div class="col-md-4">
//         <img src="${categoria.img}" class="img-fluid rounded-start" alt="...">
//       </div>
//       <div class="col-md-8">
//         <div class="card-body">
//           <h5 class="card-title">${categoria.titulo}</h5>
//           <p class="card-text">${categoria.desc}</p>
//           <p class="card-text"><small class="text-body-secondary">${categoria.marca}</small></p>

//           <button type="button" class="btn btn-primary"
//           data-bs-toggle="modal"
//           data-bs-target="#ExemploModalCentralizado">
//           saiba mais
//           </button>

//           <!-- Modal -->
// <div class="modal fade" id="ExemploModalCentralizado" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
//   <div class="modal-dialog modal-dialog-centered" role="document">
//     <div class="modal-content">
//       <div class="modal-header">
//         <h5 class="modal-title" id="TituloModalCentralizado">${categoria.titulo}</h5>
//         <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
//           <span aria-hidden="true">&times;</span>
//         </button>
//       </div>
//       <div class="modal-body">
//         <p>${categoria.desc}</p>
//       </div>
//       <div class="modal-footer">
//         <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
  
//       </div>
//     </div>
//   </div>
// </div>
//         </div>
//       </div>
//     </div>
//   </div>
    
//     `
// });