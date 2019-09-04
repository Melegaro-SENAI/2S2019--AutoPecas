CREATE DATABASE T_AutoPecas

USE T_AutoPecas

CREATE TABLE Usuarios 
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Email VARCHAR(255) NOT NULL UNIQUE
	,Senha VARCHAR(255) NOT NULL
);

CREATE TABLE Fornecedores
(
	IdFornecedor INT PRIMARY KEY IDENTITY
	,CNPJ VARCHAR(255) NOT NULL UNIQUE
	,RazaoSocial VARCHAR(255) NOT NULL UNIQUE
	,NomeFantasia VARCHAR(255) NOT NULL 
	,Endereco	VARCHAR(255) NOT NULL
	,IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario)
);

CREATE TABLE Pecas
(
	IdPeca INT PRIMARY KEY IDENTITY
	,CodigoPeca VARCHAR (150) NOT NULL UNIQUE
	,Descricao VARCHAR(300) NOT NULL
	,Peso VARCHAR(250) NOT NULL 
	,PrecoCusto INT
	,PrecoVenda INT 
	,IdFornecedor INT FOREIGN KEY REFERENCES Fornecedores (IdFornecedor)
);

INSERT INTO Usuarios (Email, Senha) VALUES ('Alves@gmail.com','654321');
INSERT INTO Usuarios (Email, Senha) VALUES ('Lima@gmail.com','123456');
INSERT INTO Usuarios (Email, Senha) VALUES ('Oliveira@gmail.com','987654');

INSERT INTO Fornecedores (CNPJ, RazaoSocial, NomeFantasia, Endereco, IdUsuario) VALUES ('49506598000184','EmpresaXP','EmpresinhaXP','Av.Barao de Limeira','1');
INSERT INTO Fornecedores (CNPJ, RazaoSocial, NomeFantasia, Endereco, IdUsuario) VALUES ('83110755000176','SuperEmpresaXP','EmpresinhaXP2','Av.Barao de Limeira','2');
INSERT INTO Fornecedores (CNPJ, RazaoSocial, NomeFantasia, Endereco, IdUsuario) VALUES ('91932792000198','MegaEmpresaXP','EmpresinhaXP3','Av.Barao de Limeira','3');

INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('J4823028','Placa-Mae','800g','850','1000',2);
INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('H7438923','Placa de Video','900g','1000','1500',3);
INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('B3423894','Monitor','3,5kg','400','600',4);
INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('F4723847','Celular','400g','300','700',2);
INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('T4655634','Maquina Fotografica','450g','150','300',3);
INSERT INTO Pecas (CodigoPeca, Descricao, Peso, PrecoCusto, PrecoVenda, IdFornecedor) VALUES ('I7585874','Mouse','200g','40','80',4);

SELECT * FROM Usuarios;
SELECT * FROM Fornecedores;
SELECT * FROM Pecas;