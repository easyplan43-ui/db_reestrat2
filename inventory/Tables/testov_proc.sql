USE [vpn_serv01]
GO

/****** Object:  StoredProcedure [dbo].[Testovaja]    Script Date: 9/25/2026 2:41:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Testovaja]
    @Ima NVARCHAR(20)
AS
BEGIN
  SET NOCOUNT ON;  -- не відсилаємо клієнту оголош типу n row affected 
  SELECT * FROM [contragent].[Agent_type] WHERE  Rolename = @Ima;
END;
GO

