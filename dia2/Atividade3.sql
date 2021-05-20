
create database db_escola;

use db_escola;


create table tb_aluno(
id bigint auto_increment,
nome varchar(255) not null,
matricula int(255) not null,
endereco varchar(255) not null,
telefone int(100) not null,
nota double not null,
primary key(id)
);

insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Alfredo",15679,"Rua doze",36554132,6.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Bruna",12345,"Rua das palmeiras",38427518,8.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Thiago",46527,"Rua de baixo",36722445,9.0);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Sergio",95724,"Rua perto da li",36996420,5.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Joana",34257,"Rua depois da avenida",33422057,6.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Patricia",24578,"Rua de ca",38330218,7.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Charles",24578,"Rua quarto",32021809,4.5);
insert into tb_aluno(nome,matricula,endereco,telefone,nota) values ("Bruno",32457,"Rua premero",33027846,9.5);


select * from tb_aluno where nota>7;
select * from tb_aluno where nota<7;
update tb_aluno set nota=6 where id=4;












