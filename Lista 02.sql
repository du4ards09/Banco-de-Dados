USE sprint1;

CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR(40),
qtdMedalha INT 
);

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


-- Exibir todos os dados da tabela.
SELECT * FROM atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE atleta SET qtdMedalha = '9'
	WHERE idAtleta = '1';
    
-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
UPDATE atleta SET qtdMedalha = '2'
	WHERE idAtleta = '2';
    
UPDATE atleta SET qtdMedalha = '12'
	WHERE idAtleta = '3';
    
-- Atualizar o nome do atleta com o id=4;
UPDATE atleta SET qtdMedalha = '8'
	WHERE idAtleta = '4';
    
-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE atleta ADD COLUMN dtNasc DATE;

-- Atualizar a data de nascimento de todos os atletas;
UPDATE atleta SET dtNasc = '1985-01-07'
	WHERE idAtleta = '1';
    
UPDATE atleta SET dtNasc = '1992-04-05'
	WHERE idAtleta = '2';
    
UPDATE atleta SET dtNasc = '1990-04-05'
	WHERE idAtleta = '3';    
    
UPDATE atleta SET dtNasc = '1989-03-07'
	WHERE idAtleta = '4';
    
UPDATE atleta SET dtNasc = '1991-08-05'
	WHERE idAtleta = '5';
    
UPDATE atleta SET dtNasc = '1993-09-02'
	WHERE idAtleta = '6';
    
UPDATE atleta SET dtNasc = '1996-06-08'
	WHERE idAtleta = '7';
    
UPDATE atleta SET dtNasc = '1990-04-09'
	WHERE idAtleta = '8';
    
UPDATE atleta SET dtNasc = '1992-04-05'
	WHERE idAtleta = '9';
    
UPDATE atleta SET dtNasc = '1970-02-25'
	WHERE idAtleta = '10';
    
UPDATE atleta SET dtNasc = '1983-09-06'
	WHERE idAtleta = '11';
    
UPDATE atleta SET dtNasc = '1992-06-05'
	WHERE idAtleta = '12';
    
UPDATE atleta SET dtNasc = '1980-08-15'
	WHERE idAtleta = '13';
    
UPDATE atleta SET dtNasc = '1992-04-20'
	WHERE idAtleta = '14';
    
UPDATE atleta SET dtNasc = '2000-06-18'
	WHERE idAtleta = '15';
    
UPDATE atleta SET dtNasc = '2006-07-23'
	WHERE idAtleta = '16';
    
UPDATE atleta SET dtNasc = '1995-09-02'
	WHERE idAtleta = '17';
    
UPDATE atleta SET dtNasc = '2005-07-09'
	WHERE idAtleta = '18';
    
-- Excluir o atleta com o id=5;
DELETE FROM atleta 
	WHERE  idAtleta = '5';
    
-- Exibir os atletas onde a modalidade é diferente de natação;
SELECT * FROM atleta 
	WHERE modalidade <> 'Natação';
    
-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
SELECT * FROM atleta 
	WHERE qtdMedalha >= 3;
    
-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
ALTER TABLE atleta MODIFY COLUMN modalidade VARCHAR(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
DESCRIBE atleta;

-- Limpar os dados da tabela;
TRUNCATE atleta;



-- EXERCÍCIO 02 

CREATE TABLE musica (
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

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

-- b) Adicionar o campo curtidas do tipo int na tabela.
ALTER TABLE musica ADD COLUMN curtidas INT;

-- c) Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE musica SET curtidas = '30'
	WHERE idMusica = '1';
    
UPDATE musica SET curtidas = '60'
	WHERE idMusica = '2';
    
UPDATE musica SET curtidas = '90'
	WHERE idMusica = '3';

UPDATE musica SET curtidas = '120'
	WHERE idMusica = '4';
    
UPDATE musica SET curtidas = '170'
	WHERE idMusica = '5';
    
UPDATE musica SET curtidas = '130'
	WHERE idMusica = '6';
    
UPDATE musica SET curtidas = '230'
	WHERE idMusica = '7';
    
-- d) Modificar o campo artista do tamanho 40 para o tamanho 80.
ALTER TABLE musica MODIFY COLUMN artista VARCHAR(80);

-- e) Atualizar a quantidade de curtidas da música com id=1;
UPDATE musica SET curtidas = '900'
	WHERE idMusica = '1';
    
-- f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE musica SET curtidas = '100'
	WHERE idMusica = '2';
    
UPDATE musica SET curtidas = '10'
	WHERE idMusica = '3';
    
-- g) Atualizar o nome da música com o id=5;
UPDATE musica SET titulo = 'Isso é um crime'
	WHERE idMusica = '5';

-- h) Excluir a música com o id=4;
DELETE FROM musica
	WHERE idMusica = '4';
    
-- i) Exibir as músicas onde o gênero é diferente de funk;
SELECT * FROM musica
	WHERE titulo <> 'Funk';
    
-- j) Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM musica
	WHERE curtidas >= 20;
    
-- k) Descrever os campos da tabela mostrando a atualização do campo artista;
DESCRIBE musica;

-- l) Limpar os dados da tabela;
TRUNCATE musica;


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

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE filme ADD COLUMN protagonista VARCHAR(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE filme SET titulo = 'Nemo'
	WHERE idFilme = '1';
    
UPDATE filme SET titulo = 'Anabelle'
	WHERE idFilme = '2';
    
UPDATE filme SET titulo = 'Rubens'
	WHERE idFilme = '3';
    
UPDATE filme SET titulo = 'Katy'
	WHERE idFilme = '4';
    
UPDATE filme SET titulo = 'James Bond'
	WHERE idFilme = '5';
    
UPDATE filme SET titulo = 'Hassum'
	WHERE idFilme = '6';
    
UPDATE filme SET titulo = 'The Rock'
	WHERE idFilme = '7';
    
-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
ALTER TABLE filme MODIFY COLUMN diretor VARCHAR(150);

-- Atualizar o diretor do filme com id=5;
UPDATE filme SET diretor = 'Roberto Santos'
	WHERE idFilme = '5';
    
-- Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE filme SET diretor = 'Vini Souza'
	WHERE idFilme = '2';
    
UPDATE filme SET diretor = 'Davi Oliveira'
	WHERE idFilme = '7';
    
-- Atualizar o título do filme com o id=6;
UPDATE filme SET titulo = 'Jumanji 2'
	WHERE idFilme = '6';
    
-- Excluir o filme com o id=3;
DELETE FROM filme
	WHERE idFilme = '3';
    
-- Exibir os filmes em que o gênero é diferente de drama;
SELECT * FROM filme
	WHERE genero <> 'Drama';
    
-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM filme
	WHERE genero = 'Suspense';
    
-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESCRIBE filme;

-- Limpar os dados da tabela;
TRUNCATE filme;

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
    (6, 'Mateus Matos', 'Arquitetura da Computação', '1978-07-02');

-- a) Exibir todos os dados da tabela.
SELECT * FROM professor;

-- b) Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’;
ALTER TABLE professor ADD COLUMN funcao CHAR(10);

ALTER TABLE professor ADD CONSTRAINT chkFuncao
	CHECK(funcao = 'monitor' OR funcao = 'assistente' OR funcao = 'titular');

-- c) Atualizar os professores inseridos e suas respectivas funções;
UPDATE professor SET funcao = 'titular'
	WHERE idProfessor = '1';
    
UPDATE professor SET funcao = 'titular'
	WHERE idProfessor = '2';
    
UPDATE professor SET funcao = 'monitor'
	WHERE idProfessor = '3';
    
UPDATE professor SET funcao = 'monitor'
	WHERE idProfessor = '4';
    
UPDATE professor SET funcao = 'assistente'
	WHERE idProfessor = '5';
    
UPDATE professor SET funcao = 'assistente'
	WHERE idProfessor = '6';
    
-- d) Inserir um novo professor;
INSERT INTO professor VALUES 
	(7, 'Paula Pinheiro', 'Socioemocional', '1999-09-08', 'titular');
    
-- e) Excluir o professor onde o idProfessor é igual a 5;
DELETE FROM professor 
	WHERE idProfessor = '5';
    
-- f) Exibir apenas os nomes dos professores titulares;
SELECT nome FROM professor
	WHERE funcao = 'titular';
    
-- g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
SELECT especialidade, dtNasc FROM professor 
	WHERE funcao = 'monitor';
    
-- h) Atualizar a data de nascimento do idProfessor igual a 3;
UPDATE professor SET dtNasc = '1994-09-17'
	WHERE idProfessor = '3';
    
-- i) Limpar a tabela Professor;  
TRUNCATE professor;



CREATE TABLE curso (
idCurso INT PRIMARY KEY,
nome VARCHAR(50),
sigla CHAR(3),
coordernador VARCHAR(30)
);

INSERT INTO curso VALUES 
	(1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
    (2, 'Sistemas da Informação', 'SIS', 'Marise'),
    (3, 'Ciências da Computação', 'CCO', 'André');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM curso;

-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordernador FROM curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT sigla FROM curso
	WHERE sigla = 'CCO';
    
-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM curso ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM curso ORDER BY coordernador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM curso
	WHERE nome LIKE 'a%';
    
-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM curso 
	WHERE nome LIKE '%o';
    
-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM curso
	WHERE nome LIKE '_i%';
    
-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM curso
	WHERE nome LIKE '%a_';
    
-- j) Elimine a tabela.
DROP TABLE curso;




CREATE TABLE revista (
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR(30)
);

INSERT INTO revista (nome) VALUES 
	('Quatro Estações'),
    ('Veja'),
    ('Isto é'),
    ('Avon'),
    ('Quatro Rodas');

-- Exibir todos os dados da tabela.
SELECT * FROM revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE revista SET categoria = 'Moda'
	WHERE idRevista = '1';
    
UPDATE revista SET categoria = 'Noticia'
	WHERE idRevista = '2';
    
UPDATE revista SET categoria = 'Noticia'
	WHERE idRevista = '3';
    
UPDATE revista SET categoria = 'Varejo'
	WHERE idRevista = '4';
    
UPDATE revista SET categoria = 'Varejo'
	WHERE idRevista = '5';
    
-- Insira mais 3 registros completos.
INSERT INTO revista VALUES 
	(6,'Vogue', 'Moda'),
    (7,'Trip', 'Blog'),
	(8,'Capricho', 'Blog');
    
-- Exibir novamente os dados da tabela.
SELECT * FROM revista;

-- Exibir a descrição da estrutura da tabela.
DESC revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE revista MODIFY COLUMN categoria VARCHAR(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria.
DESCRIBE revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15);

-- Exibir os dados da tabela.
SELECT * FROM revista;

-- Excluir a coluna periodicidade da tabela.
ALTER TABLE revista DROP COLUMN periodicidade;

CREATE TABLE carros (
IdCarro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
placa CHAR(7)
);

-- Os valores de idCarro devem iniciar com o valor 1000 e ser incrementado automaticamente pelo sistema.
ALTER TABLE carros auto_increment = 1000;

INSERT INTO carros VALUES 
	(1,'Ônix', 'ADS3890'),
    (2,'Azerra', 'CC00865'),
    (3,'Corolla', 'SIS3457'),
    (4,'City', 'DSG1267');
    
-- Exibir todos os dados da tabela.
SELECT * FROM carros;

-- Insira mais 3 registros sem a placa dos carros.
INSERT INTO carros (nome) VALUES 
	('Fusca'),
    ('Fusion'),
    ('Creta');
    
-- Exibir novamente os dados da tabela.
SELECT * FROM carros;

-- Exibir a descrição da estrutura da tabela.
DESC carros;

-- Alterar a tabela para que a coluna nome possa ter no máximo 28 caracteres.
ALTER TABLE carros MODIFY COLUMN nome VARCHAR(28);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna;
DESC carros;

-- Acrescentar a coluna ano à tabela, que é char(4);
ALTER TABLE carros ADD COLUMN ano CHAR(4);

-- Atualizar todos os dados nulos da tabela;
UPDATE carros SET ano = '2006'
	WHERE IdCarro = '1';
    
UPDATE carros SET ano = '2000'
	WHERE IdCarro = '2';
    
UPDATE carros SET ano = '2006'
	WHERE IdCarro = '3';
    
UPDATE carros SET ano = '2020'
	WHERE IdCarro = '4';
        
UPDATE carros SET ano = '2010'
	WHERE IdCarro = '1002';
    
UPDATE carros SET ano = '2020'
	WHERE IdCarro = '1000';
    
UPDATE carros SET ano = '2023'
	WHERE IdCarro = '1001';
    
UPDATE carros SET placa = 'SSD2023'
	WHERE IdCarro = '1001';
    
UPDATE carros SET placa = 'SED20A3'
	WHERE IdCarro = '1002';
    
UPDATE carros SET placa = 'MED20A8'
	WHERE IdCarro = '1000';
    