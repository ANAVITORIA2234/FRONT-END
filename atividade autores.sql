CREATE DATABASE LivrariaDB;

USE LivrariaDB;


CREATE TABLE Autores (
id_autor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
nacionalidade VARCHAR (100)
);

CREATE TABLE Livros (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(100)NOT NULL,
ano_publicado VARCHAR(15),
id_autor_e INT NOT NULL,
FOREIGN KEY (id_autor_e) REFERENCES Autores(id_autor)
);

INSERT INTO Autores(nome,nacionalidade) VALUES ("Lucas","Brasil");
INSERT INTO Autores(nome,nacionalidade) VALUES ("Aline","Mexico");
INSERT INTO Autores(nome,nacionalidade) VALUES ("Luana","Argentina");

INSERT INTO Livros(titulo,ano_publicado,id_autor_e) VALUES ("para todos os garotos que eu ja amei","15/04/2018",2);
INSERT INTO Livros(titulo,ano_publicado,id_autor_e) VALUES ("textos crueis demais para serem lidos rapidamente","10/11/2017",4);
INSERT INTO Livros(titulo,ano_publicado,id_autor_e) VALUES ("grey's anatomy","27/03/2005",3);
INSERT INTO Livros(titulo,ano_publicado,id_autor_e) VALUES ("harry potter e a pedra filosofal","21/11/2001",1);
INSERT INTO Livros(titulo,ano_publicado,id_autor_e) VALUES ("é assim que acaba","02/08/2016",4);

select * from autores;

select * from livros;
select * from livros where id_autor_e = 4;
