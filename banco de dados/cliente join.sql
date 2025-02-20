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

INSERT INTO pedidos (id_cliente,data_pedido) VALUES (1,"2024-02-11");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (2,"2010-08-12");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (3,"2019-04-23");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (4,"2015-03-20");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (5,"2001-01-14");
INSERT INTO pedidos (id_cliente,data_pedido) VALUES (6,"2005-05-10");

SELECT pedidos.data_pedido , clientes.nome FROM clientes INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_pedido;
SELECT clientes.nome, pedidos.id_pedido, pedidos.data_pedido FROM clientes LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;
SELECT clientes.nome, COUNT(pedidos.id_pedido) AS total_pedidos FROM clientes LEF JOIN pedidos ON clientes.id_clientes = pedidos.id_cliente GROUP BY clientes.id_cliente;
