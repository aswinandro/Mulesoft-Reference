USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procAddressUpdate]    Script Date: 28-11-2022 15:29:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[procAddressUpdate]
	-- Add the parameters for the stored procedure here
	  @AddressID int,
	  @CustomerID int,
	  @BillingAddress1 varchar(120),
	  @BillingAddress2 varchar(120),
	  @ShippingAddress varchar(120),
	  @City varchar(100),
	  @State varchar(25),
	  @Country varchar(25),
	  @PostalCode varchar(10),
	  @MobileNo int
	  
AS
BEGIN

SET NOCOUNT ON;
            UPDATE tblAddress
            SET    CustomerID = @CustomerID,
                   BillingAddress1 = @BillingAddress1,
                   BillingAddress2 = @BillingAddress2,
				   ShippingAddress = @ShippingAddress,
				   City = @City,
				   State = @State,
                   Country = @Country,
				   PostalCode = @PostalCode,
				   MobileNo = @MobileNo
            WHERE  AddressID = @AddressID
        END

GO


