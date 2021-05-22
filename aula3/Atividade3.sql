
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255),
descricao varchar(255),
valor decimal(5,2),
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(tipo) values("Cosméticos");
insert into tb_categoria(tipo) values("Cuidado infantil");
insert into tb_categoria(tipo) values("Medicamentos");
insert into tb_categoria(tipo) values("Higiene");
insert into tb_categoria(tipo) values("Cabelo e beleza");

insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Creme dental","Sorriso","Clareador de dentes",4.99,4);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Papel higienico","Neve","Higiene intima",6.59,4);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Creme facial","Avene","Limpador de manchas faciais",39.79,1);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Advil","Johnson","Alivia a dor",12.29,3);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Frauda","Huggies","Cuidado para bebes",49.89,2);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Shampoo","Johnson","Cuidado cabelo para bebes",17.29,2);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Creme para pentear","Seda","Pentear e Hidratar os cabelos",22.99,5);
insert into tb_produto(nome,marca,descricao,valor,id_categoria) values("Dramin","Pfizer","Antihemético",42.89,3);

 
select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome, tb_produto.marca, tb_produto.descricao,tb_produto.valor,tb_categoria.tipo
 from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;







