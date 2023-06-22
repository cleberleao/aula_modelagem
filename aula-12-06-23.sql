ALTER TABLE clientes
ADD PRIMARY KEY (id_cliente);

ALTER TABLE pedidos
ADD column cliente_id int,
ADD CONSTRAINT fk_cliente_id
FOREIGN KEY (cliente_id)
REFERENCES clientes (id_cliente);

select * from clientes;
select * from pedidos;
-- Questão 1
select clientes.nome, pedidos.id_pedido, pedidos.data
from clientes
join pedidos ON clientes.id_cliente = pedidos.cliente_id;
-- Questão 2
ALTER TABLE pedidos
ADD column produto_id int,
ADD CONSTRAINT fk_produto_id
FOREIGN KEY (produto_id)
REFERENCES produtos (id_produto);

select * from pedidos;
select * from produtos;

select produtos.nome
from produtos
join pedidos ON produtos.id_produto = pedidos.produto_id;

-- Questão 3
select clientes.nome, pedidos.id_pedido, produtos.nome, pedidos.valor
from clientes
join pedidos ON clientes.id_cliente = pedidos.cliente_id
join produtos ON produtos.id_produto = pedidos.produto_id;

