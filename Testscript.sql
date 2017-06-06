
USE [Testdatabase]
GO
/****** Object:  Table [dbo].[BowlingType]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BowlingType](
	[BowlingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BowlingType] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BowlingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Club]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[ClubId] [int] IDENTITY(1,1) NOT NULL,
	[ClubName] [nchar](50) NULL,
	[CountryId] [int] NULL,
	[EstablishedDate] [datetime] NULL,
	[PostCode] [int] NULL,
	[City] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[Continent] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtrasGiven]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtrasGiven](
	[ExtraScoreId] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NULL,
	[TeamId] [int] NULL,
	[Byes] [int] NULL,
	[LegByes] [int] NULL,
	[Wides] [int] NULL,
	[NoBall] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExtraScoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Feature](
	[FeatureId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HowOut]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HowOut](
	[HowOutId] [int] IDENTITY(1,1) NOT NULL,
	[HowOut] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[HowOutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndividualScores]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndividualScores](
	[ScoreId] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NULL,
	[PlayerId] [int] NULL,
	[BallsFaced] [int] NULL,
	[RunsScored] [int] NULL,
	[OversBowled] [int] NULL,
	[BowlingType] [int] NULL,
	[WicketTaken] [int] NULL,
	[Six] [int] NULL,
	[Fours] [int] NULL,
	[RunsGiven] [int] NULL,
	[HowOut] [int] NULL,
	[BowledBy] [int] NULL,
	[TeamId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ScoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Match]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[VenueId] [int] NULL,
	[MatchDate] [datetime] NULL,
	[HomeTeam] [int] NULL,
	[AwayTeam] [int] NULL,
	[MatchTypeId] [int] NULL,
	[MatchTime] [nchar](50) NULL,
	[SeriesId] [int] NULL,
	[MatchStateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchState]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchState](
	[MatchStateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
 CONSTRAINT [PK_MatchState] PRIMARY KEY CLUSTERED 
(
	[MatchStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchStats]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchStats](
	[MatchStatsId] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NULL,
	[TeamId] [int] NULL,
	[RunsScored] [int] NULL,
	[ExtraScored] [int] NULL,
	[OversReceived] [float] NULL,
	[WicketsLost] [int] NULL,
 CONSTRAINT [PK_MatchStats] PRIMARY KEY CLUSTERED 
(
	[MatchStatsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchType]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchType](
	[MatchTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
 CONSTRAINT [PK_MatchType] PRIMARY KEY CLUSTERED 
(
	[MatchTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[MemberType] [int] NULL,
	[Team] [int] NULL,
	[PlayerType] [int] NULL,
	[PlayingHand] [int] NULL,
	[IsWicketKeeper] [bit] NULL,
	[HasChangedTeamEver] [bit] NULL,
	[IsCaptain] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberType]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberType](
	[MemberTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlayerType]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerType](
	[PlayerTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlayingHand]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayingHand](
	[PlayerHandId] [int] IDENTITY(1,1) NOT NULL,
	[Hand] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerHandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Results]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ResultsId] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NULL,
	[WonBy] [int] NULL,
	[LostBy] [int] NULL,
	[DecidedToBat] [int] NULL,
	[WinningMode] [int] NULL,
	[ByRuns] [int] NULL,
	[ByWickets] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResultsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleFeature]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleFeature](
	[RoleFeatureId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Series]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[SeriesName] [nchar](50) NULL,
	[SeriesId] [int] IDENTITY(1,1) NOT NULL,
	[SeriesValidFrom] [datetime] NULL,
	[SeriesValidTo] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[TeamFlagId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[ClubId] [int] NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venue]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[CountryId] [int] NULL,
	[StateId] [varchar](50) NULL,
	[Suburb] [varchar](50) NULL,
	[PostCode] [int] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WinningMode]    Script Date: 6/06/2017 12:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinningMode](
	[WinningModeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
 CONSTRAINT [PK_WinningMode] PRIMARY KEY CLUSTERED 
(
	[WinningModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BowlingType] ON 

GO
INSERT [dbo].[BowlingType] ([BowlingTypeId], [BowlingType]) VALUES (1, N'Fast                                              ')
GO
INSERT [dbo].[BowlingType] ([BowlingTypeId], [BowlingType]) VALUES (2, N'Spin                                              ')
GO
SET IDENTITY_INSERT [dbo].[BowlingType] OFF
GO
SET IDENTITY_INSERT [dbo].[Club] ON 

GO
INSERT [dbo].[Club] ([ClubId], [ClubName], [CountryId], [EstablishedDate], [PostCode], [City]) VALUES (5, N'Bentley                                           ', 2, CAST(N'2017-04-02 00:20:24.260' AS DateTime), 6053, N'Perth                                             ')
GO
INSERT [dbo].[Club] ([ClubId], [ClubName], [CountryId], [EstablishedDate], [PostCode], [City]) VALUES (6, N'Bayswater                                         ', 2, CAST(N'2017-04-02 00:21:03.257' AS DateTime), 6000, N'Perth                                             ')
GO
SET IDENTITY_INSERT [dbo].[Club] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([CountryId], [CountryName], [Continent]) VALUES (1, N'India', N'Asia                                              ')
GO
INSERT [dbo].[Country] ([CountryId], [CountryName], [Continent]) VALUES (2, N'Australia', N'Australia                                         ')
GO
INSERT [dbo].[Country] ([CountryId], [CountryName], [Continent]) VALUES (3, N'NewZeeLand', N'Europe                                            ')
GO
INSERT [dbo].[Country] ([CountryId], [CountryName], [Continent]) VALUES (4, N'Zimwambe', N'Africa                                            ')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[ExtrasGiven] ON 

GO
INSERT [dbo].[ExtrasGiven] ([ExtraScoreId], [MatchId], [TeamId], [Byes], [LegByes], [Wides], [NoBall]) VALUES (1, 1, 1, 2, 1, 6, 2)
GO
INSERT [dbo].[ExtrasGiven] ([ExtraScoreId], [MatchId], [TeamId], [Byes], [LegByes], [Wides], [NoBall]) VALUES (2, 1, 2, 3, 0, 4, 5)
GO
SET IDENTITY_INSERT [dbo].[ExtrasGiven] OFF
GO
SET IDENTITY_INSERT [dbo].[Feature] ON 

GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'View Match', CAST(N'2017-06-06 11:24:24.477' AS DateTime), CAST(N'2017-06-06 11:24:24.477' AS DateTime), 1, CAST(N'2017-06-06 11:24:24.477' AS DateTime), 1, CAST(N'2017-06-06 11:24:24.477' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Add Match', CAST(N'2017-06-06 11:24:33.877' AS DateTime), CAST(N'2017-06-06 11:24:33.877' AS DateTime), 1, CAST(N'2017-06-06 11:24:33.877' AS DateTime), 1, CAST(N'2017-06-06 11:24:33.877' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Modify Match', CAST(N'2017-06-06 11:24:39.290' AS DateTime), CAST(N'2017-06-06 11:24:39.290' AS DateTime), 1, CAST(N'2017-06-06 11:24:39.290' AS DateTime), 1, CAST(N'2017-06-06 11:24:39.290' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'View Result', CAST(N'2017-06-06 11:24:48.667' AS DateTime), CAST(N'2017-06-06 11:24:48.667' AS DateTime), 1, CAST(N'2017-06-06 11:24:48.667' AS DateTime), 1, CAST(N'2017-06-06 11:24:48.667' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Add Result', CAST(N'2017-06-06 11:24:53.893' AS DateTime), CAST(N'2017-06-06 11:24:53.893' AS DateTime), 1, CAST(N'2017-06-06 11:24:53.893' AS DateTime), 1, CAST(N'2017-06-06 11:24:53.893' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'Modify Result', CAST(N'2017-06-06 11:24:58.440' AS DateTime), CAST(N'2017-06-06 11:24:58.440' AS DateTime), 1, CAST(N'2017-06-06 11:24:58.440' AS DateTime), 1, CAST(N'2017-06-06 11:24:58.440' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'View Venue', CAST(N'2017-06-06 11:25:09.800' AS DateTime), CAST(N'2017-06-06 11:25:09.800' AS DateTime), 1, CAST(N'2017-06-06 11:25:09.800' AS DateTime), 1, CAST(N'2017-06-06 11:25:09.800' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'Add Venue', CAST(N'2017-06-06 11:25:13.823' AS DateTime), CAST(N'2017-06-06 11:25:13.823' AS DateTime), 1, CAST(N'2017-06-06 11:25:13.823' AS DateTime), 1, CAST(N'2017-06-06 11:25:13.823' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'Modify Venue', CAST(N'2017-06-06 11:25:17.420' AS DateTime), CAST(N'2017-06-06 11:25:17.420' AS DateTime), 1, CAST(N'2017-06-06 11:25:17.420' AS DateTime), 1, CAST(N'2017-06-06 11:25:17.420' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'View Team', CAST(N'2017-06-06 11:25:33.390' AS DateTime), CAST(N'2017-06-06 11:25:33.390' AS DateTime), 1, CAST(N'2017-06-06 11:25:33.390' AS DateTime), 1, CAST(N'2017-06-06 11:25:33.390' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'Add Team', CAST(N'2017-06-06 11:25:37.800' AS DateTime), CAST(N'2017-06-06 11:25:37.800' AS DateTime), 1, CAST(N'2017-06-06 11:25:37.800' AS DateTime), 1, CAST(N'2017-06-06 11:25:37.800' AS DateTime))
GO
INSERT [dbo].[Feature] ([FeatureId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'Modify Team', CAST(N'2017-06-06 11:25:42.063' AS DateTime), CAST(N'2017-06-06 11:25:42.063' AS DateTime), 1, CAST(N'2017-06-06 11:25:42.063' AS DateTime), 1, CAST(N'2017-06-06 11:25:42.063' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO
SET IDENTITY_INSERT [dbo].[HowOut] ON 

GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (1, N'Catch                                             ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (2, N'Run Out                                           ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (3, N'Stumped                                           ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (4, N'Bowled                                            ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (5, N'Hit Wicket                                        ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (6, N'Not Out                                           ')
GO
INSERT [dbo].[HowOut] ([HowOutId], [HowOut]) VALUES (7, N'Did Not Bat                                       ')
GO
SET IDENTITY_INSERT [dbo].[HowOut] OFF
GO
SET IDENTITY_INSERT [dbo].[IndividualScores] ON 

GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (67, 1, 1, 16, 17, NULL, 1, NULL, 1, 2, NULL, 1, 12, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (68, 1, 2, 13, 18, NULL, 2, NULL, 1, 1, NULL, 1, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (69, 1, 3, 10, 0, NULL, 1, NULL, 0, 0, NULL, 1, 12, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (70, 1, 4, 13, 33, NULL, 2, NULL, 3, 0, NULL, 1, 14, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (71, 1, 5, 5, 0, NULL, 1, NULL, 0, 0, NULL, 1, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (72, 1, 6, 15, 0, 5, 2, 0, 0, 0, 20, 1, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (73, 1, 7, 25, 39, 8, 2, 1, 1, 5, 26, 1, 19, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (74, 1, 8, 2, 4, 8, 1, 4, 0, 0, 22, 1, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (75, 1, 9, 1, 4, 7, 1, 2, 0, 1, 25, 1, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (76, 1, 10, 2, 6, NULL, 2, NULL, 0, 1, NULL, 2, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (77, 1, 11, 2, 1, 8, 1, 1, 0, 0, 15, 7, 22, 1)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (78, 1, 12, 3, 1, 8, 2, 2, 0, 0, 30, 1, 7, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (79, 1, 13, 25, 22, NULL, 1, NULL, 1, 2, NULL, 1, 11, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (80, 1, 14, 11, 9, 8, 2, 1, 0, 1, 46, 1, 1, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (81, 1, 15, 13, 13, NULL, 2, NULL, 1, 0, NULL, 1, 9, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (82, 1, 16, 5, 10, 8, 1, 0, 0, 0, 11, 1, 9, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (83, 1, 17, 7, 0, NULL, 1, NULL, 0, 0, NULL, 1, 8, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (84, 1, 18, 2, 3, NULL, 2, NULL, 0, 0, NULL, 1, 8, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (85, 1, 19, 2, 4, 7, 1, 1, 0, 0, 21, 7, 8, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (86, 1, 20, 1, 4, NULL, 1, NULL, 0, 1, NULL, 6, 8, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (87, 1, 21, 2, 6, NULL, 2, NULL, 0, 1, NULL, 7, 9, 2)
GO
INSERT [dbo].[IndividualScores] ([ScoreId], [MatchId], [PlayerId], [BallsFaced], [RunsScored], [OversBowled], [BowlingType], [WicketTaken], [Six], [Fours], [RunsGiven], [HowOut], [BowledBy], [TeamId]) VALUES (88, 1, 22, 2, 1, 8, 1, 5, 0, 0, 45, 7, 8, 2)
GO
SET IDENTITY_INSERT [dbo].[IndividualScores] OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

GO
INSERT [dbo].[Match] ([MatchId], [VenueId], [MatchDate], [HomeTeam], [AwayTeam], [MatchTypeId], [MatchTime], [SeriesId], [MatchStateId]) VALUES (1, 1, CAST(N'2017-03-12 00:00:00.000' AS DateTime), 1, 2, 1, N'1:30pm                                            ', 1, 1)
GO
INSERT [dbo].[Match] ([MatchId], [VenueId], [MatchDate], [HomeTeam], [AwayTeam], [MatchTypeId], [MatchTime], [SeriesId], [MatchStateId]) VALUES (2, 2, CAST(N'2017-02-12 00:00:00.000' AS DateTime), 2, 1, 2, N'1:30pm                                            ', 1, 2)
GO
INSERT [dbo].[Match] ([MatchId], [VenueId], [MatchDate], [HomeTeam], [AwayTeam], [MatchTypeId], [MatchTime], [SeriesId], [MatchStateId]) VALUES (3, 2, CAST(N'2017-08-12 00:00:00.000' AS DateTime), 1, 2, 1, N'1:30pm                                            ', 1, 2)
GO
INSERT [dbo].[Match] ([MatchId], [VenueId], [MatchDate], [HomeTeam], [AwayTeam], [MatchTypeId], [MatchTime], [SeriesId], [MatchStateId]) VALUES (4, 1, CAST(N'2017-06-12 00:00:00.000' AS DateTime), 2, 1, 1, N'2:30 pm                                           ', 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchState] ON 

GO
INSERT [dbo].[MatchState] ([MatchStateId], [Name]) VALUES (1, N'In Progress                                       ')
GO
INSERT [dbo].[MatchState] ([MatchStateId], [Name]) VALUES (2, N'Not Played                                        ')
GO
INSERT [dbo].[MatchState] ([MatchStateId], [Name]) VALUES (3, N'Played                                            ')
GO
SET IDENTITY_INSERT [dbo].[MatchState] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchStats] ON 

GO
INSERT [dbo].[MatchStats] ([MatchStatsId], [MatchId], [TeamId], [RunsScored], [ExtraScored], [OversReceived], [WicketsLost]) VALUES (1, 1, 1, 123, 23, 12.5, 6)
GO
INSERT [dbo].[MatchStats] ([MatchStatsId], [MatchId], [TeamId], [RunsScored], [ExtraScored], [OversReceived], [WicketsLost]) VALUES (2, 1, 2, 124, 11, 15.4, 4)
GO
SET IDENTITY_INSERT [dbo].[MatchStats] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchType] ON 

GO
INSERT [dbo].[MatchType] ([MatchTypeId], [Name]) VALUES (1, N'T20                                               ')
GO
INSERT [dbo].[MatchType] ([MatchTypeId], [Name]) VALUES (2, N'Test                                              ')
GO
INSERT [dbo].[MatchType] ([MatchTypeId], [Name]) VALUES (3, N'One Day                                           ')
GO
SET IDENTITY_INSERT [dbo].[MatchType] OFF
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (1, N'B Taylor                                          ', 1, 1, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (2, N'A Flint                                           ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (3, N'D Krieg                                           ', 1, 1, 1, 2, 1, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (4, N'M Krieg                                           ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (5, N'A Beattie                                         ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (6, N'J Watson                                          ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (7, N'A Suhasaria                                       ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (8, N'B Pickersgill                                     ', 1, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (9, N'R Riachi                                          ', 1, 1, 2, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (10, N'ST Salter                                         ', 1, 1, 2, 2, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (11, N'L Giblett                                         ', 1, 1, 2, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (12, N'S Lindsay                                         ', 1, 2, 1, 1, 0, 0, 1)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (13, N'A Wickramanayake                                  ', 1, 2, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (14, N'D Scheffer                                        ', 1, 2, 1, 2, 1, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (15, N'A Abbas                                           ', 1, 2, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (16, N'DB Joy                                            ', 1, 2, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (17, N'RA Kang                                           ', 1, 2, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (18, N'D Rogers                                          ', 1, 2, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (19, N'JA Dockery                                        ', 1, 2, 1, 2, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (20, N'A Field                                           ', 1, 2, 2, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (21, N'R Hughes                                          ', 1, 2, 2, 1, 0, 0, 0)
GO
INSERT [dbo].[Member] ([MemberId], [Name], [MemberType], [Team], [PlayerType], [PlayingHand], [IsWicketKeeper], [HasChangedTeamEver], [IsCaptain]) VALUES (22, N'D Da Silva                                        ', 1, 2, 2, 1, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Member] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberType] ON 

GO
INSERT [dbo].[MemberType] ([MemberTypeId], [Name]) VALUES (1, N'Player')
GO
INSERT [dbo].[MemberType] ([MemberTypeId], [Name]) VALUES (2, N'Manager')
GO
INSERT [dbo].[MemberType] ([MemberTypeId], [Name]) VALUES (3, N'Coach')
GO
INSERT [dbo].[MemberType] ([MemberTypeId], [Name]) VALUES (4, N'President')
GO
SET IDENTITY_INSERT [dbo].[MemberType] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayerType] ON 

GO
INSERT [dbo].[PlayerType] ([PlayerTypeId], [Type]) VALUES (1, N'Batsman                                           ')
GO
INSERT [dbo].[PlayerType] ([PlayerTypeId], [Type]) VALUES (2, N'Bowler                                            ')
GO
INSERT [dbo].[PlayerType] ([PlayerTypeId], [Type]) VALUES (3, N'AllRounder                                        ')
GO
SET IDENTITY_INSERT [dbo].[PlayerType] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayingHand] ON 

GO
INSERT [dbo].[PlayingHand] ([PlayerHandId], [Hand]) VALUES (1, N'Right Handed                                      ')
GO
INSERT [dbo].[PlayingHand] ([PlayerHandId], [Hand]) VALUES (2, N'Left Handed                                       ')
GO
SET IDENTITY_INSERT [dbo].[PlayingHand] OFF
GO
SET IDENTITY_INSERT [dbo].[Results] ON 

GO
INSERT [dbo].[Results] ([ResultsId], [MatchId], [WonBy], [LostBy], [DecidedToBat], [WinningMode], [ByRuns], [ByWickets]) VALUES (1, 1, 1, 2, 1, 1, NULL, 2)
GO
INSERT [dbo].[Results] ([ResultsId], [MatchId], [WonBy], [LostBy], [DecidedToBat], [WinningMode], [ByRuns], [ByWickets]) VALUES (2, 2, 2, 1, 2, 1, NULL, 3)
GO
INSERT [dbo].[Results] ([ResultsId], [MatchId], [WonBy], [LostBy], [DecidedToBat], [WinningMode], [ByRuns], [ByWickets]) VALUES (3, 3, 1, 2, 1, 2, 23, NULL)
GO
SET IDENTITY_INSERT [dbo].[Results] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([RoleId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Player', CAST(N'2017-06-06 11:21:57.523' AS DateTime), CAST(N'2017-06-06 11:21:57.523' AS DateTime), 1, CAST(N'2017-06-06 11:21:57.523' AS DateTime), 1, CAST(N'2017-06-06 11:21:57.523' AS DateTime))
GO
INSERT [dbo].[Role] ([RoleId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Captain', CAST(N'2017-06-06 11:22:08.207' AS DateTime), CAST(N'2017-06-06 11:22:08.207' AS DateTime), 1, CAST(N'2017-06-06 11:22:08.207' AS DateTime), 1, CAST(N'2017-06-06 11:22:08.207' AS DateTime))
GO
INSERT [dbo].[Role] ([RoleId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Umpire', CAST(N'2017-06-06 11:22:17.800' AS DateTime), CAST(N'2017-06-06 11:22:17.800' AS DateTime), 1, CAST(N'2017-06-06 11:22:17.800' AS DateTime), 1, CAST(N'2017-06-06 11:22:17.800' AS DateTime))
GO
INSERT [dbo].[Role] ([RoleId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'ClubManager', CAST(N'2017-06-06 11:22:40.030' AS DateTime), CAST(N'2017-06-06 11:22:40.030' AS DateTime), 1, CAST(N'2017-06-06 11:22:40.030' AS DateTime), 1, CAST(N'2017-06-06 11:22:40.030' AS DateTime))
GO
INSERT [dbo].[Role] ([RoleId], [Name], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SuperUser', CAST(N'2017-06-06 11:22:50.527' AS DateTime), CAST(N'2017-06-06 11:22:50.527' AS DateTime), 1, CAST(N'2017-06-06 11:22:50.527' AS DateTime), 1, CAST(N'2017-06-06 11:22:50.527' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleFeature] ON 

GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 1, CAST(N'2017-06-06 11:28:52.070' AS DateTime), CAST(N'2017-06-06 11:28:52.070' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.070' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.070' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, 4, CAST(N'2017-06-06 11:28:52.160' AS DateTime), CAST(N'2017-06-06 11:28:52.160' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.160' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.160' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 1, 7, CAST(N'2017-06-06 11:28:52.163' AS DateTime), CAST(N'2017-06-06 11:28:52.163' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.163' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.163' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 1, 10, CAST(N'2017-06-06 11:28:52.167' AS DateTime), CAST(N'2017-06-06 11:28:52.167' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.167' AS DateTime), 1, CAST(N'2017-06-06 11:28:52.167' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 2, 1, CAST(N'2017-06-06 11:30:01.907' AS DateTime), CAST(N'2017-06-06 11:30:01.907' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.907' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.907' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, 2, 4, CAST(N'2017-06-06 11:30:01.913' AS DateTime), CAST(N'2017-06-06 11:30:01.913' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.913' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.913' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, 2, 7, CAST(N'2017-06-06 11:30:01.917' AS DateTime), CAST(N'2017-06-06 11:30:01.917' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.917' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.917' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, 2, 10, CAST(N'2017-06-06 11:30:01.917' AS DateTime), CAST(N'2017-06-06 11:30:01.917' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.917' AS DateTime), 1, CAST(N'2017-06-06 11:30:01.917' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, 2, 11, CAST(N'2017-06-06 11:30:43.763' AS DateTime), CAST(N'2017-06-06 11:30:43.763' AS DateTime), 1, CAST(N'2017-06-06 11:30:43.763' AS DateTime), 1, CAST(N'2017-06-06 11:30:43.763' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, 2, 12, CAST(N'2017-06-06 11:30:43.770' AS DateTime), CAST(N'2017-06-06 11:30:43.770' AS DateTime), 1, CAST(N'2017-06-06 11:30:43.770' AS DateTime), 1, CAST(N'2017-06-06 11:30:43.770' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, 3, 1, CAST(N'2017-06-06 11:31:51.910' AS DateTime), CAST(N'2017-06-06 11:31:51.910' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.910' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.910' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, 3, 4, CAST(N'2017-06-06 11:31:51.913' AS DateTime), CAST(N'2017-06-06 11:31:51.913' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.913' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.913' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, 3, 7, CAST(N'2017-06-06 11:31:51.917' AS DateTime), CAST(N'2017-06-06 11:31:51.917' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.917' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.917' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, 3, 10, CAST(N'2017-06-06 11:31:51.920' AS DateTime), CAST(N'2017-06-06 11:31:51.920' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.920' AS DateTime), 1, CAST(N'2017-06-06 11:31:51.920' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, 3, 5, CAST(N'2017-06-06 11:32:37.087' AS DateTime), CAST(N'2017-06-06 11:32:37.087' AS DateTime), 1, CAST(N'2017-06-06 11:32:37.087' AS DateTime), 1, CAST(N'2017-06-06 11:32:37.087' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, 3, 6, CAST(N'2017-06-06 11:32:37.093' AS DateTime), CAST(N'2017-06-06 11:32:37.093' AS DateTime), 1, CAST(N'2017-06-06 11:32:37.093' AS DateTime), 1, CAST(N'2017-06-06 11:32:37.093' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, 4, 1, CAST(N'2017-06-06 11:33:13.270' AS DateTime), CAST(N'2017-06-06 11:33:13.270' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.270' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.270' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, 4, 4, CAST(N'2017-06-06 11:33:13.273' AS DateTime), CAST(N'2017-06-06 11:33:13.273' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.273' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.273' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, 4, 7, CAST(N'2017-06-06 11:33:13.277' AS DateTime), CAST(N'2017-06-06 11:33:13.277' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.277' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.277' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, 4, 10, CAST(N'2017-06-06 11:33:13.280' AS DateTime), CAST(N'2017-06-06 11:33:13.280' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.280' AS DateTime), 1, CAST(N'2017-06-06 11:33:13.280' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, 4, 2, CAST(N'2017-06-06 11:34:52.023' AS DateTime), CAST(N'2017-06-06 11:34:52.023' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.023' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.023' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, 4, 3, CAST(N'2017-06-06 11:34:52.023' AS DateTime), CAST(N'2017-06-06 11:34:52.023' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.023' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.023' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, 4, 5, CAST(N'2017-06-06 11:34:52.027' AS DateTime), CAST(N'2017-06-06 11:34:52.027' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.027' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.027' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, 4, 6, CAST(N'2017-06-06 11:34:52.030' AS DateTime), CAST(N'2017-06-06 11:34:52.030' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.030' AS DateTime), 1, CAST(N'2017-06-06 11:34:52.030' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (25, 4, 8, CAST(N'2017-06-06 11:35:39.693' AS DateTime), CAST(N'2017-06-06 11:35:39.693' AS DateTime), 1, CAST(N'2017-06-06 11:35:39.693' AS DateTime), 1, CAST(N'2017-06-06 11:35:39.693' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (26, 4, 9, CAST(N'2017-06-06 11:35:39.697' AS DateTime), CAST(N'2017-06-06 11:35:39.697' AS DateTime), 1, CAST(N'2017-06-06 11:35:39.697' AS DateTime), 1, CAST(N'2017-06-06 11:35:39.697' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, 5, 1, CAST(N'2017-06-06 11:37:14.720' AS DateTime), CAST(N'2017-06-06 11:37:14.720' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.720' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.720' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, 5, 2, CAST(N'2017-06-06 11:37:14.723' AS DateTime), CAST(N'2017-06-06 11:37:14.723' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.723' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.723' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, 5, 3, CAST(N'2017-06-06 11:37:14.727' AS DateTime), CAST(N'2017-06-06 11:37:14.727' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.727' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.727' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, 5, 4, CAST(N'2017-06-06 11:37:14.730' AS DateTime), CAST(N'2017-06-06 11:37:14.730' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.730' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.730' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (31, 5, 5, CAST(N'2017-06-06 11:37:14.737' AS DateTime), CAST(N'2017-06-06 11:37:14.737' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.737' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.737' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (32, 5, 6, CAST(N'2017-06-06 11:37:14.740' AS DateTime), CAST(N'2017-06-06 11:37:14.740' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.740' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.740' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (33, 5, 7, CAST(N'2017-06-06 11:37:14.743' AS DateTime), CAST(N'2017-06-06 11:37:14.743' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.743' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.743' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, 5, 8, CAST(N'2017-06-06 11:37:14.743' AS DateTime), CAST(N'2017-06-06 11:37:14.743' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.743' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.743' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, 5, 9, CAST(N'2017-06-06 11:37:14.747' AS DateTime), CAST(N'2017-06-06 11:37:14.747' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.747' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.747' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, 5, 10, CAST(N'2017-06-06 11:37:14.750' AS DateTime), CAST(N'2017-06-06 11:37:14.750' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.750' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.750' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, 5, 11, CAST(N'2017-06-06 11:37:14.753' AS DateTime), CAST(N'2017-06-06 11:37:14.753' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.753' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.753' AS DateTime))
GO
INSERT [dbo].[RoleFeature] ([RoleFeatureId], [RoleId], [FeatureId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (38, 5, 12, CAST(N'2017-06-06 11:37:14.757' AS DateTime), CAST(N'2017-06-06 11:37:14.757' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.757' AS DateTime), 1, CAST(N'2017-06-06 11:37:14.757' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RoleFeature] OFF
GO
SET IDENTITY_INSERT [dbo].[Series] ON 

GO
INSERT [dbo].[Series] ([SeriesName], [SeriesId], [SeriesValidFrom], [SeriesValidTo]) VALUES (N'Perth W                                           ', 1, CAST(N'2017-04-02 00:23:11.393' AS DateTime), CAST(N'2017-04-02 00:23:11.393' AS DateTime))
GO
INSERT [dbo].[Series] ([SeriesName], [SeriesId], [SeriesValidFrom], [SeriesValidTo]) VALUES (N'Summers Series                                    ', 2, CAST(N'2017-05-08 15:55:05.330' AS DateTime), CAST(N'2017-05-08 15:55:05.330' AS DateTime))
GO
INSERT [dbo].[Series] ([SeriesName], [SeriesId], [SeriesValidFrom], [SeriesValidTo]) VALUES (N'UST Cup                                           ', 3, CAST(N'2017-05-08 15:53:28.460' AS DateTime), CAST(N'2017-05-08 15:53:28.460' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Series] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

GO
INSERT [dbo].[Team] ([TeamId], [Name], [ValidFrom], [ValidTo], [TeamFlagId]) VALUES (1, N'Bayswater                                         ', CAST(N'2017-04-02 00:26:25.963' AS DateTime), CAST(N'2017-04-02 00:26:25.963' AS DateTime), 1)
GO
INSERT [dbo].[Team] ([TeamId], [Name], [ValidFrom], [ValidTo], [TeamFlagId]) VALUES (2, N'Mayland                                           ', CAST(N'2017-04-02 00:26:25.967' AS DateTime), CAST(N'2017-04-02 00:26:25.967' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([UserId], [Name], [ClubId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Player1', NULL, CAST(N'2017-06-06 11:20:11.960' AS DateTime), CAST(N'2017-06-06 11:20:11.960' AS DateTime), 1, CAST(N'2017-06-06 11:20:11.960' AS DateTime), 1, CAST(N'2017-06-06 11:20:11.960' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Name], [ClubId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Captain1', NULL, CAST(N'2017-06-06 11:20:25.773' AS DateTime), CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Name], [ClubId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Umpire1', NULL, CAST(N'2017-06-06 11:20:25.773' AS DateTime), CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Name], [ClubId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'ClubManager1', NULL, CAST(N'2017-06-06 11:20:25.773' AS DateTime), CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime))
GO
INSERT [dbo].[User] ([UserId], [Name], [ClubId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SuperUser1', NULL, CAST(N'2017-06-06 11:20:25.773' AS DateTime), CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime), 1, CAST(N'2017-06-06 11:20:25.773' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 1, CAST(N'2017-06-06 12:07:51.100' AS DateTime), CAST(N'2017-06-06 12:07:51.100' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.100' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.100' AS DateTime))
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 2, 2, CAST(N'2017-06-06 12:07:51.130' AS DateTime), CAST(N'2017-06-06 12:07:51.130' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.130' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.130' AS DateTime))
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 3, 3, CAST(N'2017-06-06 12:07:51.133' AS DateTime), CAST(N'2017-06-06 12:07:51.133' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.133' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.133' AS DateTime))
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 4, 4, CAST(N'2017-06-06 12:07:51.137' AS DateTime), CAST(N'2017-06-06 12:07:51.137' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.137' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.137' AS DateTime))
GO
INSERT [dbo].[UserRole] ([UserRoleId], [UserId], [RoleId], [ValidFrom], [ValidTo], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 5, 5, CAST(N'2017-06-06 12:07:51.137' AS DateTime), CAST(N'2017-06-06 12:07:51.137' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.137' AS DateTime), 1, CAST(N'2017-06-06 12:07:51.137' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON 

GO
INSERT [dbo].[Venue] ([VenueId], [Name], [CountryId], [StateId], [Suburb], [PostCode]) VALUES (1, N'Tal Katora Stadium                                ', 1, N'Delhi', N'Netaji Subhash Nagar', 12345)
GO
INSERT [dbo].[Venue] ([VenueId], [Name], [CountryId], [StateId], [Suburb], [PostCode]) VALUES (2, N'WACA Stadium                                      ', 2, N'Perth', N'Perth', 6000)
GO
INSERT [dbo].[Venue] ([VenueId], [Name], [CountryId], [StateId], [Suburb], [PostCode]) VALUES (3, N'Subiaco Stadium                                   ', 2, N'Subiaco', N'Perth', 6020)
GO
SET IDENTITY_INSERT [dbo].[Venue] OFF
GO
SET IDENTITY_INSERT [dbo].[WinningMode] ON 

GO
INSERT [dbo].[WinningMode] ([WinningModeId], [Name]) VALUES (1, N'Wickets                                           ')
GO
INSERT [dbo].[WinningMode] ([WinningModeId], [Name]) VALUES (2, N'Runs                                              ')
GO
SET IDENTITY_INSERT [dbo].[WinningMode] OFF
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Country]
GO
ALTER TABLE [dbo].[ExtrasGiven]  WITH CHECK ADD  CONSTRAINT [FK_ExtraBowlingFirst_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([MatchId])
GO
ALTER TABLE [dbo].[ExtrasGiven] CHECK CONSTRAINT [FK_ExtraBowlingFirst_Match]
GO
ALTER TABLE [dbo].[ExtrasGiven]  WITH CHECK ADD  CONSTRAINT [FK_ExtraBowlingFirst_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[ExtrasGiven] CHECK CONSTRAINT [FK_ExtraBowlingFirst_Team]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_BowledBy] FOREIGN KEY([BowledBy])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_BowledBy]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_BowlingType] FOREIGN KEY([BowlingType])
REFERENCES [dbo].[BowlingType] ([BowlingTypeId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_BowlingType]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_HowOut] FOREIGN KEY([HowOut])
REFERENCES [dbo].[HowOut] ([HowOutId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_HowOut]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([MatchId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_Match]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_Person] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_Person]
GO
ALTER TABLE [dbo].[IndividualScores]  WITH CHECK ADD  CONSTRAINT [FK_IndividualScores_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[IndividualScores] CHECK CONSTRAINT [FK_IndividualScores_TeamId]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_MatchStateId] FOREIGN KEY([MatchStateId])
REFERENCES [dbo].[MatchState] ([MatchStateId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_MatchStateId]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_MatchTypeId] FOREIGN KEY([MatchTypeId])
REFERENCES [dbo].[MatchType] ([MatchTypeId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_MatchTypeId]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Series] FOREIGN KEY([SeriesId])
REFERENCES [dbo].[Series] ([SeriesId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Series]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_Away] FOREIGN KEY([AwayTeam])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team_Away]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_Home] FOREIGN KEY([HomeTeam])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team_Home]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Venue] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venue] ([VenueId])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Venue]
GO
ALTER TABLE [dbo].[MatchStats]  WITH CHECK ADD  CONSTRAINT [FK_MatchStats_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([MatchId])
GO
ALTER TABLE [dbo].[MatchStats] CHECK CONSTRAINT [FK_MatchStats_Match]
GO
ALTER TABLE [dbo].[MatchStats]  WITH CHECK ADD  CONSTRAINT [FK_MatchStats_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[MatchStats] CHECK CONSTRAINT [FK_MatchStats_Team]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Person_PersonType] FOREIGN KEY([MemberType])
REFERENCES [dbo].[MemberType] ([MemberTypeId])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Person_PersonType]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Person_PlayerHand] FOREIGN KEY([PlayingHand])
REFERENCES [dbo].[PlayingHand] ([PlayerHandId])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Person_PlayerHand]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Person_PlayerType] FOREIGN KEY([PlayerType])
REFERENCES [dbo].[PlayerType] ([PlayerTypeId])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Person_PlayerType]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Person_Team] FOREIGN KEY([Team])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Person_Team]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([MatchId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Match]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_TeamDecideToBat] FOREIGN KEY([DecidedToBat])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_TeamDecideToBat]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_TeamLost] FOREIGN KEY([LostBy])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_TeamLost]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_TeamWon] FOREIGN KEY([WonBy])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_TeamWon]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_WinningMode] FOREIGN KEY([WinningMode])
REFERENCES [dbo].[WinningMode] ([WinningModeId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_WinningMode]
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_FeatureId] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([FeatureId])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_FeatureId]
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_UserId]
GO
USE [master]
GO
ALTER DATABASE [Testdatabase] SET  READ_WRITE 
GO
