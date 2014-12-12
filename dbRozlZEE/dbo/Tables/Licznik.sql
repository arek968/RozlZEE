CREATE TABLE [dbo].[Licznik] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [idPrzylacze]  INT           NULL,
    [NrFabryczny]  NCHAR (10)    NOT NULL,
    [Mnozna]       REAL          NULL,
    [TypLicznika]  INT           NULL,
    [ProcentStrat] REAL          NULL,
    [Aktywny]      BIT           DEFAULT ((0)) NOT NULL,
    [Kolejnosc]    TINYINT       NULL,
    [Opis]         NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Licznik_ToPrzylacze] FOREIGN KEY ([idPrzylacze]) REFERENCES [dbo].[Przylacze] ([Id])
);

