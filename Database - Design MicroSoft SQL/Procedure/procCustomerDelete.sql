USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procCustomerDelete]    Script Date: 28-11-2022 15:30:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procCustomerDelete]
	-- Add the parameters for the stored procedure here
	  @CustomerID int
	 
	  
AS
BEGIN

SET NOCOUNT ON;
         

		 DELETE FROM tblCustomer
            WHERE  ID = @CustomerID
		 
		END

GO


