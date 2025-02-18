CREATE DATABASE clientes;

USE clientes;

CREATE TABLE clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);

CREATE TABLE pedidos(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
data_pedido DATE,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes (nome) VALUES ("Carlos");
INSERT INTO clientes (nome) VALUES ("Ana");
INSERT INTO clientes (nome) VALUES ("Bruna");
INSERT INTO clientes (nome) VALUES ("Jessica");
INSERT INTO clientes (nome) VALUES ("Victor");
INSERT INTO clientes (nome) VALUES ("Fernanda");

INSERT INTO pedidos (id_cliente,data_pedido) VALUES (1,"12/02/2024");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (2,"12/02/2024");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (3,"12/02/2024");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (4,"12/02/2024");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (5,"12/02/2024");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (6,"12/02/2024");