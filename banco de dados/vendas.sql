create database vendas;

use vendas;
create table vendas(
id_venda INT PRIMARY KEY AUTO_INCREMENT ,
id_produto INT, 
quantidade INT, 
preço_unitario DECIMAL (6,2),
id_categoria INT
); 
insert into vendas (id_venda,id_produto,quantidade,preço_unitario,id_categoria) values (99999,88888,2,5,66666); 
insert into vendas (id_venda,id_produto,quantidade,preço_unitario,id_categoria) values (21000,613375,9,1,33333); 
insert into vendas (id_venda,id_produto,quantidade,preço_unitario,id_categoria) values (780917,6666,25,3,00000); 
SELECT 66666, SUM(2* 5) AS total_vendas
FROM vendas
GROUP BY 66666;

