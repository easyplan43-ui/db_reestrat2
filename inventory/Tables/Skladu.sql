CREATE TABLE [inventory].[Skladu] (
    [Locid]    INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [Type]     NVARCHAR (15) NOT NULL,
    [City]     NVARCHAR (20) NOT NULL,
    [Address]  NVARCHAR (50) NULL,
    [IsActive] BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([Locid] ASC)
);
GO

