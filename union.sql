-- UNION COMBINA DOIS OU MAIS RESULTADOS DE UM SELECT EM UM UNICO RESULTADO

SELECT Coluna1, Coluna2
FROM Tabela1
UNION
SELECT Coluna1, Coluna2
FROM Tabela2

-- ELE NAO TRAZ RESULTADOS DUPLICADOS
-- AGORA SE VOCE QUER TODOS OS  RESULTADOS ATÉ OS DUPLICADOS VOCE USA O ALL

SELECT Coluna1, Coluna2
FROM Tabela1
UNION ALL
SELECT Coluna1, Coluna2
FROM Tabela2


-- Voce pode procurar informacoes diferentes no SELECT e retorna-las juntas na mesma coluna, COMO SE FOSSE UM SO
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Decal%'
ORDER BY des; -- Para ser em ordem albafetica

--EXEMPLO, AQUI QUERIA APENAS DOIS NOMES

SELECT [FirstName], [LastName]
FROM Person.Person
WHERE FirstName = 'Michael'
UNION
SELECT [FirstName], [LastName]
FROM Person.Person
WHERE FirstName = 'John'