-- CRIANDO TODAS AS TABELAS

-- Criando Tabela Abrigo

CREATE TABLE Abrigo (
cnpj VARCHAR(14) NOT NULL,
Nome VARCHAR(100) NOT NULL,

Primary Key (cnpj)
);

-- Criando Tabela Gaiola

CREATE TABLE Gaiola (
id_gaiola VARCHAR(3) NOT NULL,
disponibilidade BIT NOT NULL,
alimentacao BIT NOT NULL,
limpeza BIT NOT NULL,
cnpj VARCHAR(14) NOT NULL,

Primary Key (id_gaiola),
Foreign Key (cnpj) References Abrigo(cnpj)
);

-- Criando Tabela Animal

CREATE TABLE Animal (
id_animal VARCHAR(5) NOT NULL,
nome_animal VARCHAR(20) NOT NULL,
raca VARCHAR(25) NOT NULL,
porte VARCHAR(7) NOT NULL,
sexo VARCHAR(5) NOT NULL,

Primary key (id_animal)
);

-- Criando Tabela Hospeda

CREATE TABLE Hospeda (
id_gaiola VARCHAR(3) NOT NULL,
id_animal VARCHAR(5) NOT NULL,
data_chegada DATE NOT NULL,
data_saida DATE NOT NULL,

Primary Key (id_gaiola, id_animal),
Foreign Key (id_gaiola) References Gaiola(id_gaiola),
Foreign Key (id_animal) References Animal(id_animal)
);

-- Criando Tabela Cachorro

CREATE TABLE Cachorro (
id_animal VARCHAR(5) NOT NULL,

Foreign Key (id_animal) References Animal(id_animal)
);

-- Criando Tabela Gato

CREATE TABLE Gato (
id_animal VARCHAR(5) NOT NULL,

Foreign Key (id_animal) References Animal(id_animal)
);

-- Criando Tabela Pessoa

CREATE TABLE Pessoa (
cpf VARCHAR(11) NOT NULL,
nome_pessoa VARCHAR(60) NOT NULL,
idade INT NOT NULL,
cnpj VARCHAR(14) NOT NULL,

Primary Key (cpf),
Foreign Key (cnpj) References Abrigo(cnpj)
);

-- Criando Tabela Funcionario

CREATE TABLE Funcionario (
cpf VARCHAR(11) NOT NULL,
salario INT NOT NULL,
data_emprego DATE NOT NULL,

Foreign Key (cpf) References Pessoa(cpf)
);

-- Criando Tabela Resgata

CREATE TABLE Resgata (
id_animal VARCHAR(5) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_resgate DATE NOT NULL,

Primary Key (id_animal, cpf),
Foreign Key (id_animal) References Animal(id_animal),
Foreign Key (cpf) References Pessoa(cpf)
);

-- Criando Tabela Acolhe

CREATE TABLE Acolhe (
id_animal VARCHAR(5) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_chegada DATE NOT NULL,
data_saida DATE NOT NULL,

Primary Key (id_animal, cpf),
Foreign Key (id_animal) References Animal(id_animal),
Foreign Key (cpf) References Pessoa(cpf)
);

-- Criando Tabela Adota

CREATE TABLE Adota (
id_animal VARCHAR(5) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_adocao DATE NOT NULL,

Primary Key (id_animal, cpf),
Foreign Key (id_animal) References Animal(id_animal),
Foreign Key (cpf) References Pessoa(cpf)
);

-- Criando Tabela Vacina

CREATE TABLE Vacina (
id_vacina VARCHAR(5) NOT NULL,
nome_vacina VARCHAR(60) NOT NULL,
validade DATE NOT NULL,

Primary Key (id_vacina)
);

-- Criando Tabela Contem

CREATE TABLE Contem (
id_animal VARCHAR(5) NOT NULL,
id_vacina VARCHAR(5) NOT NULL,
data_aplicacao DATE NOT NULL,

Primary Key (id_animal, id_vacina),
Foreign Key (id_animal) References Animal(id_animal),
Foreign Key (id_vacina) References Vacina(id_vacina)
);