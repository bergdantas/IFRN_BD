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
CREATE TABLE IF NOT EXISTS endereco(
	cidade VARCHAR(15) NOT NULL,
	rua VARCHAR(15) NOT NULL,
	numero VARCHAR(5) NOT NULL,
	idPessoa INT NOT NULL,
	CONSTRAINT fk_idPessoa FOREIGN KEY (idPessoa) REFERENCES vendedor(idPessoa) 
);

--crio a tabela vende
CREATE TABLE IF NOT EXISTS vende(
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
