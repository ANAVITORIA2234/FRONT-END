const User = require('../models/User.js');
const Galeria = require('../models/galeria.js');
const comentarios = require('../models/comentarios.js');
const Likes = require('../models/likes.js');


const dataPost = { 

 loadImages: async (req, res) => {
    try{
        const Images = await Galeria.findAll() 
        return res.status(200).json({message: "Enviado  com sucesso", dados: Images});
    } catch (error) {
        res.status(400).json({message: "Houve um erro" + error});
    }

    },

    



}