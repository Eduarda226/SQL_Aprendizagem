-- HAVING É USADO EM CONJUNTO COM O GROUP BY PARA FILTRAR RESULTADOS DE UM AGRUPAMENTO
-- É COMO UM WHERE MAS PARA DADOS AGRUPADOS

SELECT coluna1, funcaoAgregaçao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condição;

-- A DIFERENÇA ENTRE WHERE E HAVING É QUE O HAVING ELE FUNCIONA DEPOIS QUE 
-- OS DADOS JA FORAM AGRUPADOS.

-- QUAIS NOMES NO SISTEMA TEM UMA OCORRENCIA MAIOR QUE 10 VEZES?
SELECT FirstName, COUNT(FirstName) "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10;

-- QUAIS PRODUTOS NO TOTAL DE VENDAS ESTAO ENTRE 162K E 500K
SELECT ProductID, SUM(LineTotal) "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

-- QUAIS NOMES NO SISTEMA TEM UMA OCORRENCIA MAIOR QUE 10 VEZES? POREM COM SE TIVER MR
SELECT FirstName, COUNT(FirstName) "Quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10;

--ATIVIDADE 21
-- QUAIS AS PROVINCIAS (StateProvinceID) com maior numero de cadastro no sistema, entao é preciso
-- encontrar quais provincias estao registradas no banco de dados mais que 1000 vezes
SELECT StateProvinceID, COUNT(StateProvinceID) "Quantidade"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- QUAIS PRODUTOS NAO ESTAO TRAZENDO PELO MENOS 1 MILHAO EM TOTAL DE VENDAS
SELECT ProductID, AVG(LineTotal) "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING COUNT(LineTotal) < 1000000
    
