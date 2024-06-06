use prova
go


CREATE TABLE NINJAS (
    CPF INT PRIMARY KEY,
    NOME VARCHAR(30) NOT NULL,
    RUA VARCHAR(60),
    NUM INT,
    NIVER DATE,
    TELEFONE_ID INT,
    HABILIDADES_ID INT,
    FOREIGN KEY (TELEFONE_ID) REFERENCES TELEFONE (ID_TELEFONE),
    FOREIGN KEY (HABILIDADES_ID) REFERENCES HABILIDADES (ID_HABILIDADES)
);

CREATE TABLE TELEFONE(
	ID_TELEFONE			INT				PRIMARY KEY,
	TELEFONE			VARCHAR(20),		
);

CREATE TABLE HABILIDADES(
	ID_HABILIDADES		INT				PRIMARY KEY,
	HABILIDADES			VARCHAR(30)		NOT NULL
);

INSERT INTO TELEFONE (ID_TELEFONE, TELEFONE)
VALUES
(1, '1234567890'),
(2, '9876543210'),
(3, '4561237890'),
(4, '7894561230'),
(5, '3217896540'),
(6, '6543217890'),
(7, '9873216540'),
(8, '6547893210'),
(9, '1237896540'),
(10, '9871236540'),
(11, '1593578520'),
(12, '7539518240'),
(13, '8523697410'),
(14, '3698521470'),
(15, '1472583690'),
(16, '2583691470'),
(17, '9638527410'),
(18, '7418529630'),
(19, '3691472580'),
(20, '8527419630');

INSERT INTO HABILIDADES (ID_HABILIDADES, HABILIDADES)
VALUES
(1, 'Espionagem'),
(2, 'Combate corpo a corpo'),
(3, 'Manuseio de armas'),
(4, 'Artes marciais'),
(5, 'Infiltra��o'),
(6, 'Rastreamento'),
(7, 'Camuflagem'),
(8, 'Interrogat�rio'),
(9, 'T�cnicas de sobreviv�ncia'),
(10, 'Lideran�a'),
(11, 'Medicina ninja'),
(12, 'T�cnicas de invoca��o'),
(13, 'Manipula��o de chakra'),
(14, 'Genjutsu'),
(15, 'Taijutsu'),
(16, 'Ninjutsu'),
(17, 'Kenjutsu'),
(18, 'Selamento'),
(19, 'Rastreamento'),
(20, 'Ilusionismo');

INSERT INTO NINJAS (CPF, NOME, RUA, NUM, NIVER, TELEFONE_ID, HABILIDADES_ID)
VALUES
(123456780, 'Hanzo', 'Rua da Sombra', 10, '1990-05-15', 1, 1),
(987654320, 'Ayame', 'Rua das Flores', 25, '1995-11-28', 2, 2),
(456123780, 'Takeshi', 'Avenida da Lua', 7, '1988-03-10', 3, 3),
(789456100, 'Yuki', 'Travessa do Vento', 14, '1992-08-02', 4, 4),
(321785400, 'Kenji', 'Alameda das Estrelas', 21, '1997-12-19', 5, 5),
(654328900, 'Sakura', 'Rua dos Cerejeiras', 8, '1993-04-30', 6, 6),
(987321400, 'Ryu', 'Beco das Sombras', 3, '1986-07-07', 7, 7),
(654789100, 'Emiko', 'Ladeira da Lua', 12, '1991-09-24', 8, 8),
(123789400, 'Raiden', 'Estrada da Tempestade', 17, '1989-02-14', 9, 9),
(987123400, 'Haruka', 'Caminho do Trov�o', 5, '1994-06-03', 10, 10),
(159357200, 'Satoshi', 'Rua da Neblina', 11, '1987-10-20', 11, 11),
(753982400, 'Mei', 'Viela das L�minas', 9, '1996-01-28', 12, 12),
(856974100, 'Shin', 'Cal�ada da Serpente', 4, '1990-04-16', 13, 13),
(985214700, 'Aiko', 'Rua dos Drag�es', 23, '1998-11-05', 14, 14),
(147258900, 'Yumi', 'Avenida das Estrelas Cadentes', 18, '1992-03-08', 15, 15),
(258369140, 'Ren', 'Travessa das Espadas', 6, '1988-08-17', 16, 16),
(963874100, 'Kaito', 'Beco dos Segredos', 13, '1995-05-24', 17, 17),
(745296300, 'Hikari', 'Rua das Pedras', 20, '1991-09-10', 18, 18),
(369125800, 'Makoto', 'Estrada do Destino', 22, '1989-12-30', 19, 19),
(852796300, 'Akira', 'Caminho da Aurora', 2, '1993-02-02', 20, 20);




CREATE TABLE CLAS(
	IDENT_CLA			INT				PRIMARY KEY,
	NOME_CLAN			VARCHAR(30)		NOT NULL,
	SIMBOLO				VARCHAR(30),
	HISTORIA			VARCHAR(600),
	LIDER				VARCHAR(60)
);

CREATE TABLE NINJAS_CLAS(
    CPF INT,
    IDENT_CLA INT,
    FOREIGN KEY (CPF) REFERENCES NINJAS(CPF),
    FOREIGN KEY (IDENT_CLA) REFERENCES CLAS(IDENT_CLA)
);

INSERT INTO CLAS (IDENT_CLA, NOME_CLAN, SIMBOLO, HISTORIA, LIDER)
VALUES
(1, 'Cl� do Trov�o', 'S�mbolo do trov�o', 'Fundado h� s�culos, o Cl� do Trov�o � conhecido por sua habilidade em t�cnicas de ninjutsu baseadas em eletricidade.', 'Raiden'),
(2, 'Cl� da Folha', 'S�mbolo da folha', 'Um dos cl�s mais antigos e respeitados, o Cl� da Folha � conhecido por sua dedica��o � prote��o da Vila da Folha e por sua habilidade em ninjutsu elemental.', 'Hiruzen Sarutobi'),
(3, 'Cl� da Areia', 'S�mbolo da areia', 'Origin�rios da Vila da Areia, o Cl� da Areia � conhecido por suas habilidades em ninjutsu de vento e pela for�a de sua alian�a com a Vila da Folha.', 'Gaara'),
(4, 'Cl� da Nuvem', 'S�mbolo da nuvem', 'O Cl� da Nuvem � conhecido por seu estilo de combate agressivo e sua habilidade em t�cnicas de espada.', 'A'),
(5, 'Cl� da N�voa', 'S�mbolo da n�voa', 'Um dos cl�s mais misteriosos, o Cl� da N�voa � conhecido por sua crueldade e habilidades em genjutsu.', 'Zabuza Momochi');

INSERT INTO NINJAS_CLAS (IDENT_CLA)
VALUES
(1),
(2),
(3),
(4),
(5),
(1),
(2),
(3),
(4),
(5),
(1),
(2),
(3),
(4),
(5),
(1),
(2),
(3),
(4),
(5);

CREATE TABLE MISSOES(
	N_MISSOES			INT				PRIMARY KEY,
	NOME_MISSOES		VARCHAR(30)		NOT NULL,
	CONDICOES_MISSAO	VARCHAR(300),
	DESCRICAO			VARCHAR(300),
	DATA_INICIO			DATE
);

CREATE TABLE FAZEM(
	NINJAS_CPF			INT,
	MISSOES_N_MISSAO	INT,
	FOREIGN KEY (NINJAS_CPF) REFERENCES NINJAS(CPF),
	FOREIGN KEY (MISSOES_N_MISSAO) REFERENCES MISSOES(N_MISSOES)
);

INSERT INTO MISSOES (N_MISSOES, NOME_MISSOES, CONDICOES_MISSAO, DESCRICAO, DATA_INICIO)
VALUES
(1, 'Resgate de ref�m', 'Resgatar ref�m vivo e capturar sequestradores.', 'Uma equipe de ninjas � enviada para resgatar um ref�m mantido em cativeiro por sequestradores.', '2024-06-01'),
(2, 'Infiltra��o em base inimiga', 'Infiltrar-se na base inimiga sem ser detectado e obter informa��es importantes.', 'Um grupo de ninjas � encarregado de se infiltrar na base inimiga para coletar informa��es cruciais.', '2024-06-05'),
(3, 'Elimina��o de alvo', 'Localizar e eliminar um alvo espec�fico.', 'Um ninja altamente treinado � designado para eliminar um alvo de alto valor.', '2024-06-10'),
(4, 'Prote��o de VIP', 'Proteger um VIP durante um evento p�blico.', 'Uma equipe de ninjas � destacada para proteger um VIP durante uma cerim�nia importante.', '2024-06-15'),
(5, 'Recupera��o de artefato', 'Recuperar um artefato roubado de valor hist�rico.', 'Uma miss�o � atribu�da para recuperar um artefato roubado de um museu local.', '2024-06-20'),
(6, 'Expurgo de ninjas renegados', 'Localizar e eliminar ninjas renegados.', 'Uma equipe de elite � enviada para localizar e neutralizar ninjas renegados que representam uma amea�a � seguran�a da vila.', '2024-06-25'),
(7, 'Resolu��o de conflito', 'Mediar uma disputa entre cl�s rivais.', 'Um mediador ninja � convocado para resolver um conflito entre cl�s rivais.', '2024-07-01'),
(8, 'Investiga��o de atividade suspeita', 'Investigar atividades suspeitas na fronteira da vila.', 'Uma equipe de investiga��o � enviada para verificar relatos de atividades suspeitas na fronteira da vila.', '2024-07-05'),
(9, 'Resgate de animal de estima��o', 'Resgatar um animal de estima��o perdido.', 'Um ninja � enviado para resgatar um animal de estima��o perdido em uma �rea perigosa.', '2024-07-10'),
(10, 'Treinamento de novatos', 'Treinar novos recrutas nas habilidades b�sicas de ninjutsu.', 'Um mestre ninja lidera o treinamento de novos recrutas nas habilidades fundamentais de ninjutsu.', '2024-07-15'),
(11, 'Limpeza de �rea infestada de criaturas', 'Limpar uma �rea infestada de criaturas perigosas.', 'Uma equipe de limpeza � enviada para erradicar criaturas perigosas de uma �rea local.', '2024-07-20'),
(12, 'Escolta de caravana', 'Escoltar uma caravana comercial atrav�s de territ�rio hostil.', 'Uma equipe de ninjas � designada para escoltar uma caravana comercial atrav�s de territ�rio hostil.', '2024-07-25'),
(13, 'Supress�o de rebeli�o', 'Suprimir uma rebeli�o local.', 'Um grupo de ninjas � enviado para suprimir uma rebeli�o que amea�a a estabilidade da vila.', '2024-07-30');
(14, 'Busca e resgate em �rea de desastre', 'Buscar e resgatar sobreviventes em uma �rea de desastre natural.', 'Uma equipe de busca e resgate � mobilizada para ajudar sobreviventes em uma �rea afetada por um desastre natural.', '2024-08-01'),
(15, 'Prote��o de caravana de suprimentos', 'Proteger uma caravana de suprimentos vital para a vila.', 'Um esquadr�o de ninjas � destacado para proteger uma caravana de suprimentos essencial para a vila.', '2024-08-05'),
(16, 'Assist�ncia m�dica em �rea remota', 'Fornecer assist�ncia m�dica em uma �rea remota sem acesso a servi�os m�dicos.', 'Uma equipe m�dica ninja � enviada para fornecer assist�ncia m�dica em uma �rea remota.', '2024-08-10'),
(17, 'Diplomacia com na��es vizinhas', 'Conduzir negocia��es diplom�ticas com na��es vizinhas.', 'Um diplomata ninja � encarregado de conduzir negocia��es diplom�ticas para fortalecer os la�os com na��es vizinhas.', '2024-08-15'),
(18, 'Rastreamento de alvo fugitivo', 'Rastrear e capturar um alvo fugitivo procurado por crimes graves.', 'Um rastreador ninja � encarregado de localizar e capturar um alvo fugitivo procurado por crimes graves.', '2024-08-20'),
(19, 'Evacua��o de �rea de perigo iminente', 'Evacuar civis de uma �rea amea�ada por desastre iminente.', 'Uma equipe de evacua��o � mobilizada para retirar civis de uma �rea sob amea�a de desastre iminente.', '2024-08-25'),
(20, 'Neutraliza��o de amea�a youkai', 'Neutralizar uma amea�a youkai que amea�a a seguran�a da vila.', 'Um esquadr�o de elimina��o � enviado para neutralizar uma amea�a youkai que surgiu nas proximidades da vila.', '2024-08-30');

INSERT INTO FAZEM (MISSOES_N_MISSAO)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

CREATE TABLE EQUIPAMENTOS(
	IDENT_EQUIP			INT			PRIMARY KEY,
	DESCRICAO			VARCHAR(600),
	TIPO				VARCHAR(300),
	DISPONIBILIDADE		DATE,
	PROPRIETARIO		VARCHAR(300)
);

CREATE TABLE TEM(
	MISSOES_N_MISSAO	INT,
	EQUIPAMENTOS_IDENT_EQUIP	INT,
	FOREIGN KEY (MISSOES_N_MISSAO) REFERENCES MISSOES(N_MISSOES),
	FOREIGN KEY (EQUIPAMENTOS_IDENT_EQUIP) REFERENCES EQUIPAMENTOS(IDENT_EQUIP)
);

INSERT INTO EQUIPAMENTOS (IDENT_EQUIP, DESCRICAO, TIPO, DISPONIBILIDADE, PROPRIETARIO)
VALUES
(1, 'Espada de A�o', 'Arma', '2024-06-05', 'Hanzo'),
(2, 'Kunai', 'Arma', '2024-06-05', 'Ayame'),
(3, 'Shuriken', 'Arma', '2024-06-10', 'Takeshi'),
(4, 'Bombas de Fuma�a', 'Dispositivo', '2024-06-15', 'Yuki'),
(5, 'Katanas G�meas', 'Arma', '2024-06-20', 'Kenji'),
(6, 'Armadura de Combate', 'Equipamento de Prote��o', '2024-06-25', 'Sakura'),
(7, 'Arco e Flecha', 'Arma', '2024-07-01', 'Ryu'),
(8, 'Nunchaku', 'Arma', '2024-07-05', 'Emiko'),
(9, 'Fio de A�o', 'Ferramenta de Escalada', '2024-07-10', 'Raiden'),
(10, 'Dardos Envenenados', 'Arma', '2024-07-15', 'Haruka'),
(11, 'Bast�o de Combate', 'Arma', '2024-07-20', 'Satoshi'),
(12, 'Caltrops', 'Dispositivo', '2024-07-25', 'Mei'),
(13, 'Leque de Metal', 'Arma', '2024-07-30', 'Shin'),
(14, 'Garras de A�o', 'Arma', '2024-08-05', 'Aiko'),
(15, 'Sai', 'Arma', '2024-08-10', 'Yumi'),
(16, 'Faca de Arremesso', 'Arma', '2024-08-15', 'Ren'),
(17, 'Arco Naginata', 'Arma', '2024-08-20', 'Kaito'),
(18, 'Bumerangue', 'Arma', '2024-08-25', 'Hikari'),
(19, 'Chicote de A�o', 'Arma', '2024-08-30', 'Makoto'),
(20, 'Estrela de A�o', 'Arma', '2024-09-05', 'Akira');

INSERT INTO TEM (MISSOES_N_MISSAO, EQUIPAMENTOS_IDENT_EQUIP)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

CREATE TABLE LOCALIZACAO(
	IDENT_LOCAL		INT		PRIMARY KEY,
	NOME_LOCAL		VARCHAR(60),
	COORDENADAS		INT,
	REGIAO			VARCHAR(60),
	POPULACAO		INT
);

CREATE TABLE ESTAO(
	NINJAS_CPF					INT,
	LOCALIZACAO_IDENT_LOCAL		INT,
	FOREIGN KEY (NINJAS_CPF) REFERENCES NINJAS(CPF),
	FOREIGN KEY (LOCALIZACAO_IDENT_LOCAL) REFERENCES LOCALIZACAO(IDENT_LOCAL)
);

INSERT INTO LOCALIZACAO (IDENT_LOCAL, NOME_LOCAL, COORDENADAS, REGIAO, POPULACAO)
VALUES
(1, 'Vila da Folha', 123456, 'Pa�s do Fogo', 50000),
(2, 'Vila da Areia', 987654, 'Pa�s do Vento', 30000),
(3, 'Vila da N�voa', 456123, 'Pa�s da �gua', 40000),
(4, 'Vila da Pedra', 789456, 'Pa�s da Terra', 45000),
(5, 'Vila da Nuvem', 321789, 'Pa�s do Raio', 35000),
(6, 'Vila do Som', 654321, 'Pa�s do Som', 25000),
(7, 'Vila da Cachoeira', 987321, 'Pa�s da �gua', 30000),
(8, 'Vila do Arco-�ris', 654789, 'Pa�s do Arco-�ris', 20000),
(9, 'Vila da Estrela', 123789, 'Pa�s do Espelho', 28000),
(10, 'Vila do Oceano', 987123, 'Pa�s do Mar', 32000),
(11, 'Vila da Grama', 159357, 'Pa�s da Grama', 27000),
(12, 'Vila do Rio', 753951, 'Pa�s da �gua', 31000),
(13, 'Vila do Ch�', 852369, 'Pa�s do Ch�', 23000),
(14, 'Vila das Fontes Termais', 369852, 'Pa�s do Fogo', 29000),
(15, 'Vila da Lua', 147258, 'Pa�s do Vento', 27000),
(16, 'Vila das Estrelas Cadentes', 258369, 'Pa�s das Estrelas', 21000),
(17, 'Vila da Geleira', 963852, 'Pa�s do Gelo', 33000),
(18, 'Vila da Neblina', 741852, 'Pa�s da Neblina', 25000),
(19, 'Vila do Trov�o', 369147, 'Pa�s do Raio', 28000),
(20, 'Vila da Floresta', 852741, 'Pa�s do Fogo', 30000);

INSERT INTO ESTAO (LOCALIZACAO_IDENT_LOCAL)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

CREATE TABLE ESTAO1(
	IDENT_CLA				INT,
	LOCALIZACAO_IDENT_LOCAL		INT,
	FOREIGN KEY (IDENT_CLA) REFERENCES CLAS(IDENT_CLA),
	FOREIGN KEY (LOCALIZACAO_IDENT_LOCAL) REFERENCES LOCALIZACAO(IDENT_LOCAL)
);

INSERT INTO ESTAO1 (IDENT_CLA, LOCALIZACAO_IDENT_LOCAL)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(1, 16),
(2, 17),
(3, 18),
(4, 19),
(5, 20);


filtros!*****



select * from NINJAS;

UPDATE NINJAS SET NOME = 'Yuta Okootsu' WHERE Nome = 'Raiden';

DELETE FROM NINJAS WHERE NIVER = '1989-02-14';

SELECT N.NOME AS Ninja, H.HABILIDADES AS Habilidade
FROM NINJAS N
INNER JOIN HABILIDADES H ON N.HABILIDADES_ID = H.ID_HABILIDADES;

SELECT M.NOME_MISSOES AS Missao, E.DESCRICAO AS Equipamento
FROM MISSOES M
INNER JOIN TEM T ON M.N_MISSOES = T.MISSOES_N_MISSAO
INNER JOIN EQUIPAMENTOS E ON T.EQUIPAMENTOS_IDENT_EQUIP = E.IDENT_EQUIP;


SELECT N.NOME AS Ninja, H.HABILIDADES AS Habilidade
FROM NINJAS N
INNER JOIN HABILIDADES H ON N.HABILIDADES_ID = H.ID_HABILIDADES
WHERE H.HABILIDADES = 'Camuflagem';

SELECT *
FROM LOCALIZACAO
WHERE NOME_LOCAL = 'Vila da Areia'

SELECT N.NOME AS Ninja, E.DESCRICAO AS Equipamento
FROM NINJAS N
INNER JOIN ESTAO1 E1 ON N.HABILIDADES_ID = E1.IDENT_CLA
INNER JOIN EQUIPAMENTOS E ON E1.LOCALIZACAO_IDENT_LOCAL = E.IDENT_EQUIP
WHERE E.DESCRICAO = 'Estrela de A�o';


SELECT M.NOME_MISSOES AS Missao, COUNT(F.MISSOES_N_MISSAO) AS NumeroNinjas
FROM MISSOES M
LEFT JOIN FAZEM F ON M.N_MISSOES = F.MISSOES_N_MISSAO
GROUP BY M.NOME_MISSOES;