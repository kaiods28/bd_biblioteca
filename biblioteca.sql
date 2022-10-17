create database biblioteca;

use biblioteca;

create table livro(
id_livro int not null auto_increment,
isbn varchar (50) default null,
nome varchar (50) default null,
id_autor int,
id_editora int,
exemplar varchar (50),
primary key (id_livro)
)default charset=utf8;

create table titulo(
id_titulo int not null auto_increment,
id_livro int,
primary key (id_titulo)
)default charset=utf8;

create table autor(
id_autor int  not null auto_increment,
nome varchar (50) default null,
telefone varchar (50) default null,
endereco varchar (50) default null,
primary key (id_autor)
)default charset=utf8;

create table editora(
id_editora int not null auto_increment,
nome varchar (50) default null,
telefone varchar (50) default null,
endereco varchar (50) default null,
primary key (id_editora)
)default charset=utf8;

create table conhecimento(
id_conhecimento int not null auto_increment,
descricao varchar (50) default null,
primary key (id_conhecimento)
)default charset=utf8;

create table usuario(
id_usuario int not null auto_increment,
nome varchar (50) default null,
telefone varchar (50) default null,
endereco varchar (50) default null,
primary key (id_usuario)
)default charset=utf8;

drop schema biblioteca;

create table emprestimo(
id_emprestimo int not null auto_increment,
id_usuario int,
id_titulo int,
data_retirada date,
data_devolucao date,
primary key (id_emprestimo)
)default charset=utf8;

alter table livro add constraint fk_id_autor foreign key (id_autor) references autor (id_autor);

alter table livro add constraint fk_id_editora foreign key (id_editora) references editora (id_editora);

alter table titulo add constraint fk_id_livro foreign key (id_livro) references livro (id_livro);

alter table emprestimo add constraint fk_id_usuario foreign key (id_usuario) references usuario (id_usuario);

alter table emprestimo add constraint fk_id_titulo foreign key (id_titulo) references titulo (id_titulo);

insert into livro (isbn, nome, id_autor, id_editora, exemplar)
values
('9788576051480', 'fundametos da manutencao de pc',  '1', '1', 'livro sobre manutencao dos pc');

insert into titulo (id_livro)
values
('1');

insert into autor ( nome, telefone, endereco)
values
('kaio', '41987974506', 'bento munhoz da rocha neto');

insert into editora ( nome, telefone, endereco)
values
('piano cafe', '4134221211', 'arcenio bento dos santos');

insert into conhecimento (descricao)
values 
('livro indicado para cursos de programacao');

insert into usuario (nome, telefone, endereco)
values
('heloisa', '4187737876', 'sao vicente');

insert into emprestimo (id_usuario, id_titulo, data_retirada, data_devolucao)
values
('1', '1', '2022-10-08', '2022-10-10');

select * from livro;

select * from titulo;

select * from autor; 

select * from editora;

select * from conhecimento;

select * from usuario;

select * from emprestimo;