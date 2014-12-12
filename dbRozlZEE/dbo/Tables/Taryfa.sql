CREATE TABLE [dbo].[Taryfa] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Symbol]     NVARCHAR (10) NOT NULL,
    [Opis]       NVARCHAR (50) NULL,
    [IleCzlonow] TINYINT       NULL,
    [IleStref]   TINYINT       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

