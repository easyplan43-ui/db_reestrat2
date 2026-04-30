CREATE ROLE [basic_insertinit]
    AUTHORIZATION [dbo];
GO

ALTER ROLE [basic_insertinit] ADD MEMBER [VIDEOSERV\admin_vpnobs];
GO

ALTER ROLE [basic_insertinit] ADD MEMBER [VIDEOSERV\operat_vpnobs];
GO

