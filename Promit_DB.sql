USE [Promit]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25.09.2023 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 25.09.2023 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Posivite] [nvarchar](1000) NOT NULL,
	[Negative] [nvarchar](1000) NULL,
	[Comment] [nvarchar](1000) NULL,
	[Mark] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 25.09.2023 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.09.2023 17:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230921101856_FirstMigration', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230922150550_UpdateFeedback', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (3, N'Что то понравилось 1 ', N'Все', N'Нет', 5, 4, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (4, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'1', N'Коментарий1', 3, 12, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (5, N'Есть над чем задуматься: непосредственные участники технического прогресса призывают нас к новым свершениям, которые, в свою очередь, должны быть функционально разнесены на независимые элементы. В своём стремлении улучшить пользовательский опыт мы упускаем', N'2', N'Коментарий2', 1, 13, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (6, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'3', N'Коментарий3', 2, 14, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (7, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'4', N'Коментарий4', 1, 15, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (8, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'5', N'Коментарий5', 2, 16, CAST(N'2023-01-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (9, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'6', N'Коментарий6', 4, 17, CAST(N'2023-01-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (10, N'Есть над чем задуматься: непосредственные участники технического прогресса призывают нас к новым свершениям, которые, в свою очередь, должны быть функционально разнесены на независимые элементы. В своём стремлении улучшить пользовательский опыт мы упускаем', N'7', N'Коментарий7', 5, 18, CAST(N'2023-01-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (11, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'8', N'Коментарий8', 3, 19, CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (12, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'9', N'Коментарий9', 2, 20, CAST(N'2023-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (13, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'10', N'Коментарий10', 4, 21, CAST(N'2023-02-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (14, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'11', N'Коментарий11', 2, 22, CAST(N'2023-02-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (15, N'Есть над чем задуматься: непосредственные участники технического прогресса призывают нас к новым свершениям, которые, в свою очередь, должны быть функционально разнесены на независимые элементы. В своём стремлении улучшить пользовательский опыт мы упускаем', N'12', N'Коментарий12', 3, 23, CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (16, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'13', N'Коментарий13', 3, 24, CAST(N'2023-02-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (17, N'Есть над чем задуматься: непосредственные участники технического прогресса призывают нас к новым свершениям, которые, в свою очередь, должны быть функционально разнесены на независимые элементы. В своём стремлении улучшить пользовательский опыт мы упускаем', N'14', N'Коментарий14', 2, 25, CAST(N'2023-02-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (18, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'15', N'Коментарий15', 4, 26, CAST(N'2023-02-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (19, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'16', N'Коментарий16', 4, 27, CAST(N'2023-02-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (20, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'17', N'Коментарий17', 5, 28, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (21, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'18', N'Коментарий18', 2, 29, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (22, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'19', N'Коментарий19', 4, 30, CAST(N'2023-02-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (23, N'Картельные сговоры не допускают ситуации, при которой непосредственные участники технического прогресса,', N'20', N'Коментарий20', 2, 31, CAST(N'2023-02-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedback] ([Id], [Posivite], [Negative], [Comment], [Mark], [UserId], [CreateDate]) VALUES (24, N'Но экономическая повестка сегодняшнего дня предопределяет высокую востребованность новых принципов формирования материально-технической и кадровой базы.', N'21', N'Коментарий21', 2, 32, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizations] ON 

INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (1, N'Организация1', N'Адрес1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (2, N'dwa', N'dwad')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (3, N'Где то', N'Когда то')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (4, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (5, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (6, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (7, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (8, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (9, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (10, N'Тест1', N'Тест1')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (11, N'вфц', N'вфц')
INSERT [dbo].[Organizations] ([Id], [Name], [Address]) VALUES (12, N'dwadawd', N'dawdaw')
SET IDENTITY_INSERT [dbo].[Organizations] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (4, N'Имя3', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (6, N'Имя4', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (7, N'Имя5', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (9, N'Имя6', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (10, N'Имя7', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (12, N'Имя8', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (13, N'Имя9', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (14, N'Имя10', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (15, N'Имя11', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (16, N'Имя12', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (17, N'Имя13', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (18, N'Имя14', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (19, N'Имя15', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (20, N'Имя16', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (21, N'Имя17', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (22, N'Имя18', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (23, N'Имя19', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (24, N'Имя20', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (25, N'Имя21', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (26, N'Имя22', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (27, N'Имя23', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (28, N'Имя24', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (29, N'Имя25', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (30, N'Имя26', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (31, N'Имя27', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (32, N'Имя28', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (33, N'Имя29', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (34, N'Имя30', 1)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (35, N'ewed', 2)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (36, N'Кто то', 3)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (37, N'Тест1', 5)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (38, N'Тест1', 10)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (39, N'Тест1', 9)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (40, N'Тест1', 8)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (41, N'Тест1', 7)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (42, N'Тест1', 6)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (43, N'Тест1', 4)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (44, N'тест1', 4)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (45, N'вфц', 11)
INSERT [dbo].[User] ([Id], [Name], [OrganizationId]) VALUES (46, N'dwad', 12)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreateDate]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User_UserId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Organizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Organizations_OrganizationId]
GO
