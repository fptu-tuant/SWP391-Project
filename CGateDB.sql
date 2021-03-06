USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 2022-02-11 13:29:28 ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Assignment.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Assignment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment', N'ON'
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[AccessCourse]    Script Date: 2022-02-11 13:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseID] [int] NULL,
	[time] [date] NULL,
	[buyID] [int] NULL,
	[status] [nvarchar](50) NULL,
	[courseName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccessCourse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Account]    Script Date: 2022-02-11 13:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[isTeach] [int] NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2022-02-11 13:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](200) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 2022-02-11 13:29:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](255) NULL,
	[tname] [nvarchar](255) NULL,
	[shift] [nvarchar](255) NULL,
	[price] [int] NULL,
	[openDate] [datetime] NULL,
	[type] [nvarchar](255) NULL,
	[tID] [int] NULL,
	[link] [nvarchar](255) NULL,
	[documentne] [nvarchar](255) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AccessCourse] ON 

INSERT [dbo].[AccessCourse] ([id], [courseID], [time], [buyID], [status], [courseName]) VALUES (31, 1030, CAST(N'2021-11-09' AS Date), 1, N'Đang học', N'Lean Software Development')
INSERT [dbo].[AccessCourse] ([id], [courseID], [time], [buyID], [status], [courseName]) VALUES (32, 1030, CAST(N'2021-11-09' AS Date), 3, N'Đang học', N'Lean Software Development')
INSERT [dbo].[AccessCourse] ([id], [courseID], [time], [buyID], [status], [courseName]) VALUES (34, 1030, CAST(N'2021-11-09' AS Date), 2, N'Đang học', N'Lean Software Development')
INSERT [dbo].[AccessCourse] ([id], [courseID], [time], [buyID], [status], [courseName]) VALUES (35, 19, CAST(N'2021-11-09' AS Date), 3, N'Đang học', N'Tiếp thị trên YouTube')
INSERT [dbo].[AccessCourse] ([id], [courseID], [time], [buyID], [status], [courseName]) VALUES (36, 22, CAST(N'2021-11-09' AS Date), 3, N'Đang học', N'Agile Software Development')
SET IDENTITY_INSERT [dbo].[AccessCourse] OFF
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (1, N'Collen Van lent', N'lent', N'123456', N'lent@gmail.com', N'0702444444', 1, 0)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (2, N'Praveen Mittal', N'mittal', N'123456', N'mittal@gmail.com', N'0045872211', 1, 0)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (3, N'Nguyen Xuan Hoai', N'mango', N'123456', N'mango@gmail.com', N'0702302133', 0, 0)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (4, N'admin', N'admin', N'123456', N'admin@gmail.com', N'0702446508', 1, 1)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (1004, N'Phạm Quang Huy', N'qhuy', N'123456', N'qhuy@gmail.com', N'0775544555', 1, 0)
INSERT [dbo].[Account] ([id], [fullname], [username], [password], [email], [phone], [isTeach], [isAdmin]) VALUES (1007, NULL, N'hoainx', N'123456', N'hoainxde140218@gmail.com', N'0702302133', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [image]) VALUES (1, N'Lập trình', N'https://blog.topcv.vn/wp-content/uploads/2020/09/tuyen-lap-trinh-vien.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (2, N'Đồ họa', N'https://blog.topcv.vn/wp-content/uploads/2021/05/thiet-ke-do-hoa-1.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (3, N'Toán', N'https://novateen.vn/wp-content/uploads/2019/11/chinh-ph%E1%BB%A5c-to%C3%A1n-9-b%E1%BA%B1ng-s%C6%A1-%C4%91%E1%BB%93-t%C6%B0-duy-1.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (4, N'Tiếng Anh', N'https://acet.edu.vn/wp-content/uploads/2020/05/hoc-tieng-anh.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (5, N'Âm nhạc', N'https://cdn.mos.cms.futurecdn.net/agcU26s4BhkQETsuYs3yjK-970-80.jpg.webp')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (6, N'Kinh tế', N'https://static.tapchitaichinh.vn/images/upload/tranhuyentrang/08282019/kinh-te-so.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (9, N'Khác', N'https://cdnstepup.r.worldssl.net/wp-content/uploads/2020/08/the-other-1.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (1, N'Lập trình HTML,CSS', N'Khóa học sẽ giúp bạn biết cách xây dựng giao diện web với HTML, CSS.
Biết cách phân tích giao diện website', N'https://nordiccoder.com/app/uploads/2019/07/5-ly-do-ban-nen-hoc-html-css.jpg', N'Collen Van lent', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 500000, CAST(N'2021-11-27 00:00:00.000' AS DateTime), N'Lập trình', 1, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (2, N'Photoshop cho người
mới bắt đầu', N'Bạn choáng ngợp với những poster 
"độc và ngầu" của các designer 
chuyên nghiệp và khao khát biến 
những bức ảnh của chính mình 
vượt trên cả sáng tạo. Thật đơn 
giản để hiện thực hóa mong ước 
đó chỉ với kiến thức và kĩ năng về 
Photoshop. 
Dù bạn là phóng viên, marketer, 
designer, freelancer hay chỉ đơn 
giản là người đam mê chụp ảnh
sáng tạo thì Photoshop vẫn là một 
công cụ hiệu quả để giúp bạn đạt 
được thành công trong công việc.', N'https://images.interactives.dk/photoshop-cc-Y_NU76X9lE-7GrYyHclDvg.png?auto=compress&ch=Width%2CDPR&dpr=2.63&ixjsv=2.2.4&q=38&rect=0%2C71%2C2480%2C1717&w=430', N'Phạm Quang Huy', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 400000, CAST(N'2021-11-19 00:00:00.000' AS DateTime), N'Đồ họa', 1004, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (6, N'JavaScript Basics', N'Khóa học này giới thiệu ngôn ngữ lập trình JavaScript và hiển thị các trang web bao gồm loại tương tác mà sinh viên cuối cùng sẽ có thể phát triển. Người học sẽ hiểu tầm quan trọng của cách JavaScript được phát triển và lý do tại sao lịch sử đó lại ảnh hưởng đến cách JavaScript hiện được viết và trong các bản phát hành trong tương lai.

Người học sẽ viết các tập lệnh đầu tiên, đánh giá kỹ năng HTML và CSS, tạo các biến và mảng và gán giá trị cho chúng. Nếu kỹ năng của học sinh còn thiếu, các nguồn lực và khuyến nghị sẽ được cung cấp để cải thiện những kỹ năng này. Có rất nhiều cơ hội để sinh viên thực hành những kỹ năng cốt lõi đầu tiên này.', N'https://www.elegantthemes.com/blog/wp-content/uploads/2017/06/Learn-Javascript.jpg', N'William Mead', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 450000, CAST(N'2021-12-09 00:00:00.000' AS DateTime), N'Lập trình', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (7, N'Mathematics for Machine Learning: Linear Algebra', N'Đại số tuyến tính, chúng ta xem xét đại số tuyến tính là gì và nó liên quan như thế nào đến dữ liệu. Sau đó, chúng ta xem xét vectơ và ma trận là gì và cách làm việc với chúng.', N'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/2f/0dc8c0f1fa11e7998daf3442598f30/BLUE-Square-800x800-03.jpg.jpg?auto=format%2Ccompress&dpr=1', N'David Dye', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 400000, CAST(N'2021-11-24 00:00:00.000' AS DateTime), N'Toán', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (8, N'Mathematics for Machine Learning: Multivariate Calculus', N'Giải tích đa biến, được xây dựng dựa trên điều này để xem xét cách tối ưu hóa các hàm phù hợp để có được sự phù hợp tốt với dữ liệu. Nó bắt đầu từ phép tính đầu tiên và sau đó sử dụng ma trận và vectơ từ khóa học đầu tiên để xem xét sự phù hợp dữ liệu.', N'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/f4/ed4d40f1fa11e78060abd1859ab057/LIGHT-Square-800x800-01.jpg.jpg?auto=format%2Ccompress&dpr=1', N'Samuel J. Cooper
', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 400000, CAST(N'2021-12-24 00:00:00.000' AS DateTime), N'Toán', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (9, N'Mathematics for Machine Learning: PCA', N'Giảm kích thước với Phân tích Thành phần Chính, sử dụng toán học từ hai khóa học đầu tiên để nén dữ liệu chiều cao. Khóa học này có độ khó trung bình và sẽ yêu cầu kiến ​​thức về Python và nhiều kiến ​​thức.', N'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/77/e06750f1fb11e782572b9fa3447a7a/TURQUASE-Square-800x800-02.jpg.jpg?auto=format%2Ccompress&dpr=1', N'Marc Peter Deisenroth', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 550000, CAST(N'2022-01-25 00:00:00.000' AS DateTime), N'Toán', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (10, N'Write Professional Emails in English', N'Khóa học này là duy nhất vì mỗi học phần sẽ cung cấp các mẹo viết email chuyên nghiệp hơn cũng như các bài học để cải thiện kỹ năng viết tiếng Anh tổng thể của bạn. Do đó, bạn sẽ cải thiện kỹ năng ngữ pháp và từ vựng để viết email và cũng nâng cao kiến thức đa văn hóa để giúp bạn mạnh mẽ và thành công hơn trong giao tiếp kinh doanh.', N'http://static.ybox.vn/2018/11/2/1542114596391-noname.png', N'Gerry Landers', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 600000, CAST(N'2021-11-15 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (11, N'Speak English Professionally: In Person, Online & On the Phone', N'Trong khóa học 5 tuần này, bạn sẽ học cách xác định và giới thiệu cá nhân mạnh mẽ. Bạn sẽ phát triển và thể hiện các kỹ năng nói cho thảo luận nhóm: làm thế nào để đồng ý hoặc không đồng ý, làm thế nào để làm rõ, trình bày lại và tóm tắt. Bạn sẽ xem xét và thực hành cách đưa thông tin và phản hồi yêu cầu trên điện thoại. Bạn sẽ nghiên cứu và đóng vai trò phỏng vấn hiệu quả. Bạn sẽ chuẩn bị và đưa ra một “chiêu dụ” bán hàng, giới thiệu một sản phẩm hoặc dịch vụ.', N'https://d3vt78ic2w6yaz.cloudfront.net/fit-320-180/course/11104-80328-pexels-mentatdgt-2173508.webp', N'
Amalia B. Stephens', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 500000, CAST(N'2021-12-16 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (12, N'Build Your Professional ePortfolio in English', N'Trong khóa học này, bạn sẽ học từng bước cách xây dựng trang web và bạn sẽ học ngữ pháp, từ vựng và kỹ năng viết cần thiết để tạo trang web. Bạn sẽ học cách áp dụng thông tin từ ePortfolio của mình vào các công cụ trực tuyến khác như LinkedIn, Twitter, Instagram và YouTube để kết nối với những người khác để bạn có được công việc hoặc kết nối với các chuyên gia khác. Đối với mỗi bước trong quy trình đó, bạn sẽ nghe các bài giảng, làm các câu đố về khả năng hiểu và học cách sử dụng tiếng Anh phù hợp cho từng phần của trang web của bạn.', N'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/d5/e1827034c011e686b841139a211f79/199356_Online_Tools_Prof.jpg?auto=format%2Ccompress&dpr=1', N'Karen Peterson', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 700000, CAST(N'2022-01-24 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (13, N'Take Your English Communication Skills to the Next Level', N'Xây dựng dựa trên các kỹ năng giao tiếp và nội dung mà bạn đã có được trong suốt Chuyên môn và phát triển chúng hơn nữa. Trong các bài học của khóa học và Đánh giá ngang hàng, bạn sẽ thực hành và mở rộng các kỹ năng ngôn ngữ cần thiết để thành công trong thế giới chuyên nghiệp. Trong suốt khóa học, bạn sẽ có cơ hội hoàn thành các bài đánh giá liên quan đến thế giới lao động.', N'https://pe.gatech.edu/sites/default/files/ESL_What_You_Will_Learn_750_x_500.jpg', N'Amalia B. Stephens', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 400000, CAST(N'2022-02-25 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (14, N'Google Ads Marketing', N'Khóa học Google Ads Marketing toàn tập của giảng viên Nguyễn Ngọc Long trên UNICA, hướng dẫn bạn chạy quảng cáo Google Ads từ cơ bản đến nâng cao. Bạn sẽ được học tất cả những kiến thức về Google Ads: Quảng cáo Google tìm kiếm, Quảng cáo Google hiển thị, Quảng cáo Google hiển thị, Quảng cáo Google Shopping. Đặc biệt trong khóa học bạn sẽ được hướng dẫn về các xu hướng mới nhất của Quảng cáo Google: Shopping, Smart Marketing. Ở đây bạn sẽ được hướng dẫn cách tư duy để có thể giải quyết các vấn đề trong quá trình chạy và các cách để có thể tối ưu tài khoản mà ít có người hướng dẫn online.', N'http://dichvuseo.info/wp-content/uploads/2019/11/Loi-ich-co-duoc-tu-viec-thue-cong-ty-google-ads-uy-tin.jpg', N'Nguyễn Ngọc Long', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 700000, CAST(N'2021-11-21 00:00:00.000' AS DateTime), N'Kinh tế', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (15, N'PowerPoint', N'Nếu bạn đang tìm kiếm phương pháp diễn họa, học thuyết trình một cách chuyên nghiệp và ấn tượng, thì đây chính là khóa học tin học văn phòng online dành cho bạn, khóa học "Thiết kế trình chiếu PowerPoint 2016 từ A-Z". Không dừng ở việc tạo ra những bản thuyết trình, báo cáo, đề án... bạn còn có thể tự thiết kế CV, inforgraphic, Poster, Video ... một cách thẩm mĩ và thuyết phục!', N'https://cellphones.com.vn/sforum/wp-content/uploads/2021/09/PPP.jpg', N'Đỗ Trung Thành', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 400000, CAST(N'2021-12-20 00:00:00.000' AS DateTime), N'Đồ họa', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (16, N'IELTS Speaking online', N'Khóa học IELTS Speaking online tại nhà với thầy Patrick của giảng viên Patrick O’Grady trên UNICA, là một khóa học đặc biệt, cung cấp kiến thức nền tảng để bạn bứt phá khả năng nói trong môi trường học thuật và công việc sau này.', N'https://theiconconsultants.com/wp-content/uploads/2019/05/DGz79xQ.png', N'Patrick O’Grady', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 450000, CAST(N'2021-12-30 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (17, N'Facebook Marketing', N'Tham gia khóa học chạy quảng cáo Facebook cùng chuyên gia Hồ Ngọc Cương “Facebook Marketing từ A - Z” ngay hôm nay để nhanh chóng tiếp cận tới khách hàng và đưa doanh nghiệp của bạn lên đỉnh cao mới trên thương trường Facebook. Với sự hướng dẫn chi tiết và dễ hiểu của giảng viên - chuyên gia Hồ Ngọc Cương, học viên hoàn toàn có thể tự học Facebook Marketing, sau khi hoàn thành khóa học này học viên hoàn toàn có thể tự tin đem về doanh thu “khủng” trên sân chơi Facebook vạn người với những chiến dịch quảng cáo hiệu quả nhất!', N'https://gcoads.vn/wp-content/uploads/2020/02/facebook-marketing-la-gi-3.jpg', N'Hồ Ngọc Cương', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 450000, CAST(N'2021-11-21 00:00:00.000' AS DateTime), N'Kinh tế', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (18, N'Đệm hát Guitar cơ bản', N'Guitar đã trở thành một nhạc cụ vô cùng quen thuộc ngày nay, chúng góp phần cho cuộc sống của con người thêm vui vẻ và hài hòa. Thực tế cho thấy những người có khả năng chơi một loại nhạc cụ nào đó thì luôn biết cách làm mình nổi bật giữa đám đông và vô cùng tự tin. Hãy đến với khóa học âm nhạc "Đệm hát Guitar cơ bản của Hà Kế Tú" - một Guitarist - giảng viên Guitar nổi tiếng Việt Nam được nhắc đến với cái tên Haketu để làm chủ cây đàn Guitar trong tay và hát nghêu ngao cùng bạn bè, người yêu... chỉ trong một thời gian ngắn học guitar cơ bản đệm hát và thực hành.', N'https://static.unica.vn/upload/images/2019/04/khoa-hoc-dem-hat-guitar-can-ban_1555570862.jpg', N'Haketu', N'6 buổi: 19h-21h 2,4,6 hàng tuần', 600000, CAST(N'2021-12-16 00:00:00.000' AS DateTime), N'Âm nhạc', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (19, N'Tiếp thị trên YouTube', N'Một khóa học ngắn hạn mang tính thực tiễn cao được thiết kế để giúp bạn trở thành chuyên gia tiếp thị trên YouTube. Khóa học này được cung cấp cả trực tuyến theo định dạng tự học, cũng như trong các hội thảo ảo. Khóa học được thiết kế đặc biệt của chúng tôi đã được tạo cho bất kỳ người làm nghề tự do, đại lý hoặc doanh nghiệp vừa và nhỏ nào, muốn khám phá sức mạnh của hoạt động tiếp thị trên YouTube.', N'https://storage.googleapis.com/shopdunk-images/ischoolvietnam/2018/08/quang-cao-video-1.jpg', N'Pacific', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 550000, CAST(N'2021-11-23 00:00:00.000' AS DateTime), N'Kinh tế', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (20, N'Giao tiếp tiếng Anh', N'Dù bạn sẵn sàng hay không thì tiếng Anh là một ngôn ngữ dành cho giới kinh doanh toàn cầu. Ngày nay, có rất nhiều tập đoàn lớn trên thế giới bắt buộc nhân viên sử dụng tiếng Anh, xem tiếng Anh là một ngôn ngữ chung của công ty. Chúng ta có thể kể đến một số doanh nghiệp kinh doanh yêu cầu trình độ ngoại ngữ như: Samsung, Rakuten… xu hướng sử dụng tiếng Anh trong doanh nghiệp đã trở nên phổ biến hơn. Để bạn không còn gặp những vấn đề trên, chúng tôi giới thiệu đến các bạn khóa học “Giao tiếp tiếng Anh chuyên nghiệp cho người làm kinh doanh” của giảng viên Lan Bercu trên UNCA. Khóa học sẽ giúp bạn phát âm chuẩn, phản xạ nhanh, tự tin giao tiếp tiếng Anh ở bất kì nơi nào có người nói tiếng Anh.', N'https://www.careerpaths-esp.com/sites/default/files/c0857777485_0.jpg', N'Lan Bercu', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 600000, CAST(N'2021-12-20 00:00:00.000' AS DateTime), N'Tiếng Anh', 0, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (1029, N'Software Development Processes and Methodologies', N'Trong khóa học này, bạn sẽ có cái nhìn tổng quan về cách thức hoạt động của các nhóm phần mềm? Họ sử dụng những quy trình nào? Một số phương pháp luận tiêu chuẩn ngành là gì? Ưu và nhược điểm của từng loại là gì? Bạn sẽ học đủ để có cuộc trò chuyện có ý nghĩa xung quanh các quy trình phát triển phần mềm.', N'https://vntesters.com/wp-content/uploads/2013/05/SDLC_-_Software_Development_Life_Cycle.jpg', N'Praveen Mittal', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 750000, CAST(N'2021-11-23 00:00:00.000' AS DateTime), N'Lập trình', 2, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (1030, N'Lean Software Development', N'Trong khóa học này, chúng ta sẽ khám phá các khái niệm Lean và bao gồm một số phương pháp và kỹ thuật Lean phổ biến như Kanban, Bản đồ dòng giá trị, v.v. Trong khóa học này, chúng ta cũng sẽ học các kỹ thuật như Khởi động tinh gọn và Tư duy thiết kế có thể giúp nhóm tìm hiểu về nhu cầu của người dùng và thị trường nhanh hơn và rẻ hơn nhiều.', N'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/d6/5a3030a1ca11e7b74c7fa0c2763be9/Lean-Course-logo.png?auto=format%2Ccompress&dpr=1', N'Praveen Mittal', N'7 buổi: 19h-21h 3,5,7 hàng tuần', 750000, CAST(N'2021-11-24 00:00:00.000' AS DateTime), N'Lập trình', 2, N'https://meet.google.com/ejd-ftsx-mqn', N'https://drive.google.com/drive/folders/1QU5LsRl_JPydWpoTTakDGmXgUFnpiPcV?usp=sharing')
INSERT [dbo].[Course] ([id], [name], [description], [image], [tname], [shift], [price], [openDate], [type], [tID], [link], [documentne]) VALUES (1033, N'Sữa bò', N'123', N'https://baoduongmaynenkhi.net/wp-content/uploads/2021/03/1-1-6.jpg', N'Praveen Mittal', N'6', 1100000, CAST(N'2021-11-20 00:00:00.000' AS DateTime), N'Đồ họa', 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Course] OFF
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
