CREATE TABLE [dbo].[SkladnikLicznika] (
    [idLicznik]        INT NOT NULL,
    [idSkladnikTaryfy] INT NOT NULL,
    CONSTRAINT [PK_SkladnikLicznika] PRIMARY KEY CLUSTERED ([idLicznik] ASC, [idSkladnikTaryfy] ASC),
    CONSTRAINT [FK_SkladnikLicznika_ToLicznik] FOREIGN KEY ([idLicznik]) REFERENCES [dbo].[Licznik] ([Id]),
    CONSTRAINT [FK_SkladnikLicznika_ToSkladnikTaryfy] FOREIGN KEY ([idSkladnikTaryfy]) REFERENCES [dbo].[SkladnikTaryfy] ([Id])
);

