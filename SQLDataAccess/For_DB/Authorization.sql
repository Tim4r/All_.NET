USE [Sample]
GO
/****** Object:  StoredProcedure [dbo].[Authorization]    Script Date: 01.11.2022 12:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CheckAuthorization]
	@Parametr_username NVARCHAR(50),
	@Parametr_password NVARCHAR(50),
	@Result BIT OUTPUT
AS
SET NOCOUNT ON
BEGIN
IF (EXISTS (SELECT 
				Login.UserName AS Name,
				Passphrase.Passphrase
			FROM
				Login 
				JOIN Passphrase
					ON Login.ID = Passphrase.ID
			WHERE UserName = @Parametr_username AND Passphrase = @Parametr_password))

	SET @Result = 'True'
ELSE
	SET @Result = 'False'
END
SET NOCOUNT OFF
