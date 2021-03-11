 create database db_escola;
 use db_escola;
 
 create table  tb_alunos
 (
	id bigint auto_increment,
    nome varchar (522) not null,
    idade int not null,
    serie int not null,
    nota int not null,
    primary key (id)
 );
 
 select * from tb_alunos;
 
insert into tb_alunos (nome, idade, serie, nota) values ("Ashley", 17, 3, 5);
insert into tb_alunos (nome, idade, serie, nota) values ("Lorena", 17, 3, 8);
insert into tb_alunos (nome, idade, serie, nota) values ("Viviane", 16, 2, 9);
insert into tb_alunos (nome, idade, serie, nota) values ("Ana", 16, 2, 7);
insert into tb_alunos (nome, idade, serie, nota) values ("Mariana", 15, 1, 6);
insert into tb_alunos (nome, idade, serie, nota) values ("notafael", 15, 1, 9);
insert into tb_alunos (nome, idade, serie, nota) values ("Gabriel", 14, 1, 7);
insert into tb_alunos (nome, idade, serie, nota) values ("André", 14, 1, 10);
 
update tb_alunos set idade = "16", serie = 2
 where id =7;

 select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;
 
 select * from tb_alunos;
 