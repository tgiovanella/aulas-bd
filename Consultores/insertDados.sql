## É possível fazer mais de um insert de uma única vez da forma demonstrada abaixo
insert into consultores(nome, email) values
('Thiago Giovanella','thiago@giovanella.com'),
('Marco Antonio','marco@antonio.com'),
('Maria Lucia','marialucia@consultoria.com'),
('Pedro Honório','pedro@honorioconsultoria.com');

insert into clientes(descricao, responsavel, email, telefone) values
('Armazem de Cascalho','Tadeu Rezende', 'armazem@armazem.com.br','3532323211'),
('Jurandir Caça e Pesca','Jurandir Mioranza', 'cacapesca@hotmail.com','3536545452'),
('Joca Artes','Joaquim Carneiro Filho', 'filhocarneiro@joca.com.br','353645152');

insert into especialidades(descricao) values
('Consultoria em Bancos de Dados'),
('Consultoria em Segurança da Informação'),
('Gestão de Projetos');