USE [master]
GO
/****** Object:  Database [douban_db1]    Script Date: 2019/11/28 9:58:08 ******/
CREATE DATABASE [douban_db1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'douban_db1', FILENAME = N'D:\SQL\数据库实验\douban_db1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'douban_db1_log', FILENAME = N'D:\SQL\数据库实验\douban_db1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [douban_db1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [douban_db1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [douban_db1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [douban_db1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [douban_db1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [douban_db1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [douban_db1] SET ARITHABORT OFF 
GO
ALTER DATABASE [douban_db1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [douban_db1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [douban_db1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [douban_db1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [douban_db1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [douban_db1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [douban_db1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [douban_db1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [douban_db1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [douban_db1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [douban_db1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [douban_db1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [douban_db1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [douban_db1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [douban_db1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [douban_db1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [douban_db1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [douban_db1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [douban_db1] SET RECOVERY FULL 
GO
ALTER DATABASE [douban_db1] SET  MULTI_USER 
GO
ALTER DATABASE [douban_db1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [douban_db1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [douban_db1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [douban_db1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'douban_db1', N'ON'
GO
USE [douban_db1]
GO
/****** Object:  Table [dbo].[db_act]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_act](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
	[role_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_act] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_actor]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_actor](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
	[actor_name] [varchar](32) NOT NULL,
	[is_star] [tinyint] NOT NULL,
 CONSTRAINT [PK_db_actor] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_awarding]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_awarding](
	[awards_id] [int] IDENTITY(1,1) NOT NULL,
	[awards_name] [varchar](32) NOT NULL,
	[activities] [varchar](32) NULL,
	[award_object] [varchar](32) NULL,
 CONSTRAINT [PK_db_awarding] PRIMARY KEY CLUSTERED 
(
	[awards_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_awards]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_awards](
	[awards_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_awards] PRIMARY KEY CLUSTERED 
(
	[awards_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_browse]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_browse](
	[browse _id] [int] IDENTITY(1,1) NOT NULL,
	[topics_id] [int] NULL,
 CONSTRAINT [PK_db_browse] PRIMARY KEY CLUSTERED 
(
	[browse _id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_browsing]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_browsing](
	[browse _id] [int] IDENTITY(1,1) NOT NULL,
	[browse _content] [varchar](100) NOT NULL,
	[browser] [varchar](32) NOT NULL,
	[browse_time] [varchar](10) NULL,
 CONSTRAINT [PK_db_browsing] PRIMARY KEY CLUSTERED 
(
	[browse _id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_classify]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_classify](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_classify] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_comment]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_comment](
	[com_id] [int] IDENTITY(1,1) NOT NULL,
	[mov_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[com_seen] [tinyint] NOT NULL,
	[com_star] [tinyint] NULL,
	[com_content] [varchar](16) NULL,
	[com_time] [timestamp] NULL,
 CONSTRAINT [PK_db_comment] PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_direct]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_direct](
	[director_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_direct] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_director]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_director](
	[director_id] [int] IDENTITY(1,1) NOT NULL,
	[director_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_director] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_discuss]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_discuss](
	[discuss_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_discuss] PRIMARY KEY CLUSTERED 
(
	[discuss_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_discussion]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_discussion](
	[discuss_id] [int] IDENTITY(1,1) NOT NULL,
	[discuss_topic] [varchar](32) NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [timestamp] NOT NULL,
	[discuss_content] [varchar](400) NULL,
 CONSTRAINT [PK_db_discussion] PRIMARY KEY CLUSTERED 
(
	[discuss_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_filmcritic]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_filmcritic](
	[filmcritic _id] [int] IDENTITY(1,1) NOT NULL,
	[topics_id] [int] NOT NULL,
 CONSTRAINT [PK_db_filmcritic] PRIMARY KEY CLUSTERED 
(
	[filmcritic _id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_filmcriticing]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_filmcriticing](
	[filmcritic _id] [int] IDENTITY(1,1) NOT NULL,
	[filmcritic _ content] [varchar](100) NULL,
	[promulgator] [varchar](32) NULL,
	[release_time] [timestamp] NULL,
 CONSTRAINT [PK_db_filmcriticing] PRIMARY KEY CLUSTERED 
(
	[filmcritic _id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_label]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_label](
	[lab_id] [int] IDENTITY(1,1) NOT NULL,
	[com_id] [int] NULL,
	[lab_comment] [varchar](16) NULL,
 CONSTRAINT [PK_db_label] PRIMARY KEY CLUSTERED 
(
	[lab_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_language]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_language](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[language_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_location]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_location](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_location] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_movie]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_movie](
	[movie_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_name] [varchar](32) NOT NULL,
	[release_date] [date] NOT NULL,
	[movie_time] [timestamp] NOT NULL,
	[movie_introduction] [varchar](400) NOT NULL,
 CONSTRAINT [PK_db_movie] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_movie_language]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_movie_language](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_movie_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_region]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_region](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_responding]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_responding](
	[respond_id] [int] IDENTITY(1,1) NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [timestamp] NOT NULL,
	[respond_content] [varchar](400) NULL,
	[discuss_id] [int] NOT NULL,
 CONSTRAINT [PK_db_responding] PRIMARY KEY CLUSTERED 
(
	[respond_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_script]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_script](
	[scriptwriter_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_db_script] PRIMARY KEY CLUSTERED 
(
	[scriptwriter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_scriptwriter]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_scriptwriter](
	[scriptwriter_id] [int] IDENTITY(1,1) NOT NULL,
	[scriptwriter_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_scriptwriter] PRIMARY KEY CLUSTERED 
(
	[scriptwriter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_topics]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_topics](
	[topics_id] [int] IDENTITY(1,1) NOT NULL,
	[topics_content] [varchar](32) NULL,
 CONSTRAINT [PK_db_topics] PRIMARY KEY CLUSTERED 
(
	[topics_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_type]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_db_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_usr]    Script Date: 2019/11/28 9:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_usr](
	[usr_id] [int] IDENTITY(1,1) NOT NULL,
	[usr_account] [varchar](16) NOT NULL,
	[usr_nickname] [varchar](16) NOT NULL,
	[usr_passwd] [varchar](16) NOT NULL,
 CONSTRAINT [PK_db_usr] PRIMARY KEY CLUSTERED 
(
	[usr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [douban_db1] SET  READ_WRITE 
GO
