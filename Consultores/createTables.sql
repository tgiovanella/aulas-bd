create table if not exists consultores(
id int not null primary key auto_increment,
nome varchar(50) not null,
email varchar(50) not null
);

create table if not exists especialidades(
id int not null primary key auto_increment,
descricao varchar(150) not null
);

create table if not exists clientes(
id int not null primary key auto_increment,
descricao varchar(150) not null,
responsavel varchar(50) not null,
email varchar(100) not null,
telefone varchar(100) not null
);

create table if not exists projetos(
id int not null primary key auto_increment,
descricao varchar(150) not null,
datainicio date not null default current_timestamp,
datafinal date null,
valor float not null,
idcliente int not null,
constraint fk_pr_idcliente foreign key(idcliente) references clientes(id) on delete restrict on update cascade
); 

create table if not exists projetos_consultores(
idprojeto int not null,
idconsultor int not null,
status tinyint default 0,
constraint fk_pc_idprojeto foreign key(idprojeto) references projetos(id) on delete cascade on update cascade,
constraint fk_pc_idconsultor foreign key(idconsultor) references consultor(id) on delete restrict on update cascade
);
