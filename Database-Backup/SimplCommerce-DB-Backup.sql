USE [samplecommerce]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/29/2020 5:04:48 PM ******/
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
/****** Object:  Table [dbo].[ActivityLog_Activity]    Script Date: 4/29/2020 5:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog_Activity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityTypeId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityTypeId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ActivityLog_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog_ActivityType]    Script Date: 4/29/2020 5:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog_ActivityType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ActivityLog_ActivityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Brand]    Script Date: 4/29/2020 5:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Brand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Catalog_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Category]    Script Date: 4/29/2020 5:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IncludeInMenu] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ParentId] [bigint] NULL,
	[ThumbnailImageId] [bigint] NULL,
 CONSTRAINT [PK_Catalog_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_Product]    Script Date: 4/29/2020 5:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[ShortDescription] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Specification] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[SpecialPrice] [decimal](18, 2) NULL,
	[SpecialPriceStart] [datetimeoffset](7) NULL,
	[SpecialPriceEnd] [datetimeoffset](7) NULL,
	[HasOptions] [bit] NOT NULL,
	[IsVisibleIndividually] [bit] NOT NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsCallForPricing] [bit] NOT NULL,
	[IsAllowToOrder] [bit] NOT NULL,
	[StockTrackingIsEnabled] [bit] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[Sku] [nvarchar](450) NULL,
	[Gtin] [nvarchar](450) NULL,
	[NormalizedName] [nvarchar](450) NULL,
	[DisplayOrder] [int] NOT NULL,
	[VendorId] [bigint] NULL,
	[ThumbnailImageId] [bigint] NULL,
	[ReviewsCount] [int] NOT NULL,
	[RatingAverage] [float] NULL,
	[BrandId] [bigint] NULL,
	[TaxClassId] [bigint] NULL,
 CONSTRAINT [PK_Catalog_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttribute]    Script Date: 4/29/2020 5:04:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttribute](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[GroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttributeGroup]    Script Date: 4/29/2020 5:04:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttributeGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductAttributeGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductAttributeValue]    Script Date: 4/29/2020 5:04:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductAttributeValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AttributeId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Catalog_ProductAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductCategory]    Script Date: 4/29/2020 5:04:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsFeaturedProduct] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductLink]    Script Date: 4/29/2020 5:04:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductLink](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[LinkedProductId] [bigint] NOT NULL,
	[LinkType] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductMedia]    Script Date: 4/29/2020 5:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductMedia](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[MediaId] [bigint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductMedia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOption]    Script Date: 4/29/2020 5:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOption](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOptionCombination]    Script Date: 4/29/2020 5:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOptionCombination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[Value] [nvarchar](450) NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOptionCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductOptionValue]    Script Date: 4/29/2020 5:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductOptionValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Value] [nvarchar](450) NULL,
	[DisplayType] [nvarchar](450) NULL,
	[SortIndex] [int] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductOptionValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductPriceHistory]    Script Date: 4/29/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductPriceHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[OldPrice] [decimal](18, 2) NULL,
	[SpecialPrice] [decimal](18, 2) NULL,
	[SpecialPriceStart] [datetimeoffset](7) NULL,
	[SpecialPriceEnd] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Catalog_ProductPriceHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductTemplate]    Script Date: 4/29/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Catalog_ProductTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog_ProductTemplateProductAttribute]    Script Date: 4/29/2020 5:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog_ProductTemplateProductAttribute](
	[ProductTemplateId] [bigint] NOT NULL,
	[ProductAttributeId] [bigint] NOT NULL,
 CONSTRAINT [PK_Catalog_ProductTemplateProductAttribute] PRIMARY KEY CLUSTERED 
(
	[ProductTemplateId] ASC,
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_Menu]    Script Date: 4/29/2020 5:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Menu](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsSystem] [bit] NOT NULL,
 CONSTRAINT [PK_Cms_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_MenuItem]    Script Date: 4/29/2020 5:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_MenuItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentId] [bigint] NULL,
	[MenuId] [bigint] NOT NULL,
	[EntityId] [bigint] NULL,
	[CustomLink] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Cms_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cms_Page]    Script Date: 4/29/2020 5:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Page](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cms_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments_Comment]    Script Date: 4/29/2020 5:05:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments_Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[CommenterName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
	[EntityId] [bigint] NOT NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_Comments_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_Contact]    Script Date: 4/29/2020 5:05:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](450) NULL,
	[PhoneNumber] [nvarchar](450) NULL,
	[EmailAddress] [nvarchar](450) NULL,
	[Address] [nvarchar](450) NULL,
	[Content] [nvarchar](max) NULL,
	[ContactAreaId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Contacts_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_ContactArea]    Script Date: 4/29/2020 5:05:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_ContactArea](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts_ContactArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Address]    Script Date: 4/29/2020 5:05:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](450) NULL,
	[Phone] [nvarchar](450) NULL,
	[AddressLine1] [nvarchar](450) NULL,
	[AddressLine2] [nvarchar](450) NULL,
	[City] [nvarchar](450) NULL,
	[ZipCode] [nvarchar](450) NULL,
	[DistrictId] [bigint] NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Core_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_AppSetting]    Script Date: 4/29/2020 5:05:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_AppSetting](
	[Id] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](450) NULL,
	[Module] [nvarchar](450) NULL,
	[IsVisibleInCommonSettingPage] [bit] NOT NULL,
 CONSTRAINT [PK_Core_AppSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Country]    Script Date: 4/29/2020 5:05:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Country](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Code3] [nvarchar](450) NULL,
	[IsBillingEnabled] [bit] NOT NULL,
	[IsShippingEnabled] [bit] NOT NULL,
	[IsCityEnabled] [bit] NOT NULL,
	[IsZipCodeEnabled] [bit] NOT NULL,
	[IsDistrictEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_CustomerGroup]    Script Date: 4/29/2020 5:05:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_CustomerGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Core_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_CustomerGroupUser]    Script Date: 4/29/2020 5:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_CustomerGroupUser](
	[UserId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_CustomerGroupUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_District]    Script Date: 4/29/2020 5:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_District](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Type] [nvarchar](450) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Entity]    Script Date: 4/29/2020 5:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Entity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_Entity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_EntityType]    Script Date: 4/29/2020 5:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_EntityType](
	[Id] [nvarchar](450) NOT NULL,
	[IsMenuable] [bit] NOT NULL,
	[AreaName] [nvarchar](450) NULL,
	[RoutingController] [nvarchar](450) NULL,
	[RoutingAction] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_EntityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Media]    Script Date: 4/29/2020 5:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Media](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](450) NULL,
	[FileSize] [int] NOT NULL,
	[FileName] [nvarchar](450) NULL,
	[MediaType] [int] NOT NULL,
 CONSTRAINT [PK_Core_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Role]    Script Date: 4/29/2020 5:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_RoleClaim]    Script Date: 4/29/2020 5:05:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_RoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_RoleClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_StateOrProvince]    Script Date: 4/29/2020 5:05:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_StateOrProvince](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[Code] [nvarchar](450) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Type] [nvarchar](450) NULL,
 CONSTRAINT [PK_Core_StateOrProvince] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_User]    Script Date: 4/29/2020 5:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
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
	[UserGuid] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](450) NOT NULL,
	[VendorId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[DefaultShippingAddressId] [bigint] NULL,
	[DefaultBillingAddressId] [bigint] NULL,
	[RefreshTokenHash] [nvarchar](450) NULL,
	[Culture] [nvarchar](450) NULL,
	[ExtensionData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserAddress]    Script Date: 4/29/2020 5:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[AddressType] [int] NOT NULL,
	[LastUsedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Core_UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserClaim]    Script Date: 4/29/2020 5:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_UserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserLogin]    Script Date: 4/29/2020 5:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserRole]    Script Date: 4/29/2020 5:05:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserRole](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_UserToken]    Script Date: 4/29/2020 5:05:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserToken](
	[UserId] [bigint] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_UserToken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Vendor]    Script Date: 4/29/2020 5:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Vendor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Vendor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_Widget]    Script Date: 4/29/2020 5:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Widget](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[ViewComponentName] [nvarchar](450) NULL,
	[CreateUrl] [nvarchar](450) NULL,
	[EditUrl] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[IsPublished] [bit] NOT NULL,
 CONSTRAINT [PK_Core_Widget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_WidgetInstance]    Script Date: 4/29/2020 5:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetInstance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[PublishStart] [datetimeoffset](7) NULL,
	[PublishEnd] [datetimeoffset](7) NULL,
	[WidgetId] [nvarchar](450) NULL,
	[WidgetZoneId] [bigint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Data] [nvarchar](max) NULL,
	[HtmlData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_WidgetInstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_WidgetInstance_bkup]    Script Date: 4/29/2020 5:05:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetInstance_bkup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[PublishStart] [datetimeoffset](7) NULL,
	[PublishEnd] [datetimeoffset](7) NULL,
	[WidgetId] [nvarchar](450) NULL,
	[WidgetZoneId] [bigint] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[Data] [nvarchar](max) NULL,
	[HtmlData] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Core_WidgetZone]    Script Date: 4/29/2020 5:05:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetZone](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_WidgetZone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Stock]    Script Date: 4/29/2020 5:05:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Stock](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReservedQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Inventory_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_StockHistory]    Script Date: 4/29/2020 5:05:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_StockHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[WarehouseId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[AdjustedQuantity] [bigint] NOT NULL,
	[Note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Inventory_StockHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Warehouse]    Script Date: 4/29/2020 5:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Warehouse](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
 CONSTRAINT [PK_Inventory_Warehouse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_Culture]    Script Date: 4/29/2020 5:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Culture](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Localization_Culture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_LocalizedContentProperty]    Script Date: 4/29/2020 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_LocalizedContentProperty](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityType] [nvarchar](450) NULL,
	[CultureId] [nvarchar](450) NOT NULL,
	[ProperyName] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localization_LocalizedContentProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization_Resource]    Script Date: 4/29/2020 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Resource](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[CultureId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Localization_Resource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsCategory]    Script Date: 4/29/2020 5:05:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_News_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsItem]    Script Date: 4/29/2020 5:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[MetaTitle] [nvarchar](450) NULL,
	[MetaKeywords] [nvarchar](450) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[ShortContent] [nvarchar](450) NULL,
	[FullContent] [nvarchar](max) NULL,
	[ThumbnailImageId] [bigint] NULL,
 CONSTRAINT [PK_News_NewsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_NewsItemCategory]    Script Date: 4/29/2020 5:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItemCategory](
	[CategoryId] [bigint] NOT NULL,
	[NewsItemId] [bigint] NOT NULL,
 CONSTRAINT [PK_News_NewsItemCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[NewsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Order]    Script Date: 4/29/2020 5:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
	[CouponCode] [nvarchar](450) NULL,
	[CouponRuleName] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[SubTotalWithDiscount] [decimal](18, 2) NOT NULL,
	[ShippingAddressId] [bigint] NOT NULL,
	[BillingAddressId] [bigint] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderNote] [nvarchar](1000) NULL,
	[ParentId] [bigint] NULL,
	[IsMasterOrder] [bit] NOT NULL,
	[ShippingMethod] [nvarchar](450) NULL,
	[ShippingFeeAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](450) NULL,
	[PaymentFeeAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderAddress]    Script Date: 4/29/2020 5:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](450) NULL,
	[Phone] [nvarchar](450) NULL,
	[AddressLine1] [nvarchar](450) NULL,
	[AddressLine2] [nvarchar](450) NULL,
	[City] [nvarchar](450) NULL,
	[ZipCode] [nvarchar](450) NULL,
	[DistrictId] [bigint] NULL,
	[StateOrProvinceId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders_OrderAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderHistory]    Script Date: 4/29/2020 5:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[OldStatus] [int] NULL,
	[NewStatus] [int] NOT NULL,
	[OrderSnapshot] [nvarchar](max) NULL,
	[Note] [nvarchar](1000) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[CreatedById] [bigint] NOT NULL,
 CONSTRAINT [PK_Orders_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_OrderItem]    Script Date: 4/29/2020 5:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_OrderItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[ProductId] [bigint] NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments_Payment]    Script Date: 4/29/2020 5:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments_Payment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentFee] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](450) NULL,
	[GatewayTransactionId] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[FailureMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments_PaymentProvider]    Script Date: 4/29/2020 5:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments_PaymentProvider](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[ConfigureUrl] [nvarchar](450) NULL,
	[LandingViewComponentName] [nvarchar](450) NULL,
	[AdditionalSettings] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments_PaymentProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRule]    Script Date: 4/29/2020 5:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[StartOn] [datetimeoffset](7) NULL,
	[EndOn] [datetimeoffset](7) NULL,
	[IsCouponRequired] [bit] NOT NULL,
	[RuleToApply] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
	[DiscountStep] [int] NULL,
	[UsageLimitPerCoupon] [int] NULL,
	[UsageLimitPerCustomer] [int] NULL,
 CONSTRAINT [PK_Pricing_CartRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleCategory]    Script Date: 4/29/2020 5:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleCategory](
	[CategoryId] [bigint] NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleCategory] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleCustomerGroup]    Script Date: 4/29/2020 5:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleCustomerGroup](
	[CartRuleId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleCustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleProduct]    Script Date: 4/29/2020 5:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleProduct](
	[ProductId] [bigint] NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleProduct] PRIMARY KEY CLUSTERED 
(
	[CartRuleId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CartRuleUsage]    Script Date: 4/29/2020 5:05:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CartRuleUsage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
	[CouponId] [bigint] NULL,
	[UserId] [bigint] NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Pricing_CartRuleUsage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CatalogRule]    Script Date: 4/29/2020 5:05:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CatalogRule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[StartOn] [datetimeoffset](7) NULL,
	[EndOn] [datetimeoffset](7) NULL,
	[RuleToApply] [nvarchar](450) NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Pricing_CatalogRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_CatalogRuleCustomerGroup]    Script Date: 4/29/2020 5:05:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_CatalogRuleCustomerGroup](
	[CatalogRuleId] [bigint] NOT NULL,
	[CustomerGroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_Pricing_CatalogRuleCustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CatalogRuleId] ASC,
	[CustomerGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_Coupon]    Script Date: 4/29/2020 5:05:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_Coupon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CartRuleId] [bigint] NOT NULL,
	[Code] [nvarchar](450) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Pricing_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComparison_ComparingProduct]    Script Date: 4/29/2020 5:05:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComparison_ComparingProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductComparison_ComparingProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRecentlyViewed_RecentlyViewedProduct]    Script Date: 4/29/2020 5:05:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRecentlyViewed_RecentlyViewedProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[LatestViewedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_ProductRecentlyViewed_RecentlyViewedProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews_Reply]    Script Date: 4/29/2020 5:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews_Reply](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReviewId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[ReplierName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Reviews_Reply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews_Review]    Script Date: 4/29/2020 5:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews_Review](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Title] [nvarchar](450) NULL,
	[Comment] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[ReviewerName] [nvarchar](450) NULL,
	[Status] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EntityTypeId] [nvarchar](450) NULL,
	[EntityId] [bigint] NOT NULL,
 CONSTRAINT [PK_Reviews_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Search_Query]    Script Date: 4/29/2020 5:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Search_Query](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[QueryText] [nvarchar](500) NOT NULL,
	[ResultsCount] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Search_Query] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments_Shipment]    Script Date: 4/29/2020 5:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments_Shipment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[TrackingNumber] [nvarchar](450) NULL,
	[WarehouseId] [bigint] NOT NULL,
	[VendorId] [bigint] NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_Shipments_Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments_ShipmentItem]    Script Date: 4/29/2020 5:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments_ShipmentItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShipmentId] [bigint] NOT NULL,
	[OrderItemId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Shipments_ShipmentItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_ShippingProvider]    Script Date: 4/29/2020 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_ShippingProvider](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[ConfigureUrl] [nvarchar](450) NULL,
	[ToAllShippingEnabledCountries] [bit] NOT NULL,
	[OnlyCountryIdsString] [nvarchar](1000) NULL,
	[ToAllShippingEnabledStatesOrProvinces] [bit] NOT NULL,
	[OnlyStateOrProvinceIdsString] [nvarchar](1000) NULL,
	[AdditionalSettings] [nvarchar](max) NULL,
	[ShippingPriceServiceTypeName] [nvarchar](450) NULL,
 CONSTRAINT [PK_Shipping_ShippingProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingTableRate_PriceAndDestination]    Script Date: 4/29/2020 5:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingTableRate_PriceAndDestination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[StateOrProvinceId] [bigint] NULL,
	[DistrictId] [bigint] NULL,
	[ZipCode] [nvarchar](450) NULL,
	[Note] [nvarchar](max) NULL,
	[MinOrderSubtotal] [decimal](18, 2) NOT NULL,
	[ShippingPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ShippingTableRate_PriceAndDestination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart_Cart]    Script Date: 4/29/2020 5:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart_Cart](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CouponCode] [nvarchar](450) NULL,
	[CouponRuleName] [nvarchar](450) NULL,
	[ShippingMethod] [nvarchar](450) NULL,
	[IsProductPriceIncludeTax] [bit] NOT NULL,
	[ShippingAmount] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[ShippingData] [nvarchar](max) NULL,
	[OrderNote] [nvarchar](1000) NULL,
	[LockedOnCheckout] [bit] NOT NULL,
 CONSTRAINT [PK_ShoppingCart_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart_CartItem]    Script Date: 4/29/2020 5:05:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart_CartItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CartId] [bigint] NOT NULL,
 CONSTRAINT [PK_ShoppingCart_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax_TaxClass]    Script Date: 4/29/2020 5:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax_TaxClass](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Tax_TaxClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax_TaxRate]    Script Date: 4/29/2020 5:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax_TaxRate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TaxClassId] [bigint] NOT NULL,
	[CountryId] [nvarchar](450) NULL,
	[StateOrProvinceId] [bigint] NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[ZipCode] [nvarchar](450) NULL,
 CONSTRAINT [PK_Tax_TaxRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList_WishList]    Script Date: 4/29/2020 5:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList_WishList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[SharingCode] [nvarchar](450) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_WishList_WishList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList_WishListItem]    Script Date: 4/29/2020 5:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList_WishListItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WishListId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[LatestUpdatedOn] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_WishList_WishListItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190212090153_SimplCommerce_v1_0_0', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190224050227_AddedCartLockOnCheckout', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190302122027_MomoPayment', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190314044223_AddedNganLuongPayment', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190710165614_DefaultCultureConfiguration', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190726221912_AddedCurrencySetting', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190727083300_AddedContentLocalization', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190801065533_AddedCashfreePayment', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190803175214_AddedAssetBundlingConfig', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200429041048_SimpleCommercePingoV1', N'3.1.0')
SET IDENTITY_INSERT [dbo].[ActivityLog_Activity] ON 

INSERT [dbo].[ActivityLog_Activity] ([Id], [ActivityTypeId], [UserId], [CreatedOn], [EntityId], [EntityTypeId]) VALUES (1, 1, 10, CAST(N'2020-04-30T00:45:58.5400282+08:00' AS DateTimeOffset), 10, N'Product')
INSERT [dbo].[ActivityLog_Activity] ([Id], [ActivityTypeId], [UserId], [CreatedOn], [EntityId], [EntityTypeId]) VALUES (2, 1, 12, CAST(N'2020-04-30T01:01:34.1014768+08:00' AS DateTimeOffset), 20, N'Product')
SET IDENTITY_INSERT [dbo].[ActivityLog_Activity] OFF
SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] ON 

INSERT [dbo].[ActivityLog_ActivityType] ([Id], [Name]) VALUES (1, N'EntityView')
SET IDENTITY_INSERT [dbo].[ActivityLog_ActivityType] OFF
SET IDENTITY_INSERT [dbo].[Catalog_Brand] ON 

INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (1, N'Adidas', N'adidas', NULL, 1, 0)
INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (2, N'Calvin Klein', N'calvin-klein', NULL, 1, 0)
INSERT [dbo].[Catalog_Brand] ([Id], [Name], [Slug], [Description], [IsPublished], [IsDeleted]) VALUES (3, N'Ogival', N'ogival', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Catalog_Brand] OFF
SET IDENTITY_INSERT [dbo].[Catalog_Category] ON 

INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (1, N'Woman', N'woman', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (2, N'Man', N'man', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (3, N'Shoes', N'shoes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (4, N'Watches', N'watches', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (5, N'T-Shirt', N't-shirt', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL)
INSERT [dbo].[Catalog_Category] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [Description], [DisplayOrder], [IsPublished], [IncludeInMenu], [IsDeleted], [ParentId], [ThumbnailImageId]) VALUES (6, N'Suit', N'suit', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL)
SET IDENTITY_INSERT [dbo].[Catalog_Category] OFF
SET IDENTITY_INSERT [dbo].[Catalog_Product] ON 

INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (1, N'Lightweight Jacket', N'lightweight-jacket', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T15:02:17.0131910+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0133446+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (2, N'Lightweight Jacket M Black', N'lightweight-jacket-m-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0496868+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0490714+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0490747+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'M-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (3, N'Lightweight Jacket M Gray', N'lightweight-jacket-m-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554427+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554403+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554418+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'M-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (4, N'Lightweight Jacket L Black', N'lightweight-jacket-l-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554601+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554598+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554598+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'L-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (5, N'Lightweight Jacket L Gray', N'lightweight-jacket-l-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554688+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554685+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554686+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'L-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (6, N'Lightweight Jacket S Black', N'lightweight-jacket-s-black', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554741+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554738+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554739+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'S-Black', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (7, N'Lightweight Jacket S Gray', N'lightweight-jacket-s-gray', NULL, NULL, NULL, 1, CAST(N'2018-08-11T15:02:17.0554798+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T15:02:17.0554795+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:02:17.0554796+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'S-Gray', 0, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (8, N'Esprit Ruffle Shirt', N'esprit-ruffle-shirt', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:14:54.9500292+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:14:54.9500303+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(16.64 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 5, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (9, N'Herschel supply', N'herschel-supply', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:16:28.3513281+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:16:28.3513289+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(35.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 7, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (10, N'Only Check Trouser', N'only-check-trouser', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:17:33.9968471+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:17:33.9968483+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(25.50 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 9, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (11, N'Classic Trench Coat', N'classic-trench-coat', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:18:38.8006442+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:18:38.8006452+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 11, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (12, N'Front Pocket Jumper', N'front-pocket-jumper', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:20:26.0181214+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:20:26.0181225+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(34.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 13, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (13, N'Vintage Inspired Classic', N'vintage-inspired-classic', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:22:07.9910541+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:22:07.9910553+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(93.20 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 15, 0, NULL, 3, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (14, N'Shirt in Stretch Cotton', N'shirt-in-stretch-cotton', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:23:06.0599222+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:23:06.0599232+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(52.66 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 17, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (15, N'Pieces Metallic Printed', N'pieces-metallic-printed', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:24:48.0791813+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:24:48.0791822+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(18.96 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 19, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (16, N'Converse All Star Hi Plimsolls', N'converse-all-star-hi-plimsolls', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:26:22.6986514+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:26:22.6986524+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 21, 0, NULL, 1, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (17, N'Femme T-Shirt In Stripe', N'femme-t-shirt-in-stripe', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:27:33.7510433+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:27:33.7510446+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(25.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 23, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (18, N'Herschel supply', N'herschel-supply-2', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:28:33.4852442+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:28:33.4852456+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(63.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 25, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (19, N'Herschel supply', N'herschel-supply-2-3', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:29:44.3076497+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:29:44.3076505+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(63.15 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 27, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (20, N'T-Shirt with Sleeve', N't-shirt-with-sleeve', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:30:56.2639586+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:30:56.2639602+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(18.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 29, 1, 5, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (21, N'Pretty Little Thing', N'pretty-little-thing', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:32:22.4371355+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:32:22.4371365+07:00' AS DateTimeOffset), 10, N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.</span><br></p>', N'<p>Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.<br></p>', NULL, CAST(54.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 31, 0, NULL, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (22, N'Square Neck Back', N'square-neck-back', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T18:33:38.3028193+07:00' AS DateTimeOffset), CAST(N'2018-08-11T18:33:38.3028200+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 100, NULL, NULL, NULL, 0, NULL, 34, 1, 5, 2, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (23, N'Square Neck Back Silver S', N'square-neck-back-silver-s', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1186306+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1186262+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1186289+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Silver-S', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (24, N'Square Neck Back Silver M', N'square-neck-back-silver-m', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245088+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245061+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245075+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Silver-M', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (25, N'Square Neck Back Gray S', N'square-neck-back-gray-s', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245475+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245466+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245470+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Gray-S', 0, NULL, 34, 0, NULL, NULL, 1)
INSERT [dbo].[Catalog_Product] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [ShortDescription], [Description], [Specification], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd], [HasOptions], [IsVisibleIndividually], [IsFeatured], [IsCallForPricing], [IsAllowToOrder], [StockTrackingIsEnabled], [StockQuantity], [Sku], [Gtin], [NormalizedName], [DisplayOrder], [VendorId], [ThumbnailImageId], [ReviewsCount], [RatingAverage], [BrandId], [TaxClassId]) VALUES (26, N'Square Neck Back Gray M', N'square-neck-back-gray-m', NULL, NULL, NULL, 1, CAST(N'2018-08-11T19:24:26.1245624+07:00' AS DateTimeOffset), 0, 10, CAST(N'2018-08-11T19:24:26.1245617+07:00' AS DateTimeOffset), CAST(N'2018-08-11T19:24:26.1245620+07:00' AS DateTimeOffset), 10, N'<p>Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.<br></p>', N'<p><span style="color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 15px;">Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</span><br></p>', NULL, CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 100, NULL, NULL, N'Gray-M', 0, NULL, 34, 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Catalog_Product] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductCategory] ON 

INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (1, 0, 0, 5, 1)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (2, 0, 0, 2, 7)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (3, 0, 0, 5, 7)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (4, 0, 0, 2, 6)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (5, 0, 0, 5, 6)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (6, 0, 0, 2, 5)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (7, 0, 0, 5, 5)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (8, 0, 0, 2, 4)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (9, 0, 0, 5, 4)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (10, 0, 0, 5, 3)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (11, 0, 0, 2, 2)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (12, 0, 0, 5, 2)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (13, 0, 0, 2, 3)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (14, 0, 0, 2, 1)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (15, 0, 0, 1, 8)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (16, 0, 0, 1, 9)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (17, 0, 0, 2, 10)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (18, 0, 0, 1, 11)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (19, 0, 0, 1, 12)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (20, 0, 0, 4, 13)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (21, 0, 0, 2, 13)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (22, 0, 0, 1, 14)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (23, 0, 0, 1, 15)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (24, 0, 0, 3, 16)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (25, 0, 0, 1, 17)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (26, 0, 0, 2, 18)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (27, 0, 0, 5, 18)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (28, 0, 0, 2, 19)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (29, 0, 0, 1, 20)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (30, 0, 0, 1, 21)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (31, 0, 0, 1, 22)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (32, 0, 0, 1, 23)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (33, 0, 0, 1, 24)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (34, 0, 0, 1, 25)
INSERT [dbo].[Catalog_ProductCategory] ([Id], [IsFeaturedProduct], [DisplayOrder], [CategoryId], [ProductId]) VALUES (35, 0, 0, 1, 26)
SET IDENTITY_INSERT [dbo].[Catalog_ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductLink] ON 

INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (1, 1, 2, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (2, 1, 7, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (3, 1, 3, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (4, 1, 6, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (5, 1, 4, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (6, 1, 5, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (7, 22, 23, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (8, 22, 24, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (9, 22, 25, 1)
INSERT [dbo].[Catalog_ProductLink] ([Id], [ProductId], [LinkedProductId], [LinkType]) VALUES (10, 22, 26, 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductLink] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductMedia] ON 

INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (1, 1, 2, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (2, 1, 3, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (3, 1, 4, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (4, 8, 6, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (5, 9, 8, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (6, 10, 10, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (7, 11, 12, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (8, 12, 14, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (9, 13, 16, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (10, 14, 18, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (11, 15, 20, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (12, 16, 22, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (13, 17, 24, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (14, 18, 26, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (15, 19, 28, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (16, 20, 30, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (17, 21, 32, 0)
INSERT [dbo].[Catalog_ProductMedia] ([Id], [ProductId], [MediaId], [DisplayOrder]) VALUES (18, 22, 33, 0)
SET IDENTITY_INSERT [dbo].[Catalog_ProductMedia] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] ON 

INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (1, N'Color')
INSERT [dbo].[Catalog_ProductOption] ([Id], [Name]) VALUES (2, N'Size')
SET IDENTITY_INSERT [dbo].[Catalog_ProductOption] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionCombination] ON 

INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (1, 4, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (2, 6, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (3, 6, 2, N'S', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (4, 5, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (5, 5, 2, N'L', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (6, 7, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (7, 4, 2, N'L', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (8, 3, 1, N'Gray', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (9, 3, 2, N'M', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (10, 7, 2, N'S', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (11, 2, 1, N'Black', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (12, 2, 2, N'M', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (13, 23, 1, N'Silver', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (14, 23, 2, N'S', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (15, 26, 1, N'Gray', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (16, 24, 1, N'Silver', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (17, 24, 2, N'M', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (18, 26, 2, N'M', 1)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (19, 25, 1, N'Gray', 0)
INSERT [dbo].[Catalog_ProductOptionCombination] ([Id], [ProductId], [OptionId], [Value], [SortIndex]) VALUES (20, 25, 2, N'S', 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionCombination] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionValue] ON 

INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (1, 1, 1, N'[{"Key":"Black","Display":"#090808"},{"Key":"Gray","Display":"#cfd6dd"}]', N'color', 1)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (2, 2, 1, N'[{"Key":"M","Display":"M"},{"Key":"L","Display":"L"},{"Key":"S","Display":"S"}]', N'text', 0)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (3, 1, 22, N'[{"Key":"Silver","Display":"#e8e6ef"},{"Key":"Gray","Display":"#8c8585"}]', N'color', 0)
INSERT [dbo].[Catalog_ProductOptionValue] ([Id], [OptionId], [ProductId], [Value], [DisplayType], [SortIndex]) VALUES (4, 2, 22, N'[{"Key":"S","Display":null},{"Key":"M","Display":null}]', N'text', 1)
SET IDENTITY_INSERT [dbo].[Catalog_ProductOptionValue] OFF
SET IDENTITY_INSERT [dbo].[Catalog_ProductPriceHistory] ON 

INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (1, 1, 10, CAST(N'2018-08-11T15:02:17.0541076+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (2, 1, 10, CAST(N'2018-08-11T15:02:17.0554587+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (3, 1, 10, CAST(N'2018-08-11T15:02:17.0554679+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (4, 1, 10, CAST(N'2018-08-11T15:02:17.0554732+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (5, 1, 10, CAST(N'2018-08-11T15:02:17.0554783+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (6, 1, 10, CAST(N'2018-08-11T15:02:17.0554862+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (7, 1, 10, CAST(N'2018-08-11T15:02:17.0560706+07:00' AS DateTimeOffset), CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (8, 8, 10, CAST(N'2018-08-11T18:14:54.9581872+07:00' AS DateTimeOffset), CAST(16.64 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (9, 9, 10, CAST(N'2018-08-11T18:16:28.3595420+07:00' AS DateTimeOffset), CAST(35.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (10, 10, 10, CAST(N'2018-08-11T18:17:34.0032918+07:00' AS DateTimeOffset), CAST(25.50 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (11, 11, 10, CAST(N'2018-08-11T18:18:38.8056600+07:00' AS DateTimeOffset), CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (12, 12, 10, CAST(N'2018-08-11T18:20:26.0235652+07:00' AS DateTimeOffset), CAST(34.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (13, 13, 10, CAST(N'2018-08-11T18:22:07.9966185+07:00' AS DateTimeOffset), CAST(93.20 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (14, 14, 10, CAST(N'2018-08-11T18:23:06.0659327+07:00' AS DateTimeOffset), CAST(52.66 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (15, 15, 10, CAST(N'2018-08-11T18:24:48.0845771+07:00' AS DateTimeOffset), CAST(18.96 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (16, 16, 10, CAST(N'2018-08-11T18:26:22.7028175+07:00' AS DateTimeOffset), CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (17, 17, 10, CAST(N'2018-08-11T18:27:33.7559977+07:00' AS DateTimeOffset), CAST(25.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (18, 18, 10, CAST(N'2018-08-11T18:28:33.4902495+07:00' AS DateTimeOffset), CAST(63.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (19, 19, 10, CAST(N'2018-08-11T18:29:44.3117613+07:00' AS DateTimeOffset), CAST(63.15 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (20, 20, 10, CAST(N'2018-08-11T18:30:56.2754061+07:00' AS DateTimeOffset), CAST(18.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (21, 21, 10, CAST(N'2018-08-11T18:32:22.4407454+07:00' AS DateTimeOffset), CAST(54.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (22, 22, 10, CAST(N'2018-08-11T18:33:38.3028499+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (23, 24, 10, CAST(N'2018-08-11T19:24:26.1245415+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (24, 23, 10, CAST(N'2018-08-11T19:24:26.1242459+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (25, 25, 10, CAST(N'2018-08-11T19:24:26.1245570+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
INSERT [dbo].[Catalog_ProductPriceHistory] ([Id], [ProductId], [CreatedById], [CreatedOn], [Price], [OldPrice], [SpecialPrice], [SpecialPriceStart], [SpecialPriceEnd]) VALUES (26, 26, 10, CAST(N'2018-08-11T19:24:26.1245732+07:00' AS DateTimeOffset), CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Catalog_ProductPriceHistory] OFF
SET IDENTITY_INSERT [dbo].[Cms_Menu] ON 

INSERT [dbo].[Cms_Menu] ([Id], [Name], [IsPublished], [IsSystem]) VALUES (1, N'Customer Services', 1, 1)
INSERT [dbo].[Cms_Menu] ([Id], [Name], [IsPublished], [IsSystem]) VALUES (2, N'Information', 1, 1)
SET IDENTITY_INSERT [dbo].[Cms_Menu] OFF
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] ON 

INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (1, NULL, 2, 1, NULL, N'Woman', 0)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (2, NULL, 2, 2, NULL, N'Man', 1)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (3, NULL, 2, 3, NULL, N'Shoes', 2)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (4, NULL, 2, 4, NULL, N'Watches', 3)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (5, NULL, 1, 24, NULL, N'About Us', 0)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (6, NULL, 1, 23, NULL, N'Help center', 1)
INSERT [dbo].[Cms_MenuItem] ([Id], [ParentId], [MenuId], [EntityId], [CustomLink], [Name], [DisplayOrder]) VALUES (7, NULL, 1, 25, NULL, N'Terms of Use', 2)
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] OFF
SET IDENTITY_INSERT [dbo].[Cms_Page] ON 

INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (1, N'Help center', N'help-center', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T20:47:14.1027299+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:47:14.1027316+07:00' AS DateTimeOffset), 10, N'<h1>Help center</h1><p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Your information. Use admin site to update</span><br></p>')
INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (2, N'About Us', N'about-us', NULL, NULL, N'', 1, NULL, 0, 10, CAST(N'2018-08-11T20:49:11.7082006+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:49:11.7082016+07:00' AS DateTimeOffset), 10, N'<h1>About Us</h1><p>Edit your information in the admin side</p>')
INSERT [dbo].[Cms_Page] ([Id], [Name], [Slug], [MetaTitle], [MetaKeywords], [MetaDescription], [IsPublished], [PublishedOn], [IsDeleted], [CreatedById], [CreatedOn], [LatestUpdatedOn], [LatestUpdatedById], [Body]) VALUES (3, N'Terms of Use', N'terms-of-use', NULL, NULL, NULL, 1, NULL, 0, 10, CAST(N'2018-08-11T20:50:11.5637211+07:00' AS DateTimeOffset), CAST(N'2018-08-11T20:50:11.5637220+07:00' AS DateTimeOffset), 10, N'<h1>Term and Conditions</h1><p>Your term and conditions. Use admin site to update.<br></p>')
SET IDENTITY_INSERT [dbo].[Cms_Page] OFF
SET IDENTITY_INSERT [dbo].[Core_Address] ON 

INSERT [dbo].[Core_Address] ([Id], [ContactName], [Phone], [AddressLine1], [AddressLine2], [City], [ZipCode], [DistrictId], [StateOrProvinceId], [CountryId]) VALUES (1, N'Thien Nguyen', NULL, N'364 Cong Hoa', NULL, NULL, NULL, NULL, 1, N'VN')
SET IDENTITY_INSERT [dbo].[Core_Address] OFF
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.IsCommentsRequireApproval', N'true', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.IsProductPriceIncludeTax', N'true', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Catalog.ProductPageSize', N'10', N'Catalog', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.AssetBundling', N'false', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.AssetVersion', N'1.0', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.CurrencyCulture', N'en-US', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.CurrencyDecimalPlace', N'2', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Global.DefaultCultureUI', N'en-US', N'Core', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'GoogleAppKey', N'', N'Contact', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Localization.LocalizedConentEnable', N'true', N'Localization', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'News.PageSize', N'10', N'News', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpPassword', N'', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpPort', N'587', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpServer', N'smtp.gmail.com', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'SmtpUsername', N'', N'EmailSenderSmpt', 0)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Tax.DefaultTaxClassId', N'1', N'Tax', 1)
INSERT [dbo].[Core_AppSetting] ([Id], [Value], [Module], [IsVisibleInCommonSettingPage]) VALUES (N'Theme', N'Generic', N'Core', 0)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AD', N'Andorra', N'AND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AE', N'United Arab Emirates', N'ARE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AF', N'Afghanistan', N'AFG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AG', N'Antigua &amp; Barbuda', N'ATG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AI', N'Anguilla', N'AIA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AL', N'Albania', N'ALB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AM', N'Armenia', N'ARM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AN', N'Netherlands Antilles', N'ANT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AO', N'Angola', N'AGO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AQ', N'Antarctica', N'ATA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AR', N'Argentina', N'ARG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AS', N'American Samoa', N'ASM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AT', N'Austria', N'AUT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AU', N'Australia', N'AUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AW', N'Aruba', N'ABW', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AX', N'Åland Islands', N'ALA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'AZ', N'Azerbaijan', N'AZE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BA', N'Bosnia &amp; Herzegovina', N'BIH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BB', N'Barbados', N'BRB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BD', N'Bangladesh', N'BGD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BE', N'Belgium', N'BEL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BF', N'Burkina Faso', N'BFA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BG', N'Bulgaria', N'BGR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BH', N'Bahrain', N'BHR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BI', N'Burundi', N'BDI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BJ', N'Benin', N'BEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BL', N'St. Barthélemy', N'BLM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BM', N'Bermuda', N'BMU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BN', N'Brunei', N'BRN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BO', N'Bolivia', N'BOL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BR', N'Brazil', N'BRA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BS', N'Bahamas', N'BHS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BT', N'Bhutan', N'BTN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BV', N'Bouvet Island', N'BVT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BW', N'Botswana', N'BWA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BY', N'Belarus', N'BLR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'BZ', N'Belize', N'BLZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CA', N'Canada', N'CAN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CC', N'Cocos (Keeling) Islands', N'CCK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CD', N'Congo - Kinshasa', N'COD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CF', N'Central African Republic', N'CAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CG', N'Congo - Brazzaville', N'COG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CH', N'Switzerland', N'CHE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CI', N'Côte d’Ivoire', N'CIV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CK', N'Cook Islands', N'COK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CL', N'Chile', N'CHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CM', N'Cameroon', N'CMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CN', N'China', N'CHN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CO', N'Colombia', N'COL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CR', N'Costa Rica', N'CRI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CU', N'Cuba', N'CUB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CV', N'Cape Verde', N'CPV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CX', N'Christmas Island', N'CXR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CY', N'Cyprus', N'CYP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'CZ', N'Czech Republic', N'CZE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DE', N'Germany', N'DEU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DJ', N'Djibouti', N'DJI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DK', N'Denmark', N'DNK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DM', N'Dominica', N'DMA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DO', N'Dominican Republic', N'DOM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'DZ', N'Algeria', N'DZA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'EC', N'Ecuador', N'ECU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'EE', N'Estonia', N'EST', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'EG', N'Egypt', N'EGY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'EH', N'Western Sahara', N'ESH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ER', N'Eritrea', N'ERI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ES', N'Spain', N'ESP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ET', N'Ethiopia', N'ETH', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FI', N'Finland', N'FIN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FJ', N'Fiji', N'FJI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FK', N'Falkland Islands', N'FLK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FM', N'Micronesia', N'FSM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FO', N'Faroe Islands', N'FRO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'FR', N'France', N'FRA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GA', N'Gabon', N'GAB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GB', N'United Kingdom', N'GBR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GD', N'Grenada', N'GRD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GE', N'Georgia', N'GEO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GF', N'French Guiana', N'GUF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GG', N'Guernsey', N'GGY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GH', N'Ghana', N'GHA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GI', N'Gibraltar', N'GIB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GL', N'Greenland', N'GRL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GM', N'Gambia', N'GMB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GN', N'Guinea', N'GIN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GP', N'Guadeloupe', N'GLP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GQ', N'Equatorial Guinea', N'GNQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GR', N'Greece', N'GRC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GS', N'South Georgia &amp; South Sandwich Islands', N'SGS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GT', N'Guatemala', N'GTM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GU', N'Guam', N'GUM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GW', N'Guinea-Bissau', N'GNB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'GY', N'Guyana', N'GUY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HK', N'Hong Kong SAR China', N'HKG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HM', N'Heard &amp; McDonald Islands', N'HMD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HN', N'Honduras', N'HND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HR', N'Croatia', N'HRV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HT', N'Haiti', N'HTI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'HU', N'Hungary', N'HUN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ID', N'Indonesia', N'IDN', 0, 0, 1, 1, 1)
GO
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IE', N'Ireland', N'IRL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IL', N'Israel', N'ISR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IM', N'Isle of Man', N'IMN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IN', N'India', N'IND', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IO', N'British Indian Ocean Territory', N'IOT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IQ', N'Iraq', N'IRQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IR', N'Iran', N'IRN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IS', N'Iceland', N'ISL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'IT', N'Italy', N'ITA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'JE', N'Jersey', N'JEY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'JM', N'Jamaica', N'JAM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'JO', N'Jordan', N'JOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'JP', N'Japan', N'JPN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KE', N'Kenya', N'KEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KG', N'Kyrgyzstan', N'KGZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KH', N'Cambodia', N'KHM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KI', N'Kiribati', N'KIR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KM', N'Comoros', N'COM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KN', N'St. Kitts &amp; Nevis', N'KNA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KP', N'North Korea', N'PRK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KR', N'South Korea', N'KOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KW', N'Kuwait', N'KWT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KY', N'Cayman Islands', N'CYM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'KZ', N'Kazakhstan', N'KAZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LA', N'Laos', N'LAO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LB', N'Lebanon', N'LBN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LC', N'St. Lucia', N'LCA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LI', N'Liechtenstein', N'LIE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LK', N'Sri Lanka', N'LKA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LR', N'Liberia', N'LBR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LS', N'Lesotho', N'LSO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LT', N'Lithuania', N'LTU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LU', N'Luxembourg', N'LUX', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LV', N'Latvia', N'LVA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'LY', N'Libya', N'LBY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MA', N'Morocco', N'MAR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MC', N'Monaco', N'MCO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MD', N'Moldova', N'MDA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ME', N'Montenegro', N'MNE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MF', N'St. Martin', N'MAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MG', N'Madagascar', N'MDG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MH', N'Marshall Islands', N'MHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MK', N'Macedonia', N'MKD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ML', N'Mali', N'MLI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MM', N'Myanmar (Burma)', N'MMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MN', N'Mongolia', N'MNG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MO', N'Macau SAR China', N'MAC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MP', N'Northern Mariana Islands', N'MNP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MQ', N'Martinique', N'MTQ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MR', N'Mauritania', N'MRT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MS', N'Montserrat', N'MSR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MT', N'Malta', N'MLT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MU', N'Mauritius', N'MUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MV', N'Maldives', N'MDV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MW', N'Malawi', N'MWI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MX', N'Mexico', N'MEX', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MY', N'Malaysia', N'MYS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'MZ', N'Mozambique', N'MOZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NA', N'Namibia', N'NAM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NC', N'New Caledonia', N'NCL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NE', N'Niger', N'NER', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NF', N'Norfolk Island', N'NFK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NG', N'Nigeria', N'NGA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NI', N'Nicaragua', N'NIC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NL', N'Netherlands', N'NLD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NO', N'Norway', N'NOR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NP', N'Nepal', N'NPL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NR', N'Nauru', N'NRU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NU', N'Niue', N'NIU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'NZ', N'New Zealand', N'NZL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'OM', N'Oman', N'OMN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PA', N'Panama', N'PAN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PE', N'Peru', N'PER', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PF', N'French Polynesia', N'PYF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PG', N'Papua New Guinea', N'PNG', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PH', N'Philippines', N'PHL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PK', N'Pakistan', N'PAK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PL', N'Poland', N'POL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PM', N'St. Pierre &amp; Miquelon', N'SPM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PN', N'Pitcairn Islands', N'PCN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PS', N'Palestinian Territories', N'PSE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PT', N'Portugal', N'PRT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PW', N'Palau', N'PLW', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'PY', N'Paraguay', N'PRY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'QA', N'Qatar', N'QAT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'RE', N'Réunion', N'REU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'RO', N'Romania', N'ROU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'RS', N'Serbia', N'SRB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'RU', N'Russia', N'RUS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'RW', N'Rwanda', N'RWA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SA', N'Saudi Arabia', N'SAU', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SB', N'Solomon Islands', N'SLB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SC', N'Seychelles', N'SYC', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SD', N'Sudan', N'SDN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SE', N'Sweden', N'SWE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SG', N'Singapore', N'SGP', 1, 1, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SH', N'St. Helena', N'SHN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SI', N'Slovenia', N'SVN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SJ', N'Svalbard &amp; Jan Mayen', N'SJM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SK', N'Slovakia', N'SVK', 0, 0, 1, 1, 1)
GO
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SL', N'Sierra Leone', N'SLE', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SM', N'San Marino', N'SMR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SN', N'Senegal', N'SEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SO', N'Somalia', N'SOM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SR', N'Suriname', N'SUR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ST', N'São Tomé &amp; Príncipe', N'STP', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SV', N'El Salvador', N'SLV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SY', N'Syria', N'SYR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'SZ', N'Swaziland', N'SWZ', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TC', N'Turks &amp; Caicos Islands', N'TCA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TD', N'Chad', N'TCD', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TF', N'French Southern Territories', N'ATF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TG', N'Togo', N'TGO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TH', N'Thailand', N'THA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TJ', N'Tajikistan', N'TJK', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TK', N'Tokelau', N'TKL', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TL', N'Timor-Leste', N'TLS', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TM', N'Turkmenistan', N'TKM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TN', N'Tunisia', N'TUN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TO', N'Tonga', N'TON', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TR', N'Turkey', N'TUR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TT', N'Trinidad &amp; Tobago', N'TTO', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TV', N'Tuvalu', N'TUV', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TW', N'Taiwan', N'TWN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'TZ', N'Tanzania', N'TZA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'UA', N'Ukraine', N'UKR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'UG', N'Uganda', N'UGA', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'UM', N'U.S. Outlying Islands', N'UMI', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'US', N'United States', N'USA', 1, 1, 1, 1, 0)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'UY', N'Uruguay', N'URY', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'UZ', N'Uzbekistan', N'UZB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VA', N'Vatican City', N'VAT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VC', N'St. Vincent &amp; Grenadines', N'VCT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VE', N'Venezuela', N'VEN', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VG', N'British Virgin Islands', N'VGB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VI', N'U.S. Virgin Islands', N'VIR', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VN', N'Việt Nam', N'VNM', 1, 1, 0, 0, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'VU', N'Vanuatu', N'VUT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'WF', N'Wallis &amp; Futuna', N'WLF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'WS', N'Samoa', N'WSM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'YE', N'Yemen', N'YEM', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'YT', N'Mayotte', N'MYT', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ZA', N'South Africa', N'ZAF', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ZM', N'Zambia', N'ZMB', 0, 0, 1, 1, 1)
INSERT [dbo].[Core_Country] ([Id], [Name], [Code3], [IsBillingEnabled], [IsShippingEnabled], [IsCityEnabled], [IsZipCodeEnabled], [IsDistrictEnabled]) VALUES (N'ZW', N'Zimbabwe', N'ZWE', 0, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Core_District] ON 

INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (2, 2, N'Bedfordshire', NULL, NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (3, 2, N'Berkshire', NULL, NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (4, 2, N'Bristol', NULL, NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (974, 2, N'Bedfordshire', NULL, NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (975, 2, N'Berkshire', NULL, NULL)
INSERT [dbo].[Core_District] ([Id], [StateOrProvinceId], [Name], [Type], [Location]) VALUES (976, 2, N'Bristol', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Core_District] OFF
SET IDENTITY_INSERT [dbo].[Core_Entity] ON 

INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (1, N'woman', N'Woman', 1, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (2, N'man', N'Man', 2, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (3, N'shoes', N'Shoes', 3, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (4, N'watches', N'Watches', 4, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (5, N't-shirt', N'T-Shirt', 5, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (6, N'suit', N'Suit', 6, N'Category')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (7, N'lightweight-jacket', N'Lightweight Jacket', 1, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (8, N'esprit-ruffle-shirt', N'Esprit Ruffle Shirt', 8, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (9, N'herschel-supply', N'Herschel supply', 9, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (10, N'only-check-trouser', N'Only Check Trouser', 10, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (11, N'classic-trench-coat', N'Classic Trench Coat', 11, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (12, N'front-pocket-jumper', N'Front Pocket Jumper', 12, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (13, N'vintage-inspired-classic', N'Vintage Inspired Classic', 13, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (14, N'shirt-in-stretch-cotton', N'Shirt in Stretch Cotton', 14, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (15, N'pieces-metallic-printed', N'Pieces Metallic Printed', 15, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (16, N'converse-all-star-hi-plimsolls', N'Converse All Star Hi Plimsolls', 16, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (17, N'femme-t-shirt-in-stripe', N'Femme T-Shirt In Stripe', 17, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (18, N'herschel-supply-2', N'Herschel supply', 18, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (19, N'herschel-supply-2-3', N'Herschel supply', 19, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (20, N't-shirt-with-sleeve', N'T-Shirt with Sleeve', 20, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (21, N'pretty-little-thing', N'Pretty Little Thing', 21, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (22, N'square-neck-back', N'Square Neck Back', 22, N'Product')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (23, N'help-center', N'Help center', 1, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (24, N'about-us', N'About Us', 2, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (25, N'terms-of-use', N'Terms of Use', 3, N'Page')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (26, N'adidas', N'Adidas', 1, N'Brand')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (27, N'calvin-klein', N'Calvin Klein', 2, N'Brand')
INSERT [dbo].[Core_Entity] ([Id], [Slug], [Name], [EntityId], [EntityTypeId]) VALUES (28, N'ogival', N'Ogival', 3, N'Brand')
SET IDENTITY_INSERT [dbo].[Core_Entity] OFF
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Brand', 1, N'Catalog', N'Brand', N'BrandDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Category', 1, N'Catalog', N'Category', N'CategoryDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'NewsCategory', 1, N'News', N'NewsCategory', N'NewsCategoryDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'NewsItem', 0, N'News', N'NewsItem', N'NewsItemDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Page', 1, N'Cms', N'Page', N'PageDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Product', 0, N'Catalog', N'Product', N'ProductDetail')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [AreaName], [RoutingController], [RoutingAction]) VALUES (N'Vendor', 0, N'Core', N'Vendor', N'VendorDetail')
SET IDENTITY_INSERT [dbo].[Core_Media] ON 

INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (1, NULL, 0, N'b94d02b8-6d3a-4919-b144-c121387a272d.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (2, NULL, 0, N'911207ad-5b45-423f-9575-2185c85261c0.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (3, NULL, 0, N'37dc2d94-dbac-4112-afbc-2fc88ddca753.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (4, NULL, 0, N'bf16c55d-747e-4238-b444-06c3fe0463b2.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (5, NULL, 0, N'2db2ffbb-46d5-4f3c-8dc0-614e83162a1c.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (6, NULL, 0, N'daa3af7c-452c-4c0f-9c61-aeccf001e825.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (7, NULL, 0, N'c8756541-d192-48e2-b822-2bf616fb876e.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (8, NULL, 0, N'0199b7af-4d14-4858-a902-62ca8c5e9b6d.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (9, NULL, 0, N'1761ffd9-2c53-4a6b-856f-e2f4039d0247.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (10, NULL, 0, N'1b896b5e-f6bf-41ca-89ee-025c6be9e08c.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (11, NULL, 0, N'1aead9b6-73a8-45c1-a463-7655e9a9b478.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (12, NULL, 0, N'c27ee7c7-deb3-4697-a6b6-3358d72b556f.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (13, NULL, 0, N'532fc844-2c11-494e-a68b-af0be2b9a87f.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (14, NULL, 0, N'4d24a1fd-a362-47e4-9060-011d415398b9.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (15, NULL, 0, N'117ed074-628a-4db7-abbb-4a335adb3504.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (16, NULL, 0, N'78f1840e-7a50-49de-9dad-9127ec290dfd.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (17, NULL, 0, N'de4bdb93-ab9d-4515-b19b-bb55aa4703b3.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (18, NULL, 0, N'dd14f5e8-2e76-4f60-9f58-19652dcb80c5.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (19, NULL, 0, N'bf6461d5-0a9b-4a19-9516-5ca3b5b9da9e.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (20, NULL, 0, N'461a2564-b657-46bb-bcb5-f7deaeb2a0a9.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (21, NULL, 0, N'fb26a4f2-0a36-41dd-b0e8-a6c0554d31f8.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (22, NULL, 0, N'74552a46-4309-43e1-ad4e-79cd9e778722.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (23, NULL, 0, N'1a79b958-50bc-48d8-b3e5-826222949d28.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (24, NULL, 0, N'e0a99874-20a8-43b8-9199-b109bb2c3ae5.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (25, NULL, 0, N'1d9d5101-7e0b-4c29-88fe-e54891647672.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (26, NULL, 0, N'5cf020c2-72b5-407d-836a-ef1a316b741c.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (27, NULL, 0, N'df3590c2-a6a0-4813-96db-4a07e6c7f460.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (28, NULL, 0, N'bc68637c-420f-4951-9130-b9fca36484e6.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (29, NULL, 0, N'1201ba32-984a-48eb-b86a-23d4c8f76d5b.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (30, NULL, 0, N'0089c72c-2fbe-48c3-a33f-718ae1eafd8b.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (31, NULL, 0, N'2f856ed8-323e-4c26-99d1-cd4ec07f9979.jpg', 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (32, NULL, 0, N'fd623151-fc8a-464b-8c19-b1350d785bce.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (33, NULL, 0, N'057afd18-8973-4078-9fd2-7eb0b52d8e72.jpg', 1)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileSize], [FileName], [MediaType]) VALUES (34, NULL, 0, N'ee4b30bf-fd13-47a7-b893-0e6e6b1aed05.jpg', 0)
SET IDENTITY_INSERT [dbo].[Core_Media] OFF
SET IDENTITY_INSERT [dbo].[Core_Role] ON 

INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'admin', N'ADMIN', N'4776a1b2-dbe4-4056-82ec-8bed211d1454')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'customer', N'CUSTOMER', N'00d172be-03a0-4856-8b12-26d63fcf4374')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'guest', N'GUEST', N'd4754388-8355-4018-b728-218018836817')
INSERT [dbo].[Core_Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'vendor', N'VENDOR', N'71f10604-8c4d-4a7d-ac4a-ffefb11cefeb')
SET IDENTITY_INSERT [dbo].[Core_Role] OFF
SET IDENTITY_INSERT [dbo].[Core_StateOrProvince] ON 

INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (1, N'VN', NULL, N'Hồ Chí Minh', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (2, N'VN', NULL, N'Hà Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (4, N'VN', NULL, N'Cao Bằng', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (6, N'VN', NULL, N'Bắc Kạn', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (8, N'VN', NULL, N'Tuyên Quang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (10, N'VN', NULL, N'Lào Cai', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (11, N'VN', NULL, N'Điện Biên', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (12, N'VN', NULL, N'Lai Châu', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (14, N'VN', NULL, N'Sơn La', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (15, N'VN', NULL, N'Yên Bái', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (17, N'VN', NULL, N'Hòa Bình', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (19, N'VN', NULL, N'Thái Nguyên', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (20, N'VN', NULL, N'Lạng Sơn', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (22, N'VN', NULL, N'Quảng Ninh', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (24, N'VN', NULL, N'Bắc Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (25, N'VN', NULL, N'Phú Thọ', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (26, N'VN', NULL, N'Vĩnh Phúc', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (27, N'VN', NULL, N'Bắc Ninh', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (30, N'VN', NULL, N'Hải Dương', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (31, N'VN', NULL, N'Hải Phòng', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (33, N'VN', NULL, N'Hưng Yên', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (34, N'VN', NULL, N'Thái Bình', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (35, N'VN', NULL, N'Hà Nam', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (36, N'VN', NULL, N'Nam Định', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (37, N'VN', NULL, N'Ninh Bình', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (38, N'VN', NULL, N'Thanh Hóa', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (40, N'VN', NULL, N'Nghệ An', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (42, N'VN', NULL, N'Hà Tĩnh', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (44, N'VN', NULL, N'Quảng Bình', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (45, N'VN', NULL, N'Quảng Trị', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (46, N'VN', NULL, N'Thừa Thiên Huế', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (48, N'VN', NULL, N'Đà Nẵng', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (49, N'VN', NULL, N'Quảng Nam', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (51, N'VN', NULL, N'Quảng Ngãi', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (52, N'VN', NULL, N'Bình Định', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (54, N'VN', NULL, N'Phú Yên', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (56, N'VN', NULL, N'Khánh Hòa', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (58, N'VN', NULL, N'Ninh Thuận', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (60, N'VN', NULL, N'Bình Thuận', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (62, N'VN', NULL, N'Kon Tum', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (64, N'VN', NULL, N'Gia Lai', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (66, N'VN', NULL, N'Đắk Lắk', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (67, N'VN', NULL, N'Đắk Nông', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (68, N'VN', NULL, N'Lâm Đồng', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (70, N'VN', NULL, N'Bình Phước', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (72, N'VN', NULL, N'Tây Ninh', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (74, N'VN', NULL, N'Bình Dương', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (75, N'VN', NULL, N'Đồng Nai', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (77, N'VN', NULL, N'Bà Rịa - Vũng Tàu', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (79, N'VN', NULL, N'Hà Nội', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (80, N'VN', NULL, N'Long An', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (82, N'VN', NULL, N'Tiền Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (83, N'VN', NULL, N'Bến Tre', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (84, N'VN', NULL, N'Trà Vinh', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (86, N'VN', NULL, N'Vĩnh Long', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (87, N'VN', NULL, N'Đồng Tháp', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (89, N'VN', NULL, N'An Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (91, N'VN', NULL, N'Kiên Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (92, N'VN', NULL, N'Cần Thơ', N'Thành Phố')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (93, N'VN', NULL, N'Hậu Giang', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (94, N'VN', NULL, N'Sóc Trăng', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (95, N'VN', NULL, N'Bạc Liêu', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (96, N'VN', NULL, N'Cà Mau', N'Tỉnh')
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (97, N'US', N'AL', N'Alabama', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (98, N'US', N'AK', N'Alaska', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (99, N'US', N'AS', N'American Samoa', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (100, N'US', N'AZ', N'Arizona', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (101, N'US', N'AR', N'Arkansas', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (102, N'US', N'AE', N'Armed Forces Africa', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (103, N'US', N'AA', N'Armed Forces Americas', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (104, N'US', N'AE', N'Armed Forces Canada', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (105, N'US', N'AE', N'Armed Forces Europe', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (106, N'US', N'AE', N'Armed Forces Middle East', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (107, N'US', N'AP', N'Armed Forces Pacific', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (108, N'US', N'CA', N'California', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (109, N'US', N'CO', N'Colorado', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (110, N'US', N'CT', N'Connecticut', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (111, N'US', N'DE', N'Delaware', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (112, N'US', N'DC', N'District of Columbia', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (113, N'US', N'FM', N'Federated States Of Micronesia', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (114, N'US', N'FL', N'Florida', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (115, N'US', N'GA', N'Georgia', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (116, N'US', N'GU', N'Guam', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (117, N'US', N'HI', N'Hawaii', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (118, N'US', N'ID', N'Idaho', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (119, N'US', N'IL', N'Illinois', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (120, N'US', N'IN', N'Indiana', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (121, N'US', N'IA', N'Iowa', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (122, N'US', N'KS', N'Kansas', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (123, N'US', N'KY', N'Kentucky', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (124, N'US', N'LA', N'Louisiana', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (125, N'US', N'ME', N'Maine', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (126, N'US', N'MH', N'Marshall Islands', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (127, N'US', N'MD', N'Maryland', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (128, N'US', N'MA', N'Massachusetts', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (129, N'US', N'MI', N'Michigan', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (130, N'US', N'MN', N'Minnesota', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (131, N'US', N'MS', N'Mississippi', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (132, N'US', N'MO', N'Missouri', NULL)
GO
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (133, N'US', N'MT', N'Montana', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (134, N'US', N'NE', N'Nebraska', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (135, N'US', N'NV', N'Nevada', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (136, N'US', N'NH', N'New Hampshire', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (137, N'US', N'NJ', N'New Jersey', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (138, N'US', N'NM', N'New Mexico', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (139, N'US', N'NY', N'New York', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (140, N'US', N'NC', N'North Carolina', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (141, N'US', N'ND', N'North Dakota', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (142, N'US', N'MP', N'Northern Mariana Islands', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (143, N'US', N'OH', N'Ohio', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (144, N'US', N'OK', N'Oklahoma', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (145, N'US', N'OR', N'Oregon', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (146, N'US', N'PW', N'Palau', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (147, N'US', N'PA', N'Pennsylvania', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (148, N'US', N'PR', N'Puerto Rico', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (149, N'US', N'RI', N'Rhode Island', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (150, N'US', N'SC', N'South Carolina', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (151, N'US', N'SD', N'South Dakota', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (152, N'US', N'TN', N'Tennessee', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (153, N'US', N'TX', N'Texas', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (154, N'US', N'UT', N'Utah', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (155, N'US', N'VT', N'Vermont', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (156, N'US', N'VI', N'Virgin Islands', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (157, N'US', N'VA', N'Virginia', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (158, N'US', N'WV', N'West Virginia', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (159, N'US', N'WI', N'Wisconsin', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (160, N'US', N'WY', N'Wyoming', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (162, N'GB', NULL, N'England', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (163, N'GB', NULL, N'Scotland', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (164, N'GB', NULL, N'Wales', NULL)
INSERT [dbo].[Core_StateOrProvince] ([Id], [CountryId], [Code], [Name], [Type]) VALUES (165, N'GB', NULL, N'Northern Ireland', NULL)
SET IDENTITY_INSERT [dbo].[Core_StateOrProvince] OFF
SET IDENTITY_INSERT [dbo].[Core_User] ON 

INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (2, N'system@simplcommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', N'system@simplcommerce.com', N'SYSTEM@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'a9565acb-cee6-425f-9833-419a793f5fba', N'101cd6ae-a8ef-4a37-97fd-04ac2dd630e4', NULL, 0, 0, NULL, 0, 0, N'5f72f83b-7436-4221-869c-1b69b2e23aae', N'System User', NULL, 1, CAST(N'2018-05-29T04:33:39.1890000+07:00' AS DateTimeOffset), CAST(N'2018-05-29T04:33:39.1890000+07:00' AS DateTimeOffset), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (10, N'admin@simplcommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', N'admin@simplcommerce.com', N'ADMIN@SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', N'd6847450-47f0-4c7a-9fed-0c66234bf61f', N'c83afcbc-312c-4589-bad7-8686bd4754c0', NULL, 0, 0, NULL, 0, 0, N'ed8210c3-24b0-4823-a744-80078cf12eb4', N'Shop Admin', NULL, 0, CAST(N'2018-05-29T04:33:39.1900000+07:00' AS DateTimeOffset), CAST(N'2018-05-29T04:33:39.1900000+07:00' AS DateTimeOffset), NULL, NULL, NULL, N'en-US', NULL)
INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (11, N'ec43d625-8daf-4ddc-9f1b-eada504e4401@guest.simplcommerce.com', N'EC43D625-8DAF-4DDC-9F1B-EADA504E4401@GUEST.SIMPLCOMMERCE.COM', N'ec43d625-8daf-4ddc-9f1b-eada504e4401@guest.simplcommerce.com', N'EC43D625-8DAF-4DDC-9F1B-EADA504E4401@GUEST.SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEFUsBtLR2f4c1cATB43ZGmjLFnMxAqCo+DE7+pDGDjva54bPQf8xhKu16qvBqwfIWA==', N'ZHGDPUSETJUQONUBMJJBSNWPKNPEPQAV', N'faf7c581-b157-4b9d-96f4-a391dd4ca832', NULL, 0, 0, NULL, 1, 0, N'ec43d625-8daf-4ddc-9f1b-eada504e4401', N'Guest', NULL, 0, CAST(N'2020-04-29T09:54:11.0714618+05:30' AS DateTimeOffset), CAST(N'2020-04-29T09:54:11.0714806+05:30' AS DateTimeOffset), NULL, NULL, NULL, N'en-GB', NULL)
INSERT [dbo].[Core_User] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserGuid], [FullName], [VendorId], [IsDeleted], [CreatedOn], [LatestUpdatedOn], [DefaultShippingAddressId], [DefaultBillingAddressId], [RefreshTokenHash], [Culture], [ExtensionData]) VALUES (12, N'6a0e5c19-7cef-4e6c-8509-67a2cfcea8ef@guest.simplcommerce.com', N'6A0E5C19-7CEF-4E6C-8509-67A2CFCEA8EF@GUEST.SIMPLCOMMERCE.COM', N'6a0e5c19-7cef-4e6c-8509-67a2cfcea8ef@guest.simplcommerce.com', N'6A0E5C19-7CEF-4E6C-8509-67A2CFCEA8EF@GUEST.SIMPLCOMMERCE.COM', 0, N'AQAAAAEAACcQAAAAEPPw70CGh1zRUiwtbwMErwOr7RZX4P1GtuRBZaE2Ise/Suu6J6+nxhH5RZSAZbf46A==', N'D76QN7NUV2FC4LBENJVQAXEHZR7N364N', N'802707f8-cc71-4eeb-8b0a-990a05a4e154', NULL, 0, 0, NULL, 1, 0, N'6a0e5c19-7cef-4e6c-8509-67a2cfcea8ef', N'Guest', NULL, 0, CAST(N'2020-04-30T00:38:17.1074989+08:00' AS DateTimeOffset), CAST(N'2020-04-30T00:38:17.1075096+08:00' AS DateTimeOffset), NULL, NULL, NULL, N'en-US', NULL)
SET IDENTITY_INSERT [dbo].[Core_User] OFF
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (11, 3)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (12, 3)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'CarouselWidget', N'Carousel Widget', N'CarouselWidget', N'widget-carousel-create', N'widget-carousel-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'CategoryWidget', N'Category Widget', N'CategoryWidget', N'widget-category-create', N'widget-category-edit', CAST(N'2018-05-29T04:33:39.1600000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'HtmlWidget', N'Html Widget', N'HtmlWidget', N'widget-html-create', N'widget-html-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'ProductWidget', N'Product Widget', N'ProductWidget', N'widget-product-create', N'widget-product-edit', CAST(N'2018-05-29T04:33:39.1630000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'RecentlyViewedWidget', N'Recently Viewed Widget', N'RecentlyViewedWidget', N'widget-recently-viewed-create', N'widget-recently-viewed-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'SimpleProductWidget', N'Simple Product Widget', N'SimpleProductWidget', N'widget-simple-product-create', N'widget-simple-product-edit', CAST(N'2018-05-29T04:33:39.1630000+07:00' AS DateTimeOffset), 0)
INSERT [dbo].[Core_Widget] ([Id], [Name], [ViewComponentName], [CreateUrl], [EditUrl], [CreatedOn], [IsPublished]) VALUES (N'SpaceBarWidget', N'SpaceBar Widget', N'SpaceBarWidget', N'widget-spacebar-create', N'widget-spacebar-edit', CAST(N'2018-05-29T04:33:39.1640000+07:00' AS DateTimeOffset), 0)
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] ON 

INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (1, N'Home Featured', CAST(N'2018-08-11T06:57:30.6053643+07:00' AS DateTimeOffset), CAST(N'2018-08-11T06:57:30.6054847+07:00' AS DateTimeOffset), CAST(N'2018-08-10T23:53:17.2780000+00:00' AS DateTimeOffset), NULL, N'CarouselWidget', 1, 0, N'[{"Image":"88604574-f0a3-4982-9b0d-f8a7558dd3ba.jpg","ImageUrl":null,"Caption":"NEW SEASON","SubCaption":"Women Collection 2018","LinkText":"Shop Now","TargetUrl":"/woman"},{"Image":"a5904343-189d-469b-a93b-d553c109b781.jpg","ImageUrl":null,"Caption":"Jackets & Coats","SubCaption":"Men New-Season","LinkText":"Shop Now","TargetUrl":"/man"},{"Image":"83c21bb9-2f0d-446a-bb0c-3b19e6d922aa.jpg","ImageUrl":null,"Caption":"New arrivals","SubCaption":"Men Collection 2018","LinkText":"Shop Now","TargetUrl":"/man"}]', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (2, N'New products', CAST(N'2018-08-11T15:05:18.2330286+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:05:18.2331945+07:00' AS DateTimeOffset), CAST(N'2018-08-11T08:04:35.8680000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":null,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (6, N'Man collection', CAST(N'2018-09-06T07:50:22.6521628+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:22.6521650+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:11.8940000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":2,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
INSERT [dbo].[Core_WidgetInstance] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (7, N'Woman collection', CAST(N'2018-09-06T07:50:37.6019466+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:37.6019479+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:26.2900000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{"NumberOfProducts":4,"CategoryId":1,"OrderBy":"Newest","FeaturedOnly":false}', NULL)
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] OFF
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance_bkup] ON 

INSERT [dbo].[Core_WidgetInstance_bkup] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (1, N'Home Featured', CAST(N'2018-08-11T06:57:30.6053643+07:00' AS DateTimeOffset), CAST(N'2018-08-11T06:57:30.6054847+07:00' AS DateTimeOffset), CAST(N'2018-08-10T23:53:17.2780000+00:00' AS DateTimeOffset), NULL, N'CarouselWidget', 1, 0, N'[{''Image'':''88604574-f0a3-4982-9b0d-f8a7558dd3ba.jpg'',''ImageUrl'':null,''Caption'':''NEW SEASON'',''SubCaption'':''Women Collection 2018'',''LinkText'':''Shop Now'',''TargetUrl'':''woman''},{''Image'':''a5904343-189d-469b-a93b-d553c109b781.jpg'',''ImageUrl'':null,''Caption'':''Jackets & Coats'',''SubCaption'':''Men New-Season'',''LinkText'':''Shop Now'',''TargetUrl'':''man''},{''Image'':''83c21bb9-2f0d-446a-bb0c-3b19e6d922aa.jpg'',''ImageUrl'':null,''Caption'':''New arrivals'',''SubCaption'':''Men Collection 2018'',''LinkText'':''Shop Now'',''TargetUrl'':''man''}]', NULL)
INSERT [dbo].[Core_WidgetInstance_bkup] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (2, N'New products', CAST(N'2018-08-11T15:05:18.2330286+07:00' AS DateTimeOffset), CAST(N'2018-08-11T15:05:18.2331945+07:00' AS DateTimeOffset), CAST(N'2018-08-11T08:04:35.8680000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{{"NumberOfProducts":4,"CategoryId":null,"OrderBy":"Newest","FeaturedOnly":false}}', NULL)
INSERT [dbo].[Core_WidgetInstance_bkup] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (6, N'Man collection', CAST(N'2018-09-06T07:50:22.6521628+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:22.6521650+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:11.8940000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{{"NumberOfProducts":4,"CategoryId":2,"OrderBy":"Newest","FeaturedOnly":false}}', NULL)
INSERT [dbo].[Core_WidgetInstance_bkup] ([Id], [Name], [CreatedOn], [LatestUpdatedOn], [PublishStart], [PublishEnd], [WidgetId], [WidgetZoneId], [DisplayOrder], [Data], [HtmlData]) VALUES (7, N'Woman collection', CAST(N'2018-09-06T07:50:37.6019466+07:00' AS DateTimeOffset), CAST(N'2018-09-06T07:50:37.6019479+07:00' AS DateTimeOffset), CAST(N'2018-09-06T00:50:26.2900000+00:00' AS DateTimeOffset), NULL, N'ProductWidget', 2, 0, N'{{"NumberOfProducts":4,"CategoryId":1,"OrderBy":"Newest","FeaturedOnly":false}}', NULL)
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance_bkup] OFF
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] ON 

INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (1, N'Home Featured', NULL)
INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (2, N'Home Main Content', NULL)
INSERT [dbo].[Core_WidgetZone] ([Id], [Name], [Description]) VALUES (3, N'Home After Main Content', NULL)
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] OFF
SET IDENTITY_INSERT [dbo].[Inventory_Stock] ON 

INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (1, 2, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (2, 3, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (3, 4, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (4, 5, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (5, 6, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (6, 7, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (7, 8, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (8, 24, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (9, 23, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (10, 22, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (11, 21, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (12, 20, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (13, 19, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (14, 18, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (15, 25, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (16, 17, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (17, 15, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (18, 14, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (19, 13, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (20, 12, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (21, 11, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (22, 10, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (23, 9, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (24, 16, 1, 100, 0)
INSERT [dbo].[Inventory_Stock] ([Id], [ProductId], [WarehouseId], [Quantity], [ReservedQuantity]) VALUES (25, 26, 1, 100, 0)
SET IDENTITY_INSERT [dbo].[Inventory_Stock] OFF
SET IDENTITY_INSERT [dbo].[Inventory_StockHistory] ON 

INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (1, 7, 1, CAST(N'2018-08-11T15:03:25.9597942+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (2, 6, 1, CAST(N'2018-08-11T15:03:25.9866400+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (3, 5, 1, CAST(N'2018-08-11T15:03:25.9920796+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (4, 4, 1, CAST(N'2018-08-11T15:03:25.9973684+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (5, 3, 1, CAST(N'2018-08-11T15:03:26.0034946+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (6, 2, 1, CAST(N'2018-08-11T15:03:26.0091053+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (7, 26, 1, CAST(N'2018-08-11T21:20:52.1609725+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (8, 16, 1, CAST(N'2018-08-11T21:20:52.1902238+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (9, 9, 1, CAST(N'2018-08-11T21:20:52.1954335+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (10, 10, 1, CAST(N'2018-08-11T21:20:52.2005929+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (11, 11, 1, CAST(N'2018-08-11T21:20:52.2059812+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (12, 12, 1, CAST(N'2018-08-11T21:20:52.2111554+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (13, 13, 1, CAST(N'2018-08-11T21:20:52.2164212+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (14, 14, 1, CAST(N'2018-08-11T21:20:52.2219702+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (15, 15, 1, CAST(N'2018-08-11T21:20:52.2276720+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (16, 17, 1, CAST(N'2018-08-11T21:20:52.2340966+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (17, 25, 1, CAST(N'2018-08-11T21:20:52.2416871+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (18, 18, 1, CAST(N'2018-08-11T21:20:52.2503225+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (19, 19, 1, CAST(N'2018-08-11T21:20:52.2567163+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (20, 20, 1, CAST(N'2018-08-11T21:20:52.2655516+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (21, 21, 1, CAST(N'2018-08-11T21:20:52.2718544+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (22, 22, 1, CAST(N'2018-08-11T21:20:52.2782942+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (23, 23, 1, CAST(N'2018-08-11T21:20:52.2871106+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (24, 24, 1, CAST(N'2018-08-11T21:20:52.2956470+07:00' AS DateTimeOffset), 10, 100, NULL)
INSERT [dbo].[Inventory_StockHistory] ([Id], [ProductId], [WarehouseId], [CreatedOn], [CreatedById], [AdjustedQuantity], [Note]) VALUES (25, 8, 1, CAST(N'2018-08-11T21:20:52.3045421+07:00' AS DateTimeOffset), 10, 100, NULL)
SET IDENTITY_INSERT [dbo].[Inventory_StockHistory] OFF
SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] ON 

INSERT [dbo].[Inventory_Warehouse] ([Id], [Name], [AddressId], [VendorId]) VALUES (1, N'Default warehouse', 1, NULL)
SET IDENTITY_INSERT [dbo].[Inventory_Warehouse] OFF
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'ar-TN', N'Arabic')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'en-GB', N'English-GB')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'en-US', N'English (US)')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'fa-IR', N'فارسی')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'ko-KR', N'Korean')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'ru-RU', N'Russian')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'tr-TR', N'Turkish')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'uk-UA', N'Ukrainian')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (N'vi-VN', N'Tiếng Việt')
SET IDENTITY_INSERT [dbo].[Localization_Resource] ON 

INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1, N'Register', N'Đăng ký', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (2, N'Hello {0}!', N'Chào {0}!', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (3, N'Log in', N'Đăng nhập', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (4, N'Log off', N'Đăng xuất', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (5, N'The Email field is required.', N'Địa chỉ email cần phải có ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (6, N'Email', N'Địa chỉ email', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (7, N'User List', N'Danh sách người dùng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (8, N'Remember me?', N'Ghi nhớ?', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (9, N'Password', N'Mật khẩu', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (10, N'Use a local account to log in.', N'Sử dụng tài khoản của bạn để đăng nhập', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (11, N'Register as a new user?', N'Đăng ký người dùng mới', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (12, N'Forgot your password?', N'Quên mật khẩu', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (13, N'Use another service to log in.', N'Đăng nhập bằng các tài khoản khác', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (14, N'Full name', N'Họ và tên', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (15, N'Confirm password', N'Xác nhận mật khẩu', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (16, N'Create a new account.', N'Tạo tài khoản mới.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (17, N'All', N'Tất cả', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (18, N'Home', N'Trang chủ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (19, N'Add to cart', N'Thêm vào giỏ hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (20, N'Product detail', N'Mô tả sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (21, N'Product specification', N'Thông số kỹ thuật', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (22, N'Rate this product', N'Đánh giá sản phẩm này', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (23, N'Review comment', N'Mô tả đánh giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (24, N'Review title', N'Tiêu đề đánh giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (25, N'Posted by', N'Đánh giá bởi', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (26, N'Submit review', N'Gửi đánh giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (27, N'You have', N'Bạn có', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (28, N'products in your cart', N'sản phẩm trong giỏ hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (29, N'Continue shopping', N'Tiếp tục mua sắm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (30, N'View cart', N'Xem giỏ hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (31, N'The product has been added to your cart', N'Sản phẩm đã được thêm vào giỏ hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (32, N'Cart subtotal', N'Thành tiền', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (33, N'Shopping Cart', N'Giỏ hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (34, N'Product', N'Sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (35, N'Price', N'Giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (36, N'Quantity', N'Số lượng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (37, N'There are no items in this cart.', N'Chưa có sản phẩm nào trong giỏ hàng của bạn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (38, N'Go to shopping', N'Đi mua sắm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (39, N'Order summary', N'Tóm lược đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (40, N'Subtotal', N'Thành tiền', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (41, N'Process to Checkout', N'Tiến hành thanh toán', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (42, N'Shipping address', N'Địa chỉ giao hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (43, N'Add another address', N'Thêm địa chỉ mới', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (44, N'Contact name', N'Tên người liên hệ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (45, N'Address', N'Địa chỉ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (46, N'State or Province', N'Thành phố / Tỉnh', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (47, N'District', N'Quận / Huyện', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (48, N'Phone', N'Số điện thoại', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (49, N'Order', N'Đặt hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (50, N'products', N'sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (51, N'reviews', N'nhận xét', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (52, N'Add Review', N'Viết nhận xét', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (53, N'Customer reviews', N'Nhận xét của khách hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (54, N'Your review will be shown within the next 24h.', N'Nhận xét của bạn sẽ được hiển thị trong vòng 24 tiếng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (55, N'Thank you {0} for your review', N'Cảm ơn {0} đã gửi nhận xét', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (56, N'Rating average', N'Đánh giá trung bình', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (57, N'stars', N'sao', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (58, N'Filter by', N'Tìm theo', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (59, N'Category', N'Danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (60, N'Brand', N'Nhãn hiệu', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (61, N'Sort by:', N'Sắp xếp theo:', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (62, N'results', N'kết quả', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (63, N'View options', N'Xem các tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (64, N'Associate your {0} account.', N'Liên kết với tài khoản {0} của bạn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (65, N'Users', N'Người dùng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (66, N'Vendors', N'Người bán', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (67, N'Reviews', N'Đánh giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (68, N'Products', N'Sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (69, N'Categories', N'Danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (70, N'Brands', N'Nhãn hiệu', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (71, N'Product Options', N'Tùy chọn sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (72, N'Product Attribute', N'Thuộc tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (73, N'Product Attribute Groups', N'Nhóm thuộc tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (74, N'Product Templates', N'Mẫu sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (75, N'Sales', N'Bán hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (76, N'Orders', N'Đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (77, N'Content Management', N'Quán lý nội dung', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (78, N'Pages', N'Trang', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (79, N'Widgets', N'Widgets', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (80, N'System', N'Hệ thống', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (81, N'Configuration', N'Cấu hình', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (82, N'Translations', N'Translations', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (83, N'Dashboard', N'Dashboard', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (84, N'Incomplete orders', N'Đơn hàng chưa xong', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (85, N'Pending reviews', N'Đánh giá đang chờ duyệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (86, N'Most searched keywords', N'Từ khóa được tìm kiếm nhiều nhất', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (87, N'Most viewed products', N'Sản phẩm được xem nhiều nhất', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (88, N'OrderId', N'Số đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (89, N'Order Status', N'Trạng thái đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (90, N'Customer', N'Khách hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (91, N'Created On', N'Ngày tạo', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (92, N'SubTotal', N'Tổng tiền', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (93, N'Actions', N'Hành động', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (94, N'Site', N'Site', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (95, N'Catalog', N'Quản lý sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (96, N'Title', N'Tiêu đề', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (97, N'Comment', N'Bình luận', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (98, N'Status', N'Trạng thái', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (99, N'Rating', N'Xếp hạng', N'vi-VN')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (100, N'Keyword', N'Từ khóa', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (101, N'Count', N'Số lần', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (102, N'Create User', N'Tạo người dùng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (103, N'FullName', N'Họ và tên', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (104, N'Roles', N'Roles', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (105, N'Edit User', N'Chỉnh sửa user', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (106, N'Manager of Vendor', N'Manager of Vendor', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (107, N'Save', N'Lưu lại', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (108, N'Cancel', N'Hủy', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (109, N'Phone Number', N'Số điện thoại', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (110, N'Create Vendor', N'Tạo người bán', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (111, N'Is Active', N'Đang hoạt động', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (112, N'Edit Vendor', N'Chỉnh sửa người bán', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (113, N'Managers', N'Quản lý', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (114, N'Description', N'Mô tả', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (115, N'Pending', N'Đang chờ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (116, N'Approved', N'Đã duyệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (117, N'Not Approved', N'Không duyệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (118, N'Approve', N'Duyệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (119, N'Create Product', N'Tạo sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (120, N'Has Options', N'Tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (121, N'Is Visible Individually', N'Hiển thị riêng lẻ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (122, N'Is Featured', N'Nổi bậc', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (123, N'Is Allowed To Order', N'Cho phép đặt hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (124, N'Is Called For Pricing', N'Gọi để biết giá', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (125, N'Stock Quantity', N'Số lượng trong kho', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (126, N'Is Published', N'Công bố', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (127, N'Yes', N'Có', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (128, N'No', N'Không', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (129, N'Edit Product', N'Chỉnh sửa sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (130, N'Product Name', N'Tên sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (131, N'Short Description', N'Mô tả ngắn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (132, N'Specification', N'Thông số kỹ thuật', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (133, N'Old Price', N'Giá cũ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (134, N'Special Price', N'Giá đặc biệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (135, N'Special Price Start', N'Bắt đầu giá đặc biệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (136, N'Special Price End', N'Kết thúc giá đặc biệt', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (137, N'Thumbnail', N'Hình đại diện', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (138, N'Product Images', N'Hình sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (139, N'Product Documents', N'Tài liệu kỹ thuật', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (140, N'Out Of Stock', N'Hết hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (141, N'Available Options', N'Tùy chọn khả dụng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (142, N'Add Option', N'Thêm tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (143, N'Option Values', N'Giá trị của tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (144, N'Delete Option', N'Xóa tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (145, N'Generate Combinations', N'Tự động tạo tùy chọn sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (146, N'Product Variations', N'Những tùy chọn sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (147, N'Option Combinations', N'Sự kết hợp của những tùy chọn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (148, N'Images', N'Hình ảnh', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (149, N'Apply', N'Áp dụng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (150, N'Available Attributes', N'Đặt tính khả dụng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (151, N'Add Attribute', N'Thêm đặc tính', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (152, N'Product Attributes', N'Đặc tính của sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (153, N'Attribute Name', N'Tên đặc tính', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (154, N'Value', N'Giá trị', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (155, N'General Information', N'Thông tin chung', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (156, N'Category Mapping', N'Danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (157, N'Related Products', N'Sản phẩm tương tự', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (158, N'Manage Related Products', N'Quản lý sản phẩm tương tự', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (159, N'Create Category', N'Tạo danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (160, N'Edit Category', N'Chỉnh sửa danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (161, N'Create Brand', N'Tạo nhãn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (162, N'Edit Brand', N'Chỉnh sửa nhãn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (163, N'Name', N'Tên', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (164, N'Parent Category', N'Danh mục cha', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (165, N'Group', N'Nhóm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (166, N'Create Product Attribute', N'Tạo đặt tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (167, N'Edit Product Attribute', N'Chỉnh sửa đặt tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (168, N'Create Product Attribute Group', N'Tạo nhóm đặt tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (169, N'Edit Product Attribute Group', N'Chỉnh sửa nhóm đặt tính sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (170, N'Create Product Option', N'Tạo tùy chọn sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (171, N'Edit Product Option', N'Chỉnh sửa tùy chọn sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (172, N'Create Product Display Widget', N'Create Product Display Widget', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (173, N'Edit Product Display Widget', N'Edit Product Display Widget', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (174, N'Widget Name', N'Widget Name', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (175, N'Widget Zone', N'Widget Zone', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (176, N'Publish Start', N'Thời gian bắt đầu công bố', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (177, N'Publish End', N'Thời gian kết thúc', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (178, N'Number of Products', N'Số lượng sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (179, N'Order By', N'Sắp xếp theo', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (180, N'Create Product Template', N'Tạo mẫu sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (181, N'Edit Product Template', N'Chỉnh sửa mẫu sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (182, N'Added Attributes', N'Những đặt tính đã thêm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (183, N'Back', N'Quay về', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (184, N'Order Detail', N'Chi tiết đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (185, N'Order Information', N'Thông tin đơn hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (186, N'Change', N'Thay đổi', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (187, N'Product Information', N'Thông tin sản phẩm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (188, N'Shipping Information', N'Thông tin giao hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (189, N'Application Settings', N'Application Settings', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (190, N'Create Page', N'Tạo trang', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (191, N'Edit Page', N'Chỉnh sửa trang', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (192, N'Body', N'Nội dung chính', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (193, N'Account Dashboard', N'Quản lý tài khoản', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (194, N'Account Information', N'Thông tin tài khoản', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (195, N'Edit', N'Chỉnh sửa', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (196, N'Security', N'Bảo mật', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (197, N'Create', N'Tạo mới', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (198, N'External Logins', N'Đăng nhập từ mạng xã hội', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (199, N'Manage', N'Quản lý', N'vi-VN')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (200, N'Default shipping address', N'Địa chỉ nhận hàng mặc định', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (201, N'Manage address', N'Quản lý địa chỉ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (202, N'You don''t have any default address', N'Bạn chưa có địa chỉ mặc định nào', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (203, N'Order History', N'Lịch sử mua hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (204, N'Address Book', N'Sổ địa chỉ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (205, N'Add Address', N'Thêm địa chỉ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (206, N'Delete', N'Xóa', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (207, N'Set as default shipping address', N'Chọn làm địa chỉ mặc định khi nhận hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (208, N'Edit Address', N'Chỉnh sửa địa chỉ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (209, N'Create Address', N'Tạo địa chỉ mới', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (210, N'Your account', N'Tài khoản của bạn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (211, N'Date', N'Ngày', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (212, N'Customer Groups', N'Nhóm khách hàng', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (213, N'Add to Compare', N'Thêm vào để so sánh', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (214, N'Not available', N'Không có sẵn', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (215, N'You save', N'Bạn tiết kiệm', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (216, N'Submit', N'Gửi đi', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (217, N'All Categories', N'Tất cả danh mục', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (218, N'Search here...', N'Tìm kiếm ở đây...', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (219, N'The {0} field is required.', N'Trường {0} là bắt buộc.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (220, N'The value {0} is not valid for {1}.', N'Giá trị {0} thì không hợp lệ cho {1}.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (221, N'The value {0} is invalid.', N'Giá trị {0} thì không hợp lệ.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (222, N'The supplied value is invalid for {0}.', N'Giá trị đã cung cấp không hợp lệ cho {0}.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (223, N'Null value is invalid.', N'Giá trị trống thì không hợp lệ', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (224, N'A value is required.', N'Một giá trị là bắt buộc', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (225, N'A value for the {0} property was not provided.', N'Giá trị cho {0} đã không được cung cấp.', N'vi-VN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (226, N'Register', N'Зареєструватися', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (227, N'Hello {0}!', N'Вітаємо, {0}!', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (228, N'Log in', N'Увійти', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (229, N'Log off', N'Вийти', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (230, N'The Email field is required.', N'Поле «Електронна пошта» є обов’язковим.', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (231, N'Email', N'Електронна пошта', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (232, N'User List', N'Список користувачів', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (233, N'Remember me?', N'Запам’ятати мене?', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (234, N'Password', N'Пароль', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (235, N'Use a local account to log in.', N'Використати локальний акаунт для входу.', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (236, N'Register as a new user?', N'Зареєструватися як новий користувач?', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (237, N'Forgot your password?', N'Забули свій пароль?', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (238, N'Use another service to log in.', N'Використати інший сервіс для входу.', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (239, N'Full name', N'Повне ім’я', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (240, N'Confirm password', N'Підтвердження паролю', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (241, N'Create a new account.', N'Створити новий акаунт.', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (242, N'All', N'Всі', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (243, N'Home', N'Головна', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (244, N'Add to cart', N'Додати до кошику', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (245, N'Product detail', N'Деталі товару', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (246, N'Product specification', N'Специфікація товару', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (247, N'Rate this product', N'Оцінити цей продукт', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (248, N'Review comment', N'Текст відгуку', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (249, N'Review title', N'Заголовок відгуку', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (250, N'Posted by', N'Автор', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (251, N'Submit review', N'Надіслати відгук', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (252, N'You have', N'Ви маєте', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (253, N'products in your cart', N'товарів у кошику', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (254, N'Continue shopping', N'Tiếp tục mua sắm', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (255, N'View cart', N'Переглянути кошик', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (256, N'The product has been added to your cart', N'Товар було додано до кошику', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (257, N'Cart subtotal', N'Проміжний підсумок', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (258, N'Shopping Cart', N'Кошик', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (259, N'Product', N'Товар', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (260, N'Price', N'Ціна', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (261, N'Quantity', N'Кількість', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (262, N'There are no items in this cart.', N'Товарів у кошику немає', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (263, N'Go to shopping', N'Продовжити покупки', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (264, N'Order summary', N'Підсумок замовлення', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (265, N'Subtotal', N'Підсумок', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (266, N'Process to Checkout', N'Оформити замовлення', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (267, N'Shipping address', N'Адреса доставки', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (268, N'Add another address', N'Додати іншу адресу', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (269, N'Contact name', N'Контактне ім’я ', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (270, N'Address', N'Адреса', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (271, N'State or Province', N'Область або край', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (272, N'District', N'Район', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (273, N'Phone', N'Телефон', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (274, N'Order', N'Замовлення', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (275, N'products', N'товари', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (276, N'reviews', N'відгуки', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (277, N'Add Review', N'Додати відгук', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (278, N'Customer reviews', N'Відгуки покупців', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (279, N'Your review will be shown within the next 24h.', N'Ваш відгук буде опубліковано впродовж наступних 24 годин.', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (280, N'Thank you {0} for your review', N'Дякуємо {0} за ваш відгук', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (281, N'Rating average', N'Середня оцінка', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (282, N'stars', N'зірочок', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (283, N'Filter by', N'Фільтрувати за', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (284, N'Category', N'Категорія', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (285, N'Brand', N'Бренд', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (286, N'Sort by:', N'Сортувати за:', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (287, N'results', N'результати', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (288, N'Add to Compare', N'Додати до Порівняльний', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (289, N'Not available', N'Недоступний', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (290, N'You save', N'Ви економите', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (291, N'Submit', N'Відправити', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (292, N'All Categories', N'всі категорії', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (293, N'Search here...', N'Шукати тут ...', N'uk-UA')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (294, N'Register', N'Kayıt olmak', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (295, N'Hello {0}!', N'Merhaba {0}!', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (296, N'Log in', N'Oturum aç', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (297, N'Log off', N'Oturumu Kapat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (298, N'The Email field is required.', N'E-posta alanı zorunludur.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (299, N'Email', N'E-posta', N'tr-TR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (300, N'User List', N'kullanıcı listesi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (301, N'Remember me?', N'Beni hatırla?', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (302, N'Password', N'Parola', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (303, N'Use a local account to log in.', N'Giriş yapmak için yerel bir hesap kullanın.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (304, N'Register as a new user?', N'Yeni bir kullanıcı olarak kaydolun mu?', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (305, N'Forgot your password?', N'Parolanızı mı unuttunuz?', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (306, N'Use another service to log in.', N'Giriş yapmak için başka bir servis kullanın.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (307, N'Full name', N'Ad Soyad', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (308, N'Confirm password', N'Şifreyi Onayla', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (309, N'Create a new account.', N'Yeni bir hesap oluştur.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (310, N'All', N'Herşey', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (311, N'Home', N'Ev', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (312, N'Add to cart', N'Sepete ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (313, N'Product detail', N'Ürün ayrıntısı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (314, N'Product specification', N'Ürün özellikleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (315, N'Rate this product', N'Bu ürünü puan ver', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (316, N'Review comment', N'Yorumu gözden geçir', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (317, N'Review title', N'İnceleme başlığı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (318, N'Posted by', N'tarafından gönderild', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (319, N'Submit review', N'İncelemeyi gönder', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (320, N'You have', N'Var', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (321, N'products in your cart', N'Sepetinizdeki Ürünler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (322, N'Continue shopping', N'Alışverişe devam', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (323, N'View cart', N'Alışveriş sepetini görüntüle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (324, N'The product has been added to your cart', N'Ürün sepetinize eklenmiştir', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (325, N'Cart subtotal', N'Sepet Ara Toplamı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (326, N'Shopping Cart', N'Alışveriş kartı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (327, N'Product', N'Ürün', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (328, N'Price', N'Fiyat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (329, N'Quantity', N'Miktar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (330, N'There are no items in this cart.', N'Bu arabada hiç öğe yok.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (331, N'Go to shopping', N'Alışverişe gitmek', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (332, N'Order summary', N'Sipariş özeti', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (333, N'Subtotal', N'Ara toplam', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (334, N'Process to Checkout', N'Satın Alma İşlemi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (335, N'Shipping address', N'Teslimat adresi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (336, N'Add another address', N'Başka Bir Adres Ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (337, N'Contact name', N'İrtibat adı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (338, N'Address', N'Adres', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (339, N'State or Province', N'Eyalet veya İl', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (340, N'District', N'İlçe', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (341, N'Phone', N'Telefon', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (342, N'Order', N'Sipariş', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (343, N'products', N'Ürünler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (344, N'reviews', N'Incelemeler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (345, N'Add Review', N'Yorum Ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (346, N'Customer reviews', N'Musteri degerlendirmeleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (347, N'Your review will be shown within the next 24h.', N'İncelemeniz önümüzdeki 24 saat içinde gösterilecektir.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (348, N'Thank you {0} for your review', N'İncelemeniz için {0} ''te teşekkür ederim', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (349, N'Rating average', N'Değerlendirme ortalaması', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (350, N'stars', N'yıldızlar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (351, N'Filter by', N'Tarafından filtre', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (352, N'Category', N'Kategori', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (353, N'Brand', N'Marka', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (354, N'Sort by:', N'Göre sırala:', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (355, N'results', N'Sonuçlar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (356, N'View options', N'Seçenekleri göster', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (357, N'Associate your {0} account.', N'{0} hesabınızı ilişkilendirin.', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (358, N'Users', N'Kullanıcılar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (359, N'Vendors', N'Satıcılar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (360, N'Reviews', N'Yorumlar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (361, N'Products', N'Ürünler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (362, N'Categories', N'Kategoriler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (363, N'Brands', N'Markalar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (364, N'Product Options', N'Ürün Seçenekleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (365, N'Product Attribute', N'Ürün Öznitelikleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (366, N'Product Attribute Groups', N'Ürün Özellik Grupları', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (367, N'Product Templates', N'Ürün Şablonları', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (368, N'Sales', N'Satış', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (369, N'Orders', N'Emirler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (370, N'Content Management', N'İçerik yönetimi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (371, N'Pages', N'Sayfalar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (372, N'Widgets', N'Widget''lar', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (373, N'System', N'Sistem', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (374, N'Configuration', N'Yapılandırma', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (375, N'Translations', N'Çeviriler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (376, N'Dashboard', N'Gösterge Tablosu', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (377, N'Incomplete orders', N'Eksik siparişler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (378, N'Pending reviews', N'Bekleyen incelemeler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (379, N'Most searched keywords', N'En çok aranan anahtar kelimeler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (380, N'Most viewed products', N'En çok görüntülenen ürünler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (381, N'OrderId', N'Sipariş Kimliği', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (382, N'Order Status', N'Sipariş durumu', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (383, N'Customer', N'Müşteri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (384, N'Created On', N'Oluşturuldu', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (385, N'SubTotal', N'AltToplam', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (386, N'Actions', N'Eylemler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (387, N'Site', N'Site', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (388, N'Catalog', N'Katalog', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (389, N'Title', N'Başlık', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (390, N'Comment', N'Yorum Yap', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (391, N'Status', N'Durum', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (392, N'Rating', N'Değerlendirme', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (393, N'Keyword', N'Anahtar Kelime', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (394, N'Count', N'Saymak', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (395, N'Create User', N'Kullanıcı oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (396, N'FullName', N'Ad Soyad', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (397, N'Roles', N'Roller', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (398, N'Edit User', N'Kullanıcıyı Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (399, N'Manager of Vendor', N'Bayi Müdürü', N'tr-TR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (400, N'Save', N'Kayıt etmek', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (401, N'Cancel', N'İptal etmek', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (402, N'Phone Number', N'Telefon numarası', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (403, N'Create Vendor', N'Satıcı oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (404, N'Is Active', N'Aktif', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (405, N'Edit Vendor', N'Satıcıyı Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (406, N'Managers', N'Yöneticiler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (407, N'Description', N'Açıklama', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (408, N'Pending', N'Beklemede', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (409, N'Approved', N'Onaylandı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (410, N'Not Approved', N'Onaylanmamış', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (411, N'Approve', N'Onayla', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (412, N'Create Product', N'Ürün Yarat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (413, N'Has Options', N'Seçenekleri Var', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (414, N'Is Visible Individually', N'Bireysel olarak Görülebilir mi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (415, N'Is Featured', N'Öne Çıkmaktadır', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (416, N'Is Allowed To Order', N'Sipariş Edilebilir', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (417, N'Is Called For Pricing', N'Fiyatlandırma Talep Edildi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (418, N'Stock Quantity', N'Stok Miktarı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (419, N'Is Published', N'Yayınlandı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (420, N'Yes', N'Evet', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (421, N'No', N'Hayır!', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (422, N'Edit Product', N'Ürünü Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (423, N'Product Name', N'Ürün adı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (424, N'Short Description', N'Kısa Açıklama', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (425, N'Specification', N'Şartname', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (426, N'Old Price', N'Eski fiyat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (427, N'Special Price', N'Özel fiyat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (428, N'Special Price Start', N'Özel Fiyat Başlangıcı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (429, N'Special Price End', N'Özel Fiyat Sonu', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (430, N'Thumbnail', N'Küçük resim', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (431, N'Product Images', N'Ürün Resimleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (432, N'Product Documents', N'Ürün Dokümanları', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (433, N'Out Of Stock', N'Stoklar tükendi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (434, N'Available Options', N'mevcut seçenekler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (435, N'Add Option', N'Seçenek Ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (436, N'Option Values', N'Opsiyon Değerleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (437, N'Delete Option', N'Silme Seçeneği', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (438, N'Generate Combinations', N'Birleşmeleri Yarat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (439, N'Product Variations', N'Ürün Çeşitlemeleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (440, N'Option Combinations', N'Seçenek Birleşmeleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (441, N'Images', N'Görüntüler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (442, N'Apply', N'Uygulamak', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (443, N'Available Attributes', N'Kullanılabilir Özellikler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (444, N'Add Attribute', N'Öznitelik Ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (445, N'Product Attributes', N'Ürün özellikleri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (446, N'Attribute Name', N'Özellik Adı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (447, N'Value', N'Değer', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (448, N'General Information', N'Genel bilgi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (449, N'Category Mapping', N'Kategori Eşleme', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (450, N'Related Products', N'Related Products', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (451, N'Manage Related Products', N'İlgili Ürünleri Yönetin', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (452, N'Create Category', N'Kategori Oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (453, N'Edit Category', N'Kategoriyi Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (454, N'Create Brand', N'Marka Yarat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (455, N'Edit Brand', N'Markayı Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (456, N'Name', N'İsim', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (457, N'Parent Category', N'aile kategorisi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (458, N'Group', N'Grup', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (459, N'Create Product Attribute', N'Ürün Özellik Yarat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (460, N'Edit Product Attribute', N'Ürün Özellikini Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (461, N'Create Product Attribute Group', N'Ürün Özellik Grubu Oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (462, N'Edit Product Attribute Group', N'Ürün Özellik Grubunu Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (463, N'Create Product Option', N'Ürün Seçeneği Yarat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (464, N'Edit Product Option', N'Ürün Seçenekini Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (465, N'Create Product Display Widget', N'Ürün Ekran Widget''ı Oluşturun', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (466, N'Edit Product Display Widget', N'Ürün Ekran Widget''ini düzenleme', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (467, N'Widget Name', N'Widget Adı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (468, N'Widget Zone', N'Widget Bölgesi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (469, N'Publish Start', N'Yayın Başlat', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (470, N'Publish End', N'Sonu Yayınla', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (471, N'Number of Products', N'Ürün Sayısı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (472, N'Order By', N'Tarafından sipariş', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (473, N'Create Product Template', N'Ürün Şablonu Oluşturma', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (474, N'Edit Product Template', N'Ürün Şablonunu Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (475, N'Added Attributes', N'Eklenen Özellikler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (476, N'Back', N'Geri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (477, N'Order Detail', N'Sipariş detayı', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (478, N'Order Information', N'Sipariş Bilgisi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (479, N'Change', N'Değişiklik', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (480, N'Product Information', N'Ürün Bilgisi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (481, N'Shipping Information', N'Nakliye Bilgisi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (482, N'Application Settings', N'Uygulama ayarları', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (483, N'Create Page', N'Sayfa oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (484, N'Edit Page', N'Sayfayı düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (485, N'Body', N'Vücut', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (486, N'Account Dashboard', N'Hesap Gösterge Tablosu', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (487, N'Account Information', N'Hesap Bilgileri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (488, N'Edit', N'Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (489, N'Security', N'Güvenlik', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (490, N'Create', N'yaratmak', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (491, N'External Logins', N'Harici Girişler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (492, N'Manage', N'Yönet', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (493, N'Default shipping address', N'Varsayılan kargo adresi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (494, N'Manage address', N'Adres yönet', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (495, N'You don''t have any default address', N'Varsayılan adresin yok', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (496, N'Order History', N'Sipariş Geçmişi', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (497, N'Address Book', N'Adres defteri', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (498, N'Add Address', N'Adres Ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (499, N'Delete', N'Sil', N'tr-TR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (500, N'Set as default shipping address', N'Varsayılan gönderim adresi olarak ayarlayın', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (501, N'Edit Address', N'Adres Düzenle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (502, N'Create Address', N'Adres Oluştur', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (503, N'Your account', N'Hesabınız', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (504, N'Date', N'Tarih', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (505, N'Add to Compare', N'Karşılaştırmak için ekle', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (506, N'Not available', N'Müsait değil', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (507, N'You save', N'Kazanıyorsun', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (508, N'Submit', N'Gönder', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (509, N'All Categories', N'Tüm Kategoriler', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (510, N'Search here...', N'Burada ara...', N'tr-TR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (511, N'Register', N'تسجيل', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (512, N'Hello {0}!', N'!{0} مرحبا', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (513, N'Log in', N'دخول', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (514, N'Log off', N'خروج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (515, N'The Email field is required.', N'البريد الإلكتروني إلزامي.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (516, N'Email', N'البريد الإلكتروني', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (517, N'User List', N'قائمة المستخدمين', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (518, N'Remember me?', N'حفظ البيانات؟', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (519, N'Password', N'كلمة المرور', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (520, N'Use a local account to log in.', N'استخدم حسابا محليا لتسجيل الدخول.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (521, N'Register as a new user?', N'سجل كمستخدم جديد؟', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (522, N'Forgot your password?', N'هل نسيت كلمة المرور؟', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (523, N'Use another service to log in.', N'استخدام خدمة أخرى للاتصال.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (524, N'Full name', N'الاسم الكامل', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (525, N'Confirm password', N'تأكيد كلمة السر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (526, N'Create a new account.', N'إنشاء حساب جديد.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (527, N'All', N'جميع', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (528, N'Home', N'الرئيسية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (529, N'Add to cart', N'أضف إلى العربة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (530, N'Product detail', N'تفاصيل المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (531, N'Product specification', N'مواصفات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (532, N'Rate this product', N'تقيم هذا المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (533, N'Review comment', N'مراجعة تعليق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (534, N'Review title', N'مراجعة عنوان ', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (535, N'Posted by', N'أرسلت بواسطة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (536, N'Submit review', N'إرسال التعليق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (537, N'You have', N'عندكم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (538, N'products in your cart', N'المنتجات في عربة التسوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (539, N'Continue shopping', N'تابع عملية الشراء', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (540, N'View cart', N'عرض عربة التسوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (541, N'The product has been added to your cart', N'تمت إضافة هذا المنتج الى عربة التسوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (542, N'Cart subtotal', N'المجموع الفرعي لعربة التسوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (543, N'Shopping Cart', N'عــربــة التســـوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (544, N'Product', N'المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (545, N'Price', N'السعر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (546, N'Quantity', N'الكمية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (547, N'There are no items in this cart.', N'لا توجد أي عناصر في سلة التسوق الخاصة بك.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (548, N'Go to shopping', N'الذهاب للتسوق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (549, N'Order summary', N'ملخص ترتيب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (550, N'Subtotal', N'المجموع الفرعي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (551, N'Process to Checkout', N'عملية الدفع', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (552, N'Shipping address', N'عنوان التسليم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (553, N'Add another address', N'إضافة عنوان آخر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (554, N'Contact name', N'اسم جهة الاتصال', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (555, N'Address', N'عنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (556, N'State or Province', N'الدولة أو المنطقة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (557, N'District', N'مقاطعة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (558, N'Phone', N'هاتف', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (559, N'Order', N'طلب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (560, N'products', N'المنتجات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (561, N'reviews', N'رأي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (562, N'Add Review', N'إضافة تعليق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (563, N'Customer reviews', N'التعليقات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (564, N'Your review will be shown within the next 24h.', N'سيتم عرض تعليقك في ال 24 ساعة القادمة.', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (565, N'Thank you {0} for your review', N'شكرا لك {0} لتعليقك', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (566, N'Rating average', N'متوسط تصنيف العملاء', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (567, N'stars', N'النجوم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (568, N'Filter by', N'مصنف بواسطة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (569, N'Category', N'الفئة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (570, N'Brand', N'العلامة التجارية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (571, N'Sort by:', N'الترتيب حسب:', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (572, N'results', N'النتائج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (573, N'View options', N'عرض الخيارات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (574, N'Associate your {0} account.', N'.{ربط حساب {0', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (575, N'Users', N'المستخدمون', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (576, N'Vendors', N'الباعة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (577, N'Reviews', N'التعليقات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (578, N'Products', N'منتجات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (579, N'Categories', N'الاقسام', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (580, N'Brands', N'العلامات التجارية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (581, N'Product Options', N'خيارات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (582, N'Product Attribute', N'سمة المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (583, N'Product Attribute Groups', N'مجموعات سمات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (584, N'Product Templates', N'قوالب المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (585, N'Sales', N'مبيعات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (586, N'Orders', N'أوامر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (587, N'Content Management', N'ادارة المحتوى', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (588, N'Pages', N'الصفحات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (589, N'Widgets', N'الحاجيات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (590, N'System', N'النظام', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (591, N'Configuration', N'ترتيب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (592, N'Translations', N'الترجمات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (593, N'Dashboard', N'لوحة القيادة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (594, N'Incomplete orders', N'أوامر غير مكتملة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (595, N'Pending reviews', N'في انتظار المراجعة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (596, N'Most searched keywords', N'معظم كلمات البحث', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (597, N'Most viewed products', N'معظم المنتجات المعروضة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (598, N'OrderId', N'رقم التعريف الخاص بالطلب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (599, N'Order Status', N'حالة الطلب', N'ar-TN')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (600, N'Customer', N'العميل', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (601, N'Created On', N'تم إنشاؤها على', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (602, N'SubTotal', N'المجموع الفرعي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (603, N'Actions', N'الإجراءات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (604, N'Site', N'موقع', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (605, N'Catalog', N'فهرس', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (606, N'Title', N'عنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (607, N'Comment', N'تعليق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (608, N'Status', N'الحالة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (609, N'Rating', N'تقييم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (610, N'Keyword', N'كلمة مفتاحية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (611, N'Count', N'إحصاء', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (612, N'Create User', N'إنشاء مستخدم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (613, N'FullName', N'الاسم الكامل', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (614, N'Roles', N'الأدوار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (615, N'Edit User', N'تحرير العضو', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (616, N'Manager of Vendor', N'مدير المورد', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (617, N'Save', N'حفظ', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (618, N'Cancel', N'إلغاء', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (619, N'Phone Number', N'رقم الهاتف', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (620, N'Create Vendor', N'إنشاء مورد', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (621, N'Is Active', N'نشط', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (622, N'Edit Vendor', N'تعديل المورد', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (623, N'Managers', N'المدراء', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (624, N'Description', N'وصف', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (625, N'Pending', N'قيد الانتظار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (626, N'Approved', N'مقبول', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (627, N'Not Approved', N'غير مقبول', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (628, N'Approve', N'يوافق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (629, N'Create Product', N'إنشاء منتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (630, N'Has Options', N'لديه خيارات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (631, N'Is Visible Individually', N'مرئية بشكل فردي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (632, N'Is Featured', N'هي واردة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (633, N'Is Allowed To Order', N'مسموح به للطلب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (634, N'Is Called For Pricing', N'هو دعا للتسعير', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (635, N'Stock Quantity', N'كمية المخزون', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (636, N'Is Published', N'يتم نشر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (637, N'Yes', N'نعم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (638, N'No', N'لا', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (639, N'Edit Product', N'تحرير المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (640, N'Product Name', N'اسم المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (641, N'Short Description', N'وصف قصير', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (642, N'Specification', N'تخصيص', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (643, N'Old Price', N'سعر قديم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (644, N'Special Price', N'سعر خاص', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (645, N'Special Price Start', N'بدء سعر خاص', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (646, N'Special Price End', N'إنهاء سعر خاص', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (647, N'Thumbnail', N'صورة مصغرة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (648, N'Product Images', N'صور المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (649, N'Product Documents', N'وثائق المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (650, N'Out Of Stock', N'إنتهى من المخزن', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (651, N'Available Options', N'الخيارات المتاحة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (652, N'Add Option', N'إضافة خيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (653, N'Option Values', N'قيم الخيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (654, N'Delete Option', N'حذف الخيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (655, N'Generate Combinations', N'إنشاء مجموعات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (656, N'Product Variations', N'اختلافات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (657, N'Option Combinations', N'تركيبات الخيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (658, N'Images', N'الصور', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (659, N'Apply', N'تطبيق', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (660, N'Available Attributes', N'السمات المتاحة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (661, N'Add Attribute', N'اضف ميزة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (662, N'Product Attributes', N'سمات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (663, N'Attribute Name', N'اسم السمة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (664, N'Value', N'القيمة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (665, N'General Information', N'معلومات عامة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (666, N'Category Mapping', N'تعيين الفئة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (667, N'Related Products', N'منتجات ذات صله', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (668, N'Manage Related Products', N'إدارة المنتجات ذات الصلة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (669, N'Create Category', N'إنشاء الفئة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (670, N'Edit Category', N'تحرير الفئة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (671, N'Create Brand', N'إنشاء علامة تجارية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (672, N'Edit Brand', N'تحرير العلامة التجارية', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (673, N'Name', N'اسم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (674, N'Parent Category', N'القسم الرئيسي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (675, N'Group', N'مجموعة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (676, N'Create Product Attribute', N'إنشاء سمة المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (677, N'Edit Product Attribute', N'تعديل سمة المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (678, N'Create Product Attribute Group', N'إنشاء مجموعة سمات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (679, N'Edit Product Attribute Group', N'تحرير مجموعة سمة المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (680, N'Create Product Option', N'إنشاء المنتج الخيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (681, N'Edit Product Option', N'تحرير المنتج الخيار', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (682, N'Create Product Display Widget', N'إنشاء عرض المنتج القطعة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (683, N'Edit Product Display Widget', N'تحرير القطعة عرض المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (684, N'Widget Name', N'اسم التطبيق المصغر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (685, N'Widget Zone', N'مجال التطبيق المصغر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (686, N'Publish Start', N'بدء النشر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (687, N'Publish End', N'إنهاء النشر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (688, N'Number of Products', N'عدد المنتجات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (689, N'Order By', N'ترتيب حسب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (690, N'Create Product Template', N'إنشاء قالب المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (691, N'Edit Product Template', N'تحرير قالب المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (692, N'Added Attributes', N'تمت إضافة سمات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (693, N'Back', N'الى الخلف', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (694, N'Order Detail', N'تفاصيل الأمر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (695, N'Order Information', N'معلومات الطلب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (696, N'Change', N'تغيير', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (697, N'Product Information', N'معلومات المنتج', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (698, N'Shipping Information', N'معلومات الشحن', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (699, N'Application Settings', N'إعدادات التطبيق', N'ar-TN')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (700, N'Create Page', N'إنشاء صفحة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (701, N'Edit Page', N'تعديل الصفحة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (702, N'Body', N'الجسم', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (703, N'Account Dashboard', N'لوحة حساب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (704, N'Account Information', N'معلومات الحساب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (705, N'Edit', N'تصحيح', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (706, N'Security', N'الأمان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (707, N'Create', N'إحداث', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (708, N'External Logins', N'تسجيل الدخول الخارجي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (709, N'Manage', N'إدارة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (710, N'Default shipping address', N'عنوان الشحن الافتراضي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (711, N'Manage address', N'إدارة العنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (712, N'You don''t have any default address', N'ليس لديك أي عنوان افتراضي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (713, N'Order History', N'تاريخ الطلب', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (714, N'Address Book', N'دليل العناوين', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (715, N'Add Address', N'اضف عنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (716, N'Delete', N'حذف', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (717, N'Set as default shipping address', N'تعيين عنوان الشحن الافتراضي', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (718, N'Edit Address', N'تعديل العنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (719, N'Create Address', N'إنشاء عنوان', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (720, N'Your account', N'الحساب الخاص بك', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (721, N'Date', N'تاريخ', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (722, N'Add to Compare', N'أضف للمقارنة', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (723, N'Not available', N'غير متوفر', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (724, N'You save', N'أنت أحفظ', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (725, N'Submit', N'خضع', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (726, N'All Categories', N'جميع الفئات', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (727, N'Search here...', N'ابحث هنا...', N'ar-TN')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (728, N'A value for the {0} property was not provided.', N'Значение для свойства {0} не было предоставлено.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (729, N'A value is required.', N'Значение обязательно.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (730, N'Account Dashboard', N'Панель инструментов аккаунта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (731, N'Account Information', N'Информация аккаунта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (732, N'Actions', N'Действия', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (733, N'Add', N'Добавить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (734, N'Add Address', N'Добавить адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (735, N'Add All Products', N'Добавить все товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (736, N'Add another address', N'Добавить другой адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (737, N'Add another service to log in.', N'Добавьте другой сервис для входа.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (738, N'Add Attribute', N'Добавить атрибут', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (739, N'Add Comment', N'Добавить комментарий', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (740, N'Add Custom Link', N'Добавить пользовательскую ссылку', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (741, N'Add Menu Items', N'Добавить пункты меню', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (742, N'Add Option', N'Добавить опцию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (743, N'Add products', N'Добавить товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (744, N'Add Reply', N'Добавить ответ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (745, N'Add Review', N'Добавить отзыв', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (746, N'Add to cart', N'Добавить в корзину', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (747, N'Add to Compare', N'Добавить к сравнению', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (748, N'Add to Wishlist', N'Добавить к списку желаний', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (749, N'Added Attributes', N'Добавленные атрибуты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (750, N'Address', N'Адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (751, N'Address Book', N'Адресная книга', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (752, N'Address Line 1', N'Адресная строка 1', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (753, N'Address Line 2', N'Адресная строка 2', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (754, N'Adjusted Quantity', N'Корректировка количества', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (755, N'All', N'Все', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (756, N'All Categories', N'Все категории', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (757, N'Application Settings', N'Настройки приложения', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (758, N'Apply', N'Применить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (759, N'Approve', N'Одобрить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (760, N'Approved', N'Одобрено', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (761, N'Associate your {0} account.', N'Свяжите свою {0} учетную запись.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (762, N'Attribute Name', N'Наименование атрибута', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (763, N'Available Attributes', N'Доступные атрибуты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (764, N'Available Options', N'Доступные варианты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (765, N'Back', N'Назад', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (766, N'Billing Address', N'Платежный адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (767, N'Body', N'Содержание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (768, N'Brand', N'Бренд', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (769, N'Brands', N'Бренды', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (770, N'Cancel', N'Отмена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (771, N'Cancel Order', N'Отменить заказ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (772, N'Cart Price Rule', N'Правило цены в корзине', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (773, N'Cart Price Rule Usages', N'Правила применения цены в корзине', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (774, N'Cart Price Rules', N'Правила цен в корзине', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (775, N'Cart subtotal', N'Промежуточный итог', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (776, N'Catalog', N'Каталог', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (777, N'Catalog.IsCommentsRequireApproval', N'Комментарии должны быть одобрены', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (778, N'Catalog.IsProductPriceIncludeTax', N'Цена включает налоги', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (779, N'Catalog.ProductPageSize', N'Количество товаров на станице', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (780, N'Categories', N'Категории', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (781, N'Category', N'Категория', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (782, N'Category Mapping', N'Категории', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (783, N'Change', N'Изменить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (784, N'Change password', N'Изменить пароль', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (785, N'Change Password Form', N'Форма смены пароля', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (786, N'Choose one', N'Выбери один', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (787, N'City', N'Город', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (788, N'Clone Product', N'Клонировать товар', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (789, N'Code', N'Код', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (790, N'Comment', N'Комментарий', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (791, N'Comments', N'Комментарии', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (792, N'Configuration', N'Конфигурация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (793, N'Configure', N'Конфигурировать', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (794, N'Confirm new password', N'Подтвердите новый пароль', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (795, N'Confirm password', N'Подтверждение пароля', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (796, N'Contact Area', N'Область контакта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (797, N'Contact Areas', N'Области контактов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (798, N'Contact Name', N'Контактное имя', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (799, N'Content', N'Контент', N'ru-Ru')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (800, N'Content Management', N'Управление контентом', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (801, N'Continue shopping', N'Продолжить покупки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (802, N'Count', N'Количество', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (803, N'Countries', N'Страны', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (804, N'Country', N'Страна', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (805, N'CountryId', N'Ид страны', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (806, N'Coupon code', N'Код купона', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (807, N'Create', N'Создать', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (808, N'Create a new account.', N'Создать новый аккаунт.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (809, N'Create Address', N'Создать адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (810, N'Create Brand', N'Создать бренд', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (811, N'Create Cart Price Rule', N'Создать правило цены корзины', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (812, N'Create Cart Pricing Rule', N'Создать правило ценообразования', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (813, N'Create Category', N'Создать категорию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (814, N'Create Contact Area', N'Создать область контактов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (815, N'Create Country', N'Создать страну', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (816, N'Create Customer Group', N'Создать группу клиентов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (817, N'Create Menu', N'Создать меню', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (818, N'Create Order', N'Создать заказ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (819, N'Create Page', N'Создать страницу', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (820, N'Create Product', N'Создать товар', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (821, N'Create Product Attribute', N'Создать атрибут продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (822, N'Create Product Attribute Group', N'Создать группу атрибутов продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (823, N'Create Product Display Widget', N'Создать виджет отображения продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (824, N'Create Product Option', N'Создать вариант продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (825, N'Create Product Template', N'Создать шаблон товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (826, N'Create State or Providence', N'Создать область или район', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (827, N'Create Tax Class', N'Создать налоговую группу', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (828, N'Create Tax Rate', N'Создать налоговую ставку', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (829, N'Create User', N'Создать пользователя', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (830, N'Create Vendor', N'Создать поставщика', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (831, N'Create Warehouse', N'Создать склад', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (832, N'Create Widget', N'Создать виджет', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (833, N'Created By', N'Создано', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (834, N'Created On', N'Дата создания', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (835, N'CreatedOn', N'Дата создания', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (836, N'Cross-sell Products', N'Перекрестные товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (837, N'Current password', N'Текущий пароль', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (838, N'Current Price', N'Текущая цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (839, N'Current Quantity', N'Текущее количество', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (840, N'Current theme', N'Текущая тема', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (841, N'Customer', N'Покупатель', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (842, N'Customer comments', N'Комментарии клиента', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (843, N'Customer Groups', N'Группы клиентов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (844, N'Customer reviews', N'Отзывы покупателей', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (845, N'Customer Service', N'Клиентам', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (846, N'Dashboard', N'Приборная доска', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (847, N'Date', N'Дата', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (848, N'Default shipping address', N'Основной адрес для доставки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (849, N'Delete', N'Удалить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (850, N'Delete Option', N'Удалить вариант', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (851, N'Description', N'Описание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (852, N'Discount', N'Скидка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (853, N'Discount Amount', N'Сумма скидки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (854, N'Display City', N'Отображать город', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (855, N'Display District', N'Отображать район', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (856, N'Display Order', N'Порядок отображения', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (857, N'Display Postal Code', N'Отображать почтовый индекс', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (858, N'District', N'Район', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (859, N'Download', N'Скачать', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (860, N'Edit', N'Изменить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (861, N'Edit Address', N'Редактировать адрес', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (862, N'Edit Brand', N'Изменить бренд', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (863, N'Edit Cart Pricing Rule', N'Редактировать правило ценообразования', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (864, N'Edit Category', N'Изменить категорию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (865, N'Edit Menu', N'Редактирование меню', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (866, N'Edit Page', N'Изменить страницу', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (867, N'Edit Product', N'Редактирование товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (868, N'Edit Product Attribute', N'Изменить атрибут продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (869, N'Edit Product Attribute Group', N'Изменить группу атрибутов продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (870, N'Edit Product Display Widget', N'Редактировать виджет отображения продукта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (871, N'Edit Product Option', N'Редактирование вариантов товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (872, N'Edit Product Template', N'Редактирование шаблонов товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (873, N'Edit User', N'Изменть пользователя', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (874, N'Edit Vendor', N'Изменить поставщика', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (875, N'Edit Warehouse', N'Редактирование склада', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (876, N'Email', N'Электронная почта', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (877, N'Enable Stock Tracking', N'Включить отслеживание запасов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (878, N'End', N'Окончание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (879, N'Enjoy and see also', N'Наслаждайтесь и смотрите также', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (880, N'Enjoy and take also', N'Наслаждайтесь и возьмите также', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (881, N'Enter your email.', N'Введите адрес электронной почты.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (882, N'Entity Name', N'Наименование', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (883, N'Export', N'Экспорт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (884, N'Export Orders', N'Экспорт заказов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (885, N'Export Orders with Order Lines', N'Экспорт заказов с нумерацией', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (886, N'External Logins', N'Внешние логины', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (887, N'Filter by', N'Фильтровать по', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (888, N'find by commenter', N'найти по комментатору', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (889, N'Fixed amount discount for whole cart', N'Фиксированная сумма скидки на всю корзину', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (890, N'Forgot your password?', N'Забыли свой пароль?', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (891, N'From', N'С', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (892, N'Full name', N'Полное имя', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (893, N'FullName', N'Полное наименование', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (894, N'General Information', N'Основная информация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (895, N'Generate Combinations', N'Генерировать комбинации', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (896, N'Global.CurrencyCulture', N'Денежный формат', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (897, N'Global.CurrencyDecimalPlace', N'Количество десятичных знаков', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (898, N'Global.DefaultCultureUI', N'Локализация по умолчанию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (899, N'Go to shopping', N'Продолжить покупки', N'ru-Ru')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (900, N'Has Options', N'Имеющиеся варианты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (901, N'Hello {0}!', N'Поздравляем, {0}!', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (902, N'Home', N'Главная', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (903, N'hone Number', N'Номер телефона', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (904, N'Id', N'Ид', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (905, N'Images', N'Изображения', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (906, N'Import', N'Импорт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (907, N'Include in menu', N'Включить в меню', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (908, N'Incomplete orders', N'Незавершенные заказы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (909, N'Information', N'Информация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (910, N'Installed themes', N'Установленные темы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (911, N'Inventory', N'Инвентаризация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (912, N'Is Active', N'Активен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (913, N'Is Allowed To Order', N'Разрешен к заказу', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (914, N'Is Billing Enabled', N'Биллинг включен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (915, N'Is Called For Pricing', N'Связаться для уточнения цены', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (916, N'Is Featured', N'Скоро в продаже', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (917, N'Is Published', N'Опубликован', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (918, N'Is Shipping Enabled', N'Доставка включена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (919, N'Is Visible Individually', N'Виден индивидуально', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (920, N'IsEnabled', N'Включен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (921, N'IsSystem', N'Системное', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (922, N'Items', N'Элементы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (923, N'Latest orders', N'Последние заказы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (924, N'Link', N'Ссылка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (925, N'Localization.LocalizedConentEnable', N'Включена локализация контента', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (926, N'Log in', N'Войти', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (927, N'Log off', N'Выйти', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (928, N'Manage', N'Управление', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (929, N'Manage address', N'Управление адресом', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (930, N'Manage Contact', N'Управление контактами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (931, N'Manage Contact Area', N'Управление областью контактов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (932, N'Manage Cross-sell Products', N'Управление кросс-продажами товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (933, N'Manage News Categories', N'Управление группами новостей', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (934, N'Manage News Items', N'Управление новостями', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (935, N'Manage products in warehouse', N'Управление складом товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (936, N'Manage Products Selection', N'Управление выбранными товарами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (937, N'Manage Related Products', N'Управление сопутствующими товарами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (938, N'Manage Translations', N'Настройка перевода', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (939, N'Manage warehouse products', N'Управление складом товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (940, N'Management products for warehouse', N'Привязка товаров к складам', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (941, N'Manager of Vendor', N'Менеджер поставщика', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (942, N'Managers', N'Менеджеры', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (943, N'Max Discount Amount', N'Максимальная сумма скидки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (944, N'Maybe the page was moved or deleted, or perhaps you just mistyped the address.', N'Возможно, страница была перемещена или удалена, или, возможно, вы просто неправильно набрали адрес.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (945, N'Menus', N'Меню', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (946, N'Meta Description', N'Описание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (947, N'Meta Keywords', N'Ключевые слова', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (948, N'Meta Title', N'Заголовок', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (949, N'Most search keywords', N'Частые поисковые слова', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (950, N'Most searched keywords', N'Самые популярные ключевые слова', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (951, N'Most viewed products', N'Наиболее просматриваемые товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (952, N'My Settings', N'Мои настройки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (953, N'Name', N'Наименование', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (954, N'New Old Price', N'Новая прошлая цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (955, N'New password', N'Новый пароль', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (956, N'New Price', N'Новая цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (957, N'News.PageSize', N'Размер станицы новостей', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (958, N'No', N'Нет', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (959, N'Not Approved', N'Не одобрено', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (960, N'Not available', N'Недоступен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (961, N'Not Vendor', N'Не является поставщиком', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (962, N'Note', N'Примечание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (963, N'Note that the updated translations only be affected after the application is restarted', N'Обратите внимание, что обновленные переводы будут применены только после перезапуска приложения.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (964, N'Null value is invalid.', N'Пустое значение недопустимо.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (965, N'Number of Products', N'Количество товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (966, N'Old Price', N'Прошлая цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (967, N'Option Combinations', N'Варианты комбинация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (968, N'Order', N'Заказ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (969, N'Order By', N'Сортировать по', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (970, N'Order Detail', N'Детализация заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (971, N'Order History', N'История заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (972, N'Order Id', N'Ид заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (973, N'Order Information', N'Информация заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (974, N'Order note', N'Примечание заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (975, N'Order Status', N'Статус заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (976, N'Order summary', N'Итог заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (977, N'Order Total', N'Итого', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (978, N'OrderId', N'Ид заказа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (979, N'Orders', N'Заказы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (980, N'Out Of Stock', N'Нет в наличии', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (981, N'Pages', N'Страницы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (982, N'Parent Category', N'Родительская категория', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (983, N'Password', N'Пароль', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (984, N'Payment', N'Оплата', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (985, N'Payment Providers', N'Платежные системы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (986, N'Pending', N'В ожидании', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (987, N'Pending review replies', N'Ожидающие ответы на отзывы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (988, N'Pending reviews', N'Ожидающие отзывы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (989, N'Percent of product price discount', N'Процент скидки на продукт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (990, N'Phone', N'Телефон', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (991, N'Phone Number', N'Телефон', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (992, N'Postal Code', N'Почтовый индекс', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (993, N'Posted by', N'Автор', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (994, N'Preview', N'Просмотр', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (995, N'Price', N'Цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (996, N'Process to Checkout', N'Оформить заказ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (997, N'Product', N'Товар', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (998, N'Product Attribute', N'Атрибуты товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (999, N'Product Attribute Groups', N'Группы атрибутов товара', N'ru-Ru')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1000, N'Product Attributes', N'Атрибуты товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1001, N'Product detail', N'Детали товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1002, N'Product Documents', N'Документация товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1003, N'Product Images', N'Изображения товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1004, N'Product Information', N'Информация о товаре', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1005, N'Product Name', N'Наименование товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1006, N'Product Options', N'Варианты товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1007, N'Product Price Management', N'Управление ценами на товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1008, N'Product Prices', N'Цены', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1009, N'Product Sku', N'Sku товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1010, N'Product specification', N'Спецификация товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1011, N'Product Templates', N'Шаблоны товаров', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1012, N'Product Variations', N'Варианты товара', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1013, N'Products', N'Товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1014, N'products in your cart', N'товаров в корзине', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1015, N'Products Selection', N'Выбранные товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1016, N'Promotions', N'Акции', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1017, N'Publish End', N'Опубликовано по', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1018, N'Publish Start', N'Опубликовано с', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1019, N'Quantity', N'Количество', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1020, N'Rate', N'Ставка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1021, N'Rate this product', N'Оценить этот товар', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1022, N'Rating', N'Рейтинг', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1023, N'Rating average', N'Средняя оценка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1024, N'Recently viewed products', N'Недавно просмотренные товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1025, N'records found', N'записей найдено', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1026, N'Register', N'Зарегистрироваться', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1027, N'Register as a new user?', N'Зарегистрироваться как новый пользователь?', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1028, N'Related Products', N'Сопутствующие товары', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1029, N'Remember me?', N'Запомнить меня?', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1030, N'Reply', N'Ответ', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1031, N'Require coupon code', N'Код купона обязателен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1032, N'results', N'результаты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1033, N'Review comment', N'Текст отзыва', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1034, N'Review Replies', N'Просмотр отзывов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1035, N'Review title', N'Заголовок отзыва', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1036, N'Reviews', N'Отзывы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1037, N'Roles', N'Роли', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1038, N'Rule Name', N'Наименование правила', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1039, N'Sales', N'Продажи', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1040, N'Save', N'Сохранить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1041, N'Search here...', N'Поищи здесь...', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1042, N'Security', N'Безопасность', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1043, N'Select culture', N'Выбор языка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1044, N'Select products to apply or leave blank for all products', N'Выберите товары для применения или оставьте поле пустым для всех продуктов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1045, N'Set as default shipping address', N'Установить как адрес доставки по умолчанию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1046, N'Settings', N'Настройки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1047, N'Shipment Id', N'Ид отгрузки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1048, N'Shipments', N'Отгрузки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1049, N'Shipping', N'Доставка', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1050, N'Shipping address', N'Адрес доставки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1051, N'Shipping Information', N'Информация о доставке', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1052, N'Shipping methods', N'Методы доставки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1053, N'Shipping Providers', N'Поставщики услуг доставки', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1054, N'Shopping Cart', N'Корзина', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1055, N'Short content', N'Краткое содержание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1056, N'Short Description', N'Краткое описание', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1057, N'Site', N'Сайт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1058, N'Sort by:', N'Сортировать по:', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1059, N'Special Price', N'Специальная цена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1060, N'Special Price End', N'Специальная цена по', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1061, N'Special Price Start', N'Специальная цена с', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1062, N'Specification', N'Спецификация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1063, N'stars', N'звездочек', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1064, N'Start', N'Начало', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1065, N'State Or Province', N'Область или край', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1066, N'States or Provinces', N'Области или районы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1067, N'Status', N'Статус', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1068, N'Stock History', N'История запасов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1069, N'Stock management', N'Управление запасами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1070, N'Stock management for warehouse', N'Управление запасами для склада', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1071, N'Stock Quantity', N'Количество на складе', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1072, N'Stocks', N'Управление запасами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1073, N'Submit', N'Отправить', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1074, N'Submit comment', N'Отправить комментарий', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1075, N'Submit review', N'Отправить отзыв', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1076, N'Submiting review is only enable for users who have bought this product', N'Отправка отзыва доступна только для пользователей, которые купили этот продукт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1077, N'Subtotal', N'Итого', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1078, N'System', N'Система', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1079, N'Tax Class', N'Налоговая группа', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1080, N'Tax Classes', N'Налоговые группы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1081, N'Tax Rates', N'Ставки налогов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1082, N'Tax.DefaultTaxClassId', N'Група нологов по умолчанию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1083, N'Thank you {0} for your review', N'Спасибо {0} за ваш отзыв', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1084, N'The {0} field is not a valid e-mail address.', N'Поле {0} не является действительным адресом электронной почты.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1085, N'The {0} field is required.', N'26/5000 Поле {0} обязательно.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1086, N'The {0} must be at least {2} and at max {1} characters long.', N'{0} должно быть не менее {2} и не более {1} символов.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1087, N'The Email field is not a valid e-mail address.', N'Поле E-mail не является действительным адресом электронной почты.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1088, N'The Email field is required.', N'Поле «Электронная почта» является обязательным.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1089, N'The new password and confirmation password do not match.', N'Новый пароль и подтверждение пароля не совпадают.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1090, N'The page you have requested cannot be found', N'Запрошенная вами страница не найдена', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1091, N'The password and confirmation password do not match.', N'Пароль и подтверждение пароля не совпадают.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1092, N'The product has been added to your cart', N'Товар был добавлен в корзину', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1093, N'The supplied value is invalid for {0}.', N'Указанное значение недопустимо для {0}.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1094, N'The value {0} is invalid.', N'25/5000 Значение {0} недопустимо.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1095, N'The value {0} is not valid for {1}.', N'Значение {0} недопустимо для {1}.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1096, N'Themes', N'Темы', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1097, N'There are currently no items in your wish list.', N'На данный момент в вашем списке желаний нет товаров.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1098, N'There are no items in this cart.', N'Товаров в корзине нет', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1099, N'Thumbnail', N'Миниатюра', N'ru-Ru')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1100, N'Title', N'Заголовок', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1101, N'To', N'По', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1102, N'Tracking Number', N'Номер отслеживания', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1103, N'Translations', N'Локализация', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1104, N'Type', N'Тип', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1105, N'Usage limit per coupon', N'Лимит использования на купон', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1106, N'Usage limit per customer', N'Лимит использования на одного клиента', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1107, N'Use', N'Использовать', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1108, N'Use a local account to log in.', N'Использовать локальный аккаунт для входа.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1109, N'Use another service to log in.', N'Использовать другой сервис для входа.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1110, N'Use Selected Shipping Address As Billing Address', N'Использовать выбранный адрес доставки в качестве платежного адреса', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1111, N'User List', N'Список пользователей', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1112, N'Users', N'Пользователи', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1113, N'Value', N'Значение', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1114, N'VAT included', N'НДС включен', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1115, N'Vendor Name', N'Наименование поставщика', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1116, N'Vendors', N'Поставщики', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1117, N'View cart', N'Просмотр корзины', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1118, N'View History', N'Просмотр истории', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1119, N'View Online Themes', N'Просмотр онлайн тем', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1120, N'View options', N'Посмотреть варианты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1121, N'Warehouse', N'Склад', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1122, N'Warehouses', N'Управления складами', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1123, N'We are sorry!', N'Нам очень жаль!', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1124, N'Why not try and find your way using the navigation bar above or click on the logo to return our home page.', N'Почему бы не попытаться найти свой путь с помощью навигационной панели выше или нажать на логотип, чтобы вернуться на нашу домашнюю страницу.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1125, N'Widget Instances', N'Экземпляры виджетов', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1126, N'Widget Name', N'Наименование виджета', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1127, N'Widget Type', N'Тип виджета', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1128, N'Widget Zone', N'Зона виджета', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1129, N'Widgets', N'Виджеты', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1130, N'Wish List', N'Список желаний', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1131, N'Yes', N'Да', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1132, N'You don''t have any default address', N'У вас нет адреса по умолчанию', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1133, N'You have', N'У вас', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1134, N'You save', N'Вы сэкономили', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1135, N'Your account', N'Ваш аккаунт', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1136, N'Your comment', N'Ваш комментарий', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1137, N'Your comment should not have personal information. 10 - 300 characters:', N'Ваш комментарий не должен содержать личную информацию. 10 - 300 символов:', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1138, N'Your review will be showed within the next 24h.', N'Ваш отзыв будет показан в течение следующих 24 часов.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1139, N'Your review will be shown within the next 24h.', N'Ваш отзыв будет опубликован в течении следующих 24 часов.', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1140, N'Zip Code', N'Индекс', N'ru-Ru')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1141, N'Register', N'레지스터', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1142, N'Hello {0}!', N'안녕하세요 {0}!', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1143, N'Log in', N'로그인', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1144, N'Log off', N'로그 오프', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1145, N'The Email field is required.', N'이메일 입력란은 필수 항목입니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1146, N'Email', N'이메일', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1147, N'User List', N'사용자 목록', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1148, N'Remember me?', N'날 기억해?', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1149, N'Password', N'암호', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1150, N'Use a local account to log in.', N'로그인하려면 로컬 계정을 사용하십시오.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1151, N'Register as a new user?', N'새로운 사용자로 등록 하시겠습니까?', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1152, N'Forgot your password?', N'비밀번호를 잊어 버렸습니까?', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1153, N'Use another service to log in.', N'다른 서비스를 사용하여 로그인하십시오.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1154, N'Full name', N'성명', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1155, N'Confirm password', N'비밀번호 확인', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1156, N'Create a new account.', N'새 계정 생성.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1157, N'All', N'모든', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1158, N'Home', N'홈', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1159, N'Add to cart', N'장바구니에 담기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1160, N'Product detail', N'제품 세부 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1161, N'Product specification', N'제품 사양', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1162, N'Rate this product', N'이 제품 평가하기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1163, N'Review comment', N'댓글 검토', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1164, N'Review title', N'리뷰 제목', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1165, N'Posted by', N'게시자', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1166, N'Submit review', N'리뷰 제출', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1167, N'You have', N'너는 가지고있다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1168, N'products in your cart', N'장바구니의 제품', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1169, N'Continue shopping', N'쇼핑을 계속', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1170, N'View cart', N'장바구니보기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1171, N'The product has been added to your cart', N'상품이 장바구니에 추가되었습니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1172, N'Cart subtotal', N'장바구니 소계', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1173, N'Shopping Cart', N'쇼핑 카트', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1174, N'Product', N'생성물', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1175, N'Price', N'가격', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1176, N'Quantity', N'수량', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1177, N'There are no items in this cart.', N'장바구니에 항목이 없습니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1178, N'Go to shopping', N'쇼핑 가다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1179, N'Order summary', N'주문 요약', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1180, N'Subtotal', N'소계', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1181, N'Process to Checkout', N'프로세스를 체크 아웃하는 중', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1182, N'Shipping address', N'배송 주소', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1183, N'Add another address', N'다른 주소 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1184, N'Contact name', N'담당자 이름', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1185, N'Address', N'주소', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1186, N'State or Province', N'국가 또는 지방', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1187, N'District', N'지구', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1188, N'Phone', N'전화', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1189, N'Order', N'주문', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1190, N'products', N'제작품', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1191, N'reviews', N'리뷰', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1192, N'Add Review', N'검토 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1193, N'Customer reviews', N'고객 리뷰', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1194, N'Your review will be shown within the next 24h.', N'귀하의 리뷰는 다음 24 시간 이내에 보여 질 것입니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1195, N'Thank you {0} for your review', N'귀하의 검토를 위해 {0} 주셔서 감사합니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1196, N'Rating average', N'평점 평균', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1197, N'stars', N'별', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1198, N'Filter by', N'필터링 기준', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1199, N'Category', N'범주', N'ko-KR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1200, N'Brand', N'상표', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1201, N'Sort by:', N'정렬 기준 :', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1202, N'results', N'결과', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1203, N'View options', N'보기 옵션', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1204, N'Associate your {0} account.', N'{0} 계정을 연결하십시오.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1205, N'Users', N'사용자', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1206, N'Vendors', N'공급 업체', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1207, N'Reviews', N'리뷰', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1208, N'Products', N'제작품', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1209, N'Categories', N'카테고리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1210, N'Brands', N'브랜드', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1211, N'Product Options', N'제품 옵션', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1212, N'Product Attribute', N'제품 속성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1213, N'Product Attribute Groups', N'제품 속성 그룹', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1214, N'Product Templates', N'제품 템플릿', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1215, N'Sales', N'매상', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1216, N'Orders', N'명령', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1217, N'Content Management', N'콘텐츠 관리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1218, N'Pages', N'페이지', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1219, N'Widgets', N'위젯', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1220, N'System', N'체계', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1221, N'Configuration', N'구성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1222, N'Translations', N'번역', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1223, N'Dashboard', N'계기반', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1224, N'Incomplete orders', N'불완전 주문', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1225, N'Pending reviews', N'검토 대기 중', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1226, N'Most searched keywords', N'대부분의 검색 키워드', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1227, N'Most viewed products', N'가장 많이 본 제품', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1228, N'OrderId', N'주문 아이디', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1229, N'Order Status', N'주문 상태', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1230, N'Customer', N'고객', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1231, N'Created On', N'생성 일', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1232, N'SubTotal', N'소계', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1233, N'Actions', N'행위', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1234, N'Site', N'대지', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1235, N'Catalog', N'목록', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1236, N'Title', N'표제', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1237, N'Comment', N'논평', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1238, N'Status', N'지위', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1239, N'Rating', N'평가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1240, N'Keyword', N'예어', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1241, N'Count', N'카운트', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1242, N'Create User', N'사용자 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1243, N'FullName', N'성명', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1244, N'Roles', N'역할', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1245, N'Edit User', N'사용자 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1246, N'Manager of Vendor', N'공급 업체 관리자', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1247, N'Save', N'구하다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1248, N'Cancel', N'취소', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1249, N'Phone Number', N'전화 번호', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1250, N'Create Vendor', N'공급 업체 만들기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1251, N'Is Active', N'활성 상태입니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1252, N'Edit Vendor', N'공급 업체 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1253, N'Managers', N'관리자', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1254, N'Description', N'기술', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1255, N'Pending', N'대기중인', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1256, N'Approved', N'승인 됨', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1257, N'Not Approved', N'승인이 거절 됨', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1258, N'Approve', N'승인하다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1259, N'Create Product', N'제품 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1260, N'Has Options', N'옵션 있음', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1261, N'Is Visible Individually', N'개별적으로 보입니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1262, N'Is Featured', N'추천', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1263, N'Is Allowed To Order', N'주문이 가능하다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1264, N'Is Called For Pricing', N'가격 책정', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1265, N'Stock Quantity', N'재고 수량', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1266, N'Is Published', N'게시 됨', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1267, N'Yes', N'예', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1268, N'No', N'아니오!', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1269, N'Edit Product', N'제품 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1270, N'Product Name', N'상품명', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1271, N'Short Description', N'간단한 설명', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1272, N'Specification', N'사양', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1273, N'Old Price', N'이전 가격', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1274, N'Special Price', N'특별가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1275, N'Special Price Start', N'특별가 시작', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1276, N'Special Price End', N'특별 가격 끝', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1277, N'Thumbnail', N'미리보기 이미지', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1278, N'Product Images', N'제품 이미지', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1279, N'Product Documents', N'제품 문서', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1280, N'Out Of Stock', N'품절', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1281, N'Available Options', N'사용 가능한 옵션', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1282, N'Add Option', N'옵션 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1283, N'Option Values', N'옵션 값', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1284, N'Delete Option', N'삭제 옵션', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1285, N'Generate Combinations', N'조합 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1286, N'Product Variations', N'제품 변형', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1287, N'Option Combinations', N'옵션 조합', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1288, N'Images', N'이미지', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1289, N'Apply', N'대다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1290, N'Available Attributes', N'사용 가능한 속성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1291, N'Add Attribute', N'속성 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1292, N'Product Attributes', N'제품 속성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1293, N'Attribute Name', N'속성 이름', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1294, N'Value', N'값', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1295, N'General Information', N'일반 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1296, N'Category Mapping', N'범주 매핑', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1297, N'Related Products', N'관련 상품', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1298, N'Manage Related Products', N'관련 제품 관리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1299, N'Create Category', N'카테고리 생성', N'ko-KR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1300, N'Edit Category', N'카테고리 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1301, N'Create Brand', N'브랜드 만들기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1302, N'Edit Brand', N'브랜드 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1303, N'Name', N'이름', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1304, N'Parent Category', N'상위 카테고리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1305, N'Group', N'그룹', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1306, N'Create Product Attribute', N'제품 속성 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1307, N'Edit Product Attribute', N'제품 속성 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1308, N'Create Product Attribute Group', N'제품 속성 그룹 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1309, N'Edit Product Attribute Group', N'제품 속성 그룹 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1310, N'Create Product Option', N'제품 생성 옵션', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1311, N'Edit Product Option', N'제품 옵션 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1312, N'Create Product Display Widget', N'제품 디스플레이 위젯 만들기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1313, N'Edit Product Display Widget', N'제품 표시 위젯 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1314, N'Widget Name', N'위젯 이름', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1315, N'Widget Zone', N'위젯 영역', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1316, N'Publish Start', N'게시 시작', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1317, N'Publish End', N'게시 종료', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1318, N'Number of Products', N'제품 수', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1319, N'Order By', N'주문', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1320, N'Create Product Template', N'제품 템플릿 만들기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1321, N'Edit Product Template', N'제품 템플릿 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1322, N'Added Attributes', N'추가 된 속성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1323, N'Back', N'뒤로', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1324, N'Order Detail', N'주문 세부 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1325, N'Order Information', N'주문 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1326, N'Change', N'변화', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1327, N'Product Information', N'물품 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1328, N'Shipping Information', N'배송 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1329, N'Application Settings', N'응용 프로그램 설정', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1330, N'Create Page', N'페이지 만들기', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1331, N'Edit Page', N'페이지 편집', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1332, N'Body', N'신체', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1333, N'Account Dashboard', N'계정 대시 보드', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1334, N'Account Information', N'계정 정보', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1335, N'Edit', N'편집하다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1336, N'Security', N'보안', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1337, N'Create', N'몹시 떠들어 대다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1338, N'External Logins', N'외부 로그인', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1339, N'Manage', N'꾸리다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1340, N'Default shipping address', N'기본 배송 주소', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1341, N'Manage address', N'주소 관리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1342, N'You don''t have any default address', N'기본 주소가 없습니다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1343, N'Order History', N'주문 내역', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1344, N'Address Book', N'주소록', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1345, N'Add Address', N'주소 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1346, N'Delete', N'지우다', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1347, N'Set as default shipping address', N'기본 배송 주소로 설정', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1348, N'Edit Address', N'주소 수정', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1349, N'Create Address', N'주소 생성', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1350, N'Your account', N'귀하의 계정', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1351, N'Date', N'날짜', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1352, N'Add to Compare', N'비교 목록에 추가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1353, N'Not available', N'사용 불가', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1354, N'You save', N'너는 구한다.', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1355, N'Submit', N'제출', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1356, N'All Categories', N'모든 카테고리', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1357, N'Search here...', N'여기에서 검색 ...', N'ko-KR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1358, N'Register', N'ثبت‌نام', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1359, N'Hello {0}!', N'سلام {0}!', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1360, N'Log in', N'ورود', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1361, N'Log off', N'خروج', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1362, N'The Email field is required.', N'وارد کردن ایمیل ضروری است.', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1363, N'Email', N'ایمیل', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1364, N'User List', N'لیست کاربران', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1365, N'Remember me?', N'مرا به خاطر داشته باش?', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1366, N'Password', N'کلمه عبور', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1367, N'Use a local account to log in.', N'اطلاعات کاربری خود را وارد نمایید.', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1368, N'Register as a new user?', N'ثبت نام کاربر جدید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1369, N'Forgot your password?', N'کلمه عبور خود را فراموش کردید؟', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1370, N'Use another service to log in.', N'با استفاده از سرویس‌های دیگر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1371, N'Full name', N'نام کامل', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1372, N'Confirm password', N'تکرار کلمه عبور', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1373, N'Create a new account.', N'ساخت اکانت جدید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1374, N'All', N'همه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1375, N'Home', N'خانه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1376, N'Add to cart', N'اضافه به سبد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1377, N'Product detail', N'مشخصات محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1378, N'Product specification', N'ویژگی‌های محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1379, N'Rate this product', N'به این محصول امتیاز بدهید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1380, N'Review comment', N'بررسی نظر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1381, N'Review title', N'بررسی عنوان', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1382, N'Posted by', N'پست شده توسط', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1383, N'Submit review', N'اظاف کردن نظر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1384, N'You have', N'دارید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1385, N'products in your cart', N'محصولات سبد شما', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1386, N'Continue shopping', N'ادامه خرید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1387, N'View cart', N'مشاهده سبد خرید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1388, N'The product has been added to your cart', N'محصول به سبد شما اضافه شد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1389, N'Cart subtotal', N'مجموع', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1390, N'Shopping Cart', N'سبد خرید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1391, N'Product', N'محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1392, N'Price', N'قیمت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1393, N'Quantity', N'مقدار', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1394, N'There are no items in this cart.', N'سبد خرید خالی است.', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1395, N'Go to shopping', N'خرید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1396, N'Order summary', N'خلاصه سفارش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1397, N'Subtotal', N'مجموع', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1398, N'Process to Checkout', N'پایان خرید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1399, N'Shipping address', N'آدرس تحویل', N'fa-IR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1400, N'Add another address', N'اضافه کردن آدرس جدید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1401, N'Contact name', N'نام', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1402, N'Address', N'آدرس', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1403, N'State or Province', N'استان', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1404, N'District', N'ناحیه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1405, N'Phone', N'تلفن', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1406, N'Order', N'سفارش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1407, N'products', N'محصولات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1408, N'reviews', N'نظرات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1409, N'Add Review', N'اضافه کردن نظر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1410, N'Customer reviews', N'نظرات کاربران', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1411, N'Your review will be shown within the next 24h.', N'نظر شما بعد از بررسی نمایش داده خواهد شد.', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1412, N'Thank you {0} for your review', N'{0} ممنون از نظر ', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1413, N'Rating average', N'میانگین امتیاز‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1414, N'stars', N'امتیازها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1415, N'Filter by', N'فیلتر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1416, N'Category', N'دسته', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1417, N'Brand', N'برند', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1418, N'Sort by:', N'مرتب سازی:', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1419, N'results', N'نتایج', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1420, N'Users', N'کاربران', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1421, N'Vendors', N'فروشنده‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1422, N'Reviews', N'نظرات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1423, N'Products', N'محصولات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1424, N'Categories', N'دسته‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1425, N'Brands', N'برندها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1426, N'Product Attribute Groups', N'ویژگی‌های محصولات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1427, N'Product Templates', N'قالب‌های محصولات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1428, N'Sales', N'فروش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1429, N'Orders', N'سفارش‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1430, N'Content Management', N'مدیریت محتوا', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1431, N'Pages', N'صفحات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1432, N'Widgets', N'Widgets', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1433, N'System', N'سیستم', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1434, N'Configuration', N'تنظیمات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1435, N'Translations', N'ترجمه‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1436, N'Dashboard', N'دشبورد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1437, N'Incomplete orders', N'سفارشات ناتمام', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1438, N'Pending reviews', N'نظرات منتظر تایید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1439, N'Most searched keywords', N'بیشترین جستجوها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1440, N'Most viewed products', N'بیشنترین مشاهده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1441, N'OrderId', N'شناسه سفارش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1442, N'Order Status', N'وضعیت سفارش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1443, N'Customer', N'مشتری', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1444, N'Created On', N'زمان ایجاد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1445, N'SubTotal', N'مجموع', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1446, N'Actions', N'عملیات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1447, N'Site', N'سایت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1448, N'Catalog', N'دسته', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1449, N'Title', N'عنوان', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1450, N'Comment', N'نظر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1451, N'Status', N'وضعیت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1452, N'Rating', N'امتیاز', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1453, N'Keyword', N'کی‌ورد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1454, N'Count', N'تعداد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1455, N'Create User', N'ایجاد کاربر جدید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1456, N'FullName', N'نام کامل', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1457, N'Roles', N'نقش‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1458, N'Edit User', N'ویرایش کاربر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1459, N'Manager of Vendor', N'مدیر فروشنده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1460, N'Save', N'ذخیره', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1461, N'Cancel', N'انصراف', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1462, N'Phone Number', N'شماره تماس', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1463, N'Create Vendor', N'ایجاد فروشنده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1464, N'Is Active', N'فعال', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1465, N'Edit Vendor', N'ویرایش فروشنده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1466, N'Managers', N'Les مدیران', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1467, N'Description', N'توضیحات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1468, N'Pending', N'در انتظار', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1469, N'Approved', N'تایید شده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1470, N'Not Approved', N'تایید نشده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1471, N'Approve', N'تایید', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1472, N'Create Product', N'ایجاد محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1473, N'Is Featured', N'توصیه شده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1474, N'Is Published', N'پابلیش شده', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1475, N'Yes', N'بله', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1476, N'No', N'خیر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1477, N'Edit Product', N'ویرایش محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1478, N'Product Name', N'نام محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1479, N'Short Description', N'توضیح کوتاه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1480, N'Specification', N'ویژگی‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1481, N'Old Price', N'قیمت قدیم', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1482, N'Special Price', N'قیمت ویژه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1483, N'Thumbnail', N'تصویر کوچک', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1484, N'Product Images', N'تصویر محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1485, N'Images', N'تصاویر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1486, N'Apply', N'اعمال', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1487, N'Attribute Name', N'نام مشخصه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1488, N'Value', N'مقدار', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1489, N'General Information', N'اطلاعات کلی', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1490, N'Related Products', N'محصولات مشابه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1491, N'Manage Related Products', N'مدیریت محصولات مشابه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1492, N'Create Category', N'ایجاد دسته', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1493, N'Edit Category', N'ویرایش دسته', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1494, N'Create Brand', N'ایجاد برند', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1495, N'Edit Brand', N'ویرایش برند', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1496, N'Name', N'نام', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1497, N'Parent Category', N'دسته پدر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1498, N'Group', N'گروه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1499, N'Publish Start', N'شروع پابلیش', N'fa-IR')
GO
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1500, N'Publish End', N'پایان پابلش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1501, N'Number of Products', N'تعداد محصولات', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1502, N'Order By', N'ترتیب', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1503, N'Back', N'بازگشت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1504, N'Change', N'تغییر', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1505, N'Product Information', N'مشخصات محصول', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1506, N'Application Settings', N'تنظیمات برنامه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1507, N'Create Page', N'ایجاد صفحه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1508, N'Edit Page', N'ویرایش صفحه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1509, N'Body', N'بدنه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1510, N'Edit', N'ویرایش', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1511, N'Security', N'Sécurité', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1512, N'Create', N'ایجاد', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1513, N'Manage', N'مدیریت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1514, N'Order History', N'تاریخچه سفارش‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1515, N'Address Book', N'آدرس‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1516, N'Add Address', N'اضافه کردن آدرس', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1517, N'Delete', N'حذف', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1518, N'Set as default shipping address', N'آدرس پیش فرض', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1519, N'Edit Address', N'ویرایش آدرس', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1520, N'Create Address', N'اضافه کردن آدرس', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1521, N'Your account', N'اکانت شما', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1522, N'Date', N'تاریخ', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1523, N'Add to Compare', N'مقایسه', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1524, N'Not available', N'در دسترس نیست', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1525, N'You save', N'تخفیف شما', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1526, N'Submit', N'ثبت', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1527, N'All Categories', N'همه دسته‌ها', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1528, N'Search here...', N'جستجو...', N'fa-IR')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1529, N'State or Province', N'Region', N'en-GB')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1530, N'District', N'County', N'en-GB')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1531, N'State or Province', N'Region', N'en-GB')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1532, N'District', N'County', N'en-GB')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1533, N'State or Province', N'Region', N'en-GB')
INSERT [dbo].[Localization_Resource] ([Id], [Key], [Value], [CultureId]) VALUES (1534, N'District', N'County', N'en-GB')
SET IDENTITY_INSERT [dbo].[Localization_Resource] OFF
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Braintree', N'Braintree', 1, N'payments-braintree-config', N'BraintreeLanding', N'{"PublicKey": "6j4d7qspt5n48kx4", "PrivateKey" : "bd1c26e53a6d811243fcc3eb268113e1", "MerchantId" : "ncsh7wwqvzs3cx9q", "IsProduction" : "false"}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Cashfree', N'Cashfree Payment Gateway', 1, N'payments-cashfree-config', N'CashfreeLanding', N'{ "IsSandbox":true, "AppId":"358035b02486f36ca27904540853", "SecretKey":"26f48dcd6a27f89f59f28e65849e587916dd57b9" }')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'CoD', N'Cash On Delivery', 1, N'payments-cod-config', N'CoDLanding', NULL)
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'MomoPayment', N'Momo Payment', 1, N'payments-momo-config', N'MomoLanding', N'{"IsSandbox":true,"PartnerCode":"MOMOIQA420180417","AccessKey":"SvDmj2cOTYZmQQ3H","SecretKey":"PPuDXq1KowPT1ftR8DvlQTHhC03aul17","PaymentFee":0.0}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'NganLuong', N'Ngan Luong Payment', 1, N'payments-nganluong-config', N'NganLuongLanding', N'{"IsSandbox":true, "MerchantId": 47249, "MerchantPassword": "e530745693dbde678f9da98a7c821a07", "ReceiverEmail": "nlqthien@gmail.com"}')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'PaypalExpress', N'Paypal Express', 1, N'payments-paypalExpress-config', N'PaypalExpressLanding', N'{ "IsSandbox":true, "ClientId":"", "ClientSecret":"" }')
INSERT [dbo].[Payments_PaymentProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [LandingViewComponentName], [AdditionalSettings]) VALUES (N'Stripe', N'Stripe', 1, N'payments-stripe-config', N'StripeLanding', N'{"PublicKey": "pk_test_6pRNASCoBOKtIshFeQd4XMUh", "PrivateKey" : "sk_test_BQokikJOvBiI2HlWgH4olfQ2"}')
SET IDENTITY_INSERT [dbo].[ProductRecentlyViewed_RecentlyViewedProduct] ON 

INSERT [dbo].[ProductRecentlyViewed_RecentlyViewedProduct] ([Id], [UserId], [ProductId], [LatestViewedOn]) VALUES (1, 10, 10, CAST(N'2020-04-30T00:45:58.5633352+08:00' AS DateTimeOffset))
INSERT [dbo].[ProductRecentlyViewed_RecentlyViewedProduct] ([Id], [UserId], [ProductId], [LatestViewedOn]) VALUES (2, 12, 20, CAST(N'2020-04-30T01:01:34.1386276+08:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[ProductRecentlyViewed_RecentlyViewedProduct] OFF
SET IDENTITY_INSERT [dbo].[Reviews_Review] ON 

INSERT [dbo].[Reviews_Review] ([Id], [UserId], [Title], [Comment], [Rating], [ReviewerName], [Status], [CreatedOn], [EntityTypeId], [EntityId]) VALUES (1, 10, N'Good', N'very good', 5, N'very good', 5, CAST(N'2018-08-11T19:20:55.4863839+07:00' AS DateTimeOffset), N'Product', 20)
INSERT [dbo].[Reviews_Review] ([Id], [UserId], [Title], [Comment], [Rating], [ReviewerName], [Status], [CreatedOn], [EntityTypeId], [EntityId]) VALUES (2, 10, N'excellent', N'very good', 5, N'Thien', 5, CAST(N'2018-08-11T20:43:11.1216762+07:00' AS DateTimeOffset), N'Product', 22)
SET IDENTITY_INSERT [dbo].[Reviews_Review] OFF
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [ToAllShippingEnabledCountries], [OnlyCountryIdsString], [ToAllShippingEnabledStatesOrProvinces], [OnlyStateOrProvinceIdsString], [AdditionalSettings], [ShippingPriceServiceTypeName]) VALUES (N'FreeShip', N'Free Ship', 1, N'', 1, NULL, 1, NULL, N'{MinimumOrderAmount : 1}', N'SimplCommerce.Module.ShippingFree.Services.FreeShippingServiceProvider,SimplCommerce.Module.ShippingFree')
INSERT [dbo].[Shipping_ShippingProvider] ([Id], [Name], [IsEnabled], [ConfigureUrl], [ToAllShippingEnabledCountries], [OnlyCountryIdsString], [ToAllShippingEnabledStatesOrProvinces], [OnlyStateOrProvinceIdsString], [AdditionalSettings], [ShippingPriceServiceTypeName]) VALUES (N'TableRate', N'Table Rate', 1, N'shipping-table-rate-config', 1, NULL, 1, NULL, NULL, N'SimplCommerce.Module.ShippingTableRate.Services.TableRateShippingServiceProvider,SimplCommerce.Module.ShippingTableRate')
SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] ON 

INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [StateOrProvinceId], [DistrictId], [ZipCode], [Note], [MinOrderSubtotal], [ShippingPrice]) VALUES (1, N'VN', 92, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[ShippingTableRate_PriceAndDestination] ([Id], [CountryId], [StateOrProvinceId], [DistrictId], [ZipCode], [Note], [MinOrderSubtotal], [ShippingPrice]) VALUES (2, N'VN', 92, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ShippingTableRate_PriceAndDestination] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCart_Cart] ON 

INSERT [dbo].[ShoppingCart_Cart] ([Id], [CustomerId], [CreatedById], [CreatedOn], [LatestUpdatedOn], [IsActive], [CouponCode], [CouponRuleName], [ShippingMethod], [IsProductPriceIncludeTax], [ShippingAmount], [TaxAmount], [ShippingData], [OrderNote], [LockedOnCheckout]) VALUES (1, 12, 12, CAST(N'2020-04-30T01:02:15.2713760+08:00' AS DateTimeOffset), CAST(N'2020-04-30T01:02:15.2714371+08:00' AS DateTimeOffset), 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ShoppingCart_Cart] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCart_CartItem] ON 

INSERT [dbo].[ShoppingCart_CartItem] ([Id], [CreatedOn], [ProductId], [Quantity], [CartId]) VALUES (1, CAST(N'2020-04-30T01:02:15.2840117+08:00' AS DateTimeOffset), 20, 1, 1)
SET IDENTITY_INSERT [dbo].[ShoppingCart_CartItem] OFF
SET IDENTITY_INSERT [dbo].[Tax_TaxClass] ON 

INSERT [dbo].[Tax_TaxClass] ([Id], [Name]) VALUES (1, N'Standard VAT')
SET IDENTITY_INSERT [dbo].[Tax_TaxClass] OFF
ALTER TABLE [dbo].[ShoppingCart_Cart] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockedOnCheckout]
GO
ALTER TABLE [dbo].[ActivityLog_Activity]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_Activity_ActivityLog_ActivityType_ActivityTypeId] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityLog_ActivityType] ([Id])
GO
ALTER TABLE [dbo].[ActivityLog_Activity] CHECK CONSTRAINT [FK_ActivityLog_Activity_ActivityLog_ActivityType_ActivityTypeId]
GO
ALTER TABLE [dbo].[Catalog_Category]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Category_Catalog_Category_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Category] CHECK CONSTRAINT [FK_Catalog_Category_Catalog_Category_ParentId]
GO
ALTER TABLE [dbo].[Catalog_Category]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Category_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Category] CHECK CONSTRAINT [FK_Catalog_Category_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Catalog_Brand_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Catalog_Brand] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Catalog_Brand_BrandId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Catalog_Product]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Product_Tax_TaxClass_TaxClassId] FOREIGN KEY([TaxClassId])
REFERENCES [dbo].[Tax_TaxClass] ([Id])
GO
ALTER TABLE [dbo].[Catalog_Product] CHECK CONSTRAINT [FK_Catalog_Product_Tax_TaxClass_TaxClassId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Catalog_ProductAttributeGroup] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductAttribute_Catalog_ProductAttributeGroup_GroupId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue] CHECK CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Catalog_ProductAttribute] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductAttributeValue] CHECK CONSTRAINT [FK_Catalog_ProductAttributeValue_Catalog_ProductAttribute_AttributeId]
GO
ALTER TABLE [dbo].[Catalog_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductCategory] CHECK CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Category_CategoryId]
GO
ALTER TABLE [dbo].[Catalog_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductCategory] CHECK CONSTRAINT [FK_Catalog_ProductCategory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductLink]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_LinkedProductId] FOREIGN KEY([LinkedProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductLink] CHECK CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_LinkedProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductLink]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductLink] CHECK CONSTRAINT [FK_Catalog_ProductLink_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductMedia]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductMedia_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductMedia] CHECK CONSTRAINT [FK_Catalog_ProductMedia_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductMedia]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductMedia_Core_Media_MediaId] FOREIGN KEY([MediaId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductMedia] CHECK CONSTRAINT [FK_Catalog_ProductMedia_Core_Media_MediaId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination] CHECK CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Catalog_ProductOption] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionCombination] CHECK CONSTRAINT [FK_Catalog_ProductOptionCombination_Catalog_ProductOption_OptionId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue] CHECK CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_ProductOption_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Catalog_ProductOption] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductOptionValue] CHECK CONSTRAINT [FK_Catalog_ProductOptionValue_Catalog_ProductOption_OptionId]
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductPriceHistory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory] CHECK CONSTRAINT [FK_Catalog_ProductPriceHistory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductPriceHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Catalog_ProductPriceHistory] CHECK CONSTRAINT [FK_Catalog_ProductPriceHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[Catalog_ProductAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductAttribute_ProductAttributeId]
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId] FOREIGN KEY([ProductTemplateId])
REFERENCES [dbo].[Catalog_ProductTemplate] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog_ProductTemplateProductAttribute] CHECK CONSTRAINT [FK_Catalog_ProductTemplateProductAttribute_Catalog_ProductTemplate_ProductTemplateId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Cms_Menu] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Cms_MenuItem] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Core_Entity] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Comments_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comment_Comments_Comment_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Comments_Comment] ([Id])
GO
ALTER TABLE [dbo].[Comments_Comment] CHECK CONSTRAINT [FK_Comments_Comment_Comments_Comment_ParentId]
GO
ALTER TABLE [dbo].[Comments_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comment_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Comments_Comment] CHECK CONSTRAINT [FK_Comments_Comment_Core_User_UserId]
GO
ALTER TABLE [dbo].[Contacts_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId] FOREIGN KEY([ContactAreaId])
REFERENCES [dbo].[Contacts_ContactArea] ([Id])
GO
ALTER TABLE [dbo].[Contacts_Contact] CHECK CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[Core_Address]  WITH CHECK ADD  CONSTRAINT [FK_Core_Address_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Core_Address] CHECK CONSTRAINT [FK_Core_Address_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser]  WITH CHECK ADD  CONSTRAINT [FK_Core_CustomerGroupUser_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser] CHECK CONSTRAINT [FK_Core_CustomerGroupUser_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser]  WITH CHECK ADD  CONSTRAINT [FK_Core_CustomerGroupUser_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_CustomerGroupUser] CHECK CONSTRAINT [FK_Core_CustomerGroupUser_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_District]  WITH CHECK ADD  CONSTRAINT [FK_Core_District_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Core_District] CHECK CONSTRAINT [FK_Core_District_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Core_Entity]  WITH CHECK ADD  CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [dbo].[Core_EntityType] ([Id])
GO
ALTER TABLE [dbo].[Core_Entity] CHECK CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId]
GO
ALTER TABLE [dbo].[Core_RoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_RoleClaim] CHECK CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_StateOrProvince]  WITH CHECK ADD  CONSTRAINT [FK_Core_StateOrProvince_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Core_StateOrProvince] CHECK CONSTRAINT [FK_Core_StateOrProvince_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultBillingAddressId] FOREIGN KEY([DefaultBillingAddressId])
REFERENCES [dbo].[Core_UserAddress] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultBillingAddressId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultShippingAddressId] FOREIGN KEY([DefaultShippingAddressId])
REFERENCES [dbo].[Core_UserAddress] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_UserAddress_DefaultShippingAddressId]
GO
ALTER TABLE [dbo].[Core_User]  WITH CHECK ADD  CONSTRAINT [FK_Core_User_Core_Vendor_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Core_Vendor] ([Id])
GO
ALTER TABLE [dbo].[Core_User] CHECK CONSTRAINT [FK_Core_User_Core_Vendor_VendorId]
GO
ALTER TABLE [dbo].[Core_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserAddress_Core_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Core_Address] ([Id])
GO
ALTER TABLE [dbo].[Core_UserAddress] CHECK CONSTRAINT [FK_Core_UserAddress_Core_Address_AddressId]
GO
ALTER TABLE [dbo].[Core_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserAddress_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Core_UserAddress] CHECK CONSTRAINT [FK_Core_UserAddress_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserClaim_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserClaim] CHECK CONSTRAINT [FK_Core_UserClaim_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserLogin_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserLogin] CHECK CONSTRAINT [FK_Core_UserLogin_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserToken]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserToken_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserToken] CHECK CONSTRAINT [FK_Core_UserToken_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId] FOREIGN KEY([WidgetId])
REFERENCES [dbo].[Core_Widget] ([Id])
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId] FOREIGN KEY([WidgetZoneId])
REFERENCES [dbo].[Core_WidgetZone] ([Id])
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId]
GO
ALTER TABLE [dbo].[Inventory_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Stock_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Stock] CHECK CONSTRAINT [FK_Inventory_Stock_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Inventory_Stock]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Stock_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Stock] CHECK CONSTRAINT [FK_Inventory_Stock_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Inventory_StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_StockHistory_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Inventory_StockHistory] CHECK CONSTRAINT [FK_Inventory_StockHistory_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Inventory_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Warehouse_Core_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Core_Address] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Warehouse] CHECK CONSTRAINT [FK_Inventory_Warehouse_Core_Address_AddressId]
GO
ALTER TABLE [dbo].[Inventory_Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Warehouse_Core_Vendor_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Core_Vendor] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Warehouse] CHECK CONSTRAINT [FK_Inventory_Warehouse_Core_Vendor_VendorId]
GO
ALTER TABLE [dbo].[Localization_LocalizedContentProperty]  WITH CHECK ADD  CONSTRAINT [FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Localization_Culture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localization_LocalizedContentProperty] CHECK CONSTRAINT [FK_Localization_LocalizedContentProperty_Localization_Culture_CultureId]
GO
ALTER TABLE [dbo].[Localization_Resource]  WITH CHECK ADD  CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Localization_Culture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localization_Resource] CHECK CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[News_NewsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[News_NewsItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_CustomerId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Core_User_LatestUpdatedById] FOREIGN KEY([LatestUpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Core_User_LatestUpdatedById]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_Order_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_Order_ParentId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_BillingAddressId] FOREIGN KEY([BillingAddressId])
REFERENCES [dbo].[Orders_OrderAddress] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_BillingAddressId]
GO
ALTER TABLE [dbo].[Orders_Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_ShippingAddressId] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[Orders_OrderAddress] ([Id])
GO
ALTER TABLE [dbo].[Orders_Order] CHECK CONSTRAINT [FK_Orders_Order_Orders_OrderAddress_ShippingAddressId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[Orders_OrderAddress]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderAddress_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderAddress] CHECK CONSTRAINT [FK_Orders_OrderAddress_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Orders_OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderHistory_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderHistory] CHECK CONSTRAINT [FK_Orders_OrderHistory_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Orders_OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderHistory_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderHistory] CHECK CONSTRAINT [FK_Orders_OrderHistory_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Orders_OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderItem] CHECK CONSTRAINT [FK_Orders_OrderItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Orders_OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderItem_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Orders_OrderItem] CHECK CONSTRAINT [FK_Orders_OrderItem_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Payments_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Payment_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Payments_Payment] CHECK CONSTRAINT [FK_Payments_Payment_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCategory_Catalog_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Catalog_Category] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory] CHECK CONSTRAINT [FK_Pricing_CartRuleCategory_Catalog_Category_CategoryId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCategory_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleCategory] CHECK CONSTRAINT [FK_Pricing_CartRuleCategory_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CartRuleCustomerGroup_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleProduct_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct] CHECK CONSTRAINT [FK_Pricing_CartRuleProduct_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleProduct_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_CartRuleProduct] CHECK CONSTRAINT [FK_Pricing_CartRuleProduct_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Core_User_UserId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_Coupon_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Pricing_Coupon] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CartRuleUsage] CHECK CONSTRAINT [FK_Pricing_CartRuleUsage_Pricing_Coupon_CouponId]
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[Core_CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Core_CustomerGroup_CustomerGroupId]
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId] FOREIGN KEY([CatalogRuleId])
REFERENCES [dbo].[Pricing_CatalogRule] ([Id])
GO
ALTER TABLE [dbo].[Pricing_CatalogRuleCustomerGroup] CHECK CONSTRAINT [FK_Pricing_CatalogRuleCustomerGroup_Pricing_CatalogRule_CatalogRuleId]
GO
ALTER TABLE [dbo].[Pricing_Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Coupon_Pricing_CartRule_CartRuleId] FOREIGN KEY([CartRuleId])
REFERENCES [dbo].[Pricing_CartRule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricing_Coupon] CHECK CONSTRAINT [FK_Pricing_Coupon_Pricing_CartRule_CartRuleId]
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct]  WITH CHECK ADD  CONSTRAINT [FK_ProductComparison_ComparingProduct_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct] CHECK CONSTRAINT [FK_ProductComparison_ComparingProduct_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct]  WITH CHECK ADD  CONSTRAINT [FK_ProductComparison_ComparingProduct_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ProductComparison_ComparingProduct] CHECK CONSTRAINT [FK_ProductComparison_ComparingProduct_Core_User_UserId]
GO
ALTER TABLE [dbo].[Reviews_Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Reply_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Reply] CHECK CONSTRAINT [FK_Reviews_Reply_Core_User_UserId]
GO
ALTER TABLE [dbo].[Reviews_Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Reply_Reviews_Review_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews_Review] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Reply] CHECK CONSTRAINT [FK_Reviews_Reply_Reviews_Review_ReviewId]
GO
ALTER TABLE [dbo].[Reviews_Review]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Review_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Reviews_Review] CHECK CONSTRAINT [FK_Reviews_Review_Core_User_UserId]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Inventory_Warehouse_WarehouseId] FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[Inventory_Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Inventory_Warehouse_WarehouseId]
GO
ALTER TABLE [dbo].[Shipments_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shipment_Orders_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders_Order] ([Id])
GO
ALTER TABLE [dbo].[Shipments_Shipment] CHECK CONSTRAINT [FK_Shipments_Shipment_Orders_Order_OrderId]
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_ShipmentItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem] CHECK CONSTRAINT [FK_Shipments_ShipmentItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_ShipmentItem_Shipments_Shipment_ShipmentId] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipments_Shipment] ([Id])
GO
ALTER TABLE [dbo].[Shipments_ShipmentItem] CHECK CONSTRAINT [FK_Shipments_ShipmentItem_Shipments_Shipment_ShipmentId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Core_District] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_District_DistrictId]
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination]  WITH CHECK ADD  CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[ShippingTableRate_PriceAndDestination] CHECK CONSTRAINT [FK_ShippingTableRate_PriceAndDestination_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[ShoppingCart_Cart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_Cart] CHECK CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[ShoppingCart_Cart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_Cart] CHECK CONSTRAINT [FK_ShoppingCart_Cart_Core_User_CustomerId]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart_Cart_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[ShoppingCart_Cart] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart_CartItem] CHECK CONSTRAINT [FK_ShoppingCart_CartItem_ShoppingCart_Cart_CartId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Core_Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Core_Country] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Core_Country_CountryId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Core_StateOrProvince_StateOrProvinceId] FOREIGN KEY([StateOrProvinceId])
REFERENCES [dbo].[Core_StateOrProvince] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Core_StateOrProvince_StateOrProvinceId]
GO
ALTER TABLE [dbo].[Tax_TaxRate]  WITH CHECK ADD  CONSTRAINT [FK_Tax_TaxRate_Tax_TaxClass_TaxClassId] FOREIGN KEY([TaxClassId])
REFERENCES [dbo].[Tax_TaxClass] ([Id])
GO
ALTER TABLE [dbo].[Tax_TaxRate] CHECK CONSTRAINT [FK_Tax_TaxRate_Tax_TaxClass_TaxClassId]
GO
ALTER TABLE [dbo].[WishList_WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishList_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishList] CHECK CONSTRAINT [FK_WishList_WishList_Core_User_UserId]
GO
ALTER TABLE [dbo].[WishList_WishListItem]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishListItem_Catalog_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Catalog_Product] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishListItem] CHECK CONSTRAINT [FK_WishList_WishListItem_Catalog_Product_ProductId]
GO
ALTER TABLE [dbo].[WishList_WishListItem]  WITH CHECK ADD  CONSTRAINT [FK_WishList_WishListItem_WishList_WishList_WishListId] FOREIGN KEY([WishListId])
REFERENCES [dbo].[WishList_WishList] ([Id])
GO
ALTER TABLE [dbo].[WishList_WishListItem] CHECK CONSTRAINT [FK_WishList_WishListItem_WishList_WishList_WishListId]
GO
