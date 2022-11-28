USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procCustomerUpdate]    Script Date: 28-11-2022 15:33:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procCustomerUpdate]
	-- Add the parameters for the stored procedure here
	  @CustomerID int,
	  @FirstName varchar(255),
	  @LastName varchar(255),
	  @Age int,
	  @Gender varchar(15),
	  @TypeofCustomer varchar(60),
	  @Revenue int,
	  @Contact varchar(30)
	  
AS
BEGIN

SET NOCOUNT ON;
          
		  UPDATE tblCustomer

            SET		FirstName = @FirstName,
					LastName  = @LastName,
					Age	=  @Age,
					Gender = @Gender,
					TypeofCustomer = @TypeofCustomer,
					Revenue = @Revenue,
					Contact = @Contact

            WHERE  ID = @CustomerID
       
        
		END

GO


