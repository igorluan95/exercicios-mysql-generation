create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(255),
tipo varchar(255),
especificacao varchar(255),
primary key (id)
);

insert into tb_categoria (departamento, tipo, especificacao) values ("Medicamento","Uso contínuo","Asma");
insert into tb_categoria (departamento, tipo, especificacao) values ("Beleza","Cuidado com o cabelo","Shampoo e Condicionador");
insert into tb_categoria (departamento, tipo, especificacao) values ("Dermocosméticos","Proteção Solar","Corpo");
insert into tb_categoria (departamento, tipo, especificacao) values ("Medicamento","Oftámicos","Colírio");
insert into tb_categoria (departamento, tipo, especificacao) values ("Dermocosméticos","Corpo","Hidratante");

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
codigo int,
nome varchar(255),
marca varchar (255),
quantidade varchar(255),
preco decimal (10,2),
departamento_id bigint not null,
primary key (id),
foreign key (departamento_id) references tb_categoria(id)
);

insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (1456,"Berolin 4mg","GlaxoSmithKline","20 comprimidos",8.70,1);
insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (2566,"Shampoo Clear Anti Caspa","Clear","200 ml",14.90,2);
insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (2896,"Colírio Teuto","Teuto","20 ml",6.98,4);
insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (3698,"Creme Hidratante Fisiogel","Fisio","50 g",60.95,5);
insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (7898,"Protetor Solar Sensitive FPS50","Sumax","160 ml",82.95,3);
insert into tb_produto (codigo, nome, marca, quantidade, preco, departamento_id) values (5256,"Aerolin 100 mcg","Aerolin","200 doses",38.31,1);

select * from tb_produto;

select * from tb_produto where preco between 3 and 60;

select*from tb_produto where nome like "%B%";

select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.departamento_id;

select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.departamento_id
where departamento = "Dermocosméticos";








