const express =require('express');
const router = express.Router();
const dataLogin = require('../controller/login.js');
const postsGaleria = require('../controller/postsGaleria.js');


router.get("/", (req, res) => {
    res.send("Hello World!");
});

//Rota para carregar imagens
router.get("/Images", postsGaleria.loadImages);

//Rota para carregar a imagem espeficifica do email
router.post("/getImage", postsGaleria.getImage);

//Rota para comentar nos posts
router.post("/commentar", postsGaleria.commentPosts);

//Rota para mostrar todos os comentários
router.post("/comentarios", postsGaleria.allComments);

//Rota para dar like no comentario
router.put("/likes", postsGaleria.likePosts);

//Rota para logar na rede social
router.post("/login", dataLogin.login);



module.exports = router;
            
