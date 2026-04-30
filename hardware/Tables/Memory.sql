CREATE TABLE [hardware].[Memory] (
    [Memid]    INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Manuf]    VARCHAR (15)   NOT NULL,
    [DDR]      VARCHAR (6)    NOT NULL,
    [Volume]   SMALLINT       NOT NULL,
    [Partnumb] VARCHAR (15)   NOT NULL,
    [Price]    DECIMAL (5, 2) NULL
);
GO

ALTER TABLE [hardware].[Memory]
    ADD CONSTRAINT [PK__Memory__E8C3354A7B90D799] PRIMARY KEY CLUSTERED ([Memid] ASC);
GO

CREATE UNIQUE NONCLUSTERED INDEX [ind_non_manddrvol]
    ON [hardware].[Memory]([Manuf] ASC, [DDR] ASC, [Volume] ASC);
GO

ALTER TABLE [hardware].[Memory]
    ADD CONSTRAINT [ind_non_partnumb] UNIQUE NONCLUSTERED ([Partnumb] ASC);
GO

