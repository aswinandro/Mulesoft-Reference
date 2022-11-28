USE [dbShopping]
GO

/****** Object:  Table [dbo].[tblAddress]    Script Date: 28-11-2022 15:18:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAddress](
	[AddressID] [int] IDENTITY(100,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[BillingAddress1] [varchar](120) NULL,
	[BillingAddress2] [varchar](120) NULL,
	[ShippingAddress] [varchar](120) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](25) NULL,
	[Country] [varchar](25) NULL,
	[PostalCode] [varchar](10) NULL,
	[AddressUpdatedAt] [datetime] NULL,
	[MobileNo] [bigint] NULL,
 CONSTRAINT [pk_address_id] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblAddress] ADD  DEFAULT (getdate()) FOR [AddressUpdatedAt]
GO

ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [fk_customer_id_address_id] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomer] ([ID])
GO

ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [fk_customer_id_address_id]
GO


