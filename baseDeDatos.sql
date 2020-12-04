﻿{"metadata":{"kernel_spec":{"name":"SQL","language":"sql","display_name":"SQL"},"language_info":{"name":"sql","version":""}},"nbformat":4,"nbformat_minor":2,"cells":[{"cell_type":"markdown","source":["# [dbo].[__EFMigrationsHistory]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='__EFMigrationsHistory' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["USE [StudentDB]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='__EFMigrationsHistory' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[__EFMigrationsHistory](\r\n\t[MigrationId] [nvarchar](150) NOT NULL,\r\n\t[ProductVersion] [nvarchar](32) NOT NULL,\r\n CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED \r\n(\r\n\t[MigrationId] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='__EFMigrationsHistory' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Address]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[Address]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[Address](\r\n\t[Address_id] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Student_id] [int] NULL,\r\n\t[Address_line] [nvarchar](max) NULL,\r\n\t[City] [nvarchar](max) NULL,\r\n\t[State] [nvarchar](max) NULL,\r\n\t[Zip_postcode] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Address_id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetRoleClaims]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoleClaims' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetRoleClaims](\r\n\t[Id] [int] IDENTITY(1,1) NOT NULL,\r\n\t[RoleId] [nvarchar](450) NOT NULL,\r\n\t[ClaimType] [nvarchar](max) NULL,\r\n\t[ClaimValue] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoleClaims' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetRoles]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoles' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetRoles](\r\n\t[Id] [nvarchar](450) NOT NULL,\r\n\t[Name] [nvarchar](256) NULL,\r\n\t[NormalizedName] [nvarchar](256) NULL,\r\n\t[ConcurrencyStamp] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoles' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetUserClaims]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserClaims' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetUserClaims](\r\n\t[Id] [int] IDENTITY(1,1) NOT NULL,\r\n\t[UserId] [nvarchar](450) NOT NULL,\r\n\t[ClaimType] [nvarchar](max) NULL,\r\n\t[ClaimValue] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserClaims' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetUserLogins]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserLogins' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetUserLogins](\r\n\t[LoginProvider] [nvarchar](128) NOT NULL,\r\n\t[ProviderKey] [nvarchar](128) NOT NULL,\r\n\t[ProviderDisplayName] [nvarchar](max) NULL,\r\n\t[UserId] [nvarchar](450) NOT NULL,\r\n CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED \r\n(\r\n\t[LoginProvider] ASC,\r\n\t[ProviderKey] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserLogins' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetUserRoles]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetUserRoles](\r\n\t[UserId] [nvarchar](450) NOT NULL,\r\n\t[RoleId] [nvarchar](450) NOT NULL,\r\n CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED \r\n(\r\n\t[UserId] ASC,\r\n\t[RoleId] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetUsers]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUsers' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetUsers](\r\n\t[Id] [nvarchar](450) NOT NULL,\r\n\t[UserName] [nvarchar](256) NULL,\r\n\t[NormalizedUserName] [nvarchar](256) NULL,\r\n\t[Email] [nvarchar](256) NULL,\r\n\t[NormalizedEmail] [nvarchar](256) NULL,\r\n\t[EmailConfirmed] [bit] NOT NULL,\r\n\t[PasswordHash] [nvarchar](max) NULL,\r\n\t[SecurityStamp] [nvarchar](max) NULL,\r\n\t[ConcurrencyStamp] [nvarchar](max) NULL,\r\n\t[PhoneNumber] [nvarchar](max) NULL,\r\n\t[PhoneNumberConfirmed] [bit] NOT NULL,\r\n\t[TwoFactorEnabled] [bit] NOT NULL,\r\n\t[LockoutEnd] [datetimeoffset](7) NULL,\r\n\t[LockoutEnabled] [bit] NOT NULL,\r\n\t[AccessFailedCount] [int] NOT NULL,\r\n CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUsers' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[AspNetUserTokens]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserTokens' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[AspNetUserTokens](\r\n\t[UserId] [nvarchar](450) NOT NULL,\r\n\t[LoginProvider] [nvarchar](128) NOT NULL,\r\n\t[Name] [nvarchar](128) NOT NULL,\r\n\t[Value] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED \r\n(\r\n\t[UserId] ASC,\r\n\t[LoginProvider] ASC,\r\n\t[Name] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserTokens' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Email]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[Email]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[Email](\r\n\t[Email_student] [nvarchar](450) NOT NULL,\r\n\t[Student_id] [int] NULL,\r\n\t[Email_type] [int] NOT NULL,\r\n\t[Created_on] [datetime2](7) NOT NULL,\r\n\t[Updated_on] [datetime2](7) NOT NULL,\r\n CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Email_student] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Phone]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[Phone]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[Phone](\r\n\t[Phone_id] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Student_id] [int] NULL,\r\n\t[Phone_number] [nvarchar](max) NULL,\r\n\t[Phone_type] [int] NOT NULL,\r\n\t[Area_code] [nvarchar](max) NULL,\r\n\t[Created_on] [datetime2](7) NOT NULL,\r\n\t[Updated_on] [datetime2](7) NOT NULL,\r\n\t[Country_code] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Phone_id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Student]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Student' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[Student]    Script Date: 04/12/2020 16:29:10 ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[Student](\r\n\t[Student_id] [int] IDENTITY(1,1) NOT NULL,\r\n\t[First_name] [nvarchar](max) NULL,\r\n\t[Gender] [int] NOT NULL,\r\n\t[Created_on] [datetime2](7) NOT NULL,\r\n\t[Updated_on] [datetime2](7) NOT NULL,\r\n\t[Last_name] [nvarchar](max) NULL,\r\n\t[Middle_name] [nvarchar](max) NULL,\r\n CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED \r\n(\r\n\t[Student_id] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Student' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[__EFMigrationsHistory]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='__EFMigrationsHistory' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.8')\r\n","INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201204210030_FirstMigration', N'3.1.8')\r\n","INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201204210353_Solved-VarcharBase', N'3.1.8')\r\n","INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201204210503_Solved-VarcharBase2', N'3.1.8')\r\n","INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201204211702_Solved-VarcharBase3', N'3.1.10')\r\n","INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201204211807_Solved-VarcharBase4', N'3.1.10')\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='__EFMigrationsHistory' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Address]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["SET IDENTITY_INSERT [dbo].[Address] ON \r\n","INSERT [dbo].[Address] ([Address_id], [Student_id], [Address_line], [City], [State], [Zip_postcode]) VALUES (3, 9, N'Nigromante S/N, San Marcos Yachihuacaltepec', N'Toluca', N'Estado de México', N'50285')\r\n","INSERT [dbo].[Address] ([Address_id], [Student_id], [Address_line], [City], [State], [Zip_postcode]) VALUES (4, 10, NULL, NULL, NULL, NULL)\r\n","SET IDENTITY_INSERT [dbo].[Address] OFF\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Email]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["INSERT [dbo].[Email] ([Email_student], [Student_id], [Email_type], [Created_on], [Updated_on]) VALUES (N'Emmanuel10@prueba.com', 10, 0, CAST(N'2020-12-04T16:25:19.0662891' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))\r\n","INSERT [dbo].[Email] ([Email_student], [Student_id], [Email_type], [Created_on], [Updated_on]) VALUES (N'Emmanuel9@prueba.com', 9, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T16:19:54.5689189' AS DateTime2))\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Phone]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["SET IDENTITY_INSERT [dbo].[Phone] ON \r\n","INSERT [dbo].[Phone] ([Phone_id], [Student_id], [Phone_number], [Phone_type], [Area_code], [Created_on], [Updated_on], [Country_code]) VALUES (3, 9, N'7222868490', 0, N'52', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T16:19:50.3417966' AS DateTime2), N'52')\r\n","INSERT [dbo].[Phone] ([Phone_id], [Student_id], [Phone_number], [Phone_type], [Area_code], [Created_on], [Updated_on], [Country_code]) VALUES (4, 10, NULL, 0, NULL, CAST(N'2020-12-04T16:25:19.0900887' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)\r\n","SET IDENTITY_INSERT [dbo].[Phone] OFF\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[Student]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Student' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["SET IDENTITY_INSERT [dbo].[Student] ON \r\n","INSERT [dbo].[Student] ([Student_id], [First_name], [Gender], [Created_on], [Updated_on], [Last_name], [Middle_name]) VALUES (9, N'Emmanuel', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T16:20:13.0262316' AS DateTime2), N'Secundino', N'Romero')\r\n","INSERT [dbo].[Student] ([Student_id], [First_name], [Gender], [Created_on], [Updated_on], [Last_name], [Middle_name]) VALUES (10, N'Emmanuel', 0, CAST(N'2020-12-04T16:25:18.0000000' AS DateTime2), CAST(N'2020-12-04T16:25:26.1525248' AS DateTime2), N'Secundino', N'Romero')\r\n","SET IDENTITY_INSERT [dbo].[Student] OFF\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Student' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [FK_Address_Student_Student_id]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']/ForeignKey[@Name='FK_Address_Student_Student_id']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Student_Student_id] FOREIGN KEY([Student_id])\r\nREFERENCES [dbo].[Student] ([Student_id])\r\n","GO\r\n","ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Student_Student_id]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Address' and @Schema='dbo']/ForeignKey[@Name='FK_Address_Student_Student_id']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetRoleClaims_AspNetRoles_RoleId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoleClaims' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetRoleClaims_AspNetRoles_RoleId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])\r\nREFERENCES [dbo].[AspNetRoles] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetRoleClaims' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetRoleClaims_AspNetRoles_RoleId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetUserClaims_AspNetUsers_UserId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserClaims' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserClaims_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])\r\nREFERENCES [dbo].[AspNetUsers] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserClaims' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserClaims_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetUserLogins_AspNetUsers_UserId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserLogins' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserLogins_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])\r\nREFERENCES [dbo].[AspNetUsers] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserLogins' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserLogins_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetUserRoles_AspNetRoles_RoleId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserRoles_AspNetRoles_RoleId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])\r\nREFERENCES [dbo].[AspNetRoles] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserRoles_AspNetRoles_RoleId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetUserRoles_AspNetUsers_UserId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserRoles_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])\r\nREFERENCES [dbo].[AspNetUsers] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserRoles' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserRoles_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_AspNetUserTokens_AspNetUsers_UserId]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserTokens' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserTokens_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])\r\nREFERENCES [dbo].[AspNetUsers] ([Id])\r\nON DELETE CASCADE\r\n","GO\r\n","ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='AspNetUserTokens' and @Schema='dbo']/ForeignKey[@Name='FK_AspNetUserTokens_AspNetUsers_UserId']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_Email_Student_Student_id]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']/ForeignKey[@Name='FK_Email_Student_Student_id']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FK_Email_Student_Student_id] FOREIGN KEY([Student_id])\r\nREFERENCES [dbo].[Student] ([Student_id])\r\n","GO\r\n","ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FK_Email_Student_Student_id]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Email' and @Schema='dbo']/ForeignKey[@Name='FK_Email_Student_Student_id']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK_Phone_Student_Student_id]"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']/ForeignKey[@Name='FK_Phone_Student_Student_id']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Student_Student_id] FOREIGN KEY([Student_id])\r\nREFERENCES [dbo].[Student] ([Student_id])\r\n","GO\r\n","ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_Student_Student_id]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='SECUNDINO-PRIN\\SQLEXPRESS']/Database[@Name='StudentDB']/Table[@Name='Phone' and @Schema='dbo']/ForeignKey[@Name='FK_Phone_Student_Student_id']","object_type":"ForeignKey"}}]}