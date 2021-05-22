
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
 

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
unidade varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
qtdProduto int not null,
valor decimal(5,2) not null,
id_categoria bigint not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(tipo,unidade) values("Naturais","Kg");
insert into tb_categoria(tipo,unidade) values("Artificiais","un");
 


insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Areia",2000,3.99,1);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Pedra",3000,2.59,1);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Bloco de Concreto",275,7.29,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Telha",193,4.39,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Torneira",51,49.99,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Caixa dagua",40,407.49,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Cano pvc",120,6.89,2);
insert into tb_produto(nome,qtdProduto,valor,id_categoria) values("Furadeira",46,128.99,2);


select * from tb_produto where valor >50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome, tb_produto.qtdProduto,tb_categoria.unidade,tb_produto.valor,tb_categoria.tipo from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.tipo = "Naturais";




























