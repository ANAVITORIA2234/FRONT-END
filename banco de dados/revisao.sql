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

-- 1. select--
SELECT * FROM aluno;

-- 2. select--
SELECT curso.nome AS curso, professor.nome AS professor
FROM curso
JOIN professor ON curso.id_professor = professor.id_professor;

-- 3. select--

SELECT aluno.nome
FROM aluno
JOIN matricula ON aluno.id_aluno = matricula.id_aluno
JOIN curso ON matricula.id_curso = curso.id_curso
WHERE curso.nome = 'Banco de Dados';

-- 5. select--
select curso.nome , AVG(avaliacao.nota) FROM curso JOIN matricula ON curso.id = matricula.id_matricula JOIN avaliacao ON matricula.id_matricula = avaliacao.id_avaliacao
