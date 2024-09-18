-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2024 at 07:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab12-php3`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` datetime NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Error sint sunt in.', 'https://via.placeholder.com/640x480.png/0033aa?text=ut', 'Mr. Henri Davis MD', 'Miss Laurie Hammes', '1999-05-16 02:20:29', 120, 11, 2, NULL, NULL),
(2, 'Sed accusantium nemo qui.', 'https://via.placeholder.com/640x480.png/00aa66?text=eum', 'Marguerite Howe', 'Jerald Sauer', '2006-12-07 00:48:15', 147, 78, 3, NULL, NULL),
(3, 'Est quo alias delectus.', 'https://via.placeholder.com/640x480.png/00ff99?text=ut', 'Jany Balistreri', 'Elwin Hickle PhD', '2003-01-28 07:50:32', 185, 83, 1, NULL, NULL),
(4, 'Iure quod accusamus quam.', 'https://via.placeholder.com/640x480.png/00ee44?text=tenetur', 'Christian Turner', 'Deonte Macejkovic', '2006-05-11 10:27:11', 51, 91, 5, NULL, NULL),
(5, 'Natus alias dolore cum et.', 'https://via.placeholder.com/640x480.png/0099ee?text=voluptatem', 'Edwardo Cassin', 'Bertram West', '2005-05-07 07:43:25', 54, 37, 4, NULL, NULL),
(6, 'Soluta saepe odio in.', 'https://via.placeholder.com/640x480.png/005566?text=ab', 'Aditya Deckow V', 'Mrs. Darlene Weber III', '2022-10-19 12:30:22', 87, 36, 5, NULL, NULL),
(7, 'Et eos et enim.', 'https://via.placeholder.com/640x480.png/0044ee?text=porro', 'Linwood Jacobs I', 'Jarrett Rutherford IV', '1993-02-09 04:26:46', 130, 33, 1, NULL, NULL),
(8, 'Quia non in qui dolorem.', 'https://via.placeholder.com/640x480.png/008877?text=vero', 'Terence Tillman', 'Jermain Schaefer', '2024-01-25 23:11:29', 29, 75, 2, NULL, NULL),
(9, 'Similique odio ut ipsa sed.', 'https://via.placeholder.com/640x480.png/00eedd?text=veritatis', 'Prof. Cristobal Kirlin', 'Conner Okuneva', '1983-09-24 16:08:30', 159, 73, 5, NULL, NULL),
(10, 'Ducimus velit delectus atque.', 'https://via.placeholder.com/640x480.png/00bb66?text=optio', 'Emily Steuber', 'Cullen Homenick V', '1995-04-20 17:12:50', 109, 46, 1, NULL, NULL),
(11, 'Aut itaque aut sunt omnis.', 'https://via.placeholder.com/640x480.png/009900?text=eos', 'Dr. Lavon Block I', 'Claire Schinner MD', '2016-10-10 18:03:31', 34, 29, 3, NULL, NULL),
(12, 'Id qui qui architecto.', 'https://via.placeholder.com/640x480.png/00bb55?text=quaerat', 'Alice Kirlin', 'Prof. Amari Ledner II', '1993-02-26 18:21:06', 14, 49, 1, NULL, NULL),
(13, 'Ipsa quo enim sit molestiae.', 'https://via.placeholder.com/640x480.png/005599?text=quas', 'Prof. Bertha Nienow', 'Mr. Eino Rath', '1972-08-26 10:58:02', 15, 65, 4, NULL, NULL),
(14, 'Atque adipisci rerum laborum.', 'https://via.placeholder.com/640x480.png/0099ff?text=impedit', 'Mrs. Felicity Wolf', 'Ms. Dakota Braun', '2008-02-25 21:57:46', 142, 41, 5, NULL, NULL),
(15, 'Molestias quis quia ab animi.', 'https://via.placeholder.com/640x480.png/00ff55?text=dolor', 'Kimberly Wilderman', 'Mr. Otis Denesik', '1987-06-04 01:00:07', 83, 55, 5, NULL, NULL),
(16, 'Architecto aut aut at ullam.', 'https://via.placeholder.com/640x480.png/0044ee?text=alias', 'Wyman McClure DDS', 'Orlando Thiel', '1991-01-10 08:34:23', 19, 13, 1, NULL, NULL),
(17, 'Ut cum quibusdam amet autem.', 'https://via.placeholder.com/640x480.png/00ee22?text=expedita', 'Lavonne Rath', 'Jayden Runolfsson', '1981-04-30 07:54:55', 131, 81, 1, NULL, NULL),
(18, 'Assumenda vel nulla et eos.', 'https://via.placeholder.com/640x480.png/004400?text=officia', 'Arnulfo Jaskolski', 'Prof. Jovany Bergnaum', '1979-12-28 04:28:01', 112, 23, 5, NULL, NULL),
(19, 'Qui laborum aut et quis.', 'https://via.placeholder.com/640x480.png/00aa77?text=voluptates', 'Enola Kautzer', 'Mrs. Dena Jast', '1992-07-29 22:57:12', 35, 23, 3, NULL, NULL),
(20, 'Ab corporis ipsam sequi quas.', 'https://via.placeholder.com/640x480.png/002266?text=provident', 'Ollie Smith', 'Deon Zulauf MD', '1973-12-24 05:40:56', 112, 74, 5, NULL, NULL),
(21, 'Nobis ut qui earum enim et.', 'https://via.placeholder.com/640x480.png/006655?text=qui', 'Ms. Breanne Predovic', 'Yadira Steuber PhD', '1986-06-05 21:03:17', 57, 50, 1, NULL, NULL),
(22, 'Aut vitae est sed optio.', 'https://via.placeholder.com/640x480.png/00ccaa?text=qui', 'Reymundo Nikolaus', 'Tess Gleichner DVM', '1985-09-29 11:52:27', 28, 65, 2, NULL, NULL),
(23, 'Qui ratione et velit culpa.', 'https://via.placeholder.com/640x480.png/0077cc?text=veniam', 'Dr. Olaf Reinger I', 'Emmy Rath', '1984-01-20 10:46:10', 185, 15, 4, NULL, NULL),
(24, 'Eaque ad dignissimos animi.', 'https://via.placeholder.com/640x480.png/0077ee?text=non', 'Dennis Hilpert', 'Nikita Stanton', '1985-07-12 14:51:45', 82, 8, 5, NULL, NULL),
(25, 'Dolor corrupti iste aut in.', 'https://via.placeholder.com/640x480.png/00ffee?text=iure', 'Birdie Balistreri DVM', 'Ryder Altenwerth', '1981-10-23 14:55:20', 142, 29, 3, NULL, NULL),
(26, 'Corrupti et enim architecto.', 'https://via.placeholder.com/640x480.png/0033ff?text=inventore', 'Zelma Johnston', 'Erwin Cummings', '1997-09-12 06:10:04', 90, 94, 5, NULL, NULL),
(27, 'Aut qui ea ab.', 'https://via.placeholder.com/640x480.png/00bb88?text=eos', 'Morris Hand PhD', 'Seamus Stark', '1989-09-21 02:03:18', 45, 6, 2, NULL, NULL),
(28, 'Quis dolorem dolor ab.', 'https://via.placeholder.com/640x480.png/007755?text=facilis', 'Miss Alicia Medhurst', 'Omer Kerluke', '1975-05-15 02:05:00', 150, 26, 1, NULL, NULL),
(29, 'Voluptatum deleniti aut illo.', 'https://via.placeholder.com/640x480.png/00eebb?text=consectetur', 'Prof. Leslie Cummings', 'Clovis Grant III', '2015-08-03 20:07:35', 102, 80, 2, NULL, NULL),
(30, 'Tenetur asperiores ut sed.', 'https://via.placeholder.com/640x480.png/00dd11?text=consequatur', 'Jaime Bauch', 'Emmalee Kub', '1975-10-23 11:31:44', 200, 41, 5, NULL, NULL),
(31, 'Ullam ad reiciendis officiis.', 'https://via.placeholder.com/640x480.png/00cc00?text=quis', 'Shaun Parisian', 'Alanna Streich', '1984-10-12 11:48:25', 83, 34, 3, NULL, NULL),
(32, 'Et est eum consequatur sunt.', 'https://via.placeholder.com/640x480.png/002222?text=officia', 'Retta O\'Connell', 'Dr. Haleigh Abbott II', '2014-06-23 09:23:15', 10, 90, 1, NULL, NULL),
(33, 'Cum ratione quisquam nisi.', 'https://via.placeholder.com/640x480.png/005555?text=asperiores', 'Mary Smith', 'Jamir Aufderhar', '1999-03-02 22:31:49', 28, 18, 3, NULL, NULL),
(34, 'Dolore quis nihil aut.', 'https://via.placeholder.com/640x480.png/0022aa?text=qui', 'Shyann Wilkinson', 'Olaf Dooley', '1979-01-19 16:55:58', 92, 10, 1, NULL, NULL),
(35, 'Eum dolores quasi pariatur.', 'https://via.placeholder.com/640x480.png/00bbdd?text=in', 'Ms. Amina Muller', 'Prof. Fred Rowe DDS', '1989-01-30 08:39:53', 36, 14, 3, NULL, NULL),
(36, 'Maxime omnis qui alias et.', 'https://via.placeholder.com/640x480.png/007755?text=repellendus', 'Mrs. Christine Beier DVM', 'Dr. Roger Barton DDS', '1984-02-03 17:36:33', 109, 73, 2, NULL, NULL),
(37, 'Ipsum et sint id enim.', 'https://via.placeholder.com/640x480.png/0088ff?text=sunt', 'Prof. Piper Towne', 'Prof. Darron Sipes Sr.', '2016-04-17 14:55:17', 150, 24, 3, NULL, NULL),
(38, 'Quis autem repellat placeat.', 'https://via.placeholder.com/640x480.png/000055?text=et', 'Prof. Douglas Johnston', 'Annalise Rodriguez', '2016-01-10 00:30:24', 37, 71, 4, NULL, NULL),
(39, 'Quod tenetur ea sequi qui.', 'https://via.placeholder.com/640x480.png/0066ee?text=voluptatibus', 'Marquise Berge', 'Lilliana Kertzmann PhD', '1987-12-02 09:54:08', 38, 31, 5, NULL, NULL),
(40, 'Quibusdam dolore velit rerum.', 'https://via.placeholder.com/640x480.png/0099bb?text=id', 'Kolby Donnelly', 'Mrs. Sallie Medhurst', '2004-04-14 15:21:34', 112, 6, 5, NULL, NULL),
(41, 'Alias expedita nulla est.', 'https://via.placeholder.com/640x480.png/009966?text=sunt', 'Kennith Schaden MD', 'Gavin Buckridge', '2019-12-11 23:53:43', 167, 4, 1, NULL, NULL),
(42, 'Vel maxime in commodi et.', 'https://via.placeholder.com/640x480.png/0044cc?text=et', 'Belle Borer', 'Prof. Kade Zulauf DVM', '1988-01-19 21:04:08', 124, 10, 2, NULL, NULL),
(43, 'Sapiente debitis odit ad.', 'https://via.placeholder.com/640x480.png/009999?text=ipsum', 'Josephine Gottlieb', 'Missouri Feest', '2023-10-15 01:59:34', 171, 97, 3, NULL, NULL),
(44, 'Aliquid enim error amet ab.', 'https://via.placeholder.com/640x480.png/004444?text=voluptatem', 'Royce Kessler', 'Green Fay', '1997-08-10 02:35:15', 162, 89, 3, NULL, NULL),
(45, 'Accusamus sunt enim suscipit.', 'https://via.placeholder.com/640x480.png/00cc33?text=molestiae', 'Edyth Jerde', 'Carmine Greenholt', '1997-05-15 15:06:06', 109, 16, 4, NULL, NULL),
(46, 'Esse sunt dicta aut autem.', 'https://via.placeholder.com/640x480.png/00ddee?text=eaque', 'Georgianna Marvin', 'Abdullah King', '1985-04-23 21:57:09', 166, 65, 1, NULL, NULL),
(47, 'Amet odio quia esse ullam.', 'https://via.placeholder.com/640x480.png/002222?text=non', 'Misael Jones', 'Rosa Hoppe DDS', '1991-11-10 05:25:32', 172, 45, 1, NULL, NULL),
(48, 'Placeat rerum placeat sit et.', 'https://via.placeholder.com/640x480.png/003333?text=veritatis', 'Kasey Bradtke', 'Beverly Hudson', '1977-10-29 18:50:50', 131, 63, 1, NULL, NULL),
(49, 'Ut dicta ipsam iure quaerat.', 'https://via.placeholder.com/640x480.png/00ccbb?text=assumenda', 'Lura Jakubowski IV', 'Zack Rosenbaum', '2016-12-26 17:19:41', 135, 56, 2, NULL, NULL),
(50, 'Illo rem aliquid quos nihil.', 'https://via.placeholder.com/640x480.png/00bb44?text=dolor', 'Kory King DDS', 'Dr. Madaline Ratke I', '1991-04-19 01:42:36', 69, 90, 4, NULL, NULL),
(51, 'Sequi quia qui commodi autem.', 'https://via.placeholder.com/640x480.png/006688?text=accusantium', 'Ms. Paige D\'Amore DVM', 'Prof. Payton Hayes I', '1972-01-21 21:50:47', 33, 100, 3, NULL, NULL),
(52, 'Et expedita aut doloremque.', 'https://via.placeholder.com/640x480.png/009955?text=sequi', 'Vesta Willms DDS', 'Roel Klein V', '1974-08-20 04:13:07', 39, 62, 4, NULL, NULL),
(53, 'Illum hic dolorum quis.', 'https://via.placeholder.com/640x480.png/00ddcc?text=occaecati', 'Ross King', 'Cloyd Breitenberg', '1982-02-26 23:25:31', 138, 19, 5, NULL, NULL),
(54, 'Veritatis autem soluta aut.', 'https://via.placeholder.com/640x480.png/00ee22?text=debitis', 'Roy Kshlerin', 'Darrell O\'Hara', '1983-09-02 16:31:54', 78, 99, 5, NULL, NULL),
(55, 'Odio in illum qui odit quis.', 'https://via.placeholder.com/640x480.png/006688?text=facere', 'Lorine Herman DDS', 'Reinhold Dickinson DDS', '2005-01-12 17:59:01', 145, 74, 4, NULL, NULL),
(56, 'Et molestiae laborum eos.', 'https://via.placeholder.com/640x480.png/0022aa?text=necessitatibus', 'Celia Cormier', 'Miss Fanny Gaylord II', '1994-05-25 15:07:59', 169, 22, 1, NULL, NULL),
(57, 'Ex et reiciendis quo aperiam.', 'https://via.placeholder.com/640x480.png/000055?text=nemo', 'Roy Kerluke V', 'Leslie Moore', '1999-05-12 19:27:57', 104, 81, 1, NULL, NULL),
(58, 'Rem debitis magnam odit non.', 'https://via.placeholder.com/640x480.png/00ee22?text=numquam', 'Mrs. Aletha Lakin', 'Louie Wolf I', '2009-10-24 09:28:46', 27, 80, 5, NULL, NULL),
(59, 'Ea eveniet pariatur ut et.', 'https://via.placeholder.com/640x480.png/0088cc?text=nihil', 'Prof. Annette Botsford III', 'Mrs. Ana Ritchie', '1985-07-25 02:32:09', 136, 7, 3, NULL, NULL),
(60, 'Optio at ullam placeat ut.', 'https://via.placeholder.com/640x480.png/001100?text=culpa', 'Antoinette Franecki', 'Darlene Dickinson', '1981-07-30 05:27:32', 56, 60, 4, NULL, NULL),
(61, 'Vero magni qui hic.', 'https://via.placeholder.com/640x480.png/00ee33?text=consectetur', 'Dr. Sonny Gusikowski IV', 'Helene Jakubowski', '1971-03-06 14:04:33', 164, 20, 4, NULL, NULL),
(62, 'Eum aut quasi sunt.', 'https://via.placeholder.com/640x480.png/001144?text=debitis', 'Dalton Mayer', 'Gaylord Frami', '2010-10-10 05:49:08', 116, 64, 5, NULL, NULL),
(63, 'A et maiores nihil.', 'https://via.placeholder.com/640x480.png/0022bb?text=id', 'Hulda Pouros', 'Dr. Veronica Connelly', '1983-01-28 03:42:30', 178, 18, 3, NULL, NULL),
(64, 'Eum temporibus illo qui aut.', 'https://via.placeholder.com/640x480.png/009955?text=provident', 'Jackson Kozey', 'Luella Rath', '1983-01-24 12:59:01', 117, 40, 1, NULL, NULL),
(65, 'Hic veritatis ullam voluptas.', 'https://via.placeholder.com/640x480.png/0066aa?text=et', 'Wendy Ziemann', 'Guadalupe Jones', '1986-12-14 20:32:09', 128, 90, 4, NULL, NULL),
(66, 'Vel quo corporis in aut nemo.', 'https://via.placeholder.com/640x480.png/0044bb?text=libero', 'Joey Treutel', 'Jammie Brekke', '1984-09-02 05:50:42', 96, 59, 1, NULL, NULL),
(67, 'Aut enim et sapiente dolorum.', 'https://via.placeholder.com/640x480.png/001188?text=aut', 'Tierra Cremin PhD', 'Mrs. Destiny Mayer IV', '2004-09-17 21:43:30', 142, 92, 2, NULL, NULL),
(68, 'Aliquid qui quo quae saepe.', 'https://via.placeholder.com/640x480.png/00ff44?text=odio', 'Gennaro Ferry IV', 'Dr. Daphney Brakus', '2007-07-10 02:21:12', 53, 43, 2, NULL, NULL),
(69, 'Iure rem quia dolore est.', 'https://via.placeholder.com/640x480.png/008866?text=in', 'Mr. Roman Toy II', 'Dustin O\'Keefe', '1986-12-27 13:15:52', 183, 80, 3, NULL, NULL),
(70, 'Perferendis sunt et nam ut.', 'https://via.placeholder.com/640x480.png/00ee66?text=sed', 'Salma Wolff PhD', 'Alberta Hansen', '2003-06-08 03:15:04', 10, 91, 1, NULL, NULL),
(71, 'Autem aut laborum voluptatem.', 'https://via.placeholder.com/640x480.png/00ee99?text=placeat', 'Yolanda Towne', 'Cullen Collier I', '2010-12-29 09:49:02', 87, 96, 3, NULL, NULL),
(72, 'Vitae non eum ipsa provident.', 'https://via.placeholder.com/640x480.png/004477?text=ut', 'Hayley Graham', 'Vicky Balistreri', '1988-09-01 14:45:12', 177, 27, 1, NULL, NULL),
(73, 'Sit nemo blanditiis est.', 'https://via.placeholder.com/640x480.png/00ff99?text=veniam', 'Mrs. Isabel Corkery', 'Dr. Eleazar Stracke II', '2006-12-30 22:57:56', 194, 34, 1, NULL, NULL),
(74, 'A cumque et sed quae.', 'https://via.placeholder.com/640x480.png/008877?text=possimus', 'Nyah Reilly', 'Dr. Ludie Mann I', '2002-06-01 04:21:10', 96, 58, 2, NULL, NULL),
(75, 'Ratione sint nisi occaecati.', 'https://via.placeholder.com/640x480.png/007744?text=atque', 'Prof. Jett Beer DDS', 'August McGlynn', '2010-07-30 12:55:42', 190, 74, 2, NULL, NULL),
(76, 'Ea consequatur non sit.', 'https://via.placeholder.com/640x480.png/0088ff?text=consequuntur', 'Rosella Donnelly', 'Tre Cronin', '1981-03-25 21:45:27', 140, 80, 2, NULL, NULL),
(77, 'Enim nobis est amet.', 'https://via.placeholder.com/640x480.png/00aaee?text=perspiciatis', 'Jean Jenkins', 'Elfrieda Gutkowski', '1976-05-27 11:50:48', 117, 73, 3, NULL, NULL),
(78, 'Et ea perferendis in libero.', 'https://via.placeholder.com/640x480.png/0011aa?text=aliquam', 'Mr. Buster Romaguera', 'Laisha Abbott', '1987-01-03 21:53:08', 158, 55, 4, NULL, NULL),
(79, 'Itaque iusto eos quo aut.', 'https://via.placeholder.com/640x480.png/008811?text=quis', 'Sunny Marquardt II', 'Sandra Zemlak', '2002-08-18 22:50:49', 37, 13, 4, NULL, NULL),
(80, 'Quo animi velit rerum et.', 'https://via.placeholder.com/640x480.png/0055cc?text=qui', 'Abdiel Hansen', 'Ms. Halie Kub MD', '1991-12-28 20:13:54', 192, 34, 5, NULL, NULL),
(81, 'Incidunt architecto enim sed.', 'https://via.placeholder.com/640x480.png/00aa33?text=dolores', 'Justus Ruecker', 'Prof. Carrie Harber', '2004-08-20 18:31:46', 143, 69, 5, NULL, NULL),
(82, 'Et ex iure aut.', 'https://via.placeholder.com/640x480.png/000022?text=exercitationem', 'Ashly Rosenbaum I', 'Nina Will', '2011-12-29 14:52:37', 114, 43, 2, NULL, NULL),
(83, 'Minima vel quia aliquid sint.', 'https://via.placeholder.com/640x480.png/007700?text=maxime', 'Genoveva Windler', 'Dr. Kevin Schiller IV', '2014-05-26 07:33:42', 116, 38, 2, NULL, NULL),
(84, 'Sit architecto vero aut qui.', 'https://via.placeholder.com/640x480.png/008833?text=voluptatem', 'Brody Price DDS', 'Adam Jaskolski', '1981-12-24 03:04:55', 133, 77, 5, NULL, NULL),
(85, 'Atque qui adipisci ut.', 'https://via.placeholder.com/640x480.png/003355?text=nisi', 'Miss Tania Barrows', 'Dr. Gaston Kassulke MD', '2011-01-18 09:42:05', 142, 12, 1, NULL, NULL),
(86, 'Totam non maxime laboriosam.', 'https://via.placeholder.com/640x480.png/00ffdd?text=et', 'Miss Keely Mraz Sr.', 'Dr. Jettie Dietrich IV', '1974-04-02 17:48:58', 163, 18, 2, NULL, NULL),
(87, 'Et laudantium harum dolore.', 'https://via.placeholder.com/640x480.png/004433?text=voluptas', 'Gussie Pfeffer', 'Ardella Grady Jr.', '1997-05-12 19:22:41', 11, 91, 5, NULL, NULL),
(88, 'Dolorem iure beatae quae.', 'https://via.placeholder.com/640x480.png/0055ee?text=at', 'Shawn Kris', 'Mavis Paucek', '1995-10-20 14:31:29', 15, 2, 1, NULL, NULL),
(89, 'Et qui est sequi.', 'https://via.placeholder.com/640x480.png/00aa00?text=nostrum', 'Milo Baumbach', 'Braden McLaughlin', '1982-06-21 20:57:54', 171, 12, 4, NULL, NULL),
(90, 'Cupiditate et repellat aut.', 'https://via.placeholder.com/640x480.png/0055aa?text=aliquid', 'Orville Schneider', 'Andre Pfeffer', '2013-03-24 21:42:00', 173, 11, 5, NULL, NULL),
(91, 'Quisquam ducimus soluta eos.', 'https://via.placeholder.com/640x480.png/00ddff?text=animi', 'Lowell McKenzie', 'Alayna Rippin Jr.', '1989-01-17 08:32:09', 102, 8, 1, NULL, NULL),
(92, 'Magni tenetur quasi odit et.', 'https://via.placeholder.com/640x480.png/003322?text=voluptate', 'Rylan Kuhn', 'Dr. Sally Wunsch DVM', '1971-04-04 17:54:03', 95, 83, 5, NULL, NULL),
(93, 'Dicta quos nemo ullam est.', 'https://via.placeholder.com/640x480.png/006600?text=modi', 'Dr. Ivy Wisozk PhD', 'Ronny Mertz', '1990-10-06 02:50:45', 83, 75, 3, NULL, NULL),
(94, 'Dolores cum quis debitis.', 'https://via.placeholder.com/640x480.png/004400?text=temporibus', 'Alisha Zieme', 'Dr. Kaycee Hayes IV', '1986-06-29 04:42:56', 81, 80, 5, NULL, NULL),
(95, 'Ut assumenda illo sed.', 'https://via.placeholder.com/640x480.png/0055aa?text=exercitationem', 'Mr. Armando Hahn', 'Ms. Cleta Strosin I', '2014-04-26 12:37:41', 194, 53, 4, NULL, NULL),
(96, 'Fuga iusto qui a sequi.', 'https://via.placeholder.com/640x480.png/00bb99?text=tempore', 'Dr. Corine Altenwerth PhD', 'Sven Blick IV', '2023-08-28 17:40:03', 117, 18, 5, NULL, NULL),
(97, 'Aut modi rerum quos fugiat.', 'https://via.placeholder.com/640x480.png/00ff44?text=quia', 'Eduardo Schultz', 'Miss Melba Hermiston', '2006-01-21 07:36:15', 180, 68, 5, NULL, NULL),
(98, 'Repellat qui et qui optio.', 'https://via.placeholder.com/640x480.png/0044bb?text=autem', 'Concepcion Rodriguez DVM', 'Mr. Issac Schowalter', '1987-09-17 10:58:23', 88, 56, 4, NULL, NULL),
(99, 'Quisquam qui vero voluptas.', 'https://via.placeholder.com/640x480.png/006633?text=et', 'Carolyne Abshire', 'Myrl Corwin', '2006-12-10 23:05:55', 79, 10, 1, NULL, NULL),
(100, 'Et qui odio ut quis.', 'https://via.placeholder.com/640x480.png/00ee00?text=quo', 'Elyssa Mayert', 'Estefania Stehr DVM', '1973-11-16 23:47:56', 173, 28, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Giáo khoa', NULL, NULL),
(2, 'Kinh tế', NULL, NULL),
(3, 'Tâm lý', NULL, NULL),
(4, 'Tự nhiên', NULL, NULL),
(5, 'Thiên văn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_18_030128_create_categories_table', 1),
(6, '2024_09_18_030154_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
