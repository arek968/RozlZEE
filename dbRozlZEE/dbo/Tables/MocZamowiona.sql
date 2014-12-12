CREATE TABLE [dbo].[MocZamowiona] (
    [Id]          INT     IDENTITY (1, 1) NOT NULL,
    [idPrzylacze] INT     NOT NULL,
    [Miesiac]     TINYINT NOT NULL,
    [Rok]         TINYINT NOT NULL,
    [Ilosc]       REAL    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MocZamowiona_ToPrzylacze] FOREIGN KEY ([idPrzylacze]) REFERENCES [dbo].[Przylacze] ([Id])
);

