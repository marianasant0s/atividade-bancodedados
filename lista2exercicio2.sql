create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categoria 
(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo varchar(255) not null,
    primary key (id)
);
create table tb_pizza
(
	id bigint auto_increment,
    nome varchar (255) not null,
    preco float not null,
    tamanho varchar (255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo,ativo) values ("salgada", true);
insert into tb_categoria (tipo,ativo) values ("doce", true);
insert into tb_categoria (tipo,ativo) values ("vegetariana", true);
insert into tb_categoria (tipo,ativo) values ("borda recheada", true);
insert into tb_categoria (tipo,ativo) values ("sem borda", true);

select * from tb_categoria;

insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("Marguerita", 23.00,"grande", 1);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("Mussarela", 20.00,"grande", 1);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("brigadeiro", 23.00,"grande", 2);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("morango com chocolate", 56.00," extra grande", 2);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("calabresa", 23.00,"grande", 4);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("Vegetais", 25.00,"grande", 3);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("palmito", 23.00,"grande", 5);
insert into tb_pizza (nome, preco, tamanho, categoria_id) values ("bacon", 53.00," extra grande", 4);

select * from tb_pizza;

select * from tb_pizza where preco>50.00;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like '%C%';
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select nome, tipo from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 2


