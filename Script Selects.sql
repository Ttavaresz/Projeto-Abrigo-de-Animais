-- TESTES DE BUSCAS NAS TABELAS

-- Listar todos os animais que realizaram a vacina V8 pelo nome

SELECT Animal.id_animal, Contem.data_aplicacao, Animal.nome_animal, Animal.raca, Animal.porte, Animal.sexo
FROM Animal
INNER JOIN Contem ON Animal.id_animal = Contem.id_animal
INNER JOIN Vacina ON Contem.id_vacina = Vacina.id_vacina
WHERE Vacina.nome_vacina = 'V8'

-- Listar todas as pessoas que resgataram um animal antes de 09/02/2022

SELECT Pessoa.cpf, Pessoa.nome_pessoa, Pessoa.idade, Resgata.data_resgate, Resgata.id_animal
FROM Pessoa
INNER JOIN Resgata ON Pessoa.cpf = Resgata.cpf
WHERE Resgata.data_resgate < '2022-04-09'
ORDER BY Resgata.data_resgate

-- Listar os animais adotados e por quem foram adotados

SELECT Animal.id_animal, Animal.nome_animal, 
       CASE WHEN Cachorro.id_animal IS NULL THEN 'Gato' ELSE 'Cachorro' END as tipo_animal, 
       Pessoa.nome_pessoa, Pessoa.cpf
FROM Animal
JOIN Adota ON Animal.id_animal = Adota.id_animal 
JOIN Pessoa ON Adota.cpf = Pessoa.cpf 
LEFT JOIN Cachorro ON Animal.id_animal = Cachorro.id_animal;

-- Listar as gaiolas que nao foram limpas e/ou que nao receberam alimentacao

SELECT  Gaiola.id_gaiola, Gaiola.alimentacao, Gaiola.limpeza
FROM Gaiola
WHERE Gaiola.alimentacao = '0' OR Gaiola.limpeza = '0'

-- Listar as gaiolas que estao ocupadas

SELECT  Gaiola.id_gaiola, Gaiola.disponibilidade
FROM Gaiola
WHERE Gaiola.disponibilidade = '0'

-- Listar os cachorros

SELECT Animal.nome_animal
FROM Cachorro
INNER JOIN Animal ON Cachorro.id_animal = Animal.id_animal