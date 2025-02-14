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
ano_publicado INT,
id_autor_e INT NOT NULL,
FOREIGN KEY (id_autor_e) REFERENCES Autores(id_autor)
);

INSERT INTO Autores(nome,nacionalidade) VALUES ("Lucas","Brasil");
INSERT INTO Autores(nome,nacionalidade) VALUES ("Aline","Mexico");
INSERT INTO Autores(nome,nacionalidade) VALUES ("Luana","Argentina");

INSERT INTO Livros(id_livro,titulo,ano_publicado,id_autor) VALUES ("55678","Para todos os garotod que eu ja amei","15/04","jenny han");