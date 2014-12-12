CREATE TABLE [dbo].[StawkaVAT] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [Kod]     NVARCHAR (6) NOT NULL,
    [Wartosc] REAL         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

