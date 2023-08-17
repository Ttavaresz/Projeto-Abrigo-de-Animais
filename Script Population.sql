-- POPULANDO AS TABELAS

-- INSERINDO VALORES NA TABELA Abrigo

INSERT INTO Abrigo (cnpj, Nome)
VALUES ('12345678900001', 'Abrigo Petfriendly');

-- INSERINDO VALORES NA TABELA Gaiola
-- Disponibilidade(0 = Ocupado, 1 = Livre)
-- Alimentação (0 = Não alimentado, 1 = Alimentado)
-- Limpeza (0 = Sujo, 1 = Limpo)

INSERT INTO Gaiola (id_gaiola, disponibilidade, alimentacao, limpeza, cnpj)
VALUES ('001', '0', '1', '1', '12345678900001');
INSERT INTO Gaiola (id_gaiola, disponibilidade, alimentacao, limpeza, cnpj)
VALUES ('002', '0', '1', '0', '12345678900001');
INSERT INTO Gaiola (id_gaiola, disponibilidade, alimentacao, limpeza, cnpj)
VALUES ('003', '0', '0', '1', '12345678900001');
INSERT INTO Gaiola (id_gaiola, disponibilidade, alimentacao, limpeza, cnpj)
VALUES ('004', '1', '1', '0', '12345678900001');
INSERT INTO Gaiola (id_gaiola, disponibilidade, alimentacao, limpeza, cnpj)
VALUES ('005', '1', '1', '0', '12345678900001');

-- INSERINDO VALORES NA TABELA Animal

INSERT INTO Animal (id_animal, nome_animal, raca, porte, sexo)
VALUES ('00001', 'Bolinha', 'Poodle', 'Pequeno', 'Fêmea');
INSERT INTO Animal (id_animal, nome_animal, raca, porte, sexo)
VALUES ('00002', 'Max', 'Labrador', 'Grande', 'Macho');
INSERT INTO Animal (id_animal, nome_animal, raca, porte, sexo)
VALUES ('00003', 'Mimi', 'Siamês', 'Pequeno', 'Fêmea');

-- INSERINDO VALORES NA TABELA Cachorro

INSERT INTO Cachorro (id_animal)
VALUES ('00001');
INSERT INTO Cachorro (id_animal)
VALUES ('00002');

-- INSERINDO VALORES NA TABELA Gato

INSERT INTO Gato (id_animal)
VALUES ('00003');

-- INSERINDO VALORES NA TABELA Pessoa

INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('11122233344', 'João da Silva', 30, '12345678900001');
INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('55566677788', 'Maria Souza', 25, '12345678900001');
INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('89789793488', 'Bruna Paiva', 23, '12345678900001');
INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('34789563498', 'Cleber Joaquim', 55, '12345678900001');
INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('00092841287', 'Neide Maria', 55, '12345678900001');
INSERT INTO Pessoa (cpf, nome_pessoa, idade, cnpj)
VALUES ('99924736978', 'Ana Marilza', 20, '12345678900001');

-- INSERINDO VALORES NA TABELA Funcionario

INSERT INTO Funcionario (cpf, salario, data_emprego)
VALUES ('89789793488', 2000, '2022-01-01');
INSERT INTO Funcionario (cpf, salario, data_emprego)
VALUES ('34789563498', 1500, '2021-06-01');

-- INSERINDO VALORES NA TABELA Resgata

INSERT INTO Resgata (id_animal, cpf, data_resgate)
VALUES ('00001', '11122233344', '2022-03-15');
INSERT INTO Resgata (id_animal, cpf, data_resgate)
VALUES ('00002', '55566677788', '2021-09-10');
INSERT INTO Resgata (id_animal, cpf, data_resgate)
VALUES ('00003', '55566677788', '2021-10-15');

-- INSERINDO VALORES NA TABELA Acolhe

INSERT INTO Acolhe (id_animal, cpf, data_chegada, data_saida)
VALUES ('00002', '89789793488', '2022-03-16', '2022-03-30');

-- INSERINDO VALORES NA TABELA Adota

INSERT INTO Adota (id_animal, cpf, data_adocao)
VALUES ('00001', '99924736978', '2023-05-09'),
       ('00003', '00092841287', '2023-06-29');

-- INSERINDO VALORES NA TABELA Vacina
INSERT INTO Vacina (id_vacina, nome_vacina, validade)
VALUES ('00001', 'V8', '2025-06-30'),
       ('00002', 'Antirrábica', '2024-09-15'),
       ('00003', 'V4', '2023-12-31');

-- INSERINDO VALORES NA TABELA Contem
INSERT INTO Contem (id_animal, id_vacina, data_aplicacao)
VALUES ('00001', '00001', '2022-05-01'),
       ('00001', '00002', '2022-07-10'),
       ('00002', '00002', '2022-08-20'),
       ('00003', '00001', '2022-04-15'),
       ('00003', '00003', '2022-10-15');