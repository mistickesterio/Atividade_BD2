create DATABASE Fornecedor_alimenticio;
USE Fornecedor_alimenticio;

CREATE TABLE Cliente(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    CPF VARCHAR(11),
    PRIMARY KEY (ID)
);

CREATE TABLE Produto(
    ID VARCHAR(2) NOT NULL,
    Nome VARCHAR(255),
    PRIMARY KEY(iD)
);

CREATE TABLE Atendimento(
    ID INT NOT NULL AUTO_INCREMENT,
    Local VARCHAR(255),
    Data DATETIME,
    ClienteID INT NOT NULL,
    IDProduto VARCHAR(2) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
    FOREIGN KEY(IDProduto) REFERENCES Produto(ID)
);

INSERT INTO Cliente (Nome,CPF) VALUES
('Lucas', '12312312312'),
('Luiz', '32132132132'),
('Lourival', '12312312312'),
('Otavio', '32132132132'),
('Kerolaine', '32132132132'),
('Thiago', '34534534534');

INSERT INTO Produto (Nome,ID) VALUES
('Pipoca', '01'),
('Docê de Leite', '02'),
('Manteiga', '03'),
('Pastél', '04'),
('Coca Cola', '05'),
('Cachorro quente', '06');

INSERT INTO Atendimento (Local, Data, ClienteID, IDProduto)VALUES
('Supermercado', '2022-05-25 08:30:05','01', '01'),
('Padaria', '2022-05-27 10:00:05','02', '02'),
('Restaurante', '2022-06-15 13:34:05','03', '03'),
('Lanchonete', '2022-07-01 07:30:05','04', '04'),
('Praça de alimentação Santana', '2022-08-14 14:30:05','05', '05'),
('Shopping', '2022-08-14 14:30:05','06', '06'),
('Praça de alimentação Barueri', '2022-08-14 14:30:05','03', '02'),
('Feira de Santana', '2022-09-12 15:30:05','05', '01');

SELECT * FROM Atendimento as Relacionamentos
INNER JOIN Cliente
ON Relacionamentos.ClienteID = Cliente.ID
INNER JOIN Produto
ON Relacionamentos.IDProduto = Produto.ID;
