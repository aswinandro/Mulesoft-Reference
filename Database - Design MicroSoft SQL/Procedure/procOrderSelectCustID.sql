USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procOrderSelectCustID]    Script Date: 28-11-2022 15:36:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procOrderSelectCustID]
	-- Add the parameters for the stored procedure here
	
	@CustomerID int

	 	  
AS
BEGIN

SET NOCOUNT ON;
         
		Select * FROM tblOrder
            WHERE  CustomerID = @CustomerID

		END

GO


