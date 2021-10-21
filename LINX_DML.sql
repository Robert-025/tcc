USE Projeto_linx;

INSERT INTO TipoUsuario(idTipoUsuario, tipo)
VALUES				   (default, 'Funcionario'),
					   (default, 'Candidato');
GO

INSERT INTO Empresa(idEmpresa, cnpj, endereco, horarioFuncionamento, razaoSocial)
VALUES			   (default, '54517628000198', 'Dep. 20 - Av. Dra. Ruth Cardoso, 7221, cj 701, Bl. A, sala 02 - Pinheiros, São Paulo - SP, 05425-070', '09:00 às 15:00', 'Linx');
GO

SELECT * FROM TipoUsuario;

SELECT * FROM Area;

INSERT INTO Area(idEmpresa, area)
VALUES			('AA507EA1-424D-4EE9-B710-FFD11F4169A0', 'RH'),
				('AA507EA1-424D-4EE9-B710-FFD11F4169A0', 'Desenvolvimento');
GO
















































