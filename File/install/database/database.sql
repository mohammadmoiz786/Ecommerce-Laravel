-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 08:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `don`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2a$12$nommmzkmGOvhutOrreke4eHFHHMG9BGU5ghmN94Y1c2pild9UfAoC', 1, 'PLvedo0fNXWeHjYQkkatLEmkSwh4c9dlkax2DQdXAYKecBDQamZXtNW8EfIq', NULL, '2018-02-28 23:27:08', '2020-11-19 04:40:00', 'Genius Store'),
(5, 'shaon', 'shaon@gmail.com', '01629552892', 0, '1556780563user.png', '$2a$12$nommmzkmGOvhutOrreke4eHFHHMG9BGU5ghmN94Y1c2pild9UfAoC', 1, 'y6pYnbKWyDzySvYNfW5N9hn4XvS6SmtjSQvAMYiau8O18nrJwQSzHoBPWrmh', NULL, '2018-02-28 23:27:08', '2021-09-24 14:02:52', 'Genius Store');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(36, 34, 'App\\Models\\Category', 'Jerome Noble', 'jerome_noble', 1, 1, '2021-09-22 12:43:20', '2021-09-22 12:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(262, 36, 'JavaScript JS', '2021-09-22 12:43:20', '2021-09-22 12:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `language_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `language_id`) VALUES
(3, '1632893951FbOwdL3ejpg', 'https://royalscripts.com/product/eCommerceDon/fashion', 'Large', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1572852833blog8.jpg', 'www.geniusocean.com', 44, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41', 1),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1572852827blog7.png', 'www.geniusocean.com', 16, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21', 1),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1572852821blog5.png', 'www.geniusocean.com', 22, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20', 1),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1572852809blog4.png', 'www.geniusocean.com', 61, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36', 1),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852788blog3.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30', 1),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852781blog2.jpg', 'www.geniusocean.com', 12, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53', 1),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852775blog1.png', 'www.geniusocean.com', 7, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852770blog9.png', 'www.geniusocean.com', 54, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852764blog8.jpg', 'www.geniusocean.com', 176, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852760blog7.png', 'www.geniusocean.com', 12, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852743blog5.png', 'www.geniusocean.com', 40, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852737blog4.png', 'www.geniusocean.com', 81, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852731blog3.jpg', 'www.geniusocean.com', 11, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1572852725blog2.jpg', 'www.geniusocean.com', 38, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(25, 3, 'How to design effective arts?', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.</p>', '1572852720blog1.png', 'www.geniusocean.com', 71, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `language_id`) VALUES
(2, 'Web Services', 'web-services', 1),
(3, 'Business Philosophy', 'business-philosophy', 1),
(4, 'Business Help', 'business-help', 1),
(5, 'Random Thoughts', 'random-thoughts', 1),
(6, 'Mechanical', 'mechanical', 1),
(7, 'Entrepreneurs', 'entrepreneurs', 1),
(8, 'Technology', 'technology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `image`, `language_id`) VALUES
(39, 'Accessories', 'Accessories', 1, '1632825095YpAsyPnkpng', '1632825095qhRSVFeXjpg', 1),
(40, 'Beauty', 'Beauty', 1, '16328251612BrWgTjMpng', '1632825161V2N5MEXsjpg', 1),
(41, 'Bags', 'Bags', 1, '16328251851CCZkUt7png', '1632825185dl1ZpeeQjpg', 1),
(42, 'Shoes', 'Shoes', 1, '1632825202xJyOH3Efpng', '1632825202fESZqlHJjpg', 1),
(43, 'Jewellery', 'Jewellery', 1, '1632825230fSysbdKTpng', '1632825230gWUS7Y0Ojpg', 1),
(44, 'Jeans', 'Jeans', 1, '1632887109ulhnBwcQpng', '1632887110wcdDTwzIjpg', 1),
(45, 'T-shirt & Tops', 'T-shirt-and-Tops', 1, '1632887177HCBVtQAJpng', '1632887177GeJDIMVsjpg', 1),
(46, 'Shorts', 'Shorts', 1, '1632887198z9b26L5xpng', '1632887198s3oXwKM9jpg', 1),
(47, 'Shirts', 'Shirts', 1, '1632887216mvKK1GoFpng', '1632887216FkdryV6Wjpg', 1),
(48, 'Coats & Jackets', 'Coats-and-Jackets', 1, '1632887247AwoU3AB8png', '1632887247a9LOpBSUjpg', 1),
(49, 'Cosmetics', 'Cosmetics', 1, '16328873643NwZoUigpng', '16328873649KWJ01QEjpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 356, 0, NULL),
(3, 'browser', 'Windows 10', 5717, 0, NULL),
(4, 'browser', 'Linux', 248, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 622, 0, NULL),
(6, 'browser', 'Windows 7', 450, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 556, 0, NULL),
(9, 'referral', 'www.google.com', 8, 0, NULL),
(10, 'browser', 'Android', 528, 0, NULL),
(11, 'browser', 'Mac OS X', 566, 0, NULL),
(12, 'referral', 'l.facebook.com', 5, 0, NULL),
(13, 'referral', 'codecanyon.net', 151, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 4, 0, NULL),
(18, 'browser', 'iPhone', 20, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 5, 0, NULL),
(20, 'referral', 'www.mollie.com', 5, 0, NULL),
(21, 'referral', 'test.instamojo.com', 1, 0, NULL),
(22, 'referral', 'securegw-stage.paytm.in', 1, 0, NULL),
(23, 'referral', 'sandbox.sslcommerz.com', 1, 0, NULL),
(24, 'referral', 'www.w3schools.com', 2, 0, NULL),
(25, 'referral', 'www.themeskorner.com', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0, 0),
(2, 'AL', 'Albania', 0, 0),
(3, 'DZ', 'Algeria', 0, 0),
(4, 'DS', 'American Samoa', 0, 0),
(5, 'AD', 'Andorra', 0, 0),
(6, 'AO', 'Angola', 0, 0),
(7, 'AI', 'Anguilla', 0, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua and Barbuda', 0, 0),
(10, 'AR', 'Argentina', 0, 0),
(11, 'AM', 'Armenia', 0, 0),
(12, 'AW', 'Aruba', 0, 0),
(13, 'AU', 'Australia', 0, 0),
(14, 'AT', 'Austria', 0, 0),
(15, 'AZ', 'Azerbaijan', 0, 0),
(16, 'BS', 'Bahamas', 0, 0),
(17, 'BH', 'Bahrain', 0, 0),
(18, 'BD', 'Bangladesh', 0, 0),
(19, 'BB', 'Barbados', 0, 0),
(20, 'BY', 'Belarus', 0, 0),
(21, 'BE', 'Belgium', 0, 0),
(22, 'BZ', 'Belize', 0, 0),
(23, 'BJ', 'Benin', 0, 0),
(24, 'BM', 'Bermuda', 0, 0),
(25, 'BT', 'Bhutan', 0, 0),
(26, 'BO', 'Bolivia', 0, 0),
(27, 'BA', 'Bosnia and Herzegovina', 0, 0),
(28, 'BW', 'Botswana', 0, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 0, 0),
(31, 'IO', 'British Indian Ocean Territory', 0, 0),
(32, 'BN', 'Brunei Darussalam', 0, 0),
(33, 'BG', 'Bulgaria', 0, 0),
(34, 'BF', 'Burkina Faso', 0, 0),
(35, 'BI', 'Burundi', 0, 0),
(36, 'KH', 'Cambodia', 0, 0),
(37, 'CM', 'Cameroon', 0, 0),
(38, 'CA', 'Canada', 0, 0),
(39, 'CV', 'Cape Verde', 0, 0),
(40, 'KY', 'Cayman Islands', 0, 0),
(41, 'CF', 'Central African Republic', 0, 0),
(42, 'TD', 'Chad', 0, 0),
(43, 'CL', 'Chile', 0, 0),
(44, 'CN', 'China', 0, 0),
(45, 'CX', 'Christmas Island', 0, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(47, 'CO', 'Colombia', 0, 0),
(48, 'KM', 'Comoros', 0, 0),
(49, 'CD', 'Democratic Republic of the Congo', 0, 0),
(50, 'CG', 'Republic of Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GK', 'Guernsey', 0, 0),
(85, 'GR', 'Greece', 0, 0),
(86, 'GL', 'Greenland', 0, 0),
(87, 'GD', 'Grenada', 0, 0),
(88, 'GP', 'Guadeloupe', 0, 0),
(89, 'GU', 'Guam', 0, 0),
(90, 'GT', 'Guatemala', 0, 0),
(91, 'GN', 'Guinea', 0, 0),
(92, 'GW', 'Guinea-Bissau', 0, 0),
(93, 'GY', 'Guyana', 0, 0),
(94, 'HT', 'Haiti', 0, 0),
(95, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(96, 'HN', 'Honduras', 0, 0),
(97, 'HK', 'Hong Kong', 0, 0),
(98, 'HU', 'Hungary', 0, 0),
(99, 'IS', 'Iceland', 0, 0),
(100, 'IN', 'India', 0, 0),
(101, 'IM', 'Isle of Man', 0, 0),
(102, 'ID', 'Indonesia', 0, 0),
(103, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(104, 'IQ', 'Iraq', 0, 0),
(105, 'IE', 'Ireland', 0, 0),
(106, 'IL', 'Israel', 0, 0),
(107, 'IT', 'Italy', 0, 0),
(108, 'CI', 'Ivory Coast', 0, 0),
(109, 'JE', 'Jersey', 0, 0),
(110, 'JM', 'Jamaica', 0, 0),
(111, 'JP', 'Japan', 0, 0),
(112, 'JO', 'Jordan', 0, 0),
(113, 'KZ', 'Kazakhstan', 0, 0),
(114, 'KE', 'Kenya', 0, 0),
(115, 'KI', 'Kiribati', 0, 0),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(117, 'KR', 'Korea, Republic of', 0, 0),
(118, 'XK', 'Kosovo', 0, 0),
(119, 'KW', 'Kuwait', 0, 0),
(120, 'KG', 'Kyrgyzstan', 0, 0),
(121, 'LA', 'Lao People\'s Democratic Republic', 0, 0),
(122, 'LV', 'Latvia', 0, 0),
(123, 'LB', 'Lebanon', 0, 0),
(124, 'LS', 'Lesotho', 0, 0),
(125, 'LR', 'Liberia', 0, 0),
(126, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(127, 'LI', 'Liechtenstein', 0, 0),
(128, 'LT', 'Lithuania', 0, 0),
(129, 'LU', 'Luxembourg', 0, 0),
(130, 'MO', 'Macau', 0, 0),
(131, 'MK', 'North Macedonia', 0, 0),
(132, 'MG', 'Madagascar', 0, 0),
(133, 'MW', 'Malawi', 0, 0),
(134, 'MY', 'Malaysia', 0, 0),
(135, 'MV', 'Maldives', 0, 0),
(136, 'ML', 'Mali', 0, 0),
(137, 'MT', 'Malta', 0, 0),
(138, 'MH', 'Marshall Islands', 0, 0),
(139, 'MQ', 'Martinique', 0, 0),
(140, 'MR', 'Mauritania', 0, 0),
(141, 'MU', 'Mauritius', 0, 0),
(142, 'TY', 'Mayotte', 0, 0),
(143, 'MX', 'Mexico', 0, 0),
(144, 'FM', 'Micronesia, Federated States of', 0, 0),
(145, 'MD', 'Moldova, Republic of', 0, 0),
(146, 'MC', 'Monaco', 0, 0),
(147, 'MN', 'Mongolia', 0, 0),
(148, 'ME', 'Montenegro', 0, 0),
(149, 'MS', 'Montserrat', 0, 0),
(150, 'MA', 'Morocco', 0, 0),
(151, 'MZ', 'Mozambique', 0, 0),
(152, 'MM', 'Myanmar', 0, 0),
(153, 'NA', 'Namibia', 0, 0),
(154, 'NR', 'Nauru', 0, 0),
(155, 'NP', 'Nepal', 0, 0),
(156, 'NL', 'Netherlands', 0, 0),
(157, 'AN', 'Netherlands Antilles', 0, 0),
(158, 'NC', 'New Caledonia', 0, 0),
(159, 'NZ', 'New Zealand', 0, 0),
(160, 'NI', 'Nicaragua', 0, 0),
(161, 'NE', 'Niger', 0, 0),
(162, 'NG', 'Nigeria', 0, 0),
(163, 'NU', 'Niue', 0, 0),
(164, 'NF', 'Norfolk Island', 0, 0),
(165, 'MP', 'Northern Mariana Islands', 0, 0),
(166, 'NO', 'Norway', 0, 0),
(167, 'OM', 'Oman', 0, 0),
(168, 'PK', 'Pakistan', 0, 1),
(169, 'PW', 'Palau', 0, 0),
(170, 'PS', 'Palestine', 0, 0),
(171, 'PA', 'Panama', 0, 0),
(172, 'PG', 'Papua New Guinea', 0, 0),
(173, 'PY', 'Paraguay', 0, 0),
(174, 'PE', 'Peru', 0, 0),
(175, 'PH', 'Philippines', 0, 0),
(176, 'PN', 'Pitcairn', 0, 0),
(177, 'PL', 'Poland', 0, 0),
(178, 'PT', 'Portugal', 0, 0),
(179, 'PR', 'Puerto Rico', 0, 0),
(180, 'QA', 'Qatar', 0, 0),
(181, 'RE', 'Reunion', 0, 0),
(182, 'RO', 'Romania', 0, 0),
(183, 'RU', 'Russian Federation', 0, 0),
(184, 'RW', 'Rwanda', 0, 0),
(185, 'KN', 'Saint Kitts and Nevis', 0, 0),
(186, 'LC', 'Saint Lucia', 0, 0),
(187, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(188, 'WS', 'Samoa', 0, 0),
(189, 'SM', 'San Marino', 0, 0),
(190, 'ST', 'Sao Tome and Principe', 0, 0),
(191, 'SA', 'Saudi Arabia', 0, 1),
(192, 'SN', 'Senegal', 0, 0),
(193, 'RS', 'Serbia', 0, 0),
(194, 'SC', 'Seychelles', 0, 0),
(195, 'SL', 'Sierra Leone', 0, 0),
(196, 'SG', 'Singapore', 0, 0),
(197, 'SK', 'Slovakia', 0, 0),
(198, 'SI', 'Slovenia', 0, 0),
(199, 'SB', 'Solomon Islands', 0, 0),
(200, 'SO', 'Somalia', 0, 0),
(201, 'ZA', 'South Africa', 0, 0),
(202, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(203, 'SS', 'South Sudan', 0, 0),
(204, 'ES', 'Spain', 0, 0),
(205, 'LK', 'Sri Lanka', 0, 0),
(206, 'SH', 'St. Helena', 0, 0),
(207, 'PM', 'St. Pierre and Miquelon', 0, 0),
(208, 'SD', 'Sudan', 0, 0),
(209, 'SR', 'Suriname', 0, 0),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 0, 0),
(211, 'SZ', 'Swaziland', 0, 0),
(212, 'SE', 'Sweden', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'SY', 'Syrian Arab Republic', 0, 0),
(215, 'TW', 'Taiwan', 0, 0),
(216, 'TJ', 'Tajikistan', 0, 0),
(217, 'TZ', 'Tanzania, United Republic of', 0, 0),
(218, 'TH', 'Thailand', 0, 0),
(219, 'TG', 'Togo', 0, 0),
(220, 'TK', 'Tokelau', 0, 0),
(221, 'TO', 'Tonga', 0, 0),
(222, 'TT', 'Trinidad and Tobago', 0, 0),
(223, 'TN', 'Tunisia', 0, 0),
(224, 'TR', 'Turkey', 0, 0),
(225, 'TM', 'Turkmenistan', 0, 0),
(226, 'TC', 'Turks and Caicos Islands', 0, 0),
(227, 'TV', 'Tuvalu', 0, 0),
(228, 'UG', 'Uganda', 0, 0),
(229, 'UA', 'Ukraine', 0, 0),
(230, 'AE', 'United Arab Emirates', 0, 0),
(231, 'GB', 'United Kingdom', 0, 0),
(232, 'US', 'United States', 0, 0),
(233, 'UM', 'United States minor outlying islands', 0, 0),
(234, 'UY', 'Uruguay', 0, 0),
(235, 'UZ', 'Uzbekistan', 0, 0),
(236, 'VU', 'Vanuatu', 0, 0),
(237, 'VA', 'Vatican City State', 0, 1),
(238, 'VE', 'Venezuela', 0, 1),
(239, 'VN', 'Vietnam', 0, 1),
(240, 'VG', 'Virgin Islands (British)', 0, 1),
(241, 'VI', 'Virgin Islands (U.S.)', 0, 1),
(242, 'WF', 'Wallis and Futuna Islands', 0, 1),
(243, 'EH', 'Western Sahara', 0, 1),
(244, 'YE', 'Yemen', 0, 1),
(245, 'ZM', 'Zambia', 5, 1),
(246, 'ZW', 'Zimbabwe', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `child_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20', NULL, NULL, NULL, NULL),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26', NULL, NULL, NULL, NULL),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08', NULL, NULL, NULL, NULL),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28', NULL, NULL, NULL, NULL),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20', NULL, NULL, NULL, NULL),
(6, 'rererere', 1, 5, '665', 1, 1, '2019-05-21', '2022-05-26', 'category', 4, NULL, NULL),
(7, 'abcd', 1, 5, NULL, 0, 1, '2021-09-12', '2021-09-21', 'category', 4, NULL, NULL),
(8, 'Officia quae repudia', 0, 5, NULL, 0, 1, '1978-07-17', '1997-12-01', 'child_category', NULL, NULL, 9),
(10, 'hi', 0, 10, NULL, 1, 1, '2021-09-28', '2021-10-31', 'category', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 84.63, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `language_id`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>', 1),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(5, 'Six started far placing saw respect', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div></div>', 1),
(7, 'Duis eu molestie quam, sed rhoncus nibh', '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT 0,
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 1, 'Roboto', 'Roboto'),
(3, 0, 'Roboto Mono', 'Roboto+Mono'),
(4, 0, 'Libre Caslon Display', 'Libre+Caslon+Display'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(7, 0, 'Open Sans', 'Open+Sans');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(286, 390, '1632888182ob6239QAjpg'),
(287, 390, '1632888182GTFdHyh6jpg'),
(288, 390, '1632888182H8J0nn69jpg'),
(291, 399, '16328897066E3EP9MW.jpg'),
(292, 399, '1632889706D6sh7TYo.jpg'),
(293, 399, '1632889706jfi6fILv.jpg'),
(294, 399, '1632889706Ck44bfsX.jpg'),
(295, 398, '1632889762gcvJN8Z6.jpg'),
(296, 398, '1632889762fMhHuFME.jpg'),
(297, 398, '1632889762HbHd790p.jpg'),
(298, 397, '1632889799pvmOt2en.jpg'),
(299, 397, '1632889799hlCKos4q.jpg'),
(300, 397, '1632889799Ce6Uvi2y.jpg'),
(301, 396, '1632889871RLY4QzIW.jpg'),
(302, 396, '1632889871a0aiAGPM.jpg'),
(305, 402, '1632890449fiRxV1jajpg'),
(306, 402, '16328904496atpYSYrjpg'),
(307, 402, '1632890449c669rEshjpg'),
(308, 395, '1632891992mTmMbjN0.jpg'),
(309, 395, '1632891992KD9QUJlq.jpg'),
(310, 395, '1632891992vjSX28NT.jpg'),
(311, 394, '1632892057CzDkaItR.jpg'),
(312, 394, '1632892057J8OctVOH.jpg'),
(313, 394, '1632892057DzrHNOjQ.jpg'),
(314, 393, '1632892123ad7kXCaE.jpg'),
(315, 393, '1632892123uJT7kqJ7.jpg'),
(316, 393, '1632892123h1P57CAp.jpg'),
(317, 392, '1632892211i3xcR8Hf.jpg'),
(318, 392, '1632892211VbCtuNvg.jpg'),
(319, 392, '1632892211THwqhFMx.jpg'),
(320, 391, '1632892249GNnPoxWz.jpg'),
(321, 391, '1632892249bp6yvXry.jpg'),
(322, 391, '1632892249u7tCqPCk.jpg'),
(337, 412, '1632896633F6kJLdeZ.jpg'),
(338, 412, '1632896633yNkPv9uM.jpg'),
(339, 412, '1632896633pbsCc4Da.jpg'),
(340, 411, '1632896674mEJvOhHV.jpg'),
(341, 411, '1632896674D0QWmTSS.jpg'),
(342, 411, '1632896674dei7LfXG.jpg'),
(343, 410, '1632896732RiK2W5ac.jpg'),
(344, 410, '1632896732uTbXglgt.jpg'),
(345, 410, '1632896733uutMGRd9.jpg'),
(346, 409, '16328967783y11m63r.jpg'),
(347, 409, '1632896778UfPdRkge.jpg'),
(348, 409, '163289677830wqExlv.jpg'),
(349, 408, '1632896817io8qABiK.jpg'),
(350, 408, '1632896817mYQKaJmd.jpg'),
(351, 408, '1632896817JIOJx42V.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner_404` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_500` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_buy_now` tinyint(4) NOT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1,
  `verify_product` tinyint(1) NOT NULL DEFAULT 0,
  `page_count` int(11) NOT NULL DEFAULT 0,
  `flash_count` int(11) NOT NULL DEFAULT 0,
  `hot_count` int(11) NOT NULL DEFAULT 0,
  `new_count` int(11) NOT NULL DEFAULT 0,
  `sale_count` int(11) NOT NULL DEFAULT 0,
  `best_seller_count` int(11) NOT NULL DEFAULT 0,
  `popular_count` int(11) NOT NULL DEFAULT 0,
  `top_rated_count` int(11) NOT NULL DEFAULT 0,
  `big_save_count` int(11) NOT NULL DEFAULT 0,
  `trending_count` int(11) NOT NULL DEFAULT 0,
  `seller_product_count` int(11) NOT NULL DEFAULT 0,
  `wishlist_count` int(11) NOT NULL DEFAULT 0,
  `min_price` double NOT NULL DEFAULT 0,
  `max_price` double NOT NULL DEFAULT 0,
  `post_count` tinyint(1) NOT NULL DEFAULT 0,
  `product_page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wishlist_page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT 0,
  `is_debug` tinyint(1) NOT NULL DEFAULT 0,
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT 0,
  `product_affilate` tinyint(1) NOT NULL DEFAULT 0,
  `product_affilate_bonus` int(10) NOT NULL DEFAULT 0,
  `is_reward` int(11) NOT NULL DEFAULT 0,
  `reward_point` int(11) NOT NULL DEFAULT 0,
  `reward_dolar` int(11) NOT NULL DEFAULT 0,
  `physical` tinyint(4) NOT NULL DEFAULT 1,
  `digital` tinyint(4) NOT NULL DEFAULT 1,
  `license` tinyint(4) NOT NULL DEFAULT 1,
  `affilite` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `footer_color`, `copyright_color`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `invoice_logo`, `user_image`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `affilite`) VALUES
(1, '16339334300c3V75lGpng', '1571567283favicon.png', 'eCommerce Don', '#0d67d1', '1564224328loading3.gif', '1564224329loading3.gif', 0, '5bc2019c61d0b77092512d03', 1, 1, 0, 'junnun', 1, 1, 5, 5, 5, 'smtp', 'mail.junnun.royalscripts.com', '465', 'ssl', 'test@junnun.royalscripts.com', NULL, 'test@junnun.royalscripts.com', 'GeniusTest', 1, 1, 1, 1, 8, '15587771131554048228onepiece.jpeg', 5, 5, 1, 1, '#143250', '#02020c', 1, 0, 6, 1, '1566878455404.png', '1587792059error-500.png', 1, '1632552809statistics1.jpg', '16339334667bsyKrwUpng', '1567655174profile.jpg', 0, 1, '1633933457UeF7LuE6png', 1, 1, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '2.0', 1, 1, 12, 6, 12, 12, 12, 12, 4, 4, 4, 4, 3, 12, 0, 1000000, 6, NULL, '12,24,36,48,60', 1, 1, '.', ',', 1, 1, 5, 1, 15, 30, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605519199OsGO7B86.json', '1605519199OsGO7B86', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(101, 221, NULL, NULL, NULL, NULL, 0, '2021-09-28 16:09:13', '2021-09-28 16:09:13'),
(102, 222, NULL, NULL, NULL, NULL, 0, '2021-09-28 16:24:39', '2021-09-28 16:24:39'),
(103, 223, NULL, NULL, NULL, NULL, 0, '2021-09-28 16:27:11', '2021-09-28 16:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL,
  `tax_location` varchar(191) DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) NOT NULL DEFAULT 0,
  `affilate_users` text DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(220, NULL, '{\"totalQty\":1,\"totalPrice\":130,\"items\":{\"180A4techWired\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":130,\"item\":{\"id\":180,\"user_id\":\"0\",\"slug\":\"physical-product-title-title-will-be-here-99u-myy7236gfd1\",\"name\":\"Physical Product Title Title will Be Here 99u\",\"photo\":\"1632378157DnSnCiHu.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":130,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":\"{\\\"brand\\\":{\\\"values\\\":[\\\"A4tech\\\",\\\"Sony\\\",\\\"Asus\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\"],\\\"details_status\\\":1},\\\"connectivity\\\":{\\\"values\\\":[\\\"Wired\\\",\\\"Wireless\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\"],\\\"details_status\\\":1}}\",\"minimum_qty\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"brand,connectivity\",\"values\":\"A4tech,Wired\",\"item_price\":130,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Mollie Payment', 'shipto', 'Azampur', '1', 132.59550561798, 'tr_2NSVJBqNAj', NULL, 'ZtID1632641480', 'Completed', 'Zuzusenden@hhfdg.com', 'Para que', 'Zambia', '88888', 'Spenger strasse 1', 'Ennnhzt', '88776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-09-26 14:32:19', '2021-09-26 14:32:19', NULL, NULL, '€', 'EUR', 0.89, 0, 0, 2.05946, 'New Youk', 0, NULL, 0, 'Free Shipping', 'Default Packaging', '2', NULL, 0, NULL, 0),
(221, 33, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"389S13333dLocalsellerwarranty8GB2TBCorei5Processor\":{\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"S\",\"color\":\"13333d\",\"stock\":null,\"price\":200,\"item\":{\"id\":389,\"user_id\":\"0\",\"slug\":\"others-63h9248yu0\",\"name\":\"Others\",\"photo\":\"1632819418pp4ZFO88.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"5\"],\"whole_sell_discount\":[\"10\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\"],\\\"details_status\\\":1},\\\"ram\\\":{\\\"values\\\":[\\\"8 GB\\\"],\\\"prices\\\":[\\\"20\\\"],\\\"details_status\\\":1},\\\"storage\\\":{\\\"values\\\":[\\\"2 TB\\\",\\\"4 TB\\\"],\\\"prices\\\":[\\\"20\\\",\\\"30\\\"],\\\"details_status\\\":1},\\\"processor_type\\\":{\\\"values\\\":[\\\"Core i5 Processor\\\",\\\"Core i7 Processor\\\"],\\\"prices\\\":[\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1}}\",\"minimum_qty\":\"2\",\"stock_check\":\"0\",\"size_all\":\"S,M,XL\",\"color_all\":\"#13333d,#d42828,#189199\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,ram,storage,processor_type\",\"values\":\"Local seller warranty,8 GB,2 TB,Core i5 Processor\",\"item_price\":100,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Stripe', 'shipto', 'Azampur', '2', 200, 'txn_3JecJIJlIV5dN9n71oFjzvpy', 'ch_3JecJIJlIV5dN9n714C935n3', 'R0eb1632820151', 'Completed', 'farhadwts@gmail.com', 'Farhad', 'Vietnam', '01779002301', 'Uttara', 'Dhaka', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-09-28 16:09:13', '2021-09-28 16:09:13', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Vietnam', 0, NULL, 0, 'Free Shipping', 'Default Packaging', 'dhakaa', NULL, 0, NULL, 0),
(222, 33, '{\"totalQty\":2,\"totalPrice\":250,\"items\":{\"389internationalmanufacturerwarranty8GB4TBCorei7Processor\":{\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":250,\"item\":{\"id\":389,\"user_id\":\"0\",\"slug\":\"others-63h9248yu0\",\"name\":\"Others\",\"photo\":\"1632819418pp4ZFO88.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":125,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"5\"],\"whole_sell_discount\":[\"10\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\"],\\\"details_status\\\":1},\\\"ram\\\":{\\\"values\\\":[\\\"4 GB\\\",\\\"8 GB\\\"],\\\"prices\\\":[\\\"15\\\",\\\"20\\\"],\\\"details_status\\\":1},\\\"storage\\\":{\\\"values\\\":[\\\"2 TB\\\",\\\"4 TB\\\"],\\\"prices\\\":[\\\"20\\\",\\\"30\\\"],\\\"details_status\\\":1},\\\"processor_type\\\":{\\\"values\\\":[\\\"Core i5 Processor\\\",\\\"Core i7 Processor\\\"],\\\"prices\\\":[\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1}}\",\"minimum_qty\":\"2\",\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,ram,storage,processor_type\",\"values\":\"international manufacturer warranty,8 GB,4 TB,Core i7 Processor\",\"item_price\":125,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Stripe', 'shipto', 'Azampur', '2', 225, 'txn_3JecYEJlIV5dN9n70mmnTxL0', 'ch_3JecYEJlIV5dN9n70a73ZBkZ', 'P8mt1632821077', 'Completed', 'farhadwts@gmail.com', 'Farhad', 'Saudi Arabia', '01779002301', 'Uttara', 'Dhaka', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hi', '25', 'pending', '2021-09-28 16:24:39', '2021-09-28 16:24:39', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Saudi Arabia', 0, NULL, 0, 'Free Shipping', 'Default Packaging', 'dhakaa', NULL, 0, NULL, 0),
(223, 33, '{\"totalQty\":5,\"totalPrice\":450,\"items\":{\"389Localsellerwarranty8GB2TBCorei5Processor\":{\"qty\":5,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":450,\"item\":{\"id\":389,\"user_id\":\"0\",\"slug\":\"others-63h9248yu0\",\"name\":\"Others\",\"photo\":\"1632819418pp4ZFO88.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":90,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"5\"],\"whole_sell_discount\":[\"10\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\"],\\\"details_status\\\":1},\\\"ram\\\":{\\\"values\\\":[\\\"4 GB\\\",\\\"8 GB\\\"],\\\"prices\\\":[\\\"15\\\",\\\"20\\\"],\\\"details_status\\\":1},\\\"storage\\\":{\\\"values\\\":[\\\"2 TB\\\",\\\"4 TB\\\"],\\\"prices\\\":[\\\"20\\\",\\\"30\\\"],\\\"details_status\\\":1},\\\"processor_type\\\":{\\\"values\\\":[\\\"Core i5 Processor\\\",\\\"Core i7 Processor\\\"],\\\"prices\\\":[\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1}}\",\"minimum_qty\":\"2\",\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,ram,storage,processor_type\",\"values\":\"Local seller warranty,8 GB,2 TB,Core i5 Processor\",\"item_price\":100,\"discount\":\"10\",\"affilate_user\":\"0\"}}}', 'Stripe', 'shipto', 'Azampur', '5', 475, 'txn_3JecagJlIV5dN9n70W20ogfi', 'ch_3JecagJlIV5dN9n70aerHvIj', 'MR4F1632821229', 'Completed', 'farhadwts@gmail.com', 'Farhad', 'Saudi Arabia', '01779002301', 'Uttara', 'Dhaka', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hi', NULL, 'pending', '2021-09-28 16:27:11', '2021-09-28 16:27:11', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Saudi Arabia', 0, NULL, 0, 'Express Shipping', 'Gift Packaging', 'dhakaa', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(270, 220, 'Pending', 'You have successfully placed your order.', '2021-09-26 14:32:19', '2021-09-26 14:32:19'),
(271, 221, 'Pending', 'You have successfully placed your order.', '2021-09-28 16:09:13', '2021-09-28 16:09:13'),
(272, 222, 'Pending', 'You have successfully placed your order.', '2021-09-28 16:24:39', '2021-09-28 16:24:39'),
(273, 223, 'Pending', 'You have successfully placed your order.', '2021-09-28 16:27:11', '2021-09-28 16:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0, 1),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`, `language_id`) VALUES
(1, 'About Us', 'about', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.</p>', NULL, NULL, 1, 0, 1),
(2, 'Privacy & Policy', 'privacy', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.</p>', 'test,test1,test2,test3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.\r\n\r\nDonec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.\r\n\r\nVestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.\r\n\r\nVivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.', 1, 1, 1),
(3, 'Terms & Condition', 'terms', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.</p>', 't1,t2,t3,t4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra enim libero, in hendrerit velit ullamcorper suscipit. Nam interdum sed ligula nec tempus. Cras felis mauris, tempus id nisl eu, tempus rhoncus ex. Duis ut tortor arcu. Integer arcu enim, malesuada vitae vulputate a, luctus vel leo. Vestibulum nec elit at lectus porttitor interdum vitae vel lacus. Nam volutpat imperdiet orci. Sed dapibus lorem erat, quis faucibus magna blandit vel. Morbi imperdiet, nisi nec ultrices dapibus, mi risus pellentesque lorem, sed fringilla justo justo ut arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante neque, aliquam eu neque et, aliquam tristique odio.\r\n\r\nDonec facilisis tempus tellus id suscipit. Proin nisi tellus, congue sed lorem nec, consequat consectetur magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin lobortis leo sed tristique volutpat. Donec sed sollicitudin quam. Nunc a felis porttitor elit malesuada iaculis. Proin sagittis vestibulum mi. Curabitur faucibus sapien metus, condimentum pharetra erat lobortis vel. Donec vel lectus tellus. Vivamus sit amet nunc vitae ex commodo placerat.\r\n\r\nVestibulum convallis molestie lacinia. Fusce egestas viverra sagittis. Fusce consequat velit id pulvinar volutpat. Pellentesque viverra sagittis mauris, in blandit ex consequat vel. In a diam at dolor auctor posuere eget sed justo. Sed ac lacus blandit, viverra augue vel, consectetur elit. Integer quis mattis nibh. Fusce sed mauris vel sem aliquet venenatis in at massa. Vestibulum sollicitudin nunc sit amet diam hendrerit semper quis vitae leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nProin pulvinar velit non semper gravida. Aliquam erat volutpat. Vestibulum placerat vestibulum mi ac posuere. Cras tempus imperdiet eleifend. Nunc maximus purus est, at imperdiet mi faucibus at. Mauris convallis congue cursus. Etiam interdum odio erat, id auctor sem laoreet et.\r\n\r\nVivamus tempus enim ut auctor pulvinar. Vestibulum facilisis arcu ac mi dapibus condimentum. Donec quis purus in nisl aliquam lacinia. Cras vitae velit non ipsum pellentesque rutrum. Morbi fringilla, sapien in varius fringilla, leo quam porttitor mauris, et rutrum nunc ante in enim. Mauris at turpis tortor. Phasellus nec sapien neque. Maecenas id purus ut ipsum feugiat auctor at sit amet purus. Sed posuere nulla eros, vel feugiat orci auctor id. Nullam hendrerit efficitur felis, ac interdum ipsum vehicula sit amet. Praesent blandit magna dolor, vitae molestie ligula blandit a.', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rightbanner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rightbanner2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rightbannerlink1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rightbannerlink2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home` tinyint(1) NOT NULL DEFAULT 0,
  `blog` tinyint(1) NOT NULL DEFAULT 0,
  `faq` tinyint(1) NOT NULL DEFAULT 0,
  `contact` tinyint(1) NOT NULL DEFAULT 0,
  `category` tinyint(1) NOT NULL DEFAULT 0,
  `first_left_banner` tinyint(1) NOT NULL DEFAULT 1,
  `our_services` tinyint(1) NOT NULL DEFAULT 1,
  `second_left_banner` tinyint(1) NOT NULL DEFAULT 1,
  `popular_products` tinyint(1) NOT NULL DEFAULT 1,
  `third_left_banner` tinyint(1) NOT NULL DEFAULT 1,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 1,
  `deal_of_the_day` tinyint(1) NOT NULL DEFAULT 1,
  `best_sellers` tinyint(1) NOT NULL DEFAULT 1,
  `big_banner` tinyint(1) NOT NULL DEFAULT 1,
  `top_big_trending` tinyint(1) NOT NULL DEFAULT 0,
  `top_brand` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `first_left_banner`, `our_services`, `second_left_banner`, `popular_products`, `third_left_banner`, `slider`, `flash_deal`, `deal_of_the_day`, `best_sellers`, `big_banner`, `top_big_trending`, `top_brand`) VALUES
(1, 'admin@geniusocean.com', '3584 Hickory Heights Drive , USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', '1632893755q6nrrVsDjpg', 'https://royalscripts.com/product/eCommerceDon/fashion', '1632893906S9SXsL8Jjpg', 'https://royalscripts.com/product/eCommerceDon/fashion', '1632893755ykR5bfGRjpg', 'https://royalscripts.com/product/eCommerceDon/fashion', '1573022053aside-banner1.jpg', 'http://google.com', '16328930845HLP8yBtjpg', '1632893084W4KM7Fnmjpg', 'https://royalscripts.com/product/eCommerceDon/fashion', 'https://royalscripts.com/product/eCommerceDon/fashion', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(8, '1571289601p2.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, '1571289608p3.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, '1571289614p4.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(11, '1571289621p5.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(12, '1571289627p6.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(13, '1571289634p7.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(14, '1571289642p8.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(19, '1571289675p13.jpg', 'https://dev.geniusocean.net/royelcart-single/category/Laptop-and-Computer'),
(21, '16325676421571289608p3.jpg', 'https://royalscripts.com/product/eCommerceDon/admin/partner');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `deposit` int(191) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '0', 1, 0, 0),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', NULL, 'manual', NULL, NULL, '0', 1, 1, 1),
(3, NULL, NULL, NULL, 'Voguepay', 'automatic', '{\"merchant_id\":\"demo\",\"developer_code\":\"5a61be72ab323\",\"text\":\"Pay Via Voguepay.\"}', 'voguepay', '0', 0, 0, 0),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 1, 1, 1),
(5, NULL, NULL, NULL, '2Checkout', 'automatic', '{\"seller_id\":\"901421469\",\"public_key\":\"5E341975-7CAF-400C-8371-0E7711B1EF9F\",\"private_key\":\"BC2641D4-CE62-43D8-B2F7-861AC6BF1AC4\",\"sandbox_check\":1,\"text\":\"Pay Via 2Checkout.\"}', '2checkout', '[\"1\"]', 0, 0, 0),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X\",\"secret_key\":\"FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\",\"9\"]', 0, 0, 0),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 1, 1, 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 1, 1, 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 1, 1, 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 1, 1, 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 1, 1, 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 1, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1, 1, 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`, `language_id`) VALUES
(2, 'Azampur', 1),
(3, 'Dhaka', 1),
(4, 'Kazipara', 1),
(5, 'Kamarpara', 1),
(6, 'Uttara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `color_all` text DEFAULT NULL,
  `size_all` text DEFAULT NULL,
  `stock_check` int(11) DEFAULT 1,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `language_id` int(191) DEFAULT NULL,
  `preordered` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `color_all`, `size_all`, `stock_check`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`) VALUES
(390, 'AYV7732yEz', 'normal', NULL, 0, 47, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732yez', '1632888180FsFF3sKG.png', '1632888182fnsnxTns.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 49, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 0, 1, '2021-09-29 11:03:00', '2021-09-29 13:37:53', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(391, 'AYV7732y4', 'normal', NULL, 0, 45, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732y4', '1632892241rsjD9VEs.png', '1632892241ngh4agTF.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 4, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:35:31', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(392, 'AYV7732yE11', 'normal', NULL, 0, 48, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732ye11', '1632892168U7gmwnWN.png', '1632892168gLdcLhn5.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 2, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:35:17', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(393, 'AYV7732y8', 'normal', NULL, 0, 48, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732yez', '1632892117ooSSg6Zp.png', '1632892117boFU9xFx.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 1, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:35:08', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(394, 'AYV7732yE9', 'normal', NULL, 0, 48, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732ye9', '1632892044uVMvkG3x.png', '1632892044bznT5prJ.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 2, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:34:55', 1, '2021-12-29', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `color_all`, `size_all`, `stock_check`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`) VALUES
(395, 'AYV7732y6', 'normal', NULL, 0, 41, 52, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732y6', '1632891987KED1rNmZ.png', '16328919882Vq3u5K7.jpg', NULL, NULL, NULL, NULL, NULL, 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 3, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 1, 0, '2021-09-29 11:03:00', '2021-09-29 13:37:34', 1, '2021-12-30', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(396, 'AYV7732yE2', 'normal', NULL, 0, 42, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732ye2', '1632889848gh09HDRb.png', '16328898484ASCrRVa.jpg', NULL, NULL, NULL, NULL, NULL, 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 3, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 0, 1, '2021-09-29 11:03:00', '2021-09-29 13:36:51', 1, '2021-12-29', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(397, 'AYV7732yE1', 'normal', NULL, 0, 41, 52, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732yez', '1632889783b7lH0uOU.png', '1632889783wrFVTBGK.jpg', NULL, NULL, NULL, NULL, NULL, 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 1, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 0, '2021-09-29 11:03:00', '2021-09-29 13:29:30', 1, '2021-12-22', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(398, 'AYV7732yEz5', 'normal', NULL, 0, 41, 52, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732yez', '1632889733vEaAsdHy.png', '1632889734rApBJ4IX.jpg', NULL, NULL, NULL, NULL, NULL, 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 1, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 0, 1, '2021-09-29 11:03:00', '2021-09-29 13:33:48', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(399, 'pr614jsv1-aaaa', 'normal', NULL, 0, 41, 51, NULL, NULL, 'Test Physical Product Title Will be here one1', 'test-physical-product-title-will-be-here-one-ayv7732ye', '1632889679YpkCZ2yt.png', '16328896799mJxZQ3a.jpg', NULL, NULL, NULL, NULL, NULL, 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', NULL, 0, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 11, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:38:52', 1, '2021-12-29', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `color_all`, `size_all`, `stock_check`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`) VALUES
(402, 'DTr0231q9q', 'affiliate', 'https://royalscripts.com/product/eCommerceDon/fashion', 0, 48, NULL, NULL, NULL, 'Test Affiliate Product Title Will be here one', 'test-affiliate-product-title-will-be-here-one-dtr0231q9q', '1632891323EgDJa5oE.png', '1632891328zx9WSZYM.jpg', NULL, 'S,M,M', '100,100,100', '5,5,5', '#000000,#c5b7b7,#000000', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#000000,#d01212,#c5b7b7,#8c9f5d,#b36245', 'S,M,L,XL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 10, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-09-29 11:40:49', '2021-09-29 12:55:57', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(407, 'DTr0231q9q', 'affiliate', 'https://royalscripts.com/product/eCommerceDon/fashion', 0, 48, NULL, NULL, NULL, 'Test Affiliate Product Title Will be here one', 'test-affiliate-product-title-will-be-here-one-dtr0231q9q', '', NULL, NULL, 'S,M,M', '100,100,100', '5,5,5', '#000000,#c5b7b7,#000000', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#000000,#d01212,#c5b7b7,#8c9f5d,#b36245', 'S,M,L,XL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 8, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-09-29 11:40:49', '2021-09-29 11:55:35', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL),
(408, 'AYV7732yErwz', 'normal', NULL, 0, 39, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv7732yerwz', '1632896810IhIHaqpk.png', '1632896811Uh6z0W6r.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 47, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 0, 1, '2021-09-29 11:03:00', '2021-09-29 13:37:19', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(409, 'AYV773sf2y4', 'normal', NULL, 0, 45, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv773sf2y4', '16328967675TeJbeZa.png', '1632896767oX1PVebG.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 5, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 1, 0, '2021-09-29 11:03:00', '2021-09-29 13:37:04', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(410, 'AYV9832yE11', 'normal', NULL, 0, 45, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv9832ye11', '16328967247EXjsTkR.png', '1632896724pW9bCaht.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 2, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:32:50', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `color_all`, `size_all`, `stock_check`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`) VALUES
(411, 'AYV73gf2y8', 'normal', NULL, 0, 47, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayv73gf2y8', '1632896669zsUdnSos.png', '16328966699Ue4Laz4.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 2, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 0, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:38:46', 1, '2021-12-30', '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL),
(412, 'AYVsdv7732yE9', 'normal', NULL, 0, 45, NULL, NULL, NULL, 'Test Physical Product Title Will be here one', 'test-physical-product-title-will-be-here-one-ayvsdv7732ye9', '1632896625SMeevR2E.png', '1632896627okggKS7f.jpg', NULL, 'S,S,S,S,M,M,M,L,L,XL,XL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100', '5,5,5,5,10,10,10,15,15,20,20,10,10', '#c52d2d,#385ae4,#4b3333,#27800b,#c52d2d,#385ae4,#4b3333,#27800b,#4b3333,#27800b,#4b3333,#c52d2d,#4b3333', 200, 179.9, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', NULL, '#c52d2d,#385ae4,#4b3333,#27800b', 'M,L,XL,XXL', 1, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at mauris metus. Ut massa nulla, bibendum semper elit a, tincidunt volutpat mi. Duis tempor bibendum ex, quis pharetra purus varius vel. Nullam rutrum ullamcorper hendrerit. Duis sem velit, commodo ut metus sit amet, tincidunt feugiat nunc. Donec non venenatis ante. Nam quis augue convallis, sollicitudin massa id, faucibus purus. Donec posuere gravida massa ut posuere. Aenean volutpat consequat consequat. Morbi suscipit mollis dolor at placerat. Nulla facilisi. Duis vulputate tincidunt metus eget interdum. Nullam imperdiet ligula ac urna molestie rutrum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum porttitor tellus turpis, vitae consequat nunc tristique quis. Aenean tincidunt metus at nibh vestibulum interdum. Mauris quis rhoncus arcu. In sollicitudin accumsan ipsum. Morbi auctor nunc in risus rutrum viverra interdum eu erat. Nulla fringilla fermentum placerat. Donec quam nisl, efficitur non consectetur volutpat, pulvinar et mi. Donec quam diam, rhoncus et hendrerit et, sollicitudin in lacus. Quisque sit amet metus in urna pulvinar pulvinar. Nulla ullamcorper nibh eu dui semper cursus. Praesent sit amet pretium turpis. Phasellus faucibus aliquet purus sit amet interdum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean id maximus felis. Integer lobortis nisl eget pellentesque pretium. Donec quis ex sed lorem tempus rhoncus. Donec sed turpis ut ligula malesuada ultrices quis tempus tellus. Praesent hendrerit bibendum sem vel congue. Nam condimentum ipsum sit amet arcu sollicitudin, eu luctus erat euismod. Pellentesque facilisis, erat imperdiet sollicitudin faucibus, mauris ipsum feugiat quam, eu ultrices nisi lorem sed sem. Integer tincidunt odio ac risus dictum, sed posuere lacus consectetur. Vestibulum et purus ac massa laoreet lobortis. Aenean nulla enim, mattis a tortor sit amet, dignissim sollicitudin nulla.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce cursus enim justo, ut interdum lacus luctus eget. Proin tempor mauris purus, et ultricies lectus molestie fringilla. Praesent ornare fermentum leo id tristique. Proin ultricies egestas dolor, ut interdum est viverra sed. Sed id ex sed ligula ultricies elementum. Sed consectetur elementum velit, in convallis felis condimentum sit amet. Vivamus vitae orci nibh. Nulla dictum sapien sit amet neque elementum tincidunt. Quisque nunc mi, semper nec ornare id, sagittis ac lacus. Sed ut dui vel mauris luctus tristique. Fusce vel est a sem semper mattis a ut ex. Nulla facilisi. Suspendisse eu erat vulputate, facilisis tellus et, ornare diam. Aliquam erat volutpat. Aliquam at rutrum libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Proin tempus, est ut aliquam facilisis, risus sem luctus leo, eu dapibus sapien nisi non metus. Proin odio libero, feugiat et sem a, sollicitudin ultrices arcu. Cras rhoncus pellentesque hendrerit. Suspendisse tortor turpis, pretium euismod imperdiet eget, suscipit non arcu. Proin volutpat lacinia nisi, ac rutrum augue pretium sed. Sed sollicitudin, felis vitae varius hendrerit, turpis nisl imperdiet mauris, et volutpat lectus dui commodo ipsum. Donec ac laoreet elit. Proin aliquet dictum purus euismod bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis suscipit dui quis luctus. Pellentesque id ipsum in velit tristique ultrices in vel lorem. Mauris consequat varius leo sed imperdiet. Morbi elementum in dui iaculis laoreet. Sed luctus blandit faucibus. Integer ac bibendum nulla. Pellentesque eu enim et massa sagittis tristique.</p>', 1, 4, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 1, '2021-09-29 11:03:00', '2021-09-29 13:36:57', 0, NULL, '5,10,15,20,25', '5,10,15,20,30', 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(2479, 390, '2021-09-29'),
(2480, 390, '2021-09-29'),
(2481, 390, '2021-09-29'),
(2482, 390, '2021-09-29'),
(2484, 402, '2021-09-29'),
(2486, 390, '2021-09-29'),
(2487, 402, '2021-09-29'),
(2488, 402, '2021-09-29'),
(2489, 402, '2021-09-29'),
(2490, 402, '2021-09-29'),
(2491, 402, '2021-09-29'),
(2492, 402, '2021-09-29'),
(2493, 402, '2021-09-29'),
(2495, 390, '2021-09-29'),
(2496, 390, '2021-09-29'),
(2497, 390, '2021-09-29'),
(2499, 390, '2021-09-29'),
(2500, 390, '2021-09-29'),
(2501, 390, '2021-09-29'),
(2502, 390, '2021-09-29'),
(2503, 390, '2021-09-29'),
(2504, 390, '2021-09-29'),
(2505, 390, '2021-09-29'),
(2507, 390, '2021-09-29'),
(2508, 390, '2021-09-29'),
(2509, 390, '2021-09-29'),
(2511, 390, '2021-09-29'),
(2512, 390, '2021-09-29'),
(2513, 390, '2021-09-29'),
(2514, 390, '2021-09-29'),
(2515, 390, '2021-09-29'),
(2516, 390, '2021-09-29'),
(2517, 390, '2021-09-29'),
(2518, 390, '2021-09-29'),
(2519, 390, '2021-09-29'),
(2520, 390, '2021-09-29'),
(2521, 402, '2021-09-29'),
(2523, 402, '2021-09-29'),
(2524, 390, '2021-09-29'),
(2525, 390, '2021-09-29'),
(2526, 390, '2021-09-29'),
(2527, 390, '2021-09-29'),
(2528, 390, '2021-09-29'),
(2529, 390, '2021-09-29'),
(2530, 390, '2021-09-29'),
(2531, 390, '2021-09-29'),
(2534, 390, '2021-09-29'),
(2535, 390, '2021-09-29'),
(2536, 390, '2021-09-29'),
(2537, 390, '2021-09-29'),
(2538, 390, '2021-09-29'),
(2539, 390, '2021-09-29'),
(2540, 390, '2021-09-29'),
(2541, 399, '2021-09-29'),
(2542, 399, '2021-09-29'),
(2543, 399, '2021-09-29'),
(2544, 399, '2021-09-29'),
(2545, 399, '2021-09-29'),
(2547, 399, '2021-09-29'),
(2548, 399, '2021-09-29'),
(2549, 399, '2021-09-29'),
(2550, 395, '2021-09-29'),
(2551, 390, '2021-09-29'),
(2552, 390, '2021-09-29'),
(2553, 391, '2021-09-29'),
(2554, 390, '2021-09-29'),
(2555, 392, '2021-09-29'),
(2556, 394, '2021-09-29'),
(2564, 396, '2021-09-29'),
(2565, 391, '2021-09-29'),
(2566, 391, '2021-09-29'),
(2567, 412, '2021-09-29'),
(2568, 390, '2021-09-29'),
(2569, 396, '2021-09-29'),
(2570, 412, '2021-09-29'),
(2571, 409, '2021-09-29'),
(2572, 408, '2021-09-29'),
(2573, 399, '2021-09-29'),
(2574, 395, '2021-09-29'),
(2575, 390, '2021-09-29'),
(2576, 390, '2021-09-29'),
(2577, 411, '2021-09-29'),
(2578, 399, '2021-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `reward` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `order_amount`, `reward`) VALUES
(11, 200, 15),
(12, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,SeaGenius');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`, `language_id`) VALUES
(10, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019546si1.png', 1),
(11, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019563si1.png', 1),
(12, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019576si1.png', 1),
(13, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019589si1.png', 1),
(14, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019598si1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0, 1),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10, 1),
(4, 0, 'test', '2', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`, `language_id`) VALUES
(9, 'World Fashion', '24', '#232f3e', 'slideInUp', 'Get 40% Off', '60', '#232f3e', 'slideInDown', 'Highlight your personality  and look with these.', '16', '#232f3e', 'slideInDown', '1632892824QAB0jmhGjpg', 'slide-three', 'https://royalscripts.com/product/eCommerceDon/fashion', 1),
(10, 'World Fashion', '24', '#232f3e', 'slideInUp', 'Get  40% Off', '60', '#232f3e', 'slideInDown', 'Highlight your personality  and look with these.', '16', '#232f3e', 'slideInRight', '16328927295Fu0ypjgjpg', 'slide-one', 'https://royalscripts.com/product/eCommerceDon/fashion', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/royalcart/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/royalcart/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(2, 0, 'https://twitter.com/', 'fab fa-twitter', 1),
(3, 0, 'https://linkedin.com/', 'fab fa-linkedin-in', 1),
(4, 0, 'https://www.google.com/', 'fab fa-google-plus-g', 1),
(5, 0, 'https://dribbble.com/', 'fab fa-dribbble', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state` varchar(111) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `owner_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(1, 246, 'Virginia', 10, 1, 0),
(2, 245, 'New Youk', 2, 1, 0),
(4, 241, 'Dicta rerum cupidata', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`, `language_id`) VALUES
(51, 41, 'Backpacks', 'Backpacks', 1, 1),
(52, 41, 'Mini Bags', 'Mini-Bags', 1, 1),
(60, 39, 'Belt', 'Belt', 1, 1),
(61, 39, 'Sunglasses', 'Sunglasses', 1, 1),
(62, 39, 'Hats', 'Hats', 1, 1),
(63, 40, 'Hair Care', 'Hair-Care', 1, 1),
(64, 40, 'Makeup', 'Makeup', 1, 1),
(65, 40, 'Nails', 'Nails', 1, 1),
(66, 40, 'Skin Care', 'Skin-Care', 1, 1),
(67, 42, 'Boots', 'Boots', 1, 1),
(68, 42, 'Heels', 'Heels', 1, 1),
(69, 42, 'Sandals', 'Sandals', 1, 1),
(70, 41, 'Wallets', 'Wallets', 1, 1),
(71, 43, 'Neckless', 'Neckless', 1, 1),
(72, 43, 'Bracelets', 'Bracelets', 1, 1),
(73, 43, 'Rings', 'Rings', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(8, 'shaon@gmail.com'),
(9, 'test@gmail.com'),
(10, 'shaoneel@gmail.com'),
(11, 'mojibur@gmail.com'),
(12, 'tretr@ter.d'),
(13, 'shaons@gmail.com'),
(14, 'shaon@gmail.coms'),
(15, 'junnuns@gmail.com'),
(16, 'admin@gmail.com'),
(17, 'user7@gmail.com'),
(18, 'vendor@gmail.com'),
(19, 'ambarishdas1610@gmail.com'),
(20, 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `reward_point` double DEFAULT 0,
  `reward_dolar` double NOT NULL DEFAULT 0,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(71, 13, 0, 0, 's0174260rM', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', 'Payment Deposit', 'plus', '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(72, 13, 0, 0, 'qZg7485l5Z', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', 'Payment Deposit', 'plus', '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(73, 13, 0, 0, 'Evg9026jfN', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:17:06', '2020-11-08 23:17:06'),
(74, 13, 0, 0, 'ouI90992fw', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:18:19', '2020-11-08 23:18:19'),
(75, 13, 0, 0, 'CdS9733uNm', 100, 0x24, 'USD', 1, 'Mobile Money', '23423423432432', 'Payment Deposit', 'plus', '2020-11-08 23:28:53', '2020-11-08 23:28:53'),
(76, 22, 0, 0, 'BoT8052pwK', 500, 0x24, 'USD', 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', 'Payment Deposit', 'plus', '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(77, 22, 0, 0, 'gEu8363Jvw', 137.8, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 21:59:23', '2020-11-18 21:59:23'),
(78, 22, 0, 0, 'POb0758IGl', 362.2, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 22:39:18', '2020-11-18 22:39:18'),
(79, 22, 0, 0, 'NeT2693yEB', 1000, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-18 23:11:33', '2020-11-18 23:11:33'),
(80, 22, 0, 0, 'Z5k2860vix', 412, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 23:14:20', '2020-11-18 23:14:20'),
(81, 22, 0, 0, 'o4G6881KtE', 6.6879357201938, 0x24, 'USD', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-15 22:08:01', '2021-08-15 22:08:01'),
(82, 22, 0, 0, '1kl4166N9X', 20, 0x24, '1', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:09:26', '2021-08-18 02:09:26'),
(83, 22, 0, 0, 'be74667HIy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:17:47', '2021-08-18 02:17:47'),
(84, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:14:48', '2021-08-18 05:14:48'),
(85, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:15:24', '2021-08-18 05:15:24'),
(86, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:19:12', '2021-08-18 05:19:12'),
(87, 22, 0, 0, 'wXy43082Oc', 30, 0x24, 'USD', 1, 'Paypal', '73C78619CF978200E', 'Payment Deposit', 'plus', '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(88, 31, 0, 0, 'vbO7527HMB', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:18:47', '2021-09-10 23:18:47'),
(89, 22, 0, 0, 'Mtc7543oEI', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:19:03', '2021-09-10 23:19:03'),
(90, 22, 0, 0, 'b2d7569b7D', 100, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'minus', '2021-09-10 23:19:29', '2021-09-10 23:19:29'),
(91, 22, 0, 0, '2sw73324zy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:28:52', '2021-09-11 21:28:52'),
(92, 22, 0, 0, 'sCV7503GHU', 92, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:31:43', '2021-09-11 21:31:43'),
(93, 22, 0, 0, '8LG7462f8u', 600, 0x24, 'USD', 1, 'Stripe', 'txn_3JcNjVJlIV5dN9n71g0xX9Vl', 'Payment Deposit', 'plus', '2021-09-22 12:11:02', '2021-09-22 12:11:02'),
(94, 22, 250, 500, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-09-22 12:13:31', '2021-09-22 12:13:31'),
(95, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-09-22 12:13:59', '2021-09-22 12:13:59'),
(96, 32, 0, 0, '04c9309MUW', 400, 0x24, 'USD', 1, 'Paypal', '3VN32105P14127816', 'Payment Deposit', 'plus', '2021-09-22 12:41:49', '2021-09-22 12:41:49'),
(97, 32, 0, 0, 'Kx61571nps', 1, 0x24, 'USD', 1, NULL, NULL, 'Culpa ut reprehende', 'plus', '2021-09-22 13:19:31', '2021-09-22 13:19:31'),
(98, 22, 0, 0, 'GTA1978Sid', 400, 0x24, 'USD', 1, 'Paypal', '9VP06777YN723210M', 'Payment Deposit', 'plus', '2021-09-22 13:26:18', '2021-09-22 13:26:18'),
(99, 22, 0, 0, 'THX66358qE', 500, 0x24, 'USD', 1, 'Paypal', '1FM91412AJ355945N', 'Payment Deposit', 'plus', '2021-09-23 12:57:15', '2021-09-23 12:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `reward` double NOT NULL DEFAULT 0,
  `email_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `reward`, `email_token`) VALUES
(33, 'User', NULL, NULL, NULL, NULL, NULL, 'Baker Street', '12345678', NULL, 'user@gmail.com', '$2y$10$SwnWAm2c.bMzOKnaR6ntbOdnXnPj0aTGD7cr2OImaH2zbDjf3U68G', NULL, '2021-09-24 13:59:14', '2021-09-24 13:59:41', 0, 0, 'a4bed9bcac289ec487f46a2a6dc66da6', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(34, 'YASSINE', NULL, NULL, NULL, NULL, NULL, 'Amal 5 N° 412 CYM HEY EL FATH, Rabat 10100', '0611433042', NULL, 'm.mokrim1989@gmail.com', '$2y$10$S/43ShTsMpZp3vqz8eOIdehTgctRFVKmSYypkuK/UuIorQGTKONRW', NULL, '2021-09-24 20:04:52', '2021-09-24 20:04:52', 0, 0, '1594dc3545cd3249f99ce9839ec1d707', 'Yes', 'a8e7ce358343e07cf7c580b5fef54eff', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(35, 'Test', NULL, NULL, NULL, NULL, NULL, 'test 1', '1234123412341234', NULL, 'rqzbgxp794@6url.de', '$2y$10$FP36IqUcAZWvlNKLxuesJ.xqdnu1/0CzO7NsyG9pbFjUNflInq.D2', NULL, '2021-09-25 23:32:43', '2021-09-25 23:32:43', 0, 0, '0022b999ea772ed3d4e409b1a1f1735c', 'Yes', '9ea8b7aea44a88437f2485ffbc2c2b07', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(36, 'aouini issam', NULL, NULL, NULL, NULL, NULL, 'cite dafri fendjel b 16 n 04', '0660937951', NULL, 'issamonpc@gmail.com', '$2y$10$gxJYyRhkGln8eqkO21L1P.XHwa2JvlGmZhxv2/VOeWf43OJ3LCFK2', NULL, '2021-09-27 08:21:15', '2021-09-27 08:21:15', 0, 0, '0d82067fb20161c8e57bfb41e839606c', 'Yes', '0c300b6ac197c278598af2fed7574753', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2579;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
