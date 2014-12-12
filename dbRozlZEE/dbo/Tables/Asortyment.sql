CREATE TABLE [dbo].[Asortyment] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa]         NVARCHAR (50) NULL,
    [IdGrupa]       INT           NULL,
    [JakaEnergia]   TINYINT       NULL,
    [StrefaCzasowa] TINYINT       NULL,
    [StalyZmienny]  TINYINT       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

