USE [AuditNetDB]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 13/10/2023 10:16:41 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [bigint] IDENTITY(1,1) NOT NULL,
	[InsertedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[JsonData] [nvarchar](max) NULL,
	[EventType] [nvarchar](max) NULL,
	[UserId] [varchar](200) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Events] ADD  CONSTRAINT [DF_Events_InsertedDate]  DEFAULT (getutcdate()) FOR [InsertedDate]
GO
