USE [ShoesWeb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/29/2023 1:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameVN] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/29/2023 1:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/29/2023 1:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Telephone] [int] NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Amount] [float] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/29/2023 1:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[ProductDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[Special] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/29/2023 1:13:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Telephone] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (1, N'Nike', N'Air Max 1')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (2, N'Nike', N'Air Force 1')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (3, N'Nike', N'Nike Blazer')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (4, N'Adidas', N'Yeezy')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (5, N'Adidas', N'UltraBoost')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (6, N'Adidas', N'Stan Smith')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (7, N'Adidas', N'Superstar')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (8, N'Adidas', N'Human Race')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (9, N'Adidas', N'Forum')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (10, N'Nike', N'Air Max 90')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (11, N'New Balance ', N'New Balance 327')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (12, N'New Balance ', N'New Balance 550')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (13, N'New Balance ', N'New Balance 574')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (14, N'New Balance ', N'New Balance 57/40')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (15, N'Converse', N'Chuck 70')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (16, N'Converse', N'Chuck Taylor')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (17, N'Vans', N'Old Skool')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (18, N'Vans', N'Slip-on')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (19, N'Vans', N'Classic')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (20, N'MLB', N'MLB Mule')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (21, N'MLB', N'MLB Chunky')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (22, N'MLB', N'MLB Playball')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (23, N'MLB', N'MLB Liner')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (24, N'Air Jordan', N'Jordan 1 Low')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (26, N'Air Jordan ', N'Jordan 1 Mid')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (27, N'Air Jordan ', N'Jordan 1 High')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (28, N'Adidas', N'NMD')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (29, N'Adidas', N'Adidas Yung')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (30, N'Adidas', N'Adidas Prophere')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (31, N'Nike', N'Nike Blazer')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (32, N'Nike', N'Nike Dunk')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (33, N'Adidas', N'Samba')
INSERT [dbo].[Categories] ([Id], [Name], [NameVN]) VALUES (34, N'New Balance ', N'New Balance 2002R')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1, 1, 22, 5000000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2, 2, 24, 6900000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (3, 3, 24, 6900000, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (4, 4, 25, 4400000, 1, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Telephone], [Address], [Amount], [Description], [Status]) VALUES (1, N'trieuduy', CAST(N'2023-04-10T00:00:00.000' AS DateTime), 123456789, N'TP.HCM', 5000000, N'<p>Đang giao h&agrave;ng</p>
', 2)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Telephone], [Address], [Amount], [Description], [Status]) VALUES (2, N'duyvt', CAST(N'2023-06-20T00:00:00.000' AS DateTime), 382553831, N'Tiền Giang', 6900000, N'', 1)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Telephone], [Address], [Amount], [Description], [Status]) VALUES (3, N'trieuduy', CAST(N'2023-06-20T00:00:00.000' AS DateTime), 382553831, N'Tiền Giang', 6900000, N'', 1)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Telephone], [Address], [Amount], [Description], [Status]) VALUES (4, N'trieuduy', CAST(N'2023-06-20T00:00:00.000' AS DateTime), 382553831, N'Tiền Giang', 4400000, N'', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (4, N'Giày Nike Air Force 1 Low All White', 2800000, N'6002eaca8ea19.jpg', CAST(N'2023-04-10' AS Date), 1, 2, 10, N'<h3><strong>Th&ocirc;ng tin ph&aacute;t h&agrave;nh sản phẩm</strong></h3>

<p><strong>M&atilde; gi&agrave;y:</strong>&nbsp;CW2288-111</p>

<p><strong>Phối m&agrave;u:</strong>&nbsp;White</p>

<p><strong>Thương hiệu:</strong> Nike</p>

<p><strong>Ng&agrave;y ra mắt:</strong> 26/12/2020</p>

<p><strong>Danh mục:</strong>&nbsp;Air Force 1</p>
', 0, 6, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (7, N'Nike Blazer Mid ''77 Next Nature ''White''', 2590000, N'60ae4d6092178.jpg', CAST(N'2023-04-05' AS Date), 1, 31, 10, N'<h3>Th&ocirc;ng tin ph&aacute;t h&agrave;nh <span style="color:#e74c3c">Nike Blazer Mid &#39;77 Next Nature &#39;White&#39;</span></h3>

<p><strong>Thương hiệu:</strong>&nbsp;Nike</p>

<p><strong>Thiết kế: </strong>Nike Blazer</p>

<p><strong>M&atilde; sản phẩm:</strong>&nbsp;DO1344-101</p>

<p><strong>Xuất xứ :&nbsp;</strong>Mỹ</p>
', 0, 24, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (15, N'Nike Dunk Low Industrial Blue Sashiko', 3900000, N'641448d9b00d3.jpg', CAST(N'2023-04-10' AS Date), 1, 32, 10, N'<p>Nike Dunk</p>
', 0, 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (16, N'Adidas Samba Classic White', 2400000, N'63f9b0c284959.jpg', CAST(N'2023-04-08' AS Date), 1, 33, 10, N'', 0, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (17, N'Nike Air Max 1 Patta Waves Monarch', 5000000, N'61a878efddd76.jpg', CAST(N'2023-04-02' AS Date), 1, 1, 10, N'', 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (18, N'New Balance 550 Cream Black', 5600000, N'622742a34109e.jpg', CAST(N'2023-04-05' AS Date), 1, 12, 3, N'', 0, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (19, N'Nike Dunk Low Mechigan State', 5500000, N'60827096ed0c4.jpg', CAST(N'2023-04-08' AS Date), 1, 32, 2, N'', 0, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (20, N'New Balance 550 White Red Black', 2700000, N'620ba900f3531.jpg', CAST(N'2023-04-06' AS Date), 1, 12, 5, N'', 0, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (21, N'Nike Air Force 1 Le Black', 2800000, N'642ea2288f434.jpg', CAST(N'2023-04-11' AS Date), 1, 2, 2, N'', 0, 15, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (22, N'Nike Air Max 1 Kasina Won-Ang Grey', 5000000, N'62b6f8931b5aa.jpg', CAST(N'2023-04-10' AS Date), 1, 1, 5, N'', 0, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (24, N'Adidas Yeezy Boost 350 V2 Bone', 6900000, N'623c4eb4e640e.jpg', CAST(N'2023-04-11' AS Date), 1, 4, 2, N'', 0, 8, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (25, N'New Balance 2002R Off White', 4400000, N'63f9b0bacfeac.jpg', CAST(N'2023-04-11' AS Date), 1, 34, 11, N'', 0, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (26, N'Nike Air Max 90 NRG Bacon', 4200000, N'61860ba4c9c1b.jpg', CAST(N'2023-04-11' AS Date), 1, 10, 4, N'', 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (27, N'Air Jordan 1 Mid Light Smoke Grey', 4800000, N'6007efa002c50.jpg', CAST(N'2023-04-11' AS Date), 1, 26, 2, N'', 0, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (28, N'Nike Dunk Low Disrupt 2 Malachite', 4700000, N'620cf374889bc.jpg', CAST(N'2023-07-29' AS Date), 1, 32, 5, N'', 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (29, N'Adidas Yeezy Slide Resin', 3900000, N'6332c3f090719.jpg', CAST(N'2023-07-29' AS Date), 1, 4, 2, N'', 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Image], [ProductDate], [Available], [CategoryId], [Quantity], [Description], [Discount], [ViewCount], [Special]) VALUES (30, N'Adidas Adifom Superstart White', 2850000, N'63a42587bf17e.jpg', CAST(N'2023-07-29' AS Date), 1, 7, 6, N'', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'bachnd', N'123456', N'Nguyễn Đăng Bách', 123456789, N'bachndps17035@fpt.edu.vn', N'user.png', 1, 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'duyvt', N'123456', N'Võ Triệu Duy', 123456789, N'duyvtps17029@fpt.edu.vn', N'user.png', 1, 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'hanlh', N'123456', N'Lương Hữu Hân', 123456789, N'luonglhps17045@fpt.edu.vn', N'user.png', 1, 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'minhbh', N'123456', N'Bùi Hữu Minh', 123456789, N'minhbhps17089@fpt.edu.vn', N'user.png', 1, 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Telephone], [Email], [Photo], [Activated], [Admin]) VALUES (N'trieuduy', N'123456', N'Võ Triệu Duy', 123456789, N'duyv1008002@gmail.com', N'user.png', 1, 0)
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
