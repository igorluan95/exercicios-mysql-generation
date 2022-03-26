create database db_cursodaminhavida;

use db_cursodaminhavida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
ativo boolean not null,
primary key (id)
);

select*from tb_categoria;

insert into tb_categoria (categoria, ativo) values ("JavaScript", true);
insert into tb_categoria (categoria, ativo) values ("Java", true);
insert into tb_categoria (categoria, ativo) values ("HTML e CSS", true);
insert into tb_categoria (categoria, ativo) values ("Python", true);
insert into tb_categoria (categoria, ativo) values ("Node.js", true);

select*from tb_categoria;

create table tb_produto(
id bigint auto_increment,
curso varchar(255),
plataforma varchar(255),
cargahoraria varchar(255),
preco decimal (10,2),
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Meu primeiro aplicativo Android","Alura","15h",200.00, 2);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Curso básico de Java Aplicado","Devmedia","38h",700.00, 2);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("JavaScript: Aplicação em camadas","Hotmart","9h",150.00, 1);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Curso de Python","Devmedia","100h",800.00, 4);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Curso de HTML5","Devmedia","29h",250.00, 3);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Como criar sua primeira página com CSS","Dio","6h",100.00, 3);
insert into tb_produto (curso, plataforma, cargahoraria, preco, categoria_id) values ("Minha Primeira API RESTful com Node.js","Devmedia","9h",150.00,5);

select * from tb_produto;

select * from tb_produto where preco > 500;

select * from tb_produto where preco between 600 and 1000;

select*from tb_produto where curso like "j%";

select tb_produto.curso, tb_produto.cargahoraria, tb_produto.plataforma, tb_categoria.categoria from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id;

select tb_produto.curso, tb_produto.cargahoraria, tb_produto.plataforma, tb_categoria.categoria from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id where categoria = "HTML e CSS";



