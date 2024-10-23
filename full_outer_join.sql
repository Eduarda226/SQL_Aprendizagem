-- FULL OUTER JOIN RETORNA TODOS OS VALORES QUE SAO IGUAIS DAS TABELAS DIFERENTES, E AQUELES QUE 
-- NAO SAO IGUAIS ELE RETORNA NULL, ele retorna tudo, mas separa entre os iguais e os diferentes.

SELECT *
FROM TabelaA
FULL OUTER JOIN TabelaB ON TabelaA.nome = TabelaB.nome

