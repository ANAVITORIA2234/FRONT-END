CREATE DATABASE clientes;

USE clientes;

create table clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
estado VARCHAR(255)); 

insert into clientes values(1,"Pedro Araujo", "SP");
insert into clientes values(2,"Lorena Lopes", "MG");
insert into clientes values(3,"Laura Goudinho", "MT");
insert into clientes values(4,"Eduardo Lucena", "BH");

UPDATE clientes SET id_cliente = 7	 WHERE id_cliente = 6;

insert into clientes values(2,"Laura Goudinho", "MG");