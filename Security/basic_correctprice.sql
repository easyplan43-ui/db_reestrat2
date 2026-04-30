CREATE ROLE [basic_correctprice]
    AUTHORIZATION [dbo];
GO

ALTER ROLE [basic_correctprice] ADD MEMBER [VIDEOSERV\fin_chief];
GO

ALTER ROLE [basic_correctprice] ADD MEMBER [VIDEOSERV\bychalt];
GO

