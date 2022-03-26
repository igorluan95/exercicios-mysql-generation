Create database db_ec;
use db_ec;
create table tb_produtos(
id bigint (8) auto_increment,
categoria varchar (20) not null,
produto varchar(20) not null,
codigo int (20) not null,
marca varchar (20) not null,
modelo varchar (20) not null,
linha varchar (20) not null,
valor decimal (10,2) not null,
primary key (id)
);

insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Galaxy A32","1556", "Samsung", "A32", "Galaxy", "1599.99");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Twist 4 S509","7169", "Positivo", "4 S509", "Go Edition", "498.99");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Multilaser F PRO","2428", "Multilaser", "P9152", "F PRO", "470.25");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Twist 4 S509","7169", "Positivo", "4 S509", "Go Edition", "498.99");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Galaxy Z","6166", "Samsung", "Galaxy", "Fold3", "10889.10");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Galaxy A03","2339", "Samsung", "Galaxy", "A03", "677.99");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Moto E20","7816", "Motorola", "Moto E", "E20", "1201.83");
insert into tb_produtos (categoria, produto, codigo, marca, modelo, linha, valor) values ("Smartphone", "Galaxy E7","5507", "Samsung", "Motorola", "E7", "1079.36");

select * from tb_produtos;

select * from tb_produtos where valor > 500;
 
select * from tb_produtos where valor < 500;

update tb_produtos set produto = "Galaxy Z1" where id=5;

select * from tb_produtos;
 

