CREATE TABLE [locat].[Location] (
    [Locid]  TINYINT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Place]  VARCHAR (25)   NOT NULL,
    [Rating] DECIMAL (2, 1) NULL,
    PRIMARY KEY CLUSTERED ([Locid] ASC)
);
GO

CREATE NONCLUSTERED INDEX [ind_non_place]
    ON [locat].[Location]([Place] ASC);
GO

