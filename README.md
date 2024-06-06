# Modelagem-de-Banco-de-Dados-Completa

### 1 - Cenário: Banco de Dados na Vila Oculta da Folha (Konohagakure)

Em um mundo onde o ninjutsu é uma arte dominante, a necessidade de um sistema de banco de dados se torna 
essencial para organizar e gerenciar as diversas facetas da vida ninja. Vamos adentrar nesse universo intrigante, 
onde ninjas, missões, equipamentos, localizações e clãs se entrelaçam em uma teia de aventura e desafio.

**Ninjas:**

Ninjas, os mestres das sombras, são indivíduos habilidosos e versáteis que operam nas sombras, cumprindo
 missões perigosas e protegendo segredos valiosos. Cada ninja possui uma identificação única, garantindo 
que seu histórico e habilidades sejam rastreados de maneira precisa. Seus atributos incluem nome, idade,
 graduação, habilidades variadas que podem ser múltiplas e a quantidade de missões concluídas, um atributo 
derivado que reflete sua experiência.

**Missão:**

As missões são o cerne da existência de um ninja. Desde infiltrar-se em fortalezas inimigas até recuperar 
artefatos antigos, as missões variam em dificuldade e recompensa. Cada missão é única, com um nome, 
descrição, nível de dificuldade e recompensa específicos. Além disso, as condições de conclusão podem ser 
complexas e variadas, exigindo habilidades específicas ou a obtenção de itens específicos. As datas de 
início e término são cruciais para o planejamento e execução das missões.

**Equipamentos:**

Um ninja é tão bom quanto seus equipamentos. Desde shurikens afiados até trajes de camuflagem, os 
equipamentos são essenciais para o sucesso de uma missão. Cada equipamento possui um nome, descrição e 
tipo específicos, e sua disponibilidade pode variar dependendo da demanda e do uso anterior. O proprietário
 do equipamento também é registrado para garantir responsabilidade e rastreabilidade.

**Localização:**

Ninjas operam em um mundo vasto e diversificado, e sua eficácia muitas vezes depende de sua familiaridade
 com o terreno. Cada localização é única, com um nome, descrição e coordenadas geográficas específicas. 
A região e a população são fatores importantes a serem considerados ao planejar uma missão, e a identificação
 da localização garante precisão na navegação.

**Clã:**

Os clãs ninja são como famílias, unidos por laços de sangue, lealdade e tradição. Cada clã tem seu próprio 
nome, símbolo e história única, moldada por gerações de ninjas. O líder do clã é responsável pela orientação
 e tomada de decisões, enquanto os membros contribuem com suas habilidades e experiências únicas para o sucesso
 do grupo.


Neste cenário complexo e dinâmico, um sistema de banco de dados é fundamental para gerenciar todas as informações 
relacionadas aos ninjas, suas missões, equipamentos, localizações e clãs. Ao garantir que os dados sejam precisos, 
atualizados e acessíveis, esse sistema permite que os ninjas operem com eficiência e sucesso em um mundo repleto 
de perigos e desafios.


**2 - Modelagem conceitual**

![conceitual](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/e79c8348-e4ee-4708-91ce-19fd34a4e222)

**3 - Modelagem logica**

![logica](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/8aa1d876-58fa-4692-aaa1-1f0c84a75e76)

**4 - Modelagem fisica**
```
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

CREATE TABLE ESTAO1(
	IDENT_CLA				INT,
	LOCALIZACAO_IDENT_LOCAL		INT,
	FOREIGN KEY (IDENT_CLA) REFERENCES CLAS(IDENT_CLA),
	FOREIGN KEY (LOCALIZACAO_IDENT_LOCAL) REFERENCES LOCALIZACAO(IDENT_LOCAL)
);

**5 - Inserção de dados**

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
(5, 'Infiltração'),
(6, 'Rastreamento'),
(7, 'Camuflagem'),
(8, 'Interrogatório'),
(9, 'Técnicas de sobrevivência'),
(10, 'Liderança'),
(11, 'Medicina ninja'),
(12, 'Técnicas de invocação'),
(13, 'Manipulação de chakra'),
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
(987123400, 'Haruka', 'Caminho do Trovão', 5, '1994-06-03', 10, 10),
(159357200, 'Satoshi', 'Rua da Neblina', 11, '1987-10-20', 11, 11),
(753982400, 'Mei', 'Viela das Lâminas', 9, '1996-01-28', 12, 12),
(856974100, 'Shin', 'Calçada da Serpente', 4, '1990-04-16', 13, 13),
(985214700, 'Aiko', 'Rua dos Dragões', 23, '1998-11-05', 14, 14),
(147258900, 'Yumi', 'Avenida das Estrelas Cadentes', 18, '1992-03-08', 15, 15),
(258369140, 'Ren', 'Travessa das Espadas', 6, '1988-08-17', 16, 16),
(963874100, 'Kaito', 'Beco dos Segredos', 13, '1995-05-24', 17, 17),
(745296300, 'Hikari', 'Rua das Pedras', 20, '1991-09-10', 18, 18),
(369125800, 'Makoto', 'Estrada do Destino', 22, '1989-12-30', 19, 19),
(852796300, 'Akira', 'Caminho da Aurora', 2, '1993-02-02', 20, 20);

INSERT INTO CLAS (IDENT_CLA, NOME_CLAN, SIMBOLO, HISTORIA, LIDER)
VALUES
(1, 'Clã do Trovão', 'Símbolo do trovão', 'Fundado há séculos, o Clã do Trovão é conhecido por sua habilidade em técnicas de ninjutsu baseadas em eletricidade.', 'Raiden'),
(2, 'Clã da Folha', 'Símbolo da folha', 'Um dos clãs mais antigos e respeitados, o Clã da Folha é conhecido por sua dedicação à proteção da Vila da Folha e por sua habilidade em ninjutsu elemental.', 'Hiruzen Sarutobi'),
(3, 'Clã da Areia', 'Símbolo da areia', 'Originários da Vila da Areia, o Clã da Areia é conhecido por suas habilidades em ninjutsu de vento e pela força de sua aliança com a Vila da Folha.', 'Gaara'),
(4, 'Clã da Nuvem', 'Símbolo da nuvem', 'O Clã da Nuvem é conhecido por seu estilo de combate agressivo e sua habilidade em técnicas de espada.', 'A'),
(5, 'Clã da Névoa', 'Símbolo da névoa', 'Um dos clãs mais misteriosos, o Clã da Névoa é conhecido por sua crueldade e habilidades em genjutsu.', 'Zabuza Momochi');

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

INSERT INTO MISSOES (N_MISSOES, NOME_MISSOES, CONDICOES_MISSAO, DESCRICAO, DATA_INICIO)
VALUES
(1, 'Resgate de refém', 'Resgatar refém vivo e capturar sequestradores.', 'Uma equipe de ninjas é enviada para resgatar um refém mantido em cativeiro por sequestradores.', '2024-06-01'),
(2, 'Infiltração em base inimiga', 'Infiltrar-se na base inimiga sem ser detectado e obter informações importantes.', 'Um grupo de ninjas é encarregado de se infiltrar na base inimiga para coletar informações cruciais.', '2024-06-05'),
(3, 'Eliminação de alvo', 'Localizar e eliminar um alvo específico.', 'Um ninja altamente treinado é designado para eliminar um alvo de alto valor.', '2024-06-10'),
(4, 'Proteção de VIP', 'Proteger um VIP durante um evento público.', 'Uma equipe de ninjas é destacada para proteger um VIP durante uma cerimônia importante.', '2024-06-15'),
(5, 'Recuperação de artefato', 'Recuperar um artefato roubado de valor histórico.', 'Uma missão é atribuída para recuperar um artefato roubado de um museu local.', '2024-06-20'),
(6, 'Expurgo de ninjas renegados', 'Localizar e eliminar ninjas renegados.', 'Uma equipe de elite é enviada para localizar e neutralizar ninjas renegados que representam uma ameaça à segurança da vila.', '2024-06-25'),
(7, 'Resolução de conflito', 'Mediar uma disputa entre clãs rivais.', 'Um mediador ninja é convocado para resolver um conflito entre clãs rivais.', '2024-07-01'),
(8, 'Investigação de atividade suspeita', 'Investigar atividades suspeitas na fronteira da vila.', 'Uma equipe de investigação é enviada para verificar relatos de atividades suspeitas na fronteira da vila.', '2024-07-05'),
(9, 'Resgate de animal de estimação', 'Resgatar um animal de estimação perdido.', 'Um ninja é enviado para resgatar um animal de estimação perdido em uma área perigosa.', '2024-07-10'),
(10, 'Treinamento de novatos', 'Treinar novos recrutas nas habilidades básicas de ninjutsu.', 'Um mestre ninja lidera o treinamento de novos recrutas nas habilidades fundamentais de ninjutsu.', '2024-07-15'),
(11, 'Limpeza de área infestada de criaturas', 'Limpar uma área infestada de criaturas perigosas.', 'Uma equipe de limpeza é enviada para erradicar criaturas perigosas de uma área local.', '2024-07-20'),
(12, 'Escolta de caravana', 'Escoltar uma caravana comercial através de território hostil.', 'Uma equipe de ninjas é designada para escoltar uma caravana comercial através de território hostil.', '2024-07-25'),
(13, 'Supressão de rebelião', 'Suprimir uma rebelião local.', 'Um grupo de ninjas é enviado para suprimir uma rebelião que ameaça a estabilidade da vila.', '2024-07-30');
(14, 'Busca e resgate em área de desastre', 'Buscar e resgatar sobreviventes em uma área de desastre natural.', 'Uma equipe de busca e resgate é mobilizada para ajudar sobreviventes em uma área afetada por um desastre natural.', '2024-08-01'),
(15, 'Proteção de caravana de suprimentos', 'Proteger uma caravana de suprimentos vital para a vila.', 'Um esquadrão de ninjas é destacado para proteger uma caravana de suprimentos essencial para a vila.', '2024-08-05'),
(16, 'Assistência médica em área remota', 'Fornecer assistência médica em uma área remota sem acesso a serviços médicos.', 'Uma equipe médica ninja é enviada para fornecer assistência médica em uma área remota.', '2024-08-10'),
(17, 'Diplomacia com nações vizinhas', 'Conduzir negociações diplomáticas com nações vizinhas.', 'Um diplomata ninja é encarregado de conduzir negociações diplomáticas para fortalecer os laços com nações vizinhas.', '2024-08-15'),
(18, 'Rastreamento de alvo fugitivo', 'Rastrear e capturar um alvo fugitivo procurado por crimes graves.', 'Um rastreador ninja é encarregado de localizar e capturar um alvo fugitivo procurado por crimes graves.', '2024-08-20'),
(19, 'Evacuação de área de perigo iminente', 'Evacuar civis de uma área ameaçada por desastre iminente.', 'Uma equipe de evacuação é mobilizada para retirar civis de uma área sob ameaça de desastre iminente.', '2024-08-25'),
(20, 'Neutralização de ameaça youkai', 'Neutralizar uma ameaça youkai que ameaça a segurança da vila.', 'Um esquadrão de eliminação é enviado para neutralizar uma ameaça youkai que surgiu nas proximidades da vila.', '2024-08-30');

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

INSERT INTO EQUIPAMENTOS (IDENT_EQUIP, DESCRICAO, TIPO, DISPONIBILIDADE, PROPRIETARIO)
VALUES
(1, 'Espada de Aço', 'Arma', '2024-06-05', 'Hanzo'),
(2, 'Kunai', 'Arma', '2024-06-05', 'Ayame'),
(3, 'Shuriken', 'Arma', '2024-06-10', 'Takeshi'),
(4, 'Bombas de Fumaça', 'Dispositivo', '2024-06-15', 'Yuki'),
(5, 'Katanas Gêmeas', 'Arma', '2024-06-20', 'Kenji'),
(6, 'Armadura de Combate', 'Equipamento de Proteção', '2024-06-25', 'Sakura'),
(7, 'Arco e Flecha', 'Arma', '2024-07-01', 'Ryu'),
(8, 'Nunchaku', 'Arma', '2024-07-05', 'Emiko'),
(9, 'Fio de Aço', 'Ferramenta de Escalada', '2024-07-10', 'Raiden'),
(10, 'Dardos Envenenados', 'Arma', '2024-07-15', 'Haruka'),
(11, 'Bastão de Combate', 'Arma', '2024-07-20', 'Satoshi'),
(12, 'Caltrops', 'Dispositivo', '2024-07-25', 'Mei'),
(13, 'Leque de Metal', 'Arma', '2024-07-30', 'Shin'),
(14, 'Garras de Aço', 'Arma', '2024-08-05', 'Aiko'),
(15, 'Sai', 'Arma', '2024-08-10', 'Yumi'),
(16, 'Faca de Arremesso', 'Arma', '2024-08-15', 'Ren'),
(17, 'Arco Naginata', 'Arma', '2024-08-20', 'Kaito'),
(18, 'Bumerangue', 'Arma', '2024-08-25', 'Hikari'),
(19, 'Chicote de Aço', 'Arma', '2024-08-30', 'Makoto'),
(20, 'Estrela de Aço', 'Arma', '2024-09-05', 'Akira');

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

INSERT INTO LOCALIZACAO (IDENT_LOCAL, NOME_LOCAL, COORDENADAS, REGIAO, POPULACAO)
VALUES
(1, 'Vila da Folha', 123456, 'País do Fogo', 50000),
(2, 'Vila da Areia', 987654, 'País do Vento', 30000),
(3, 'Vila da Névoa', 456123, 'País da Água', 40000),
(4, 'Vila da Pedra', 789456, 'País da Terra', 45000),
(5, 'Vila da Nuvem', 321789, 'País do Raio', 35000),
(6, 'Vila do Som', 654321, 'País do Som', 25000),
(7, 'Vila da Cachoeira', 987321, 'País da Água', 30000),
(8, 'Vila do Arco-Íris', 654789, 'País do Arco-Íris', 20000),
(9, 'Vila da Estrela', 123789, 'País do Espelho', 28000),
(10, 'Vila do Oceano', 987123, 'País do Mar', 32000),
(11, 'Vila da Grama', 159357, 'País da Grama', 27000),
(12, 'Vila do Rio', 753951, 'País da Água', 31000),
(13, 'Vila do Chá', 852369, 'País do Chá', 23000),
(14, 'Vila das Fontes Termais', 369852, 'País do Fogo', 29000),
(15, 'Vila da Lua', 147258, 'País do Vento', 27000),
(16, 'Vila das Estrelas Cadentes', 258369, 'País das Estrelas', 21000),
(17, 'Vila da Geleira', 963852, 'País do Gelo', 33000),
(18, 'Vila da Neblina', 741852, 'País da Neblina', 25000),
(19, 'Vila do Trovão', 369147, 'País do Raio', 28000),
(20, 'Vila da Floresta', 852741, 'País do Fogo', 30000);

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
```

**6 - CRUD**

*C*
![c](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/be073ef3-3a39-4bf9-b3fa-968b99b7ea2d)

*R*
![r](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/ae0ebcd1-d822-4151-8717-4f8e9ea7f29b)

*U*
![u](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/a1a30bf2-9e37-4d57-bb8b-0af762ab27dd)

*U-1*
![u 1](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/31fc6380-c55e-454f-925a-bc404570d148)

*D*
![d](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/d61572d2-d346-4123-93b5-20a1de606f64)

*D-1*
![d 1](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/8cd98b6f-3578-4196-abb5-5e609c6fde15)

**7 - Relatórios**

*1*
![1](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/667769c4-d4f5-4a58-8770-0c829fc32ba0)

*2*
![2](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/1bdab001-0d41-47e7-97fa-c06a561417b4)

*3*
![3](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/675eb4dc-aeed-4254-b298-df816c739585)

*4*
![4](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/abc02c09-7c70-4ab4-ab85-47bfb2db0b5a)

*5*
![5](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/7b5c9774-2fa1-403f-af71-e6da877550b4)

*6*
![6](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/97f287c3-5af2-438c-ba5c-ed71233932a4)

*7*
![7](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/998a334a-edd1-4301-9141-0351b0516dae)

*8*
![8](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/b3c1787a-296f-4fc7-a0fd-dc9dea13366f)

*9*
![9](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/a434aa11-0ba7-415b-a410-63b40b3ae281)

*10*
![10](https://github.com/ThiagoDav/Modelagem-de-Banco-de-Dados-Completa/assets/163654698/4c7bb360-f004-4980-b9dd-46b5c9d61e13)











