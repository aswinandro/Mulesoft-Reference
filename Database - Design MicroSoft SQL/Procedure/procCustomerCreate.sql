USE [dbShopping]
GO

/****** Object:  StoredProcedure [dbo].[procCustomerCreate]    Script Date: 28-11-2022 15:29:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[procCustomerCreate]
	-- Add the parameters for the stored procedure here
	  
	  @FirstName varchar(255),
	  @LastName varchar(255),
	  @Age int,
	  @Gender varchar(15),
	  @TypeofCustomer varchar(60),
	  @Revenue int,
	  @Contact varchar(30)
	  
AS
BEGIN

   
             INSERT INTO tblCustomer
                        (
                          FirstName,
						  LastName,
						  Age,
						  Gender,
						  TypeofCustomer,
						  Revenue,
						  Contact
						 )
            VALUES     ( 
						 @FirstName,
						 @LastName,
						 @Age,
						 @Gender,
						 @TypeofCustomer,
						 @Revenue,
						 @Contact
					    )
        
		END

GO


