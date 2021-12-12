-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2021 lúc 08:59 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banthucpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_BinhLuan` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `NoiDung` varchar(100) NOT NULL,
  `ThoiGianBinhLuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ID_BinhLuan`, `ID_ThanhVien`, `ID_SanPham`, `NoiDung`, `ThoiGianBinhLuan`) VALUES
(1, 1, 1002, 'afjhjsfksdfl;sdf', '2021-12-06 07:56:56'),
(13, 1, 2003, 'asdasdasdasdasd', '2021-12-08 06:38:42'),
(14, 1, 2003, '123', '2021-12-08 06:39:11'),
(15, 1, 2003, '123', '2021-12-08 06:39:55'),
(16, 1, 2003, '123', '2021-12-08 06:40:21'),
(17, 2, 1003, 'Ngon quá ta', '2021-12-08 07:10:22'),
(18, 1, 1001, 'Ngon zữ', '2021-12-08 07:10:52'),
(19, 2, 2002, 'Quá đã ', '2021-12-08 07:11:04'),
(20, 1, 2001, 'waooooo', '2021-12-08 07:11:13'),
(21, 2, 3002, 'chất lượng', '2021-12-08 07:11:25'),
(22, 1, 3001, 'abc bê quá đê', '2021-12-08 07:11:39'),
(23, 1, 1001, '123', '2021-12-08 07:12:15'),
(24, 4, 1002, '123', '2021-12-08 07:13:18'),
(25, 4, 1002, '123112312312', '2021-12-12 08:35:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID_DanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(20) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID_DanhMuc`, `TenDanhMuc`, `Mota`) VALUES
(1, 'Rau Sạch', 'Tăng cường thị lực.\nĐiều hòa huyết áp.\nTốt cho hệ tiêu hóa và đường ruột.\nNgăn ngừa bệnh tim mạch'),
(2, 'Củ, Quả', 'Chúng là nguồn cung cấp chất xơ tuyệt vời, có thể giúp duy trì đường ruột khỏe mạnh và ngăn ngừa táo'),
(3, 'Thịt tươi', '- Sự đa dạng về chủng loại thực phẩm. Những người ăn thịt có một loạt lựa chọn về thực phẩm. ...\r\n- Dễ dàng thích ứng với thực phẩm. ...\r\n- Đáp ứng đầy đủ nhu cầu protein. ...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `GhiChu` varchar(30) NOT NULL,
  `GiaTien` float NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`ID_HoaDon`, `ID_ThanhVien`, `ThoiGianLap`, `DiaChi`, `GhiChu`, `GiaTien`, `SoDienThoai`) VALUES
(1, 1, '2021-12-06 12:55:18', 'hai phong', 'asdasdasd123', 0, '0382460421'),
(2, 1, '2021-12-06 12:56:40', 'hai phong', 'asdasdasd123', 0, '0382460421'),
(5, 1, '2021-12-06 15:52:03', 'hai phong', 'asdasdasd123', 0, '0382460421'),
(6, 1, '2021-12-06 15:56:12', 'hai phong', 'asdasdasd123', 96000, '0382460421'),
(7, 1, '2021-12-06 15:58:38', 'hai phong', 'asdasdasd123', 96000, '0382460421'),
(8, 1, '2021-12-06 16:29:49', 'hai phong', 'asdasdasd123', 96000, '0382460421'),
(9, 1, '2021-12-06 16:49:09', 'hai phong', 'asdasdasd123', 238000, '0382460421'),
(10, 1, '2021-12-06 17:24:16', 'hai phong', 'asdasdasd123', 238000, '0382460421'),
(11, 1, '2021-12-06 17:28:58', 'hai phong', 'asdasdasd123', 128000, '0382460421'),
(12, 1, '2021-12-06 17:29:42', 'hai phong', 'asdasdasd123', 128000, '0382460421'),
(13, 1, '2021-12-06 17:33:29', 'hai phong', 'asdasdasd123', 128000, '0382460421'),
(14, 1, '2021-12-06 17:34:49', 'hai phong', 'asdasdasd123', 42000, '0382460421'),
(15, 1, '2021-12-06 17:37:32', 'hai phong', 'asdasdasd123', 32000, '0382460421'),
(16, 1, '2021-12-06 17:40:15', 'hai phong', 'asdasdasd123', 32000, '0382460421'),
(17, 1, '2021-12-06 17:41:18', 'hai phong', 'asdasdasd123', 32000, '0382460421'),
(18, 1, '2021-12-06 17:47:26', 'hai phong', 'asdasdasd123', 290000, '0382460421'),
(29, 1, '2021-12-08 04:02:57', 'hai phong', 'asdasdasd123', 540000, '0382460421'),
(30, 1, '2021-12-08 04:03:04', 'hai phong', 'asdasdasd123', 540000, '0382460421'),
(31, 1, '2021-12-08 04:45:04', 'hai phong', 'asdasdasd123', 64000, '0382460421'),
(32, 1, '2021-12-08 04:45:08', 'hai phong', 'asdasdasd123', 64000, '0382460421'),
(33, 1, '2021-12-08 05:09:47', 'hai phong', 'asdasdasd123123', 32000, '0382460421'),
(34, 1, '2021-12-08 05:45:04', 'hai phong', '123123', 64000, '0382460421'),
(35, 4, '2021-12-08 08:20:30', 'Quan 10', '', 35500, '0767772112'),
(36, 1, '2021-12-08 08:31:03', 'hai phong', '', 10500, '0382460421'),
(37, 4, '2021-12-08 08:36:57', 'Quan 10', '', 10500, '0767772112'),
(38, 4, '2021-12-12 08:35:34', 'Quan 10', '', 90000, '0767772112');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `ID_LienHe` int(11) NOT NULL,
  `ID_ThanhVien` int(10) NOT NULL,
  `TenThanhVien` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `NoiDung` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`ID_LienHe`, `ID_ThanhVien`, `TenThanhVien`, `Email`, `NoiDung`) VALUES
(1, 0, 'nguyen ha quoc bao', 'quocbao2116@gmail.co', '123'),
(2, 1, 'nguyen ha quoc bao', 'quocbao2116@gmail.co', '123'),
(3, 4, 'Nguyễn Hà Quốc Bảo', 'huyae01833@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lohang`
--

CREATE TABLE `lohang` (
  `ID_LoHang` int(11) NOT NULL,
  `ID_NCC` int(11) DEFAULT NULL,
  `SoLuongNhapVao` int(11) DEFAULT NULL,
  `TongTien` float DEFAULT NULL,
  `ThoiGianNhap` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID_NCC` int(11) NOT NULL,
  `TenNCC` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `Img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID_NCC`, `TenNCC`, `Email`, `SoDienThoai`, `DiaChi`, `Img`) VALUES
(1, 'Chi Nhánh Lâm Đồng', 'lamdong49@gmail.com', '0987776123', 'Lâm Đồng', 'chinhanhlamdong.png'),
(2, 'Chi Nhánh Đắk Lắk', 'daklak47@gmail.com', '0382213321', 'Đắk Lắk', 'chinhanhdaklak.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `NgayDiLam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`ID_QuanLy`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDiLam`) VALUES
(1, 'admin', '123', 'lamdong49@gmail.com', 'admin sieu cap provip', 'Lâm Đồng', '0987776123', '2021-12-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NhaCungCap` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` float NOT NULL,
  `Img` varchar(20) NOT NULL,
  `BanChay` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `BanChay`) VALUES
(1001, 1, 1, 'Cải tím Đà Lạt', '- Thực phẩm tốt cho sức khỏe</br>\r\n- Có thể chế biến thành nhiều món ăn</br>\r\n- Hương vị thơm ngon, kích thích vị giác', 55625, 10, 'bapcaitim.png', 'co'),
(1002, 1, 1, 'Đậu đũa ', '- Dùng chế biến món ăn\r\n- Chứa nhiều chất dinh dưỡng cần thiết\r\n- An toàn chất lượng\r\n', 32000, 10, 'daudua.png', 'co'),
(1003, 1, 2, 'Cải bẹ Đà Lạt', '- Được trồng trong môi trường sạch an toàn với người tiêu dùng\r\n- Dùng để nấu canh, xào hoặc có thể dùng ăn với lẩu\r\n- Bổ sung nhiều chất dinh dưỡng cần thiết cho cơ thể', 35500, 10, 'caibe.png', 'co'),
(2001, 1, 1, 'Khổ qua Đà Lạt', '- Thực phẩm tốt cho sức khỏe\r\n- Có thể chế biến được thành nhiều món ăn\r\n- Sản phẩm được người tiêu dùng ưa chuộng\r\n \r\n\r\n', 18000, 10, 'khoqua.png', 'co'),
(2002, 2, 2, 'Cà chua Đà Lạt', '- Cung cấp đầy đủ vitamin và dưỡng chất cho cơ thể\r\n- Đạt tiêu chuẩn Vietgap\r\n- Liên hệ trực tiếp để được giá sỉ tốt nhất', 18000, 10, 'cachua.png', 'co'),
(2003, 2, 1, 'Bầu Phước An', '- Món ăn lý tưởng dành cho người muốn giảm cân\r\n- Chế biến được nhiều món ăn ngon miệng\r\n- Sản phẩm không sử dụng thuốc trừ sâu, an toàn cho sức khỏe', 10500, 10, 'bauphuocan.png', 'ko'),
(3001, 3, 1, 'Thịt đùi heo', '- Nguyên liệu tươi ngon, hợp vệ sinh\r\n- Cung cấp nhiều dinh dưỡng cho cơ thể\r\n- Chế biến được nhiều món ăn ngon', 180000, 10, 'Thitduiheo.png', 'co'),
(3002, 3, 1, 'Thịt heo say', '-Nguyên liệu tươi ngon, hợp vệ sinh\r\n</br>Cung cấp nhiều dinh dưỡng cho cơ thể\r\n</br>Chế biến được nhiều món ăn ngon', 145000, 10, 'thitheosay.png', 'co');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(1, 'b1231121', 'asdasd', 'proaass2@gmail.com', 'Tao là giang hồ', 'hai phong', '0375522116', '2021-12-05'),
(2, 'proaass2', '1231121', 'quocbao2116@gmail.com', 'admin', 'cac', '1123323', '2021-12-05'),
(4, 'bibaoprovip', '1231121', 'huyae01833@gmail.com', 'Nguyễn Hà Quốc Bảo', 'Quan 10', '0767772112', '2021-12-08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_BinhLuan`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`ID_HoaDon`,`ID_ThanhVien`,`ID_SanPham`),
  ADD KEY `ID_HoaDon` (`ID_HoaDon`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID_HoaDon`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`ID_LienHe`);

--
-- Chỉ mục cho bảng `lohang`
--
ALTER TABLE `lohang`
  ADD PRIMARY KEY (`ID_LoHang`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`),
  ADD KEY `ID_NhaCungCap` (`ID_NhaCungCap`),
  ADD KEY `ID_DanhMuc` (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID_ThanhVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID_HoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `ID_LienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lohang`
--
ALTER TABLE `lohang`
  MODIFY `ID_LoHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID_NCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3003;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NhaCungCap`) REFERENCES `nhacungcap` (`ID_NCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
