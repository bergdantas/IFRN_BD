--JÁ FEITOS ONTEM
--inserindo vendedores na base de dados
INSERT INTO vendedor(nome) VALUES ('João Dias');
INSERT INTO vendedor(nome) VALUES ('Marluce Josefina');
INSERT INTO vendedor(nome) VALUES ('Jorge Felix');

--inserindo telefones na base de dados
INSERT INTO telefone(idPessoa, numero) VALUES (1, '84956254875');
INSERT INTO telefone(idPessoa, numero) VALUES (1, '84985458754');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84985425478');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84955875457');
INSERT INTO telefone(idPessoa, numero) VALUES (2, '84958754215');
INSERT INTO telefone(idPessoa, numero) VALUES (3, '84987542157');

--DE HOJE
--inserindo carros na base de dados
INSERT INTO carro(marca, modelo, ano) VALUES 
('Fiat', 'Uno', '2010'),
('Volkswagen', 'Gol', '2015'),
('Chevrolet', 'Onix', '2018'),
('Ford', 'Fiesta', '2017'),
('Honda', 'Civic', '2020'),
('Toyota', 'Corolla', '2021'),
('Nissan', 'Kicks', '2022'),
('Hyundai', 'HB20', '2019'),
('Renault', 'Kwid', '2020'),
('Fiat', 'Argo', '2021'),
('Volkswagen', 'Polo', '2019'),
('Chevrolet', 'Cruze', '2020'),
('Ford', 'EcoSport', '2021'),
('Honda', 'HR-V', '2021'),
('Toyota', 'Yaris', '2021'),
('Nissan', 'March', '2020'),
('Hyundai', 'Creta', '2021'),
('Renault', 'Sandero', '2019'),
('Fiat', 'Strada', '2021'),
('Volkswagen', 'T-Cross', '2021');

--inserindo endereços na base de dados
INSERT INTO endereco(cidade, rua, numero, idPessoa) VALUES
('São Paulo', 'Rua das Flores', '123', 1),
('Rio de Janeiro', 'Avenida Brasil', '456', 2),
('Belo Horizonte', 'Rua do Sol', '789', 3);

--inserindo vendas na base de dados
INSERT INTO vende(idPessoa, idCarro, dataDaVenda, valor) VALUES
(1, 1, '2024-01-10', 20000.00),  -- João Dias vendeu Fiat Uno
(2, 2, '2024-01-11', 25000.00),  -- Marluce Josefina vendeu Volkswagen Gol
(3, 3, '2024-01-12', 30000.00),  -- Jorge Felix vendeu Chevrolet Onix
(1, 4, '2024-01-13', 28000.00),  -- João Dias vendeu Ford Fiesta
(2, 5, '2024-01-14', 35000.00),  -- Marluce Josefina vendeu Honda Civic
(3, 6, '2024-01-15', 40000.00),  -- Jorge Felix vendeu Toyota Corolla
(1, 7, '2024-01-16', 32000.00),  -- João Dias vendeu Nissan Kicks
(2, 8, '2024-01-17', 27000.00),  -- Marluce Josefina vendeu Hyundai HB20
(3, 9, '2024-01-18', 22000.00),  -- Jorge Felix vendeu Renault Kwid
(1, 10, '2024-01-19', 30000.00); -- João Dias vendeu Fiat Argo
