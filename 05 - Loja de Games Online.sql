create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
personagem varchar(255) not null,
habilidade varchar (255),
arma varchar(255),
primary key(id)
);

insert into tb_classe (personagem, habilidade, arma)values ("Monge","Curador","Pergaminho");
insert into tb_classe(personagem, habilidade, arma) values ("Guerreiro","Lutar","Machado");
insert into tb_classe(personagem, habilidade, arma) values ("Espadachim","Lutar","Espada");
insert into tb_classe (personagem, habilidade, arma) values ("Mago","Magia","Cajado");
insert into tb_classe (personagem, habilidade, arma) values ("Arqueiro","Lutar","Arco e Flecha");

select*from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_ID) references tb_classe(id)
);

insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Urhan",500,50,100,1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Azadium",300,1500,1000,2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Oharad",200,2000,2000,3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Aharis",250,2500,3250,4);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Joppa",300,3000,900,5);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Evelot",450,800,1500,2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Magavin",200,1300,1650,4);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) value ("Burttu",100,50,250,1);

select*from tb_personagem;

select*from tb_personagem where ataque > 2000;

select*from tb_personagem where defesa between 1000 and 2000;

select*from tb_personagem where nome like "%C%";

select*from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;

select tb_personagem.nome, tb_classe.personagem, tb_classe.habilidade, tb_classe.arma, tb_personagem.nivel, tb_personagem.ataque, tb_personagem.defesa
from tb_personagem
inner join tb_classe
on tb_personagem.id = tb_classe.id;

select P.nome, C.personagem, C.habilidade, C.arma, P.nivel, P.ataque, P.defesa
from tb_personagem as P
inner join tb_classe as C
on P.id = C.id;

select personagem from tb_classe;
