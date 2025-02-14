CREATE DATABASE relacionamentos;

USE relacionamentos;

-- one to one (um por um)
CREATE TABLE alunos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
turma VARCHAR(5)

);

	CREATE TABLE contatos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(20),
    aluno_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
    );

INSERT INTO alunos(nome,turma) VALUES ("Lucas","002M");
INSERT INTO alunos(nome,turma) VALUES ("Aline","664F");
INSERT INTO alunos(nome,turma) VALUES ("Pedro","227M");

INSERT INTO contatos(telefone,aluno_id) VALUES ("(61)99999999999",1);
INSERT INTO contatos(telefone,aluno_id) VALUES ("(61)666666666",2);
INSERT INTO contatos(telefone,aluno_id) VALUES ("(61)1111111111",3);
INSERT INTO contatos(telefone,aluno_id) VALUES ("(61)7777777777",4);
INSERT INTO contatos(telefone,aluno_id) VALUES ("(61)55555555555",5);

SELECT * FROM alunos;
SELECT * FROM contatos;
SELECT * FROM contatos WHERE aluno_id = 3;
SELECT *  , alunos.nome , alunos.turma , contatos.telefone FROM alunos JOIN contatos ON contatos.aluno_id;

-- ONE TO MANY
CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) 
);

-- QUEM E O ESTRANGEIRO E DE ONDE VEM (PROVA)
CREATE TABLE pedidos (
id INT PRIMARY KEY AUTO_INCREMENT,
valorTotal FLOAT,
cliente_id INT NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome) values("George");









