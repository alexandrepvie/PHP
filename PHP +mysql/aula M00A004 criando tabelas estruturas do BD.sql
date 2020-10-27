create database bd_games default character set utf8 collate utf8_general_ci;
use bd_games;
/*Criando tabela usuarios*/
create table usuarios (
usuario int(10) not null auto_increment ,
nome varchar(30) not null,
senha varchar(60) not null,
tipo varchar(10) not null default 'editor',
primary key(usuario)
) engine=InnoDB default charset=utf8;
/*criando tabela generos*/
create table generos(
cod int(11) not null ,
genero varchar(20) not null,
primary key(cod)
)engine=InnoDB default charset=utf8;
/*Criando tabela de produtoras*/
create table produtoras (
cod int(11) not null,
produtora varchar(20) not null,
pais varchar(15) not null,
primary key(cod)
)engine=InnoDB default charset= utf8;
/*Criando a tabela jogos*/
create table jogos(
cod int(11)not null,
nome varchar(40) not null,
genero int(11) not null,
produtora int(11) not null,
descricao text not null,
nota decimal(4,2) not null,
capa varchar(40) default null,
primary key(cod),
foreign key(genero) references generos(cod),
foreign key(produtora) references produtoras(cod)
)engine=InnoDB default charset=utf8;
