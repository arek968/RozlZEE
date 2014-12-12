CREATE TABLE [dbo].[Zaklad] (
    [Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa] NVARCHAR (50) NOT NULL,
    [Konto] NCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

