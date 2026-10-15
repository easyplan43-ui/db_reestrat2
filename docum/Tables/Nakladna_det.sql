USE [vpn_serv01]
GO

/****** Object:  Table [docum].[Nakladna_det]    Script Date: 10/15/2026 6:30:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [docum].[Nakladna_det](
	[Detid] [int] IDENTITY(1,1) NOT NULL,
	[Naklid] [int] NOT NULL,
	[Prodid] [int] NOT NULL,
	[Kilkist] [int] NOT NULL,
	[Price] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Detid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [docum].[Nakladna_det]  WITH CHECK ADD  CONSTRAINT [FK_Nakldet_Naklshapka] FOREIGN KEY([Naklid])
REFERENCES [docum].[Nakladna_shapka] ([Naklid])
GO

ALTER TABLE [docum].[Nakladna_det] CHECK CONSTRAINT [FK_Nakldet_Naklshapka]
GO

ALTER TABLE [docum].[Nakladna_det]  WITH CHECK ADD  CONSTRAINT [FK_Nakldet_Products] FOREIGN KEY([Prodid])
REFERENCES [hardware].[Products] ([Prodid])
GO

ALTER TABLE [docum].[Nakladna_det] CHECK CONSTRAINT [FK_Nakldet_Products]
GO

