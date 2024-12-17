-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2024 lúc 01:01 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `api_laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_ThuCung` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `tongTien` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idPet` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `total_Product` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `idUser`, `idPet`, `quantity`, `status`, `createdAt`, `updatedAt`, `total_Product`) VALUES
(16, 5, 14, 1, 'Chưa thanh toán', '2024-12-17 12:25:18', '2024-12-17 12:25:18', 15390000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Laptop Mới', '2024-10-31 13:32:13', '2024-12-17 09:31:29'),
(2, 'Laptop Cũ', '2024-10-31 13:32:20', '2024-12-17 09:31:44'),
(7, 'Phụ kiện', '2024-12-17 10:38:52', '2024-12-17 10:38:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `thuCung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`thuCung`)),
  `tongTien` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `thuCung`, `tongTien`, `status`, `createdAt`, `updatedAt`) VALUES
(10, 5, '[{\"id\":10,\"idUser\":5,\"idPet\":14,\"quantity\":1,\"status\":\"Chưa thanh toán\",\"total_Product\":15390000,\"createdAt\":\"2024-12-17T04:21:49.000Z\",\"updatedAt\":\"2024-12-17T04:21:49.000Z\",\"Pet\":{\"id\":14,\"name\":\"[New 100%] Laptop Dell Inspiron 14 5430 R1605S / R1608S | Intel Core i5 - 1340P | 14 Inch Full HD+\",\"price\":15390000,\"describe\":\"Dell Inspiron 5430 - Thiết kế sang trọng, bền bỉ - Chip Gen 13 MỚI NHẤT 2023 - Làm việc siêu mượt mà\",\"avatar\":\"https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403766/user/stm0juiq51unkrwym1rg.jpg\",\"species\":\"Laptop Dell\",\"avatar_detail\":null,\"id_category\":1,\"quantity\":100,\"top_quantity\":null,\"createdAt\":\"2024-12-17T02:47:59.000Z\",\"updatedAt\":\"2024-12-17T03:31:02.000Z\"}}]', 15390000, 'Đơn hàng đã hủy', '2024-12-17 11:22:36', '2024-12-17 12:26:48'),
(11, 5, '[{\"id\":11,\"idUser\":5,\"idPet\":14,\"quantity\":1,\"status\":\"Chưa thanh toán\",\"total_Product\":15390000,\"createdAt\":\"2024-12-17T05:21:31.000Z\",\"updatedAt\":\"2024-12-17T05:21:31.000Z\",\"Pet\":{\"id\":14,\"name\":\"[New 100%] Laptop Dell Inspiron 14 5430 R1605S / R1608S | Intel Core i5 - 1340P | 14 Inch Full HD+\",\"price\":15390000,\"describe\":\"Dell Inspiron 5430 - Thiết kế sang trọng, bền bỉ - Chip Gen 13 MỚI NHẤT 2023 - Làm việc siêu mượt mà\",\"avatar\":\"https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403766/user/stm0juiq51unkrwym1rg.jpg\",\"species\":\"Laptop Dell\",\"avatar_detail\":null,\"id_category\":1,\"quantity\":99,\"top_quantity\":1,\"createdAt\":\"2024-12-17T02:47:59.000Z\",\"updatedAt\":\"2024-12-17T04:22:36.000Z\"}}]', 15390000, 'Đã thanh toán', '2024-12-17 12:22:33', '2024-12-17 12:22:33'),
(12, 5, '[{\"id\":16,\"idUser\":5,\"idPet\":14,\"quantity\":1,\"status\":\"Chưa thanh toán\",\"total_Product\":15390000,\"createdAt\":\"2024-12-17T05:25:18.000Z\",\"updatedAt\":\"2024-12-17T05:25:18.000Z\",\"Pet\":{\"id\":14,\"name\":\"[New 100%] Laptop Dell Inspiron 14 5430 R1605S / R1608S | Intel Core i5 - 1340P | 14 Inch Full HD+\",\"price\":15390000,\"describe\":\"Dell Inspiron 5430 - Thiết kế sang trọng, bền bỉ - Chip Gen 13 MỚI NHẤT 2023 - Làm việc siêu mượt mà\",\"avatar\":\"https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403766/user/stm0juiq51unkrwym1rg.jpg\",\"species\":\"Laptop Dell\",\"avatar_detail\":null,\"id_category\":1,\"quantity\":98,\"top_quantity\":2,\"createdAt\":\"2024-12-17T02:47:59.000Z\",\"updatedAt\":\"2024-12-17T05:22:33.000Z\"}}]', 15390000, 'Đã thanh toán', '2024-12-17 12:26:01', '2024-12-17 12:26:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `idNhanVien` varchar(255) DEFAULT NULL,
  `idKhachHang` varchar(255) DEFAULT NULL,
  `totalPrice` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `avatar_detail` text DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `top_quantity` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pets`
--

INSERT INTO `pets` (`id`, `name`, `price`, `describe`, `avatar`, `species`, `avatar_detail`, `id_category`, `quantity`, `top_quantity`, `createdAt`, `updatedAt`) VALUES
(13, '[New 100%] Laptop Lenovo LOQ 15ARP9 83JC0001US - AMD Ryzen 5 - 7235HS | RTX 3050 | 12GB | 15.6 inch Full HD 100% sRGB 144Hz', 16990000, 'Lenovo LOQ 15ARP9 83JC0001US - Lenovo LOQ 2024 RẺ NHẤT - Cấu hình cực khỏe RTX 3050 6GB - Màn chuẩn màu 100% sRGB rực rỡ - Tần số quét 144Hz', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403496/user/zflhopjkazosqi2bq4wg.jpg', 'Laptop Mới', NULL, 1, 100, NULL, '2024-12-17 09:45:12', '2024-12-17 10:30:38'),
(14, '[New 100%] Laptop Dell Inspiron 14 5430 R1605S / R1608S | Intel Core i5 - 1340P | 14 Inch Full HD+', 15390000, 'Dell Inspiron 5430 - Thiết kế sang trọng, bền bỉ - Chip Gen 13 MỚI NHẤT 2023 - Làm việc siêu mượt mà', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403766/user/stm0juiq51unkrwym1rg.jpg', 'Laptop Dell', NULL, 1, 97, 3, '2024-12-17 09:47:59', '2024-12-17 12:26:01'),
(15, '[New 100%] HP Victus 15 fb2063dx 9Z7L4UA - AMD Ryzen 5-7535HS | Radeon RX 6550M | 15.6 inch Full HD 144Hz', 14990000, 'HP Victus 15 2023 fb2063dx: Gaming khỏe nhất tầm giá - Chip R5 + card RX 6550M cực KHỎE - Thiết kế sang, mỏng nhẹ - Màn 144Hz', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403883/user/pmj62hjcc2hzmivvuxib.png', 'Laptop Mới', NULL, 1, NULL, NULL, '2024-12-17 09:51:30', '2024-12-17 10:30:05'),
(16, '[New 100%] Laptop Lenovo LOQ 15ARP9 83JC0000US - AMD Ryzen 7-7435HS | RTX 4060 | 16GB | 15.6 inch Full HD 100% sRGB 144Hz', 22790000, 'Lenovo LOQ 15ARP9 83JC0000US - Laptop gaming hoàn hảo 2024 - Thiết kế cực sang đẹp - Chip R7 + RXT 4060 khỏe - Màn đẹp chuẩn màu', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734403923/user/qydlsvsnju2kdvsz8nnp.jpg', 'Laptop Lenovo', NULL, 1, NULL, NULL, '2024-12-17 09:52:39', '2024-12-17 10:31:39'),
(18, 'Laptop Cũ Dell Latitude 7420 - Intel Core i5-1145G7 | 14 inch Full HD', 9690000, 'Dell Latitude 7430 - Thiết kế bền bỉ, thanh lịch - Chip i7 gen 12 cực khỏe, làm cực tốt mọi việc', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734404405/user/ajwi8seewgsb7ztqyi1j.jpg', 'Laptop Dell', NULL, 2, NULL, NULL, '2024-12-17 10:00:47', '2024-12-17 10:33:51'),
(19, 'Laptop Cũ Dell Latitude 5400 - Intel Core i5', 6990000, 'Dell Latitude 7420 i5 - Laptop doanh nhân siêu bền - Làm tốt mọi tác vụ phức tạp', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734404497/user/yunqrum37w9c4kthx04x.jpg', 'Laptop Dell', NULL, 2, NULL, NULL, '2024-12-17 10:02:13', '2024-12-17 10:34:51'),
(20, 'Laptop Cũ Dell Latitude 5420 - Intel Core i7-1165G7 | 14 inch Full HD', 10490000, 'Dell Latitude 5420 i7 - Thiết kế gọn nhẹ - Siêu bền - Cấu hình cao làm tốt mọi việc', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734404583/user/rraz3wojdc4qug9clfrk.jpg', 'Laptop Dell', NULL, 2, NULL, NULL, '2024-12-17 10:03:51', '2024-12-17 10:35:57'),
(28, '[New 100%] SSD NVMe 256GB PNY CS1031 M280CS1031', 550000, 'Ổ cứng SSD 256GB | 500GB NVMe PNY CS1031: Dung lượng lưu trữ lớn - Tốc độ xử lý dữ liệu vượt trội chỉ trong nháy mắt', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734406861/user/ip8lazzhlbarrwevchjv.jpg', 'Ổ cứng', NULL, 7, NULL, NULL, '2024-12-17 10:42:01', '2024-12-17 10:42:01'),
(29, 'RAM PC (Máy bàn) 8GB Transcend JM3200HLG-8G DDR4 bus 3200MHz - Hàng chính hãng', 500000, 'RAM 8GB DDR4 3200Mhz: Chính hãng Transcend - Tăng khả năng đa nhiệm - Bảo hành 3 năm', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1734406978/user/uatyrbv5pa2gxok9s4q7.jpg', 'RAM', NULL, 7, NULL, NULL, '2024-12-17 10:44:04', '2024-12-17 10:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('create_bills.js'),
('create_carts.js'),
('create_news.js'),
('create_order.js'),
('create_pay.js'),
('create-category.js'),
('create-pet.js'),
('create-user.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gioiTinh` varchar(255) DEFAULT NULL,
  `namSinh` datetime DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `role_id` varchar(255) DEFAULT 'R3',
  `resetToken` varchar(255) DEFAULT NULL,
  `resetTokenExpiry` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gioiTinh`, `namSinh`, `sdt`, `diaChi`, `avatar`, `role_id`, `resetToken`, `resetTokenExpiry`, `createdAt`, `updatedAt`) VALUES
(5, 'user', 'user@gmail.com', '$2a$09$QybOptDsyXmVVDbIKCykcueffspGVOHg4xztYCBidzvYQfVxGqhMm', 'Nam', '2024-11-18 07:00:00', 12345689, 'ha nam', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1730448558/user/rntb5uuqtolwor7o4mse.jpg', 'R3', NULL, NULL, '2024-11-01 15:09:49', '2024-11-01 15:09:49'),
(7, 'admin', 'admin@gmail.com', '$2a$09$QybOptDsyXmVVDbIKCykcueffspGVOHg4xztYCBidzvYQfVxGqhMm', 'Nam', '2024-11-12 07:00:00', 12345678, 'ha noi', 'https://res.cloudinary.com/dw9w3kc49/image/upload/v1696383687/user/user_defaut.png', 'R2', 'f0ec194c6a078f87a6cc15a592a36f04056677de', '1730539115116', '2024-11-01 15:11:51', '2024-11-01 15:18:35');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
