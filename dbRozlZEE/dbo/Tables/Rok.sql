CREATE TABLE [dbo].[Rok] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Numer]           INT           NOT NULL,
    [MaskaKosztu]     NVARCHAR (50) NULL,
    [DomyslnyStaly]   NVARCHAR (50) NULL,
    [DomyslnyZmienny] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

