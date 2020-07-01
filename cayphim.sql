-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2020 lúc 07:18 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cayphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt`
--

CREATE TABLE `cmt` (
  `cmt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cmt`
--

INSERT INTO `cmt` (`cmt_id`, `user_id`, `movie_id`, `comment`) VALUES
(1, 1, 5, 'Hay'),
(2, 1, 5, 'Cực hay các bạn nên xem'),
(3, 1, 18, 'Quá Hay'),
(4, 1, 18, 'Đỉnh'),
(5, 1, 18, 'Siêu Hay'),
(6, 1, 18, 'TEst'),
(7, 1, 18, 'TEst'),
(8, 1, 18, 'Test2'),
(9, 1, 18, 'Test 3'),
(10, 1, 18, 'Test 4'),
(11, 1, 18, '1325465465'),
(12, 1, 18, '5555'),
(13, 1, 18, '5555'),
(14, 1, 18, 'dat'),
(15, 1, 44, 'dddd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`genre_id`, `genre`) VALUES
(1, 'HanhDong'),
(2, 'KinhDi'),
(3, 'VoThuat'),
(4, 'ThanThoai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `runtime` int(11) NOT NULL,
  `release_date` date NOT NULL,
  `rating` int(11) NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `description`, `runtime`, `release_date`, `rating`, `link`) VALUES
(1, 'Hai Phượng', 'Phim Việt Nam', 110, '2019-04-09', 8, 'https://www.youtube.com/embed/THXPCF6UHh8'),
(2, 'Di Biệt', 'Dị Biệt: Những Kẻ Bất Trị (Divergent): Nếu như trong Harry Potter, các phù thuỷ nhỏ đến trường Hogwarts sẽ được chiếc nón phân loại và chia vào bốn nhà khác nhau thì khi xem Dị biệt, khán giả cũng chứng kiến tình huống tương tự như vậy. ', 139, '2019-04-09', 9, 'https://www.youtube.com/embed/cwo42SnMP6Q'),
(3, 'Quả Tim Thép', 'Một đặc nhiệm Trung Quốc nhận nhiệm vụ bảo vệ nhà khoa học tài ba khỏi sự săn lùng của tổ chức tội phạm nguy hiểm. ', 110, '2019-11-26', 8, 'https://www.youtube.com/embed/lspJdYbbyG8'),
(4, 'Quá nhanh quá nguy hiểm 1 ', 'Bộ phim mở màn với cảnh cướp xe tải khá ngoạn mục và hoàn toàn mang tính bất khả thi ở ngoài đời. Sau hàng loạt những vụ cướp như thế, cánh xe tải bắt đầu gây áp lực mạnh với FBI. ', 120, '2001-01-02', 9, 'https://www.youtube.com/embed/2TAOizOnNPo'),
(5, 'Quá nhanh quá nguy hiểm 2', 'Brian O Conner là một cảnh sát giỏi bị mất chức chỉ vì bọn tội phạm đã sử dụng những thủ đoạn quá tinh vi.', 120, '2003-06-03', 9, 'https://www.youtube.com/embed/efBLyToj0kQ'),
(6, 'Hung thần đại dương', 'Trong chuyến phiêu lưu đến một vùng đảo ít người biết đến, 4 cô gái Mia (Sophie Nélisse), Sasha (Corinne Foxx), Nicole (Sistine Stallone) và Alexa (Brianne Tju) quyết định lặn xuống biển để khám phá một thành cổ của người Maya dưới đáy đại dương. Khi vào đến bên trong, cổng thành bỗng sụp đổ khiến họ phải nhanh chóng tìm cách thoát thân trong những đường hầm mê cung và các hang động kỳ quái trước khi cạn sạch dưỡng khí.', 90, '2019-08-15', 9, 'https://www.youtube.com/embed/XY5lBECVcK8'),
(7, 'Annabelle: Ác quỷ trở về', 'Phim Búp Bê Ma Ám 3 Ác Quỷ Trở Lại - Annabelle 3 Comes Home: trong phần này để khắc chế sức mạnh của Annabelle, hai vợ chồng pháp sư trừ tà Ed và Lorraine Warren đã khóa kín nó trong một lồng kín và dùng lá bài thiêng để niêm phong nó lại, cách ly với thế giới bên ngoài. Tuy nhiên, một sự cố đã khiến sức mạnh của Annabelle trỗi dậy và đánh thức tất cả các cổ vật ma quái khác.', 106, '1999-07-31', 9, 'https://www.youtube.com/embed/Rm-jr2XHr1M'),
(8, 'Quá nhanh quá nguy hiểm 3', 'Quá Nhanh Quá Nguy Hiểm 3nói về Shaun chuyển đến Nhật sống với cha để rồi vướn vào những cuộc đua ngầm ở Tokyo. Những ngày đầu sống lạ chỗ nên anh đã nghe lời người ban Twinkie gia nhập vào tổ chức đua xe trái phép. Hãy xem Quá Nhanh Quá Nguy Hiểm 3: Đường Đua Tokyo để biết liệu cậu ta có thoát khỏi cám dỗ hay là phải trả giá đắc cho những hành động của mình.', 100, '2018-10-22', 9, 'https://www.youtube.com/embed/xZ96tl5MrfU'),
(9, 'Quá nhanh quá nguy hiểm 4', 'Trốn tránh sự truy lùng của cảnh sát, Dom (Vin Diesel) tới Cộng hòa Dominican. Nhưng sau vụ cướp xe chở nhiên liệu, anh trở thành tội phạm quốc tế và bị truy lùng khắp nơi. Cả nhóm phải xé lẻ và tạm náu mình một thời gian.', 107, '2018-10-22', 9, 'https://www.youtube.com/embed/bcY7HkvF1aw'),
(10, 'Quá nhanh quá nguy hiểm 5', 'Chuyện phim Fast Five tiếp nối từ phần 4 “Fast and Furious”. Vì cứu Dom ra khỏi ngục tù, Brian và Mia Toretto phải trôi dạt qua nước khác. Giờ đây tại Rio de Janeiro, cả ba tập hợp thành một đội đua xe gồm toàn những tay đua cự phách để thực hiện phi vụ cuối cùng để giành lấy tự do, đó là vụ trộm trị giá 100 triệu đô.', 130, '2019-05-12', 9, 'https://www.youtube.com/embed/mw2AqdB5EVA'),
(11, 'Quá nhanh quá nguy hiểm 6', 'Fast And Furious 6 là phần thứ 6 của series phim hành động Mỹ nổi tiếng Fast And Furious. Lần này, đặc vụ Hobbs phải nhờ đến Dom và nhóm của anh giúp sức trong cuộc vây bắt 1 băng đảng do Owen Shaw cầm đầu. Đổi lại, Dom muốn một bản lý lịch \"sạch sẽ\" cho mọi người trong đội.', 130, '2013-12-05', 9, 'https://www.youtube.com/embed/dKi5XoeTN0k'),
(12, 'Quá nhanh quá nguy hiểm 7', 'Phim Furious 7 (Quá Nhanh Quá Nguy Hiểm 7) là phần 7 của loạt series Fast & Furious nổi tiếng. Ở cuối phần trước, tưởng chừng như mọi chuyện đã kết thúc, và mở ra một cuộc sống bình lặng, khi cả nhóm đã tiêu diệt được Owen Shaw. Thì trong phần này, sự xuất hiện của Deckard Shaw, người đã giết chết Han, và khiêu chiến với Dominic Toretto, để trả thù cho em trai Owen Shaw của mình, đã làm thay đổi tất cả. Khiến cho cuộc đụng độ giữa 2 băng nhóm lên đến đỉnh điểm.', 130, '2015-03-27', 9, 'https://www.youtube.com/embed/Skpu5HaVkOc'),
(13, 'Quá nhanh quá nguy hiểm 8', 'Dom và Letty hiện đang đi hưởng tuần trăng mật. Brian cùng Mia đã quyết định từ giã sự nghiệp. Các thành viên còn lại của nhóm cũng đã được minh oan và dần trở về với cuộc sống bình thường. Nhưng một người phụ nữ bí ẩn (do nữ diễn viên đoạt giải Oscar Charlize Theron thủ vai) đã dẫn dụ Dom vào thế giới tội phạm mà anh dường như không thể thoát ra được và thậm chí phản bội lại cả những người thân thiết nhất, họ sẽ phải trải qua những thử thách cam go mà họ chưa từng đối mặt.', 148, '2017-04-14', 9, 'https://www.youtube.com/embed/koYkhbEklyE'),
(14, 'Quá nhanh quá nguy hiểm: Hobbs và Shaw', 'Câu chuyện giữa hai người tưởng như không đội trời chung là Đặc vụ An ninh Ngoại giao Mỹ Luke Hobbs và tên tội phạm đánh thuê khét tiếng Deckard Shaw khi họ bất đắc dĩ phải bắt tay hợp tác nhằm ngăn chặn âm mưu của trùm phản diện cực nguy hiểm trong diện bí ẩn Brixton', 137, '2019-07-31', 9, 'https://www.youtube.com/embed/5ds_R_K5-fc'),
(15, 'Đấu Trường Sinh Tử', 'The Hunger Game đặt trong bối cảnh khu vực bắc mỹ bị hủy hoại do thiên tai và chiến tranh, cả khu vực trở thành một Panem với Capitol và 13 huyện. Mỗi năm sẽ có 24 thanh niên của 12 huyện được lựa chọn để tham gia một Trò chơi sinh tử được tường thuật cho cả đất nước xem trong đó chỉ có một người gan dạ và mưu trí nhất mới có thể sống và chiến thắng.', 142, '2012-07-31', 9, 'https://www.youtube.com/embed/FovFG3N_RSU'),
(16, 'Diệp Vấn 1', 'Vào năm 1937, chiến tranh bùng nổ, và quân Nhật nhanh chóng chiếm đóng Phật Sơn. Diệp gia bị niêm phong, Diệp Vấn cũng vợ con phải chuyển đến một căn nhà lụp xụp; anh phải đi xúc than để kiếm miếng ăn cho gia đình', 106, '2008-12-12', 9, 'https://www.youtube.com/embed/2kWXoTcKfo0'),
(17, 'Diệp Vấn 2', 'Diệp Vấn 2 tiếp nối kết thúc của phần 1, tập trung vào những sóng gió trong cuộc đời của Diệp Vấn tại Hong Kong. Diệp Vấn là bậc thầy của môn phái Vịnh Xuân và chính những năm tháng sống tại Hong Kong đã giúp ông sáng tạo nhiều thế võ đặc sắc riêng của mình', 108, '2010-04-26', 9, 'https://www.youtube.com/embed/gaBdgu00otE'),
(18, 'Diệp Vấn 3', '\"Diệp Vấn 3\" là phần cuối cùng trong series phim \"Diệp Vấn\", bộ phim xoay quanh cuộc đời lúc về già của Diệp Vấn, khắc họa một thế hệ tông sư võ học \"chiến đấu vì tính mạng\"', 105, '2015-12-31', 9, 'https://www.youtube.com/embed/_6it8ra_jxQ'),
(19, 'Annabelle 2 ', 'Phim \"Búp Bê Ma Ám\" phần 2 sẽ là phần tiền truyện khi các sự kiện trong phim đều xảy ra trước những diễn biến của phần 1, bộ phim sẽ là lời giải đáp về nguồn cội thực sự của con búp bê đáng sợ này.', 109, '2018-03-17', 7, 'https://www.youtube.com/embed/11taaQy2KBg'),
(20, 'The Lighthouse', 'Tác phẩm mới của Robert Eggers là bộ phim trắng đen điên loạn giữa hai nhân vật chính do Willem Dafoe và Robert Pattinson thủ vai. Cả hai đã phải cùng nhau vật lộn, chiến đấu với thời tiết bão tố, nhảy múa, la hét, ôm hôn, siết cổ nhau và lang thang xung quanh ngọn hải đăng được xây trên nền một tảng đá đen kỳ lạ. Mọi thứ càng trở nên siêu nhiên hơn khi có sự xuất hiện của một người phụ nữ bí ẩn dưới nước và một sinh vật trông giống như bạch tuột đứng đằng sau nhân vật của Pattinson khi anh ta vừa hạ sát một nhân khác. Theo lời nhân vật của Dafie thì cả hai đơn giản \"chỉ muốn chạy trốn, tìm kiếm sự sống\".', 109, '2020-01-20', 7, 'https://www.youtube.com/embed/Hyag7lR8CPA'),
(21, 'The Hunger Game 2', 'The Hunger Games: Bắt lửa (tựa gốc tiếng Anh: The Hunger Games: Catching Fire) là một bộ phim thuộc thể loại khoa học viễn tưởng của Hoa Kỳ được sản xuất năm 2013 dựa trên quyển tiểu thuyết của Suzanne Collins mang tên Bắt lửa, là quyển thứ 2 trong bộ ba quyển Đấu trường sinh tử. Phim là phần tiếp nối của phim Đấu trường Sinh tử. ', 109, '2020-01-20', 7, 'https://www.youtube.com/embed/PH-n39PCXp8'),
(22, 'Midsommar', 'Midsommar lấy câu chuyện xoay quanh cô gái Dani cùng bạn trai và 3 người bạn khác đi du lịch tới ngôi làng Hårga tại Thụy Điển. Chuyến đi của họ trùng vào dịp làng Hårga tổ chức lễ hội mừng ngày hạ chí. Tưởng rằng tất cả sẽ có một quãng thời gian vui vẻ bên nhau nhưng rồi mọi thứ bắt đầu trở nên không như ý muốn của mình và thậm chí còn đáng sợ gấp nhiều lần.', 147, '2019-02-10', 6, 'https://www.youtube.com/embed/1Vnghdsjmd0'),
(23, 'It 2', 'Chú Hề Ma Quái Phần 2 - It Chapter Two 2019 lấy bối cảnh 27 năm sau, khi những đứa trẻ của nhóm “The Losers Club” đã lớn lên và đối mặt với vô số vấn đề trong cuộc sống. Chưa dừng lại ở đó, ám ảnh ma hề Pennywise cứ 27 năm lại xuất hiện một lần tại thị trấn Derry buộc 7 cô cậu bé ngày nào phải tiếp tục cuốn vào cuộc chạm trán tiếp theo giữa hai bên thiện và ác. Mặc dù có thể cả nhóm đã trưởng thành và khôn ngoan hơn, nhưng cuộc chiến của họ với Pennywise vẫn còn đó những hậu quả bất ngờ, thậm chí khiến một số thành viên phải trải qua đau đớn đến tột cùng.', 159, '2019-10-15', 7, 'https://www.youtube.com/embed/xhJ5P7Up3jA'),
(24, 'It ', 'mang thể loại kinh dị do đạo diễn Andres Muschietti phụ trách chỉ đạo. Nội dung phim xoay quanh cuộc sống của 7 bạn trẻ chơi chung với nhau từ bé, họ lập thành nhóm The Loser. Các cậu bé có cuộc sống yên bình, vui vẻ thế nhưng họ không biết rằng mình đang bị 1 chú hề ma quái đeo ám, hắn ta đã gieo rắc sự chết chốc lên thị trấn Derry suốt hàng chục năm qua và giờ đây mục tiêu của hắn là lũ trẻ, hằng ngày các cậu bé bị khủng bố tinh thần, chịu đựng nỗi sợ hải kinh hoàng. ', 133, '2019-05-13', 8, 'https://www.youtube.com/embed/xKJmEC5ieOk'),
(25, 'Anh Hùng Thành Trại', 'Được dịch từ tiếng Anh-A Fist Inside Four Walls là bộ phim truyền hình hành động võ thuật Hồng Kông năm 2016 do Jazz Boon và TVB sản xuất. Phim được công chiếu trên TVB Jade ở Hồng Kông, Astro On Request tại Malaysia và TVB First tại Singapore vào ngày 1 tháng 8 năm 2016. Tập cuối phát sóng vào ngày 28 tháng 8 năm 2016, tổng cộng 28 tập.', 110, '2016-01-08', 7, 'https://www.youtube.com/embed/ysFsZSnDzKo'),
(26, 'Cậu bé karate', 'Siêu nhí Karate là một bộ phim võ thuật của Mỹ và Trung Quốc hợp tác sản xuất năm 2010 và cũng là phiên bản làm lại từ một bộ phim cùng tên năm 1984. Đây là phần thứ năm của loạt phim Karate Kid. Bộ phim được chỉ đạo bởi đạo diễn Harald Zwart.', 110, '2010-06-10', 8, 'https://www.youtube.com/embed/2SmmxvHLsKk'),
(27, 'Đội bóng tiếu lâm', 'Đội Bóng Tiếu Lâm nhằm vực dậy tài chính các cầu thủ của đội bóng Chiến Thắng đồng ý thực hiện những màn quảng cáo có 1 không 2. Khó khăn được cải thiện nhưng thành tích vẫn dậm chân tại chỗ, vì người hâm mộ cả đội bóng quyết tâm dành chiến thắng ở trận chung kết.', 110, '2016-04-11', 8, 'https://www.youtube.com/embed/6FAaOwNnHTA'),
(28, 'Huyền Thoại Đấm Bốc', 'Anh em chiêu tích và thỏ điện lớn lên ở trại trẻ mồ côi, họ được nhân viên của trường là Lôi sư mẫu giúp đỡ và nhận nuôi cho vào ở hương thôn quyền quán. Chiêu tích chu cấp cho em trai đi học nhưng thằng em chỉ thích đi đánh đấm bất hợp pháp để kiếm tiền nên đã bị đuổi học dẫn đến tình anh em bất hòa.', 108, '2019-03-19', 6, 'https://www.youtube.com/embed/eb8Tbruey7o'),
(29, 'Long ấn cơ mật', 'Anh em chiêu tích và thỏ điện lớn lên ở trại trẻ mồ côi, họ được nhân viên của trường là Lôi sư mẫu giúp đỡ và nhận nuôi cho vào ở hương thôn quyền quán. Chiêu tích chu cấp cho em trai đi học nhưng thằng em chỉ thích đi đánh đấm bất hợp pháp để kiếm tiền nên đã bị đuổi học dẫn đến tình anh em bất hòa.', 108, '2019-08-16', 5, 'https://www.youtube.com/embed/FUDvGuASxgc'),
(30, 'Huyền Thoại Lý Tiểu Long', 'Bộ phim kể về cuộc đời của Lý Tiểu Long – huyền thoại võ thuật và điện ảnh thế giới. Lúc nhỏ, Lý Tiểu Long không thích học chữ nhưng lại là một tín đồ của võ thuật và từng theo cha đi đóng phim. Có một lần, Tiểu Lý đối đầu với đám bạn học cùng trường ở đầu ngõ và cậu đã thất bại. Từ đó cậu quyết tâm tìm võ sư và học một cách say mê.', 45, '2010-08-16', 6, 'https://www.youtube.com/embed/vZTcp0sX8Mg'),
(31, 'Quỷ quyền', 'Vì đánh bại kẻ thù trên võ đài, Vô Vọng bị kẻ thù chặt đứt cánh tay. Thế nhưng khi tỉnh dậy, anh phát hiện tay đã được 1 người thần bí nối lại. Kèm theo đó là 1 bức thư mời tham gia trận đấu dưới lòng đất đầy mờ ám. Dù biết rằng sẽ 1 đi ko trở lại, nhưng Vô Vọng buộc phải đi để tìm hiểu về người bố quá cố.', 70, '2017-08-16', 7, 'https://www.youtube.com/embed/S3IfiLR7oL0'),
(32, 'Tay quyền thái bự con', 'Phim kể về một người đàn ông mang quốc tích nước ngoài học võ Muay Thái, sau khi học được anh ta đã dùng nó để xử lý vụ án \"đánh cắp kim cương\".', 101, '2018-05-19', 5, 'https://www.youtube.com/embed/i4r2Ppfurfg'),
(33, 'Thái cực quyền', 'Dương Lộ Thiền đã mất mẹ từ nhỏ và lưu lạc trong quân khởi nghĩa nhờ năng lực dị thường. Mỗi khi tác động vào cái bớt trên trán, sức mạnh kỳ lạ của Lộ Thiền lại trỗi dậy đồng thời cũng rút ngắn cuộc sống của chàng trai trẻ. Nghe lời khuyên của một lão tiền bối trong quân khởi nghĩa, Lộ Thiền tìm tới Trần gia thôn để học môn võ công đặc biệt của họ, những mong cứu lại tính mạng như mành chỉ treo chuông của mình.', 103, '2012-05-19', 6, 'https://www.youtube.com/embed/Byne3Hr-J3I'),
(34, 'Trùm cớm và ác quỷ', 'Dương Lộ Thiền đã mất mẹ từ nhỏ và lưu lạc trong quân khởi nghĩa nhờ năng lực dị thường. Mỗi khi tác động vào cái bớt trên trán, sức mạnh kỳ lạ của Lộ Thiền lại trỗi dậy đồng thời cũng rút ngắn cuộc sống của chàng trai trẻ. Nghe lời khuyên của một lão tiền bối trong quân khởi nghĩa, Lộ Thiền tìm tới Trần gia thôn để học môn võ công đặc biệt của họ, những mong cứu lại tính mạng như mành chỉ treo chuông của mình.', 103, '2019-05-15', 7, 'https://www.youtube.com/embed/Nn3dGGRkObo'),
(35, 'Truy tìm tượng phật 1', 'ing, một chàng trai tỉnh lẻ, tình nguyện lên thành phố tìm lại đầu pho tượng phật thiêng liêng bị đám tội phạm cướp đi. Sự giúp đỡ (vô dụng) của gã đồng hương đẩy Ting vào những cuộc đấu bất hợp pháp.', 105, '2013-05-15', 7, 'https://www.youtube.com/embed/nAYUv9wjV48'),
(36, 'Truy tìm tượng phật 2', 'Ong bak 2 không phải là tập tiếp theo của bộ phim gốc năm 2003. Câu chuyện đưa ta về thế kỷ 15 tại Thái Lan với nhân vật chính là Tien. Mang trong mình dòng máu quí tộc, nên ngay từ nhỏ Tien đã không được cha cho luyện tập võ thuật. Thay vào đó cậu được đưa tới một lớp dậy múa Khon truyền thống.', 98, '2018-05-15', 6, 'https://www.youtube.com/embed/FH5Sp5vKbd8'),
(37, '300 chiến binh', '“300” là bộ phim lịch sử tái hiện cuộc chiến Thermopylae nổi tiếng kéo dài 3 ngày trong lịch sử Hy Lạp khi Vua Leonidas cùng 300 tinh binh Sparta đã quyết tử đánh trả đạo quân Ba Tư khổng lồ gần 1 triệu quân do Vua Xerxes chỉ huy nhằm thôn tính đất nước Hy Lạp.', 108, '2016-05-15', 8, 'https://www.youtube.com/embed/UrIbxk7idYA'),
(38, 'Các vị thần ai cập', 'Horus – vị thần của bầu trời, cùng với Hathor – nữ thần tình yêu và tên trộm người phàm cùng liên thủ thực hiện một kế hoạch để trả thù cho cái chết của Orisis (cha của Horus). Chuyến hành trình báo thù và phục sinh Osiris là một điển tích thần thoại cực kỳ nổi tiếng của Ai Cập. Cuộc chiến hào hùng đưa cả thần linh và con người xuyên qua cả cõi âm ti, thiên đàng và cả hai đều phải trải qua vô số thử thách về lòng dũng cảm, sự hi sinh nếu muốn giành chiến thắng.', 127, '2016-05-22', 6, 'https://www.youtube.com/embed/s4VAv8EDB_c'),
(39, 'Chiến binh bất tử', 'Immortals là câu chuyện cuộc chiến giữa các vị thần trên đỉnh Olympia và những thần dân Hy Lạp chống lại cuộc xâm lược của đế chế Hyperion (Mickey Rourke). Một đội quân khát máu đã tiến vào Hy Lạp tàn sát không thương tiếc dân lành chỉ với một mục đích là tìm một loại vũ khí chết người để tiêu diệt và chiếm lĩnh toàn thế giới. Khi số phận của nhân loại thực sự bị đe dọa Zeus vị thần tối cao trên đỉnh Olympia đã chọn Theseus (Cavill) phải lãnh đạo nhân dân chống lại Hyperion.', 110, '2011-11-11', 6, 'https://www.youtube.com/embed/tjUExrzrxCw'),
(40, 'Chúa tể của những chiếc nhẫn 1', 'Chiếc nhẫn chúa mang sức mạnh bá chủ vô tình được số phận đưa vào tay chàng hobbit trẻ tuổi Frodo. Khi thày phù thủy Gandalf phát hiện ra chiếc nhẫn này đã từng thuộc về bạo chúa Sauron, Frodo phải nhận nhiệm vụ mang nhẫn tới khe núi Hủy diệt để tiêu hủy nó.', 110, '2011-11-11', 9, 'https://www.youtube.com/embed/r5X-hFf6Bwo'),
(41, 'Chúa tể của những chiếc nhẫn 2', 'Cuộc hành trình đi hủy diệt chiếc nhẫn tiếp tục với bao nguy hiểm chờ đợi Frodo ở phía trước. Lần này, anh và Sam có một bạn đồng hành mới là Gollum. Trong khi đó, Gandalf may mắn thoát chết, hơn nữa sức mạnh của ông còn vượt xa hơn rất nhiều.', 179, '2002-11-11', 9, 'https://www.youtube.com/embed/LbfMDwc4azU'),
(42, 'Chúa tể của những chiếc nhẫn 3', 'Sauron huy động toàn lực cho trận chiến khốc liệt cuối cùng, tấn công vào Gondor – vùng đất huyết mạch của loài người. Gondor dưới sự lãnh đạo của vị vua nhu nhược trở nên quá mong manh và nguy ngập. Đó chính là lúc những người anh hùng phát huy hết khả năng của mình. Cùng với sự hỗ trợ của các chiến binh Rohan, lực lượng những hồn ma bị nguyền rủa trong khe núi, Aragorn đã thống lĩnh những người Gondor chống lại Sauron, anh đã thực hiện sứ mệnh mà số phận giao phó cho mình, Aragorn sinh ra để trở thành Vua của Gondor, anh đã chứng minh điều đó. Cùng lúc đó, Frodo và Sam tiếp tục dấn sâu vào vùng đất ma quỷ đầy hiểm nguy để thực thi sứ mạng của mình, sứ mạng tiêu hủy Chiếc Nhẫn Quyền Lực. Có thể nói Sự Trở Lại Của Nhà Vua Phim là phần có nội dung hấp dẫn cùng những màn chiến đấu cực hay, cực kỳ hoành tráng. \"The Lord Of The Ring 3\" không chỉ làm mê mẩn khán giả yêu phim mà còn chinh phục trái tim các nhà phê bình điện ảnh với 11 giải Oscar ‘2004 trong đó có Oscar Phim hay nhất và Oscar Đạo diễn xuất sắc nhất.', 179, '2003-11-11', 9, 'https://www.youtube.com/embed/QP-eb0DyMP4'),
(43, 'Cuộc chiến giữa các vị thần', 'Clash of the Titans là một thương hiệu phim hành động giả tưởng của người Mỹ gốc Anh dựa trên các nhân vật và thần thoại của thần thoại Hy Lạp cổ đại. Bộ phim đầu tiên, Clash of the Titans, được phát hành năm 1981 với bản làm lại vào năm 2010. Bản làm lại đã tạo ra phần tiếp theo, Wrath of the Titans, vào năm 2012', 179, '2010-05-06', 7, 'https://www.youtube.com/embed/qFmT7sAXB1I'),
(44, 'Hercules', 'Dựa trên bộ truyện tranh “Hercules: The Thracian Wars”, nội dung phim sẽ mang câu chuyện thần thoại về “Vị thần sức mạnh” lồng vào bối cảnh một thế giới trần tục nơi mà các năng lực siêu nhiên thần thánh không hề tồn tại. Khác với các phiên bản Hercules trước, chuyện phim lần này không nói về sự tích ra đời của huyền thoại Hercules hay \"12 kỳ công của Hercules\" mà xảy ra rất lâu sau đó...', 179, '2014-07-25', 7, 'https://www.youtube.com/embed/1L41RWI1oUg'),
(45, 'Người hùng thành Troy', 'Chiến tranh với những khát khao quyền lực và vinh quang bùng nổ. Biết bao thường dân bỏ mạng vì tham vọng của một người. Cả dân tộc lầm than, cả vương quốc bị xóa sổ chỉ vì một bóng hồng. Tác phẩm không chỉ là cuộc chiến giữa hai vương quốc mà xen vào đó là tình yêu cao đẹp giữa các nhân vật chính..', 163, '2004-05-14', 7, 'https://www.youtube.com/embed/znTLzRJimeY'),
(46, 'Percy Jackson & kẻ cắp tia chớp', 'Percy Jackson luôn gặp phải những rắc rối ở trường trung học nhưng hóa ra đó chỉ là những chuyện đơn giản của tuổi dậy thì. Còn thử thách mà cậu sẽ gặp phải chính là việc Percy khám phá ra rằng cha đẻ mình là Poseidon, vị thần biển cả, và điều đó có nghĩa rằng Percy là một á thần. Cùng lúc đó, thần Dớt, vua của các vị thần, đã buộc tội Percy ăn cắp vũ khí tối thượng của ông - tia sét quyền năng. Và bây giờ, tính mạng của Percy rơi vào vòng xoáy nguy hiểm, và cậu phải chuẩn bị cho một cuộc phiêu lưu lớn, với những giông bão hiểm nguy đang chờ dịp trút xuống thế giới…', 118, '2010-05-14', 7, 'https://www.youtube.com/embed/w6aYjbpBm-E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 2),
(20, 2),
(21, 1),
(22, 2),
(23, 2),
(24, 2),
(25, 3),
(26, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_persons`
--

CREATE TABLE `movie_persons` (
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persons`
--

CREATE TABLE `persons` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f') COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `birth_date` date NOT NULL,
  `death_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person_role`
--

CREATE TABLE `person_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', 'admin', 'admin@admin', 1),
(3, 'tandat', '123456', 'nghuutandat@gmail.com', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`cmt_id`,`user_id`,`movie_id`),
  ADD KEY `fk_cmt_user` (`user_id`),
  ADD KEY `fk_cmt_movies` (`movie_id`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movie_id`,`genre_id`),
  ADD KEY `fk_movie_genre_genres` (`genre_id`);

--
-- Chỉ mục cho bảng `movie_persons`
--
ALTER TABLE `movie_persons`
  ADD PRIMARY KEY (`movie_id`,`person_id`,`role_id`),
  ADD KEY `fk_movie_persons_persons` (`person_id`),
  ADD KEY `fk_movie_persons_role` (`role_id`);

--
-- Chỉ mục cho bảng `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`person_id`);

--
-- Chỉ mục cho bảng `person_role`
--
ALTER TABLE `person_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cmt`
--
ALTER TABLE `cmt`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `fk_cmt_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `fk_cmt_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `fk_movie_genre_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  ADD CONSTRAINT `fk_movie_genre_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`);

--
-- Các ràng buộc cho bảng `movie_persons`
--
ALTER TABLE `movie_persons`
  ADD CONSTRAINT `fk_movie_persons_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `fk_movie_persons_persons` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`),
  ADD CONSTRAINT `fk_movie_persons_role` FOREIGN KEY (`role_id`) REFERENCES `person_role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
