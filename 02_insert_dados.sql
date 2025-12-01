-- 02_insert_dados.sql
-- Inserts de dados fictícios para popular as tabelas principais

USE salario_digno;

-------------------------------------------------
-- PARTICIPANTE
-------------------------------------------------
INSERT INTO PARTICIPANTE (
    id_participante, nome, email, telefone, estado, cidade,
    area_atuacao, tipo_participante, forma_contribuicao,
    crn_numero, crn_regiao, filiado_sindicato
) VALUES
(1, 'Ana Souza',       'ana.souza@example.com',      '(61)99999-1111', 'DF', 'Brasília',       'Saúde Coletiva',   'nutricionista', 'Denúncias e ações presenciais', '12345', '1', TRUE),
(2, 'Bruno Lima',      'bruno.lima@example.com',     '(31)98888-2222', 'MG', 'Belo Horizonte', 'UAN',              'nutricionista', 'Mobilização online',           '67890', '9', FALSE),
(3, 'Carlos Pereira',  'carlos.pereira@example.com', '(11)97777-3333', 'SP', 'São Paulo',      'Ensino e pesquisa','nutricionista', 'Produção de materiais',        '54321', '3', TRUE),
(4, 'Daniela Alves',   'daniela.alves@example.com',  '(21)96666-4444', 'RJ', 'Rio de Janeiro', 'Estudante',        'estudante',     'Apoio em campanhas',           NULL,    NULL, FALSE),
(5, 'Eduarda Martins', 'eduarda.martins@example.com','(85)95555-5555', 'CE', 'Fortaleza',      'Comunicação',      'apoiador',      'Comunicação e redes sociais',  NULL,    NULL, FALSE);

-------------------------------------------------
-- CAMPANHA
-------------------------------------------------
INSERT INTO CAMPANHA (
    id_campanha, titulo, descricao, data_inicio, data_fim
) VALUES
(1, 'Piso Salarial Digno', 
 'Campanha pela aprovação de piso salarial nacional para nutricionistas.',
 '2025-01-10', NULL),
(2, '30h Já', 
 'Mobilização pela jornada máxima de 30h semanais para nutricionistas.',
 '2025-02-01', NULL);

-------------------------------------------------
-- ACAO
-------------------------------------------------
INSERT INTO ACAO (
    id_acao, id_campanha, tipo_acao, data, local, descricao
) VALUES
(1, 1, 'Audiência Pública',      '2025-03-05', 'Câmara dos Deputados',       'Participação em audiência pública sobre piso salarial.'),
(2, 1, 'Live Informativa',       '2025-03-10', 'YouTube',                    'Live explicando o impacto do piso salarial na categoria.'),
(3, 2, 'Ato em Brasília',        '2025-04-15', 'Esplanada dos Ministérios',  'Ato nacional em defesa das 30h.'),
(4, 2, 'Reunião com Sindicato',  '2025-04-20', 'Sede do Sindicato DF',       'Alinhamento de estratégias com entidades sindicais.');

-------------------------------------------------
-- DENUNCIA
-------------------------------------------------
INSERT INTO DENUNCIA (
    id_denuncia, id_participante, tipo, descricao, estado_origem, data_registro
) VALUES
(1, 1, 'Salário abaixo do piso',
 'Relato de contratação com salário muito abaixo do praticado na região.',
 'DF', '2025-02-10'),
(2, 2, 'Jornada excessiva',
 'Carga horária acima de 44h sem remuneração adequada.',
 'MG', '2025-02-15'),
(3, 3, 'Acúmulo de funções',
 'Responsabilidade técnica sem remuneração compatível.',
 'SP', '2025-02-20'),
(4, 1, 'Contrato informal',
 'Atuação sem carteira assinada em unidade de alimentação.',
 'DF', '2025-03-01');

-------------------------------------------------
-- PARTICIPACAO_ACAO
-------------------------------------------------
INSERT INTO PARTICIPACAO_ACAO (
    id_participante, id_acao, funcao, presenca
) VALUES
(1, 1, 'Fala técnica na audiência', TRUE),
(2, 1, 'Apoio jurídico',            TRUE),
(3, 2, 'Convidado na live',         TRUE),
(4, 2, 'Moderação do chat',         TRUE),
(1, 3, 'Organização local',         FALSE),
(5, 3, 'Cobertura em redes sociais',TRUE),
(2, 4, 'Representante sindical',    TRUE);
