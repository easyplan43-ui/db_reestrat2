CREATE TABLE [hardware].[Categories] (
    [Catid]    INT           IDENTITY (1, 1) NOT NULL,
    [Catname]  NVARCHAR (30) NOT NULL,
    [Parentid] INT           NULL,
    [tag]      VARCHAR (25)  NOT NULL
);
GO

ALTER TABLE [hardware].[Categories]
    ADD CONSTRAINT [PK__Categori__6A1D86D2DF7109BE] PRIMARY KEY CLUSTERED ([Catid] ASC);
GO

ALTER TABLE [hardware].[Categories]
    ADD CONSTRAINT [FK_Parentid] FOREIGN KEY ([Parentid]) REFERENCES [hardware].[Categories] ([Catid]);
GO

ALTER TABLE [hardware].[Categories]
    ADD CONSTRAINT [UQ__Categori__DC101C0148A0DC8A] UNIQUE NONCLUSTERED ([tag] ASC);
GO

