USE [FPTBookstore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[IDAdmin] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
	[Hometown] [nvarchar](250) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[DateOfDeath] [smalldatetime] NULL,
	[Biographic] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[BookName] [nvarchar](250) NULL,
	[Price] [money] NULL,
	[Description] [nvarchar](500) NULL,
	[Translator] [nvarchar](50) NULL,
	[Image] [varchar](50) NULL,
	[DateUpdate] [smalldatetime] NULL,
	[Inventory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[DateOfBirth] [smalldatetime] NULL,
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[DateCreate] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FBID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[Contents] [nvarchar](500) NULL,
	[DateUpdate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[DateStart] [smalldatetime] NULL,
	[DateEnd] [smalldatetime] NULL,
	[OrderStatus] [bit] NULL,
	[CustomerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[BookID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 03/03/2022 8:45:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([IDAdmin], [Account], [Password], [FullName], [Status]) VALUES (1, N'admin', N'admin', N'Duong Vu Tuong', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (1, N'Donald J. Trump ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (2, N'Xuân Quỳnh', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (3, N'Trịnh Huyền Trang', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (4, N'Nguyễn Nhật Ánh', N'Thăng Bình', CAST(N'1955-05-07T00:00:00' AS SmallDateTime), NULL, N'Nguyễn Nhật Ánh là tên và cũng là bút danh của một nhà văn Việt Nam chuyên viết cho tuổi mới lớn. Ông sinh ngày 7 tháng 5 năm 1955 tại huyện Thăng Bình, Quảng Nam.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (5, N'Nguyễn Kim Tuấn ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (6, N'Võ Văn Nhị', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (7, N'May McCarthy', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (8, N'Nguyễn Danh Lam', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (9, N'Ái vân', N'Hà nội', CAST(N'1954-05-20T00:00:00' AS SmallDateTime), NULL, N'Ái Vân là một ca sĩ nhạc nhẹ được nhiều người biết đến trong thập niên 1970 và 1980 tại Việt Nam qua các bài hát như Triệu bông hồng, Trăng chiều hay Bài ca xây dựng. Từ năm 1990 Ái Vân bắt đầu ở lại Đức và sau đó sang Hoa Kỳ sinh sống và biểu diễn.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (10, N'Mỹ Chi', N'Khánh Hòa', NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (11, N'David Ebershoff ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (12, N'Jojo Moyes ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (13, N'J. K. Rowling ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (14, N'Đỗ Huân ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (15, N'Phạm Tuấn Sơn ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (16, N' Lương Đức Thiệp ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (17, N'Watanabe Dzunichi ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (18, N'Trần Thị Huyên Thảo ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (19, N'Tiểu Hồng Hoa ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (20, N'Jo Gang-Soo ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (21, N'Thích Nhất Như ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (22, N' NXB Chính Trị Quốc Gia', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (1, 1, 7, 12, N'Me Before You', 250000.0000, N'THE NEW YORK TIMES NUMBER 1 BESTSELLING NOVEL THAT IS LOVED AROUND THE WORLD, SOON TO BE RELEASED AS A FILM STARRING EMILIA CLARKE AND SAM CLAFLINLou Clark knows lots of things. She knows how many footsteps there are between the bus stop and home. ', NULL, N'me-before-you.jpg', CAST(N'2016-06-21T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (8, 3, 2, 2, N'Combo Cứ Bình Tĩnh + Sẽ Có Cách, Đừng Lo', 113000.0000, N' Cứ Bình Tĩnh!Tuần hoàn cuộc sống, có yêu thì sẽ có ghét. Sẽ là bất khả thi nếu khuyên con người đừng ghét bỏ ai. Tôi cũng từng ghét người khác, vì tôi nghĩ rằng họ là tác nhân khiến tôi mất đi điều tôi yêu quý. Nhưng suy cho cùng, ', NULL, N'cu-binh-tinh.jpg', CAST(N'2016-06-29T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (9, 7, 4, 5, N'Mỗi Buổi Sáng, Hãy Tạo Ra Một Điều Gì Đó Mới Mẻ', 90000.0000, N'Từ khi mới sinh ra, bạn đã là người vô cùng sáng tạo.Bạn nhìn thế giới này với một con mắt tò mò, ngạc nhiên đầy phấn khích.Bạn không hề biết sợ, không hề biết lùi bước, bạn luôn đặt mình vào trong những tình huống thử thách cao độ.Bạn ...', NULL, N'moi-buoi-sang-hay-tao-ra-mot-dieu-gi-do-moi-me.jpg', CAST(N'2016-06-29T00:00:00' AS SmallDateTime), 8)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (10, 3, 3, 9, N'Ngày Xưa Có Một Chuyện Tình', 118000.0000, N'Ngày xưa có một chuyện tình là một câu chuyện cảm động khi người ta yêu nhau, nỗi khát khao một hạnh phúc êm đềm ấm áp đến thế; hay đơn giản chỉ là chuyện ba người - anh, em, và người ấy…?', NULL, N'ngay-xua-co-mot-chuyen-tinh.jpg', CAST(N'2016-06-29T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (11, 1, 8, 13, N'Harry Potter And The Cursed Child - Parts I & II ', 530000.0000, NULL, NULL, N'harrypotter.jpg', CAST(N'2016-07-01T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (12, 2, 1, 14, N'Nhà Đào Tạo Sành Sỏi', 112000.0000, N'MỌI THỨ BẠN CẦN CHO ĐÀO TẠO & PHÁT TRIỂN“Ngày nay chỉ có một thứ không đổi đó chính là...sự thay đổi.”“Hãy đối mặt với sự thật rằng một nhà lãnh đạo muốn có các nhân viên tốt chỉ có hai sự lựa chọn: hoặc đi thuê hoặc phải đứng ..', NULL, N'nha-dao-tao-sanh-soi.jpg', CAST(N'2016-07-02T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (13, 2, 1, 15, N'Dám Làm Giàu', 132000.0000, N'Có nhiều con đường khác nhau để trở nên giàu có, nhưng để đi như thế nào để đến được đích của sự giàu có thì đó mới là điều để chúng ta quan tâm. Trong thời đại sống với công nghệ, thì việc làm ra tiền là điều không hề khó, điều quan', NULL, N'dam-lam-giau.jpg', CAST(N'2016-07-03T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (14, 3, 9, 16, N'Việt Nam Thi Ca Luận Và Văn Chương Xã Hội', 54000.0000, N'Với Lương Đức Thiệp, Văn học là sản phẩm và vũ khí của đấu tranh đẳng cấp. Văn chương dùng để gieo rắc những ý tưởng vào ý thức dân chúng. Xung đột đẳng cấp càng gắt gao, đâu cũng phải chịu sức chi phối âm u của quyền lợi đẳng', NULL, N'viet-nam.jpg', CAST(N'2016-07-05T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (15, 10, 1, 8, N'Chuyên Đề Ôn Tập Và Luyện Thi Hóa Học 12 ', 77000.0000, N'Cuốn sách "Chuyên đề ôn tập và luyện thi hóa học 12" sẽ cung cấp tài liệu tham khảo cần thiết cho các thầy, cô giáo và các em học sinh ôn tập để nâng cao kiến thức chất lượng kỳ thi tốt nghiệp THPT và kỳ thi tuyển sinh Đại học, Cao đẳng, đảm ... Xem chi tiết', N'Nguyên Hương', N'hoa-hoc-12.jpg', CAST(N'2016-07-05T00:00:00' AS SmallDateTime), 34)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (16, 4, 9, 17, N'Đèn Không Hắt Bóng', 148000.0000, N'Tinh hoa văn học của nhân loại nào cũng cần được khám phá và tái khám phá. Mỗi tác phẩm lớn là một sự kỳ diệu và mỗi lần ta tìm đến là thực hiện những cuộc phiêu lưu hoan lạc. Đến với tiểu thuyết Đèn Không Hắt Bóng là chúng ta đang bước', NULL, N'den-khong-hat-bong.jpg', CAST(N'2016-07-07T00:00:00' AS SmallDateTime), 23)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (17, 9, 1, 4, N'Mộng Đổi Đời ', 419000.0000, N'Khát vọng đổi đời như một hạt giống được gieo mầm, truyền từ đời này sang đời khác.Đôi khi hạt giống nơi đất cằn cũng tự phát triển mập mạp, nhưng phần lớn nhanh chóng bị èo uột giữa chừng bởi những điều kiện khách quan. Vấn đề là ... Xem chi tiết', NULL, N'mong-doi-doi.jpg', CAST(N'2016-07-05T00:00:00' AS SmallDateTime), 22)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (18, 5, 6, 18, N'Combo Chào Con', 129000.0000, N'1. Chào Con! Ba Mẹ Đã Sẵn Sàng!"Chào con! Ba mẹ đã sẵn sàng!" - Cuốn sách không chỉ được viết trên nền tảng khoa học của một bác sĩ mà còn chứa chan tình yêu của một người mẹ.Chắc chắn bạn cũng sẽ cảm nhận được những điểm hay và thực', NULL, N'combo-chao-con.jpg', CAST(N'2016-07-06T00:00:00' AS SmallDateTime), 22)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (29, 13, 6, 11, N'Cô Gái Đan Mạch', 95000.0000, N'Cô gái đan mạch là một câu chuyện cảm động về người chuyển giới đầu tiên trên thế giới, một họa sĩ  người đan mạch đã dũng cảm đối diện và tìm về với bản ngã của chính mình. Đây cũng là câu chuyện về lòng vị tha, đức hy sinh trong tình yêu.Tất cả đều được thể hiện bằng một văn phong trong sáng, đẹp đẽ.', NULL, N'co-gai-dan-mach.jpg', CAST(N'2016-11-01T15:21:00' AS SmallDateTime), 6)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (30, 6, 4, 19, N'Phát Triển Khả Năng Ngôn Ngữ', 36000.0000, N'Bộ sách Phát Triển Trí Tuệ Của Trẻ Qua Trò Chơi Dán Hình (4-6 tuổi) giúp trẻ phát triển khả năng Sáng tạo, Toán học, Ngôn Ngữ, Tư duy, rèn trí thông minh, luyện tay khéo léo. Sách với 150-300 hình dán + câu chuyện + trò chơi giúp bé chơi mà học.Mời bạn ..', NULL, N'phat-trien-kha-nang-ngon-ngu.jpg', CAST(N'2016-11-01T20:51:00' AS SmallDateTime), 16)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (31, 8, 10, 20, N'Luyện Thi Toeic 750 Reading', 87000.0000, N'5 TIẾNG MỖI NGÀY, ĐẠT NGAY 750 ĐIỂM• CUNG CẤP ĐỀ THI VÀ CÂU MẪU PHONG PHÚ, ĐA DẠNG• PHÂN TÍCH CHI TIẾT, HIỆU QUẢ CÁCH LÀM PHẦN 7HIỆU QUẢ TỨC THÌ – TỰ TIN HOÀN THÀNH BÀI THI TOEIC1. Dũng cảm phá bỏ quan niệm ‘lý thuyết là cơ bản’!Dù học thuộc ', NULL, N'luyen-thi-toeic.jpg', CAST(N'2016-11-01T20:54:00' AS SmallDateTime), NULL)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (32, 9, 1, 21, N'Tam Tạng Pháp Số', 374000.0000, N'Tam Tạng Pháp Số còn gọi Đại Minh Pháp Số hay Phật Học Từ Điển… là bộ sách giúp người học Phật dễ dàng tra cứu giáo lí Phật đà, phù hợp cho nhiều tầng lớp đối tượng: từ sơ học đến người đã có trình độ cao, do Nhất Như, Đạo ...', NULL, N'tam-tang-phap.jpg', CAST(N'2016-11-01T20:56:00' AS SmallDateTime), NULL)
INSERT [dbo].[Book] ([BookID], [CategoryID], [PublisherID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (33, 14, 11, 22, N'Lịch Bloc Siêu Đại (20x30)', 200000.0000, N'Lịch Bloc Siêu Đại (20x30) - Việt Nam Quê Hương Tôi', NULL, N'bloc-sieu-dai.jpg', CAST(N'2016-11-01T20:59:00' AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Sách Ngoại Văn')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Sách Kinh Tế')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Sách Văn Học Trong Nước')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Sách Văn Học Nước Ngoài')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Sách Thường Thức - Đời Sống')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Sách Thiếu Nhi')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Sách Phát Triển Bản Thân')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'Sách Tin Học - Ngoại Ngữ')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'Sách Chuyên Ngành')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Sách Giáo Khoa - Giáo Trình')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (13, N'Sách Văn Học-Tiều Thuyết')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (14, N'Tạp Chí - Văn Phòng Phẩm')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status]) VALUES (7, N'admin', N'emty@gmail.com', N'TP.HCM', N'123456789', CAST(N'2016-10-04T00:00:00' AS SmallDateTime), N'admin', N'123456', CAST(N'2016-10-28T22:41:31.740' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (2, N'a', N'a', N'a@gmail.com', N'123456', N'This is the second content', CAST(N'2016-07-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (3, N'b', N'b', N'test@gmail.com', N'1', N'3rd content', CAST(N'2016-07-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (4, N'Tuong', N'Duong', N'duongvutuong@gmail.com', N'0916651241', N'Tuong', CAST(N'2022-03-03T16:34:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID]) VALUES (1, CAST(N'2016-07-05T13:22:00' AS SmallDateTime), CAST(N'2016-07-08T13:22:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID]) VALUES (2, CAST(N'2016-07-05T13:24:00' AS SmallDateTime), CAST(N'2016-07-08T13:24:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (14, 2, 2, 475000.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (16, 1, 1, 60000.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (16, 2, 3, 60000.0000)
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (1, N'Nxb Lao động', N'175 Giảng Võ, Q. Đống Đa, Hà Nội', N'04.38515380')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (2, N'Nxb Thế giới', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (3, N'Nxb Tri thức', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (4, N'NXB Phụ Nữ', N'16 Alexandre de Rhodes, Bến Nghé, Quận 1, Hồ Chí Minh', N'08 3829 4459')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (5, N'Nxb Phương Đông', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (6, N'Nxb Trẻ', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (7, N'ArtBook', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (8, N'CDIMex', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (9, N'Nxb Hội Nhà Văn', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (10, N'Nxb Khoa học xã hội', NULL, NULL)
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Address], [Phone]) VALUES (11, N' NXB Chính Trị Quốc Gia', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT (getdate()) FOR [DateUpdate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [DateStart]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
