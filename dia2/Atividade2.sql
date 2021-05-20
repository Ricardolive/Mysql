 
 create database db_Ecommerce;
 
 use db_Ecommerce;
 
 create table tb_produto(
 id bigint auto_increment,
 nome varchar(255) not null,
 marca varchar(255) not null,
 descricao varchar(255),
 preco double not null,
 primary key(id)
 );
 
 insert into tb_produto(nome,marca,descricao,preco) values("Creme dental","Colgate","Ajuda a branquear os dentes",3.99);
  insert into tb_produto(nome,marca,descricao,preco) values("Chocolate kitkat","Nestlé","wafer de chocolate ao leite",2.99);
 insert into tb_produto(nome,marca,descricao,preco) values("Smartphone LG k22","LG"," 4g tela 6.2''", 806.55);
 insert into tb_produto(nome,marca,descricao,preco) values("Liquidificador L-100","Mondial","Turbo 12velocidades", 129.99);
 insert into tb_produto(nome,marca,descricao,preco) values("Smart TV Led P43e","Philco","43'' suporte 3D", 1599.59);
 insert into tb_produto(nome,marca,descricao,preco) values("Mascara hidratante","Tresemmé","Hidrata e renova cabelos", 19.29 );
 insert into tb_produto(nome,marca,descricao,preco) values("Relogio digital ","Oakley","Relogio esportivo", 79.89 );
 insert into tb_produto(nome,marca,descricao,preco) values(" Creme hidratante","Nivea","Hidrata a pele", 12.59   );
 
 
 select * from tb_produto where preco>500;
  select * from tb_produto where preco<500;
  update tb_produto set descricao="3L Turbo 12 Velocidades" where id=4;
 
 
 
 
 
 
 
 
 
 
 
 
 