USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procAddressDelete]    Script Date: 28-11-2022 15:26:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procAddressDelete]
	-- Add the parameters for the stored procedure here
	  @AddressID int
	  
AS
BEGIN

SET NOCOUNT ON;
   
            DELETE FROM tblAddress
            WHERE  AddressID = @AddressID

        END

GO


