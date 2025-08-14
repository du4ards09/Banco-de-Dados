
-- Oi, Professora! Eu dei uma olhadinha e aprendi como excluir uma tabela, e ultilizei nos exercicios 


-- Exercício 1:

CREATE DATABASE sprint1;

CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR(40),
qtdMedalha INT 
);

USE sprint1;

INSERT INTO atleta VALUES 
	(1, 'Lewis Hamilton', 'Salto',  3),
    (2, 'Max Verstappen', 'Salto',  2),
    (3, 'Fernando Alonso', 'Salto',  1),
    (4, 'Esteban Ocon', 'Corrida',  2),
    (5, 'Pierre Gasly', 'Corrida',  3),
    (6, 'Yuki Tsonuda', 'Corrida',  4),
    (7, 'Lando Norris', 'Lançamento',  1),
    (8, 'Oscar Piastri', 'Lançamento',  2),
    (9, 'Gabriel Bortolleto', 'Lançamento',  7),
    (10, 'Lando Norris', 'Decatlo',  2),
    (11, 'Valterri Botas', 'Decatlo',  4),
    (12, 'Ayrton Senna', 'Decatlo',  3),
    (13, 'Nico Rosberg', 'Heptatlo',  2),
    (14, 'Michael Schumacher', 'Heptatlo',  1),
    (15, 'Nelson Piquet', 'Heptatlo',  1),
    (16, 'Lance Stroll', 'Pentatlo',  2),
    (17, 'Nick Hulkberg', 'Pentatlo',  1),
    (18, 'Franco Colapinto', 'Pentatlo',  3);
    

DESC atleta;

-- Exibir todos os dados da tabela.
SELECT * FROM atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM atleta;
    
-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT nome, modalidade FROM atleta 
	WHERE modalidade LIKE 'Corrida';
    
-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM atleta ORDER BY modalidade;
    
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM atleta ORDER BY qtdMedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM atleta 
	WHERE nome LIKE '%s%';
    
-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM atleta 
	WHERE nome LIKE 'l%';
    
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM atleta 
	WHERE nome LIKE '%o';
    
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM atleta 
	WHERE nome LIKE '%r_';
    
-- Eliminar a tabela.
DROP TABLE atleta;



/* 
Exercício 2:
*/

USE sprint1;

CREATE TABLE musica (
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

DESC musica;

INSERT INTO musica VALUES 
	(1, 'SUV', 'Tasha e Tracie', 'Rap Brasileiro'),
    (2, 'Luther', 'Kendrick Lamar', 'Rap Americano'),
    (3, 'O Segundo Sol', 'Cássia Eller', 'Mpb'),
    (4, 'Lady', 'D.Angelo', 'R&B'),
    (5, 'Is It a Crime', 'Sade', 'Soul'),
    (6, 'Apelo de quem ama', 'Grupo Katinguelê', 'Samba'),
    (7, 'Nissan Altima', 'Doechii', 'Hip Hop');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM musica
	WHERE genero = 'Rap Brasileiro';
    
-- d) Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM musica
	WHERE artista LIKE 'k%';
    
-- e) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM musica ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM musica ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM musica
	WHERE titulo LIKE 'a%';
    
-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM musica
	WHERE artista LIKE '%r';
    
-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM musica 
	WHERE genero LIKE '_a%';
    
-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM musica
	WHERE titulo LIKE '%e_';
    
-- k) Elimine a tabela.
DROP TABLE musica;

/*
Exercício 3:
*/

CREATE TABLE filme (
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

INSERT INTO filme VALUES
	(1, 'Procurando o Nemo', 'Infantil', 'Andrew Stanton'),
    (2, 'Anabelle', 'Terror', 'Jonh Lonetti'),
    (3, 'Ainda estou aqui', 'Drama', 'Walter Salles'),
    (4, 'Voando para o amor', 'Romance', 'David Talbet'),
    (5, 'Candidato Honesto', 'Comédia', 'Roberto Santucci'),
    (6, '007', 'Ação', 'Denis Villeneuve'),
	(7, 'Jumanji', 'Aventura', 'Joe Johnston');
     
     
-- Exibir todos os dados da tabela.
SELECT * FROM filme;

-- Exibir apenas os títulos e os diretores dos filmes.
SELECT titulo, diretor FROM filme;

-- Exibir apenas os dados dos filmes de um determinado gênero.
SELECT * FROM filme
	WHERE genero = 'Terror';
    
-- Exibir apenas os dados dos filmes de um determinado diretor.
SELECT * FROM filme
	WHERE diretor = 'Andrew Stanton';
    
-- Exibir os dados da tabela ordenados pelo título do filme.
SELECT * FROM filme ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
SELECT * FROM filme ORDER BY diretor;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM filme 
	WHERE titulo LIKE 'c%';
    
-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
SELECT * FROM filme 
	WHERE diretor LIKE '%e';
    
-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM filme 
	WHERE genero LIKE '%a_';
    
-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM filme 
	WHERE titulo LIKE '%o_';
    
-- Elimine a tabela.
DROP TABLE filme;

/*
Exercício 4:
*/

CREATE TABLE professor (
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtNasc DATE 
);

INSERT INTO professor VALUES 
	(1, 'Vivian Silva', 'Banco de Dados', '1983-10-13'),
    (2, 'Fernanda Caramico', 'Projeto e Inovação', '1994-09-08'),
    (3, 'Cláudio Frizaarini', 'Algoritmos', '1961-02-05'),
    (4, 'Kaline Barreira', 'Socioemocional', '1984-06-03'),
    (5, 'Figueira', 'Tecnologia da Informação', '1989-08-01'),
    (6, 'Matheus', 'Arquitetura da Computação', '1978-07-02');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM professor;

-- b) Exibir apenas as especialidades dos professores.
SELECT especialidade FROM professor;

-- c) Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM professor 
	WHERE especialidade LIKE 'S%';
    
-- d) Exibir os dados da tabela ordenados pelo nome do professor.
SELECT * FROM professor ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM professor ORDER BY dtNasc DESC;

-- f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM professor 
	WHERE nome LIKE 'V%';
    
-- g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
SELECT * FROM professor
	WHERE nome LIKE '%o';
    
-- h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM professor 
	WHERE nome LIKE '_a%';
    
-- i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM professor
	WHERE nome LIKE '%r_';

-- j) Elimine a tabela.
DROP TABLE professor;

/*
Exercício 5:
*/

CREATE TABLE jogo (
idJogo INT PRIMARY KEY,
nome VARCHAR(50),
comentario VARCHAR(200),
ranking INT
);

INSERT INTO jogo VALUES 
	(1, 'Minecraft', 'é um jogo eletrônico sandbox de sobrevivência de 2011 desenvolvido e publicado pela desenvolvedora sueca Mojang Studios', '1'),
    (2, 'The Sims 4', 'The Sims 4 é um jogo eletrônico de simulação social de 2014 desenvolvido pela Maxis e publicado pela Electronic Arts.', '2'),
    (3, 'Valorant', 'é um jogo eletrônico multijogador gratuito para jogar de tiro em primeira pessoa desenvolvido e publicado pela Riot Games.', '3'),
    (4, 'Crash', 'Crash Bandicoot é uma franquia de jogos eletrônicos de desenvolvida originalmente pela Naughty Dog para o PlayStation.', '4'),
    (5, 'GTA', 'é um jogo eletrônico de ação-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games.', '5');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM jogo;

-- b) Exibir apenas os nomes dos jogos.
SELECT nome FROM jogo;

-- c) Exibir apenas o comentário de um determinado jogo.
SELECT comentario FROM jogo
	WHERE comentario LIKE 'c%';

-- d) Exibir os dados da tabela ordenados pelo nome do jogo.
SELECT * FROM jogo ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo ranking em ordem decrescente.
SELECT * FROM jogo ORDER BY ranking DESC;

-- f) Exibir os dados da tabela, dos jogos cujo nome comece com uma determinada letra.
SELECT * FROM jogo
	WHERE nome LIKE 'M%';
    
-- g) Exibir os dados da tabela, dos jogos cujo nome termine com uma determinada letra.
SELECT * FROM jogo
	WHERE nome LIKE '%h';
    
-- h) Exibir os dados da tabela, dos jogos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM jogo
	WHERE nome LIKE '_a%';
    
-- i) Exibir os dados da tabela, dos jogos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM jogo
	WHERE nome LIKE '%f_';
    
-- j) Exibir os dados da tabela, dos jogos cujo nome seja diferente de Minecraft.
SELECT * FROM jogo
	WHERE nome <> 'Minecraft';
    
-- k) Elimine a tabela.
DROP TABLE jogo;