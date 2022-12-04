-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2021 lúc 06:53 AM
-- Phiên bản máy phục vụ: 8.0.25
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kidstuto`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/banner1.png'),
(4, 'img/banners/banner2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(3, 64, 1, 390000),
(3, 66, 1, 799000),
(3, 85, 1, 500000),
(3, 64, 1, 390000),
(3, 66, 1, 799000),
(3, 85, 1, 500000),
(3, 64, 2, 390000),
(3, 66, 1, 799000),
(3, 85, 1, 500000),
(3, 64, 2, 390000),
(3, 66, 1, 799000),
(3, 85, 1, 500000),
(3, 64, 2, 390000),
(3, 66, 1, 799000),
(3, 85, 1, 500000),
(1, 64, 1, 390000),
(1, 64, 1, 390000),
(1, 64, 1, 390000),
(3, 84, 3, 500000),
(7, 84, 3, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Luyện Thi Đại Học'),
(2, 'Dạy Kèm THCS'),
(3, 'Dạy Kèm Tiểu Học'),
(4, 'Các Khóa Học Ngoại Ngữ'),
(5, 'Dạy Kèm THPT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL,
  `MaND` int NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(1, 1, '2020-07-23 17:44:22', 'Duong Duong', '0976942493', 'An Vĩnh', '', 10880000, '1'),
(3, 13, '2020-07-25 11:59:47', 'Nguyễn Trí', '02354129852', '39 đường 3/2 Đà Nẵng', '', 15340000, '1'),
(7, 18, '2021-11-19 12:17:23', 'Nguyễn Đức Phi', '0703057561', 'Đà Nẵng', NULL, 15340000, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int NOT NULL,
  `TenKM` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int NOT NULL,
  `TenLSP` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(45, 'Lớp 1', 'Gia-su-lop-1-500_2.jpg', 'Khi vào lớp 1, các học sinh nhỏ tuổi không khỏi những khó khăn, bỡ ngỡ khi tiếp xúc với một môi trường học tập hoàn toàn mới so với các lớp mầm, lớp chồi, lớp lá trước đây. Việc học tập của các em đã được phân chia theo môn học rõ ràng: Toán, tiếng việt, anh văn, . . . Đây là năm học rất quan trọng để làm nền tảng kiến thức cơ bản trong đó có các môn như: luyện chữ viết, tập đọc, vẽ, anh văn thiếu nhi, toán sơ cấp...', 3),
(46, 'Lớp 2', 'Gia-su-lop-2-500_2.jpg', 'Năm học mới bắt đầu, bé đã kết thúc lớp 1 và chuyển qua lớp 2. Các bậc phụ huynh đã hài lòng với kết quả học tập của con em mình chưa?. Lớp 1 với vai trò bản lề đã qua đi, trẻ bước vào lớp 2 với những yêu cầu cao hơn về kiến thức cũng như kỹ năng. ', 3),
(47, 'Lớp 3', 'Gia-su-lop-3-500_2.jpg', 'Bước vào lứa tuổi lên lớp 3, chắc hẳn các quí phụ huynh đều biết vì các em đang bước vào thời điểm kết thúc của giai đoạn 1 và chuẩn bị bước vào giai đoạn 2 của khối lớp tiểu học. Chương trình học của lớp 3 kiến thức sẽ rộng hơn và các môn học  nhiều hơn lớp 2 một chút. Chương trình học của các em bao gồm các môn: Tiếng Việt, Toán, Đạo đức, Thể dục, Nghệ thuật. Tự nhiên và Xã hội.', 3),
(48, 'Lớp 4', 'Gia-su-lop-4-500_2.jpg', 'GIA SƯ LỚP 4 Lớp 4 là giai đoạn hoàn thiện đối với học sinh khối tiểu học, học sinh bắt đầu có thể tự lập mọi thứ. Công việc của quý  phụ huynh và gia sư lớp 4 có thể hướng dẫn, yêu cầu các em ý thức về việc tự lập, tự ý thức làm các công việc hằng ngày liên quan đến mình mà không ỷ lại vào gia sư dạy kèm hay cha mẹ mình,Năm học mới bắt đầu, các bé lớp 3 bây giờ đã là học sinh lớp 4. Những dạng Toán mới, những bài văn miêu tả làm không ít trẻ thấy khó khăn. Với học sinh lớp 4 thì kì thi cuối kì của các em không chỉ có các môn Toán, Tiếng Việt, Tiếng Văn mà các bé còn thi cả các môn Lịch Sử, Địa Lý và Khoa học.   ', 3),
(49, 'Lớp 5', 'Gia-su-lop-5-500_2.png', 'Lớp 5, đây là năm cuối của khối tiểu học, các em chuẩn bị chuyển từ cấp 1 lên cấp 2, như vậy sắp sửa học lên một bậc cao hơn rồi nữa đấy. Các em còn phải chuẩn bị đủ thứ, nào là thi học kỳ, thi kết thúc năm học  và thi chuyển cấp vào các trường chuyên và trường công nữa. Đây là năm học  có nhiều nhiệm vụ nặng nề tương đối vất vả cho các em. Chính vì thế năm học lớp 5 rất quan trọng và có nhiều ý nghĩa nhất. Cho nên để có một kiến thức căn bản trong chương trình lớp 5 và một kết quả tốt trong kỳ thi chuyển cấp, nhằm giúp các em học sinh trang bị đầy đủ phương pháp tư duy logic và kỹ năng cần thiết trong việc giải quyết các bài tập, và các câu hỏi khó của các đề thi cử.  Nhận thức được tầm quan trọng của việc này, công việc chọn lựa một gia sư lớp 5 cho con em mình là một việc hết sức cần thiết của các quý phụ huynh đối với thời điểm này.', 3),
(50, 'Lớp 6', 'Gia-su-lop-6-500_2.png', 'Không ít các bạn học sinh gặp phải nhiều bỡ ngỡ trong việc định hướng học tập bước, phương pháp học tập khi bước vào lớp 6. Các em được tiếp cận với những kiến thức THCS và phương pháp giảng dạy hoàn toàn mới, nhiều học sinh tiểu học thật sự bất ngờ so với thời còn là học sinh tiểu học.Lên cấp 2, các em bước vào lớp 6 là một quá trình thay đổi về nội dung và môi trường học tập. Không ít các bạn học sinh gặp phải nhiều bỡ ngỡ trong việc định hướng học tập khi chuyển cấp.  Cấp 2 là bậc học vô cùng quan trọng, đây là bước khởi đầu làm nền móng những kiến thức căn bản để sau này lên cấp 3, lúc này  các em được tiếp cận với những kiến thức mới và khó hơn thời kỳ còn ở tiểu học. Nếu không để ý đầu tư thời kỳ đầu giai đoạn này, các em có thể dễ bị mất căn bản. Chính vì vậy cần phải có gia sư lớp 6 cùng hỗ trợ tiếp sức các em là rất quan trọng và cần thiết.', 2),
(51, 'Lớp 7', 'Gia-su-lop-7-500_2.jpg', 'Lớp 7, các em bắt đầu bước thêm một nấc thang nữa của cấp 2. Chương trình gia sư lớp 7 cũng giống chương trình gia sư lớp 6 nhưng cấu trúc của từng bài toán, bài văn sẽ nâng cao hơn nhiều', 2),
(52, 'Lớp 8', 'Gia-su-lop-8-500_2.jpg', 'Gia sư lớp 8 tại Gia Sư Khởi Nguyên là đội ngũ các giáo viên thỉnh giảng tại các Trường THCS tại Tphcm, cùng với sự cộng tác của các sinh viên giỏi giàu kinh nghiệm, giỏi chuyên môn, kỹ năng truyền đạt dể hiểu và phương pháp sư phạm vững chắc sẽ đem đến cho con em của quý vị phụ huynh những phương pháp học tập sâu sắc nhất.', 2),
(53, 'Lớp 9', 'Gia-su-lop-9-500_2.jpg', 'Lớp 9 là lớp học cuối cùng ở bậc học trung học cơ sở. Các em sẽ phải trải qua một kỳ thi tuyển sinh vào lớp 10 cực kỳ quan trọng khi Sở GD-ĐT TP.HCM không còn tổ chức xét tuyển lớp 10 như những năm trước đây. Sự đầu tư về thời gian học tập của các học sinh, cùng với sự trợ giúp của một gia sư dạy kèm riêng là hết sức cần thiết cho các em ở lớp học quan trọng này.', 2),
(54, 'Lớp 10', 'Gia-su-lop-10-500_2.jpg', 'Nhiều học sinh có thói quen học rất chăm ở cấp 2 và có thành tích tốt trở nên thụ động và sa sút thấy rõ khi lên lớp 10. Vấn đề nằm ở sự thay đổi đột ngột hình thức học và các học sinh này không nhận được những hướng dẫn đầy đủ và kịp thời để theo kịp nhịp độ.  Một gia sư lớp 10 sẽ là nguồn kinh nghiệm quý báu cho quý phụ huynh khi con em bước vào cấp 3.', 5),
(55, 'Lớp 11', 'Gia-su-lop-11-500_2.jpg', 'Chúng ta có thể khẳng định rằng: không quá sớm khi học sinh 11 bắt đầu tăng tốc ôn thi đại học, nhiều trường THPT đã tổ chức phân ban cho học sinh khi bước vào THPT. Nhiều học sinh đã tự định hướng trước cho mình trường đại học sẽ dự thi sau này. Vì vậy, nếu hiện tại bạn là học sinh lớp 11, hãy chuẩn bị thật nghiêm túc tinh thần học tập, không nên đợi “nước đến chân mới nhảy”.', 5),
(56, 'Lớp 12', 'Gia-su-lop-12-500_2.jpg', 'Muốn tạo cho mình một chiến lược học tập vững chắc và an toàn để dễ dàng vượt qua bất kỳ cuộc chiến thi cử nào trước mắt và về sau thì ngay từ khi bước vào lớp 12, năm học cuối cấp PTTH – ngưỡng cửa quyết định hướng đi sau này bạn cần phải đề ra cho bản thân một kế hoạch học tập và ôn luyện hoàn hảo nhất, khoa học nhất. Hãy nhớ rằng thi cử mang lại lợi ích và kết quả không cho ai khác mà là cho chính bạn!', 5),
(57, 'Luyện thi đại học khối A', 'luyen-thi-dai-hoc-kA.jpg', 'Luyện thi đại học khối A vẫn luôn là sự lựa chọn của phần lớn thí sinh, Số lượng thí sinh luyện thi khối A luôn chiếm tỉ lệ hơn 50%  tổng số thí sinh dự thi.  Khối A luôn là một trong những khối thi truyền thống được cho là \"ăn khách\" có chỉ tiêu cao đối với các trường đại học, cao đẳng. ', 1),
(58, 'Luyện thi đại học khối A1', 'luyen-thi-dai-hoc-kA1.jpg', 'Để tạo điều kiện và mở rộng cánh cửa cho nhiều thí sinh có cơ hội bước chân vào giảng đường đại học, Bộ GD & ĐT tiếp tục triển khai việc thi tuyển vào khối A1 để đáp ứng nhu cầu tuyển sinh vào nhiều ngành học mới của các trường đại học trên cả nước.', 1),
(59, 'Luyện thi đại học khối B', 'luyen-thi-dai-hoc-kB.jpg', 'Bước vào cánh cổng trường đại học là niềm ao ước của tất cả học sinh sau 12 năm dùi mài kinh sử. Để thực hiện ước mơ đó, học sinh có nhiều cách thức đạt được mục tiêu nhằm vào các khối thi phù hợp. Trong đó, với các em chọn thi khối B, nhiều phụ huynh đã trợ giúp thành công cho con em mình nhờ vào việc tìm gia sư luyện thi đại học khối B.', 1),
(60, 'Luyện thi đại học khối C', 'khoi-c-gom-nhung-nganh-nao.png', 'Nếu bạn đã lựa chọn ban C để gắn bó và quyết định cho vấn đề hướng nghiệp trong tương lai của mình thì công thức duy nhất giúp bạn có thể chiến thắng kỳ thi đại học khối C là : \"Chăm chỉ - sáng tạo - bình tĩnh\".', 1),
(61, 'Luyện thi đại học khối D', 'cac-mon-thi-khoi-D-1.png', 'Luyện thi đại học luôn là chủ đề nóng đối với các em học sinh lớp 12. Nhất là ở thời điểm gần đến mùa thi thì tình hình luyện thi lại càng căng thẳng, nhiều bạn chọn ôn thi khối D băn khoăn không biết ôn thi bằng cách nào cho hiệu quả?', 1),
(62, 'Ôn Thi ĐH Môn Toán', 'mathematics-png.jpg', 'Toán học (từ tiếng Hy Lạp: μάθημα , máthēma , \'kiến thức, nghiên cứu, học tập\') bao gồm việc nghiên cứu các chủ đề như số ( số học và lý thuyết số ), [1] công thức và cấu trúc liên quan ( đại số ), [2] hình dạng và không gian trong mà chúng được chứa ( hình học ), [1] và các đại lượng cũng như những thay đổi của chúng ( giải tích và phân tích ). [3] [4] [5] Không có sự nhất trí chung về phạm vi chính xác hoặc tình trạng nhận thức luận của nó . [6] [7]', 1),
(63, 'Ôn Thi ĐH Môn Tiếng Anh', 'hardest-part-learning-english.jpg', 'Ngôn Ngữ Quốc Tế', 1),
(64, 'Ôn Thi ĐH Môn Văn', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int NOT NULL,
  `Ho` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int NOT NULL,
  `TrangThai` int NOT NULL,
  `avt` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`, `avt`) VALUES
(1, 'Duong', 'Duong', 'Nam', '0976942493', 'duongls2ls@gmail.com', 'An Vĩnh', 'duongls2ls', 'e99a18c428cb38d5f260853678922e03', 2, 1, NULL),
(2, 'Duong', 'A ', 'Nam', '0976942494', 'duonglslata@gmail.com', 'An Hải', 'duongls', 'e99a18c428cb38d5f260853678922e03', 3, 1, NULL),
(3, 'Duong', 'B', 'Nữ', '0976942495', 'duongls@gmail.com', 'An Bình', 'duongAB', 'e99a18c428cb38d5f260853678922e03', 3, 1, NULL),
(13, 'Nguyễn', 'Trí', '', '02354129852', 'tringuyendb@gmail.com', '', 'trimen', 'e99a18c428cb38d5f260853678922e03', 1, 1, NULL),
(14, 'admin', 'admin', 'nam', '23423', 'admin@gmail.com', 'nui thanh', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1, NULL),
(15, 'a', 'c', '', '1234567890', 'a@gmail.com', '', '123456', '040d9b33af7249502cd6ec06c422755a', 1, 1, NULL),
(18, 'Nguyễn ', 'Đức Phi', 'Nam', '0703057561', 'ndphi.20it10@vku.udn.vn', 'Đà Nẵng', 'ndphii', '802bd8c4a4a960cad7b45424e3c2cb38', 2, 1, NULL),
(20, 'Nguyễn ', 'Đức Phi', 'Nam', '0703057561', 'nguyenducphi002@gmail.com', 'Đà Nẵng', 'ndphii_nd', '802bd8c4a4a960cad7b45424e3c2cb38', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int NOT NULL,
  `TenQuyen` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Giảng Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL,
  `MaLSP` int NOT NULL,
  `MaDM` int NOT NULL,
  `TenSP` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int NOT NULL,
  `SoLuong` int UNSIGNED NOT NULL DEFAULT '1',
  `HinhAnh1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int NOT NULL,
  `ManHinh` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `HDH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamSau` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamTruoc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPU` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ram` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rom` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDCard` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pin` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSao` int NOT NULL,
  `SoDanhGia` int NOT NULL,
  `TrangThai` int NOT NULL,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(58, 45, 3, 'Khóa Học Toán Lớp 1', 300000, 1, 'img/products/banner 2_lop1.jpg', 'img/products/Sach-giao-khoa-toan-lop-1-1.jpg', 'img/products/1507201690741_13249615_1578303919166651_1987905646_n_677x960.jpg', 1, '1', '12', '1234', '123', '12345', '123456', '1234567', '123456789', '12345678', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Cùng kidstuto.vn khai phá những ẩn số toán học trong con của bạn cùng với những tính năng không xuất hiện ở bất kỳ chương trình học nào:v</span><br></p>', '2021-11-17 20:02:04'),
(59, 46, 3, 'Khóa Học Toán Lớp 2', 350000, 1, 'img/products/toan-2.png', '/img/products/b1-tr-129-sgk-toan-hoc-2-0.jpg', '/img/products/luyen_tap_trang_31.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2021-11-08 22:12:03'),
(60, 47, 3, 'Khóa Học Toán Lớp 3', 350000, 1, 'img/products/img-video-lop3-1.jpg', 'img/products/5e7876ccb2b952fb5894a95e5eff9e52.jpg', '/img/products/on-tap-cac-dang-toan-lop-3-2.png', 5, 'Học sinh hoàn thành các bài tập tự luyện bao gồm hơn 300 bài tập trắc nghiệm và các bài tập tự luận (Kiểm tra 15 phút và kiểm tra 1 tiết).', 'Trịnh Thị Vui', '12 chuyên đề', '13', '', 'Tiếng Việt', '', '', 'Học sinh sẽ hệ thống được toàn bộ kiến thức Toán lớp 3. Học sinh nắm được cách giải của các dạng toán thường gặp nhất. Hệ thống đề thi đánh giá chính xác năng lực của học sinh sau mỗi chương, mỗi học kì.', 0, 0, 1, '<ul style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><li>Khóa học của Cô Vui bám sát cấu trúc chương trình học, các kiến thức khó hình dung nhất sẽ được đơn giản hóa như vậy thì chương trình Toán lớp 3 giúp học sinh dễ dàng tiếp thu kiến thức hơn.</li></ul>', '2021-11-17 20:01:28'),
(61, 48, 3, 'Khóa Học Toán Lớp 4', 355000, 1, 'img/products/111.jpg', 'img/products/sach-giao-khoa-toan-lop-4.jpg', 'img/products/Bai-tap-toan-4.jpg', 1, 'Học sinh hoàn thành các bài tập tự luyện bao gồm hơn 300 bài tập trắc nghiệm và các bài tập tự luận (Kiểm tra 15 phút và kiểm tra 1 tiết).', 'TRỊNH THỊ VUI', '5 chuyên đề', '26', ' Số tự nhiên, Các phép tính với số tự nhiên,Dấu hiệu chia hết. Hình bình hành,Phân số. Hình thoi. Tỉ số và bài toán liên quan đến tỉ số.', 'Tiếng Việt', '', '', 'Học sinh sẽ hệ thống được toàn bộ kiến thức Toán lớp 4. Học sinh nắm được cách giải của các dạng toán thường gặp nhất. Hệ thống đề thi đánh giá chính xác năng lực của học sinh sau mỗi chương, mỗi học kì.', 0, 0, 1, '<p>Chi tiết, cụ thể đi từ những định nghĩa, khái niệm và có ví dụ vận dụng đi kèm sau mỗi bài giảng.<span style=\"font-size: 1rem;\">Giáo viên với phong cách giảng tỉ mỉ, nhiệt tình cách vận dụng các bài toán để học sinh nắm chắc lý thuyết vừa được học.</span><span style=\"font-size: 1rem;\">Trong bài giảng, luôn nhắc lại và bổ sung kiến thức cần ghi nhớ.</span><span style=\"font-size: 1rem;\">Tạo thêm niềm yêu thích với môn Toán.</span></p>', '2021-11-11 13:57:43'),
(62, 49, 3, 'Khóa Học Toán Lớp 5', 399000, 1, 'img/products/5f3cccb3187c2.png', 'img/products/unnamed (1).jpg', 'img/products/giai-toan-lop-5-trang-5.jpg', 1, 'Học sinh hoàn thành các bài tập tự luyện bao gồm 60 bài tập trắc nghiệm và 15bài tập tự luận (Kiểm tra 15 phút và kiểm tra 1 tiết)', 'Nguyễn Thị Hòa', ' Ôn tập và bổ sung về phân số,Số thập phân,Hình học,Toán chuyển động đều.', '20', '4 chuyên đề', 'Tiếng Việt', '', '', 'Học sinh sẽ hệ thống được toàn bộ kiến thức Toán lớp 5,nắm được cách giải của các dạng toán thường gặp nhất,đánh giá chính xác năng lực của học sinh sau mỗi chương, mỗi học kì.', 0, 0, 1, '<ul style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \" helvetica=\"\" neue\";\"=\"\"><li><p>Khóa học của Cô Ngọc gồm 4 chuyên đề bám sát cấu trúc chương trình học, các kiến thức khó hình dung nhất sẽ được đơn giản hóa như vậy thì chương trình Toán lớp 5 giúp học sinh dễ dàng tiếp thu kiến thức hơn</p></li></ul>', '2021-11-11 15:00:02'),
(63, 47, 3, 'Khóa Học Tiếng Anh Lớp 3', 799000, 1, 'img/products/tai xuong (5).jpg', '/img/products/1_146.jpg', 'img/products/ta-3.png', 5, 'Học từ vựng luyện phát âm', 'CÔ GIANG LY', '', '30', '60 tiết', 'Tiếng  Việt,Tiếng Anh', 'Giao tiếp với người nước ngoài', '', 'Nắm vững Kiến thức cơ bản của Tiếng anh', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp </span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">3 </span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-23 12:41:48'),
(64, 48, 3, 'Khóa Học Tiếng Việt Lớp 4', 390000, 1, 'img/products/gv-tieng-viet-lop4.jpg', '/img/products/sgk-tieng-viet-4-tap-1-0.jpg', '/img/products/tai xuong (1).jpg', 1, 'Biết nói tiếng việt', 'HOÀNG THỊ THƠ', '21 Chuyên Đề', '26', '121 bài giảng', 'Tiếng Việt', '', '', 'Biết Đọc Chữ', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học tiếng việt lớp 4 online chúng tôi mang đến cho con bạn không chỉ chứa những bài học tập đọc, viết, cách sử dụng từ, vần với lượng kiến thức bám sát sách giáo khoa bằng phương pháp hoàn toàn mới mà ở đây chúng tôi còn mang đến một giải pháp thực sự cho việc học tập của con thêm phần hiệu quả hơn ngay tại nhà mà không cần bỏ nhiều tiền tới các trung tâm hoặc học thêm làm gì cả. Dựa trên nền tảng công nghệ web hiện đại Luyện Học Education cam kết có thể giúp con bạn làm chủ được môn tiếng Việt lớp 4 không mấy khó khăn.</span><br></p>', '2021-11-17 22:51:35'),
(65, 48, 3, 'Khóa Học Tiếng Anh 4', 599000, 1, 'img/products/banner_ta_lop4.png', '/img/products/tai xuong (2).jpg', '/img/products/scan0020.jpg', 1, 'Học sinh học kỹ từng bài giảng của cô để nắm chắc kiến thức lý thuyết .  Các phần kiến thức chưa hiểu thì học sinh cần học kỹ lại, đồng thời có thể hỏi đáp kiến thức thông qua mục hỏi đáp  Học sinh hoàn thành các bài tập tự luyện phía dưới mỗi bài giảng.', 'Giang Ly', '', '13', '20 unit', 'Tiếng  Việt,Tiếng Anh', '', '', 'Học sinh sẽ hệ thống được toàn bộ kiến thức Tiếng Anh lớp 4  Học sinh nắm được các từ vựng liên quan đến chủ đề, giải được các dạng bài tập ngữ pháp thường gặp nhất  Học sinh được làm quen với các bài tập trắc nhiệm và tự luận.  Với bài tập tự luận, học sinh được trực tiếp các thầy cô của hocthukhoa.vn chấm điểm và nhận xét để cải thiện kết quả học tập.', 0, 0, 1, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 14px;\">Khóa học Tiếng Anh lớp 4 của cô Giang Ly rèn luyện đủ cả 4 kĩ năng Nghe - Nói - Đọc Viết trong Tiếng Anh, tập trung vào chủ đề Family, The World Around, my friends, and my school.</span><br></p>', '2021-11-17 20:49:10'),
(66, 49, 3, 'Khóa Học Tiếng Anh 5', 799000, 1, 'img/products/tai xuong (3).jpg', 'img/products/Sach-giao-khoa-tieng-anh-5-thi-diem-tap-1-500x554.jpg', 'img/products/tieng-anh-lop-5-tap-2-sach-hoc-sinh-bia.jpg', 1, 'Học sinh học kỹ từng bài giảng của cô để nắm chắc kiến thức lý thuyết .  Các phần kiến thức chưa hiểu thì học sinh cần học kỹ lại, đồng thời có thể hỏi đáp kiến thức thông qua mục hỏi đáp  Học sinh hoàn thành các bài tập tự luyện phía dưới mỗi bài giảng.', 'Giang Ly', '', '31', 'Khóa học tiếng anh lớp 5 của cô Giang gồm 20 Unit bám sát cấu trúc chương trình học, các kiến thức trừu tượng, khó hình dung nhất sẽ được đơn giản hóa, giúp học sinh dễ dàng tiếp thu kiến thức hơn. Đặc biệt là phần từ vựng sẽ có hình ảnh minh họa sinh động, các phần ngữ pháp phức tạp cũng sẽ được cô Giang hướng dẫn tỉ mỉ.', 'Tiếng  Việt,Tiếng Anh', '', '', 'Nắm vững Kiến thức cơ bản của Tiếng anh', 0, 0, 1, '<p><span style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \"helvetica neue\"; font-size: 16px;\">Khóa học Tiếng Anh trực tuyến lớp 5 của cô Giang Ly rèn luyện đủ cả 4 kĩ năng Nghe - Nói - Đọc Viết trong Tiếng Anh, tập trung vào chủ đề Family, The World Around, my friends, and my school. Đặc biệt là về khía cạnh nâng cao vốn từ vựng, ngữ pháp sẽ giúp khả năng tiếng Anh của các em sẽ nhanh chóng tiến bộ.</span><br></p>', '2021-11-23 10:33:06'),
(67, 50, 2, 'Khóa Học Toán Lớp 6', 399000, 1, 'img/products/Le Ha Phuonng.jpg', '/img/products/onu0toepeawp8.jpg', '/img/products/unnamed.jpg', 5, 'Học sinh học kỹ từng bài giảng của thầy cô để nắm chắc kiến thức lý thuyết.  - Các phần kiến thức chưa hiểu thì học sinh cần học kỹ lại, đồng thời có thể hỏi đáp kiến thức thông qua mục hỏi đáp.  - Học sinh hoàn thành các bài tập tự luyện bao gồm bài tập trắc nghiệm và bài tập tự luận (Kiểm tra 15 phút và kiểm tra 1 tiết).', 'Cô Diệu Linh', '+ Chuyên đề 1.Ôn tập và bổ túc về số tự nhiên  + Chuyên đề 2. Số Nguyên  + Chuyên đề 3. Phân số  + Chuyên đề 4. Đoạn thẳng.  + Chuyên đề 5. Góc', '56', '', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \"helvetica neue\"; font-size: 16px;\">Khóa học Toán lớp 6 của thầy </span><span style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \"helvetica neue\"; font-size: 16px;\">Cô Diệu Linh</span><span style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \"helvetica neue\"; font-size: 16px;\"> cung cấp đầy đủ kiến thức trong chương trình sách giáo khoa, giúp học sinh nắm vững lí thuyết và biết cách giải quyết các dạng bài tập.</span><br></p>', '2021-11-17 19:59:58'),
(68, 50, 2, 'Khóa Học Tiếng Anh Lớp 6', 799000, 1, 'img/products/5f09270222fd5.jpg', '/img/products/sach-tieng-anh-lop-6-tap-1.jpg', '/img/products/SHS Tieng Anh 6T2 KNTT Bia.jpg', 1, '', 'Nguyễn Tuyết Nhung', '', '32', '20 unit', 'Tiếng  Việt,Tiếng Anh', '', '', 'Học sinh sẽ hệ thống được toàn bộ kiến thức Tiếng Anh cơ bản lớp 6  - Giúp học sinh bồi dưỡng tình yêu đối với Tiếng Anh học từ đó nâng cao thái độ học tập tích cực.  - Rèn luyện được kĩ năng làm Tiếng Anh trắc nghiệm ngay từ lớp 6  - Giúp học sinh tự tin với các bài học trên lớp, giành điểm số cao trong các bài thi/ kiểm tra', 0, 0, 1, '<p><span style=\"color: rgb(20, 32, 47); font-family: montserrat, sans-serif, -apple-system, system-ui, BlinkMacSystemFont, Helvetica, \"helvetica neue\"; font-size: 16px;\">Khóa học Tiếng Anh lớp 6 của cô Nguyễn Tuyết Nhung rèn luyện đủ cả 4 kĩ năng Nghe - Nói - Đọc Viết trong Tiếng Anh, bám sát chương trình Sách giáo khoa, thông qua sử dụng ngữ liệu (ngữ âm, từ vựng, ngữ pháp), giúp khả năng tiếng Anh của các em sẽ nhanh chóng tiến bộ.</span><br></p>', '2021-11-17 07:55:05'),
(69, 45, 3, 'Khóa Học Tiếng Việt Lớp 1', 500000, 1, 'img/products/tingviet-lop1.jpg', 'img/products/images.jpg', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2021-11-17 20:33:41'),
(70, 46, 3, 'Khóa Học Tiếng Việt Lớp 2', 500000, 1, 'img/products/anh-lop-tv-lop2.jpg', 'img/products/Uf5sUimage (38).jpg', 'img/products/upload_d72b9699cf634597ad63b5217b82719e_master.jpg', 1, 'Hãy cùng các cô giáo của Luyện Học Education học ngay sau mỗi bài học con được học trên lớp. Điều này giúp con vừa củng cố kiến thức vừa được nhà trường cung cấp vừa giúp cho con có cái nhìn mới hơn trong quá trình tiếp thu kiến thức. ', 'Phạm Minh Thu', '', '45', 'Ngoài việc thiết kế giao diện website độc đáo với màu sắc tươi sáng kích thích mắt và trí tò mò của trẻ chúng tôi còn xây dựng một bộ giáo trình dựa trên việc nghiên cứu tâm lý trẻ nhỏ với sự giúp đỡ của 2 chuyên gia người Mỹ. ', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Mang tới cho trẻ trải nghiệm học tiếng Việt lớp 2 online bằng sự kết hợp giữa giáo trình giảng dạy hiện đại bậc nhất và công nghệ để nâng cao khả năng ngôn ngữ trong con. Trẻ sẽ được trải nghiệm một hình thức học hoàn toàn mới dựa trên nền tảng web với video đa chiều và dẫn chứng cụ thể để giúp tiếp thu nhanh hơn, học hiệu quả hơn</span><br></p>', '2021-11-16 18:12:26'),
(71, 47, 3, 'Khóa Học Tiếng Việt Lớp 3', 500000, 1, 'img/products/gv-tieng-viet-lop3.jpg', '/img/products/Tieng-viet-3-tap-1-500x554.jpg', '/img/products/Tieng-viet-3-tap-2-500x554.jpg', 5, 'Phải học đều hàng ngày tối thiểu 15 phút sau mỗi bài học được giảng trên lớp với chủ đề thích hợp để tiếp thu tốt hơn', 'Phạm Minh Thảo', '40 tiết học', '43', '', '', '', '', '- Đọc thông viết thạo hơn, phát triển tư duy ngôn từ  - Vừa học vừa chơi không có áp lực', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Giúp trẻ trải nghiệm một phương pháp học tiếng việt lớp 3 online hoàn toàn mới, một trải nghiệm được tại nên từ công nghệ và giáo dục kết hợp với nhau để tạo nên hiệu quả học tập trong thời gian ngắn nhất và giảm thiểu áp lực nhất&nbsp;cho trẻ.&nbsp;Với nền tảng web 4.0 cùng với giáo trình tiên tiến chúng tôi cam kết mang lại cho con bạn một khóa học hiệu quả tuyệt vời ngoài sức mong đợi của bạn</span><br></p>', '2021-11-16 18:19:34'),
(72, 49, 3, 'Khóa Học Tiếng Việt Lớp 5', 500000, 1, 'img/products/anh-lop-tv-lop5.jpg', '/img/products/5AwhKimage (7) .png', '/img/products/5AwhKimage (7) .png', 2, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2021-11-16 18:45:31'),
(73, 50, 2, 'Khóa HọcVật Lý 6', 400000, 1, 'img/products/bia khoa hoc ly co hong phuong - vat li lop 6.jpg', '/img/products/ThietKeBaiGiangCongNghe6-NguyenDinhDong_001.jpg', '/img/products/unnamed.jpg', 2, 'Phải học đều hàng ngày tối thiểu 15 phút sau mỗi bài học được giảng trên lớp với chủ đề thích hợp để tiếp thu tốt hơn ', 'Trần Hồng Hương', '', '23', '56 bài giảng', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học&nbsp;</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Vật Lí 6</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">&nbsp;</span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">online được tạo riêng dành cho các học sinh đầu cấp 2,&nbsp;với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp 6 vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-17 19:59:02'),
(74, 51, 2, 'Khóa Học Vật Lý Lớp 7', 500000, 1, 'img/products/ly7.jpg', 'img/products/sgkly7.jpg', '/img/products/sach-bai-tap-vat-li-lop-7.jpg', 5, '- Đọc hiểu tốt cũng như thông hiểu các vấn đề được giáo trình đề cập đến, phát triển tư duy ngôn từ  - Vừa học vừa chơi không có áp lực', 'Cô Thắm', '', '24', '', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học </span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Vật Lí 7</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\"> </span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">online được tạo riêng dành cho các học sinh cấp 2, với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp 7 vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-23 12:45:09'),
(75, 52, 2, 'Khóa Học Toán Lớp 8', 500000, 1, 'img/products/Phan Toan- toan 8.jpg', '/img/products/258136584_261521622658902_1796097057773805562_n.jpg', '/img/products/sach-giao-khoa-toan-8.jpg', 5, ' Phải học đều hàng ngày tối thiểu 15 phút sau mỗi bài học được giảng trên lớp với chủ đề thích hợp để tiếp thu tốt hơn ', 'Phạm Toàn', '', '12', '56 bài giảng', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học Toán&nbsp;</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">lớp 8&nbsp;</span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">được tạo riêng dành cho các học sinh giữa cấp 2&nbsp;với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp 8 vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-17 20:54:16'),
(76, 52, 2, 'Khóa Học Hóa Lớp 8', 600000, 1, 'img/products/Thay Dong - Hoa 8.jpg', '/img/products/unnamed.png', '/img/products/bai-tap-hoa-hoc-lop-8.jpg', 2, '', 'Thầy Trần Nhật Đông', '', '30', '4 chuyên đề', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học&nbsp;</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Hóa học&nbsp;8</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">&nbsp;</span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">được tạo riêng dành cho các học sinh&nbsp;cấp 2,&nbsp;với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp 8&nbsp;vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-17 20:57:42'),
(77, 53, 2, 'Khóa Học Ngữ Văn Lớp 9', 300000, 1, 'img/products/VAN9.jpg', '/img/products/3JgsGimage (40) .jpg', '/img/products/imager_34082.jpg', 1, '', 'Hoàng Tố Nga', '21 Chuyên Đề', '12', '', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học&nbsp;</span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Ngữ Văn lớp 9&nbsp;</span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">được tạo riêng dành cho các học sinh cuối cấp 2&nbsp;với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp 11&nbsp;vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-17 21:01:23'),
(78, 53, 2, 'Khóa Học Tiếng Anh 9', 500000, 1, 'img/products/ANH 9.jpg', '/img/products/unnamed (1).jpg', '/img/products/bttn-ta-9.jpg', 1, '', 'Vũ Việt Tiến', '', '23', '', 'Tiếng  Việt,Tiếng Anh', 'Giao tiếp với người nước ngoài', '', '', 0, 0, 1, '<p><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Khóa học </span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">Tiếng anh 9 </span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">được tạo riêng dành cho các học sinh cuối cấp 2 với tổng hợp kiến thức và tổng hợp đề để giúp học sinh thích ứng được với môi trường thi cử cuối cấp. Bằng sự kết hợp giữa giáo dục tiên tiến và công nghệ hiện đại chúng tôi mang đến một sự trải nghiệm vô cùng thú vị cho các bạn học sinh lớp </span><span style=\"font-weight: 700; color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">9 </span><span style=\"color: rgb(27, 48, 67); font-family: Roboto, arial, Tahoma, sans-serif; font-size: 14px;\">vừa không tốn thời gian, giá thành rẻ hơn rất nhiều so với đi học gia sư mà vẫn đạt được hiệu quả cao trong quá trình tiếp thu kiến thức của con bạn.</span><br></p>', '2021-11-23 12:48:31'),
(79, 57, 1, 'Combo Toán Lý Hóa ', 2000000, 1, 'img/products/unnamed.gif', '/img/products/combo-sach-luyen-thi-khoi-A.png', '/img/products/Dot-pha-8-thi-thpt-quoc-gia-mon-hoa-hoc-500x554.jpg', 2, '', 'Thầy Cường$', 'Toán,Lý,Hóa', '20', 'Tối Thứ 4 và Tối Thứ 7, từ 18-21h', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(68, 68, 68); font-family: Roboto, sans-serif; font-size: 20px; text-align: justify;\">Điểm yếu của học sinh khi học các môn khối A là khó vận dụng kiến thức vào giải bài tập. Vì vậy, bộ sách đã trình bày kiến thức theo hình thức song song. Nghĩa là lý thuyết một bên, ví dụ minh họa một bên. Ngoài ra, sách còn có thêm hình ảnh minh họa giúp làm “mềm hóa” các kiến thức khô khan, khó nhớ. &nbsp;Các em đọc đến đâu sẽ hiểu ngay đến đó, biết sử dụng công thức giải bài ngay tức thì.</span><br></p>', '2021-11-17 21:17:33'),
(80, 58, 1, 'Combo Toán Lý Anh', 2500000, 1, 'img/products/bfbf6f7dd2c11a9f43d0.jpg', '/img/products/8f02a95216b5a0e80abb3fc5d2f59733.jpg', '/img/products/c71b7cf4563c2a825c5774dc020e9460.jpg', 2, '', 'Cô Thu Trang', '', '26', 'Tối Thứ 2 và Tối Thứ 6 hàng tuần, từ 18-21h (Có thể học lớp ghép là Tối Thứ 2 (18-21h) và Chiều CN (14-17h) ', '', '', '', 'Đậu Đại Học FUho', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, \"Helvetica Neue\", -apple-system, system-ui, BlinkMacSystemFont, \"Segoe UI\", Oxygen-Sans, sans-serif; font-size: 16px;\">Để có một bài thi đạt kết quả tốt thì tích lũy kiến thức không thôi chưa đủ, các em cần được rèn luyện bản lĩnh phòng thi, khả năng phân tích tổng hợp, đánh giá các câu hỏi trong đề thi thông qua luyện đề.</span><br></p>', '2021-11-17 21:55:23'),
(81, 61, 1, 'Combo Toán Văn Anh', 2000000, 1, 'img/products/d01-1b (1).png', '/img/products/khoi-a01-2.jpg', '/img/products/df3e77979928557476a9ecbb2e0998e2.jpg', 2, '', 'Cô Nguyễn Khánh Thư', '', '26', 'Chiều Thứ 4 và Chiều Thứ 5 hàng tuần, từ 14-17h (Có thể học lớp ghép là Chiều Thứ 5 (14-17h) và Tối Thứ 6 (18-21h) hoặc Chiều Thứ 5 (14-17h) và Chiều CN (14-17h) ', 'Tiếng  Việt,Tiếng Anh', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">KHÓA HỌC DÀNH CHO HỌC SINH THPT, HS 12,13 (THI LẠI ĐẠI HỌC) LUYỆN THI VÀO CÁC TRƯỜNG ĐẠI HỌC TOP ĐẦU CÔNG AN, KINH TẾ, NGOẠI THƯƠNG, NGOẠI GIAO, BÁCH KHOA, XÂY DỰNG, TÀI CHÍNH, THƯƠNG MẠI, CÔNG NGHIỆP, QUÂN ĐỘI, LUẬT, BÁO CHÍ, SƯ PHẠM… KHÓA HỌC GIÚP HỌC SINH NẮM VỮNG CÁC KIẾN THỨC TRỌNG TÂM, CƠ BẢN VÀ NĂNG CAO; SỬ DỤNG NHUẦN NHUYỄN CÁC KĨ NĂNG VÀ PHƯƠNG PHÁP LÀM BÀI; NÂNG CAO ĐIỂM SỐ TRONG CÁC BÀI THI THPTQG, THI ĐẠI HỌC...</span><br></p>', '2021-11-17 21:44:38'),
(82, 60, 1, 'Combo Văn Sử Địa', 1800000, 1, 'img/products/c00-1b.png', '/img/products/4c40c53032e5bbab8b70184b1099846d.jpg', '/img/products/354378733063.u547.d20161121.t142431.44800.jpg', 1, '', 'Trần Khánh Ly', '', '', 'Tối Thứ 2 và Tối Thứ 6 hàng tuần, từ 18-21h (Có thể học lớp ghép là Tối Thứ 2 (18-21h) và Chiều CN (14-17h)', 'Tiếng Việt', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">KHÓA HỌC DÀNH CHO HỌC SINH THPT, HS 12,13 (THI LẠI ĐẠI HỌC) LUYỆN THI VÀO CÁC TRƯỜNG ĐẠI HỌC TOP ĐẦU CÔNG AN, KINH TẾ, NGOẠI THƯƠNG, NGOẠI GIAO, BÁCH KHOA, XÂY DỰNG, TÀI CHÍNH, THƯƠNG MẠI, CÔNG NGHIỆP, QUÂN ĐỘI, LUẬT, BÁO CHÍ, SƯ PHẠM… KHÓA HỌC GIÚP HỌC SINH NẮM VỮNG CÁC KIẾN THỨC TRỌNG TÂM, CƠ BẢN VÀ NĂNG CAO; SỬ DỤNG NHUẦN NHUYỄN CÁC KĨ NĂNG VÀ PHƯƠNG PHÁP LÀM BÀI; NÂNG CAO ĐIỂM SỐ TRONG CÁC BÀI THI THPTQG, THI ĐẠI HỌC</span><br></p>', '2021-11-17 21:43:49'),
(83, 59, 1, 'Combo Toán Hóa Sinh', 2000000, 1, 'img/products/258207100_1298155270651622_1311054079509322265_n.jpg', 'img/products/1b4c6e8c44b124650ebab6cc17c36da4.jpg', 'img/products/5b2dff109d5b82db6aa00494c16880ce.jpg', 2, 'Các em hãy tiến hành học những công thức cũng như những phương pháp tính toán theo phương trình phản ứng, bảo toàn khối lượng, lập và giải được hệ phương trình, nguyên tố,... Đồng thời, tìm hiểu và học được những cách phương pháp tính toán nhanh như: ghép ẩn, trung bình.', 'Cô Vui ', '', '13', 'Tối Thứ 4 hàng tuần, từ 18-21h', 'Tiếng  Việt,Tiếng Anh', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(5, 5, 5); font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; white-space: pre-wrap; background-color: rgb(228, 230, 235);\">Khối B hiện đang là một trong những khối thi được nhiều thi sinh lựa chọn trong xét tuyển đại học bởi tính ứng dụng cao, dễ định hướng ngành nghề và tìm trường đào tạo.</span><br></p>', '2021-11-17 22:27:42'),
(84, 62, 1, 'Lớp Toán ĐH_1', 500000, 1, 'img/products/giasutoanhanoidh.jpg', '/img/products/tai lieu on thi tnthptdt-toan-tap1.jpg', '/img/products/images (1).jpg', 1, '', 'Lại Tiến Minh', '12 chuyên đề', '23', 'Tối Thứ 5 và Tối CN, từ 18-21h', 'Tiếng Việt', '', '', 'Nắm vững Kiến thức', 0, 0, 1, '<p><em style=\"color: rgb(33, 37, 41); font-family: TPBNeoSans, sans-serif;\">Đứng trước những cuộc thi lớn nhất cuộc đời việc tự ôn tập và tổng hợp lại các kiến thức cần nhớ sẽ khó khăn hơn nhiều. Đặc biệt đối với những bạn học sinh có thành tích học tập yếu kém, do đó việc tìm gia sư luyện thi Đại Học là vô cùng cần thiết. Hãy tìm một gia sư giỏi giúp con của bạn có thể ôn tập lại được các kiến thức một cách nhanh và đạt được kết quả tốt nhất.</em><br></p>', '2021-11-17 22:38:12'),
(85, 63, 1, 'Lớp Tiếng Anh ĐH_1', 500000, 1, 'img/products/256664526_876068646425963_5996789348335946170_n.png', '/img/products/257526588_319187436374035_2263745589991509527_n.png', '/img/products/256458511_392934359169997_410408877922386116_n.png', 2, '', 'Hương FIONA', ' 15 bộ đề Anh chuẩn sát nhất cấu trúc đề của Bộ và đề thi riêng trường TOP', '12', 'Tối Thứ 4 và Tối Thứ 7, từ 18-21h', 'Tiếng Anh', 'Giao tiếp với người nước ngoài', '', 'Nắm vững Kiến thức cơ bản của Tiếng anh', 0, 0, 1, '<p><span style=\"color: rgb(33, 37, 41); font-family: TPBNeoSans, sans-serif; font-size: 16px;\">Những năm gần đây, Tiếng Anh&nbsp;THPT có nhiều thay đổi, đặc biệt là hình thức thi chuyển từ tự luận sang trắc nghiệm. Vì vậy giải pháp tìm gia sư dạy giỏi sẽ giúp con bạn bổ sung được kiến thức, tổng hợp được những cách giải đơn giản, mẹo giải nhanh của Trắc nghiệm.</span><br></p>', '2021-11-17 22:43:18'),
(86, 64, 1, 'Lớp Ngữ Văn ĐH_1', 500000, 1, 'img/products/12-1v3a.png', '/img/products/on-luyen-thi-trac-nghiem-mon-ngu-van-2019.png', '/img/products/BoDeOnThiMonNguVanLuyenThiTotNghiepThptCaoDangVaDaiHoc.jpg', 2, '', '', '', '26', 'Tối Thứ 4 và Tối Thứ 7 hàng tuần, từ 18-21h.  - Kgiang: 18-21h Thứ 4 7/11 ', '', '', '', '', 0, 0, 1, '<p><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif;\">KH</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ÓA&nbsp;HỌC&nbsp;DÀNH&nbsp;CHO HỌC&nbsp;SINH L</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ỚP 12&nbsp;</span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; white-space: pre-wrap;\">GI</span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; white-space: pre-wrap;\">ÚP N</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ẮM VỮNG&nbsp;CÁC&nbsp;KIẾN THỨC TRỌNG&nbsp;TÂM, CƠ&nbsp;BẢN&nbsp;VÀ&nbsp;NĂNG CAO; SỬ&nbsp;DỤNG&nbsp;NHUẦN&nbsp;NHUYỄN&nbsp;CÁC&nbsp;KĨ&nbsp;NĂNG VÀ&nbsp;PHƯƠNG PHÁP LÀM&nbsp;BÀI;</span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; white-space: pre-wrap;\">&nbsp;NÂNG CAO ĐIỂM SỐ TRONG CÁC BÀI KIỂM TRA, THI CỬ, TẠO HỌC BẠ ĐẸP CHO NĂM H</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ỌC&nbsp;</span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; white-space: pre-wrap;\">LỚP 12. </span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif;\">KH</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ÓA&nbsp;HỌC C</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">ŨNG&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; text-align: justify;\">DÀNH&nbsp;CHO HỌC&nbsp;SINH THPT, HS 12,13 (THI LẠI&nbsp;ĐẠI&nbsp;HỌC)</span><span style=\"font-size: 14px; text-align: justify; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif;\">&nbsp;LUYỆN THI VÀO CÁC TRƯỜNG ĐẠI HỌC TOP ĐẦU CÔNG AN, KINH TẾ, NGOẠI THƯƠNG, NGOẠI GIAO, BÁCH KHOA, XÂY DỰNG, TÀI CHÍNH, THƯƠNG MẠI, CÔNG NGHIỆP, QUÂN ĐỘI, LUẬT, BÁO CHÍ, SƯ PHẠM</span><br></p>', '2021-11-17 22:47:23');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
