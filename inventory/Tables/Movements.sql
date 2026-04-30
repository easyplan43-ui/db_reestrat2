CREATE TABLE [inventory].[Movements] (
    [Movid]       INT            IDENTITY (1, 1) NOT NULL,
    [Fromlocatid] INT            NOT NULL,
    [Tolocatid]   INT            NOT NULL,
    [Prodid]      INT            NOT NULL,
    [Kilkist]     INT            NOT NULL,
    [Movedate]    DATETIME       DEFAULT (getdate()) NULL,
    [Userid]      INT            NULL,
    [Comments]    NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Movid] ASC)
);
GO

