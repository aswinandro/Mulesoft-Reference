USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procOrderDelete]    Script Date: 28-11-2022 15:35:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procOrderDelete]
	-- Add the parameters for the stored procedure here
	
	@OrderID int

	 	  
AS
BEGIN

SET NOCOUNT ON;
         
		DELETE FROM tblOrder
            WHERE  OrderID = @OrderID

		END

GO


