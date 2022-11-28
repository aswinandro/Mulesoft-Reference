USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procOrderCreate]    Script Date: 28-11-2022 15:34:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[procOrderCreate]
	-- Add the parameters for the stored procedure here
	
	@CustomerID int,
	@InvoiceID int,
	@InvoiceName varchar(255),
	@ItemID int,
	@ItemName varchar(255),
	@Quantity int,
	@BasePrice int,
    @PromoCode varchar(10)
	 	  
AS
BEGIN

SET NOCOUNT ON;
         
		 INSERT INTO tblOrder
                        (
                          CustomerID,
						  InvoiceID,
						  InvoiceName,
						  ItemID,
						  ItemName,
						  Quantity,
						  BasePrice,
						  PromoCode,
						  TotalPrice
						 )
            VALUES     ( 
						 @CustomerID,
						 @InvoiceID ,
						 @InvoiceName,
						 @ItemID,
						 @ItemName,
						 @Quantity,
						 @BasePrice,
						 @PromoCode,
						 @Quantity * @BasePrice
					    )

		END

GO


