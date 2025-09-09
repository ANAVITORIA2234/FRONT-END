const items = document.querySelectorAll(".item img");
const boxComment = document.getElementById("boxComment");
const closeComments = document.getElementById("closeComments");

items.forEach((img, index) => {
    img.addEventListener("click", () => {
        boxComment.style.display = "flex";
        localStorage.setItem("idImage", index + 1);
    });
});

// Fechar PopUp de Comentários

closeComments.addEventListener("click", () => {
    boxComment.style.display = "none";
});

// Pegar notão de like e contador

const likeBtn = document.querySelector(".boxComment.like");
const likeCount = document.querySelector(".boxComment.like span");

let curtindo = false;

likeBtn.addEventListener("click", () => {
    let valor = parseInt(likeCount.textContent);
    if (!curtindo) {
        likeCount.textContent = valor + 1;
        likeBtn.src ="./Icones/coraçãoVermelho.svg";
        curtindo = true;
    } else {
  likeBtn.textContent = valor - 1;
        likeBtn.src = "./Icones/coração.svg";
        curtindo = false;
    }
});  