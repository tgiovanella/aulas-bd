insert into categorias(descricao) values
('Eletrônicos'),
('Informática'),
('Móveis'),
('Eletrodomésticos'),
('Smartphones'),
('Consoles');


insert into produtos(idcategoria,descricao,valor,custo) values
(1,'Aparelho de Som Sony',100.90,90.99),
(1,'TV LED 4K Samsung',10900.00,8200.00),
(2,'Notebook STI I5',2999.99,1660.99),
(4,'Batedeira Walita',99.90,40.00),
(6,'Playstation IV',3900,2000);

insert into vendas(idproduto,datahora,valor,valorvenda,quantidade,custo) values
(1,now(),100.90,100.90,1,90.99),
(1,'2019-09-10 10:45',100.90,98.90,1,90.99),
(3,'2019-05-10 08:40',2999.99,2499.90,5,1660.90),
(5,'2019-10-08 07:00',3900.00,3990.90,2,2000);

