/* LIVRARIA */

CREATE TABLE livraria (
NOME_LIVRO CHAR (50), 
NUMERO_PAGINAS_LIVRO int(5),
NOME_AUTOR char (30),
SEXO_AUTOR char (1),
NOME_EDITORA char (30), 
UF_EDITORA char (4)
);

alter table livraria add column ( ano_publicacao int (4));
alter table livraria add column ( valor_livro float (10));

insert into LIVRARIA (NOME_LIVRO,NOME_AUTOR,SEXO_AUTOR,NUMERO_PAGINAS_LIVRO,NOME_EDITORA, valor_livro, UF_EDITORA, ano_publicacao) values
   ('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
	('SQL para leigos', 'João Nunes', 'M', 450, 'Addison',98, 'SP', 2018),
	('Receitas Caseiras','Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
	('Pessoas Efetivas','Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
	('Habitos Saudáveis','Eduardos Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
	('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
	('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015),
	('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia',78.98, 'ES', 2011),
	('Copas Inesqueciveis','Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);
	('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);
	
/* 1 bring all the data*/
Select * from livraria;

/* 2Bring the name of the book and the name of the publisher */
 Select nome_livro, nome_editora from livraria;
 
/* 3 – Bring the name of the book and UF of books published by male authors.*/

	Select nome_livro, numero_paginas_livro from livraria
	where sexo_autor = 'M';
	
/*4 Bring the name of the book and the number of pages of books published by female authors.*/

	Select nome_livro, numero_paginas_livro from livraria
	where sexo_autor = 'F';
	
/*– 5Bring the values ​​of books from publishers in São Paulo.*/

	Select livro,valor_livro from livraria 
	where UF_EDITORA = 'SP';
	
/*6 – Bring data from male authors who had books published in São Paulo or Rio de Janeiro (Questão Desafio).*/

	Select * from livraria
	where sexo_autor = 'M' 
	and (UF_EDITORA = 'SP'
	or UF_EDITORA ='RJ');
