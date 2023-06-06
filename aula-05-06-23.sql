create table Pessoa(
idPessoa int,
nome varchar(255) not null,
email varchar(255) not null,
peso float(10,2) not null,
primary key(idPessoa))

select * from pessoa;

-- 1- Faça o SQL da criação de uma tabela chamada "Alunos" com as colunas "id" (chave primária), "nome" e "idade".
create table Alunos2(
id_aluno int,
nome varchar(255),
nota int,
primary key (id_aluno)
);
-- 2 Vamos supor que você queira atualizar o nome de um aluno com ID 1 para "João" na tabela "Alunos" 
-- crie um SQL usando comando UPDATE.
-- colocar dados para manipular
insert into alunos (id, nome, idade) values (3,"teste 2",30);
insert into alunos2 (id_aluno, nome, nota) values (4,"teste 3 ",7);
update alunos set nome = "João" where id = 1;
-- Agora crie um SELECT para selecionar todos os alunos da tabela "Alunos".
select * from alunos2;
-- 3 Supondo que você queira selecionar apenas os alunos com idade superior a 20 na tabela "Alunos" 
-- crie o SQL do SELECT adequado para esta ação.
select * from alunos where idade > 19;
-- 4 Para realizar uma exclusão usamos o comando DELETE, suponha que você queira excluir um aluno
-- com ID 2 da tabela "Alunos" crie a instrução.sql 
delete from alunos where id = 2;
-- 5 Em uma tabela "Alunos" com as colunas "id_aluno", "nome" e "nota", escreva uma consulta SQL para 
-- selecionar o nome dos alunos que obtiveram uma nota maior que 8.
select * from alunos2 where nota >8;
-- 6 Para uma tabela "Produtos" com as colunas "id_produto", "nome" e "preco", escreva uma consulta 
-- SQL para calcular o preço médio dos produtos.
create table Produtos(
id_produto int,
nome varchar(255),
preco float,
primary key (id_produto)
);
insert into produtos (id_produto, nome, preco) values (3, "Teste", 18.75);
select * from produtos;

select nome from produtos where preco > (select AVG(preco) FROM produtos);

select AVG(preco) as preco_medio from produtos;
 
 -- Supondo que temos uma tabela "Pedidos" com as colunas "id_pedido", "data" e "valor", 
 -- escreva uma consulta SQL para selecionar todos os pedidos feitos em 2021.

create table Pedidos (
id_pedido int, 
`data` date, 
valor float,
primary key (id_pedido)
);

select * from pedidos;

insert into Pedidos (id_pedido, `data`, valor) values ( 3, '2021/01/10' , 58.25);

select * from pedidos where year(`data`) = 2020;

-- Dada a tabela "Clientes" com as colunas "id_cliente", "nome" e "data_nascimento", escreva uma consulta SQL 
-- para selecionar o nome e a idade dos clientes.

create table clientes (
id_cliente int, 
data_nascimento date, 
nome varchar(255),
primary key (id_cliente)
);
insert into clientes (id_cliente, data_nascimento, nome) values (3, "2005/06/11", "Alguem 3");

select nome, year(curdate()) - year(data_nascimento) as idade from clientes;
