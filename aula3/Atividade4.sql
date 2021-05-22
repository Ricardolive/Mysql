
create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
qtdProduto int,
valor decimal(5,2) not null,
id_categoria bigint not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(tipo) values("Frutas amarelas");
insert into tb_categoria(tipo) values("Frutas vermelhas");
insert into tb_categoria(tipo) values("Frutas tropicais");
insert into tb_categoria(tipo) values("Frutas nobres");
insert into tb_categoria(tipo) values("Frutas verdes");


insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Banana",53,7.99,1);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Kiwi",38,6.39,4);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Amora",75,4.59,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Limão",93,2.99,5);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Goiaba",41,4.59,3);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Cereja",69,9.89,4);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Cajá",103,5.79,3);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Pêssego",37,9.79,4);

select * from tb_produto where valor >50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome, tb_produto.qtdProduto,tb_produto.valor,tb_categoria.tipo from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.tipo = "Frutas nobres";









