CREATE ROLE [basic_view]
    AUTHORIZATION [dbo];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\operat_vpnobs];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\ekobezpeka];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\prodazi];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\fin_chief];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\zakypku];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\admin_vpnobs];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\sklad];
GO

ALTER ROLE [basic_view] ADD MEMBER [VIDEOSERV\bychalt];
GO

