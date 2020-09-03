CREATE SEQUENCE sexo_id_seq;

create table Sexo(
	id int NOT NULL DEFAULT nextval('sexo_id_seq'), 
	sexo varchar(255),
	sigla varchar(255),
	PRIMARY KEY (id)
);

insert into sexo(id, sigla, sexo) values(1, 'F', 'Feminino');
insert into sexo(id, sigla, sexo) values(2, 'M', 'Masculino');

CREATE SEQUENCE nacionalidade_id_seq;

create table Nacionalidade(
	id int NOT NULL DEFAULT nextval('nacionalidade_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into Nacionalidade(id, nome) values(1, 'Itália');
insert into Nacionalidade(id, nome) values(2, 'Albânia');
insert into Nacionalidade(id, nome) values(3, 'Áustria');
insert into Nacionalidade(id, nome) values(4, 'Marrocos');
insert into Nacionalidade(id, nome) values(5, 'Romênia');
insert into Nacionalidade(id, nome) values(6, 'Judeu');
insert into Nacionalidade(id, nome) values(7, 'Espanha');
insert into Nacionalidade(id, nome) values(8, 'Bulgária');
insert into Nacionalidade(id, nome) values(9, 'França');
insert into Nacionalidade(id, nome) values(10, 'Grécia');
insert into Nacionalidade(id, nome) values(11, 'Sérvia');
insert into Nacionalidade(id, nome) values(12, 'Suíça');
insert into Nacionalidade(id, nome) values(13, 'Alemanha');

create sequence cor_olhos_id_seq;

create table cor_olhos(
	id int NOT NULL DEFAULT nextval('cor_olhos_id_seq'), 
	cor varchar(255),
	PRIMARY KEY (id)
);

insert into cor_olhos(id, cor) values(1, 'Esquerdo Marrom, Direito Verde');
insert into cor_olhos(id, cor) values(2, 'Vermelho');
insert into cor_olhos(id, cor) values(3, 'Cinza');
insert into cor_olhos(id, cor) values(4, 'Azul');
insert into cor_olhos(id, cor) values(5, 'Verde');
insert into cor_olhos(id, cor) values(6, 'Castanho');

create sequence cor_cabelo_id_seq;

create table cor_cabelo(
	id int NOT NULL DEFAULT nextval('cor_cabelo_id_seq'), 
	cor varchar(255),
	PRIMARY KEY (id)
);

insert into cor_cabelo(id, cor) values(1, 'Branco');
insert into cor_cabelo(id, cor) values(2, 'Preto');
insert into cor_cabelo(id, cor) values(3, 'Loiro');
insert into cor_cabelo(id, cor) values(4, 'Marrom');
insert into cor_cabelo(id, cor) values(5, 'Vermelho');
insert into cor_cabelo(id, cor) values(6, 'Sem cabelo');

create sequence cor_pele_id_seq;

create table cor_pele(
	id int NOT NULL DEFAULT nextval('cor_pele_id_seq'), 
	cor varchar(255),
	PRIMARY KEY (id)
);

insert into cor_pele(id, cor) values(1, 'Branco');
insert into cor_pele(id, cor) values(2, 'Marrom');
insert into cor_pele(id, cor) values(3, 'Mediterrâneo');
insert into cor_pele(id, cor) values(4, 'Cinza');

create sequence bairro_id_seq;

create table bairro(
	id int NOT NULL DEFAULT nextval('bairro_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into bairro(id, nome) values(1, 'Santa Croce');
insert into bairro(id, nome) values(2, 'San Polo');
insert into bairro(id, nome) values(3, 'San Marco');
insert into bairro(id, nome) values(4, 'Dorsoduro');
insert into bairro(id, nome) values(5, 'Cannaregio');
insert into bairro(id, nome) values(6, 'Castello');

create sequence profissao_id_seq;

create table profissao(
	id int NOT NULL DEFAULT nextval('profissao_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into profissao(id, nome) values(1, 'Advogado');
insert into profissao(id, nome) values(2, 'Aposentado');
insert into profissao(id, nome) values(3, 'Artista');
insert into profissao(id, nome) values(4, 'Barman');
insert into profissao(id, nome) values(5, 'Bibliotecário');
insert into profissao(id, nome) values(6, 'Bombeiro');
insert into profissao(id, nome) values(7, 'Camareira');
insert into profissao(id, nome) values(8, 'Cozinheiro');
insert into profissao(id, nome) values(9, 'Detetive');
insert into profissao(id, nome) values(10, 'Diretor de Faculdade');
insert into profissao(id, nome) values(11, 'DJ');
insert into profissao(id, nome) values(12, 'Enfermeiro');
insert into profissao(id, nome) values(13, 'Esteticista');
insert into profissao(id, nome) values(14, 'Estudante faculdade');
insert into profissao(id, nome) values(15, 'Estudante básico');
insert into profissao(id, nome) values(16, 'Farmacêutico');
insert into profissao(id, nome) values(17, 'Faxineiro de rua');
insert into profissao(id, nome) values(18, 'Frentista');
insert into profissao(id, nome) values(19, 'Funcionário de Banco');
insert into profissao(id, nome) values(20, 'Piloto de Barco');
insert into profissao(id, nome) values(21, 'Funcionário de Museu');
insert into profissao(id, nome) values(22, 'Motorista de Ônibus');
insert into profissao(id, nome) values(23, 'Funcionário de Supermercado');
insert into profissao(id, nome) values(24, 'Piloto de Táxi');
insert into profissao(id, nome) values(25, 'Funcionário de Rodoviária');
insert into profissao(id, nome) values(26, 'Garçom');
insert into profissao(id, nome) values(27, 'Gerente de Hotel');
insert into profissao(id, nome) values(28, 'Guarda do Tráfico');
insert into profissao(id, nome) values(29, 'Guia turístico');
insert into profissao(id, nome) values(30, 'Locatário');
insert into profissao(id, nome) values(31, 'Mecânico de Barco');
insert into profissao(id, nome) values(32, 'Médico');
insert into profissao(id, nome) values(33, 'Morador de rua');
insert into profissao(id, nome) values(34, 'Operador de Máquina');
insert into profissao(id, nome) values(35, 'Ourives');
insert into profissao(id, nome) values(36, 'Padre');
insert into profissao(id, nome) values(37, 'Policial');
insert into profissao(id, nome) values(38, 'Professor');
insert into profissao(id, nome) values(39, 'Prostituta');
insert into profissao(id, nome) values(40, 'Segurança');
insert into profissao(id, nome) values(41, 'Tatuador');
insert into profissao(id, nome) values(42, 'Transporte de Drogas');
insert into profissao(id, nome) values(43, 'Turista');
insert into profissao(id, nome) values(44, 'Vendedor');
insert into profissao(id, nome) values(45, 'Político');	
insert into profissao(id, nome) values(46, 'Vendedor de Drogas');	


create sequence moradia_id_seq;

create table moradia(
	id int NOT NULL DEFAULT nextval('moradia_id_seq'), 
	nome varchar(255),
	bairro int references bairro(id),
	PRIMARY KEY (id)
);

insert into moradia(id, nome, bairro) values(1, 'Casa 1', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(2, 'Casa 1', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(3, 'Casa 1', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(4, 'Casa 1', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(5, 'Casa 1', (select id from bairro where nome = 'Santa Croce'));
insert into moradia(id, nome, bairro) values(6, 'Casa 2', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(7, 'Casa 2', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(8, 'Casa 2', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(9, 'Casa 2', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(10, 'Casa 2', (select id from bairro where nome = 'Santa Croce'));
insert into moradia(id, nome, bairro) values(11, 'Casa 3', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(12, 'Casa 3', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(13, 'Casa 3', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(14, 'Casa 3', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(15, 'Casa 3', (select id from bairro where nome = 'Santa Croce'));
insert into moradia(id, nome, bairro) values(16, 'Casa 4', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(17, 'Casa 4', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(18, 'Casa 4', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(19, 'Casa 4', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(20, 'Casa 4', (select id from bairro where nome = 'Santa Croce'));
insert into moradia(id, nome, bairro) values(21, 'Casa 5', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(22, 'Casa 5', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(2,3 'Casa 5', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(24, 'Casa 5', (select id from bairro where nome = 'Santa Croce'));
insert into moradia(id, nome, bairro) values(25, 'Casa 6', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(26, 'Casa 6', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(27, 'Casa 6', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(28, 'Casa 7', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(29, 'Casa 7', (select id from bairro where nome = 'Castello'));
insert into moradia(id, nome, bairro) values(30, 'Casa 7', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(31, 'Casa 1', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(32, 'Casa 2', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(33, 'Casa 3', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(34, 'Casa 4', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(35, 'Casa para alugar', (select id from bairro where nome = 'Dorsoduro'));
insert into moradia(id, nome, bairro) values(36, 'Hotel', (select id from bairro where nome = 'San Polo'));
insert into moradia(id, nome, bairro) values(37, 'Hotel', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(38, 'Rua', (select id from bairro where nome = 'San Marco'));
insert into moradia(id, nome, bairro) values(39, 'Rua', (select id from bairro where nome = 'Cannaregio'));
insert into moradia(id, nome, bairro) values(40, 'Rua', (select id from bairro where nome = 'Castello'));

create sequence instinto_id_seq;

create table instinto(
	id int NOT NULL DEFAULT nextval('instinto_id_seq'), 
	humor int references humor(id),
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into instinto(id, nome) values(1, 'Selfishness');
insert into instinto(id, nome) values(2, 'Selflessness');
insert into instinto(id, nome) values(3, 'Cowardice');
insert into instinto(id, nome) values(4, 'Hedonism');
insert into instinto(id, nome) values(5, 'Heroism');
insert into instinto(id, nome) values(6, 'Sarcasm');
insert into instinto(id, nome) values(7, 'Connection');
insert into instinto(id, nome) values(8, 'Reliability');
insert into instinto(id, nome) values(9, 'Honesty');
insert into instinto(id, nome) values(10, 'Accuracy');
insert into instinto(id, nome) values(11, 'Independence');
insert into instinto(id, nome) values(12, 'Stinginess');
insert into instinto(id, nome) values(13, 'Rank');
insert into instinto(id, nome) values(14, 'Sex');
insert into instinto(id, nome) values(15, 'Relaxation');
insert into instinto(id, nome) values(16, 'Laziness');
insert into instinto(id, nome) values(17, 'Recognition');
insert into instinto(id, nome) values(18, 'Provision for friends/family');
insert into instinto(id, nome) values(19, 'Paranoia');
insert into instinto(id, nome) values(20, 'Revenge');
insert into instinto(id, nome) values(21, 'Greed');
insert into instinto(id, nome) values(22, 'Curiosity');
insert into instinto(id, nome) values(23, 'Anger');
insert into instinto(id, nome) values(24, 'Procrastination');
insert into instinto(id, nome) values(25, 'Narcissism');
insert into instinto(id, nome) values(26, 'Criticism');
insert into instinto(id, nome) values(27, 'Stoicism');
insert into instinto(id, nome) values(28, 'Ambition');
insert into instinto(id, nome) values(29, 'Compassion');
insert into instinto(id, nome) values(30, 'Decision');
insert into instinto(id, nome) values(31, 'Humor');
insert into instinto(id, nome) values(32, 'Innovation');
insert into instinto(id, nome) values(33, 'Benevolence');
insert into instinto(id, nome) values(34, 'Discipline');
insert into instinto(id, nome) values(35, 'Steal');

create sequence obrigacao_id_seq;

create table obrigacao(
	id int NOT NULL DEFAULT nextval('obrigacao_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into obrigacao(id, nome) values(1, 'Family');
insert into obrigacao(id, nome) values(2, 'Hometown');
insert into obrigacao(id, nome) values(3, 'Direct Superior');
insert into obrigacao(id, nome) values(4, 'Racial Identity');
insert into obrigacao(id, nome) values(5, 'Local Guild');
insert into obrigacao(id, nome) values(6, 'Head of Church');
insert into obrigacao(id, nome) values(7, 'Employer');
insert into obrigacao(id, nome) values(8, 'Sibling');
insert into obrigacao(id, nome) values(9, 'Direct Inferior');
insert into obrigacao(id, nome) values(10, 'Loan Shark');
insert into obrigacao(id, nome) values(12, 'Parent');
insert into obrigacao(id, nome) values(13, 'Extended Family');
insert into obrigacao(id, nome) values(14, 'Children');
insert into obrigacao(id, nome) values(15, 'Doctor');
insert into obrigacao(id, nome) values(16, 'Head of State');

create sequence natureza_obrigacao_id_seq;

create table natureza_obrigacao(
	id int NOT NULL DEFAULT nextval('natureza_obrigacao_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into natureza_obrigacao(id, nome) values(1, 'Monetary');
insert into natureza_obrigacao(id, nome) values(2, 'Oath');
insert into natureza_obrigacao(id, nome) values(3, 'Gratitude');
insert into natureza_obrigacao(id, nome) values(4, 'Societal Pressure');
insert into natureza_obrigacao(id, nome) values(5, 'Familial Pressure');
insert into natureza_obrigacao(id, nome) values(6, 'Indenturehood');
insert into natureza_obrigacao(id, nome) values(7, 'Fiendish Contract');
insert into natureza_obrigacao(id, nome) values(8, 'Religious');
insert into natureza_obrigacao(id, nome) values(9, 'Career requirement');
insert into natureza_obrigacao(id, nome) values(10, 'Affair/Emotional Entanglement');

create sequence tipo_negocio_id_seq;

create table tipo_negocio(
	id int NOT NULL DEFAULT nextval('tipo_negocio_id_seq'), 
	nome varchar(255),
 	PRIMARY KEY (id)
);

insert into tipo_negocio(id, nome) values(1, 'Agência de passeios');
insert into tipo_negocio(id, nome) values(2, 'Baile de Máscaras');
insert into tipo_negocio(id, nome) values(3, 'Balada');
insert into tipo_negocio(id, nome) values(4, 'Banco');
insert into tipo_negocio(id, nome) values(5, 'Biblioteca / Livraria');
insert into tipo_negocio(id, nome) values(6, 'Casa para alugar');
insert into tipo_negocio(id, nome) values(7, 'Corpo de Bombeiros');
insert into tipo_negocio(id, nome) values(8, 'Delegacia');
insert into tipo_negocio(id, nome) values(9, 'Enoteca');
insert into tipo_negocio(id, nome) values(10, 'Escola de ensino médio');
insert into tipo_negocio(id, nome) values(11, 'Escola de italiano');
insert into tipo_negocio(id, nome) values(12, 'Escola de primário');
insert into tipo_negocio(id, nome) values(13, 'Escritório de Advocacia');
insert into tipo_negocio(id, nome) values(14, 'Farmácia');
insert into tipo_negocio(id, nome) values(15, 'Galeria');
insert into tipo_negocio(id, nome) values(16, 'Hospital');
insert into tipo_negocio(id, nome) values(17, 'Hotel');
insert into tipo_negocio(id, nome) values(18, 'Igreja');
insert into tipo_negocio(id, nome) values(19, 'Joalheria');
insert into tipo_negocio(id, nome) values(20, 'Lan House');
insert into tipo_negocio(id, nome) values(21, 'Lixão e incineradora');
insert into tipo_negocio(id, nome) values(22, 'Loja de roupa');
insert into tipo_negocio(id, nome) values(23, 'Loja que vende barco');
insert into tipo_negocio(id, nome) values(24, 'Mecânica de barco');
insert into tipo_negocio(id, nome) values(25, 'Universidade');
insert into tipo_negocio(id, nome) values(26, 'Museu');
insert into tipo_negocio(id, nome) values(27, 'Pontos turísticos chave');
insert into tipo_negocio(id, nome) values(28, 'Posto de gasolina para barco');
insert into tipo_negocio(id, nome) values(29, 'Prefeitura');
insert into tipo_negocio(id, nome) values(30, 'Restaurante');
insert into tipo_negocio(id, nome) values(31, 'Rodoviária');
insert into tipo_negocio(id, nome) values(32, 'Salão de Beleza');
insert into tipo_negocio(id, nome) values(33, 'Supermercado');
insert into tipo_negocio(id, nome) values(34, 'Tabacaria');
insert into tipo_negocio(id, nome) values(35, 'Tatoo/Piercing Studio');
insert into tipo_negocio(id, nome) values(36, 'Ponto de Prostituição');

create sequence negocio_id_seq;

create table negocio(
	id int NOT NULL DEFAULT nextval('negocio_id_seq'), 
	nome varchar(255),
	tipo_negocio int references tipo_negocio(id),
	bairro int references bairro(id),
	n1 boolean,
	n2 boolean,
	n3 boolean,
	descricao varchar(1024),
 	PRIMARY KEY (id)
);

insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(1, 'Venetur', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Agência de passeios'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(2, 'Venetian Tur', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Agência de passeios'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(3, 'Casanova Grand Ball', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Baile de Máscaras'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(4, 'Barbarian', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Balada'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(5, 'Club Delirium', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Balada'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(6, 'Inferno', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Balada'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(7, 'Unicredit', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Banco'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(8, 'Banco San Marco', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Banco'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(9, 'Oceanic', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Biblioteca / Livraria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(10, 'Global', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Biblioteca / Livraria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(11, 'Santa Croce – Casa', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Casa para alugar'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(12, 'Dorsoduro – Casa 1', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Casa para alugar'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(13, 'Dorsoduro – Casa 2', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Casa para alugar'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(14, 'Corpo de Bombeiros', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Corpo de Bombeiros'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(15, 'Delegacia', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Delegacia'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(16, 'Vino Veneza', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Enoteca'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(17, 'Escola de ensino médio', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Escola de ensino médio'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(18, 'Escola de italiano', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Escola de italiano'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(19, 'Escola de primário', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Escola de primário'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(20, 'D’Alto Rampone', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Escritório de Advocacia'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(21, 'Droga 24', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Farmácia'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(22, 'Vene++', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Farmácia'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(23, 'Farmacia San Polo', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Farmácia'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(24, 'Dorsoduro – Galeria', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Galeria'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(25, 'San Polo – Galeria', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Galeria'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(26, 'Castello – Galeria', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Galeria'), false, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(27, 'Hospital', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Hospital'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(28, 'Royal Hotel', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Hotel'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(29, 'The Prophecy', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Hotel'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(30, 'Olive Tower', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Hotel'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(31, 'Obsidian Sanctum', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Hotel'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(32, 'Chiesa di San Simeone Piccolo', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(33, 'Chiesa dell Abbazia della Misericordia', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(34, 'Chiesa di San Giacomo di Rialto', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(35, 'Chiesa di San Barnaba', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(36, 'Basilica di San Marco', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(37, 'Chiesa di San Lorenzo', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Igreja'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(38, 'Gems of Venice', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Joalheria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(39, 'Ohmyblue', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Joalheria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(40, 'Cartier', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Joalheria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(41, 'Lan House', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Lan House'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(42, 'Sacca San Biagio', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Lixão e incineradora'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(43, 'Givenchy', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Loja de roupa'), false, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(44, 'Dolce & Gabbana', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Loja de roupa'), false, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(45, 'Prada', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Loja de roupa'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(46, 'Versace', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Loja de roupa'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(47, 'Gucci', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Loja de roupa'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(48, 'Fendi', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Loja de roupa'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(49, 'Castello', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Loja que vende barco'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(50, 'Loja de barcos', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Mecânica de barco'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(51, 'Universidade', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Universidade'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(52, 'Museo Ebraico Di Venezia', (select id from bairro where nome = 'San Polo'), (select id from tipo_negocio where nome = 'Museu'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(53, 'Leonardo da Vinci Museum', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Museu'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(54, 'Museo Correr', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Museu'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(55, 'Piazza San Marco', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Pontos turísticos chave'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(56, 'Campo d’Arsenal', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Pontos turísticos chave'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(57, 'Parco Savorgnan', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Pontos turísticos chave'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(58, 'Posto de gasolina para barco', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Posto de gasolina para barco'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(59, 'Prefeitura', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Prefeitura'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(60, 'Vino Vero', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Restaurante'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(61, 'Cantina do Spade', (select id from bairro where nome = 'San Marco'), (select id from tipo_negocio where nome = 'Restaurante'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(62, 'Pizza al Volo', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Restaurante'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(63, 'Trattoria Dai Tosi', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Restaurante'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(64, 'Rodoviária', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Rodoviária'), true, true, true);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(65, 'Salão de Beleza - Dorsoduro', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Salão de Beleza'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(66, 'Salão de Beleza – Castello', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Salão de Beleza'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(67, 'Salão de Beleza - Santa Croce', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Salão de Beleza'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(68, 'Castello – Coop', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Supermercado'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(69, 'Dorsoduro – Coop', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Supermercado'), true, true, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(70, 'Tabacaria', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Tabacaria'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(71, 'Tatoo Parlor', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Tatoo/Piercing Studio'), true, false, false);

insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(74, 'Beco Dorsoduro (Prostituição)', (select id from bairro where nome = 'Dorsoduro'), (select id from tipo_negocio where nome = 'Ponto de Prostituição'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(72, 'Beco Santa Croce (Prostituição)', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Ponto de Prostituição'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(75, 'Beco Cannaregio (Prostituição)', (select id from bairro where nome = 'Cannaregio'), (select id from tipo_negocio where nome = 'Ponto de Prostituição'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(76, 'Beco Castello (Prostituição)', (select id from bairro where nome = 'Castello'), (select id from tipo_negocio where nome = 'Ponto de Prostituição'), true, false, false);
insert into negocio(id, nome, bairro, tipo_negocio, n1, n2, n3) values(73, 'Rodoviária (Prostituição)', (select id from bairro where nome = 'Santa Croce'), (select id from tipo_negocio where nome = 'Ponto de Prostituição'), true, false, false);


create sequence familia_id_seq;

create table familia(
	id int NOT NULL DEFAULT nextval('familia_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);


insert into familia(id, nome) values(1, 'Ardelean');
insert into familia(id, nome) values(2, 'Attardo');
insert into familia(id, nome) values(3, 'Balcescu');
insert into familia(id, nome) values(4, 'Bardha');
insert into familia(id, nome) values(5, 'Bucciarelli');
insert into familia(id, nome) values(6, 'Carabetta');
insert into familia(id, nome) values(7, 'Civitello');
insert into familia(id, nome) values(8, 'De Villiers');
insert into familia(id, nome) values(9, 'El Ouazzani');
insert into familia(id, nome) values(10, 'Errante');
insert into familia(id, nome) values(11, 'Ferrin');
insert into familia(id, nome) values(12, 'Galaniadis');
insert into familia(id, nome) values(13, 'Gennari');
insert into familia(id, nome) values(14, 'Giachetti');
insert into familia(id, nome) values(15, 'Giusto');
insert into familia(id, nome) values(16, 'Gjonbalaj');
insert into familia(id, nome) values(17, 'Guzzetta');
insert into familia(id, nome) values(18, 'Kochiu');
insert into familia(id, nome) values(19, 'Losito');
insert into familia(id, nome) values(20, 'Lotto');
insert into familia(id, nome) values(21, 'Manera');
insert into familia(id, nome) values(22, 'Margo');
insert into familia(id, nome) values(23, 'Mendolia');
insert into familia(id, nome) values(24, 'Mocanu');
insert into familia(id, nome) values(25, 'Patalano');
insert into familia(id, nome) values(26, 'Penne');
insert into familia(id, nome) values(27, 'Pergola');
insert into familia(id, nome) values(28, 'Petricca');
insert into familia(id, nome) values(29, 'Petruzzelli');
insert into familia(id, nome) values(30, 'Quercia');
insert into familia(id, nome) values(31, 'Ragucci');
insert into familia(id, nome) values(32, 'Roberti');
insert into familia(id, nome) values(33, 'Santarsiero');
insert into familia(id, nome) values(34, 'Selmani');
insert into familia(id, nome) values(35, 'Tocco');
insert into familia(id, nome) values(36, 'Trapani');
insert into familia(id, nome) values(37, 'Valentin');
insert into familia(id, nome) values(38, 'Valova');
insert into familia(id, nome) values(39, 'Beldad');
insert into familia(id, nome) values(40, 'Petrucci');

create sequence ressonancia_id_seq;

create table ressonancia(
	id int NOT NULL DEFAULT nextval('ressonancia_id_seq'), 
	nome varchar(255),
	PRIMARY KEY (id)
);

insert into ressonancia(id, nome) values(1, 'NONE');
insert into ressonancia(id, nome) values(2, 'FLEETING');
insert into ressonancia(id, nome) values(3, 'INTENSE');
insert into ressonancia(id, nome) values(4, 'DYSCRASIA');

create sequence npc_id_seq;

create table npc(
	id int NOT NULL DEFAULT nextval('npc_id_seq'), 
	nome varchar(255),
	descricao varchar(1024),
	sexo int references sexo(id),
	nacionalidade int references nacionalidade(id),
	idade int,
	apelido varchar(255),
	pele int references cor_pele(id),
	olhos int references cor_olhos(id),
	cabelo int references cor_cabelo(id),
	bairro int references bairro(id),
	fisico int,
	social int,
	mental int,
	familia int references familia(id),
	moradia int references moradia(id),
	instinto int references instinto(id),
	obrigacao int references obrigacao(id),
	natureza_obrigacao int references natureza_obrigacao(id),
	seed_apelido numeric(100,10),
	seed_idade numeric(100,10),
	seed_olhos numeric(100,10),
	seed_cabelo numeric(100,10),
	seed_bairro numeric(100,10),
	seed_fisico numeric(100,10),
	seed_social numeric(100,10),
	seed_mental numeric(100,10),
	seed_instinto numeric(100,10),
	seed_obrigacao numeric(100,10),
	seed_natureza_obrigacao numeric(100,10),
	notas varchar(1000),
	recursos int,
	saude int,
	saude_max int,
	ressonancia int references ressonancia(id),
 	PRIMARY KEY (id)
);


insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (1,'Abdellatif El Ouazzani',2,4,0.2227828997,0.1359458497,12,null,2,0.5952499765,6,0.1961393423,2,0.0249951713,5,0.3633734109,0,0.3730381381,0,0.8324279649,1,null,6,0.2882879655,20,0.6039346660,10,0.4234380484,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (2,'Adina Rondon',1,6,0.5726580621,0.3985341770,29,null,3,0.8274682975,6,0.1223161223,2,0.2743414414,4,0.4546532378,1,0.8769993729,2,0.7880175329,1,null,6,0.4897900992,28,0.2414221482,4,0.4155300376,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (3,'Akil Gjonbalaj',2,2,0.1960725124,0.1815749824,15,'Trela',3,0.9371328189,6,0.1463305976,2,0.0324770212,5,0.9262467133,2,0.0226684364,0,0.4907849487,1,null,6,0.6610781327,9,0.9547659351,16,0.9720542986,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (4,'Alex Giovinazzo',2,1,0.0213974828,0.8428133015,56,'Naso (nariz)',3,0.1047693481,4,0.9446817653,5,0.7275845420,1,0.9933422364,2,0.1518231589,0,0.1052396320,0,2,15,0.1288076012,13,0.7418908348,12,0.3486264078,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (5,'Ambra Blanda',1,1,0.2891057614,0.1743579964,15,null,3,0.0061152473,1,0.3540143881,3,0.1624463703,5,0.7539195708,1,0.9700788927,2,0.8364583332,2,25,25,0.6544315781,9,0.2707216546,5,0.3863323313,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (6,'Antonella Pergola',1,1,0.2813203525,0.0716886970,7,null,3,0.5654101916,6,0.4755314100,3,0.0161742973,5,0.0892833391,0,0.8987606181,1,0.0099322878,0,26,11,0.9261545202,32,0.0469162715,1,0.2820691740,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (7,'Antonio Montreal',2,7,0.1914905397,0.6732509622,46,'Rospo (big frog)',3,0.7224247228,6,0.2985454294,2,0.0403259782,5,0.0074404096,0,0.6880807741,1,0.0582220846,0,4,39,0.9506407110,34,0.9044632923,15,0.9836892836,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (8,'Appia Romaniello',1,1,0.0560139625,0.8576086587,57,'Papa',3,0.0130306359,2,0.9701151871,5,0.0841756023,5,0.7951735347,1,0.6517666180,1,0.3585919723,1,null,28,0.8051873512,27,0.8949257123,15,0.0506931732,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (9,'Arabella Carabetta',1,1,0.1264090499,0.4857007074,34,'Bella',3,0.4896361903,6,0.9134853758,5,0.0247145017,5,0.3532361571,1,0.4507844363,1,0.4832314363,1,2,16,0.5236987919,35,0.9583876200,16,0.6448512986,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (10,'Arminio Carabetta',2,1,0.9531094196,0.0736850427,7,null,3,0.7705490178,6,0.3188094346,3,0.1595335261,5,0.1595512729,0,0.0690467794,0,0.0630960844,0,28,16,0.5329869705,2,0.6699517183,11,0.2986483740,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (11,'Baldo Margo',2,1,0.0918299624,0.6538596894,45,'Cuore Blu (coração azul)',3,0.5069450989,6,0.3911397557,3,0.0182089530,5,0.2177418283,1,0.9087612491,2,0.5186203018,1,28,6,0.5252374373,35,0.8154885876,14,0.6662286093,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (12,'Berenice Scionti',1,1,0.6101615207,0.6675358741,45,null,3,0.8899881951,6,0.4494264173,3,0.1851166862,5,0.0845027747,0,0.1782031047,0,0.5463085046,1,null,25,0.2911942720,20,0.7405388652,12,0.5544406378,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (13,'Blaga Gavrilova Valova',1,8,0.2604226328,0.3863856837,28,null,1,0.7383555691,6,0.2829705931,2,0.0029631270,5,0.9079349051,2,0.1949980041,0,0.5749043692,1,4,11,0.4311610144,25,0.8001747227,13,0.2257171696,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (14,'Cain Giachetti',2,6,0.6134112932,0.1049263448,10,null,3,0.8290231922,6,0.1558782633,2,0.0900386094,5,0.8833893822,1,0.0482446812,0,0.2397336660,0,9,1,0.8432644444,29,0.3897715454,7,0.0412739123,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (15,'Chanit Losito',1,6,0.2974934328,0.4405645690,31,null,3,0.2712793550,5,0.6320768257,4,0.0252832445,5,0.4966823166,1,0.6358734216,1,0.0425419845,0,7,11,0.7493975450,15,0.0643430341,2,0.5932534307,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (16,'Concetta Curro',1,1,0.6480373811,0.3935679438,28,null,3,0.0555678375,3,0.3258166499,3,0.1759991945,5,0.9845962726,2,0.9262127050,2,0.3063990300,1,25,25,0.3395024672,22,0.4733829701,8,0.9200942107,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (17,'Dan Losito',2,5,0.0988380958,0.1774219898,15,'Dannito',1,0.3255169930,5,0.6999020183,4,0.1660413324,5,0.3672653236,1,0.7698015151,1,0.7528266586,1,37,11,0.9225791600,32,0.4164981376,7,0.8155120696,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (18,'Dëlirana Bardha',1,2,0.1247109981,0.3735706586,27,'Deli',3,0.8206397497,6,0.8935311046,4,0.0732739150,5,0.3651974761,1,0.7026222103,1,0.6022583034,1,11,6,0.1934726640,16,0.7252639816,12,0.9301174170,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (19,'Elide Pergola',1,1,0.3114835651,0.0591682096,6,null,3,0.4136594005,6,0.1895005145,2,0.0249218814,5,0.7158808625,1,0.5110050159,1,0.5098742079,1,9,11,0.6708147721,9,0.7935724505,13,0.6895371727,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (20,'Emanuela Carabetta',1,1,0.8071304587,0.0228358389,2,null,3,0.9679441091,6,0.4965163028,3,0.1528734743,5,0.7731790520,1,0.4769558820,0,0.6245465216,1,null,16,0.8844424350,31,0.7634032950,13,0.3209959143,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (21,'Emilia Maida',1,1,0.0214974113,0.6874696047,47,'Bianca',3,0.9105250470,6,0.7384000260,4,0.1886233143,5,0.1104220863,0,0.1262829920,0,0.6795967936,1,null,28,0.0743765064,4,0.7811801597,13,0.8107903229,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (22,'Eva Gálvez',1,7,0.3751694498,0.4990240716,35,null,3,0.7666354676,6,0.7728648477,4,0.1324641124,5,0.6475670457,1,0.1150423474,0,0.6493341499,1,null,28,0.2499346504,19,0.0079324673,1,0.2317883465,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (23,'Gabor Losito',2,6,0.5647335546,0.5801101132,40,null,3,0.9353948895,6,0.2691304702,2,0.4123401576,4,0.1463880300,0,0.1746036237,0,0.9922270450,2,null,11,0.1132690412,6,0.6747169594,11,0.4112137089,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (24,'Gjelush Bardha',2,2,0.7294432457,0.0733671085,7,null,3,0.3874463158,5,0.0586288040,2,0.0096293497,5,0.6702904145,1,0.1781944186,0,0.7216323626,1,null,6,0.3475282831,22,0.9532637267,16,0.3374377224,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (25,'Ilenia Trapani',1,1,0.9537862694,0.9918812339,78,null,3,0.0543204645,3,0.8029626750,1,0.0322364628,5,0.0071424162,0,0.4929491438,1,0.1729008694,0,null,28,0.6301572026,8,0.8431025092,14,0.0729611502,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (26,'Isaiah Dona',2,6,0.9436621378,0.4831916459,34,null,3,0.4810389690,6,0.0242072521,2,0.4328360827,4,0.1248506163,0,0.3152740094,1,0.7579184676,1,null,1,0.2071580336,17,0.0292686039,1,0.9637386133,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (27,'Karmit Giachetti',1,6,0.2525776508,0.8373339616,56,null,3,0.5275920812,6,0.0427272038,2,0.3043099426,4,0.2798824522,1,0.8770028793,2,0.2811148006,1,null,1,0.3883315224,24,0.8281061734,14,0.5783720656,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (28,'Levi Giachetti',2,6,0.3395773662,0.6188697959,42,null,3,0.6762525551,6,0.1736772968,2,0.3108373883,4,0.8511907417,2,0.0306806626,0,0.2343848752,1,null,1,0.4727374254,28,0.2999243767,5,0.3565370523,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (29,'Liberto Del Gaudio',2,1,0.8972707523,0.8089334122,54,null,3,0.3643890930,5,0.7357303434,4,0.0624124644,5,0.0104460920,0,0.7182602767,1,0.8748287046,2,null,28,0.1223729783,13,0.8079833952,13,0.1549118295,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (30,'Ludovico Pergola',2,1,0.9349640254,0.4742885377,33,null,3,0.2860734524,5,0.4140836811,3,0.0341475060,5,0.3400993265,1,0.5485628132,1,0.4568457912,1,null,11,0.6857882314,10,0.2971150009,5,0.1912834256,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (31,'Marina Pergola',1,1,0.1756205211,0.0737391960,7,'Figlita (filinha)',3,0.9549903907,6,0.3268620835,3,0.0782482477,5,0.3981710315,0,0.8408420707,1,0.3264834695,0,21,11,0.6848394962,10,0.3569527610,6,0.8694406669,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (32,'Michaella Mutaki',1,10,0.4285666458,0.5607623803,39,null,1,0.3275687247,5,0.4850242983,3,0.1544861132,5,0.2419901523,1,0.4200618956,1,0.8820693152,2,11,25,0.1146427125,6,0.0520392431,1,0.0406608090,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (33,'Michelle De Villiers',1,9,0.0281057722,0.3934488224,28,'Carota (tall, slim boy)',1,0.6547562967,6,0.3725564354,3,0.1668493751,5,0.6232868992,1,0.3299429752,1,0.3453103364,1,21,16,0.0796152251,4,0.0189564941,1,0.0767796250,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (34,'Minhat El Ouazzani',1,4,0.0065524805,0.3003457767,23,'Amico (amigo)',2,0.0517439206,3,0.0264573003,2,0.1505760501,5,0.5064245513,1,0.6994802820,1,0.1739544316,0,22,6,0.9310028124,32,0.5382478531,3,0.1633250960,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (35,'Mordecai Guzzetta',2,6,0.2435653073,0.3677199011,27,null,3,0.9000243683,6,0.9370958723,5,0.9817879934,2,0.4377944645,1,0.3960478748,1,0.7764608350,1,null,28,0.3900808672,24,0.4299625605,7,0.0943389267,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (36,'Olimpio Santorelli',2,1,0.9101242062,0.9501102065,70,null,3,0.6747369415,6,0.5853775542,1,0.0005782069,5,0.4279105900,1,0.9666677814,2,0.2365425725,1,14,28,0.4621469680,26,0.3668781462,6,0.3764041645,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (37,'Onofrio Santarsiero',2,1,0.9752465009,0.9685036668,74,null,3,0.2495369117,4,0.4744923932,1,0.1566132899,5,0.0505540877,0,0.2482331425,1,0.3068891312,1,14,25,0.3311764406,22,0.2466993568,4,0.4212210715,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (38,'Paola Carabetta',1,1,0.0533893475,0.5757274944,40,'Betta',3,0.8363061001,6,0.9679319681,5,0.0328444004,5,0.6758399439,1,0.6217082335,1,0.9104212080,2,null,16,0.8708061813,30,0.9181082658,15,0.6439274276,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (39,'Rivka Guzzetta',1,6,0.5766272202,0.2231838803,18,null,3,0.1377855745,4,0.9342223085,5,0.6674952250,6,0.9770978552,2,0.2389503062,1,0.2225385042,1,null,28,0.4534471583,26,0.6084742826,10,0.1153891584,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (40,'Romilda Sabina',1,1,0.7208870324,0.3889677625,28,null,3,0.8691268429,6,0.1690889172,2,0.1646671322,5,0.6327192918,1,0.0019785994,0,0.3659212767,1,16,1,0.8948690296,31,0.3774310350,7,0.6637832745,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (41,'Samanta Orlandini',1,1,0.6450336781,0.6579000289,45,null,3,0.6222895237,6,0.5585224425,3,0.1807498952,5,0.8315422316,2,0.7418443323,1,0.8618781496,2,24,25,0.1016344326,6,0.8550616740,14,0.3972894761,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (42,'Silvain De Villiers',2,9,0.3987979319,0.0866842513,9,null,1,0.4829383725,6,0.2985331814,2,0.0271531572,5,0.0317142362,0,0.4558615547,0,0.5179811054,1,16,16,0.9941166800,34,0.6812857345,11,0.4367762786,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (43,'Stella Santarsiero',1,1,0.7886451956,0.7368794306,50,null,3,0.2052723630,4,0.8351425493,4,0.0964201695,5,0.0566642423,0,0.9178243367,2,0.3090832604,1,11,25,0.2965207073,21,0.4473760438,8,0.3884315262,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (44,'Tiziana Pergola',1,1,0.3478738796,0.4175473295,30,null,3,0.2767691400,5,0.9034345504,5,0.1026381523,5,0.8337077016,2,0.1239399793,0,0.5066950501,1,null,11,0.2807830152,20,0.8717609361,14,0.9839838539,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (45,'Ulfo Mazzoli',2,1,0.2278640021,0.9247172115,65,null,3,0.0727108826,3,0.7863170744,1,0.0424801403,5,0.3863639978,1,0.7824377691,1,0.2437745978,1,null,28,0.2886408995,20,0.0039054849,1,0.6691125499,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (46,'Ulpian Gjonbalaj',2,2,0.5749065636,0.9300250715,66,null,3,0.2847208762,5,0.8394766056,1,0.0406083001,5,0.6471268238,1,0.3861409771,1,0.5792941764,1,26,6,0.0539758589,3,0.1920438277,4,0.9940219272,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (47,'Venusta Trapani',1,1,0.8740637692,0.9726031462,75,null,3,0.9353748369,6,0.1703175491,1,0.0989543531,5,0.0878732315,0,0.3757110841,1,0.6197506999,1,14,1,0.6218948871,8,0.8627697800,14,0.4898297838,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (48,'Veselin Vasilov Kostov',2,8,0.5710255203,0.1296264304,12,null,1,0.7929054290,6,0.4861719772,3,0.1961939647,5,0.9152779915,1,0.1836912398,0,0.1373655505,0,24,11,0.4306211501,25,0.1571685579,3,0.8695305155,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (49,'Yahel Santulli',1,6,0.9274072901,0.6051336936,42,null,3,0.8487466094,6,0.3584565218,3,0.9195715271,2,0.9593555344,2,0.8022765455,2,0.5664447838,1,31,25,0.5380779626,2,0.9028552432,15,0.0618676121,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (50,'Yordan Andreev Valova',2,8,0.9544929801,0.0290587419,3,null,1,0.9071765199,6,0.7828076108,4,0.1570282054,5,0.5453435992,1,0.7133365995,1,0.8939697979,1,7,11,0.2144816658,17,0.7557617161,13,0.2290564582,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (51,'Zakwan Laabi',2,4,0.9247933960,0.9880971858,78,null,2,0.5648867361,6,0.5604146847,1,0.1240081622,5,0.3178867115,1,0.7536970458,1,0.2248253981,1,36,39,0.8531650500,30,0.7588153216,13,0.6852070521,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (52,'Zenobia Margo',1,1,0.7512294136,0.1374267628,12,null,3,0.8014559415,6,0.1623579593,2,0.0879077379,5,0.9174594010,1,0.6098770826,1,0.4691726233,0,22,6,0.4499409550,26,0.1982048945,4,0.1459747913,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (53,'Acario Caprara',2,1,0.4399597601,0.6166574841,42,null,3,0.3467740154,5,0.6677493581,4,0.5740597531,6,0.6426756194,1,0.0384197689,0,0.2826047557,1,19,17,0.6182520662,8,0.8355663121,14,0.0885313618,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (54,'Addolorata Mugavero',1,1,0.8191435428,0.9691667975,74,null,3,0.8632683276,6,0.9501474725,1,0.4591293208,6,0.8806889328,2,0.4875156648,1,0.0503407957,0,12,29,0.4715009299,28,0.9544458386,16,0.5343968222,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (55,'Albena Ludmilova Todorova',1,8,0.4523214380,0.4108012366,29,null,1,0.4546466518,6,0.4968637031,3,0.6859414235,6,0.8225959132,2,0.5426399258,1,0.6572370360,1,30,2,0.7160911504,11,0.4257769681,7,0.6679416203,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (56,'Alma Burgio',1,1,0.0784019962,0.4095430122,29,'Mabu',3,0.8767843624,6,0.3887882985,3,0.6321708405,6,0.7619492012,1,0.3860026995,1,0.7550490957,1,30,21,0.4935346355,28,0.8821652598,15,0.2984573810,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (57,'Aurora Lo Tito',1,1,0.5305690813,0.3964286066,29,null,3,0.2250357226,4,0.5141725755,3,0.4944956090,6,0.0024947744,0,0.5775912031,1,0.1435746150,0,29,2,0.3089583357,21,0.8983238676,15,0.7218832908,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (58,'Carina Lotto',1,1,0.0875716266,0.1829331784,15,'Nana',3,0.0019294418,1,0.9437627691,5,0.6852854309,6,0.4906393415,1,0.9776319101,2,0.5737825569,1,null,17,0.8933434945,31,0.3801996350,7,0.3390090353,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (59,'Çelike Kochiu',1,2,0.5405377956,0.0037634780,0,null,3,0.4605610365,6,0.6044089257,4,0.6543188737,6,0.1448125103,0,0.1848172607,0,0.1662778757,0,5,12,0.1853798493,16,0.4135987262,7,0.0583357798,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (60,'Chahida Al-Jirari',1,4,0.6058848310,0.2023653565,16,null,2,0.3365803436,5,0.8294236703,4,0.6266582702,6,0.7866514009,1,0.7450163279,1,0.6444168246,1,19,29,0.5833209634,5,0.5653742601,10,0.2807978944,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (61,'Çiltor Kochiu',2,2,0.7020443698,0.2368779100,19,null,3,0.5425107550,6,0.7274115267,4,0.6336940063,6,0.3522677619,1,0.2465046336,1,0.2301673893,1,null,12,0.8911691099,31,0.3864610400,7,0.1470653028,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (62,'Danio Attardo',2,1,0.5640544979,0.4745856598,33,null,3,0.4205137390,6,0.6811859419,4,0.6784013954,6,0.5494149019,1,0.1812454071,0,0.0095435701,0,null,40,0.6572620064,9,0.7418908348,12,0.0803673527,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (63,'Editta Cozza',1,1,0.7627998113,0.2885893684,22,null,3,0.7595200149,6,0.7194022569,4,0.6435956107,6,0.3786713008,1,0.8394484186,2,0.6964603157,1,null,7,0.4701068596,26,0.3067200619,5,0.7243442988,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (64,'Ennio Errante',2,1,0.3063903338,0.6276788380,43,null,3,0.7090522714,6,0.4194759867,3,0.5537410830,6,0.3099403775,1,0.6226707032,1,0.3943350722,1,null,21,0.0199548481,1,0.1967389027,4,0.3118690509,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (65,'Fiore Errante',1,1,0.5703847211,0.6570810027,45,null,3,0.4199065308,6,0.4924685383,3,0.5150672268,6,0.7609662808,1,0.3503897719,1,0.3643976479,1,null,21,0.6818595849,10,0.7308341674,12,0.0042828812,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (66,'Gabriella Lotto',1,1,0.2201493804,0.6809648918,46,null,3,0.5815255861,6,0.7557797518,4,0.5974514664,6,0.8340206426,2,0.4920727573,1,0.0695032129,0,null,17,0.5705052393,5,0.8824731617,15,0.9042427909,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (67,'Gelsomina Errante',1,1,0.8169022291,0.1014282011,10,null,3,0.2589767019,5,0.7766781958,4,0.4643184202,6,0.5406845240,1,0.4234648007,0,0.9546616786,1,27,21,0.5247081085,35,0.4006684617,7,0.4843646728,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (68,'Genesia Stefani',1,1,0.5053342600,0.5007664197,35,null,3,0.6210203536,6,0.1765744565,2,0.4871453606,6,0.7385247857,1,0.6099843558,1,0.6191688583,1,38,12,0.6979281501,10,0.6098899212,10,0.9558478810,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (69,'Giacinta Forcucci Kochiu',1,1,0.5255059089,0.2526647492,20,null,3,0.1511309843,4,0.1919358630,2,0.6618873341,6,0.0540170739,0,0.0104041628,0,0.6746192124,1,27,12,0.2273390720,17,0.6278367284,11,0.9035843792,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (70,'Gonerio Pezzullo',2,1,0.1487254558,0.3320941630,25,'Spalla (ombro)',3,0.0453232026,2,0.7982671609,4,0.4663539580,6,0.2860215242,1,0.7031973252,1,0.5350285717,1,27,21,0.1842540328,16,0.5178507370,3,0.2885950360,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (71,'Guerrino Attardo',2,1,0.8744408089,0.0371229394,4,null,3,0.6626734812,6,0.1213960048,2,0.5706785120,6,0.6269531260,1,0.2219589617,0,0.4058938700,0,38,7,0.9317439740,32,0.3971490172,7,0.2056381996,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (72,'Icaro Marasco',2,1,0.3215530259,0.4018595295,29,null,3,0.2250640698,4,0.1356033584,2,0.6294484185,6,0.2264952405,1,0.9775385816,2,0.8499895165,2,27,12,0.7103617855,11,0.6471944439,11,0.4454332508,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (73,'Ildegarda Penne',1,1,0.1893525941,0.1532587433,13,'Penne',3,0.3919203701,5,0.7146340645,4,0.4852591323,6,0.1100954381,0,0.2000402193,0,0.4848922189,0,27,2,0.2950372576,21,0.6346473107,11,0.0806590321,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (74,'Imelda Maura',1,1,0.2161497585,0.6637882909,45,null,3,0.1997011715,4,0.7867536918,4,0.4657614293,6,0.0440034233,0,0.8409115289,2,0.3966386902,1,null,21,0.3566658539,23,0.1788819890,3,0.2060001604,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (75,'Isabella Balcescu',1,5,0.0245140341,0.8787365906,59,'Isa',1,0.1051419479,4,0.0709043353,2,0.5727255499,6,0.8373774716,2,0.1537277463,0,0.6752350297,1,38,7,0.1842689100,16,0.1227076858,2,0.6414958736,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (76,'Marta Califano',1,1,0.8745602487,0.7956111254,53,null,3,0.1583948823,4,0.7744290117,4,0.6277516311,6,0.9495747449,2,0.7559656165,1,0.2082662657,1,1,26,0.5841851430,5,0.4949815736,8,0.5102350159,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (77,'Maurilio Govoni',2,1,0.2995897978,0.8724456902,58,null,3,0.4373946026,6,0.1220357824,2,0.5672214464,6,0.5478887411,1,0.8356880320,2,0.3377737263,1,3,12,0.1662418337,14,0.4153505738,7,0.0625719320,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (78,'Minervina Arrighi',1,1,0.4875931393,0.5167543868,36,null,3,0.8445291675,6,0.8885569095,4,0.5579456462,6,0.8022478650,2,0.3598566585,1,0.6039701618,1,null,29,0.5268105660,35,0.1628682157,3,0.4509705013,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (79,'Naomi Kohn',1,3,0.8116079444,0.3748628533,27,null,1,0.6158734395,6,0.2572054695,2,0.6919820440,6,0.6019465831,1,0.7988929738,1,0.3848327796,1,18,17,0.2887766894,20,0.5224009349,3,0.0979597612,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (80,'Orchidea Lotto',1,1,0.9944076267,0.6284857337,43,null,3,0.7744922496,6,0.9530697987,5,0.5345076826,6,0.7760574952,1,0.4408529783,1,0.2797029585,1,23,17,0.6777817509,10,0.1402913834,3,0.4278662678,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (81,'Orchidea Mancini',1,1,0.6473679572,0.2684763227,21,null,3,0.8684635276,6,0.2230839778,2,0.6653720275,6,0.1250042797,0,0.4159317070,1,0.3371149214,1,18,17,0.8472902578,29,0.5269001227,3,0.9454886218,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (82,'Orfeo Agresta',2,1,0.1893163770,0.2753088459,21,'Neto',3,0.4798744568,6,0.3445367683,3,0.6741834711,6,0.7166828800,1,0.2280600936,1,0.3763234006,1,13,17,0.7424964835,15,0.1289773248,3,0.6349093470,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (83,'Pacomio Basso',2,1,0.4028490601,0.7486101562,51,null,3,0.8556246616,6,0.1313639604,2,0.4770589236,6,0.1948092017,0,0.7500243318,1,0.5994081351,1,18,12,0.8078760283,27,0.5468436908,3,0.8742642658,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (84,'Parmenio Martin',2,1,0.7439339489,0.4410597876,31,null,3,0.1038083435,4,0.9225644076,5,0.5691581792,6,0.2242352624,1,0.7907290608,1,0.2605266760,1,null,29,0.3863227948,24,0.2062048791,4,0.8761277720,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (85,'Petar Balcescu',2,5,0.2529347411,0.3733217099,27,null,1,0.9853723702,6,0.4214280694,3,0.4844729063,6,0.1667245881,0,0.5676577910,1,0.9798454293,2,13,26,0.4245543022,25,0.3310118069,6,0.4085945823,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (86,'Protasio Petricca',2,1,0.2857103530,0.7498553498,51,null,3,0.8044231159,6,0.1226382478,2,0.4646515222,6,0.4291095266,1,0.9744995318,2,0.8592634016,2,null,2,0.4257093763,25,0.6974365903,12,0.2611091695,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (87,'Rodrigo Tito',2,1,0.2877879779,0.4233072945,30,null,3,0.2787239057,5,0.9565656237,5,0.5276876575,6,0.7387933260,1,0.2378789945,1,0.3079311963,1,null,29,0.2586745198,19,0.6091919424,10,0.1727064881,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (88,'Selvaggia Petricca',1,1,0.0002322740,0.9953088713,79,'Nonna (avó)',3,0.5490495720,6,0.0151764931,1,0.5368006233,6,0.0249247307,0,0.8104276485,2,0.4823374352,1,12,2,0.4105469508,24,0.1897687989,4,0.1875091963,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (89,'Serafeim Perroulis',2,10,0.0331635798,0.8019196285,54,'Mommo (dumb)',1,0.8136818791,6,0.9860009254,5,0.4707074858,6,0.1276011429,0,0.5501686290,1,0.4170773412,1,23,40,0.1950622340,16,0.0859483067,2,0.5365108659,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (90,'Sostene Susi',2,1,0.0333645314,0.4852357438,34,'Pieditto (pezinho)',3,0.8015223624,6,0.9348074485,5,0.5137070812,6,0.1399056750,0,0.2976116687,1,0.7897881688,1,null,29,0.6006826696,7,0.1556652104,3,0.4912360797,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (91,'Tabita Pollio',1,1,0.6085939769,0.7747821906,52,null,3,0.1631520279,4,0.9387430084,5,0.5386624082,6,0.0629322524,0,0.6141689773,1,0.5920265249,1,23,29,0.3256443573,22,0.9296725704,15,0.3589546215,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (92,'Tranquillo Tocco',2,1,0.0018878949,0.5002171371,35,'Tico',3,0.2053699432,4,0.6110632811,4,0.5987563546,6,0.0644142650,0,0.3673160363,1,0.2438519582,1,1,17,0.7290333812,11,0.3748289839,6,0.2347972609,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (93,'Trasea Tocco',1,1,0.9129231898,0.5075838012,35,null,3,0.4318713562,6,0.3565847743,3,0.6008754063,6,0.7481318594,1,0.3996389868,1,0.3141299470,1,null,17,0.5561453152,2,0.8722677123,14,0.2116094712,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (94,'Urtan Pipa',2,2,0.3851058244,0.6946052332,47,null,3,0.1767666040,4,0.7742183386,4,0.4643072891,6,0.6633058696,1,0.6949488946,1,0.8236600169,2,5,26,0.6929565544,10,0.0132676139,1,0.4137211226,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (95,'Vedasto Penne',2,1,0.8049723124,0.9693525483,74,null,3,0.2753724535,5,0.5963257629,1,0.6717096797,6,0.2880988630,1,0.1029515641,0,0.2735863876,1,29,2,0.8789602240,30,0.0871909533,2,0.6166621249,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (96,'Viktor Zdravkov Ivankov',2,8,0.3397670473,0.3020150623,23,null,1,0.4306975728,6,0.7223603564,4,0.6780047196,6,0.7478669870,1,0.7889425409,1,0.8324691650,2,19,7,0.1111655784,6,0.8668362995,14,0.6758870524,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (97,'Zenaide Gotto',2,1,0.0198624297,0.4042731242,29,'Caramella (doce)',3,0.5785588372,6,0.3919065018,3,0.5644199685,6,0.3123525186,1,0.2343179221,1,0.7305011871,1,null,21,0.3597134326,23,0.2328721130,4,0.9566271383,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (98,'Abdone Patalano',2,1,0.6540021496,0.8552647152,57,null,3,0.8991313587,6,0.5978731991,3,0.3758355454,4,0.9760677067,2,0.8107286785,2,0.5207251203,1,null,3,0.0794408177,4,0.9225483656,15,0.3888460862,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (99,'Adolfo Mendolia',2,1,0.7879304156,0.1572742626,14,null,3,0.5260921871,6,0.7508495668,4,0.2327117895,4,0.4931799732,0,0.9950721334,1,0.3254100872,0,20,13,0.4710382615,28,0.9182798054,15,0.7102703993,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (100,'Alda Petrucci',1,1,0.5871318328,0.0934208301,9,null,3,0.9616651124,6,0.5365987083,3,0.3553558469,4,0.9729179329,1,0.7780477429,1,0.4705022830,0,null,22,0.0328550290,3,0.5309340893,3,0.2705455058,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (101,'Amalia Giannuzzi',1,1,0.0741920530,0.9227327653,65,'lia',3,0.5104745014,6,0.9241478525,1,0.3642022479,4,0.2585061912,1,0.8190292035,2,0.6015588264,1,null,18,0.5872067419,5,0.6302960651,11,0.2353146619,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (102,'Ana-maria Mocanu',1,5,0.7084506629,0.9263640324,65,null,1,0.5739423116,6,0.5151911780,1,0.4202893629,4,0.5388341098,1,0.3552082716,1,0.9962835326,2,32,3,0.4010314135,24,0.5651542135,10,0.3631179366,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (103,'Anastasia Mattaliano',1,1,0.1237961927,0.9248485564,65,'Ana',3,0.2715377592,5,0.1684857897,1,0.2344547695,4,0.6552734028,1,0.8605198326,2,0.4658257749,1,null,18,0.5869657287,5,0.8617414567,14,0.2987152642,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (104,'Anica Hagi',1,5,0.4652852533,0.3288946013,24,null,1,0.6814594624,6,0.8503515585,4,0.4387223349,4,0.3854943975,1,0.1078888367,0,0.7321765701,1,20,22,0.5221759238,35,0.5413676254,3,0.8345224974,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (105,'Argo Rega',2,1,0.4348442095,0.3890528997,28,null,3,0.8855701115,6,0.1710733776,2,0.4347319535,4,0.8164176785,2,0.1170585148,0,0.7066399013,1,null,30,0.0449566323,3,0.6943414465,12,0.9303757244,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (106,'Ariele Del Medico',2,1,0.0776930723,0.8139939208,55,'Lila',3,0.4535897622,6,0.4043933113,3,0.2719543039,4,0.6327206141,1,0.1024030391,0,0.4371006847,1,null,18,0.8530127247,30,0.9278071935,15,0.9912413295,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (107,'Aziza Achtouk',1,4,0.5043460021,0.3692237641,27,null,2,0.7731488052,6,0.9428564624,5,0.3058438029,4,0.8280917217,2,0.8562416661,2,0.2085799840,1,10,30,0.7704935047,18,0.0669137489,2,0.8978251746,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (108,'Bastian Puchner',2,3,0.5500245209,0.6361293429,44,null,1,0.1643632287,4,0.3450304595,3,0.3941829193,4,0.1518047826,0,0.7140789932,1,0.0512283388,0,null,13,0.1751275827,14,0.2990555989,5,0.9752312664,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (109,'Bogdana Ević',1,11,0.2814838814,0.4463938539,32,null,1,0.1681262810,4,0.7540504785,4,0.2062687577,4,0.4268159110,1,0.1666837391,0,0.8043655923,2,7,13,0.9951767651,34,0.8045077324,13,0.8822523409,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (110,'Candido Suozzo',2,1,0.6066255125,0.3418682106,25,null,3,0.2694825335,5,0.6624301204,4,0.2405467394,4,0.9610033619,2,0.4488441893,1,0.3638008511,1,null,13,0.8063209731,27,0.7770934025,13,0.8347206134,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (111,'Carmela Ragucci',1,1,0.1759381730,0.5361310255,37,'Meme',3,0.7537466432,6,0.5481368653,3,0.4424456950,4,0.4442985582,1,0.9644235738,2,0.4341016229,1,null,27,0.0687300263,4,0.2382898625,4,0.1686183887,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (112,'Carmine De Lellis',2,1,0.2134290905,0.2941177828,22,null,3,0.5838964674,6,0.0231873473,2,0.4295206229,4,0.7800628712,1,0.4523436758,1,0.9506552597,2,15,22,0.7166966768,11,0.9939553574,16,0.4354574606,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (113,'Costanzo Petruzzelli',2,1,0.4091202102,0.3539110813,26,null,3,0.1557490414,4,0.1593371559,2,0.2918133960,4,0.3642048100,1,0.8637970365,2,0.9897473847,2,null,8,0.1368667901,13,0.4220608333,7,0.4816651045,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (114,'Dalina Schlup',1,12,0.3236267492,0.5432007082,38,null,1,0.5130173037,6,0.6034916850,4,0.4409223950,4,0.7799443004,1,0.4926162856,1,0.2609099822,1,35,18,0.3152949494,21,0.4162920014,7,0.9614812249,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (115,'Delfina Petrucci',1,1,0.2244405084,0.5120834721,36,null,3,0.5553416209,6,0.1798175706,2,0.3034990007,4,0.8966765265,2,0.9870187626,2,0.7356120675,1,null,22,0.3877315227,24,0.1081357892,2,0.8491607632,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (116,'Dorin Pîrvulescu',2,5,0.2785080131,0.2427533594,19,null,1,0.0689832307,3,0.9580942599,5,0.2335992327,4,0.6576855241,1,0.8879791666,2,0.9998379774,2,null,3,0.7599869719,15,0.8349510952,14,0.6110615006,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (117,'Durya Salem',1,4,0.9457255274,0.6325496307,43,null,2,0.7100998455,6,0.3804126793,3,0.2316945433,4,0.4638302671,1,0.3877645120,1,0.3619535180,1,null,27,0.6513389128,9,0.2551113168,5,0.3066834163,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (118,'El Bachir Toufiq',2,4,0.1094103205,0.5896898029,41,'Piccolo (Pequeno)',2,0.1382101372,4,0.9614172623,5,0.3041100304,4,0.4832031479,1,0.3974582912,1,0.2961043010,1,10,8,0.0669885403,4,0.5512494556,3,0.6287351004,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (119,'Emilia Beldad',1,7,0.8566902922,0.3414915391,25,null,3,0.9103647465,6,0.3408338937,3,0.3575616858,4,0.6180061974,1,0.5807219064,1,0.0075958867,0,null,27,0.6604341979,9,0.2154604383,4,0.2877757669,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (120,'Emmanouil Galaniadis',2,10,0.8768566580,0.6428523904,44,null,1,0.4149648800,6,0.9403366270,5,0.2265573666,4,0.2533906168,1,0.5636906287,1,0.0649482900,0,null,8,0.5480860251,2,0.1844136265,3,0.6982103722,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (121,'Eniana Selmani',1,2,0.9424405890,0.9446547223,69,null,3,0.9265442649,6,0.9786374537,1,0.2629192737,4,0.6077192687,1,0.4979782298,1,0.3376228705,1,32,35,0.3785023063,23,0.3946983396,7,0.3418081420,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (122,'Ermilo Manera',2,1,0.2954330715,0.9841400040,77,null,3,0.0115371682,2,0.6639740178,1,0.2816051749,4,0.8837353534,2,0.4418077597,1,0.4152581412,1,null,3,0.8956459281,31,0.0697005009,2,0.3879345961,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (123,'Erminia Manera',1,1,0.9741721502,0.2497058835,19,null,3,0.3544238738,5,0.8677600102,4,0.4213890908,4,0.7273686818,1,0.5016047301,1,0.0106981699,0,null,3,0.7059279979,11,0.9953997202,16,0.9468416485,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (124,'Esmeralda Dino',1,1,0.2897043484,0.6526031733,45,null,3,0.3402151101,5,0.7967350399,4,0.3314509582,4,0.2090088508,1,0.8096321245,2,0.1378058578,0,null,35,0.7018232921,10,0.7907571727,13,0.6945402743,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (125,'Fernando Beldad',2,7,0.0384411251,0.2633323141,20,'Tappo (short)',3,0.8038471804,6,0.3026348624,3,0.2400975744,4,0.1372281444,0,0.6258387364,1,0.3121072925,1,6,27,0.9983951546,34,0.8413208779,14,0.7005807633,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (126,'Franca Mendolia',1,1,0.2648586315,0.5131687289,36,null,3,0.5161922071,6,0.4338206700,3,0.4368434046,4,0.4859969172,1,0.7859494762,1,0.6276937888,1,6,18,0.7045137729,10,0.5250768117,3,0.4405262935,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (127,'Galatea Petruzzelli',1,1,0.8972638488,0.2787485817,21,null,3,0.3663218638,5,0.7117523136,4,0.4521811677,4,0.9374005441,2,0.6495365507,1,0.2011802178,1,null,8,0.1950834544,16,0.2138652151,4,0.9792332237,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (128,'Geldona Selmani',1,2,0.4005945675,0.3705164376,27,null,3,0.2363939629,4,0.0357212062,2,0.4080816961,4,0.4264055484,1,0.8513069419,2,0.3164288576,1,null,35,0.8987470522,31,0.2346552863,4,0.6516846562,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (129,'Igino Quercia',2,1,0.7330726931,0.4787140296,34,null,3,0.0827316851,3,0.7698205475,4,0.3753365240,4,0.3062110962,1,0.6558463961,1,0.8638337677,2,null,8,0.1508692798,14,0.0354199313,1,0.8292420083,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (130,'Igino Colangelo',2,1,0.1530987634,0.6823912530,46,'Dolia',3,0.2195839147,4,0.1037113199,2,0.4166953997,4,0.2108021379,1,0.8786931255,2,0.6432147515,1,null,13,0.6569298139,9,0.1346225948,3,0.9846679563,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (131,'Ljuba Simić',2,11,0.3972784210,0.5248344031,37,null,1,0.3031779042,5,0.4412242086,3,0.4094482819,4,0.3898961411,1,0.4699313324,1,0.0631040826,0,6,18,0.5345697533,2,0.3604429242,6,0.7437923873,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (132,'Macario Patalano',2,1,0.9116141055,0.9256854175,65,null,3,0.0241976618,2,0.8148855513,1,0.2254760220,4,0.8077922223,2,0.4119139906,1,0.4267809169,1,null,3,0.5166284869,35,0.5404886192,3,0.5745718062,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (133,'Marisa Mendolia',1,1,0.7727917186,0.0859408906,9,null,3,0.3070116215,5,0.3048347267,3,0.3027127533,4,0.8736170080,1,0.0223426371,0,0.8900263808,1,7,13,0.5688361687,5,0.5299754812,3,0.2814127392,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (134,'Mila Despotović ',1,11,0.1797710105,0.2537107395,20,'Iena (mean girl)',1,0.8664940823,6,0.9696864083,5,0.2062696397,4,0.3094717751,1,0.1609173331,0,0.6596687373,1,null,30,0.9528899362,34,0.1069016282,2,0.5672662639,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (135,'Orso Melchiorre',2,1,0.3720881093,0.4239697791,30,null,3,0.7103076417,6,0.0361129451,2,0.3414846431,4,0.9631844698,2,0.5280975612,1,0.8054649574,2,null,27,0.5835223244,5,0.7320379438,12,0.3588085722,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (136,'Orsola DAlto',1,1,0.0306056060,0.8768739243,59,'Manello (mãozinha)',3,0.3820524262,5,0.0330969456,2,0.3653310963,4,0.0625344489,0,0.9040243137,2,0.0582801116,0,null,18,0.0497500550,3,0.0503329377,1,0.2890120714,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (137,'Paul Babes',2,5,0.9938608809,0.7901750217,53,null,1,0.0842317301,3,0.3652007694,3,0.3848047698,4,0.0959972378,0,0.8872195753,2,0.5978735835,1,6,8,0.5594135163,5,0.2099431573,4,0.7023443194,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (138,'Riccardo Monti',2,1,0.3365199531,0.9340995322,67,null,3,0.6769722674,6,0.4444291190,1,0.2608543006,4,0.7918530692,1,0.9742490048,2,0.1471096765,0,null,22,0.6989157014,10,0.2494032828,4,0.9939240037,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (139,'Rolando Ragucci',2,1,0.7224392208,0.0648331088,6,null,3,0.8840694432,6,0.7093034707,4,0.2613958475,4,0.8420677910,1,0.7653499680,1,0.0860962344,0,35,27,0.3448965950,22,0.3503826883,6,0.0687873892,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (140,'Roxanni Galaniadis',1,10,0.9334973790,0.0890161338,9,null,1,0.1500638238,4,0.4645165639,3,0.4061970632,4,0.8753167109,1,0.6048108986,1,0.8899996368,1,null,8,0.0397713182,3,0.5446674313,3,0.6651906021,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (141,'Saturniano Mendolia',2,1,0.5733979651,0.6804321316,46,null,3,0.2017877774,4,0.6145709538,4,0.3031866255,4,0.6355712319,1,0.7185151622,1,0.4892673321,1,20,13,0.8165824653,27,0.5167515093,3,0.9813687533,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (142,'Settimio Quercia',2,1,0.3729024303,0.5113389910,36,null,3,0.9017885652,6,0.9847616611,5,0.2437861045,4,0.6323793278,1,0.1356967237,0,0.2459227775,1,null,8,0.0000702296,1,0.2106376820,4,0.3047447964,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (143,'Stefania Mocanu',1,5,0.5132876530,0.2124708832,17,null,1,0.0320936154,2,0.0829841076,2,0.4448193326,4,0.3849018786,1,0.9278606834,2,0.4105945363,1,10,3,0.2898605134,20,0.3569325717,6,0.4063637434,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (144,'Zvezdan Trkulja',2,11,0.2839851815,0.5906388229,41,null,1,0.9202798588,6,0.6004250963,4,0.3433250789,4,0.5162893307,1,0.1063057845,0,0.6924449482,1,null,30,0.4178257585,25,0.5229873953,3,0.8386145085,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (145,'Adelchi Fazzone',2,1,0.3911909481,0.7798786206,52,null,3,0.7744483768,6,0.0571114060,2,0.8822983227,3,0.7478202843,1,0.0238717636,0,0.0130496810,0,null,33,0.8849269366,31,0.3035727702,5,0.4718573286,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (146,'Alcibiade Cocchi',2,1,0.3492905455,0.5707115721,39,null,3,0.2278335941,4,0.1331361337,2,0.8859183067,3,0.7660758314,1,0.3551765883,1,0.9456963172,2,null,38,0.3666291916,23,0.0312480132,1,0.9103226869,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (147,'Cleo Castagno',1,1,0.7772754784,0.4996691492,35,null,3,0.6018449843,6,0.7156416947,4,0.8733101800,3,0.9734152396,2,0.9626624357,2,0.8514453578,2,null,33,0.9222869275,32,0.2758259747,5,0.7304499887,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (148,'Cleo Roberti',1,1,0.9647849230,0.3748310403,27,null,3,0.8211120461,6,0.7084380298,4,0.9103794584,3,0.0386958890,0,0.3814932092,1,0.0481313130,0,null,33,0.0447449234,3,0.5269445640,3,0.5135633460,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (149,'Emilia Roberti',1,1,0.7887975262,0.4401940690,31,null,3,0.0893652681,3,0.1141468226,2,0.8757613427,3,0.4427579355,1,0.0966059765,0,0.3843725058,1,null,33,0.3386360708,22,0.1093390689,2,0.0659454895,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (150,'Fabio Ferrin',2,1,0.8940416002,0.3766239084,27,null,3,0.0464766735,2,0.5758340635,3,0.8914766901,3,0.5999884220,1,0.3811673127,1,0.4549352435,1,null,31,0.7812241708,18,0.6234672367,10,0.7534379921,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (151,'Giustiniano Gennari',2,1,0.4990291684,0.7732728333,52,null,3,0.3809690783,5,0.2088723577,2,0.8421832651,3,0.2506545208,1,0.8168485794,2,0.3464687456,1,3,32,0.1465039090,13,0.0704691681,2,0.0633351187,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (152,'Gualberto Villella',2,1,0.1800947722,0.7650046540,52,'Guga',3,0.4345583569,6,0.6040087924,4,0.9099860493,3,0.8601207001,2,0.5165483229,1,0.4517208904,1,null,32,0.1819906408,16,0.7326423574,12,0.8539450247,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (153,'Gwenaëlle Blanc',1,9,0.3449903753,0.4222685421,30,null,1,0.1919431844,4,0.1079144211,2,0.8209315904,3,0.0311007407,0,0.2698255286,1,0.3551735612,1,null,32,0.3371892934,22,0.1031769533,2,0.0999188574,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (154,'Hayyan Daoud',2,4,0.1421284615,0.3853471414,28,'Topolino (Rato pequeno)',2,0.4052113549,6,0.7614749625,4,0.8359795702,3,0.2742751952,1,0.7487516940,1,0.3447247761,1,null,31,0.3026648460,21,0.5491879268,3,0.8212242803,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (155,'Hristiyana Stefanova Antonova Gennari',1,8,0.1474220301,0.1220144929,11,'Galletta (flirty)',1,0.4672632214,6,0.8227413785,4,0.8278536925,3,0.0590746241,0,0.3888216753,0,0.6731352889,1,33,32,0.8095544147,27,0.3280357374,6,0.2227491372,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (156,'Irmina Bosso',1,1,0.6693204403,0.4850649275,34,null,3,0.2647009898,5,0.1467263465,2,0.8576124817,3,0.4480253702,1,0.8218466002,2,0.3645603621,1,null,33,0.5755932618,5,0.6660455991,11,0.0974353635,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (157,'Johannes Auer',2,3,0.2541459002,0.2904224343,22,null,1,0.9627627053,6,0.8910432689,4,0.8696661545,3,0.2034821400,1,0.5600405905,1,0.6528706845,1,33,37,0.8695716959,30,0.0396609083,1,0.3947054113,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (158,'Jost Tanner',2,12,0.9084745238,0.3487679222,26,null,1,0.6346684856,6,0.5019414851,3,0.8333613414,3,0.5024392357,1,0.5855196212,1,0.8241337603,2,40,34,0.4295843293,25,0.6015542508,10,0.6714163984,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (159,'Luminosa Corsino',1,1,0.8491882186,0.8619028991,58,null,3,0.5318914224,6,0.3392678221,3,0.9122752800,3,0.5572260976,1,0.6740404802,1,0.5850571394,1,40,34,0.3569332177,23,0.3789070314,7,0.2639619692,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (160,'Lumturesha Simaku',1,2,0.5594382159,0.2245435059,18,null,3,0.4499835075,6,0.4472142371,3,0.8393723268,3,0.7444045683,1,0.6982390979,1,0.2669207676,1,null,33,0.3093672105,21,0.4949304190,8,0.8335235709,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (161,'Pancario Barbato',2,1,0.1206228094,0.6623633290,45,'Barba',3,0.4425111445,6,0.8284875198,4,0.8485944671,3,0.1352735319,0,0.1917269851,0,0.5894763560,1,null,31,0.9470072465,34,0.2457017468,4,0.5302056003,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (162,'Pia Zampella',1,1,0.2103744534,0.5763217347,40,null,3,0.5480396282,6,0.5285927638,3,0.9044833535,3,0.1621166051,0,0.9519161496,2,0.4003801780,1,null,32,0.7189784842,11,0.7848255730,13,0.1834536260,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (163,'Vitalico Ferrin',2,1,0.0903537444,0.3658491583,27,'Vito',3,0.4978137244,6,0.6426016640,4,0.8373866547,3,0.4495809696,1,0.1550789672,0,0.8735741378,2,null,31,0.1518380953,14,0.3777499200,7,0.8286248933,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (164,'Zoilo Ferrin',2,1,0.1267336705,0.0637849269,6,'Viola (violeta)',3,0.5675869173,6,0.3907816887,3,0.9071123982,3,0.5043716134,1,0.2596514010,0,0.2822766387,0,null,31,0.8715060275,30,0.8222238621,14,0.6853770065,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (165,'Andreea Ardelean',1,5,0.8185708499,0.4690376644,33,null,1,0.1760068348,4,0.8358093231,4,0.9917454480,2,0.2914897831,1,0.2589121398,1,0.5730340464,1,17,9,0.6382566886,8,0.9285436312,15,0.7982511926,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (166,'Auro Civitello',2,1,0.4096177116,0.7976628230,54,null,3,0.2757849003,5,0.1569130733,2,0.9674667881,2,0.5018962298,1,0.7903890886,1,0.9872550786,2,null,4,0.9017767266,31,0.1939266908,4,0.9508026928,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (167,'Averardo Civitello',2,1,0.8764980958,0.0098492659,1,null,3,0.4836145181,6,0.9423625089,5,0.9297966309,2,0.9605629484,1,0.4762504579,0,0.3007071970,0,null,4,0.8647229367,30,0.3215267111,6,0.7834767579,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (168,'Chonz Engeler',2,12,0.3374539613,0.9111513103,62,null,1,0.7365872005,6,0.5415059742,1,0.9463261887,2,0.9736616702,2,0.2032344480,1,0.3404617640,1,null,14,0.0070774804,1,0.0014203826,1,0.4802311097,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (169,'Claudia Civitello',1,1,0.8417662592,0.6348405000,43,null,3,0.2102791024,4,0.6792856748,4,0.9819177353,2,0.2140771218,1,0.7602188469,1,0.6197064240,1,36,4,0.7107433964,11,0.8776846345,15,0.1701960285,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (170,'Emanuela Giusto',1,1,0.4146794184,0.3515232844,26,null,3,0.2360891789,4,0.6905544074,4,0.7150935695,1,0.5530349338,1,0.7724906682,1,0.8414622800,2,null,20,0.3982023801,24,0.7056353002,12,0.2794240112,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (171,'Evaristo Masciantonio',2,1,0.1838491443,0.2527894578,20,'Tonio',3,0.0780692718,3,0.1635287721,2,0.9858062383,2,0.0507360949,0,0.8628767851,2,0.9554342183,2,null,19,0.9780346436,34,0.1863295802,3,0.8723637546,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (172,'Giusto Bucciarelli',2,1,0.4806077152,0.5425353944,38,null,3,0.5637399936,6,0.6248102944,4,0.9335115964,2,0.2875178493,1,0.5259320576,1,0.2868329944,1,null,9,0.2469221417,19,0.7193396281,12,0.5107876114,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (173,'Jean-Michel Fouquet',2,9,0.1579233811,0.6714237787,46,'Michel',1,0.9910108791,6,0.2096035946,2,0.9873952838,2,0.2518282889,1,0.8878325819,2,0.3547965216,1,null,36,0.0986695201,6,0.2155901532,4,0.0986111944,1);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (174,'Oreste Bucciarelli',2,1,0.7303406924,0.1573522559,14,null,3,0.8083184023,6,0.4493818147,3,0.9564633541,2,0.1726915237,0,0.6916518609,1,0.1490281738,0,null,9,0.3299909380,22,0.9765669587,16,0.1233601630,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (175,'Pia Rätz',1,12,0.5355216243,0.7831271003,53,null,1,0.7459417957,6,0.3420354716,3,0.9661686279,2,0.3577758066,1,0.8702360346,2,0.1871344361,0,null,19,0.0952027189,6,0.3540295030,6,0.9324481308,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (176,'Rifky Daoud',2,4,0.3701534611,0.9425529053,69,null,2,0.5498020001,6,0.0481764880,1,0.9920722027,2,0.7856824774,1,0.5276004983,1,0.8959254590,2,39,23,0.9774304360,34,0.7823270844,13,0.6558762711,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (177,'Shaithis Ardelean',2,5,0.5688582572,0.1606533373,14,null,1,0.7600119046,6,0.4768439547,3,0.9379926170,2,0.0096854605,0,0.1867480656,0,0.3208555697,0,17,9,0.8044376016,27,0.0535020321,1,0.7286423097,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (178,'Verdiana Petrecca',1,1,0.9677140533,0.6527598954,45,null,3,0.3885081543,5,0.1684587276,2,0.9501000846,2,0.6295038004,1,0.9897992451,2,0.5794449935,1,null,14,0.7931275761,18,0.5173595344,3,0.1764468796,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (179,'Virginia Lo Bianco',1,1,0.3490039625,0.9834869110,77,null,3,0.6837757054,6,0.7818832287,1,0.9200117902,2,0.7365234230,1,0.2721656463,1,0.9296436069,2,39,9,0.6766172258,10,0.6944654999,12,0.4626493750,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (180,'Zita Tavani',1,1,0.7121151711,0.8056581231,54,null,3,0.4655967180,6,0.1079283912,2,0.9387764752,2,0.3483929155,1,0.0458273909,0,0.7118735251,1,null,14,0.2661091430,20,0.6791032375,11,0.8032288507,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (181,'Adelasia Cucci',1,1,0.7743451535,0.5135760126,36,null,3,0.6409316262,6,0.1340832431,2,0.7243751047,1,0.1012097367,0,0.3303953898,1,0.1422696868,0,null,24,0.2623727253,19,0.1711609435,3,0.2028404495,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (182,'Albino Rampone',2,1,0.2369065969,0.7918820396,53,null,3,0.7316783952,6,0.2878211185,2,0.7080488586,1,0.3919974571,1,0.4308881025,1,0.3825920406,1,null,15,0.9648542080,34,0.3932142660,7,0.5175880211,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (183,'Boris Epifano',2,1,0.7544832499,0.3704911880,27,null,3,0.7537866863,6,0.0447792115,2,0.7275845420,1,0.1777806276,0,0.4753473292,1,0.9779516123,2,null,20,0.7799397781,18,0.8735213842,14,0.4765324376,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (184,'Clodoveo Dattoli',2,1,0.6017579010,0.7008702166,48,null,3,0.1006057201,4,0.9651341384,5,0.7185958782,1,0.1502305492,0,0.1392097213,0,0.0409961790,0,null,15,0.5336224997,2,0.6870917449,11,0.8521076660,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (185,'Edda Muratori',1,1,0.2645737435,0.5127122879,36,null,3,0.8329899526,6,0.5381654646,3,0.7982501663,1,0.7411744953,1,0.2089829887,1,0.8007804575,2,null,24,0.8226156919,27,0.5537751441,3,0.4303741777,5);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (186,'Edda Villa',1,1,0.8819664434,0.6594985012,45,null,3,0.8507768262,6,0.9007126172,5,0.7183916078,1,0.9555676689,2,0.5132204407,1,0.8397733422,2,null,5,0.7862187600,18,0.6045043681,10,0.6475654136,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (187,'Gherardo Giusto',2,1,0.9447748602,0.1698036539,14,null,3,0.9924495529,6,0.6491676301,4,0.7185958782,1,0.3451928155,0,0.5908732961,1,0.6005674821,1,34,20,0.0142622362,1,0.3682132005,6,0.6019574093,7);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (188,'Grimaldo Salvia',2,1,0.8357597810,0.6731437683,46,null,3,0.6337001793,6,0.7441316441,4,0.1855445851,5,0.0994188978,0,0.5969374861,1,0.0158613519,0,7,28,0.7378870641,15,0.5438226037,3,0.3038492550,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (189,'Marinetta Carangelo',1,1,0.1556478149,0.3255380692,24,'Netta',3,0.5107949486,6,0.3112348434,3,0.7080488586,1,0.5899208970,1,0.7359363022,1,0.7848037746,1,null,10,0.7102250058,11,0.5407295884,3,0.7549656687,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (190,'Nostriano Felicetti',2,1,0.5341070185,0.2987499118,22,null,3,0.1013207254,4,0.9083484128,5,0.7982501663,1,0.0383695884,0,0.5508282779,1,0.8361430724,2,null,24,0.4992811560,28,0.6916378997,12,0.1871834993,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (191,'Orchidea Valentin',1,1,0.9525775458,0.0566180052,6,null,3,0.0967838468,3,0.9370928412,5,0.7067870334,1,0.4359684762,0,0.5094316057,1,0.7072763349,1,null,5,0.7485180074,15,0.3363062419,6,0.2598495147,3);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (192,'Palladio Anastasio',2,1,0.3062237033,0.9052317972,61,null,3,0.7408597965,6,0.4956707805,1,0.7161681015,1,0.8785686089,2,0.4492749155,1,0.8230150440,2,null,24,0.4756348476,28,0.3557307402,6,0.1926499206,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (193,'Pollione Strollo',2,1,0.4063906824,0.8960770837,60,null,3,0.5351915553,6,0.2260161344,1,0.9626767114,2,0.2913724782,1,0.7063605923,1,0.3907104491,1,31,14,0.5448294568,2,0.8336568320,14,0.1499260702,2);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (194,'Postumio Amore',2,1,0.8211092906,0.5969063111,41,null,3,0.7188625559,6,0.3838335396,3,0.7183916078,1,0.6827228353,1,0.6684885951,1,0.0425665736,0,null,15,0.5949286912,7,0.1200853139,2,0.9158206222,10);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (195,'Ritwan Khatibi',1,4,0.4256425233,0.7893121311,53,null,2,0.6483045977,6,0.3894134173,3,0.7765557368,1,0.9551841885,2,0.4044922259,1,0.2066219068,1,null,10,0.5032671160,35,0.6413954807,11,0.7866574409,8);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (196,'Salvatore Poccia',2,1,0.2983976540,0.4551851791,32,null,3,0.6817602743,6,0.4382297740,3,0.7150935695,1,0.2244602990,1,0.6394742122,1,0.3778330460,1,null,10,0.0371593671,3,0.1163024588,2,0.5649724356,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (197,'Sico Valentin',2,1,0.5427533389,0.2834877019,21,null,3,0.1356238172,4,0.4980739421,3,0.7243751047,1,0.1663206618,0,0.7288248312,1,0.8933342882,2,null,5,0.5224818582,35,0.7895645639,13,0.3733161791,4);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (198,'Sofia Bachmann',1,3,0.5648654069,0.9209221592,64,null,1,0.5647074514,6,0.6523895403,1,0.7789221938,1,0.8510747257,2,0.2830572222,1,0.3831242502,1,null,20,0.2994392340,21,0.4026212869,7,0.5652409137,6);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (199,'Venerando Celenza',2,1,0.6477188350,0.8046879990,54,null,3,0.4170909557,6,0.8376084001,4,0.7067870334,1,0.9733218486,2,0.2432831424,1,0.5913397869,1,34,5,0.7037203836,10,0.6322261319,11,0.8471801131,9);
insert into npc(id, nome, sexo, nacionalidade, seed_apelido, seed_idade, idade, apelido, pele, seed_olhos, olhos, seed_cabelo, cabelo, seed_bairro, bairro, seed_fisico, fisico, seed_social, social, seed_mental, mental, familia, moradia, seed_instinto, instinto, seed_obrigacao, obrigacao, seed_natureza_obrigacao, natureza_obrigacao) values (200,'Zoe Capelli',1,1,0.9553612529,0.3329401183,25,null,3,0.1055278433,4,0.4799621693,3,0.7161681015,1,0.7908626271,1,0.2824714791,1,0.9350672541,2,null,10,0.8872486785,31,0.6838578900,11,0.8326193881,9);

update npc set familia = (select id from familia where nome = 'El Ouazzani') where id =1;
update npc set familia = null where id =2;
update npc set familia = (select id from familia where nome =  'Gjonbalaj') where id =3;
update npc set familia = null where id =4;
update npc set familia = null where id =5;
update npc set familia = (select id from familia where nome =  'Pergola') where id =6;
update npc set familia = null where id =7;
update npc set familia = null where id =8;
update npc set familia = (select id from familia where nome =  'Carabetta') where id =9;
update npc set familia = (select id from familia where nome =  'Carabetta') where id =10;
update npc set familia = (select id from familia where nome =  'Margo') where id =11;
update npc set familia = null where id =12;
update npc set familia = (select id from familia where nome =  'Valova') where id =13;
update npc set familia = (select id from familia where nome =  'Giachetti') where id =14;
update npc set familia = (select id from familia where nome =  'Losito') where id =15;
update npc set familia = null where id =16;
update npc set familia = (select id from familia where nome =  'Losito') where id =17;
update npc set familia = (select id from familia where nome =  'Bardha') where id =18;
update npc set familia = (select id from familia where nome =  'Pergola') where id =19;
update npc set familia = (select id from familia where nome =  'Carabetta') where id =20;
update npc set familia = null where id =21;
update npc set familia = null where id =22;
update npc set familia = (select id from familia where nome =  'Losito') where id =23;
update npc set familia = (select id from familia where nome =  'Bardha') where id =24;
update npc set familia = (select id from familia where nome =  'Trapani') where id =25;
update npc set familia = null where id =26;
update npc set familia = (select id from familia where nome =  'Giachetti') where id =27;
update npc set familia = (select id from familia where nome =  'Giachetti') where id =28;
update npc set familia = null where id =29;
update npc set familia = (select id from familia where nome =  'Pergola') where id =30;
update npc set familia = (select id from familia where nome =  'Pergola') where id =31;
update npc set familia = null where id =32;
update npc set familia = (select id from familia where nome =  'De Villiers') where id =33;
update npc set familia = (select id from familia where nome =  'El Ouazzani') where id =34;
update npc set familia = (select id from familia where nome =  'Guzzetta') where id =35;
update npc set familia = null where id =36;
update npc set familia = (select id from familia where nome =  'Santarsiero') where id =37;
update npc set familia = (select id from familia where nome =  'Carabetta') where id =38;
update npc set familia = (select id from familia where nome =  'Guzzetta') where id =39;
update npc set familia = null where id =40;
update npc set familia = null where id =41;
update npc set familia = (select id from familia where nome =  'De Villiers') where id =42;
update npc set familia = (select id from familia where nome =  'Santarsiero') where id =43;
update npc set familia = (select id from familia where nome =  'Pergola') where id =44;
update npc set familia = null where id =45;
update npc set familia = (select id from familia where nome =  'Gjonbalaj') where id =46;
update npc set familia = (select id from familia where nome =  'Trapani') where id =47;
update npc set familia = (select id from familia where nome =  'Valova') where id =48;
update npc set familia = null where id =49;
update npc set familia = (select id from familia where nome =  'Valova') where id =50;
update npc set familia = null where id =51;
update npc set familia = (select id from familia where nome =  'Margo') where id =52;
update npc set familia = null where id =53;
update npc set familia = null where id =54;
update npc set familia = null where id =55;
update npc set familia = null where id =56;
update npc set familia = null where id =57;
update npc set familia = (select id from familia where nome =  'Lotto') where id =58;
update npc set familia = (select id from familia where nome =  'Kochiu') where id =59;
update npc set familia = null where id =60;
update npc set familia = (select id from familia where nome =  'Kochiu') where id =61;
update npc set familia = (select id from familia where nome =  'Attardo') where id =62;
update npc set familia = null where id =63;
update npc set familia = (select id from familia where nome =  'Errante') where id =64;
update npc set familia = (select id from familia where nome =  'Errante') where id =65;
update npc set familia = (select id from familia where nome =  'Lotto') where id =66;
update npc set familia = (select id from familia where nome =  'Errante') where id =67;
update npc set familia = null where id =68;
update npc set familia = (select id from familia where nome =  'Kochiu') where id =69;
update npc set familia = null where id =70;
update npc set familia = (select id from familia where nome =  'Attardo') where id =71;
update npc set familia = null where id =72;
update npc set familia = (select id from familia where nome =  'Penne') where id =73;
update npc set familia = null where id =74;
update npc set familia = null where id =75;
update npc set familia = null where id =76;
update npc set familia = (select id from familia where nome =  'Balcescu') where id =77;
update npc set familia = null where id =78;
update npc set familia = null where id =79;
update npc set familia = (select id from familia where nome =  'Lotto') where id =80;
update npc set familia = null where id =81;
update npc set familia = null where id =82;
update npc set familia = null where id =83;
update npc set familia = null where id =84;
update npc set familia = (select id from familia where nome =  'Balcescu') where id =85;
update npc set familia = (select id from familia where nome =  'Petricca') where id =86;
update npc set familia = null where id =87;
update npc set familia = (select id from familia where nome =  'Petricca') where id =88;
update npc set familia = null where id =89;
update npc set familia = null where id =90;
update npc set familia = null where id =91;
update npc set familia = (select id from familia where nome =  'Tocco') where id =92;
update npc set familia = (select id from familia where nome =  'Tocco') where id =93;
update npc set familia = null where id =94;
update npc set familia = (select id from familia where nome =  'Penne') where id =95;
update npc set familia = null where id =96;
update npc set familia = null where id =97;
update npc set familia = (select id from familia where nome =  'Patalano') where id =98;
update npc set familia = (select id from familia where nome =  'Mendolia') where id =99;
update npc set familia = (select id from familia where nome =  'Petrucci') where id =100;
update npc set familia = null where id =101;
update npc set familia = (select id from familia where nome =  'Mocanu') where id =102;
update npc set familia = null where id =103;
update npc set familia = null where id =104;
update npc set familia = null where id =105;
update npc set familia = null where id =106;
update npc set familia = null where id =107;
update npc set familia = null where id =108;
update npc set familia = null where id =109;
update npc set familia = null where id =110;
update npc set familia = (select id from familia where nome =  'Ragucci') where id =111;
update npc set familia = null where id =112;
update npc set familia = (select id from familia where nome =  'Petruzzelli') where id =113;
update npc set familia = null where id =114;
update npc set familia = (select id from familia where nome =  'Petrucci') where id =115;
update npc set familia = null where id =116;
update npc set familia = null where id =117;
update npc set familia = null where id =118;
update npc set familia = (select id from familia where nome =  'Beldad') where id =119;
update npc set familia = (select id from familia where nome =  'Galaniadis') where id =120;
update npc set familia = (select id from familia where nome =  'Selmani') where id =121;
update npc set familia = (select id from familia where nome =  'Manera') where id =122;
update npc set familia = (select id from familia where nome =  'Manera') where id =123;
update npc set familia = null where id =124;
update npc set familia = (select id from familia where nome =  'Beldad') where id =125;
update npc set familia = null where id =126;
update npc set familia = (select id from familia where nome =  'Petruzzelli') where id =127;
update npc set familia = (select id from familia where nome =  'Selmani') where id =128;
update npc set familia = (select id from familia where nome =  'Quercia') where id =129;
update npc set familia = null where id =130;
update npc set familia = null where id =131;
update npc set familia = (select id from familia where nome =  'Patalano') where id =132;
update npc set familia = (select id from familia where nome =  'Mendolia') where id =133;
update npc set familia = null where id =134;
update npc set familia = null where id =135;
update npc set familia = null where id =136;
update npc set familia = null where id =137;
update npc set familia = null where id =138;
update npc set familia = (select id from familia where nome =  'Ragucci') where id =139;
update npc set familia = (select id from familia where nome =  'Galaniadis') where id =140;
update npc set familia = (select id from familia where nome =  'Mendolia') where id =141;
update npc set familia = (select id from familia where nome =  'Quercia') where id =142;
update npc set familia = (select id from familia where nome =  'Mocanu') where id =143;
update npc set familia = null where id =144;
update npc set familia = null where id =145;
update npc set familia = null where id =146;
update npc set familia = null where id =147;
update npc set familia = (select id from familia where nome =  'Roberti') where id =148;
update npc set familia = (select id from familia where nome =  'Roberti') where id =149;
update npc set familia = (select id from familia where nome =  'Ferrin') where id =150;
update npc set familia = (select id from familia where nome =  'Gennari') where id =151;
update npc set familia = null where id =152;
update npc set familia = null where id =153;
update npc set familia = null where id =154;
update npc set familia = (select id from familia where nome =  'Gennari') where id =155;
update npc set familia = null where id =156;
update npc set familia = null where id =157;
update npc set familia = null where id =158;
update npc set familia = null where id =159;
update npc set familia = null where id =160;
update npc set familia = null where id =161;
update npc set familia = null where id =162;
update npc set familia = (select id from familia where nome =  'Ferrin') where id =163;
update npc set familia = (select id from familia where nome =  'Ferrin') where id =164;
update npc set familia = (select id from familia where nome =  'Ardelean') where id =165;
update npc set familia = (select id from familia where nome =  'Civitello') where id =166;
update npc set familia = (select id from familia where nome =  'Civitello') where id =167;
update npc set familia = null where id =168;
update npc set familia = (select id from familia where nome =  'Civitello') where id =169;
update npc set familia = null where id =170;
update npc set familia = null where id =171;
update npc set familia = (select id from familia where nome =  'Bucciarelli') where id =172;
update npc set familia = null where id =173;
update npc set familia = (select id from familia where nome =  'Bucciarelli') where id =174;
update npc set familia = null where id =175;
update npc set familia = null where id =176;
update npc set familia = (select id from familia where nome =  'Ardelean') where id =177;
update npc set familia = null where id =178;
update npc set familia = null where id =179;
update npc set familia = null where id =180;
update npc set familia = null where id =181;
update npc set familia = null where id =182;
update npc set familia = null where id =183;
update npc set familia = null where id =184;
update npc set familia = null where id =185;
update npc set familia = null where id =186;
update npc set familia = (select id from familia where nome =  'Giusto') where id =187;
update npc set familia = null where id =188;
update npc set familia = null where id =189;
update npc set familia = null where id =190;
update npc set familia = (select id from familia where nome =  'Valentin') where id =191;
update npc set familia = null where id =192;
update npc set familia = null where id =193;
update npc set familia = null where id =194;
update npc set familia = null where id =195;
update npc set familia = null where id =196;
update npc set familia = null where id =197;
update npc set familia = null where id =198;
update npc set familia = null where id =199;
update npc set familia = null where id =200;

update npc set instinto = (select id from instinto where nome = 'Compassion'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 1;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 2;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 3;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 4;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 5;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 6;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 7;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 8;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 9;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 10;
update npc set instinto = (select id from instinto where nome = 'Criticism'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 11;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 12;
update npc set instinto = (select id from instinto where nome = 'Innovation'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 13;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 14;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 15;
update npc set instinto = (select id from instinto where nome = 'Anger'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 16;
update npc set instinto = (select id from instinto where nome = 'Reliability'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 17;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 18;
update npc set instinto = (select id from instinto where nome = 'Recognition'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 19;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 20;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 21;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 22;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 23;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 24;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 25;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 26;
update npc set instinto = (select id from instinto where nome = 'Criticism'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 27;
update npc set instinto = (select id from instinto where nome = 'Reliability'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 28;
update npc set instinto = (select id from instinto where nome = 'Provision for friends/family'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 29;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 30;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 31;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 32;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 33;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 34;
update npc set instinto = (select id from instinto where nome = 'Reliability'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 35;
update npc set instinto = (select id from instinto where nome = 'Paranoia'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 36;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 37;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 38;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 39;
update npc set instinto = (select id from instinto where nome = 'Reliability'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 40;
update npc set instinto = (select id from instinto where nome = 'Sex'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 41;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 42;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 43;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 44;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 45;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 46;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 47;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 48;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 49;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 50;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 51;
update npc set instinto = (select id from instinto where nome = 'Innovation'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 52;
update npc set instinto = (select id from instinto where nome = 'Sex'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 53;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 54;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 55;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 56;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 57;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 58;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 59;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 60;
update npc set instinto = (select id from instinto where nome = 'Compassion'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 61;
update npc set instinto = (select id from instinto where nome = 'Rank'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 62;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 63;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 64;
update npc set instinto = (select id from instinto where nome = 'Hedonism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 65;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 66;
update npc set instinto = (select id from instinto where nome = 'Provision for friends/family'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 67;
update npc set instinto = (select id from instinto where nome = 'Criticism'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 68;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 69;
update npc set instinto = (select id from instinto where nome = 'Relaxation'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 70;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 71;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 72;
update npc set instinto = (select id from instinto where nome = 'Innovation'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 73;
update npc set instinto = (select id from instinto where nome = 'Selfishness'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 74;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 75;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 76;
update npc set instinto = (select id from instinto where nome = 'Sex'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 77;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 78;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 79;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 80;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 81;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 82;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 83;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 84;
update npc set instinto = (select id from instinto where nome = 'Rank'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 85;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 86;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 87;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 88;
update npc set instinto = (select id from instinto where nome = 'Provision for friends/family'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 89;
update npc set instinto = (select id from instinto where nome = 'Stoicism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 90;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 91;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 92;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 93;
update npc set instinto = (select id from instinto where nome = 'Selfishness'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 94;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 95;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 96;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 97;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 98;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 99;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 100;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 101;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 102;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 103;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 104;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 105;
update npc set instinto = (select id from instinto where nome = 'Rank'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 106;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 107;
update npc set instinto = (select id from instinto where nome = 'Connection'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 108;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 109;
update npc set instinto = (select id from instinto where nome = 'Paranoia'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 110;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 111;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 112;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 113;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 114;
update npc set instinto = (select id from instinto where nome = 'Anger'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 115;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 116;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 117;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 118;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 119;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 120;
update npc set instinto = (select id from instinto where nome = 'Selfishness'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 121;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 122;
update npc set instinto = (select id from instinto where nome = 'Hedonism'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 123;
update npc set instinto = (select id from instinto where nome = 'Paranoia'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 124;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 125;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 126;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 127;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 128;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 129;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 130;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 131;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Sibling'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 132;
update npc set instinto = (select id from instinto where nome = 'Curiosity'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 133;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 134;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 135;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Loan Shark'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 136;
update npc set instinto = (select id from instinto where nome = 'Selfishness'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 137;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Sibling'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 138;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 139;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 140;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 141;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 142;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 143;
update npc set instinto = (select id from instinto where nome = 'Connection'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 144;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 145;
update npc set instinto = (select id from instinto where nome = 'Relaxation'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 146;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 147;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 148;
update npc set instinto = (select id from instinto where nome = 'Anger'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 149;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Sibling'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 150;
update npc set instinto = (select id from instinto where nome = 'Narcissism'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 151;
update npc set instinto = (select id from instinto where nome = 'Anger'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 152;
update npc set instinto = (select id from instinto where nome = 'Anger'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 153;
update npc set instinto = (select id from instinto where nome = 'Hedonism'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 154;
update npc set instinto = (select id from instinto where nome = 'Relaxation'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 155;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 156;
update npc set instinto = (select id from instinto where nome = 'Discipline'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 157;
update npc set instinto = (select id from instinto where nome = 'Recognition'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 158;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 159;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 160;
update npc set instinto = (select id from instinto where nome = 'Paranoia'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 161;
update npc set instinto = (select id from instinto where nome = 'Selflessness'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 162;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 163;
update npc set instinto = (select id from instinto where nome = 'Sarcasm'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 164;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Head of Church'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 165;
update npc set instinto = (select id from instinto where nome = 'Relaxation'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 166;
update npc set instinto = (select id from instinto where nome = 'Relaxation'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 167;
update npc set instinto = (select id from instinto where nome = 'Sex'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 168;
update npc set instinto = (select id from instinto where nome = 'Recognition'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 169;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 170;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 171;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 172;
update npc set instinto = (select id from instinto where nome = 'Provision for friends/family'), obrigacao = (select id from obrigacao where nome = 'Children'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 173;
update npc set instinto = (select id from instinto where nome = 'Accuracy'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 174;
update npc set instinto = (select id from instinto where nome = 'Ambition'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 175;
update npc set instinto = (select id from instinto where nome = 'Provision for friends/family'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 176;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Sibling'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 177;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 178;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 179;
update npc set instinto = (select id from instinto where nome = 'Hedonism'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Societal Pressure') where id = 180;
update npc set instinto = (select id from instinto where nome = 'Laziness'), obrigacao = (select id from obrigacao where nome = 'Parent'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 181;
update npc set instinto = (select id from instinto where nome = 'Hedonism'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 182;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 183;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Gratitude') where id = 184;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Indenturehood') where id = 185;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 186;
update npc set instinto = (select id from instinto where nome = 'Independence'), obrigacao = (select id from obrigacao where nome = 'Head of State'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 187;
update npc set instinto = (select id from instinto where nome = 'Humor'), obrigacao = (select id from obrigacao where nome = 'Racial Identity'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 188;
update npc set instinto = (select id from instinto where nome = 'Criticism'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 189;
update npc set instinto = (select id from instinto where nome = 'Greed'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 190;
update npc set instinto = (select id from instinto where nome = 'Innovation'), obrigacao = (select id from obrigacao where nome = 'Employer'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 191;
update npc set instinto = (select id from instinto where nome = 'Innovation'), obrigacao = (select id from obrigacao where nome = 'Local Guild'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Religious') where id = 192;
update npc set instinto = (select id from instinto where nome = 'Cowardice'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Fiendish Contract') where id = 193;
update npc set instinto = (select id from instinto where nome = 'Decision'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 194;
update npc set instinto = (select id from instinto where nome = 'Heroism'), obrigacao = (select id from obrigacao where nome = 'Doctor'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Affair/Emotional Entanglement') where id = 195;
update npc set instinto = (select id from instinto where nome = 'Steal'), obrigacao = (select id from obrigacao where nome = 'Direct Superior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 196;
update npc set instinto = (select id from instinto where nome = 'Rank'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Oath') where id = 197;
update npc set instinto = (select id from instinto where nome = 'Procrastination'), obrigacao = (select id from obrigacao where nome = 'Hometown'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Career requirement') where id = 198;
update npc set instinto = (select id from instinto where nome = 'Revenge'), obrigacao = (select id from obrigacao where nome = 'Direct Inferior'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Familial Pressure') where id = 199;
update npc set instinto = (select id from instinto where nome = 'Honesty'), obrigacao = (select id from obrigacao where nome = 'Extended Family'), natureza_obrigacao = (select id from natureza_obrigacao where nome = 'Monetary') where id = 200;

create sequence preferencias_npcs_id_seq;

create table preferencias_npcs(
	id int NOT NULL DEFAULT nextval('preferencias_npcs_id_seq'), 
	npc int references npc(id),
	negocio int references negocio(id),
	seed numeric(100,10),
	PRIMARY KEY (id)
);

insert into preferencias_npcs(npc, negocio, seed)
(
	select npc.id npc, negocio.id negocio, random() seed
	from npc, negocio
);

create sequence cliente_negocio_id_seq;

create table cliente_negocio(
	id int NOT NULL DEFAULT nextval('cliente_negocio_id_seq'), 
	negocio int references negocio(id),
	comProfissao int references profissao(id),
	semProfissao int references profissao(id),
	idadeMaior int,
	idadeMenor int,
	riquezaMaior int,
	riquezaMenor int,
	comSexo int references sexo(id),
	semSexo int references sexo(id),
	--comReligiao 
	--semReligiao
	mesmoBairro boolean,
	modificador numeric(100, 10),
	PRIMARY KEY (id)
);


INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Venetur'),  (SELECT id FROM profissao where nome = 'Turista'),null,null,null,null,null,null,null,false,6);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Venetur'), null, (SELECT id FROM profissao where nome = 'Turista'),null,null,null,null,null,null,false,0.15);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Venetian Tur'),  (SELECT id FROM profissao where nome = 'Turista'),null,null,null,null,null,null,null,false,6);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Venetian Tur'), null, (SELECT id FROM profissao where nome = 'Turista'),null,null,null,null,null,null,false,0.15);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Barbarian'), null,null,16,40,null,null,null,null,false,4);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Barbarian'), null,null,40,null,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Barbarian'), null,null,null,16,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Club Delirium'), null,null,16,40,null,null,null,null,false,4);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Club Delirium'), null,null,40,null,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Club Delirium'), null,null,null,16,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Inferno'), null,null,16,40,null,null,null,null,false,4);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Inferno'), null,null,40,null,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Inferno'), null,null,null,16,null,null,null,null,false,0.25);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Unicredit'), null,null,null,18,null,null,null,null,false,0.1);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Banco San Marco'), null,null,null,18,null,null,null,null,false,0.1);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Santa Croce – Casa'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Dorsoduro – Casa 1'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Dorsoduro – Casa 2'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Corpo de Bombeiros'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Delegacia'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Escola de ensino médio'), null,null,18,15,null,null,null,null,false,0.1);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Escola de italiano'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Escola de primário'), null,null,15,null,null,null,null,null,false,0.1);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'D’Alto Rampone'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Droga 24'), null,null,null,null,null,null,null,null,false,0.75);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Vene++'), null,null,null,null,null,null,null,null,false,0.75);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Farmacia San Polo'), null,null,null,null,null,null,null,null,false,0.75);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Hospital'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Royal Hotel'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'The Prophecy'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Olive Tower'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Obsidian Sanctum'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Chiesa di San Simeone Piccolo'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Chiesa dell Abbazia della Misericordia'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Chiesa di San Giacomo di Rialto'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Chiesa di San Barnaba'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Basilica di San Marco'), null,null,null,null,null,null,null,null,false,3);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Chiesa di San Lorenzo'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Lan House'), null,null,null,null,null,null,null,null,false,0.5);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Sacca San Biagio'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Givenchy'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Dolce & Gabbana'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Prada'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Versace'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Gucci'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Fendi'), null,null,null,null,null,null,null,null,false,1.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Castello Traghetto'), null,null,null,null,null,null,null,null,false,0.5);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Mecânica de barcos'), null,null,null,null,null,null,null,null,false,0.6);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Universidade'), null,null,null,null,null,null,null,null,false,0.4);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Piazza San Marco'), null,null,null,null,null,null,null,null,false,2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Posto de gasolina para barco'), null,null,null,null,null,null,null,null,false,0);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Prefeitura'), null,null,null,null,null,null,null,null,false,0.2);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Vino Vero'), null,null,null,null,null,null,null,null,false,1.3);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Cantina do Spade'), null,null,null,null,null,null,null,null,false,1.3);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Pizza al Volo'), null,null,null,null,null,null,null,null,false,0.8);
INSERT INTO cliente_negocio(negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) values ((select id from negocio where nome = 'Rodoviária'), null,null,null,null,null,null,null,null,false,0.3);


create sequence profissao_npc_id_seq;

create table profissao_npc(
	id int NOT NULL DEFAULT nextval('profissao_npc_id_seq'), 
	npc int NOT NULL references npc(id),
	profissao int NOT NULL references profissao(id),
	negocio int references negocio(id),
	PRIMARY KEY (id)
);



insert into profissao_npc(npc, profissao, negocio) values (1, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (2, (select id from profissao where nome = 'Garçom'), (select id from negocio where nome = 'Trattoria Dai Tosi'));
insert into profissao_npc(npc, profissao, negocio) values (2, (select id from profissao where nome = 'Artista'), (select id from negocio where nome = 'San Polo – Galeria'));
insert into profissao_npc(npc, profissao, negocio) values (3, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (4, (select id from profissao where nome = 'Padre'), (select id from negocio where nome = 'Chiesa di San Simeone Piccolo'));
insert into profissao_npc(npc, profissao, negocio) values (5, (select id from profissao where nome = 'Prostituta'), (select id from negocio where nome = 'Beco Cannaregio (Prostituição)'));
insert into profissao_npc(npc, profissao, negocio) values (6, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (7, (select id from profissao where nome = 'Morador de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (8, (select id from profissao where nome = 'Cozinheiro'), (select id from negocio where nome = 'Trattoria Dai Tosi'));
insert into profissao_npc(npc, profissao, negocio) values (9, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Parco Savorgnan'));
insert into profissao_npc(npc, profissao, negocio) values (10, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (11, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (12, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (13, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (14, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (15, (select id from profissao where nome = 'Piloto de Táxi'),null);
insert into profissao_npc(npc, profissao, negocio) values (16, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Venetur'));
insert into profissao_npc(npc, profissao, negocio) values (17, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (18, (select id from profissao where nome = 'Barman'), (select id from negocio where nome = 'Inferno'));
insert into profissao_npc(npc, profissao, negocio) values (19, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
--insert into profissao_npc(npc, profissao, negocio) values (20, (select id from profissao where nome = 'Criança'),null);
insert into profissao_npc(npc, profissao, negocio) values (21, (select id from profissao where nome = 'Operador de Máquina'), (select id from negocio where nome = 'Sacca San Biagio'));
insert into profissao_npc(npc, profissao, negocio) values (22, (select id from profissao where nome = 'Mecânico de barco'), (select id from negocio where nome = 'Loja de barcos'));
insert into profissao_npc(npc, profissao, negocio) values (23, (select id from profissao where nome = 'Ourives'), (select id from negocio where nome = 'Gems of Venice'));
insert into profissao_npc(npc, profissao, negocio) values (24, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (25, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (26, (select id from profissao where nome = 'Ourives'), (select id from negocio where nome = 'Ohmyblue'));
insert into profissao_npc(npc, profissao, negocio) values (27, (select id from profissao where nome = 'Funcionário de Supermercado'), (select id from negocio where nome = 'Castello – Coop'));
insert into profissao_npc(npc, profissao, negocio) values (28, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Inferno'));
insert into profissao_npc(npc, profissao, negocio) values (29, (select id from profissao where nome = 'Motorista de Ônibus'), (select id from negocio where nome = 'Rodoviária'));
insert into profissao_npc(npc, profissao, negocio) values (30, (select id from profissao where nome = 'Funcionário de Rodoviária'), (select id from negocio where nome = 'Rodoviária'));
insert into profissao_npc(npc, profissao, negocio) values (31, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (32, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Escola de italiano'));
insert into profissao_npc(npc, profissao, negocio) values (33, (select id from profissao where nome = 'Prostituta'), (select id from negocio where nome = 'Beco Santa Croce (Prostituição)'));
insert into profissao_npc(npc, profissao, negocio) values (34, (select id from profissao where nome = 'Piloto de Barco'),null);
insert into profissao_npc(npc, profissao, negocio) values (34, (select id from profissao where nome = 'Artista'), (select id from negocio where nome = 'Castello – Galeria'));
insert into profissao_npc(npc, profissao, negocio) values (35, (select id from profissao where nome = 'Funcionário de Banco'), (select id from negocio where nome = 'Unicredit'));
insert into profissao_npc(npc, profissao, negocio) values (36, (select id from profissao where nome = 'Padre'), (select id from negocio where nome = 'Chiesa di San Giacomo di Rialto'));
insert into profissao_npc(npc, profissao, negocio) values (37, (select id from profissao where nome = 'Político'), (select id from negocio where nome = 'Prefeitura'));
insert into profissao_npc(npc, profissao, negocio) values (38, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Givenchy'));
insert into profissao_npc(npc, profissao, negocio) values (39, (select id from profissao where nome = 'Piloto de Táxi'),null);
insert into profissao_npc(npc, profissao, negocio) values (39, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (40, (select id from profissao where nome = 'Piloto de Barco'),null);
insert into profissao_npc(npc, profissao, negocio) values (41, (select id from profissao where nome = 'Operador de Máquina'), (select id from negocio where nome = 'Sacca San Biagio'));
insert into profissao_npc(npc, profissao, negocio) values (42, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (43, (select id from profissao where nome = 'Gerente de Hotel'), (select id from negocio where nome = 'Royal Hotel'));
insert into profissao_npc(npc, profissao, negocio) values (44, (select id from profissao where nome = 'Piloto de Barco'), (select id from negocio where nome = 'Venetur'));
insert into profissao_npc(npc, profissao, negocio) values (45, (select id from profissao where nome = 'Funcionário de Rodoviária'), (select id from negocio where nome = 'Rodoviária'));
insert into profissao_npc(npc, profissao, negocio) values (46, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (47, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (48, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (49, (select id from profissao where nome = 'Bibliotecário'), (select id from negocio where nome = 'Oceanic'));
--insert into profissao_npc(npc, profissao, negocio) values (50, (select id from profissao where nome = 'Criança'),null);
insert into profissao_npc(npc, profissao, negocio) values (51, (select id from profissao where nome = 'Morador de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (52, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (53, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (54, (select id from profissao where nome = 'Diretor de Faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (55, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (56, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (57, (select id from profissao where nome = 'Enfermeiro'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (58, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
--insert into profissao_npc(npc, profissao, negocio) values (59, (select id from profissao where nome = 'Criança'),null);
insert into profissao_npc(npc, profissao, negocio) values (60, (select id from profissao where nome = 'Camareira'), (select id from negocio where nome = 'Olive Tower'));
insert into profissao_npc(npc, profissao, negocio) values (61, (select id from profissao where nome = 'Transporte de Drogas'),null);
insert into profissao_npc(npc, profissao, negocio) values (62, (select id from profissao where nome = 'Morador de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (63, (select id from profissao where nome = 'Esteticista'), (select id from negocio where nome = 'Salão de Beleza - Santa Croce'));
insert into profissao_npc(npc, profissao, negocio) values (63, (select id from profissao where nome = 'Prostituta'), (select id from negocio where nome = 'Beco Dorsoduro (Prostituição)'));
insert into profissao_npc(npc, profissao, negocio) values (64, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Castello'));
insert into profissao_npc(npc, profissao, negocio) values (64, (select id from profissao where nome = 'Vendedor de Drogas'),null);
insert into profissao_npc(npc, profissao, negocio) values (65, (select id from profissao where nome = 'Gerente de Hotel'), (select id from negocio where nome = 'The Prophecy'));
insert into profissao_npc(npc, profissao, negocio) values (66, (select id from profissao where nome = 'Enfermeiro'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (67, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (68, (select id from profissao where nome = 'Bombeiro'), (select id from negocio where nome = 'Corpo de Bombeiros'));
insert into profissao_npc(npc, profissao, negocio) values (69, (select id from profissao where nome = 'Barman'), (select id from negocio where nome = 'Club Delirium'));
insert into profissao_npc(npc, profissao, negocio) values (69, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (70, (select id from profissao where nome = 'Transporte de Drogas'),null);
--insert into profissao_npc(npc, profissao, negocio) values (71, (select id from profissao where nome = 'Criança'),null);
insert into profissao_npc(npc, profissao, negocio) values (72, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Club Delirium'));
insert into profissao_npc(npc, profissao, negocio) values (72, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (73, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (74, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Campo d''Arsenal'));
insert into profissao_npc(npc, profissao, negocio) values (75, (select id from profissao where nome = 'Farmacêutico'), (select id from negocio where nome = 'Droga 24'));
insert into profissao_npc(npc, profissao, negocio) values (76, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Escola de ensino médio'));
insert into profissao_npc(npc, profissao, negocio) values (77, (select id from profissao where nome = 'Locatário'), (select id from negocio where nome = 'Santa Croce – Casa'));
insert into profissao_npc(npc, profissao, negocio) values (78, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Dolce & Gabbana'));
insert into profissao_npc(npc, profissao, negocio) values (79, (select id from profissao where nome = 'Prostituta'), (select id from negocio where nome = 'Beco Castello (Prostituição)'));
insert into profissao_npc(npc, profissao, negocio) values (80, (select id from profissao where nome = 'Funcionário de Supermercado'), (select id from negocio where nome = 'Castello – Coop'));
insert into profissao_npc(npc, profissao, negocio) values (81, (select id from profissao where nome = 'Esteticista'), (select id from negocio where nome = 'Salão de Beleza – Castello'));
insert into profissao_npc(npc, profissao, negocio) values (82, (select id from profissao where nome = 'Frentista'), (select id from negocio where nome = 'Posto de gasolina para barco'));
insert into profissao_npc(npc, profissao, negocio) values (83, (select id from profissao where nome = 'Médico'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (84, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (85, (select id from profissao where nome = 'Faxineiro de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (86, (select id from profissao where nome = 'Detetive'),null);
insert into profissao_npc(npc, profissao, negocio) values (87, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Unicredit'));
insert into profissao_npc(npc, profissao, negocio) values (88, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (89, (select id from profissao where nome = 'Morador de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (90, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Campo d''Arsenal'));
insert into profissao_npc(npc, profissao, negocio) values (91, (select id from profissao where nome = 'Gerente de Hotel'), (select id from negocio where nome = 'Olive Tower'));
insert into profissao_npc(npc, profissao, negocio) values (92, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (93, (select id from profissao where nome = 'Funcionário de Museu'), (select id from negocio where nome = 'Museo Ebraico Di Venezia'));
insert into profissao_npc(npc, profissao, negocio) values (94, (select id from profissao where nome = 'Farmacêutico'), (select id from negocio where nome = 'Vene++'));
insert into profissao_npc(npc, profissao, negocio) values (95, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (96, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Club Delirium'));
insert into profissao_npc(npc, profissao, negocio) values (96, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (97, (select id from profissao where nome = 'Faxineiro de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (98, (select id from profissao where nome = 'Funcionário de Banco'), (select id from negocio where nome = 'Banco San Marco'));
insert into profissao_npc(npc, profissao, negocio) values (99, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (100, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (101, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (102, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (103, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (104, (select id from profissao where nome = 'Camareira'), (select id from negocio where nome = 'Obsidian Sanctum'));
insert into profissao_npc(npc, profissao, negocio) values (104, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (105, (select id from profissao where nome = 'Funcionário de Supermercado'), (select id from negocio where nome = 'Dorsoduro – Coop'));
insert into profissao_npc(npc, profissao, negocio) values (106, (select id from profissao where nome = 'Mecânico de barco'), (select id from negocio where nome = 'Loja de barcos'));
insert into profissao_npc(npc, profissao, negocio) values (107, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Barbarian'));
insert into profissao_npc(npc, profissao, negocio) values (108, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (109, (select id from profissao where nome = 'Faxineiro de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (110, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Barbarian'));
insert into profissao_npc(npc, profissao, negocio) values (110, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (111, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (112, (select id from profissao where nome = 'Funcionário de Rodoviária'), (select id from negocio where nome = 'Rodoviária'));
insert into profissao_npc(npc, profissao, negocio) values (112, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (113, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Banco San Marco'));
insert into profissao_npc(npc, profissao, negocio) values (114, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Gucci'));
insert into profissao_npc(npc, profissao, negocio) values (115, (select id from profissao where nome = 'Enfermeiro'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (116, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Lan House'));
insert into profissao_npc(npc, profissao, negocio) values (117, (select id from profissao where nome = 'Garçom'), (select id from negocio where nome = 'Pizza al Volo'));
insert into profissao_npc(npc, profissao, negocio) values (118, (select id from profissao where nome = 'Piloto de Barco'),null);
insert into profissao_npc(npc, profissao, negocio) values (119, (select id from profissao where nome = 'Camareira'), (select id from negocio where nome = 'The Prophecy'));
insert into profissao_npc(npc, profissao, negocio) values (119, (select id from profissao where nome = 'Prostituta'), (select id from negocio where nome = 'Rodoviária (Prostituição)'));
insert into profissao_npc(npc, profissao, negocio) values (120, (select id from profissao where nome = 'Farmacêutico'), (select id from negocio where nome = 'Farmacia San Polo'));
insert into profissao_npc(npc, profissao, negocio) values (121, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (122, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (123, (select id from profissao where nome = 'Barman'), (select id from negocio where nome = 'Barbarian'));
insert into profissao_npc(npc, profissao, negocio) values (123, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (124, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (125, (select id from profissao where nome = 'Faxineiro de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (126, (select id from profissao where nome = 'Tatuador'), (select id from negocio where nome = 'Tatoo Parlor'));
insert into profissao_npc(npc, profissao, negocio) values (127, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Fendi'));
insert into profissao_npc(npc, profissao, negocio) values (128, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (129, (select id from profissao where nome = 'Cozinheiro'), (select id from negocio where nome = 'Pizza al Volo'));
insert into profissao_npc(npc, profissao, negocio) values (130, (select id from profissao where nome = 'Padre'), (select id from negocio where nome = 'Chiesa di San Barnaba'));
insert into profissao_npc(npc, profissao, negocio) values (131, (select id from profissao where nome = 'Operador de máquina'), (select id from negocio where nome = 'Sacca San Biagio'));
insert into profissao_npc(npc, profissao, negocio) values (132, (select id from profissao where nome = 'Piloto de Táxi'),null);
insert into profissao_npc(npc, profissao, negocio) values (133, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (134, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (135, (select id from profissao where nome = 'Segurança'), (select id from negocio where nome = 'Inferno'));
insert into profissao_npc(npc, profissao, negocio) values (135, (select id from profissao where nome = 'Funcionário de Rodoviária'), (select id from negocio where nome = 'Rodoviária'));
insert into profissao_npc(npc, profissao, negocio) values (136, (select id from profissao where nome = 'Advogado'), (select id from negocio where nome = 'D''Alto Rampone'));
insert into profissao_npc(npc, profissao, negocio) values (137, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Tabacaria'));
insert into profissao_npc(npc, profissao, negocio) values (137, (select id from profissao where nome = 'Vendedor de Drogas'),null);
insert into profissao_npc(npc, profissao, negocio) values (138, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (139, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (140, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (141, (select id from profissao where nome = 'Gerente de Hotel'), (select id from negocio where nome = 'Obsidian Sanctum'));
insert into profissao_npc(npc, profissao, negocio) values (142, (select id from profissao where nome = 'Bombeiro'), (select id from negocio where nome = 'Corpo de Bombeiros'));
insert into profissao_npc(npc, profissao, negocio) values (143, (select id from profissao where nome = 'Artista'), (select id from negocio where nome = 'Dorsoduro – Galeria'));
insert into profissao_npc(npc, profissao, negocio) values (144, (select id from profissao where nome = 'Guarda do Tráfico'),null);
insert into profissao_npc(npc, profissao, negocio) values (145, (select id from profissao where nome = 'Padre'), (select id from negocio where nome = 'Basilica di San Marco'));
insert into profissao_npc(npc, profissao, negocio) values (146, (select id from profissao where nome = 'Morador de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (147, (select id from profissao where nome = 'Detetive'),null);
insert into profissao_npc(npc, profissao, negocio) values (148, (select id from profissao where nome = 'Enfermeiro'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (149, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (150, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Piazza San Marco'));
insert into profissao_npc(npc, profissao, negocio) values (151, (select id from profissao where nome = 'Bibliotecário'), (select id from negocio where nome = 'Global'));
insert into profissao_npc(npc, profissao, negocio) values (152, (select id from profissao where nome = 'Funcionário de Museu'), (select id from negocio where nome = 'Leonardo da Vinci Museum'));
insert into profissao_npc(npc, profissao, negocio) values (153, (select id from profissao where nome = 'DJ'), (select id from negocio where nome = 'Barbarian'));
insert into profissao_npc(npc, profissao, negocio) values (154, (select id from profissao where nome = 'Funcionário de Supermercado'), (select id from negocio where nome = 'Dorsoduro – Coop'));
insert into profissao_npc(npc, profissao, negocio) values (154, (select id from profissao where nome = 'Transporte de Drogas'),null);
insert into profissao_npc(npc, profissao, negocio) values (155, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (156, (select id from profissao where nome = 'Piloto de Táxi'),null);
insert into profissao_npc(npc, profissao, negocio) values (157, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (158, (select id from profissao where nome = 'Vendedor de Drogas'),null);
insert into profissao_npc(npc, profissao, negocio) values (159, (select id from profissao where nome = 'Professor'), (select id from negocio where nome = 'Escola de ensino médio'));
insert into profissao_npc(npc, profissao, negocio) values (160, (select id from profissao where nome = 'Camareira'), (select id from negocio where nome = 'Royal Hotel'));
insert into profissao_npc(npc, profissao, negocio) values (161, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (162, (select id from profissao where nome = 'Locatário'), (select id from negocio where nome = 'Dorsoduro – Casa 1'));
insert into profissao_npc(npc, profissao, negocio) values (163, (select id from profissao where nome = 'Bombeiro'),null);
insert into profissao_npc(npc, profissao, negocio) values (164, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (165, (select id from profissao where nome = 'Faxineiro de rua'),null);
insert into profissao_npc(npc, profissao, negocio) values (166, (select id from profissao where nome = 'Piloto de Barco'), (select id from negocio where nome = 'Venetian Tur'));
--insert into profissao_npc(npc, profissao, negocio) values (167, (select id from profissao where nome = 'Criança'),null);
insert into profissao_npc(npc, profissao, negocio) values (168, (select id from profissao where nome = 'Ourives'), (select id from negocio where nome = 'Cartier'));
insert into profissao_npc(npc, profissao, negocio) values (169, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Venetian Tur'));
insert into profissao_npc(npc, profissao, negocio) values (170, (select id from profissao where nome = 'Cozinheiro'), (select id from negocio where nome = 'Vino Vero'));
insert into profissao_npc(npc, profissao, negocio) values (171, (select id from profissao where nome = 'Esteticista'), (select id from negocio where nome = 'Salão de Beleza - Dorsoduro'));
insert into profissao_npc(npc, profissao, negocio) values (172, (select id from profissao where nome = 'DJ'), (select id from negocio where nome = 'Club Delirium'));
insert into profissao_npc(npc, profissao, negocio) values (173, (select id from profissao where nome = 'Turista'),null);
insert into profissao_npc(npc, profissao, negocio) values (174, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (175, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Prada'));
insert into profissao_npc(npc, profissao, negocio) values (176, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (177, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (178, (select id from profissao where nome = 'Político'), (select id from negocio where nome = 'Prefeitura'));
insert into profissao_npc(npc, profissao, negocio) values (179, (select id from profissao where nome = 'Aposentado'),null);
insert into profissao_npc(npc, profissao, negocio) values (180, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Versace'));
insert into profissao_npc(npc, profissao, negocio) values (181, (select id from profissao where nome = 'Médico'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (182, (select id from profissao where nome = 'Advogado'), (select id from negocio where nome = 'D''Alto Rampone'));
insert into profissao_npc(npc, profissao, negocio) values (183, (select id from profissao where nome = 'Funcionário de Museu'), (select id from negocio where nome = 'Museo Correr'));
insert into profissao_npc(npc, profissao, negocio) values (184, (select id from profissao where nome = 'Cozinheiro'), (select id from negocio where nome = 'Cantina do Spade'));
insert into profissao_npc(npc, profissao, negocio) values (185, (select id from profissao where nome = 'Policial'),null);
insert into profissao_npc(npc, profissao, negocio) values (186, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Piazza San Marco'));
insert into profissao_npc(npc, profissao, negocio) values (187, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (188, (select id from profissao where nome = 'DJ'), (select id from negocio where nome = 'Inferno'));
insert into profissao_npc(npc, profissao, negocio) values (189, (select id from profissao where nome = 'Garçom'), (select id from negocio where nome = 'Vino Vero'));
insert into profissao_npc(npc, profissao, negocio) values (190, (select id from profissao where nome = 'Garçom'), (select id from negocio where nome = 'Cantina do Spade'));
insert into profissao_npc(npc, profissao, negocio) values (190, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (191, (select id from profissao where nome = 'Estudante básico'), (select id from negocio where nome = 'Escola de primário'));
insert into profissao_npc(npc, profissao, negocio) values (192, (select id from profissao where nome = 'Médico'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (193, (select id from profissao where nome = 'Político'), (select id from negocio where nome = 'Prefeitura'));
insert into profissao_npc(npc, profissao, negocio) values (194, (select id from profissao where nome = 'Locatário'), (select id from negocio where nome = 'Dorsoduro – Casa 2'));
insert into profissao_npc(npc, profissao, negocio) values (195, (select id from profissao where nome = 'Piloto de Barco'),null);
insert into profissao_npc(npc, profissao, negocio) values (196, (select id from profissao where nome = 'Bombeiro'), (select id from negocio where nome = 'Corpo de Bombeiros'));
insert into profissao_npc(npc, profissao, negocio) values (197, (select id from profissao where nome = 'Enfermeiro'), (select id from negocio where nome = 'Hospital'));
insert into profissao_npc(npc, profissao, negocio) values (197, (select id from profissao where nome = 'Estudante faculdade'), (select id from negocio where nome = 'Universidade'));
insert into profissao_npc(npc, profissao, negocio) values (198, (select id from profissao where nome = 'Vendedor'), (select id from negocio where nome = 'Vino Veneza'));
insert into profissao_npc(npc, profissao, negocio) values (199, (select id from profissao where nome = 'Guia turístico'), (select id from negocio where nome = 'Parco Savorgnan'));
insert into profissao_npc(npc, profissao, negocio) values (200, (select id from profissao where nome = 'Faxineiro de rua'),null);

create sequence humor_id_seq;

create table humor(
	id int NOT NULL DEFAULT nextval('humor_id_seq'), 
	nome varchar(255),
 	PRIMARY KEY (id)
);

insert into humor(id, nome) values (1, 'Choleric');
insert into humor(id, nome) values (2, 'Melancholy');
insert into humor(id, nome) values (3, 'Phlegmatic');
insert into humor(id, nome) values (4, 'Sanguine');

create sequence predator_type_id_seq;

create table predator_type(
	id int NOT NULL DEFAULT nextval('predator_type_id_seq'), 
	nome varchar(255),
 	PRIMARY KEY (id)
);

insert into predator_type(id, nome) values (1, 'Scene Queen');
insert into predator_type(id, nome) values (2, 'Sandman');
insert into predator_type(id, nome) values (3, 'Farmer');
insert into predator_type(id, nome) values (4, 'Osiris');
insert into predator_type(id, nome) values (5, 'Cleaver');
insert into predator_type(id, nome) values (6, 'Bagger');
insert into predator_type(id, nome) values (7, 'Alleycat');
insert into predator_type(id, nome) values (8, 'Consensualist');
insert into predator_type(id, nome) values (9, 'Siren');

create sequence clan_id_seq;

create table clan(
	id int NOT NULL DEFAULT nextval('clan_id_seq'), 
	nome varchar(255),
 	PRIMARY KEY (id)
);

insert into clan(id, nome) values (1, 'Capadoccio');
insert into clan(id, nome) values (2, 'Toreador');
insert into clan(id, nome) values (3, 'Brujah');
insert into clan(id, nome) values (4, 'Nosferatu');
insert into clan(id, nome) values (5, 'Assamita');
insert into clan(id, nome) values (6, 'Giovanni');
insert into clan(id, nome) values (7, 'Gangrel');
insert into clan(id, nome) values (8, 'Ventrue');
insert into clan(id, nome) values (10, 'Caitiff');
insert into clan(id, nome) values (11, 'Malkavian');


create sequence vampiro_id_seq;

create table vampiro(
	id int NOT NULL DEFAULT nextval('vampiro_id_seq') references npc(id), 
	geracao int NOT NULL,
	clan int NOT NULL references clan(id),
	predator_type int NOT NULL references predator_type(id),
 	PRIMARY KEY (id)
);

create sequence health_id_seq;

create table Health(
	id int NOT NULL DEFAULT nextval('health_id_seq'), 
	npc int NOT NULL references npc(id),
	index int NOT NULL,
	value varchar(255),
	PRIMARY KEY (id)
);

