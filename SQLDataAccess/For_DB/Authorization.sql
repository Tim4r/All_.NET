USE [Sample]
GO
/****** Object:  StoredProcedure [dbo].[AuthorizationProce]    Script Date: 17.08.2022 21:51:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Authorization]
	@Parametr_username NVARCHAR(50),
	@Parametr_password NVARCHAR(50),
	@Result BIT OUTPUT
AS
SET NOCOUNT ON
BEGIN
IF (EXISTS (SELECT UserName, Passphrase from Authorization2
		   WHERE UserName = @Parametr_username AND Passphrase = @Parametr_password))
	SET @Result = 'True'
ELSE
	SET @Result = 'False'
END
SET NOCOUNT OFF
