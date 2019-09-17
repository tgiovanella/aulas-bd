create table if not exists consultores(
id int not null primary key auto_increment,
nome varchar(50) not null,
email varchar(50) not null
) comment = 'Tabela que armazena os dados dos consultores da empresa';

create table if not exists especialidades(
id int not null primary key auto_increment,
descricao varchar(150) not null
) comment = 'Tabela que armazena os dados dos serviços que a empresa presta';

create table if not exists clientes(
id int not null primary key auto_increment,
descricao varchar(150) not null,
responsavel varchar(50) not null,
email varchar(100) not null,
telefone varchar(100) not null
) comment  = 'Tabela que armazena os dados dos clientes da empresa';

create table if not exists projetos(
id int not null primary key auto_increment,
descricao varchar(150) not null,
datainicio date not null,
datafinal date null comment 'A data final pode ser nula pois é possível ter contratos sem saber previamente a data de encerramento',
valor float not null,
idcliente int not null comment 'Só é possível um cliente por contrato',
constraint fk_pr_idcliente foreign key(idcliente) references clientes(id) on delete restrict on update cascade
); 

create table if not exists projetos_consultores(
idprojeto int not null,
idconsultor int not null,
status tinyint default 1 comment 'Status do consultor, 0 = não ativo, 1 = ainda ativo',
constraint fk_pc_idprojeto foreign key(idprojeto) references projetos(id) on delete cascade on update cascade,
constraint fk_pc_idconsultor foreign key(idconsultor) references consultores(id) on delete restrict on update cascade
) comment = 'Tabela que vincula os consultores que prestaram serviços no contrato (projeto)';
