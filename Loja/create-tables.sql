create database if not exists loja;
use loja;

create table if not exists categorias(
idcategoria int not null primary key auto_increment,
descricao varchar(100) not null
);

create table if not exists produtos(
idproduto int not null primary key auto_increment,
idcategoria int not null,
descricao varchar(100) not null,
valor float not null comment 'Valor de venda',
custo float not null comment 'Custo do produto para compra',
constraint fk_prod_idcategoria foreign key(idcategoria) references categorias(idcategoria)
);

create table if not exists vendas(
idvenda int not null primary key auto_increment,
idproduto int not null,
datahora datetime default current_timestamp,
valor float not null comment 'valor de venda do produto na ocasiao',
valorvenda float not null comment 'valor que o produto foi vendido',
quantidade float not null,
custo float not null comment 'preco de custo do produto na ocasiao',
constraint fk_vda_idproduto foreign key(idproduto) references produtos(idproduto)
);

create table if not exists log(
idlog int not null primary key auto_increment,
usuario varchar(100) not null,
idproduto int not null,
acao varchar(200) not null,
datahora datetime not null,
constraint fk_log_idproduto foreign key(idproduto) references produtos(idproduto)
);