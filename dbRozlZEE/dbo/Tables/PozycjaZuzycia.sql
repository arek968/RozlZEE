CREATE TABLE [dbo].[PozycjaZuzycia] (
    [Id]               INT          IDENTITY (1, 1) NOT NULL,
    [idAsortyment]     INT          NOT NULL,
    [idSkladnikTaryfy] INT          NOT NULL,
    [idZuzycie]        INT          NOT NULL,
    [Ilosc]            REAL         NULL,
    [JednostkaMiary]   NVARCHAR (8) NULL,
    [Cena]             MONEY        NULL,
    [idStawkaVAT]      INT          NULL,
    [StawkaVAT]        MONEY        NULL,
    [KwotaNetto]       MONEY        NULL,
    [KwotaVAT]         MONEY        NULL,
    [KwotaBrutto]      MONEY        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PozycjaZuzycia_ToAsortyment] FOREIGN KEY ([idAsortyment]) REFERENCES [dbo].[Asortyment] ([Id]),
    CONSTRAINT [FK_PozycjaZuzycia_ToSkladnikTaryfy] FOREIGN KEY ([idSkladnikTaryfy]) REFERENCES [dbo].[SkladnikTaryfy] ([Id]),
    CONSTRAINT [FK_PozycjaZuzycia_ToZuzycie] FOREIGN KEY ([idZuzycie]) REFERENCES [dbo].[Zuzycie] ([Id])
);

