const sequelize = require('./models/db.js');
const Galeria = require('./models/db.js');

(async () => {
    try {
        await sequelize.sync({ force: false });

        await Galeria.bulkCreate([
            { titulo: 'EVEREST', link: 'https://i.ibb.co/GQ370K8G/Everest.jpg alt="Everest" border="0"></a>' },
            { titulo: 'MONTE FUJI', link: 'https://i.ibb.co/FbVSPRSC/Monte-Fuji.jpg alt="Monte-Fuji" border="0"></a>' },
            { titulo: 'ALPES SUIÇOS', link: 'https://i.ibb.co/79x7tRc/Alpes-Sui-os.jpg alt="Alpes-Sui-os" border="0"></a>' },
            { titulo: 'CANYON', link: 'https://i.ibb.co/7tXXqrtH/Grand-Canyon.jpg alt="Grand-Canyon" border="0"></a>' },
            { titulo: 'MONTE BRANCO', link: 'https://i.ibb.co/3YGYwyGt/Monte-Branco.jpg alt="Monte-Branco" border="0"></a>' },
            { titulo: 'ELBRUS', link: 'https://i.ibb.co/PvD4sYDS/Monte-Elbrus.jpg alt="Monte-Elbrus" border="0"></a>' },
            { titulo: 'PICO-PIRES', link: 'https://i.ibb.co/1c9hLBg/Pico-Pikes.jpg alt="Pico-Pikes" border="0"></a>' },
            { titulo: 'HUANDOY', link: 'https://i.ibb.co/7J5DFXBR/Huandoy.jpg alt="Huandoy" border="0"></a>' },

        ],
        {ignoreDuplicates:true}
    );
        console.log('Dados inseridos com sucesso!');
    } catch (error) {
        console.error('Erro ao inserir dados:', error);
    } finally {
        process.exit();
    }

});