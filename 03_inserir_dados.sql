-- 03_inserir_dados.sql
USE empresa_funcionarios;

INSERT INTO Funcao (codigo_funcao, nome_funcao) VALUES
('F01','Tecnologias de Informação'),
('F02','Finanças'),
('F03','Engenharia'),
('F04','Saúde'),
('F05','Educação'),
('F06','Logística'),
('F07','Recursos Humanos'),
('F08','Administração');

INSERT INTO Cargo (codigo_cargo, nome_cargo, codigo_funcao) VALUES
('C01','Técnico de Informática','F01'),
('C02','Contabilista','F02'),
('C03','Engenheiro Civil','F03'),
('C04','Enfermeiro','F04'),
('C05','Professor','F05'),
('C06','Motorista','F06'),
('C07','Gestor de Recursos Humanos','F07'),
('C08','Assistente Administrativo','F08');

INSERT INTO Pais (nome_pais) VALUES ('Moçambique');

INSERT INTO Provincia (nome_provincia, id_pais) VALUES
('Maputo Cidade',1),
('Maputo Província',1),
('Gaza',1),
('Inhambane',1),
('Sofala',1),
('Nampula',1),
('Manica',1),
('Tete',1),
('Zambézia',1),
('Cabo Delgado',1);

INSERT INTO Cidade (nome_cidade, id_provincia) VALUES
('Maputo',1),
('Matola',2),
('Chókwè',3),
('Maxixe',4),
('Beira',5),
('Nampula',6),
('Chimoio',7),
('Tete',8),
('Quelimane',9),
('Pemba',10);

INSERT INTO Posto_Trabalho (nome_posto) VALUES
('Sede Maputo'),
('Delegação Matola'),
('Delegação Gaza'),
('Delegação Inhambane'),
('Delegação Beira'),
('Delegação Nampula'),
('Delegação Manica'),
('Delegação Tete'),
('Delegação Zambézia'),
('Delegação Cabo Delgado');

INSERT INTO Funcionario
(nome, data_nascimento, nuit, bi, email, endereco, id_cidade, codigo_cargo, id_posto, data_admissao)
VALUES
('Amélia Fernanda Cossa','1985-03-12','100234567','110100123456A','amelia.cossa@empresa.co.mz','Av. Julius Nyerere, n.º 245, Sommerschield',1,'C01',1,'2015-02-05'),
('Bernardo Alfredo Machava','1979-07-22','100345678','110100234567B','bernardo.machava@empresa.co.mz','Rua da Resistência, n.º 8, Polana Caniço8',1,'C02',1,'2010-09-14'),
('Celina Armando Sitoe','1990-11-03','100456789','110200345678C','celina.sitoe@empresa.co.mz','Av. Samora Machel, n.º 12, Fomento',2,'C08',2,'2018-06-01'),
('Domingos Paulo Nhantumbo','1982-01-30','100567890','110300456789D','domingos.nhantumbo@empresa.co.mz','Rua 3, n.º 56, Chókwè-Sede',3,'C06',3,'2012-03-10'),
('Eugénia Marta Muchanga','1988-05-18','100678901','110400567890E','eugenia.muchanga@empresa.co.mz','Av. Eduardo Mondlane, n.º 301, Maxixe-Sede',4,'C04',4,'2016-08-20'),
('Fernando José Macuácua','1975-09-25','100789012','110500678901F','fernando.macuacua@empresa.co.mz','Av. Poder Popular, n.º 77, Macuti',5,'C03',5,'2008-01-15'),
('Graça Isabel Zunguze','1992-12-07','100890123','110600789012G','graca.zunguze@empresa.co.mz','Rua da Frescura, n.º 19, Ponta Gêa',5,'C05',5,'2019-02-02'),
('Hélder António Cuamba','1980-04-14','100901234','110700890123H','helder.cuamba@empresa.co.mz','Av. 25 de Setembro, n.º 150, Alto Maé',1,'C07',1,'2011-11-11'),
('Ivete Sara Chirindza','1995-06-29','101012345','110800901234I','ivete.chirindza@empresa.co.mz','Rua do Bagamoyo, n.º 5, Muhipiti',6,'C01',6,'2020-07-03'),
('João Baptista Nhaca','1978-08-09','101123456','110900012345J','joao.nhaca@empresa.co.mz','Av. Josina Machel, n.º 200, Namahera',6,'C02',6,'2009-05-25'),
('Lúcia Ermelinda Bila','1991-02-16','101234567','111000123456K','lucia.bila@empresa.co.mz','Rua da Base, n.º 33, Chaimite',5,'C08',5,'2017-09-19'),
('Marcelino Inácio Tembe','1983-10-21','101345678','111100234567L','marcelino.tembe@empresa.co.mz','Av. Kwame Nkrumah, n.º 410, Coop',1,'C03',1,'2013-04-08'),
('Noémia Alzira Massingue','1987-03-04','101456789','111200345678M','noemia.massingue@empresa.co.mz','Rua de Chimoio, n.º 67, Chingussura',7,'C04',7,'2014-12-12'),
('Osvaldo Simião Ubisse','1976-07-27','101567890','111300456789N','osvaldo.ubisse@empresa.co.mz','Av. 7 de Setembro, n.º 90, Matundo',8,'C06',8,'2006-10-30'),
('Paulina Fátima Uache','1993-01-15','101678901','111400567890O','paulina.uache@empresa.co.mz','Rua da Missão, n.º 24, Chalaua',9,'C05',9,'2021-09-09'),
('Ricardo Manuel Come','1981-06-02','101789012','111500678901P','ricardo.come@empresa.co.mz','Av. Franqueza, n.º 18, Chuwaula',10,'C07',10,'2010-07-17');

INSERT INTO Filho (nome_filho, id_funcionario) VALUES
('Cátia Cossa',1),
('Nelson Machava',2),
('Ivete Machava',2),
('Suzana Machava',2),
('Paulo Nhantumbo Jr',4),
('Alzira Nhantumbo',4),
('Marta Muchanga',5),
('José Macuácua',6),
('Beatriz Macuácua',6),
('Adriano Macuácua',6),
('António Cuamba Jr',8),
('Filomena Cuamba',8),
('Baptista Nhaca Jr',10),
('Ermelinda Bila',11),
('Inácio Tembe Jr',12),
('Rosa Tembe',12),
('Simião Ubisse Jr',14),
('Alcinda Ubisse',14),
('Custódio Ubisse',14),
('Manuel Come Jr',16);

INSERT INTO Telefone (numero, id_funcionario) VALUES
('841234567',1),
('821234567',1),
('845678901',2),
('861122334',3),
('847890123',4),
('878901234',4),
('849012345',5),
('823456789',6),
('843456789',6),
('863456789',6),
('844567890',7),
('824567890',7),
('825678901',8),
('846789012',9),
('827890123',10),
('847890124',10),
('848901234',11),
('829012345',12),
('849012346',12),
('869012347',12),
('841122334',13),
('822233445',14),
('842233445',14),
('843344556',15),
('824455667',16),
('844455667',16);
