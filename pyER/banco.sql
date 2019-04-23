Departamento (id, nome, idGerente)
 idGerente referencia Funcionario
Funcionario (id, nome, email, idDepartamento)
 idDepartamento referencia Departamento
Projeto (id, nome, dataPrevista)
FuncProj (idProjeto, idFuncionario)
 idFuncionario referencia Funcionario
 idProjeto referencia Projeto

 CREATE TABLE Departamento (
	idDepartamento serial,
	nome VARCHAR (150) NOT NULL,
	idGerente int,
	CONSTRAINT "idGerenteFK" FOREIGN KEY(idGerente)
		REFERENCES Funcionario(idFuncionario),
	CONSTRAINT "idDepartamentoPK" PRIMARY KEY (idDepartamento)
 )

CREATE TABLE Funcionario (
	idFuncionario serial,
	nome VARCHAR(150) NOT NULL,
	email VARCHAR(150) NOT NULL,
	idDepartamento int,
	CONSTRAINT "idFuncionarioPK" PRIMARY KEY(IdFuncionario)
	/*CONSTRAINT "idDepartamentoFK" FOREIGN KEY(idDepartamento)
		REFERENCES Departamento(idDepartamento)*/
);

CREATE TABLE Projeto (
	idProjeto serial,
	nome VARCHAR(150) NOT NULL,
	dtPrevista date,
	CONSTRAINT "idProjeto" PRIMARY KEY(idProjeto)

)

CREATE TABLE FuncProj(
	idProjetoFK int,
	idFuncionarioFK int,
	CONSTRAINT "idProjetoFK" FOREIGN KEY(idProjetoFK)
		REFERENCES Projeto(idProjeto),

	CONSTRAINT "idFuncionarioFK" FOREIGN KEY(idFuncionarioFK)
		REFERENCES Funcionario(idFuncionario)
	
);

ALTER TABLE Funcionario ADD CONSTRAINT "idDepartamentoFK"
FOREIGN KEY(idDepartamento) REFERENCES Departamento (idDepartamento);




select * from Funcionario;
select * from Departamento;
select * from Projeto;
select * from FuncProj;