-- 01_create_tables.sql
-- Criação do banco de dados e das tabelas do sistema
-- Sistema de Gestão do Movimento Salário Digno Nutrição

CREATE DATABASE IF NOT EXISTS salario_digno;
USE salario_digno;

-------------------------------------------------
-- Drop nas tabelas (ordem respeitando FKs)
-------------------------------------------------
DROP TABLE IF EXISTS PARTICIPACAO_ACAO;
DROP TABLE IF EXISTS DENUNCIA;
DROP TABLE IF EXISTS ACAO;
DROP TABLE IF EXISTS CAMPANHA;
DROP TABLE IF EXISTS PARTICIPANTE;

-------------------------------------------------
-- Tabela PARTICIPANTE
-------------------------------------------------
CREATE TABLE PARTICIPANTE (
    id_participante   INT           PRIMARY KEY,
    nome              VARCHAR(150)  NOT NULL,
    email             VARCHAR(150)  NOT NULL,
    telefone          VARCHAR(20),
    estado            VARCHAR(50)   NOT NULL,
    cidade            VARCHAR(100)  NOT NULL,
    area_atuacao      VARCHAR(100),
    tipo_participante VARCHAR(50)   NOT NULL,
    forma_contribuicao VARCHAR(100),
    crn_numero        VARCHAR(20),
    crn_regiao        VARCHAR(10),
    filiado_sindicato BOOLEAN
);

-------------------------------------------------
-- Tabela DENUNCIA
-------------------------------------------------
CREATE TABLE DENUNCIA (
    id_denuncia     INT          PRIMARY KEY,
    id_participante INT          NOT NULL,
    tipo            VARCHAR(50)  NOT NULL,
    descricao       TEXT         NOT NULL,
    estado_origem   VARCHAR(50)  NOT NULL,
    data_registro   DATE         NOT NULL,

    CONSTRAINT fk_denuncia_participante
        FOREIGN KEY (id_participante)
        REFERENCES PARTICIPANTE (id_participante)
);

-------------------------------------------------
-- Tabela CAMPANHA
-------------------------------------------------
CREATE TABLE CAMPANHA (
    id_campanha  INT          PRIMARY KEY,
    titulo       VARCHAR(100) NOT NULL,
    descricao    TEXT         NOT NULL,
    data_inicio  DATE         NOT NULL,
    data_fim     DATE
);

-------------------------------------------------
-- Tabela ACAO
-------------------------------------------------
CREATE TABLE ACAO (
    id_acao     INT           PRIMARY KEY,
    id_campanha INT           NOT NULL,
    tipo_acao   VARCHAR(100)  NOT NULL,
    data        DATE          NOT NULL,
    local       VARCHAR(120),
    descricao   TEXT,

    CONSTRAINT fk_acao_campanha
        FOREIGN KEY (id_campanha)
        REFERENCES CAMPANHA (id_campanha)
);

-------------------------------------------------
-- Tabela PARTICIPACAO_ACAO (tabela associativa N:N)
-------------------------------------------------
CREATE TABLE PARTICIPACAO_ACAO (
    id_participante INT          NOT NULL,
    id_acao         INT          NOT NULL,
    funcao          VARCHAR(100),
    presenca        BOOLEAN,

    CONSTRAINT pk_participacao_acao
        PRIMARY KEY (id_participante, id_acao),

    CONSTRAINT fk_participacao_participante
        FOREIGN KEY (id_participante)
        REFERENCES PARTICIPANTE (id_participante),

    CONSTRAINT fk_participacao_acao
        FOREIGN KEY (id_acao)
        REFERENCES ACAO (id_acao)
);
