USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procOrderSelectAll]    Script Date: 28-11-2022 15:35:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procOrderSelectAll]
	-- Add the parameters for the stored procedure here
	


	 	  
AS
BEGIN

SET NOCOUNT ON;
         
		Select * FROM tblOrder

		END

GO


