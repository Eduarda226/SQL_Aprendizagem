-- caso quiser concatenar o comando é CONCAT

SELECT CONCAT(FirstName, ' ', LastName) -- coloquei ' ' porque ele iria colocar nome e sobrenomes juntos sem dar espaço
FROM Person.Person;

-- PARA DEIXAR AS INFORMACOES DAS COLUNAS TODAS COM AS LETRAS MAIUSCULAS USE UPPER
SELECT UPPER(FirstName)
FROM Person.Person;

-- AGORA O CONTRARIO, DEIXANDO-AS MINUSCULAS É LOWER
SELECT LOWER(FirstName)
FROM Person.Person;

-- PARA SABER QUANTOS CARACTERES TEM ALGUMA INFORMACAO DO DADO DA COLUNA USE LEN
SELECT FirstName, LEN(FirstName) -- COLOQUEI FIRSTNAME ANTES, SÓ PARA COMPARAR O NOME COM O NUMERO DE CARACTERES
FROM Person.Person;

-- PARA EXTRAIR APENAS UM POUCO/PEDAÇO DE UM DADO DA TABELA USE SUBTRING
SELECT FirstName, SUBSTRING(FirstName,1,4)
FROM Person.Person;
-- NESSE EXEMPLO ELE EXTRAIU APENAS AS PRIMEIRAS 4 LETRAS DOS NOMES

-- PARA SUBSTITUIR O DADO DENTRO DA COLUNA DA TABELA USE REPLACE(SUBSTITUIR)
SELECT ProductNumber, REPLACE(ProductNumber, '-', '+') as ProductNumber -- as usei para apelidar e chamei o productnumber antes para comparar o antes e o depois
FROM Production.Product; -- no caso substitui o que aparecia - para +.