-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2022 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(12, 29, 10, 'Bún bò Huế chay', 25000, 2),
(13, 29, 4, 'Cơm tấm đặc biệt', 35000, 11),
(14, 30, 7, 'Nước ép cam', 15000, 1),
(15, 31, 9, 'Cơm gà xối mỡ', 30000, 1),
(16, 32, 2, 'Cơm tấm sườn trứng', 27000, 3),
(17, 32, 7, 'Nước ép cam', 15000, 1),
(18, 33, 8, 'Nước ép chanh', 15000, 1),
(19, 34, 5, 'Khoai tây chiên', 15000, 184),
(20, 35, 7, 'Nước ép cam', 15000, 2),
(21, 36, 9, 'Cơm gà xối mỡ', 30000, 10),
(22, 36, 8, 'Nước ép chanh', 15000, 10),
(23, 37, 1, 'Cơm tấm sườn', 25000, 10),
(24, 37, 6, 'Phô mai que', 15000, 1),
(25, 39, 11, 'Chả giò chay', 20000, 5),
(26, 40, 2, 'Cơm tấm sườn trứng', 27000, 1),
(27, 41, 11, 'Chả giò chay', 20000, 14),
(28, 42, 12, 'Gà rán', 30000, 15),
(29, 42, 7, 'Nước ép cam', 15000, 10),
(30, 42, 8, 'Nước ép chanh', 15000, 5),
(31, 43, 10, 'Bún bò Huế chay', 25000, 10),
(32, 44, 12, 'Gà rán', 30000, 6),
(33, 45, 13, 'Bún bò Huế chay', 25000, 1),
(34, 45, 6, 'Phô mai que', 15000, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhdanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Món chính', 'https://meatboxvietnam.com/wp-content/uploads/2021/04/165286230_2842665565956321_8014338361105436241_n.jpg'),
(2, 'Ăn vặt', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2020/11/do-an-vat-han-quoc.jpg'),
(3, 'Đồ uống', 'https://blog.beemart.vn/wp-content/uploads/2017/05/cac-loai-do-uong-hot-nhat-mua-he-1234.jpg'),
(4, 'Món chay', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2019/10/canh-nam-hat-sen-mon-chay-ngon-de-lam.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`, `Status`) VALUES
(29, 'nam', 'nam@gmail.com', '337662557', 435000, '', 0),
(30, 'nam', 'nam@gmail.com', '337662557', 15000, '', 0),
(31, 'nam', 'tnnhatnam210@gmail.com', '337662557', 30000, '', 0),
(32, 'nam', 'nam@example.com', '337662557', 96000, 'nước cam ít đá ít đường nha bếp ơi :3', 0),
(33, 'nam', 'tnnhatnam210@gmail.com', '337662557', 15000, 'nhanh lên !! ', 0),
(34, 'anh', 'anh@gmail.com', '5555555', 2760000, 'ít cay nha anh bếp :3', 0),
(35, 'nam', 'nam@example.com', '337662557', 30000, 'ngon lắm', 0),
(36, 'nam', 'nam@example.com', '069536257', 450000, 'ít đường ', 0),
(37, 'Sơn tùng', 'tung@gmail.com', '33762559', 265000, 'ít cay', 0),
(38, 'Sơn tùng', 'tung@gmail.com', '33762559', 265000, 'ít cay', 0),
(39, 'nam', 'nam@example.com', '123456789', 100000, 'Ít cay nha bếp ơi', 0),
(40, 'nam 3', 'nam@gmail.com', '336225498', 27000, 'Ok luôn', 0),
(41, 'nam', 'nam@gmail.com', '089653267', 280000, 'Làm ngon ngon nhe hehe :3', 0),
(42, 'Nhật Nam', 'nam_hehe@example.com', '0337662557', 675000, 'Nước cam chua tí,  ít đường,  nước chanh ít đá nè :3 ', 0),
(43, 'hùng', 'hung@gmail.com', '6363695', 250000, '', 0),
(44, 'nam', 'thangdo740@gmail.com', '5656565665', 180000, 'oke', 0),
(45, 'svas', 'a@gmail.com', '22222', 85000, 'est', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Cơm tấm sườn', 'https://by.com.vn/IVXfpK', 25000, 'Cơm tấm sườn siu ngon có cơm và miếng sườn.'),
(2, 1, 'Cơm tấm sườn trứng', 'https://by.com.vn/ncUTVr', 27000, 'Cơm tấm có cơm, miếng sườn và có thêm miếng trứng.'),
(3, 1, 'Cơm tấm sườn bì chả', 'https://bom.so/W59oNe', 32000, 'Cơm tấm có cơm, miếng sường, cộng thêm bì và miếng chả siu thơm ngon.'),
(4, 1, 'Cơm tấm đặc biệt', 'https://bom.so/jdFfQ9', 35000, 'Cơm tấm đặc biệt có cơm và đầy đủ topping trứng, bì, chả siu thum ngon.'),
(5, 2, 'Khoai tây chiên', 'https://bom.so/TM1hp0', 15000, 'Khoai tây chiên giá kiểu Pháp giòn rụm màu vàng.'),
(6, 2, 'Phô mai que', 'https://bom.so/3FQxC7', 15000, 'Phô mai que kéo sợi dai dai kèm tương ớt cay cay.'),
(7, 3, 'Nước ép cam', 'https://bom.so/dHD8HQ', 15000, 'Nước cam chua ngon không quá chua nhưng ngon.'),
(8, 3, 'Nước ép chanh', 'https://bom.so/zYfCrm', 15000, 'Chúng tôi gọi nó là Lemonade vì nó là nước chanh.'),
(9, 1, 'Cơm gà xối mỡ', 'https://bom.so/DVp0GA', 30000, 'Đĩa cơm gà bày ra đĩa trông bắt mắt với phần cơm vừa đủ ăn lưng bụng, thịt gà trộn bày lên trên, trang trí thêm ít rau răm và hành tây thái mỏng cùng muối tiêu bột. Cơm gà ăn kèm với ớt tương làm tại nhà, cay đậm đà thì quả thực là đáo khẩu. Chén canh cải nấu với gừng tươi và gỏi đu đủ, cà rốt thái sợi mỏng là những thành phần hỗ trợ tuyệt vời làm tôn thêm hương vị đĩa cơm gà.\r\nNhịp sống phố cổ khiến ta muốn thưởng thức buổi trưa thong thả và khoan thai. Gắp miếng thịt gà được trộn vừa miệng và cảm nhận hạt cơm mềm dẻo đang tan dần trong miệng thì quả thực ấn tượng khó phai.'),
(10, 4, 'Bún bò Huế chay', 'https://bom.so/71w3Cc', 25000, 'Món bún bò Huế chay đặc trưng bởi nước dùng thơm cay mùi sa tế sả băm, cùng vị ngọt tự nhiên của các loại rau củ. Nhân nấm thơm mềm, đậu hũ chiên giòn mềm, đậu hũ ky giòn tan, thêm chả chay dai dai thật hấp dẫn.'),
(11, 4, 'Chả giò chay', 'https://bom.so/MqvWfL', 20000, 'Ăn chay giúp tâm hồn thanh tịnh, tĩnh tâm và cũng tốt cho sức khỏe hơn. Mặc dù chế độ ăn chay loại trừ hoàn toàn các thực phẩm có nguồn gốc từ động vật, nhưng các món chay vẫn phải đảm bảo đầy đủ chất dinh dưỡng cần thiết và được chế biến sáng tạo để luôn thơm ngon và hấp dẫn.\r\n\r\nChả giò chay là một trong các món ăn vừa ngon miệng, vừa bổ dưỡng giúp gia đình bạn thay đổi khẩu vị trong những ngày ăn chay thanh tịnh. Với cách làm chả giò chay, bạn có thể chế biến thành món ăn nhẹ hoặc ăn kèm với bún như bữa ăn chính, cuốn với rau sống, chấm kèm với nước tương cay hay nước mắm chua ngọt cũng rất cuốn hút.'),
(12, 2, 'Gà rán', 'https://bom.so/IlrEHD', 30000, 'KFC xuất hiện lần đầu ở Việt Nam vào năm 1997, khi mà khái niệm “fast food\" - thức ăn nhanh còn vô cùng xa lạ ở nước mình. Từ việc thua lỗ liên tục suốt 7 năm đầu tiên đặt chân khai phá thị trường, hiện nay KFC đã vươn vai trở thành 1 trong 2 ông lớn giữ thị phần cao nhất trong ngành kinh doanh đồ ăn nhanh ở xứ sở hơn 90 triệu dân này.\r\n\r\nCó thể nói, KFC không chỉ mang đến một lựa chọn thực phẩm mới cho người Việt, nó còn góp phần tạo nên một thói quen ăn uống mới cho chúng ta. Không quá khi nói, đối với một bộ phận giới trẻ hiện nay, fast food không còn đơn thuần chỉ là thức ăn, mà hơn thế, nó dường như đã trở thành thị hiếu, thành nếp sống của một thế hệ kế thừa năng động.'),
(13, 4, 'Bún bò Huế chay', 'https://bom.so/71w3Cc', 25000, 'Món bún bò Huế chay đặc trưng bởi nước dùng thơm cay mùi sa tế sả băm, cùng vị ngọt tự nhiên của các loại rau củ. Nhân nấm thơm mềm, đậu hũ chiên giòn mềm, đậu hũ ky giòn tan, thêm chả chay dai dai thật hấp dẫn.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'Lam', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
