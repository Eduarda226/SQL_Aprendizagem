-- SELF JOIN AGRUPA DADOS OU ORDENA DADOS DENTRO DA MESMA TABELA
-- FILTRA INFORMACOES USANDO A MESMA TABELA
-- PRA ISSO VOCE PRECISA USAR O AS, APELIDANDO A TABELA


-- EU QUERO TODOS OS CLIENTES QUE ESTAO NA MESMA REGIAO

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region;

-- QUERO NOME E DATA DE CONTRATAÇAO DE TODOS OS FUNCIONARIOS QUE FORAM CONTRATADOS
-- NO MESMO ANO

-- selecionei a tabela para ficar mais facil de achar
SELECT *
FROM Employees;

SELECT A.FirstName, B.HireDate, A.LastName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR,A.HireDate) = DATEPART(YEAR,B.HireDate);

-- usei o DATEPART para procurar somente por ano.


--	QUERO SABER NA TABELA DETALHE DE PEDIDO (ORDER DETAIL) QUAIS 
-- PRODUTOS TEM O MESMO PERCENTUAL DE DESCONTO

SELECT *
FROM [Order Details];

SELECT A.ProductID, A.Discount,B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount;





