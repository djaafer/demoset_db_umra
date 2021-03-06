USE [UMRA]
GO
/****** Object:  Table [dbo].[Cache_table_dn_sAMAccountName]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cache_table_dn_sAMAccountName](
	[source] [varchar](255) NULL,
	[distinguishedName] [varchar](500) NOT NULL,
	[sAMAccountName] [varchar](100) NOT NULL,
	[objectSID] [varchar](255) NULL,
	[objectGUID] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Cache_table_dn_sAMAccountName] ON [dbo].[Cache_table_dn_sAMAccountName] 
(
	[distinguishedName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Cache_table_dn_sAMAccountName_objectSID] ON [dbo].[Cache_table_dn_sAMAccountName] 
(
	[objectSID] ASC
)
INCLUDE ( [distinguishedName]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cache_table_ad]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cache_table_ad](
	[source] [varchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[dn] [varchar](500) NULL,
	[attribute_1] [varchar](500) NULL,
	[attribute_2] [varchar](500) NULL,
	[attribute_3] [varchar](500) NULL,
	[attribute_4] [varchar](500) NULL,
	[attribute_5] [varchar](500) NULL,
	[attribute_6] [varchar](500) NULL,
	[attribute_7] [varchar](500) NULL,
	[attribute_8] [varchar](500) NULL,
	[attribute_9] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Cache_table_ad_dn] ON [dbo].[Cache_table_ad] 
(
	[dn] ASC
)
INCLUDE ( [type],
[attribute_1],
[attribute_2],
[attribute_3],
[attribute_4],
[attribute_5],
[attribute_6],
[attribute_7],
[attribute_8],
[attribute_9]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batches]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batches](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[timestamp_created] [datetime] NOT NULL,
	[timestamp_schedule] [datetime] NULL,
	[timestamp_start] [datetime] NULL,
	[timestamp_end] [datetime] NULL,
	[limit_execute_run] [int] NOT NULL,
	[allow_auto_run] [bit] NOT NULL,
	[closed] [bit] NOT NULL,
 CONSTRAINT [PK_Batches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attributes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[is_key] [bit] NOT NULL,
	[is_show] [bit] NOT NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AFAS_UMRA_Employees]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AFAS_UMRA_Employees](
	[bsn] [varchar](255) NULL,
	[mdw] [varchar](255) NULL,
	[nr] [varchar](255) NULL,
	[e_vrlt] [varchar](255) NULL,
	[e_roepnaam] [varchar](255) NULL,
	[e_voornm] [varchar](255) NULL,
	[e_vrvg] [varchar](255) NULL,
	[e_naam] [varchar](255) NULL,
	[p_vrvg] [varchar](255) NULL,
	[p_naam] [varchar](255) NULL,
	[gbrk_naam] [varchar](255) NULL,
	[gbrk_naam_desc] [varchar](50) NULL,
	[geslacht] [varchar](50) NULL,
	[geb_jaar] [varchar](50) NULL,
	[geb_maand] [varchar](50) NULL,
	[geb_dag] [varchar](50) NULL,
	[straat] [varchar](255) NULL,
	[straat_ext] [varchar](255) NULL,
	[huisnr] [varchar](50) NULL,
	[huisnr_ext] [varchar](50) NULL,
	[postcode] [varchar](50) NULL,
	[plaats] [varchar](255) NULL,
	[mobiel] [varchar](50) NULL,
	[mobiel_werk] [varchar](50) NULL,
	[telefoon] [varchar](50) NULL,
	[telefoon_werk] [varchar](50) NULL,
	[mail] [varchar](255) NULL,
	[mail_werk] [varchar](255) NULL,
	[gbl] [varchar](50) NULL,
	[dvb_multiple] [varchar](50) NULL,
	[dvb_code_primary] [varchar](50) NULL,
	[fte_primary] [varchar](50) NULL,
	[func_kd_primary] [varchar](50) NULL,
	[func_oms_primary] [varchar](255) NULL,
	[cost_kd_primary] [varchar](50) NULL,
	[cost_oms_primary] [varchar](255) NULL,
	[org_kd_primary] [varchar](50) NULL,
	[org_oms_primary] [varchar](255) NULL,
	[dat_begin_primary] [varchar](50) NULL,
	[dat_eind_primary] [varchar](50) NULL,
	[dvb_primary_is_main] [varchar](50) NULL,
	[indnst_dat] [varchar](50) NULL,
	[uitdnst_dat] [varchar](50) NULL,
	[dvb] [int] NULL,
	[arbverh_nr] [int] NULL,
	[fte_main] [varchar](50) NULL,
	[func_kd] [varchar](50) NULL,
	[func_oms] [varchar](255) NULL,
	[cost_kd] [varchar](50) NULL,
	[cost_oms] [varchar](255) NULL,
	[org_kd] [varchar](50) NULL,
	[org_oms] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_AFAS_UMRA_Employees] ON [dbo].[AFAS_UMRA_Employees] 
(
	[bsn] ASC,
	[dvb] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NTFS2dbCollectionShares]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NTFS2dbCollectionShares](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](500) NULL,
	[unc_path] [varchar](500) NULL,
	[status] [varchar](500) NULL,
	[is_active] [bit] NOT NULL,
	[col_id] [bigint] NULL,
 CONSTRAINT [PK_NTFS2dbCollectionShares] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notifications](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[mail_to] [varchar](255) NOT NULL,
	[mail_cc] [varchar](255) NULL,
	[mail_bcc] [varchar](255) NULL,
	[mail_from] [varchar](255) NOT NULL,
	[mail_subject] [varchar](max) NOT NULL,
	[mail_body] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[description] [varchar](255) NOT NULL,
	[type_operation] [varchar](100) NOT NULL,
	[status_operation] [varchar](255) NULL,
	[status_script] [varchar](500) NULL,
	[user_operator] [varchar](50) NULL,
	[object_managed_primary] [varchar](255) NULL,
	[object_managed_secondary] [varchar](255) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Log] ON [dbo].[Log] 
(
	[object_managed_primary] ASC,
	[object_managed_secondary] ASC
)
INCLUDE ( [timestamp],
[description],
[user_operator]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobVariables]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobVariables](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_job] [bigint] NOT NULL,
	[variable_name] [varchar](255) NOT NULL,
	[variable_value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_JobVariables] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_task] [bigint] NOT NULL,
	[type] [varchar](100) NOT NULL,
	[timestamp_created] [datetime] NOT NULL,
	[timestamp_start] [datetime] NULL,
	[timestamp_end] [datetime] NULL,
	[status] [varchar](max) NULL,
	[umra_project] [varchar](255) NOT NULL,
	[closed] [bit] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_snapshot] [bigint] NOT NULL,
	[id_type] [bigint] NOT NULL,
	[id_source] [bigint] NOT NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Objects_id_snapshot] ON [dbo].[Objects] 
(
	[id_snapshot] ASC
)
INCLUDE ( [id_type],
[id_source]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sources](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_Sources] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Snapshots]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Snapshots](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[timestamp_start] [datetime] NOT NULL,
	[timestamp_end] [datetime] NULL,
	[status] [varchar](255) NULL,
 CONSTRAINT [PK_Snapshots] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAP_UMRA_Employees]    Script Date: 08/16/2013 11:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAP_UMRA_Employees](
	[PERNO] [varchar](255) NOT NULL,
	[PAYAREA] [varchar](255) NOT NULL,
	[INITIALS] [varchar](255) NULL,
	[LAST_NAME] [varchar](255) NULL,
	[LAST_NAME2] [varchar](255) NULL,
	[FIRSTNAME] [varchar](255) NULL,
	[TITLE] [varchar](255) NULL,
	[TITLE2] [varchar](255) NULL,
	[ARI_TITLE] [varchar](255) NULL,
	[NAMEAFFIX] [varchar](255) NULL,
	[NAMEPREFIX] [varchar](255) NULL,
	[KNOWNAS] [varchar](255) NULL,
	[NAMEFORM] [varchar](255) NULL,
	[GENDER] [varchar](255) NULL,
	[BIRTHDATE] [varchar](255) NULL,
	[TO_DATE] [varchar](255) NULL,
	[FROM_DATE] [varchar](255) NULL,
	[CONTRACT] [varchar](255) NULL,
	[COSTCENTER] [varchar](255) NULL,
	[ORG_UNIT] [varchar](255) NULL,
	[POSITION] [varchar](255) NULL,
	[JOB] [varchar](255) NULL,
	[SUPERVISOR] [varchar](255) NULL,
	[ORGTXT] [varchar](255) NULL,
	[JOBTXT] [varchar](255) NULL,
	[POSTXT] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_attribute_datetime]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_attribute_datetime]
(
	@attribute_value varchar(500)
)
RETURNS datetime
AS
BEGIN
	DECLARE @attribute_value_datetime datetime

	SET @attribute_value_datetime = 
	CONVERT(datetime,(CASE @attribute_value
		WHEN 'Never' THEN GETDATE()+10000
		WHEN '00:00 01/01/1601' THEN GETDATE()+10000
		ELSE @attribute_value
	END),101)

	RETURN @attribute_value_datetime
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnStringToTable]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnStringToTable]
(
	@string_input nvarchar(max),
	@separator char (1)
)
RETURNS @table_result TABLE 
	(string_value nvarchar(max), 
	string_index bigint)
AS
BEGIN
    DECLARE @string_insert nvarchar (max) 
	DECLARE @counter bigint = 0

    WHILE LEN(@string_input) > 0
    BEGIN
        SET @string_insert = LEFT(@string_input,ISNULL(NULLIF(CHARINDEX(@separator, @string_input) - 1, -1),LEN(@string_input)))
        SET @string_input = SUBSTRING(@string_input,ISNULL(NULLIF(CHARINDEX(@separator, @string_input),0),LEN(@string_input)) + 1,LEN(@string_input))
        INSERT INTO @table_result (string_value, string_index) 
        VALUES (@string_insert, @counter)
        SET @counter = @counter + 1

        END

    RETURN
END
GO
/****** Object:  Table [dbo].[Types]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[value] [varchar](500) NULL,
 CONSTRAINT [PK_Temp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tasks](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_batch] [bigint] NOT NULL,
	[hash_unique] [varchar](100) NULL,
	[type] [varchar](100) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[timestamp_created] [datetime] NOT NULL,
	[timestamp_schedule] [datetime] NULL,
	[timestamp_start] [datetime] NULL,
	[timestamp_end] [datetime] NULL,
	[allow_auto_run] [bit] NOT NULL,
	[status] [varchar](255) NULL,
	[closed] [bit] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[keywords] [varchar](255) NULL,
	[category] [varchar](255) NULL,
	[duration_hour] [int] NOT NULL,
	[delay_hour] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
	[direct_provision] [bit] NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TagPermissions]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TagPermissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tag] [bigint] NOT NULL,
	[id_type_permission] [bigint] NOT NULL,
	[id_type_name] [bigint] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[is_allowed] [bit] NOT NULL,
 CONSTRAINT [PK_TagPermissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TagObjectTimers]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagObjectTimers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tagobject] [bigint] NOT NULL,
	[id_type] [bigint] NOT NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
 CONSTRAINT [PK_TagTimers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjectTimers_id_tagobject] ON [dbo].[TagObjectTimers] 
(
	[id_tagobject] ASC
)
INCLUDE ( [id_type],
[date_start]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagObjects]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TagObjects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_tag] [bigint] NOT NULL,
	[id_type] [bigint] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_Tag_objects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_id_tag] ON [dbo].[TagObjects] 
(
	[id_tag] ASC
)
INCLUDE ( [id],
[id_type],
[name],
[date_start],
[date_end],
[is_active]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_id_tag_id_type] ON [dbo].[TagObjects] 
(
	[id_tag] ASC,
	[id_type] ASC
)
INCLUDE ( [name],
[date_start],
[date_end],
[is_active]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_id_tag_id_type_name_is_active] ON [dbo].[TagObjects] 
(
	[id_tag] ASC,
	[id_type] ASC,
	[name] ASC,
	[is_active] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_id_tag_name] ON [dbo].[TagObjects] 
(
	[id_tag] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_id_type_name_is_active] ON [dbo].[TagObjects] 
(
	[id_type] ASC,
	[name] ASC,
	[is_active] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagObjects_name] ON [dbo].[TagObjects] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staging_table]    Script Date: 08/16/2013 11:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staging_table](
	[field_0] [varchar](max) NULL,
	[field_1] [varchar](max) NULL,
	[field_2] [varchar](max) NULL,
	[field_3] [varchar](max) NULL,
	[field_4] [varchar](max) NULL,
	[field_5] [varchar](max) NULL,
	[field_6] [varchar](max) NULL,
	[field_7] [varchar](max) NULL,
	[field_8] [varchar](max) NULL,
	[field_9] [varchar](max) NULL,
	[field_10] [varchar](max) NULL,
	[field_11] [varchar](max) NULL,
	[field_12] [varchar](max) NULL,
	[field_13] [varchar](max) NULL,
	[field_14] [varchar](max) NULL,
	[field_15] [varchar](max) NULL,
	[field_16] [varchar](max) NULL,
	[field_17] [varchar](max) NULL,
	[field_18] [varchar](max) NULL,
	[field_19] [varchar](max) NULL,
	[field_20] [varchar](max) NULL,
	[field_21] [varchar](max) NULL,
	[field_22] [varchar](max) NULL,
	[field_23] [varchar](max) NULL,
	[field_24] [varchar](max) NULL,
	[field_25] [varchar](max) NULL,
	[field_26] [varchar](max) NULL,
	[field_27] [varchar](max) NULL,
	[field_28] [varchar](max) NULL,
	[field_29] [varchar](max) NULL,
	[field_30] [varchar](max) NULL,
	[field_31] [varchar](max) NULL,
	[field_32] [varchar](max) NULL,
	[field_33] [varchar](max) NULL,
	[field_34] [varchar](max) NULL,
	[field_35] [varchar](max) NULL,
	[field_36] [varchar](max) NULL,
	[field_37] [varchar](max) NULL,
	[field_38] [varchar](max) NULL,
	[field_39] [varchar](max) NULL,
	[field_40] [varchar](max) NULL,
	[field_41] [varchar](max) NULL,
	[field_42] [varchar](max) NULL,
	[field_43] [varchar](max) NULL,
	[field_44] [varchar](max) NULL,
	[field_45] [varchar](max) NULL,
	[field_46] [varchar](max) NULL,
	[field_47] [varchar](max) NULL,
	[field_48] [varchar](max) NULL,
	[field_49] [varchar](max) NULL,
	[field_50] [varchar](max) NULL,
	[field_51] [varchar](max) NULL,
	[field_52] [varchar](max) NULL,
	[field_53] [varchar](max) NULL,
	[field_54] [varchar](max) NULL,
	[field_55] [varchar](max) NULL,
	[field_56] [varchar](max) NULL,
	[field_57] [varchar](max) NULL,
	[field_58] [varchar](max) NULL,
	[field_59] [varchar](max) NULL,
	[field_60] [varchar](max) NULL,
	[field_61] [varchar](max) NULL,
	[field_62] [varchar](max) NULL,
	[field_63] [varchar](max) NULL,
	[field_64] [varchar](max) NULL,
	[field_65] [varchar](max) NULL,
	[field_66] [varchar](max) NULL,
	[field_67] [varchar](max) NULL,
	[field_68] [varchar](max) NULL,
	[field_69] [varchar](max) NULL,
	[field_70] [varchar](max) NULL,
	[field_71] [varchar](max) NULL,
	[field_72] [varchar](max) NULL,
	[field_73] [varchar](max) NULL,
	[field_74] [varchar](max) NULL,
	[field_75] [varchar](max) NULL,
	[field_76] [varchar](max) NULL,
	[field_77] [varchar](max) NULL,
	[field_78] [varchar](max) NULL,
	[field_79] [varchar](max) NULL,
	[field_80] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spTags_permissions_get_direct]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_permissions_get_direct]
	@name_input varchar(500),
	@type_permission varchar(50) = NULL,
	@tag_is_active bit = 1,
	@is_allowed bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL AND LEN(@type_permission) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	

	SELECT 
	t.id,
	t.description,
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active,
	t.direct_provision,
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_user) as 'users',
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_group) as 'groups'	
	FROM TagPermissions t_p
	INNER JOIN Tags t ON t.id = t_p.id_tag
	WHERE (t_p.id_type_permission = @id_type_p OR @type_permission IS NULL)
	AND (t_p.is_allowed = @is_allowed OR @is_allowed IS NULL)
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t_p.name = @name_input)
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_update]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_update]
	@id_task bigint,
	@description varchar(255),
	@allow_auto_run bit,
	@timestamp_schedule datetime
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 AND LEN(@description) > 0 AND LEN(@allow_auto_run) > 0 BEGIN
		UPDATE Tasks
		SET description = @description,
		allow_auto_run = @allow_auto_run
		WHERE id = @id_task
		
		IF LEN(@timestamp_schedule) > 0 BEGIN
			UPDATE Tasks 
			SET timestamp_schedule = @timestamp_schedule
			WHERE id = @id_task
		END
	END

	SELECT @id_task AS 'id_task'
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_start]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_start]
	@id_task bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		UPDATE Tasks
		SET timestamp_start = GETDATE()
		WHERE id = @id_task
	END

	SELECT @id_task AS 'id_task'
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_jobs_get]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_jobs_get]
	@id_task bigint,
	@closed bit
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		SELECT j.id,
		j.umra_project,
		j.type,
		j.timestamp_created,
		j.timestamp_start,
		j.timestamp_end,
		j.status,
		j.closed
		FROM Jobs j
		WHERE j.id_task = @id_task
		AND j.closed = @closed
		ORDER BY j.timestamp_created
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_hash_unique]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_hash_unique]
	@id_task bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		DECLARE @hash_unique varchar(255)
		
		SET @hash_unique = (SELECT SUM((HASHBYTES( 'MD5', 
		t.description + 
		t.type +
		j.type +
		j.umra_project + 
		jv.variable_name +
		jv.variable_value)*1) & 0xFFFFF) as 'hash'
		FROM Tasks t
		INNER JOIN Jobs j ON j.id_task = t.id
		INNER JOIN JobVariables jv ON jv.id_job = j.id
		WHERE t.id = @id_task
		GROUP BY t.id)
	
		UPDATE Tasks
		SET hash_unique = @hash_unique
		WHERE id = @id_task
		
		DECLARE @id_task_duplicate bigint
		SET @id_task_duplicate = (SELECT id FROM Tasks 
		WHERE hash_unique = @hash_unique
		AND NOT id = @id_task
		AND closed = 0)
		
		IF @id_task_duplicate > 0 BEGIN
			DELETE FROM Tasks WHERE id = @id_task
			
			DECLARE @id_jobs_duplicate TABLE (id bigint)
			INSERT INTO @id_jobs_duplicate
			SELECT id FROM Jobs WHERE id_task = @id_task
			
			DELETE FROM JobVariables WHERE id_job IN (SELECT id FROM @id_jobs_duplicate)
			DELETE FROM Jobs WHERE id IN (SELECT id FROM @id_jobs_duplicate)
		END
	END
	
	SELECT @id_task AS 'id_task'
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_get]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_get]
	@id_task bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		SELECT t.id,
		t.type,
		t.description,
		t.timestamp_created,
		t.timestamp_schedule,
		t.timestamp_start,
		t.timestamp_end,
		t.allow_auto_run,
		t.status,
		t.closed,
		(SELECT COUNT(j.id) FROM Jobs j
		WHERE j.closed = 0 
		AND j.id_task = t.id) AS 'jobs-open',
		(SELECT COUNT(j.id) FROM Jobs j
		WHERE j.closed = 1
		AND j.id_task = t.id) AS 'jobs-closed'
		FROM Tasks t
		WHERE t.id = @id_task
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_finish]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_finish]
	@id_task bigint,
	@status varchar(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @task_jobs_open int
	SET @task_jobs_open = 
	(SELECT COUNT(j.id) 
	FROM Jobs j
	INNER JOIN Tasks t ON j.id_task = t.id
	WHERE t.id = @id_task
	AND j.closed = 0)
	
	IF @id_task > 0 AND @task_jobs_open = 0 BEGIN
		UPDATE Tasks
		SET timestamp_end = GETDATE(),
		status = @status,
		closed = 1
		WHERE id = @id_task
	END

	SELECT @id_task AS 'id_task'
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_close]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_close]
	@id_task bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		DECLARE @id_jobs TABLE (id bigint)
		
		INSERT INTO @id_jobs
		SELECT Jobs.id FROM Jobs
		WHERE Jobs.id_task = @id_task
	
		UPDATE Jobs
		SET closed = 1,
		timestamp_end = GETDATE()
		WHERE id IN (SELECT id FROM @id_jobs)
		
		UPDATE Tasks
		SET closed = 1,
		timestamp_end = GETDATE()
		WHERE id = @id_task
	END

	SELECT @id_task AS 'id_task'
END
GO
/****** Object:  StoredProcedure [dbo].[spTask_add]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTask_add]
	@id_batch bigint,
	@type varchar(100),
	@description varchar(255),
	@allow_auto_run bit,
	@timestamp_schedule datetime
AS
BEGIN
	SET NOCOUNT ON;
	
	IF LEN(@id_batch) > 0 AND LEN(@description) > 0 AND LEN(@type) > 0 BEGIN
		INSERT INTO Tasks (id_batch, type, description, allow_auto_run) 
		VALUES (@id_batch, @type, @description, @allow_auto_run)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_task
		
		IF NOT @timestamp_schedule IS NULL BEGIN
			DECLARE @id_task bigint
			SET @id_task = (SELECT CONVERT(varchar, SCOPE_IDENTITY()))
			UPDATE Tasks 
			SET timestamp_schedule = @timestamp_schedule
			WHERE id = @id_task
		END
	END
	ELSE BEGIN
		SELECT '0' AS 'id_task'
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_table_objects]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_table_objects]
	@type_object varchar(255) = NULL,
	@tag_is_active bit = 1,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END		

	SELECT
	t_o.id_tag,
	t_o.id,
	t_o.name,
	c.sAMAccountName,
	t_t_o.name,
	t_o.date_start,
	t_o.date_end
	FROM TagObjects t_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON t_o.name = c.objectSID
	LEFT JOIN Types t_t_o ON t_t_o.id = t_o.id_type
	WHERE (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)		
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_user_tag_count]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_user_tag_count]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	c_u.sAMAccountName,
	COUNT(t.id) 'count_tag'
	FROM Cache_table_dn_sAMAccountName c_u
	INNER JOIN TagObjects t_o_u ON c_u.objectSID = t_o_u.name
		AND t_o_u.id_type = (SELECT id FROM Types WHERE name = 'user')
	INNER JOIN Tags t ON t.id = t_o_u.id_tag
	GROUP BY c_u.sAMAccountName
	ORDER BY c_u.sAMAccountName
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_timers_chart]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_timers_chart]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT COUNT(t_o_t.id) AS '>5000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 4000 AND 5000) AS '4000-5000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 3000 AND 4000) AS '3000-4000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 2000 AND 3000) AS '2000-3000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 1000 AND 2000) AS '1000-2000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 500 AND 1000) AS '500-1000',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 250 AND 500) AS '250-500',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 100 AND 250) AS '100-250',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 50 AND 100) AS '50-100',
	(SELECT COUNT(t_o_t.id) FROM TagObjectTimers t_o_t WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) BETWEEN 0 AND 50) AS '0-50'
	FROM TagObjectTimers t_o_t
	WHERE DATEDIFF(hour, t_o_t.date_start, GETDATE()) > 5000
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_overview_chart]    Script Date: 08/16/2013 11:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_overview_chart]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT COUNT(DISTINCT t_o_u.name) AS 'Tag users',
	(SELECT COUNT(o.id) FROM Objects o WHERE id_type = (SELECT id FROM Types WHERE name = 'user') AND o.id_snapshot = (SELECT MAX(id) FROM Snapshots)) AS 'Snapshot users',
	(SELECT COUNT(DISTINCT t_o_g.name) FROM TagObjects t_o_g WHERE t_o_g.id_type = (SELECT id FROM Types WHERE name = 'group')) AS 'Tag groups',
	(SELECT COUNT(o.id) FROM Objects o WHERE id_type = (SELECT id FROM Types WHERE name = 'group') AND o.id_snapshot = (SELECT MAX(id) FROM Snapshots)) AS 'Snapshot groups' ,
	(SELECT COUNT(DISTINCT t_o_d.name) FROM TagObjects t_o_d WHERE t_o_d.is_active = 1) AS 'Tag objects enabled',
	(SELECT COUNT(DISTINCT t_o_d.name) FROM TagObjects t_o_d WHERE t_o_d.is_active = 0) AS 'Tag objects disabled',
	(SELECT COUNT(DISTINCT t_p.name) FROM TagPermissions t_p WHERE t_p.is_allowed = 1) AS 'Tag permissions'
	FROM TagObjects t_o_u
	WHERE t_o_u.id_type = (SELECT id FROM Types WHERE name = 'user')
END
GO
/****** Object:  View [dbo].[Staging_table_9]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_9]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_80]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_80]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75, field_76, field_77, field_78, field_79,
	field_80
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_8]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_8]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_79]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_79]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75, field_76, field_77, field_78, field_79
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_78]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_78]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75, field_76, field_77, field_78
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_77]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_77]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75, field_76, field_77
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_76]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_76]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75, field_76
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_75]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_75]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74, field_75
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_74]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_74]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73, field_74
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_73]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_73]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72, field_73
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_72]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_72]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71, field_72
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_71]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_71]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70, field_71
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_70]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_70]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69,
	field_70
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_7]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_7]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_69]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_69]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68, field_69
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_68]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_68]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67, field_68
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_67]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_67]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66, field_67
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_66]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_66]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65, field_66
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_65]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_65]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64, field_65
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_64]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_64]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63, field_64
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_63]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_63]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62, field_63
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_62]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_62]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61, field_62
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_61]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_61]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60, field_61
FROM Staging_table
GO
/****** Object:  View [dbo].[Staging_table_60]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_60]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59,
	field_60
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_6]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_6]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_59]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_59]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58, field_59
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_58]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_58]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57, field_58
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_57]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_57]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56, field_57
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_56]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_56]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55, field_56
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_55]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_55]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54, field_55
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_54]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_54]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53, field_54
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_53]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_53]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52, field_53
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_52]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_52]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51, field_52
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_51]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_51]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50, field_51
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_50]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_50]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49,
	field_50
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_5]    Script Date: 08/16/2013 11:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_5]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_49]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_49]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48, field_49
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_48]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_48]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47, field_48
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_47]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_47]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46, field_47
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_46]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_46]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45, field_46
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_45]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_45]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44, field_45
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_44]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_44]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43, field_44
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_43]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_43]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42, field_43
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_42]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_42]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41, field_42
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_41]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_41]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40, field_41
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_40]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_40]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39,
	field_40
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_4]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_4]
AS
SELECT     field_0, field_1, field_2, field_3, field_4
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_39]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_39]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38, field_39
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_38]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_38]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37, field_38
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_37]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_37]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36, field_37
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_36]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_36]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35, field_36
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_35]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_35]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34, field_35
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_34]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_34]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33, field_34
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_33]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_33]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32, field_33
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_32]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_32]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31, field_32
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_31]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_31]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30, field_31
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_30]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_30]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29,
	field_30
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_3]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_3]
AS
SELECT     field_0, field_1, field_2, field_3
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_29]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_29]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28, field_29
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_28]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_28]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27, field_28
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_27]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_27]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26, field_27
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_26]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_26]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25, field_26
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_25]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_25]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24, field_25
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_24]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_24]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23, field_24
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_23]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_23]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22, field_23
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_22]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_22]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21, field_22
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_21]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_21]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20, field_21
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_20]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_20]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19,
	field_20
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_2]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_2]
AS
SELECT     field_0, field_1, field_2
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_19]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_19]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18, field_19
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_18]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_18]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17, field_18
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_17]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_17]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16, field_17
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_16]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_16]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15, field_16
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_15]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_15]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14, field_15
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_14]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_14]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13, field_14
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_13]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_13]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12, field_13
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_12]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_12]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11, field_12
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_11]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_11]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10, field_11
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_10]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_10]
AS
SELECT     field_0, field_1, field_2, field_3, field_4, field_5, field_6, field_7, field_8, field_9,
	field_10
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_1]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_1]
AS
SELECT     field_0, field_1
FROM         dbo.Staging_table
GO
/****** Object:  View [dbo].[Staging_table_0]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Staging_table_0]
AS
SELECT     field_0
FROM         dbo.Staging_table
GO
/****** Object:  StoredProcedure [dbo].[spSAP_UMRA_Employee_get_details]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSAP_UMRA_Employee_get_details]
	@PERNO varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	c.PERNO,
	c.PAYAREA,
	c.INITIALS,
	c.LAST_NAME,
	c.LAST_NAME2,
	c.FIRSTNAME,
	c.TITLE,
	c.TITLE2,
	c.ARI_TITLE,
	c.NAMEAFFIX,
	c.NAMEPREFIX,
	c.KNOWNAS,
	c.NAMEFORM,
	c.GENDER,
	c.BIRTHDATE,
	c.TO_DATE,
	c.FROM_DATE,
	c.CONTRACT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.POSITION,
	c.JOB,
	c.SUPERVISOR,
	c.ORGTXT,
	c.JOBTXT,
	c.POSTXT
	FROM SAP_UMRA_Employees c
	WHERE c.PERNO = @PERNO

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spNTFS2dbCollectionShares_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNTFS2dbCollectionShares_get]
	@is_active bit = NULL,
	@name varchar(255) = NULL,
	@description varchar(255) = NULL,
	@id bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	n_s.id,
	n_s.name,
	n_s.description,
	n_s.unc_path,
	n_s.status,
	n_s.is_active
	FROM NTFS2dbCollectionShares n_s
	WHERE (n_s.is_active = @is_active OR @is_active IS NULL)
	AND (n_s.name = @name OR @name IS NULL)
	AND (n_s.description = @description OR @description IS NULL)
	AND (n_s.id = @id OR @id IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[spNTFS2dbCollectionShare_save]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNTFS2dbCollectionShare_save]
	@name varchar(255),
	@description varchar(500),
	@unc_path varchar(500),
	@status varchar(500),
	@is_active bit = 1,
	@col_id bigint = 0,
	@id bigint = 0
AS
BEGIN
	SET NOCOUNT ON;

	IF @id > 0 BEGIN
		IF LEN(@description) > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET description = @description
			WHERE id = @id
		END
		IF LEN(@name) > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET name = @name
			WHERE id = @id
		END
		IF LEN(@unc_path) > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET unc_path = @unc_path
			WHERE id = @id
		END
		IF LEN(@status) > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET status = @status
			WHERE id = @id
		END
		IF @col_id > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET col_id = @col_id
			WHERE id = @id
		END
		
		UPDATE NTFS2dbCollectionShares
		SET is_active = @is_active
		WHERE id = @id

		SELECT @id AS 'id_ntfs2dbcollectionshare'
	END
	ELSE BEGIN
		DECLARE @id_existing bigint = 0
		SET @id_existing = (SELECT n_s.id FROM NTFS2dbCollectionShares n_s WHERE unc_path = @unc_path)
	
		IF @id_existing > 0 BEGIN
			UPDATE NTFS2dbCollectionShares
			SET description = @description,
			status = @status,
			name = @name,
			is_active = @is_active,
			col_id = @col_id
			WHERE id = @id_existing
			SELECT CONVERT(varchar, @id_existing) AS 'id_ntfs2dbcollectionshare'
		END
		ELSE BEGIN
			INSERT INTO NTFS2dbCollectionShares(name, description, unc_path, status, is_active, col_id) 
			VALUES (@name, @description, @unc_path, @status, @is_active, @col_id)
			
			DECLARE @id_ntfs2dbcollectionshare bigint
			SET @id_ntfs2dbcollectionshare = (SELECT SCOPE_IDENTITY())
			SELECT CONVERT(varchar, @id_ntfs2dbcollectionshare) AS 'id_ntfs2dbcollectionshare'
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spNTFS2dbCollectionShare_delete]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNTFS2dbCollectionShare_delete]
	@id_ntfs2dbcollectionshare bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_ntfs2dbcollectionshare > 0 BEGIN
		DELETE FROM NTFS2dbCollectionShares WHERE id = @id_ntfs2dbcollectionshare
		SELECT @id_ntfs2dbcollectionshare AS 'id_ntfs2dbcollectionshare'
	END
	ELSE BEGIN
		SELECT '0' AS 'id_ntfs2dbcollectionshare'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spNotifications_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNotifications_get]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT id,
	description,
	type
	FROM Notifications
END
GO
/****** Object:  StoredProcedure [dbo].[spNotification_save]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNotification_save]
	@description varchar(255),
	@type varchar(255),
	@mail_to varchar(255),
	@mail_cc varchar(255),
	@mail_bcc varchar(255),
	@mail_from varchar(255),
	@mail_subject varchar(MAX),
	@mail_body varchar(MAX),
	@id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id > 0 BEGIN
		IF LEN(@description) > 0 BEGIN
			UPDATE Notifications
			SET description = @description
			WHERE id = @id
		END	
		IF LEN(@type) > 0 BEGIN
			UPDATE Notifications
			SET type = @type
			WHERE id = @id
		END
		IF LEN(@mail_to) > 0 BEGIN
			UPDATE Notifications
			SET mail_to = @mail_to
			WHERE id = @id		
		END
		IF LEN(@mail_cc) > 0 BEGIN
			UPDATE Notifications
			SET mail_cc = @mail_cc
			WHERE id = @id		
		END
		IF LEN(@mail_bcc) > 0 BEGIN
			UPDATE Notifications
			SET mail_bcc = @mail_bcc
			WHERE id = @id		
		END				
		IF LEN(@mail_from) > 0 BEGIN
			UPDATE Notifications
			SET mail_from = @mail_from
			WHERE id = @id		
		END
		IF LEN(@mail_subject) > 0 BEGIN
			UPDATE Notifications
			SET mail_subject = @mail_subject
			WHERE id = @id		
		END
		IF LEN(@mail_body) > 0 BEGIN
			UPDATE Notifications
			SET mail_body = @mail_body
			WHERE id = @id		
		END
				
		SELECT @id AS 'id_notification'
	END
	ELSE BEGIN
		INSERT INTO Notifications (description, type, mail_to, mail_cc, mail_bcc, mail_from, mail_subject, mail_body) 
		VALUES (@description, @type, @mail_to, @mail_cc, @mail_bcc, @mail_from, @mail_subject, @mail_body)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS 'id_notification'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spNotification_get_type]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNotification_get_type]
	@type varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF LEN(@type) > 0 BEGIN
		SELECT id
		FROM Notifications
		WHERE type = @type
	END
	ELSE BEGIN
		SELECT '0' AS 'id'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spNotification_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNotification_get]
	@id_notification bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_notification > 0 BEGIN
		SELECT id, 
		description,
		type,
		mail_to,
		mail_cc,
		mail_bcc,
		mail_from,
		mail_subject,
		mail_body
		FROM Notifications
		WHERE id = @id_notification
	END
	ELSE BEGIN
		SELECT '0' AS 'id',
		'' AS 'description',
		'' AS 'type',
		'' AS 'mail_to',
		'' AS 'mail_cc',
		'' AS 'mail_bcc',
		'' AS 'mail_from',
		'' AS 'mail_subject',
		'' AS 'mail_body'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spNotification_delete]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNotification_delete]
	@id_notification bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_notification > 0 BEGIN
		DELETE FROM Notifications WHERE id = @id_notification
		SELECT @id_notification AS 'id_notification'
	END
	ELSE BEGIN
		SELECT '0' AS 'id_notification'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLog_get_all]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLog_get_all]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT TOP 1000 l.id,
	l.timestamp,
	l.description,
	l.type_operation,
	l.status_operation,
	l.status_script,
	l.user_operator,
	l.object_managed_primary,
	l.object_managed_secondary
	FROM Log l
	ORDER BY l.timestamp DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spLog_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLog_get]
	@id bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id > 0 BEGIN
		SELECT l.id,
		l.timestamp,
		l.description,
		l.type_operation,
		l.status_operation,
		l.status_script,
		l.user_operator,
		l.object_managed_primary,
		l.object_managed_secondary
		FROM Log l
		WHERE l.id = @id
		ORDER BY l.timestamp DESC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLog_add]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLog_add]
	@description varchar(255),
	@type_operation varchar(100),
	@status_operation varchar(255),
	@status_script varchar(255),
	@user_operator varchar(50),
	@object_managed_primary varchar(255) = NULL,
	@object_managed_secondary varchar(255) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @object_managed_primary_SAM varchar(50)
	DECLARE @object_managed_secondary_SAM varchar(50)
	
	IF LEN(@object_managed_primary) > 0 BEGIN
		SET @object_managed_primary_SAM = (SELECT TOP 1 c.sAMAccountName
		FROM Cache_table_dn_sAMAccountName c
		WHERE c.distinguishedName = @object_managed_primary)
		
		IF LEN(@object_managed_primary_SAM) > 0 BEGIN
			SET @object_managed_primary = @object_managed_primary_SAM
		END
	END
	
	IF LEN(@object_managed_secondary) > 0 BEGIN
		SET @object_managed_secondary_SAM = (SELECT TOP 1 c.sAMAccountName
		FROM Cache_table_dn_sAMAccountName c
		WHERE c.distinguishedName = @object_managed_secondary)
		
		IF LEN(@object_managed_secondary_SAM) > 0 BEGIN
			SET @object_managed_secondary = @object_managed_secondary_SAM
		END
	END	
	
	IF LEN(@description) > 0 AND LEN(@type_operation) > 0 AND LEN(@status_operation) > 0 BEGIN
		INSERT INTO Log (description, type_operation, status_operation, status_script, user_operator, object_managed_primary, object_managed_secondary) 
		VALUES (@description, @type_operation, @status_operation, @status_script, @user_operator, @object_managed_primary, @object_managed_secondary)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_log
	END
	ELSE BEGIN
		SELECT '0' AS 'id_log'
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[spJobvariable_add]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spJobvariable_add]
	@id_job bigint,
	@variable_name varchar(255),
	@variable_value varchar(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_job > 0 BEGIN
		INSERT INTO JobVariables (id_job, variable_name, variable_value) 
		VALUES (@id_job, @variable_name, @variable_value)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_jobvariable
	END
	ELSE BEGIN
		SELECT '0' AS 'id_jobvariable'
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[spJob_start]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spJob_start]
	@id_job bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_job > 0 BEGIN
		UPDATE Jobs
		SET timestamp_start = GETDATE()
		WHERE id = @id_job
	END

	SELECT @id_job AS 'id_job'
END
GO
/****** Object:  StoredProcedure [dbo].[spJob_jobvariables_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spJob_jobvariables_get]
	@id_job bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_job > 0 BEGIN
		SELECT id,
		variable_name,
		variable_value
		FROM JobVariables
		WHERE id_job = @id_job
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spJob_finish]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spJob_finish]
	@id_job bigint,
	@status varchar(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_job > 0 BEGIN
		UPDATE Jobs
		SET timestamp_end = GETDATE(),
		status = @status,
		closed = 1
		WHERE id = @id_job
	END

	SELECT @id_job AS 'id_job'
END
GO
/****** Object:  StoredProcedure [dbo].[spJob_add]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spJob_add]
	@id_task bigint,
	@type varchar(100),
	@umra_project varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_task > 0 BEGIN
		INSERT INTO Jobs (id_task, type, umra_project) 
		VALUES (@id_task, @type, @umra_project)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_job
	END
	ELSE BEGIN
		SELECT '0' AS 'id_job'
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[spCache_object_delete]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCache_object_delete]
	@name_object varchar(500)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF LEN(@name_object) > 0 BEGIN
		DELETE FROM Cache_table_ad WHERE dn = @name_object
		DELETE FROM Cache_table_dn_sAMAccountName WHERE distinguishedName = @name_object
		SELECT @name_object
	END
	ELSE BEGIN
		SELECT '' AS 'name_object'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spBatches_get_auto]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatches_get_auto]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT id, 
	description,
	timestamp_created,
	timestamp_schedule,
	timestamp_start,
	timestamp_end,
	limit_execute_run,
	allow_auto_run,
	closed
	FROM Batches
	WHERE closed = 0
	AND allow_auto_run = 1
	AND (timestamp_schedule < GETDATE() OR timestamp_schedule IS NULL)
	ORDER BY timestamp_schedule, timestamp_created
END
GO
/****** Object:  StoredProcedure [dbo].[spBatches_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatches_get]
	@closed bit
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT b.id, 
	b.description,
	b.timestamp_created,
	b.timestamp_schedule,
	b.timestamp_start,
	b.timestamp_end,
	b.limit_execute_run,
	b.allow_auto_run,
	b.closed,
	(SELECT COUNT(t.id) FROM Tasks t
	WHERE t.id_batch = b.id 
	AND t.closed = 0) AS 'tasks-open',
	(SELECT COUNT(t.id) FROM Tasks t
	WHERE t.id_batch = b.id
	AND t.closed = 1) AS 'tasks-closed'	
	FROM Batches b
	WHERE b.closed = @closed
	ORDER BY b.timestamp_created DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_update]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_update]
	@id_batch bigint,
	@description varchar(255),
	@limit_execute_run int,
	@allow_auto_run bit,
	@timestamp_schedule datetime
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_batch > 0 AND LEN(@description) > 0 BEGIN
		UPDATE Batches
		SET description = @description,
		limit_execute_run = @limit_execute_run,
		allow_auto_run = @allow_auto_run
		WHERE id = @id_batch
		
		IF LEN(@timestamp_schedule) > 0 BEGIN
			UPDATE Batches 
			SET timestamp_schedule = @timestamp_schedule
			WHERE id = @id_batch
		END
	END

	SELECT @id_batch AS 'id_batch'
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_tasks_get_auto]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_tasks_get_auto]
	@id_batch bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_batch > 0 BEGIN
		SELECT t.id,
		t.type,
		t.description,
		t.timestamp_created,
		t.timestamp_schedule,
		t.timestamp_start,
		t.timestamp_end,
		t.allow_auto_run,
		t.status,
		t.closed
		FROM Tasks t
		WHERE t.closed = 0
		AND t.id_batch = @id_batch
		AND t.allow_auto_run = 1
		AND (t.timestamp_schedule < GETDATE() OR t.timestamp_schedule IS NULL)
		ORDER BY t.timestamp_schedule, t.timestamp_created
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_tasks_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_tasks_get]
	@id_batch bigint,
	@scheduled_due bit,
	@closed bit
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_batch > 0 BEGIN
		IF @scheduled_due = 0 BEGIN
			SELECT t.id,
			t.type,
			t.description,
			t.timestamp_created,
			t.timestamp_schedule,
			t.timestamp_start,
			t.timestamp_end,
			t.allow_auto_run,
			t.status,
			t.closed,
			(SELECT COUNT(j.id) FROM Jobs j
			WHERE j.closed = 0 
			AND j.id_task = t.id) AS 'jobs-open',
			(SELECT COUNT(j.id) FROM Jobs j
			WHERE j.closed = 1
			AND j.id_task = t.id) AS 'jobs-closed'
			FROM Tasks t
			WHERE t.id_batch = @id_batch
			AND t.closed = @closed
			ORDER BY t.timestamp_created
		END
		ELSE BEGIN
			SELECT t.id,
			t.type,
			t.description,
			t.timestamp_created,
			t.timestamp_schedule,
			t.timestamp_start,
			t.timestamp_end,
			t.allow_auto_run,
			t.status,
			t.closed,
			(SELECT COUNT(j.id) FROM Jobs j
			WHERE j.closed = 0 
			AND j.id_task = t.id) AS 'jobs-open',
			(SELECT COUNT(j.id) FROM Jobs j
			WHERE j.closed = 1
			AND j.id_task = t.id) AS 'jobs-closed'
			FROM Tasks t
			WHERE t.id_batch = @id_batch
			AND t.closed = @closed
			AND (t.timestamp_schedule < GETDATE() OR t.timestamp_schedule IS NULL)
			ORDER BY t.timestamp_created		
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_start]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_start]
	@id_batch bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_batch > 0 BEGIN
		UPDATE Batches
		SET timestamp_start = GETDATE()
		WHERE id = @id_batch
	END

	SELECT @id_batch AS 'id_batch'
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_get]
	@id_batch bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT b.id, 
	b.description,
	b.timestamp_created,
	b.timestamp_schedule,
	b.timestamp_start,
	b.timestamp_end,
	b.limit_execute_run,
	b.allow_auto_run,
	b.closed,
	(SELECT COUNT(t.id) FROM Tasks t
	WHERE t.id_batch = b.id 
	AND t.closed = 0) AS 'tasks-open',
	(SELECT COUNT(t.id) FROM Tasks t
	WHERE t.id_batch = b.id
	AND t.closed = 1) AS 'tasks-closed'	
	FROM Batches b
	WHERE b.id = @id_batch
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_finish]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_finish]
	@id_batch bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @batch_tasks_open int
	SET @batch_tasks_open = 
	(SELECT COUNT(Tasks.id) 
	FROM Tasks
	WHERE id_batch = @id_batch
	AND Tasks.closed = 0)	
	
	IF @id_batch > 0 AND @batch_tasks_open = 0 BEGIN
		UPDATE Batches
		SET timestamp_end = GETDATE(),
		closed = 1
		WHERE id = @id_batch
	END

	SELECT @id_batch AS 'id_batch'
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_close]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_close]
	@id_batch bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id_batch > 0 BEGIN
		DECLARE @id_tasks TABLE (id bigint)
		DECLARE @id_jobs TABLE (id bigint)
	
		INSERT INTO @id_tasks
		SELECT Tasks.id FROM Tasks
		WHERE Tasks.id_batch = @id_batch
		
		INSERT INTO @id_jobs
		SELECT Jobs.id FROM Jobs
		WHERE Jobs.id_task IN (SELECT id FROM @id_tasks)
	
		UPDATE Jobs
		SET closed = 1,
		timestamp_end = GETDATE()
		WHERE id IN (SELECT id FROM @id_jobs)
		
		UPDATE Tasks
		SET closed = 1,
		timestamp_end = GETDATE()
		WHERE id IN (SELECT id FROM @id_tasks)
		
		UPDATE Batches
		SET closed = 1,
		timestamp_end = GETDATE()
		WHERE id = @id_batch
	END

	SELECT @id_batch AS 'id_batch'
END
GO
/****** Object:  StoredProcedure [dbo].[spBatch_add]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBatch_add]
	@description varchar(255),
	@limit_execute_run int,
	@allow_auto_run bit,
	@timestamp_schedule datetime
AS
BEGIN
	SET NOCOUNT ON;
	
	IF LEN(@description) > 0 BEGIN
		INSERT INTO Batches (description, limit_execute_run, allow_auto_run) 
		VALUES (@description, @limit_execute_run, @allow_auto_run)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_batch
		
		IF NOT @timestamp_schedule IS NULL BEGIN
			DECLARE @id_batch bigint
			SET @id_batch = (SELECT CONVERT(varchar, SCOPE_IDENTITY()))
			UPDATE Batches 
			SET timestamp_schedule = @timestamp_schedule
			WHERE id = @id_batch
		END
	END
	ELSE BEGIN
		SELECT '0' AS 'id_batch'
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employee_get_details]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employee_get_details]
	@bsn varchar(50),
	@dvb varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	c.e_vrlt,
	c.e_roepnaam,
	c.e_voornm,
	c.e_vrvg,
	c.e_naam,
	c.p_vrvg,
	c.p_naam,
	CASE c.gbrk_naam
		WHEN 0 THEN 'B'
		WHEN 1 THEN 'PB'
		WHEN 2 THEN 'P'
		WHEN 3 THEN 'BP'
	END as 'gbrk_naam',
	c.geslacht,
	c.geb_jaar,
	c.geb_maand,
	c.geb_dag,
	c.straat,
	c.straat_ext,
	c.huisnr,
	c.huisnr_ext,
	c.postcode,
	c.plaats,
	c.mobiel,
	c.mobiel_werk,
	c.telefoon,
	c.telefoon_werk,
	c.mail,
	c.mail_werk,
	c.dat_begin_primary,
	c.dat_eind_primary,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat,
	CASE
		WHEN c.gbrk_naam = '0' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = '2' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = '3' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = '1' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol'
	FROM AFAS_UMRA_Employees c
	WHERE c.bsn = @bsn
	AND c.dvb = @dvb

	AND ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) =
	(SELECT MAX(ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000)) 
	FROM AFAS_UMRA_Employees 
	WHERE bsn = c.bsn AND dvb = c.dvb)
	
	AND CONVERT(float,REPLACE(fte_primary, ',', '.')) =
	(SELECT MAX(CONVERT(float,REPLACE(fte_primary, ',', '.')))
	FROM AFAS_UMRA_Employees
	WHERE bsn = c.bsn AND dvb = c.dvb)

	RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSAP_UMRA_Employees_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSAP_UMRA_Employees_get] 
(
	@is_active bit,
	@indnst_dat_start datetime,
	@indnst_dat_end datetime,
	@uitdnst_dat_start datetime,
	@uitdnst_dat_end datetime
)
RETURNS @table_result table (
	PERNO varchar(50),
	PAYAREA varchar(50),
	INITIALS varchar(50),
	KNOWNAS varchar(255),
	FIRSTNAME varchar(255),
	NAMEPREFIX varchar(255),
	LAST_NAME varchar(255),
	NAMEAFFIX varchar(255),
	LAST_NAME2 varchar(255),
	NAMEFORM varchar(50),
	GENDER varchar(50),
	POSITION varchar(50),
	POSTXT varchar(255),
	COSTCENTER varchar(50),
	ORG_UNIT varchar(50),
	ORGTXT varchar(255),
	FROM_DATE varchar(50),
	TO_DATE varchar(50))
AS
BEGIN
	INSERT INTO @table_result
	SELECT
	c.PERNO,
	c.PAYAREA,
	c.INITIALS,
	c.KNOWNAS,
	c.FIRSTNAME,
	c.NAMEPREFIX,
	c.LAST_NAME,
	c.NAMEAFFIX,
	c.LAST_NAME2,
	c.NAMEFORM,
	c.GENDER,
	c.POSITION,
	c.POSTXT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.ORGTXT,
	c.FROM_DATE,
	c.TO_DATE
	
	FROM SAP_UMRA_Employees c

	WHERE (ISNULL(CONVERT(datetime, FROM_DATE), GETDATE() + 1000) > @indnst_dat_start OR @indnst_dat_start IS NULL)
	AND (ISNULL(CONVERT(datetime, FROM_DATE), GETDATE() + 1000) < @indnst_dat_end OR @indnst_dat_end IS NULL)
	AND (ISNULL(CONVERT(datetime, REPLACE(TO_DATE,'Never',GETDATE()+1000)), GETDATE() + 1000) > @uitdnst_dat_start OR @uitdnst_dat_start IS NULL)
	AND (ISNULL(CONVERT(datetime, REPLACE(TO_DATE,'Never',GETDATE()+1000)), GETDATE() + 1000) < @uitdnst_dat_end OR @uitdnst_dat_end IS NULL)

	AND ((ISNULL(CONVERT(datetime, FROM_DATE), GETDATE() - 1000) < GETDATE() 
	AND ISNULL(CONVERT(datetime, REPLACE(TO_DATE,'Never',GETDATE()+1000)), GETDATE() + 1000) > GETDATE() AND @is_active = 1)
	OR (ISNULL(CONVERT(datetime, REPLACE(TO_DATE,'Never',GETDATE()+1000)), GETDATE() + 1000) < GETDATE() AND @is_active = 0)
	OR @is_active IS NULL)
	
	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objects_get_details]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objects_get_details]
	@id_snapshot bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END

	SELECT
	s_s_o.name + '-' + t_s_o.name as 'id',
	s_s_o.name as 'source',
	t_s_o.name as 'type',
	COUNT(s_o.id) AS 'count'
	FROM Objects s_o
	INNER JOIN Sources s_s_o ON s_s_o.id = s_o.id_source
	INNER JOIN Types t_s_o ON t_s_o.id = s_o.id_type
	WHERE s_o.id_snapshot = @id_snapshot_l
	GROUP BY s_s_o.name, t_s_o.name

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_finish]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_finish]
	@id_snapshot bigint,
	@status varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END	
	
	ALTER INDEX ALL ON Objects
	REORGANIZE
	
	ALTER INDEX ALL ON ObjectAttributes
	REORGANIZE

	ALTER INDEX ALL ON Relationships
	REORGANIZE
	
	IF LEN(@id_snapshot_l) > 0 AND LEN(@status) > 0 BEGIN
		UPDATE Snapshots
		SET timestamp_end = GETDATE(),
		status = @status
		WHERE id = @id_snapshot_l
		
		SELECT @id_snapshot_l as 'id_snapshot'
	END
	ELSE BEGIN
		SELECT '' AS 'id_snapshot'
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_attributes_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_attributes_get]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	a.id,
	a.name
	FROM Attributes a
	ORDER BY a.name

END
GO
/****** Object:  StoredProcedure [dbo].[spTag_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_get]
	@id_tag bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END
	
	SELECT 
	t.id, 
	t.description, 
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active,
	t.direct_provision,
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_user) as 'users',
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_group) as 'groups'	
	FROM Tags t
	WHERE (id = @id_tag OR @id_tag IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_enable]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_enable]
	@id_tag bigint
AS
BEGIN
	SET NOCOUNT ON;

	IF @id_tag > 0 BEGIN
		UPDATE Tags SET is_active = 1 WHERE id = @id_tag
		UPDATE TagObjects SET is_active = 1 WHERE id_tag = @id_tag
		SELECT @id_tag AS 'id_tag'
	END
	ELSE BEGIN
		SELECT '0' AS 'id_tag'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_disable]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_disable]
	@id_tag bigint
AS
BEGIN
	SET NOCOUNT ON;

	IF @id_tag > 0 BEGIN
		UPDATE Tags SET is_active = 0 WHERE id = @id_tag
		UPDATE TagObjects SET is_active = 0 WHERE id_tag = @id_tag
		SELECT @id_tag AS 'id_tag'
	END
	ELSE BEGIN
		SELECT '0' AS 'id_tag'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshots_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshots_get]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
	s.id,
	s.description,
	s.timestamp_start,
	s.timestamp_end,
	s.status
	FROM Snapshots s
	ORDER BY timestamp_start DESC

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_types_get]    Script Date: 08/16/2013 11:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_types_get]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	t.id,
	t.name
	FROM Types t
	ORDER BY t.name

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_start]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_start]
	@description varchar(255),
	@status varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF LEN(@description) > 0 AND LEN(@status) > 0 BEGIN
		INSERT INTO Snapshots (description, status) 
		VALUES (@description, @status)
		SELECT CONVERT(varchar, SCOPE_IDENTITY()) AS id_snapshot
	END
	ELSE BEGIN
		SELECT '' AS 'id_snapshot'
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_sources_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_sources_get]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	s.id,
	s.name
	FROM Sources s
	ORDER BY s.name

END
GO
/****** Object:  StoredProcedure [dbo].[spTags_objects_timer_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_objects_timer_get]
	@type_object varchar(50) = NULL,
	@type_timer varchar(50) = NULL,
	@is_overdue bit = 0,
	@tag_is_active bit = 1,
	@object_is_active bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_t bigint = (SELECT id FROM Types WHERE name = @type_timer)
	IF @id_type_t IS NULL AND LEN(@type_timer) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_timer)
		SET @id_type_t = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END
		
	SELECT
	t.id,
	t_o.id,
	t.description,
	c_o.dn,
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9,
	t_t_o_t.name,
	t.duration_hour,
	DATEDIFF(hour, t_o_t.date_start, GETDATE()) as 'duration_hour_used'
	FROM Cache_table_ad c_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.distinguishedName = c_o.dn
	INNER JOIN TagObjects t_o ON t_o.name = c.objectSID
	INNER JOIN TagObjectTimers t_o_t ON t_o_t.id_tagobject = t_o.id
	INNER JOIN Types t_t_o_t ON t_t_o_t.id = t_o_t.id_type
	INNER JOIN Tags t ON t.id = t_o.id_tag
	WHERE (c_o.type = @type_object OR @type_object IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND (t_t_o_t.id = @id_type_t OR @type_timer IS NULL)
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (DATEDIFF(hour, t_o_t.date_start, GETDATE()) > t.duration_hour AND t.duration_hour > 0 OR @is_overdue = 0 OR @is_overdue IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_objects_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_objects_left]
	@name_object varchar(500),
	@keywords varchar(255) = NULL,
	@category varchar(255) = NULL,
	@type_object varchar(255) = NULL,
	@tag_is_active bit = 1,
	@object_is_active bit = 1,
	@is_overdue bit = 0	
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @name varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_object)
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END	
	

	SELECT
	t.id,
	t.description,
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active
	FROM Tags t
	WHERE (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t.keywords IN (SELECT string_value FROM fnStringToTable(@keywords, ',')) OR @keywords IS NULL)
	AND (t.category = @category OR @category IS NULL)
	AND NOT t.id IN
	(SELECT t_o.id_tag FROM TagObjects t_o
	WHERE t_o.name = @name
	AND (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL))
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_objects_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_objects_common]
	@name_object varchar(500),
	@keywords varchar(255) = NULL,
	@category varchar(255) = NULL,
	@type_object varchar(255) = NULL,
	@tag_is_active bit = 1,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @name varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_object)
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	t.id,
	t.description,
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active
	FROM Tags t
	INNER JOIN TagObjects t_o ON t.id = t_o.id_tag
	WHERE t_o.name = @name
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t.keywords IN (SELECT string_value FROM fnStringToTable(@keywords, ',')) OR @keywords IS NULL)
	AND (t.category = @category OR @category IS NULL)
	AND (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_get]
	@is_active bit = NULL,
	@keywords varchar(255) = NULL,
	@category varchar(255) = NULL,
	@type_permission varchar(50) = NULL,
	@name_object varchar(255) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @name varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_object)
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL AND LEN(@type_permission) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END

	SELECT
	t.id,
	t.description,
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active,
	t.direct_provision,
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_user) as 'users',
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_group) as 'groups'
	FROM Tags t
	WHERE (t.is_active = @is_active OR @is_active IS NULL)
	AND (t.keywords IN (SELECT string_value FROM fnStringToTable(@keywords, ','))
		OR @keywords IN (SELECT string_value FROM fnStringToTable(t.keywords, ','))
		OR @keywords IS NULL)
	AND (t.category = @category OR @category IS NULL)
	AND (t.id IN (SELECT t_p.id_tag FROM TagPermissions t_p 
		WHERE t_p.id_type_permission = @id_type_p
		AND t_p.is_allowed = 1) OR @type_permission IS NULL)
	AND (t.id IN (SELECT t_o.id_tag FROM TagObjects t_o 
		WHERE t_o.name = @name
		AND (t_o.is_active = @is_active OR @is_active IS NULL)) OR @name_object IS NULL)

END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_users_exclusive]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_users_exclusive]
	@id_tag bigint,
	@name_group_exclusive varchar(500),
	@tag_is_active bit = 1,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @name_exclusive varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_group_exclusive)
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END		

	SELECT
	c_o.dn,
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9
	FROM TagObjects t_o
	INNER JOIN Tags t ON t_o.id_tag = t.id
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
	INNER JOIN Cache_table_ad c_o ON c_o.dn = c.distinguishedName
	WHERE (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)
	AND t_o.id_type = @id_type_o_user
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND t_o.id_tag = @id_tag
	AND t_o.name NOT IN
	(SELECT t_u_delta.name FROM TagObjects t_g_delta
	INNER JOIN TagObjects t_u_delta ON t_g_delta.id_tag = t_u_delta.id_tag
	WHERE t_g_delta.id_tag <> @id_tag
	AND t_g_delta.id_type = @id_type_o_group
	AND (t_g_delta.is_active = @object_is_active OR @object_is_active IS NULL)
	AND t_u_delta.id_type = @id_type_o_user
	AND (t_u_delta.is_active = @object_is_active OR @object_is_active IS NULL)
	AND t_g_delta.name = @name_exclusive)
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_users]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_users]
	@id_tag bigint,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	c_o.dn,
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9
	FROM TagObjects t_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
	INNER JOIN Cache_table_ad c_o ON c_o.dn = c.distinguishedName
	WHERE (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)
	AND t_o.id_type = @id_type_o
	AND t_o.id_tag = @id_tag
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_permissions_direct]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_permissions_direct]
	@id_tag bigint,
	@type_permission varchar(255) = NULL,
	@is_allowed bit = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL AND LEN(@type_permission) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END		

	SELECT
	t_p.id,
	t_t_p.name,
	t_t_n.name,
	t_p.name,
	t_p.is_allowed
	FROM TagPermissions t_p
	INNER JOIN Types t_t_p ON t_p.id_type_permission = t_t_p.id
	INNER JOIN Types t_t_n ON t_p.id_type_name = t_t_n.id
	WHERE (t_t_p.id = @id_type_p OR @type_permission IS NULL)
	AND (t_p.is_allowed = @is_allowed OR @is_allowed IS NULL)
	AND t_p.id_tag = @id_tag
	AND t_p.id_type_name <> @id_type_o_group
	AND t_p.id_type_name <> @id_type_o_user

END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_permissions]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_permissions]
	@id_tag bigint,
	@type_permission varchar(255) = NULL,
	@is_allowed bit = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL AND LEN(@type_permission) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	t_p.id,
	c_o.dn,
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9,
	t_t_p.name,
	t_p.is_allowed
	FROM TagPermissions t_p
	INNER JOIN Types t_t_p ON t_p.id_type_permission = t_t_p.id
	INNER JOIN Cache_table_dn_sAMAccountName c ON t_p.name = c.objectSID
	INNER JOIN Cache_table_ad c_o ON c_o.dn = c.distinguishedName
	AND c_o.type = 'group'
	AND (t_t_p.id = @id_type_p OR @type_permission IS NULL)
	AND (t_p.is_allowed = @is_allowed OR @is_allowed IS NULL)
	AND t_p.id_tag = @id_tag

END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_objects]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_objects]
	@id_tag bigint,
	@type_object varchar(255) = NULL,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	t_o.id,
	t_o.name,
	c.sAMAccountName,
	t_t_o.name,
	t_o.date_start,
	t_o.date_end
	FROM TagObjects t_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON t_o.name = c.objectSID
	LEFT JOIN Types t_t_o ON t_t_o.id = t_o.id_type
	WHERE t_o.id_tag = @id_tag
	AND (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)	
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_groups_exclusive]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_groups_exclusive]
	@id_tag bigint,
	@name_user_exclusive varchar(500),
	@tag_is_active bit = 1,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @name_exclusive varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_user_exclusive)
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	c_g.dn,
	c_g.attribute_1,
	c_g.attribute_2,
	c_g.attribute_3,
	c_g.attribute_4,
	c_g.attribute_5,
	c_g.attribute_6,
	c_g.attribute_7,
	c_g.attribute_8,
	c_g.attribute_9
	FROM TagObjects t_o
	INNER JOIN Tags t ON t_o.id_tag = t.id
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
	INNER JOIN Cache_table_ad c_g ON c_g.dn = c.distinguishedName
	WHERE (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)
	AND t_o.id_type = @id_type_o_group
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND t_o.id_tag = @id_tag
	AND t_o.name NOT IN
	(SELECT t_g_delta.name FROM TagObjects t_g_delta
	INNER JOIN TagObjects t_u_delta ON t_g_delta.id_tag = t_u_delta.id_tag
	WHERE t_g_delta.id_tag <> @id_tag
	AND t_g_delta.id_type = @id_type_o_group
	AND (t_g_delta.is_active = @object_is_active OR @object_is_active IS NULL)
	AND t_u_delta.id_type = @id_type_o_user
	AND t_u_delta.name = @name_exclusive)
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_table_groups]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_table_groups]
	@id_tag bigint,
	@object_is_active bit = 1,
	@is_overdue bit = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END

	SELECT
	c_o.dn,
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9
	FROM TagObjects t_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
	INNER JOIN Cache_table_ad c_o ON c_o.dn = c.distinguishedName
	WHERE (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND ((ISNULL(t_o.date_start, GETDATE() - 1000) < GETDATE() AND ISNULL(t_o.date_end, GETDATE() + 1000) > GETDATE() AND @is_overdue = 0)
	OR (ISNULL(t_o.date_end, GETDATE() + 1000) < GETDATE() AND @is_overdue = 1)
	OR @is_overdue IS NULL)
	AND t_o.id_type = @id_type_o_group
	AND t_o.id_tag = @id_tag
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_save]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_save]
	@description varchar(255),
	@keywords varchar(MAX),
	@category varchar(255),
	@duration_hour int = 0,
	@delay_hour int = 0,
	@is_active bit = 1,
	@direct_provision bit = 1,
	@id bigint = 0,
	@id_template bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @id > 0 BEGIN
		UPDATE Tags 
		SET [description] = @description,
		keywords = @keywords,
		category = @category,
		duration_hour = @duration_hour,
		delay_hour = @delay_hour,
		is_active = @is_active,
		direct_provision = @direct_provision
		WHERE id = @id

		SELECT @id AS 'id_tag'
	END
	ELSE BEGIN
		INSERT INTO Tags (description, keywords, category, is_active, direct_provision, duration_hour, delay_hour) 
		VALUES (@description, @keywords, @category, @is_active, @direct_provision, @duration_hour, @delay_hour)
		
		DECLARE @id_tag bigint
		SET @id_tag = (SELECT SCOPE_IDENTITY())
		
		SELECT CONVERT(varchar, @id_tag) AS 'id_tag'
		
		IF @id_template > 0 BEGIN
			INSERT INTO TagObjects (id_tag, name, id_type, date_start, date_end, is_active)
			SELECT
			@id_tag,
			t_o.name,
			t_o.id_type,
			t_o.date_start,
			t_o.date_end,
			t_o.is_active
			FROM TagObjects t_o
			WHERE t_o.id_tag = @id_template
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_permission_remove]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_permission_remove]
	@id_tagpermission bigint
AS
BEGIN
	SET NOCOUNT ON;

	IF @id_tagpermission > 0 BEGIN
		DELETE FROM TagPermissions WHERE id = @id_tagpermission
		SELECT @id_tagpermission
	END
	ELSE BEGIN
		SELECT '0' AS 'id_tagpermission'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_permission_add_direct]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_permission_add_direct]
	@id_tag bigint,
	@type_permission varchar(255),
	@type_name varchar(500),
	@name_input varchar(500),
	@is_allowed bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_n bigint = (SELECT id FROM Types WHERE name = @type_name)
	IF @id_type_n IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_name)
		SET @id_type_n = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_tagpermission bigint = (SELECT t_p.id 
		FROM TagPermissions t_p
		WHERE t_p.name = @name_input
		AND t_p.id_tag = @id_tag
		AND t_p.id_type_permission = @id_type_p
		AND t_p.id_type_name = @id_type_n
		AND t_p.is_allowed = @is_allowed)

	IF @id_tag > 0 AND @id_tagpermission IS NULL AND LEN(@name_input) > 0 AND @id_type_p > 0 AND @id_type_n > 0 BEGIN
		INSERT INTO TagPermissions (id_tag, id_type_permission, id_type_name, name, is_allowed) 
		VALUES (@id_tag, @id_type_p, @id_type_n, @name_input, @is_allowed)
		SELECT CONVERT(VARCHAR, SCOPE_IDENTITY()) AS 'id_tagpermission'
	END
	SELECT 'not-created'
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_permission_add]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_permission_add]
	@id_tag bigint,
	@type_permission varchar(255),
	@type_name varchar(500),
	@name_input varchar(500),
	@is_allowed bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_type_n bigint = (SELECT id FROM Types WHERE name = @type_name)
	IF @id_type_n IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_name)
		SET @id_type_n = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @name varchar(255) = (SELECT objectSID FROM Cache_table_dn_sAMAccountName WHERE distinguishedName = @name_input)	
	DECLARE @id_tagpermission bigint = (SELECT t_p.id 
		FROM TagPermissions t_p
		WHERE t_p.name = @name
		AND t_p.id_tag = @id_tag
		AND t_p.id_type_permission = @id_type_p
		AND t_p.id_type_name = @id_type_n
		AND t_p.is_allowed = @is_allowed)

	IF @id_tag > 0 AND @id_tagpermission IS NULL AND LEN(@name) > 0 AND @id_type_p > 0 AND @id_type_n > 0 BEGIN
		INSERT INTO TagPermissions (id_tag, id_type_permission, id_type_name, name, is_allowed) 
		VALUES (@id_tag, @id_type_p, @id_type_n, @name, @is_allowed)
		SELECT CONVERT(VARCHAR, SCOPE_IDENTITY()) AS 'id_tagpermission'
	END
	SELECT 'not-created'
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_objects_timer_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_objects_timer_get]
	@id_tag bigint,
	@type_object varchar(50) = NULL,
	@type_timer varchar(50) = NULL,
	@is_overdue bit = 0,
	@object_is_active bit = 1,
	@tag_is_active bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_t bigint = (SELECT id FROM Types WHERE name = @type_timer)
	IF @id_type_t IS NULL AND LEN(@type_timer) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_timer)
		SET @id_type_t = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END		

	SELECT DISTINCT
	t_o_t.id, 
	c_o.attribute_1,
	c_o.attribute_2,
	c_o.attribute_3,
	c_o.attribute_4,
	c_o.attribute_5,
	c_o.attribute_6,
	c_o.attribute_7,
	c_o.attribute_8,
	c_o.attribute_9,
	t_t_o_t.name,
	t.duration_hour,
	DATEDIFF(hour, t_o_t.date_start, GETDATE()) as 'duration_hour_used'
	FROM Cache_table_ad c_o
	INNER JOIN Cache_table_dn_sAMAccountName c ON c.distinguishedName = c_o.dn
	INNER JOIN TagObjects t_o ON t_o.name = c.objectSID
	INNER JOIN TagObjectTimers t_o_t ON t_o_t.id_tagobject = t_o.id
	INNER JOIN Types t_t_o_t ON t_t_o_t.id = t_o_t.id_type
	INNER JOIN Tags t ON t.id = t_o.id_tag
	WHERE (c_o.type = @type_object OR @type_object IS NULL)
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
	AND (t_t_o_t.id = @id_type_t OR @type_timer IS NULL)
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t_o.is_active = @object_is_active OR @object_is_active IS NULL)
	AND (DATEDIFF(hour, t_o_t.date_start, GETDATE()) > t.duration_hour AND t.duration_hour > 0 OR @is_overdue = 0 OR @is_overdue IS NULL)
	AND t.id = @id_tag
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_timer_start]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_timer_start]
	@id_tagobject bigint,
	@type_timer varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_t bigint = (SELECT id FROM Types WHERE name = @type_timer)
	IF @id_type_t IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_timer)
		SET @id_type_t = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_tagobjecttimer bigint = (SELECT id FROM TagObjectTimers WHERE id_tagobject = @id_tagobject AND id_type = @id_type_t)
	
	IF @id_tagobject > 0 BEGIN
		IF @id_tagobjecttimer IS NULL BEGIN
			INSERT INTO TagObjectTimers (id_tagobject, id_type, date_start, date_end)
			VALUES (@id_tagobject, @id_type_t, GETDATE(), NULL)
		END
		ELSE BEGIN
			UPDATE TagObjectTimers
			SET date_start = GETDATE(),
			date_end = NULL
			WHERE id = @id_tagobjecttimer
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_timer_end]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_timer_end]
	@id_tagobject bigint,
	@type_timer varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type_t bigint = (SELECT id FROM Types WHERE name = @type_timer)
	IF @id_type_t IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_timer)
		SET @id_type_t = (SELECT SCOPE_IDENTITY())
	END	
	
	IF @id_tagobject > 0 BEGIN
		UPDATE TagObjectTimers 
		SET date_end = GETDATE() 
		WHERE id_tagobject = @id_tagobject
		AND id_type = @id_type_t
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_get]
	@id_tag bigint,
	@name_input varchar(500),
	@type_object varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @name varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_input)
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL AND LEN(@type_object) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END
				
	SELECT 
	t_o.id
	FROM TagObjects t_o
	WHERE t_o.name = @name
	AND (t_o.id_type = @id_type_o OR @type_object IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_object_count_chart]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_object_count_chart]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @cols NVARCHAR(MAX) = STUFF((
	SELECT N',' + QUOTENAME(y)
	FROM (SELECT DISTINCT t.description AS y FROM Tags t) AS Y
	ORDER BY y FOR XML PATH('')),1, 1, N'');

	DECLARE @sql NVARCHAR(MAX) = N'SELECT *
	FROM (SELECT t.description, t_o.id as qty
	FROM Tags t
	INNER JOIN TagObjects t_o ON t_o.id_tag = t.id) AS D
	PIVOT(COUNT(qty) FOR description IN(' + @cols + N')) AS P;';

	EXEC sp_executesql @sql;
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_groups_not_in_tags]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_groups_not_in_tags]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	c_g.sAMAccountName
	FROM Cache_table_dn_sAMAccountName c_g
	INNER JOIN Cache_table_ad c ON c.dn = c_g.distinguishedName
	LEFT JOIN TagObjects t_o_g ON c_g.objectSID = t_o_g.name
		AND t_o_g.id_type = (SELECT id FROM Types WHERE name = 'group')
	LEFT JOIN Tags t ON t.id = t_o_g.id_tag
	WHERE t.id IS NULL AND c.type = 'group'
	GROUP BY c_g.sAMAccountName
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_group_tag_count]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_group_tag_count]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	c_g.sAMAccountName,
	COUNT(t.id) 'count_tag'
	FROM Cache_table_dn_sAMAccountName c_g
	INNER JOIN TagObjects t_o_g ON c_g.objectSID = t_o_g.name
		AND t_o_g.id_type = (SELECT id FROM Types WHERE name = 'group')
	INNER JOIN Tags t ON t.id = t_o_g.id_tag
	GROUP BY c_g.sAMAccountName
	ORDER BY c_g.sAMAccountName
END
GO
/****** Object:  Table [dbo].[Relationships]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relationships](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_type] [bigint] NOT NULL,
	[id_object_parent] [bigint] NOT NULL,
	[id_object_child] [bigint] NOT NULL,
 CONSTRAINT [PK_Relationships] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Relationships_id_object_child] ON [dbo].[Relationships] 
(
	[id_object_child] ASC
)
INCLUDE ( [id_object_parent]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Relationships_id_type] ON [dbo].[Relationships] 
(
	[id_type] ASC
)
INCLUDE ( [id_object_parent],
[id_object_child]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Relationships_id_type_id_object_parent] ON [dbo].[Relationships] 
(
	[id_type] ASC,
	[id_object_parent] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectAttributes]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectAttributes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_object] [bigint] NOT NULL,
	[id_attribute] [bigint] NOT NULL,
	[attribute_value] [varchar](500) NULL,
 CONSTRAINT [PK_ObjectAttributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_ObjectAttributes_attribute_value] ON [dbo].[ObjectAttributes] 
(
	[attribute_value] ASC
)
INCLUDE ( [id_object],
[id_attribute]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ObjectAttributes_id_attribute_attribute_value] ON [dbo].[ObjectAttributes] 
(
	[id_attribute] ASC,
	[attribute_value] ASC
)
INCLUDE ( [id_object]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ObjectAttributes_id_object] ON [dbo].[ObjectAttributes] 
(
	[id_object] ASC
)
INCLUDE ( [id_attribute],
[attribute_value]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnTag_objectid_dn]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnTag_objectid_dn]
(
	@id_object bigint
)
RETURNS varchar(500)
AS
BEGIN
	DECLARE @object_dn varchar(500)
	SELECT @object_dn = c.distinguishedName FROM TagObjects t_o
		INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
		WHERE t_o.id = @id_object

	RETURN @object_dn
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnTag_objectdn_id]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnTag_objectdn_id]
(
	@object_dn varchar(500)
)
RETURNS bigint
AS
BEGIN
	DECLARE @id_object bigint
	SELECT @id_object = t_o.id FROM TagObjects t_o
		INNER JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
		WHERE c.distinguishedName = @object_dn

	RETURN @id_object
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnAFAS_UMRA_Employees_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnAFAS_UMRA_Employees_get] 
(
	@is_active bit,
	@pl_primary bit,
	@indnst_dat_start datetime,
	@indnst_dat_end datetime,
	@uitdnst_dat_start datetime,
	@uitdnst_dat_end datetime
)
RETURNS @table_result table (
	bsn varchar(50),
	mdw varchar(50),
	nr varchar(50),
	dvb varchar(50),
	e_vrlt varchar(50),
	e_roepnaam varchar(255),
	e_voornm varchar(255),
	e_vrvg varchar(255),
	e_naam varchar(255),
	p_vrvg varchar(255),
	p_naam varchar(255),
	gbrk_naam varchar(50),
	geslacht varchar(50),
	func_kd varchar(50),
	func_oms varchar(255),
	cost_kd varchar(50),
	cost_oms varchar(255),
	org_kd varchar(50),
	org_oms varchar(255),
	indnst_dat varchar(50),
	uitdnst_dat varchar(50))
AS
BEGIN
	INSERT INTO @table_result
	SELECT
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	c.e_vrlt,
	c.e_roepnaam,
	c.e_voornm,
	c.e_vrvg,
	c.e_naam,
	c.p_vrvg,
	c.p_naam,
	CASE c.gbrk_naam
		WHEN 0 THEN 'B'
		WHEN 1 THEN 'PB'
		WHEN 2 THEN 'P'
		WHEN 3 THEN 'BP'
	END as 'gbrk_naam',
	c.geslacht,
	c.func_kd_primary,
	c.func_oms_primary,
	c.cost_kd_primary,
	c.cost_oms_primary,
	c.org_kd_primary,
	c.org_oms_primary,
	c.indnst_dat,
	c.uitdnst_dat
	FROM AFAS_UMRA_Employees c

	WHERE (dvb_primary_is_main = 'J' OR dvb_primary_is_main = '1' OR @pl_primary = 0 OR @pl_primary IS NULL)
	
	AND CONVERT(float,REPLACE(fte_primary, ',', '.')) =
	(SELECT MAX(CONVERT(float,REPLACE(fte_primary, ',', '.')))
	FROM AFAS_UMRA_Employees
	WHERE bsn = c.bsn AND dvb_primary_is_main = c.dvb_primary_is_main)
	
	AND ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) =
	(SELECT MAX(ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000)) 
	FROM AFAS_UMRA_Employees 
	WHERE bsn = c.bsn AND dvb_primary_is_main = c.dvb_primary_is_main)	

	AND ISNULL(CONVERT(datetime, indnst_dat, 105), GETDATE() + 1000) =
	(SELECT MAX(ISNULL(CONVERT(datetime, indnst_dat, 105), GETDATE() + 1000)) 
	FROM AFAS_UMRA_Employees 
	WHERE bsn = c.bsn AND dvb_primary_is_main = c.dvb_primary_is_main)	

	AND (ISNULL(CONVERT(datetime, indnst_dat, 105), GETDATE() + 1000) > @indnst_dat_start OR @indnst_dat_start IS NULL)
	AND (ISNULL(CONVERT(datetime, indnst_dat, 105), GETDATE() + 1000) < @indnst_dat_end OR @indnst_dat_end IS NULL)
	AND (ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) > @uitdnst_dat_start OR @uitdnst_dat_start IS NULL)
	AND (ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) < @uitdnst_dat_end OR @uitdnst_dat_end IS NULL)

	AND ((ISNULL(CONVERT(datetime, indnst_dat, 105), GETDATE() - 1000) < GETDATE() AND ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) > GETDATE() AND @is_active = 1)
	OR (ISNULL(CONVERT(datetime, uitdnst_dat, 105), GETDATE() + 1000) < GETDATE() AND @is_active = 0)
	OR @is_active IS NULL)
	
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectid_type]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectid_type]
(
	@id_object bigint
)
RETURNS varchar(500)
AS
BEGIN
	DECLARE @object_type varchar(500)
	SELECT @object_type = t_o.name FROM Objects o
		INNER JOIN Types t_o ON t_o.id = o.id_type
		WHERE o.id = @id_object

	RETURN @object_type
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectid_sid]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectid_sid]
(
	@id_object bigint
)
RETURNS varchar(500)
AS
BEGIN
	DECLARE @id_attribute_objectsid bigint
	SET @id_attribute_objectsid = (SELECT id 
		FROM Attributes
		WHERE name = 'objectSID')

	DECLARE @object_sid varchar(255)
	SELECT @object_sid = o_a.attribute_value FROM ObjectAttributes o_a
		WHERE o_a.id_object = @id_object AND o_a.id_attribute = @id_attribute_objectsid

	RETURN @object_sid
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectid_show]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectid_show]
(
	@id_object bigint
)
RETURNS varchar(500)
AS
BEGIN
	DECLARE @object_dn varchar(500)
	SELECT @object_dn = o_a.attribute_value FROM ObjectAttributes o_a
		INNER JOIN Attributes a ON o_a.id_attribute = a.id AND a.is_show = 1
		WHERE o_a.id_object = @id_object

	RETURN @object_dn
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectid_key]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectid_key]
(
	@id_object bigint
)
RETURNS varchar(500)
AS
BEGIN
	DECLARE @object_dn varchar(500)
	SELECT @object_dn = o_a.attribute_value FROM ObjectAttributes o_a
		INNER JOIN Attributes a ON o_a.id_attribute = a.id AND a.is_key = 1
		WHERE o_a.id_object = @id_object

	RETURN @object_dn
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectdn_id]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectdn_id]
(
	@object_dn varchar(500)
)
RETURNS bigint
AS
BEGIN
	DECLARE @id_object bigint
	SELECT @id_object = o_a.id_object FROM ObjectAttributes o_a
		INNER JOIN Attributes a ON a.id = o_a.id_attribute AND a.is_key = 1
		WHERE o_a.attribute_value = @object_dn

	RETURN @id_object
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectattributes_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSnapshot_objectattributes_get] 
(
	@id_snapshot bigint = 0,
	@attribute_names varchar(500) = NULL,
	@char_s varchar(5) = '-'
)
RETURNS @table_result table (
	id_object bigint,
	attribute_name varchar(255),
	attribute_value varchar(500))  
AS
BEGIN
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @max_attribute_index int = 0
	SET @max_attribute_index = (SELECT MAX(string_index) FROM fnStringToTable(@attribute_names,','))
	
	DECLARE @name_a_0 varchar(50)
	DECLARE @name_a_1 varchar(50)
	DECLARE @name_a_2 varchar(50)
	DECLARE @name_a_3 varchar(50)
	DECLARE @name_a_4 varchar(50)
	
	IF @attribute_names IS NULL BEGIN
		INSERT INTO @table_result
		SELECT
		o.id,
		a.name,
		oa.attribute_value
		FROM dbo.Objects o
		INNER JOIN dbo.ObjectAttributes oa ON oa.id_object = o.id
			AND o.id_snapshot = @id_snapshot_l
		INNER JOIN dbo.Attributes a ON a.id = oa.id_attribute
		RETURN
	END
	
	IF LEN(@attribute_names) > 0 AND @max_attribute_index = 0 BEGIN
		SET @name_a_0 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 0)
		
		INSERT INTO @table_result
		SELECT
		o.id,
		@name_a_0,
		oa_0.attribute_value
		FROM ObjectAttributes oa_0
		INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot = @id_snapshot_l
		WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_0)
	END

	IF LEN(@attribute_names) > 0 AND @max_attribute_index = 1 BEGIN
		SET @name_a_0 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 0)
		SET @name_a_1 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 1)
	
		INSERT INTO @table_result
		SELECT
		o.id,
		@name_a_0 + @char_s + @name_a_1,
		ISNULL(oa_0.attribute_value,'') + @char_s + ISNULL(oa_1.attribute_value,'')
		FROM ObjectAttributes oa_0
		INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot= @id_snapshot_l
		INNER JOIN ObjectAttributes oa_1 ON oa_1.id_object = o.id
		WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_0)
		AND oa_1.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_1)
	END		

	IF LEN(@attribute_names) > 0 AND @max_attribute_index = 2 BEGIN
		SET @name_a_0 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 0)
		SET @name_a_1 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 1)
		SET @name_a_2 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 2)
	
		INSERT INTO @table_result
		SELECT
		o.id,
		@name_a_0 + @char_s + @name_a_1 + @char_s + @name_a_2,
		ISNULL(oa_0.attribute_value,'') + @char_s + ISNULL(oa_1.attribute_value,'') + @char_s + ISNULL(oa_2.attribute_value,'')
		FROM ObjectAttributes oa_0
		INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot= @id_snapshot_l
		INNER JOIN ObjectAttributes oa_1 ON oa_1.id_object = o.id
		INNER JOIN ObjectAttributes oa_2 ON oa_2.id_object = o.id
		WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_0)
		AND oa_1.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_1)
		AND oa_2.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_2)		
	END				

	IF LEN(@attribute_names) > 0 AND @max_attribute_index = 3 BEGIN
		SET @name_a_0 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 0)
		SET @name_a_1 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 1)
		SET @name_a_2 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 2)
		SET @name_a_3 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 3)
	
		INSERT INTO @table_result
		SELECT
		o.id,
		@name_a_0 + @char_s + @name_a_1 + @char_s + @name_a_2 + @char_s + @name_a_3,
		ISNULL(oa_0.attribute_value,'') + @char_s + ISNULL(oa_1.attribute_value,'') + @char_s + ISNULL(oa_2.attribute_value,'') + @char_s + ISNULL(oa_3.attribute_value,'')
		FROM ObjectAttributes oa_0
		INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot= @id_snapshot_l
		INNER JOIN ObjectAttributes oa_1 ON oa_1.id_object = o.id
		INNER JOIN ObjectAttributes oa_2 ON oa_2.id_object = o.id
		INNER JOIN ObjectAttributes oa_3 ON oa_3.id_object = o.id
		WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_0)
		AND oa_1.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_1)
		AND oa_2.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_2)
		AND oa_3.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_3)		
	END	
	
	IF LEN(@attribute_names) > 0 AND @max_attribute_index = 4 BEGIN
		SET @name_a_0 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 0)
		SET @name_a_1 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 1)
		SET @name_a_2 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 2)
		SET @name_a_3 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 3)
		SET @name_a_4 = (SELECT string_value FROM fnStringToTable(@attribute_names,',') WHERE string_index = 4)
	
		INSERT INTO @table_result
		SELECT
		o.id,
		@name_a_0 + @char_s + @name_a_1 + @char_s + @name_a_2 + @char_s + @name_a_3 + @char_s + @name_a_4,
		ISNULL(oa_0.attribute_value,'') + @char_s + ISNULL(oa_1.attribute_value,'') + @char_s + ISNULL(oa_2.attribute_value,'') + @char_s + ISNULL(oa_3.attribute_value,'') + @char_s + ISNULL(oa_4.attribute_value,'')
		FROM ObjectAttributes oa_0
		INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot= @id_snapshot_l
		INNER JOIN ObjectAttributes oa_1 ON oa_1.id_object = o.id
		INNER JOIN ObjectAttributes oa_2 ON oa_2.id_object = o.id
		INNER JOIN ObjectAttributes oa_3 ON oa_3.id_object = o.id
		INNER JOIN ObjectAttributes oa_4 ON oa_4.id_object = o.id
		WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_0)
		AND oa_1.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_1)
		AND oa_2.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_2)
		AND oa_3.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_3)
		AND oa_4.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @name_a_4)		
	END		
			
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectattribute_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSnapshot_objectattribute_get] 
(
	@id_snapshot bigint = 0,
	@attribute_name varchar(100) = NULL
)
RETURNS @table_result table (
	id_object bigint,
	id_attribute bigint,
	attribute_value varchar(500))  
AS
BEGIN
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END

	INSERT INTO @table_result
	SELECT
	o.id,
	oa_0.id_attribute,
	oa_0.attribute_value
	FROM ObjectAttributes oa_0
	INNER JOIN Objects o ON o.id = oa_0.id_object AND o.id_snapshot = @id_snapshot_l
	WHERE oa_0.id_attribute IN
		(SELECT id FROM Attributes WHERE name = @attribute_name)
	OR @attribute_name IS NULL
			
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnAFAS_UMRA_Costcenters_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnAFAS_UMRA_Costcenters_get] 
(
	@is_active bit,
	@indnst_dat_start datetime,
	@indnst_dat_end datetime,
	@uitdnst_dat_start datetime,
	@uitdnst_dat_end datetime
)
RETURNS @table_result table (
	cost_kd varchar(50),
	cost_oms varchar(255))
AS
BEGIN
	INSERT INTO @table_result
	SELECT DISTINCT
	c.cost_kd,
	MAX(c.cost_oms)
	FROM fnAFAS_UMRA_Employees_get(@is_active,NULL,NULL,NULL,NULL,NULL) c	
	GROUP BY c.cost_kd
			
	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_relationships_snapshot_right]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_relationships_snapshot_right]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_attribute_sid bigint = (SELECT id FROM Attributes WHERE name = 'objectSID')
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	IF @id_type_r_member IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('member')
		SET @id_type_r_member = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	CONVERT(varchar,t_o_group.id) + '-' + CONVERT(varchar,t_o_user.id) as 'id',
	oa_group_key.attribute_value,
	oa_user_key.attribute_value
	FROM TagObjects t_o_group
	INNER JOIN TagObjects t_o_user ON t_o_group.id_tag = t_o_user.id_tag 
		AND t_o_group.id_type = @id_type_o_group
		AND t_o_user.id_type = @id_type_o_user
		AND (t_o_group.is_active = 0 OR t_o_user.is_active = 0)
	INNER JOIN ObjectAttributes oa_group_sid ON oa_group_sid.attribute_value = t_o_group.name
		AND oa_group_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_group ON o_group.id = oa_group_sid.id_object
		AND o_group.id_snapshot = @id_snapshot_l
	INNER JOIN ObjectAttributes oa_user_sid ON oa_user_sid.attribute_value = t_o_user.name
		AND oa_user_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_user ON o_user.id = oa_user_sid.id_object
		AND o_user.id_snapshot = @id_snapshot_l
	INNER JOIN Relationships r ON r.id_object_parent = o_group.id
		AND r.id_object_child = o_user.id
		AND r.id_type = @id_type_r_member
	INNER JOIN ObjectAttributes oa_group_key ON oa_group_key.id_object = r.id_object_parent
	INNER JOIN Attributes a_group_key ON a_group_key.id = oa_group_key.id_attribute
		AND a_group_key.is_key = 1
	INNER JOIN ObjectAttributes oa_user_key ON oa_user_key.id_object = r.id_object_child
	INNER JOIN Attributes a_user_key ON a_user_key.id = oa_user_key.id_attribute
		AND a_user_key.is_key = 1
	AND NOT t_o_group.name IN
	(SELECT t_o_group_active.name FROM TagObjects t_o_group_active
	INNER JOIN TagObjects t_o_user_active ON t_o_group_active.id_tag = t_o_user_active.id_tag 
		AND t_o_group_active.id_type = @id_type_o_group
		AND t_o_user_active.id_type = @id_type_o_user
		AND t_o_group_active.is_active = 1
		AND t_o_user_active.is_active = 1
		AND t_o_user_active.name = t_o_user.name)

END
GO
/****** Object:  StoredProcedure [dbo].[spTags_relationships_snapshot_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_relationships_snapshot_left]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_attribute_sid bigint = (SELECT id FROM Attributes WHERE name = 'objectSID')
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	IF @id_type_r_member IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('member')
		SET @id_type_r_member = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	t_o_group.name + '-' + t_o_user.name as 'id',
	c_group.distinguishedName,
	t_o_group.name,
	t_o_group.date_start,
	t_o_group.date_end,
	c_user.distinguishedName,	
	t_o_user.name,
	t_o_user.date_start,
	t_o_user.date_end
	FROM TagObjects t_o_group
	INNER JOIN TagObjects t_o_user ON t_o_group.id_tag = t_o_user.id_tag 
		AND t_o_group.id_type = @id_type_o_group
		AND t_o_user.id_type = @id_type_o_user
		AND t_o_group.is_active = 1
		AND t_o_user.is_active = 1
	INNER JOIN ObjectAttributes oa_group_sid ON oa_group_sid.attribute_value = t_o_group.name
		AND oa_group_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_group ON o_group.id = oa_group_sid.id_object
		AND o_group.id_snapshot = @id_snapshot_l
	INNER JOIN Cache_table_dn_sAMAccountName c_group ON c_group.objectSID = t_o_group.name
	INNER JOIN ObjectAttributes oa_user_sid ON oa_user_sid.attribute_value = t_o_user.name
		AND oa_user_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_user ON o_user.id = oa_user_sid.id_object
		AND o_user.id_snapshot = @id_snapshot_l
	INNER JOIN Cache_table_dn_sAMAccountName c_user ON c_user.objectSID = t_o_user.name
	LEFT JOIN Relationships r ON r.id_object_parent = o_group.id
		AND r.id_object_child = o_user.id
		AND r.id_type = @id_type_r_member
	WHERE r.id_object_parent IS NULL
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_relationships_snapshot_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_relationships_snapshot_common]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_attribute_sid bigint = (SELECT id FROM Attributes WHERE name = 'objectSID')
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	IF @id_type_r_member IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('member')
		SET @id_type_r_member = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	

	SELECT
	t_o_group.name + '-' + t_o_user.name as 'id',
	c_group.distinguishedName,
	t_o_group.name,
	c_user.distinguishedName,
	t_o_user.name
	FROM TagObjects t_o_group
	INNER JOIN TagObjects t_o_user ON t_o_group.id_tag = t_o_user.id_tag 
		AND t_o_group.id_type = @id_type_o_group
		AND t_o_user.id_type = @id_type_o_user
		AND t_o_group.is_active = 1
		AND t_o_user.is_active = 1
	INNER JOIN ObjectAttributes oa_group_sid ON oa_group_sid.attribute_value = t_o_group.name
		AND oa_group_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_group ON o_group.id = oa_group_sid.id_object
		AND o_group.id_snapshot = @id_snapshot_l
	INNER JOIN Cache_table_dn_sAMAccountName c_group ON c_group.objectSID = t_o_group.name
	INNER JOIN ObjectAttributes oa_user_sid ON oa_user_sid.attribute_value = t_o_user.name
		AND oa_user_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o_user ON o_user.id = oa_user_sid.id_object
		AND o_user.id_snapshot = @id_snapshot_l
	INNER JOIN Cache_table_dn_sAMAccountName c_user ON c_user.objectSID = t_o_user.name
	INNER JOIN Relationships r ON r.id_object_parent = o_group.id
		AND r.id_object_child = o_user.id
		AND r.id_type = @id_type_r_member
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_enable]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_enable]
	@id_tagobject bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE TagObjects SET is_active = 1 WHERE id = @id_tagobject
	EXEC spTag_object_timer_start @id_tagobject, 'duration'
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_disable]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_disable]
	@id_tagobject bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE TagObjects SET is_active = 0 WHERE id = @id_tagobject
	EXEC spTag_object_timer_end @id_tagobject, 'duration'
	
	SELECT
	t_t_o.name,
	t_o.name,
	c.sAMAccountName,
	c.distinguishedName
	FROM TagObjects t_o
	INNER JOIN Types t_t_o ON t_t_o.id = t_o.id_type
	LEFT JOIN Cache_table_dn_sAMAccountName c ON c.objectSID = t_o.name
	WHERE t_o.id = @id_tagobject
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationships_get_details]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationships_get_details]
	@id_snapshot bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END

	SELECT
	s_s_o.name + '-' + t_s_r.name as 'id',
	s_s_o.name,
	t_s_r.name,
	COUNT(s_r.id) as 'count'
	FROM Relationships s_r
	INNER JOIN Types t_s_r ON t_s_r.id = s_r.id_type
	INNER JOIN Objects s_o ON s_r.id_object_child = s_o.id
		AND s_o.id_snapshot = @id_snapshot_l
	INNER JOIN Sources s_s_o ON s_s_o.id = s_o.id_source
	GROUP BY s_s_o.name, t_s_r.name

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationships_get_delta]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationships_get_delta]
	@id_snapshot bigint,
	@id_snapshot_delta bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = @id_snapshot
	DECLARE @id_snapshot_delta_l bigint = @id_snapshot_delta

	SELECT
	r.id,
	s_o_parent.name,
	t_o_parent.name,
	oa_parent_key.attribute_value,
	oa_parent_show.attribute_value,
	s_o_child.name,
	t_o_child.name,
	oa_child_key.attribute_value,
	oa_child_show.attribute_value,
	t_r.name
	FROM Relationships r
	INNER JOIN Types t_r ON t_r.id = r.id_type
	INNER JOIN Objects o_parent ON o_parent.id = r.id_object_parent
	INNER JOIN Types t_o_parent ON t_o_parent.id = o_parent.id_type
	INNER JOIN Sources s_o_parent ON s_o_parent.id = o_parent.id_source	
	INNER JOIN ObjectAttributes oa_parent_key ON oa_parent_key.id_object = o_parent.id
	INNER JOIN Attributes a_parent_key ON a_parent_key.id = oa_parent_key.id_attribute
		AND a_parent_key.is_key = 1
	INNER JOIN ObjectAttributes oa_parent_show ON oa_parent_show.id_object = o_parent.id
	INNER JOIN Attributes a_parent_show ON a_parent_show.id = oa_parent_show.id_attribute
		AND a_parent_show.is_show = 1
	INNER JOIN Objects o_child ON o_child.id = r.id_object_child
	INNER JOIN Types t_o_child ON t_o_child.id = o_child.id_type
	INNER JOIN Sources s_o_child ON s_o_child.id = o_child.id_source		
	INNER JOIN ObjectAttributes oa_child_key ON oa_child_key.id_object = o_child.id
	INNER JOIN Attributes a_child_key ON a_child_key.id = oa_child_key.id_attribute
		AND a_child_key.is_key = 1
	INNER JOIN ObjectAttributes oa_child_show ON oa_child_show.id_object = o_child.id
	INNER JOIN Attributes a_child_show ON a_child_show.id = oa_child_show.id_attribute
		AND a_child_show.is_show = 1		
	WHERE o_parent.id_snapshot = @id_snapshot_l
	AND o_child.id_snapshot = @id_snapshot_l
	AND NOT oa_parent_key.attribute_value IN
	(SELECT oa_parent_key_delta.attribute_value 
	FROM Relationships r_delta
	INNER JOIN Objects o_parent_delta ON o_parent_delta.id = r_delta.id_object_parent
	INNER JOIN ObjectAttributes oa_parent_key_delta ON oa_parent_key_delta.id_object = o_parent_delta.id
	INNER JOIN Attributes a_parent_key_delta ON a_parent_key_delta.id = oa_parent_key_delta.id_attribute
		AND a_parent_key_delta.is_key = 1
	INNER JOIN Objects o_child_delta ON o_child_delta.id = r_delta.id_object_child
	INNER JOIN ObjectAttributes oa_child_key_delta ON oa_child_key_delta.id_object = o_child_delta.id
	INNER JOIN Attributes a_child_key_delta ON a_child_key_delta.id = oa_child_key_delta.id_attribute
		AND a_child_key_delta.is_key = 1
	WHERE o_child_delta.id_snapshot = @id_snapshot_delta_l
	AND o_parent_delta.id_snapshot = @id_snapshot_delta_l 
	AND oa_child_key_delta.attribute_value = oa_child_key.attribute_value
	AND o_child.id_type = o_child_delta.id_type
	AND o_parent.id_type = o_parent_delta.id_type
	AND o_child.id_source = o_child_delta.id_source
	AND o_parent.id_source = o_parent_delta.id_source)

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationships_add_staging_vertical]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationships_add_staging_vertical]
	@id_snapshot bigint,
	@type varchar(255),
	@source_parent varchar(255),
	@source_child varchar(255),
	@column_index_parent int,
	@object_type_parent varchar(255),
	@column_index_child int,
	@object_type_child varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @sql varchar(MAX)
	DECLARE @table_temp table (field_key varchar(MAX), field_related varchar(MAX), id_object_parent int, id_object_child int)
	
	DECLARE @key varchar(MAX)
	DECLARE @key_related varchar(MAX)
	DECLARE @id_object_parent bigint
	DECLARE @id_object_child bigint
	DECLARE @id_source_parent bigint = (SELECT id FROM Sources WHERE name = @source_parent)
	DECLARE @id_source_child bigint = (SELECT id FROM Sources WHERE name = @source_child)
	DECLARE @id_object_type_parent bigint = (SELECT id FROM Types WHERE name = @object_type_parent)
	DECLARE @id_object_type_child bigint = (SELECT id FROM Types WHERE name = @object_type_child)
	
	DECLARE @id_type bigint
	SET @id_type = (SELECT id FROM Types WHERE name = @type)
	IF @id_type IS NULL BEGIN
		INSERT INTO Types(name)
		VALUES (@type)
		SET @id_type = (SELECT SCOPE_IDENTITY())
	END		

	IF @id_source_parent > 0 AND @id_source_child > 0 BEGIN
		SET @sql = 'SELECT DISTINCT 
		s_t.field_' + CONVERT(varchar, @column_index_parent) + ', 
		s_t.field_' + CONVERT(varchar, @column_index_child) + ', 
		o_parent.id, 
		o_child.id
		FROM Staging_table s_t
		INNER JOIN ObjectAttributes oa_parent ON oa_parent.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_parent) + '
		INNER JOIN Attributes a_parent ON a_parent.id = oa_parent.id_attribute
			AND a_parent.is_key = 1
		INNER JOIN Objects o_parent ON o_parent.id = oa_parent.id_object 
			AND o_parent.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + '
			AND o_parent.id_source = ' + CONVERT(varchar, @id_source_parent) + '
			AND o_parent.id_type = ' + CONVERT(varchar, @id_object_type_parent) + '
		INNER JOIN ObjectAttributes oa_child ON oa_child.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_child) + '
		INNER JOIN Attributes a_child ON a_child.id = oa_child.id_attribute
			AND a_child.is_key = 1
		INNER JOIN Objects o_child ON o_child.id = oa_child.id_object  
			AND o_child.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + '
			AND o_child.id_source = ' + CONVERT(varchar, @id_source_child) + '
			AND o_child.id_type = ' + CONVERT(varchar, @id_object_type_child) + ''
		SELECT @sql
	END
	ELSE BEGIN
		SET @sql = 'SELECT DISTINCT 
		s_t.field_' + CONVERT(varchar, @column_index_parent) + ', 
		s_t.field_' + CONVERT(varchar, @column_index_child) + ', 
		o_parent.id, 
		o_child.id
		FROM Staging_table s_t
		INNER JOIN ObjectAttributes oa_parent ON oa_parent.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_parent) + '
		INNER JOIN Attributes a_parent ON a_parent.id = oa_parent.id_attribute
			AND a_parent.is_key = 1		
		INNER JOIN Objects o_parent ON o_parent.id = oa_parent.id_object 
		AND o_parent.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + '
		INNER JOIN ObjectAttributes oa_child ON oa_child.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_child) + '
		INNER JOIN Attributes a_child ON a_child.id = oa_child.id_attribute
			AND a_child.is_key = 1		
		INNER JOIN Objects o_child ON o_child.id = oa_child.id_object  
		AND o_child.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + ''
	END
	
	INSERT INTO @table_temp
	EXEC(@sql);
	
	DECLARE staging_cursor CURSOR FOR
	SELECT field_key, field_related, id_object_parent, id_object_child
	FROM @table_temp
	OPEN staging_cursor;

	FETCH NEXT FROM staging_cursor 
	INTO @key, @key_related, @id_object_parent, @id_object_child

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @id_object_parent > 0 AND @id_object_child > 0 BEGIN
			INSERT INTO Relationships (id_type, id_object_parent, id_object_child)
			VALUES (@id_type, @id_object_parent, @id_object_child)
		END

		FETCH NEXT FROM staging_cursor 
		INTO @key, @key_related, @id_object_parent, @id_object_child																
	END
	CLOSE staging_cursor
	DEALLOCATE staging_cursor	
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationships_add_staging_horizontal]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationships_add_staging_horizontal]
	@id_snapshot bigint,
	@type varchar(255),
	@source_parent varchar(255),
	@source_child varchar(255),
	@column_index_parent int,
	@object_type_parent varchar(255),
	@column_index_child int,
	@object_type_child varchar(255),
	@keys_related_separator varchar(1)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_type bigint
	SET @id_type = (SELECT id FROM Types WHERE name = @type)
	IF @id_type IS NULL BEGIN
		INSERT INTO Types(name)
		VALUES (@type)
		SET @id_type = (SELECT SCOPE_IDENTITY())
	END	
	
	DECLARE @sql varchar(MAX)
	DECLARE @table_temp table (field_key varchar(MAX), field_related varchar(MAX), id_object_parent bigint)
	
	DECLARE @key varchar(MAX)
	DECLARE @keys_related varchar(MAX)
	DECLARE @id_object_parent bigint
	DECLARE @id_object_child bigint
	DECLARE @id_source_parent bigint = (SELECT id FROM Sources WHERE name = @source_parent)
	DECLARE @id_source_child bigint = (SELECT id FROM Sources WHERE name = @source_child)
	DECLARE @id_object_type_parent bigint = (SELECT id FROM Types WHERE name = @object_type_parent)
	DECLARE @id_object_type_child bigint = (SELECT id FROM Types WHERE name = @object_type_child)	

	IF LEN(@source_parent) > 0 AND LEN(@source_child) > 0 BEGIN
		SET @sql = 'SELECT DISTINCT 
		s_t.field_' + CONVERT(varchar, @column_index_parent) + ', 
		s_t.field_' + CONVERT(varchar, @column_index_child) + ', 
		o_parent.id
		FROM Staging_table s_t
		INNER JOIN ObjectAttributes oa_parent ON oa_parent.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_parent) + '
		INNER JOIN Attributes a_parent ON a_parent.id = oa_parent.id_attribute
			AND a_parent.is_key = 1	
		INNER JOIN Objects o_parent ON o_parent.id = oa_parent.id_object 
			AND o_parent.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + '
			AND o_parent.id_type = ' + CONVERT(varchar, @id_object_type_parent) + '
			AND o_parent.id_source = ' + CONVERT(varchar, @id_source_parent) + ''
	END
	ELSE BEGIN
		SET @sql = 'SELECT DISTINCT 
		s_t.field_' + CONVERT(varchar, @column_index_parent) + ', 
		s_t.field_' + CONVERT(varchar, @column_index_child) + ', 
		o_parent.id
		FROM Staging_table s_t
		INNER JOIN ObjectAttributes oa_parent ON oa_parent.attribute_value = s_t.field_' + CONVERT(varchar, @column_index_parent) + '
		INNER JOIN Attributes a_parent ON a_parent.id = oa_parent.id_attribute
			AND a_parent.is_key = 1			
		INNER JOIN Objects o_parent ON o_parent.id = oa_parent.id_object 
			AND o_parent.id_snapshot = ' + CONVERT(varchar, @id_snapshot) + ''
	END
	
	INSERT INTO @table_temp
	EXEC(@sql);
	
	DECLARE staging_cursor CURSOR FOR
	SELECT field_key, field_related, id_object_parent
	FROM @table_temp
	OPEN staging_cursor;

	FETCH NEXT FROM staging_cursor 
	INTO @key, @keys_related, @id_object_parent

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF LEN(@source_parent) > 0 AND LEN(@source_child) > 0 BEGIN
			DECLARE r_cursor CURSOR FOR
			SELECT o.id
			FROM fnStringToTable(@keys_related, @keys_related_separator) s_t
			INNER JOIN ObjectAttributes oa ON oa.attribute_value = s_t.string_value
			INNER JOIN Attributes a ON a.id = oa.id_attribute
				AND a.is_key = 1
			INNER JOIN Objects o ON o.id = oa.id_object
				AND o.id_source = @id_source_child
				AND o.id_type = @id_object_type_child
				AND o.id_snapshot = @id_snapshot
		END
		ELSE BEGIN
			DECLARE r_cursor CURSOR FOR
			SELECT o.id
			FROM fnStringToTable(@keys_related, @keys_related_separator) s_t
			INNER JOIN ObjectAttributes oa ON oa.attribute_value = s_t.string_value
			INNER JOIN Attributes a ON a.id = oa.id_attribute
				AND a.is_key = 1	
			INNER JOIN Objects o ON o.id = oa.id_object
				AND o.id_snapshot = @id_snapshot
		END
		
		OPEN r_cursor;
		
		FETCH NEXT FROM r_cursor
		INTO @id_object_child
		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF @id_object_parent > 0 AND @id_object_child > 0 BEGIN
				INSERT INTO Relationships (id_type, id_object_parent, id_object_child)
				VALUES (@id_type, @id_object_parent, @id_object_child)
			END
			
			FETCH NEXT FROM r_cursor
			INTO @id_object_child
		END
		CLOSE r_cursor
		DEALLOCATE r_cursor

		FETCH NEXT FROM staging_cursor 
		INTO @key, @keys_related, @id_object_parent
	END
	CLOSE staging_cursor
	DEALLOCATE staging_cursor	
END
GO
/****** Object:  StoredProcedure [dbo].[spSAP_UMRA_Employees_get_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSAP_UMRA_Employees_get_left]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.PERNO, @name_a_join_prefix + c.PERNO + @name_a_join_suffix FROM SAP_UMRA_Employees c		

	SELECT
	c.PERNO,
	c.PAYAREA,
	c.FIRSTNAME,
	c.LAST_NAME,
	c.POSITION,
	c.POSTXT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.ORGTXT,
	c.FROM_DATE,
	c.TO_DATE
	FROM fnSAP_UMRA_Employees_get(@is_active,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	LEFT JOIN 
	(SELECT j.value FROM #data_join j
	INNER JOIN ObjectAttributes oa ON oa.attribute_value = j.value_formatted
	INNER JOIN Attributes a ON a.id = oa.id_attribute
		AND a.name = @name_a_join
	INNER JOIN Objects o ON oa.id_object = o.id
		AND o.id_snapshot = @id_snapshot_l) oa_join ON oa_join.value = c.bsn
	WHERE oa_join.value IS NULL

	ORDER BY CONVERT(datetime, c.FROM_DATE) DESC

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spSAP_UMRA_Employees_get_common_inactive_enabled]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSAP_UMRA_Employees_get_common_inactive_enabled]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.PERNO, @name_a_join_prefix + c.PERNO + @name_a_join_suffix FROM SAP_UMRA_Employees c		

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.PERNO,
	c.PAYAREA,
	c.FIRSTNAME,
	c.LAST_NAME,
	c.POSITION,
	c.POSTXT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.ORGTXT,
	c.FROM_DATE,
	c.TO_DATE,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnSAP_UMRA_Employees_get(0,NULL,NULL,NULL,NULL) c
	INNER JOIN #data_join j ON j.value = c.PERNO
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	AND oa_disabled.attribute_value = 'No'
	
	AND (c.PERNO NOT IN (SELECT c_active.PERNO FROM fnSAP_UMRA_Employees_get(1,NULL,NULL,NULL,NULL) c_active))

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spSAP_UMRA_Employees_get_common_active_disabled]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSAP_UMRA_Employees_get_common_active_disabled]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = ''
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.PERNO, @name_a_join_prefix + c.PERNO + @name_a_join_suffix FROM SAP_UMRA_Employees c			

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.PERNO,
	c.PAYAREA,
	c.FIRSTNAME,
	c.LAST_NAME,
	c.POSITION,
	c.POSTXT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.ORGTXT,
	c.FROM_DATE,
	c.TO_DATE,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnSAP_UMRA_Employees_get(1,NULL,NULL,NULL,NULL) c
	INNER JOIN #data_join j ON j.value = c.PERNO
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	AND NOT oa_disabled.attribute_value = 'No'
	
	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spSAP_UMRA_Employees_get_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSAP_UMRA_Employees_get_common]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL,
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.PERNO, @name_a_join_prefix + c.PERNO + @name_a_join_suffix FROM SAP_UMRA_Employees c		

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.PERNO,
	c.PAYAREA,
	c.FIRSTNAME,
	c.LAST_NAME,
	c.POSITION,
	c.POSTXT,
	c.COSTCENTER,
	c.ORG_UNIT,
	c.ORGTXT,
	c.FROM_DATE,
	c.TO_DATE,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnSAP_UMRA_Employees_get(@is_active,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	INNER JOIN #data_join j ON j.value = c.PERNO
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	
	AND (c.PERNO NOT IN (SELECT c_active.PERNO FROM fnSAP_UMRA_Employees_get(1,NULL,NULL,NULL,NULL) c_active) OR @is_active = 1 OR @is_active IS NULL)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objectattribute_add]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objectattribute_add]
	@id_object bigint,
	@attribute_name varchar(255),
	@attribute_value varchar(500),
	@column_index int,
	@column_index_key int,
	@column_index_show int
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @max_length_attribute_value int
	SET @max_length_attribute_value = 500

	DECLARE @is_key bit
	DECLARE @is_show bit
	DECLARE @id_attribute bigint
	
	IF @id_object > 0 AND LEN(@attribute_name) > 0 AND (LEN(@attribute_value) < @max_length_attribute_value OR @attribute_value IS NULL) BEGIN	
		SET @is_key = 0
		IF @column_index = @column_index_key BEGIN
			SET @is_key = 1
		END
		
		SET @is_show = 0
		IF @column_index = @column_index_show BEGIN
			SET @is_show = 1
		END
		
		SET @id_attribute = (SELECT id FROM Attributes WHERE name = @attribute_name AND is_key = @is_key AND is_show = @is_show)
		IF @id_attribute IS NULL BEGIN
			INSERT INTO Attributes(name, is_show, is_key)
			VALUES (@attribute_name, @is_show, @is_key)
			SET @id_attribute = (SELECT SCOPE_IDENTITY())
		END
		
		INSERT INTO ObjectAttributes (id_object, id_attribute, attribute_value)
		VALUES(@id_object, @id_attribute, @attribute_value)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_object_relationships_get_parent]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_object_relationships_get_parent]
	@id_object bigint
AS
BEGIN
	SET NOCOUNT ON;

	WITH relationships_parent (
		id,
		type,
		id_object_parent, 
		id_object_child, 
		level_relation) AS
	(
		SELECT
		r.id,
		t_r.name,
		r.id_object_parent,
		r.id_object_child,
		0 as level_relation
		FROM Relationships r
		INNER JOIN Types t_r ON t_r.id = r.id_type
		WHERE r.id_object_child = @id_object

		UNION ALL

		SELECT
		r_parent.id,
		t_r_parent.name,
		r_parent.id_object_parent,
		r_parent.id_object_child,
		pr.level_relation + 1 AS level_relation
		FROM Relationships r_parent
		INNER JOIN Types t_r_parent ON t_r_parent.id = r_parent.id_type
		INNER JOIN relationships_parent pr ON r_parent.id_object_child = pr.id_object_parent
			AND NOT pr.id_object_child = r_parent.id_object_parent
	)

	SELECT 
	CONVERT(varchar, r_p.id) + '-' + CONVERT(varchar, r_p.level_relation) as 'id',
	CONVERT(varchar, r_p.id_object_parent) as 'id_object_parent',
	t_parent.name,
	oa_parent.attribute_value,	
	r_p.type,
	CONVERT(varchar, r_p.id_object_child) as 'id_object_child',
	t_child.name,
	oa_child.attribute_value,
	r_p.level_relation	
	FROM relationships_parent r_p
	INNER JOIN Objects o_parent ON o_parent.id = r_p.id_object_parent
	INNER JOIN Types t_parent ON t_parent.id = o_parent.id_type
	INNER JOIN ObjectAttributes oa_parent ON oa_parent.id_object = o_parent.id
	INNER JOIN Attributes a_parent_show ON a_parent_show.id = oa_parent.id_attribute
		AND a_parent_show.is_show = 1
	INNER JOIN Objects o_child ON o_child.id = r_p.id_object_child
	INNER JOIN Types t_child ON t_child.id = o_child.id_type
	INNER JOIN ObjectAttributes oa_child ON oa_child.id_object = o_child.id
	INNER JOIN Attributes a_child_show ON a_child_show.id = oa_child.id_attribute
		AND a_child_show.is_show = 1
	ORDER BY level_relation, oa_parent.attribute_value, oa_child.attribute_value

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_object_relationships_get_child]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_object_relationships_get_child]
	@id_object bigint
AS
BEGIN
	SET NOCOUNT ON;

	WITH relationships_child (
		id,
		type,
		id_object_child, 
		id_object_parent, 
		level_relation) AS
	(
		SELECT
		r.id,
		t_r.name,
		r.id_object_child,
		r.id_object_parent,
		0 as level_relation
		FROM Relationships r
		INNER JOIN Types t_r ON t_r.id = r.id_type
		WHERE r.id_object_parent = @id_object

		UNION ALL

		SELECT
		r_child.id,	
		t_r_child.name,
		r_child.id_object_child,
		r_child.id_object_parent,
		pr.level_relation + 1 AS level_relation
		FROM Relationships r_child
		INNER JOIN Types t_r_child ON t_r_child.id = r_child.id_type
		INNER JOIN relationships_child pr ON r_child.id_object_parent = pr.id_object_child
			AND NOT pr.id_object_parent = r_child.id_object_child
	)

	SELECT 
	CONVERT(varchar, r_c.id) + '-' + CONVERT(varchar, r_c.level_relation) as 'id',
	CONVERT(varchar, r_c.id_object_child) as 'id_object_child',
	t_child.name,
	oa_child.attribute_value,
	r_c.type,
	CONVERT(varchar, r_c.id_object_parent) as 'id_object_parent',
	t_parent.name,
	oa_parent.attribute_value,
	r_c.level_relation
	FROM relationships_child r_c
	INNER JOIN Objects o_child ON o_child.id = r_c.id_object_child
	INNER JOIN Types t_child ON t_child.id = o_child.id_type
	INNER JOIN ObjectAttributes oa_child ON oa_child.id_object = o_child.id
	INNER JOIN Attributes a_child_show ON a_child_show.id = oa_child.id_attribute
		AND a_child_show.is_show = 1
	INNER JOIN Objects o_parent ON o_parent.id = r_c.id_object_parent
	INNER JOIN Types t_parent ON t_parent.id = o_parent.id_type
	INNER JOIN ObjectAttributes oa_parent ON oa_parent.id_object = o_parent.id
	INNER JOIN Attributes a_parent_show ON a_parent_show.id = oa_parent.id_attribute
		AND a_parent_show.is_show = 1
	ORDER BY level_relation, oa_child.attribute_value, oa_parent.attribute_value

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_object_get_attributes]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_object_get_attributes]
	@id_object bigint
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	a.name,
	oa.attribute_value
	FROM ObjectAttributes oa
	INNER JOIN Attributes a ON a.id = oa.id_attribute
	INNER JOIN Objects o ON o.id = oa.id_object
	WHERE o.id = @id_object

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_delete]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_delete]
	@id_snapshot bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END	

	DECLARE @obsoleteid_object TABLE (id bigint)

	INSERT INTO @obsoleteid_object
	SELECT id
	FROM Objects
	WHERE id_snapshot = @id_snapshot_l

	DELETE FROM ObjectAttributes
	WHERE id_object IN (SELECT id FROM @obsoleteid_object)

	DELETE FROM Relationships
	WHERE id_object_child IN (SELECT id FROM @obsoleteid_object)

	DELETE FROM Relationships
	WHERE id_object_parent IN (SELECT id FROM @obsoleteid_object)
	
	DELETE FROM Objects 
	WHERE id_snapshot = @id_snapshot_l	

	DELETE FROM Snapshots 
	WHERE id = @id_snapshot_l
	
	SELECT @id_snapshot_l
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_cleanup]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_cleanup]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @obsoleteid_snapshot TABLE (id bigint)
	DECLARE @obsoleteid_object TABLE (id bigint)

	INSERT INTO @obsoleteid_snapshot
	SELECT id
	FROM Snapshots
	WHERE NOT id IN (SELECT TOP 10 id FROM Snapshots ORDER BY timestamp_start DESC)
	ORDER BY timestamp_start DESC
	
	INSERT INTO @obsoleteid_snapshot
	SELECT s.id
	FROM Snapshots s
	WHERE s.id NOT IN (SELECT id_snapshot FROM Objects)

	INSERT INTO @obsoleteid_object
	SELECT id
	FROM Objects
	WHERE id_snapshot IN (SELECT id FROM @obsoleteid_snapshot)

	DELETE FROM ObjectAttributes
	WHERE id_object IN (SELECT id FROM @obsoleteid_object)

	DELETE FROM Relationships
	WHERE id_object_child IN (SELECT id FROM @obsoleteid_object)

	DELETE FROM Relationships
	WHERE id_object_parent IN (SELECT id FROM @obsoleteid_object)
	
	DELETE FROM Objects 
	WHERE id_snapshot IN (SELECT id FROM @obsoleteid_snapshot)	

	DELETE FROM Snapshots 
	WHERE id IN (SELECT id FROM @obsoleteid_snapshot)
	
	SELECT * FROM @obsoleteid_snapshot
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objectattributes_get_delta]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objectattributes_get_delta]
	@id_snapshot bigint,
	@id_snapshot_delta bigint
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = @id_snapshot
	DECLARE @id_snapshot_delta_l bigint = @id_snapshot_delta	
	
	SELECT
	oa.id,
	o.id,
	oa_key.attribute_value,
	oa_show.attribute_value,
	a.name,
	oa.attribute_value,
	oa_delta.attribute_value
	FROM ObjectAttributes oa
	INNER JOIN Attributes a ON a.id = oa.id_attribute
	INNER JOIN Objects o ON o.id = oa.id_object
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.is_show = 1
	INNER JOIN ObjectAttributes oa_delta ON oa_delta.id_attribute = oa.id_attribute
	INNER JOIN Attributes a_delta ON a_delta.id = oa_delta.id_attribute
	INNER JOIN Objects o_delta ON o_delta.id = oa_delta.id_object
	INNER JOIN ObjectAttributes oa_delta_key ON oa_delta_key.id_object = o_delta.id
	INNER JOIN Attributes a_delta_key ON a_delta_key.id = oa_delta_key.id_attribute
		AND a_delta_key.is_key = 1
	WHERE o.id_snapshot = @id_snapshot_l
	AND o_delta.id_snapshot = @id_snapshot_delta_l
	AND oa_key.attribute_value = oa_delta_key.attribute_value
	AND NOT oa.attribute_value = oa_delta.attribute_value

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objects_get_delta]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objects_get_delta]
	@id_snapshot bigint,
	@id_snapshot_delta bigint
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = @id_snapshot
	DECLARE @id_snapshot_delta_l bigint = @id_snapshot_delta

	SELECT
	o.id,
	oa_key.attribute_value,
	oa_show.attribute_value,
	s_o.name,
	t_o.name	
	FROM Objects o
	INNER JOIN Types t_o ON t_o.id = o.id_type
	INNER JOIN Sources s_o ON s_o.id = o.id_source
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.is_show = 1
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	WHERE o.id_snapshot = @id_snapshot_l
	AND NOT oa_key.attribute_value IN
	(SELECT oa_key_delta.attribute_value 
	FROM ObjectAttributes oa_key_delta
	INNER JOIN Attributes a_key_delta ON a_key_delta.id = oa_key_delta.id_attribute
		AND a_key_delta.is_key = 1
	INNER JOIN Objects o_delta ON o_delta.id = oa_key_delta.id_object
	WHERE o_delta.id_snapshot = @id_snapshot_delta_l)

END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objectsid_id]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fnSnapshot_objectsid_id]
(
	@object_sid varchar(255)
)
RETURNS bigint
AS
BEGIN
	DECLARE @id_attribute_objectsid bigint
	SET @id_attribute_objectsid = (SELECT id 
		FROM Attributes
		WHERE name = 'objectSID')

	DECLARE @id_object bigint
	SELECT @id_object = o_a.id_object FROM ObjectAttributes o_a
		INNER JOIN Cache_table_dn_sAMAccountName c ON c.distinguishedName = o_a.attribute_value
		WHERE c.objectSID = @object_sid AND o_a.id_attribute = @id_attribute_objectsid

	RETURN @id_object
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_objects_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSnapshot_objects_get] 
(
	@id_snapshot bigint = 0,
	@type_object varchar(100) = NULL,
	@source_object varchar(100) = NULL
)
RETURNS @table_result table (
	id_object bigint, 
	name_object_key varchar(500), 
	name_object_show varchar(255), 
	type_object varchar(100), 
	source_object varchar(100))  
AS
BEGIN
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_type_o bigint
	SET @id_type_o = (SELECT id 
		FROM Types 
		WHERE name = @type_object)
		
	DECLARE @id_source_o bigint
	SET @id_source_o = (SELECT id
		FROM Sources
		WHERE name = @source_object)
	
	INSERT INTO @table_result
	SELECT
	o.id,
	o_a_key.attribute_value,
	o_a_show.attribute_value,
	t_o.name,
	s_o.name
	FROM dbo.Objects o
	INNER JOIN dbo.Types t_o ON t_o.id = o.id_type
		AND (o.id_type = @id_type_o OR @type_object IS NULL)
	INNER JOIN dbo.Sources s_o ON s_o.id = o.id_source
		AND (o.id_source = @id_source_o OR @source_object IS NULL)
	INNER JOIN dbo.ObjectAttributes o_a_key ON o_a_key.id_object = o.id
	INNER JOIN dbo.Attributes a_key ON a_key.id = o_a_key.id_attribute AND a_key.is_key = 1
	INNER JOIN dbo.ObjectAttributes o_a_show ON o_a_show.id_object = o.id
	INNER JOIN dbo.Attributes a_show ON a_show.id = o_a_show.id_attribute AND a_show.is_show = 1	
	WHERE o.id_snapshot = @id_snapshot_l
	
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnAFAS_UMRA_Organizations_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnAFAS_UMRA_Organizations_get] 
(
	@is_active bit,
	@indnst_dat_start datetime,
	@indnst_dat_end datetime,
	@uitdnst_dat_start datetime,
	@uitdnst_dat_end datetime
)
RETURNS @table_result table (
	org_kd varchar(50),
	org_oms varchar(255))
AS
BEGIN
	INSERT INTO @table_result
	SELECT DISTINCT
	c.org_kd,
	MAX(c.org_oms)
	FROM fnAFAS_UMRA_Employees_get(@is_active,NULL,NULL,NULL,NULL,NULL) c
	GROUP BY c.org_kd
	
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnAFAS_UMRA_Functions_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnAFAS_UMRA_Functions_get] 
(
	@is_active bit,
	@indnst_dat_start datetime,
	@indnst_dat_end datetime,
	@uitdnst_dat_start datetime,
	@uitdnst_dat_end datetime
)
RETURNS @table_result table (
	func_kd varchar(50),
	func_oms varchar(255))
AS
BEGIN
	INSERT INTO @table_result
	SELECT DISTINCT
	c.func_kd,
	MAX(c.func_oms)
	FROM fnAFAS_UMRA_Employees_get(@is_active,NULL,NULL,NULL,NULL,NULL) c
	GROUP BY c.func_kd
	
	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_left]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM AFAS_UMRA_Employees c	

	SELECT
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat
	FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	LEFT JOIN 
	(SELECT j.value FROM #data_join j
	INNER JOIN ObjectAttributes oa ON oa.attribute_value = j.value_formatted
	INNER JOIN Attributes a ON a.id = oa.id_attribute
		AND a.name = @name_a_join
	INNER JOIN Objects o ON oa.id_object = o.id
		AND o.id_snapshot = @id_snapshot_l) oa_join ON oa_join.value = c.bsn
	WHERE oa_join.value IS NULL
	AND CONVERT(datetime, ISNULL(c.uitdnst_dat,GETDATE()+1000), 105) > GETDATE()

	ORDER BY CONVERT(datetime, c.indnst_dat, 105)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common_names]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common_names]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.cost_oms
	FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'displayName'

	WHERE o.id_snapshot = @id_snapshot_l
	
	AND (c.bsn NOT IN (SELECT c_active.bsn FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c_active) OR @is_active = 1 OR @is_active IS NULL)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common_inactive_enabled]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common_inactive_enabled]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = ''
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(0,1,NULL,NULL,NULL,NULL) c	

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnAFAS_UMRA_Employees_get(0,1,NULL,NULL,NULL,NULL) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	AND oa_disabled.attribute_value = 'No'

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common_contracts]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common_contracts]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	CREATE TABLE #accountExpires (id_object bigint, datetime_value datetime)
	INSERT INTO #accountExpires
	SELECT 
	o.id,
	dbo.fnSnapshot_attribute_datetime(oa.attribute_value)
	FROM ObjectAttributes oa
	INNER JOIN Objects o ON o.id = oa.id_object
	INNER JOIN Attributes a ON a.id = oa.id_attribute
	WHERE o.id_snapshot = @id_snapshot_l
	AND a.name = 'accountExpires'
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	a_e.datetime_value,
	ISNULL(CONVERT(datetime, c.uitdnst_dat, 105),GETDATE()+1000) AS 'uitdnst_dt'
	FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'displayName'
	INNER JOIN #accountExpires a_e ON a_e.id_object = o.id

	WHERE o.id_snapshot = @id_snapshot_l
	AND (ISNULL(CONVERT(datetime, c.uitdnst_dat, 105),GETDATE()+1000) < GETDATE()+1000
	OR (ISNULL(CONVERT(datetime, c.uitdnst_dat, 105),GETDATE()+1000) = GETDATE()+1000 
		AND a_e.datetime_value < GETDATE()+1000))

	AND (c.bsn NOT IN (SELECT c_active.bsn FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c_active) OR @is_active = 1 OR @is_active IS NULL)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common_changed]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common_changed]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@pl_primary bit = 0,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c	

	SELECT
	c.bsn + '-' + c.dvb as 'id',
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnAFAS_UMRA_Employees_get(@is_active,@pl_primary,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	
	AND (c.bsn NOT IN (SELECT c_active.bsn FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c_active) OR @is_active = 1 OR @is_active IS NULL)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common_active_disabled]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common_active_disabled]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = ''
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c	

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	AND NOT oa_disabled.attribute_value = 'No'

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get_common]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = '',
	@name_a_join_suffix varchar(50) = '',
	@is_active bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	
	CREATE TABLE #data_join (value varchar(255), value_formatted varchar(255))
	INSERT INTO #data_join
	SELECT c.bsn, @name_a_join_prefix + c.bsn + @name_a_join_suffix FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c

	SELECT
	oa_key.attribute_value,
	oa_show.attribute_value,
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	CASE
		WHEN c.gbrk_naam = 'B' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'P' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'BP' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam + ' - ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam, '  ', ' ')
		WHEN c.gbrk_naam = 'PB' THEN REPLACE(c.e_vrlt + ' ' + ISNULL(c.p_vrvg,'') + ' ' + c.p_naam + ' - ' + ISNULL(c.e_vrvg,'') + ' ' + c.e_naam, '  ', ' ')
	END as 'naam_vol',
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat,
	oa_disabled.attribute_value,
	oa_lastlogon.attribute_value
	FROM fnAFAS_UMRA_Employees_get(@is_active,1,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c
	INNER JOIN #data_join j ON j.value = c.bsn
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = j.value_formatted
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	INNER JOIN ObjectAttributes oa_show ON oa_show.id_object = o.id
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.name = 'canonicalName'
	INNER JOIN ObjectAttributes oa_disabled ON oa_disabled.id_object = o.id
	INNER JOIN Attributes a_disabled ON a_disabled.id = oa_disabled.id_attribute
		AND a_disabled.name = 'disabled'
	INNER JOIN ObjectAttributes oa_lastlogon ON oa_lastlogon.id_object = o.id
	INNER JOIN Attributes a_lastlogon ON a_lastlogon.id = oa_lastlogon.id_attribute
		AND a_lastlogon.name = 'lastlogonTimestamp'

	WHERE o.id_snapshot = @id_snapshot_l
	
	AND (c.bsn NOT IN (SELECT c_active.bsn FROM fnAFAS_UMRA_Employees_get(1,1,NULL,NULL,NULL,NULL) c_active) OR @is_active = 1 OR @is_active IS NULL)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_get]
	@is_active bit = NULL,
	@pl_primary bit = 1,
	@indnst_dat_start datetime = NULL,
	@indnst_dat_end datetime = NULL,
	@uitdnst_dat_start datetime = NULL,
	@uitdnst_dat_end datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
	c.bsn,
	c.mdw,
	c.nr,
	c.dvb,
	c.e_vrlt,
	c.e_roepnaam,
	c.e_voornm,
	c.e_vrvg,
	c.e_naam,
	c.p_vrvg,
	c.p_naam,
	c.gbrk_naam,
	c.geslacht,
	c.func_kd,
	c.func_oms,
	c.cost_kd,
	c.cost_oms,
	c.org_kd,
	c.org_oms,
	c.indnst_dat,
	c.uitdnst_dat
	FROM fnAFAS_UMRA_Employees_get(@is_active,@pl_primary,@indnst_dat_start,@indnst_dat_end,@uitdnst_dat_start,@uitdnst_dat_end) c

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_report_overview]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_report_overview]
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
	CONVERT(varchar,t.id) + '-' + c_g.sAMAccountName as 'id',
	t.description,
	c_g.sAMAccountName,
	(SELECT COUNT(t_o_u.id)
	FROM TagObjects t_o_u
	WHERE t_o_u.id_tag = t.id
	AND t_o_u.id_type = (SELECT id FROM Types WHERE name = 'user')) as 'count_tag',
	(SELECT COUNT(r.id) 
	FROM Relationships r 
	WHERE r.id_object_parent = o.id
	AND r.id_type = (SELECT id FROM Types WHERE name = 'member')) as 'count_memberships'
	FROM Tags t
	INNER JOIN TagObjects t_o_g ON t_o_g.id_tag = t.id 
		AND t_o_g.id_type = (SELECT id FROM Types WHERE name = 'group')
	INNER JOIN Cache_table_dn_sAMAccountName c_g ON t_o_g.name = c_g.objectSID
	INNER JOIN ObjectAttributes oa_key ON oa_key.attribute_value = c_g.distinguishedName
	INNER JOIN Objects o ON o.id = oa_key.id_object
		AND o.id_snapshot = (SELECT MAX(id) FROM Snapshots)
	ORDER BY t.description
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objects_search]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objects_search]
	@id_snapshot bigint = 0,
	@name_attribute varchar(255),
	@attribute_value varchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END

	SELECT
	CONVERT(varchar,o.id) + '-' + CONVERT(varchar,oa_search.id) as 'id',
	o.id,
	oa_show.attribute_value,
	a_search.name,
	oa_search.attribute_value,
	s_o.name,
	t_o.name
	FROM Objects o
	INNER JOIN Types t_o ON t_o.id = o.id_type
	INNER JOIN Sources s_o ON s_o.id = o.id_source
	INNER JOIN ObjectAttributes oa_show ON o.id = oa_show.id_object
	INNER JOIN Attributes a_show ON a_show.id = oa_show.id_attribute
		AND a_show.is_show = 1
	LEFT JOIN ObjectAttributes oa_search ON o.id = oa_search.id_object
	LEFT JOIN Attributes a_search ON a_search.id = oa_search.id_attribute
	WHERE o.id_snapshot = @id_snapshot_l 
	AND (a_search.name = @name_attribute OR @name_attribute IS NULL)
	AND oa_search.attribute_value LIKE '%' + @attribute_value + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[spTags_permissions_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTags_permissions_get]
	@name_input varchar(500),
	@type_permission varchar(50) = NULL,
	@tag_is_active bit = 1,
	@is_allowed bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_object_input bigint = dbo.fnSnapshot_objectdn_id(@name_input)
	DECLARE @name_input_sid varchar(255) = dbo.fnSnapshot_objectid_sid(@id_object_input)
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	IF @id_type_r_member IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('member')
		SET @id_type_r_member = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_type_p bigint = (SELECT id FROM Types WHERE name = @type_permission)
	IF @id_type_p IS NULL AND LEN(@type_permission) > 0 BEGIN
		INSERT INTO Types (name) VALUES (@type_permission)
		SET @id_type_p = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	IF @id_type_o_group IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('group')
		SET @id_type_o_group = (SELECT SCOPE_IDENTITY())
	END		
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	IF @id_type_o_user IS NULL BEGIN
		INSERT INTO Types (name) VALUES ('user')
		SET @id_type_o_user = (SELECT SCOPE_IDENTITY())
	END	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_attribute_sid bigint = (SELECT id FROM Attributes WHERE name = 'objectSID')

	SELECT 
	t.id,
	t.description,
	t.keywords,
	t.category,
	t.duration_hour,
	t.delay_hour,
	t.is_active,
	t.direct_provision,
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_user) as 'users',
	(SELECT COUNT(id) FROM TagObjects WHERE id_tag = t.id AND is_active = 1 AND id_type = @id_type_o_group) as 'groups'	
	FROM TagPermissions t_p
	INNER JOIN Tags t ON t.id = t_p.id_tag
	WHERE (t_p.id_type_permission = @id_type_p OR @type_permission IS NULL)
	AND (t_p.is_allowed = @is_allowed OR @is_allowed IS NULL)
	AND (t.is_active = @tag_is_active OR @tag_is_active IS NULL)
	AND (t_p.name = @name_input_sid
	OR t_p.name IN
	(SELECT c.objectSID
	FROM Cache_table_dn_sAMAccountName c
	INNER JOIN ObjectAttributes oa_sid ON oa_sid.attribute_value = c.objectSID 
		AND oa_sid.id_attribute = @id_attribute_sid
	INNER JOIN Objects o ON o.id = oa_sid.id_object 
		AND o.id_snapshot = @id_snapshot_l
		AND o.id_type = @id_type_o_group
	INNER JOIN Relationships s_r ON s_r.id_object_parent = o.id
		AND s_r.id_type = @id_type_r_member
	WHERE s_r.id_object_child = @id_object_input))

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_group_attributes_managedby_users]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_group_attributes_managedby_users]
	@object_dn varchar(500)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	DECLARE @id_object_group bigint = dbo.fnSnapshot_objectdn_id(@object_dn)
	DECLARE @id_type_r_managedby bigint = (SELECT id FROM Types WHERE name = 'managedBy')
	DECLARE @id_object_child bigint = (SELECT r.id_object_child FROM Relationships r WHERE r.id_object_parent = @id_object_group AND id_type = @id_type_r_managedby)
	DECLARE @object_dn_child varchar(500) = dbo.fnSnapshot_objectid_key(@id_object_child)
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')	

	SELECT
	c_u.dn,
	c_u.attribute_1,
	c_u.attribute_2,
	c_u.attribute_3,
	c_u.attribute_4,
	c_u.attribute_5,
	c_u.attribute_6,
	c_u.attribute_7,
	c_u.attribute_8,
	c_u.attribute_9
	FROM Cache_table_ad c_u
	WHERE c_u.type = 'user' 
	AND (c_u.dn = @object_dn_child  
	OR c_u.dn IN
	(SELECT oa_key.attribute_value FROM Relationships r
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = r.id_object_child
	INNER JOIN Objects o ON o.id = oa_key.id_object AND o.id_snapshot = @id_snapshot_l AND o.id_type = @id_type_o_user
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute AND a_key.is_key = 1
	WHERE r.id_object_parent = @id_object_child AND r.id_type = @id_type_r_member))
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnSnapshot_relationships_get]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnSnapshot_relationships_get] 
(
	@output_nesting bigint = 0,
	@id_snapshot bigint = 0,
	@type_relationship varchar(100) = NULL,
	@type_object_parent varchar(100) = NULL,
	@type_object_child varchar(100) = NULL,
	@name_object_parent_key varchar(500) = NULL,
	@name_object_child_key varchar(500) = NULL
)
RETURNS @table_result table (
	id_object_parent bigint,
	name_parent_key varchar(500),
	name_parent_show varchar(255),
	id_object_child bigint,
	name_child_key varchar(500),
	name_child_show varchar(255), 
	type_relationship varchar(100),
	level_relationship varchar(10))  
AS
BEGIN
	DECLARE @id_snapshot_l bigint = 0
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object_parent_key bigint = 0
	SET @id_object_parent_key = dbo.fnSnapshot_objectdn_id(@name_object_parent_key)
	
	DECLARE @id_object_child_key bigint = 0
	SET @id_object_child_key = dbo.fnSnapshot_objectdn_id(@name_object_child_key)	
	
	DECLARE @id_type_r bigint = 0
	SET @id_type_r = (SELECT id 
		FROM Types
		WHERE name = @type_relationship)
	
	IF @output_nesting = 0 BEGIN
		INSERT INTO @table_result
		SELECT
		r.id_object_parent,
		s_o_parent.name_object_key,
		s_o_parent.name_object_show,
		r.id_object_child,
		s_o_child.name_object_key,
		s_o_child.name_object_show,
		t_r.name,
		'0'
		FROM Relationships r
		INNER JOIN Types t_r ON t_r.id = r.id_type
			AND (r.id_type = @id_type_r OR @type_relationship IS NULL)
		INNER JOIN fnSnapshot_objects_get(@id_snapshot_l,@type_object_parent,NULL) s_o_parent
			ON s_o_parent.id_object = r.id_object_parent
		INNER JOIN fnSnapshot_objects_get(@id_snapshot_l,@type_object_child,NULL) s_o_child
			ON s_o_child.id_object = r.id_object_child
		WHERE (r.id_object_parent = @id_object_parent_key OR @name_object_parent_key IS NULL)
		AND (r.id_object_child = @id_object_child_key OR @name_object_child_key IS NULL)
	END
	ELSE BEGIN
		WITH relationships_parent (
			type,
			id_object_parent, 
			name_parent_key,
			name_parent_show,
			id_object_child,
			id_object_root,
			name_root_key,
			name_root_show,
			level_relation) AS
			(
			SELECT
			t_r.name,
			s_o_parent.id_object,
			s_o_parent.name_object_key,
			s_o_parent.name_object_show,
			s_o_child.id_object,
			s_o_child.id_object,
			s_o_child.name_object_key,
			s_o_child.name_object_show,
			0 as level_relation
			FROM dbo.Relationships r
			INNER JOIN dbo.Types t_r ON t_r.id = r.id_type
				AND (r.id_type = @id_type_r OR @type_relationship IS NULL)
			INNER JOIN dbo.fnSnapshot_objects_get(@id_snapshot_l,@type_object_parent,NULL) s_o_parent
				ON s_o_parent.id_object = r.id_object_parent
			INNER JOIN dbo.fnSnapshot_objects_get(@id_snapshot_l,@type_object_child,NULL) s_o_child
				ON s_o_child.id_object = r.id_object_child
			WHERE (r.id_object_parent = @id_object_parent_key OR @name_object_parent_key IS NULL)
			AND (r.id_object_child = @id_object_child_key OR @name_object_child_key IS NULL)				

			UNION ALL
			
			SELECT
			t_r.name,
			s_o_parent.id_object,
			s_o_parent.name_object_key,
			s_o_parent.name_object_show,
			s_o_child.id_object,
			r_p.id_object_root,
			r_p.name_root_key,
			r_p.name_root_show,
			r_p.level_relation + 1
			FROM dbo.Relationships r_nested
			INNER JOIN dbo.Types t_r ON t_r.id = r_nested.id_type
				AND (r_nested.id_type = @id_type_r OR @type_relationship IS NULL)
			INNER JOIN dbo.fnSnapshot_objects_get(@id_snapshot_l,@type_object_parent,NULL) s_o_parent
				ON s_o_parent.id_object = r_nested.id_object_parent
			INNER JOIN dbo.fnSnapshot_objects_get(@id_snapshot_l,@type_object_child,NULL) s_o_child
				ON s_o_child.id_object = r_nested.id_object_child	
			INNER JOIN relationships_parent r_p ON r_p.id_object_parent = r_nested.id_object_child
				AND NOT r_p.id_object_child = r_nested.id_object_parent
			)

		INSERT INTO @table_result
		SELECT 
		r_p.id_object_parent,
		r_p.name_parent_key,
		r_p.name_parent_show,
		r_p.id_object_root,
		r_p.name_root_key,
		r_p.name_root_show,
		r_p.type,
		r_p.level_relation
		FROM relationships_parent r_p
	END
	
	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Costcenters_get_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Costcenters_get_left]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	c.cost_kd,
	c.cost_oms
	FROM fnAFAS_UMRA_Costcenters_get(1,NULL,NULL,NULL,NULL) c
	LEFT JOIN 
	(SELECT oa.attribute_value FROM ObjectAttributes oa
	INNER JOIN Attributes a ON a.id = oa.id_attribute
		AND a.name = @name_a_join
	INNER JOIN Objects o ON oa.id_object = o.id
		AND o.id_snapshot = @id_snapshot_l) oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.cost_kd + ISNULL(@name_a_join_suffix,'')
	WHERE oa_join.attribute_value IS NULL

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Costcenters_get_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Costcenters_get_common]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	oa_key.attribute_value,
	c.cost_kd,
	c.cost_oms
	FROM fnAFAS_UMRA_Costcenters_get(1,NULL,NULL,NULL,NULL) c
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.cost_kd + ISNULL(@name_a_join_suffix,'')
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	WHERE o.id_snapshot = @id_snapshot_l

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Organizations_get_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Organizations_get_left]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL	
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	c.org_kd,
	c.org_oms
	FROM fnAFAS_UMRA_Organizations_get(1,NULL,NULL,NULL,NULL) c
	LEFT JOIN 
	(SELECT oa.attribute_value FROM ObjectAttributes oa
	INNER JOIN Attributes a ON a.id = oa.id_attribute
		AND a.name = @name_a_join
	INNER JOIN Objects o ON oa.id_object = o.id
		AND o.id_snapshot = @id_snapshot_l) oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.org_kd + ISNULL(@name_a_join_suffix,'')
	WHERE oa_join.attribute_value IS NULL

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Organizations_get_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Organizations_get_common]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	oa_key.attribute_value,
	c.org_kd,
	c.org_oms
	FROM fnAFAS_UMRA_Organizations_get(1,NULL,NULL,NULL,NULL) c
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.org_kd + ISNULL(@name_a_join_suffix,'')
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	WHERE o.id_snapshot = @id_snapshot_l

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Functions_get_left]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Functions_get_left]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	c.func_kd,
	c.func_oms
	FROM fnAFAS_UMRA_Functions_get(1,NULL,NULL,NULL,NULL) c
	LEFT JOIN 
	(SELECT oa.attribute_value FROM ObjectAttributes oa
	INNER JOIN Attributes a ON a.id = oa.id_attribute
		AND a.name = @name_a_join
	INNER JOIN Objects o ON oa.id_object = o.id
		AND o.id_snapshot = @id_snapshot_l) oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.func_kd + ISNULL(@name_a_join_suffix,'')
	WHERE oa_join.attribute_value IS NULL

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Functions_get_common]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Functions_get_common]
	@name_a_join varchar(100),
	@name_a_join_prefix varchar(50) = NULL,
	@name_a_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)

	SELECT
	oa_key.attribute_value,
	c.func_kd,
	c.func_oms
	FROM fnAFAS_UMRA_Functions_get(1,NULL,NULL,NULL,NULL) c
	INNER JOIN ObjectAttributes oa_join ON oa_join.attribute_value = ISNULL(@name_a_join_prefix,'') + c.func_kd + ISNULL(@name_a_join_suffix,'')
	INNER JOIN Attributes a_join ON a_join.id = oa_join.id_attribute
		AND a_join.name = @name_a_join
	INNER JOIN Objects o ON oa_join.id_object = o.id
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = o.id
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute
		AND a_key.is_key = 1
	WHERE o.id_snapshot = @id_snapshot_l

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objects_add_staging]    Script Date: 08/16/2013 11:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objects_add_staging]
	@id_snapshot bigint = 0,
	@type varchar(255),
	@source varchar(255),
	@column_index_key int,
	@column_index_show int
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object bigint
	DECLARE @id_type bigint
	DECLARE @id_source bigint
	DECLARE @field_key varchar(500)
	
	DECLARE @attribute_name_0 varchar(255)
	DECLARE @attribute_name_1 varchar(255)
	DECLARE @attribute_name_2 varchar(255)
	DECLARE @attribute_name_3 varchar(255)
	DECLARE @attribute_name_4 varchar(255)
	DECLARE @attribute_name_5 varchar(255)
	DECLARE @attribute_name_6 varchar(255)
	DECLARE @attribute_name_7 varchar(255)
	DECLARE @attribute_name_8 varchar(255)
	DECLARE @attribute_name_9 varchar(255)
	DECLARE @attribute_name_10 varchar(255)
	DECLARE @attribute_name_11 varchar(255)
	DECLARE @attribute_name_12 varchar(255)
	DECLARE @attribute_name_13 varchar(255)
	DECLARE @attribute_name_14 varchar(255)
	DECLARE @attribute_name_15 varchar(255)
	DECLARE @attribute_name_16 varchar(255)
	DECLARE @attribute_name_17 varchar(255)
	DECLARE @attribute_name_18 varchar(255)
	DECLARE @attribute_name_19 varchar(255)
	DECLARE @attribute_name_20 varchar(255)
	DECLARE @attribute_name_21 varchar(255)
	DECLARE @attribute_name_22 varchar(255)
	DECLARE @attribute_name_23 varchar(255)
	DECLARE @attribute_name_24 varchar(255)
	DECLARE @attribute_name_25 varchar(255)
	DECLARE @attribute_name_26 varchar(255)
	DECLARE @attribute_name_27 varchar(255)
	DECLARE @attribute_name_28 varchar(255)
	DECLARE @attribute_name_29 varchar(255)
	DECLARE @attribute_name_30 varchar(255)	
	DECLARE @attribute_name_31 varchar(255)
	DECLARE @attribute_name_32 varchar(255)
	DECLARE @attribute_name_33 varchar(255)
	DECLARE @attribute_name_34 varchar(255)
	DECLARE @attribute_name_35 varchar(255)
	DECLARE @attribute_name_36 varchar(255)
	DECLARE @attribute_name_37 varchar(255)
	DECLARE @attribute_name_38 varchar(255)
	DECLARE @attribute_name_39 varchar(255)
	DECLARE @attribute_name_40 varchar(255)
	DECLARE @attribute_name_41 varchar(255)
	DECLARE @attribute_name_42 varchar(255)
	DECLARE @attribute_name_43 varchar(255)
	DECLARE @attribute_name_44 varchar(255)
	DECLARE @attribute_name_45 varchar(255)
	DECLARE @attribute_name_46 varchar(255)
	DECLARE @attribute_name_47 varchar(255)
	DECLARE @attribute_name_48 varchar(255)
	DECLARE @attribute_name_49 varchar(255)
	DECLARE @attribute_name_50 varchar(255)
	DECLARE @attribute_name_51 varchar(255)
	DECLARE @attribute_name_52 varchar(255)
	DECLARE @attribute_name_53 varchar(255)
	DECLARE @attribute_name_54 varchar(255)
	DECLARE @attribute_name_55 varchar(255)
	DECLARE @attribute_name_56 varchar(255)
	DECLARE @attribute_name_57 varchar(255)
	DECLARE @attribute_name_58 varchar(255)
	DECLARE @attribute_name_59 varchar(255)
	DECLARE @attribute_name_60 varchar(255)	
	DECLARE @attribute_name_61 varchar(255)
	DECLARE @attribute_name_62 varchar(255)
	DECLARE @attribute_name_63 varchar(255)
	DECLARE @attribute_name_64 varchar(255)
	DECLARE @attribute_name_65 varchar(255)
	DECLARE @attribute_name_66 varchar(255)
	DECLARE @attribute_name_67 varchar(255)
	DECLARE @attribute_name_68 varchar(255)
	DECLARE @attribute_name_69 varchar(255)
	DECLARE @attribute_name_70 varchar(255)	
	DECLARE @attribute_name_71 varchar(255)
	DECLARE @attribute_name_72 varchar(255)
	DECLARE @attribute_name_73 varchar(255)
	DECLARE @attribute_name_74 varchar(255)
	DECLARE @attribute_name_75 varchar(255)
	DECLARE @attribute_name_76 varchar(255)
	DECLARE @attribute_name_77 varchar(255)
	DECLARE @attribute_name_78 varchar(255)
	DECLARE @attribute_name_79 varchar(255)
	DECLARE @attribute_name_80 varchar(255)	
	
	DECLARE @attribute_value_0 varchar(MAX)
	DECLARE @attribute_value_1 varchar(MAX)
	DECLARE @attribute_value_2 varchar(MAX)
	DECLARE @attribute_value_3 varchar(MAX)
	DECLARE @attribute_value_4 varchar(MAX)
	DECLARE @attribute_value_5 varchar(MAX)
	DECLARE @attribute_value_6 varchar(MAX)
	DECLARE @attribute_value_7 varchar(MAX)
	DECLARE @attribute_value_8 varchar(MAX)
	DECLARE @attribute_value_9 varchar(MAX)
	DECLARE @attribute_value_10 varchar(MAX)
	DECLARE @attribute_value_11 varchar(MAX)
	DECLARE @attribute_value_12 varchar(MAX)
	DECLARE @attribute_value_13 varchar(MAX)
	DECLARE @attribute_value_14 varchar(MAX)
	DECLARE @attribute_value_15 varchar(MAX)
	DECLARE @attribute_value_16 varchar(MAX)
	DECLARE @attribute_value_17 varchar(MAX)
	DECLARE @attribute_value_18 varchar(MAX)
	DECLARE @attribute_value_19 varchar(MAX)
	DECLARE @attribute_value_20 varchar(MAX)
	DECLARE @attribute_value_21 varchar(MAX)
	DECLARE @attribute_value_22 varchar(MAX)
	DECLARE @attribute_value_23 varchar(MAX)
	DECLARE @attribute_value_24 varchar(MAX)
	DECLARE @attribute_value_25 varchar(MAX)
	DECLARE @attribute_value_26 varchar(MAX)
	DECLARE @attribute_value_27 varchar(MAX)
	DECLARE @attribute_value_28 varchar(MAX)
	DECLARE @attribute_value_29 varchar(MAX)
	DECLARE @attribute_value_30 varchar(MAX)
	DECLARE @attribute_value_31 varchar(MAX)
	DECLARE @attribute_value_32 varchar(MAX)
	DECLARE @attribute_value_33 varchar(MAX)
	DECLARE @attribute_value_34 varchar(MAX)
	DECLARE @attribute_value_35 varchar(MAX)
	DECLARE @attribute_value_36 varchar(MAX)
	DECLARE @attribute_value_37 varchar(MAX)
	DECLARE @attribute_value_38 varchar(MAX)
	DECLARE @attribute_value_39 varchar(MAX)
	DECLARE @attribute_value_40 varchar(MAX)
	DECLARE @attribute_value_41 varchar(MAX)
	DECLARE @attribute_value_42 varchar(MAX)
	DECLARE @attribute_value_43 varchar(MAX)
	DECLARE @attribute_value_44 varchar(MAX)
	DECLARE @attribute_value_45 varchar(MAX)
	DECLARE @attribute_value_46 varchar(MAX)
	DECLARE @attribute_value_47 varchar(MAX)
	DECLARE @attribute_value_48 varchar(MAX)
	DECLARE @attribute_value_49 varchar(MAX)
	DECLARE @attribute_value_50 varchar(MAX)
	DECLARE @attribute_value_51 varchar(MAX)
	DECLARE @attribute_value_52 varchar(MAX)
	DECLARE @attribute_value_53 varchar(MAX)
	DECLARE @attribute_value_54 varchar(MAX)
	DECLARE @attribute_value_55 varchar(MAX)
	DECLARE @attribute_value_56 varchar(MAX)
	DECLARE @attribute_value_57 varchar(MAX)
	DECLARE @attribute_value_58 varchar(MAX)
	DECLARE @attribute_value_59 varchar(MAX)
	DECLARE @attribute_value_60 varchar(MAX)
	DECLARE @attribute_value_61 varchar(MAX)
	DECLARE @attribute_value_62 varchar(MAX)
	DECLARE @attribute_value_63 varchar(MAX)
	DECLARE @attribute_value_64 varchar(MAX)
	DECLARE @attribute_value_65 varchar(MAX)
	DECLARE @attribute_value_66 varchar(MAX)
	DECLARE @attribute_value_67 varchar(MAX)
	DECLARE @attribute_value_68 varchar(MAX)
	DECLARE @attribute_value_69 varchar(MAX)
	DECLARE @attribute_value_70 varchar(MAX)
	DECLARE @attribute_value_71 varchar(MAX)
	DECLARE @attribute_value_72 varchar(MAX)
	DECLARE @attribute_value_73 varchar(MAX)
	DECLARE @attribute_value_74 varchar(MAX)
	DECLARE @attribute_value_75 varchar(MAX)
	DECLARE @attribute_value_76 varchar(MAX)
	DECLARE @attribute_value_77 varchar(MAX)
	DECLARE @attribute_value_78 varchar(MAX)
	DECLARE @attribute_value_79 varchar(MAX)
	DECLARE @attribute_value_80 varchar(MAX)						

	DECLARE staging_cursor CURSOR FOR SELECT 
	field_0, 
	field_1, 
	field_2, 
	field_3, 
	field_4, 
	field_5, 
	field_6, 
	field_7, 
	field_8, 
	field_9,
	field_10,
	field_11,
	field_12,
	field_13,
	field_14,
	field_15,
	field_16,
	field_17,
	field_18,
	field_19,
	field_20,
	field_21,
	field_22,
	field_23,
	field_24,
	field_25,
	field_26,
	field_27,
	field_28,
	field_29,
	field_30,
	field_31,
	field_32,
	field_33,
	field_34,
	field_35,
	field_36,
	field_37,
	field_38,
	field_39,
	field_40,
	field_41,
	field_42,
	field_43,
	field_44,
	field_45,
	field_46,
	field_47,
	field_48,
	field_49,
	field_50,
	field_51,
	field_52,
	field_53,
	field_54,
	field_55,
	field_56,
	field_57,
	field_58,
	field_59,
	field_60,
	field_61,
	field_62,
	field_63,
	field_64,
	field_65,
	field_66,
	field_67,
	field_68,
	field_69,
	field_70,
	field_71,
	field_72,
	field_73,
	field_74,
	field_75,
	field_76,
	field_77,
	field_78,
	field_79,
	field_80
	FROM Staging_table
	OPEN staging_cursor;

	FETCH NEXT FROM staging_cursor INTO 
	@attribute_name_0, 
	@attribute_name_1, 
	@attribute_name_2, 
	@attribute_name_3,
	@attribute_name_4,
	@attribute_name_5,
	@attribute_name_6,
	@attribute_name_7,
	@attribute_name_8,
	@attribute_name_9,	
	@attribute_name_10,
	@attribute_name_11,
	@attribute_name_12,
	@attribute_name_13,
	@attribute_name_14,
	@attribute_name_15,
	@attribute_name_16,
	@attribute_name_17,
	@attribute_name_18,
	@attribute_name_19,
	@attribute_name_20,
	@attribute_name_21,
	@attribute_name_22,
	@attribute_name_23,
	@attribute_name_24,
	@attribute_name_25,
	@attribute_name_26,
	@attribute_name_27,
	@attribute_name_28,
	@attribute_name_29,
	@attribute_name_30,
	@attribute_name_31,
	@attribute_name_32,
	@attribute_name_33,
	@attribute_name_34,
	@attribute_name_35,
	@attribute_name_36,
	@attribute_name_37,
	@attribute_name_38,
	@attribute_name_39,
	@attribute_name_40,
	@attribute_name_41,
	@attribute_name_42,
	@attribute_name_43,
	@attribute_name_44,
	@attribute_name_45,
	@attribute_name_46,
	@attribute_name_47,
	@attribute_name_48,
	@attribute_name_49,
	@attribute_name_50,
	@attribute_name_51,
	@attribute_name_52,
	@attribute_name_53,
	@attribute_name_54,
	@attribute_name_55,
	@attribute_name_56,
	@attribute_name_57,
	@attribute_name_58,
	@attribute_name_59,
	@attribute_name_60,
	@attribute_name_61,
	@attribute_name_62,
	@attribute_name_63,
	@attribute_name_64,
	@attribute_name_65,
	@attribute_name_66,
	@attribute_name_67,
	@attribute_name_68,
	@attribute_name_69,
	@attribute_name_70,
	@attribute_name_71,
	@attribute_name_72,
	@attribute_name_73,
	@attribute_name_74,
	@attribute_name_75,
	@attribute_name_76,
	@attribute_name_77,
	@attribute_name_78,
	@attribute_name_79,
	@attribute_name_80
	
	FETCH NEXT FROM staging_cursor INTO 
	@attribute_value_0, 
	@attribute_value_1, 
	@attribute_value_2, 
	@attribute_value_3,
	@attribute_value_4,
	@attribute_value_5,
	@attribute_value_6,
	@attribute_value_7,
	@attribute_value_8,
	@attribute_value_9,
	@attribute_value_10,
	@attribute_value_11,
	@attribute_value_12,
	@attribute_value_13,
	@attribute_value_14,
	@attribute_value_15,
	@attribute_value_16,
	@attribute_value_17,
	@attribute_value_18,
	@attribute_value_19,
	@attribute_value_20,
	@attribute_value_21,
	@attribute_value_22,
	@attribute_value_23,
	@attribute_value_24,
	@attribute_value_25,
	@attribute_value_26,
	@attribute_value_27,
	@attribute_value_28,
	@attribute_value_29,
	@attribute_value_30,
	@attribute_value_31,
	@attribute_value_32,
	@attribute_value_33,
	@attribute_value_34,
	@attribute_value_35,
	@attribute_value_36,
	@attribute_value_37,
	@attribute_value_38,
	@attribute_value_39,
	@attribute_value_40,
	@attribute_value_41,
	@attribute_value_42,
	@attribute_value_43,
	@attribute_value_44,
	@attribute_value_45,
	@attribute_value_46,
	@attribute_value_47,
	@attribute_value_48,
	@attribute_value_49,
	@attribute_value_50,
	@attribute_value_51,
	@attribute_value_52,
	@attribute_value_53,
	@attribute_value_54,
	@attribute_value_55,
	@attribute_value_56,
	@attribute_value_57,
	@attribute_value_58,
	@attribute_value_59,
	@attribute_value_60,
	@attribute_value_61,
	@attribute_value_62,
	@attribute_value_63,
	@attribute_value_64,
	@attribute_value_65,
	@attribute_value_66,
	@attribute_value_67,
	@attribute_value_68,
	@attribute_value_69,
	@attribute_value_70,
	@attribute_value_71,
	@attribute_value_72,
	@attribute_value_73,
	@attribute_value_74,
	@attribute_value_75,
	@attribute_value_76,
	@attribute_value_77,
	@attribute_value_78,
	@attribute_value_79,
	@attribute_value_80
		
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @column_index_key = 0 BEGIN SET @field_key = @attribute_value_0 END
		IF @column_index_key = 1 BEGIN SET @field_key = @attribute_value_1 END
		IF @column_index_key = 2 BEGIN SET @field_key = @attribute_value_2 END
		IF @column_index_key = 3 BEGIN SET @field_key = @attribute_value_3 END
		IF @column_index_key = 4 BEGIN SET @field_key = @attribute_value_4 END
		IF @column_index_key = 5 BEGIN SET @field_key = @attribute_value_5 END
		IF @column_index_key = 6 BEGIN SET @field_key = @attribute_value_6 END
		IF @column_index_key = 7 BEGIN SET @field_key = @attribute_value_7 END
		IF @column_index_key = 8 BEGIN SET @field_key = @attribute_value_8 END
		IF @column_index_key = 9 BEGIN SET @field_key = @attribute_value_9 END
		IF @column_index_key = 10 BEGIN SET @field_key = @attribute_value_10 END
		IF @column_index_key = 11 BEGIN SET @field_key = @attribute_value_11 END
		IF @column_index_key = 12 BEGIN SET @field_key = @attribute_value_12 END
		IF @column_index_key = 13 BEGIN SET @field_key = @attribute_value_13 END
		IF @column_index_key = 14 BEGIN SET @field_key = @attribute_value_14 END
		IF @column_index_key = 15 BEGIN SET @field_key = @attribute_value_15 END
		IF @column_index_key = 16 BEGIN SET @field_key = @attribute_value_16 END
		IF @column_index_key = 17 BEGIN SET @field_key = @attribute_value_17 END
		IF @column_index_key = 18 BEGIN SET @field_key = @attribute_value_18 END
		IF @column_index_key = 19 BEGIN SET @field_key = @attribute_value_19 END
		IF @column_index_key = 20 BEGIN SET @field_key = @attribute_value_20 END		
	
		IF LEN(@field_key) > 0 AND LEN(@source) > 0 AND LEN(@type) > 0 BEGIN
			SET @id_source = (SELECT id FROM Sources WHERE name = @source)
			IF @id_source IS NULL BEGIN
				INSERT INTO Sources(name)
				VALUES (@source)
				SET @id_source = (SELECT SCOPE_IDENTITY())
			END
			
			SET @id_type = (SELECT id FROM Types WHERE name = @type)
			IF @id_type IS NULL BEGIN
				INSERT INTO Types(name)
				VALUES (@type)
				SET @id_type = (SELECT SCOPE_IDENTITY())
			END
			
			SET @id_object = (SELECT o.id FROM Objects o
				INNER JOIN ObjectAttributes oa ON o.id = oa.id_object
					AND o.id_snapshot = @id_snapshot_l
				INNER JOIN Attributes a ON a.id = oa.id_attribute
					AND a.is_key = 1
				WHERE id_snapshot = @id_snapshot_l
				AND id_snapshot = @id_source
				AND id_type = @id_type
				AND oa.attribute_value = @field_key)
			
			IF @id_object IS NULL OR @id_object = 0 BEGIN
				INSERT INTO Objects WITH(TABLOCK) (id_snapshot, id_source, id_type) 
				VALUES (@id_snapshot_l, @id_source, @id_type)
				SET @id_object = (SELECT SCOPE_IDENTITY())
			END
			
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_0, @attribute_value_0, 0, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_1, @attribute_value_1, 1, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_2, @attribute_value_2, 2, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_3, @attribute_value_3, 3, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_4, @attribute_value_4, 4, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_5, @attribute_value_5, 5, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_6, @attribute_value_6, 6, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_7, @attribute_value_7, 7, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_8, @attribute_value_8, 8, @column_index_key, @column_index_show
			EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_9, @attribute_value_9, 9, @column_index_key, @column_index_show
			
			IF LEN(@attribute_name_10) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_10, @attribute_value_10, 10, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_11, @attribute_value_11, 11, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_12, @attribute_value_12, 12, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_13, @attribute_value_13, 13, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_14, @attribute_value_14, 14, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_15, @attribute_value_15, 15, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_16, @attribute_value_16, 16, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_17, @attribute_value_17, 17, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_18, @attribute_value_18, 18, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_19, @attribute_value_19, 19, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_20) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_20, @attribute_value_20, 20, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_21, @attribute_value_21, 21, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_22, @attribute_value_22, 22, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_23, @attribute_value_23, 23, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_24, @attribute_value_24, 24, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_25, @attribute_value_25, 25, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_26, @attribute_value_26, 26, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_27, @attribute_value_27, 27, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_28, @attribute_value_28, 28, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_29, @attribute_value_29, 29, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_30) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_30, @attribute_value_30, 30, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_31, @attribute_value_31, 31, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_32, @attribute_value_32, 32, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_33, @attribute_value_33, 33, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_34, @attribute_value_34, 34, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_35, @attribute_value_35, 35, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_36, @attribute_value_36, 36, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_37, @attribute_value_37, 37, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_38, @attribute_value_38, 38, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_39, @attribute_value_39, 39, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_40) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_40, @attribute_value_40, 40, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_41, @attribute_value_41, 41, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_42, @attribute_value_42, 42, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_43, @attribute_value_43, 43, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_44, @attribute_value_44, 44, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_45, @attribute_value_45, 45, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_46, @attribute_value_46, 46, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_47, @attribute_value_47, 47, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_48, @attribute_value_48, 48, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_49, @attribute_value_49, 49, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_50) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_50, @attribute_value_50, 50, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_51, @attribute_value_51, 51, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_52, @attribute_value_52, 52, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_53, @attribute_value_53, 53, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_54, @attribute_value_54, 54, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_55, @attribute_value_55, 55, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_56, @attribute_value_56, 56, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_57, @attribute_value_57, 57, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_58, @attribute_value_58, 58, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_59, @attribute_value_59, 59, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_60) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_60, @attribute_value_60, 60, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_61, @attribute_value_61, 61, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_62, @attribute_value_62, 62, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_63, @attribute_value_63, 63, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_64, @attribute_value_64, 64, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_65, @attribute_value_65, 65, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_66, @attribute_value_66, 66, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_67, @attribute_value_67, 67, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_68, @attribute_value_68, 68, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_69, @attribute_value_69, 69, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_70) > 0 BEGIN	
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_70, @attribute_value_70, 70, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_71, @attribute_value_71, 71, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_72, @attribute_value_72, 72, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_73, @attribute_value_73, 73, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_74, @attribute_value_74, 74, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_75, @attribute_value_75, 75, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_77, @attribute_value_76, 76, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_77, @attribute_value_77, 77, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_78, @attribute_value_78, 78, @column_index_key, @column_index_show
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_79, @attribute_value_79, 79, @column_index_key, @column_index_show
			END
			IF LEN(@attribute_name_80) > 0 BEGIN
				EXEC spSnapshot_objectattribute_add @id_object, @attribute_name_80, @attribute_value_80, 80, @column_index_key, @column_index_show
			END
		END
				
		FETCH NEXT FROM staging_cursor INTO 
		@attribute_value_0, 
		@attribute_value_1, 
		@attribute_value_2, 
		@attribute_value_3,
		@attribute_value_4,
		@attribute_value_5,
		@attribute_value_6,
		@attribute_value_7,
		@attribute_value_8,
		@attribute_value_9,
		@attribute_value_10,
		@attribute_value_11,
		@attribute_value_12,
		@attribute_value_13,
		@attribute_value_14,
		@attribute_value_15,
		@attribute_value_16,
		@attribute_value_17,
		@attribute_value_18,
		@attribute_value_19,
		@attribute_value_20,
		@attribute_value_21,
		@attribute_value_22,
		@attribute_value_23,
		@attribute_value_24,
		@attribute_value_25,
		@attribute_value_26,
		@attribute_value_27,
		@attribute_value_28,
		@attribute_value_29,
		@attribute_value_30,
		@attribute_value_31,
		@attribute_value_32,
		@attribute_value_33,
		@attribute_value_34,
		@attribute_value_35,
		@attribute_value_36,
		@attribute_value_37,
		@attribute_value_38,
		@attribute_value_39,
		@attribute_value_40,
		@attribute_value_41,
		@attribute_value_42,
		@attribute_value_43,
		@attribute_value_44,
		@attribute_value_45,
		@attribute_value_46,
		@attribute_value_47,
		@attribute_value_48,
		@attribute_value_49,
		@attribute_value_50,
		@attribute_value_51,
		@attribute_value_52,
		@attribute_value_53,
		@attribute_value_54,
		@attribute_value_55,
		@attribute_value_56,
		@attribute_value_57,
		@attribute_value_58,
		@attribute_value_59,
		@attribute_value_60,
		@attribute_value_61,
		@attribute_value_62,
		@attribute_value_63,
		@attribute_value_64,
		@attribute_value_65,
		@attribute_value_66,
		@attribute_value_67,
		@attribute_value_68,
		@attribute_value_69,
		@attribute_value_70,
		@attribute_value_71,
		@attribute_value_72,
		@attribute_value_73,
		@attribute_value_74,
		@attribute_value_75,
		@attribute_value_76,
		@attribute_value_77,
		@attribute_value_78,
		@attribute_value_79,
		@attribute_value_80
	END
	CLOSE staging_cursor
	DEALLOCATE staging_cursor	

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objectattributes_match]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objectattributes_match]
	@initials varchar(255),
	@firstname varchar(255),
	@middlename_birth varchar(255),
	@middlename_partner varchar(255),
	@lastname_birth varchar(255),
	@lastname_partner varchar(255),
	@attribute_name varchar(255) = NULL,
	@type_object varchar(255) = 'user'
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot bigint = (SELECT MAX(id) FROM Snapshots)

	DECLARE @firstname_start_end varchar(255)
	DECLARE @firstname_start_3 varchar(3)
	DECLARE @firstname_start_1 varchar(1)
	DECLARE @firstname_end_3 varchar(3)
	DECLARE @lastname_birth_start_end varchar(255)
	DECLARE @lastname_birth_start_4 varchar(4)
	DECLARE @lastname_birth_end_4 varchar(4)
	DECLARE @lastname_partner_start_end varchar(255)
	DECLARE @lastname_partner_start_4 varchar(4)
	DECLARE @lastname_partner_end_4 varchar(4)
	DECLARE @replace_chars varchar(255)
	DECLARE @replace_char varchar(1)
	DECLARE @replace_char_target varchar(255)
	DECLARE @match_rank TABLE (result varchar(255), match_value varchar(255), score bigint, criteria varchar(255)) 

	SET @replace_chars = '###########################'
	SET @replace_char = '#'
	SET @replace_char_target = '[^0-9''"&$@/\<>!*,.()-_ ]'
	SET @replace_char_target = '[a-z]'

	SET @firstname_start_1 = LEFT(@firstname, 1)
	SET @firstname_start_end = CASE	WHEN LEN(@firstname) < 3 THEN @firstname
		ELSE LEFT(@firstname, 2) + LEFT(@replace_chars, LEN(@firstname) - 3) + RIGHT(@firstname, 1)	END
	SET @lastname_birth_start_end = CASE WHEN LEN(@lastname_birth) < 3 THEN @lastname_birth
		ELSE LEFT(@lastname_birth, 2) + LEFT(@replace_chars, LEN(@lastname_birth) - 3) + RIGHT(@lastname_birth, 1) END
	SET @lastname_partner_start_end = CASE WHEN LEN(@lastname_partner) < 3 THEN @lastname_partner
		ELSE LEFT(@lastname_partner, 2) + LEFT(@replace_chars, LEN(@lastname_partner) - 3) + RIGHT(@lastname_partner, 1) END

	SET @firstname_start_end = REPLACE(@firstname_start_end, @replace_char, @replace_char_target)
	SET @lastname_birth_start_end = REPLACE(@lastname_birth_start_end, @replace_char, @replace_char_target)
	SET @lastname_partner_start_end = REPLACE(@lastname_partner_start_end, @replace_char, @replace_char_target)

	DECLARE @table_attributes TABLE (name_object varchar(255), attribute_name varchar(255), attribute_value varchar(255))
	INSERT INTO @table_attributes
	SELECT
	s_o.name_object_key,
	@attribute_name,
	s_oa.attribute_value
	FROM fnSnapshot_objectattribute_get(@id_snapshot,@attribute_name) s_oa
	INNER JOIN fnSnapshot_objects_get(@id_snapshot,@type_object,NULL) s_o
		ON s_oa.id_object = s_o.id_object

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 100, 'initials+firstname+middlename_birth+lastname_birth'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @initials + '[^a-z]%')
	OR (oa.attribute_value LIKE @initials + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @initials))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_birth))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND LEN(@lastname_birth) > 1
	AND LEN(@middlename_birth) > 1
	AND LEN(@firstname) > 1
	AND LEN(@initials) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END
	
	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 100, 'initials+firstname+middlename_partner+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @initials + '[^a-z]%')
	OR (oa.attribute_value LIKE @initials + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @initials))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_partner))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))
	AND LEN(@lastname_partner) > 1
	AND LEN(@middlename_partner) > 1
	AND LEN(@firstname) > 1
	AND LEN(@initials) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 95, 'firstname+middlename_birth+lastname_birth'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_birth))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND LEN(@lastname_birth) > 1
	AND LEN(@middlename_birth) > 1
	AND LEN(@firstname) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END
	
	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 95, 'firstname+middlename_partner+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_partner))	
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))
	AND LEN(@lastname_partner) > 1
	AND LEN(@middlename_partner) > 1
	AND LEN(@firstname) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END	

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 92, 'firstname+lastname_birth+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))	
	AND LEN(@lastname_birth) > 1
	AND LEN(@lastname_partner) > 1
	AND LEN(@firstname) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 90, 'firstname+lastname_birth'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND LEN(@lastname_birth) > 1
	AND LEN(@firstname) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 90, 'firstname+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))
	AND LEN(@lastname_partner) > 1
	AND LEN(@firstname) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END
	
	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 85, 'firstname_start_1+middlename_birth+lastname_birth'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_birth))			
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')	
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND LEN(@lastname_birth) > 1
	AND LEN(@middlename_birth) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 85, 'firstname_start_1+middlename_partner+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_partner))			
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))
	AND LEN(@lastname_partner) > 1
	AND LEN(@middlename_partner) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 80, 'firstname_start_1+lastname_birth'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth + '[^a-z]%')	
	OR (oa.attribute_value LIKE @lastname_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth))
	AND LEN(@lastname_birth) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 80, 'firstname_start_1+lastname_partner'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))			
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner))
	AND LEN(@lastname_partner) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 75, 'firstname_start_end+middlename_birth+lastname_birth_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_birth + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_birth))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end))
	AND LEN(@lastname_birth_start_end) > 1
	AND LEN(@middlename_birth) > 1
	AND LEN(@firstname_start_end) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 75, 'firstname_start_end+middlename_partner+lastname_partner_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end))
	AND ((oa.attribute_value LIKE '%[^a-z]' + @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE @middlename_partner + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @middlename_partner))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end))
	AND LEN(@lastname_partner_start_end) > 1
	AND LEN(@middlename_partner) > 1
	AND LEN(@firstname_start_end) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 70, 'firstname_start_end+lastname_birth_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end))
	AND LEN(@lastname_birth_start_end) > 1
	AND LEN(@firstname_start_end) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 70, 'firstname_start_end+lastname_partner_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_end))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end))
	AND LEN(@lastname_partner_start_end) > 1
	AND LEN(@firstname_start_end) > 1

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END
	
	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 65, 'firstname_start_1+lastname_birth_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_birth_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_birth_start_end))
	AND LEN(@lastname_birth_start_end) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	INSERT INTO @match_rank
	SELECT DISTINCT oa.name_object, oa.attribute_value, 65, 'firstname_start_1+lastname_partner_start_end'
	FROM @table_attributes oa
	WHERE ((oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE @firstname_start_1 + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @firstname_start_1))		
	AND ((oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE @lastname_partner_start_end + '[^a-z]%')
	OR (oa.attribute_value LIKE '%[^a-z]' + @lastname_partner_start_end))
	AND LEN(@lastname_partner_start_end) > 1
	AND LEN(@firstname_start_1) > 0

	IF (SELECT COUNT(*) FROM @match_rank) > 0
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
		m.result, 
		m.score, 
		m.criteria, 
		m.match_value 
		FROM @match_rank m 
		ORDER BY m.score DESC
		RETURN	
	END

	SELECT ROW_NUMBER() OVER (ORDER BY m.score) as 'id', 
	m.result, 
	m.score, 
	m.criteria, 
	m.match_value 
	FROM @match_rank m 
	ORDER BY m.score DESC
	RETURN	
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_objectattribute_update]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_objectattribute_update]
	@name_object varchar(500),
	@name_attribute varchar(100),
	@value varchar(500),
	@id_snapshot bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object bigint = dbo.fnSnapshot_objectdn_id(@name_object)
	DECLARE @id_objectattribute bigint = (SELECT id FROM ObjectAttributes WHERE id_object = @id_object AND id_attribute = (SELECT id FROM Attributes WHERE name = @name_attribute))
	
	IF @id_object > 0 AND @id_objectattribute > 0 AND LEN(@value) > 0 BEGIN
		UPDATE ObjectAttributes
		SET attribute_value = @value
		WHERE id = @id_objectattribute
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_object_delete]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_object_delete]
	@name_object varchar(500),
	@id_snapshot bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object bigint = dbo.fnSnapshot_objectdn_id(@name_object)
	
	IF @id_object > 0 BEGIN
		DELETE FROM ObjectAttributes WHERE id_object = @id_object
		DELETE FROM Relationships WHERE id_object_child = @id_object
		DELETE FROM Relationships WHERE id_object_parent = @id_object
		DELETE FROM Objects WHERE id = @id_object
		SELECT @id_object
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationship_delete]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationship_delete]
	@id_snapshot bigint = 0,
	@type varchar(255),
	@name_object_parent varchar(255),
	@name_object_child varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object_parent bigint = dbo.fnSnapshot_objectdn_id(@name_object_parent)
	DECLARE @id_object_child bigint = dbo.fnSnapshot_objectdn_id(@name_object_child)
	DECLARE @id_type bigint = (SELECT id FROM Types WHERE name = @type)	
	
	IF @id_object_child > 0 AND @id_object_parent > 0 AND @id_type > 0 BEGIN	
		DELETE FROM Relationships 
		WHERE id_object_child = @id_object_child
		AND id_object_parent = @id_object_parent
		AND id_type = @id_type
		
		SELECT @name_object_parent
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_relationship_add]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_relationship_add]
	@id_snapshot bigint = 0,
	@type varchar(255),
	@name_object_parent varchar(500),
	@name_object_child varchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	DECLARE @id_object_parent bigint = dbo.fnSnapshot_objectdn_id(@name_object_parent)
	DECLARE @id_object_child bigint = dbo.fnSnapshot_objectdn_id(@name_object_child)
	DECLARE @id_type bigint = (SELECT id FROM Types WHERE name = @type)
	DECLARE @id_relationship bigint = (SELECT id FROM Relationships WHERE id_object_child = @id_object_child AND id_object_parent = @id_object_parent AND id_type = @id_type)
	
	IF @id_relationship IS NULL AND @id_object_child > 0 AND @id_object_parent > 0 AND @id_type > 0 BEGIN	
		INSERT INTO Relationships (id_type, id_object_parent, id_object_child)
		VALUES (@id_type, @id_object_parent, @id_object_child)
		SELECT @name_object_parent
	END
	ELSE BEGIN
		SELECT @id_relationship
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_user_attributes_groups_managedby]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_user_attributes_groups_managedby]
	@object_dn varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_object_user bigint = dbo.fnSnapshot_objectdn_id(@object_dn)
	DECLARE @id_type_r_managedby bigint = (SELECT id FROM Types WHERE name = 'managedBy')
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')

	SELECT
	c_g.dn,
	c_g.attribute_1,
	c_g.attribute_2,
	c_g.attribute_3,
	c_g.attribute_4,
	c_g.attribute_5,
	c_g.attribute_6,
	c_g.attribute_7,
	c_g.attribute_8,
	c_g.attribute_9
	FROM Cache_table_ad c_g
	WHERE c_g.type = 'group' 
	AND	(c_g.dn IN
	(SELECT oa_key.attribute_value FROM Relationships r
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = r.id_object_parent
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute AND a_key.is_key = 1
	WHERE r.id_object_child = @id_object_user AND r.id_type = @id_type_r_managedby)
	OR c_g.dn IN
	(SELECT oa_key.attribute_value FROM Relationships r
	INNER JOIN Relationships r_managedby ON r_managedby.id_object_child = r.id_object_parent
		AND r_managedby.id_type = @id_type_r_managedby
	INNER JOIN ObjectAttributes oa_key ON oa_key.id_object = r_managedby.id_object_parent
	INNER JOIN Attributes a_key ON a_key.id = oa_key.id_attribute AND a_key.is_key = 1
	WHERE r.id_object_child = @id_object_user AND r.id_type = @id_type_r_member))
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_snapshot_manager_groups_costs_chart]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_snapshot_manager_groups_costs_chart]
	@object_dn_manager varchar(500),
	@name_a_cost varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_object_manager bigint = dbo.fnSnapshot_objectdn_id(@object_dn_manager)
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	DECLARE @id_type_r_manager bigint = (SELECT id FROM Types WHERE name = 'manager')
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	
	DECLARE @cols NVARCHAR(MAX) = STUFF((
	SELECT N',' + QUOTENAME(y)
	FROM (SELECT DISTINCT
	c_g.attribute_2 AS y
	FROM Relationships r_member
	INNER JOIN Relationships r_manager ON r_manager.id_object_parent = r_member.id_object_child
		AND r_manager.id_type = @id_type_r_manager
		AND r_member.id_type = @id_type_r_member
		AND r_manager.id_object_child = @id_object_manager
	INNER JOIN Objects o_parent ON o_parent.id = r_member.id_object_parent
		AND o_parent.id_type = @id_type_o_group
	INNER JOIN ObjectAttributes oa_parent_key ON oa_parent_key.id_object = r_member.id_object_parent
	INNER JOIN Attributes a_parent_key ON a_parent_key.id = oa_parent_key.id_attribute
		AND a_parent_key.is_key = 1
	INNER JOIN (SELECT oa.id_object, oa.attribute_value 
	FROM ObjectAttributes oa 
	INNER JOIN Objects o ON o.id = oa.id_object 
		AND o.id_snapshot = (SELECT MAX(id) FROM Snapshots)
	INNER JOIN Attributes a ON oa.id_attribute = a.id
		AND a.name = 'info'
	WHERE ISNUMERIC(oa.attribute_value) = 1) oa_parent_cost ON oa_parent_cost.id_object = r_member.id_object_parent
	INNER JOIN Cache_table_ad c_g ON c_g.dn = oa_parent_key.attribute_value
		AND c_g.type = 'group') AS Y
	ORDER BY y FOR XML PATH('')),1, 1, N'');

	DECLARE @sql NVARCHAR(MAX) = N'SELECT *
	FROM (SELECT
	c_g.attribute_2,
	CONVERT(int,oa_parent_cost.attribute_value) as qty
	FROM Relationships r_member
	INNER JOIN Relationships r_manager ON r_manager.id_object_parent = r_member.id_object_child
		AND r_manager.id_type = ' + CONVERT(varchar,@id_type_r_manager) + '
		AND r_member.id_type = ' + CONVERT(varchar,@id_type_r_member) + '
		AND r_manager.id_object_child = ' + CONVERT(varchar,@id_object_manager) + '
	INNER JOIN Objects o_parent ON o_parent.id = r_member.id_object_parent
		AND o_parent.id_type = ' + CONVERT(varchar,@id_type_o_group) + '
	INNER JOIN ObjectAttributes oa_parent_key ON oa_parent_key.id_object = r_member.id_object_parent
	INNER JOIN Attributes a_parent_key ON a_parent_key.id = oa_parent_key.id_attribute
		AND a_parent_key.is_key = 1
	INNER JOIN (SELECT oa.id_object, oa.attribute_value 
	FROM ObjectAttributes oa 
	INNER JOIN Objects o ON o.id = oa.id_object 
		AND o.id_snapshot = (SELECT MAX(id) FROM Snapshots)
	INNER JOIN Attributes a ON oa.id_attribute = a.id
		AND a.name = ''' + @name_a_cost + '''
	WHERE ISNUMERIC(oa.attribute_value) = 1) oa_parent_cost ON oa_parent_cost.id_object = r_member.id_object_parent
	INNER JOIN Cache_table_ad c_g ON c_g.dn = oa_parent_key.attribute_value
		AND c_g.type = ''group'') AS D
	PIVOT(SUM(qty) FOR attribute_2 IN(' + @cols + N')) AS P;';

	EXEC sp_executesql @sql;

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_snapshot_manager_groups_costs]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_snapshot_manager_groups_costs]
	@object_dn_manager varchar(500),
	@name_a_cost varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_object_manager bigint = dbo.fnSnapshot_objectdn_id(@object_dn_manager)
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	DECLARE @id_type_r_manager bigint = (SELECT id FROM Types WHERE name = 'manager')
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	
	SELECT
	c_g.dn,
	c_g.attribute_1,
	c_g.attribute_2,
	c_g.attribute_3,
	c_g.attribute_4,
	c_g.attribute_5,
	c_g.attribute_6,
	c_g.attribute_7,
	c_g.attribute_8,
	c_g.attribute_9,
	COUNT(r_member.id),
	CONVERT(varchar,SUM(CONVERT(decimal,oa_parent_cost.attribute_value)))
	FROM Relationships r_member
	INNER JOIN Relationships r_manager ON r_manager.id_object_parent = r_member.id_object_child
		AND r_manager.id_type = @id_type_r_manager
		AND r_member.id_type = @id_type_r_member
		AND r_manager.id_object_child = @id_object_manager
	INNER JOIN Objects o_parent ON o_parent.id = r_member.id_object_parent
		AND o_parent.id_type = @id_type_o_group
	INNER JOIN ObjectAttributes oa_parent_key ON oa_parent_key.id_object = r_member.id_object_parent
	INNER JOIN Attributes a_parent_key ON a_parent_key.id = oa_parent_key.id_attribute
		AND a_parent_key.is_key = 1
	INNER JOIN ObjectAttributes oa_parent_cost ON oa_parent_cost.id_object = r_member.id_object_parent
	INNER JOIN Attributes a_parent_cost ON a_parent_cost.id = oa_parent_cost.id_attribute
		AND a_parent_cost.name = @name_a_cost
	INNER JOIN Cache_table_ad c_g ON c_g.dn = oa_parent_key.attribute_value
		AND c_g.type = 'group'
	GROUP BY c_g.dn, c_g.attribute_1, c_g.attribute_2, c_g.attribute_3, c_g.attribute_4, c_g.attribute_5,
		c_g.attribute_6, c_g.attribute_7, c_g.attribute_8, c_g.attribute_9
	HAVING SUM(CONVERT(decimal,oa_parent_cost.attribute_value)) > 0

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_snapshot_manager_group_users]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_snapshot_manager_group_users]
	@object_dn_manager varchar(500),
	@object_dn_group varchar(500)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_object_manager bigint = dbo.fnSnapshot_objectdn_id(@object_dn_manager)
	DECLARE @id_object_group bigint = dbo.fnSnapshot_objectdn_id(@object_dn_group)
	DECLARE @id_type_r_member bigint = (SELECT id FROM Types WHERE name = 'member')
	DECLARE @id_type_r_manager bigint = (SELECT id FROM Types WHERE name = 'manager')
	
	SELECT
	c_u.dn,
	c_u.attribute_1,
	c_u.attribute_2,
	c_u.attribute_3,
	c_u.attribute_4,
	c_u.attribute_5,
	c_u.attribute_6,
	c_u.attribute_7,
	c_u.attribute_8,
	c_u.attribute_9
	FROM Relationships r_member
	INNER JOIN Relationships r_manager ON r_manager.id_object_parent = r_member.id_object_child
		AND r_manager.id_type = @id_type_r_manager
		AND r_member.id_type = @id_type_r_member
		AND r_manager.id_object_child = @id_object_manager
		AND r_member.id_object_parent = @id_object_group
	INNER JOIN ObjectAttributes oa_child_key ON oa_child_key.id_object = r_member.id_object_child
	INNER JOIN Attributes a_child_key ON a_child_key.id = oa_child_key.id_attribute
		AND a_child_key.is_key = 1
	INNER JOIN Cache_table_ad c_u ON c_u.dn = oa_child_key.attribute_value
		AND c_u.type = 'user'
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_relationships_report]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_relationships_report]
	@attribute_names varchar(500),
	@id_snapshot bigint = 0,
	@type_relationship varchar(100) = 'member'
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END
	
	SELECT
	ROW_NUMBER() OVER (ORDER BY s_oa.attribute_value, COUNT(s_oa.attribute_value) DESC) as 'id',
	s_oa.attribute_name,
	s_oa.attribute_value,
	(SELECT
	COUNT(s_oa_total.attribute_value)
	FROM fnSnapshot_objectattributes_get(@id_snapshot_l,@attribute_names,' - ') s_oa_total
		WHERE s_oa_total.attribute_value = s_oa.attribute_value) as 'total',
	oa_parent.attribute_value,
	ROUND(CONVERT(float, COUNT(s_oa.attribute_value)) / CONVERT(float,(SELECT
	COUNT(s_oa_total.attribute_value)
	FROM fnSnapshot_objectattributes_get(@id_snapshot_l,@attribute_names,' - ') s_oa_total
		WHERE s_oa_total.attribute_value = s_oa.attribute_value)) * 100, 2) as 'percentage'
	FROM Relationships s_r
	INNER JOIN ObjectAttributes oa_parent ON oa_parent.id_object = s_r.id_object_parent
	INNER JOIN Attributes a_parent_show ON a_parent_show.id = oa_parent.id_attribute AND a_parent_show.is_show = 1
	INNER JOIN fnSnapshot_objectattributes_get(@id_snapshot_l,@attribute_names,' - ') s_oa
		ON s_oa.id_object = s_r.id_object_child
		AND LEN(s_oa.attribute_value) > 3
	GROUP BY oa_parent.attribute_value, s_oa.attribute_name, s_oa.attribute_value
	ORDER BY s_oa.attribute_value, COUNT(s_oa.attribute_value) DESC
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_object_add]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_object_add]
	@id_tag bigint,
	@name_input varchar(500),
	@type_object varchar(50),
	@date_start datetime = NULL,
	@date_end datetime = NULL,
	@is_active bit = 1
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @delay_hour int = (SELECT delay_hour FROM Tags WHERE id = @id_tag)
	DECLARE @name varchar(255) = (SELECT c.objectSID FROM Cache_table_dn_sAMAccountName c WHERE c.distinguishedName = @name_input)
	DECLARE @id_type_o bigint = (SELECT id FROM Types WHERE name = @type_object)
	IF @id_type_o IS NULL BEGIN
		INSERT INTO Types (name) VALUES (@type_object)
		SET @id_type_o = (SELECT SCOPE_IDENTITY())
	END
	DECLARE @id_tagobject bigint = (SELECT id FROM TagObjects WHERE name = @name AND id_tag = @id_tag AND id_type = @id_type_o)
	
	IF @date_start = '' OR @date_start = '0' BEGIN SET @date_start = NULL END
	IF @date_end = '' OR @date_end = '0' BEGIN SET @date_end = NULL END
	
	IF @id_tagobject > 0 BEGIN
		UPDATE TagObjects
		SET	date_start = @date_start,
		date_end = @date_end
		WHERE id = @id_tagobject
		
		EXEC spTag_object_enable @id_tagobject
		
		SELECT @id_tagobject
		
		RETURN
	END
	
	IF @id_tagobject IS NULL BEGIN
		INSERT INTO TagObjects (id_tag, id_type, name, date_start, date_end, is_active) 
		VALUES (@id_tag, @id_type_o, @name, @date_start, @date_end, @is_active)
		SET @id_tagobject = (SELECT SCOPE_IDENTITY())
		
		EXEC spTag_object_timer_start @id_tagobject, 'duration'
		
		SELECT @id_tagobject
		
		RETURN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spTag_performance_test]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTag_performance_test]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_tag bigint = (SELECT TOP 1 id FROM Tags WHERE is_active = 1)
	DECLARE @id_type_o_user bigint = (SELECT id FROM Types WHERE name = 'user')
	DECLARE @id_type_o_group bigint = (SELECT id FROM Types WHERE name = 'group')
	DECLARE @id_tagobject_user bigint = (SELECT TOP 1 id FROM TagObjects WHERE is_active = 1 AND id_type = @id_type_o_user)
	DECLARE @object_dn_user varchar(500) = dbo.fnTag_objectid_dn(@id_tagobject_user)
	DECLARE @id_tagobject_group bigint = (SELECT TOP 1 id FROM TagObjects WHERE is_active = 1 AND id_type = @id_type_o_group)
	DECLARE @object_dn_group varchar(500) = dbo.fnTag_objectid_dn(@id_tagobject_group)
	
	EXEC spTag_get
	EXEC spTag_object_get @id_tag, @object_dn_user
	EXEC spTag_objects_timer_get @id_tag
	EXEC spTag_table_groups @id_tag
	EXEC spTag_table_groups_exclusive @id_tag,@object_dn_user
	EXEC spTag_table_objects @id_tag
	EXEC spTag_table_permissions @id_tag
	EXEC spTag_table_permissions @id_tag,'owner'
	EXEC spTag_table_users @id_tag
	EXEC spTag_table_users_exclusive @id_tag,@object_dn_group
	EXEC spTags_get 1,NULL,NULL,NULL,@object_dn_user
	EXEC spTags_get NULL,NULL,NULL,'owner',@object_dn_user
	EXEC spTags_get
	EXEC spTags_objects_common @object_dn_user
	EXEC spTags_objects_left @object_dn_user
	EXEC spTags_objects_timer_get
	EXEC spTags_permissions_get @object_dn_user
	EXEC spTags_permissions_get @object_dn_user,'owner'
	EXEC spTags_relationships_snapshot_right
	EXEC spTags_relationships_snapshot_left
	EXEC spTags_relationships_snapshot_common
	EXEC spTags_table_objects

	RETURN

END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_table_object_member_groups_nested]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_table_object_member_groups_nested]
	@object_dn varchar(255),
	@id_snapshot bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint
	SET @id_snapshot_l = @id_snapshot
	IF @id_snapshot_l = 0 BEGIN SET @id_snapshot_l = (SELECT MAX(id) FROM Snapshots) END

	SELECT
	c_g.dn,
	c_g.attribute_1,
	c_g.attribute_2,
	c_g.attribute_3,
	c_g.attribute_4,
	c_g.attribute_5,
	c_g.attribute_6,
	c_g.attribute_7,
	c_g.attribute_8,
	c_g.attribute_9
	FROM fnSnapshot_relationships_get(1,@id_snapshot_l,'member',NULL,NULL,NULL,@object_dn) s_r
	INNER JOIN Cache_table_ad c_g
		ON c_g.dn = s_r.name_parent_key
		AND s_r.name_child_key = @object_dn
	WHERE c_g.type = 'group'
END
GO
/****** Object:  StoredProcedure [dbo].[spSnapshot_performance_test]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSnapshot_performance_test]
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @id_snapshot_l bigint = (SELECT MAX(id) FROM Snapshots)
	DECLARE @id_snapshot_delta_l bigint = (SELECT MIN(id) FROM Snapshots)
	DECLARE @name_object_manager varchar(500) = (SELECT TOP 1 s_r.name_child_key FROM fnSnapshot_relationships_get(0,@id_snapshot_l,'managedBy',NULL,NULL,NULL,NULL) s_r)
	DECLARE @name_object_managedby varchar(500) = (SELECT TOP 1 s_r.name_parent_key FROM fnSnapshot_relationships_get(0,@id_snapshot_l,'managedBy',NULL,NULL,NULL,NULL) s_r)
	DECLARE @id_object bigint = (SELECT MAX(id) FROM Objects)

	EXEC spSnapshot_objects_get_details @id_snapshot_l
	EXEC spSnapshot_relationships_get_details @id_snapshot_l
	EXEC spSnapshot_object_get_attributes @id_object
	EXEC spSnapshot_objects_get_delta @id_snapshot_l,@id_snapshot_delta_l
	EXEC spSnapshot_relationships_get_delta @id_snapshot_l,@id_snapshot_delta_l
	EXEC spSnapshot_objectattributes_get_delta @id_snapshot_l,@id_snapshot_delta_l
	SELECT * FROM fnSnapshot_objectattribute_get(@id_snapshot_l,NULL)
	SELECT * FROM fnSnapshot_objectattributes_get(@id_snapshot_l,'distinguishedName,sAMAccountName','-')
	SELECT * FROM fnSnapshot_objectattributes_get(@id_snapshot_l,'distinguishedName,sAMAccountName,cn','-')
	SELECT * FROM fnSnapshot_objectattributes_get(@id_snapshot_l,'distinguishedName,sAMAccountName,cn,displayName','-')
	SELECT * FROM fnSnapshot_objectattributes_get(@id_snapshot_l,'distinguishedName,sAMAccountName,cn,displayName,description','-')
	SELECT * FROM fnSnapshot_objects_get(@id_snapshot_l,NULL,NULL)
	SELECT * FROM fnSnapshot_relationships_get(0,@id_snapshot_l,NULL,NULL,NULL,NULL,NULL)
	EXEC spSnapshot_objects_search 0,NULL,'de'
	EXEC spSnapshot_table_relationships_report 'department,title'
	EXEC spSnapshot_table_user_attributes_groups_managedby @name_object_manager
	EXEC spSnapshot_table_snapshot_manager_groups_costs @name_object_manager, 'info'
	EXEC spSnapshot_table_group_attributes_managedby_users @name_object_managedby
	
	RETURN

END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Functions_relationships_get_left]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Functions_relationships_get_left]
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_function_join varchar(100),
	@name_a_function_join_prefix varchar(50) = NULL,
	@name_a_function_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(1,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_function_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_function_join_prefix,'') + c.func_kd + ISNULL(@name_a_function_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object
	WHERE NOT s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Functions_relationships_get_common]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Functions_relationships_get_common]
	@is_active bit,
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_function_join varchar(100),
	@name_a_function_join_prefix varchar(50) = NULL,
	@name_a_function_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(@is_active,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_function_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_function_join_prefix,'') + c.func_kd + ISNULL(@name_a_function_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object
	WHERE s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Costcenters_relationships_get_left]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Costcenters_relationships_get_left]
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_costcenter_join varchar(100),
	@name_a_costcenter_join_prefix varchar(50) = NULL,
	@name_a_costcenter_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(1,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_costcenter_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_costcenter_join_prefix,'') + c.cost_kd + ISNULL(@name_a_costcenter_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object
	WHERE NOT s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)	

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Costcenters_relationships_get_common]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Costcenters_relationships_get_common]
	@is_active bit,
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_costcenter_join varchar(100),
	@name_a_costcenter_join_prefix varchar(50) = NULL,
	@name_a_costcenter_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(@is_active,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_costcenter_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_costcenter_join_prefix,'') + c.cost_kd + ISNULL(@name_a_costcenter_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object
	WHERE s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)	

	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Organizations_relationships_get_left]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Organizations_relationships_get_left]
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_organization_join varchar(100),
	@name_a_organization_join_prefix varchar(50) = NULL,
	@name_a_organization_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(1,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_organization_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_organization_join_prefix,'') + c.org_kd + ISNULL(@name_a_organization_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object	
	WHERE NOT s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)
	
	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Employees_Organizations_relationships_get_common]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Employees_Organizations_relationships_get_common]
	@is_active bit,
	@pl_primary bit,
	@name_a_user_join varchar(100),
	@name_a_user_join_prefix varchar(50) = NULL,
	@name_a_user_join_suffix varchar(50) = NULL,
	@name_a_organization_join varchar(100),
	@name_a_organization_join_prefix varchar(50) = NULL,
	@name_a_organization_join_suffix varchar(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
	s_o_group.name_object_key,
	s_o_user.name_object_key
	FROM fnAFAS_UMRA_Employees_get(@is_active,@pl_primary,NULL,NULL,NULL,NULL) c
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_user_join) s_oa_user ON s_oa_user.attribute_value = ISNULL(@name_a_user_join_prefix,'') + c.bsn + ISNULL(@name_a_user_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_user ON s_o_user.id_object = s_oa_user.id_object
	INNER JOIN fnSnapshot_objectattribute_get(0,@name_a_organization_join) s_oa_group ON s_oa_group.attribute_value = ISNULL(@name_a_organization_join_prefix,'') + c.org_kd + ISNULL(@name_a_organization_join_suffix,'')
	INNER JOIN fnSnapshot_objects_get(0,NULL,NULL) s_o_group ON s_o_group.id_object = s_oa_group.id_object	
	WHERE s_o_user.id_object IN
	(SELECT s_r.id_object_child FROM fnSnapshot_relationships_get(0,0,'member',NULL,NULL,NULL,NULL) s_r
	WHERE s_r.id_object_parent = s_o_group.id_object)
	
	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[spAFAS_UMRA_Simulate]    Script Date: 08/16/2013 11:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAFAS_UMRA_Simulate]
AS
BEGIN
	SET NOCOUNT ON;
	
	EXEC spAFAS_UMRA_Functions_get_left 'cn','GG_FUNC_'
	EXEC spAFAS_UMRA_Costcenters_get_left 'cn','GG_COST_'
	EXEC spAFAS_UMRA_Employees_get_left 'employeeID',NULL,NULL,1
	EXEC spAFAS_UMRA_Employees_get_common 'employeeID',NULL,NULL,0
	EXEC spAFAS_UMRA_Employees_get_common 'employeeID',NULL,NULL,1
	EXEC spAFAS_UMRA_Employees_Functions_relationships_get_left 0,'employeeID',NULL,NULL,'cn','GG_FUNC_',NULL
	EXEC spAFAS_UMRA_Employees_Costcenters_relationships_get_left 0,'employeeID',NULL,NULL,'cn','GG_COST_',NULL

	RETURN

END
GO
/****** Object:  Default [DF_Batches_timestamp_created]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Batches] ADD  CONSTRAINT [DF_Batches_timestamp_created]  DEFAULT (getdate()) FOR [timestamp_created]
GO
/****** Object:  Default [DF_Batches_limit_execute_run]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Batches] ADD  CONSTRAINT [DF_Batches_limit_execute_run]  DEFAULT ((0)) FOR [limit_execute_run]
GO
/****** Object:  Default [DF_Batches_allow_auto_run]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Batches] ADD  CONSTRAINT [DF_Batches_allow_auto_run]  DEFAULT ((0)) FOR [allow_auto_run]
GO
/****** Object:  Default [DF_Batches_closed]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Batches] ADD  CONSTRAINT [DF_Batches_closed]  DEFAULT ((0)) FOR [closed]
GO
/****** Object:  Default [DF_NTFS2dbCollectionShares_is_active]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[NTFS2dbCollectionShares] ADD  CONSTRAINT [DF_NTFS2dbCollectionShares_is_active]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF_Log_timestamp]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF_Log_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
/****** Object:  Default [DF_Jobs_timestamp_created]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Jobs] ADD  CONSTRAINT [DF_Jobs_timestamp_created]  DEFAULT (getdate()) FOR [timestamp_created]
GO
/****** Object:  Default [DF_Jobs_closed]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Jobs] ADD  CONSTRAINT [DF_Jobs_closed]  DEFAULT ((0)) FOR [closed]
GO
/****** Object:  Default [DF_Snapshots_timestamp]    Script Date: 08/16/2013 11:03:11 ******/
ALTER TABLE [dbo].[Snapshots] ADD  CONSTRAINT [DF_Snapshots_timestamp]  DEFAULT (getdate()) FOR [timestamp_start]
GO
/****** Object:  Default [DF_Tasks_timestamp_created]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_timestamp_created]  DEFAULT (getdate()) FOR [timestamp_created]
GO
/****** Object:  Default [DF_Tasks_closed]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_closed]  DEFAULT ((0)) FOR [closed]
GO
/****** Object:  Default [DF_Tags_duration_hour]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_duration_hour]  DEFAULT ((0)) FOR [duration_hour]
GO
/****** Object:  Default [DF_Tags_delay_hour]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_delay_hour]  DEFAULT ((0)) FOR [delay_hour]
GO
/****** Object:  Default [DF_Tags_is_active]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_is_active]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  Default [DF_Tags_direct_provision]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_direct_provision]  DEFAULT ((1)) FOR [direct_provision]
GO
/****** Object:  Default [DF_TagPermissions_is_allowed]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[TagPermissions] ADD  CONSTRAINT [DF_TagPermissions_is_allowed]  DEFAULT ((1)) FOR [is_allowed]
GO
/****** Object:  Default [DF_TagObjects_is_active]    Script Date: 08/16/2013 11:03:12 ******/
ALTER TABLE [dbo].[TagObjects] ADD  CONSTRAINT [DF_TagObjects_is_active]  DEFAULT ((1)) FOR [is_active]
GO
/****** Object:  ForeignKey [FK_Relationships_Objects]    Script Date: 08/16/2013 11:03:16 ******/
ALTER TABLE [dbo].[Relationships]  WITH CHECK ADD  CONSTRAINT [FK_Relationships_Objects] FOREIGN KEY([id_object_parent])
REFERENCES [dbo].[Objects] ([id])
GO
ALTER TABLE [dbo].[Relationships] CHECK CONSTRAINT [FK_Relationships_Objects]
GO
/****** Object:  ForeignKey [FK_Relationships_Objects1]    Script Date: 08/16/2013 11:03:16 ******/
ALTER TABLE [dbo].[Relationships]  WITH CHECK ADD  CONSTRAINT [FK_Relationships_Objects1] FOREIGN KEY([id_object_child])
REFERENCES [dbo].[Objects] ([id])
GO
ALTER TABLE [dbo].[Relationships] CHECK CONSTRAINT [FK_Relationships_Objects1]
GO
/****** Object:  ForeignKey [FK_ObjectAttributes_Attributes]    Script Date: 08/16/2013 11:03:16 ******/
ALTER TABLE [dbo].[ObjectAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ObjectAttributes_Attributes] FOREIGN KEY([id_attribute])
REFERENCES [dbo].[Attributes] ([id])
GO
ALTER TABLE [dbo].[ObjectAttributes] CHECK CONSTRAINT [FK_ObjectAttributes_Attributes]
GO
/****** Object:  ForeignKey [FK_ObjectAttributes_Objects]    Script Date: 08/16/2013 11:03:16 ******/
ALTER TABLE [dbo].[ObjectAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ObjectAttributes_Objects] FOREIGN KEY([id_object])
REFERENCES [dbo].[Objects] ([id])
GO
ALTER TABLE [dbo].[ObjectAttributes] CHECK CONSTRAINT [FK_ObjectAttributes_Objects]
GO
