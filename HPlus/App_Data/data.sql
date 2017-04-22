USE [Web]
GO
/****** Object:  Table [dbo].[T_UsersRoles]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UsersRoles](
	[uUsersRoles_ID] [uniqueidentifier] NOT NULL,
	[uUsersRoles_UsersID] [uniqueidentifier] NULL,
	[uUsersRoles_RoleID] [uniqueidentifier] NULL,
	[dUsersRoles_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_UsersRoles] PRIMARY KEY CLUSTERED 
(
	[uUsersRoles_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'b78ac03e-a330-49b1-876b-81677afa83f1', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(0x0000A749013B4812 AS DateTime))
INSERT [dbo].[T_UsersRoles] ([uUsersRoles_ID], [uUsersRoles_UsersID], [uUsersRoles_RoleID], [dUsersRoles_CreateTime]) VALUES (N'656e7c03-56ad-440f-a1f9-95822c126403', N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(0x0000A75D00E2A4AE AS DateTime))
/****** Object:  Table [dbo].[T_Users]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Users](
	[uUsers_ID] [uniqueidentifier] NOT NULL,
	[cUsers_Name] [varchar](50) NULL,
	[cUsers_LoginName] [varchar](50) NULL,
	[cUsers_LoginPwd] [varchar](100) NULL,
	[cUsers_Email] [varchar](50) NULL,
	[dUsers_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Users] PRIMARY KEY CLUSTERED 
(
	[uUsers_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_Users] ([uUsers_ID], [cUsers_Name], [cUsers_LoginName], [cUsers_LoginPwd], [cUsers_Email], [dUsers_CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'管理员', N'admin', N'3244185981728979115075721453575112', N'1396510655@qq.com', CAST(0x0000A74D014875A5 AS DateTime))
INSERT [dbo].[T_Users] ([uUsers_ID], [cUsers_Name], [cUsers_LoginName], [cUsers_LoginPwd], [cUsers_Email], [dUsers_CreateTime]) VALUES (N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'普通用户', N'user', N'3244185981728979115075721453575112', NULL, CAST(0x0000A75D00E28637 AS DateTime))
/****** Object:  Table [dbo].[T_Roles]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Roles](
	[uRoles_ID] [uniqueidentifier] NOT NULL,
	[cRoles_Number] [varchar](50) NULL,
	[cRoles_Name] [varchar](50) NULL,
	[cRoles_Remark] [varchar](500) NULL,
	[dRoles_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[uRoles_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_Roles] ([uRoles_ID], [cRoles_Number], [cRoles_Name], [cRoles_Remark], [dRoles_CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0001', N'管理员', N'拥有所有权限', CAST(0x0000A62B00AA558E AS DateTime))
INSERT [dbo].[T_Roles] ([uRoles_ID], [cRoles_Number], [cRoles_Name], [cRoles_Remark], [dRoles_CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0002', N'普通用户', NULL, CAST(0x0000A63B0128733E AS DateTime))
/****** Object:  Table [dbo].[T_RoleMenuFunction]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_RoleMenuFunction](
	[uRoleMenuFunction_ID] [uniqueidentifier] NOT NULL,
	[uRoleMenuFunction_RoleID] [uniqueidentifier] NULL,
	[uRoleMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[uRoleMenuFunction_MenuID] [uniqueidentifier] NULL,
	[dRoleMenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_RoleMenuFunction] PRIMARY KEY CLUSTERED 
(
	[uRoleMenuFunction_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'2116ab31-24d1-43bb-b4fc-22e4380844b4', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'ceeb094b-59ec-405f-bfe3-523198e0840c', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'46668a22-f006-4738-8531-c4821cc98802', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'c093ecfc-753a-48fa-b479-684ab563d514', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'78d2131b-3e59-4f72-a9b2-858b69e8a94f', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'048ddfb0-87d0-4c51-b3e5-c9200e2e8cfd', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'351dd2bc-23a0-4351-b155-d028db5bf980', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'8fe91918-b411-4f88-9958-d4864f6151bb', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', CAST(0x0000A75D00E8B10B AS DateTime))
INSERT [dbo].[T_RoleMenuFunction] ([uRoleMenuFunction_ID], [uRoleMenuFunction_RoleID], [uRoleMenuFunction_FunctionID], [uRoleMenuFunction_MenuID], [dRoleMenuFunction_CreateTime]) VALUES (N'7d5c2f5a-8e86-4aa1-9570-ffd68ba29bfe', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', CAST(0x0000A75D00E8B10B AS DateTime))
/****** Object:  Table [dbo].[T_Number]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Number](
	[Number_ID] [uniqueidentifier] NOT NULL,
	[Number_Num] [varchar](50) NULL,
	[Number_DataBase] [varchar](50) NULL,
	[Number_TableName] [varchar](50) NULL,
	[Number_NumField] [varchar](50) NULL,
	[Number_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Number] PRIMARY KEY CLUSTERED 
(
	[Number_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MenuFunction]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MenuFunction](
	[uMenuFunction_ID] [uniqueidentifier] NOT NULL,
	[uMenuFunction_MenuID] [uniqueidentifier] NULL,
	[uMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[dMenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_MenuFunction] PRIMARY KEY CLUSTERED 
(
	[uMenuFunction_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'0ba3770b-db53-4a34-adff-1a3422141e67', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'd1f018e2-eea1-454e-86d7-1d8577bc71c7', N'46668a22-f006-4738-8531-c4821cc98802', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'558a37a2-0d7c-4c8f-9bc8-2b4a18c0c94c', N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'e6a96546-1590-4536-adb0-3c43c29d519f', N'46668a22-f006-4738-8531-c4821cc98802', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'b8447e2c-b805-4120-990b-40614e48d68f', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'6da681a6-3b3f-43b1-aaef-431fbd392345', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'c8102708-8e6f-44ba-bab9-4323b0bca205', N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'919fa1ea-3cd8-486f-bada-4ddbbeda99cb', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'dc9d096c-5156-4939-9306-6d60a4671d58', N'46668a22-f006-4738-8531-c4821cc98802', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'b5577812-8803-4e2a-92c7-75d7f055d3b2', N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'5ad23378-d5bd-4a17-9eb9-7906cf51f89c', N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'043ab1ae-645b-4493-8152-865db9fc26a3', N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'ef306b34-5ef4-442f-9318-8fdccf8bc9f6', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'7d99ed42-83f3-42a3-bf7a-91571c044e8b', N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'2b97ea34-b433-4397-b0f5-9a5325e27c92', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'965cfd7a-a076-4e88-95c6-a078bb8ac0a5', N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'f03c9e6a-6032-4f50-9a04-ace38e42cb3b', N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C1 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'1ffffc90-9d8a-4c1c-92bc-ca3f70c56949', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'6d2d877c-14c5-4476-80a9-d918292b7a57', N'46668a22-f006-4738-8531-c4821cc98802', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'7f025d47-13df-4716-9062-e14b17e38e7f', N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'd174096f-ae38-4d8e-bc12-e4559abf2686', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'3a3a43f0-e67a-411b-99bd-e69a8ebe5eb4', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'69bf4e0e-0211-4431-9d6f-ef1113a221ad', N'351dd2bc-23a0-4351-b155-d028db5bf980', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(0x0000A75600AD14C2 AS DateTime))
INSERT [dbo].[T_MenuFunction] ([uMenuFunction_ID], [uMenuFunction_MenuID], [uMenuFunction_FunctionID], [dMenuFunction_CreateTime]) VALUES (N'302aa404-7752-467d-aeac-ef829b43c40f', N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(0x0000A75600AD14C2 AS DateTime))
/****** Object:  Table [dbo].[T_Menu]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Menu](
	[uMenu_ID] [uniqueidentifier] NOT NULL,
	[cMenu_Name] [varchar](50) NULL,
	[cMenu_Url] [varchar](50) NULL,
	[uMenu_ParentID] [uniqueidentifier] NULL,
	[cMenu_Number] [varchar](50) NULL,
	[cMenu_ICON] [varchar](50) NULL,
	[dMenu_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Menu] PRIMARY KEY CLUSTERED 
(
	[uMenu_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'd809d891-011d-46e0-9501-1497043f2139', N'系统管理', NULL, NULL, N'Z', N'fa fa-desktop', CAST(0x0000A628009C77BC AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'27f43299-e238-4c9a-b4d0-55ea1c6c2b4b', N'修改密码', N'/SysManage/ChangePwd/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-130', NULL, CAST(0x0000A62B00DFAF55 AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'26262205-e5b2-4b04-a1fe-7c7ae3d3b68b', N'代码创建', N'/SysManage/CreateCode/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-160', NULL, CAST(0x0000A75601046298 AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'f5ca4bbb-9d71-4ac2-99a1-868569f4a0e8', N'用户管理', N'/SysManage/User/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-100', NULL, CAST(0x0000A628009CD395 AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'012365a8-3a84-409e-ac50-b1b5bb9977bf', N'功能管理', N'/SysManage/Function/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-150', NULL, CAST(0x0000A75600ACA1C0 AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'b326c7fa-464f-4901-a32f-b4ee67d2c9be', N'菜单功能', N'/SysManage/MenuFunction/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-120', NULL, CAST(0x0000A62B00AAC324 AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'46668a22-f006-4738-8531-c4821cc98802', N'角色功能', N'/SysManage/RoleFunction/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-140', NULL, CAST(0x0000A62B00DFEC6F AS DateTime))
INSERT [dbo].[T_Menu] ([uMenu_ID], [cMenu_Name], [cMenu_Url], [uMenu_ParentID], [cMenu_Number], [cMenu_ICON], [dMenu_CreateTime]) VALUES (N'351dd2bc-23a0-4351-b155-d028db5bf980', N'角色管理', N'/SysManage/Role/Index', N'd809d891-011d-46e0-9501-1497043f2139', N'Z-110', NULL, CAST(0x0000A62B00A17940 AS DateTime))
/****** Object:  Table [dbo].[T_Function]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Function](
	[uFunction_ID] [uniqueidentifier] NOT NULL,
	[iFunction_Number] [int] NULL,
	[cFunction_Name] [varchar](50) NULL,
	[cFunction_ByName] [varchar](50) NULL,
	[dFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_T_Function] PRIMARY KEY CLUSTERED 
(
	[uFunction_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', CAST(0x0000A62B00E1635C AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'能否拥有该菜单', N'Have', CAST(0x0000A62B00E15B01 AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', CAST(0x0000A71C0119E815 AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', CAST(0x0000A75D00E47B9B AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Del', CAST(0x0000A62B00E1759C AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Add', CAST(0x0000A62B00E1635C AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'GetExcel', CAST(0x0000A7150111130D AS DateTime))
INSERT [dbo].[T_Function] ([uFunction_ID], [iFunction_Number], [cFunction_Name], [cFunction_ByName], [dFunction_CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Edit', CAST(0x0000A62B00E16AD2 AS DateTime))
/****** Object:  StoredProcedure [dbo].[PROC_SPLITPAGE]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------系统的--------------
CREATE  PROCEDURE [dbo].[PROC_SPLITPAGE]
    @SQL text,--varchar(8000),         --要执行的SQL语句
    @PAGE INT = 1,              --要显示的页码
    @PAGESIZE INT,              --每页的大小
    @PAGECOUNT INT = 0 OUT,     --总页数
    @RECORDCOUNT INT = 0 OUT    --总记录数
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @P1 INT

    EXEC SP_CURSOROPEN @P1 OUTPUT, @SQL, @SCROLLOPT = 1, @CCOPT = 1, @ROWCOUNT = @PAGECOUNT OUTPUT

    SET @RECORDCOUNT = @PAGECOUNT

    SELECT @PAGECOUNT=
        CEILING(1.0 * @PAGECOUNT / @PAGESIZE) , @PAGE = (@PAGE-1) * @PAGESIZE + 1

    EXEC SP_CURSORFETCH @P1, 16, @PAGE, @PAGESIZE 

    EXEC SP_CURSORCLOSE @P1
END
GO
/****** Object:  StoredProcedure [dbo].[GetNumber]    Script Date: 04/22/2017 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNumber]
	@numfield varchar(50),--varchar(8000),         --字段名
    @tablename varchar(50)              --表名
AS
BEGIN
	DECLARE @Number int = 0
	select @Number=Number_Num from T_Number where Number_TableName=@tablename and Number_NumField=@numfield
    IF @Number=0 BEGIN
		insert into T_Number(Number_TableName,Number_NumField,Number_Num) values(@tablename,@numfield,1)
		select 1
	END
	ELSE BEGIN
		update T_Number set Number_Num = @Number +1 where Number_TableName=@tablename and Number_NumField=@numfield
		select (@Number +1)
	END
END
GO
/****** Object:  Default [DF_T_Function_uFunction_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Function] ADD  CONSTRAINT [DF_T_Function_uFunction_ID]  DEFAULT (newid()) FOR [uFunction_ID]
GO
/****** Object:  Default [DF_T_Function_dFunction_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Function] ADD  CONSTRAINT [DF_T_Function_dFunction_CreateTime]  DEFAULT (getdate()) FOR [dFunction_CreateTime]
GO
/****** Object:  Default [DF_T_Menu_uMenu_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Menu] ADD  CONSTRAINT [DF_T_Menu_uMenu_ID]  DEFAULT (newid()) FOR [uMenu_ID]
GO
/****** Object:  Default [DF_T_Menu_dMenu_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Menu] ADD  CONSTRAINT [DF_T_Menu_dMenu_CreateTime]  DEFAULT (getdate()) FOR [dMenu_CreateTime]
GO
/****** Object:  Default [DF_T_MenuFunction_uMenuFunction_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_MenuFunction] ADD  CONSTRAINT [DF_T_MenuFunction_uMenuFunction_ID]  DEFAULT (newid()) FOR [uMenuFunction_ID]
GO
/****** Object:  Default [DF_T_MenuFunction_dMenuFunction_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_MenuFunction] ADD  CONSTRAINT [DF_T_MenuFunction_dMenuFunction_CreateTime]  DEFAULT (getdate()) FOR [dMenuFunction_CreateTime]
GO
/****** Object:  Default [DF_T_Number_Number_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Number] ADD  CONSTRAINT [DF_T_Number_Number_ID]  DEFAULT (newid()) FOR [Number_ID]
GO
/****** Object:  Default [DF_T_Number_Number_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Number] ADD  CONSTRAINT [DF_T_Number_Number_CreateTime]  DEFAULT (getdate()) FOR [Number_CreateTime]
GO
/****** Object:  Default [DF_T_RoleMenuFunction_uRoleMenuFunction_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_RoleMenuFunction] ADD  CONSTRAINT [DF_T_RoleMenuFunction_uRoleMenuFunction_ID]  DEFAULT (newid()) FOR [uRoleMenuFunction_ID]
GO
/****** Object:  Default [DF_T_RoleMenuFunction_dRoleMenuFunction_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_RoleMenuFunction] ADD  CONSTRAINT [DF_T_RoleMenuFunction_dRoleMenuFunction_CreateTime]  DEFAULT (getdate()) FOR [dRoleMenuFunction_CreateTime]
GO
/****** Object:  Default [DF_Roles_Roles_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Roles] ADD  CONSTRAINT [DF_Roles_Roles_ID]  DEFAULT (newid()) FOR [uRoles_ID]
GO
/****** Object:  Default [DF_Roles_Roles_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Roles] ADD  CONSTRAINT [DF_Roles_Roles_CreateTime]  DEFAULT (getdate()) FOR [dRoles_CreateTime]
GO
/****** Object:  Default [DF_T_Users_Users_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  CONSTRAINT [DF_T_Users_Users_ID]  DEFAULT (newid()) FOR [uUsers_ID]
GO
/****** Object:  Default [DF_T_Users_Users_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_Users] ADD  CONSTRAINT [DF_T_Users_Users_CreateTime]  DEFAULT (getdate()) FOR [dUsers_CreateTime]
GO
/****** Object:  Default [DF_T_UsersRoles_uUsersRole_ID]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_UsersRoles] ADD  CONSTRAINT [DF_T_UsersRoles_uUsersRole_ID]  DEFAULT (newid()) FOR [uUsersRoles_ID]
GO
/****** Object:  Default [DF_T_UsersRoles_dUsersRole_CreateTime]    Script Date: 04/22/2017 14:09:41 ******/
ALTER TABLE [dbo].[T_UsersRoles] ADD  CONSTRAINT [DF_T_UsersRoles_dUsersRole_CreateTime]  DEFAULT (getdate()) FOR [dUsersRoles_CreateTime]
GO
