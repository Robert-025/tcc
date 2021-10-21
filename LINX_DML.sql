USE Projeto_linx;

INSERT INTO TipoUsuario(idTipoUsuario, tipo)
VALUES				   (default, 'Funcionario'),
					   (default, 'Candidato');
GO

INSERT INTO Empresa(idEmpresa, cnpj, endereco, horarioFuncionamento, razaoSocial)
VALUES			   (default, '54517628000198', 'Dep. 20 - Av. Dra. Ruth Cardoso, 7221, cj 701, Bl. A, sala 02 - Pinheiros, São Paulo - SP, 05425-070', '09:00 às 15:00', 'Linx');
GO

--INSERT INTO Area(idEmpresa, area)
--VALUES			('AA507EA1-424D-4EE9-B710-FFD11F4169A0', 'RH'),
--				('AA507EA1-424D-4EE9-B710-FFD11F4169A0', 'Desenvolvimento');
--GO

INSERT INTO Area(idEmpresa, area)
VALUES			('74869FD3-C1A1-4972-A8C1-8E2FAEE96480', 'RH'),
				('74869FD3-C1A1-4972-A8C1-8E2FAEE96480', 'Desenvolvimento');
GO

INSERT INTO Usuario(idTipoUsuario, nome, sobrenome, idade, endereco, cpf, rg, email, senha)
VALUES			   ('765B3C72-B87B-482D-A6FC-3E6F0BDF1CF5', 'Robert', 'Sena', 17, 'Rua Ribeirópolis, 459', '40228034876', '521519962', 'robert@email.com', '123456789'),
				   ('0FDD1219-7727-4016-9E22-EE1F0801EDBC', 'Lucas', 'Nauber', 17, 'Al. Barão de Limeira, 539', '12345678901', '12345678', 'nauber@email.com', '123456789')
GO

INSERT INTO Funcionario(idUsuario, idArea, cargo)
VALUES				   ('DA993C0A-F97E-4CAF-BF5E-2564A256CF5A', '5AB11C17-AAF5-4D29-A40D-BED3346559B9', 'Desenvolvedor Back-end')
GO

INSERT INTO Candidato(idUsuario)
VALUES				 ('959C9065-448E-489F-BFB0-9096438E753E')
GO