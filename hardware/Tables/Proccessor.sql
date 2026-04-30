CREATE TABLE [hardware].[Proccessor] (
    [Procid]   INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Procname] VARCHAR (15)   NOT NULL,
    [Price]    DECIMAL (5, 2) NULL
);
GO

CREATE NONCLUSTERED INDEX [ind_non_procname]
    ON [hardware].[Proccessor]([Procname] ASC);
GO

ALTER TABLE [hardware].[Proccessor]
    ADD CONSTRAINT [PK_Proccessor] PRIMARY KEY CLUSTERED ([Procid] ASC);
GO

