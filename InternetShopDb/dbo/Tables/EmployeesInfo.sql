CREATE TABLE [dbo].[EmployeesInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatus] [varchar](10) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [char](12) NOT NULL,
 CONSTRAINT [PK_EmployeesInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesInfo_Employees] FOREIGN KEY([ID])
REFERENCES [dbo].[Employees] ([EmployeesID])
GO

ALTER TABLE [dbo].[EmployeesInfo] CHECK CONSTRAINT [FK_EmployeesInfo_Employees]