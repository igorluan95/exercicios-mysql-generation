create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(20) not null,
borda varchar(20) not null,
primary key(id)
);

select * from tb_categoria;

insert into tb_categoria(tamanho, tipo, borda)
values("grande","doce","sem borda");
insert into tb_categoria(tamanho, tipo, borda)
values("grande","salgada","cheddar");
insert into  tb_categoria (tamanho, tipo, borda)
values("pequena","doce","sem borda");
insert into  tb_categoria (tamanho, tipo, borda)
values("grande","salgada","requeijão");
insert into  tb_categoria (tamanho, tipo, borda)
values("pequena","doce","sem borda");

select * from tb_categoria;

create table tb_pizza(
  id bigint auto_increment,
  nome varchar(20) not null,
  ingredientes varchar(50) not null,
  valor float not null,
  frete_gratis boolean not null, 
  categoria_id bigint,
   primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("chocolate","nutela", 38.90, true, 1);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("mussarela","mussarela, orégano e azeitona", 35.90, true, 3);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("calabresa","calabresa, orégano, azeitona e cebola", 35.90, false, 2);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("pepperoni","mussarela, orégano, azeitona e pepperoni", 55.90, false, 2);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("morango","nutella e morango", 54.90, true, 5);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("abobrinha","abobrinha, mussarela, parmesão e azeitona", 45.90, false, 2);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("alho","alho, mussarela, orégano e azeitona", 54.90, false, 2);
insert into tb_pizza (nome, ingredientes, valor, frete_gratis, categoria_id)
values("marguerita"," mussarela, tomate, manjericão, orégano e azeitona", 54.90, false, 4);

select * from tb_pizza;

select * from tb_pizza where Valor > 45.00;

select * from tb_pizza where valor between 29.00 and 100.00;

select * from tb_pizza where nome like "m%"; 

select tb_pizza.nome, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.nome, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tipo = "salgada";
