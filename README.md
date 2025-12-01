# BD_salariodigno
scripts SQL, instruções de execução, README.md completo do mini mundo salário digno nutrição


# Sistema de Gestão do Movimento Salário Digno Nutrição – Banco de Dados

Este repositório contém os scripts SQL referentes ao projeto de modelagem e implementação de banco de dados do minimundo “Salário Digno Nutrição”.

## Arquivos incluídos

### `01_create_tables.sql`
Cria o banco `salario_digno` e as tabelas:
- PARTICIPANTE  
- DENUNCIA  
- CAMPANHA  
- ACAO  
- PARTICIPACAO_ACAO  

### `02_insert_dados.sql`
Insere dados fictícios nas tabelas principais.

### `03_select_consultas.sql`
Contém consultas utilizando:
- WHERE
- ORDER BY
- LIMIT
- JOIN
- GROUP BY

### `04_update_delete.sql`
Inclui:
- 3 comandos UPDATE
- 3 comandos DELETE  
Todos com condições de filtro.

## Ambiente recomendado
- Banco: **MySQL**  
- Ferramentas: DBeaver, MySQL Workbench, ou equivalente.

## Ordem de execução
1. `01_create_tables.sql`  
2. `02_insert_dados.sql`  
3. `03_select_consultas.sql`  
4. `04_update_delete.sql`  
