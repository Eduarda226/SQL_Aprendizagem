--BETWEEN(entre) é usado para encontrar valor entre um valor mínimo e valor máximo

-- valor BETWEEN mínimo AND máximo;
-- mesma coisa que:
-- valoe >= mínimo AND valor <= máximo;


-- Aqui listei os preços dos produtos entre 1000 e 1500
SELECT *
FROM Production.Product
WHERE listprice BETWEEN 1000 AND 1500;

-- Se colocar o NOT, ele vai fazer o oposto
SELECT *
FROM Production.Product
WHERE listprice NOT BETWEEN 1000 AND 1500;

--DA pra fazer com datas também, AQUI QUERO SABER OS CONTRATADOS ENTRE 2009 E 2010
SELECT *
FROM HumanResources.employee
WHERE hireDate BETWEEN '2009/01/01' AND '2010/01/01';
--Para deixar em ordem só acrescentar ORDER BY
SELECT *
FROM HumanResources.employee
WHERE hireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY Hiredate;


