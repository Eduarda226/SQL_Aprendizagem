--AS da nome especifico/ apelido para uma coluna
--EXEMPLO
SELECT ProductID, AVG(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000

-- EM VEZ DE APARECER NO COLUMN NAME, VAI APARECER TOTAL


--ATIVIDADE 21
--MUDAR NOME DA COLUNA DE FIRSTNAME E LASTNAME PARA PORTUGUES
SELECT FirstName AS "Nome", LastName AS "Sobrenome"
FROM Person.Person;

--ATIVIDADE 22
--MUDAR O NOME DA COLUNA PRODUCTNUMBER PARA PORTUGUES
SELECT ProductNumber AS "Número do Produto"
FROM Production.Product;

--ATIVIDADE 23
--MUDAR O NOME DA COLUNA UNITPRICE PARA PORTUGUES
SELECT UnitPrice AS "Preço Único"
FROM Sales.SalesOrderDetail
