USE [Shop]
GO
/****** Object:  Table [dbo].[Shop]Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customerid] [int] IDENTITY(1,1) NOT NULL,
	[customername] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[username] [varchar](30) NULL,
	[password] [varchar](32) NULL,
	
PRIMARY KEY CLUSTERED 
(
	[customerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (1, N'Hai', N'Hanoi', N'0988312832', N'haihn', N'hai123')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (8, N'DoManhDung', N'HaiDuong', N'0981065638', N'dungdmse05228', N'123456')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (10, N'VuDuyLong', N'ThaiBinh', N'0938759230', N'longvd', N'123456')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (11, N'NguyenQuynhTrang', N'Hanoi', N'0912741244', N'trangnq', N'012345678')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (12, N'NguyenCamNhung', N'HaiPhong', N'0913419983', N'Nhungnc', N'nhungnp')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (13, N'VuQuangMinh', N'HaiDuong', N'0918394871', N'Minhvq', N'12749348')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (14, N'NguyenPhuongThao', N'NgheAn', N'0482897812', N'Thaonp', N'97429721')
INSERT [dbo].[customer] ([customerid], [customername], [address], [phone], [username], [password] ) VALUES (15, N'LeVanSang', N'BacLieu', N'0847291747', N'Sanglv', N'89139787')
SET IDENTITY_INSERT [dbo].[customer] OFF
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Description](
	[hid] [int] IDENTITY(1,1) NOT NULL,
	[hname] [nvarchar](30) NULL,
	[website] [varchar](100) NULL,
	[mota] [nvarchar](100) NULL,
	
PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Description] ON
INSERT [dbo].[Description] ([hid], [hname], [website], [mota]) VALUES (1, N'Apple', N'apple.vn', 'new 99%')
INSERT [dbo].[Description] ([hid], [hname], [website], [mota]) VALUES (2, N'Sam sung', N'samsung.com', 'new 99%')
INSERT [dbo].[Description] ([hid], [hname], [website], [mota]) VALUES (3, N'Oppo', N'oppo.com', 'new 99%')
SET IDENTITY_INSERT [dbo].[Description] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](32) NULL,
	
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin', N'admin')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[hid] [varchar](30) NOT NULL,
	[date] [datetime] NULL,
	[customerid] [int] NULL,
	[customername] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[total] [money] NULL,
	
PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cart] ([hid], [date], [customerid], [customername], [address], [phone], [total]) VALUES (N'1', CAST(0x0000A98F013302C7 AS DateTime), 11, N'NguyenQuynhTrang', N'Hanoi', N'0912741244', 32400.0000)
INSERT [dbo].[Cart] ([hid], [date], [customerid], [customername], [address], [phone], [total]) VALUES (N'2', CAST(0x0000A98F013342D9 AS DateTime), 8, N'DoManhDung', N'HaiDuong', N'0981065638', 16600.0000)
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[productid] [varchar](30) NOT NULL,
	[productname] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[picture] [varchar](200) NULL,
	[description] [nvarchar](max) NULL,
	
	[hid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P001', N'Samsung S9', 15, 1500.0000, N'SamsungS9.png', N'Genuine Product',  2)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P002', N'Iphone XS', 10, 2000.0000, N'IphoneXS.jpg', N'Genuine Product',  1)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P003', N'Oppo F9', 10, 1800.0000, N'OppoF9.jpg', N'Genuine Product',  3)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P004', N'Samsung S8', 15, 1000.0000, N'SamsungS8.png', N'Genuine Product',  2)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P005', N'Oppo F7', 18, 1500.0000, N'OppoF7.png', N'Genuine Product',  3)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P006', N'Iphone X', 20, 1800.0000, N'IphoneX.png', N'Genuine Product',  1)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P007', N'Iphone 8 Plus', 15, 1500.0000, N'Iphone8Plus.jpg', N'Genuine Product',  1)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P008', N'Oppo F3', 16, 1000.0000, N'OppoF3.jpg', N'Genuine Product',  3)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P009', N'Samsung S7', 15, 800.0000, N'SamsungS7.jpg', N'Genuine Product',  2)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P010', N'Iphone XR', 20, 1700.0000, N'IphoneXR.png', N'Genuine Product',  1)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P011', N'Samsung A7', 18, 1000.0000, N'SamsungA7.jpg', N'Genuine Product',  2)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P012', N'Oppo A3', 15, 800.0000, N'OppoA3.jpg', N'Genuine Product',  3)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P013', N'Samsung J7', 20, 1200.0000, N'SamsungJ7.jpg', N'Genuine Product',  2)
INSERT [dbo].[Product] ([productid], [productname], [quantity], [price], [picture], [description] , [hid]) VALUES (N'P014', N'Iphone 8', 25, 1200.0000, N'Iphone8.png', N'Genuine Product',  1)
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 11/06/2018 00:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receipt](
	[hid] [varchar](30) NOT NULL,
	[productid] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[hid] ASC,
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Receipt] ([hid], [productid], [quantity], [price]) VALUES (N'1', N'P003', 8, 1800.0000)
INSERT [dbo].[Receipt] ([hid], [productid], [quantity], [price]) VALUES (N'1', N'P013', 15, 1200.0000)
INSERT [dbo].[Receipt] ([hid], [productid], [quantity], [price]) VALUES (N'2', N'P001', 6, 1500.0000)
INSERT [dbo].[Receipt] ([hid], [productid], [quantity], [price]) VALUES (N'2', N'P004', 4, 1000.0000)
INSERT [dbo].[Receipt] ([hid], [productid], [quantity], [price]) VALUES (N'2', N'P006', 2, 1800.0000)
/****** Object:  Default [DF__admin__status__014935CB]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[admin] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__HangSanXu__statu__060DEAE8]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Description] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__HoaDon__date__182C9B23]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Cart] ADD  DEFAULT (getdate()) FOR [date]
GO
/****** Object:  Default [DF__HoaDon__status__1A14E395]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__KhachHang__statu__1367E606]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__SanPham__status__0AD2A005]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  ForeignKey [FK__HoaDon__cid__1920BF5C]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Customer] ([cid])
GO
/****** Object:  ForeignKey [FK__HoaDonChiTi__hid__1ED998B2]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([hid])
REFERENCES [dbo].[Cart] ([hid])
GO
/****** Object:  ForeignKey [FK__HoaDonChiTi__sid__1FCDBCEB]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Product] ([sid])
GO
/****** Object:  ForeignKey [FK__SanPham__hid__0BC6C43E]    Script Date: 11/06/2018 00:29:29 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([hid])
REFERENCES [dbo].[Description] ([hid])
GO
