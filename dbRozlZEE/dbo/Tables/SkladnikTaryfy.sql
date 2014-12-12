CREATE TABLE [dbo].[SkladnikTaryfy] (
    [Id]               INT     IDENTITY (1, 1) NOT NULL,
    [idTaryfa]         INT     NOT NULL,
    [idAsortyment]     INT     NOT NULL,
    [idJednostkaMiary] INT     NOT NULL,
    [TypCeny]          TINYINT NOT NULL,
    [BruttoNetto]      TINYINT NOT NULL,
    [WyliczacKwoty]    BIT     NOT NULL,
    [KwotaZuzycia]     MONEY   NOT NULL,
    [StalaZmienna]     BIT     NOT NULL,
    [Kolejnosc]        TINYINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SkladnikTaryfy_ToAsortyment] FOREIGN KEY ([idAsortyment]) REFERENCES [dbo].[Asortyment] ([Id]),
    CONSTRAINT [FK_SkladnikTaryfy_ToJednostkaMiary] FOREIGN KEY ([idJednostkaMiary]) REFERENCES [dbo].[JednostkaMiary] ([Id]),
    CONSTRAINT [FK_SkladnikTaryfy_ToTaryfa] FOREIGN KEY ([idTaryfa]) REFERENCES [dbo].[Taryfa] ([Id])
);

