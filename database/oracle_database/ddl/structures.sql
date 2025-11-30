---------------------------------------
-- ESTRUTURAS
-- Define as entidades do minimundo
---------------------------------------
-- USUARIO
CREATE TABLE USUARIO (
    USU_ID            NUMBER(8),
    USU_EMAIL         VARCHAR2(255 CHAR),
    USU_SENHA         VARCHAR2(120 CHAR),
    USU_ATIVO         CHAR(1),
    USU_CRIADO_EM     DATE,
    USU_ATUALIZADO_EM DATE,
    USU_PRF_ID        NUMBER(5)
);
-- PERFIL
CREATE TABLE PERFIL (
    PRF_ID            NUMBER(5),
    PRF_NOME          VARCHAR2(100 CHAR),
    PRF_ATIVO         CHAR(1),
    PRF_CRIADO_EM     DATE,
    PRF_ATUALIZADO_EM DATE
);
-- PERMISSÃO
CREATE TABLE PERMISSAO (
    PMS_ID            NUMBER(8),
    PMS_NOME          VARCHAR2(100 CHAR),
    PMS_ASSINATURA    VARCHAR2(60 CHAR),
    PMS_DEFINICAO     VARCHAR2(255 CHAR),
    PMS_ATIVO         CHAR(1),
    PMS_CRIADO_EM     DATE,
    PMS_ATUALIZADO_EM DATE
);
-- PERMISSÃO PERFIL
CREATE TABLE PERMISSAO_PERFIL (
    PMP_ID            NUMBER(10),
    PMP_PMS_ID        NUMBER(8),
    PMP_PRF_ID        NUMBER(5),
    PMP_ATIVO         CHAR(1),
    PMP_CRIADO_EM     DATE
);