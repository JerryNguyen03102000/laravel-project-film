-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 06, 2023 lúc 03:12 PM
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
-- Cơ sở dữ liệu: `webphim_tutorial`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`) VALUES
(12, 'Phim mới', 'phim moi', 1, 'phim-moi'),
(13, 'Phim chiếu rạp', 'phim-chieu-rap', 1, 'phim-chieu-rap'),
(14, 'Phim lẻ', 'phim-le', 1, 'phim-le'),
(15, 'Phim bộ', 'phim-bo', 1, 'phim-bo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(10, 'Trung Quốc', 'trung-quoc', 1, 'trung-quoc'),
(11, 'Nhật Bản', 'nhat-ban', 1, 'nhat-ban'),
(12, 'Đài Loan', 'dai-loan', 1, 'dai-loan'),
(13, 'Anh', 'anh', 1, 'anh'),
(14, 'Ý', 'y', 1, 'y'),
(15, 'Pháp', 'phap', 1, 'phap'),
(16, 'Hàn Quốc', 'han-quoc', 1, 'han-quoc'),
(17, 'Hồng Kông', 'hong-kong', 1, 'hong-kong'),
(18, 'Âu Mỹ', 'my', 1, 'my'),
(19, 'Ấn Độ', 'an-do', 1, 'an-do'),
(20, 'Đức', 'duc', 1, 'duc'),
(21, 'Thái Lan', 'thai-lan', 1, 'nga'),
(22, 'Indonexia', 'indonexia', 1, 'indonexia'),
(23, 'Quốc Gia Khác', 'quoc-gia-khac', 1, 'quoc-gia-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` text NOT NULL,
  `episode` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `status`) VALUES
(18, 33, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/5ee91fe7ca52d57d46b272e68cbf53d9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\" allow=\"autoplay\" ></iframe>', '1', 1),
(19, 35, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/90a01a8dc851635ad70876baf3b2d216\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\" allow=\"autoplay\" ></iframe>', '1', 1),
(20, 34, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/b2a4e73b05f071e8167cb2ff945a2ffa\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(21, 36, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/bdf4880433deb05d33cd59e756e3ae6c\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(22, 37, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/c48db0d24d70bc97285fdaf9dc8221c1\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(23, 38, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/56f88dc950d4b32c2a461b792372f82f\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(24, 39, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/4f1300af0bebc9d72b7f44b65eb275d9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(25, 40, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/8d80b953e6dab669d98c905f7527fedd\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(26, 41, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/6b18886bc278247582704943f5c66eb9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(27, 42, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/973cf0f1e5cb6a86bcc5a188d698a7bc\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(28, 43, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/7b7324f8841c5f9a929c7c3a3cb60391\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(29, 44, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/24e709bb46c4ae9841eecac2a9e8c503\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(30, 46, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/4f47f68c8ad4792d404d2ff5e57c97ba\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(31, 48, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/SHaTRdphcu\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(32, 49, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/ededc7e1ce8f57bb859089b9360ed86f\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(33, 50, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/88561cd999906a644093dd56a0a0c821\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(34, 51, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/88f5117f17105532ce02ca3f132c6628\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(35, 52, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/f47dafa1b01fc67850d5576e5216df25\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(36, 53, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/b344953b75615eb41588c6753a3899e9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(37, 54, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/4123de1fe8a9630ecd3fbcabaaa95189\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(38, 55, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/97cc7b6c7b91cf6b4718df7341c89d20\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(39, 56, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/3a55002e105ec6b1177abe7dbe18384d\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(40, 57, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/9e020ebb181dfd3fb1229c6ceb076a60\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(41, 58, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/27fa0d898aa0a20eba405302ab201cf6\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(42, 59, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/4ba3a8aaad152d230887da6a26610846\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(43, 60, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/81ef0f4401b9bec98b849df4f0febfd3\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(44, 61, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/4703873a678a5cd835a7500d9a0948d1\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(45, 62, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/63a82e1bc44f8cf90a9189b4632951df\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(46, 63, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/b1562246c02be63bac86a26684cdce58\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(47, 64, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/e51c1eef0ce4c35af9069dabda7086ac\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(48, 65, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/745b601f1064f3e9a35cf1747b740e5e\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(49, 66, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/4fd76758ca20a054063d174c3cd7f394\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(50, 67, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/cd483cdcbfa62470fa1ec3771c5fe370\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(51, 68, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/3b93d91c6ca4990fffd61e37d9235acb\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(52, 69, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/62e81b7815b24e46b69fcfa197aea837\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(53, 70, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/ffacbb7db90628bfcc8be667616dfcc7\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(54, 71, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/2e8abed6b12530e83f890e90ad4fbeb3\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(55, 72, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/4e9682671e5f02af659a48d15ee19ab2\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(56, 73, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/392a556942cd6324f0091a4a39e3845b\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(57, 74, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/6d3b4379cb470122a94f95b809910011\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(58, 75, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/387634a1c9e6dad2026967f0a0f844f6\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(59, 76, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/37c771d1bc9e621efc6c6c03c864f981\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(60, 77, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/c5e0299714bda49d29f444c4ac527453\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(61, 78, '<iframe width=\"100%\" height=\"360px\" src=\"https://aa.nguonphimmoi.com/share/885ac593c62782059359af61557dfd36\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(62, 79, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/fec4a76ff20508cb6c36cf6b37fea805\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(63, 80, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/c764288af5c0147a988705c2e7826e28\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(64, 81, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/8292195f4bd46e2ba9790f674a4c906f\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(65, 82, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/00b546d495d29ea025af220831ceee42\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(66, 84, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/c0eab2dce3fc614a18251fb483e71dee\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(67, 85, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/7f9e4c8e1de05725d2b30298eda1f306\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(68, 87, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/b3217d23efdb295c5a2e786a50c2e37e\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(69, 88, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/26c8106f0f28bd50208678b59c7f722d\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(70, 89, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/88f5117f17105532ce02ca3f132c6628\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(71, 90, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/ddcbe25988981920c872c1787382f04d\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(72, 91, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/87c169ec9594615939b5905714e3c355\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(73, 92, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/2f1b2e593a33988ea62ed7c9c9610147\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(74, 93, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.1080phim.com/share/dc252f02f741393277f971aeb297e2ef\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(75, 94, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/d17c5e09fc9a4e0dcbea13cb36dd1c36\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(76, 95, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/3c34604a79b889444149f4f226868fd5\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(77, 96, '<iframe width=\"100%\" height=\"360px\" src=\"https://1080.hdphimonline.com/share/9cf81d8026a9018052c429cc4e56739b\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(78, 97, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/25945237ea50caf60d28b852556d52fd\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(79, 98, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/b527e3339f309cece10812a019376d12\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(80, 99, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/eaf441351bf076375ab3a90f8b89b696\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(81, 100, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/12ceaaf0b00ef930701eefe83099d39a\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(82, 101, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/579b28b97fc22cc0af61cb2016aa1592\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(83, 102, '<iframe width=\"100%\" height=\"360px\" src=\"https://hd.hdbophim.com/share/fc37e65a7707ffd0f78dc0f561c25887\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(84, 103, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/f8034b5ee451d276471f72b61b32d802\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(85, 104, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/772adb25675cbd86f93c5fe8eb6320e0\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(86, 105, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/391177aa48863fe2e6b43208fed07be3\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(87, 106, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/c13753e71ee41c5b63cbe6a790ade138\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(88, 107, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/dbc6904b9ae5239ad74f90306daae0ad\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(89, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/ce1088f5f083f849cfded441f0a38332\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(90, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/f772996dd0a20edc601519815e416e8d\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '2', 1),
(91, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/8289b9fbebe7b39698cb1e1899b77810\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '3', 1),
(92, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/dda8019dec3926428ce2f4b0c9496fad\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '4', 1),
(94, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/3d2e13e11631314b1cb90ebca30d0eaa\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '5', 1),
(95, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/8c95f9565907b45c33de1c736be8cbda\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '6', 1),
(97, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/4804fe705dd45e8072df0745cbcfc21a\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '7', 1),
(98, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/2ab7987187e7323fa60f7cf5fc595969\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '8', 1),
(99, 108, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/ae52b0612c0c7143d257c8402026e81b\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '9', 1),
(100, 109, '<iframe width=\"100%\" height=\"360px\" src=\"https://aa.nguonphimmoi.com/share/b1c14790bce31f481f50e49de3542a85\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(101, 110, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/d17b9f24d0283dea76343dd18297f806\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(102, 111, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/Es_v_IT_2\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(103, 112, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/-uE1TM5OZ\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(104, 113, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/hqGzKdwjh\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(105, 114, '<iframe id=\"phimmoi\" width=\"100%\" height=\"360\" src=\"/play.php?link=https://kd.hd-bophim.com/20230113/29303_a56e5472/index.m3u8\" frameborder=\"0\" scrolling=\"0\" allowfullscreen=\"\"></iframe>', '1', 1),
(106, 115, '<iframe width=\"100%\" height=\"360px\" src=\"//motphimtv.me/player/?d=ym5dd0A&v=p&mad=1&ref=https://motphimtv.me/xem-phim/bai-hoc-rieng-tu-tap-full-10880_129600.html\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(107, 116, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/Lh5X5GAJo\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(108, 117, '<iframe width=\"100%\" height=\"360px\" src=\"https://vie.haiphim.com/share/a51c896c9cb81ecb5a199d51ac9fc3c5\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(109, 118, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/adf8d7f8c53c8688e63a02bfb3055497\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(110, 119, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/8N3oJBGgA\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(111, 120, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/vvJGclYi9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(112, 121, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/uKjeb9u75\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(113, 122, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/SSovRadV2\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(114, 123, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/Q7syF9lul\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(115, 124, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/aXNfD5TpG\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(116, 125, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/1_eM1YcuO\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(117, 126, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/FVAopVZfD\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(118, 127, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/0DIk9ATNM\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(119, 128, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/ipfHuy6T3\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(120, 129, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/Kg7Vudbnl\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(121, 130, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/wg6ch2Fv2\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(122, 131, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/6PN3lHPzh\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(123, 132, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/LzcNkCsxr\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(124, 133, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/m5tgdMkgZ\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(125, 134, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/WdIlJdoqO\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(126, 135, '<iframe width=\"100%\" height=\"360px\" src=\"https://kd.hd-bophim.com/share/%\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(127, 136, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/7XVYO1gpj\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(128, 137, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/KqdGDELbA\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(129, 138, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/92K4UNWJ6\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(130, 139, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/L_A1Zsi4l\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(131, 140, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/mb0LKyg5I\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(132, 142, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/9oiRypLEz\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(133, 143, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/YwoplZafr\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(134, 150, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/9cbdmf4F3\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(135, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/487MrHYrMi\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(136, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/xG545Wauq\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '2', 1),
(137, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/29LOP29pU\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '3', 1),
(138, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/PtAJyPt6Q\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '4', 1),
(139, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/wFQvnruH9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '5', 1),
(140, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/IMO9PZ3wn\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '6', 1),
(141, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/0zXhOrlAA\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '7', 1),
(142, 151, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/0L9fW7LS_\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '8', 1),
(143, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/hCBZmwQX1\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(144, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/N11jqRzklu\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '2', 1),
(145, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/nvbTFmBMh\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '3', 1),
(146, 152, '<iframe width=\"100%\" height=\"360px\" src=\"src=\"https://short.ink/91UPqLyAe\"\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '4', 1),
(147, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/Jary8DcQO\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '5', 1),
(148, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/3oeVs9UN4W\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '6', 1),
(149, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/pm7KQEak4y\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '7', 1),
(150, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/cspIx1BFL\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '8', 1),
(152, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/YatkU0Iwg\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '9', 1),
(153, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/9kShVfgA9\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '10', 1),
(154, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/OM5wOXXrd\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '11', 1),
(155, 152, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/OM5wOXXrd\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '12', 1),
(156, 153, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/V2-KpvpF2\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '1', 1),
(157, 153, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/kJ4pAlE9Ky\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '2', 1),
(158, 153, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/z3Q7ZMAgI\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '3', 1),
(159, 153, '<iframe width=\"100%\" height=\"360px\" src=\"https://short.ink/mMxnRVdvH\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"\"></iframe>', '4', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(9, 'Hành Động', 'hanh-dong', 1, 'hanh-dong'),
(10, 'Võ Thuật', 'vo-thuat', 1, 'vo-thuat'),
(11, 'Thần Thoại', 'than-thoai', 1, 'than-thoai'),
(12, 'Tâm Lý', 'tam-ly', 1, 'tam-ly'),
(13, 'Chính Kịch', 'chinh-kich', 1, 'chinh-kich'),
(14, 'Phiêu Lưu', 'phieu-luu', 1, 'phieu-luu'),
(15, 'Bí ẩn', 'bi-an', 1, 'bi-an'),
(16, 'Học Đường', 'hoc-duong', 1, 'hoc-duong'),
(17, 'Khoa Học', 'khoa-hoc', 1, 'khoa-hoc'),
(18, 'Gia Đình', 'gia-dinh', 1, 'gia-dinh'),
(19, 'Âm Nhạc', 'am-nhac', 1, 'am-nhac'),
(20, 'Chiến Tranh', 'chien-tranh', 1, 'chien-tranh'),
(21, 'Hình Sự', 'hinh-su', 1, 'hinh-su'),
(22, 'Tình Cảm', 'tinh-cam', 1, 'tinh-cam'),
(23, 'Cổ Trang', 'co-trang', 1, 'co-trang'),
(24, 'Viễn Tưởng', 'vien-tuong', 1, 'vien-tuong'),
(25, 'Kinh Dị', 'kinh-di', 1, 'kinh-di'),
(26, 'Hài Hước', 'hai-huoc', 1, 'hai-huoc'),
(27, 'Hoạt Hình', 'Kinh Điển', 1, 'hoat-hinh'),
(28, 'Thể Thao', 'the-thao', 1, 'the-thao'),
(29, 'Tài Liệu', 'tai-lieu', 1, 'tai-lieu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `year` year(4) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `name_eng` varchar(255) DEFAULT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `subtitle` int(11) NOT NULL DEFAULT 0,
  `sotap` int(11) NOT NULL DEFAULT 1,
  `thuocphim` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `year`, `trailer`, `status`, `image`, `slug`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `name_eng`, `resolution`, `subtitle`, `sotap`, `thuocphim`, `created_at`, `updated_at`) VALUES
(33, 'MÈO ĐI HIA: ĐIỀU ƯỚC CUỐI CÙNG', '102 Phút', 'Mèo Đi Hia: Điều Ước Cuối Cùng, Puss in Boots: The Last Wish 2022 FHD Vietsub\r\nPuss phát hiện ra rằng niềm đam mê phiêu lưu mạo hiểm của anh đã gây ra hậu quả: Anh đã đốt cháy 8 trong số 9 mạng sống của mình, bây giờ chỉ còn lại đúng một mạng. Anh ta bắt đầu một cuộc hành trình để tìm Điều ước cuối cùng thần thoại trong Rừng Đen nhằm khôi phục lại chín mạng sống của mình. Chỉ còn một mạng sống, đây có lẽ sẽ là cuộc hành trình nguy hiểm nhất của Puss.', 2022, 'ixFHgfKr39Y', 1, '62818.jpg', 'meo-di-hia-dieu-uoc-cuoi-cung', 13, 9, 18, 0, 'Puss in Boots: The Last Wish (2022)', 0, 0, 1, 'phimle', '2023-01-09 23:56:13', '2023-01-10 06:06:15'),
(34, 'THỰC ĐƠN BÍ ẨN', '1 giờ 47 phút', 'Thực Đơn Bí Ẩn, The Menu 2022 HD Vietsub\r\nlà một bộ phim kinh dị hài đen tối của Mỹ năm 2022 do Mark Mylod đạo diễn, Seth Reiss và Will Tracy viết kịch bản, và được sản xuất bởi Adam McKay, Betsy Koch và Will Ferrell thông qua các công ty sản xuất lần lượt là Hyperobject Industries và Gary Sanchez Productions.Một cặp đôi (Anya Taylor-Joy và Nicholas Hoult) đi đến một hòn đảo ven biển để dùng bữa tại một nhà hàng độc quyền, nơi đầu bếp (Ralph Fiennes) đã chuẩn bị một thực đơn bỉ ẩn xa hoa, với một số bất ngờ gây sốc', 2022, 'yoglvH3QJT8', 1, '51093.jpg', 'thuc-don-bi-an', 13, 2, 18, 0, 'The Menu (2022)', 0, 0, 1, 'phimle', '2023-01-10 06:02:32', '2023-01-10 06:43:18'),
(35, 'KÝ ỨC', '114 phút', 'Alex, một sát thủ cho thuê, phát hiện ra rằng anh ta trở thành mục tiêu sau khi anh ta từ chối hoàn thành công việc cho một tổ chức tội phạm nguy hiểm. Với tổ chức tội phạm và FBI đang truy lùng gắt gao, Alex có đủ kỹ năng để luôn dẫn đầu, ngoại trừ một điều: anh ta đang phải vật lộn với chứng mất trí nhớ nghiêm trọng, ảnh hưởng đến mọi hành động của anh ta. Alex phải đặt câu hỏi về mọi hành động của anh ấy và cuối cùng anh ấy có thể tin tưởng ai.', 2022, 'ye63hQLDj4k', 1, '98914.jpg', 'ky-uc', 13, 2, 18, 0, 'Memory (2022)', 0, 0, 1, 'phimle', '2023-01-10 06:13:03', '2023-01-10 06:42:37'),
(36, 'MA GƯƠNG 3', '105 phút', 'Bộ phim này tiếp tục câu chuyện của Kuntilanak 2 (2019). Dinda (Nicole Rossi), người được coi là kỳ lạ vì sức mạnh của mình sau đó yêu cầu người chăm sóc của trại trẻ mồ côi gửi cô đến Trường Mata Hati để học cách kiểm soát sức mạnh của mình.Nhưng sau đó người ta phát hiện ra rằng nhiều điều kỳ lạ đã xảy ra ở đó, trong đó có việc các học sinh mất tích. Hiệu trưởng đã cảm thấy sức mạnh của Dinda sau đó báo cáo kết quả cho người sáng lập bí ẩn của trường, Eyang Sukma (Sara Wijayanto).', 2022, 'A0Mw1GkmRuU', 1, '66102.jpg', 'ma-guong-3', 13, 2, 22, 0, 'Kuntilanak 3 (2022)', 0, 0, 1, 'phimle', '2023-01-10 06:30:40', '2023-01-10 06:42:49'),
(37, 'AVATAR 2: DÒNG CHẢY CỦA NƯỚC', '120 phút', 'Sau avatar 1 Hai nhân vật chính, Jake Sully và Neytiri, giờ đã thành đôi, nguyện sẽ ở bên nhau. Tuy nhiên, cả hai buộc phải rời khỏi nhà và khám phá những miền đất mới trên mặt trăng Pandora, cũng chính là lúc những mối nguy cũ trở lại với họ.', 2022, 'gq2xKJXYZ80', 1, '10954.jpg', 'avatar-2-dong-chay-cua-nuoc', 13, 1, 18, 0, 'Avatar 2 (2022)', 0, 0, 1, 'phimle', '2023-01-10 06:38:35', '2023-01-10 06:42:54'),
(38, 'NGƯỜI KHỞI LỬA', '94 Phút', 'Một cô gái có năng lực pyrokinetic phi thường chiến đấu để bảo vệ gia đình và bản thân khỏi những thế lực nham hiểm đang tìm cách bắt giữ và kiểm soát cô.', 2022, '59MJfJPP5eo', 1, '69080.jpg', 'nguoi-khoi-lua', 13, 2, 18, 0, 'Firestarter (2022)', 0, 0, 1, 'phimle', '2023-01-10 06:48:46', '2023-01-10 07:21:06'),
(39, 'ÂM LƯỢNG HỦY DIỆT', '110 phút', 'Câu chuyện mở ra khi một quả bom phản ứng với âm thanh được phát hiện ở trung tâm thành phố. Cuộc tấn công khủng bố này xảy ra sau một sự cố xảy ra một năm trước trong một chiếc tàu ngầm và những nhân vật quan trọng như chỉ huy tàu ngầm, phóng viên và một thành viên của Bộ Tư lệnh Hỗ trợ An ninh Quốc phòng đã cùng nhau cố gắng ngăn chặn quả bom. Kang Do Young là một chỉ huy tàu ngầm của Hải quân. Anh ta là một nhân vật chủ chốt liên quan đến sự cố tàu ngầm là nguyên nhân của vụ tấn công khủng bố. Oh Dae Oh là một phóng viên đam mê. Cha Young Han là thành viên của Bộ Tư lệnh Hỗ trợ An ninh Quốc phòng', 2022, 'J1m7i1JHGWE', 1, '93264.jpg', 'am-luong-huy-diet', 13, 2, 16, 0, 'Decibel (2022)', 0, 0, 1, 'phimle', '2023-01-10 07:10:54', '2023-01-10 07:21:02'),
(40, '3 CHÀNG NGỐC', '172 phút', 'Bộ phim kể về tình bạn của ba anh chàng Farhan, Raju và Rancho từ khi còn là học sinh cho đến khi trưởng thành. Thời còn ngồi trên ghế giảng đường, Rancho đã có ảnh hưởng rất lớn đến cuộc sống và tương lai của Farhan và Raju. Sau khi tốt nghiệp ra trường, Rancho đột nhiên biến mất. 10 năm sau, sau khi lần ra manh mối về tung tích của người bạn thân cũ, Farhan và Raju quyết định lên đường tìm Rancho ...', 2009, '172 phút', 1, '52804.jpg', '3-chang-ngoc', 13, 9, 19, 0, '3 Idiots (2009)', 0, 0, 1, 'phimle', '2023-01-10 07:15:35', '2023-01-10 07:20:56'),
(41, 'KINGMAKER', '123 phút', 'Kim Woon-Bum ( Sol Kyung-Gu ) là một chính trị gia của đảng đối lập. Anh ước mơ trở thành tổng thống của đất nước. Seo Chang-Dae ( Lee Sun-Kyun ) là một chiến lược gia xuất sắc. Anh tham gia vào ban vận động bầu cử của Kim Woon-Bum và Kim Woon-Bum tiếp tục giành chiến thắng trong các cuộc bầu cử liên tiếp. Cuối cùng, Kim Woon-Bum được bầu làm ứng cử viên tổng thống cho đảng đối lập. Trong một cuộc bầu cử tổng thống khốc liệt, một vụ nổ xảy ra tại nhà của Kim Woon-Bum. Seo Chang-Dae bị nghi ngờ là thủ phạm.', 2022, 'n5Iick4NI6U', 1, '31823.jpg', 'kingmaker', 13, 1, 10, 0, 'KingMaker (2022)', 0, 0, 1, 'phimle', '2023-01-10 07:20:39', '2023-01-10 07:20:51'),
(42, 'NHỮNG KẺ PHẢN BỘI', '99 Phút', 'Một vụ cướp bất ngờ chỉ ra một người cung cấp thông tin cho cảnh sát, và áp lực càng gia tăng sau đó tại một nhà kho. Tội phạm gây ra bạo lực khi những người sống sót - cựu binh Mr. White, người mới Mr. Orange, người giả trí về bệnh tâm thần, Mr. Blonde, chồn cãi nhau Mr. Pink và Nice Guy Eddie - làm sáng tỏ.', 2000, NULL, 1, '93115.jpg', 'nhung-ke-phan-boi', 13, 2, 18, 0, 'Reservoir Dogs (2003)', 0, 0, 1, 'phimle', '2023-01-10 07:25:22', '2023-01-10 07:40:51'),
(43, 'MẸ CHỒNG', '1g 38phút', 'Tại một điền trang đầy rẫy những bí mật, người mẹ chồng hà khắc đòi hỏi cô con dâu mới phải sinh một cháu trai để bảo vệ dòng dõi quý tộc của gia đình mình.', 2017, 'CPp7EAP7SAY', 1, '62935.jpg', 'me-chong', 13, 1, 16, 0, 'Mistress (2017)', 0, 0, 1, 'phimle', '2023-01-10 07:36:09', '2023-01-10 07:38:06'),
(44, 'NỮ QUÁI NỔI LOẠN', '103 Phút', 'Riam cực kỳ ghen tị với chị gái *Ram* vì cô ấy xinh đẹp, nữ tính và ngọt ngào. Điều đó càng khiến Riam ghen tị và chơi khăm chị gái của mình. Nhưng mọi thứ đã thay đổi vì sự xuất hiện của tên trộm đã bắt Ram và mẹ cô. Riam và băng đảng *Riam Sing* phải thực hiện một cuộc phiêu lưu để giúp đỡ gia đình cô.', 2020, 'wAi5w9k6v5E', 1, '95706.jpg', 'nu-quai-noi-loan', 13, 2, 23, 0, 'Riam Fighting Angel (2020)', 0, 0, 1, 'phimle', '2023-01-10 07:47:48', '2023-01-10 08:01:47'),
(45, 'THẤT SƠN TÂM LINH', '100 Phút', 'Thất Sơn Tâm Linh là câu chuyện kể về gã thầy thuốc sát nhân tên Huỳnh. Với tướng mạo hiền từ, cách nói chuyện nhẹ nhàng, từ tốn, thường xuyên chữa bệnh mà không lấy tiền, hắn tạo được lòng tin của rất nhiều người dân ở nơi hắn đến. Hắn ta luôn gieo rắc vào đầu người khác về những bài thuốc bí truyền, những cách chữa bệnh kỳ lạ mang đậm màu sắc kì dị…Nhưng đằng sau đó là một âm mưu khủng khiếp!', 2019, NULL, 1, '44384.jpg', 'that-son-tam-linh', 13, 2, 10, 0, 'Kumanthong (2019)', 0, 0, 1, 'phimle', '2023-01-10 07:53:37', '2023-01-10 07:54:19'),
(46, 'TIỆC TRĂNG MÁU', '118 Phút', 'Trong một buổi họp nhóm của những người bạn thân, một thành viên bất ngờ đề xuất trò chơi chia sẻ điện thoại để tăng thêm tinh thần “đoàn kết”.', 2019, NULL, 1, '96115.jpg', 'tiec-trang-mau', 13, 2, 23, 0, 'Blood Moon Party (2020)', 0, 0, 1, 'phimle', '2023-01-10 08:01:17', '2023-01-10 18:15:17'),
(48, 'IVANNA HỒN MA KHÔNG ĐẦU', '103 phút', 'Ivanna: Hồn Ma Không Đầu Ivanna 2022 Full HD Vietsub Thuyết Minh Một bộ phim kinh dị khác được chiếu rạp trong nước sẽ ra mắt công chúng ngày 9/9, đặc biệt là những người yêu điện ảnh ở Indonesia. Một bộ phim kinh dị do MD Pictures thực hiện có tựa đề Ivanna đã được chiếu tại một số rạp chiếu phim ở Indonesia. Bộ phim này là phần tiếp theo hoặc tiếp nối của bộ phim kinh dị Danur cũng đã bùng nổ cách đây vài năm. Bộ phim của Ivanna dựa trên một cuốn tiểu thuyết của Rissa Saraswati, có cùng tựa đề. Bộ phim kể về câu chuyện của một hồn ma người Hà Lan tên là Ivanna , do Sonia Alyssa thủ vai. Anh ấy và gia đình anh ấy đối xử tốt với người bản xứ.Nhưng lòng tốt của số phận thực sự được đền đáp bằng điều ngược lại. Ngay cả Ivanna cũng phải chịu một cái chết thương tâm. Bởi vì đầu của ông đã bị chặt đầu bởi lính Nhật trong cuộc chuyển giao quyền lực năm 1943. Không chỉ quân đội Nhật, hóa ra người bản xứ cũng nhúng tay vào cái chết của Ivanna . Cuối đời, Ivanna thề sẽ trả thù những kẻ đã phản bội mình. Theo dõi trên phimmoichilla.net để xem Hồn ma không đầu này sẽ trả thù những ai và kết cục ra sao mời bạn đón xem', 2022, 'i54sZ1O-vPc', 1, '32331.jpg', 'ivanna-hon-ma-khong-dau', 13, 2, 18, 0, 'Ivanna 2022 (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:19:10', '2023-01-10 18:22:38'),
(49, 'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', '152 Phút', 'Black Panther: Wakanda Forever của Marvel Studios sẽ tiếp tục khám phá thế giới có một không hai của Wakanda và tất cả các nhân vật phong phú và đa dạng đã được giới thiệu trong phần phim đầu tiên', 2022, 'sKX4zA52B9c', 1, '65668.jpg', 'chien-binh-bao-den-2-wakanda-bat-diet', 13, 2, 18, 1, 'Black Panther 2: Wakanda Forever (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:26:22', '2023-01-10 18:26:45'),
(50, 'NGƯỜI MÔI GIỚI', '129 phút', 'Tác phẩm mới nhất này của đạo diễn Nhật Bản Hirokazu Koreeda sẽ khám phá mối quan hệ của các nhân vật được hình thành thông qua một chiếc hộp trẻ con mà người ta giấu tên để lại. Bộ phim Hàn Quốc Broker có sự tham gia của các diễn viên hàng đầu như Song Kang-ho (Parasite), Bae Doona (Cloud Atlas, The Host), Kang Dong-won (Train to Busan Presents: Peninsula) và IU bí danh Lee Ji-eun. Baca selengkapnya di artikel \"Phim Người Môi Giới tập trung vào một \"chiếc hộp trẻ em\", nơi các bậc cha mẹ không thể nuôi con họ ẩn danh giao chúng cho người khác. \"Đây là câu chuyện về một chiếc hộp dành cho trẻ sơ sinh. Tôi nghe nói rằng Hàn Quốc cũng có một nơi tương tự dành cho trẻ sơ sinh. Câu chuyện bắt đầu với một em bé bị bỏ lại trong một chiếc hộp, và những người có ý định tốt và xấu quấn lấy em bé\", Kore- eda.\"Broker\" là dự án phim nói tiếng Hàn đầu tiên mà Kore-eda thực hiện. Broker là tác phẩm thứ tám của Kore-eda được mời tham dự liên hoan Cannes, những tác phẩm khác bao gồm Shoplifters đã giành giải Cành cọ vàng năm 2018.', 2022, 'AU5KLnOZQVY', 1, '73685.jpg', 'nguoi-moi-gioi', 13, 2, 16, 0, 'Broker (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:40:25', '2023-01-10 18:42:30'),
(51, 'VẾT NỨT: ÂM HỒN TRONG TRANH', '93 Phút', 'Ruja thừa hưởng một bộ sưu tập tranh từ cha mình là họa sĩ. Cô ấy phải nhanh chóng sửa chữa các hình ảnh để bán lại. Sau đó, mang tiền đến để giữ mắt cho con gái Rachel, với nghệ sĩ trẻ Tim (người phục chế nghệ thuật) phụ trách sửa chữa những \"vết nứt\" xuất hiện trên các bức tranh. Nhưng khi cả hai đến gần bức tranh, trải nghiệm đáng sợ càng đe dọa họ nhiều hơn. Hay tác phẩm nghệ thuật vô giá này sẽ đi kèm với một thứ gì đó vô giá?', 2022, NULL, 1, '31316.jpg', 'vet-nut-am-hon-trong-tranh', 13, 2, 23, 0, 'Cracked (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:44:36', '2023-01-10 18:47:08'),
(52, 'LỜI MỜI ĐẾN ĐỊA NGỤC', '104 phút', 'Sau cái chết của mẹ cô và không có người thân nào khác, Evie (Nathalie Emmanuel) làm xét nghiệm ADN ... và phát hiện ra một người em họ thất lạc từ lâu mà cô không hề biết. Được gia đình mới quen mời đến dự một đám cưới xa hoa ở vùng nông thôn nước Anh, ban đầu cô bị quyến rũ bởi người chủ nhà quý tộc gợi cảm nhưng sớm bị đẩy vào cơn ác mộng sinh tồn khi cô khám phá ra những bí mật rắc rối trong lịch sử của gia đình mình và những ý định đáng lo ngại đằng sau sự hào phóng tội lỗi của họ.', 2022, 'G51zzadAOQM', 1, '37669.jpg', 'loi-moi-den-dia-nguc', 13, 2, 18, 0, 'The Invitation (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:51:47', '2023-01-10 18:51:57'),
(53, 'SINH VẬT HUYỀN BÍ: NHỮNG BÍ MẬT CỦA THẦY DUMBLEDORE', '143 phút', 'Chào mừng trở lại thế giới pháp thuật! Hãy cùng nhau khám phá những bí mật, những câu chuyện chưa được kể của thầy Albus Dumbledore và kế hoạch ngăn chặn cuộc nổi loạn của Gellert Grindelwald trong phần 3 Sinh Vật Huyền Bí.', 2022, 'citR_GSenWA', 1, '31799.jpg', 'sinh-vat-huyen-bi-nhung-bi-mat-cua-thay-dumbledore', 13, 2, 18, 0, 'Fantastic Beasts: The Secrets of Dumbledore - Fantasy (2022)', 0, 0, 1, 'phimle', '2023-01-10 18:58:05', '2023-01-10 18:58:16'),
(54, 'KẺ CẮP MẶT TRĂNG 4: SỰ TRỖI DẬY CỦA GRU', '88 phút', 'Tiếp nối bộ phim ke cap mat trang 3 năm 2015 , lần này ở trung tâm của thập niên 1970, Felonius Gru mười hai tuổi đang lớn lên ở vùng ngoại ô. Một fanboy của một nhóm giám sát được gọi là Vicy 6, Gru ấp ủ một kế hoạch trở thành ác quỷ đủ để tham gia cùng họ. Khi Vicy 6 sa thải thủ lĩnh của họ, chiến binh huyền thoại Wild Knuckles, Gru phỏng vấn để trở thành thành viên mới nhất của họ.Mọi chuyện không suôn sẻ, và mọi thứ chỉ trở nên tồi tệ hơn sau khi Gru đánh cắp chúng với sự giúp đỡ của Kevin, Stuart, Bob, Otto và các Minion khác và đột nhiên thấy mình là kẻ thù không đội trời chung của ác quỷ. Trên đường chạy trốn, Gru và Minions sẽ chuyển sang một nguồn không thể để được hướng dẫn, chính Wild Knuckles và phát hiện ra rằng ngay cả những kẻ xấu cũng cần một chút giúp đỡ từ bạn bè của họ.Đến ác nhân cũng có những nỗi đau khôn nguôi...', 2022, 'dTQXlDV16SY', 1, '42194.jpg', 'ke-cap-mat-trang-4-su-troi-day-cua-gru', 13, 2, 10, 0, 'Minions: The Rise Of Gru (2022)', 0, 0, 1, 'phimle', '2023-01-10 19:03:44', '2023-01-10 19:03:52'),
(55, 'DÒNG MÁU ĐẶC CẢNH', '119 Phút', 'Một sĩ quan cảnh sát được giao nhiệm vụ bí mật điều tra một trưởng nhóm tin rằng các quy tắc không nên ngăn chặn một cuộc điều tra. Khi sĩ quan điều tra thêm, thái độ của chính anh ta bắt đầu phản ánh thái độ của người trưởng nhóm.', 2022, NULL, 1, '26828.jpg', 'dong-mau-dac-canh', 13, 2, 16, 0, 'The Policeman\'s Lineage (2022)', 0, 0, 1, 'phimle', '2023-01-10 19:08:44', '2023-01-10 19:09:00'),
(56, '578: PHÁT ĐẠN CỦA KẺ ĐIÊN', '107 phút', 'Khi con gái anh bị bắt cóc, một tài xế xe tải khiêm tốn thể hiện những kỹ năng chết người từng dùng trong quá khứ để đối đầu với tổ chức tội phạm đứng sau vụ bắt cóc.', 2022, NULL, 1, '52870.jpg', '578-phat-dan-cua-ke-dien', 13, 1, 23, 0, '578: Magnum (2022)', 0, 0, 1, 'phimle', '2023-01-11 02:37:48', '2023-01-11 02:38:01'),
(57, 'DRAGON BALL SUPER: SUPER HERO', '90 phút', 'Bộ phim Bảy viên ngọc rồng thứ 21 và là bộ phim Dragon Ball Super thứ hai . Ban đầu nó được phát hành vào ngày 22 tháng 4 năm 2022; tuy nhiên, một vụ hack tại Toei đã khiến bộ phim bị trì hoãn đến ngày 11 tháng 6 năm 2022.Đội quân Red Ribbon đã từng bị tiêu diệt bởi Son Goku. Các cá nhân, những người mang trong mình tinh thần của nó, đã tạo ra các Android cuối cùng, Gamma 1 và Gamma 2. Hai Android này tự gọi mình là *Siêu anh hùng*. Họ bắt đầu tấn công Piccolo và Gohan… Mục tiêu của Quân đoàn Red Ribbon Mới là gì?', 2022, 'JAV_YRopxYs', 1, '28440.jpg', 'dragon-ball-super-super-hero', 13, 9, 11, 0, 'Dragon Ball Super: SUPER HERO (2022)', 0, 0, 1, 'phimle', '2023-01-11 02:42:10', '2023-01-11 02:42:19'),
(58, 'LIÊN MINH SIÊU THÚ DC', '105 Phút', 'Dog và Superman là những người bạn tốt nhất không thể tách rời, có chung siêu năng lực và cùng nhau chiến đấu chống tội phạm ở Metropolis. Tuy nhiên, khi Man of Steel và các thành viên còn lại của Justice League bị bắt cóc, Krypto phải thuyết phục một nhóm động vật ragtag làm chủ sức mạnh mới được tìm thấy của chúng cho một nhiệm vụ giải cứu.', 2022, 'L2umMe5uRnk', 1, '10087.jpg', 'lien-minh-sieu-thu-dc', 13, 2, 18, 0, 'DC League of Super-Pets (2022)', 0, 0, 1, 'phimle', '2023-01-11 02:45:30', '2023-01-11 02:45:40'),
(59, 'BLACK ADAM', '118 Phút', 'Phim kể về người đàn ông Black Adam đã bị giam cầm sau gần 5000 năm, giờ đây anh được các vị thần Ai Cập bang cho những sức mạnh đầy quyền năng, và từ đó anh đã thoát ra khỏi sự giam cầm. Từ đây, Black Adam đã tận dụng sức mạnh này để bắt đầu một cuộc sống công lý độc nhất trên thế giới hiện đại hóa này. Không những thế anh còn phải đối mặt với những kẻ thù hung ác mới.', 2022, 'Nv5Qt_nMRb8', 1, '2528.jpg', 'black-adam', 13, 2, 18, 0, 'Black Adam (2022)', 0, 0, 1, 'phimle', '2023-01-11 02:49:34', '2023-01-11 02:49:46'),
(60, 'NỮ VƯƠNG HUYỀN THOẠI', '135 Phút', 'Nữ Vương Huyền Thoại là câu chuyện đội quân nữ chiến binh phi thường Agojie đã bảo vệ vương quốc Dahomey ở Châu Phi vào những năm 1800 với kỹ năng và sự kiên cường không giống bất cứ điều gì thế giới từng thấy. Lấy cảm hứng từ những sự kiện lừng lẫy có thật, The Woman King là khúc hùng ca đầy cảm xúc về cuộc hành trình của vị nữ tướng Nanisca (thủ vai bởi diễn viên Viola Davis, người từng đoạt giải Oscar®) khi cô đào tạo thế hệ tân binh tiếp theo và sẵn sàng cho họ chiến đấu chống lại kẻ thù tàn bạo đang đe dọa vương quốc của họ.', 2022, NULL, 1, '93550.jpg', 'nu-vuong-huyen-thoai', 13, 1, 18, 0, 'The Woman King (2022)', 0, 0, 1, 'phimle', '2023-01-11 02:54:16', '2023-01-11 02:54:23'),
(61, 'GULLIVER DU KÝ', '90 Phút', 'Nhà du hành và thám hiểm thế giới Gulliver được mời quay trở lại Lilliput, thị trấn trước đây anh đã cứu khỏi hạm đội kẻ thù của Blefuscu láng giềng.', 2022, 'eNIS7UZdGbQ', 1, '89087.jpg', 'gulliver-du-ky', 13, 2, 18, 0, 'Gulliver Returns (2022)', 0, 0, 1, 'phimle', '2023-01-11 07:43:16', '2023-01-11 11:33:56'),
(62, 'NGHỀ SIÊU DỄ', '1g 57phút', 'Viên cảnh sát về hưu và một nhóm người lập dị trong khu phố dùng một quán ăn làm bình phong để truy bắt tên trùm tội phạm khó đoán.', 2022, NULL, 1, '86072.jpg', 'nghe-sieu-de', 13, 2, 23, 0, 'Extremely Easy Job (2022)', 0, 0, 1, 'phimle', '2023-01-11 11:46:37', '2023-01-11 12:44:23'),
(63, 'BỐ GIÀ', '128 Phút', 'Câu chuyện về Ba Sang - con thứ hai trong 4 anh em ồn ào: Giàu, Sang, Phú, Quý. Ba Sang là một người ga lăng, “quá” tốt bụng và luôn hy sinh vì người khác dù họ có muốn hay không. Quân - Ba Sang’s son là một Youtuber trẻ hiện đại.', 2021, 'PDp4Ic8ZGUM', 1, '42670.jpg', 'bo-gia', 13, 2, 23, 1, 'Dad, I\'m Sorry (2021)', 0, 0, 1, 'phimle', '2023-01-11 12:43:41', '2023-01-11 12:44:48'),
(64, 'HẠ CÁNH KHẨN CẤP', '2 giờ 21 phút', 'Là một bộ phim truyền hình kinh dị hồi hộp từ đầu đến cuối. Mang chủ đề xoay quanh một loại virus đe dọa, tác phẩm của đạo diễn kiêm biên kịch Han Jae-rim chứa đầy thông điệp đạo đức về tình người và gia đình.Jae-hyuk (Lee Byung-hun) là một cựu phi công muốn đưa con trai của mình, So-min) đến Hawaii để điều trị bệnh chàm của mình. Vợ của thám tử In-ho (Song Kang-ho) cũng vậy, người đi nghỉ cùng bạn bè của anh ta.Khi ở trong nhà vệ sinh, So-min phát hiện ra rằng Jin-seok (Yim Si-wan) đã đặt một thứ gì đó vào nách của mình. Jin-seok biết điều này cũng theo So-min, bao gồm cả việc bay đến Hawaii.Mặt khác, In-ho phát hiện ra Jin-seok là một kẻ tâm thần, người đã tải lên một đoạn video, tiết lộ kế hoạch thực hiện một hành động khủng bố trên máy bay. Nhưng anh ấy phát hiện ra rằng Jin-seok đã đáp chuyến bay K1501 mà vợ anh ấy cũng đang đi.Chuyến bay đáng sợKhông nói thêm gì, bộ phim mở đầu bằng sân bay Seoul nhộn nhịp, Jae-hyuk bí ẩn, đồng thời giới thiệu các nhân vật chính và xuất thân của họ để khiến anh gắn bó hơn với khán giả. Cốt truyện được đóng gói với sự hồi hộp từ đầu đến cuối. Thời lượng hai giờ cảm thấy phù hợp khi xem xét số lượng nhân vật và độ phức tạp của cốt truyện được kể. Mọi thứ ngày càng dày đặc hơn với những bí ẩn liên tục hiện ra từ hàng loạt nhân vật có sức hút riêng.Quy mô lớn phim hạ cánh khẩn cấp có thể được nhìn thấy từ hàng loạt tên tuổi lớn tham gia như Lee Byung-hun, Jeon Do-yeon, và chưa kể đến Song Kang-ho, người cũng đóng vai chính trong bộ phim hài Broker (2022) đã phát sóng cách đây vài tháng.Gây chú ý nhất dĩ nhiên là cựu thần tượng Yim Si-wan, người ngày càng nổi tiếng sau khi bước chân vào thế giới diễn xuất với vai chính trong bộ phim truyền hình Moon Embracing the Sun (2012). Anh ấy thể hiện nhân vật Jae-hyuk, người có vai trò lớn trong việc thể hiện ấn tượng hấp dẫn trong câu chuyện.', NULL, NULL, 1, '40292.jpg', 'ha-canh-khan-cap', 13, 2, 16, 0, 'Emergency Declaration (2022)', 0, 0, 1, 'phimle', '2023-01-11 12:50:02', '2023-01-11 12:50:02'),
(65, 'JUJUTSU KAISEN 0: CHÚ THUẬT HỒI CHIẾN', '105 Phút', 'Những bất hạnh bạo lực thường xuyên xảy ra xung quanh Yuuta Okkotsu, 16 tuổi, một nạn nhân nhút nhát của nạn bắt nạt ở trường trung học. Yuuta bị đeo một lời nguyền quái dị, một sức mạnh có thể gây ra sự trả thù tàn bạo chống lại những kẻ bắt nạt mình. Rika Orimoto, lời nguyền của Yuuta, là cái bóng từ thời thơ ấu đầy bi kịch của anh và là mối đe dọa có thể gây chết người cho bất cứ ai dám sai anh ta.Tình huống độc đáo của Yuuta thu hút sự chú ý của Satoru Gojou, một pháp sư quyền năng đang giảng dạy tại trường Trung học Jujutsu Tokyo. Gojou nhìn thấy tiềm năng to lớn ở Yuuta, và ông hy vọng sẽ giúp cậu bé chuyển gánh nặng chết chóc của mình thành một lực lượng tốt. Tuy nhiên, Yuuta phải vật lộn để tìm được vị trí của mình trong số những người bạn học tài năng của mình: Toge Inumaki bị câm có chọn lọc, chuyên gia vũ khí Maki Zenin và Panda.Yuuta sử dụng Rika một cách vụng về trong các nhiệm vụ với các học sinh năm nhất khác, nhưng hậu quả khủng khiếp của màn thể hiện sức mạnh khủng khiếp của Rika đã thu hút sự quan tâm của người sử dụng lời nguyền tính toán Suguru Getou. Khi Getou cố gắng yêu cầu sức mạnh của Rika và sử dụng nó để loại bỏ tất cả những người không sử dụng thuật thuật trên thế giới, Yuuta chiến đấu cùng với bạn bè của mình để ngăn chặn âm mưu diệt chủng.', 2022, 'B9IXDN-zrA', 1, '82596.jpg', 'jujutsu-kaisen-0-chu-thuat-hoi-chien', 13, 2, 11, 0, 'Jujutsu Kaisen 0: The Movie (2021)', 0, 0, 1, 'phimle', '2023-01-11 12:52:43', '2023-01-11 12:56:43'),
(66, 'DÂN CHƠI KHÔNG SỢ CON RƠI', '1g 28phút', 'Một người đàn ông đào hoa buộc phải thay đổi tính nết khi anh bỗng phải chăm sóc cô con gái mà anh chưa từng biết tới.', 2020, NULL, 1, '26244.jpg', 'dan-choi-khong-so-con-roi', 13, 2, 23, 0, 'My Father is a Playboy (2022)', 0, 0, 1, 'phimle', '2023-01-11 12:55:10', '2023-01-11 12:56:47'),
(67, 'ĐÁ NGẦM: KẺ THEO DÕI', '89 Phút', 'Sau khi chị gái bị sát hại, Nic, em gái của cô và hai người bạn tìm kiếm niềm an ủi thông qua chuyến phiêu lưu chèo thuyền kayak trên đảo Thái Bình Dương. Nhiều giờ sau chuyến đi, những người phụ nữ bị một con cá mập rình rập và phải tập hợp lại với nhau, đối mặt với nỗi sợ hãi và cứu lẫn nhau.', 2022, NULL, 1, '10033.jpg', 'da-ngam-ke-theo-doi', 13, 2, 18, 0, 'The Reef: Stalked (2022)', 0, 0, 1, 'phimle', '2023-01-11 12:58:12', '2023-01-11 12:59:03'),
(68, 'SHANG-CHI VÀ HUYỀN THOẠI THẬP LUÂN', '132 phút', 'Phim thuộc giai đoạn 4 của Vũ trụ điện ảnh Marvel. Nhân vật này được biết đến như một bậc thầy Kung Fu, tinh thông võ thuật. Sức mạnh của Shang-Chi đến từ hàng ngàn giờ luyện tập miệt mài và sự kỷ luật cao độ với bản thân. Siêu anh hùng võ thuật này được chính bố dạy dỗ để trở thành một sát thủ chuyên nghiệp và kế thừa tập đoàn tội ác của ông.', 2022, '5K66kfVce0k', 1, '52823.jpg', 'shang-chi-va-huyen-thoai-thap-luan', 13, 9, 18, 0, 'Shang Chi and the Legend of the Ten Rings (2021)', 0, 0, 1, 'phimle', '2023-01-11 13:00:39', '2023-01-12 07:55:36'),
(69, 'THẾ GIỚI LẠ LÙNG', '1 giờ 42 phút', 'Hành trình phiêu lưu hành động ban đầu đi sâu vào một vùng đất chưa được khám phá và đầy nguy hiểm, nơi những sinh vật kỳ lạ đang chờ đợi các Clades huyền thoại, một gia đình gồm các nhà thám hiểm có sự khác biệt đe dọa lật đổ nhiệm vụ mới nhất - và cho đến nay - quan trọng nhất của họ.Jaeger Clade và con trai Searcher là những nhà thám hiểm dũng cảm vượt qua vùng hoang dã để khám phá những thế giới mới. Trong khi cố gắng băng qua một ngọn núi bao quanh vùng đất Avalonia, Searcher phát hiện ra một loại cây phát ra năng lượng. Jaeger khăng khăng muốn tiếp tục cuộc thám hiểm, nhưng Searcher và những người còn lại trong nhóm thám hiểm tin rằng loài thực vật mới, được đặt tên là Pando , là đủ tốt, và Jaeger tức giận tiếp tục nhiệm vụ của mình một mình. 25 năm sau, Searcher đã tạo dựng tên tuổi của mình bằng cách thu hoạch Pando và biến nó thành nguồn nhiên liệu cho Avalonia . Anh ấy đã kết hôn với người thợ gặt Meridian và họ có một cậu con trai tên là Ethan , người luôn cảm thấy xấu hổ mỗi khi Searcher cố gắng nói chuyện với người anh ấy thích, Diazo.Một ngày nọ, Callisto Mal , trợ lý lãnh đạo của Avalonia, đến nhà của Clades trên một con tàu bay khổng lồ có tên là Venture. Cô ấy thông báo cho các nhánh rằng Pando đang mất dần sức mạnh và họ cần Người tìm kiếm giúp tìm ra nguyên nhân, và đó là cách người sáng lập và cũng là thủ lĩnh vĩ đại của cô ấy, Đại úy Calypso Khan chỉ định họ tham gia một đội thám hiểm mới trong nhiệm vụ của họ. Anh ấy tham gia một đội thám hiểm mới và họ đi vào một hố sụt khổng lồ, nơi có những chiếc rễ khổng lồ của Pando. Trên đường đi xuống, Meridian cố gắng bắt kịp chiếc khăn lau cây trồng của cô ấy sau khi Ethan và chú chó Legend của họ đã lẻn lên tàu. Họ bị tấn công bởi những sinh vật giống wyvern và tiếp tục đi xuống cho đến khi phá vỡ lớp vỏ nhạy cảm và kết thúc ở một thế giới dưới lòng đất. Trong sự cố, Searcher và Legend bị tách khỏi nhóm....', 2022, '8VGv6KExL0E', 1, '77305.jpg', 'the-gioi-la-lung', 13, 2, 18, 0, 'Strange World (2022)', 0, 0, 1, 'phimle', '2023-01-11 13:23:19', '2023-01-12 07:55:41'),
(70, 'THỦY CHIẾN ĐẢO HANSAN: RỒNG TRỖI DẬY', '129 phút', 'Là một sử thi chiến tranh lịch sử mô tả Trận chiến đảo Hansan ngoài khơi bờ biển phía nam Hàn Quốc vào tháng 7 năm 1592, nơi Đô đốc Yi Sun-sin đánh bại lực lượng lớn hơn của Nhật Bản thông qua các chiến thuật thông minh và việc sử dụng chiến hạm rùa đặc trưng của ông “Geobukseon” .Phim kể về trận đại chiến giữa Hàn Quốc và Nhật Bản tại Vịnh Hansan. Chỉ với 66 chiến thuyền, quân của Yi Sun Sin đã thành công trong việc đẩy lùi quân Nhật. Trên thực tế, quân của Yi Sun Sin không có thương vong, trong khi Nhật Bản phải mất 66 tàu chiến.Tướng Yi Sun Sin là một nhân vật anh hùng của Hàn Quốc trong Chiến tranh Imjin chống Nhật Bản. Tổng cộng, đã có ít nhất 23 cuộc hải chiến mà Yi Sun Sin đã phải đối mặt. Nhân vật Yi Sun Sin do Park Hae-il thủ vai.Bộ phim thủy chiến đảo hansan: rồng trỗi dậy này nối tiếp thành công của The Admiral: Roaring Current được rất nhiều người xem. Hansan: Rising Dragon đã thu về 6 triệu lượt xem kể từ khi công chiếu tại Hàn Quốc vào ngày 27/7. Đây là con số khá tuyệt vời khi chỉ trong 26 ngày phát sóng.', 2022, 'pRjU-UcEVYI', 1, '88113.jpg', 'thuy-chien-dao-hansan-rong-troi-day', 13, 2, 16, 0, 'Hansan: Rising Dragon (2022)', 0, 0, 1, 'phimle', '2023-01-12 07:42:13', '2023-01-12 15:04:33'),
(71, 'QUÁI THÚ', '90 phút', 'Một người cha và hai cô con gái tuổi teen của mình bị săn đuổi bởi một con sư tử khổng lồ với ý định chứng minh rằng Savanna chỉ có một động vật ăn thịt ở đỉnh.Tập trung vào một gia đình đang bảo vệ mạng sống của họ chống lại một con sư tử bất hảo bị kích thích và trở nên hung dữ bởi những kẻ săn trộm đang săn lùng niềm kiêu hãnh của nó, bất kỳ ai đã từng xem một bộ phim trước đây đều nhận ra rằng các nhân vật chính của quái thú 2022 có lẽ sẽ ổn.Mặc dù vậy, đạo diễn Baltasar Kormákur (một nhà làm phim không được đánh giá cao đã từng thử nghiệm những hình ảnh sinh tồn trước đó với Everest đầy tham vọng hơn so với bộ phim kinh dị được sắp xếp hợp lý và thu nhỏ này và những viên đá quý của Iceland như The Oath ) truyền tải cảm giác nguy hiểm thú vị thông qua sự tàn bạo về nội tạng (lợi dụng điểm xếp hạng R để khắc họa những vết thương ghê tởm ghê tởm) và các cuộc tấn công không ngừng (thường bắt đầu từ các góc máy xảo quyệt gây ra nỗi kinh hoàng thông qua tốc độ mà sư tử hung hãn trên khắp Savanna Nam Phi để cắn xé nạn nhân của mình). CGI thuyết phục (đặc biệt là khi bị che khuất trong bóng tối) sẽ giúp ích cho bạn, theo dõi chi tiết hơn trên phimmoi để thưởng thức trọn bộ phim phiêu lưu kinh dị này nha.', 2022, 'umnc7ygtCCI', 1, '58365.jpg', 'quai-thu', 13, 2, 18, 0, 'Beast (2022)', 0, 0, 1, 'phimle', '2023-01-12 07:45:32', '2023-01-12 07:55:52'),
(72, 'QUÁI XẾ GIAO HÀNG', '1h 48 phút', 'Eun-Ha ( Park So-Dam thủ vai ) là một tài xế đặc biệt để giao hàng. Cô ấy giao bất cứ thứ gì hoặc bất kỳ ai với mức giá phù hợp. Tỷ lệ thành công của cô ấy là 100%, nhưng cô ấy bị dính vào một tai nạn giao hàng bất ngờ.', 2022, 'ZpuGjZzNGbs', 1, '39286.jpg', 'quai-xe-giao-hang', 13, 9, 16, 0, 'Special Delivery (2022)', 0, 0, 1, 'phimle', '2023-01-12 07:48:33', '2023-01-12 07:55:57'),
(73, 'NGÔI ĐỀN KỲ QUÁI 3', '114 phút', 'Sau thành công của ngôi đền kỳ quái 2 phần Pee Nak 3 này nói về Aod, một người thầy tu trẻ tuổi ở Đền Thamma Nakanimitr, đã khai quật được một chiếc vòng chân cổ bằng vàng từ một ngôi mộ. Anh ta quyết định bỏ túi chiếc vòng chân và sau đó trở thành \"con mồi\" của một lời nguyền biến da của anh ta thành vảy rắn. Lời nguyền đánh thức hồn ma của một tu sĩ là nạn nhân đầu tiên của lời nguyền, và anh ta muốn chiếc vòng chân của mình trở lại, vì anh ta đã bị lời nguyền tra tấn. Aod và những người bạn của mình bắt tay vào hành trình tìm cách chữa khỏi lời nguyền ở vùng Đông Bắc Thái Lan và sông Mekong. Hồn ma của Nak Kam theo sau họ khi họ chạy đua với thời gian để cứu Aod trước khi anh ta chết.', 2022, 'DBuOUvsATzc', 1, '48178.jpg', 'ngoi-den-ky-quai-3', 13, 2, 21, 0, 'Pee Nak 3 (2022)', 0, 0, 1, 'phimle', '2023-01-12 07:53:23', '2023-01-12 07:56:01'),
(74, 'NGUY CƠ TỪ HAI PHÍA', '92 phút', 'Jimmy (Matthew Lawrence) gần đây đã mất anh trai của mình và hứa sẽ rải tro của anh ấy xuống đại dương. Tuy nhiên, kế hoạch của anh ta bị trật bánh khi một cửa hàng tiện lợi bình thường trở thành một cuộc tấn công của đám đông nhằm vào nhân viên thu ngân Natasha (Danielle C. Ryan). Khi Jimmy cố gắng chạy trốn, anh ta phát hiện ra Natasha đang trốn ở ghế sau, và biết rằng cô ấy không phải là một nhân viên thu ngân ngẫu nhiên, mà là một phụ nữ đang chạy trốn khỏi đám đông với tính cách khác biệt: Nat và Tasha. Sau một hồi thuyết phục, Nat và Tasha gắn bó với Jimmy trong một chuyến đi xuyên quốc gia, hy vọng sẽ trốn thoát trên một chiếc thuyền đến Hawaii. Nhưng khi con trai của trùm tội phạm, Ellis (Kevin Joy), tham gia lực lượng với cánh tay phải của đám Ask (Dawn Olivieri), một cuộc rượt đuổi xuyên quốc gia bùng nổ và bạo lực.', 2022, 'e6Q2ikM1bUk', 1, '17840.jpg', 'nguy-co-tu-hai-phia', 13, 2, 18, 0, 'Double Threat (2022)', 0, 0, 1, 'phimle', '2023-01-12 08:04:28', '2023-01-12 08:04:43'),
(75, 'GIỚI HẠN TRUY LÙNG', '87 Phút', '“Limit” là một bộ phim kinh dị hồi hộp kể về một cảnh sát bí mật truy lùng tên tội phạm đứng sau một vụ án bắt cóc kinh hoàng. Viên cảnh sát tham gia vào vụ án bằng cách thay thế cha mẹ của nạn nhân bắt cóc. Khi cô chiến đấu để truy đuổi tên tội phạm, cô thấy mình bị cuốn vào những trò chơi đấu trí căng thẳng, mang tính quyết định cao với kẻ bắt cóc.', 2022, '5WlCHaZ9Xc8', 1, '34300.jpg', 'gioi-han-truy-lung', 13, 2, 16, 0, 'Limit (Rimiteu) (2022)', 0, 0, 1, 'phimle', '2023-01-12 14:29:41', '2023-01-12 14:33:20'),
(76, 'ĐOẠN BĂNG KINH HOÀNG 94', '100 phút', 'Một người phụ nữ mặc áo trắng hít hơi từ một chất màu trắng đục trên tay. Sau đó, cùng một người phụ nữ, với đôi mắt khoét sâu, đếm ngược từ mười bằng một giọng y tĩnh khi một người phụ nữ khác đi qua phía sau cô. Một đội SWAT - bao gồm Slater, Oursler, Sprayberry, Spivey, Petro và Nash - đột kích vào một nhà kho trong một vụ bắt quả tang ma túy, với người quay phim Gary đi theo. Họ tìm thấy một chiếc máy bay tư nhân phía sau nhà kho. Một giọng nữ méo mó phát ra từ loa: \"Tất cả đều được chào đón. Tất cả đang theo dõi. Cuối cùng, các tín đồ, đêm nay là đêm mà bạn đã chờ đợi. Hãy theo dõi tín hiệu của tôi. Tín hiệu là chất kích thích. Tín hiệu là liều thuốc an thần. tín hiệu là sự cứu rỗi. \" Khi các sĩ quan đi qua các hành lang chật hẹp, họ phát hiện ra nhiều phòng giống như phòng giam của nhà tù với máy thu hình hiển thị tĩnh. Họ phát hiện ra một người đàn ông đang ngồi trong một trong những căn phòng,Tiến qua nhà kho để tìm kiếm những kẻ tình nghi, cả nhóm tiến vào căn phòng được thấy trong băng VHS và bắt gặp thêm nhiều tên tu luyện đã chết. Slater ra lệnh tìm kiếm tầng trên cùng với đội Xanh trong khi các sĩ quan còn lại tiếp tục đi khi một trong những chiếc tivi bắt đầu phát bản tin.', 2021, 'opnSln8Ue2U', 1, '52476.jpg', 'doan-bang-kinh-hoang-94', 13, 2, 18, 0, 'V/H/S/94 (2021)', 0, 0, 1, 'phimle', '2023-01-12 14:33:10', '2023-01-12 14:34:48'),
(77, 'CƯỜI', '115 phút', 'Sau khi chứng kiến ​​một sự việc kỳ lạ, đau thương liên quan đến một bệnh nhân, Tiến sĩ Rose Cotter (Sosie Bacon) bắt đầu trải qua những điều đáng sợ xảy ra mà cô ấy không thể giải thích. Khi một nỗi kinh hoàng bao trùm bắt đầu chiếm lấy cuộc sống của cô, Rose phải đối mặt với quá khứ rắc rối của mình để tồn tại và thoát khỏi thực tại mới kinh hoàng của mình.', 2022, 'x2JI8RVWrr0', 1, '55305.jpg', 'cuoi', 13, 2, 18, 1, 'Smile (2022)', 0, 0, 1, 'phimle', '2023-01-12 14:38:21', '2023-01-12 14:38:31'),
(78, 'TĂNG TỐC VỀ PHÍA EM', '132 phút', 'Khi một nhà vô địch thế giới của môn thể thao xếp chồng bị bạn gái lâu năm của mình ném đá, anh ta phải học những kỹ năng đánh đòn cơ bản để có thể sống một mình và chăm sóc bản thân.', 2022, '_DfdCFaBEp0', 1, '96147.jpg', 'tang-toc-ve-phia-em', 13, 9, 21, 0, 'Fast & Feel Love (2022)', 0, 0, 1, 'phimle', '2023-01-12 14:42:29', '2023-01-12 14:42:36'),
(79, 'LYLE, CHÚ CÁ SẤU BIẾT HÁT', '106 Phút', 'Khi gia đình Primm chuyển đến thành phố New York, cậu con trai nhỏ Josh của họ phải vật lộn để thích nghi với trường học mới và những người bạn mới. Tất cả những điều đó thay đổi khi anh phát hiện ra Lyle - một con cá sấu biết hát, thích tắm, trứng cá muối và âm nhạc tuyệt vời - đang sống trên gác mái của ngôi nhà mới của mình. Nhưng khi sự tồn tại của Lyle bị đe dọa bởi người hàng xóm xấu xa, ông Grumps, các Primms phải tập hợp lại với nhau để cho thế giới thấy rằng gia đình có thể đến từ những nơi không ngờ tới nhất.', NULL, 'lKuVxwH119I', 1, '1256.jpg', 'lyle-chu-ca-sau-biet-hat', 13, 2, 18, 0, 'Lyle, Lyle, Crocodile (2022)', 0, 0, 1, 'phimle', '2023-01-12 14:45:43', '2023-01-12 14:45:43'),
(80, 'ALIENOID: CUỘC CHIẾN XUYÊN KHÔNG', '142 phút', 'Alienoid là một bộ phim khoa học viễn tưởng của đạo diễn Choi Dong Hoon. Phim Hàn Quốc mới nhất chuẩn bị kể câu chuyện du hành thời gian lấy bối cảnh thời hiện đại và thời đại hoàng gia. Một cốt truyện hấp dẫn cũng đã sẵn sàng để chiêu đãi khán giả. Hàng loạt diễn viên đóng vai chính trong bộ phim Alienoid , không có nghi ngờ gì về kỹ năng diễn xuất của họ. Có Ryu Jun Yeol nổi tiếng với Reply 1988, Kim Woo Bin vừa hoàn thành bộ phim truyền hình nổi tiếng Our Blues và So Ji Sub đóng phim truyền hình Oh My Venus .Không thể bỏ qua Kim Tae Ri, người đã đánh cắp sự chú ý của khán giả với diễn xuất trong bộ phim The Handmaiden and the Drakor Twenty Five Twenty One . Bộ phim Alienoid còn có sự tham gia diễn xuất của Honey Lee ( Extreme Job ), Yum Jung Ah ( Sky Castle ) đến Jo Woo Jin ( Goblin ).Nội dung chính alienold cuộc chiến xuyên không Trong triều đại Goryeo, các đạo sĩ cố gắng tìm kiếm một thanh kiếm bí ẩn, trong khi người ngoài hành tinh xuất hiện trên trái đất thời hiện đại và nhập vào cơ thể con người. Cánh cửa thời gian mở ra bắt đầu tạo ra sự hỗn loạn quét ngang trái đất. Kim Tae Ri vào vai một người phụ nữ giỏi đánh đấm nhân vật chính tên là Lee Ahn.Trong khi đó, Ryu Jun Yeol trở thành một người tên Mureuk từ triều đại Goryeo, người giỏi sử dụng kiếm và gặp Kim Tae Ri. Mureuk đã rất ngạc nhiên khi nhìn thấy các công cụ từ tương lai. Kim Woo Bin trở thành người bảo vệ đối đầu với những tù nhân ngoài hành tinh nhập vào cơ thể người.', 2022, 'ZmPvNvVsJCY', 1, '45315.jpg', 'alienoid-cuoc-chien-xuyen-khong', 13, 2, 16, 0, 'Alienoid (2022)', 0, 0, 1, 'phimle', '2023-01-12 14:50:51', '2023-01-12 14:51:06'),
(81, 'DIỆP VẤN 4: HỒI CUỐI', '125 phút', 'Diệp Vấn 4 là câu chuyện tiếp theo khi kết thúc phần 3, Diệp Vấn trở thành \"gà trống nuôi con\" khi vợ mất vì bệnh ung thư. Phần 4 tiếp tục mạch truyện trước nhưng mốc thời gian là vào năm 1964, lúc này Diệp Vấn đã hơn 70 tuổi. Phát hiện mình bị ung thư thanh quản do nhiều năm hút thuốc, chưởng môn họ Diệp sau đó đã quyết định sang San Francisco (Mỹ) để kiếm trường cho con và dạy võ. Thế nhưng người Mỹ lại không hiểu được võ thuật Trung Hoa. Đồng thời chính Diệp Vấn lại bị thử thách nhiều lần ngay trên đất Mỹ, nơi cộng đồng Hoa kiều bị dân Mỹ nhìn với ánh mắt phân biệt.', 2019, NULL, 1, '21233.jpg', 'diep-van-4-hoi-cuoi', 13, 1, 17, 0, 'Ip Man 4: The Finale (2019)', 0, 0, 1, 'phimle', '2023-01-12 14:54:33', '2023-01-12 14:54:45'),
(82, 'MÁY ĐẾM THẺ', '112 phút', 'Nội dung bộ phim là câu chuyện về một người đàn ông William Tell cực nghiện cờ bạc. Nhưng “niềm đam mê” ấy những tưởng sẽ được dập tắt đi bởi sự xuất hiện của Crick một thanh niên dễ thương. Thế nhưng dường như sự xuất hiện ấy lại làm anh không thể thoát ra khỏi bóng tối trong quá khứ.', 2021, '7RvVT1cDiNc', 1, '23230.jpg', 'may-dem-the', 13, 2, 18, 0, 'The Card Counter (2021)', 0, 0, 1, 'phimle', '2023-01-12 14:58:23', '2023-01-12 14:58:32'),
(84, 'LINH MỤC STU', '2 giờ 4 phút', 'Tiếp nối cuộc đời của Cha Stuart Long, một võ sĩ quyền anh, người đã truyền cảm hứng cho vô số người trong cuộc hành trình từ tự hủy diệt đến cứu chuộc. Sau khi sống sót sau một vụ tai nạn xe máy, một cựu võ sĩ quyền anh và người theo thuyết bất khả tri lâu năm bắt đầu tự hỏi liệu anh ta có thể sử dụng cơ hội thứ hai để giúp đỡ người khác hay không, dẫn đến nhận ra đáng ngạc nhiên rằng anh ta muốn trở thành một linh mục Công giáo.', 2022, 'DHREzAdyCPs', 1, '66068.jpg', 'linh-muc-stu', 13, 1, 18, 0, 'Father Stu (2022)', 0, 0, 1, 'phimle', '2023-01-12 16:00:46', '2023-01-12 16:01:03'),
(85, 'DORAEMON: NOBITA VÀ CUỘC CHIẾN VŨ TRỤ TÍ HON', '108 phút', 'Doraemon: Nobita Và Cuộc Chiến Vũ Trụ Tí Hon 2021 Doraemon: Nobita no Little Wars 2021 2022 Full HD Vietsub Thuyết Minh Nobita đã có thể nhìn thấy một người ngoài hành tinh hình người tên là Papi. Anh rời nơi anh sống để đến Trái đất nhằm trốn thoát khỏi đội quân PCIA độc ác mà anh đến. Doraemon và những người bạn của mình rất ngạc nhiên về kích thước nhỏ bé của cậu bạn, nhưng nhờ có Đèn thu nhỏ mà họ đã có thể chơi cùng nhau. Chiến hạm đuổi theo và tấn công những người ở bên kia địa cầu. Papi tự trách mình vì đã khiến mọi người rơi vào trận chiến, nhưng cô vẫn cố gắng chiến đấu chống lại quân đội PCIA để bảo vệ cô và hành tinh.Nobita và cuộc chiến vũ trụ tí hon 2021 là một bộ phim điện ảnh của Nhật Bản Doraemon thứ 41 trong loạt phim do Yamaguchi Susumu đạo diễn, Theo dõi ngay trên phimmoi để trải nghiệm đầu tiên', 2022, 'dd_R1GQwKlY', 1, '3977.jpg', 'doraemon-nobita-va-cuoc-chien-vu-tru-ti-hon', 13, 2, 11, 0, 'Doraemon: Nobita no Little Wars (2022)', 0, 0, 1, 'phimle', '2023-01-12 16:07:44', '2023-01-12 16:10:39'),
(86, 'ĐIỀU ƯỚC CUỐI CỦA TÙ NHÂN 2037', '126 Phút', 'Điều ước cuối của tù nhân 2037 là phim Hàn Quốc năm 2022 của đạo diễn bởi Mo Hong-jin. Bộ phim tâm lý tình người lấy bối cảnh giữa các nữ tù nhân, mô tả câu chuyện của những người lớn muốn gửi gắm hy vọng vào một thực tế khó tin đã xảy ra với một cô gái 19 tuổi', 2022, NULL, 1, '53106.jpg', 'dieu-uoc-cuoi-cua-tu-nhan-2037', 13, 2, 16, 0, '2037 (2022)', 0, 0, 1, 'phimle', '2023-01-12 16:10:27', '2023-01-12 16:10:45'),
(87, 'EROTIC GHOST STORY', '88 Phút', 'Khoảng thời nhà Minh, ngũ thông thần ở Linh Sơn điện bị hao tổn nguyên khí do quá lâu ngày không ai thờ cúng, nên bày mưu hóa thành thư sinh hào hoa phong nhã Ngô Minh để dụ ba chị em bạch hoa ly ở Liên Hoa động những mong hấp thụ linh khí mà trường mạng.', 2001, NULL, 1, '89893.jpg', 'erotic-ghost-story', 14, 2, 17, 0, 'Erotic Ghost Story (1990)', 0, 0, 1, 'phimle', '2023-01-12 16:12:30', '2023-01-12 16:14:07'),
(88, 'KẾ HOẠCH BẮT CÓC', '2g 6ph', 'Trong bộ phim này, ngôi sao võ thuật Thành Long lần đầu tiên đóng vai kẻ xấu: một con nghiện cờ bạc bị cuốn vào một âm mưu bắt cóc.', 2006, NULL, 1, '55424.jpg', 'ke-hoach-bat-coc', 14, 2, 10, 1, 'Robin-B-Hood (2006)', 0, 0, 1, 'phimle', '2023-01-12 16:17:56', '2023-01-14 14:16:11'),
(89, 'MÓNG HỔ 2', '92 Phút', 'Được phát hành năm năm sau phần đầu tiên, Tiger Claws II tìm thấy kẻ giết người hàng loạt võ thuật của Yeung, Chong, bị bắt ra khỏi tù bởi một nhóm nặng ký làm việc cho xã hội đen Dai Lo Fu và đi khắp đất nước đến Khu phố Tàu của San Fransisco. Khi cảnh sát NYC Tarek Richards phát hiện ra một loạt vụ giết người gần đây bằng cách sử dụng M.O. đặc biệt của Chong - một dấu hiệu giống móng vuốt trên mặt nạn nhân - anh ta liên hệ với đối tác cũ của mình, Linda Masterson, hiện đang sống ở L.A., để được giúp đỡ. Nhưng Chong, hóa ra, không liên quan gì đến vụ giết người. Anh ta chỉ bị sử dụng bởi trùm tội phạm Lo Fu, người cần kết hợp năng lượng của mình với Chong để mở một loại cổng thời gian nào đó nhằm cung cấp nguồn cung cấp quan trọng cho các nhà sư Thiếu Lâm cổ đại. Tuy nhiên, trên thực tế, Lo Fu tham lam lên kế hoạch sử dụng cánh cổng để buôn lậu pháo hạng nặng hiện đại trở lại và tự mình cai trị Trung Quốc thời nhà Thanh.', NULL, NULL, 1, '57214.jpg', 'mong-ho-2', 14, 9, 18, 1, 'Tiger Claws II (1996)', 0, 0, 1, 'phimle', '2023-01-12 16:20:18', '2023-01-12 16:20:18'),
(90, 'SIÊU TRỘM', '90 phút', 'Trong \"Money Heist phiên bản điện ảnh\" SIÊU TRỘM, Thom (Freddie Highmore) và đồng đội của mình sẽ đột nhập vào ngân hàng Tây Ban Nha - một nơi bí ẩn bậc nhất thế giới, để khám phá chiếc két sắt trăm tuổi nằm dưới lòng đất .Thom và đồng đội chỉ có 10 ngày để lên kế hoạch, và 105 phút để thực hiện phi vụ thế kỷ này', 2001, '3JkXnknCJg4', 1, '28093.jpg', 'sieu-trom', 14, 1, 20, 0, 'The Vault (2021)', 0, 0, 1, 'phimle', '2023-01-12 16:22:46', '2023-01-12 16:26:17'),
(91, 'ANGEL GUTS: RED VERTIGO', '74 Phút', 'Nami là một y tá và là đối tượng thèm khát của bệnh nhân. Khi cô ấy bị một chiếc ô tô đâm khi đang chạy trốn khỏi nhà của người bạn trai không chung thủy, người lái chiếc xe đã coi cô ấy như một tù nhân tình dục.', 2002, NULL, 1, '19953.jpg', 'angel-guts-red-vertigo', 14, 2, 11, 0, 'Angel Guts: Red Vertigo (1988)', 0, 0, 1, 'phimle', '2023-01-12 16:25:20', '2023-01-12 16:26:11'),
(92, 'NGOÀI VÒNG PHÁP LUẬT 2', '106 phút', 'Đã 4 năm trôi qua kể từ khi thám tử Ma Suk-Do (Ma Dong-Seok thủ vai) xóa sổ Jang Chen và nhóm của anh ta.Ma Suk-Do và các thành viên trong nhóm của mình nhận nhiệm vụ đưa một nghi phạm trốn khỏi Việt Nam trở về Hàn Quốc. Ma Suk-Do đuổi theo Kang Hae-Sang ( Son Suk-Ku ) ở Việt Nam và trở về Hàn Quốc.', 2022, 'rqyDwy_ZjZA', 1, '60270.jpg', 'ngoai-vong-phap-luat-2', 14, 2, 16, 0, 'The Roundup (2022)', 0, 0, 1, 'phimle', '2023-01-12 16:28:28', '2023-01-12 16:29:28'),
(93, 'CỰ ĐÀ TRIỆU BAHT', '109 Phút', 'Một bộ phim hài phiêu lưu theo chân một ca sĩ nổi tiếng một thời trở về quê hương và tham gia một cuộc thi khoan giếng nước với hy vọng giành được một giải thưởng tiền mặt lớn. Nhưng những gì họ không nhận ra là một con thú bí ẩn ẩn nấp dưới lòng đất.', 2005, NULL, 1, '27916.jpg', 'cu-da-trieu-baht', 14, 2, 21, 0, 'Leio (2022)', 0, 0, 1, 'phimle', '2023-01-13 07:41:05', '2023-01-13 07:43:39'),
(94, 'SÁT THỦ NHÂN TẠO 2: MẪU VẬT CÒN LẠI', '2g 17ph', 'Một cô gái thức dậy trong một phòng thí nghiệm bí mật khổng lồ. Khi cô gái trốn thoát khỏi phòng thí nghiệm, cô tình cờ gặp Kyung Hee, người đang cố gắng bảo vệ ngôi nhà của mình khỏi các băng nhóm tội phạm. Khi cô gái đối mặt với một tổ chức tội phạm đang tiếp cận nhà của Kyung Hee, cô gái đã áp đảo chúng với sức mạnh áp đảo, và trong lúc đó họ bắt đầu truy đuổi cô trong phòng thí nghiệm bí mật. Cô gái bí ẩn này là ai và tại sao cô ấy bị truy đuổi?', 2019, 'rKc55zpoguA', 1, '57312.jpg', 'sat-thu-nhan-tao-2-mau-vat-con-lai', 14, 1, 16, 0, 'The Witch: Part 2 The Other One (2022)', 0, 0, 1, 'phimle', '2023-01-13 07:46:05', '2023-01-13 07:50:57'),
(95, 'MỘT THỜI ĐỂ YÊU VÀ MỘT THỜI ĐỂ CHẾT', '132 Phút', 'Một người lính Đức trong kỳ nghỉ phép yêu một cô gái, sau đó quay trở lại Thế chiến II.', NULL, NULL, 1, '24764.jpg', 'mot-thoi-de-yeu-va-mot-thoi-de-chet', 14, 2, 18, 0, 'A Time to Love and a Time to Die (1958)', 0, 0, 1, 'phimle', '2023-01-13 07:48:42', '2023-01-13 07:48:42'),
(96, 'PHONG THẦN BẢNG TRỪ YÊU', '97 Phút', 'Khương Tử Nha bắt được một con yêu hồ có chín đuôi trong rừng,mà gặp vua Trụ đang đi săn.Yêu hồ cầu cứu với vua Trụ ,vua Trụ thương xót cô ấy,thì ra lệnh Khương Tử Nha thả ra.Yêu hồ hóa thân Đát Kỷ vào cung báo ơn,khát khao cùng với vua Trụ bạch đầu giai lão.Không ngờ vua Trụ ái mộ Hoàng hoàng hậu hiền lành,Đát Kỷ rất ghen ghét.Đồng thời,Khương Tử Nha đã biết Đát Kỷ tức là yêu hồ có chín đuôi,vốn là muốn bắt yêu quái,không ngờ lại bị cô ấy hãm hại,mất lòng tin của vua Trụ.Bá Ấp Khảo và Hoàng hoàng hậu có mối tình tri âm, Đát Kỷ tìm được cơ hội phụ thân vào Hoàng hoàng hậu,làm cho vua Trụ hiểu lầm Hoàng hoàng hậu và Bá Ấp Khảo có ngoại tình.', 2020, NULL, 1, '65716.jpg', 'phong-than-bang-tru-yeu', 14, 2, 10, 0, 'The Alluring Woman (2020)', 0, 0, 1, 'phimle', '2023-01-13 07:53:13', '2023-01-13 07:53:25'),
(97, 'MARNIE', '131 Phút', 'Marnie là một tên trộm, một kẻ nói dối và một kẻ lừa đảo. Khi ông chủ mới của cô, Mark Rutland, bắt gặp thói quen ăn cắp vặt của cô, cô thấy mình bị tống tiền.', NULL, NULL, 1, '62190.jpg', 'marnie', 14, 2, 18, 0, 'Marnie (1964)', 0, 0, 1, 'phimle', '2023-01-13 07:56:40', '2023-01-13 07:56:40'),
(98, 'HÀNG XÓM TỐT', '97 phút', 'Tình bạn mới chớm nở giữa hai người hàng xóm rất khác biệt có một bước ngoặt bi thảm khi David chạy qua một phụ nữ trẻ và gây ra cái chết cho cô ấy.', 2022, 'hYUtMkRUkjs', 1, '41264.jpg', 'hàng-xóm-tót', 14, 1, 18, 0, 'The Good Neighbor (2022)', 0, 0, 1, 'phimle', '2023-01-13 08:00:37', '2023-01-13 08:02:18'),
(99, 'ĐỨA CON CỦA MẶT NẠ', '94 Phút', 'Tim Avery, một họa sĩ vẽ tranh biếm họa đầy tham vọng, rơi vào tình thế khó khăn khi chú chó của anh tình cờ nhìn thấy chiếc mặt nạ của Loki. Sau đó, sau khi thụ thai một cậu con trai sơ sinh \"được sinh ra từ chiếc mặt nạ\", anh ấy phát hiện ra việc nuôi dạy một đứa trẻ có thể trở nên tồi tệ như thế nào.', 2005, NULL, 1, '99112.jpg', 'dua-con-cua-mat-na', 14, 2, 18, 0, 'Son of the Mask (2005)', 0, 0, 1, 'phimle', '2023-01-13 08:08:49', '2023-01-13 08:09:42'),
(100, 'HEROES OF THE EAST', '105 Phút', 'Gordon Liu đóng vai một võ sinh Trung Quốc đang gặp khó khăn trong việc quan hệ với người vợ mới người Nhật của mình. Khi một loạt hiểu lầm về võ thuật biến thành một sự cố quốc tế, anh buộc phải đối đầu với bảy võ sư mạnh nhất Nhật Bản, mỗi người là một chuyên gia trong một môn phái khác nhau, từ karate đến samurai đến ninjitsu.', NULL, NULL, 1, '63072.jpg', 'heroes-of-the-east', 14, 9, 12, 0, 'Heroes of the East (1978)', 0, 0, 1, 'phimle', '2023-01-13 08:12:46', '2023-01-13 08:12:46'),
(101, 'ANGELS WITH DIRTY FACES', '97 Phút', 'Ở New York, hai cậu bé Rocky Sullivan và Jerry Connelly là bạn thân và là những tên trộm thời gian nhỏ. Sau một vụ cướp, Rocky bị bắt và đưa vào trường giáo dưỡng, nơi anh ta bắt đầu sự nghiệp tội phạm của mình. Jerry trốn thoát và sau này trở thành linh mục. Sau ba năm ngồi tù, Rocky được trả tự do và yêu cầu trả lại 100.000 đô la đã gửi cho luật sư của mình - trước khi mãn hạn tù.', NULL, NULL, 1, '30903.jpg', 'angels-with-dirty-faces', 14, 2, 18, 0, 'Angels with Dirty Faces (1938)', 0, 0, 1, 'phimle', '2023-01-13 08:17:06', '2023-01-13 08:17:06'),
(102, 'ẢO ẢNH CON GÁI TÔI', '1g 30phút', 'Người mẹ tuyệt vọng ở một thị trấn ven biển điên cuồng tự điều tra để tìm kiếm cô con gái tuổi teen mất tích từ nhiều tháng trước đó.', 2021, NULL, 1, '30275.jpg', 'ao-anh-con-gai-toi', 14, 1, 18, 0, 'Illusion (2021)', 0, 0, 1, 'phimle', '2023-01-13 08:20:14', '2023-01-13 08:21:13'),
(103, 'KHÔNG GIAN CHẾT: SỰ SỤP ĐỔ', '74 Phút', 'Trong một nhiệm vụ khai thác không gian sâu đến một hành tinh xa xôi, một di tích tôn giáo cổ đại - được cho là bằng chứng về sự tồn tại của Chúa - được khai quật và mang lên tàu. Khi cổ vật xấu xa giải phóng một chủng tộc ngoài hành tinh đã ngủ yên từ lâu, cái nhìn thoáng qua về Thiên đường của nó sẽ biến con tàu thành Địa ngục sống. Phần tiền truyện của các sự kiện trong trò chơi điện tử năm 2008 Dead Space.', 2008, NULL, 1, '650.jpg', 'khong-gian-chet-su-sup-do', 14, 2, 18, 0, 'Dead Space: Downfall (2008)', 0, 0, 1, 'phimle', '2023-01-13 08:23:13', '2023-01-13 08:23:22'),
(104, 'THIÊN THẦN ĐỎ', '97 Phút', 'Năm 1939, Sakura Nishi là một y tá quân đội trẻ được gửi đến các bệnh viện dã chiến ở Trung Quốc trong cuộc chiến tranh Trung-Nhật. Cô ấy phải hỗ trợ bác sĩ phẫu thuật, Tiến sĩ Okabe với số lượng cắt cụt đáng kinh ngạc. Trong những phường đông đúc, cô dành sự cảm thông cho một số binh lính, trong đó có người phục vụ *** thực sự cho một người đã mất cả hai tay và không còn hy vọng trở về nhà. Cô ấy yêu bác sĩ Okabe và theo anh ta ra mặt trận, mặc dù anh ta bị liệt dương vì chứng nghiện morphine của mình.', NULL, NULL, 1, '72956.jpg', 'thien-than-do', 14, 2, 11, 0, 'The Red Angel (1966)', 0, 0, 1, 'phimle', '2023-01-13 08:27:34', '2023-01-13 08:27:34'),
(105, 'NỤ HÔN BỊ ĐÁNH CẮP', '90 Phút', 'Antoine được xuất ngũ vì chứng bất ổn tính cách và trở về Paris. Anh gặp lại người yêu của mình, Christine Darbon, và với sự giúp đỡ của cha Christine, Antoine có được công việc ở một khách sạn nhưng nhanh chóng bị sa thải sau khi anh vô tình giúp đỡ một thám tử tư Henri (Harry Max). Vì thế Antonie được Henri đưa vào làm việc tại Văn phòng thám tử Blady. Trong một cuộc điều tra, lĩnh trách nhiệm theo dõi người làm của một cửa hiệu bán giày, anh phải lòng người vợ của ông chủ Tabard, Fabienne (Delphine Seyrig). Tình cảnh trớ trêu buộc Antoine phải lựa chọn giữa người phụ nữ lớn tuổi và Christine…', NULL, NULL, 1, '29325.jpg', 'nu-hon-bi-danh-cap', 14, 2, 15, 0, 'Stolen Kisses (1968)', 0, 0, 1, 'phimle', '2023-01-13 08:30:43', '2023-01-13 08:30:43');
INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `year`, `trailer`, `status`, `image`, `slug`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `name_eng`, `resolution`, `subtitle`, `sotap`, `thuocphim`, `created_at`, `updated_at`) VALUES
(106, 'STRATEGIC COMMAND', '90 Phút', 'Rick Harding là cựu sĩ quan thủy quân lục chiến, hiện đang làm việc trong FBI với tư cách là nhà thiết kế vũ khí hóa học. Trong khi thu dọn đồ đạc trong đêm, một nhóm binh lính có vũ trang do tên tội phạm bị truy nã Carlos Gruber dẫn đầu đột nhập vào phòng thí nghiệm nghiên cứu của FBI. Họ đánh cắp một lượng lớn hóa chất chiến tranh vi trùng mới được tạo ra có tên là Bromax-360, khiến hai người của họ mất mạng trong quá trình này trước khi trốn thoát vào màn đêm.', NULL, NULL, 1, '71312.jpg', 'strategic-command', 14, 1, 18, 0, 'Strategic Command (1997)', 0, 0, 1, 'phimle', '2023-01-13 08:34:15', '2023-01-13 08:34:15'),
(107, 'THE QUIET DUEL', '95 Phút', 'Toshirō Mifune vào vai một bác sĩ trẻ theo chủ nghĩa lý tưởng làm việc tại phòng khám của cha anh (Takashi Shimura) ở một quận nhỏ và tồi tàn. Trong chiến tranh, anh ta mắc bệnh giang mai từ máu của một bệnh nhân khi anh ta tự cắt mình trong một ca phẫu thuật. Đối xử với bản thân trong bí mật và bị lương tâm dày vò, anh từ chối vị hôn thê đau khổ của mình mà không một lời giải thích.', NULL, NULL, 1, '61925.jpg', 'the-quiet-duel', 14, 1, 11, 0, 'The Quiet Duel (1949)', 0, 0, 1, 'phimle', '2023-01-13 08:38:55', '2023-01-13 08:38:55'),
(108, 'MAKANAI: ĐẦU BẾP NHÀ MAIKO', '38 phút/tập', 'Đôi bạn khăng khít chuyển đến Kyoto để theo đuổi ước mơ trở thành maiko, nhưng rồi họ quyết định theo đuổi những đam mê khác nhau trong khi sống chung dưới một mái nhà.', 2022, NULL, 1, '64630.jpg', 'makanai-dau-bep-nha-maiko', 15, 1, 11, 0, 'The Makanai: Cooking for the Maiko House (2023)', 0, 0, 9, 'phimbo', '2023-01-13 08:42:44', '2023-01-13 08:47:08'),
(109, 'ĐÁM CƯỚI ĐEN', '94 phút', 'Nội dung phim xoay quanh câu chuyện của tên Zhenya, một cô gái đau khổ vì tình yêu với người chồng đã bỏ mình nên cô quyết định mang anh ta trở lại. Trong sự tuyệt vọng, cô gái đã sử dụng một câu thần chú gọi là \"Đám cưới đen\", một nghi lễ ma thuật nổi tiếng với sức mạnh to lớn và không thể đảo ngược. Sau nghi lễ, người chồng yêu dấu của cô trở lại, mặc dù tình yêu của anh trở nên giống như một nỗi ám ảnh: anh thậm chí sẵn sàng giết Zhenya, để không trao cô cho bất cứ ai.', 2017, 'AjnRu1Mb7KA', 1, '65214.jpg', 'dam-cuoi-den', 14, 2, 20, 0, 'Dark Spell (2021)', 0, 0, 1, 'phimle', '2023-01-13 09:08:11', '2023-01-13 09:09:13'),
(110, 'TC 2000', '95 Phút', 'Ở đâu đó trong tương lai, môi trường quá mức cần thiết đã đến. Nhiều người đã chết. Người giàu có thể xây dựng thế giới ngầm, người nghèo phải ở trên bề mặt xây dựng băng nhóm để tồn tại. Jason Storm, một người bảo vệ thế giới ngầm biết về một âm mưu giết tất cả mọi người trên bề mặt. Anh ta cần phải chạy trốn lên mặt nước và thu phục Sumai, một bậc thầy võ thuật được kính trọng, làm đồng minh của mình để ngăn chặn âm mưu bẩn thỉu.', NULL, NULL, 1, '61917.jpg', 'tc-2000', 14, 2, 18, 0, 'TC 2000 (1993)', 0, 0, 1, 'phimle', '2023-01-13 09:24:27', '2023-01-13 09:24:27'),
(111, 'NGƯỜI HOBBIT 3: ĐẠI CHIẾN 5 CÁNH QUÂN', '164 phút', 'Người Hobbit 3: Đại Chiến 5 Cánh Quân là phần cuối cùng của series phim nói về người Hobbit. Đoàn quân người lùn của Thorin đã đặt được chân tới hang ổ của con rồng Smaug xấu xa. Chàng Hobbit quả cảm Bilbo và những người lùn lúc này đang ở rất gần Erebor và kho báu lẽ ra thuộc về họ. Chỉ có điều, có quá nhiều biến cố và thế lực đang nhăm nhe ập tới ngay sau khi họ đánh bại được rồng Smaug.', 2014, NULL, 1, '43165.txt', 'nguoi-hobbit-3-dai-chien-5-canh-quan', 14, 2, 18, 0, 'The Hobbit: The Battle of the Five Armies (2014)', 0, 0, 1, 'phimle', '2023-01-13 14:14:25', '2023-01-13 14:15:23'),
(112, 'TÔI LÀ NỮ ĐẶC CẢNH', '110 phút', 'Tôi Là Nữ Đặc Cảnh kể về câu chuyện của nữ đặc nhiệm Thịnh Nam gặp phải bọn côn đồ cướp đồ trang sức và bắt con tin khi đang tham gia một cuộc triển lãm đồ trang sức. Là câu chuyện chiến đấu chống lại những cạm bẫy và ám sát nguy hiểm, chiến đấu bằng mọi nỗ lực và những đòn đánh chính xác, cuối cùng đập tan âm mưu của bọn tội phạm tài chính quốc tế và tóm gọn chúng.', 2022, NULL, 1, '22269.txt', 'toi-la-nu-dac-canh', 14, 1, 10, 0, 'Female Special Police Officer (2022)', 0, 0, 1, 'phimle', '2023-01-13 14:21:21', '2023-01-13 14:21:31'),
(113, 'ANH HÙNG ĐỜI THƯỜNG', '97 phút', 'Anh Hùng Đời Thường xoay quanh hành trình cấp cứu một cậu bé bị thương đang nguy kịch trên chặng đường hơn 1400km. Xuyên suốt cuộc chạy đua với tử thần ấy là sự giúp đỡ và yêu thương đến từ rất nhiều người xa lạ. Mỗi người một việc nhỏ, họ – những con người vô cùng bình thường trong xã hội – đã chung tay tạo nên “kì tích”.', 2022, '-5xm3l40STE', 1, '92838.txt', 'anh-hung-doi-thuong', 14, 2, 10, 0, 'Ordinary Hero (2022)', 0, 0, 1, 'phimle', '2023-01-13 14:34:37', '2023-01-13 14:34:50'),
(114, 'PARIS-MANHATTAN', '79 Phút', 'Paris-Manhattan là một bộ phim hài của Pháp , được công chiếu lần đầu vào ngày 2 tháng 4 năm 2012 tại Liên hoan Điện ảnh Pháp ở Úc . [2] Đây là phim điện ảnh đầu tay của nhà văn kiêm đạo diễn Sophie Lellouche.', 2012, 'XwofBhEMevw', 1, '85142.webp', 'paris-manhattan', 14, 2, 18, 0, 'Paris-Manhattan', 0, 0, 1, 'phimle', '2023-01-13 14:45:08', '2023-01-13 14:45:25'),
(115, 'BÀI HỌC RIÊNG TƯ', '89 phút', 'Bài Học Riêng Tư kể về Azra đóng vai gia sư riêng, Azra bí mật huấn luyện học sinh đạt được các mục tiêu trong cuộc sống và tình yêu – sau khi trải qua ít nhiều trắc trở.', 2022, 'g33zQr0LUHk', 1, '58561.txt', 'bai-hoc-rieng-tu', 14, 2, 18, 0, 'Private Lesson (2022)', 0, 0, 1, 'phimle', '2023-01-13 14:51:54', '2023-01-13 14:52:15'),
(116, 'MỒI QUỶ DỮ', '95 phút', 'Mồi Quỷ Dữ xoay quanh sơ Ann (do Jacqueline Byers thủ vai) bị kéo vào một cuộc chiến tại một Nhà Thờ Công Giáo trước thế lực quỷ ám đang ngày một hùng mạnh. Với khả năng chiến đấu với quỷ dữ, sơ Ann được phép thực hiện các buổi trừ tà dẫu cho các luật lệ xưa cũ chỉ cho phép Cha xứ thực hiện công việc này. Cùng với Cha Dante, sơ Ann chạm mặt một con quỷ dữ đang cố chiếm lấy linh hồn của một cô gái trẻ, và cũng có thể là kẻ đã ám lấy người mẹ quá cố của sơ. Sơ Ann dần nhận ra mối nguy đang đe dọa mình khủng khiếp thế nào, và cả lý do con quỷ dữ đó khao khát đoạt mạng cô.', NULL, 'u_jJiZ2oZgs', 1, '92937.txt', 'moi-quy-du', 14, 2, 18, 0, 'Prey for the Devil (2022)', 0, 0, 1, 'phimle', '2023-01-13 14:57:11', '2023-01-13 14:57:11'),
(117, 'The Miseducation of Cameron Post', '90 phút', 'Pennsylvania, 1993. Sau khi bị bắt với một cô gái khác, Teen Cameron Post được gửi đến một trung tâm trị liệu chuyển đổi được điều hành bởi Tiến sĩ Lydia Marsh chặt chẽ và anh trai của cô, Reverend Rick, người được điều trị bao gồm việc ăn năn vì cảm giác hấp dẫn cùng giới. \" Cameron kết bạn với những người tội nhân Jane và Adam, do đó tạo ra một gia đình mới để đối phó với sự không khoan dung xung quanh.', 2018, 'toXBb638n2Y', 1, '60215.jfif', 'the-miseducation-of-cameron-post', 14, 2, 13, 0, 'The Miseducation of Cameron Post (2018)', 0, 0, 1, 'phimle', '2023-01-13 15:02:23', '2023-01-13 15:02:37'),
(118, 'Thuyết Tự Sát', '96 phút', 'Sau khi người yêu nhất của mình qua đời, Steven rơi vào tình trạng không thể kiểm soát bản thân. Vào một đêm, khi Steven âm mưu vụ giết người tiếp theo, một thi thể rơi thẳng xuống chiếc xe của anh ta. Đó là Percival, người đang muốn tự tử, nhưng bất thành. Trong hoàn cảnh này, Percival đã thuê Steven giúp mình thực hiện kế hoạch. Thế nhưng mọi nỗ lực tự tử đều thất bại một cách thần kỳ. Mỗi người mang một nỗi buồn riêng và dần dần một tình bạn đã được hình thành.', 2014, 'OFPPZJdi0Zc', 1, '83788.jfif', 'thuyet-tu-sat', 14, 2, 18, 1, 'The Suicide Theory (2014)', 0, 0, 1, 'phimle', '2023-01-13 15:05:12', '2023-01-14 08:16:55'),
(119, 'CÔ NÀNG HONOR SOCIETY', '97 phút', 'Cô Nàng Honor Society kể về cô nàng Honor một sinh viên mới gia nhập vào trường học Harvard và có một tham vọng cực kỳ to lớn. Khi vào đây, cô quyết tâm hạ ngục ba đối thủ của mình để đạt được thành tích cao nhất của trường. Nhưng cô bắt đầu gặp trở ngại sau khi nhận ra kẻ thù lớn nhất của mình là chàng trai Michael.', 2022, 'L4z67u7TNFY', 1, '74558.txt', 'co-nang-honor-society', 14, 2, 18, 0, 'Honor Society (2022)', 0, 0, 1, 'phimle', '2023-01-13 15:13:08', '2023-01-13 15:13:24'),
(120, 'ĐẠO SƯ 2', '75 phút', 'Đạo Sư 2 là câu chuyện về \"Đạo sư gia 2\" là một giai thoại được lưu truyền trong dân gian do một người kể chuyện kể lại, kể về câu chuyện hào hùng của một thế hệ kỳ nhân Quan Sư Phụ, một người trượng nghĩa chuyên trừ gian diệt ác trong thời Trung Hoa Dân Quốc. Câu chuyện bắt đầu với hai tên trộm đào mộ lấy nhau vì ham giàu sang. Vào năm Trung Hoa Dân Quốc thứ 17, chiến tranh liên miên, dân chúng di tản, nhân vật chính vì lòng tốt mà thu thập hài cốt của một số người tị nạn, nhưng lại bị quy tội trộm cắp và buôn bán người, bị bỏ tù vì tội này. Tình cờ, Quan sư gia đi ngang qua, ông và Diệp Phi có mỗi giao tình lâu năm, để cứu Diệp Phi, tìm ra sự thật và giúp Diệp Phi thoát tội. Diệp Phi sùng bái Quan sư gia như thầy của mình, cùng ông đến sa mạc. Nhưng vì đoàn kịch xướng khúc, dẫn tới một hồi chuyện xưa đầy bi thương lại kinh diễm được chôn vùi trong sa mạc từ thời Đường.', 2022, 'jxtR9o6ajO8', 1, '35738.txt', 'dao-su-2', 14, 1, 10, 0, 'Catcher Demon 2 (2022)', 0, 0, 1, 'phimle', '2023-01-13 15:17:45', '2023-01-13 15:19:33'),
(121, 'LỜI KHAI CHẤN ĐỘNG', '130 phút', 'Lời Khai Chấn Động kể về các phóng viên Megan Twohey và Jodi Kantor của New York Times đã phá vỡ một trong những câu chuyện quan trọng nhất trong cả một thế hệ - một câu chuyện đã giúp khơi dậy một phong trào và phá vỡ hàng thập kỷ im lặng xung quanh chủ đề tấn công tình dục ở Hollywood.', 2022, 'i5pxUQecM3Y', 1, '39153.txt', 'loi-khai-chan-dong', 12, 2, 18, 1, 'She Said (2022)', 0, 0, 1, 'phimle', '2023-01-13 15:21:20', '2023-01-13 15:21:37'),
(122, 'CON MẮT LAM VÔ HỒN', '128 phút', 'Con Mắt Lam Vô Hồn kể về một thám tử mệt mỏi với thế giới được thuê để điều tra vụ sát hại một học viên West Point. Bị cản trở bởi quy tắc im lặng của các học viên, anh nhờ một người trong số họ giúp làm sáng tỏ vụ án một chàng trai trẻ mà cả thế giới sẽ biết đến với cái tên Edgar Allan Poe.', NULL, 'ddbL9jvg77w', 1, '1870.txt', 'con-mat-lam-vo-hon', 12, 2, 18, 0, 'The Pale Blue Eye (2022)', 0, 0, 1, 'phimle', '2023-01-13 15:25:30', '2023-01-13 15:25:30'),
(123, 'GIÁ VÉ', '105 phút', 'Giá Vé kể về một người mẹ không xu dính túi cùng đứa con sơ sinh của mình bắt đầu cuộc hành trình bằng đường bộ và đường biển để tìm chồng ở Manila. Nhưng chuyến đi này sẽ không miễn phí vì cô ấy phải sử dụng cơ thể của mình để đến đích.', 2022, '2Z7IE9JEEEA', 1, '88805.txt', 'gia-ve', 14, 2, 17, 0, 'Pamasahe (2022)', 0, 0, 1, 'phimle', '2023-01-14 01:08:35', '2023-01-14 01:14:08'),
(124, 'MINH NHẬT CHIẾN KÝ', '100 phút', 'Minh Nhật Chiến Ký kể về khi thiên thạch mang theo một loài thực vật hủy diệt rơi xuống Trái Đất, một biệt đội cảm tử chỉ có vài giờ để cứu thành phố hậu tận thế của họ khỏi cảnh sụp đổ hoàn toàn', 2022, 'yVHo6OmSpFs', 1, '66063.txt', 'minh-nhat-chien-ky', 14, 2, 10, 0, 'Warriors of Future (2022)', 0, 0, 1, 'phimle', '2023-01-14 01:13:45', '2023-01-14 01:14:03'),
(125, 'ĐÁY THƯỢNG LƯU', '150 phút', 'Đáy Thượng Lưu kể về chuyến du thuyền dành cho giới siêu giàu bị chìm, khiến những người mắc kẹt khổ sở sinh tồn trên một hòn đảo, bao gồm một cặp đôi người mẫu thời trang nổi tiếng. Trớ trêu thay, kể từ đây đám nhà giàu nứt đố đổ vách lại thành lũ ăn hại dưới trướng một bà lao công rách nát chỉ vì bà này biết sinh tồn, nhóm lửa, bắt cá. Một bộ phim châm biếm hoàn hảo phơi bày khoảng cách giàu nghèo.', 2022, 'DUxiaZ0RCZg', 1, '4727.txt', 'day-thuong-luu', 14, 2, 18, 0, 'ĐÁY THƯỢNG LƯU Triangle of Sadness (2022)', 0, 0, 1, 'phimle', '2023-01-14 01:27:36', '2023-01-14 01:29:37'),
(126, 'TÊN TA LÀ TỬ THÙ', '90 phút', 'Tên Ta Là Tử Thù kể về khi kẻ thù trong quá khứ giết vợ và anh vợ của anh, một cựu tay sai mafia cùng con gái chạy trốn đến Milan để lên kế hoạch trả thù.', 2022, 'mKRYPFKQdZg', 1, '26121.txt', 'ten-ta-la-tu-thu', 14, 2, 18, 1, 'My Name Is Vendetta (2022)', 0, 0, 1, 'phimle', '2023-01-14 01:39:16', '2023-01-14 01:39:25'),
(127, 'NGƯỜI TÌNH CỦA PHU NHÂN CHATTERLEY', '130 phút', 'Người Tình Của Phu Nhân Chatterley kể về trước cuộc hôn nhân không hạnh phúc, phu nhân quý tộc Chatterley rơi vào cuộc tình nồng cháy rồi yêu say đắm một người canh rừng ở trang viên của chồng cô.', 2021, 'ZOkXE3B0pDA', 1, '29457.txt', 'nguoi-tinh-cua-phu-nhan-chatterley', 14, 2, 18, 0, 'Lady Chatterley\'s Lover (2022)', 0, 0, 1, 'phimle', '2023-01-14 02:16:59', '2023-01-14 07:15:58'),
(128, 'HUNG THỦ VÔ HÌNH', '88 phút', 'Hung Thủ Vô Hình kể về một vụ án mạng trong phòng kín, không có dấu hiệu đột nhập cũng không có sự xuất hiện của người thứ ba. Khi nghi phạm duy nhất, Yoo Min Ho (So Ji Sub) thuê luật sư nổi tiếng Yang Sin Ae (Kim Yoon Jin) bào chữa cho mình, anh buộc phải kể lại toàn bộ sự thật. Cuộc đối chất căng não giữa nghi phạm và luật sư lại làm lộ ra 1 câu chuyện được sắp đặt tài tình', 2022, 'TVzdMV2GfgE', 1, '26393.txt', 'hung-thu-vo-hinh', 14, 2, 16, 0, 'Confession (2022)', 0, 0, 1, 'phimle', '2023-01-14 02:35:36', '2023-01-14 02:35:49'),
(129, 'CUỘC GẶP GỠ NGỌT NGÀO', '90 phút', 'Cuộc Gặp Gỡ Ngọt Ngào kể về câu chuyện tình yêu sét đánh đầy lãng mạn của Sheila và Gary, khi cả hai đã có một chuyến hẹn hò đầy kỳ diệu, nhưng Sheila nhận ra đó không phải là cuộc gặp gỡ định mệnh. Lúc này, Sheila đã sử dụng cổ máy thời gian của mình quyết định quay trở về quá khứ và giúp Gary thay đổi cuộc đời trở thành một người đàn ông hoàn hảo.', 2022, 'J1m7i1JHGWE', 1, '75454.txt', 'cuoc-gap-go-ngot-ngao', 14, 1, 10, 1, 'Meet Cute (2022)', 0, 0, 1, 'phimle', '2023-01-14 02:39:57', '2023-01-14 02:41:18'),
(130, 'TRÁI TIM NGỤC TÙ', '115 phút', 'Trái Tim Ngục Tù kể về vào năm 1978, Bohemy, một tù nhân trẻ đang phục vụ tại Nhà tù Trung tâm ở Sofia, có cơ hội rút ngắn bản án nếu anh ta tập hợp một nhóm để tăng gấp đôi sản lượng trong thời gian họ làm việc tại nhà máy Kremikovtsi. Anh ta tập hợp một đội bao gồm Hatchet, một kẻ sát nhân kép khủng khiếp, tên tội phạm rắc rối Needle, Giáo viên lớn tuổi và Krasy gypsy. Vấn đề của họ bắt đầu khi Hatchet từ chối bật máy tiện của mình vì một con chim bồ câu bị mắc kẹt bên trong nó. Bất chấp việc Đại úy Vekilsky, quản giáo của nhà máy, ra lệnh cho anh ta bật máy tiện, Hatchet kiên quyết từ chối, bắt quản giáo tân binh Kovachky làm con tin và tuyên bố rằng anh ta sẽ không bắt đầu công việc cho đến khi con chim bồ câu được giải cứu. Tình hình nhanh chóng leo thang và ngày càng trở nên phức tạp sau khi có thêm lính canh đến và Giáo viên bị giết khi cố gắng thương lượng với họ. Dần dần, các tù nhân nhận ra rằng cách duy nhất để giải quyết tình huống là giải cứu chú chim như mong muốn của Hatchet.', 2022, 'wbfiMdRcOS4', 1, '37365.txt', 'trai-tim-nguc-tu', 14, 2, 18, 1, 'In the Heart of the Machine (2022)', 0, 0, 1, 'phimle', '2023-01-14 02:43:56', '2023-01-14 02:44:06'),
(131, 'GIẢI CỨU', '110 phút', 'Giải Cứu kể về con trai của ông trùm khét tiếng một vùng,sinh ra là thiếu gia nhưng Ki-Se (Song Sae-Byeok) lại đam mê tấu hài. Dứt áo ra đi mong thành siêu sao hài kịch, nhưng chưa kịp nổi tiếng thì cuộc đời đã sang trang. Khi người cha khét tiếng đột ngột qua đời, Ki-Se buộc phải về quê để nhận lấy trọng trách gánh team rồi gánh luôn cục nợ giang hồ mà cha để lại!!', 2022, 'ZKLu3t-G9Do', 1, '66535.txt', 'giai-cuu', 12, 2, 16, 0, 'Come Back Home (2022)', 0, 0, 1, 'phimle', '2023-01-14 07:13:09', '2023-01-14 07:13:18'),
(132, 'NHIỆM VỤ TRUY TÌM TỜ VÉ SỐ', '107 phút', 'Nhiệm Vụ Truy Tìm Tờ Vé Số kể về năm người lạ xui xẻo phải hợp sức giành lại những tờ vé số trúng thưởng trị giá hàng triệu USD từ một tay đại ca giang hồ xấu tính.', 2022, 'o-11JnKxHB0', 1, '192.txt', 'nhiem-vu-truy-tim-to-ve-so', 12, 2, 21, 0, 'The Lost Lotteries (2022)', 0, 0, 1, 'phimle', '2023-01-14 07:19:14', '2023-01-14 07:19:25'),
(133, 'THÁM TỬ LỪNG DANH CONAN: NÀNG DÂU HALLOWEEN', '111 phút', 'Thám Tử Lừng Danh Conan: Nàng Dâu Halloween là câu chuyện tại Shibuya náo nhiệt mùa Halloween, Thiếu úy Sato Miwako khoác lên mình chiếc váy cưới tinh khôi trong tiệc cưới như cổ tích, và người đàn ông bên cạnh cô không ai khác ngoài Trung sĩ Takagi Wataru. Trong giây phút trọng đại, một nhóm người xấu ập vào tấn công, Trung sĩ Takagi liều mình bảo vệ Sato. Anh tai qua nạn khỏi, nhưng Sato chết lặng khi nhìn thấy bóng ma Thần Chết trong giây phút sinh tử của Takagi. Điều này khiến cô nhớ lại cái chết của đồng nghiệp, cũng là người cô từng yêu trước đây, Thanh tra Matsuda Jinpei. Cùng lúc này, hung thủ của vụ đánh bom liên tiếp mà Matsuda điều tra năm xưa đã vượt ngục thành công. Khi Conan tìm đến Furuya Rei (hay Amuro Toru), người bạn cùng khóa với Matsuda, cậu được nghe câu chuyện liên quan đến vụ đánh bom với kẻ thủ ác mang bí danh \"Plamya\". Hôn lễ nguy hiểm nhất thế giới, buổi dạ hành đẫm máu tại Shibuya vào đêm Halloween sắp sửa bắt đầu.', 2022, 'LzCD9wPNd6A', 1, '12677.txt', 'tham-tu-lung-danh-conan-nang-dau-halloween', 12, 2, 11, 0, 'Detective Conan: The Bride of Halloween (2022)', 0, 0, 1, 'phimle', '2023-01-14 07:22:53', '2023-01-14 07:23:07'),
(134, 'ĐẶC VỤ XUYÊN QUỐC GIA', '129 phút', 'Đặc Vụ Xuyên Quốc Gia ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung. Min-young (Lim Yoon A) cũng có cơ hội tiếp tục câu chuyện tình yêu “phát cuồng” dành cho Cheol-ryung. Jin-tae và Cheol-ryung cùng nhau làm việc dù vẫn còn nhiều nghi ngờ về động cơ của đối phương. Ngay khi bộ đôi chuẩn bị đột kích nơi ẩn náu của Jang Myung-jun (Jin Sun Kyu), thủ lĩnh của tổ chức tội phạm, thì đặc vụ FBI Jack (Daniel Henney) xông vào. Nhân tố mới này đã biến cuộc điều tra thành một cuộc điều tra quốc tế giữa 3 quốc gia, hứa hẹn nhiều tình tiết kịch tính và đầy bất ngờ.', 2022, 'FsxtRBiRThY', 1, '89020.txt', 'dac-vu-xuyen-quoc-gia', 12, 2, 16, 0, 'Confidential Assignment 2: International (2022)', 0, 0, 1, 'phimle', '2023-01-14 07:27:11', '2023-01-14 07:27:21'),
(135, 'CỘNG SỰ BẤT ĐẮC DĨ', '90 phút', 'Cộng Sự Bất Đắc Dĩ kể về thanh tra Cheol-ryung của Triều Tiên mất vợ và đồng đội khi Đội trưởng Cha phản bội anh để ăn cắp những bản kẽm in tiền giả. Anh lập tức tham gia vào phái đoàn sang Hàn Quốc khi biết Cha đang trốn ở đây. Thanh tra Kang của Hàn Quốc được điều đến tham gia vào nhiệm vụ mật này, nhưng anh chỉ được biết Cha là một tên sát thủ và không gì hơn. Cơ quan Tình báo Hàn Quốc tin rằng có một động cơ bí mật sau vụ này và yêu cầu Kang can thiệp vào nhiệm vụ cho đến khi họ tìm ra manh mối.', 2017, '8aUpKej5nSE', 1, '85699.txt', 'cong-su-bat-dac-di', 12, 2, 16, 0, 'Confidential Assignment (2017)', 0, 1, 1, 'phimle', '2023-01-14 08:27:34', '2023-01-14 08:27:44'),
(136, 'ENOLA HOLMES 2', '129 phút', 'Enola Holmes 2 ở phần này Enola đảm nhận vụ án chính thức đầu tiên với tư cách thám tử. Nhưng để phá giải bí ẩn về một cô gái mất tích, cô sẽ cần sự giúp đỡ của bạn bè cũng như anh trai Sherlock.', 2022, 'KKXNmYoPkx0', 1, '84291.txt', 'enola-holmes-2', 12, 1, 18, 0, 'Enola Holmes 2 (2022)', 0, 0, 1, 'phimle', '2023-01-14 08:37:33', '2023-01-14 08:37:44'),
(137, 'HOÀNG HÔN ĐỜI SÁT THỦ', '98 phút', 'Hoàng Hôn Đời Sát Thủ là câu chuyện từng nổi tiếng với đường kiếm cực nhanh nhưng nay đã về hưu, 1 sát thủ được triệu tập một lần nữa. Ông hợp tác với tài xế của mình để thực hiện các nhiệm vụ đặc biệt. Khi được ủy quyền bởi một cô gái trẻ đã bị cha mẹ và người yêu bỏ rơi, biệt đội \"Thiên thần không tuổi\" tìm mọi cách hoàn thành nhiệm vụ của mình.', 2021, '0vRtHliy-iw', 1, '379.txt', 'hoang-hon-doi-sat-thu', 12, 2, 17, 0, 'Time (2021)', 0, 0, 1, 'phimle', '2023-01-14 08:40:49', '2023-01-14 08:40:57'),
(138, 'VÕ ĐÀI KHÔNG KHOAN NHƯỢNG', '132 phút', 'Võ Đài Không Khoan Nhượng kể về Jackie Justice là một cựu ngôi sao võ thuật tổng hợp, người đã bị đánh gục bởi chứng nghiện rượu và mối quan hệ lạm dụng với người quản lý lâu năm của cô Desi (Adan Canto). Khi Jackie được tuyển vào một liên đoàn thi đấu mới, cô ấy cũng bị đánh bại ở đó. Nhưng quan điểm của cô ấy thay đổi khi đứa con trai nhỏ của cô ấy là Manny (Danny Boyd Jr.), người mà cô từng bỏ rơi được gửi tới trước nhà của cô. Tính tình dễ bị tổn thương buộc Jackie phải đương đầu với những thất bại trong quá khứ và xây dựng hoàn cảnh tích cực hơn trong cuộc sống của chính mình. Cô ấy tiến về phía trước với việc đào tạo, nuôi dưỡng một kết nối mang tính xây dựng với huấn luyện viên mới là Buddhakan (Sheila Atim).', 2020, 'EMu8K0l8ggA', 1, '62711.txt', 'vo-dai-khong-khoan-nhuong', 12, 2, 17, 0, 'Bruised (2020)', 0, 0, 1, 'phimle', '2023-01-14 08:44:15', '2023-01-14 08:46:16'),
(139, 'VÕ ĐÀI NGẦM', '85 phút', 'Võ Đài Ngầm do Hồng Kông sản xuất được công chiếu vào năm 2020 , với sự tham gia của các diễn viên Tôn Chấn Phong, Vương Mẫn Dịch, Lộ Huệ Quang. Phim sử dụng các võ sĩ ngầm làm chủ đề.', 2020, '_ruiIJcoPcQ', 1, '2542.txt', 'vo-dai-ngam', 12, 1, 17, 0, 'Unleashed (2020)', 0, 0, 1, 'phimle', '2023-01-14 08:48:56', '2023-01-14 08:49:13'),
(140, 'VỆ BINH DẢI NGÂN HÀ: KỲ NGHỈ ĐẶC BIỆT', '45 phút', 'Vệ Binh Dải Ngân Hà: Kỳ Nghỉ Đặc Biệt kể về theo chân nhóm Guardians of the Galaxy khi các Vệ binh đến Trái đất để tặng Peter Quill một món quà Giáng sinh tuyệt vời nhất, bằng cách bắt cóc huyền thoại Kevin Bacon.', 2022, 'OYhFFQl4fLs', 1, '23673.txt', 've-binh-dai-ngan-ha-ky-nghi-dac-biet', 12, 2, 18, 0, 'The Guardians of the Galaxy Holiday Special (2022)', 0, 0, 1, 'phimle', '2023-01-14 08:55:11', '2023-01-14 08:55:37'),
(141, 'ĐỘC HÀNH', '97 phút', 'Độc Hành là câu chuyện về tài tử họ Lee và nàng Gong lần này sẽ thành một cặp vợ chồng nuôi con một cách thời thượng. Nhân vật Lee Byung Hun là một doanh nhân quản lý một chi nhánh, bỗng mất tích trong một vụ bê bối. Gong Hyo Jin sẽ là một cựu nghệ sĩ violin, đang sống cùng con mình ở Úc. Ngoài ra, đoàn làm phim còn mời được ’em gái quốc dân’ một thời Sohee vào vai một nữ sinh đến Úc trong kỳ nghỉ. Single Rider là dự án cho lần hoạt động thứ hai của Warner Bros ở Hàn Quốc.', 2017, '5Tsb6D61nJk', 1, '86721.txt', 'doc-hanh', 12, 2, 16, 0, 'A Single Rider (2017)', 0, 0, 1, 'phimle', '2023-01-14 09:00:26', '2023-01-14 09:00:43'),
(142, 'KHOANG SỐ 6', '107 phút', 'Khoang Số 6 kể về câu chuyện mở đầu với Laura (Seidi Haarla), một sinh viên khảo cổ học người Phần Lan có ước mơ đến vùng đất Murmansk trên tận vòng Bắc Cực để được nhìn thấy nhưng di chỉ khảo cổ trên các phiến đá của thành phố hoang vu này. Trên chuyến tàu lửa đi đến Murmansk, cô vô tình có một người bạn đồng hành kì lạ - gã người Nga đầu trọc, cư xử tùy tiện và ăn nói thô lỗ Ljoha (Yuriy Borisov). Trong quá trình tiến gần hơn với Murmansk, Laura nghĩ rằng \"Việc nhận thức hiện tại sẽ trở nên dễ dàng hơn khi ta nghiên cứu từ quá khứ\". Tư tưởng mấu chốt này vừa thể hiện đặc trưng chuyên môn của một khảo cổ học gia tương lai, vừa thể hiện triết lý rằng con người không bao giờ đủ tỉnh táo để hiểu về thực tại của bản thân, mà luôn cần có những gợi ý từ những điều đã qua.\r\n\r\nTrong khi đó, người công nhân mỏ than thành phố Murmansk - Ljoha - lại không có được sự hưởng ứng của Laura khi anh liên tục nhắc về quá khứ của nước Nga vĩ đại. Ngoài việc chứng kiến các di chỉ trên đá, Laura cũng hy vọng rằng chuyến hành trình này sẽ giúp cô nguôi ngoai những tổn thương trong tình cảm giữa cô và vị giáo sư Irina (Dinara Drukarova) của mình. Còn Ljoha chỉ mong đến được mỏ than để tiếp tục công việc. Laura thì mơ mộng, Ljoha thì trần tục; Laura học thức cao, Ljoha thợ mỏ. Khoảng cách tư tưởng và địa vị xã hội khiến cho chuyến đi của họ trở nên dài hơn bao giờ hết. Nhưng ...', 2021, 'itL_GpBalA4', 1, '73438.txt', 'khoang-so-6', 12, 2, 18, 0, 'Compartment Number 6 (2021)', 0, 0, 1, 'phimle', '2023-01-14 09:18:34', '2023-01-14 09:18:46'),
(143, 'VINH QUANG', '79 phút', 'Vinh Quang kể về sau khi chia tay, Wes kết thúc ở một bến đỗ xa xôi. Anh ta thấy mình bị nhốt trong phòng tắm với một nhân vật bí ẩn đang nói chuyện từ một quầy hàng liền kề. Chẳng bao lâu Wes nhận ra mình đang tham gia vào một tình huống khủng khiếp hơn những gì anh có thể tưởng tượng.', 2022, 'TsawX4ywWtM', 1, '71754.txt', 'vinh-quang', 12, 2, 18, 0, 'Glorious (2022)', 0, 0, 1, 'phimle', '2023-01-14 09:30:21', '2023-01-14 09:30:56'),
(144, 'QUÁI VẬT CỦA CON NGƯỜI', '131 phút', 'Quái Vật Của Con Người kể về công ty chế tạo người máy hợp tác với một điệp viên CIA tham nhũng đang tiến hành một hoạt động quân sự bất hợp pháp, không có quản lý. Thả bốn người máy nguyên mẫu vào một trại nghi chế tạo ma túy ở Tam giác vàng mà không ai bỏ sót. Nhiệm vụ là chứng minh công ty chế tạo người máy xứng đáng giành được một hợp đồng quân sự béo bở. Sáu bác sĩ vì một lý do chính đáng chứng kiến cuộc tàn sát tàn bạo của một ngôi làng vô tội và bị buộc vào một trò chơi chết chóc giữa mèo và chuột khi họ trở thành mục tiêu mới.', 2022, 'bINTjSKwu3Q', 1, '13084.txt', 'quai-vat-cua-con-nguoi', 12, 2, 18, 0, 'Monsters of Man (2023)', 5, 0, 1, 'phimle', '2023-01-14 09:40:03', '2023-01-14 09:43:11'),
(145, 'NGÀY TÀN CỦA TÌNH YÊU', '100 phút', 'Ngày Tàn Của Tình Yêu - Doom Of Love', NULL, 'I106w9s66rI', 1, '64415.txt', 'ngay-tan-cua-tinh-yeu', 12, 2, 18, 0, 'Doom Of Love (2023)', 5, 0, 1, 'phimle', '2023-01-14 09:51:40', '2023-01-14 09:51:40'),
(146, 'CHÚ NGUYỀN', '111 phút', 'Chú Nguyền kể về sáu năm trước, Lý Nhược Nam bị nguyền rủa vì phạm phải điều cấm kị trong tôn giáo. Giờ đây, cô phải bảo vệ con gái trước hậu quả của những hành động mình gây ra.', NULL, 'HnyNZdcL_GY', 1, '98705.txt', 'chu-nguyen', 12, 2, 12, 0, 'Incantation (2022)', 5, 0, 1, 'phimle', '2023-01-14 09:56:55', '2023-01-14 09:56:55'),
(147, 'TIỆM BÁNH MÌ KẸP THỊT CỦA BOB', 'chưa xác định', 'Tiệm Bánh Mì Kẹp Thịt Của Bob là câu chuyện bắt đầu khi một đường ống dẫn nước bị vỡ tạo ra một hố sụt khổng lồ ngay trước cửa hàng Burgers của Bob, chặn lối vào vô thời hạn và phá hỏng kế hoạch của Belchers cho một mùa hè thành công. Trong khi Bob và Linda đấu tranh để duy trì hoạt động kinh doanh, những đứa trẻ cố gắng giải quyết một bí ẩn có thể cứu vãn cho công việc của gia đình.', NULL, 'hbGXqUumtqg', 1, '93791.txt', 'tiem-banh-mi-kep-thit-cua-bob', 12, 2, 18, 0, 'The Bob\'s Burgers Movie (2023)', 5, 0, 1, 'phimle', '2023-01-14 10:01:19', '2023-01-14 10:01:49'),
(148, 'DƯỚI ÁNH DƯƠNG AMALFI', 'chưa xác định', 'Dưới Ánh Dương Amalfi xoay quanh câu chuyện tình yêu đầy lãng mạn và ngọt ngào của Vincenzo và Camila. Khi cả hai đã bắt đầu gặp gỡ và tạo dựng một mối quan hệ ở Riccione. Nhưng mối tình đã diễn ra rất nhanh chóng và bọn họ rời xa nhau. Nhưng một năm sau cả hai đã gặp lại nhau tại một bờ biển xinh đẹp mộng mơ Amalfi. Tại đây bọn họ bắt đùa tận hưởng kỳ nghỉ dưỡng những như thử thách về tình yêu của họ.', NULL, 'wkZns72DRXM', 1, '78908.txt', 'duoi-anh-duong-amalfi', 12, 1, 18, 0, 'Under the Amalfi Sun (2023)', 5, 0, 1, 'phimle', '2023-01-14 11:01:15', '2023-01-14 11:01:15'),
(149, 'THUYẾT PHỤC', '109 phút', 'Thuyết Phục kể về tám năm trước Anne Elliot đã không lựa chọn cưới người đàn ông có xuất thân khiêm tốn mà cô từng yêu. Và giờ đây Anne Elliot có cơ hội gặp lại người ấy lần nữa, liệu cô gái trẻ có thể nắm bắt cơ hội này để quay trở lại với tình yêu đích thực của mình hay không?', NULL, 'Fz7HmgPJQak', 1, '90091.txt', 'thuyet-phuc', 12, 2, 18, 0, 'Persuasion (2023)', 5, 0, 1, 'phimle', '2023-01-14 11:11:31', '2023-01-14 11:11:31'),
(150, 'CẬU BÉ NGƯỜI GỖ', '110 phút', 'Cậu Bé Người Gỗ lấy bổi cảnh tại Ý vào khoảng cuối thế kỷ 19, một người thợ làm gỗ tên Geppetto , đang sống một mình cùng với chú mèo Figaro và chú cá vàng Cleo. Ông cũng tạo ra một con rối, đặt tên là Pinocchio. Một đêm khi đang chìm trong giấc ngủ, Geppetto ước bằng phép màu nào đó, Pinocchio có thể trở thành cậu bé con người thực sự. Và điều ước này đã dẫn dắt cho cuộc phiêu lưu đầy ly kỳ nhưng cũng không kém phần thử thách của cậu bé người gỗ dũng cảm nhưng nhẹ dạ.', 2022, NULL, 1, '64262.txt', 'cau-be-nguoi-go', 12, 2, 18, 0, 'Pinocchio (2022)', 0, 0, 1, 'phimle', '2023-01-14 12:34:22', '2023-01-14 12:38:34'),
(151, 'CHÂN TRỜI ĐỎ (PHẦN 3)', '35 phút / tập', 'Chân Trời Đỏ (Phần 3) kể về Coral, Gina và Wendy tạo dựng cuộc sống mới và tìm thấy tình yêu ở Almería. Nhưng với việc Romeo muốn trả thù, sự bình yên của họ sẽ không kéo dài lâu.', 2022, 'VX_KygyV56o', 1, '94967.txt', 'chan-troi-do-phan-3', 15, 1, 18, 0, 'Sky Rojo (Season 3) (2022)', 0, 0, 8, 'phimbo', '2023-01-14 12:38:21', '2023-01-14 12:39:45'),
(152, 'KUNG FU PANDA: HIỆP SĨ RỒNG (PHẦN 2)', '25 phút / tập', 'Kung Fu Panda: Hiệp Sĩ Rồng (Phần 2) kể về Po tốt bụng cùng các Hiệp Sĩ Rồng chu du khắp thế giới để tìm những vũ khí Tianshang huyền thoại. Nhưng liệu họ có thể nhanh chân hơn các thế lực xấu xa?', 2022, NULL, 1, '52852.txt', 'kung-fu-panda-hiep-si-rong-phan-2', 15, 2, 18, 0, 'Kung Fu Panda: The Dragon Knight ( Season 2 ) (2022)', 0, 0, 12, 'phimbo', '2023-01-14 13:07:10', '2023-01-14 13:07:18'),
(153, 'HOÀN HỒN (PHẦN 2)', '60 phút / tập', 'Hoàn Hồn (Phần 2) kể tiếp về Jang Uk - hiện là thuật sư truy bắt người hoàn hồn quyết liệt nhưng đầy trăn trở, anh lại gặp một nữ nhân trẻ bị giam giữ. Nàng nhờ chàng giúp giành lại tự do.', 2022, 'xj-yE5v-sc8', 1, '22145.txt', 'hoan-hon-phan-2', 15, 2, 16, 0, 'Alchemy of Souls: Light and Shadow (2022)', 0, 0, 10, 'phimbo', '2023-01-15 07:53:32', '2023-01-15 08:00:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(17, 33, 13),
(18, 33, 14),
(19, 33, 26),
(20, 33, 18),
(21, 33, 27),
(22, 34, 12),
(23, 34, 25),
(24, 35, 9),
(25, 35, 15),
(26, 35, 21),
(27, 36, 25),
(28, 37, 9),
(29, 37, 14),
(30, 38, 15),
(31, 38, 25),
(32, 39, 9),
(33, 39, 25),
(34, 40, 9),
(35, 41, 12),
(36, 42, 15),
(37, 42, 21),
(38, 43, 13),
(39, 44, 9),
(40, 44, 14),
(41, 44, 26),
(42, 45, 15),
(43, 45, 25),
(44, 46, 13),
(45, 46, 15),
(46, 46, 26),
(49, 48, 25),
(50, 49, 9),
(51, 49, 24),
(52, 50, 22),
(53, 51, 15),
(54, 51, 25),
(55, 52, 25),
(56, 53, 14),
(57, 53, 15),
(58, 53, 24),
(59, 54, 14),
(60, 54, 26),
(61, 54, 27),
(62, 55, 13),
(63, 55, 15),
(64, 55, 21),
(65, 56, 9),
(66, 56, 13),
(67, 56, 14),
(68, 57, 9),
(69, 58, 14),
(70, 58, 27),
(71, 59, 9),
(72, 59, 24),
(73, 60, 9),
(74, 60, 13),
(75, 61, 14),
(76, 61, 27),
(77, 62, 9),
(78, 62, 14),
(79, 62, 26),
(80, 63, 13),
(81, 63, 18),
(82, 63, 26),
(83, 64, 9),
(84, 64, 12),
(85, 64, 25),
(86, 65, 9),
(87, 65, 14),
(88, 65, 27),
(89, 66, 13),
(90, 66, 18),
(91, 66, 26),
(92, 67, 15),
(93, 67, 25),
(94, 68, 9),
(95, 69, 14),
(96, 69, 26),
(97, 70, 11),
(98, 70, 20),
(99, 71, 14),
(100, 71, 25),
(101, 72, 9),
(102, 73, 25),
(103, 73, 26),
(104, 74, 9),
(105, 74, 21),
(106, 75, 15),
(107, 75, 21),
(108, 76, 25),
(109, 77, 25),
(110, 78, 9),
(111, 79, 18),
(112, 79, 19),
(113, 79, 26),
(114, 80, 9),
(115, 80, 24),
(116, 81, 10),
(117, 81, 12),
(118, 82, 9),
(119, 82, 21),
(121, 84, 12),
(122, 85, 14),
(123, 85, 18),
(124, 85, 24),
(125, 86, 12),
(126, 86, 22),
(127, 87, 13),
(128, 87, 25),
(129, 88, 9),
(130, 88, 10),
(131, 88, 14),
(132, 88, 26),
(133, 89, 9),
(134, 90, 9),
(135, 90, 14),
(136, 91, 13),
(137, 91, 15),
(138, 91, 25),
(139, 92, 9),
(140, 92, 21),
(141, 93, 9),
(142, 93, 14),
(143, 93, 25),
(144, 93, 26),
(145, 94, 9),
(146, 94, 15),
(147, 95, 13),
(148, 95, 20),
(149, 95, 22),
(150, 96, 12),
(151, 96, 14),
(152, 96, 22),
(153, 96, 24),
(154, 97, 13),
(155, 97, 15),
(156, 97, 21),
(157, 97, 22),
(158, 98, 9),
(159, 98, 12),
(160, 99, 14),
(161, 99, 18),
(162, 99, 26),
(163, 100, 9),
(164, 101, 13),
(165, 101, 15),
(166, 101, 21),
(167, 102, 13),
(168, 103, 15),
(169, 103, 24),
(170, 103, 25),
(171, 104, 13),
(172, 104, 20),
(173, 104, 22),
(174, 105, 13),
(175, 105, 22),
(176, 105, 26),
(177, 106, 9),
(178, 106, 13),
(179, 106, 15),
(180, 107, 13),
(181, 108, 13),
(182, 109, 25),
(183, 110, 9),
(184, 110, 24),
(185, 111, 24),
(186, 111, 9),
(187, 111, 14),
(188, 112, 9),
(189, 112, 14),
(190, 113, 12),
(191, 113, 22),
(192, 114, 26),
(193, 115, 12),
(194, 115, 22),
(195, 115, 26),
(196, 116, 9),
(197, 116, 14),
(198, 116, 25),
(199, 117, 12),
(200, 117, 22),
(201, 118, 12),
(202, 118, 22),
(203, 119, 18),
(204, 119, 26),
(205, 120, 9),
(206, 120, 10),
(207, 120, 14),
(208, 121, 12),
(209, 121, 22),
(210, 122, 15),
(211, 122, 24),
(212, 123, 12),
(213, 123, 22),
(214, 124, 9),
(215, 124, 14),
(216, 124, 24),
(217, 125, 26),
(218, 126, 9),
(219, 126, 12),
(220, 126, 14),
(221, 126, 22),
(222, 127, 12),
(223, 127, 22),
(224, 128, 9),
(225, 128, 14),
(226, 128, 20),
(227, 129, 9),
(228, 129, 14),
(229, 130, 12),
(230, 130, 20),
(231, 130, 22),
(232, 130, 25),
(233, 131, 26),
(234, 132, 26),
(235, 133, 27),
(236, 134, 9),
(237, 134, 14),
(238, 134, 26),
(239, 135, 9),
(240, 135, 14),
(241, 135, 20),
(242, 135, 21),
(243, 136, 9),
(244, 136, 14),
(245, 137, 9),
(246, 137, 14),
(247, 137, 26),
(248, 138, 10),
(249, 138, 12),
(250, 138, 22),
(251, 139, 9),
(252, 139, 10),
(253, 139, 14),
(254, 140, 9),
(255, 140, 14),
(256, 140, 24),
(257, 141, 12),
(258, 141, 22),
(259, 142, 12),
(260, 142, 22),
(261, 143, 9),
(262, 143, 14),
(263, 143, 25),
(264, 144, 9),
(265, 144, 14),
(266, 144, 24),
(267, 145, 12),
(268, 145, 22),
(269, 146, 15),
(270, 146, 25),
(271, 147, 24),
(272, 147, 27),
(273, 148, 12),
(274, 149, 12),
(275, 149, 22),
(276, 150, 9),
(277, 150, 14),
(278, 150, 26),
(279, 150, 27),
(280, 151, 9),
(281, 151, 14),
(282, 152, 27),
(283, 153, 12),
(284, 153, 15),
(285, 153, 22),
(286, 153, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nguyentrungkien407@gmail.com', NULL, '$2y$10$IU1tc6OWI2HRLN7I3RvaHu0zzfggzChp6/N.layYib4b1AWrng73S', NULL, '2022-01-11 07:00:17', '2022-01-25 07:00:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_movie_episodes` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `FK_movie_episodes` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
