CREATE TABLE Usuario (
Email VARCHAR(30) PRIMARY KEY,
Nome VARCHAR(50),
Senha VARCHAR(20),
Role CHAR(4)
);

CREATE TABLE Empresa (
CNPJ CHAR(14) PRIMARY KEY,
Email_Usuario VARCHAR(30),
Descricao VARCHAR(255),
Redes_Sociais INTEGER(1),
Link VARCHAR(50),
Endereco VARCHAR(50),
FOREIGN KEY(Email_Usuario) REFERENCES Usuario (Email)
);

CREATE TABLE Curso (
Codigo INTEGER PRIMARY KEY,
Email_Usuario VARCHAR(30),
Duracao VARCHAR(20),
Nivel VARCHAR(10),
Conteudo VARCHAR(255),
Instituicao VARCHAR(10),
Detalhes VARCHAR(255),
Aprovado INTEGER(1),
Descricao VARCHAR(255),
Link VARCHAR(50),
Titulo VARCHAR(50),
FOREIGN KEY(Email_Usuario) REFERENCES Usuario (Email)
);

CREATE TABLE Administrador (
CPF CHAR(11) PRIMARY KEY,
Email_Usuario VARCHAR(30),
FOREIGN KEY(Email_Usuario) REFERENCES Usuario (Email)
);

CREATE TABLE Vaga (
Codigo INTEGER PRIMARY KEY,
Email_Usuario VARCHAR(30),
Requisitos VARCHAR(50),
Informacoes_Adicionais VARCHAR(255),
Link VARCHAR(50),
Empresa VARCHAR(10),
Local VARCHAR(15),
Prazo DATETIME,
Descricao VARCHAR(255),
Aprovado INTEGER(1),
Titulo VARCHAR(50),
Salario DECIMAL(10),
Atribuicoes VARCHAR(255),
FOREIGN KEY(Email_Usuario) REFERENCES Usuario (Email)
);

CREATE TABLE Profissional (
CPF CHAR(11) PRIMARY KEY,
Email_Usuario VARCHAR(30),
Profissao VARCHAR(10),
Endereco VARCHAR(50),
Email VARCHAR(30),
Telefone CHAR(11),
Perfil_Publico INTEGER(1),
Link VARCHAR(50),
Acessibilidade_Necessaria VARCHAR(30),
Genero VARCHAR(10),
FOREIGN KEY(Email_Usuario) REFERENCES Usuario (Email)
);

CREATE TABLE Vaga_Administrador (
CPF_Administrador CHAR(11),
Codigo_Vaga INTEGER,
FOREIGN KEY(CPF_Administrador) REFERENCES Administrador (CPF),
FOREIGN KEY(Codigo_Vaga) REFERENCES Vaga (Codigo)
);

CREATE TABLE Curso_Administrador (
CPF_Administrador CHAR(11),
Codigo_Curso INTEGER,
FOREIGN KEY(Codigo_Curso) REFERENCES Curso (Codigo),
FOREIGN KEY(CPF_Administrador) REFERENCES Administrador (CPF)
);
