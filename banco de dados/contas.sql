create  database banco;
use banco;

create table contas(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(255) UNIQUE,
  sobrenome VARCHAR(18),
  saldo DECIMAL (6,2),
  data_de_nascimento VARCHAR(100)
  );
    
insert into contas(nome,sobrenome,saldo,data_de_nascimento) values ("Lorena", "Pereira",79.00,"08.01.2000");
insert into contas(nome,sobrenome,saldo,data_de_nascimento) values ("Pedro","Silva",870.09,"13.05.2010");
insert into contas(nome,sobrenome,saldo,data_de_nascimento) values ("Ana","Santos",100.45,"22.07.2007");