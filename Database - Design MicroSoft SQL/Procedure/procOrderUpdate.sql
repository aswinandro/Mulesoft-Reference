USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procOrderUpdate]    Script Date: 28-11-2022 15:38:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procOrderUpdate]
	-- Add the parameters for the stored procedure here
	
	@OrderID int,
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
         
		 UPDATE tblOrder
            SET    CustomerID = @CustomerID,
                   InvoiceID = @InvoiceID,
                   InvoiceName = @InvoiceName,
				   ItemID = @ItemID,
				   ItemName = @ItemName,
				   Quantity = @Quantity,
                   BasePrice = @BasePrice,
				   PromoCode = @PromoCode,
				   TotalPrice = @Quantity * @BasePrice
            WHERE  OrderID = @OrderID

		END

GO


