-- Apagando o banco de dados
drop database dbcantina;
-- Criando o banco de dados
create database dbcantina;
-- Acessando o banco de dados
use dbcantina;
-- Criando as tabelas
create table tbfuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email vachar(100) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2),
nascimento date,
telCelular char(99999-9999),
primary key(codFunc));
