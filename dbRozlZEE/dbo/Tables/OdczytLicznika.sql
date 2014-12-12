CREATE TABLE [dbo].[OdczytLicznika] (
    [Id]             INT        IDENTITY (1, 1) NOT NULL,
    [idLicznik]      INT        NOT NULL,
    [DataOdczytu]    DATE       NOT NULL,
    [NrFabryczny]    NCHAR (10) NOT NULL,
    [Stan]           REAL       NOT NULL,
    [Zuzycie]        REAL       NOT NULL,
    [PierwszyOdczyt] BIT        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OdczytLicznika_ToLicznik] FOREIGN KEY ([idLicznik]) REFERENCES [dbo].[Licznik] ([Id])
);

