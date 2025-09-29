const User = require('../models/User.js');

const dataLogin = {
    login: async (req, res) => {
        const { usuario, password } = req.body;
        try {
            if (!usuario || !password) {
                return res.status(400).json({ message: "preencha os campos corretamente" });
            }
            const verifyExist = await User.findOne({
                where: {
                    usuario: usuario,
                }
            })
            console.log(verifyExist)

            const exist = !!verifyExist
            if (!exist) {

                await User.create({
                    usuario,
                    password
                });

                const getInfos = await User.findOne({
                    where: {
                        usuario: usuario,
                    }
                })
                return res.status(200).json({ message: "Usuário cadastrado com sucesso!", erro: false, usuario: usuario.usuario, logado: true, userID: getInfos.id })

                return
            }
            if (verifyExist.password !== password) {
                return res.status(401).json({ message: "Usuario ou senha incorretos" })
            }
            // caso o usuario e a senha estejam corretos
            return res.status(200).json({ message: "Login Autorizado com sucesso!", erro: false, usuario: usuario, usuario, userID: verifyExist.id, logado: true, })
        } catch (error) {
            console.error("erro ao cadrastrar usuario",
                error);
            return res.status(500).json({
                message: 'erro ao cadastrar usuario, ',
                logado: false,
            });
        }

    }

}

module.exports = dataLogin;



