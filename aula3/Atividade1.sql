
create database db_generation_game_online;

use db_generation_game_online;


create table tb_classe(
id bigint auto_increment,
tipo varchar(255),
distanciaAtaque int,
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
poderAtaque int,
armadura int,
velocidade int,
id_classe bigint,
primary key(id),
foreign key(id_classe) references tb_classe(id)
);

insert into tb_classe(tipo,distanciaAtaque) values("Atirador",30);
insert into tb_classe(tipo,distanciaAtaque) values("Mago",25);
insert into tb_classe(tipo,distanciaAtaque) values("Caçador",10);
insert into tb_classe(tipo,distanciaAtaque) values("Suporte",10);
insert into tb_classe(tipo,distanciaAtaque) values("Lutador",5);


insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Caio",2000 ,1500,20,4);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Pedro",3500 ,3000,10,5);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Laura",4000 ,4000,10,5);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Arnaldo",1500 ,2000,30,2);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Felipe",2500 ,1500,25,1);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Gabriel",3500 ,3000,10,3);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Paloma",1500 ,2000,30,2);
insert into tb_personagem(nome,poderAtaque,armadura,velocidade,id_classe) values ("Tatiana",3000 ,2500,15,3);

 
select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where armadura between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe;

select tb_personagem.nome, tb_personagem.poderAtaque,tb_personagem.armadura,tb_personagem.velocidade, tb_classe.tipo,tb_classe.distanciaAtaque
 from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe where tb_classe.tipo="Caçador";














