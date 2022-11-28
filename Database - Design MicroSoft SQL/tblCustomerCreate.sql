USE [dbShopping]
GO

/****** Object:  Table [dbo].[tblCustomer]    Script Date: 28-11-2022 15:21:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCustomer](
	[ID] [int] IDENTITY(100,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](15) NULL,
	[TypeofCustomer] [varchar](60) NULL,
	[Revenue] [int] NULL,
	[Contact] [varchar](30) NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


