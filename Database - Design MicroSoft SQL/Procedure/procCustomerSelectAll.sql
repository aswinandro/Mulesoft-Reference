USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procCustomerSelectAll]    Script Date: 28-11-2022 15:30:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procCustomerSelectAll]
	-- Add the parameters for the stored procedure here
	  
	  
AS
BEGIN

SET NOCOUNT ON;
   
            SELECT *
            FROM tblCustomer
        END

GO


