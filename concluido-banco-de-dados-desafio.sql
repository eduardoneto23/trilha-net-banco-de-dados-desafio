
-- Buscar o nome e ano dos filmes

SELECT NOME,
       ANO 
  FROM FILMES


-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT NOME,
       ANO 
  FROM FILMES
 ORDER BY 
    ANO ASC


-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT NOME,
       ANO,
       DURACAO
  FROM FILMES
 WHERE NOME LIKE 'De volta para o futuro'


-- Buscar os filmes lançados em 1997

SELECT *
  FROM FILMES
 WHERE ANO = 1997


-- Buscar os filmes lançados APÓS o ano 2000

SELECT *
  FROM FILMES
 WHERE ANO > 2000


-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT *
  FROM FILMES
 WHERE DURACAO BETWEEN 100 AND 150
 ORDER BY 
    DURACAO ASC


-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ANO,
       COUNT(ANO) AS QtdeFilmesAno
  FROM FILMES
GROUP BY ANO
ORDER BY QtdeFilmesAno DESC


-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PRIMEIRONOME, 
       ULTIMONOME 
  FROM ATORES
 WHERE GENERO = 'M'


-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PRIMEIRONOME, 
       ULTIMONOME 
  FROM ATORES
 WHERE GENERO = 'F'
 ORDER BY 
    PRIMEIRONOME


-- Buscar o nome do filme e o gênero

SELECT F.NOME, 
       G.GENERO 
  FROM FILMES F
  INNER JOIN GENEROS G ON G.ID = F.ID


-- Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT F.NOME, 
       G.GENERO 
  FROM FILMES F
 INNER JOIN GENEROS G ON G.ID = F.ID
 WHERE G.GENERO = 'Mistério'


-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT F.NOME, 
       A.PRIMEIRONOME, 
       A.ULTIMONOME, 
       E.PAPEL
  FROM FILMES F
 INNER JOIN ELENCOFILME E ON E.IDFILME = F.ID
 INNER JOIN ATORES      A ON A.ID      = E.IDATOR

