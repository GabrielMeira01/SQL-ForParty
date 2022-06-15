CREATE DATABASE [ForParty]
USE [ForParty]
GO

CREATE TABLE [dbo].[Cadastro](
    [ID]		[int] IDENTITY(1,1) NOT NULL,
    [Nome]		[varchar](100) NULL,
    [CPF]		[varchar](15) NULL,
    [Email]		[varchar](150) NULL,
    [Senha]		[varchar](30) NULL
) 
GO

CREATE TABLE [dbo].[Cliente](
    [Id]				[int] IDENTITY(1,1) NOT NULL,
    [Sexo]				[int] NULL,
    [Nome]				[varchar](50) NULL,
    [Email]				[varchar](200) NULL,
    [CPF]				[char](20) NULL,
    [Ingresso]			[int] NULL,
    [StatusPagamento]	[int] NULL,
    [Nascimento]		[date] NULL,
    [DataHoraEntrada]	[datetime] NULL,
    [DataHoraSaida]		[datetime] NULL
)
GO

CREATE TABLE [dbo].[Estoque](
    [Id]				[int] IDENTITY(1,1) NOT NULL,
    [Nome]				[varchar](50) NULL,
    [Preco]				[decimal](7, 2) NULL,
    [Quantidade]		[int] NULL,
    [DataEntrada]		[datetime] NULL,
    [DataVencimento]	[datetime] NULL
)
GO

CREATE TABLE [dbo].[Pedido](
    [Id]			[int] IDENTITY(1,1) NOT NULL,
    [CPF]			[varchar](15) NULL,
    [Nome]			[varchar](100) NULL,
    [HoraEntrada]	[datetime] NULL,
    [Pedido]		[varchar](MAX) NULL,
    [Pago]			[bit] NULL,
    [Concluido]		[bit] NULL
)
GO

CREATE TABLE [dbo].[Ingresso](
	[Id]		[int] IDENTITY(1,1) NOT NULL,
	[Tipo]		[varchar](100) NULL,
	[Preco]		[decimal](7, 2) NULL
)
GO

INSERT INTO [dbo].[Ingresso] VALUES ('PISTA', 49.99);
INSERT INTO [dbo].[Ingresso] VALUES ('VIP', 99.99);
INSERT INTO [dbo].[Ingresso] VALUES ('CAMAROTE', 149.99);
GO

CREATE TABLE [dbo].[Sexo](
	[Id]		[int] IDENTITY(1,1) NOT NULL,
	[Tipo]		[varchar](50) NULL
)
GO

INSERT INTO [dbo].[Sexo] VALUES ('FEMININO');
INSERT INTO [dbo].[Sexo] VALUES ('MASCULINO');

CREATE TABLE [dbo].[StatusPagamento](
	[Id]		[int] IDENTITY(1,1) NOT NULL,
	[Tipo]		[varchar](50) NULL
)

INSERT INTO [dbo].[StatusPagamento] VALUES ('Não pago');
INSERT INTO [dbo].[StatusPagamento] VALUES ('Pago');