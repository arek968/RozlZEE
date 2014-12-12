CREATE TABLE [dbo].[Cena] (
    [Id]               INT   IDENTITY (1, 1) NOT NULL,
    [idSkladnikTaryfy] INT   NOT NULL,
    [DataOd]           DATE  NULL,
    [idStawkaVAT]      INT   NULL,
    [Cena]             MONEY NULL,
    [CenaZima]         MONEY NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Cena_ToSkladnikTaryfy] FOREIGN KEY ([idSkladnikTaryfy]) REFERENCES [dbo].[SkladnikTaryfy] ([Id]),
    CONSTRAINT [FK_Cena_ToStawkaVAT] FOREIGN KEY ([idStawkaVAT]) REFERENCES [dbo].[StawkaVAT] ([Id])
);

