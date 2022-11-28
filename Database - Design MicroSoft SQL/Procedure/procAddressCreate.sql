USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procAddressCreate]    Script Date: 28-11-2022 15:25:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[procAddressCreate]
	-- Add the parameters for the stored procedure here
	  @CustomerID int,
	  @BillingAddress1 varchar(120),
	  @BillingAddress2 varchar(120),
	  @ShippingAddress varchar(120),
	  @City varchar(100),
	  @State varchar(25),
	  @Country varchar(25),
	  @PostalCode varchar(10),
	  @MobileNo bigint
	  
AS
BEGIN



INSERT INTO tblAddress
                        (
                          CustomerID ,
						  BillingAddress1,
						  BillingAddress2,
						  ShippingAddress,
						  City,
						  State,
						  Country,
						  PostalCode,
						  MobileNo
						 )
            VALUES     ( 
						  @CustomerID ,
						  @BillingAddress1,
						  @BillingAddress2,
						  @ShippingAddress,
						  @City,
						  @State,
						  @Country,
						  @PostalCode,
						  @MobileNo
					    )
    END

GO


