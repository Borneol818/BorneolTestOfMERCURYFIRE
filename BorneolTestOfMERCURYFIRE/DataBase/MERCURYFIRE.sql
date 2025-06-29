USE [master]
GO
/****** Object:  Database [MERCURYFIRE]    Script Date: 2025/6/24 下午 05:17:06 ******/
CREATE DATABASE [MERCURYFIRE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MERCURYFIRE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MERCURYFIRE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MERCURYFIRE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MERCURYFIRE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MERCURYFIRE] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MERCURYFIRE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MERCURYFIRE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET ARITHABORT OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MERCURYFIRE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MERCURYFIRE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MERCURYFIRE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MERCURYFIRE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET RECOVERY FULL 
GO
ALTER DATABASE [MERCURYFIRE] SET  MULTI_USER 
GO
ALTER DATABASE [MERCURYFIRE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MERCURYFIRE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MERCURYFIRE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MERCURYFIRE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MERCURYFIRE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MERCURYFIRE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MERCURYFIRE', N'ON'
GO
ALTER DATABASE [MERCURYFIRE] SET QUERY_STORE = ON
GO
ALTER DATABASE [MERCURYFIRE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MERCURYFIRE]
GO
/****** Object:  Table [dbo].[MyOffice_ACPD]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOffice_ACPD](
	[ACPD_SID] [char](20) NOT NULL,
	[ACPD_Cname] [nvarchar](60) NULL,
	[ACPD_Ename] [nvarchar](40) NULL,
	[ACPD_Sname] [nvarchar](40) NULL,
	[ACPD_Email] [nvarchar](60) NULL,
	[ACPD_Status] [tinyint] NULL,
	[ACPD_Stop] [bit] NULL,
	[ACPD_StopMemo] [nvarchar](60) NULL,
	[ACPD_LoginID] [nvarchar](30) NULL,
	[ACPD_LoginPWD] [nvarchar](60) NULL,
	[ACPD_Memo] [nvarchar](600) NULL,
	[ACPD_NowDateTime] [datetime] NULL,
	[ACPD_NowID] [nvarchar](20) NULL,
	[ACPD_UPDDateTime] [datetime] NULL,
	[ACPD_UPDID] [nvarchar](20) NULL,
 CONSTRAINT [PK_MyOffice_ACPD] PRIMARY KEY CLUSTERED 
(
	[ACPD_SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyOffice_ExcuteionLog]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOffice_ExcuteionLog](
	[DeLog_AutoID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeLog_StoredPrograms] [nvarchar](120) NOT NULL,
	[DeLog_GroupID] [uniqueidentifier] NOT NULL,
	[DeLog_isCustomDebug] [bit] NOT NULL,
	[DeLog_ExecutionProgram] [nvarchar](120) NOT NULL,
	[DeLog_ExecutionInfo] [nvarchar](max) NULL,
	[DeLog_verifyNeeded] [bit] NULL,
	[DeLog_ExDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_MOTC_DataExchangeLog] PRIMARY KEY CLUSTERED 
(
	[DeLog_AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MyOffice_ACPD] ADD  CONSTRAINT [DF_MyOffice_ACPD_acpd_status]  DEFAULT ((0)) FOR [ACPD_Status]
GO
ALTER TABLE [dbo].[MyOffice_ACPD] ADD  CONSTRAINT [DF_MyOffice_ACPD_acpd_stop]  DEFAULT ((0)) FOR [ACPD_Stop]
GO
ALTER TABLE [dbo].[MyOffice_ACPD] ADD  CONSTRAINT [DF_MyOffice_ACPD_acpd_nowdatetime]  DEFAULT (getdate()) FOR [ACPD_NowDateTime]
GO
ALTER TABLE [dbo].[MyOffice_ACPD] ADD  CONSTRAINT [DF_MyOffice_ACPD_acpd_upddatetime]  DEFAULT (getdate()) FOR [ACPD_UPDDateTime]
GO
ALTER TABLE [dbo].[MyOffice_ExcuteionLog] ADD  CONSTRAINT [DF_MOTC_DataExchangeLog_DeLog_isCustomDebug]  DEFAULT ((0)) FOR [DeLog_isCustomDebug]
GO
ALTER TABLE [dbo].[MyOffice_ExcuteionLog] ADD  CONSTRAINT [DF_MyOffice_ExcuteionLog_DeLog_verifyNeeded]  DEFAULT ((0)) FOR [DeLog_verifyNeeded]
GO
ALTER TABLE [dbo].[MyOffice_ExcuteionLog] ADD  CONSTRAINT [DF_MOTC_DataExchangeLog_DeLog_ExDateTime]  DEFAULT (getdate()) FOR [DeLog_ExDateTime]
GO
/****** Object:  StoredProcedure [dbo].[NEWSID]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NEWSID]
(
    @TableName nvarchar(128),
    @ReturnSID nvarchar(20) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON

	
	DECLARE
	@SIDRowName NVARCHAR(20)


    DECLARE 
        @currentYear int,
        @dayOfYear int,
        @secondOfDay int,
        @alphabets char(36),
        @firstDigit char(1),
        @secondDigit char(1),
        @prefix char(2),
        @dayCode char(3),
        @secondCode char(5),
        @sql nvarchar(MAX),
        @randomValue char(10),
        @ParmDefinition nvarchar(500)

    DECLARE @tempTable TABLE
    (
        SID CHAR(20)
    );

    SET @currentYear = YEAR(GETDATE()) - 2000;
    SET @dayOfYear = DATEPART(DAYOFYEAR, GETDATE());
    SET @secondOfDay = DATEPART(SECOND, GETDATE()) + (60 * DATEPART(MINUTE, GETDATE())) + (3600 * DATEPART(HOUR, GETDATE()));
    IF (@currentYear > 1295)
    BEGIN
        SET @currentYear = 1295;
    END;
    SET @alphabets = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    SET @firstDigit = SUBSTRING(@alphabets, (@currentYear / 36) % 36 + 1, 1);
    SET @secondDigit = SUBSTRING(@alphabets, @currentYear % 36 + 1, 1);
    SET @prefix = @firstDigit + @secondDigit;
    SET @dayCode = RIGHT('000' + CONVERT(VARCHAR, @dayOfYear), 3);
    SET @secondCode = RIGHT('00000' + CONVERT(VARCHAR, @secondOfDay), 5);

    -- 尋找 Table 的欄位
    SELECT 
        TOP 1 
        @SIDRowName = STUFF((
            SELECT ', ' + c.name 
            FROM sys.index_columns ic
            JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
            WHERE ic.object_id = i.object_id AND ic.index_id = i.index_id
            ORDER BY ic.key_ordinal
            FOR XML PATH('')
        ), 1, 2, '') 
    FROM sys.indexes i 
    WHERE i.object_id = OBJECT_ID(@TableName) AND i.index_id > 0  -- 排除堆

    -- 尋找預設的
    WHILE 1 = 1
    BEGIN

        SET @randomValue = RIGHT('0000000000' + CAST(ABS(CAST(CAST(NEWID() AS BINARY(5)) AS BIGINT)) % 10000000000 AS VARCHAR(10)), 10);
        SET @ReturnSID = @prefix + @dayCode + @secondCode + @randomValue;
        SET @sql = N'SELECT @SIDRowNameOUT = ' + QUOTENAME(@SIDRowName) + ' FROM ' + QUOTENAME(@TableName) + ' WHERE ' + QUOTENAME(@SIDRowName) + ' = @ReturnSIDIN';
        SET @ParmDefinition = N'@ReturnSIDIN nvarchar(20), @SIDRowNameOUT nvarchar(20) OUTPUT';

        DELETE FROM @tempTable;
        
        DECLARE @SIDRowNameOUT nvarchar(20)
        EXEC sp_executesql @sql, @ParmDefinition, @ReturnSIDIN = @ReturnSID, @SIDRowNameOUT = @SIDRowNameOUT OUTPUT;
        
        IF @SIDRowNameOUT IS NULL
            BREAK;
    END;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AddLog]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[usp_AddLog]
	(
		@_InBox_ReadID					tinyint					,		-- 執行 Log 時是使用第幾版
		@_InBox_SPNAME					nvarchar(120)		,		-- 執行的預存程序名稱
		@_InBox_GroupID					uniqueidentifier	,		-- 執行群組代碼
		@_InBox_ExProgram				nvarchar(40)			,		-- 執行的動作是什麼
		@_InBox_ActionJSON			nvarchar(Max)		,		-- 執行的過程是什麼
		@_OutBox_ReturnValues		nvarchar(Max)		output -- 回傳執行的項目
	) 
	AS
	
	-- ========================= 新增與維護注意事項(必須遵守規定) =====================
	-- 相關注解說明請寫在這裡，以免從 Visual Studio 轉至 SQL 說明內容沒有一起上去
	-- 如果要修改請以這檔案為主，並以 SSMS 19.0 版以上來修改以便有完整的編輯模式
	-- 編輯時請交由「專案人員」來進行相關的修正，修改前也請確定在 C# Class 內，
	-- 有那些程序有〔參考〕到並再加以確定修改後不會有任何影響，再行修正以下 TSQL 的語法，以免
	-- 你修改後，會使得其他程序也有引用到以下的資料而有所影響。
	-- ==========================================================================
	-- 指定檔案　：usp_AddLog 記錄執行的動作.sql
	-- 專案項目　：
	-- 專案用途　：記錄 sp 執行的動作為何
	-- 專案資料庫：
	-- 專案資料表：
	-- 專案人員　：
	-- 專案日期　：
	-- 專案說明　：@_InBox_ReadID				最主要是拿來做記錄版本使用，因為 Log 記錄往後會以不同的內容或是執行的程序不一定會有不同的記錄內容
	-- 　　　　　：@_InBox_ActionJSON		是記錄執行的項目與內容以利有往後擴充的保留
	-- 　　　　　：@_InBox_GroupID				最主要在執行過程會有一整段的過程，可以透過這 GUID 可以了解到整個執行過程，不然其他項目也記錄時
	--																			都不知道執行到那一個項目了??
	-- =========================================================================

	--======= 宣告預設的變數	================
	DECLARE @_StoredProgramsNAME nvarchar(100) = 'usp_AddLog' -- 執行項目
	
	--======= 宣告要儲存的表格	================
	DECLARE @_ReturnTable Table 
	(
		[RT_Status]					bit							,		--執行結果
		[RT_ActionValues]		nvarchar(2000)			--回傳結果為何
	) 
	
	--======= 執行行為與動作	================
	-- @_InBox_ServiceID				=	0
	-- 單純記錄一筆執行內容
	--=====================================

	if(@_InBox_ReadID = 0) 
		Begin

		INSERT INTO MyOffice_ExcuteionLog 
		(
			DeLog_StoredPrograms,
			DeLog_GroupID,
			DeLog_ExecutionProgram,
			DeLog_ExecutionInfo
		)
		Values
		(
			@_InBox_SPNAME,
			@_InBox_GroupID,
			@_InBox_ExProgram,
			@_InBox_ActionJSON
		)

		SET	@_OutBox_ReturnValues =
		(
				SELECT
						Top 100 
						DeLog_AutoID											AS 'AutoID',
						DeLog_ExecutionProgram					AS 'NAME',
						DeLog_ExecutionInfo							AS 'Action',
						DeLog_ExDateTime								AS 'DateTime'
				FROM
						MyOffice_ExcuteionLog						WITH(NOLOCK)
				WHERE
					DeLog_GroupID = @_InBox_GroupID
		
				ORDER BY
					DeLog_AutoID FOR json PATH,
					ROOT('ProgramLog'),
					INCLUDE_NULL_VALUES
		) 
	
		RETURN

End
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateMyoffice_ACPD]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CreateMyoffice_ACPD]
	@Json NVARCHAR(MAX)
AS
BEGIN
	DECLARE @NewSID NVARCHAR(20);
    EXEC NEWSID @TableName = 'Myoffice_ACPD', @ReturnSID = @NewSID OUTPUT;

	INSERT INTO MyOffice_ACPD(ACPD_SID,
							ACPD_Cname,
							ACPD_Ename,
							ACPD_Sname,
							ACPD_Email,
							ACPD_Status,
							ACPD_Stop,
							ACPD_StopMemo,
							ACPD_LoginID,
							ACPD_LoginPWD,
							ACPD_Memo,
							ACPD_NowDateTime,
							ACPD_NowID,
							ACPD_UPDDateTime,
							ACPD_UPDID)
	SELECT
		@NewSID,
		JSON_VALUE(@Json,'$.ACPD_Cname'),
		JSON_VALUE(@Json,'$.ACPD_Ename'),
		JSON_VALUE(@Json,'$.ACPD_Sname'),
		JSON_VALUE(@Json,'$.ACPD_Email'),
		JSON_VALUE(@Json,'$.ACPD_Status'),
		JSON_VALUE(@Json,'$.ACPD_Stop'),
		JSON_VALUE(@Json,'$.ACPD_StopMemo'),
		JSON_VALUE(@Json,'$.ACPD_LoginID'),
		JSON_VALUE(@Json,'$.ACPD_LoginPWD'),
		JSON_VALUE(@Json,'$.ACPD_Memo'),
		JSON_VALUE(@Json,'$.ACPD_NowDateTime'),
		JSON_VALUE(@Json,'$.ACPD_NowID'),
		JSON_VALUE(@Json,'$.ACPD_UPDDateTime'),
		JSON_VALUE(@Json,'$.ACPD_UPDID')

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteMyoffice_ACPD]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DeleteMyoffice_ACPD]
    @Json NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Id nvarchar(20);
    SELECT @Id = JSON_VALUE(@Json, '$.ACPD_SID');

    DELETE FROM Myoffice_ACPD WHERE ACPD_SID = @Id;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllMyoffice_ACPDs]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetAllMyoffice_ACPDs]
AS
BEGIN
    SELECT ACPD_SID, ACPD_Cname, ACPD_Ename, ACPD_Sname, ACPD_Email, ACPD_Status, ACPD_Stop, ACPD_StopMemo, ACPD_LoginID, ACPD_LoginPWD, ACPD_Memo, ACPD_NowDateTime, ACPD_NowID, ACPD_UPDDateTime, ACPD_UPDID
	FROM MyOffice_ACPD
    FOR JSON PATH, ROOT('Records');
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateMyoffice_ACPD]    Script Date: 2025/6/24 下午 05:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateMyoffice_ACPD]
    @Json NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Id nvarchar(20);
    SELECT @Id = JSON_VALUE(@Json, '$.ACPD_SID');

    UPDATE Myoffice_ACPD
    SET 
        ACPD_Cname=JSON_VALUE(@Json,'$.ACPD_Cname'),
		ACPD_Ename=JSON_VALUE(@Json,'$.ACPD_Ename'),
		ACPD_Sname=JSON_VALUE(@Json,'$.ACPD_Sname'),
		ACPD_Email=JSON_VALUE(@Json,'$.ACPD_Email'),
		ACPD_Status=JSON_VALUE(@Json,'$.ACPD_Status'),
		ACPD_Stop=JSON_VALUE(@Json,'$.ACPD_Stop'),
		ACPD_StopMemo=JSON_VALUE(@Json,'$.ACPD_StopMemo'),
		ACPD_LoginID=JSON_VALUE(@Json,'$.ACPD_LoginID'),
		ACPD_LoginPWD=JSON_VALUE(@Json,'$.ACPD_LoginPWD'),
		ACPD_Memo=JSON_VALUE(@Json,'$.ACPD_Memo'),
		ACPD_NowDateTime=JSON_VALUE(@Json,'$.ACPD_NowDateTime'),
		ACPD_NowID=JSON_VALUE(@Json,'$.ACPD_NowID'),
		ACPD_UPDDateTime=JSON_VALUE(@Json,'$.ACPD_UPDDateTime'),
		ACPD_UPDID=JSON_VALUE(@Json,'$.ACPD_UPDID')
    WHERE ACPD_SID = @Id;

END;
GO
USE [master]
GO
ALTER DATABASE [MERCURYFIRE] SET  READ_WRITE 
GO
