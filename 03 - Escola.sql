create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint(5) auto_increment,
nome varchar(20) not null,
idade bigint(5) not null,
matricula bigint(5) not null,
materia varchar (20) not null,
nota decimal (10,2) not null,
primary key (id)
);

insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Igor","15","4050","Matemática","10");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Marcos","16","4051","Matemática","8");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Wagner","15","4052","Matemática","9");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Luiz","15","4053","Matemática","7");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Maria","15","4054","Matemática","10");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Matheus","15","4055","Matemática","9");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Luana","15","4056","Matemática","5");
insert into tb_estudantes (nome, idade, matricula, materia, nota) value ("Paulo","15","4057","Matemática","2");

select*from tb_estudantes;
 
select * from tb_estudantes where nota >7;
 
select * from tb_estudantes where nota < 7;
 
update tb_estudantes set nome = "Luiz Gustavo" where id=4;

select * from tb_estudantes;
