create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria
(
	id bigint auto_increment,
    tipo varchar (522) not null,
    ativo boolean not null,
    primary key (id)
);

insert into tb_categoria (tipo, ativo) values ('Bovino', true);
insert into tb_categoria (tipo, ativo) values ('Suino', true);
insert into tb_categoria (tipo, ativo) values ('aves', true);
insert into tb_categoria (tipo, ativo) values ('cabeça', true);
insert into tb_categoria (tipo, ativo) values ('pé', true);

select * from tb_categoria;

create table tb_produtos
(
	id bigint auto_increment not null,
    nome varchar (522) not null,
    quantidade varchar(255) not null,
    preco float not null,
    categoria_id bigint,
	primary key (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, quantidade, preco) values ("Coxa", "1kg", 25.00);
insert into tb_produtos (nome, quantidade, preco) values ("sobre coxa", "1kg", 28.00);
insert into tb_produtos (nome, quantidade, preco) values ("asinha", "1kg", 15.00);
insert into tb_produtos (nome, quantidade, preco) values ("Coxinha", "2kg", 40.00);
insert into tb_produtos (nome, quantidade, preco) values ("patinho", "1kg", 27.00);
insert into tb_produtos (nome, quantidade, preco) values ("pé de galinha", "500g", 10.00);
insert into tb_produtos (nome, quantidade, preco) values ("Figado", "100g", 2.50);
insert into tb_produtos (nome, quantidade, preco) values ("tulipa", "1kg", 30.00);

select * from tb_produtos;

select * from tb_produtos where preco>50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%c%";
select * from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id;
select nome, tipo from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 1;

