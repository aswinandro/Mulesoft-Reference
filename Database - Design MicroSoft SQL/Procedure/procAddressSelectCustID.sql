USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procAddressSelectCustID]    Script Date: 28-11-2022 15:28:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procAddressSelectCustID]
	-- Add the parameters for the stored procedure here
	  @CustomerID int
	  
AS
BEGIN

SET NOCOUNT ON;
   
            SELECT *
            FROM tblAddress
			WHERE
			CustomerID = @CustomerID
        END

GO


