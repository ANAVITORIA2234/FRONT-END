-- 1. ESTE COMANDO IRA DEIXAR TODAS AS LETRAS MAIÚSCULAS--
SELECT UPPER(nome_da_coluna) 
FROM nome_da_tabela;

-- 2.  ESTE COMANDO IRA DEIXAR TODOS OS EMAIL MINÚSCULAS--
SELECT LOWER(email) 
FROM nome_da_tabela;

-- 3.  ESTE COMANDO IRA ENCONTRAR MAIS RAPIDO O QUE ESTA PEDINDO--
SELECT * 
FROM nome_da_tabela
WHERE descricao LIKE '%Notebook%';

-- 4.  ESTE COMANDO IRA ENCONTRAR O GMAIL MAIS RAPIDO --
SELECT COUNT(*) 
FROM nome_da_tabela
WHERE email LIKE '%@gmail.com';

-- 5. SUBSTITUICAO DE NOME --
SELECT REPLACE(endereco, 'Av.', 'Avenida') AS endereco_corrigido
FROM nome_da_tabela;

-- 6. ENCONTRAR PRODUTOS SEM CODIGO  --
SELECT * 
FROM nome_da_tabela
WHERE codigo IS NULL;

