-- Apagando o banco de dados
drop database dbcantina;
-- Criando o banco de dados
create database dbcantina;
-- Acessando o banco de dados
use dbcantina;
-- Criando as tabelas
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) unique,
cpf char(14) not null unique,
sexo char(1) default "F" check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
nascimento date,
telCelular char(10),
primary key(codFunc));

create table tbFornecedores(
    codForn int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    cnpj char(17) not null unique,
    primary key(codForn));

create table tbUsuarios(
codUsuario int not null auto_increment,
nome varchar(25) not null unique,
senha varchar(10) not null,
codFunc int not null,
primary key(codUsuario),
foreign key(codFunc) references tbFuncionarios(codFunc));

create table tbProdutos(
    codProduto int not null auto_increment,
    descricao varchar(100),
    quantidade int,
    valor decimal(9,2),
    validade date,
    dataEntrada date,
    horaEntrada time,
    codForn int not null,
    primary key(codProduto),
    foreign key(codForn) references tbFornecedores(codForn));
--visualizando banco de dados
desc tbFuncionarios;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;