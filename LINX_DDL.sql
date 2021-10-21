CREATE DATABASE Projeto_linx;
GO

USE Projeto_linx;
GO

CREATE TABLE TipoUsuario
(
	idTipoUsuario			UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	tipo					VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Empresa
(
	idEmpresa				UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	cnpj					CHAR(14) UNIQUE NOT NULL,
	endereco				VARCHAR(350) NOT NULL,
	horarioFuncionamento	VARCHAR(255) NOT NULL,
	razaoSocial				VARCHAR(255) NOT NULL
);
GO

CREATE TABLE Area
(
	idArea					UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	idEmpresa				UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Empresa(idEmpresa) NOT NULL,
	area					VARCHAR(255)
);
GO

CREATE TABLE Usuario
(
	idUsuario				UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	idTipoUsuario			UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TipoUsuario(idTipoUsuario) NOT NULL,
	nome					VARCHAR(100) NOT NULL,
	sobrenome				VARCHAR(100) NOT NULL,
	idade					INT NOT NULL,
	endereco				VARCHAR(500) NOT NULL,
	cpf						CHAR(11) UNIQUE NOT NULL,
	rg						CHAR(9) NOT NULL,
	email					VARCHAR(255) UNIQUE NOT NULL,
	senha					VARCHAR(255) NOT NULL,
);
GO

CREATE TABLE Funcionario
(
	idFuncionario			UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	idUsuario				UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Usuario(idUsuario) NOT NULL,
	cargo					VARCHAR(255) NOT NULL
);
GO

CREATE TABLE Candidato
(
	idCandidato			UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	idUsuario				UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Usuario(idUsuario) NOT NULL
);
GO

--------------------------------- PARA IMPLEMENTAR DEPOIS -----------------------------------------------

--CREATE TABLE Categoria
--(
--	idCategoria				UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
--	categoria				VARCHAR(255) NOT NULL
--);
--GO

--CREATE TABLE Teste
--(
--	idTeste					UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
--	perguntas				VARCHAR(255) NOT NULL,
--	respostas				VARCHAR(255) NOT NULL,
--	resultado				VARCHAR(255)
--);
--GO