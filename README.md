# Normalização de Base de Dados — Sistema de Gestão de Funcionários

Projeto do Trabalho II — Universidade Licungo, Licenciatura em Informática.

## Estrutura
- `sql/01_criar_base_dados.sql` — cria a base de dados.
- `sql/02_criar_tabelas.sql` — cria as tabelas normalizadas.
- `sql/03_inserir_dados.sql` — insere os 16 funcionários e os dados relacionados.
- `sql/04_consultas_JOIN.sql` — contém queries com JOIN.
- `documentos/Relatorio_Normalizacao.docx` — análise da normalização de 0FN até 4FN.
- `diagramas/Modelo_ER.png` — modelo entidade-relacionamento final.

## Como executar no MySQL Workbench
1. Abra o MySQL Workbench e entre na sua conexão MySQL.
2. Vá a **File > Open SQL Script**.
3. Abra `01_criar_base_dados.sql` e clique no ícone do raio (Execute).
4. Abra `02_criar_tabelas.sql` e execute.
5. Abra `03_inserir_dados.sql` e execute.
6. Abra `04_consultas_JOIN.sql` e execute as consultas individualmente ou todas.
7. No painel **SCHEMAS**, clique em atualizar (Refresh). Deve aparecer `empresa_funcionarios`.

## Observação
Os scripts devem ser executados nesta ordem.
