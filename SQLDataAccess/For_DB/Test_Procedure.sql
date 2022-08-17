USE [Sample]
GO
/****** Object:  StoredProcedure [dbo].[SP_MYTESTpROC]    Script Date: 17.08.2022 9:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Test_Procedure]
	@VAR1 VARCHAR(10),
	@VAR2 VARCHAR(20),
	@BASEID INT,
	@NEWID INT OUTPUT
AS
SET NOCOUNT ON
BEGIN
INSERT INTO EMPLOYEES(FirstNameEmploey, LastNameEmploeey)
	(SELECT FirstNameEmploey, LastNameEmploeey
	FROM Employees
	WHERE FirstNameEmploey = @VAR1 AND LastNameEmploeey = @VAR2)
	--WHERE ID = @BASEID--

SET @NEWID = SCOPE_IDENTITY()
END
SET NOCOUNT OFF