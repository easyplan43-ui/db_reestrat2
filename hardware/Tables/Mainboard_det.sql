CREATE TABLE [hardware].[Mainboard_det] (
    [boardid]     INT           NOT NULL,
    [socket]      NVARCHAR (30) NOT NULL,
    [chipset]     NVARCHAR (30) NOT NULL,
    [form_factor] NVARCHAR (15) NOT NULL,
    [ram_slots]   INT           NOT NULL
);
GO

ALTER TABLE [hardware].[Mainboard_det]
    ADD CONSTRAINT [FK_Mainboard_Product] FOREIGN KEY ([boardid]) REFERENCES [hardware].[Products] ([Prodid]) ON DELETE CASCADE;
GO

ALTER TABLE [hardware].[Mainboard_det]
    ADD CONSTRAINT [PK__mainboar__4DBDC6D8C7343D63] PRIMARY KEY CLUSTERED ([boardid] ASC);
GO

