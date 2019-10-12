select idproduto, descricao, valor, custo,
format((((valor-custo)*100)/custo),2) as percentual
from produtos
order by (((valor-custo)*100)/custo) desc;

select c.descricao as categoria, 
p.descricao, p.valor, p.custo, p.idproduto
from produtos p inner join vendas v on p.idproduto = v.idproduto
inner join categorias c on p.idcategoria = c.idcategoria

select c.descricao as categoria, 
p.descricao, p.valor, p.custo, p.idproduto
from produtos p left join vendas v on p.idproduto = v.idproduto
inner join categorias c on p.idcategoria = c.idcategoria
where v.idproduto is not null

select p.idproduto, p.descricao, v.valor, v.valorvenda, v.custo, v.quantidade, 
date_format(v.datahora,'%d/%m/%Y') as datahora,
format((v.valorvenda*quantidade),2) as total_nota,
format((v.custo*quantidade),2) as total_custo,
format((v.valorvenda*quantidade)-(v.custo*quantidade),2) as liquido,
(((v.valorvenda*quantidade)-(v.custo*quantidade))*100)/(v.custo*quantidade) as percentual
from produtos p inner join vendas v on p.idproduto = v.idproduto

