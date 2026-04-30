CREATE TABLE [hardware].[Storage_det] (
    [storid]        INT          NOT NULL,
    [stor_type]     VARCHAR (15) NOT NULL,
    [disk_capacity] INT          NULL,
    [disk_speed]    INT          NULL
);
GO

ALTER TABLE [hardware].[Storage_det]
    ADD CONSTRAINT [FK_Storage_Product] FOREIGN KEY ([storid]) REFERENCES [hardware].[Products] ([Prodid]) ON DELETE CASCADE;
GO

ALTER TABLE [hardware].[Storage_det]
    ADD CONSTRAINT [PK__Storage___71242F92A486E659] PRIMARY KEY CLUSTERED ([storid] ASC);
GO

