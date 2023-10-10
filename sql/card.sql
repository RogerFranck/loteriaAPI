-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 08:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loteriadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `name`, `img`, `createdAt`, `updatedAt`) VALUES
(2, 'EL GALLO', 'https://i.etsystatic.com/25119114/r/il/e5f26d/2755526807/il_fullxfull.2755526807_f5r8.jpg', '2023-10-09 16:52:33.845944', '2023-10-09 16:52:33.845944'),
(3, 'EL DIABLITO', 'https://m.media-amazon.com/images/I/51pNq1dYYxL._AC_UF894,1000_QL80_.jpg', '2023-10-09 16:52:33.859889', '2023-10-09 16:52:33.859889'),
(4, 'LA DAMA', 'https://m.media-amazon.com/images/I/71-fiKpQ2DS._AC_UF894,1000_QL80_.jpg', '2023-10-09 16:52:33.866984', '2023-10-09 16:52:33.866984'),
(5, 'EL CATRIN', 'https://i.pinimg.com/originals/9d/31/d8/9d31d8099c8a46d245e9fdd6ccb040d9.jpg', '2023-10-09 16:52:33.873140', '2023-10-09 16:52:33.873140'),
(6, 'EL PARAGUAS', 'https://cdn.erowz.com/images/ebay/thumbs/images/g/~kMAAOSwFDBktjbN/s-l225.jpg', '2023-10-09 16:52:33.879690', '2023-10-09 16:52:33.879690'),
(7, 'LA SIRENA', 'https://live.staticflickr.com/3649/3668098488_899309aace.jpg', '2023-10-09 16:52:33.884970', '2023-10-09 16:52:33.884970'),
(8, 'LA ESCALERA', 'https://i.pinimg.com/1200x/31/cb/72/31cb729c756dae7794a30f6059f600d8.jpg', '2023-10-09 16:52:33.891604', '2023-10-09 16:52:33.891604'),
(9, 'LA BOTELLA', 'https://previews.123rf.com/images/embroiderypatterns/embroiderypatterns1507/embroiderypatterns150701055/42409547-nuestra-colorida-colecci%C3%B3n-de-tarjetas-de-loteria-cuenta-con-la-colecci%C3%B3n-completa-de-todos-los.jpg', '2023-10-09 16:52:33.896263', '2023-10-09 20:57:43.971899'),
(10, 'EL BARRIL', 'https://m.media-amazon.com/images/I/61mHmyNGrzS._AC_UF894,1000_QL80_.jpg', '2023-10-09 16:52:33.899988', '2023-10-09 20:59:38.774755'),
(11, 'EL ARBOL', 'https://images.vexels.com/media/users/3/185959/isolated/preview/abdea91671ca51d2f1e975dd0c7dc991-tarjeta-de-loteria-de-arbol.png', '2023-10-09 16:52:33.903977', '2023-10-09 21:00:36.521366'),
(12, 'EL MELON', 'https://images.vexels.com/media/users/3/185827/isolated/preview/ebcdd0f6ab5ef9a0a65996055da55ecc-tarjeta-de-loteria-melon.png', '2023-10-09 16:52:33.910130', '2023-10-09 21:01:50.496373'),
(13, 'EL VALIENTE', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDKhIZe6aC5sVHS6weVknI3nFDhloseKeyZrz9u57jkqVbezqPoqbDnK4LofHLPZtVTNA&usqp=CAU', '2023-10-09 16:52:33.913617', '2023-10-09 21:02:17.499770'),
(14, 'EL GORRITO', 'https://assets.wfcdn.com/im/66609465/compr-r85/1682/168224637/13-el-gorrito-bonnet-hat-loteria-card-mexican-bingo-lottery-white-wood-framed-poster-14x20-framed-on-paper-print.jpg', '2023-10-09 16:52:33.917027', '2023-10-09 21:02:42.945745'),
(15, 'LA MUERTE', 'https://ae01.alicdn.com/kf/S7c0fc30645f1493ea4a9f00805df3b64z/P-steres-con-estampado-de-loter-a-mexicana-El-Paraguas-La-Bandera-El-gato-La-Botella.jpg', '2023-10-09 16:52:33.920249', '2023-10-09 21:03:06.225527'),
(16, 'LA PERA', 'https://i.pinimg.com/originals/45/b8/8d/45b88d0352069bcc2327253ad80a32f7.jpg', '2023-10-09 16:52:33.925953', '2023-10-09 21:03:44.271769'),
(17, 'LA BANDERA', 'https://srv.latostadora.com/designall.dll/loteria_mexicana_la_bandera--i:141385160573014138520;d:1605730;w:240;b:FFFFFF;m:1.jpg', '2023-10-09 16:52:33.929434', '2023-10-09 21:04:22.637999'),
(18, 'EL BANDOLON', 'https://images.vexels.com/media/users/3/185845/isolated/preview/c79118d1649778be396fc76e6a05d615-tarjeta-de-loteria-mandolina.png', '2023-10-09 16:52:33.932522', '2023-10-09 21:05:01.213822'),
(19, 'EL VIOLONCELLO', 'https://images.vexels.com/media/users/3/185815/isolated/preview/cb90e2b468e4d6090e85ae40e823d6df-tarjeta-de-violonchelo-loteria.png', '2023-10-09 16:52:33.935244', '2023-10-09 21:05:34.407742'),
(20, 'LA GARZA', 'https://ih1.redbubble.net/image.1262241244.0183/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', '2023-10-09 16:52:33.939905', '2023-10-09 21:06:02.498284'),
(21, 'EL PAJARO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Ln04fpEVQ1nbeTspBgivGQ2dU1MOlH4gwA&usqp=CAU', '2023-10-09 16:52:33.943384', '2023-10-09 21:06:46.510681'),
(22, 'LA MANO', 'https://i.pinimg.com/474x/f1/78/32/f17832a7a2a06fde3c917b3cb31945a0.jpg', '2023-10-09 16:52:33.946506', '2023-10-09 21:07:10.102857'),
(23, 'LA BOTA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp7aLyeuoo0ocU1EsU8GlahUAf-GWKYgl0fg&usqp=CAU', '2023-10-09 16:52:33.949496', '2023-10-09 21:07:41.854320'),
(24, 'LA LUNA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd-RzNsiq4SIkbtV941rxz8VMMeZLodVY74A&usqp=CAU', '2023-10-09 16:52:33.952431', '2023-10-09 21:08:06.535293'),
(25, 'EL COTORRO', 'https://ih1.redbubble.net/image.557489947.1812/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg', '2023-10-09 16:52:33.956762', '2023-10-09 16:52:33.956762'),
(26, 'EL BORRACHO', 'https://images.vexels.com/media/users/3/185621/isolated/preview/e0ec956feddd94e80b6f2d4eb8f28e01-tarjeta-de-loteria-borracho.png', '2023-10-09 16:52:33.959978', '2023-10-09 21:08:29.915624'),
(27, 'EL NEGRITO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnH9qKkDj0KipdV9nikC9Jyhu6EBfksA7-9w&usqp=CAU', '2023-10-09 16:52:33.962601', '2023-10-09 21:10:04.776636'),
(28, 'EL CORAZON', 'https://http2.mlstatic.com/D_NQ_NP_677025-MLM44956305400_022021-W.jpg', '2023-10-09 16:52:33.965193', '2023-10-09 21:10:26.541135'),
(29, 'LA SANDIA', 'https://i.pinimg.com/736x/4f/9f/92/4f9f9204461c33c4f27209487c2c4d0c.jpg', '2023-10-09 16:52:33.967923', '2023-10-09 21:10:47.292039'),
(30, 'EL TAMBOR', 'https://i.pinimg.com/originals/21/56/d0/2156d03c9a789971ad1f9e1a5acfb6f5.jpg', '2023-10-09 16:52:33.970461', '2023-10-09 21:11:18.930437'),
(31, 'EL CAMARON', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8XggzP1Bx6cw0w9YHRqgEwu4ThjYDUpySbncqU90A6SnOA9VK6V6YtiUCbrmImUZ8clA&usqp=CAU', '2023-10-09 16:52:33.974790', '2023-10-09 21:11:44.781560'),
(32, 'LAS JARAS', 'https://i.pinimg.com/200x/5c/fa/8a/5cfa8acc84014b7846ce37146a203f0a.jpg', '2023-10-09 16:52:33.977793', '2023-10-09 21:12:07.531990'),
(33, 'EL MUSICO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmB2GgeAPem3h6jOo1Hg-zYcvfyptgTslt1Q&usqp=CAU', '2023-10-09 16:52:33.980477', '2023-10-09 21:12:45.561870'),
(34, 'LA ARAÑA', 'https://i.pinimg.com/originals/7b/98/d7/7b98d704af0ddfb997108a7d5698ca56.jpg', '2023-10-09 16:52:33.983101', '2023-10-09 21:16:29.424767'),
(35, 'EL SOLDADO', 'https://i.pinimg.com/originals/e4/0f/2f/e40f2f0bf95563b7ed2e34e5863c01e9.jpg', '2023-10-09 16:52:33.985654', '2023-10-09 21:16:50.264533'),
(36, 'LA ESTRELLA', 'https://i.pinimg.com/originals/8f/f9/66/8ff9666c0f6ab4c1aec2840de8e3bf97.jpg', '2023-10-09 16:52:33.989393', '2023-10-09 21:17:18.934471'),
(37, 'EL CAZO', 'https://i.pinimg.com/736x/c1/96/e9/c196e997514fb2087cf3670e5ff9a42e.jpg', '2023-10-09 16:52:33.992545', '2023-10-09 21:17:38.592218'),
(38, 'EL MUNDO', 'https://i.pinimg.com/originals/7a/90/82/7a9082f8d92d6e5c6fe30490d4ff5b0b.jpg', '2023-10-09 16:52:33.995607', '2023-10-09 21:17:55.245693'),
(39, 'EL APACHE', 'https://i.pinimg.com/474x/b6/d3/84/b6d38465c02ec22f8785f725c209c23e.jpg', '2023-10-09 16:52:33.998465', '2023-10-09 21:18:16.320167'),
(40, 'EL NOPAL', 'https://i.pinimg.com/1200x/df/f7/ce/dff7ce9dafc98f25348c87d8d048e0f1.jpg', '2023-10-09 16:52:34.001207', '2023-10-09 21:18:40.463118'),
(41, 'EL ALACRAN', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY7dUsE3Vl5VKcEh-KovpcHFgBaYJGqdNFBg&usqp=CAU', '2023-10-09 16:52:34.005173', '2023-10-09 21:19:26.829943'),
(42, 'LA ROSA', 'https://http2.mlstatic.com/D_NQ_NP_822844-CBT71742153366_092023-O.webp', '2023-10-09 16:52:34.009228', '2023-10-09 21:20:19.027834'),
(43, 'LA CALAVERA', 'https://i.etsystatic.com/24048717/r/il/242166/2561026394/il_fullxfull.2561026394_do0a.jpg', '2023-10-09 16:52:34.012108', '2023-10-09 21:20:53.311466'),
(44, 'LA CAMPANA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8PBQapHba7Z6zor8QspW4XNhFQv-WFCgF-A&usqp=CAU', '2023-10-09 16:52:34.014822', '2023-10-09 21:21:15.948189'),
(45, 'EL CANTARITO', 'https://i.pinimg.com/originals/dd/b1/37/ddb13797fb7f067718c3d3b770a9d177.jpg', '2023-10-09 16:52:34.017337', '2023-10-09 21:21:32.709983'),
(46, 'EL VENADO', 'https://i.pinimg.com/474x/bb/83/17/bb8317f644be82ddc3239dedbf1d33b6.jpg\r\n', '2023-10-09 16:52:34.020459', '2023-10-09 21:21:56.878398'),
(47, 'EL SOL', 'https://i.etsystatic.com/5752197/r/il/45dd22/1079198887/il_570xN.1079198887_leoy.jpg\r\n', '2023-10-09 16:52:34.025475', '2023-10-09 21:22:37.879797'),
(48, 'LA CORONA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcNZtDwr7Q6FKINFVdHO_ZUfbxmJ2toEO6bA&usqp=CAU', '2023-10-09 16:52:34.028242', '2023-10-09 21:23:15.391937'),
(49, 'LA CHALUPA', 'https://4.bp.blogspot.com/-QJ84ALTtL4Q/TqrKjiVZdrI/AAAAAAAAd4Q/5oxLB-qPl_Q/s1600/DSC05031.JPG', '2023-10-09 16:52:34.030801', '2023-10-09 21:23:46.005610'),
(50, 'EL PINO', 'https://images.vexels.com/media/users/3/185883/isolated/preview/65f00ef0cd18233a50b606c4ff46a64d-tarjeta-de-loteria-de-pino.png', '2023-10-09 16:52:34.033643', '2023-10-09 21:24:06.824590'),
(51, 'EL PESCADO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFEcGZED3iTCgsgSIuni_0xIftLX5sortYFjU6l56QOTi8vHS1smCURwWr0v8z0pitAO8&usqp=CAU', '2023-10-09 16:52:34.036220', '2023-10-09 21:24:49.584023'),
(52, 'LA PALMA', 'https://i.pinimg.com/originals/6a/d1/2e/6ad12edd2c5ba8bb7b1f7c361d4a717b.jpg', '2023-10-09 16:52:34.039979', '2023-10-09 21:25:16.634004'),
(53, 'LA MACETA', 'https://i.pinimg.com/originals/b0/da/24/b0da241473b128dfa157592d4c7f3cee.jpg', '2023-10-09 16:52:34.043042', '2023-10-09 21:26:12.166365'),
(54, 'EL ARPA', 'https://assets.wfcdn.com/im/68277668/resize-h600-w600%5Ecompr-r85/1682/168226042/53+El+Arpa+Harp+Loteria+Card+Mexican+Bingo+Lottery+White+Wood+Framed+Poster+14x20+Framed+On+Paper+Print.jpg', '2023-10-09 16:52:34.045904', '2023-10-09 21:26:31.679100'),
(55, 'LA RANA', 'https://i.pinimg.com/550x/0a/ef/b1/0aefb10c2c9a96d72084849a9aca26f6.jpg', '2023-10-09 16:52:34.048558', '2023-10-09 21:26:59.597481');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;