
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;
 

create table tb_categoria(
id bigint auto_increment,
area varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
qtdHoras int not null,
valor decimal(5,2) not null,
id_categoria bigint not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(area) values("Tecnologia");
insert into tb_categoria(area) values("Saude");
insert into tb_categoria(area) values("Direitos");
insert into tb_categoria(area) values("Engenharia");
insert into tb_categoria(area) values("Matematica");
 


insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Java",180,120.59,1);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Engenheiro civil",250,90.99,4);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Professor de matematica",120,200.29,5);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Phyton",180,140.59,1);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Enfermeiro",350,420.89,2);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Medico",180,850.79,2);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Procurador",370,620.39,3);
insert into tb_produto(nome,qtdHoras,valor,id_categoria) values("Juiz",180,920.99,3);
 

select * from tb_produto where valor >50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "J%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome, tb_produto.qtdHoras,tb_produto.valor,tb_categoria.area from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.area = "Tecnologia";





















