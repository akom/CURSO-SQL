/* Exercício Livraria*/
CREATE DATABASE LIVRARIA;
USE LIVRARIA;
CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAs INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10,2),
	UF CHAR(2),
	ANO INT(4)
);

INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018);
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019);
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011);
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018);
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);

/* 1) TRAZER TODOS OS DADOS */

SELECT * FROM LIVROS;

/* 2) TRAZER O NOME DO LIVRO E O NOME DA EDITORA */

SELECT LIVRO, EDITORA
FROM LIVROS;

/* 3) TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO */

SELECT LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

/* 4) TRAZER O NOME DO LIVRO E O NUMERO DE PAGINAS DOS LIVROS POR AUTORES DO SEXO FEMENINO */

SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';

/* 5) TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SAO PAULO */

SELECT VALOR
FROM LIVROS
WHERE UF = 'SP';

/* 6) TRAZER OS DADOS DOS AUTORES DO SEXO MASCULINO QUE TIVERAM LIVROS PUBLICADOS POR SAO PAULO E RIO DE JANEIRO */

SELECT AUTOR, SEXO, UF
FROM LIVROS
WHERE (UF = 'SP' OR UF = 'RJ') AND SEXO='M';




create database exercicio;

use exercicio;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

SELECT COUNT(*) AS 'Quantidade de Reg. Tab. Funcionarios' from funcionarios;

SELECT COUNT(*), departamento
FROM funcionarios
GROUP BY departamento
ORDER BY 1;

SELECT sexo,COUNT(*)
FROM funcionarios
GROUP BY sexo;

/* 21 Filmes
   53 Roupas
	 52 Lar
*/

SELECT *
FROM funcionarios
WHERE departamento='roupas'
OR departamento='filmes';

SELECT *
FROM funcionarios
WHERE (departamento='lar' OR departamento='roupas') AND sexo='Feminino';

SELECT nome,sexo,departamento
FROM funcionarios
WHERE sexo = 'Masculino'
OR departamento = 'Jardim';
