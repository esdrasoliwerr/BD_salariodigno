-- 04_update_delete.sql
-- Comandos UPDATE e DELETE

USE salario_digno;

-------------------------------------------------
-- UPDATE 1
-------------------------------------------------
UPDATE PARTICIPANTE
SET cidade = 'Taguatinga', estado = 'DF'
WHERE id_participante = 1;

-------------------------------------------------
-- UPDATE 2
-------------------------------------------------
UPDATE PARTICIPACAO_ACAO
SET presenca = TRUE
WHERE id_participante = 1
  AND id_acao = 3;

-------------------------------------------------
-- UPDATE 3
-------------------------------------------------
UPDATE CAMPANHA
SET titulo = 'Piso Salarial Digno Nacional'
WHERE id_campanha = 1;

-------------------------------------------------
-- DELETE 1
-------------------------------------------------
DELETE FROM DENUNCIA
WHERE id_denuncia = 4;

-------------------------------------------------
-- DELETE 2
-------------------------------------------------
DELETE FROM PARTICIPACAO_ACAO
WHERE id_participante = 1
  AND id_acao = 3;

-------------------------------------------------
-- DELETE 3
-------------------------------------------------
DELETE FROM ACAO
WHERE id_acao = 4;
