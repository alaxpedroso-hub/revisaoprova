create database biblioteca;
use biblioteca;
create table autores (
id_autor int primary key auto_increment,
nome varchar(100) not null,
nacionalidade varchar(50)
);

create table livros (
id_livros int primary key auto_increment,
titulo varchar(100) not null,
ano_publicacao int,
genero varchar(50),
id_autor int,
foreign key (id_autor) references autores (id_autor)
);

insert into autores (nome, nacionalidade) values 
('machado de assis', 'brasileiro'),
('clarisse lispector', 'ucraniana'),
('agatha christie', 'britânica'),
('antoine de saint-exupéry', 'francês'),
('jorge amado', 'brasileiro');

select * from autores;

alter table autores
add unique (nome);

insert into Livros
(titulo, ano_publicacao, genero, id_autor) values
('Memórias Póstumas de Braz Cubas', 1881, 'Romance', 1),
('Capitães da Areia', 1937, 'Romance Modernista', 5),
('Tieta do Agreste', 1977, 'Romance', 5),
('Dom Casamurro', 1899, 'Romance', 1),
('A Paixão Segundo G.H', 1964, 'Ficção', 2),
('Um sopro de vida', 1978, 'Romance', 2),
('A casa torta', 1949, 'Romance Policial', 3);

