-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: mysql1.cs.clemson.edu
-- Generation Time: Nov 22, 2021 at 10:23 AM
-- Server version: 5.5.52-0ubuntu0.12.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metube_3m9k`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` tinytext NOT NULL,
  `creation_datetime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `video_id`, `user_id`, `content`, `creation_datetime`) VALUES
(1, 6, 15, 'this is cool', '2021-11-15'),
(2, 6, 12, 'i like it', '2021-11-17'),
(3, 6, 12, 'hahahahaha', '2021-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `username` varchar(20) NOT NULL,
  `mediaid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `type` varchar(20) NOT NULL,
  `playlist_id` int(10) NOT NULL,
  `path` varchar(255) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` tinytext NOT NULL,
  `comments` varchar(50) NOT NULL,
  `last_viewed_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_id_6` (`id`),
  KEY `media_id` (`id`),
  KEY `media_id_2` (`id`),
  KEY `media_id_3` (`id`),
  KEY `media_id_4` (`id`),
  KEY `media_id_5` (`id`),
  KEY `media_id_7` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `type`, `playlist_id`, `path`, `category`, `description`, `comments`, `last_viewed_datetime`, `user_id`) VALUES
(1, 'video_movie_1', '', 0, '', '', 'this is a movie video', '', '2021-11-19 04:11:45', 1),
(2, 'video_movie_2', '', 0, '', '', '', '', '0000-00-00 00:00:00', 2),
(3, 'video_movie_3', '', 0, '', '', '', '', '0000-00-00 00:00:00', 1),
(4, 'video_cartoon_1', '', 0, '', '', '', '', '2021-11-19 04:10:55', 1),
(5, 'video_cartoon_2', '', 0, '', '', '', '', '2021-11-15 22:47:53', 2),
(6, 'Child', 'video/mp4', 0, 'uploads/asa/1.+Hands+up+on+my+head.mp4', 'Comedy', 'Help ', '1', '2021-11-19 04:46:42', 15),
(7, 'Movie 101', 'video/quicktime', 0, 'uploads/ash/Media_DCIM_100APPLE_IMG_0337.MOV', 'Movies', 'This is a scary movie', '1', '2021-11-19 04:50:14', 16);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_send_id` int(10) NOT NULL,
  `user_receive_id` int(10) NOT NULL,
  `send_datetime` date NOT NULL,
  `read` tinyint(1) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1124274820 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_send_id`, `user_receive_id`, `send_datetime`, `read`, `title`, `content`) VALUES
(263613295, 17, 16, '2021-11-22', 0, 'RE: 2021-11-22', 'it is a good channel!!'),
(341294756, 16, 17, '2021-11-22', 1, 'Hi', 'Hey new user, check my channel out\r\n'),
(1124274819, 12, 15, '2021-11-15', 1, 'help', 'i neeed help');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `creation_datetime` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playlist_id` (`id`),
  KEY `playlist_id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `title`, `user_id`, `creation_datetime`) VALUES
(1, 'favorite', 1, '0000-00-00'),
(2, 'favorite2', 1, '0000-00-00'),
(3, 'favorite3', 1, '0000-00-00'),
(4, 'favorite4', 1, '0000-00-00'),
(5, 'favorite2', 2, '0000-00-00'),
(6, 'favorite2', 2, '0000-00-00'),
(7, 'favorite3', 2, '0000-00-00'),
(8, 'favorite5', 4, '0000-00-00'),
(9, 'favorite4', 3, '0000-00-00'),
(10, 'favorite6', 1, '0000-00-00'),
(11, 'favorite7', 1, '0000-00-00'),
(12, 'favorite11', 1, '0000-00-00'),
(13, 'favorite10', 1, '0000-00-00'),
(14, 'favorite9', 1, '0000-00-00'),
(15, 'favorite8', 1, '0000-00-00'),
(16, 'Favorites', 15, '2021-11-15'),
(17, 'Favorites', 16, '2021-11-15'),
(18, 'fun', 16, '2021-11-18'),
(19, 'Favorites', 17, '2021-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_entry`
--

CREATE TABLE IF NOT EXISTS `playlist_entry` (
  `video_id` int(10) NOT NULL,
  `playlist_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist_entry`
--

INSERT INTO `playlist_entry` (`video_id`, `playlist_id`) VALUES
(6, 0),
(7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `subscriber_id` int(10) NOT NULL,
  `subscribeie_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`subscriber_id`, `subscribeie_id`) VALUES
(16, 12),
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `channel_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `channel_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`channel_id`, `user_id`, `channel_name`) VALUES
(2, 1, 'wangjinrui'),
(3, 1, 'wang');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `video_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`, `video_id`) VALUES
(1, 'private', 6),
(2, 'Scary', 7),
(3, 'movie', 7),
(4, 'love', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` char(32) NOT NULL,
  `username` varchar(40) NOT NULL,
  `join_datetime` date NOT NULL,
  `profile_body` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`id`),
  UNIQUE KEY `user_name` (`username`),
  KEY `user_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `join_datetime`, `profile_body`) VALUES
(1, 'ddddddddd', 'Jinrui Wang', '0000-00-00', ''),
(2, '1234567', 'wangjinrui', '0000-00-00', ''),
(3, '1234567', 'sam', '0000-00-00', ''),
(4, '123456', 'wang2', '0000-00-00', ''),
(5, '123456', 'wang3', '0000-00-00', ''),
(6, '123456', 'wangjin', '0000-00-00', ''),
(7, '123456', 'wang5', '0000-00-00', ''),
(8, '123456', 'wang7', '0000-00-00', ''),
(9, '123456', 'wang10', '0000-00-00', ''),
(10, '123456', 'wang20', '0000-00-00', ''),
(11, '123456', 'jinruiwang', '0000-00-00', ''),
(12, '111', 'aaa', '2021-11-13', ''),
(15, '123', 'asa', '2021-11-15', ''),
(16, '123', 'ash', '2021-11-15', ''),
(17, 'as@123', 'Aditya', '2021-11-22', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
