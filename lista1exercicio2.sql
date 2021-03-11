 create database db_ecommerce;
 use db_ecommerce;
 
 create table  tb_produtos
 (
	id bigint auto_increment,
    produto varchar (522) not null,
    marca varchar (522) not null,
    valor int not null,
    setor int not null,
    primary key (id)
 );
 
 select * from tb_produtos;
 
 insert into tb_produtos (produto, marca, valor, setor) values ("Achocolatado", "Toddy", 6, 2);
 insert into tb_produtos (produto, marca, valor, setor) values ("Achocolatado", "Nescau", 8, 2);
 insert into tb_produtos (produto, marca, valor, setor) values ("Arroz", "Camil", 24, 3);
 insert into tb_produtos (produto, marca, valor, setor) values ("feijao", "camil", 8, 4);
 insert into tb_produtos (produto, marca, valor, setor) values ("batata frita", "select", 12, 8);
 insert into tb_produtos (produto, marca, valor, setor) values ("nuggets", "sadia", 9, 5);
 insert into tb_produtos (produto, marca, valor, setor) values ("chocolate", "harsheys", 4, 1);
 insert into tb_produtos (produto, marca, valor, setor) values ("suco", "tang", 2, 7);
 
update tb_produtos set valor = "600"
where id =3;
 
 select * from tb_produtos where valor>500;
select * from tb_produtos where valor<500;
 
 