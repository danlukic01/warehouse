USE [aacs_PROD]
GO
/****** Object:  Table [dbo].[AccountGroupingEntryAccount]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroupingEntryAccount](
	[AccountsId] [int] NOT NULL,
	[GroupingsId] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroupingEntryAccount] PRIMARY KEY CLUSTERED 
(
	[AccountsId] ASC,
	[GroupingsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountGroupings]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroupings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
	[ParentId] [int] NULL,
	[GroupingSetId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[DisplayOrder] [int] NOT NULL,
	[AccountType] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroupings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountMappings]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountMappings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mapping] [nvarchar](256) NOT NULL,
	[EntryAccountId] [int] NOT NULL,
	[MappingSetId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_AccountMappings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountMappingSets]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountMappingSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ForFacility] [bit] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[EffectiveDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AccountMappingSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdlFunctionReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdlFunctionReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[BedMobilityTime] [nvarchar](50) NOT NULL,
	[TransfersTime] [nvarchar](50) NOT NULL,
	[MobilityLocomotionTime] [nvarchar](50) NOT NULL,
	[StairsTime] [nvarchar](50) NOT NULL,
	[ToiletingTime] [nvarchar](50) NOT NULL,
	[BathingTime] [nvarchar](50) NOT NULL,
	[DressingTime] [nvarchar](50) NOT NULL,
	[GroomingTime] [nvarchar](50) NOT NULL,
	[EatingTime] [nvarchar](50) NOT NULL,
	[BladderTime] [nvarchar](50) NOT NULL,
	[BowelTime] [nvarchar](50) NOT NULL,
	[Behavioural] [bit] NOT NULL,
	[CognitiveImpairment] [bit] NOT NULL,
	[Sensory] [bit] NOT NULL,
	[Physical] [bit] NOT NULL,
	[Swallowing] [bit] NOT NULL,
	[BarthelTotal] [int] NOT NULL,
	[CurrentFunction] [nvarchar](100) NOT NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_AdlFunctionReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaccClassTypeWeightings]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaccClassTypeWeightings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Weighting] [decimal](4, 2) NOT NULL,
	[NwauId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_AnaccClassTypeWeightings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnalyticsChartMakeUpEntryAccount]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyticsChartMakeUpEntryAccount](
	[AccountsId] [int] NOT NULL,
	[AnalysisChartMakeUpsId] [int] NOT NULL,
 CONSTRAINT [PK_AnalyticsChartMakeUpEntryAccount] PRIMARY KEY CLUSTERED 
(
	[AccountsId] ASC,
	[AnalysisChartMakeUpsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnalyticsChartMakeUps]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyticsChartMakeUps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnalyticsChartId] [int] NOT NULL,
	[GroupingSetId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AnalyticsChartMakeUps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnalyticsCharts]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyticsCharts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Order] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
	[FacilityTypeId] [int] NULL,
 CONSTRAINT [PK_AnalyticsCharts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnalyticsWatchlistItems]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyticsWatchlistItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemType] [int] NOT NULL,
	[AccountType] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AnalyticsChartId] [int] NOT NULL,
	[GroupingSetId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_AnalyticsWatchlistItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BedDays]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BedDays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Total] [int] NOT NULL,
	[FacilityProfileId] [int] NOT NULL,
	[BedDaysTypeId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_BedDays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BedDaysTypes]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BedDaysTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[AnaccClassType] [int] NOT NULL,
 CONSTRAINT [PK_BedDaysTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenchmarkMonthDatas]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchmarkMonthDatas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BenchmarkName] [nvarchar](100) NOT NULL,
	[Archived] [bit] NOT NULL,
	[ArchivedOn] [datetime2](7) NULL,
	[BenchmarkId] [int] NOT NULL,
	[UploadId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_BenchmarkMonthDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenchmarkMonthUploads]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchmarkMonthUploads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Archived] [bit] NOT NULL,
	[ArchivedOn] [datetime2](7) NULL,
	[FileDate] [date] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
	[ErrorList] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
 CONSTRAINT [PK_BenchmarkMonthUploads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benchmarks]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benchmarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[HomesCount] [int] NOT NULL,
	[FacilityTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Benchmarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareMinutes]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareMinutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Archived] [bit] NOT NULL,
	[ArchivedOn] [datetime2](7) NULL,
	[FinancialYear] [nvarchar](7) NOT NULL,
	[Quarter] [int] NOT NULL,
	[RegisteredNurseActual] [decimal](18, 4) NOT NULL,
	[EnPcwActual] [decimal](18, 4) NOT NULL,
	[RegisteredNurseTarget] [decimal](18, 4) NOT NULL,
	[EnPcwTarget] [decimal](18, 4) NOT NULL,
	[FacilityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_CareMinutes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Description] [nvarchar](2048) NOT NULL,
	[AfmScore] [int] NOT NULL,
	[CompoundingFactors] [bit] NULL,
	[ClinicalReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ClinicalLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[ResidentHeightCm] [decimal](18, 2) NULL,
	[ResidentWeightKg] [decimal](18, 2) NULL,
	[BmiCalculated] [decimal](18, 2) NOT NULL,
	[ThreeOrMoreStaffForTransfers] [bit] NOT NULL,
	[BmiResult] [nvarchar](200) NOT NULL,
	[FallsInPastTwelveMonths] [int] NULL,
	[MostRecentFallDate] [datetime2](7) NULL,
	[HighestWeightLastTwelveMonthsKg] [decimal](18, 2) NULL,
	[HighestWeightDate] [datetime2](7) NULL,
	[LowestWeightLastTwelveMonthsKg] [decimal](18, 2) NULL,
	[LowestWeightDate] [datetime2](7) NULL,
	[WeightChangePercentageCalculated] [decimal](18, 2) NOT NULL,
	[Oxygen] [bit] NOT NULL,
	[EnteralFeeding] [bit] NOT NULL,
	[Tracheostomy] [bit] NOT NULL,
	[Catheter] [bit] NOT NULL,
	[Stoma] [bit] NOT NULL,
	[PeritonealDialysis] [bit] NOT NULL,
	[ComplexWounds] [bit] NOT NULL,
	[AkpsDate] [datetime2](7) NULL,
	[RockwoodFrailtyDate] [datetime2](7) NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_ClinicalReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CognitionLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CognitionLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[CognitiveReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_CognitionLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CognitiveReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CognitiveReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[SmmseDate] [datetime2](7) NULL,
	[SmmseScore] [int] NULL,
	[PasCisDate] [datetime2](7) NULL,
	[PasCisScore] [int] NULL,
	[CognitiveSkillDate] [datetime2](7) NULL,
	[CognitiveSkillScore] [int] NULL,
	[MocaDate] [datetime2](7) NULL,
	[MocaScore] [int] NULL,
	[Memory] [int] NOT NULL,
	[Comprehension] [int] NOT NULL,
	[Expression] [int] NOT NULL,
	[SocialInteraction] [int] NOT NULL,
	[ProblemSolving] [int] NOT NULL,
	[Total] [int] NOT NULL,
	[CurrentAbility] [nvarchar](100) NOT NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_CognitiveReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrentAnaccLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrentAnaccLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewCategory] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_CurrentAnaccLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyLivingLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyLivingLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[RugActvityScore] [int] NOT NULL,
	[BarthelScore] [int] NOT NULL,
	[AfmScore] [int] NOT NULL,
	[AdlFunctionReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_DailyLivingLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entries]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[RawAccountData] [nvarchar](250) NOT NULL,
	[AccountId] [int] NOT NULL,
	[FacilityMonthTotalId] [int] NULL,
	[BenchmarkMonthDataId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[FacilityProfileId] [int] NULL,
	[OpeningBalance] [decimal](18, 6) NOT NULL,
	[IsPbdValue] [bit] NOT NULL,
 CONSTRAINT [PK_Entries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryAccountKpiChartDenominator]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryAccountKpiChartDenominator](
	[DenominatorAccountsId] [int] NOT NULL,
	[KpiChartsDenominatorId] [int] NOT NULL,
 CONSTRAINT [PK_EntryAccountKpiChartDenominator] PRIMARY KEY CLUSTERED 
(
	[DenominatorAccountsId] ASC,
	[KpiChartsDenominatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryAccountKpiChartNumerator]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryAccountKpiChartNumerator](
	[KpiChartsNumeratorId] [int] NOT NULL,
	[NumeratorAccountsId] [int] NOT NULL,
 CONSTRAINT [PK_EntryAccountKpiChartNumerator] PRIMARY KEY CLUSTERED 
(
	[KpiChartsNumeratorId] ASC,
	[NumeratorAccountsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryAccounts]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
	[AccountType] [int] NULL,
	[BedDayAnalyticsType] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[EntryAccountType] [int] NOT NULL,
	[AnaccClassType] [int] NULL,
 CONSTRAINT [PK_EntryAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ShortName] [nvarchar](20) NOT NULL,
	[DataSheetName] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[DisplayColour] [nvarchar](max) NOT NULL,
	[ProviderId] [int] NOT NULL,
	[FacilityTypeId] [int] NOT NULL,
	[FixedFundingGroup] [int] NOT NULL,
	[AddressLine1] [nvarchar](512) NOT NULL,
	[AddressLine2] [nvarchar](512) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[AusStateType] [int] NOT NULL,
	[Suburb] [nvarchar](250) NOT NULL,
	[PostCode] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](250) NOT NULL,
	[ContactName] [nvarchar](250) NOT NULL,
	[ContactPhone] [nvarchar](250) NOT NULL,
	[ContactEmail] [nvarchar](250) NOT NULL,
	[MedicareServiceId] [int] NOT NULL,
	[GLCodes] [nvarchar](256) NULL,
	[AzureGroupId] [uniqueidentifier] NULL,
	[UsersWithAccess] [nvarchar](max) NOT NULL,
	[MedicareId] [bigint] NOT NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityMonthDatas]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacilityMonthDatas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Archived] [bit] NOT NULL,
	[ArchivedOn] [datetime2](7) NULL,
	[IsBudget] [bit] NOT NULL,
	[Date] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[FacilityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
 CONSTRAINT [PK_FacilityMonthDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityProfiles]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacilityProfiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Archived] [bit] NOT NULL,
	[ArchivedOn] [datetime2](7) NULL,
	[IsBudget] [bit] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[AvailableBeds] [int] NOT NULL,
	[OccupancyTarget] [decimal](18, 4) NOT NULL,
	[SupportedResidentRatio] [decimal](18, 4) NOT NULL,
	[SupportedResidentRatioTarget] [decimal](18, 4) NOT NULL,
	[NewAdmissions] [int] NOT NULL,
	[AdjustmentPayment] [decimal](18, 6) NOT NULL,
	[MedicareSubmissions] [int] NULL,
	[MedicareSubmissionsTarget] [int] NOT NULL,
	[PayableSubsidyDays] [int] NOT NULL,
	[FixedSubsidy] [decimal](18, 6) NOT NULL,
	[FacilityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
 CONSTRAINT [PK_FacilityProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityTypes]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacilityTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_FacilityTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FixedFundingGroupTypeWeightings]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FixedFundingGroupTypeWeightings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Weighting] [decimal](4, 2) NOT NULL,
	[NwauId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_FixedFundingGroupTypeWeightings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunctionalMeasureLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionalMeasureLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Description] [nvarchar](2048) NOT NULL,
	[AfmScore] [int] NOT NULL,
	[CompoundingFactors] [bit] NULL,
	[AdlFunctionReviewId] [int] NULL,
	[CognitiveReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FunctionalMeasureLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingFixedValueLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingFixedValueLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FixedFundingGroupType] [int] NOT NULL,
	[FundingAmount] [decimal](18, 2) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_FundingFixedValueLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingVariableValueLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingVariableValueLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnaccClassType] [int] NOT NULL,
	[VariableFundingName] [nvarchar](512) NOT NULL,
	[FundingAmount] [decimal](18, 2) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
	[RegisteredNurseCareMins] [int] NOT NULL,
	[EnrolledNurseCareMins] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_FundingVariableValueLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupingSets]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupingSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[FacilityTypeId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Order] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
 CONSTRAINT [PK_GroupingSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KpiChartCategories]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KpiChartCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Order] [int] NOT NULL,
	[FacilityTypeId] [int] NULL,
 CONSTRAINT [PK_KpiChartCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KpiCharts]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KpiCharts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ChartName] [nvarchar](256) NOT NULL,
	[Order] [int] NOT NULL,
	[NumeratorName] [nvarchar](256) NOT NULL,
	[NegateNumerator] [bit] NOT NULL,
	[ChartAsDollar] [bit] NOT NULL,
	[DenominatorName] [nvarchar](256) NOT NULL,
	[NegateDenominator] [bit] NOT NULL,
	[Target] [decimal](18, 6) NOT NULL,
	[ChartCap] [decimal](18, 6) NULL,
	[ChartMinimum] [decimal](18, 6) NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[ChartCategoryId] [int] NULL,
	[ChartLabelFormat] [nvarchar](256) NOT NULL,
	[FacilityTypeId] [int] NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[RolesVisibleTo] [nvarchar](256) NULL,
 CONSTRAINT [PK_KpiCharts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KpiChartValueRatings]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KpiChartValueRatings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [float] NULL,
	[Colour] [nvarchar](max) NOT NULL,
	[KpiChartId] [int] NOT NULL,
 CONSTRAINT [PK_KpiChartValueRatings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobilityLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobilityLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[PmsScore] [int] NOT NULL,
	[AfmMapScore] [int] NULL,
	[MobilityReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_MobilityLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobilityReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobilityReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[ConfirmedDementiaDiagnosis] [bit] NOT NULL,
	[WalkGaitAidUsed] [nvarchar](2000) NOT NULL,
	[AssistanceBehavioural] [bit] NOT NULL,
	[AssistanceCognitiveImpairment] [bit] NOT NULL,
	[AssistanceSensory] [bit] NOT NULL,
	[AssistancePhysical] [bit] NOT NULL,
	[MeetsCriteriaChangeInMobility] [bit] NOT NULL,
	[CurrentBranch] [nvarchar](100) NOT NULL,
	[TotalDemmiScore] [int] NOT NULL,
	[TotalPmsScore] [int] NOT NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_MobilityReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nwaus]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nwaus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime2](7) NOT NULL,
	[NWAU] [decimal](18, 6) NOT NULL,
	[AdjustmentPaymentWeighting] [decimal](4, 2) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_Nwaus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PressureInjuryLookups]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PressureInjuryLookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Description] [nvarchar](2048) NOT NULL,
	[Stage] [nvarchar](256) NOT NULL,
	[CompoundingFactors] [bit] NULL,
	[PressureInjuryReviewId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](512) NOT NULL,
	[Score] [int] NULL,
	[DisplayOrder] [int] NOT NULL,
	[ActiveFromDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PressureInjuryLookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PressureInjuryReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PressureInjuryReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[WaterlowScoreDate] [datetime2](7) NULL,
	[WaterlowScore] [int] NULL,
	[ExistingPressureInjuryLocation] [nvarchar](2000) NOT NULL,
	[CurrentRisk] [nvarchar](100) NOT NULL,
	[ExpectedRisk] [nvarchar](100) NOT NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_PressureInjuryReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Providers]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Providers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](2048) NOT NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicHolidays]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicHolidays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[State] [int] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_PublicHolidays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenOptions]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BarthelScore] [int] NULL,
	[RugAdlScore] [int] NULL,
	[CareNeedsScore] [int] NOT NULL,
	[CompoundingFactor] [bit] NULL,
	[AfmCogScore] [int] NULL,
	[DemmiScore] [int] NULL,
	[PressureInjuryRisk] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[QuickScreenQuestionAnswerId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenQuestionAnswer]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenQuestionAnswer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Switch] [bit] NULL,
	[QuestionId] [int] NOT NULL,
	[QuickScreenId] [int] NOT NULL,
	[SelectedOptionId] [int] NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenQuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenQuestionCategories]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenQuestionCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryNumber] [int] NOT NULL,
	[CategoryIcon] [nvarchar](max) NOT NULL,
	[QuickScreenSectionType] [int] NOT NULL,
	[SetId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenQuestionCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenQuestions]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Label] [nvarchar](max) NOT NULL,
	[BoolLabel] [nvarchar](max) NOT NULL,
	[OptionalOptionsLabel] [nvarchar](max) NOT NULL,
	[Required] [bit] NOT NULL,
	[SwitchEnabled] [bit] NOT NULL,
	[AllowMultipleOptions] [bit] NOT NULL,
	[CompoundingFactor] [bit] NULL,
	[CategoryId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenQuestionSets]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenQuestionSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenQuestionSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreenResults]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreenResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EstimatedMobilityBranch] [int] NOT NULL,
	[EstimatedCognitiveAbility] [int] NOT NULL,
	[EstimatedLowerAdlFunction] [bit] NOT NULL,
	[EstimatedPressureInjuryRiskRating] [int] NOT NULL,
	[EstimatedCompoundingFactors] [bit] NOT NULL,
	[RecommendedAction] [nvarchar](200) NOT NULL,
	[BarthelIndexScore] [int] NOT NULL,
	[RugAdlScore] [int] NOT NULL,
	[OverallDomainScore] [int] NOT NULL,
	[CognitionDomainScore] [int] NOT NULL,
	[MobilityDomainScore] [int] NOT NULL,
	[MealsDomainScore] [int] NOT NULL,
	[PersonalCareDomainScore] [int] NOT NULL,
	[PressureInjuryDomainScore] [int] NOT NULL,
	[BehavioursDomainScore] [int] NOT NULL,
	[HealthStatusDomainScore] [int] NOT NULL,
	[QuickScreenId] [int] NOT NULL,
	[EstimatedVariableFundingId] [int] NOT NULL,
	[CurrentVariableFundingId] [int] NULL,
	[FixedFundingGroupValueId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreenResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuickScreens]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickScreens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScreenDate] [datetime2](7) NOT NULL,
	[FacilityId] [int] NOT NULL,
	[ResidentId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_QuickScreens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentAnaccClassificationHistories]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentAnaccClassificationHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnaccClassType] [int] NOT NULL,
	[ActiveFrom] [datetime2](7) NULL,
	[ActiveTo] [datetime2](7) NULL,
	[ResidentId] [int] NOT NULL,
 CONSTRAINT [PK_ResidentAnaccClassificationHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentFilters]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentFilters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityFilters] [nvarchar](100) NOT NULL,
	[ProviderFilters] [nvarchar](100) NOT NULL,
	[StateFilters] [nvarchar](100) NOT NULL,
	[ResidentStatusFilters] [nvarchar](100) NOT NULL,
	[AnaccClassFilters] [nvarchar](100) NOT NULL,
	[DepartureFilters] [nvarchar](100) NOT NULL,
	[HospitalDischargeFilters] [nvarchar](100) NOT NULL,
	[EntryDate] [nvarchar](100) NOT NULL,
	[AnaccEffectiveDateFilters] [nvarchar](100) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ResidentFilters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentImages]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResidentId] [int] NOT NULL,
	[ImageName] [nvarchar](250) NOT NULL,
	[ProfileImage] [varbinary](max) NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_ResidentImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentLeaveEvents]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentLeaveEvents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LeaveReason] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[EventId] [nvarchar](max) NOT NULL,
	[ResidentId] [int] NOT NULL,
 CONSTRAINT [PK_ResidentLeaveEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentReviewCompoundingFactors]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentReviewCompoundingFactors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Name] [nvarchar](512) NOT NULL,
	[ResponseValue] [nvarchar](max) NOT NULL,
	[CompoundingFactor] [bit] NOT NULL,
	[ReviewId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
 CONSTRAINT [PK_ResidentReviewCompoundingFactors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentReviews]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewStatusType] [int] NOT NULL,
	[ReviewCompletionDate] [datetime2](7) NULL,
	[LastAssessmentDate] [datetime2](7) NULL,
	[HospitalisationSinceLastAssessment] [int] NULL,
	[HospitalAdmissionDate] [datetime2](7) NULL,
	[HospitalisationReason] [nvarchar](2000) NOT NULL,
	[ResidentSpecificComments] [nvarchar](2000) NOT NULL,
	[JustificationNotes] [nvarchar](1000) NOT NULL,
	[PredictedAnaccClassRangeType] [int] NOT NULL,
	[RecommendReClassification] [bit] NOT NULL,
	[PredictedVariableFundingValueId] [int] NULL,
	[CurrentVariableFundingValueId] [int] NULL,
	[FixedFundingGroupValueId] [int] NULL,
	[ResidentId] [int] NOT NULL,
	[FacilityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[InvolvedUsers] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ResidentReviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Residents]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Residents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CareRecipientId] [nvarchar](50) NOT NULL,
	[SparcRecipientId] [nvarchar](50) NOT NULL,
	[AgedCareGatewayId] [nvarchar](50) NOT NULL,
	[ProviderReference] [nvarchar](256) NOT NULL,
	[ResidentStatus] [int] NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[PreferredName] [nvarchar](200) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[GenderOther] [nvarchar](200) NOT NULL,
	[Language] [nvarchar](200) NOT NULL,
	[FacilityArea] [nvarchar](50) NOT NULL,
	[Floor] [nvarchar](50) NOT NULL,
	[RoomNumber] [nvarchar](50) NOT NULL,
	[AdmissionDate] [datetime2](7) NULL,
	[CurrentAnaccClass] [int] NOT NULL,
	[LastAssessmentDate] [datetime2](7) NULL,
	[FacilityId] [int] NOT NULL,
	[CreatedBy] [nvarchar](900) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](900) NULL,
	[LastModified] [datetime2](7) NULL,
	[UsersWithAccess] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Residents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAssignedTasks]    Script Date: 7/07/2025 3:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAssignedTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AssignedTaskType] [int] NOT NULL,
	[DateAssigned] [datetime2](7) NOT NULL,
	[DateDue] [datetime2](7) NULL,
	[ResidentId] [int] NOT NULL,
	[ResidentReviewId] [int] NULL,
	[TaskNotes] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_UserAssignedTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountGroupings] ADD  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[AccountGroupings] ADD  DEFAULT ((0)) FOR [AccountType]
GO
ALTER TABLE [dbo].[AccountMappingSets] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EffectiveDate]
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUps] ADD  DEFAULT (N'') FOR [Notes]
GO
ALTER TABLE [dbo].[BedDaysTypes] ADD  DEFAULT ((0)) FOR [AnaccClassType]
GO
ALTER TABLE [dbo].[Entries] ADD  DEFAULT ((0.0)) FOR [OpeningBalance]
GO
ALTER TABLE [dbo].[Entries] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsPbdValue]
GO
ALTER TABLE [dbo].[EntryAccounts] ADD  DEFAULT ((0)) FOR [EntryAccountType]
GO
ALTER TABLE [dbo].[Facilities] ADD  DEFAULT ((0)) FOR [MedicareServiceId]
GO
ALTER TABLE [dbo].[Facilities] ADD  DEFAULT (N'') FOR [UsersWithAccess]
GO
ALTER TABLE [dbo].[Facilities] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [MedicareId]
GO
ALTER TABLE [dbo].[GroupingSets] ADD  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[GroupingSets] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Deleted]
GO
ALTER TABLE [dbo].[KpiCharts] ADD  DEFAULT (N'') FOR [ChartLabelFormat]
GO
ALTER TABLE [dbo].[KpiCharts] ADD  DEFAULT (N'') FOR [Notes]
GO
ALTER TABLE [dbo].[ResidentReviews] ADD  DEFAULT (N'') FOR [InvolvedUsers]
GO
ALTER TABLE [dbo].[Residents] ADD  DEFAULT (N'') FOR [UsersWithAccess]
GO
ALTER TABLE [dbo].[AccountGroupingEntryAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupingEntryAccount_AccountGroupings_GroupingsId] FOREIGN KEY([GroupingsId])
REFERENCES [dbo].[AccountGroupings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupingEntryAccount] CHECK CONSTRAINT [FK_AccountGroupingEntryAccount_AccountGroupings_GroupingsId]
GO
ALTER TABLE [dbo].[AccountGroupingEntryAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupingEntryAccount_EntryAccounts_AccountsId] FOREIGN KEY([AccountsId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupingEntryAccount] CHECK CONSTRAINT [FK_AccountGroupingEntryAccount_EntryAccounts_AccountsId]
GO
ALTER TABLE [dbo].[AccountGroupings]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupings_AccountGroupings_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AccountGroupings] ([Id])
GO
ALTER TABLE [dbo].[AccountGroupings] CHECK CONSTRAINT [FK_AccountGroupings_AccountGroupings_ParentId]
GO
ALTER TABLE [dbo].[AccountGroupings]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupings_GroupingSets_GroupingSetId] FOREIGN KEY([GroupingSetId])
REFERENCES [dbo].[GroupingSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupings] CHECK CONSTRAINT [FK_AccountGroupings_GroupingSets_GroupingSetId]
GO
ALTER TABLE [dbo].[AccountMappings]  WITH CHECK ADD  CONSTRAINT [FK_AccountMappings_AccountMappingSets_MappingSetId] FOREIGN KEY([MappingSetId])
REFERENCES [dbo].[AccountMappingSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountMappings] CHECK CONSTRAINT [FK_AccountMappings_AccountMappingSets_MappingSetId]
GO
ALTER TABLE [dbo].[AccountMappings]  WITH CHECK ADD  CONSTRAINT [FK_AccountMappings_EntryAccounts_EntryAccountId] FOREIGN KEY([EntryAccountId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountMappings] CHECK CONSTRAINT [FK_AccountMappings_EntryAccounts_EntryAccountId]
GO
ALTER TABLE [dbo].[AdlFunctionReviews]  WITH CHECK ADD  CONSTRAINT [FK_AdlFunctionReviews_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdlFunctionReviews] CHECK CONSTRAINT [FK_AdlFunctionReviews_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[AnaccClassTypeWeightings]  WITH CHECK ADD  CONSTRAINT [FK_AnaccClassTypeWeightings_Nwaus_NwauId] FOREIGN KEY([NwauId])
REFERENCES [dbo].[Nwaus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnaccClassTypeWeightings] CHECK CONSTRAINT [FK_AnaccClassTypeWeightings_Nwaus_NwauId]
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUpEntryAccount]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsChartMakeUpEntryAccount_AnalyticsChartMakeUps_AnalysisChartMakeUpsId] FOREIGN KEY([AnalysisChartMakeUpsId])
REFERENCES [dbo].[AnalyticsChartMakeUps] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUpEntryAccount] CHECK CONSTRAINT [FK_AnalyticsChartMakeUpEntryAccount_AnalyticsChartMakeUps_AnalysisChartMakeUpsId]
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUpEntryAccount]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsChartMakeUpEntryAccount_EntryAccounts_AccountsId] FOREIGN KEY([AccountsId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUpEntryAccount] CHECK CONSTRAINT [FK_AnalyticsChartMakeUpEntryAccount_EntryAccounts_AccountsId]
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUps]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsChartMakeUps_AnalyticsCharts_AnalyticsChartId] FOREIGN KEY([AnalyticsChartId])
REFERENCES [dbo].[AnalyticsCharts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUps] CHECK CONSTRAINT [FK_AnalyticsChartMakeUps_AnalyticsCharts_AnalyticsChartId]
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUps]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsChartMakeUps_GroupingSets_GroupingSetId] FOREIGN KEY([GroupingSetId])
REFERENCES [dbo].[GroupingSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsChartMakeUps] CHECK CONSTRAINT [FK_AnalyticsChartMakeUps_GroupingSets_GroupingSetId]
GO
ALTER TABLE [dbo].[AnalyticsCharts]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsCharts_FacilityTypes_FacilityTypeId] FOREIGN KEY([FacilityTypeId])
REFERENCES [dbo].[FacilityTypes] ([Id])
GO
ALTER TABLE [dbo].[AnalyticsCharts] CHECK CONSTRAINT [FK_AnalyticsCharts_FacilityTypes_FacilityTypeId]
GO
ALTER TABLE [dbo].[AnalyticsWatchlistItems]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsWatchlistItems_AnalyticsCharts_AnalyticsChartId] FOREIGN KEY([AnalyticsChartId])
REFERENCES [dbo].[AnalyticsCharts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsWatchlistItems] CHECK CONSTRAINT [FK_AnalyticsWatchlistItems_AnalyticsCharts_AnalyticsChartId]
GO
ALTER TABLE [dbo].[AnalyticsWatchlistItems]  WITH CHECK ADD  CONSTRAINT [FK_AnalyticsWatchlistItems_GroupingSets_GroupingSetId] FOREIGN KEY([GroupingSetId])
REFERENCES [dbo].[GroupingSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnalyticsWatchlistItems] CHECK CONSTRAINT [FK_AnalyticsWatchlistItems_GroupingSets_GroupingSetId]
GO
ALTER TABLE [dbo].[BedDays]  WITH CHECK ADD  CONSTRAINT [FK_BedDays_BedDaysTypes_BedDaysTypeId] FOREIGN KEY([BedDaysTypeId])
REFERENCES [dbo].[BedDaysTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BedDays] CHECK CONSTRAINT [FK_BedDays_BedDaysTypes_BedDaysTypeId]
GO
ALTER TABLE [dbo].[BedDays]  WITH CHECK ADD  CONSTRAINT [FK_BedDays_FacilityProfiles_FacilityProfileId] FOREIGN KEY([FacilityProfileId])
REFERENCES [dbo].[FacilityProfiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BedDays] CHECK CONSTRAINT [FK_BedDays_FacilityProfiles_FacilityProfileId]
GO
ALTER TABLE [dbo].[BenchmarkMonthDatas]  WITH CHECK ADD  CONSTRAINT [FK_BenchmarkMonthDatas_BenchmarkMonthUploads_UploadId] FOREIGN KEY([UploadId])
REFERENCES [dbo].[BenchmarkMonthUploads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BenchmarkMonthDatas] CHECK CONSTRAINT [FK_BenchmarkMonthDatas_BenchmarkMonthUploads_UploadId]
GO
ALTER TABLE [dbo].[BenchmarkMonthDatas]  WITH CHECK ADD  CONSTRAINT [FK_BenchmarkMonthDatas_Benchmarks_BenchmarkId] FOREIGN KEY([BenchmarkId])
REFERENCES [dbo].[Benchmarks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BenchmarkMonthDatas] CHECK CONSTRAINT [FK_BenchmarkMonthDatas_Benchmarks_BenchmarkId]
GO
ALTER TABLE [dbo].[Benchmarks]  WITH CHECK ADD  CONSTRAINT [FK_Benchmarks_FacilityTypes_FacilityTypeId] FOREIGN KEY([FacilityTypeId])
REFERENCES [dbo].[FacilityTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Benchmarks] CHECK CONSTRAINT [FK_Benchmarks_FacilityTypes_FacilityTypeId]
GO
ALTER TABLE [dbo].[CareMinutes]  WITH CHECK ADD  CONSTRAINT [FK_CareMinutes_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CareMinutes] CHECK CONSTRAINT [FK_CareMinutes_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[ClinicalLookups]  WITH CHECK ADD  CONSTRAINT [FK_ClinicalLookups_ClinicalReviews_ClinicalReviewId] FOREIGN KEY([ClinicalReviewId])
REFERENCES [dbo].[ClinicalReviews] ([Id])
GO
ALTER TABLE [dbo].[ClinicalLookups] CHECK CONSTRAINT [FK_ClinicalLookups_ClinicalReviews_ClinicalReviewId]
GO
ALTER TABLE [dbo].[ClinicalReviews]  WITH CHECK ADD  CONSTRAINT [FK_ClinicalReviews_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClinicalReviews] CHECK CONSTRAINT [FK_ClinicalReviews_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[CognitionLookups]  WITH CHECK ADD  CONSTRAINT [FK_CognitionLookups_CognitiveReviews_CognitiveReviewId] FOREIGN KEY([CognitiveReviewId])
REFERENCES [dbo].[CognitiveReviews] ([Id])
GO
ALTER TABLE [dbo].[CognitionLookups] CHECK CONSTRAINT [FK_CognitionLookups_CognitiveReviews_CognitiveReviewId]
GO
ALTER TABLE [dbo].[CognitiveReviews]  WITH CHECK ADD  CONSTRAINT [FK_CognitiveReviews_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CognitiveReviews] CHECK CONSTRAINT [FK_CognitiveReviews_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[DailyLivingLookups]  WITH CHECK ADD  CONSTRAINT [FK_DailyLivingLookups_AdlFunctionReviews_AdlFunctionReviewId] FOREIGN KEY([AdlFunctionReviewId])
REFERENCES [dbo].[AdlFunctionReviews] ([Id])
GO
ALTER TABLE [dbo].[DailyLivingLookups] CHECK CONSTRAINT [FK_DailyLivingLookups_AdlFunctionReviews_AdlFunctionReviewId]
GO
ALTER TABLE [dbo].[Entries]  WITH CHECK ADD  CONSTRAINT [FK_Entries_BenchmarkMonthDatas_BenchmarkMonthDataId] FOREIGN KEY([BenchmarkMonthDataId])
REFERENCES [dbo].[BenchmarkMonthDatas] ([Id])
GO
ALTER TABLE [dbo].[Entries] CHECK CONSTRAINT [FK_Entries_BenchmarkMonthDatas_BenchmarkMonthDataId]
GO
ALTER TABLE [dbo].[Entries]  WITH CHECK ADD  CONSTRAINT [FK_Entries_EntryAccounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entries] CHECK CONSTRAINT [FK_Entries_EntryAccounts_AccountId]
GO
ALTER TABLE [dbo].[Entries]  WITH CHECK ADD  CONSTRAINT [FK_Entries_FacilityMonthDatas_FacilityMonthTotalId] FOREIGN KEY([FacilityMonthTotalId])
REFERENCES [dbo].[FacilityMonthDatas] ([Id])
GO
ALTER TABLE [dbo].[Entries] CHECK CONSTRAINT [FK_Entries_FacilityMonthDatas_FacilityMonthTotalId]
GO
ALTER TABLE [dbo].[Entries]  WITH CHECK ADD  CONSTRAINT [FK_Entries_FacilityProfiles_FacilityProfileId] FOREIGN KEY([FacilityProfileId])
REFERENCES [dbo].[FacilityProfiles] ([Id])
GO
ALTER TABLE [dbo].[Entries] CHECK CONSTRAINT [FK_Entries_FacilityProfiles_FacilityProfileId]
GO
ALTER TABLE [dbo].[EntryAccountKpiChartDenominator]  WITH CHECK ADD  CONSTRAINT [FK_EntryAccountKpiChartDenominator_EntryAccounts_DenominatorAccountsId] FOREIGN KEY([DenominatorAccountsId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryAccountKpiChartDenominator] CHECK CONSTRAINT [FK_EntryAccountKpiChartDenominator_EntryAccounts_DenominatorAccountsId]
GO
ALTER TABLE [dbo].[EntryAccountKpiChartDenominator]  WITH CHECK ADD  CONSTRAINT [FK_EntryAccountKpiChartDenominator_KpiCharts_KpiChartsDenominatorId] FOREIGN KEY([KpiChartsDenominatorId])
REFERENCES [dbo].[KpiCharts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryAccountKpiChartDenominator] CHECK CONSTRAINT [FK_EntryAccountKpiChartDenominator_KpiCharts_KpiChartsDenominatorId]
GO
ALTER TABLE [dbo].[EntryAccountKpiChartNumerator]  WITH CHECK ADD  CONSTRAINT [FK_EntryAccountKpiChartNumerator_EntryAccounts_NumeratorAccountsId] FOREIGN KEY([NumeratorAccountsId])
REFERENCES [dbo].[EntryAccounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryAccountKpiChartNumerator] CHECK CONSTRAINT [FK_EntryAccountKpiChartNumerator_EntryAccounts_NumeratorAccountsId]
GO
ALTER TABLE [dbo].[EntryAccountKpiChartNumerator]  WITH CHECK ADD  CONSTRAINT [FK_EntryAccountKpiChartNumerator_KpiCharts_KpiChartsNumeratorId] FOREIGN KEY([KpiChartsNumeratorId])
REFERENCES [dbo].[KpiCharts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryAccountKpiChartNumerator] CHECK CONSTRAINT [FK_EntryAccountKpiChartNumerator_KpiCharts_KpiChartsNumeratorId]
GO
ALTER TABLE [dbo].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_FacilityTypes_FacilityTypeId] FOREIGN KEY([FacilityTypeId])
REFERENCES [dbo].[FacilityTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Facilities] CHECK CONSTRAINT [FK_Facilities_FacilityTypes_FacilityTypeId]
GO
ALTER TABLE [dbo].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_Providers_ProviderId] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Providers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Facilities] CHECK CONSTRAINT [FK_Facilities_Providers_ProviderId]
GO
ALTER TABLE [dbo].[FacilityMonthDatas]  WITH CHECK ADD  CONSTRAINT [FK_FacilityMonthDatas_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacilityMonthDatas] CHECK CONSTRAINT [FK_FacilityMonthDatas_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[FacilityProfiles]  WITH CHECK ADD  CONSTRAINT [FK_FacilityProfiles_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacilityProfiles] CHECK CONSTRAINT [FK_FacilityProfiles_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[FixedFundingGroupTypeWeightings]  WITH CHECK ADD  CONSTRAINT [FK_FixedFundingGroupTypeWeightings_Nwaus_NwauId] FOREIGN KEY([NwauId])
REFERENCES [dbo].[Nwaus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FixedFundingGroupTypeWeightings] CHECK CONSTRAINT [FK_FixedFundingGroupTypeWeightings_Nwaus_NwauId]
GO
ALTER TABLE [dbo].[FunctionalMeasureLookups]  WITH CHECK ADD  CONSTRAINT [FK_FunctionalMeasureLookups_AdlFunctionReviews_AdlFunctionReviewId] FOREIGN KEY([AdlFunctionReviewId])
REFERENCES [dbo].[AdlFunctionReviews] ([Id])
GO
ALTER TABLE [dbo].[FunctionalMeasureLookups] CHECK CONSTRAINT [FK_FunctionalMeasureLookups_AdlFunctionReviews_AdlFunctionReviewId]
GO
ALTER TABLE [dbo].[FunctionalMeasureLookups]  WITH CHECK ADD  CONSTRAINT [FK_FunctionalMeasureLookups_CognitiveReviews_CognitiveReviewId] FOREIGN KEY([CognitiveReviewId])
REFERENCES [dbo].[CognitiveReviews] ([Id])
GO
ALTER TABLE [dbo].[FunctionalMeasureLookups] CHECK CONSTRAINT [FK_FunctionalMeasureLookups_CognitiveReviews_CognitiveReviewId]
GO
ALTER TABLE [dbo].[GroupingSets]  WITH CHECK ADD  CONSTRAINT [FK_GroupingSets_FacilityTypes_FacilityTypeId] FOREIGN KEY([FacilityTypeId])
REFERENCES [dbo].[FacilityTypes] ([Id])
GO
ALTER TABLE [dbo].[GroupingSets] CHECK CONSTRAINT [FK_GroupingSets_FacilityTypes_FacilityTypeId]
GO
ALTER TABLE [dbo].[KpiCharts]  WITH CHECK ADD  CONSTRAINT [FK_KpiCharts_FacilityTypes_FacilityTypeId] FOREIGN KEY([FacilityTypeId])
REFERENCES [dbo].[FacilityTypes] ([Id])
GO
ALTER TABLE [dbo].[KpiCharts] CHECK CONSTRAINT [FK_KpiCharts_FacilityTypes_FacilityTypeId]
GO
ALTER TABLE [dbo].[KpiCharts]  WITH CHECK ADD  CONSTRAINT [FK_KpiCharts_KpiChartCategories_ChartCategoryId] FOREIGN KEY([ChartCategoryId])
REFERENCES [dbo].[KpiChartCategories] ([Id])
GO
ALTER TABLE [dbo].[KpiCharts] CHECK CONSTRAINT [FK_KpiCharts_KpiChartCategories_ChartCategoryId]
GO
ALTER TABLE [dbo].[KpiChartValueRatings]  WITH CHECK ADD  CONSTRAINT [FK_KpiChartValueRatings_KpiCharts_KpiChartId] FOREIGN KEY([KpiChartId])
REFERENCES [dbo].[KpiCharts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KpiChartValueRatings] CHECK CONSTRAINT [FK_KpiChartValueRatings_KpiCharts_KpiChartId]
GO
ALTER TABLE [dbo].[MobilityLookups]  WITH CHECK ADD  CONSTRAINT [FK_MobilityLookups_MobilityReviews_MobilityReviewId] FOREIGN KEY([MobilityReviewId])
REFERENCES [dbo].[MobilityReviews] ([Id])
GO
ALTER TABLE [dbo].[MobilityLookups] CHECK CONSTRAINT [FK_MobilityLookups_MobilityReviews_MobilityReviewId]
GO
ALTER TABLE [dbo].[MobilityReviews]  WITH CHECK ADD  CONSTRAINT [FK_MobilityReviews_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MobilityReviews] CHECK CONSTRAINT [FK_MobilityReviews_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[PressureInjuryLookups]  WITH CHECK ADD  CONSTRAINT [FK_PressureInjuryLookups_PressureInjuryReviews_PressureInjuryReviewId] FOREIGN KEY([PressureInjuryReviewId])
REFERENCES [dbo].[PressureInjuryReviews] ([Id])
GO
ALTER TABLE [dbo].[PressureInjuryLookups] CHECK CONSTRAINT [FK_PressureInjuryLookups_PressureInjuryReviews_PressureInjuryReviewId]
GO
ALTER TABLE [dbo].[PressureInjuryReviews]  WITH CHECK ADD  CONSTRAINT [FK_PressureInjuryReviews_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PressureInjuryReviews] CHECK CONSTRAINT [FK_PressureInjuryReviews_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[QuickScreenOptions]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenOptions_QuickScreenQuestionAnswer_QuickScreenQuestionAnswerId] FOREIGN KEY([QuickScreenQuestionAnswerId])
REFERENCES [dbo].[QuickScreenQuestionAnswer] ([Id])
GO
ALTER TABLE [dbo].[QuickScreenOptions] CHECK CONSTRAINT [FK_QuickScreenOptions_QuickScreenQuestionAnswer_QuickScreenQuestionAnswerId]
GO
ALTER TABLE [dbo].[QuickScreenOptions]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenOptions_QuickScreenQuestions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuickScreenQuestions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenOptions] CHECK CONSTRAINT [FK_QuickScreenOptions_QuickScreenQuestions_QuestionId]
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreenOptions_SelectedOptionId] FOREIGN KEY([SelectedOptionId])
REFERENCES [dbo].[QuickScreenOptions] ([Id])
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer] CHECK CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreenOptions_SelectedOptionId]
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreenQuestions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuickScreenQuestions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer] CHECK CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreenQuestions_QuestionId]
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreens_QuickScreenId] FOREIGN KEY([QuickScreenId])
REFERENCES [dbo].[QuickScreens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenQuestionAnswer] CHECK CONSTRAINT [FK_QuickScreenQuestionAnswer_QuickScreens_QuickScreenId]
GO
ALTER TABLE [dbo].[QuickScreenQuestionCategories]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenQuestionCategories_QuickScreenQuestionSets_SetId] FOREIGN KEY([SetId])
REFERENCES [dbo].[QuickScreenQuestionSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenQuestionCategories] CHECK CONSTRAINT [FK_QuickScreenQuestionCategories_QuickScreenQuestionSets_SetId]
GO
ALTER TABLE [dbo].[QuickScreenQuestions]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenQuestions_QuickScreenQuestionCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[QuickScreenQuestionCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenQuestions] CHECK CONSTRAINT [FK_QuickScreenQuestions_QuickScreenQuestionCategories_CategoryId]
GO
ALTER TABLE [dbo].[QuickScreenResults]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenResults_FundingFixedValueLookups_FixedFundingGroupValueId] FOREIGN KEY([FixedFundingGroupValueId])
REFERENCES [dbo].[FundingFixedValueLookups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenResults] CHECK CONSTRAINT [FK_QuickScreenResults_FundingFixedValueLookups_FixedFundingGroupValueId]
GO
ALTER TABLE [dbo].[QuickScreenResults]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenResults_FundingVariableValueLookups_CurrentVariableFundingId] FOREIGN KEY([CurrentVariableFundingId])
REFERENCES [dbo].[FundingVariableValueLookups] ([Id])
GO
ALTER TABLE [dbo].[QuickScreenResults] CHECK CONSTRAINT [FK_QuickScreenResults_FundingVariableValueLookups_CurrentVariableFundingId]
GO
ALTER TABLE [dbo].[QuickScreenResults]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenResults_FundingVariableValueLookups_EstimatedVariableFundingId] FOREIGN KEY([EstimatedVariableFundingId])
REFERENCES [dbo].[FundingVariableValueLookups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenResults] CHECK CONSTRAINT [FK_QuickScreenResults_FundingVariableValueLookups_EstimatedVariableFundingId]
GO
ALTER TABLE [dbo].[QuickScreenResults]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreenResults_QuickScreens_QuickScreenId] FOREIGN KEY([QuickScreenId])
REFERENCES [dbo].[QuickScreens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreenResults] CHECK CONSTRAINT [FK_QuickScreenResults_QuickScreens_QuickScreenId]
GO
ALTER TABLE [dbo].[QuickScreens]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreens_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuickScreens] CHECK CONSTRAINT [FK_QuickScreens_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[QuickScreens]  WITH CHECK ADD  CONSTRAINT [FK_QuickScreens_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
GO
ALTER TABLE [dbo].[QuickScreens] CHECK CONSTRAINT [FK_QuickScreens_Residents_ResidentId]
GO
ALTER TABLE [dbo].[ResidentAnaccClassificationHistories]  WITH CHECK ADD  CONSTRAINT [FK_ResidentAnaccClassificationHistories_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentAnaccClassificationHistories] CHECK CONSTRAINT [FK_ResidentAnaccClassificationHistories_Residents_ResidentId]
GO
ALTER TABLE [dbo].[ResidentImages]  WITH CHECK ADD  CONSTRAINT [FK_ResidentImages_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentImages] CHECK CONSTRAINT [FK_ResidentImages_Residents_ResidentId]
GO
ALTER TABLE [dbo].[ResidentLeaveEvents]  WITH CHECK ADD  CONSTRAINT [FK_ResidentLeaveEvents_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentLeaveEvents] CHECK CONSTRAINT [FK_ResidentLeaveEvents_Residents_ResidentId]
GO
ALTER TABLE [dbo].[ResidentReviewCompoundingFactors]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviewCompoundingFactors_ResidentReviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentReviewCompoundingFactors] CHECK CONSTRAINT [FK_ResidentReviewCompoundingFactors_ResidentReviews_ReviewId]
GO
ALTER TABLE [dbo].[ResidentReviews]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviews_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentReviews] CHECK CONSTRAINT [FK_ResidentReviews_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[ResidentReviews]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviews_FundingFixedValueLookups_FixedFundingGroupValueId] FOREIGN KEY([FixedFundingGroupValueId])
REFERENCES [dbo].[FundingFixedValueLookups] ([Id])
GO
ALTER TABLE [dbo].[ResidentReviews] CHECK CONSTRAINT [FK_ResidentReviews_FundingFixedValueLookups_FixedFundingGroupValueId]
GO
ALTER TABLE [dbo].[ResidentReviews]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviews_FundingVariableValueLookups_CurrentVariableFundingValueId] FOREIGN KEY([CurrentVariableFundingValueId])
REFERENCES [dbo].[FundingVariableValueLookups] ([Id])
GO
ALTER TABLE [dbo].[ResidentReviews] CHECK CONSTRAINT [FK_ResidentReviews_FundingVariableValueLookups_CurrentVariableFundingValueId]
GO
ALTER TABLE [dbo].[ResidentReviews]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviews_FundingVariableValueLookups_PredictedVariableFundingValueId] FOREIGN KEY([PredictedVariableFundingValueId])
REFERENCES [dbo].[FundingVariableValueLookups] ([Id])
GO
ALTER TABLE [dbo].[ResidentReviews] CHECK CONSTRAINT [FK_ResidentReviews_FundingVariableValueLookups_PredictedVariableFundingValueId]
GO
ALTER TABLE [dbo].[ResidentReviews]  WITH CHECK ADD  CONSTRAINT [FK_ResidentReviews_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
GO
ALTER TABLE [dbo].[ResidentReviews] CHECK CONSTRAINT [FK_ResidentReviews_Residents_ResidentId]
GO
ALTER TABLE [dbo].[Residents]  WITH CHECK ADD  CONSTRAINT [FK_Residents_Facilities_FacilityId] FOREIGN KEY([FacilityId])
REFERENCES [dbo].[Facilities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Residents] CHECK CONSTRAINT [FK_Residents_Facilities_FacilityId]
GO
ALTER TABLE [dbo].[UserAssignedTasks]  WITH CHECK ADD  CONSTRAINT [FK_UserAssignedTasks_ResidentReviews_ResidentReviewId] FOREIGN KEY([ResidentReviewId])
REFERENCES [dbo].[ResidentReviews] ([Id])
GO
ALTER TABLE [dbo].[UserAssignedTasks] CHECK CONSTRAINT [FK_UserAssignedTasks_ResidentReviews_ResidentReviewId]
GO
ALTER TABLE [dbo].[UserAssignedTasks]  WITH CHECK ADD  CONSTRAINT [FK_UserAssignedTasks_Residents_ResidentId] FOREIGN KEY([ResidentId])
REFERENCES [dbo].[Residents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAssignedTasks] CHECK CONSTRAINT [FK_UserAssignedTasks_Residents_ResidentId]
GO
