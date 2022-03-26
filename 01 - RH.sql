create database db_Rh;       
use db_RH;        
create table tb_funcionaries(
id bigInt (5) auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
funcao varchar (255) not null,
data_admissao date,
salario decimal (65,2) not null,
primary key(id)
);

insert into tb_funcionaries (nome,cargo,funcao,data_admissao,salario) values ("Giovana Lima Almeida", "Diretora comercial","Analisar de resultados","2018-11-01", 10144.00);
insert into tb_funcionaries (nome,cargo,funcao,data_admissao,salario) values ("Henrique Alencar", "Gerente comercial","Gestão",'2020-10-20', 4655.00);
insert into tb_funcionaries (nome,cargo,funcao,data_admissao,salario) values ("Eduarda Bezerra Oliveira", "Supervisora","Supervisão","2021-05-21", 4071.00);
insert into tb_funcionaries (nome,cargo,funcao,data_admissao,salario) values ("João Victor Souza", "Hunter","Trazer novos clientes", "2020-01-01", 2861.00);
insert into tb_funcionaries (nome,cargo,funcao,data_admissao,salario) values ("Wagner Caetano Arigatô", "Vendedor","Realizar vendas", "2022-01-08", 1596.00);

select * from tb_funcionaries;
 
select * from tb_funcionaries where salario >2000;

select * from tb_funcionaries where salario <2000;
 
update tb_funcionaries set nome = "Wagner Caetano Arigatô" where id=5;

select * from tb_funcionaries;
 
