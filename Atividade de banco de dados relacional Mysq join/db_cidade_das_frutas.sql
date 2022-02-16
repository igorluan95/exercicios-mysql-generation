create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(255),
fornecedor varchar(255),
data_fornecedor date,
primary key (id)
);
 
insert into tb_categoria (departamento, fornecedor, data_fornecedor) values ("Hortifruti","Disbtribuidora Caetano","2022-02-14");
insert into tb_categoria (departamento, fornecedor, data_fornecedor) values ("Açougue","Distribuidora Souza","2022-02-13");
insert into tb_categoria (departamento, fornecedor, data_fornecedor) values ("Padaria","Distribuidora David","2022-02-15");
insert into tb_categoria (departamento, fornecedor, data_fornecedor) values ("Bebida","Disbtribuidora Silva","2022-02-15");
insert into tb_categoria (departamento, fornecedor, data_fornecedor) values ("Lácteos","Distribuidoras Lopes","2022-02-14");

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
codigo int,
nome varchar(255),
tipo varchar(255),
quantidade varchar(255),
preco decimal (10,2),
departamento_id bigint not null,
primary key (id),
foreign key (departamento_id) references tb_categoria(id)
);

insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (1456,"Damasco","Frutas Secas","500 g",43.20,1);
insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (2566,"Maça","Fruta","550 g",5.50,1);
insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (2896,"Filet Mion","Carne Bovina","900 g",70.59,2);
insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (3698,"Pão","Francês","300 g",4.29,3);
insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (7898,"Coca-Cola","Refrigerante"," 2L",7.99,4);
insert into tb_produto (codigo, nome, tipo, quantidade, preco, departamento_id) values (5256,"Queijo","Frescal","500 g",25.99,5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select*from tb_produto where nome like "%c%";

select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.departamento_id;

select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.departamento_id
where departamento = "Hortifruti";