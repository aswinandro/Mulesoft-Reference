USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procCustomerSelectID]    Script Date: 28-11-2022 15:31:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procCustomerSelectID]
	-- Add the parameters for the stored procedure here
	  @CustomerID int
	  
AS
BEGIN

SET NOCOUNT ON;
   
            SELECT *
            FROM tblCustomer
			Where
			ID = @CustomerID
        END

GO


