const dados = [
    { src: "./Imagens/Everest.jpg", likes: 10, comentarios: 2 },
    { src: "./Imagens/MonteFuji.jpg", likes: 6, comentarios: 50 },
    { src: "./Imagens/AlpesSuiços.jpg", likes: 322, comentarios: 126 },
    { src: "./Imagens/GrandCanyon.jpg", likes: 877, comentarios: 345 },
    { src: "./Imagens/MonteBranco.jpg", likes: 60, comentarios: 42 },
    { src: "./Imagens/MonteElbrus.jpg", likes: 1.000, comentarios: 99 },
    { src: "./Imagens/PicoPikes.jpg", likes: 704, comentarios: 299 },
    { src: "./Imagens/Huandoy.jpg", likes: 15, comentarios: 12 },
];

const itemsGaleria = document.querySelector(".item");
itemsGaleria.forEach((items, index) => {
    const img = items.querySelectorAll("img");
    const spans = items.querySelectorAll(".interac span");

    img.src = dados[index].src;
    spans[0].textContent = dados[index].likes;
    spans[1].textContent = dados[index].comentarios;
});

