USE [douban_db]
GO
/****** Object:  Table [dbo].[db_act]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_actor]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_awarding]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_awards]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_classify]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_comment]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_direct]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_director]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_discuss]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_discussion]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_label]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_language]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_location]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_movie]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_movie_language]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_region]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_responding]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_script]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_scriptwriter]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_type]    Script Date: 2019/11/28 15:59:53 ******/
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
/****** Object:  Table [dbo].[db_usr]    Script Date: 2019/11/28 15:59:53 ******/
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
SET IDENTITY_INSERT [dbo].[db_act] ON 

INSERT [dbo].[db_act] ([actor_id], [movie_id], [role_name]) VALUES (1, 1, N'布兰克探长')
INSERT [dbo].[db_act] ([actor_id], [movie_id], [role_name]) VALUES (2, 2, N'戴尔')
INSERT [dbo].[db_act] ([actor_id], [movie_id], [role_name]) VALUES (3, 3, N'安娜')
SET IDENTITY_INSERT [dbo].[db_act] OFF
SET IDENTITY_INSERT [dbo].[db_actor] ON 

INSERT [dbo].[db_actor] ([actor_id], [actor_name], [is_star]) VALUES (1, N'丹尼尔?克雷格', 1)
INSERT [dbo].[db_actor] ([actor_id], [actor_name], [is_star]) VALUES (2, N'凯文?哈特', 1)
INSERT [dbo].[db_actor] ([actor_id], [actor_name], [is_star]) VALUES (3, N'克里斯汀?贝尔', 1)
SET IDENTITY_INSERT [dbo].[db_actor] OFF
SET IDENTITY_INSERT [dbo].[db_awarding] ON 

INSERT [dbo].[db_awarding] ([awards_id], [awards_name], [activities], [award_object]) VALUES (1, N'啦啦熊奖', N'第69届啦啦国际电影节', N'丹尼尔')
INSERT [dbo].[db_awarding] ([awards_id], [awards_name], [activities], [award_object]) VALUES (2, N'花花熊奖', N'第32届中国电影花花奖', N'凯文')
INSERT [dbo].[db_awarding] ([awards_id], [awards_name], [activities], [award_object]) VALUES (3, N'最佳故事片', N'第68届威威国际电影节', N'克里')
SET IDENTITY_INSERT [dbo].[db_awarding] OFF
SET IDENTITY_INSERT [dbo].[db_awards] ON 

INSERT [dbo].[db_awards] ([awards_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_awards] ([awards_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_awards] ([awards_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_awards] OFF
SET IDENTITY_INSERT [dbo].[db_classify] ON 

INSERT [dbo].[db_classify] ([type_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_classify] ([type_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_classify] ([type_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_classify] OFF
SET IDENTITY_INSERT [dbo].[db_comment] ON 

INSERT [dbo].[db_comment] ([com_id], [mov_id], [usr_id], [com_seen], [com_star], [com_content]) VALUES (1, 1, 1, 1, 4, N'各种飙戏。')
INSERT [dbo].[db_comment] ([com_id], [mov_id], [usr_id], [com_seen], [com_star], [com_content]) VALUES (2, 2, 2, 1, 3, N'结构玩得转。')
INSERT [dbo].[db_comment] ([com_id], [mov_id], [usr_id], [com_seen], [com_star], [com_content]) VALUES (3, 3, 3, 0, 4, N'')
SET IDENTITY_INSERT [dbo].[db_comment] OFF
SET IDENTITY_INSERT [dbo].[db_direct] ON 

INSERT [dbo].[db_direct] ([director_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_direct] ([director_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_direct] ([director_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_direct] OFF
SET IDENTITY_INSERT [dbo].[db_director] ON 

INSERT [dbo].[db_director] ([director_id], [director_name]) VALUES (1, N'莱恩?约翰逊')
INSERT [dbo].[db_director] ([director_id], [director_name]) VALUES (2, N'尼尔?博格')
INSERT [dbo].[db_director] ([director_id], [director_name]) VALUES (3, N'克里斯?巴克 / 珍妮弗?李')
SET IDENTITY_INSERT [dbo].[db_director] OFF
SET IDENTITY_INSERT [dbo].[db_discuss] ON 

INSERT [dbo].[db_discuss] ([discuss_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_discuss] ([discuss_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_discuss] ([discuss_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_discuss] OFF
SET IDENTITY_INSERT [dbo].[db_discussion] ON 

INSERT [dbo].[db_discussion] ([discuss_id], [discuss_topic], [promulgator], [discuss_content]) VALUES (1, N'我还以为是新出了什么抗日神剧', N'Liu', NULL)
INSERT [dbo].[db_discussion] ([discuss_id], [discuss_topic], [promulgator], [discuss_content]) VALUES (2, N'该好好看看', N'大青蛙小青蛙', NULL)
INSERT [dbo].[db_discussion] ([discuss_id], [discuss_topic], [promulgator], [discuss_content]) VALUES (3, N'别用女人绑架我的审美。', N'六武众辉斩', NULL)
SET IDENTITY_INSERT [dbo].[db_discussion] OFF
SET IDENTITY_INSERT [dbo].[db_label] ON 

INSERT [dbo].[db_label] ([lab_id], [com_id], [lab_comment]) VALUES (1, 1, N'悬疑 犯罪')
INSERT [dbo].[db_label] ([lab_id], [com_id], [lab_comment]) VALUES (2, 2, N'治愈 温情')
INSERT [dbo].[db_label] ([lab_id], [com_id], [lab_comment]) VALUES (3, 3, N'动画 童话')
SET IDENTITY_INSERT [dbo].[db_label] OFF
SET IDENTITY_INSERT [dbo].[db_language] ON 

INSERT [dbo].[db_language] ([language_id], [language_name]) VALUES (1, N'英语')
INSERT [dbo].[db_language] ([language_id], [language_name]) VALUES (2, N'英语')
INSERT [dbo].[db_language] ([language_id], [language_name]) VALUES (3, N'英语')
SET IDENTITY_INSERT [dbo].[db_language] OFF
SET IDENTITY_INSERT [dbo].[db_location] ON 

INSERT [dbo].[db_location] ([region_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_location] ([region_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_location] ([region_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_location] OFF
SET IDENTITY_INSERT [dbo].[db_movie] ON 

INSERT [dbo].[db_movie] ([movie_id], [movie_name], [release_date], [movie_introduction]) VALUES (1, N'利刃出鞘', CAST(0x6F400B00 AS Date), N'富豪小说家霍华德?斯隆比被发现在自家庄园离奇自杀，遗留了亿万遗产。久负盛名的大侦探布兰科突然被匿名人士雇佣调查此案真相。同时，霍华德的孙子兰森也正在秘密调查此案。当布兰科和霍华德?斯隆比家族的其他人对谈时，他发现事情并没有想象中那么简单。')
INSERT [dbo].[db_movie] ([movie_id], [movie_name], [release_date], [movie_introduction]) VALUES (2, N'触不可及（美版）', CAST(0x68400B00 AS Date), N'电影根据真人真事改编。科兰斯顿和哈特分饰瘫痪的??富商Phillip和来?街头的??男?Dell，妮可?基德曼则饰演Phillip的高冷管家。Dell因为有犯罪前科找不到?作，阴差阳错来照顾Phillip，背景天差地别的两?经历了嘀笑皆?的?系列故事后成了令?动容的莫逆之交。')
INSERT [dbo].[db_movie] ([movie_id], [movie_name], [release_date], [movie_introduction]) VALUES (3, N'冰雪奇缘2', CAST(0x68400B00 AS Date), N'2013年迪士尼《冰雪奇缘》续集。安娜、艾莎一伙人将深入神秘魔法森林，发现到艾伦戴尔王国长久以来深藏的秘密，一个有着风火水土元素的魔法国度，以及艾莎魔法来源的真相。')
SET IDENTITY_INSERT [dbo].[db_movie] OFF
SET IDENTITY_INSERT [dbo].[db_movie_language] ON 

INSERT [dbo].[db_movie_language] ([language_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_movie_language] ([language_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_movie_language] ([language_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_movie_language] OFF
SET IDENTITY_INSERT [dbo].[db_region] ON 

INSERT [dbo].[db_region] ([region_id], [region_name]) VALUES (1, N'美国')
INSERT [dbo].[db_region] ([region_id], [region_name]) VALUES (2, N'美国')
INSERT [dbo].[db_region] ([region_id], [region_name]) VALUES (3, N'美国')
SET IDENTITY_INSERT [dbo].[db_region] OFF
SET IDENTITY_INSERT [dbo].[db_responding] ON 

INSERT [dbo].[db_responding] ([respond_id], [promulgator], [respond_content], [discuss_id]) VALUES (1, N'wang', N'哈哈哈！', 1)
INSERT [dbo].[db_responding] ([respond_id], [promulgator], [respond_content], [discuss_id]) VALUES (2, N'梨子', N'嗯嗯', 2)
INSERT [dbo].[db_responding] ([respond_id], [promulgator], [respond_content], [discuss_id]) VALUES (3, N'啦啦啦', N'什么鬼？', 3)
SET IDENTITY_INSERT [dbo].[db_responding] OFF
SET IDENTITY_INSERT [dbo].[db_script] ON 

INSERT [dbo].[db_script] ([scriptwriter_id], [movie_id]) VALUES (1, 1)
INSERT [dbo].[db_script] ([scriptwriter_id], [movie_id]) VALUES (2, 2)
INSERT [dbo].[db_script] ([scriptwriter_id], [movie_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[db_script] OFF
SET IDENTITY_INSERT [dbo].[db_scriptwriter] ON 

INSERT [dbo].[db_scriptwriter] ([scriptwriter_id], [scriptwriter_name]) VALUES (1, N'莱恩?约翰逊')
INSERT [dbo].[db_scriptwriter] ([scriptwriter_id], [scriptwriter_name]) VALUES (2, N'乔恩?哈特米尔/ 埃里克?托莱达诺')
INSERT [dbo].[db_scriptwriter] ([scriptwriter_id], [scriptwriter_name]) VALUES (3, N'珍妮弗?李 / 艾莉森?施罗德')
SET IDENTITY_INSERT [dbo].[db_scriptwriter] OFF
SET IDENTITY_INSERT [dbo].[db_type] ON 

INSERT [dbo].[db_type] ([type_id], [type_name]) VALUES (1, N'剧情 / 喜剧 / 悬疑 / 犯罪')
INSERT [dbo].[db_type] ([type_id], [type_name]) VALUES (2, N'剧情 / 喜剧')
INSERT [dbo].[db_type] ([type_id], [type_name]) VALUES (3, N'喜剧 / 动画 / 冒险')
SET IDENTITY_INSERT [dbo].[db_type] OFF
SET IDENTITY_INSERT [dbo].[db_usr] ON 

INSERT [dbo].[db_usr] ([usr_id], [usr_account], [usr_nickname], [usr_passwd]) VALUES (1, N'18301380541', N'五十米深蓝', N'usr001')
INSERT [dbo].[db_usr] ([usr_id], [usr_account], [usr_nickname], [usr_passwd]) VALUES (2, N'18301380542', N'伪装的甘党', N'usr002')
INSERT [dbo].[db_usr] ([usr_id], [usr_account], [usr_nickname], [usr_passwd]) VALUES (3, N'18301380543', N'桃桃林林', N'usr003')
SET IDENTITY_INSERT [dbo].[db_usr] OFF
