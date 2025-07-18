USE [MedicareData_V1]
GO
/****** Object:  Table [dbo].[AnaccClassifications]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaccClassifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassificationTypeText] [nvarchar](max) NOT NULL,
	[ClassificationCode] [int] NOT NULL,
	[CareTypeCode] [int] NOT NULL,
	[CareSubTypeCode] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[CareRecipientId] [int] NOT NULL,
 CONSTRAINT [PK_AnaccClassifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APIPostRequests]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APIPostRequests](
	[Id] [uniqueidentifier] NOT NULL,
	[BaseUrl] [nvarchar](max) NOT NULL,
	[Payload] [nvarchar](max) NOT NULL,
	[Status] [int] NULL,
	[Result] [nvarchar](max) NOT NULL,
	[Exception] [nvarchar](max) NOT NULL,
	[RecordedAt] [datetime2](7) NOT NULL,
	[dhsMessageId] [nvarchar](max) NOT NULL,
	[dhsCorrelationId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_APIPostRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentCareDetails]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentCareDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssessedCareLevelText] [nvarchar](50) NOT NULL,
	[AssessedCareLevelCode] [int] NULL,
	[CareSubTypeText] [nvarchar](50) NOT NULL,
	[CareSubTypeCode] [int] NULL,
	[CareTypeText] [nvarchar](50) NOT NULL,
	[CareTypeCode] [int] NULL,
	[EndDate] [datetime2](7) NULL,
	[Status] [int] NULL,
	[TimeLimitedIndicator] [bit] NULL,
	[ApprovalEndDate] [datetime2](7) NULL,
	[ApprovalStatusCode] [nvarchar](8) NOT NULL,
	[ApprovalStatusText] [nvarchar](50) NOT NULL,
	[AssessmentId] [nvarchar](24) NOT NULL,
 CONSTRAINT [PK_AssessmentCareDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessments]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessments](
	[Id] [nvarchar](24) NOT NULL,
	[ThirdPartyId] [nvarchar](50) NOT NULL,
	[AcatId] [nvarchar](10) NOT NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[ProcessingStatusCode] [nvarchar](2) NOT NULL,
	[ProcessingStatusText] [nvarchar](50) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[CareRecipientId] [int] NOT NULL,
 CONSTRAINT [PK_Assessments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareRecipients]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareRecipients](
	[Id] [int] NOT NULL,
	[SupportedResidentStatus] [int] NULL,
	[BirthDate] [datetime2](7) NULL,
	[Gender] [int] NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NOT NULL,
	[MyAgedCareGatewayId] [nvarchar](10) NOT NULL,
	[SparcId] [nvarchar](10) NOT NULL,
	[LanguageCode] [nvarchar](10) NOT NULL,
	[LanguageText] [nvarchar](10) NOT NULL,
	[TelephoneNumber] [nvarchar](20) NOT NULL,
	[ArchivingFlag] [bit] NULL,
 CONSTRAINT [PK_CareRecipients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimCareRecipients]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCareRecipients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupportedResidentStatus] [int] NULL,
	[CareRecipientId] [int] NOT NULL,
	[ClaimId] [int] NOT NULL,
 CONSTRAINT [PK_ClaimCareRecipients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimClassifications]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimClassifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[Classification] [nvarchar](100) NOT NULL,
	[FundingTypeCode] [int] NOT NULL,
	[ClaimCareRecipientId] [int] NOT NULL,
 CONSTRAINT [PK_ClaimClassifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimEvents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDetails] [nvarchar](600) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[EntryDate] [datetime2](7) NULL,
	[EventType] [int] NOT NULL,
	[EntryType] [int] NULL,
	[Status] [int] NULL,
	[EntryEventVersionNumber] [nvarchar](6) NULL,
	[EntryEventId] [bigint] NULL,
	[DepartureEventId] [bigint] NULL,
	[LeaveEventId] [bigint] NULL,
	[EnteralFeedingEventId] [bigint] NULL,
	[OxygenEventId] [bigint] NULL,
	[ClaimCareRecipientId] [int] NOT NULL,
 CONSTRAINT [PK_ClaimEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claims]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimMonth] [datetime2](7) NOT NULL,
	[FinalisedAtDate] [datetime2](7) NULL,
	[PaidAtDate] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_Claims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartureEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartureEvents](
	[Id] [bigint] NOT NULL,
	[DepartureDate] [datetime2](7) NOT NULL,
	[CreatedAtDateTime] [datetime2](7) NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[Channel] [int] NOT NULL,
	[DepartureReasonCode] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NOT NULL,
	[ExternalVersionNumber] [nvarchar](6) NOT NULL,
	[DepartureReasonText] [nvarchar](120) NOT NULL,
	[EntryEventVersionNumber] [nvarchar](6) NULL,
	[EntryEventId] [bigint] NULL,
	[CareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_DepartureEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnteralFeedingEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnteralFeedingEvents](
	[Id] [bigint] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[CreatedAtDateTime] [datetime2](7) NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[Status] [int] NULL,
	[EnteralFeedingTypeCode] [int] NOT NULL,
	[Channel] [int] NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NOT NULL,
	[ExternalVersionNumber] [nvarchar](6) NOT NULL,
	[EnteralFeedingTypeText] [nvarchar](120) NOT NULL,
	[EntryEventVersionNumber] [nvarchar](6) NULL,
	[EntryEventId] [bigint] NULL,
	[CareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_EnteralFeedingEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryEvents](
	[Id] [bigint] NOT NULL,
	[VersionNumber] [nvarchar](6) NOT NULL,
	[DepartureDate] [datetime2](7) NULL,
	[DepartureReasonCode] [int] NULL,
	[PalliativeOnEntry] [int] NULL,
	[AccomPmntArrangementText] [nvarchar](50) NOT NULL,
	[AccomPmntStatusText] [nvarchar](50) NOT NULL,
	[AccomPmntTypeText] [nvarchar](10) NOT NULL,
	[AwardOrSettlementTypeText] [nvarchar](30) NOT NULL,
	[Channel] [int] NOT NULL,
	[CreatedAtDateTime] [datetime2](7) NOT NULL,
	[DepartureReasonText] [nvarchar](120) NOT NULL,
	[HomelessIndigenousCareText] [nvarchar](50) NOT NULL,
	[PensionerStatusText] [nvarchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[AccomPmntArrangementCode] [int] NULL,
	[AccomPmntDapAmount] [decimal](18, 6) NULL,
	[AccomPmntRadAmount] [int] NULL,
	[AccomPmntStatusCode] [int] NULL,
	[AccomPmntTypeCode] [int] NULL,
	[AdjustedSubsidyIndicator] [int] NULL,
	[AgreedAccomodationPrice] [int] NULL,
	[AwardOrSettlementDate] [datetime2](7) NULL,
	[AwardOrSettlementTypeCode] [int] NULL,
	[BondAmount] [int] NULL,
	[BondRolloverIndicator] [int] NULL,
	[CentrelinkCrn] [nvarchar](10) NOT NULL,
	[DvaUin] [nvarchar](9) NOT NULL,
	[EntryDate] [datetime2](7) NOT NULL,
	[EntryTypeCode] [int] NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NOT NULL,
	[ExternalVersionNumber] [nvarchar](6) NOT NULL,
	[HomelessIndigenousCareCode] [int] NULL,
	[MeansTestingOptIn] [int] NULL,
	[NsafBeenSighted] [int] NULL,
	[PensionerStatusCode] [int] NULL,
	[PreEntryLeaveDate] [datetime2](7) NULL,
	[ReceivingPriorCare] [int] NULL,
	[UnfundedPriorEntryDate] [datetime2](7) NULL,
	[CareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_EntryEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[VersionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveEvents](
	[Id] [bigint] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[CreatedAtDateTime] [datetime2](7) NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[LeaveTypeCode] [int] NOT NULL,
	[Channel] [int] NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NOT NULL,
	[ExternalVersionNumber] [nvarchar](6) NOT NULL,
	[LeaveTypeText] [nvarchar](120) NOT NULL,
	[EntryEventVersionNumber] [nvarchar](6) NULL,
	[EntryEventId] [bigint] NULL,
	[CareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_LeaveEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OxygenEvents]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OxygenEvents](
	[Id] [bigint] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[CreatedAtDateTime] [datetime2](7) NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[OxygenTypeCode] [int] NOT NULL,
	[Channel] [int] NOT NULL,
	[ExternalReferenceId] [nvarchar](24) NOT NULL,
	[ExternalVersionNumber] [nvarchar](6) NOT NULL,
	[OxygenTypeText] [nvarchar](120) NOT NULL,
	[EntryEventVersionNumber] [nvarchar](6) NULL,
	[EntryEventId] [bigint] NULL,
	[CareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_OxygenEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentItems]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime2](7) NULL,
	[EntitlementMonth] [datetime2](7) NOT NULL,
	[RcsPaymentIndicator] [nvarchar](20) NOT NULL,
	[RefundReviewType] [nvarchar](20) NOT NULL,
	[PaymentType] [int] NOT NULL,
	[EntryType] [int] NOT NULL,
	[EntitlementType] [int] NOT NULL,
	[ExtraServiceCode] [int] NULL,
	[ClassificationLevel] [int] NULL,
	[PaidDays] [int] NOT NULL,
	[NonClaimableDays] [int] NOT NULL,
	[PaidSocialLeaveDays] [int] NOT NULL,
	[UnpaidSocialLeaveDays] [int] NOT NULL,
	[PaidTransitionLeaveDays] [int] NOT NULL,
	[UnpaidTransitionLeaveDays] [int] NOT NULL,
	[PaidHospitalLeaveDays] [int] NOT NULL,
	[EmergencyLeaveDays] [int] NOT NULL,
	[DailyRate] [decimal](18, 6) NOT NULL,
	[Amount] [decimal](18, 6) NOT NULL,
	[PaymentCareRecipientId] [int] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
 CONSTRAINT [PK_PaymentItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatementCareRecipients]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatementCareRecipients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AcfiExpiryDate] [datetime2](7) NULL,
	[AnaccStartDate] [datetime2](7) NULL,
	[EntryDate] [datetime2](7) NULL,
	[DepartureDate] [datetime2](7) NULL,
	[AccomodationPaymentStatus] [int] NULL,
	[AcfiReappraisalIndicator] [int] NULL,
	[CareLevel] [int] NULL,
	[EntryType] [int] NULL,
	[ExtraServiceCode] [int] NULL,
	[PensionerType] [int] NULL,
	[ResidentContributionCode] [int] NULL,
	[AnaccClassification] [nvarchar](20) NOT NULL,
	[ServiceClassification] [nvarchar](20) NOT NULL,
	[LiabilityPercentage] [decimal](18, 6) NULL,
	[CareRecipientPaymentTotal] [decimal](18, 6) NULL,
	[RespiteCareBalance] [decimal](18, 6) NULL,
	[RespiteCareEntitlement] [decimal](18, 6) NULL,
	[SocialLeaveBalance] [decimal](18, 6) NULL,
	[SocialLeaveEntitlement] [decimal](18, 6) NULL,
	[TransitionLeaveBalance] [decimal](18, 6) NULL,
	[TransitionLeaveEntitlement] [decimal](18, 6) NULL,
	[CareRecipientId] [int] NOT NULL,
	[PaymentStatementId] [int] NOT NULL,
 CONSTRAINT [PK_PaymentStatementCareRecipients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatements]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProviderABN] [nvarchar](100) NOT NULL,
	[ServiceGSTBranch] [nvarchar](20) NOT NULL,
	[UpdatedAtDateTime] [datetime2](7) NULL,
	[SubsidySubtotal] [decimal](18, 6) NULL,
	[SupplementsSubtotal] [decimal](18, 6) NULL,
	[CurrentAdjustmentsSubtotal] [decimal](18, 6) NULL,
	[SubsidiesSupplementsAdjustmentsSubtotal] [decimal](18, 6) NULL,
	[PreviousAdjustmentsSubtotal] [decimal](18, 6) NULL,
	[OutstandingBalance] [decimal](18, 6) NULL,
	[Advance] [decimal](18, 6) NULL,
	[RecoveredSpecialPaymentsTotal] [decimal](18, 6) NULL,
	[OutstandingBalanceAdvanceSubtotal] [decimal](18, 6) NULL,
	[HeldOverBalance] [decimal](18, 6) NULL,
	[PaidAmount] [decimal](18, 6) NULL,
	[SpecialPaymentsTotal] [decimal](18, 6) NULL,
	[RespiteAllocation] [decimal](18, 6) NULL,
	[RespiteMonthUsage] [decimal](18, 6) NULL,
	[RespiteYTDUsage] [decimal](18, 6) NULL,
	[RriAveragingPeriodStartDate] [datetime2](7) NULL,
	[RriAveragingPeriodEndDate] [datetime2](7) NULL,
	[RriAllocation] [decimal](18, 6) NULL,
	[RriUsage] [decimal](18, 6) NULL,
	[RriPercentageAchieved] [decimal](18, 6) NULL,
	[ClaimId] [int] NOT NULL,
 CONSTRAINT [PK_PaymentStatements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Providers]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Providers](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[ProviderNapsId] [nvarchar](5) NOT NULL,
	[ProviderRacsId] [nvarchar](4) NOT NULL,
	[Archived] [bit] NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentRatios]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentRatios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntitlementStartDate] [datetime2](7) NOT NULL,
	[EntitlementEndDate] [datetime2](7) NOT NULL,
	[TotalSupportedAdmPeriod] [real] NOT NULL,
	[TotalAdmPeriod] [real] NOT NULL,
	[SupportedResidentPeriodPercentage] [real] NOT NULL,
	[SupportedResidentRatioMet] [bit] NOT NULL,
	[PaymentStatementId] [int] NOT NULL,
 CONSTRAINT [PK_ResidentRatios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RNSupplementSummaries]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RNSupplementSummaries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntitlementMonth] [datetime2](7) NOT NULL,
	[Eligibility] [nvarchar](max) NOT NULL,
	[MmmClassification] [nvarchar](max) NOT NULL,
	[OccupiedBedDays] [int] NOT NULL,
	[Amount] [decimal](18, 6) NOT NULL,
	[PaymentStatementId] [int] NOT NULL,
 CONSTRAINT [PK_RNSupplementSummaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 7/07/2025 3:13:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[ServiceNapsId] [nvarchar](5) NOT NULL,
	[OperationalStatus] [nvarchar](120) NOT NULL,
	[CareTypeCode] [int] NULL,
	[Archived] [bit] NOT NULL,
	[ProviderId] [bigint] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnaccClassifications]  WITH CHECK ADD  CONSTRAINT [FK_AnaccClassifications_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnaccClassifications] CHECK CONSTRAINT [FK_AnaccClassifications_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[AssessmentCareDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentCareDetails_Assessments_AssessmentId] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssessmentCareDetails] CHECK CONSTRAINT [FK_AssessmentCareDetails_Assessments_AssessmentId]
GO
ALTER TABLE [dbo].[Assessments]  WITH CHECK ADD  CONSTRAINT [FK_Assessments_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assessments] CHECK CONSTRAINT [FK_Assessments_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[ClaimCareRecipients]  WITH CHECK ADD  CONSTRAINT [FK_ClaimCareRecipients_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClaimCareRecipients] CHECK CONSTRAINT [FK_ClaimCareRecipients_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[ClaimCareRecipients]  WITH CHECK ADD  CONSTRAINT [FK_ClaimCareRecipients_Claims_ClaimId] FOREIGN KEY([ClaimId])
REFERENCES [dbo].[Claims] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClaimCareRecipients] CHECK CONSTRAINT [FK_ClaimCareRecipients_Claims_ClaimId]
GO
ALTER TABLE [dbo].[ClaimClassifications]  WITH CHECK ADD  CONSTRAINT [FK_ClaimClassifications_ClaimCareRecipients_ClaimCareRecipientId] FOREIGN KEY([ClaimCareRecipientId])
REFERENCES [dbo].[ClaimCareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClaimClassifications] CHECK CONSTRAINT [FK_ClaimClassifications_ClaimCareRecipients_ClaimCareRecipientId]
GO
ALTER TABLE [dbo].[ClaimEvents]  WITH CHECK ADD  CONSTRAINT [FK_ClaimEvents_ClaimCareRecipients_ClaimCareRecipientId] FOREIGN KEY([ClaimCareRecipientId])
REFERENCES [dbo].[ClaimCareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClaimEvents] CHECK CONSTRAINT [FK_ClaimEvents_ClaimCareRecipients_ClaimCareRecipientId]
GO
ALTER TABLE [dbo].[Claims]  WITH CHECK ADD  CONSTRAINT [FK_Claims_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Claims] CHECK CONSTRAINT [FK_Claims_Services_ServiceId]
GO
ALTER TABLE [dbo].[DepartureEvents]  WITH CHECK ADD  CONSTRAINT [FK_DepartureEvents_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepartureEvents] CHECK CONSTRAINT [FK_DepartureEvents_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[DepartureEvents]  WITH CHECK ADD  CONSTRAINT [FK_DepartureEvents_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepartureEvents] CHECK CONSTRAINT [FK_DepartureEvents_Services_ServiceId]
GO
ALTER TABLE [dbo].[EnteralFeedingEvents]  WITH CHECK ADD  CONSTRAINT [FK_EnteralFeedingEvents_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EnteralFeedingEvents] CHECK CONSTRAINT [FK_EnteralFeedingEvents_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[EnteralFeedingEvents]  WITH CHECK ADD  CONSTRAINT [FK_EnteralFeedingEvents_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EnteralFeedingEvents] CHECK CONSTRAINT [FK_EnteralFeedingEvents_Services_ServiceId]
GO
ALTER TABLE [dbo].[EntryEvents]  WITH CHECK ADD  CONSTRAINT [FK_EntryEvents_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryEvents] CHECK CONSTRAINT [FK_EntryEvents_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[EntryEvents]  WITH CHECK ADD  CONSTRAINT [FK_EntryEvents_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntryEvents] CHECK CONSTRAINT [FK_EntryEvents_Services_ServiceId]
GO
ALTER TABLE [dbo].[LeaveEvents]  WITH CHECK ADD  CONSTRAINT [FK_LeaveEvents_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveEvents] CHECK CONSTRAINT [FK_LeaveEvents_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[LeaveEvents]  WITH CHECK ADD  CONSTRAINT [FK_LeaveEvents_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveEvents] CHECK CONSTRAINT [FK_LeaveEvents_Services_ServiceId]
GO
ALTER TABLE [dbo].[OxygenEvents]  WITH CHECK ADD  CONSTRAINT [FK_OxygenEvents_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OxygenEvents] CHECK CONSTRAINT [FK_OxygenEvents_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[OxygenEvents]  WITH CHECK ADD  CONSTRAINT [FK_OxygenEvents_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OxygenEvents] CHECK CONSTRAINT [FK_OxygenEvents_Services_ServiceId]
GO
ALTER TABLE [dbo].[PaymentItems]  WITH CHECK ADD  CONSTRAINT [FK_PaymentItems_PaymentStatementCareRecipients_PaymentCareRecipientId] FOREIGN KEY([PaymentCareRecipientId])
REFERENCES [dbo].[PaymentStatementCareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentItems] CHECK CONSTRAINT [FK_PaymentItems_PaymentStatementCareRecipients_PaymentCareRecipientId]
GO
ALTER TABLE [dbo].[PaymentStatementCareRecipients]  WITH CHECK ADD  CONSTRAINT [FK_PaymentStatementCareRecipients_CareRecipients_CareRecipientId] FOREIGN KEY([CareRecipientId])
REFERENCES [dbo].[CareRecipients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentStatementCareRecipients] CHECK CONSTRAINT [FK_PaymentStatementCareRecipients_CareRecipients_CareRecipientId]
GO
ALTER TABLE [dbo].[PaymentStatementCareRecipients]  WITH CHECK ADD  CONSTRAINT [FK_PaymentStatementCareRecipients_PaymentStatements_PaymentStatementId] FOREIGN KEY([PaymentStatementId])
REFERENCES [dbo].[PaymentStatements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentStatementCareRecipients] CHECK CONSTRAINT [FK_PaymentStatementCareRecipients_PaymentStatements_PaymentStatementId]
GO
ALTER TABLE [dbo].[PaymentStatements]  WITH CHECK ADD  CONSTRAINT [FK_PaymentStatements_Claims_ClaimId] FOREIGN KEY([ClaimId])
REFERENCES [dbo].[Claims] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentStatements] CHECK CONSTRAINT [FK_PaymentStatements_Claims_ClaimId]
GO
ALTER TABLE [dbo].[ResidentRatios]  WITH CHECK ADD  CONSTRAINT [FK_ResidentRatios_PaymentStatements_PaymentStatementId] FOREIGN KEY([PaymentStatementId])
REFERENCES [dbo].[PaymentStatements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResidentRatios] CHECK CONSTRAINT [FK_ResidentRatios_PaymentStatements_PaymentStatementId]
GO
ALTER TABLE [dbo].[RNSupplementSummaries]  WITH CHECK ADD  CONSTRAINT [FK_RNSupplementSummaries_PaymentStatements_PaymentStatementId] FOREIGN KEY([PaymentStatementId])
REFERENCES [dbo].[PaymentStatements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RNSupplementSummaries] CHECK CONSTRAINT [FK_RNSupplementSummaries_PaymentStatements_PaymentStatementId]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Providers_ProviderId] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Providers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Providers_ProviderId]
GO
