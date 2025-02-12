-- crio a tabela vendedor
CREATE TABLE IF NOT EXISTS vendedor(
	idPessoa SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL
);

--crio a tabela telefone
CREATE TABLE IF NOT EXISTS telefone(
	idPessoa INT NOT NULL, 
	numero CHAR(11) NOT NULL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa) 
);

--crio a tabela carro
CREATE TABLE IF NOT EXISTS carro (
	idCarro SERIAL PRIMARY KEY,
	marca VARCHAR(15) NOT NULL,
	modelo VARCHAR(15) NOT NULL,
	ano CHAR(4)
);

--crio a tabela endereço
CREATE TABLE endereco(
	cidade VARCHAR(15) NOT NULL,
	rua VARCHAR(15) NOT NULL,
	numero VARCHAR(5) NOT NULL,
	idPessoa INT NOT NULL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa) 
);

--crio a tabela vende
CREATE TABLE vende(
	idVenda SERIAL PRIMARY KEY,
	idPessoa INT NOT NULL,
	idCarro INT NOT NULL,
	dataDaVenda DATE,
	valor REAL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa),
	CONSTRAINT fk_idCarro FOREIGN KEY (idCarro) REFERENCES carro(idCarro)
);

--adiciono um atributo a tabela
ALTER TABLE carro
ADD COLUMN cor varchar(15) NOT NULL;

--removo um atributo da tabela
ALTER TABLE carro
DROP COLUMN cor;

--apago as duas tabelas criadas anteriormente
DROP TABLE telefone;
DROP TABLE pessoa;

--inserindo vendedores na base de dados
INSERT INTO vendedor(nome) VALUES ('João Dias');
INSERT INTO vendedor(nome) VALUES ('Marluce Josefina');
INSERT INTO vendedor(nome) VALUES ('Jorge Felix');

INSERT INTO telefone(idPessoa, numero) VALUES (1, '84956254875');
INSERT INTO telefone(idPessoa, numero) VALUES (1, '84985458754');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84985425478');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84955875457');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84958754215');
INSERT INTO telefone(idPessoa, numero) VALUES (3, '84987542157');

--alterando o nome de um vendedor
UPDATE vendedor
SET nome = 'Marluce Barros'
WHERE idPessoa = 2;

--deletando um vendedor
DELETE FROM telefone
WHERE idPessoa = 3
DELETE FROM vendedor
WHERE idPessoa = 3;
