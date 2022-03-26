create database db_construindovidas;

use db_construindovidas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(225) not null,
em_estoque boolean not null,
primary key (id)
);

select*from tb_categoria;

insert into tb_categoria (tipo, em_estoque) values ("Materiais de Construção" , true);
insert into tb_categoria (tipo, em_estoque) values ("Materiais Elétricos" , true);
insert into tb_categoria (tipo, em_estoque) values ("Tintas" , true);
insert into tb_categoria (tipo, em_estoque) values ("Pisos e Revestimentos" , true);
insert into tb_categoria (tipo, em_estoque) values ("Portas e Janelas" , true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Produto varchar (255) not null,
Marca varchar (255) not null,
Valor double,
QuantidadeEstoque int,
tipo_id bigint not null,
primary key(id),
FOREIGN KEY (tipo_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Cimento CP II","Nacional",15.99,300, 1);
insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Cimento Branco Estrutural","Argos",72.90,100, 1);
insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Porta Pivotante","Proex Esquadrias",2929.00,25, 5);
insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Tinta Premium Acrílica","Suvinil",149.90,32, 3);
insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Porcelanato","Nacional",107.90,400, 4);
insert into tb_produto (Produto, Marca, Valor, QuantidadeEstoque, tipo_id) values ("Cabo Flexível 1,5mm²","Cobrecom",120.90,80,2);

select * from tb_produto;

select * from tb_produto where Valor > 100;

select * from tb_produto where Valor between 70 and 150;

select * from tb_produto where Produto like "c%";

select tb_produto.produto, tb_produto.valor, tb_categoria.tipo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.tipo_id;

select tb_produto.produto, tb_produto.valor, tb_categoria.tipo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.tipo_id where tipo = "Materiais de Construção";



