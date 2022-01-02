-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2021 at 10:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2_p1_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1622657191),
('m130524_201442_init', 1622657194),
('m190124_110200_add_verification_token_column_to_user_table', 1622657194),
('m210603_055624_create_videos_table', 1622701236),
('m210606_095147_create_video_view_table', 1622973218),
('m210606_101528_create_video_like_table', 1622974579),
('m210606_151744_create_subscriber_table', 1622992687),
('m210607_000455_create_fulltext_index_on_video', 1623024479);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(6, 'hossein', 'Rveh0Tt17_nMulwaE1t9o-jN5luO-fX8', '$2y$13$0x010JG4NY/n8JJWRgOgfeQklwK.WYU1FH1DJZqJeIHxdPgzk/1Ma', NULL, 'abdollahzadeh.hossein@gmail.com', 10, 1627057994, 1627058743, '85zNOMk-t4-EXrlsfPx8hL7PILZBWjlc_1627057994'),
(7, 'test', 'O2KMrPV2YJgekPZGhP8-oWLfTua-wyoJ', '$2y$13$c2YX.J6lBdJLV9FsbvoF/eqlY.UMpPKmj8zpZvsRLuB/w5VJC0rkO', NULL, 'test@test.test', 10, 1627068310, 1627068372, 'UePDYKIMQ8mLQjqUGvo8Pj9sGV7QDeNc_1627068310');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` varchar(16) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(512) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `has_thumbnail` tinyint(1) DEFAULT NULL,
  `video_name` varchar(512) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `title`, `description`, `tags`, `status`, `has_thumbnail`, `video_name`, `created_at`, `updated_at`, `created_by`) VALUES
('bBQ1lLRD', '16-ControllerMap.mp4', 'Controller Map in yii2', 'controllermap,yii2', 1, 1, 'hq-seifzadeh-yii2-16.mp4', 1627068037, 1627068080, 6),
('cAORb1TK', '23-modules-yii2.mp4', 'modules in yii2', 'modules,yii2', 1, 1, 'hq-seifzadeh-yii2-23=modules.mp4', 1627069350, 1627069389, 7),
('CT9v68O7', '24-widgets-yii2.mp4', 'widgets in yii2', 'widgets,yii2', 1, 1, 'hq-seifzadeh-yii2-24=widgets.mp4', 1627069403, 1627069441, 7),
('hfiUPmQW', '15-catchAll-yii2.mp4', 'catchAll in yii2', 'catchAll,yii2', 1, 1, 'hq-seifzadeh-yii2-15.mp4', 1627067903, 1627067962, 6),
('Lvo_gCdt', 'aliases-yii2-14.mp4', 'aliases in yii2', 'aliases,yii2', 1, 1, 'hq-seifzadeh-yii2-14.mp4', 1627067679, 1627067725, 6),
('mQ396Dar', 'Base concepts Yii2.mp4', 'Base concepts Yii2\r\nMVC\r\nlearning yii2', 'yii2,mvc,basic concept', 1, 1, 'hq-seifzadeh-yii2-13.mp4', 1627060617, 1627067353, 6),
('onBX-vDS', '21-model-yii2.mp4', 'model in yii2', 'model,yii2', 1, 1, 'hq-seifzadeh-yii2-21=model.mp4', 1627069297, 1627069337, 7);

-- --------------------------------------------------------

--
-- Table structure for table `video_like`
--

CREATE TABLE `video_like` (
  `id` int(11) NOT NULL,
  `video_id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_like`
--

INSERT INTO `video_like` (`id`, `video_id`, `user_id`, `type`, `created_at`) VALUES
(23, 'mQ396Dar', 6, 1, 1627067399);

-- --------------------------------------------------------

--
-- Table structure for table `video_view`
--

CREATE TABLE `video_view` (
  `id` int(11) NOT NULL,
  `video_id` varchar(16) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_view`
--

INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES
(61, 'mQ396Dar', 6, 1627067380),
(62, 'mQ396Dar', 6, 1627067406),
(63, 'mQ396Dar', 6, 1627067409),
(64, 'mQ396Dar', 6, 1627067409),
(65, 'mQ396Dar', 6, 1627067409),
(66, 'mQ396Dar', 6, 1627067413),
(67, 'mQ396Dar', 6, 1627067413),
(68, 'mQ396Dar', 6, 1627067413),
(69, 'mQ396Dar', 6, 1627067427);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-subscriber-channel_id` (`channel_id`),
  ADD KEY `idx-subscriber-user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `idx-videos-created_by` (`created_by`);
ALTER TABLE `video` ADD FULLTEXT KEY `title` (`title`,`description`,`tags`);

--
-- Indexes for table `video_like`
--
ALTER TABLE `video_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-video_like-video_id` (`video_id`),
  ADD KEY `idx-video_like-user_id` (`user_id`);

--
-- Indexes for table `video_view`
--
ALTER TABLE `video_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-video_view-video_id` (`video_id`),
  ADD KEY `idx-video_view-user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video_like`
--
ALTER TABLE `video_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `video_view`
--
ALTER TABLE `video_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD CONSTRAINT `fk-subscriber-channel_id` FOREIGN KEY (`channel_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-subscriber-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk-videos-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_like`
--
ALTER TABLE `video_like`
  ADD CONSTRAINT `fk-video_like-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-video_like-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE;

--
-- Constraints for table `video_view`
--
ALTER TABLE `video_view`
  ADD CONSTRAINT `fk-video_view-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-video_view-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
