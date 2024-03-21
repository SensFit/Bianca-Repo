create database sensfit;
use sensfit;
drop database sensfit;

create table franquias (
idFranquia int primary key auto_increment,
nomeAcademia varchar (15),
cnpj char (14),
telefoneFranquia char (11),
cep char (8)
)auto_increment = 100;

create table equipamentos (
idMaquina int primary key auto_increment,
tipo varchar (20),
dtVerificacao date,
fkFranquia int,
foreign key (fkFranquia) references franquias(idFranquia)
)auto_increment = 1000;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar (50),
email varchar (30),
senha varchar (20),
fkFranquia int,
foreign key (fkFranquia) references franquias(idFranquia)
);

insert into franquias(nomeAcademia, cnpj, telefoneFranquia, cep)
values ("Greenfit", "13467829457286", "96403765946", "01643752"),
("Redfit", "13467829457285", "96403765945", "01643757"),
("Purplefit", "13467829457284", "96403765949", "01643753"),
("Pinkfit", "13467829457283", "96403765948", "01643754");

insert into equipamentos(tipo, dtVerificacao, fkFranquia)
values ("cardio", "2016-02-12", 100),
("extensora", "2022-06-22", 101),
("flexora", "2023-09-04", 102),
("abdutora", "2024-11-14", 103);

insert into usuario(nome, email, senha, fkFranquia)
values ("Leonardo", "leonardo.bento@sptech.school", "123456", 100),
("Kohatsu", "gustavo.kohatsu@sptech.school", "234567", 101),
("Bianca", "bianca.souza@sptech.school", "345678", 102),
("Giovanna", "giovanna.beltrao@sptech.school", "456789", 103);

select * from franquias;
select * from equipamentos;
select * from usuario;

select *
from usuario
join franquias on fkFranquia = idFranquia;