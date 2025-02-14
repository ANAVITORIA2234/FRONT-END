create database smart;
use smart;
create table produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(255),
preço DECIMAL (6,2),
estoque INT); 
insert into produtos (id_produto,nome_produto,preço,estoque) values (77676,"arroz cristal",25,4545); 
SELECT 77676,"arroz cristal"
FROM produtos
WHERE "arroz cristal" LIKE '%smart%';
insert into produtos (id_produto,nome_produto,preço,estoque) values (5555,"pasta de dente",8,23457); 
SELECT 55555,"pasta de dente" 
FROM produtos
WHERE "pasta de dente" LIKE '%smart%';
insert into produtos (id_produto,nome_produto,preço,estoque) values (88888,"smartphone",3,45621); 
SELECT 88888,"smartphone" 
FROM produtos
WHERE "smartphone" LIKE '%smart%';

