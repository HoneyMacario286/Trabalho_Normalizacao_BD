-- 02_criar_tabelas.sql
USE empresa_funcionarios;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Telefone;
DROP TABLE IF EXISTS Filho;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Posto_Trabalho;
DROP TABLE IF EXISTS Cidade;
DROP TABLE IF EXISTS Provincia;
DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS Cargo;
DROP TABLE IF EXISTS Funcao;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Funcao (
    codigo_funcao VARCHAR(10) PRIMARY KEY,
    nome_funcao VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE Cargo (
    codigo_cargo VARCHAR(10) PRIMARY KEY,
    nome_cargo VARCHAR(100) NOT NULL UNIQUE,
    codigo_funcao VARCHAR(10) NOT NULL,
    CONSTRAINT fk_cargo_funcao
        FOREIGN KEY (codigo_funcao) REFERENCES Funcao(codigo_funcao)
) ENGINE=InnoDB;

CREATE TABLE Pais (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nome_pais VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE Provincia (
    id_provincia INT AUTO_INCREMENT PRIMARY KEY,
    nome_provincia VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    CONSTRAINT uq_provincia_pais UNIQUE (nome_provincia, id_pais),
    CONSTRAINT fk_provincia_pais
        FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
) ENGINE=InnoDB;

CREATE TABLE Cidade (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_cidade VARCHAR(100) NOT NULL,
    id_provincia INT NOT NULL,
    CONSTRAINT uq_cidade_provincia UNIQUE (nome_cidade, id_provincia),
    CONSTRAINT fk_cidade_provincia
        FOREIGN KEY (id_provincia) REFERENCES Provincia(id_provincia)
) ENGINE=InnoDB;

CREATE TABLE Posto_Trabalho (
    id_posto INT AUTO_INCREMENT PRIMARY KEY,
    nome_posto VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    nuit VARCHAR(20) NOT NULL UNIQUE,
    bi VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(120) NOT NULL UNIQUE,
    endereco VARCHAR(200) NOT NULL,
    id_cidade INT NOT NULL,
    codigo_cargo VARCHAR(10) NOT NULL,
    id_posto INT NOT NULL,
    data_admissao DATE NOT NULL,
    CONSTRAINT fk_funcionario_cidade
        FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade),
    CONSTRAINT fk_funcionario_cargo
        FOREIGN KEY (codigo_cargo) REFERENCES Cargo(codigo_cargo),
    CONSTRAINT fk_funcionario_posto
        FOREIGN KEY (id_posto) REFERENCES Posto_Trabalho(id_posto)
) ENGINE=InnoDB;

CREATE TABLE Filho (
    id_filho INT AUTO_INCREMENT PRIMARY KEY,
    nome_filho VARCHAR(150) NOT NULL,
    id_funcionario INT NOT NULL,
    CONSTRAINT fk_filho_funcionario
        FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
        ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    id_funcionario INT NOT NULL,
    CONSTRAINT uq_telefone_funcionario UNIQUE (numero, id_funcionario),
    CONSTRAINT fk_telefone_funcionario
        FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
        ON DELETE CASCADE
) ENGINE=InnoDB;
