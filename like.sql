

-- vamos supor que voce esteja procurando uma pessoa no banco de dados 
-- que o nome dela era ovi... alguma coisa, como voce acharia?

SELECT *
FROM person.Person
WHERE FirstName LIKE 'ovi%'

-- o % significa que nao importa o valor seja numeros, letras, simbolos,etc. Ele retorna o que voce escreveu antes dele.

-- SE VC NAO LEMBRA DO FINAL DO NOME VOCE COLOCA % NO FINAL COMO NO EXEMPLO ACIMA, 
-- AGORA SE VOCE NAO LEMBRA DO COMEÇO VOCE COLOCA % NO COMEÇO
SELECT *
FROM person.Person
WHERE FirstName LIKE '%diu'

--AGORA SE VOCE SÓ LEMBRA DO MEIO DO NOME VOCE COLOCA % NO COMEÇO E NO FINAL
SELECT *
FROM person.Person
WHERE FirstName LIKE '%idi%'

-- SE VOCE COLOCAR _ ELE SE LIMITA A UM CARACTERE ANTES OU APOS



