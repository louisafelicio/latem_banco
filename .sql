create database la_tem;

use la_tem;

create table avatar(
id_avatar int primary key auto_increment,
avatar blob);

create table usuario(
id_usuario int primary key auto_increment,
nome varchar(60) not null,
nome_social varchar(60),
senha varchar(20) not null,
cpf char(11) not null,
constraint unique_cpf_usuario unique (cpf),
email varchar(60) not null,
constraint unique_email_usuario unique (email),
avatar_fk int not null,
constraint foreign_key_avatar_usuario foreign key (avatar_fk) references avatar (id_avatar),
rua varchar(60) not null,
bairro varchar(40) not null,
numero varchar(4) not null,
cep varchar(8) not null,
cidade varchar(60) not null,
uf char(2),
pais varchar(60) not null,
telefone numeric(9) not null,
ddd char(2) not null,
codigo_de_pais char(2) not null
);

create table empresa(
id_empresa int primary key auto_increment,
razao_social varchar(100) not null,
senha varchar(20) not null,
email varchar(60) not null,
constraint unique_email_empresa unique (email),
ramo_atuacao varchar(30) not null,
cnpj char(14) not null,
rua varchar(60) not null,
bairro varchar(40) not null,
numero varchar(4) not null,
cep varchar(8) not null,
cidade varchar(60) not null,
uf char(2),
pais varchar(60) not null,
telefone numeric(9) not null,
ddd char(2) not null,
codigo_de_pais char(2) not null
);

create table imagem_produto(
id_imagem_produto int primary key auto_increment,
imagem blob);

create table produto(
id_produto int primary key auto_increment,
nome varchar(60) not null,
categoria varchar(45) not null,
imagem_fk int not null,
constraint foreign_key_imagem_produto foreign key (imagem_fk) references imagem_produto (id_imagem_produto),
empresa_fk int not null,
constraint foreign_key_empresa_produto foreign key (empresa_fk) references empresa (id_empresa)
);


insert into usuario (nome, senha, cpf, email, avatar_fk, rua,
 bairro, numero, cep, cidade, uf, pais, telefone, ddd, codigo_de_pais) 
 values ('Pedro Gonçalves Moreira','Pedro123',45766534890,'pedro.moreira@gmail.com', 1, 'Rua Ademar de Barros','centro', 1436,14406452, 'Franca', 'SP','Brasil', 99999-9999, 16, 55);
 

insert into usuario (nome, senha, cpf, email, avatar_fk, rua,
 bairro, numero, cep, cidade, uf, pais, telefone, ddd, codigo_de_pais) 
 values ('Michele Guerreira Xavier','Mic123',45764894897,'michele.xavier@gmail.com', 2, 'Rua  José Chiachile','Alvorada', 3567,14406342, 'São Paulo', 'SP','Brasil', 98889-9779, 21, 55);

insert into usuario (nome, senha, cpf, email, avatar_fk, rua,
 bairro, numero, cep, cidade, uf, pais, telefone, ddd, codigo_de_pais) 
 values ('Matheus Paulino Borges','Mat123',45766334850,'matheus.borges@gmail.com', 3, 'Rua Ana Aymola Chicaroni','centro', 1234,14406782, 'Franca', 'SP','Brasil', 97799-9859, 16, 55);
 
 insert into usuario (nome, senha, cpf, email, avatar_fk, rua,
 bairro, numero, cep, cidade, uf, pais, telefone, ddd, codigo_de_pais) 
 values ('Maria Helena Silva','Mah123',45786432895,'maria.helena@gmail.com', 4, 'Rua Santa Terezinha','Martins', 4567,14406876, 'Franca', 'SP','Brasil', 98799-9349, 16, 55);
 