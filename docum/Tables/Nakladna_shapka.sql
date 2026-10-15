USE [vpn_serv01]
GO

/****** Object:  Table [docum].[Nakladna_shapka]    Script Date: 10/15/2026 6:31:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [docum].[Nakladna_shapka](
	[Naklid] [int] IDENTITY(1,1) NOT NULL,
	[Num_naklad] [nvarchar](30) NOT NULL,
	[Date_naklad] [datetime] NOT NULL,
	[Date_vnesena] [datetime] NOT NULL,
	[From_whom] [nvarchar](100) NOT NULL,
	[Skladid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Naklid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [docum].[Nakladna_shapka]  WITH CHECK ADD  CONSTRAINT [FK_Naklad_Skladu] FOREIGN KEY([Skladid])
REFERENCES [inventory].[Skladu] ([Locid])
GO

ALTER TABLE [docum].[Nakladna_shapka] CHECK CONSTRAINT [FK_Naklad_Skladu]
GO

