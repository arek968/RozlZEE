CREATE TABLE [dbo].[Przylacze] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [idOdbiorca]         INT           NOT NULL,
    [idTaryfa]           INT           NOT NULL,
    [Opis]               NVARCHAR (50) NULL,
    [Mnozna]             REAL          NULL,
    [TangensFiZamowione] REAL          NULL,
    [MocMinimalna]       REAL          NULL,
    [MocUmowna]          REAL          NULL,
    [MocZainstalowana]   REAL          NULL,
    [TypTaryfaEBP]       INT           NULL,
    [CzySumator]         BIT           NULL,
    [CzyStraty]          BIT           NULL,
    [Aktywne]            BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Przylacze_ToOdbiorca] FOREIGN KEY ([idOdbiorca]) REFERENCES [dbo].[Odbiorca] ([Id]),
    CONSTRAINT [FK_Przylacze_ToTaryfa] FOREIGN KEY ([idTaryfa]) REFERENCES [dbo].[Taryfa] ([Id])
);

