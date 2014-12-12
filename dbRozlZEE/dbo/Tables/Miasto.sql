CREATE TABLE [dbo].[Miasto] (
    [Id]    INT        IDENTITY (1, 1) NOT NULL,
    [Nazwa] NCHAR (10) NULL,
    [Konto] NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

