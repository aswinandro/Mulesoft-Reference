USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procAddressSelectAll]    Script Date: 28-11-2022 15:27:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procAddressSelectAll]
	-- Add the parameters for the stored procedure here
	  @CustomerID int
	  
AS
BEGIN

SET NOCOUNT ON;
   
            SELECT *
            FROM tblAddress
        END

GO


