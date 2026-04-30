CREATE TABLE [hardware].[Proccess_det] (
    [proccid]   INT            NOT NULL,
    [socket]    VARCHAR (30)   NOT NULL,
    [cores]     INT            NOT NULL,
    [threads]   INT            NOT NULL,
    [frequency] DECIMAL (4, 2) NOT NULL,
    [watt]      INT            NOT NULL
);
GO

ALTER TABLE [hardware].[Proccess_det]
    ADD CONSTRAINT [PK__Proccess__BC09BE0037677D91] PRIMARY KEY CLUSTERED ([proccid] ASC);
GO

ALTER TABLE [hardware].[Proccess_det]
    ADD CONSTRAINT [FK_Processor_Product] FOREIGN KEY ([proccid]) REFERENCES [hardware].[Products] ([Prodid]) ON DELETE CASCADE;
GO

