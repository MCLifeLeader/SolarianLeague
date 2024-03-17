if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Category]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Category]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Forum]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Forum]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Group]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Group]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Info]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Member]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Member]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_MemberGroupLink]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_MemberGroupLink]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Post]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Post]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_ReadInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_ReadInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tstdb_Totals]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tstdb_Totals]
GO

CREATE TABLE [dbo].[tstdb_Category] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Forum] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[CategoryID] [int] NULL ,
	[ModeratorID] [int] NULL ,
	[ForumName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GuestAccess] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MemberAccess] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TopicCount] [int] NULL ,
	[PostCount] [int] NULL ,
	[LastPostDate] [datetime] NULL ,
	[Deleted] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Group] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BuiltIn] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Info] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[DBVersion] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Member] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[FName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Username] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HideEmail] [bit] NOT NULL ,
	[ICQ] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Homepage] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Signature] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IP] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Skin] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IncludeSignature] [bit] NOT NULL ,
	[NotifyDefault] [bit] NOT NULL ,
	[PostCount] [int] NULL ,
	[LastLoginDate] [datetime] NULL ,
	[LastPostDate] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_MemberGroupLink] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[MemberID] [int] NOT NULL ,
	[GroupID] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Post] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ForumID] [int] NULL ,
	[TopicID] [int] NULL ,
	[MemberID] [int] NULL ,
	[GuestName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Subject] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Icon] [smallint] NULL ,
	[Message] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PostDate] [datetime] NULL ,
	[ModifyDate] [datetime] NULL ,
	[Active] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[Topic] [bit] NOT NULL ,
	[MailNotice] [bit] NOT NULL ,
	[ReplyCount] [int] NULL ,
	[LastReplyDate] [datetime] NULL ,
	[Hits] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_ReadInfo] (
	[PID] [int] NOT NULL ,
	[UID] [int] NOT NULL ,
	[Date] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tstdb_Totals] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[PostCount] [smallint] NULL ,
	[UserCount] [smallint] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tstdb_Category] WITH NOCHECK ADD 
	CONSTRAINT [aaaaatstdb_Category_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_Forum] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_For__Categ__24927208] DEFAULT (0) FOR [CategoryID],
	CONSTRAINT [DF__tstdb_For__Moder__25869641] DEFAULT (0) FOR [ModeratorID],
	CONSTRAINT [DF__tstdb_For__Topic__267ABA7A] DEFAULT (0) FOR [TopicCount],
	CONSTRAINT [DF__tstdb_For__PostC__276EDEB3] DEFAULT (0) FOR [PostCount],
	CONSTRAINT [DF__tstdb_For__LastP__286302EC] DEFAULT (getdate()) FOR [LastPostDate],
	CONSTRAINT [DF__tstdb_For__Delet__29572725] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [aaaaatstdb_Forum_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_Group] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_Gro__Built__1FCDBCEB] DEFAULT (0) FOR [BuiltIn],
	CONSTRAINT [aaaaatstdb_Group_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_Info] WITH NOCHECK ADD 
	CONSTRAINT [aaaaatstdb_Info_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_Member] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_Mem__HideE__15502E78] DEFAULT (0) FOR [HideEmail],
	CONSTRAINT [DF__tstdb_Mem__Inclu__164452B1] DEFAULT (0) FOR [IncludeSignature],
	CONSTRAINT [DF__tstdb_Mem__Notif__173876EA] DEFAULT (0) FOR [NotifyDefault],
	CONSTRAINT [aaaaatstdb_Member_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[Username]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_MemberGroupLink] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_Mem__Membe__0F975522] DEFAULT (0) FOR [MemberID],
	CONSTRAINT [DF__tstdb_Mem__Group__108B795B] DEFAULT (0) FOR [GroupID],
	CONSTRAINT [aaaaatstdb_MemberGroupLink_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[GroupID],
		[MemberID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_Post] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_Pos__Forum__7F60ED59] DEFAULT (0) FOR [ForumID],
	CONSTRAINT [DF__tstdb_Pos__Topic__00551192] DEFAULT (0) FOR [TopicID],
	CONSTRAINT [DF__tstdb_Pos__Membe__014935CB] DEFAULT (0) FOR [MemberID],
	CONSTRAINT [DF__tstdb_Pos__Guest__023D5A04] DEFAULT ('Guest') FOR [GuestName],
	CONSTRAINT [DF__tstdb_Post__Icon__03317E3D] DEFAULT (1) FOR [Icon],
	CONSTRAINT [DF__tstdb_Pos__PostD__0425A276] DEFAULT (getdate()) FOR [PostDate],
	CONSTRAINT [DF__tstdb_Pos__Activ__0519C6AF] DEFAULT (1) FOR [Active],
	CONSTRAINT [DF__tstdb_Pos__Delet__060DEAE8] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__tstdb_Pos__Topic__07020F21] DEFAULT (0) FOR [Topic],
	CONSTRAINT [DF__tstdb_Pos__MailN__07F6335A] DEFAULT (0) FOR [MailNotice],
	CONSTRAINT [DF__tstdb_Pos__Reply__08EA5793] DEFAULT (0) FOR [ReplyCount],
	CONSTRAINT [DF__tstdb_Pos__LastR__09DE7BCC] DEFAULT (getdate()) FOR [LastReplyDate],
	CONSTRAINT [DF__tstdb_Post__Hits__0AD2A005] DEFAULT (0) FOR [Hits],
	CONSTRAINT [aaaaatstdb_Post_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tstdb_ReadInfo] WITH NOCHECK ADD 
	CONSTRAINT [DF__tstdb_ReadI__PID__79A81403] DEFAULT (0) FOR [PID],
	CONSTRAINT [DF__tstdb_ReadI__UID__7A9C383C] DEFAULT (0) FOR [UID],
	CONSTRAINT [aaaaatstdb_ReadInfo_PK] PRIMARY KEY  NONCLUSTERED 
	(
		[UID],
		[PID]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [Cat_ID] ON [dbo].[tstdb_Category]([ID]) ON [PRIMARY]
GO

 CREATE  INDEX [F_Cat] ON [dbo].[tstdb_Forum]([CategoryID]) ON [PRIMARY]
GO

 CREATE  INDEX [Forum_ID] ON [dbo].[tstdb_Forum]([ID]) ON [PRIMARY]
GO

 CREATE  INDEX [ModeratorID] ON [dbo].[tstdb_Forum]([ModeratorID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[tstdb_Group]([ID]) ON [PRIMARY]
GO

 CREATE  INDEX [Member_id] ON [dbo].[tstdb_Member]([ID]) ON [PRIMARY]
GO

 CREATE  INDEX [Forum_id] ON [dbo].[tstdb_Post]([ForumID]) ON [PRIMARY]
GO

 CREATE  INDEX [MemberID] ON [dbo].[tstdb_Post]([MemberID]) ON [PRIMARY]
GO

 CREATE  INDEX [Topic_ID] ON [dbo].[tstdb_Post]([ID]) ON [PRIMARY]
GO

 CREATE  INDEX [TopicID] ON [dbo].[tstdb_Post]([TopicID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[tstdb_Totals]([ID]) ON [PRIMARY]
GO

