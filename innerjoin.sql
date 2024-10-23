-- INNER JOIN SERVE PARA JUNTAR INFORMAÇOES DE TABELAS DIFERENTES, POR MEIO DE UMA INFORMAÇAO EM COMUM
-- EM UMA TABELA COM O TÍTULO CLIENTE TENHO AS INFORMAÇOES CLIENTEID;NOME;ENDEREÇOID
-- EM OUTRA TABELA COM O TÍTULO ENDEREÇO TENHO AS INFORMAÇOES ENDEREÇOID;RUA; CIDADE
-- PARA JUNTAS AS INFORMAÇOES DA TABELA VOU FAZER:

SELECT C.CLIENTEID, C.NOME, C.ENDEREÇOID, E.RUA, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDEREÇO E ON E.ENDEREÇOID = C.ENDEREÇOID

-- AMBAS TEM UMA INFORMAÇAO EM COMUM
-- O RESULTADO SERIA:
-- 2 / RICARDO / RUA SAO BENTO / RIO DE JANEIRO


-- PRECISO DAS SEGUINTES INFORMAÇOES BUSINESSENTITYID, FIRSTNAME, LASTNAME, EMAILADDRESS
SELECT P.BusinessEntityId, P.FirstName, P.Lastname, PE.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress PE ON P.BusinessEntityId = PE.BusinessEntityId;

-- AGORA DO LISTPRICE, NOME DO PRODUTO, NOME DA SUBCATEGORIA
SELECT P.ListPrice, P.Name, PS.Name
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID;

-- para mudar os nomes das colunas pra nao ficar a palavra nome nos dois, voce usa o AS para modificar
SELECT P.ListPrice, P.Name as "Product Name", PS.Name as "Subcategory Name"
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID;


-- NESSE EXEMPLO VOU JUNTAR TODAS AS INFORMAÇOES DAS COLUNAS, mesmo sendo de tabelas diferentes
SELECT *
FROM Person.BusinessEntityAddress AS PB
INNER JOIN Person.Address PA ON PB.AddressID = PA.AddressID;

--ATIVIDADE 24
-- INFORME AS SEGUINTES INFORMAÇOES, BussinessEntityID, Name, PhoneNumberTypeID, PhoneNumber
SELECT PT.PhoneNumberTypeID, PT.Name, PP.BusinessEntityID, PP.PhoneNumber
FROM Person.PhoneNumberType AS PT
INNER JOIN Person.PersonPhone PP ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID;

-- INFORME AS SEGUINTES INFORMAÇOES, AddressId, City, StateProvinceID, NAME
SELECT TOP 3*
FROM Person.StateProvince;
SELECT TOP 3*
FROM Person.Address; --COLOQUEI ESSES SELECTS PARA ACHAR O COMUNS ENTRE ELES MAIS FACIL

SELECT PA.AddressID, PA.City, PS.StateProvinceID, PS.Name
FROM  Person.Address AS PA
INNER JOIN Person.StateProvince PS ON PA.StateProvinceID = PS.StateProvinceID;