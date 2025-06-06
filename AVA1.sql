CREATE DATABASE sga;
USE sga;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    email VARCHAR(100),
    data_nascimento DATE,
    sexo CHAR(1)
);

CREATE TABLE curso (
    id_curso INT PRIMARY KEY,
    nome VARCHAR(100),
    conteudo_programatico TEXT,
    carga_horaria INT,
    data_criacao DATE,
    email_responsavel VARCHAR(100)
);

CREATE TABLE oferta (
    id_oferta INT PRIMARY KEY,
    id_curso INT,
    publico_alvo VARCHAR(50),
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE inscricao (
    id_inscricao INT PRIMARY KEY,
    id_oferta INT,
    id_usuario INT,
    data_inscricao DATE,
    FOREIGN KEY (id_oferta) REFERENCES oferta(id_oferta),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);


INSERT INTO usuario (id_usuario, nome, cpf, email, data_nascimento, sexo) VALUES
(1, 'Alice Silva', '44121532034', 'alicesilva@example.com', '1950-06-26', 'F'),
(2, 'Bruno Souza', '34263551656', 'brunosouza@email.com', '1981-04-05', 'M'),
(3, 'Carla Pereira', '55539239205', 'carlapereira@test.com', '1994-11-25', 'F'),
(4, 'Daniel Costa', '48452558143', 'danielcosta@example.com', '1972-10-12', 'M'),
(5, 'Eduarda Lima', '93305895522', 'eduardalima@email.com', '1955-04-15', 'F'),
(6, 'Fernando Alves', '77538114905', 'fernandoalves@example.com', '1956-07-22', 'M'),
(7, 'Gabriela Martins', '74257226408', 'gabrielamartins@test.com', '1979-09-22', 'F'),
(8, 'Henrique Oliveira', '59015266451', 'henriqueoliveira@example.com', '1960-06-28', 'M'),
(9, 'Isabela Ferreira', '11608313265', 'isabelaferreira@example.com', '1990-05-22', 'F'),
(10, 'João Santos', '21345678901', 'joaosantos@example.com', '1985-08-15', 'M'),
(11, 'Larissa Rodrigues', '98765432100', 'larissarodrigues@example.com', '1975-03-10', 'F'),
(12, 'Marcelo Carvalho', '12345678901', 'marcelocarvalho@example.com', '1992-07-19', 'M'),
(13, 'Natália Gomes', '23456789012', 'nataliagomes@example.com', '1988-11-30', 'F'),
(14, 'Otávio Ribeiro', '34567890123', 'otavioribeiro@example.com', '1965-05-25', 'M'),
(15, 'Patrícia Mendes', '45678901234', 'patriciamendes@example.com', '1978-09-05', 'F'),
(16, 'Ricardo Nunes', '56789012345', 'ricardonunes@example.com', '1983-12-12', 'M'),
(17, 'Sofia Araújo', '67890123456', 'sofiaaraujo@example.com', '1991-04-22', 'F'),
(18, 'Thiago Barros', '78901234567', 'thiagobarros@example.com', '1986-06-18', 'M'),
(19, 'Vanessa Teixeira', '89012345678', 'vanessateixeira@example.com', '1970-10-09', 'F'),
(20, 'William Batista', '90123456789', 'williambatista@example.com', '1993-02-14', 'M'),
(21, 'Yasmin Farias', '01234567890', 'yasminfarias@example.com', '1982-03-21', 'F'),
(22, 'Zeca Moraes', '12345678901', 'zecamoraes@example.com', '1976-08-08', 'M'),
(23, 'Ana Clara', '23456789012', 'anaclara@example.com', '1989-01-17', 'F'),
(24, 'Bernardo Cunha', '34567890123', 'bernardocunha@example.com', '1995-05-29', 'M'),
(25, 'Camila Duarte', '45678901234', 'camiladuarte@example.com', '1984-07-13', 'F'),
(26, 'Diego Fonseca', '56789012345', 'diegofonseca@example.com', '1977-11-03', 'M'),
(27, 'Elisa Guimarães', '67890123456', 'elisaguimaraes@example.com', '1990-09-27', 'F'),
(28, 'Felipe Henrique', '78901234567', 'felipehenrique@example.com', '1987-12-25', 'M'),
(29, 'Giovana Ibarra', '89012345678', 'giovanaibarra@example.com', '1973-04-11', 'F'),
(30, 'Hugo Jardim', '90123456789', 'hugojardim@example.com', '1996-06-07', 'M'),
(31, 'Inês Kato', '01234567890', 'ineskato@example.com', '1980-10-19', 'F'),
(32, 'Júlio Lopes', '12345678901', 'juliolopes@example.com', '1979-02-28', 'M'),
(33, 'Karen Martins', '23456789012', 'karenmartins@example.com', '1997-05-16', 'F'),
(34, 'Lucas Nascimento', '34567890123', 'lucasnascimento@example.com', '1985-07-23', 'M'),
(35, 'Mariana Oliveira', '45678901234', 'marianaoliveira@example.com', '1974-11-08', 'F'),
(36, 'Nicolas Pires', '56789012345', 'nicolaspires@example.com', '1998-09-03', 'M'),
(37, 'Olívia Queiroz', '67890123456', 'oliviaqueiroz@example.com', '1981-12-20', 'F'),
(38, 'Pedro Rocha', '78901234567', 'pedrorocha@example.com', '1971-03-15', 'M'),
(39, 'Quitéria Silva', '89012345678', 'quiteriasilva@example.com', '1999-06-30', 'F'),
(40, 'Rafael Torres', '90123456789', 'rafaeltorres@example.com', '1983-08-24', 'M'),
(41, 'Sara Uchoa', '01234567890', 'sarauchoa@example.com', '1968-04-06', 'F'),
(42, 'Tomás Vieira', '56224472196', 'tomasvieira@test.com', '1974-09-25', 'M'),
(43, 'Ursula Xavier', '75068540887', 'ursulaxavier@email.com', '1993-08-22', 'F'),
(44, 'Victor Yamada', '89915136032', 'victoryamada@test.com', '1977-09-11', 'M'),
(45, 'Wanda Zamboni', '80641863615', 'wandazamboni@example.com', '1954-06-20', 'F'),
(46, 'Xavier Almeida', '05334563757', 'xavieralmeida@example.com', '2001-04-27', 'M'),
(47, 'Yara Barbosa', '48711240256', 'yarabarbosa@test.com', '1974-12-11', 'F'),
(48, 'Zeca Costa', '78757620955', 'zecacosta@email.com', '1967-07-01', 'M'),
(49, 'Ana Dias', '20555751182', 'anadias@example.com', '1983-11-19', 'F'),
(50, 'Bruno Esteves', '87117328359', 'brunoesteves@email.com', '1968-10-10', 'M');


INSERT INTO curso (id_curso, nome, conteudo_programatico, carga_horaria, data_criacao, email_responsavel) VALUES
(1, 'Computação em Nuvem', 'Análise e visualização de grandes volumes de dados.', 90, '2004-08-10', 'computacaoemnuvem@example.com'),
(2, 'Desenvolvimento Mobile', 'Desenvolvimento de aplicações móveis para Android e iOS.', 38, '2002-10-04', 'desenvolvimentomobile@email.com'),
(3, 'Programação Orientada a Objetos', 'Estudo dos principais algoritmos de inteligência artificial.', 70, '2010-11-20', 'programacaoorientadaaobjetos@example.com'),
(4, 'Engenharia de Controle', 'Estudo dos principais algoritmos de inteligência artificial.', 84, '2010-01-02', 'engenhariadecontrole@email.com'),
(5, 'Internet das Coisas', 'Técnicas para processamento e análise de big data.', 65, '2008-03-18', 'internetdascoisas@example.com'),
(6, 'Desenvolvimento Web', 'Desenvolvimento de aplicações web utilizando HTML, CSS e JavaScript.', 55, '2013-05-02', 'desenvolvimentoweb@example.com'),
(7, 'Segurança da Informação', 'Práticas e técnicas para garantir a segurança da informação.', 33, '2018-07-19', 'segurancadainformacao@email.com'),
(8, 'Redes de Computadores', 'Configuração e manutenção de redes de computadores.', 44, '2016-02-25', 'redesdecomputadores@test.com'),
(9, 'Inteligência Artificial', 'Estudo dos principais algoritmos de inteligência artificial.', 60, '2010-09-10', 'inteligenciaartificial@example.com'),
(10, 'Machine Learning', 'Fundamentos e técnicas de aprendizado de máquina.', 20, '2014-06-05', 'machinelearning@example.com'),
(11, 'Bioinformática', 'Aplicações da bioinformática na análise de dados biológicos.', 90, '2008-03-18', 'bioinformatica@email.com'),
(12, 'Big Data', 'Técnicas para processamento e análise de big data.', 25, '2017-11-30', 'bigdata@example.com'),
(13, 'Computação Gráfica', 'Criação e manipulação de gráficos por computador.', 35, '2015-01-22', 'computacaografica@example.com'),
(14, 'Análise de Dados', 'Análise e visualização de grandes volumes de dados.', 50, '2021-04-11', 'analisededados@example.com'),
(15, 'Robótica', 'Fundamentos da robótica e programação de robôs.', 40, '2009-08-27', 'robotica@example.com'),
(16, 'Bioinformática', 'Aplicações da bioinformática na análise de dados biológicos.', 75, '2012-12-03', 'bioinformatica@example.com'),
(17, 'Computação em Nuvem', 'Serviços e arquitetura da computação em nuvem.', 30, '2018-05-14', 'computacaoemnuvem@example.com'),
(18, 'Engenharia de Software', 'Processos e práticas da engenharia de software.', 55, '2011-07-21', 'engenhariadesoftware@example.com'),
(19, 'Sistemas Operacionais', 'Funcionamento e gerenciamento de sistemas operacionais.', 45, '2013-09-09', 'sistemasoperacionais@example.com'),
(20, 'Arquitetura de Computadores', 'Estudo dos fundamentos teóricos da computação.', 65, '2019-02-17', 'arquiteturadecomputadores@example.com'),
(21, 'Processamento de Imagens', 'Criação e manipulação de gráficos por computador.', 85, '2006-11-05', 'processamentodeimagens@example.com'),
(22, 'Visão Computacional', 'Desenvolvimento de aplicações web utilizando HTML, CSS e JavaScript.', 95, '2020-01-29', 'visaocomputacional@example.com'),
(23, 'Redes Neurais Artificiais', 'Estudo dos principais algoritmos de inteligência artificial.', 10, '2015-06-13', 'redesneuraisartificiais@example.com'),
(24, 'Metodologias Ágeis', 'Métodos numéricos para resolução de problemas matemáticos.', 38, '2007-08-30', 'metodologiasageis@email.com'),
(25, 'Criptografia', 'Aplicações da bioinformática na análise de dados biológicos.', 76, '2019-03-19', 'criptografia@example.com'),
(26, 'Big Data', 'Estudo dos fundamentos teóricos da computação.', 36, '2004-04-24', 'bigdata@email.com'),
(27, 'Empreendedorismo em TI', 'Desenvolvimento de aplicações móveis para Android e iOS.', 37, '2002-03-07', 'empreendedorismoemti@test.com'),
(28, 'Visão Computacional', 'Desenvolvimento de aplicações web utilizando HTML, CSS e JavaScript.', 34, '2016-02-21', 'visaocomputacional@example.com'),
(29, 'Compiladores', 'Modelagem e gerenciamento de banco de dados relacionais.', 20, '2017-08-15', 'compiladores@example.com'),
(30, 'Cálculo Numérico', 'Métodos numéricos para resolução de problemas matemáticos.', 60, '2010-05-23', 'calculonumerico@example.com'),
(31, 'Teoria da Computação', 'Estudo dos fundamentos teóricos da computação.', 70, '2018-10-01', 'teoriadacomputacao@example.com'),
(32, 'Estruturas de Dados', 'Implementação e análise de algoritmos avançados.', 25, '2012-04-04', 'estruturasdedados@example.com'),
(33, 'Programação Funcional', 'Estudo dos principais algoritmos de inteligência artificial.', 50, '2015-11-11', 'programacaofuncional@example.com'),
(34, 'Desenvolvimento de Jogos', 'Desenvolvimento de aplicações web utilizando HTML, CSS e JavaScript.', 40, '2019-07-27', 'desenvolvimentodejogos@example.com'),
(35, 'Computação Quântica', 'Estudo dos fundamentos teóricos da computação.', 30, '2004-02-14', 'computacaoquantica@example.com'),
(36, 'Sistemas Distribuídos', 'Configuração e manutenção de redes de computadores.', 85, '2021-06-20', 'sistemasdistribuidos@example.com'),
(37, 'Computação Forense', 'Práticas e técnicas para garantir a segurança da informação.', 95, '2002-09-09', 'computacaoforense@example.com'),
(38, 'Simulação e Modelagem', 'Implementação e análise de algoritmos avançados.', 15, '2016-11-03', 'simulacaoemodelagem@example.com'),
(39, 'Pesquisa Operacional', 'Estudo dos principais algoritmos de inteligência artificial.', 25, '2013-01-18', 'pesquisaoperacional@example.com'),
(40, 'Automação Industrial', 'Fundamentos da robótica e programação de robôs.', 99, '2012-12-29', 'automacaoindustrial@test.com'),
(41, 'Engenharia de Controle', 'Estudo dos principais algoritmos de inteligência artificial.', 67, '2005-01-02', 'engenhariadecontrole@test.com'),
(42, 'Sistemas Embarcados', 'Configuração e manutenção de redes de computadores.', 88, '2001-01-01', 'sistemsembardados@email.com'),
(43, 'Computação Pervasiva', 'Serviços e arquitetura da computação em nuvem.', 96, '2017-01-09', 'computacaopervasiva@email.com'),
(44, 'Interação Humano-Computador', 'Desenvolvimento de aplicações web utilizando HTML, CSS e JavaScript.', 29, '2013-11-02', 'interacaohumanocomputador@test.com'),
(45, 'Realidade Virtual', 'Criação e manipulação de gráficos por computador.', 21, '2019-04-30', 'realidadevirtual@email.com'),
(46, 'Realidade Aumentada', 'Análise e visualização de grandes volumes de dados.', 62, '2007-09-12', 'realidadeaumentada@email.com'),
(47, 'Computação Ubíqua', 'Serviços e arquitetura da computação em nuvem.', 91, '2019-05-06', 'computacaoubiqua@email.com'),
(48, 'Redes Neurais Artificiais', 'Estudo dos principais algoritmos de inteligência artificial.', 88, '2015-06-12', 'redesneuraisartificiais@email.com'),
(49, 'Matemática Financeira', 'Algebra e Juros compostos.', 100, '2025-03-10', 'mat@gmail.com'),
(50, 'Estatística', 'Como mentir com estátistica.', 50, '2025-01-01', 'est@test.com');


INSERT INTO oferta (id_oferta, id_curso, publico_alvo, data_inicio, data_fim) VALUES
(1, 44, 'Militares', '2023-01-18', '2023-01-24'),
(2, 46, 'Militares', '2023-11-28', '2023-12-04'),
(3, 44, 'Servidores Públicos', '2023-02-04', '2023-02-14'),
(4, 49, 'Militares', '2023-11-13', '2023-11-26'),
(5, 37, 'Empregados Públicos', '2023-03-03', '2023-03-17'),
(6, 49, 'Empregados Públicos', '2023-07-22', '2023-08-04'),
(7, 48, 'Militares', '2023-10-07', '2023-10-24'),
(8, 10, 'Empregados Públicos', '2023-03-24', '2023-04-05'),
(9, 46, 'Servidores Públicos', '2023-04-18', '2023-05-11'),
(10, 33, 'Militares', '2023-03-08', '2023-03-25'),
(11, 26, 'Servidores Públicos', '2023-02-15', '2023-02-28'),
(12, 40, 'Militares', '2023-12-02', '2023-12-24'),
(13, 36, 'Cidadãos', '2023-06-26', '2023-07-09'),
(14, 4, 'Servidores Públicos', '2023-03-08', '2023-03-21'),
(15, 33, 'Servidores Públicos', '2023-03-26', '2023-04-23'),
(16, 8, 'Militares', '2023-09-10', '2023-09-19'),
(17, 42, 'Militares', '2023-12-22', '2024-01-04'),
(18, 35, 'Cidadãos', '2023-02-16', '2023-02-24'),
(19, 40, 'Servidores Públicos', '2023-03-03', '2023-03-28'),
(20, 30, 'Cidadãos', '2023-03-05', '2023-03-25'),
(21, 44, 'Empregados Públicos', '2023-06-13', '2023-07-01'),
(22, 17, 'Militares', '2023-01-20', '2023-02-09'),
(23, 5, 'Servidores Públicos', '2023-02-28', '2023-03-19'),
(24, 7, 'Servidores Públicos', '2023-02-16', '2023-03-05'),
(25, 24, 'Cidadãos', '2023-10-27', '2023-11-11'),
(26, 1, 'Servidores Públicos', '2023-01-01', '2023-01-15'),
(27, 2, 'Empregados Públicos', '2023-02-01', '2023-02-14'),
(28, 3, 'Militares', '2023-03-01', '2023-03-15'),
(29, 4, 'Cidadãos', '2023-04-01', '2023-04-16'),
(30, 5, 'Servidores Públicos', '2023-05-01', '2023-05-17'),
(31, 6, 'Empregados Públicos', '2023-06-01', '2023-06-18'),
(32, 7, 'Militares', '2023-07-01', '2023-07-19'),
(33, 8, 'Cidadãos', '2023-08-01', '2023-08-20'),
(34, 9, 'Servidores Públicos', '2023-09-01', '2023-09-21'),
(35, 10, 'Empregados Públicos', '2023-10-01', '2023-10-22'),
(36, 11, 'Militares', '2023-11-01', '2023-11-23'),
(37, 12, 'Cidadãos', '2023-12-01', '2023-12-24'),
(38, 13, 'Servidores Públicos', '2023-01-15', '2023-01-30'),
(39, 14, 'Empregados Públicos', '2023-02-15', '2023-03-01'),
(40, 15, 'Militares', '2023-03-15', '2023-03-31'),
(41, 16, 'Cidadãos', '2023-04-15', '2023-05-01'),
(42, 17, 'Servidores Públicos', '2023-05-15', '2023-06-01'),
(43, 18, 'Empregados Públicos', '2023-06-15', '2023-07-02'),
(44, 19, 'Militares', '2023-07-15', '2023-08-01'),
(45, 20, 'Cidadãos', '2023-08-15', '2023-09-01'),
(46, 21, 'Servidores Públicos', '2023-09-15', '2023-10-02'),
(47, 22, 'Empregados Públicos', '2023-10-15', '2023-11-01'),
(48, 23, 'Militares', '2023-11-15', '2023-12-01'),
(49, 24, 'Cidadãos', '2023-12-15', '2023-12-31'),
(50, 25, 'Servidores Públicos', '2023-01-20', '2023-02-05');


INSERT INTO inscricao (id_inscricao, id_oferta, id_usuario, data_inscricao) VALUES
(1, 41, 45, '2023-10-03'),
(2, 6, 2, '2023-08-27'),
(3, 39, 46, '2023-03-22'),
(4, 23, 42, '2023-04-17'),
(5, 27, 15, '2023-07-17'),
(6, 47, 22, '2023-12-21'),
(7, 16, 20, '2023-09-09'),
(8, 11, 44, '2023-04-30'),
(9, 5, 34, '2023-10-20'),
(10, 50, 27, '2023-04-12'),
(11, 3, 13, '2023-11-25'),
(12, 41, 18, '2023-02-16'),
(13, 28, 2, '2023-08-16'),
(14, 8, 21, '2023-04-16'),
(15, 9, 2, '2023-03-19'),
(16, 38, 1, '2023-07-24'),
(17, 18, 18, '2023-03-04'),
(18, 23, 35, '2023-09-25'),
(19, 18, 31, '2023-06-30'),
(20, 37, 35, '2023-03-11'),
(21, 9, 30, '2023-12-06'),
(22, 43, 23, '2023-05-01'),
(23, 4, 39, '2023-05-24'),
(24, 18, 5, '2023-02-03'),
(25, 34, 33, '2023-08-10'),
(26, 48, 11, '2023-08-30'),
(27, 19, 1, '2023-11-12'),
(28, 3, 50, '2023-12-26'),
(29, 13, 26, '2023-08-30'),
(30, 42, 29, '2023-05-26'),
(31, 25, 41, '2023-05-07'),
(32, 34, 32, '2023-05-27'),
(33, 21, 6, '2023-08-24'),
(34, 43, 1, '2023-09-20'),
(35, 30, 13, '2023-01-09'),
(36, 36, 40, '2023-04-07'),
(37, 40, 3, '2023-07-15'),
(38, 35, 9, '2023-04-28'),
(39, 34, 35, '2023-04-17'),
(40, 14, 30, '2023-12-24'),
(41, 38, 27, '2023-03-08'),
(42, 19, 31, '2023-01-12'),
(43, 49, 8, '2023-04-10'),
(44, 44, 27, '2023-03-06'),
(45, 4, 42, '2023-10-31'),
(46, 45, 41, '2023-07-14'),
(47, 8, 17, '2023-01-15'),
(48, 42, 34, '2023-07-18'),
(49, 11, 9, '2023-11-02'),
(50, 35, 20, '2023-09-06');

-- 1 Liste os cursos e suas ofertas que têm data de início entre 2023-01-01 e 2023-06-30.  (1 ponto)

SELECT *
FROM curso, oferta
WHERE data_inicio BETWEEN '2023-01-01' AND '2023-06-30';

-- 2 Qual é o total de inscrições por tipo de público  alvo?  (1 ponto)
SELECT publico_alvo, count(*)
FROM inscricao as i JOIN oferta as o ON i.id_oferta = o.id_oferta
GROUP BY o.publico_alvo;

-- 3 Quantas inscrições existem por curso? (2 pontos)
SELECT nome, count(*)
FROM inscricao as i JOIN curso as c ON i.id_inscricao = c.id_curso
GROUP BY c.nome;

-- 4 Liste os 10 usuários mais recentes que se inscreveram em ofertas. (2 pontos)
SELECT nome, data_inscricao
FROM inscricao as i JOIN usuario as u
ON i.id_usuario = u.id_usuario
ORDER BY i.data_inscricao DESC LIMIT 10;

-- Liste os cursos que têm ofertas com inscrições de usuários que
-- nasceram entre 1980 e 2000, e calcule a média de carga horária desses cursos.
-- Além disso, ordene os resultados pela média de carga horária em
-- ordem decrescente e limite a lista aos 5 primeiros cursos. (2 pontos)


SELECT c.nome, u.data_nascimento, AVG(c.carga_horaria) AS media
FROM curso c JOIN oferta o ON c.id_curso = o.id_curso
JOIN inscricao i ON o.id_oferta = i.id_oferta
JOIN usuario AS u ON i.id_usuario = u.id_usuario
WHERE u.data_nascimento BETWEEN '1980-01-01' AND '2000-12-31'
GROUP BY c.nome, u.data_nascimento
ORDER BY media DESC LIMIT 5;




-- 6 Gere o CROSS JOIN das tabelas cursos e ofertas.  (1 ponto)
SELECT *
FROM curso CROSS JOIN oferta;



