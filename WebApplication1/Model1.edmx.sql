
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/15/2026 10:37:04
-- Generated from EDMX file: C:\Users\opilane\source\repos\Kohvik_VS\WebApplication1\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kohvik];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [nimiPerenimi] nvarchar(max)  NOT NULL,
    [isikukood] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL,
    [Amet_ametID] int  NOT NULL
);
GO

-- Creating table 'AmetSet'
CREATE TABLE [dbo].[AmetSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [ametNimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametTootajaSet'
CREATE TABLE [dbo].[ametTootajaSet] (
    [ametiTootajaID] int IDENTITY(1,1) NOT NULL,
    [tootaja_tootajaID] int  NOT NULL
);
GO

-- Creating table 'laudSet'
CREATE TABLE [dbo].[laudSet] (
    [laud_ID] int IDENTITY(1,1) NOT NULL,
    [laud_number] nvarchar(max)  NOT NULL,
    [kohtade_arv] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'klientSet'
CREATE TABLE [dbo].[klientSet] (
    [klient_ID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BroneerimineSet'
CREATE TABLE [dbo].[BroneerimineSet] (
    [Broneerimine_ID] int IDENTITY(1,1) NOT NULL,
    [kuupaev] nvarchar(max)  NOT NULL,
    [kelleaeg] nvarchar(max)  NOT NULL,
    [inimeste_arv] nvarchar(max)  NOT NULL,
    [klient_klient_ID] int  NOT NULL,
    [laud_laud_ID] int  NOT NULL
);
GO

-- Creating table 'KategooriaSet'
CREATE TABLE [dbo].[KategooriaSet] (
    [Kategooria_ID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ToodeSet'
CREATE TABLE [dbo].[ToodeSet] (
    [Toode_ID] int IDENTITY(1,1) NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [Hind] nvarchar(max)  NOT NULL,
    [Kategooria_Kategooria_ID] int  NOT NULL
);
GO

-- Creating table 'koostisosaSet'
CREATE TABLE [dbo].[koostisosaSet] (
    [koostisosa_ID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TootekoostisosaSet'
CREATE TABLE [dbo].[TootekoostisosaSet] (
    [Tootekoostisosa_ID] int IDENTITY(1,1) NOT NULL,
    [kogus] nvarchar(max)  NOT NULL,
    [Toode_Toode_ID] int  NOT NULL,
    [koostisosa_koostisosa_ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [ametID] in table 'AmetSet'
ALTER TABLE [dbo].[AmetSet]
ADD CONSTRAINT [PK_AmetSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [ametiTootajaID] in table 'ametTootajaSet'
ALTER TABLE [dbo].[ametTootajaSet]
ADD CONSTRAINT [PK_ametTootajaSet]
    PRIMARY KEY CLUSTERED ([ametiTootajaID] ASC);
GO

-- Creating primary key on [laud_ID] in table 'laudSet'
ALTER TABLE [dbo].[laudSet]
ADD CONSTRAINT [PK_laudSet]
    PRIMARY KEY CLUSTERED ([laud_ID] ASC);
GO

-- Creating primary key on [klient_ID] in table 'klientSet'
ALTER TABLE [dbo].[klientSet]
ADD CONSTRAINT [PK_klientSet]
    PRIMARY KEY CLUSTERED ([klient_ID] ASC);
GO

-- Creating primary key on [Broneerimine_ID] in table 'BroneerimineSet'
ALTER TABLE [dbo].[BroneerimineSet]
ADD CONSTRAINT [PK_BroneerimineSet]
    PRIMARY KEY CLUSTERED ([Broneerimine_ID] ASC);
GO

-- Creating primary key on [Kategooria_ID] in table 'KategooriaSet'
ALTER TABLE [dbo].[KategooriaSet]
ADD CONSTRAINT [PK_KategooriaSet]
    PRIMARY KEY CLUSTERED ([Kategooria_ID] ASC);
GO

-- Creating primary key on [Toode_ID] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [PK_ToodeSet]
    PRIMARY KEY CLUSTERED ([Toode_ID] ASC);
GO

-- Creating primary key on [koostisosa_ID] in table 'koostisosaSet'
ALTER TABLE [dbo].[koostisosaSet]
ADD CONSTRAINT [PK_koostisosaSet]
    PRIMARY KEY CLUSTERED ([koostisosa_ID] ASC);
GO

-- Creating primary key on [Tootekoostisosa_ID] in table 'TootekoostisosaSet'
ALTER TABLE [dbo].[TootekoostisosaSet]
ADD CONSTRAINT [PK_TootekoostisosaSet]
    PRIMARY KEY CLUSTERED ([Tootekoostisosa_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tootaja_tootajaID] in table 'ametTootajaSet'
ALTER TABLE [dbo].[ametTootajaSet]
ADD CONSTRAINT [FK_tootajaametTootaja]
    FOREIGN KEY ([tootaja_tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaametTootaja'
CREATE INDEX [IX_FK_tootajaametTootaja]
ON [dbo].[ametTootajaSet]
    ([tootaja_tootajaID]);
GO

-- Creating foreign key on [Amet_ametID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [FK_Amettootaja1]
    FOREIGN KEY ([Amet_ametID])
    REFERENCES [dbo].[AmetSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Amettootaja1'
CREATE INDEX [IX_FK_Amettootaja1]
ON [dbo].[tootajaSet]
    ([Amet_ametID]);
GO

-- Creating foreign key on [klient_klient_ID] in table 'BroneerimineSet'
ALTER TABLE [dbo].[BroneerimineSet]
ADD CONSTRAINT [FK_klientBroneerimine]
    FOREIGN KEY ([klient_klient_ID])
    REFERENCES [dbo].[klientSet]
        ([klient_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_klientBroneerimine'
CREATE INDEX [IX_FK_klientBroneerimine]
ON [dbo].[BroneerimineSet]
    ([klient_klient_ID]);
GO

-- Creating foreign key on [laud_laud_ID] in table 'BroneerimineSet'
ALTER TABLE [dbo].[BroneerimineSet]
ADD CONSTRAINT [FK_laudBroneerimine]
    FOREIGN KEY ([laud_laud_ID])
    REFERENCES [dbo].[laudSet]
        ([laud_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_laudBroneerimine'
CREATE INDEX [IX_FK_laudBroneerimine]
ON [dbo].[BroneerimineSet]
    ([laud_laud_ID]);
GO

-- Creating foreign key on [Kategooria_Kategooria_ID] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [FK_KategooriaToode]
    FOREIGN KEY ([Kategooria_Kategooria_ID])
    REFERENCES [dbo].[KategooriaSet]
        ([Kategooria_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KategooriaToode'
CREATE INDEX [IX_FK_KategooriaToode]
ON [dbo].[ToodeSet]
    ([Kategooria_Kategooria_ID]);
GO

-- Creating foreign key on [Toode_Toode_ID] in table 'TootekoostisosaSet'
ALTER TABLE [dbo].[TootekoostisosaSet]
ADD CONSTRAINT [FK_ToodeTootekoostisosa]
    FOREIGN KEY ([Toode_Toode_ID])
    REFERENCES [dbo].[ToodeSet]
        ([Toode_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodeTootekoostisosa'
CREATE INDEX [IX_FK_ToodeTootekoostisosa]
ON [dbo].[TootekoostisosaSet]
    ([Toode_Toode_ID]);
GO

-- Creating foreign key on [koostisosa_koostisosa_ID] in table 'TootekoostisosaSet'
ALTER TABLE [dbo].[TootekoostisosaSet]
ADD CONSTRAINT [FK_koostisosaTootekoostisosa]
    FOREIGN KEY ([koostisosa_koostisosa_ID])
    REFERENCES [dbo].[koostisosaSet]
        ([koostisosa_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_koostisosaTootekoostisosa'
CREATE INDEX [IX_FK_koostisosaTootekoostisosa]
ON [dbo].[TootekoostisosaSet]
    ([koostisosa_koostisosa_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------