CREATE TABLE [hardware].[Products] (
    [Prodid]         INT            IDENTITY (1, 1) NOT NULL,
    [Category_catid] INT            NOT NULL,
    [Artukyl]        VARCHAR (25)   NOT NULL,
    [Nazva_tov]      NVARCHAR (50)  NOT NULL,
    [Description]    NVARCHAR (200) NOT NULL,
    [Kilkist]        INT            NULL,
    [Price]          DECIMAL (5, 2) NULL,
    [Created]        DATETIME       NULL
);
GO

CREATE NONCLUSTERED INDEX [IN_Products_Nazva_tov]
    ON [hardware].[Products]([Nazva_tov] ASC);
GO

CREATE NONCLUSTERED INDEX [IN_Products_Artukyl]
    ON [hardware].[Products]([Artukyl] ASC);
GO

ALTER TABLE [hardware].[Products]
    ADD CONSTRAINT [FK_Products_Category] FOREIGN KEY ([Category_catid]) REFERENCES [hardware].[Categories] ([Catid]);
GO

ALTER TABLE [hardware].[Products]
    ADD CONSTRAINT [DF__products__Kilkis__2F9A1060] DEFAULT ((0)) FOR [Kilkist];
GO

ALTER TABLE [hardware].[Products]
    ADD CONSTRAINT [DF__products__Create__308E3499] DEFAULT (getdate()) FOR [Created];
GO

ALTER TABLE [hardware].[Products]
    ADD CONSTRAINT [PK__products__04050F3D6F52EBEB] PRIMARY KEY CLUSTERED ([Prodid] ASC);
GO

ALTER TABLE [hardware].[Products]
    ADD CONSTRAINT [UQ__products__1A8C726663B9BDB1] UNIQUE NONCLUSTERED ([Artukyl] ASC);
GO

