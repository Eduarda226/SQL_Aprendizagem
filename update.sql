-- UPDATE ATUALIZA UMA OU MAIS LINHAS

UPDATE nomeTabela
SET coluna1 = valor1
    coluna2 = valor2
WHERE condicao  -- WHERE COM A CONDICAO IMPEDE DELE ATUALIZAR TODAS AS LINHAS, CASO QUEIRA A ATUALIZACAO EM TODAS
-- AS LINHAS É SÓ NAO DIGITAR WHERE E CONDICAO.

UPDATE Aula 
SET Nome = 'Teste'

-- AQUI MUDEI TODAS AS LINHAS, AGORA QUERO MUDAR SO UMA

UPDATE Aula 
SET NOME = 'Nome'
WHERE Id = 3;






