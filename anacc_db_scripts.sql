USE [ANACC]
GO
/****** Object:  Table [dbo].[AgedCareFacility]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgedCareFacility](
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[ProviderId] [nvarchar](10) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceName] [nvarchar](120) NULL,
	[CareTypeCode] [nvarchar](10) NULL,
	[OperationalStatus] [nvarchar](120) NULL,
	[Archived] [bit] NULL,
 CONSTRAINT [PK_AgedCareFacility] PRIMARY KEY CLUSTERED 
(
	[ServiceNapsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaccClassification]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaccClassification](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[AnaccLineNumber] [int] NOT NULL,
	[CareType] [nvarchar](20) NULL,
	[CareSubType] [nvarchar](20) NULL,
	[Classification] [nvarchar](3) NULL,
	[ClassificationText] [nvarchar](max) NULL,
	[EndDate] [date] NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_AnaccClassification] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AnaccLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APIPostRequest]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APIPostRequest](
	[Id] [uniqueidentifier] NOT NULL,
	[BaseUrl] [nvarchar](200) NULL,
	[Payload] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Result] [nvarchar](max) NULL,
	[Exception] [nvarchar](2000) NULL,
	[RecordedAt] [datetime] NULL,
	[dhsMessageId] [nvarchar](36) NULL,
	[dhsCorrelationId] [nvarchar](36) NULL,
 CONSTRAINT [PK_APIPostRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[AssessmentLineNumber] [int] NOT NULL,
	[AcatId] [nvarchar](max) NULL,
	[ApprovalDate] [date] NULL,
	[AssessmentId] [nvarchar](max) NULL,
	[Status] [nvarchar](25) NULL,
	[ThirdPartyId] [nvarchar](25) NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AssessmentLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentCareDetail]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentCareDetail](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[AssessmentLineNumber] [int] NOT NULL,
	[AssessmentCareLineNumber] [int] NOT NULL,
	[AssessedCareLevelCode] [nvarchar](8) NULL,
	[AssessedCareLevelText] [nvarchar](max) NULL,
	[CareSubTypeCode] [nvarchar](8) NULL,
	[CareSubTypeText] [nvarchar](max) NULL,
	[CareTypeCode] [nvarchar](8) NULL,
	[CareTypeText] [nvarchar](max) NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](30) NULL,
	[TimeLimitedIndicator] [bit] NULL,
 CONSTRAINT [PK_AssessmentCareDetail] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AssessmentLineNumber] ASC,
	[AssessmentCareLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareExtension]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareExtension](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[CareExtensionLineNumber] [int] NOT NULL,
	[CareType] [nvarchar](10) NULL,
	[CareSubType] [nvarchar](10) NULL,
	[DateExtensionCommences] [date] NULL,
	[NumberOfDaysExtended] [float] NULL,
 CONSTRAINT [PK_CareExtension] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[CareExtensionLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipient]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipient](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[CareRecipientFirstName] [nvarchar](100) NULL,
	[CareRecipientLastName] [nvarchar](100) NULL,
	[SupportedResidentStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_CareRecipient] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientAddress]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientAddress](
	[CareRecipientId] [nvarchar](20) NOT NULL,
	[AddressNumber] [nvarchar](10) NOT NULL,
	[Type] [nvarchar](20) NULL,
	[StreetLine1] [nvarchar](50) NULL,
	[StreetLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Postcode] [nvarchar](10) NULL,
	[State] [nvarchar](3) NULL,
	[Country] [nvarchar](2) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[CountryText] [nvarchar](50) NULL,
 CONSTRAINT [PK_CareRecipientAddress_1] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AddressNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientAssessment]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientAssessment](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[AssessmentId] [nvarchar](24) NOT NULL,
	[ThirdPartyId] [nvarchar](40) NULL,
	[AcatId] [nvarchar](6) NULL,
	[ApprovalDate] [datetime] NULL,
	[ProcessingStatusCode] [nvarchar](2) NULL,
	[ProcessingStatusText] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_CareRecipientAssessment] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientAssessmentCareDetail]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientAssessmentCareDetail](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[AssessmentId] [nvarchar](24) NOT NULL,
	[AssessmentCareLineNumber] [int] NOT NULL,
	[AssessedCareLevelCode] [nvarchar](8) NULL,
	[AssessedCareLevelText] [nvarchar](max) NULL,
	[CareSubTypeCode] [nvarchar](8) NULL,
	[CareSubTypeText] [nvarchar](max) NULL,
	[CareTypeCode] [nvarchar](8) NULL,
	[CareTypeText] [nvarchar](max) NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](30) NULL,
	[TimeLimitedIndicator] [bit] NULL,
	[ApprovalEndDate] [datetime] NULL,
	[ApprovalStatusCode] [nvarchar](8) NULL,
	[ApprovalStatusText] [nvarchar](max) NULL,
 CONSTRAINT [PK_CareRecipientAssessmentCareDetail] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[AssessmentId] ASC,
	[AssessmentCareLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientClassification]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientClassification](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Classification] [nvarchar](50) NULL,
	[EndDate] [datetime] NULL,
	[FundingTypeCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_CareRecipientClassification] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientDetails]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientDetails](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[EntryType] [nvarchar](10) NULL,
	[DepartureDate] [datetime] NULL,
	[CareLevel] [nvarchar](5) NULL,
	[LiabilityPercentage] [nvarchar](100) NULL,
	[ServiceClassification] [nvarchar](100) NULL,
	[AccomodationPaymentStatus] [nvarchar](10) NULL,
	[PensionerType] [nvarchar](3) NULL,
	[ExtraServiceCode] [nvarchar](10) NULL,
	[ResidentContributionCode] [nvarchar](3) NULL,
	[AcfiReappraisalIndicator] [nvarchar](10) NULL,
	[AcfiExpiryDate] [datetime] NULL,
	[AnaccStartDate] [datetime] NULL,
	[AnaccClassification] [nvarchar](10) NULL,
	[RespiteCareBalance] [decimal](10, 2) NULL,
	[RespiteCareEntitlement] [decimal](10, 2) NULL,
	[SocialLeaveBalance] [decimal](10, 2) NULL,
	[SocialLeaveEntitlement] [decimal](10, 2) NULL,
	[TransitionLeaveBalance] [decimal](10, 2) NULL,
	[TransitionLeaveEntitlement] [decimal](10, 2) NULL,
	[CareRecipientPaymentTotal] [decimal](10, 2) NULL,
 CONSTRAINT [PK_CareRecipientDetails] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ServiceNapsId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientEvent](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[EventId] [nvarchar](10) NOT NULL,
	[EndDate] [datetime] NULL,
	[EntryDate] [datetime] NULL,
	[EntryEventId] [nvarchar](10) NULL,
	[EntryType] [nvarchar](10) NULL,
	[EventDetails] [nvarchar](60) NULL,
	[EventType] [nvarchar](20) NULL,
	[StartDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[Version] [nvarchar](6) NULL,
 CONSTRAINT [PK_CareRecipientEvent] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[ClaimMonth] ASC,
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientMessage]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientMessage](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[MessageLineNumber] [int] NOT NULL,
	[Type] [nvarchar](1) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_CareRecipientMessage] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[MessageLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientPackage]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientPackage](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[PackageLineNumber] [int] NOT NULL,
	[AssignedLevel] [nvarchar](8) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_CareRecipientPackage] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[PackageLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipientSummary]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipientSummary](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[BirthDate] [date] NULL,
	[FirstName] [nvarchar](100) NULL,
	[Gender] [nchar](1) NULL,
	[LastName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[MyAgedCareGatewayId] [nvarchar](10) NULL,
	[SparcId] [nvarchar](10) NULL,
	[LanguageCode] [nvarchar](10) NULL,
	[LanguageText] [nvarchar](50) NULL,
	[ArchivingFlag] [bit] NULL,
	[TelephoneNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_CareRecipientSummary] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[ServiceId] [nvarchar](20) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[FinalisedAtDate] [datetime] NULL,
	[PaidAtDate] [datetime] NULL,
	[ServiceName] [nvarchar](120) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_Claim] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimCareRecipient]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCareRecipient](
	[ServiceId] [nvarchar](20) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[CareRecipientFirstName] [nvarchar](120) NULL,
	[CareRecipientLastName] [nvarchar](120) NULL,
	[SupportedResidentStatus] [nvarchar](30) NULL,
 CONSTRAINT [PK_ClaimCareRecipient] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC,
	[CareRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimCareRecipientClassification]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCareRecipientClassification](
	[ServiceId] [nvarchar](20) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[Classification] [nvarchar](10) NULL,
	[EndDate] [datetime] NULL,
	[FundingTypeCode] [nvarchar](10) NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [PK_ClaimCareRecipientClassification] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC,
	[CareRecipientId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimCareRecipientEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCareRecipientEvent](
	[ServiceId] [nvarchar](20) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[EndDate] [datetime] NULL,
	[EntryDate] [datetime] NULL,
	[EntryEventId] [nvarchar](10) NULL,
	[EntryType] [nvarchar](10) NULL,
	[EventDetails] [nvarchar](200) NULL,
	[EventId] [nvarchar](10) NULL,
	[EventType] [nvarchar](20) NULL,
	[StartDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[Version] [nvarchar](6) NULL,
 CONSTRAINT [PK_ClaimCareRecipientEvent] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC,
	[CareRecipientId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimFinalise]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimFinalise](
	[ClaimMonth] [datetime] NOT NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[FinalisedAtDate] [datetime] NULL,
	[ServiceName] [nvarchar](120) NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_ClaimFinalise] PRIMARY KEY CLUSTERED 
(
	[ServiceNapsId] ASC,
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimSummary]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimSummary](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[FinalisedAtDate] [datetime] NULL,
	[PaidAtDate] [datetime] NULL,
	[ServiceName] [nvarchar](120) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK_ClaimSummary] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartureEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartureEvent](
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[DepartureDate] [datetime] NOT NULL,
	[DepartureReasonCode] [nvarchar](5) NULL,
	[DepartureReasonText] [nvarchar](120) NULL,
	[EntryId] [nvarchar](10) NULL,
	[EventId] [nvarchar](10) NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_DepartureEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceDetails]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceDetails](
	[orgId] [nvarchar](10) NOT NULL,
	[deviceName] [nvarchar](50) NOT NULL,
	[deviceStatus] [nvarchar](10) NULL,
	[keyStatus] [nvarchar](10) NULL,
	[keyExpiry] [datetime] NULL,
	[deviceExpiry] [datetime] NULL,
 CONSTRAINT [PK_DeviceDetails] PRIMARY KEY CLUSTERED 
(
	[orgId] ASC,
	[deviceName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnteralFeedingEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnteralFeedingEvent](
	[EventId] [nvarchar](10) NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[CareRecipientId] [nvarchar](10) NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EnteralFeedingTypeCode] [nvarchar](10) NULL,
	[EnteralFeedingTypeText] [nvarchar](120) NULL,
	[EntryId] [nvarchar](10) NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[StartDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
 CONSTRAINT [PK_EnteralFeedingEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryEvent](
	[EventId] [nvarchar](10) NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[DepartureDate] [datetime] NULL,
	[DepartureReasonCode] [nvarchar](10) NULL,
	[PalliativeOnEntry] [nvarchar](1) NULL,
	[AccomPmntArrangementText] [nvarchar](50) NULL,
	[AccomPmntStatusText] [nvarchar](50) NULL,
	[AccomPmntTypeText] [nvarchar](10) NULL,
	[AwardOrSettlementTypeText] [nvarchar](30) NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[DepartureReasonText] [nvarchar](120) NULL,
	[HomelessIndigenousCareText] [nvarchar](50) NULL,
	[PensionerStatusText] [nvarchar](30) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
	[AccomPmntArrangementCode] [nvarchar](3) NULL,
	[AccomPmntDapAmount] [decimal](9, 2) NULL,
	[AccomPmntRadAmount] [int] NULL,
	[AccomPmntStatusCode] [nvarchar](10) NULL,
	[AccomPmntTypeCode] [nvarchar](4) NULL,
	[AdjustedSubsidyIndicator] [nvarchar](1) NULL,
	[AgreedAccomodationPrice] [int] NULL,
	[AwardOrSettlementDate] [datetime] NULL,
	[AwardOrSettlementTypeCode] [nvarchar](2) NULL,
	[BondAmount] [int] NULL,
	[BondRolloverIndicator] [nvarchar](1) NULL,
	[CareRecipientId] [nvarchar](10) NULL,
	[CentrelinkCrn] [nvarchar](10) NULL,
	[DvaUin] [nvarchar](9) NULL,
	[EntryDate] [datetime] NULL,
	[EntryTypeCode] [nvarchar](10) NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[HomelessIndigenousCareCode] [nvarchar](3) NULL,
	[MeansTestingOptIn] [nvarchar](1) NULL,
	[NsafBeenSighted] [nvarchar](1) NULL,
	[PensionerStatusCode] [nvarchar](10) NULL,
	[PreEntryLeaveDate] [datetime] NULL,
	[ReceivingPriorCare] [nvarchar](1) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[UnfundedPriorEntryDate] [datetime] NULL,
 CONSTRAINT [PK_EntryEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraServiceEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraServiceEvent](
	[EventId] [nvarchar](10) NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[CareRecipientId] [nvarchar](10) NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EntryId] [nvarchar](10) NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[StartDate] [datetime] NOT NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
	[WardTypeCode] [nvarchar](10) NULL,
	[WardTypeText] [nvarchar](120) NULL,
 CONSTRAINT [PK_ExtraServiceEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveEvent](
	[EventId] [nvarchar](10) NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[CareRecipientId] [nvarchar](10) NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EntryId] [nvarchar](10) NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[LeaveTypeCode] [nvarchar](10) NULL,
	[LeaveTypeText] [nvarchar](120) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[StartDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
 CONSTRAINT [PK_LeaveEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyPaymentSummary]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyPaymentSummary](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ClaimMonth] [nvarchar](7) NOT NULL,
	[AdvanceAmountPaid] [decimal](9, 2) NULL,
	[AdvancePaidDate] [datetime] NULL,
	[ClaimPaidAmount] [decimal](9, 2) NULL,
	[ClaimPaidDate] [datetime] NULL,
	[PaymentHeldover] [decimal](9, 2) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[SpecialPaymentAmount] [decimal](9, 2) NULL,
	[TotalAmountPaid] [decimal](9, 2) NULL,
 CONSTRAINT [PK_MonthlyPaymentSummary] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OxygenEvent]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OxygenEvent](
	[EventId] [nvarchar](10) NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[CareRecipientId] [nvarchar](10) NULL,
	[CareRecipientName] [nvarchar](120) NULL,
	[Channel] [nvarchar](3) NULL,
	[CreatedAtDateTime] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EntryId] [nvarchar](10) NULL,
	[ExternalReferenceId] [nvarchar](24) NULL,
	[ExternalVersionNumber] [nvarchar](6) NULL,
	[OxygenTypeCode] [nvarchar](10) NULL,
	[OxygenTypeText] [nvarchar](120) NULL,
	[ServiceId] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[StartDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[UpdatedAtDateTime] [datetime] NULL,
 CONSTRAINT [PK_OxygenEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentAnaccClassification]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentAnaccClassification](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[CareType] [nvarchar](20) NULL,
	[CareSubType] [nvarchar](20) NULL,
	[Classification] [nvarchar](5) NULL,
	[ClassificationText] [nvarchar](250) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentAnaccClassification] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ServiceNapsId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCareRecipient]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCareRecipient](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](20) NOT NULL,
	[PaymentLineNumber] [int] NOT NULL,
	[AccomodationPaymentStatus] [nvarchar](20) NULL,
	[AcfiExpiryDate] [datetime] NULL,
	[AcfiReappraisalIndicator] [nvarchar](20) NULL,
	[AnaccClassification] [nvarchar](20) NULL,
	[AnaccStartDate] [datetime] NULL,
	[CareLevel] [nvarchar](20) NULL,
	[CareRecipientPaymentTotal] [float] NULL,
	[DepartureDate] [datetime] NULL,
	[EntryDate] [datetime] NULL,
	[EntryType] [nvarchar](20) NULL,
	[ExtraServiceCode] [nvarchar](20) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[LiabilityPercentage] [nvarchar](20) NULL,
	[PensionerType] [nvarchar](20) NULL,
	[ResidentContributionCode] [nvarchar](20) NULL,
	[RespiteCareBalance] [float] NULL,
	[RespiteCareEntitlement] [float] NULL,
	[ServiceClassification] [nvarchar](20) NULL,
	[SocialLeaveBalance] [float] NULL,
	[SocialLeaveEntitlement] [float] NULL,
	[TransitionLeaveBalance] [float] NULL,
	[TransitionLeaveEntitlement] [float] NULL,
 CONSTRAINT [PK_PaymentCareRecipient] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[PaymentLineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCareRecipientAnaccClassification]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCareRecipientAnaccClassification](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[PaymentLineNumber] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[CareType] [nvarchar](20) NULL,
	[CareSubType] [nvarchar](20) NULL,
	[Classification] [nvarchar](20) NULL,
	[ClassificationText] [nvarchar](50) NULL,
	[ClassificationStartDate] [datetime] NULL,
	[ClassificationEndDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentCareRecipientAnaccClassification] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[PaymentLineNumber] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCareRecipientAssessment]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCareRecipientAssessment](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](20) NOT NULL,
	[PaymentLineNumber] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[AcatId] [nvarchar](20) NULL,
	[ApprovalDate] [datetime] NULL,
	[AssessmentId] [nvarchar](20) NULL,
	[Status] [nvarchar](30) NULL,
	[ThirdPartyId] [nvarchar](40) NULL,
 CONSTRAINT [PK_PaymentCareRecipientAssessment] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[PaymentLineNumber] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCareRecipientCareExtension]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCareRecipientCareExtension](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[PaymentLineNumber] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[CareType] [nvarchar](20) NULL,
	[CareSubType] [nvarchar](20) NULL,
	[DateExtensionCommences] [datetime] NULL,
	[NumberOfDaysExtended] [float] NULL,
 CONSTRAINT [PK_PaymentCareRecipientCareExtension] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[PaymentLineNumber] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCareRecipientPaymentItem]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCareRecipientPaymentItem](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](20) NOT NULL,
	[PaymentLineNumber] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EntitlementMonth] [datetime] NULL,
	[RcsPaymentIndicator] [nvarchar](20) NULL,
	[PaymentType] [nvarchar](20) NULL,
	[ExtraServiceCode] [nvarchar](20) NULL,
	[EntryType] [nvarchar](20) NULL,
	[EntitlementType] [nvarchar](4) NULL,
	[ClassificationLevel] [nvarchar](20) NULL,
	[RefundReviewType] [nvarchar](20) NULL,
	[PaidDays] [float] NULL,
	[NonClaimableDays] [float] NULL,
	[PaidSocialLeaveDays] [float] NULL,
	[UnpaidSocialLeaveDays] [float] NULL,
	[PaidTransitionLeaveDays] [float] NULL,
	[UnpaidTransitionLeaveDays] [float] NULL,
	[PaidHospitalLeaveDays] [float] NULL,
	[EmergencyLeaveDays] [float] NULL,
	[DailyRate] [float] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_PaymentCareRecipientPaymentItem] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[PaymentLineNumber] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentItem]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentItem](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EntitlementMonth] [datetime] NULL,
	[RcsPaymentIndicator] [nvarchar](10) NULL,
	[PaymentType] [nvarchar](20) NULL,
	[ExtraServiceCode] [nvarchar](4) NULL,
	[EntryType] [nvarchar](10) NULL,
	[EntitlementType] [nvarchar](1) NULL,
	[ClassificationLevel] [nvarchar](3) NULL,
	[RefundReviewType] [nvarchar](20) NULL,
	[PaidDays] [decimal](9, 2) NULL,
	[NonClaimableDays] [decimal](9, 2) NULL,
	[PaidSocialLeaveDays] [decimal](9, 2) NULL,
	[UnpaidSocialLeaveDays] [decimal](9, 2) NULL,
	[PaidTransitionLeaveDays] [decimal](9, 2) NULL,
	[UnpaidTransitionLeaveDays] [decimal](9, 2) NULL,
	[PaidHospitalLeaveDays] [decimal](9, 2) NULL,
	[EmergencyLeaveDays] [decimal](9, 2) NULL,
	[DailyRate] [decimal](9, 2) NULL,
	[Amount] [decimal](9, 2) NULL,
 CONSTRAINT [PK_PaymentItem] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[ServiceNapsId] ASC,
	[StartDate] ASC,
	[CareRecipientId] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatement]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatement](
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[ServiceName] [nvarchar](100) NULL,
	[ProviderId] [nvarchar](5) NULL,
	[ProviderNapsId] [nvarchar](5) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[ProviderABN] [nvarchar](100) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[UpdatedAtDateTime] [datetime] NULL,
	[ServiceGSTBranch] [nvarchar](20) NULL,
	[SubsidySubtotal] [float] NULL,
	[SupplementsSubtotal] [float] NULL,
	[CurrentAdjustmentsSubtotal] [float] NULL,
	[SubsidiesSupplementsAdjustmentsSubtotal] [float] NULL,
	[PreviousAdjustmentsSubtotal] [float] NULL,
	[OutstandingBalance] [float] NULL,
	[Advance] [float] NULL,
	[RecoveredSpecialPaymentsTotal] [float] NULL,
	[OutstandingBalanceAdvanceSubtotal] [float] NULL,
	[HeldOverBalance] [float] NULL,
	[PaidAmount] [float] NULL,
	[SpecialPaymentsTotal] [float] NULL,
	[RespiteAllocation] [float] NULL,
	[RespiteMonthUsage] [float] NULL,
	[RespiteYTDUsage] [float] NULL,
	[RriAveragingPeriodStartDate] [datetime] NULL,
	[RriAveragingPeriodEndDate] [datetime] NULL,
	[RriAllocation] [float] NULL,
	[RriUsage] [float] NULL,
	[RriPercentageAchieved] [float] NULL,
	[AnaccSubsidy_TotalFixedSubsidy] [float] NULL,
	[AnaccSubsidy_TotalVariableSubsidy] [float] NULL,
	[VariableSubsidyTotal] [float] NULL,
	[FixedSubsidiesTotal] [float] NULL,
	[RespiteVariableSubsidy] [float] NULL,
	[PermanentVariableSubsidy] [float] NULL,
	[RespiteAccommodationSupplement] [float] NULL,
	[MeansTestedAccommodationSupplement] [float] NULL,
	[InitialEntryAdjustmentPayment] [float] NULL,
	[HotellingSupplement] [float] NULL,
	[AgedCareOutbreakManagementSupportSupplement] [float] NULL,
	[AccommodationSupplement] [float] NULL,
	[MeansTestedSubsidyReduction] [float] NULL,
	[TotalFixedSubsidy] [float] NULL,
	[TotalVariableSubsidy] [float] NULL,
	[TotalAllClassLvls] [float] NULL,
 CONSTRAINT [PK_PaymentStatement] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatementANACCClassLevelDetail]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatementANACCClassLevelDetail](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[SubsidyGroup] [nvarchar](20) NULL,
	[Classification] [nvarchar](20) NULL,
	[CareRecipientsPerClassLevel] [float] NULL,
	[ClassRatePerDay] [float] NULL,
	[ClassPaidDays] [float] NULL,
	[TotalPerClassLevelTotal] [float] NULL,
 CONSTRAINT [PK_PaymentStatementANACCClassLevelDetail] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatementPreviousAdjustment]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatementPreviousAdjustment](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[PeriodStartDate] [datetime] NOT NULL,
	[PeriodEndDate] [datetime] NULL,
	[PreviousEntitlementPeriodAdjustmentSubtotal] [float] NULL,
	[RespiteVariableSubsidy] [float] NULL,
	[PermanentVariableSubsidy] [float] NULL,
	[RespiteAccommodationSupplement] [float] NULL,
	[InitialEntryAdjustmentPayment] [float] NULL,
	[HotellingSupplement] [float] NULL,
	[AgedCareOutbreakManagementSupportSupplement] [float] NULL,
	[MeansTestedSubsidyReviewRefund] [float] NULL,
 CONSTRAINT [PK_PaymentStatementPreviousAdjustment] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[PeriodStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatementPreviousAdjustmentsFixedSubsidy]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatementPreviousAdjustmentsFixedSubsidy](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[PeriodStartDate] [datetime] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[Amount] [float] NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_PaymentStatementPreviousAdjustmentsFixedSubsidy] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[PeriodStartDate] ASC,
	[LineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatementResidentRatios]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatementResidentRatios](
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EntitlementStartDate] [datetime] NOT NULL,
	[EntitlementEndDate] [datetime] NULL,
	[TotalSupportedAdmPeriod] [float] NULL,
	[TotalAdmPeriod] [float] NULL,
	[SupportedResidentPeriodPercentage] [float] NULL,
	[SupportedResidentRatioMet] [bit] NULL,
 CONSTRAINT [PK_PaymentStatementResidentRatios] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[StartDate] ASC,
	[EntitlementStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderId] [nvarchar](10) NOT NULL,
	[ProviderName] [nvarchar](120) NULL,
	[ProviderNapsId] [nvarchar](5) NULL,
	[ProviderRacsId] [nvarchar](4) NULL,
	[Archived] [bit] NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderAddress]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderAddress](
	[ProviderId] [nvarchar](10) NOT NULL,
	[AddressId] [uniqueidentifier] NOT NULL,
	[StreetLine1] [nvarchar](60) NULL,
	[StreetLine2] [nvarchar](40) NULL,
	[City] [nvarchar](40) NULL,
	[Postcode] [nvarchar](4) NULL,
	[State] [nvarchar](3) NULL,
	[Country] [nvarchar](50) NULL,
	[Type] [nvarchar](10) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC,
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderContact]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderContact](
	[ProviderId] [nvarchar](10) NOT NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](60) NULL,
	[MiddleName] [nvarchar](40) NULL,
	[LastName] [nvarchar](40) NULL,
	[Email] [nvarchar](120) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC,
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderService]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderService](
	[ProviderId] [nvarchar](10) NOT NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceName] [nvarchar](120) NULL,
	[OperationalStatus] [nvarchar](120) NULL,
	[CareTypeCode] [nvarchar](10) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentialClaim]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentialClaim](
	[ClaimMonth] [datetime] NOT NULL,
	[FinalisedAtDate] [datetime] NULL,
	[PaidAtDate] [datetime] NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceName] [nvarchar](120) NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[ClaimStatus] [nvarchar](10) NULL,
 CONSTRAINT [PK_ResidentialClaim] PRIMARY KEY CLUSTERED 
(
	[ServiceNapsId] ASC,
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentialClaimRecipients]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentialClaimRecipients](
	[ClaimMonth] [datetime] NOT NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[CareRecipientId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ResidentialClaimRecipients] PRIMARY KEY CLUSTERED 
(
	[ServiceNapsId] ASC,
	[ServiceId] ASC,
	[ClaimMonth] ASC,
	[CareRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentialClaimSummary]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentialClaimSummary](
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[ClaimMonth] [datetime] NOT NULL,
	[FinalisedAtDate] [datetime] NULL,
	[PaidAtDate] [datetime] NULL,
	[ServiceName] [nvarchar](120) NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_ResidentialClaimSummary] PRIMARY KEY CLUSTERED 
(
	[ServiceNapsId] ASC,
	[ServiceId] ASC,
	[ClaimMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceClassifications]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceClassifications](
	[Classification] [nvarchar](10) NOT NULL,
	[ClassificationText] [nvarchar](max) NULL,
	[EndDate] [datetime] NULL,
	[FundingBasis] [nvarchar](20) NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [PK_ServiceClassifications] PRIMARY KEY CLUSTERED 
(
	[Classification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceSearch]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceSearch](
	[ServiceId] [nvarchar](10) NOT NULL,
	[CareTypeCode] [nvarchar](10) NULL,
	[OperationalStatus] [nvarchar](120) NULL,
	[ProviderId] [nvarchar](10) NULL,
	[ServiceName] [nvarchar](120) NULL,
	[ServiceNapsId] [nvarchar](5) NULL,
	[Archived] [bit] NULL,
 CONSTRAINT [PK_ServiceSearch] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StartingDate]    Script Date: 7/07/2025 3:11:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StartingDate](
	[Area] [nvarchar](20) NOT NULL,
	[ServiceId] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StartingDate] PRIMARY KEY CLUSTERED 
(
	[Area] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProviderContact] ADD  DEFAULT (newid()) FOR [ContactId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
