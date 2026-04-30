CREATE TABLE [hardware].[Memory_det] (
    [memid]    INT          NOT NULL,
    [mem_type] VARCHAR (50) NOT NULL,
    [capacity] INT          NULL,
    [speed]    INT          NULL
);
GO

ALTER TABLE [hardware].[Memory_det]
    ADD CONSTRAINT [PK__Memory_d__338C53452843B9CD] PRIMARY KEY CLUSTERED ([memid] ASC);
GO

ALTER TABLE [hardware].[Memory_det]
    ADD CONSTRAINT [FK_Memory_Product] FOREIGN KEY ([memid]) REFERENCES [hardware].[Products] ([Prodid]) ON DELETE CASCADE;
GO

