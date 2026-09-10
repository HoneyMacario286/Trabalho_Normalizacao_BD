-- 04_consultas_JOIN.sql
USE empresa_funcionarios;

-- QUERY 1: Funcionários, cargos e funções
SELECT
    f.id_funcionario,
    f.nome,
    c.nome_cargo AS cargo,
    fu.nome_funcao AS funcao,
    f.data_admissao
FROM Funcionario f
INNER JOIN Cargo c ON f.codigo_cargo = c.codigo_cargo
INNER JOIN Funcao fu ON c.codigo_funcao = fu.codigo_funcao
ORDER BY f.nome;

-- QUERY 2: Funcionários e localização completa
SELECT
    f.nome,
    f.endereco,
    ci.nome_cidade AS cidade,
    p.nome_provincia AS provincia,
    pa.nome_pais AS pais
FROM Funcionario f
INNER JOIN Cidade ci ON f.id_cidade = ci.id_cidade
INNER JOIN Provincia p ON ci.id_provincia = p.id_provincia
INNER JOIN Pais pa ON p.id_pais = pa.id_pais
ORDER BY f.nome;

-- QUERY 3: Funcionários e respectivos filhos
SELECT
    f.nome AS funcionario,
    fi.nome_filho AS filho
FROM Funcionario f
INNER JOIN Filho fi ON f.id_funcionario = fi.id_funcionario
ORDER BY f.nome, fi.nome_filho;

-- QUERY 4: Funcionários e telefones
SELECT
    f.nome AS funcionario,
    t.numero AS telefone
FROM Funcionario f
INNER JOIN Telefone t ON f.id_funcionario = t.id_funcionario
ORDER BY f.nome, t.numero;

-- QUERY 5: Reconstituição geral da informação profissional
SELECT
    f.nome,
    f.nuit,
    f.bi,
    f.email,
    c.nome_cargo AS cargo,
    fu.nome_funcao AS funcao,
    pt.nome_posto AS posto_trabalho,
    f.data_admissao
FROM Funcionario f
INNER JOIN Cargo c ON f.codigo_cargo = c.codigo_cargo
INNER JOIN Funcao fu ON c.codigo_funcao = fu.codigo_funcao
INNER JOIN Posto_Trabalho pt ON f.id_posto = pt.id_posto
ORDER BY f.nome;
