CREATE DATABASE IF NOT EXISTS comida;
USE comida;

CREATE TABLE catalogo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    imagem VARCHAR(255)
);

INSERT INTO catalogo (nome, descricao, preco, imagem) VALUES
('Pizza Margherita', 'Pizza com tomate e manjericão', 45.99, 'pizza.jpg'),
('Hambúrguer Artesanal', 'Delicioso hambúrguer artesanal', 29.50, 'hamburguer.jpg'),
('Sushi Combo', 'Sushi fresquinho com molho especial', 79.90, 'sushi.jpg'),
('Salada Caesar', 'Salada com frango grelhado e molho especial', 25.00, 'salada.jpg'),
('Lasanha à Bolonhesa', 'Lasanha com carne moída e molho caseiro', 39.99, 'lasanha.jpg'),
('Torta de Chocolate', 'Torta com cobertura cremosa de chocolate', 22.75, 'torta.jpg');