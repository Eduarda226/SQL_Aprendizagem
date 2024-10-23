-- ALTER TABLE MUDA A ESTRUTURA DE UMA TABELA

ALTER TABLE nomeTabela
acao

-- AS ACOES SAO:

-- ADD, REMOVER, OR ALTERAR UMA COLUNA
-- SET VALORES PADROES DE UMA COLUNA
-- ADD OU REMOVER RESTRIÇOES DE UMA COLUNA
-- RENOMEAR UMA TABELA

-- AQUI VOU CRIAR UMA TABELA YOUTUBE:
CREATE TABLE Youtube (
   id int PRIMARY KEY,
   Nome VARCHAR(150) NOT NULL UNIQUE,
   Categoria VARCHAR(200) NOT NULL,
   DataCriação DATETIME NOT NULL
)

SELECT *
FROM Youtube;


-- QUERO ADICIONAR MAIS UMA COLUNA, NO CASO QUERO CHAMA DE ATIVO

ALTER TABLE Youtube 
ADD Ativo bit -- BIT É BOLEANO, OU É ATIVO OU INATIVO

-- AGORA QUERO ALTERAR O NÚMEROS DE CARACTERES DA CATEGORIA DE 200 PARA 300 CARACTERES VARCHAR

ALTER TABLE Youtube 
ALTER COLUMN Categoria VARCHAR(300) NOT NULL

-- PARA MUDAR O NOME DE UMA COLUNA NAO USA ALTER TABLE, USA EXEC

EXEC sp_RENAME 'NomaTabela.NomeColunaAtual' , 'NomeColunaNova' , 'COLUMN'

-- exemplo se eu fosse mudar nome da coluna na tabela YOUTUBE para NOME CANAL

EXEC sp_RENAME 'Youtube.Nome' , 'NomeCanal', 'COLUMN'

-- SE EU QUISER MUDAR O NOME DA TABELA DE YOUTUBE PARA YOUTUBE2

EXEC sp_RENAME 'Youtube', 'Youtube 2' 