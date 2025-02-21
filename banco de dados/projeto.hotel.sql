create database hotel_bela_vista;
use hotel_bela_vista;

create table garagem (
id_automoveis INT PRIMARY KEY auto_increment,
placa_do_automovel VARCHAR(100) NOT NULL
);

insert into garagem(placa_do_automovel) VALUES ("FSTLUV");
insert into garagem(placa_do_automovel) VALUES ("GR8FUN");
insert into garagem(placa_do_automovel) VALUES ("N0LIMT");


create table recepcao (
id_recepcao INT PRIMARY KEY auto_increment,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(50),
email VARCHAR (50)
);

insert into recepcao (nome,telefone,email) VALUES ("Jusele","(11) 98765-4321","juseleoliveiragmail.com");
insert into recepcao (nome,telefone,email) VALUES ("Pedro","(21) 99876-5432","pedrosantosgmail.com");
insert into recepcao (nome,telefone,email) VALUES ("Raimunda","(61) 99888-7777","rainunda6gmail.com");


create table reserva (
id_reserva INT PRIMARY KEY auto_increment,
hospede VARCHAR(100) NOT NULL,
quarto VARCHAR(50),
data_reserva date,
horario_especifico TIME 
);

insert into reserva (hospede,quarto,data_reserva,horario_especifico) VALUES ("Jusele","234","2025-02-11","13:35");
insert into reserva (hospede,quarto,data_reserva,horario_especifico) VALUES ("Pedro","155","2025-10-21","11:00");
insert into reserva (hospede,quarto,data_reserva,horario_especifico) VALUES ("Raimunda","347","2025-07-09","16:47");


create table check_in (
id_check INT PRIMARY KEY auto_increment,
nome_de_verificacao VARCHAR(100) NOT NULL,
quarto VARCHAR(50)
);

insert into check_in (nome_de_verificacao,quarto) VALUES ("Pedro","155");
insert into check_in (nome_de_verificacao,quarto) VALUES ("Raimunda","347");
insert into check_in (nome_de_verificacao,quarto) VALUES ("Jusele","234");

create table pacote (
id_pacote INT PRIMARY KEY auto_increment,
nome_do_pacote varchar(100),
valor INT (50)
);

insert into pacote (nome_do_pacote,valor) VALUES ("escape romantico","150,90");
insert into pacote (nome_do_pacote,valor) VALUES ("sol,praia e rexalamento","250");
insert into pacote (nome_do_pacote,valor) VALUES ("encontro com a natureza","300");

select 300+150,90 AS soma;