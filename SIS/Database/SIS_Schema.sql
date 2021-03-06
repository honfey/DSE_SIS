/****** Must create SIS Database first ******/
USE [SIS]
GO
/****** Object:  Schema [Administrator]    Script Date: 11-Jan-17 1:01:07 PM ******/
CREATE SCHEMA [Administrator]
GO
/****** Object:  Schema [Training]    Script Date: 11-Jan-17 1:01:07 PM ******/
CREATE SCHEMA [Training]
GO
/****** Object:  Table [Administrator].[Package]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Administrator].[Package](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentPlan] [int] NULL,
	[LoanPercent] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[SaleComfirmation] [varchar](50) NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Address]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[StreetLine1] [varchar](50) NULL,
	[StreetLine2] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[City] [varchar](20) NULL,
	[State] [varchar](20) NULL,
	[Country] [varchar](30) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Attendance]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassStudentId] [int] NULL,
	[MorningIn] [time](7) NULL,
	[MorningOut] [time](7) NULL,
	[AfternoonIn] [time](7) NULL,
	[AfternoonOut] [time](7) NULL,
	[TodayDate] [date] NULL,
	[MStatus] [varchar](50) NULL,
	[AStatus] [varchar](50) NULL,
	[Status] [bit] NULL,
	[EditBy] [varchar](50) NULL,
	[EditDate] [datetime] NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[ClassStudent]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Training].[ClassStudent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Course_ModuleId] [int] NULL,
	[StudentId] [int] NULL,
	[Day] [int] NULL,
	[Exam_Day] [int] NULL,
	[Trial_Day] [int] NULL,
	[Project_Day] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_ClassStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Training].[Course]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](50) NOT NULL,
	[PackageId] [int] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Course_Module]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Course_Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [varchar](50) NULL,
	[ModuleId] [varchar](50) NULL,
	[TrainerId] [int] NULL,
 CONSTRAINT [PK_Course_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[CourseWork]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[CourseWork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassStudentId] [int] NULL,
	[Course_ModuleId] [int] NULL,
	[TestTypeId] [int] NULL,
	[ModuleStandardId] [int] NULL,
	[Marks] [int] NULL,
	[Status] [varchar](50) NULL,
	[Total1] [int] NULL,
	[Total2] [int] NULL,
	[Total3] [int] NULL,
	[Total4] [int] NULL,
 CONSTRAINT [PK_Class_Test_ModuleStandard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Image]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Training].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](500) NULL,
	[CourseWorkId] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Training].[Intake]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Intake](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YearId] [int] NOT NULL,
	[MonthId] [int] NOT NULL,
	[CourseCode] [varchar](50) NULL,
 CONSTRAINT [PK_Intake] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Invoice]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[Ref] [varchar](50) NULL,
	[Date] [date] NULL,
	[Description] [varchar](50) NULL,
	[Description2] [varchar](50) NULL,
	[Description3] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Amount2] [decimal](18, 2) NULL,
	[Amount3] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[GST2] [decimal](18, 2) NULL,
	[GST3] [decimal](18, 2) NULL,
	[GSTAmt] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[FinalTotal] [decimal](18, 2) NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[MarkType]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[MarkType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_MarkType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Module]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[ModuleStandard]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[ModuleStandard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Course_ModuleId] [int] NULL,
	[MarkTypeId] [int] NULL,
	[LabName] [varchar](50) NULL,
	[Marks] [int] NULL,
 CONSTRAINT [PK_ModuleStandard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Month]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Month](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](4) NULL,
 CONSTRAINT [PK_Month] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Nationality]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Nationality](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Package_Course]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Package_Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [varchar](50) NOT NULL,
	[StudentId] [int] NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[FirstPay] [decimal](18, 2) NULL,
	[MonthlyInterest] [int] NULL,
	[TotalMonthlyP] [decimal](18, 2) NULL,
	[AfterPlnPay] [decimal](18, 2) NULL,
	[InterestRate] [int] NULL,
	[MonthlyPayment] [decimal](18, 2) NULL,
	[TotalLeft] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Package_Course_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[ReportCard]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Training].[ReportCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Course_ModuleId] [int] NULL,
	[StudentId] [int] NULL,
	[IntakeId] [int] NULL,
	[TrainerId] [int] NULL,
	[ClassStudentId] [int] NULL,
	[ModuleStandardId] [int] NULL,
	[CourseWorkId] [int] NULL,
 CONSTRAINT [PK_ReportCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Training].[Sibling]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Sibling](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[HomePosition] [int] NULL,
	[Occupation] [varchar](50) NULL,
 CONSTRAINT [PK_Sibling] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[SPMResult]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[SPMResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[SubjectName] [varchar](50) NULL,
	[Grade] [nchar](10) NULL,
 CONSTRAINT [PK_SPMResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Student]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [varchar](50) NULL,
	[IntakeId] [int] NULL,
	[SPMResultId] [int] NULL,
	[Insurence] [bit] NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[DOB] [date] NULL,
	[IC] [bigint] NOT NULL,
	[NationalityId] [int] NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PhoneNum] [varchar](50) NULL,
	[OtherPhoneNum] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[SingleParent] [varchar](50) NULL,
	[MomName] [varchar](50) NULL,
	[MomEdu] [varchar](50) NULL,
	[MomWorkStatus] [varchar](50) NULL,
	[MomJob] [varchar](50) NULL,
	[MomFeildWork] [varchar](50) NULL,
	[MomSectorJob] [varchar](50) NULL,
	[MomSalary] [money] NULL,
	[FatherName] [varchar](50) NULL,
	[FatherEdu] [varchar](50) NULL,
	[FatherWorkStatus] [varchar](50) NULL,
	[FatherJob] [varchar](50) NULL,
	[FatherFeildWork] [varchar](50) NULL,
	[FatherSectorJob] [varchar](50) NULL,
	[FatherSalary] [money] NULL,
	[NumSibling] [int] NULL,
	[BirthOrd] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Subject]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NULL,
	[Grade] [nchar](10) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[TestType]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[TestType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Trainer]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Trainer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IC] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNum] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[Postcode] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Race] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[FileName] [varchar](max) NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Training].[Year]    Script Date: 11-Jan-17 1:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Training].[Year](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [varchar](50) NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [Training].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[Address] CHECK CONSTRAINT [FK_Address_Student]
GO
ALTER TABLE [Training].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_ClassStudent] FOREIGN KEY([ClassStudentId])
REFERENCES [Training].[ClassStudent] ([Id])
GO
ALTER TABLE [Training].[Attendance] CHECK CONSTRAINT [FK_Attendance_ClassStudent]
GO
ALTER TABLE [Training].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Course_Module] FOREIGN KEY([Course_ModuleId])
REFERENCES [Training].[Course_Module] ([Id])
GO
ALTER TABLE [Training].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Course_Module]
GO
ALTER TABLE [Training].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student]
GO
ALTER TABLE [Training].[Course_Module]  WITH CHECK ADD  CONSTRAINT [FK_Course_Module_Course] FOREIGN KEY([CourseId])
REFERENCES [Training].[Course] ([CourseCode])
GO
ALTER TABLE [Training].[Course_Module] CHECK CONSTRAINT [FK_Course_Module_Course]
GO
ALTER TABLE [Training].[Course_Module]  WITH CHECK ADD  CONSTRAINT [FK_Course_Module_Module] FOREIGN KEY([ModuleId])
REFERENCES [Training].[Module] ([ModuleCode])
GO
ALTER TABLE [Training].[Course_Module] CHECK CONSTRAINT [FK_Course_Module_Module]
GO
ALTER TABLE [Training].[Course_Module]  WITH CHECK ADD  CONSTRAINT [FK_Course_Module_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [Training].[Trainer] ([Id])
GO
ALTER TABLE [Training].[Course_Module] CHECK CONSTRAINT [FK_Course_Module_Trainer]
GO
ALTER TABLE [Training].[CourseWork]  WITH CHECK ADD  CONSTRAINT [FK_CourseWork_ClassStudent] FOREIGN KEY([ClassStudentId])
REFERENCES [Training].[ClassStudent] ([Id])
GO
ALTER TABLE [Training].[CourseWork] CHECK CONSTRAINT [FK_CourseWork_ClassStudent]
GO
ALTER TABLE [Training].[CourseWork]  WITH CHECK ADD  CONSTRAINT [FK_CourseWork_Course_Module] FOREIGN KEY([Course_ModuleId])
REFERENCES [Training].[Course_Module] ([Id])
GO
ALTER TABLE [Training].[CourseWork] CHECK CONSTRAINT [FK_CourseWork_Course_Module]
GO
ALTER TABLE [Training].[CourseWork]  WITH CHECK ADD  CONSTRAINT [FK_CourseWork_ModuleStandard] FOREIGN KEY([ModuleStandardId])
REFERENCES [Training].[ModuleStandard] ([Id])
GO
ALTER TABLE [Training].[CourseWork] CHECK CONSTRAINT [FK_CourseWork_ModuleStandard]
GO
ALTER TABLE [Training].[CourseWork]  WITH CHECK ADD  CONSTRAINT [FK_CourseWork_TestType] FOREIGN KEY([TestTypeId])
REFERENCES [Training].[TestType] ([Id])
GO
ALTER TABLE [Training].[CourseWork] CHECK CONSTRAINT [FK_CourseWork_TestType]
GO
ALTER TABLE [Training].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_CourseWork] FOREIGN KEY([CourseWorkId])
REFERENCES [Training].[CourseWork] ([Id])
GO
ALTER TABLE [Training].[Image] CHECK CONSTRAINT [FK_Image_CourseWork]
GO
ALTER TABLE [Training].[Intake]  WITH CHECK ADD  CONSTRAINT [FK_Intake_Course] FOREIGN KEY([CourseCode])
REFERENCES [Training].[Course] ([CourseCode])
GO
ALTER TABLE [Training].[Intake] CHECK CONSTRAINT [FK_Intake_Course]
GO
ALTER TABLE [Training].[Intake]  WITH CHECK ADD  CONSTRAINT [FK_Intake_Month] FOREIGN KEY([MonthId])
REFERENCES [Training].[Month] ([Id])
GO
ALTER TABLE [Training].[Intake] CHECK CONSTRAINT [FK_Intake_Month]
GO
ALTER TABLE [Training].[Intake]  WITH CHECK ADD  CONSTRAINT [FK_Intake_Year] FOREIGN KEY([YearId])
REFERENCES [Training].[Year] ([Id])
GO
ALTER TABLE [Training].[Intake] CHECK CONSTRAINT [FK_Intake_Year]
GO
ALTER TABLE [Training].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[Invoice] CHECK CONSTRAINT [FK_Invoice_Student]
GO
ALTER TABLE [Training].[ModuleStandard]  WITH CHECK ADD  CONSTRAINT [FK_ModuleStandard_Course_Module] FOREIGN KEY([Course_ModuleId])
REFERENCES [Training].[Course_Module] ([Id])
GO
ALTER TABLE [Training].[ModuleStandard] CHECK CONSTRAINT [FK_ModuleStandard_Course_Module]
GO
ALTER TABLE [Training].[ModuleStandard]  WITH CHECK ADD  CONSTRAINT [FK_ModuleStandard_MarkType] FOREIGN KEY([MarkTypeId])
REFERENCES [Training].[MarkType] ([Id])
GO
ALTER TABLE [Training].[ModuleStandard] CHECK CONSTRAINT [FK_ModuleStandard_MarkType]
GO
ALTER TABLE [Training].[Package_Course]  WITH CHECK ADD  CONSTRAINT [FK_Package_Course_Course] FOREIGN KEY([CourseId])
REFERENCES [Training].[Course] ([CourseCode])
GO
ALTER TABLE [Training].[Package_Course] CHECK CONSTRAINT [FK_Package_Course_Course]
GO
ALTER TABLE [Training].[Package_Course]  WITH CHECK ADD  CONSTRAINT [FK_Package_Course_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[Package_Course] CHECK CONSTRAINT [FK_Package_Course_Student]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_ClassStudent] FOREIGN KEY([ClassStudentId])
REFERENCES [Training].[ClassStudent] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_ClassStudent]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_Course_Module] FOREIGN KEY([Course_ModuleId])
REFERENCES [Training].[Course_Module] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_Course_Module]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_CourseWork] FOREIGN KEY([CourseWorkId])
REFERENCES [Training].[CourseWork] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_CourseWork]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_Intake] FOREIGN KEY([IntakeId])
REFERENCES [Training].[Intake] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_Intake]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_ModuleStandard] FOREIGN KEY([ModuleStandardId])
REFERENCES [Training].[ModuleStandard] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_ModuleStandard]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_Student]
GO
ALTER TABLE [Training].[ReportCard]  WITH CHECK ADD  CONSTRAINT [FK_ReportCard_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [Training].[Trainer] ([Id])
GO
ALTER TABLE [Training].[ReportCard] CHECK CONSTRAINT [FK_ReportCard_Trainer]
GO
ALTER TABLE [Training].[Sibling]  WITH CHECK ADD  CONSTRAINT [FK_Sibling_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[Sibling] CHECK CONSTRAINT [FK_Sibling_Student]
GO
ALTER TABLE [Training].[SPMResult]  WITH CHECK ADD  CONSTRAINT [FK_SPMResult_Student] FOREIGN KEY([StudentId])
REFERENCES [Training].[Student] ([Id])
GO
ALTER TABLE [Training].[SPMResult] CHECK CONSTRAINT [FK_SPMResult_Student]
GO
ALTER TABLE [Training].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake] FOREIGN KEY([IntakeId])
REFERENCES [Training].[Intake] ([Id])
GO
ALTER TABLE [Training].[Student] CHECK CONSTRAINT [FK_Student_Intake]
GO
ALTER TABLE [Training].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Nationality] FOREIGN KEY([NationalityId])
REFERENCES [Training].[Nationality] ([Id])
GO
ALTER TABLE [Training].[Student] CHECK CONSTRAINT [FK_Student_Nationality]
GO
USE [master]
GO
ALTER DATABASE [SIS] SET  READ_WRITE 
GO
