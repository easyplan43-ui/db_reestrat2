CREATE TABLE [hardware].[Tag_detail] (
    [tag]        VARCHAR (25) NOT NULL,
    [table_name] VARCHAR (50) NOT NULL
);
GO

ALTER TABLE [hardware].[Tag_detail]
    ADD CONSTRAINT [PK__Tag_deta__DC101C00BEEFF79E] PRIMARY KEY CLUSTERED ([tag] ASC);
GO

