--ORDER BY ORDENA OS RESULTADOS DE ALGUMA COLUNA DE FORMA DECRESCENTE OU CRESCENTE

SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1 asc/desc

--EXEMPLO ORGANIZANDO OS SOBRENOMES EM ORDEM CRESCENTE
SELECT *
FROM Person.person
ORDER BY LastName asc;

-- AGORA DECRESCENTE
SELECT *
FROM Person.person
ORDER BY LastName desc;

-- Da pra filtrar por duas colunas
SELECT *
FROM Person.person
ORDER BY firstName desc, LastName asc;

-- Para ficar mais claro, insira no SELECT as colunas 
SELECT FirstName, LastName
FROM Person.person
ORDER BY firstName desc, LastName asc;

--ATIVIDADE 9
--OBTER PRODUCTID DOS 10 PRODUTOS MAIS CAROS CADASTRADOS NO SISTEMAS, EM ORDEM DECRESCENTE
--RESPOSTA:
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY listPrice desc;

--ATIVIDADE 10
-- OBTER NOME E NUMERO DO PRODUTO DOS PRODUTOS QUE TEM PRODUCTID de 1 até 4
SELECT TOP 4 name, productNumber
FROM Production.Product
ORDER BY ProductID asc;


