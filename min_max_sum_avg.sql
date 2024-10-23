--FUNÇÕES QUE AGREGAM  OU COMBINAM DADOS DE UMA TABELA EM 1 RESULTADO SÓ

-- AQUI VOU SOMAR O TOTAL DE PEDIDO DE VENDAS
SELECT TOP 10 SUM (lineTotal)
FROM Sales.SalesOrderDetail;

--COLOCANDO AS É COMO SE TIVESSE DANDO APELIDO A FUNÇÃO QUE VOCE TA FAZENDO
SELECT TOP 10 SUM (lineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail;

-- AGORA VOU MOSTRAR O MENOR VALOR
SELECT TOP 10 MIN (lineTotal) AS "MENOR VALOR"
FROM Sales.SalesOrderDetail;

-- MÁXIMO
SELECT TOP 10 MAX (lineTotal) AS "VALOR MÁXIMO"
FROM Sales.SalesOrderDetail;

-- Média
SELECT TOP 10 AVG (lineTotal) AS "MÉDIA"
FROM Sales.SalesOrderDetail;