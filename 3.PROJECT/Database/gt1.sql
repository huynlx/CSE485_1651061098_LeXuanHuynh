-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 05:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gt1`
--

-- --------------------------------------------------------

--
-- Table structure for table `co_so_dao_tao`
--

CREATE TABLE `co_so_dao_tao` (
  `ma_csdt` int(11) NOT NULL,
  `ten_csdt` text DEFAULT NULL,
  `dia_chi_tinh_thanh_pho` varchar(50) DEFAULT NULL,
  `dia_chi_quan_huyen` varchar(50) DEFAULT NULL,
  `dia_chi_xa_phuong` varchar(50) DEFAULT NULL,
  `dia_chi_thon_ban_duong_pho` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_so_dao_tao`
--

INSERT INTO `co_so_dao_tao` (`ma_csdt`, `ten_csdt`, `dia_chi_tinh_thanh_pho`, `dia_chi_quan_huyen`, `dia_chi_xa_phuong`, `dia_chi_thon_ban_duong_pho`) VALUES
(1, 'Cơ sở 1', 'Thành Phố Hà Nội', 'Quận Đống Đa', 'Phường Trung Liệt', 'Số 175 Tây Sơn'),
(2, 'Cơ sở 2', 'Thành phố Hồ Chí Minh', 'Quận Bình Thạnh', 'Phường 17', 'Số 2 Trường Sa');

-- --------------------------------------------------------

--
-- Table structure for table `file_minh_chung`
--

CREATE TABLE `file_minh_chung` (
  `ma_file_minh_chung` int(11) NOT NULL,
  `ma_hsxt` int(11) NOT NULL,
  `mo_ta` text NOT NULL,
  `ten_file` text NOT NULL,
  `dung_luong` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_minh_chung`
--

INSERT INTO `file_minh_chung` (`ma_file_minh_chung`, `ma_hsxt`, `mo_ta`, `ten_file`, `dung_luong`) VALUES
(195, 70, '...', 'FireShot_Capture_013_-_Th?_nh_Lập_-_localhost.png', '3144.23'),
(196, 70, '...', 'FireShot_Capture_019_-_Th?_nh_Lập_-_localhost.png', '701.47'),
(209, 69, '...', 'linger-ftc-015s32.jpg', '407.01');

-- --------------------------------------------------------

--
-- Table structure for table `ho_so_xet_tuyen`
--

CREATE TABLE `ho_so_xet_tuyen` (
  `ma_hsxt` int(11) NOT NULL,
  `ma_ts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ho_so_xet_tuyen`
--

INSERT INTO `ho_so_xet_tuyen` (`ma_hsxt`, `ma_ts`) VALUES
(69, 115),
(70, 116);

-- --------------------------------------------------------

--
-- Table structure for table `nganh_dao_tao`
--

CREATE TABLE `nganh_dao_tao` (
  `ma_ndt` varchar(50) NOT NULL,
  `ma_csdt` int(11) NOT NULL,
  `ten_ndt` text NOT NULL,
  `chuong_trinh_dao_tao` text NOT NULL,
  `ghi_chu_ndt` text NOT NULL,
  `gioi_thieu_ndt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nganh_dao_tao`
--

INSERT INTO `nganh_dao_tao` (`ma_ndt`, `ma_csdt`, `ten_ndt`, `chuong_trinh_dao_tao`, `ghi_chu_ndt`, `gioi_thieu_ndt`) VALUES
('TLA106', 1, 'Công nghệ thông tin', 'Chương trình đào tạo bằng Tiếng Việt', '', ''),
('TLA201', 1, 'Kỹ thuật xây dựng', 'Chương trình tiên tiến, đào tạo bằng Tiếng Anh', '', ''),
('TLS101', 2, 'Kỹ thuật xây dựng công trình thủy', 'Chương trình đào tạo bằng Tiếng Việt', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nguyen_vong`
--

CREATE TABLE `nguyen_vong` (
  `ma_hsxt` int(11) NOT NULL,
  `ten_nguyen_vong` varchar(50) NOT NULL,
  `ma_csdt` int(11) NOT NULL,
  `ma_ndt` varchar(50) NOT NULL,
  `ma_thm` varchar(50) NOT NULL,
  `trang_thai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguyen_vong`
--

INSERT INTO `nguyen_vong` (`ma_hsxt`, `ten_nguyen_vong`, `ma_csdt`, `ma_ndt`, `ma_thm`, `trang_thai`) VALUES
(69, '1', 1, 'TLA106', 'A00', 'Đã nhận'),
(69, '2', 2, 'TLS101', 'A02', 'Đã nhận'),
(70, '1', 1, 'TLA106', 'A00', 'Đã nhận'),
(70, '2', 2, 'TLS101', 'A00', 'Đã nhận'),
(70, '3', 1, 'TLA201', 'A00', 'Đã nhận');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id_tk` int(11) NOT NULL,
  `ten_dang_nhap` varchar(30) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `cap_do` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id_tk`, `ten_dang_nhap`, `mat_khau`, `cap_do`) VALUES
(30, 'admin', '12345', 1),
(31, 'huynh', '12345', 1),
(32, 'admin1', '123', 1),
(33, 'huynhlx62@wru.vn', '123', 1),
(34, 'sdfsafasf', 'sfdsf', 1),
(35, 'whatsup', '1', 1),
(36, 'Suzuki', 'sdfsafasf', 1),
(37, 'huynhzip3', '1', 1),
(46, '12345', '12', 1),
(60, 'messi', '1', 1),
(62, 'dfdgd', 'sdfsf', 1),
(63, '32456764564', '12345', 1),
(78, 'huynh12345', '1', 1),
(79, 'huynh123456', '123', 1),
(80, 'huynh1234567', '1', 1),
(81, 'huynh1234569', '123', 1),
(83, 'huynh123456123', '123', 1),
(84, 'huynh1234561111', '123', 1),
(85, 'huynh123456555', '123', 1),
(86, 'huynhzip4', '123', 1),
(88, 'huynhzip45', '123', 1),
(90, 'huynhzip457', '12', 1),
(91, 'huynhzip4578', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thi_sinh`
--

CREATE TABLE `thi_sinh` (
  `ma_ts` int(11) NOT NULL,
  `ho_ten_ts` text NOT NULL,
  `gioi_tinh_ts` text NOT NULL,
  `ngay_sinh_ts` date NOT NULL,
  `noi_sinh_ts` text NOT NULL,
  `dan_toc_ts` text NOT NULL,
  `so_cmnd_cccd_ts` int(11) NOT NULL,
  `ngay_cap` date NOT NULL,
  `noi_cap` text NOT NULL,
  `ho_khau_tinh_thanh_pho` text NOT NULL,
  `ho_khau_quan_huyen` text NOT NULL,
  `ho_khau_xa_phuong` text NOT NULL,
  `ho_khau_thon_ban_duong_pho` text NOT NULL,
  `tinh_tp_lop_10` text NOT NULL,
  `quan_huyen_lop_10` text NOT NULL,
  `truong_lop_10` text NOT NULL,
  `tinh_tp_lop_11` text NOT NULL,
  `quan_huyen_lop_11` text NOT NULL,
  `truong_lop_11` text NOT NULL,
  `tinh_tp_lop_12` text NOT NULL,
  `quan_huyen_lop_12` text NOT NULL,
  `truong_lop_12` text NOT NULL,
  `sdt_ts` varchar(30) NOT NULL,
  `email_ts` text NOT NULL,
  `nam_tot_nghiep_ts` int(11) NOT NULL,
  `khu_vuc_uu_tien` text NOT NULL,
  `doi_tuong_uu_tien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thi_sinh`
--

INSERT INTO `thi_sinh` (`ma_ts`, `ho_ten_ts`, `gioi_tinh_ts`, `ngay_sinh_ts`, `noi_sinh_ts`, `dan_toc_ts`, `so_cmnd_cccd_ts`, `ngay_cap`, `noi_cap`, `ho_khau_tinh_thanh_pho`, `ho_khau_quan_huyen`, `ho_khau_xa_phuong`, `ho_khau_thon_ban_duong_pho`, `tinh_tp_lop_10`, `quan_huyen_lop_10`, `truong_lop_10`, `tinh_tp_lop_11`, `quan_huyen_lop_11`, `truong_lop_11`, `tinh_tp_lop_12`, `quan_huyen_lop_12`, `truong_lop_12`, `sdt_ts`, `email_ts`, `nam_tot_nghiep_ts`, `khu_vuc_uu_tien`, `doi_tuong_uu_tien`) VALUES
(115, 'Lê Xuân Huynhh', 'Nam', '1998-02-21', 'Thành phố Hà Nội', 'Kinh', 13482821, '2020-11-18', 'hà nội', 'Tỉnh Cà Mau', 'Huyện Đầm Dơi', 'Thị trấn Đầm Dơi', 'Tổ 4', 'Thành phố Hải Phòng', 'Huyện Kiến Thụy', 'THPT Kiến Thụy', 'Tỉnh Bình Thuận', 'Huyện Đức Linh', 'THPT Chu Văn An', 'Tỉnh Cà Mau', 'Huyện U Minh', 'THPT Khánh An', '0983923430', 'huynhlx62@wru.vn', 1990, 'KV2 - NT', '01'),
(116, 'Lionel Messii', 'Nam', '2020-11-17', 'Tỉnh Cao Bằng', 'Bu-đâng (Mnông)', 56576453, '2020-11-29', 'Hà Nội', 'Tỉnh Cà Mau', 'Huyện Năm Căn', 'Thị Trấn Năm Căn', 'Tổ 4', 'Tỉnh Cà Mau', 'Huyện Phú Tân', 'PT Phú Tân', 'Thành phố Hà Nội', 'Huyện Đông Anh', 'CĐ nghề Kỹ thuật Công nghệ', 'Tỉnh Cà Mau', 'Huyện Đầm Dơi', 'THPT Đầm Dơi', '0983923430', 'huynhlx62@wru.vn', 1991, 'KV1', '01');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_tai_khoan`
--

CREATE TABLE `thong_tin_tai_khoan` (
  `id_tk` int(11) NOT NULL,
  `ho_ten_tk` text NOT NULL,
  `email_tk` varchar(50) NOT NULL,
  `ngay_sinh_tk` date DEFAULT NULL,
  `gioi_tinh_tk` varchar(4) DEFAULT NULL,
  `dia_chi_tk` text DEFAULT NULL,
  `sdt_tk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thong_tin_tai_khoan`
--

INSERT INTO `thong_tin_tai_khoan` (`id_tk`, `ho_ten_tk`, `email_tk`, `ngay_sinh_tk`, `gioi_tinh_tk`, `dia_chi_tk`, `sdt_tk`) VALUES
(30, 'Lê Xuân Huynh', 'huynhlx62@wru.vn', '2020-11-03', 'Nam', 'ha noi', '0983923430'),
(31, 'Lionel Messi', 'fshare@vozmmo.tk', '2020-11-15', 'Nam', 'Thái Bình Mồ Hôi Rơi', '0983923430'),
(32, 'Hải hà', 'DEMO@EXAMPLE.COM', '2020-11-24', 'Nữ', 'TEST7', '0983923333'),
(33, 'ôi vãi', 'huynhlx4@gmail.vn', '2020-11-02', 'Nam', 'ha noi', '9839234301'),
(34, 'sdfsdfdsf', 'DEMO@EXAMPLE.COM', '2020-11-01', 'Nam', 'hcm', '0983923430'),
(35, 'hihihaha', 'huynhlx4@gmail.com', '2020-11-10', 'Nam', 'America', '0983923333'),
(36, 'Đàm vĩnh hưng', 'huylx122@gmail.com', '2020-11-15', 'Nam', 'Hà Nội', '9839234301'),
(37, 'Huynh12345', 'tranquanganhQ@gmail.com', '1999-11-21', 'Nam', 'Hà Nội', '0983923430'),
(46, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-20', 'Nam', 'Ha Noi', '8498392343'),
(60, 'Messi', 'huynhlx62@wru.vn', '2020-12-09', 'Nam', 'Ha Noi', '8498392343'),
(62, 'Lê Xuân Huynh', 'DEMO@EXAMPLE.COM', '2020-11-04', 'Nam', 'TEST7', '0983923430'),
(63, 'Lê Xuân Huynh', 'DEMO@EXAMPLE.COM', '2020-11-05', 'Nam', 'ha noii', '0983923430'),
(78, 'lee huynh', 'huynhlx62@wru.vn', '2020-12-10', 'Nam', 'Ha Noi', '8498392343'),
(79, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-25', 'Nam', 'Ha Noi', '8498392343'),
(80, 'lee huynh', 'huynhlx62@wru.vn', '2020-12-11', 'Nam', 'Ha Noi', '8498392343'),
(81, 'lee huynh', 'huynhlx62@wru.vn', '2020-12-10', 'Nam', 'Ha Noi', '8498392343'),
(83, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-04', 'Nam', 'Ha Noi', '8498392343'),
(84, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-06', 'Nam', 'Ha Noi', '8498392343'),
(85, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-06', 'Nam', 'Ha Noi', '8498392343'),
(86, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-10', 'Nam', 'Ha Noi', '8498392343'),
(88, 'lee huynh', 'huynhlx62@wru.vn', '2020-11-10', 'Nam', 'Ha Noi', '8498392343'),
(90, 'English', 'huynhlx62@wru.vn', '2020-11-16', 'Nữ', 'Ha Noi', '4433336889'),
(91, 'huynh huynh', 'huynhlx62@wru.vn', '2020-11-10', 'Nam', 'Ha Noii', '0333368899');

-- --------------------------------------------------------

--
-- Table structure for table `to_hop_mon`
--

CREATE TABLE `to_hop_mon` (
  `ma_thm` varchar(5) NOT NULL,
  `ten_mon_1` text DEFAULT NULL,
  `ten_mon_2` text DEFAULT NULL,
  `ten_mon_3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `to_hop_mon`
--

INSERT INTO `to_hop_mon` (`ma_thm`, `ten_mon_1`, `ten_mon_2`, `ten_mon_3`) VALUES
('A00', 'Toán', 'Lý', 'Hóa'),
('A01', 'Toán', 'Lý', 'Anh'),
('A02', 'Toán', 'Lý', 'Sinh'),
('B00', 'Toán', 'Hoá', 'Sinh'),
('D01', 'Toán', 'Ngữ Văn', 'Anh'),
('D07', 'Toán', 'Hoá', 'Anh'),
('D08', 'Toán', 'Sinh', 'Anh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `co_so_dao_tao`
--
ALTER TABLE `co_so_dao_tao`
  ADD PRIMARY KEY (`ma_csdt`);

--
-- Indexes for table `file_minh_chung`
--
ALTER TABLE `file_minh_chung`
  ADD PRIMARY KEY (`ma_file_minh_chung`,`ma_hsxt`) USING BTREE,
  ADD KEY `ma_hsxt` (`ma_hsxt`);

--
-- Indexes for table `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  ADD PRIMARY KEY (`ma_hsxt`),
  ADD KEY `ma_ts` (`ma_ts`);

--
-- Indexes for table `nganh_dao_tao`
--
ALTER TABLE `nganh_dao_tao`
  ADD PRIMARY KEY (`ma_ndt`),
  ADD KEY `ma_csdt` (`ma_csdt`);

--
-- Indexes for table `nguyen_vong`
--
ALTER TABLE `nguyen_vong`
  ADD PRIMARY KEY (`ma_hsxt`,`ten_nguyen_vong`) USING BTREE,
  ADD KEY `ma_csdt` (`ma_csdt`),
  ADD KEY `ma_ndt` (`ma_ndt`),
  ADD KEY `ma_thm` (`ma_thm`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id_tk`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Indexes for table `thi_sinh`
--
ALTER TABLE `thi_sinh`
  ADD PRIMARY KEY (`ma_ts`),
  ADD UNIQUE KEY `so_cmnd_cccd_ts` (`so_cmnd_cccd_ts`);

--
-- Indexes for table `thong_tin_tai_khoan`
--
ALTER TABLE `thong_tin_tai_khoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- Indexes for table `to_hop_mon`
--
ALTER TABLE `to_hop_mon`
  ADD PRIMARY KEY (`ma_thm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `co_so_dao_tao`
--
ALTER TABLE `co_so_dao_tao`
  MODIFY `ma_csdt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file_minh_chung`
--
ALTER TABLE `file_minh_chung`
  MODIFY `ma_file_minh_chung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  MODIFY `ma_hsxt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `thi_sinh`
--
ALTER TABLE `thi_sinh`
  MODIFY `ma_ts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ho_so_xet_tuyen`
--
ALTER TABLE `ho_so_xet_tuyen`
  ADD CONSTRAINT `fk_ma_ts` FOREIGN KEY (`ma_ts`) REFERENCES `thi_sinh` (`ma_ts`);

--
-- Constraints for table `nganh_dao_tao`
--
ALTER TABLE `nganh_dao_tao`
  ADD CONSTRAINT `fk_ma_csdt` FOREIGN KEY (`ma_csdt`) REFERENCES `co_so_dao_tao` (`ma_csdt`);

--
-- Constraints for table `nguyen_vong`
--
ALTER TABLE `nguyen_vong`
  ADD CONSTRAINT `fk_ma_hsxt` FOREIGN KEY (`ma_hsxt`) REFERENCES `ho_so_xet_tuyen` (`ma_hsxt`);

--
-- Constraints for table `thong_tin_tai_khoan`
--
ALTER TABLE `thong_tin_tai_khoan`
  ADD CONSTRAINT `fk_id_tk` FOREIGN KEY (`id_tk`) REFERENCES `tai_khoan` (`id_tk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
