-- 03_select_consultas.sql
-- Consultas SELECT sobre o banco salario_digno

USE salario_digno;

-------------------------------------------------
-- 1) Nutricionistas ordenados por estado e nome
-------------------------------------------------
SELECT
    id_participante,
    nome,
    estado,
    cidade,
    area_atuacao
FROM PARTICIPANTE
WHERE tipo_participante = 'nutricionista'
ORDER BY estado, nome;

-------------------------------------------------
-- 2) Denúncias no DF com dados do participante
-------------------------------------------------
SELECT
    d.id_denuncia,
    p.nome AS participante,
    d.tipo,
    d.estado_origem,
    d.data_registro
FROM DENUNCIA d
JOIN PARTICIPANTE p ON p.id_participante = d.id_participante
WHERE d.estado_origem = 'DF'
ORDER BY d.data_registro DESC;

-------------------------------------------------
-- 3) Ações da campanha 2 ("30h Já")
-------------------------------------------------
SELECT
    c.titulo AS campanha,
    a.id_acao,
    a.tipo_acao,
    a.data,
    a.local
FROM ACAO a
JOIN CAMPANHA c ON c.id_campanha = a.id_campanha
WHERE a.id_campanha = 2
ORDER BY a.data;

-------------------------------------------------
-- 4) Quantidade de denúncias por estado
-------------------------------------------------
SELECT
    estado_origem,
    COUNT(*) AS total_denuncias
FROM DENUNCIA
GROUP BY estado_origem
ORDER BY total_denuncias DESC;

-------------------------------------------------
-- 5) Últimas 5 participações em ações
-------------------------------------------------
SELECT
    p.nome,
    a.tipo_acao,
    a.data,
    pa.funcao,
    pa.presenca
FROM PARTICIPACAO_ACAO pa
JOIN PARTICIPANTE p ON p.id_participante = pa.id_participante
JOIN ACAO a ON a.id_acao = pa.id_acao
ORDER BY a.data DESC
LIMIT 5;
