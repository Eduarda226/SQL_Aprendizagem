-- RELATORIO COM TODOS OS PRODUTOS COM PREÇOS ACIMA DA MEDIA
-- MANEIRA SEM O SUBSELECT/ SUBQUERY

SELECT *
FROM Production.Product; -- AQUI SÓ PRA VISUALIZAR MELHOR AS INFORMACOES

SELECT AVG(ListPrice) AS MÉDIA
FROM Production.Product; -- AQUI FIZ PRA DESCOBRIR A MEDIA

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > 438.66;

-- AGORA COM SUBQUERY/ SUBSELECT

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) from Production.Product)

-- PARA FAZER O SUBQUERY / SUBSELECT VOCE USA O PARENTESES ()

 
-- NOMES DOS FUNCIONARIOS QUE TRAMPAM COM ENGENHARIA DESIGN
-- SEM O SUBQUERY OU SUBSELECT
-- usando INNER JOIN
SELECT PP.FirstName, HR.JobTitle
FROM Person.Person as PP
INNER JOIN HumanResources.Employee as HR on PP.BusinessEntityID = HR.BusinessEntityID
WHERE HR.JobTitle = 'Design Engineer';

-- OUTRA ALTERNATIVA SEM O IN, USANDO O SUBSELECT / SUBQUERY
-- SEM O INNER JOIN
SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer' (SELECT (FirstName) from Person.Person WHERE BusinessEntityID = ('5') OR
BusinessEntityID = ('6') OR
BusinessEntityID = ('15'))

-- COM IN USANDO TAMBEM SUBSELECT/ SUBQUERY
-- SEM O INNER JOIN

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer' (SELECT (FirstName) from Person.Person WHERE BusinessEntityID IN ('5', '6', '15'))

-- AGORA A MELHOR ALTERNATIVA, PORQUE QUANDO VOCE COLOCA O ID 6,15,5 VOCE ESTA LIMITANDO OS RESULTADOS
-- AQUI O CODIGO FICOU PEQUENO, DIRETO E USAMOS O SUBQUERY/ SUBSELECT
-- O BusinessEntityID é a informaçao em comum entre a tabela Person.Person e HumanResources.Employee
-- SEM O INNER JOIN
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT (BusinessEntityID) FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer' )

-- ATIVIDADE 24
-- TODOS OS ENDEREÇOS QUE ESTAO NO ESTADO DE ALBERTA
-- TABELAS PERSON.Address E PERSON.STATEPROVINCE 
SELECT *
FROM Person.Address
WHERE StateProvinceID IN (SELECT (StateProvinceID) FROM Person.StateProvince WHERE NAME = 'ALBERTA')
