create database loja_online;

use loja_online;


CREATE TABLE fornecedores (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR (100),
telefone VARCHAR (50),
endereco VARCHAR(50)
);


insert into fornecedores (nome,email,telefone,endereco) VALUES ("Lucas","lucaspereira35@gmail.com","(61)1945-6281","Rua 238, nº 101 Bairro 64");
insert into fornecedores (nome,email,telefone,endereco) VALUES ("Jessica","jessicalopes65@gmail.com","(61)9062-6123","Rua 789, nº 389 Bairro 51");
insert into fornecedores (nome,email,telefone,endereco) VALUES ("Lunara","lunara@gamil.com","(61) 7698-1220","Avenida 432, nº 124 Bairro 68");


CREATE TABLE produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL(6,2),
id_fornecedor INT NOT NULL,
estoque INT NOT NULL
);


insert into produtos (nome_produto,preco,id_fornecedor,estoque) VALUES ("Arroz","25.98","1","264");
insert into produtos (nome_produto,preco,id_fornecedor,estoque) VALUES ("Feijao","11.09","2","104");
insert into produtos (nome_produto,preco,id_fornecedor,estoque) VALUES ("Macarrao","10.35","3","121");



CREATE TABLE clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(50),
telefone VARCHAR(15)
);

insert into clientes (nome,email,telefone) VALUES ("Lucia","dudaalves@gmail.com","(11) 98765-4321");
insert into clientes (nome,email,telefone) VALUES ("Ricardo","ricardo223@gmail.com","(21) 91234-5674");
insert into clientes (nome,email,telefone) VALUES ("Duda","duda2973@gmail.com","(31) 99876-5432");


CREATE TABLE pedidos (
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
data_pedido date,
total DECIMAL(6,2),
status VARCHAR(50)
);

insert into pedidos (id_pedido,id_cliente,data_pedido,total,status) VALUES ("1","1","2025.02.22","25.98","pedido enviado");
insert into pedidos (id_pedido,id_cliente,data_pedido,total,status) VALUES ("2","2","2025.02.16","11.09","pedido entregue");
insert into pedidos (id_pedido,id_cliente,data_pedido,total,status) VALUES ("3","3","2025.02.26","10.35","pedido a caminho");



CREATE TABLE pagamentos (
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
metodo_pagamento VARCHAR(50),
valor_pago DECIMAL(6,2)
);



insert into pagamentos (metodo_pagamento,valor_pago) VALUES ("pix","25.98");
insert into pagamentos (metodo_pagamento,valor_pago) VALUES ("cartao de credito","11.09");
insert into pagamentos (metodo_pagamento,valor_pago) VALUES ("vale alimentacao","10.35");

