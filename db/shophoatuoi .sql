-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 11, 2022 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shophoatuoi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'nqk789@gmail.com', '27a6e9affa4d2c41659dc5614caeebc2', 'Khai'),
(2, 'nqk@gmail.com', 'c003f33ba1f257e51dacd8c7f0b513fd', 'Nguyen'),
(3, 'nqknopro1@gmail.com', 'NQKNOPRO1', 'Khai Nguyen'),
(4, 'nqk123@gmail.com', 'bd9b96921f96585366c161bc5e7cbcd4', 'Nguyen Khai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(4, 'Mách bạn cách chọn hoa sinh nhật bạn gái theo tính cách', 'Sinh nhật bạn gái là một trong những dịp đặc biệt để các chàng thể hiện tình cảm, sự quan tâm và trân trọng nhất đến người mà mình yêu thương. Bạn đang phân vân không biết chọn hoa gì phù hợp với tính cách cũng như sở thích của bạn gái? Hãy cùng Điện hoa 63 tỉnh thành tìm hiểu các xu thế chọn hoa tặng sinh nhật bạn gái cực chuẩn giúp bạn ghi điểm trong mắt nàng nhé!', 'Shop hoa nhận ship tận nơi', 3, 'sinhnhat1.png'),
(5, 'Hoa hồng Ecuador – loài hoa cao cấp khiến phái đẹp mê mẩn', 'Hoa hồng Ecuador – loài hoa hồng kiêu sa đại diện cho tình yêu đôi lứa đi qua chông gai vẫn sẽ nở rộ xinh xắn. Ngoài ra nó còn thể hiện điều ngọt ngào và lãng mạn trong cuộc sống. Cùng tìm hiểu về loài hoa hồng cao cấp Ecuador này bạn nhé!', 'Hoa hồng Ecuador có nguồn gốc ở đâu?\r\nHoa hồng Ecuador kiêu sa có nguồn gốc từ đất nước Ecuador ở phía Đông Nam Mỹ có khí hậu cận nhiệt đới thay đổi theo mùa. Thời tiết và khí hậu này lại thuận lợi cho cây hoa hồng ecudor này có thể phát triển một cách khỏe mạnh và tốt nhất.', 4, 'bohoa1.jpg'),
(6, 'Tìm hiểu về hoa hồng - Bà hoàng của các loài hoa', 'Gọi hoa hồng là bà hoàng của các loài hoa quả không hề sai khi hoa hồng luôn có mặt ở những dịp đặc biệt,là biểu tượng sắc đẹp. Ngắm nhìn những bông hoa hồng đa sắc màu khác nhau dưới sự chia sẻ của ĐIỆN HOA VIỆT để hiểu sâu và khám phá nhiều hơn về loài hoa được đại diện sắc đẹp này nhé!', 'Tìm hiểu về các loại hoa hồng\r\n\r\nĐặc điểm hình dáng bông hoa hồng\r\nĐây là loại cây bụi mọc leo hoặc mọc đứng, cây bụi thấp nhiều cánh. Đặc điểm nhận dạng là thân và cành hoa hồng có nhiều gai, gai cong.\r\n\r\nLá hoa hồng có dạng lá kép lông chim. Tùy vào từng loại hoa hồng mà lá của nó có màu xanh đậm hoặc nhạt dần, hình dáng rang cưa cũng sẽ khác.', 4, 'bohoa4.jpg'),
(7, '99 mẫu hoa chúc mừng sang trọng', 'Cửa hàng điện hoa chúc mừng sang trọng – Điện Hoa Việt đa dạng mẫu mã hoa chúc mừng từ những mẫu kệ hoa chúc mừng, lẵng hoa chúc mừng sang trọng đến những bó hoa chúc mừng sinh nhật người thân vô cùng ý nghĩa.Cùng shop chiêm ngưỡng những mẫu hoa chúc mừng đang hot nhất hiện nay nhé!', 'Mẫu hoa chúc mừng – Kệ hoa sang trọng\r\nKệ hoa chúc mừng khai trương mang đến những thông điệp về sự thành công, may mắn, công việc làm ăn phát đạt và sớm đạt được những bước tiến tương lai trong công việc kinh doanh. Mỗi một loài hoa góp mặt vào kệ hoa chúc mừng mang những vẻ đẹp khác nhau, nhưng khi kết hợp lại mang những thông điệp đầy ý nghĩa mạnh mẽ.', 5, '11572_vung-buoc.png'),
(8, '68 Mẫu hoa khai trương hot nhât hiện nay', 'Cửa hàng điện hoa chúc mừng sang trọng  đa dạng mẫu mã hoa chúc mừng từ những mẫu kệ hoa chúc mừng, lẵng hoa chúc mừng sang trọng đến những bó hoa chúc mừng sinh nhật người thân vô cùng ý nghĩa. Cùng Shop chiêm ngưỡng những mẫu hoa chúc mừng đang hot nhất hiện nay nhé!', 'Kệ hoa chúc mừng khai trương mang đến những thông điệp về sự thành công, may mắn, công việc làm ăn phát đạt và sớm đạt được những bước tiến tương lai trong công việc kinh doanh. Mỗi một loài hoa góp mặt vào kệ hoa chúc mừng mang những vẻ đẹp khác nhau, nhưng khi kết hợp lại mang những thông điệp đầy ý nghĩa mạnh mẽ.', 2, '11572_vung-buoc.png'),
(9, 'Ý NGHĨA HOA CHIA BUỒN MÀ BẠN CẦN BIẾT', 'Hoa chia buồn trong đám tang mang ý nghĩa nhân văn rất lớn, thay cho lời chia buồn gửi gắm đến thân quyến có người nhà đã mất cũng như là sự tiếc nuối về mất mát của gia đình. Vòng hoa đám tang bày tỏ tình cảm chân thành và sự tinh tế của người viếng.', 'Hoa chia buồn hay hoa tang lễ, hoa đám ma là những hình ảnh quen thuộc bắt gặp trong các dịp lễ tang dùng để phúng viếng, chia buồn cùng gia quyến có người thân rời xa cõi đời trần này. Đa phần ý nghĩa sâu sắc của hoa viếng tang lễ thể hiện sự đau xót, thương tiếc, chia buồn và an ủi nỗi đau khó phần nào nguôi ngoai của người thân phải tiễn biệt người đã khuất.', 1, '8396_deep-condolences.png'),
(10, 'HOA CHÚC MỪNG KHAI TRƯƠNG ĐẸP Ý NGHĨA NHẤT 2022', 'Mừng khai trương nên tặng hoa gì? Đặt lẵng, kệ, giỏ hoa khai trương bao nhiều tiền? Ghé thăm cửa hàng hoa khai trương , cam kết với giá rẻ, đẹp, chất lượng nhất.', 'Lẵng hoa khai trương đẹp đại diện cho lời chúc mừng, cầu chúc cho công việc của người được tặng ngày càng phát triển, gặp nhiều may mắn, thành công và phát đạt, là thứ không thể thiếu vào ngày khai trương – một dịp vô cùng quan trọng đánh dấu sự khởi đầu cho công việc làm ăn mới.', 2, 'khaitruong7.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(8, 'Hoa chúc mừng'),
(9, 'Hoa bó'),
(10, 'Hoa sinh nhật'),
(11, 'Hoa khai trương'),
(12, 'Hoa chia buồn'),
(14, 'Hoa tết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức hoa chia buồn'),
(2, 'Kiến thức hoa khai trương'),
(3, 'Kiến thức hoa sinh nhật'),
(4, 'Kiến thức hoa bó'),
(5, 'Kiến thức hoa chúc mừng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(1, 34, 1, '6361', 13, '2022-09-05 09:29:20', 0, 0),
(2, 26, 1, '5659', 13, '2022-09-05 10:27:04', 0, 0),
(3, 20, 1, '5659', 13, '2022-09-05 10:27:04', 0, 0),
(4, 33, 1, '5659', 13, '2022-09-05 10:27:04', 0, 0),
(5, 32, 1, '5659', 13, '2022-09-05 10:27:04', 0, 0),
(6, 51, 2, '4717', 14, '2022-09-11 11:57:27', 1, 2),
(7, 50, 3, '4717', 14, '2022-09-11 11:57:27', 1, 2),
(8, 44, 1, '6505', 13, '2022-09-05 18:08:20', 0, 0),
(9, 37, 1, '6505', 13, '2022-09-05 18:08:20', 0, 0),
(10, 35, 1, '6505', 13, '2022-09-05 18:08:20', 0, 0),
(11, 26, 1, '3656', 16, '2022-09-07 11:32:24', 0, 0),
(12, 51, 1, '3656', 16, '2022-09-07 11:32:24', 0, 0),
(13, 53, 1, '3656', 16, '2022-09-07 11:32:24', 0, 0),
(14, 32, 1, '3656', 16, '2022-09-07 11:32:24', 0, 0),
(15, 82, 1, '3479', 17, '2022-09-11 02:31:09', 0, 0),
(16, 35, 1, '3479', 17, '2022-09-11 02:31:09', 0, 0),
(17, 78, 1, '9767', 19, '2022-09-11 11:13:17', 0, 0),
(18, 79, 1, '9767', 19, '2022-09-11 11:13:17', 0, 0),
(19, 80, 1, '9767', 19, '2022-09-11 11:13:17', 0, 0),
(20, 85, 1, '9767', 19, '2022-09-11 11:13:17', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(1, 34, 1, '6361', '2022-09-05 09:29:20', 13, 0, 0),
(2, 26, 1, '5659', '2022-09-05 10:27:04', 13, 0, 0),
(3, 20, 1, '5659', '2022-09-05 10:27:04', 13, 0, 0),
(4, 33, 1, '5659', '2022-09-05 10:27:04', 13, 0, 0),
(5, 32, 1, '5659', '2022-09-05 10:27:04', 13, 0, 0),
(6, 51, 2, '4717', '2022-09-11 11:57:27', 14, 1, 2),
(7, 50, 3, '4717', '2022-09-11 11:57:27', 14, 1, 2),
(8, 44, 1, '6505', '2022-09-05 18:08:20', 13, 0, 0),
(9, 37, 1, '6505', '2022-09-05 18:08:20', 13, 0, 0),
(10, 35, 1, '6505', '2022-09-05 18:08:20', 13, 0, 0),
(11, 26, 1, '3656', '2022-09-07 11:32:24', 16, 0, 0),
(12, 51, 1, '3656', '2022-09-07 11:32:24', 16, 0, 0),
(13, 53, 1, '3656', '2022-09-07 11:32:24', 16, 0, 0),
(14, 32, 1, '3656', '2022-09-07 11:32:24', 16, 0, 0),
(15, 82, 1, '3479', '2022-09-11 02:31:09', 17, 0, 0),
(16, 35, 1, '3479', '2022-09-11 02:31:09', 17, 0, 0),
(17, 78, 1, '9767', '2022-09-11 11:13:17', 19, 0, 0),
(18, 79, 1, '9767', '2022-09-11 11:13:17', 19, 0, 0),
(19, 80, 1, '9767', '2022-09-11 11:13:17', 19, 0, 0),
(20, 85, 1, '9767', '2022-09-11 11:13:17', 19, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(31, 'Luxury', 62, '500000', 'khaitruong5.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(12, 'Khải', '0833319210', '14 Hoàng Ngọc Phách', 'Khách hàng muốn mua rất nhiều thứ', 'khai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(13, 'Nguyễn Khải', '0777409666', 'Quận 1 TP Hồ Chí Minh', 'không ghi chú', 'nqk1@gmail.com', 'd230c1545728ac8ac1f208dafa5b69a9', 0),
(14, 'Nguyễn Quang', '0909777999', 'Quận 2 TP Hồ Chí Minh', '', 'nqk2@gmail.com', '58adcd4fb31cd23320186a707a468293', 0),
(15, 'Quang Khai', '0909789888', 'Quận 3, TP Đà Nẵng', '', 'nqk1@gmail.com', '58adcd4fb31cd23320186a707a468293', 0),
(16, 'SHOP HOA TƯƠI MỸ DUYÊN', '0703555999', 'Quận 1 Tp. Hồ Chí Minh', 'khong', 'nqk@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(17, 'Hack Não Ngữ Pháp', '012377777', 'Vinh Hưng', 'hoa tuoi', 'shophoavaquatangnqk@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(18, 'Nguyễn Khải', '010101021929', 'Quận 1 TP Hồ Chí Minh', '', 'nqkpro5@gmail.com', '786b62c53db57ef3182579b9ea56cf02', 0),
(19, 'Hack Não Ngữ Pháp', '0909789111', 'Vinh Hưng', '', 'nqk1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(19, 4, 'Hoa Bó', 'Hãy đến với shop hoa Mỹ Duyên để lựa đc những sản phẩm đẹp nhất', 'Hoa cẩm tú cầu được bó xinh xinh', '250000', '220000', 0, 0, 20, 'Hoacamtucau.jpg'),
(20, 4, 'Bó hướng dương', 'Hãy alo và gọi cho shop hoa Mỹ Duyên', 'Hoa hướng dương rợp nắng', '250000', '240000', 0, 0, 25, 'Hoahuongduong.jpg'),
(21, 4, 'Bó hoa thạch thảo', 'Sản phẩm bao gồm:\r\nHoa thạch thảo tím: 12\r\nĐinh lăng : 10\r\nSản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)\r\n\r\nHoa giao nhanh 60 phút Hồ Chí Minh và Hà Nội', 'Giá đã bao gồm 8% VAT\r\n\r\n\"Em vẫn thế vẫn là hoa thạch thảo / Dẫu cuộc đời gian khó vẫn vươn lên / Chẳng chùn chân chẳng bỏ cuộc ươn hèn / Hoa tươi nở tràn lan đầy sức sống\". Bó hoa giản đơn như chính tên gọi của nó vậy \"Thạch thảo\" : nhỏ nhắn, xinh xắn nhưng tràn đầy sức sống. Đây sẽ là món quà dễ thương cho mẹ, cho chị em gái, cho cô bạn thân và cho nửa kia của bạn.', '300000', '300000', 0, 0, 25, 'Hoathachthao.jpg'),
(24, 4, 'Bó hồng siêu lớn', 'Sản phẩm bao gồm:\r\nHồng đỏ sa : 1000', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '900000', '850000', 0, 0, 15, 'bohoa1.jpg'),
(25, 4, 'Hồng tình nhân', 'Sản phẩm bao gồm:\r\nCẩm chướng chùm hồng nhạt : 10\r\nHoa baby : 1\r\nHồng da: 100', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '800000', '750000', 0, 0, 20, 'bohoa2.jpg'),
(26, 5, 'Xuân Thịnh Vượng', 'Sản phẩm bao gồm:\r\nHồ điệp tím: 70\r\nHồ điệp vàng: 30', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '20000000', '19500000', 0, 0, 15, 'xuanthinhvuong.jpg'),
(27, 5, 'Hoa chúc mừng', '*Lưu ý: Sản phẩm có sử dụng một số hoa hồng xếp cánh để tạo độ nở to đẹp. Quý khách nên cân nhắc trước khi đặt hàng.\r\nSản phẩm bao gồm:\r\nHồng Coral Reef NK: 60\r\nLá bạc : 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '7000000', '6800000', 0, 0, 15, 'premium.jpg'),
(28, 5, 'Luxury', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '*Lưu ý: Sản phẩm có sử dụng một số hoa hồng xếp cánh để tạo độ nở to đẹp. Quý khách nên cân nhắc trước khi đặt hàng.\r\nSản phẩm bao gồm:\r\nHồng ecuador explorer NK: 60\r\nLá bạc : 5', '750000', '730000', 0, 0, 5, 'luxury.jpg'),
(29, 5, 'Premiumvase', '*Lưu ý: Sản phẩm có nguyên liệu và thiết kế đặc biệt, Quý khách vui lòng đặt trước 01 ngày.\r\nSản phẩm bao gồm:\r\nCẩm chướng rainbow NK: 20\r\nCúc mẫu đơn xanh dương NK: 15\r\nCúc mẫu đơn xanh ngọc NK: 20\r\nHoa baby : 1', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '600000', '550000', 0, 0, 15, 'premiumvase.jpg'),
(31, 2, 'Đại cát đại lợi', 'Sản phẩm bao gồm:\r\nCẩm chướng đơn hồng: 15\r\nCẩm chướng đơn viền tím : 10\r\nCúc ping pong hồng: 27\r\nHồng da: 85\r\nHồng da cồ: 20\r\nHồng sen cồ: 90\r\nHồng trắng nhí: 10\r\nLá bạc : 8\r\nLily hồng: 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)\r\n\r\nLƯU Ý\r\nSản phẩm bạn đang chọn là sản phẩm được thiết kế đặc biệt!', '2000000', '1950000', 0, 0, 2, 'daicatdailoi.jpg'),
(32, 2, 'Vững bước', 'Với mỗi chúng ta thì thành công trong sự nghiệp của những người thân yêu luôn là niềm hạnh phúc trong ta. Sự nghiệp thăng tiến, thành công viên mãn, trường tồn mãi mãi đó chính là cảm hứng để làm nên kệ hoa này. Thích hợp tặng dịp khai trương, kỉ niệm thành lập công ty....', 'LƯU Ý\r\nSản phẩm bạn đang chọn là sản phẩm được thiết kế đặc biệt!', '2200000', '2100000', 0, 0, 5, '11572_vung-buoc.png'),
(33, 2, 'Nỗ lực tiến bước', 'Sản phẩm bao gồm:\r\nHoa hạnh phúc : 15\r\nHồng đỏ sa : 50\r\nHướng dương : 10\r\nLá trầu bà : 10\r\nLá đuôi chồn : 10\r\nLan bò cạp : 15\r\nLan Moka đỏ: 10\r\nMôn xanh: 15\r\nTrúc bách hợp : 10\r\nĐồng tiền vàng : 40', 'Các lễ kỉ niệm, khai trương, khánh thành ...sẽ càng thành công vang dội hơn nữa với những kệ hoa đầy màu sắc của sự may mắn. Hoa tươi không chỉ mang đến một không gian rực rỡ cho buổi lễ mà còn khiến các sự kiện thêm phần sinh động hơn.', '2500000', '2300000', 0, 0, 15, 'noluctienbuoc.png'),
(34, 5, 'Công ty chúc mừng', '\r\n*Lưu ý:\r\n- Kệ bao gồm banner chữ in như hình (Quý khách hàng có thể thay đổi nội dung banner theo ý muốn)\r\n- Quý khách vui lòng đặt hoa trước 01 ngày do kệ có thiết kế đặc biệt.\r\nSản phẩm bao gồm:\r\nCát tường hồng viền: 3\r\nHồng đỏ sa : 40\r\nLan Moka đỏ: 15\r\nĐồng tiền hồng nhí : 8\r\nĐồng tiền đỏ : 15', 'Kệ hoa với tone đỏ rực rỡ cùng kiểu dáng hiện đại thật sự nổi bật so với các kệ hoa truyền thống. Kệ mang ý nghĩa về một lời chúc tấn tài tấn lộc. Thích hợp tặng trong dịp chúc mừng, khai trương, kỉ niệm...', '2500000', '2300000', 0, 0, 5, 'ctchucmung.png'),
(35, 3, 'Đồng hành', 'Sản phẩm bao gồm:\r\nHoa baby : 1\r\nHoa Cúc Nút Xanh : 5\r\nHồng đỏ ớt : 6\r\nHướng dương : 3\r\nMõm sói vàng: 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '700000', '650000', 0, 0, 25, 'donghanh.jpg'),
(36, 3, 'Tình đầu thơ ngây', 'Sản phẩm bao gồm:\r\nCẩm chướng chùm hồng viền: 3\r\nCúc calimero hồng : 3\r\nHoa Sao tím: 1\r\nPink OHara: 1', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '250000', '220000', 0, 0, 25, 'tinhdauthongay.jpg'),
(37, 3, 'Hoa sinh nhật', 'Sản phẩm bao gồm:\r\nHồng sen mới: 40\r\nLá bạc : 4', 'Hộp hoa hồng với sắc hồng tươi tắn, ngọt ngào kết hợp cùng với lá bạc xanh, tạo nên một tổng thể vô cùng hài hoà mà không kém phần sang trọng. Hộp hoa phù hợp tặng cho người yêu, bạn bè, đối tác, khách hàng là nữ. Chắc chắn đây sẽ là món quà vô cùng bất ngờ dành cho người bạn đang quan tâm đấy.', '500000', '450000', 0, 0, 15, 'hongphan1.jpg'),
(38, 3, 'Trong xanh', 'Sản phẩm bao gồm:\r\nCẩm chướng chùm trắng: 7\r\nCúc mẫu đơn xanh ngọc NK: 2\r\nGreen wicky : 5\r\nHoa baby : 1\r\nHoa Cúc Nút Xanh : 5\r\nHồng trắng cồ: 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '800000', '750000', 0, 0, 0, 'trongxanh.jpg'),
(39, 3, 'Sinh nhật', 'Sản phẩm bao gồm:\r\nCúc calimero hồng : 10\r\nCúc mẫu đơn hồng nhạt DL : 5\r\nHoa baby : 2\r\nMõm sói song hỷ : 12\r\nPink OHara: 16', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '500000', '450000', 0, 0, 20, 'sinhnhat.jpg'),
(40, 1, 'An yên', 'Sản phẩm bao gồm:\r\nLan hồ điệp trắng : 30', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '3000000', '2800000', 0, 0, 15, 'anyen.jpg'),
(41, 1, 'Hoa chia buồn', 'Sản phẩm bao gồm:\r\nCẩm chướng đơn tím : 60\r\nCát tường hồng viền: 10\r\nHồ điệp cắt cành hồng: 2\r\nHoa Sao tím: 3\r\nHồng môn tím: 8\r\nHồng tím cà: 70\r\nKỳ lân A: 15', 'Sinh ly tử biệt đều là những khoảnh khắc phải đi qua của một đời người. Khi một người rời bỏ thế gian này sẽ để lại vô vàn sự đau buồn và niềm thương tiếc trong lòng những người đang còn ở lại. Đến tiễn biệt người đã khuất, để thể hiện sự tôn kính và an ủi người thân của họ, nhiều người sẽ chọn gửi gắm những lời động viên chia sẻ của bản thân lên những kệ hoa viếng, vòng hoa chia buồn.', '2500000', '2200000', 0, 0, 15, 'timtim.jpg'),
(42, 1, 'Kiếp vô thường', 'Sản phẩm bao gồm:\r\nCát tường trắng: 10\r\nCúc mai xanh : 5\r\nCúc trắng : 15\r\nHoa baby : 2\r\nHồng da: 22\r\nHồng trắng nhí: 30\r\nĐồng tiền trắng : 20', 'Cuộc sống sinh lão bệnh tử là điều không ai có thể tránh khỏi. Tất cả rồi sẽ trở về với cát bụi mọi thứ đều vô thường. Kệ hoa như sự chia sẽ với nỗi buồn mất mát khi người thân ra đi. Mong người ra đi được thanh thản không còn vương vấn bụi trần.', '2500000', '2200000', 0, 0, 15, 'kiepvothuong.jpg'),
(43, 1, 'Hoa kính viếng', 'Sản phẩm bao gồm:\r\nCúc calimero hồng : 15\r\nCúc lưới tím : 10\r\nCúc trắng : 15\r\nHồng tím cà: 20\r\nHồng trắng cồ: 20\r\nLan Moka tím: 15\r\nLan thái trắng: 5', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '2500000', '2200000', 0, 0, 15, 'kinhvieng.png'),
(44, 6, 'Lan hồ điệp', 'Sản phẩm bao gồm:\r\nHồ điệp tím: 1\r\nHồ điệp trắng: 1', 'Chan hòa gồm 2 cành lan hồ điệp: trắng và tím - một tinh khôi, sang trọng; một lãng mạn, quý phái. Mẫu hoa chính là thông điệp may mắn, thịnh vượng, tài lộc cho người nhận. Đây sẽ là món quà tuyệt vời cho những người thân yêu của bạn.', '300000', '250000', 0, 0, 15, 'hoatet1.jpg'),
(45, 6, 'Tết phát tài', 'Sản phẩm bao gồm:\r\nDương xỉ pháp : 14\r\nLan Moka vàng nến: 55', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '850000', '800000', 0, 0, 5, 'hoatet2.jpg'),
(46, 6, 'Tết phúc lộc', 'Sản phẩm bao gồm:\r\nDương xỉ pháp : 14\r\nLan Moka đỏ: 55', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '990000', '900000', 0, 0, 2, 'hoatet3.jpg'),
(49, 6, 'Cây mai vàng', 'Cây mai vàng cổ thụ khoảng 200 năm tuổi này có chiều cao 5 m, bề hoành gốc 1,4 m, tán rộng 3,5 m xòe đều', '1. Tặng miễn phí banner, thiệp (trị giá 20.000đ)\r\n2. Giảm ngay 20.000đ khi Bạn tạo đơn hàng Online\r\n3. Giảm tiếp 3% cho đơn hàng Bạn tạo ONLINE lần thứ 2, 5% cho đơn hàng Bạn tạo ONLINE lần 6 và 10% cho đơn hàng tạo ONLINE thứ 12 (Chỉ áp dụng tại Tp. HCM, Ko áp dụng các dịp lễ)\r\n4. Giao gấp trong 2h\r\n5. Cam kết hoa tươi trên 3 ngày', '990000', '950000', 0, 0, 2, 'hoatet4.png'),
(50, 6, 'Chậu mai vàng', '1. Tặng miễn phí banner, thiệp (trị giá 20.000đ)\r\n2. Giảm ngay 20.000đ khi Bạn tạo đơn hàng Online\r\n3. Giảm tiếp 3% cho đơn hàng Bạn tạo ONLINE lần thứ 2, 5% cho đơn hàng Bạn tạo ONLINE lần 6 và 10% cho đơn hàng tạo ONLINE thứ 12 (Chỉ áp dụng tại Tp. HCM, Ko áp dụng các dịp lễ)\r\n4. Giao gấp trong 2h\r\n5. Cam kết hoa tươi trên 3 ngày', 'Mai vàng là loài thực vật có hoa thuộc chi Mai, họ Mai. Cây này được trồng làm cảnh phổ biến ở miền Nam Việt Nam vào dịp Tết Nguyên Đán', '900000', '800000', 0, 0, 10, 'hoatet5.png'),
(51, 6, 'Chậu mai tứ quý', '1. Tặng miễn phí banner, thiệp (trị giá 20.000đ)\r\n2. Giảm ngay 20.000đ khi Bạn tạo đơn hàng Online\r\n3. Giảm tiếp 3% cho đơn hàng Bạn tạo ONLINE lần thứ 2, 5% cho đơn hàng Bạn tạo ONLINE lần 6 và 10% cho đơn hàng tạo ONLINE thứ 12 (Chỉ áp dụng tại Tp. HCM, Ko áp dụng các dịp lễ)\r\n4. Giao gấp trong 2h\r\n5. Cam kết hoa tươi trên 3 ngày', 'Mai vàng là loài thực vật có hoa thuộc chi Mai, họ Mai. Cây này được trồng làm cảnh phổ biến ở miền Nam Việt Nam vào dịp Tết Nguyên Đán', '90000', '800000', 0, 0, 2, 'hoatet6.png'),
(52, 6, 'Cây đào', '1. Tặng miễn phí banner, thiệp (trị giá 20.000đ)\r\n2. Giảm ngay 20.000đ khi Bạn tạo đơn hàng Online\r\n3. Giảm tiếp 3% cho đơn hàng Bạn tạo ONLINE lần thứ 2, 5% cho đơn hàng Bạn tạo ONLINE lần 6 và 10% cho đơn hàng tạo ONLINE thứ 12 (Chỉ áp dụng tại Tp. HCM, Ko áp dụng các dịp lễ)\r\n4. Giao gấp trong 2h\r\n5. Cam kết hoa tươi trên 3 ngày', 'Đào Tết là loại đào cảnh được trồng và chăm sóc tỉ mỉ trong nhiều năm trước khi chuyển cây vào chậu để chưng trong những ngày Tết. Là cây cảnh có giá trị cao về ...\r\n\r\n', '900000', '800000', 0, 0, 5, 'caydao.png'),
(53, 3, 'Hoa sinh nhật', '1. Tặng miễn phí banner, thiệp (trị giá 20.000đ)\r\n2. Giảm ngay 20.000đ khi Bạn tạo đơn hàng Online\r\n3. Giảm tiếp 3% cho đơn hàng Bạn tạo ONLINE lần thứ 2, 5% cho đơn hàng Bạn tạo ONLINE lần 6 và 10% cho đơn hàng tạo ONLINE thứ 12 (Chỉ áp dụng tại Tp. HCM, Ko áp dụng các dịp lễ)\r\n4. Giao gấp trong 2h\r\n5. Cam kết hoa tươi trên 3 ngày', 'Với một mẫu hoa sinh nhật đôi khi không có giá trị cao nhưng nó sẽ mang đến cho người nhận nhiều cung bậc cảm xúc khác nhau. gio-hoa-sinh-nhat Đặt mua hoa đẹp ..', '250000', '220000', 0, 0, 20, 'bohoa1.jpg'),
(54, 10, 'Sinh nhật 1', 'Sản phẩm bao gồm:\r\nCẩm chướng chùm hồng viền: 3\r\nCúc calimero hồng : 3\r\nHoa Sao tím: 1\r\nPink OHara: 1', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '220000', '200000', 0, 0, 20, 'sinhnhat1.png'),
(55, 9, 'Hoa bó', 'chi tieest liên hệ shop Hoa Mỹ Duyên', 'Hoa sinh nhật trao gui yeey thuong', '220000', '200000', 0, 0, 15, 'sinhnhat2.png'),
(56, 10, 'Sinh nhật 2', '*Lưu ý: Sản phẩm có sử dụng một số hoa hồng xếp cánh để tạo độ nở to đẹp. Quý khách nên cân nhắc trước khi đặt hàng.\r\nSản phẩm bao gồm:\r\nHồng Coral Reef NK: 60\r\nLá bạc : 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '500000', '450000', 0, 0, 5, 'sinhnhat3.png'),
(57, 10, 'Sinh nhật 4', '*Lưu ý: Sản phẩm có sử dụng một số hoa hồng xếp cánh để tạo độ nở to đẹp. Quý khách nên cân nhắc trước khi đặt hàng.\r\nSản phẩm bao gồm:\r\nHồng ecuador explorer NK: 60\r\nLá bạc : 5', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '600000', '550000', 0, 0, 5, 'sinhnhat4.png'),
(58, 10, 'Sinh nhật 5', 'Sản phẩm bao gồm:\r\nHồ điệp trắng: 10', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '500000', '450000', 0, 0, 15, 'sinhnhat5.png'),
(59, 11, 'Tấn tài tấn lộc', 'Sản phẩm bao gồm:\r\nHồ điệp tím: 70\r\nHồ điệp vàng: 30', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '900000', '850000', 0, 0, 10, 'khaitruong1.png'),
(60, 11, 'Hoa khai trương', 'Với mỗi chúng ta thì thành công trong sự nghiệp của những người thân yêu luôn là niềm hạnh phúc trong ta. Sự nghiệp thăng tiến, thành công viên mãn, trường tồn mãi mãi đó chính là cảm hứng để làm nên kệ hoa này. Thích hợp tặng dịp khai trương, kỉ niệm thành lập công ty....', 'Sản phẩm bạn đang chọn là sản phẩm được thiết kế đặc biệt!', '800000', '750000', 0, 0, 5, 'khaitruong2.png'),
(61, 11, 'Khởi sắc thành công', 'Sản phẩm bao gồm:\r\nCẩm chướng đơn viền cam : 20\r\nCúc Rossi cam orange: 10\r\nHồng da: 75\r\nHồng vàng mật ong : 30\r\nLá trầu bà : 3\r\nLá trúc nâu: 10\r\nLan vũ nữ: 20\r\nMôn xanh: 11\r\nTrúc bách hợp : 10', 'Được xem là màu may mắn, màu vàng rất thích hợp cho hỷ sự, lễ hội. Nó còn tượng trưng cho năng lượng Hỏa và sức mạnh... Kệ hoa chúc mừng được chúng tôi đầu tư một cách nghiêm túc vì chúng tôi luôn hiểu rằng đó là uy tín của khách hàng, của cả một doanh nghiệp. Vì vậy, chúng tôi luôn nhận được sự tin tưởng từ khách hàng, đặc biệt là các doanh nghiệp tin yêu và đặt thiết kế hoa chúc mừng phục vụ các dịp khai trương, khánh thành, tổ chức sự kiện và trong các dịp lễ quan trọng khác.', '1200000', '1100000', 0, 0, 5, 'khaitruong3.png'),
(62, 11, 'Luxury', 'Sản phẩm bao gồm:\r\nCát tường trắng: 4\r\nCúc mẫu đơn xanh dương NK: 10\r\nHồng vàng ánh trăng : 10\r\nLá phụ khác: 10\r\nLan vũ nữ: 40', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '500000', '450000', 0, 0, 0, 'khaitruong5.jpg'),
(63, 11, 'Sự nghiệp tấn tới', 'Sản phẩm bao gồm:\r\nHồ điệp trắng: 2\r\nHoa hạnh phúc : 10\r\nHoa thiên điểu : 10\r\nHồng cam lửa: 15\r\nHồng da: 25\r\nLan thái trắng: 12\r\nMôn đỏ: 18\r\nĐồng tiền hồng nhí : 20', 'Không biết đã bao nhiêu lần con người buông tay từ bỏ khi mà chỉ có một chút nỗ lực, một chút kiên trì nữa thôi là ta sẽ đạt được thành công. Thành công và hạnh phúc nằm trong tay bạn. Quyết tâm hạnh phúc và niềm vui sẽ đi cùng bạn để hình thành đạo quân bất khả chiến bại chống lại nghịch cảnh sẽ đưa sự nghiệp của ta tấn tới vượt qua gian khó đến ngày vinh quang.', '1500000', '1200000', 0, 0, 15, 'khaitruong6.png'),
(64, 11, 'Trường tồn', 'Sản phẩm bao gồm:\r\nCẩm chướng đơn cam : 18\r\nCẩm chướng đơn xanh bơ : 12\r\nHoa Cúc Nút Xanh : 5\r\nHồng trứng gà : 26\r\nHồng vàng ánh trăng : 20\r\nHướng dương : 7\r\nLan Moka vàng nến: 10', 'Tạo nên dấu ấn của mình trên thế giới này rất khó. Nếu dễ thì bất cứ ai cũng đã làm rồi. Nhưng nó không dễ. Nó đòi hỏi sự kiên nhẫn, bổn phận, và nó đi cùng nhiều thất bại dọc đường. Và khi bạn đã có những thành công nhất định thì phải cố gắng và nỗ lực hơn nữa để cho sự thành công bền vững và trường tồn.', '1600000', '1400000', 0, 0, 20, 'khaitruong7.png'),
(65, 11, 'Hoa khai trương', 'Sản phẩm bao gồm:\r\nHồng đỏ ớt : 30\r\nLan bò cạp : 10\r\nĐồng tiền đỏ : 30', 'Kệ hoa với tone màu đỏ rực rỡ, kiểu dáng hiện đại, trẻ trung thật sự nổi bật hơn so với các kệ hoa truyền thống. Kệ hoa mang ý nghĩa về một lời chúc tấn tài tấn lộc. Thích hợp tặng trong dịp chúc mừng, khai trương, kỉ niệm.', '800000', '750000', 0, 0, 15, 'khaitruong8.png'),
(66, 11, 'Hoa Khai Trương', 'Sản phẩm bao gồm:\r\nHồng da: 10\r\nHồng trứng gà : 20\r\nHồng đỏ ớt : 12\r\nLan Moka vàng nến: 10\r\nMõm sói song hỷ : 15', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '2500000', '2200000', 0, 0, 0, 'khaitruong9.png'),
(67, 8, 'Hoa chúc tết', 'Sản phẩm bao gồm:\r\nHồ điệp tím: 70\r\nHồ điệp vàng: 30', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '1500000', '1200000', 0, 0, 15, 'chucmung1.png'),
(68, 8, 'Hoa chúc mừng', 'Sản phẩm bao gồm:\r\nCúc calimero trắng: 8\r\nHoa baby : 1\r\nHồng đỏ Ecuador DL: 8\r\nLá bạc : 1\r\nLá trúc nâu: 2\r\nLan Moka tím: 7\r\nPink OHara: 20', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '300000', '200000', 0, 0, 15, 'chucmung2.png'),
(69, 8, 'Công ty chúc mừng', 'Sản phẩm bao gồm:\r\nCát tường hồng viền: 3\r\nHồng đỏ sa : 40\r\nLan Moka đỏ: 15\r\nĐồng tiền hồng nhí : 8\r\nĐồng tiền đỏ : 15', 'Kệ hoa với tone đỏ rực rỡ cùng kiểu dáng hiện đại thật sự nổi bật so với các kệ hoa truyền thống. Kệ mang ý nghĩa về một lời chúc tấn tài tấn lộc. Thích hợp tặng trong dịp chúc mừng, khai trương, kỉ niệm...', '3500000', '2900000', 0, 0, 9, 'chucmung5.png'),
(70, 12, 'Hoa kính viếng', 'Sản phẩm bao gồm:\r\nCúc mai hồng: 15\r\nCúc trắng : 15', 'Chuyện nhân gian vui buồn đều có. Kiếp nhân sinh như gió thoáng qua. Sinh ra trong một kiếp con người. Sớm ở tối về là lẽ thường thôi…Với vòng hoa chia buồn này chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ sự mất mát cùng gia đình họ.', '1500000', '1200000', 0, 0, 15, '8396_deep-condolences.png'),
(71, 12, 'Hoa tang lễ', 'Sản phẩm bao gồm:\r\nCúc mai hồng: 15\r\nCúc trắng : 15', 'Chuyện nhân gian vui buồn đều có. Kiếp nhân sinh như gió thoáng qua. Sinh ra trong một kiếp con người. Sớm ở tối về là lẽ thường thôi…Tuy người đã xa, nhưng dòng kí ức vẫn còn đó và sẽ không bao giờ phai đi trong tâm trí của người ở lại. Với vòng hoa chia buồn này chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ sự mất mát cùng gia đình họ.', '1500000', '1100000', 0, 0, 5, '11852_dong-ki-uc.jpg'),
(72, 12, 'Hoa kính viếng', 'Sản phẩm bao gồm:\r\nCúc trắng : 25\r\nHồng trắng cồ: 15\r\nLan thái trắng: 5\r\nMôn xanh: 5\r\nĐồng tiền trắng : 12', 'Sinh ly tử biệt đều là những khoảnh khắc phải đi qua của một đời người. Khi một người rời bỏ thế gian này sẽ để lại vô vàn sự đau buồn và niềm thương tiếc trong lòng những người đang còn ở lại. Đến tiễn biệt người đã khuất, để thể hiện sự tôn kính và an ủi người thân của họ, nhiều người sẽ chọn gửi gắm những lời động viên chia sẻ của bản thân lên những kệ hoa viếng, vòng hoa chia buồn.', '1500000', '1100000', 0, 0, 15, '12488_thenh-thang.jpg'),
(73, 12, 'Hoa chia buồn', 'Sản phẩm bao gồm:\r\nCúc calimero trắng: 5\r\nCúc trắng : 25\r\nHoa baby : 1\r\nHồng môn tím: 10\r\nLan thái trắng: 10\r\nWhite Ohara: 5', 'Sinh ly tử biệt đều là những khoảnh khắc phải đi qua của một đời người. Khi một người rời bỏ thế gian này sẽ để lại vô vàn sự đau buồn và niềm thương tiếc trong lòng những người đang còn ở lại. Đến tiễn biệt người đã khuất, để thể hiện sự tôn kính và an ủi người thân của họ, nhiều người sẽ chọn gửi gắm những lời động viên chia sẻ của bản thân lên những kệ hoa viếng, vòng hoa chia buồn.', '1900000', '1500000', 0, 0, 0, '12489_nguyen-cau.jpg'),
(74, 12, 'Hoa chia buồn', 'Sản phẩm bao gồm:\r\nCúc calimero trắng: 5\r\nCúc trắng : 25\r\nHoa baby : 1\r\nHồng môn tím: 10\r\nLan thái trắng: 10\r\nWhite Ohara: 5', 'Sinh ly tử biệt đều là những khoảnh khắc phải đi qua của một đời người. Khi một người rời bỏ thế gian này sẽ để lại vô vàn sự đau buồn và niềm thương tiếc trong lòng những người đang còn ở lại. Đến tiễn biệt người đã khuất, để thể hiện sự tôn kính và an ủi người thân của họ, nhiều người sẽ chọn gửi gắm những lời động viên chia sẻ của bản thân lên những kệ hoa viếng, vòng hoa chia buồn.', '800000', '650000', 0, 0, 5, '12501_uoc-nguyen.jpg'),
(75, 12, 'Hoa chia buồn', 'Sản phẩm bao gồm:\r\nCẩm chướng đơn tím : 60\r\nCát tường hồng viền: 10\r\nHồ điệp cắt cành hồng: 2\r\nHoa Sao tím: 3\r\nHồng môn tím: 8\r\nHồng tím cà: 70\r\nKỳ lân A: 15', 'Sinh ly tử biệt đều là những khoảnh khắc phải đi qua của một đời người. Khi một người rời bỏ thế gian này sẽ để lại vô vàn sự đau buồn và niềm thương tiếc trong lòng những người đang còn ở lại. Đến tiễn biệt người đã khuất, để thể hiện sự tôn kính và an ủi người thân của họ, nhiều người sẽ chọn gửi gắm những lời động viên chia sẻ của bản thân lên những kệ hoa viếng, vòng hoa chia buồn.', '2600000', '2200000', 0, 0, 5, 'timtim.jpg'),
(76, 9, 'Bó hoa cực lớn', 'Sản phẩm bao gồm:\r\nHồng đỏ sa : 1000', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '800000', '600000', 0, 0, 15, 'bohoa1.jpg'),
(77, 9, 'Tình đầu ngây thơ', 'Hoa bó có nhiều kích cỡ tuỳ khách lựa chọn', 'Hoa bó có nhiều kích cỡ tuỳ khách lựa chọn', '200000', '150000', 0, 0, 15, '13262_tinh-dau-tho-ngay.jpg'),
(78, 10, 'Bó hoa', 'Sản phẩm bao gồm:\r\nCẩm chướng chùm hồng nhạt : 10\r\nHoa baby : 1\r\nHồng da: 100', 'Sản phẩm thực nhận có thể khác với hình đại diện trên website (đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)', '500000', '450000', 0, 0, 15, 'bohoa2.jpg'),
(79, 10, 'Hoa chúc mừng', 'Chi tiết hoa gồm hoa hướng dương,...', 'Hoa chúc mừng phù hợp cho bạn tặng sinh nhật hay tặng người yêu ...', '200000', '150000', 0, 0, 20, 'donghanh.jpg'),
(80, 9, 'Hoa bó', 'ưetert', 'ăefwef', '600000', '500000', 0, 0, 15, 'bohoa3.jpg'),
(81, 9, 'Hoa bó', 'ưetert', 'ăefwef', '600000', '500000', 0, 0, 15, 'bohoa3.jpg'),
(82, 14, 'Hoa tết', 'grtrt', 'sseewf', '500000', '450000', 0, 0, 5, 'hoatet1.jpg'),
(83, 14, 'Cây mai vàng', 'Shop Hoa Mỹ Duyên nhận giao hàng tận nơi', 'Mai vàng biểu tượng ngày tết', '900000', '800000', 0, 0, 12, 'hoatet4.png'),
(84, 14, 'Hoa Tết', 'Hoa tết biểu tượng ngày tết', 'Hoa tết biểu tượng ngày tết', '750000', '650000', 0, 0, 2, 'hoatet3.jpg'),
(85, 14, 'Hoa tết 5', '+Miễn phí băng rôn\r\n+ Nhận ship tận nơi\r\n+ Tư vấn thiết kế hoa', '+ Vận chuyển đơn giản\r\n+ bán hàng chất lương cao\r\n+ phục vụ trên toàn quốc', '250000', '220000', 0, 0, 2, 'bohoa1.jpg'),
(86, 14, 'Hoa tết 6', '+Miễn phí băng rôn\r\n+ Nhận ship tận nơi\r\n+ Tư vấn thiết kế hoa', '+ Vận chuyển đơn giản\r\n+ bán hàng chất lương cao\r\n+ phục vụ trên toàn quốc', '220000', '200000', 0, 0, 10, 'xuanthinhvuong.jpg'),
(87, 14, 'Hoa tết 7', '+Miễn phí băng rôn\r\n+ Nhận ship tận nơi\r\n+ Tư vấn thiết kế hoa', '+ Vận chuyển đơn giản\r\n+ bán hàng chất lương cao\r\n+ phục vụ trên toàn quốc', '150000', '120000', 0, 0, 12, 'hoatet3.jpg'),
(88, 14, 'Hoa tết 8', '+Miễn phí băng rôn\r\n+ Nhận ship tận nơi\r\n+ Tư vấn thiết kế hoa', '+ Vận chuyển đơn giản\r\n+ bán hàng chất lương cao\r\n+ phục vụ trên toàn quốc', '22000', '180000', 0, 0, 12, 'hoatet2.jpg'),
(89, 14, 'Cây mai vàng', '+Miễn phí băng rôn\r\n+ Nhận ship tận nơi\r\n+ Tư vấn thiết kế hoa', '+ Vận chuyển đơn giản\r\n+ bán hàng chất lương cao\r\n+ phục vụ trên toàn quốc', '500000', '400000', 0, 0, 5, 'hoatet4.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
