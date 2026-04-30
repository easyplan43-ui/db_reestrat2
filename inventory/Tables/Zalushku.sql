CREATE TABLE [inventory].[Zalushku] (
    [Locid]   INT NOT NULL,
    [Prodid]  INT NOT NULL,
    [Kilkist] INT NULL,
    FOREIGN KEY ([Locid]) REFERENCES [inventory].[Skladu] ([Locid]),
    FOREIGN KEY ([Prodid]) REFERENCES [hardware].[Products] ([Prodid])
);
GO

ALTER TABLE [inventory].[Zalushku]
    ADD CONSTRAINT [PK_Sklad_Tovar] PRIMARY KEY CLUSTERED ([Locid] ASC, [Prodid] ASC);
GO

