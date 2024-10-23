--DatePart extrai informaçoes de dados das colunas que contem DATAS 

-- quero extrair os meses de contratacao
-- Primeiro no DATEPART, eu quis saber o mes, e essa informacao estava
-- na coluna OrderDate, e a apelidei de Meses, para nao retornar no column name

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Meses
FROM Sales.SalesOrderHeader;


-- agora o ano
SELECT SalesOrderID, DATEPART(year, OrderDate) AS Ano
FROM Sales.SalesOrderHeader;

-- agora o dia
SELECT SalesOrderID, DATEPART(day, OrderDate) AS Dias
FROM Sales.SalesOrderHeader;


-- QUERO EXTRAIR A MEDIA DE QUANTO TEM QUE SER PAGO PARA A VENDA (TOTALDUE) QUAL É A MEDIA DO VALOR
-- DEVIDO POR MES

SELECT *
FROM Sales.SalesOrderHeader; -- sempre seleciono tudo da tabela, pra visualizar melhor o que procuro

SELECT AVG(TotalDue) AS Média, DATEPART(MONTH, OrderDate) AS Meses
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Meses; --USEI O ORDER BY PRA COMEÇAR DO MES 1 Á 12 NA ORDEM

-- AGORA O ANO
SELECT AVG(TotalDue) AS Média, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano;

-- AGORA DIA
SELECT AVG(TotalDue) AS Média, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(Day, OrderDate)
ORDER BY Dia;


