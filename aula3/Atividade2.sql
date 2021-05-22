
create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

create table tb_pizza (
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
valor decimal(5,2) not null,
id_categoria bigint not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(tipo) values("Doce");
insert into tb_categoria(tipo) values("Salgada");
insert into tb_categoria(tipo) values("Mista");
 

insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Mussarela","Queijo e molho de tomate",30.59 ,2);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Calabresa","Calabresa fatiada e cebola",35.29 ,2);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Portuguesa","Queijo,ovo,lombo,cebola,ervilha",49.99 ,2);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Milho","Milho e queijo",38.29 ,2);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Nordestina","Milho,ervilha,queijo,presunto,ovo,cebola",45.99 ,2);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Brigadeiro","Chocolate e granulado",48.59 ,1);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Morango e chocolate","Morango, chocolate e granulado",55.29 ,1);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Queijo brie e damasco","Queijo brie e damasco fatiado",62.29 ,3);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Banana","Banana caramelizada, chocolate",55.39 ,1);
insert into tb_pizza(nome,descricao,valor,id_categoria) values ("Romeu e julieta","Goiabada e fatias de queijo mineiro",59.99 ,3);

select * from tb_pizza;
select * from tb_categoria;

 
select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where nome like "C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria;

select tb_pizza.nome, tb_pizza.descricao,tb_pizza.valor,tb_categoria.tipo
 from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where tb_categoria.tipo="Mista";














