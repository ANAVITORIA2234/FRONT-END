create database entidades_e_relacionamentos;
use entidades_e_relacionamentos;

create table aluno (
id_aluno INT PRIMARY KEY auto_increment,
nome VARCHAR(100) NOT NULL,
email VARCHAR(30),
data_nascimento DATE
);

insert into aluno (nome,email,data_nascimento) VALUES ("Julia","julia@gmail.com","2007.08.22");
insert into aluno (nome,email,data_nascimento) VALUES ("Receba","receba23@gmail.com","2014.01.31");
insert into aluno (nome,email,data_nascimento) VALUES ("Joao","joao009@gmail.com","2002.12.17");


create table professor (
id_professor INT PRIMARY KEY auto_increment,
nome VARCHAR(100) NOT NULL,
email VARCHAR(30),
especialidade VARCHAR(50)
);


insert into professor (nome,email,especialidade) VALUES ("Aline","Alinepjesus@gmail.com","Português");
insert into professor (nome,email,especialidade) VALUES ("Luan","Luan78@gmail.com","Educaçâo Fisica");
insert into professor (nome,email,especialidade) VALUES ("Maria","Maria532@gmail.com","Artes");
select * from professor;

create table curso (
id_curso INT PRIMARY KEY auto_increment,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
id_professor INT NOT NULL,
FOREIGN KEY (id_professor) REFERENCES professor (id_professor)
);

insert into curso (nome,descricao,id_professor) VALUES ("Curso de Redação e Gramática Avançada","focado em aprimorar o uso da gramática portuguesa e desenvolver habilidades de redação o curso ensina desde as regras gramaticais até técnicas para produzir textos claros e coerentes",1);
insert into curso (nome,descricao,id_professor) VALUES ("Curso de Educação Física Fundamentos e Práticas","aborda os principais conceitos da educação física, incluindo anatomia, fisiologia e pedagogia aplicada ao esporte. Ele também ensina como planejar e aplicar atividades físicas para diferentes idades e níveis de habilidade",2);
insert into curso (nome,descricao,id_professor) VALUES ("Curso de Artes Visuais Fundamentos e Técnicas","oferece uma introdução às principais técnicas e estilos das artes visuais, como pintura, escultura, desenho e fotografia",3);

create table matricula (
id_matricula INT PRIMARY KEY auto_increment,
id_aluno INT NOT NULL,
id_curso INT NOT NULL,
data_matriculada DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno)
);

insert into matricula (id_aluno,id_curso,data_matriculada) VALUES (1,1,"2018.01.21");
insert into matricula (id_aluno,id_curso,data_matriculada) VALUES (2,2,"2021.05.10");
insert into matricula (id_aluno,id_curso,data_matriculada) VALUES (3,3,"2023.04.02");


create table avaliacao (
id_avaliacao INT PRIMARY KEY auto_increment,
id_matricula INT NOT NULL,
nota DECIMAL(6,2),
data_avaliacao DATE,
FOREIGN KEY (id_matricula) REFERENCES matricula (id_matricula)
);


insert into avaliacao (id_matricula,nota,data_avaliacao) VALUES (1,"7.9","2025.02.25");
insert into avaliacao (id_matricula,nota,data_avaliacao) VALUES (2,"10.70","2026.01.10");
insert into avaliacao (id_matricula,nota,data_avaliacao) VALUES (3,"8.1","2024.06.15");

SELECT * FROM aluno;


CREATE DATABASE ESCOLA;

USE ESCOLA;

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    data_nascimento DATE
);


CREATE TABLE Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    especialidade VARCHAR(100)
);


CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela Matricula
CREATE TABLE Matricula (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);


CREATE TABLE Avaliacao (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    id_matricula INT,
    nota DECIMAL(5,2),
    data_avaliacao DATE,
    FOREIGN KEY (id_matricula) REFERENCES Matricula(id_matricula)
);

INSERT INTO Professor (nome, email, especialidade) 
VALUES 
('Ricardo Almeida', 'ricardo.almeida@example.com', 'Matemática Discreta'),
('Patrícia Silva', 'patricia.silva@example.com', 'Desenvolvimento Web'),
('Felipe Gomes', 'felipe.gomes@example.com', 'Engenharia de Software');

INSERT INTO Aluno (nome, email, data_nascimento) 
VALUES 
('Juliana Martins', 'juliana.martins@example.com', '1996-08-13'),
('Fernando Costa', 'fernando.costa@example.com', '1999-01-22'),
('Isabela Pereira', 'isabela.pereira@example.com', '2001-05-05'),
('Gabriel Souza', 'gabriel.souza@example.com', '1997-11-30');

INSERT INTO Curso (nome, descricao, id_professor)
VALUES 
('Matemática Discreta', 'Curso de fundamentos de Matemática Discreta', 1),
('Desenvolvimento Web', 'Curso de construção de sites e aplicações web', 2),
('Engenharia de Software', 'Curso sobre melhores práticas em desenvolvimento de software', 3);

INSERT INTO Matricula (id_aluno, id_curso, data_matricula)
VALUES 
(1, 1, '2025-02-22'),
(2, 1, '2025-02-24'),
(3, 2, '2025-02-25'),
(4, 2, '2025-02-26'),
(1, 3, '2025-02-27'),
(2, 3, '2025-02-28');

INSERT INTO Avaliacao (id_matricula, nota, data_avaliacao)
VALUES 
(1, 9.0, '2025-02-26'),
(2, 8.0, '2025-02-27'),
(3, 7.0, '2025-02-28'),
(4, 8.5, '2025-02-28');

-- 1. SELECT --
SELECT * FROM Aluno;

-- 2. SELECT --
SELECT Curso.nome AS curso, Professor.nome AS professor
FROM Curso
JOIN Professor ON Curso.id_professor = Professor.id_professor;

-- 3. SELECT --
SELECT Aluno.nome
FROM Aluno
JOIN Matricula ON Aluno.id_aluno = Matricula.id_aluno
JOIN Curso ON Matricula.id_curso = Curso.id_curso
WHERE Curso.nome = 'Banco de Dados';

-- 4. SELECT --
SELECT Curso.nome AS curso, COUNT(Matricula.id_aluno) AS total_alunos
FROM Curso
JOIN Matricula ON Curso.id_curso = Matricula.id_curso
GROUP BY Curso.id_curso;

-- 5. SELECT --
SELECT Curso.nome AS curso, AVG(Avaliacao.nota) AS media_notas
FROM Curso
JOIN Matricula ON Curso.id_curso = Matricula.id_curso
JOIN Avaliacao ON Matricula.id_matricula = Avaliacao.id_matricula
GROUP BY Curso.id_curso
HAVING Curso.nome = 'Banco de Dados';

-- 6. SELECT --
SELECT Aluno.nome
FROM Aluno
JOIN Matricula ON Aluno.id_aluno = Matricula.id_aluno
LEFT JOIN Avaliacao ON Matricula.id_matricula = Avaliacao.id_matricula
WHERE Avaliacao.nota IS NULL;


