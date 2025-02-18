CREATE DATABASE JoinAula;

USE JoinAula;

CREATE TABLE endereco(
id INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(255),
numero VARCHAR(100),
pessoa_id INT NULL,
FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE pessoa(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
nacionalidade VARCHAR(5)
);

INSERT INTO pessoa (nome,nacionalidade) VALUES ("Ana","BR");
INSERT INTO pessoa (nome,nacionalidade) VALUES ("Duarte","USA");
INSERT INTO pessoa (rua,numero,pessoa_id) VALUES ("Recanto das Emas","Qd 509",1);

-- INTER (INTERSENÇÃO OU "COMUM NAS DUAS COLUNAS")
SELECT pessoa.nome , endereco.rua FROM pessoa INNER JOIN endereco ON pessoa.id = endereco.id;
SELECT pessoa.nome , endereco.rua FROM endereco  JOIN pessoa ON pessoa.id = endereco.id;
-- RIGHT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA DA DIREITA)
SELECT pessoa.nome , endereco.rua FROM endereco RIGHT JOIN pessoa ON pessoa.id = endereco.id;
-- LEFT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA DA ESQUERDA)
SELECT pessoa.nome , endereco.rua FROM pessoa LEFT JOIN endereco ON pessoa.id = endereco.id;

USE employees;
SELECT * from employees;

-- 	O QUE QUERO, DE ONDE, AGRUPAR QUEM?
SELECT gender, AS genero, count(gender) AS qtd_per_genero FROM  employees GROUP BY gender;
SELECT dept_no, count(dept_no)  FROM dept_no GROUP BY dept_no;