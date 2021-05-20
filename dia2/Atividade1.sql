 
 create database db_Rh;
 
 use db_Rh;
 
 create table tb_funcionarios(
 id bigint auto_increment,
 nome varchar(255) not null,
 matricula int(255) not null,
 cargo varchar(255) not null,
 salario decimal not null,
 primary key(id)
 );
 
 insert into tb_funcionarios(nome,matricula,cargo,salario) values("Murilo",10720,"Analista de sistemas",8000);
 insert into tb_funcionarios(nome,matricula,cargo,salario) values("Bianca",10815,"Desenvolvedora java ",5000);
 insert into tb_funcionarios(nome,matricula,cargo,salario) values("Renato",10930,"Engenheiro de software",7000);  
insert into tb_funcionarios(nome,matricula,cargo,salario) values("Amanda",10735,"Analista segurança da informação",6000);
insert into tb_funcionarios(nome,matricula,cargo,salario) values("Eduardo",10855,"Tecnico de informatica",1800);
   
 select * from tb_funcionarios where salario>2000;
  select * from tb_funcionarios where salario<2000;
  update tb_funcionarios set salario=1900 where id=2
 
 
 
 
 
 
 
 
 
 
 
 
 