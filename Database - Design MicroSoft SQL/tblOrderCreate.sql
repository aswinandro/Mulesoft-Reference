USE [dbShopping]
GO

/****** Object:  Table [dbo].[tblOrder]    Script Date: 28-11-2022 15:22:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblOrder](
	[OrderID] [int] IDENTITY(100,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceName] [varchar](255) NULL,
	[ItemID] [int] NULL,
	[ItemName] [varchar](255) NULL,
	[Quantity] [int] NULL,
	[BasePrice] [int] NULL,
	[PromoCode] [varchar](10) NULL,
	[TotalPrice] [int] NULL,
	[OrderCreatedAt] [datetime] NULL,
 CONSTRAINT [pk_order_id] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblOrder] ADD  DEFAULT (getdate()) FOR [OrderCreatedAt]
GO

ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [fk_customer_id] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tblCustomer] ([ID])
GO

ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [fk_customer_id]
GO


