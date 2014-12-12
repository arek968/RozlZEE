CREATE TABLE [dbo].[OsrodekKosztow] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [idPrzylacze]        INT           NOT NULL,
    [Nazwa]              NVARCHAR (50) NULL,
    [ProcentKosztow]     REAL          NOT NULL,
    [UdzialZuzycia]      REAL          NOT NULL,
    [idRok]              INT           NOT NULL,
    [KontoKosztuStale]   NVARCHAR (50) NULL,
    [KontoKosztuZmienne] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OsrodekKosztow_ToPrzylacze] FOREIGN KEY ([idPrzylacze]) REFERENCES [dbo].[Przylacze] ([Id]),
    CONSTRAINT [FK_OsrodekKosztow_ToRok] FOREIGN KEY ([idRok]) REFERENCES [dbo].[Rok] ([Id])
);

