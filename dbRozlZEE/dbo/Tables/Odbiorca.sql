﻿CREATE TABLE [dbo].[Odbiorca] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [NrOdbiorcy]           NCHAR (12)     NOT NULL,
    [Konto]                NCHAR (12)     NULL,
    [idObiekt]             INT            NULL,
    [idZaklad]             INT            NULL,
    [KodPocztowy]          NCHAR (6)      NULL,
    [idMiasto]             INT            NULL,
    [idUlica]              INT            NULL,
    [NrBudynku]            NCHAR (8)      NULL,
    [idTypOdbiorcy]        INT            NULL,
    [Aktywny]              BIT            NULL,
    [sNazwa]               NVARCHAR (100) NULL,
    [sAdres]               NVARCHAR (50)  NULL,
    [sKod]                 NVARCHAR (50)  NULL,
    [sMiasto]              NVARCHAR (50)  NULL,
    [sNIP]                 NVARCHAR (15)  NULL,
    [sBank]                NVARCHAR (50)  NULL,
    [sNrRachunkuBankowego] NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Odbiorca_ToMiasto] FOREIGN KEY ([idMiasto]) REFERENCES [dbo].[Miasto] ([Id]),
    CONSTRAINT [FK_Odbiorca_ToObiekt] FOREIGN KEY ([idObiekt]) REFERENCES [dbo].[Obiekt] ([Id]),
    CONSTRAINT [FK_Odbiorca_ToTypOdbiorcy] FOREIGN KEY ([idTypOdbiorcy]) REFERENCES [dbo].[TypOdbiorcy] ([Id]),
    CONSTRAINT [FK_Odbiorca_ToUlica] FOREIGN KEY ([idUlica]) REFERENCES [dbo].[Ulica] ([Id]),
    CONSTRAINT [FK_Odbiorca_ToZaklad] FOREIGN KEY ([idZaklad]) REFERENCES [dbo].[Zaklad] ([Id])
);
