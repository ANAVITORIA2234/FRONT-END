create database correcao_autores;

use correcao_autores;

create table autores(
id_autor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100)NOT NULL,
nacionalidade VARCHAR(100)
);


create table livros(
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (225)NOT NULL,
ano_publicacao YEAR,
id_autor_do_livro INT NOT NULL,
FOREIGN KEY (id_autor_do_livro) REFERENCES autores(id_autor)
);

select * from autores;
select * from livros;

insert into autores(nome,nacionalidade) VALUES ("Antoine de Saint-Exupéry","Francês");
insert into autores(nome,nacionalidade) VALUES ("William Shakespeare","Inglaterra");

insert into livros(titulo,ano_publicacao,id_autor_do_livro) VALUES ("O Pequeno Príncipe cap1",2008,1);
insert into livros(titulo,ano_publicacao,id_autor_do_livro) VALUES ("Romeu E Julieta cap2",2012,2);
insert into livros(titulo,ano_publicacao,id_autor_do_livro) VALUES ("Dom Quixote De La mancha cap3",2004,1);
insert into livros(titulo,ano_publicacao,id_autor_do_livro) VALUES ("Orgulho E Preconceito cap4",2015,2);
insert into livros(titulo,ano_publicacao,id_autor_do_livro) VALUES ("Dom Casmurro cap5" ,2000,1);

CREATE TABLE livros_autores(
id_autor INT NOT NULL,
id_livro INT NOT NULL,
FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
  ); 
  
  SELECT * FROM livros_autores;
  
INSERT INTO livros_autores(id_autor, id_livro) VALUES (1,2);
INSERT INTO livros_autores(id_autor, id_livro) VALUES (2,2);
INSERT INTO livros_autores(id_autor, id_livro) VALUES (2,3);
INSERT INTO livros_autores(id_autor, id_livro) VALUES (2,4);

-- SELECT <O QUE EU QUERO> <PRIMEIRA TABELA> JOIN <SEGUNDA TABELA>
-- ON - CONDIÇÃO DE COMO EU QUERO ORGANIZAR
SELECT Livros.titulo , Autores.nome FROM Livros JOIN livros_autores
ON Livros.id_livro = livros_autores.id_livro 
JOIN Autores ON livros_autores.id_autor = Autores.id_autor;
  
  