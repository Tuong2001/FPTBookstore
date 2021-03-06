USE [FPTBookstore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 15/03/2022 3:08:19 CH ******/
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
/****** Object:  Table [dbo].[Author]    Script Date: 15/03/2022 3:08:19 CH ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 15/03/2022 3:08:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Category]    Script Date: 15/03/2022 3:08:19 CH ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 15/03/2022 3:08:19 CH ******/
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
	[ConfirmPassword] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 15/03/2022 3:08:19 CH ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 15/03/2022 3:08:19 CH ******/
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
	[Payment] [int] NULL,
	[Tracking] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 15/03/2022 3:08:19 CH ******/
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
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([IDAdmin], [Account], [Password], [FullName], [Status]) VALUES (1, N'Admin', N'admin123', N'Duong Vu Tuong', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (6, N'J. K. Rowling', N'England', CAST(N'1965-07-31T12:00:00' AS SmallDateTime), NULL, N'Joanne Rowling is a British author and philanthropist known by her pen name J. K. Rowling. She wrote a seven-volume children''s fantasy series, Harry Potter, published from 1997 to 2007. The series has been enormously successful: it has sold over 500 million copies, been translated into at least 70 languages, and spawned a global media franchise including films and video games. The Casual Vacancy (2012) was her first novel for adults. ')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (7, N'Stephen King', N'America', CAST(N'1947-09-21T16:00:00' AS SmallDateTime), NULL, N'Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. Described as the "King of Horror", a play on his surname and a reference to his high standing in pop culture, his books have sold more than 350 million copies, and many have been adapted into films, television series, miniseries, and comic books. King has published 64 novels, including seven under the pen name Richard Bachman, and five non-fiction books.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (8, N'Walter Isaacson', N'America', CAST(N'1952-05-20T14:00:00' AS SmallDateTime), NULL, N'Walter Seff Isaacson is an American author, journalist, and professor. He has been the President and CEO of the Aspen Institute, a nonpartisan policy studies organization based in Washington, D.C., the chair and CEO of CNN, and the editor of Time.
Born in New Orleans, Louisiana, he attended Harvard University and the University of Oxford as a Rhodes scholar at Pembroke College. He is the author of The Code Breaker: Jennifer Doudna, Gene Editing, and the Future of the Human Race (2021), etc.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (9, N'Max Tegmark', N'America', CAST(N'1967-05-05T15:00:00' AS SmallDateTime), NULL, N'Max Erik Tegmark is a Swedish-American physicist, cosmologist, and machine learning researcher. He is a professor at the Massachusetts Institute of Technology and the president of the Future of Life Institute. He is also a scientific director at the Foundational Questions Institute, a supporter of the effective altruism movement, and has received research grants from Elon Musk to investigate existential risk from advanced artificial intelligence.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (11, N'Bill Martin Jr.', N'America', CAST(N'1916-03-20T18:00:00' AS SmallDateTime), CAST(N'2004-08-11T07:00:00' AS SmallDateTime), N'He was an American educator, publishing executive, and author of more than 300 children''s books including The Sounds of Mystery, Chicka Chicka Boom Boom (co-authored with John Archambault), Brown Bear, Brown Bear, What Do You See?, Baby Bear, Baby Bear, What Do You See?, Panda Bear, Panda Bear, What Do You See?, and Polar Bear, Polar Bear, What Do You Hear? The Bill Martin Jr. Award, which is the Kansas state award for best children''s picture book, was established in his honor in 1996.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (12, N'Cal Newport', N'America', CAST(N'1982-06-23T09:00:00' AS SmallDateTime), NULL, N'He is an American non-fiction author and associate professor of computer science at Georgetown University. Cal Newport was born on June 23, 1982. He completed his undergraduate studies at Dartmouth College in 2004 and received a Ph.D. in computer science from the Massachusetts Institute of Technology in 2009 under Nancy Lynch. He was a post-doctoral associate in the MIT computer science department from 2009 - to 2011. His grandfather, John Newport, was a Baptist minister and theologian.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (13, N'Ian McWhinney', N'England', CAST(N'1926-10-11T08:00:00' AS SmallDateTime), CAST(N'2012-09-28T10:00:00' AS SmallDateTime), N'Ian Renwick McWhinney OC FRCP FRCGP was an English physician and academic known as Canada''s "Founding Father of Family Medicine" for his work in creating a family medicine program at the University of Western Ontario. Born in Burnley, England, he studied at Cheltenham College from 1940 to 1944. During World War II, he served with the Royal Army Medical Corps. After the war, he studied at Clare College, Cambridge, and at St. Bartholomew’s Hospital at the University of London.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (14, N'Dave Ramsey', N'America', CAST(N'1960-09-03T11:00:00' AS SmallDateTime), NULL, N'David Lawrence Ramsey III is an American personal finance personality, radio show host, author, and businessman. He is an evangelical Christian and hosts the nationally syndicated radio program The Ramsey Show. Ramsey has written several books, including The New York Times bestseller The Total Money Makeover, and hosted a television show on Fox Business from 2007 to 2010.')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (15, N'Gabriel García Márquez', N' Colombia', CAST(N'1927-03-06T05:00:00' AS SmallDateTime), CAST(N'2014-04-17T17:00:00' AS SmallDateTime), N'Gabriel José de la Concordia García Márquez was a Colombian novelist, short-story writer, screenwriter, and journalist, known affectionately as Gabo or Gabito throughout Latin America. Considered one of the most significant authors of the 20th century, particularly in the Spanish language, he was awarded the 1972 Neustadt International Prize for Literature and the 1982 Nobel Prize in Literature. He pursued a self-directed education that resulted in leaving law school for a career in journalism. ')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (16, N'Roald Dahl', N'England', CAST(N'1916-09-13T04:00:00' AS SmallDateTime), CAST(N'1990-11-23T16:00:00' AS SmallDateTime), N'Roald Dahl was a British novelist, short-story writer, poet, screenwriter, and wartime fighter of Norwegian descent. His books have sold more than 250 million copies worldwide.  He rose to prominence as a writer in the 1940s with works for children and for adults, and he became one of the world''s best-selling authors. He has been referred to as "one of the greatest storytellers for children of the 20th century". ')
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [Hometown], [DateOfBirth], [DateOfDeath], [Biographic]) VALUES (17, N'Michelle Obama', N'America', CAST(N'1964-01-17T19:00:00' AS SmallDateTime), NULL, N'Michelle LaVaughn Robinson Obama is an American attorney and author who served as the first lady of the United States from 2009 to 2017. She was the first African-American woman to serve in this position. She is the wife of former President Barack Obama. Raised on the South Side of Chicago, Illinois, Obama is a graduate of Princeton University and Harvard Law School. In her early legal career, she worked at the law firm Sidley Austin where she met Barack Obama. ')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (3, 8, 11, N'Brown Bear, Brown Bear, What Do You See', 90.0000, N'Brown Bear, Brown Bear, What Do You See? is a children''s picture book published in 1967. Written and illustrated by Bill Martin Jr. and Eric Carle, the book is designed to help toddlers associate colors and meanings to objects.', NULL, N'Brown Bear, Brown Bear, What Do You See.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (4, 6, 17, N'Becoming', 340.0000, N'Becoming is the memoir of the former first lady of the United States Michelle Obama, published in 2018. Described by the author as a deeply personal experience,[3] the book talks about her roots and how she found her voice, as well as her time in the White House, her public health campaign, and her role as a mother. The book is published by Crown and was released in 24 languages. One million copies were donated to First Book, an American nonprofit organization that provides books to children.', NULL, N'Becoming.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (5, 8, 16, N'Charlie and the Chocolate Factory', 400.0000, N'Charlie and the Chocolate Factory is a 1964 children''s novel by British author Roald Dahl. The story features the adventures of young Charlie Bucket inside the chocolate factory of eccentric chocolatier Willy Wonka.', NULL, N'Charlie and the Chocolate Factory.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (6, 11, 12, N'Deep Work', 200.0000, N'Deep work is the ability to focus without distraction on a cognitively demanding task. It''s a skill that allows you to quickly master complicated information and produce better results in less time. Deep work will make you better at what you do and provide the sense of true fulfillment that comes from craftsmanship. ', NULL, N'Deep Work.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (7, 5, 6, N'Harry potter and the philosopher''s stone', 500.0000, N'Harry Potter and the Philosopher''s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling''s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.', NULL, N'harry potter and the philosopher''s stone.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (8, 5, 7, N'IT', 200.0000, N'IT is a 1986 horror novel by American author Stephen King. It was his 22nd book and his 17th novel written under his own name. The story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey. "It" primarily appears in the form of Pennywise the Dancing Clown to attract its preferred prey of young children.', NULL, N'IT.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (9, 7, 9, N'Life 3.0', 150.0000, N'Life 3.0: Being Human in the Age of Artificial Intelligence is a 2017 book by Swedish-American cosmologist Max Tegmark from MIT. Life 3.0 discusses Artificial Intelligence (AI) and its impact on the future of life on Earth and beyond. The book discusses a variety of societal implications, what can be done to maximize the chances of a positive outcome, and potential futures for humanity, technology, and combinations thereof.', NULL, N'Life 3.0.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (10, 5, 15, N'One Hundred Years of Solitude', 260.0000, N'One Hundred Years of Solitude is a 1967 novel by Colombian author Gabriel García Márquez that tells the multi-generational story of the Buendía family, whose patriarch, José Arcadio Buendía, founded the (fictitious) town of Macondo. The novel is often cited as one of the supreme achievements in literature.', NULL, N'One Hundred Years of Solitude.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (11, 6, 8, N'Steve Jobs', 320.0000, N'Steve Jobs is the authorized self-titled biography of American business magnate and Apple co-founder Steve Jobs. The book was written at the request of Jobs by Walter Isaacson, a former executive at CNN and TIME who has written best-selling biographies of Benjamin Franklin and Albert Einstein.', NULL, N'Steve Jobs.jpg', CAST(N'2022-03-04T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (12, 9, 14, N'The Total Money Makeover', 180.0000, N'The Total Money Makeover: A Proven Plan for Financial Fitness is a personal finance book written by Dave Ramsey that was first published in 2003. An updated edition was published in 2007 and 2013. It teaches an effective way of getting out of debt, staying out of debt, and corrects myths about money.', NULL, N'The Total Money Makeover.jpg', CAST(N'2022-04-03T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Book] ([BookID], [CategoryID], [AuthorID], [BookName], [Price], [Description], [Translator], [Image], [DateUpdate], [Inventory]) VALUES (15, 10, 13, N'Textbook of Family Medicine', 350.0000, N'Highly acclaimed in its first two editions, Ian R. McWhinney''s Textbook of Family Medicine is one of the seminal texts in the field. While many family medicine texts simply cover the disorders a practitioner might see in clinical practice, McWhinney defines the principles and practices of family medicine as a separate and distinct field of practice. ', NULL, N'A textbook of family medicine.jpg', CAST(N'2022-12-03T00:00:00' AS SmallDateTime), 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Books of Literature - Novels')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Biography')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Non-fiction')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'Children''s literature')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'Self-help book')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Textbook')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (11, N'Economic book')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [Phone], [DateOfBirth], [Account], [Password], [DateCreate], [Status], [ConfirmPassword]) VALUES (12, N'Duong Vu Tuong', N'tuongdvgcc19257@fpt.edu.vn', N'Nguyen Van Linh', N'0915151042', CAST(N'2000-12-12T00:00:00' AS SmallDateTime), N'Test', N'12345', CAST(N'2022-03-13T19:12:23.240' AS DateTime), 1, N'12345')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (5, N'Tuong', N'Duong', N'duongvutuong@gmail.com', N'0916651241', N'FPTBookstore is a great website', CAST(N'2022-03-06T19:01:00' AS SmallDateTime))
INSERT [dbo].[Feedback] ([FBID], [LastName], [FirstName], [Email], [Phone], [Contents], [DateUpdate]) VALUES (11, N'Duong', N'Khang', N'tuongdvgcc19257@fpt.edu.vn', N'0915151040', N'My name is Khang', CAST(N'2022-03-15T13:13:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [DateStart], [DateEnd], [OrderStatus], [CustomerID], [Payment], [Tracking]) VALUES (11, CAST(N'2022-03-15T12:49:00' AS SmallDateTime), CAST(N'2022-03-18T12:49:00' AS SmallDateTime), 1, 16, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (4, 8, 3, 340.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (7, 5, 1, 500.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (7, 10, 1, 500.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (8, 9, 10, 200.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (9, 11, 3, 150.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (11, 3, 1, 95.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (12, 4, 1, 180.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (12, 6, 1, 180.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (12, 7, 20, 180.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (12, 12, 2, 180.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (14, 2, 1, 200.0000)
INSERT [dbo].[OrderDetail] ([BookID], [OrderID], [Quantity], [Price]) VALUES (15, 1, 1, 300.0000)
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
