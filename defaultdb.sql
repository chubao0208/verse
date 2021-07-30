-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 30, 2021 at 09:21 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `craftcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bao_announcements`
--

CREATE TABLE `bao_announcements` (
                                     `id` int(11) NOT NULL,
                                     `userId` int(11) NOT NULL,
                                     `pluginId` int(11) DEFAULT NULL,
                                     `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                     `body` text COLLATE utf8_unicode_ci NOT NULL,
                                     `unread` tinyint(1) NOT NULL DEFAULT '1',
                                     `dateRead` datetime DEFAULT NULL,
                                     `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_assetindexdata`
--

CREATE TABLE `bao_assetindexdata` (
                                      `id` int(11) NOT NULL,
                                      `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
                                      `volumeId` int(11) NOT NULL,
                                      `uri` text COLLATE utf8_unicode_ci,
                                      `size` bigint(20) UNSIGNED DEFAULT NULL,
                                      `timestamp` datetime DEFAULT NULL,
                                      `recordId` int(11) DEFAULT NULL,
                                      `inProgress` tinyint(1) DEFAULT '0',
                                      `completed` tinyint(1) DEFAULT '0',
                                      `dateCreated` datetime NOT NULL,
                                      `dateUpdated` datetime NOT NULL,
                                      `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_assets`
--

CREATE TABLE `bao_assets` (
                              `id` int(11) NOT NULL,
                              `volumeId` int(11) DEFAULT NULL,
                              `folderId` int(11) NOT NULL,
                              `uploaderId` int(11) DEFAULT NULL,
                              `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                              `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
                              `width` int(11) UNSIGNED DEFAULT NULL,
                              `height` int(11) UNSIGNED DEFAULT NULL,
                              `size` bigint(20) UNSIGNED DEFAULT NULL,
                              `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `deletedWithVolume` tinyint(1) DEFAULT NULL,
                              `keptFile` tinyint(1) DEFAULT NULL,
                              `dateModified` datetime DEFAULT NULL,
                              `dateCreated` datetime NOT NULL,
                              `dateUpdated` datetime NOT NULL,
                              `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_assets`
--

INSERT INTO `bao_assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(11, 1, 1, 1, 'mainstage.png', 'image', 2000, 1333, 3921339, NULL, NULL, NULL, '2021-07-28 17:06:00', '2021-07-28 17:06:01', '2021-07-28 17:06:01', '777f7c7b-a3c5-4b25-b258-f0abad5b9acd'),
(12, 1, 1, 1, 'mainstage_2021-07-28-170630_sukp.png', 'image', 2000, 1333, 3921339, NULL, NULL, NULL, '2021-07-28 17:07:22', '2021-07-28 17:07:23', '2021-07-28 17:07:23', 'ad968782-0d90-4036-9ff2-8cfc20af976c'),
(40, 1, 1, 1, 'card-1.png', 'image', 746, 480, 640207, NULL, NULL, NULL, '2021-07-28 18:28:25', '2021-07-28 18:28:25', '2021-07-28 18:28:25', '111f0f57-8806-4d2d-8b3d-52653b71336e'),
(41, 1, 1, 1, 'card-2.png', 'image', 746, 480, 630844, NULL, NULL, NULL, '2021-07-28 18:28:26', '2021-07-28 18:28:26', '2021-07-28 18:28:26', '8abe5e85-a53c-4478-8004-09309f4c4d4d'),
(42, 1, 1, 1, 'card-3.png', 'image', 746, 480, 459627, NULL, NULL, NULL, '2021-07-28 18:28:26', '2021-07-28 18:28:26', '2021-07-28 18:28:26', 'ea8f3d00-03de-4335-b36a-cd2bf7c6b305'),
(123, 1, 1, 1, 'media.png', 'image', 1160, 836, 3886226, NULL, NULL, NULL, '2021-07-29 06:48:26', '2021-07-29 06:48:27', '2021-07-29 06:48:27', '836ce352-1d5c-4ac3-8869-24fc510597b9');

-- --------------------------------------------------------

--
-- Table structure for table `bao_assettransformindex`
--

CREATE TABLE `bao_assettransformindex` (
                                           `id` int(11) NOT NULL,
                                           `assetId` int(11) NOT NULL,
                                           `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                           `volumeId` int(11) DEFAULT NULL,
                                           `fileExists` tinyint(1) NOT NULL DEFAULT '0',
                                           `inProgress` tinyint(1) NOT NULL DEFAULT '0',
                                           `error` tinyint(1) NOT NULL DEFAULT '0',
                                           `dateIndexed` datetime DEFAULT NULL,
                                           `dateCreated` datetime NOT NULL,
                                           `dateUpdated` datetime NOT NULL,
                                           `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_assettransforms`
--

CREATE TABLE `bao_assettransforms` (
                                       `id` int(11) NOT NULL,
                                       `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                       `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                       `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
                                       `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
                                       `width` int(11) UNSIGNED DEFAULT NULL,
                                       `height` int(11) UNSIGNED DEFAULT NULL,
                                       `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                       `quality` int(11) DEFAULT NULL,
                                       `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
                                       `dimensionChangeTime` datetime DEFAULT NULL,
                                       `dateCreated` datetime NOT NULL,
                                       `dateUpdated` datetime NOT NULL,
                                       `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_categories`
--

CREATE TABLE `bao_categories` (
                                  `id` int(11) NOT NULL,
                                  `groupId` int(11) NOT NULL,
                                  `parentId` int(11) DEFAULT NULL,
                                  `deletedWithGroup` tinyint(1) DEFAULT NULL,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_categorygroups`
--

CREATE TABLE `bao_categorygroups` (
                                      `id` int(11) NOT NULL,
                                      `structureId` int(11) NOT NULL,
                                      `fieldLayoutId` int(11) DEFAULT NULL,
                                      `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                      `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                      `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
                                      `dateCreated` datetime NOT NULL,
                                      `dateUpdated` datetime NOT NULL,
                                      `dateDeleted` datetime DEFAULT NULL,
                                      `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_categorygroups_sites`
--

CREATE TABLE `bao_categorygroups_sites` (
                                            `id` int(11) NOT NULL,
                                            `groupId` int(11) NOT NULL,
                                            `siteId` int(11) NOT NULL,
                                            `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
                                            `uriFormat` text COLLATE utf8_unicode_ci,
                                            `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `dateCreated` datetime NOT NULL,
                                            `dateUpdated` datetime NOT NULL,
                                            `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_changedattributes`
--

CREATE TABLE `bao_changedattributes` (
                                         `elementId` int(11) NOT NULL,
                                         `siteId` int(11) NOT NULL,
                                         `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                         `dateUpdated` datetime NOT NULL,
                                         `propagated` tinyint(1) NOT NULL,
                                         `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_changedattributes`
--

INSERT INTO `bao_changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(1, 1, 'firstName', '2021-07-30 09:20:28', 0, 1),
(1, 1, 'invalidLoginCount', '2021-07-30 09:20:28', 0, 1),
(1, 1, 'invalidLoginWindowStart', '2021-07-30 09:20:28', 0, 1),
(1, 1, 'lastName', '2021-07-30 09:20:28', 0, 1),
(1, 1, 'lastPasswordChangeDate', '2021-07-30 09:20:28', 0, 1),
(1, 1, 'password', '2021-07-30 09:20:28', 0, 1),
(4, 1, 'title', '2021-07-28 18:05:53', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bao_changedfields`
--

CREATE TABLE `bao_changedfields` (
                                     `elementId` int(11) NOT NULL,
                                     `siteId` int(11) NOT NULL,
                                     `fieldId` int(11) NOT NULL,
                                     `dateUpdated` datetime NOT NULL,
                                     `propagated` tinyint(1) NOT NULL,
                                     `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_changedfields`
--

INSERT INTO `bao_changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 1, '2021-07-28 18:05:55', 0, 1),
(4, 1, 2, '2021-07-28 18:05:55', 0, 1),
(4, 1, 3, '2021-07-28 18:05:55', 0, 1),
(4, 1, 4, '2021-07-29 07:05:31', 0, 1),
(4, 1, 5, '2021-07-28 18:05:55', 0, 1),
(4, 1, 6, '2021-07-28 18:05:55', 0, 1),
(4, 1, 7, '2021-07-28 18:05:55', 0, 1),
(4, 1, 8, '2021-07-29 07:05:31', 0, 1),
(4, 1, 9, '2021-07-28 18:05:55', 0, 1),
(4, 1, 10, '2021-07-28 18:05:55', 0, 1),
(4, 1, 11, '2021-07-28 18:05:55', 0, 1),
(4, 1, 12, '2021-07-29 07:05:31', 0, 1),
(4, 1, 13, '2021-07-28 18:11:32', 0, 1),
(4, 1, 14, '2021-07-28 18:11:32', 0, 1),
(4, 1, 15, '2021-07-29 07:05:31', 0, 1),
(4, 1, 17, '2021-07-29 07:05:31', 0, 1),
(4, 1, 23, '2021-07-29 06:48:32', 0, 1),
(4, 1, 24, '2021-07-29 06:48:32', 0, 1),
(4, 1, 25, '2021-07-29 06:48:32', 0, 1),
(4, 1, 26, '2021-07-29 07:05:31', 0, 1),
(4, 1, 27, '2021-07-29 06:56:36', 0, 1),
(4, 1, 28, '2021-07-29 06:56:36', 0, 1),
(4, 1, 29, '2021-07-29 07:05:31', 0, 1),
(4, 1, 30, '2021-07-29 07:00:10', 0, 1),
(4, 1, 31, '2021-07-29 07:05:31', 0, 1),
(15, 1, 5, '2021-07-28 17:30:04', 0, 1),
(15, 1, 6, '2021-07-28 17:30:04', 0, 1),
(15, 1, 7, '2021-07-28 17:30:04', 0, 1),
(15, 1, 8, '2021-07-28 17:42:31', 0, 1),
(19, 1, 9, '2021-07-28 17:31:08', 0, 1),
(19, 1, 10, '2021-07-28 17:31:08', 0, 1),
(19, 1, 11, '2021-07-28 17:31:08', 0, 1),
(19, 1, 12, '2021-07-28 17:31:08', 0, 1),
(57, 1, 22, '2021-07-28 18:34:19', 0, 1),
(58, 1, 22, '2021-07-28 18:34:19', 0, 1),
(59, 1, 22, '2021-07-28 18:34:19', 0, 1),
(99, 1, 21, '2021-07-29 07:05:31', 0, 1),
(100, 1, 21, '2021-07-29 07:05:31', 0, 1),
(101, 1, 21, '2021-07-29 07:05:31', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bao_content`
--

CREATE TABLE `bao_content` (
                               `id` int(11) NOT NULL,
                               `elementId` int(11) NOT NULL,
                               `siteId` int(11) NOT NULL,
                               `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `dateCreated` datetime NOT NULL,
                               `dateUpdated` datetime NOT NULL,
                               `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
                               `field_banner1Title_eewflaea` text COLLATE utf8_unicode_ci,
                               `field_banner1Intro_vvboyfvv` text COLLATE utf8_unicode_ci,
                               `field_banner1Link_gdboomim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_banner2Title_iluthuab` text COLLATE utf8_unicode_ci,
                               `field_banner2Intro_qxiwlxjp` text COLLATE utf8_unicode_ci,
                               `field_banner2Link_gbyrdvrz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_banner3Title_tqnfzxbc` text COLLATE utf8_unicode_ci,
                               `field_banner3Intro_mtvvgelx` text COLLATE utf8_unicode_ci,
                               `field_banner3Link_cnnoduab` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_middleTitle_ouzshyep` text COLLATE utf8_unicode_ci,
                               `field_middleIntro_hnlmlqql` text COLLATE utf8_unicode_ci,
                               `field_middleButton_nnansqxm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_mediaTitle_mlggyjzx` text COLLATE utf8_unicode_ci,
                               `field_mediaIntro_qivleibj` text COLLATE utf8_unicode_ci,
                               `field_mediaLink_hqszlxju` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_contactIntro_ddwmadjc` text COLLATE utf8_unicode_ci,
                               `field_contactPhone_slauzneq` text COLLATE utf8_unicode_ci,
                               `field_footerAddress_cpjfskik` text COLLATE utf8_unicode_ci,
                               `field_footerPhone_ccuxzwrs` text COLLATE utf8_unicode_ci,
                               `field_footerEmail_odbxsnns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_facebook_ilsvchce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_instagram_gaizslbb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_linkedin_xolctzhb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `field_twitter_nywcufgq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_content`
--

INSERT INTO `bao_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_banner1Title_eewflaea`, `field_banner1Intro_vvboyfvv`, `field_banner1Link_gdboomim`, `field_banner2Title_iluthuab`, `field_banner2Intro_qxiwlxjp`, `field_banner2Link_gbyrdvrz`, `field_banner3Title_tqnfzxbc`, `field_banner3Intro_mtvvgelx`, `field_banner3Link_cnnoduab`, `field_middleTitle_ouzshyep`, `field_middleIntro_hnlmlqql`, `field_middleButton_nnansqxm`, `field_mediaTitle_mlggyjzx`, `field_mediaIntro_qivleibj`, `field_mediaLink_hqszlxju`, `field_contactIntro_ddwmadjc`, `field_contactPhone_slauzneq`, `field_footerAddress_cpjfskik`, `field_footerPhone_ccuxzwrs`, `field_footerEmail_odbxsnns`, `field_facebook_ilsvchce`, `field_instagram_gaizslbb`, `field_linkedin_xolctzhb`, `field_twitter_nywcufgq`) VALUES
(1, 1, 1, NULL, '2021-07-27 11:10:28', '2021-07-30 09:20:26', '35326216-53a2-44b5-9ce2-20773e8e1774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, '2021-07-28 11:27:10', '2021-07-28 11:27:10', 'b7d04a9b-09a2-4c5e-8c05-034262f71d6f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, '2021-07-28 11:27:38', '2021-07-28 11:27:38', '7122b078-bdc1-4db5-b566-88b1234ab0ed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'Home', '2021-07-28 15:47:20', '2021-07-29 07:07:23', '1e78b453-4c8d-4a0e-9b9c-a332dbe9fe87', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', 'Floor 5,\n12-14 Grey Street,\nNewcastle upon Tyne,\nNE1 6TE', '01112128111', 'admin@horizonthemes.co.uk', NULL, NULL, NULL, NULL),
(5, 5, 1, 'Home', '2021-07-28 15:47:20', '2021-07-28 15:47:20', '40f85871-5ec3-47d6-835b-0959f51aa776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'Home', '2021-07-28 16:56:54', '2021-07-28 16:56:54', 'b2c21ef5-999f-459c-8087-46b03353d405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 'Home', '2021-07-28 16:58:19', '2021-07-28 16:58:19', '67dcc372-8f86-4bbb-984f-7dc52200d214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'Home-Banner-1', '2021-07-28 16:59:10', '2021-07-28 16:59:10', 'c833e7f4-d7d8-4507-9d78-363f2069d5b8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'Home-Banner-1', '2021-07-28 16:59:39', '2021-07-28 16:59:39', '2687550a-2f78-4b52-ba0e-fa6d84a902c6', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 'Mainstage', '2021-07-28 17:05:08', '2021-07-28 17:05:08', 'd2f11ac2-9a4b-4d3d-a0f2-eb4fbfa9e6ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, 'Mainstage', '2021-07-28 17:06:30', '2021-07-28 17:06:30', 'e4302e51-300f-46c5-b505-fd689f2549a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 'Home-Banner-1', '2021-07-28 17:07:38', '2021-07-28 17:07:38', '6ae4971c-c017-4f9d-b83f-5ad4d56f6a3b', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 'Home Banner 2', '2021-07-28 17:28:06', '2021-07-28 17:42:31', 'a8e19d1a-10b7-41fa-b63f-6948bf05d5d5', NULL, NULL, NULL, 'Here we have a two line display intro. (Tab 2)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 'Home Banner 2', '2021-07-28 17:28:06', '2021-07-28 17:28:06', '749931c0-f5d3-4cb3-ae8c-850090dfebd5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 'Home Banner 2', '2021-07-28 17:28:24', '2021-07-28 17:28:24', 'a6d5c7bc-a69b-42fa-950b-574f2a9407ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 'Home-Banner-1', '2021-07-28 17:29:10', '2021-07-28 17:29:10', 'ec855c1e-913a-4202-b8d9-ce284d9382e5', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 'Home-Banner-3', '2021-07-28 17:29:31', '2021-07-28 17:31:08', '5819811b-ea80-42ec-bf60-887023a5f30f', NULL, NULL, NULL, NULL, NULL, NULL, 'Banner 3 Title\nLine 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 1, 'Home-Banner-3', '2021-07-28 17:29:31', '2021-07-28 17:29:31', '44aa7109-f16b-47a7-aa4b-72d5df5d3209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, 'Home Banner 2', '2021-07-28 17:30:04', '2021-07-28 17:30:04', 'e7c68ce7-b1e9-4f81-bfd3-323079899d0b', NULL, NULL, NULL, 'Here we have a two line display intro. (Tab 2)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 'Home-Banner-3', '2021-07-28 17:30:46', '2021-07-28 17:30:46', '9763e904-0472-4e9c-bc74-216f37bbdf7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 'Home-Banner-3', '2021-07-28 17:31:08', '2021-07-28 17:31:08', '5d3e157f-e2ea-4ddb-9afd-9d9f0bb11299', NULL, NULL, NULL, NULL, NULL, NULL, 'Banner 3 Title\nLine 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 1, 'Home Banner 2', '2021-07-28 17:42:31', '2021-07-28 17:42:31', 'db9cf41a-6cd9-476e-ad5f-6962496f759c', NULL, NULL, NULL, 'Here we have a two line display intro. (Tab 2)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 'Home-Banner-1', '2021-07-28 17:47:30', '2021-07-28 17:47:30', 'f1c55728-04b6-4ca9-8cc1-efd5ccdc44bd', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 1, 'Home-Banner', '2021-07-28 17:47:38', '2021-07-28 17:47:38', 'baa8a56c-9b55-4499-a5f1-dc69035d49b6', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, 'Home-Banner', '2021-07-28 17:48:15', '2021-07-28 17:48:15', 'e7225e96-a8d7-4ec1-a8c2-3b0f8225dfd2', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 'Home', '2021-07-28 18:05:53', '2021-07-28 18:05:53', '1f42f75e-11b0-43fb-b5f4-56066cbb009c', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, 'Home', '2021-07-28 18:05:54', '2021-07-28 18:05:54', '8e3ef718-c700-498f-896e-87859a56b9dc', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 'Home', '2021-07-28 18:09:13', '2021-07-28 18:09:13', '90989d72-96d7-4cfe-9605-ab434dc3dbd3', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, 1, 'Home', '2021-07-28 18:09:47', '2021-07-28 18:09:47', '0e02e6d9-350c-406a-838f-5a5278a10a50', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 1, 'Home', '2021-07-28 18:11:32', '2021-07-28 18:11:32', '407ffb5e-b261-47e8-9bbc-569282cda54e', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, 1, 'Home', '2021-07-28 18:26:46', '2021-07-28 18:26:46', '6ee77a41-9815-47dc-bc72-cd222fa47af5', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 40, 1, 'Card 1', '2021-07-28 18:28:24', '2021-07-28 18:28:24', '0883fa2f-69ef-4b1c-bb71-9f9fa7b8cddf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 41, 1, 'Card 2', '2021-07-28 18:28:25', '2021-07-28 18:28:25', '12b2b88a-373b-4f61-ac68-a97677fd0f10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 42, 1, 'Card 3', '2021-07-28 18:28:26', '2021-07-28 18:28:26', '63ee644b-75c4-4450-b94f-7268f4ba5dab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 60, 1, 'Home', '2021-07-28 18:29:16', '2021-07-28 18:29:16', '6b9840d7-bc88-4b0b-bd01-5cfd9dbbd1c3', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 102, 1, 'Home', '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'bbe7eb56-5e99-4915-8364-6644784ac6b0', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 109, 1, 'Home', '2021-07-29 06:47:15', '2021-07-29 06:47:15', '77d76047-b41a-4c59-84d6-430f2fa82a40', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 123, 1, 'Media', '2021-07-29 06:48:24', '2021-07-29 06:48:24', '772be4ce-d1d8-4270-a29e-e2f4039b86a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 124, 1, 'Home', '2021-07-29 06:48:32', '2021-07-29 06:48:32', 'e8930c8e-827a-4d51-a874-0ab2f32770ae', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 131, 1, 'Home', '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'a31dc516-d9e5-47fa-9925-3318c254cb7a', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 145, 1, 'Home', '2021-07-29 06:56:36', '2021-07-29 06:56:36', '680c11b7-38cc-45ec-81f6-4521d9a20444', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 152, 1, 'Home', '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'ce4d0775-8fe4-4d79-be26-ef0a99504947', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 166, 1, 'Home', '2021-07-29 07:00:10', '2021-07-29 07:00:10', '60ed566b-51af-486e-9cf5-8e879db66a6c', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', 'Floor 5,\n12-14 Grey Street,\nNewcastle upon Tyne,\nNE1 6TE', '01112128111', 'admin@horizonthemes.co.uk', NULL, NULL, NULL, NULL),
(56, 180, 1, 'Home', '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'c41c5f65-f1f9-4f60-8852-65f991b23545', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', 'Floor 5,\n12-14 Grey Street,\nNewcastle upon Tyne,\nNE1 6TE', '01112128111', 'admin@horizonthemes.co.uk', NULL, NULL, NULL, NULL),
(57, 187, 1, 'Home', '2021-07-29 07:07:23', '2021-07-29 07:07:23', '76fb5155-e83e-43e0-9115-18c3bac6fe86', 'Here we have a two line display intro. (Tab 1)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Tab 3 Titles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'Here we have a two line display intro.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'This is a two line title.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.This is a two line title.', NULL, 'A message followed by a way to get in touch.', '+44 (0) 1234 567 890', 'Floor 5,\n12-14 Grey Street,\nNewcastle upon Tyne,\nNE1 6TE', '01112128111', 'admin@horizonthemes.co.uk', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bao_craftidtokens`
--

CREATE TABLE `bao_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_deprecationerrors`
--

CREATE TABLE `bao_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_drafts`
--

CREATE TABLE `bao_drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_drafts`
--

INSERT INTO `bao_drafts` (`id`, `sourceId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(2, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bao_elementindexsettings`
--

CREATE TABLE `bao_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_elements`
--

CREATE TABLE `bao_elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_elements`
--

INSERT INTO `bao_elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-07-27 11:10:28', '2021-07-30 09:20:26', NULL, NULL, 'a85424cc-8e3a-4ce9-ab06-214f2705f966'),
(2, NULL, 1, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-07-28 11:27:10', '2021-07-28 11:27:10', NULL, '2021-07-28 11:29:07', '14fb7a74-4ec8-4362-ac19-00e47d1660bb'),
(3, NULL, 2, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-07-28 11:27:38', '2021-07-28 11:27:38', NULL, '2021-07-28 11:29:07', '950cbc22-1e71-43ee-a64a-10a9e716a3d4'),
(4, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 15:47:20', '2021-07-29 07:07:23', NULL, NULL, '9342778a-8fc4-453f-a86a-2b7ce45e0911'),
(5, 4, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 15:47:20', '2021-07-28 15:47:20', NULL, NULL, '1ad50160-7fd0-451e-b127-13aad05bf4c4'),
(6, 4, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 16:56:54', '2021-07-28 16:56:54', NULL, NULL, 'c8310c61-a7cd-4b60-8a8d-4c7f8a2805a2'),
(7, 4, NULL, 3, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 16:58:19', '2021-07-28 16:58:19', NULL, NULL, '8cae569e-9931-4747-9096-e7af125f9ac9'),
(8, 4, NULL, 4, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 16:59:10', '2021-07-28 16:59:10', NULL, NULL, 'fb61c374-2428-4181-8cf8-a5b37975a923'),
(10, 4, NULL, 5, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 16:59:39', '2021-07-28 16:59:39', NULL, NULL, '0a84bc53-0499-4201-90b1-ee201fae888a'),
(11, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-28 17:05:08', '2021-07-28 17:05:08', NULL, NULL, '5db5f145-cf52-4397-a726-1aff8af6dbd1'),
(12, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-28 17:06:30', '2021-07-28 17:06:30', NULL, NULL, 'ae6d718b-6579-439d-b635-265a3d125545'),
(14, 4, NULL, 6, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:07:38', '2021-07-28 17:07:38', NULL, NULL, 'a73a19b5-df38-4cbc-8ee7-b0f710e627f3'),
(15, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:28:06', '2021-07-28 17:42:31', NULL, '2021-07-28 17:46:48', '11e075f8-91d0-492c-9fa5-c03ab01968b8'),
(16, 15, NULL, 7, 4, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:28:06', '2021-07-28 17:28:06', NULL, '2021-07-28 17:46:48', 'e6e4f3ad-6f06-441f-9b4f-f7d5c7310f7e'),
(17, 15, NULL, 8, 4, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:28:24', '2021-07-28 17:28:24', NULL, '2021-07-28 17:46:48', '6cdf69bf-8964-4c7f-9e78-0db60df6148c'),
(18, 4, NULL, 9, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:29:10', '2021-07-28 17:29:10', NULL, NULL, '48dae5da-3908-4877-81aa-1b737d3a831c'),
(19, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:29:31', '2021-07-28 17:31:08', NULL, '2021-07-28 17:46:50', '8576c79d-4b19-4bbf-96a5-0683661c59a8'),
(20, 19, NULL, 10, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:29:31', '2021-07-28 17:29:31', NULL, '2021-07-28 17:46:50', '64f5c769-6ad2-41ed-a61e-666b761d303d'),
(22, 15, NULL, 11, 4, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:30:04', '2021-07-28 17:30:04', NULL, '2021-07-28 17:46:48', '804ee9f0-fe7d-4a5f-ab65-a339e9dd4b29'),
(23, 19, NULL, 12, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:30:46', '2021-07-28 17:30:46', NULL, '2021-07-28 17:46:50', '924ac769-d3ba-427e-b0e0-29be498eaaef'),
(25, 19, NULL, 13, 5, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:31:08', '2021-07-28 17:31:08', NULL, '2021-07-28 17:46:50', 'c6bfbb45-c4c4-4b4e-9ca5-a02d700dd369'),
(26, 15, NULL, 14, 4, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:42:31', '2021-07-28 17:42:31', NULL, '2021-07-28 17:46:48', '88b88160-7af4-4e3e-9adb-b71c5a36a0a1'),
(27, 4, NULL, 15, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:47:30', '2021-07-28 17:47:30', NULL, NULL, 'c5dc8ebe-cd57-47d3-884f-481e84f9a90e'),
(28, 4, NULL, 16, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:47:38', '2021-07-28 17:47:38', NULL, NULL, '47d8e7e8-dd04-474e-b6a3-f6a4ac2c421f'),
(30, 4, NULL, 17, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 17:48:15', '2021-07-28 17:48:15', NULL, NULL, 'bf20fb7d-8193-49c3-bf68-0ac8a59c1c42'),
(31, 4, NULL, 18, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:05:53', '2021-07-28 18:05:53', NULL, NULL, '0a4e918f-68ce-4a17-ab79-b53176ef94dd'),
(32, 4, NULL, 19, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:05:54', '2021-07-28 18:05:54', NULL, NULL, 'f8bcb09c-e60e-48d1-b597-d7cd78ca8ea1'),
(33, 4, NULL, 20, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:09:13', '2021-07-28 18:09:13', NULL, NULL, '2f096ee4-af92-4aab-a7f3-8bf8b41e75ab'),
(34, 4, NULL, 21, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:09:47', '2021-07-28 18:09:47', NULL, NULL, '548aa37a-60f2-45e0-8f2a-398b47e67258'),
(36, 4, NULL, 22, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:11:32', '2021-07-28 18:11:32', NULL, NULL, '88d071dc-865c-4ceb-b2ce-18030b761a56'),
(37, 4, NULL, 23, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:26:46', '2021-07-28 18:26:46', NULL, NULL, 'c5c2bec7-eaaf-47a8-871b-482d44e24bff'),
(40, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-28 18:28:24', '2021-07-28 18:28:24', NULL, NULL, '3b88aee2-acc4-4ca6-8912-0109cf916697'),
(41, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-28 18:28:25', '2021-07-28 18:28:25', NULL, NULL, '8b453f73-60fa-4679-960b-5b4b2d79759c'),
(42, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-28 18:28:26', '2021-07-28 18:28:26', NULL, NULL, 'c865ad6e-eef4-49a0-910d-a576f782e452'),
(43, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:28:51', '2021-07-28 18:28:51', NULL, '2021-07-28 18:28:55', '918287bd-b6f9-4d54-9d98-b7d369232b06'),
(44, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:28:55', '2021-07-28 18:28:55', NULL, '2021-07-28 18:28:58', '3d4ff557-09d5-4b89-9615-e36c3b1b9187'),
(45, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:28:58', '2021-07-28 18:28:58', NULL, '2021-07-28 18:29:00', 'db1daea5-02a0-4eaf-8539-dc861aaa55eb'),
(46, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:00', '2021-07-28 18:29:00', NULL, '2021-07-28 18:29:01', '9f63cff4-91a4-4272-a398-7812a3b2d1a6'),
(47, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:01', '2021-07-28 18:29:01', NULL, '2021-07-28 18:29:06', '31a928f6-5066-480b-a2fe-a11575f4a286'),
(48, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:01', '2021-07-28 18:29:01', NULL, '2021-07-28 18:29:07', '8cb546f8-b5c4-42a2-b0b0-3c75069b291a'),
(49, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:06', '2021-07-28 18:29:06', NULL, '2021-07-28 18:29:09', '69597b70-ed76-4303-98d7-0f369c04d1c5'),
(50, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:06', '2021-07-28 18:29:06', NULL, '2021-07-28 18:29:09', '88a8f52f-725d-44f0-ad93-b3c84afee7c0'),
(51, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:09', '2021-07-28 18:29:09', NULL, '2021-07-28 18:29:11', 'fd514d08-152a-4f31-a0a5-cd76f03293d4'),
(52, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:09', '2021-07-28 18:29:09', NULL, '2021-07-28 18:29:11', '09bfd0a1-696a-482c-bb5f-3665103e3fbf'),
(53, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:11', '2021-07-28 18:29:11', NULL, '2021-07-28 18:29:12', '77e86199-9267-47af-a28f-2974e1e1e6ca'),
(54, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:11', '2021-07-28 18:29:11', NULL, '2021-07-28 18:29:12', '0b878169-0c0e-444e-be00-373fb24ce11f'),
(57, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:15', '2021-07-29 07:05:31', NULL, NULL, 'e7798fdf-d159-4dff-a2d8-b614042113a3'),
(58, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:15', '2021-07-29 07:05:31', NULL, NULL, '2dc0e181-4c03-419a-a23b-00d5ae61d6f5'),
(59, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:15', '2021-07-29 07:05:31', NULL, NULL, '2f548e50-7c25-4937-9ac1-4464916127de'),
(60, 4, NULL, 24, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:29:15', '2021-07-28 18:29:16', NULL, NULL, 'd7a63fc1-68c3-44db-b0fe-9388a43d4ab3'),
(61, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:16', '2021-07-28 18:29:16', NULL, NULL, '82385d40-82b7-4da5-a9fa-fa383b9ff0df'),
(62, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:16', '2021-07-28 18:29:16', NULL, NULL, '5937d31d-d68e-40f5-8259-bc98bb7a532e'),
(63, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:29:16', '2021-07-28 18:29:16', NULL, NULL, '03ec644a-257a-44c9-9fb6-85bdf94e281f'),
(68, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:40', '2021-07-28 18:33:40', NULL, '2021-07-28 18:33:45', 'fd58df21-725a-4400-b8b5-8f332bd49d1a'),
(69, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:45', '2021-07-28 18:33:45', NULL, '2021-07-28 18:33:48', 'fbabb1d0-7030-4b60-9579-5f227f116a8d'),
(70, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:48', '2021-07-28 18:33:48', NULL, '2021-07-28 18:33:49', '17c54dbb-e034-47d4-a97d-30d9f621d2c3'),
(71, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:49', '2021-07-28 18:33:49', NULL, '2021-07-28 18:33:52', '3d295200-1fa0-409f-b37a-7be98acb12b2'),
(72, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:52', '2021-07-28 18:33:52', NULL, '2021-07-28 18:33:57', '31e096d7-205f-483f-96e5-863d9fd611a9'),
(73, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:57', '2021-07-28 18:33:57', NULL, '2021-07-28 18:33:58', 'ec8970f0-bed0-4ae3-8ef2-428b36b34703'),
(74, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:58', '2021-07-28 18:33:58', NULL, '2021-07-28 18:34:00', '319ce206-6413-43e0-abde-604b0f984823'),
(75, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:33:58', '2021-07-28 18:33:58', NULL, '2021-07-28 18:34:00', 'd5da8a90-0603-4a22-9551-e1a4874326c9'),
(76, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:00', '2021-07-28 18:34:00', NULL, '2021-07-28 18:34:03', '9b094830-5733-4160-9a7c-86d38a9e22a1'),
(77, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:00', '2021-07-28 18:34:00', NULL, '2021-07-28 18:34:03', '65f7f442-74bb-4468-bba2-1ff3c5174891'),
(78, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:03', '2021-07-28 18:34:03', NULL, '2021-07-28 18:34:05', 'e428ee02-e9e9-43d6-89f3-1627d3d59b3b'),
(79, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:03', '2021-07-28 18:34:03', NULL, '2021-07-28 18:34:05', 'de95206d-013f-497f-bdd0-5ad52a68bb3c'),
(80, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:05', '2021-07-28 18:34:05', NULL, '2021-07-28 18:34:08', '27660fe5-e3f4-4e3e-bc8b-79c3980633ce'),
(81, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:05', '2021-07-28 18:34:05', NULL, '2021-07-28 18:34:08', 'efdd274d-179d-4c27-a111-24e868496d11'),
(82, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:08', '2021-07-28 18:34:08', NULL, '2021-07-28 18:34:09', 'df60df3e-e55b-4eee-b1a4-d20dde6c8766'),
(83, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:08', '2021-07-28 18:34:08', NULL, '2021-07-28 18:34:09', 'a85e4791-4302-4e37-bf89-f1414e48823b'),
(84, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:09', '2021-07-28 18:34:09', NULL, '2021-07-28 18:34:11', '65107034-46f9-4158-a765-f8ba98604757'),
(85, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:09', '2021-07-28 18:34:09', NULL, '2021-07-28 18:34:11', '2c301c06-a253-431f-b658-a8215c4ec08b'),
(86, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:09', '2021-07-28 18:34:09', NULL, '2021-07-28 18:34:11', '7129c0ce-74de-444e-ba9b-433226a9cad8'),
(87, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:11', '2021-07-28 18:34:11', NULL, '2021-07-28 18:34:13', '471b1d18-e14e-48ed-b512-a0f3e3c08031'),
(88, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:11', '2021-07-28 18:34:11', NULL, '2021-07-28 18:34:13', '94da6967-4124-4183-9cf2-a14ebe419311'),
(89, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:11', '2021-07-28 18:34:11', NULL, '2021-07-28 18:34:13', 'edaf1d15-f2b2-4ec3-a6c8-a8f6aa3d6015'),
(90, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:13', '2021-07-28 18:34:13', NULL, '2021-07-28 18:34:15', 'cd344040-5570-4f24-a01f-37342fead80e'),
(91, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:13', '2021-07-28 18:34:13', NULL, '2021-07-28 18:34:15', 'fdc90283-f427-4a92-b831-39cd88f57cc8'),
(92, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:13', '2021-07-28 18:34:13', NULL, '2021-07-28 18:34:15', '3692da5f-e65f-4576-812e-e74f875e1288'),
(93, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:15', '2021-07-28 18:34:15', NULL, '2021-07-28 18:34:17', '8ac454f8-fe07-420d-912a-370e9cd591fb'),
(94, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:15', '2021-07-28 18:34:15', NULL, '2021-07-28 18:34:17', 'd1324002-0b38-4055-a131-f3dc7537118f'),
(95, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:15', '2021-07-28 18:34:15', NULL, '2021-07-28 18:34:17', '9a44a1e1-aaca-43d3-9046-290cf05465c4'),
(99, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:19', '2021-07-29 07:05:31', NULL, NULL, 'c63753d4-0d7a-49a9-ae00-dc8bd57bd17d'),
(100, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:19', '2021-07-29 07:05:31', NULL, NULL, 'c3fe4aad-0b0e-4685-b315-94b27ce35da2'),
(101, NULL, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:19', '2021-07-29 07:05:31', NULL, NULL, '749b7375-3644-435b-8461-0f017d03b5ed'),
(102, 4, NULL, 25, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-28 18:34:19', '2021-07-28 18:34:19', NULL, NULL, '5af21d88-e423-4aad-9a34-2764f77ec954'),
(103, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, '0d119420-761a-4066-b111-ca7fca752887'),
(104, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, '777377ab-0fbc-4187-ab42-51a4441c1c7d'),
(105, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, '65042798-43d8-439b-8f35-e289033c3bd0'),
(106, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, '4360adcd-537b-410b-bbf8-12513c5fc43b'),
(107, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, 'bc6b3df5-3f45-43c6-983e-894e72632224'),
(108, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-28 18:34:20', '2021-07-28 18:34:20', NULL, NULL, '2b02972b-c42e-4009-bcb4-fdb1dc4f76a6'),
(109, 4, NULL, 26, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, '909aa56c-5295-4ca5-999d-a251bf56cd6c'),
(110, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, '3a8407d1-fadc-4fd9-b837-cf212245d9b8'),
(111, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, 'd689a3fe-8551-496a-9d76-d3f4b75a740d'),
(112, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, '12605b9a-4779-4e70-9513-62f728e91ec5'),
(113, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, '7fb71957-6348-414e-90b5-95e00991235c'),
(114, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, 'ce472b5c-a4f2-4ed3-9a52-2674cfe304dd'),
(115, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:47:15', '2021-07-29 06:47:15', NULL, NULL, 'abd4f467-fa32-4f8b-a9f7-290b0dc7f06c'),
(123, NULL, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-07-29 06:48:24', '2021-07-29 06:48:24', NULL, NULL, 'b9e1e4b4-ea49-468b-846e-dce63cb82f8b'),
(124, 4, NULL, 27, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 06:48:32', '2021-07-29 06:48:32', NULL, NULL, '88802d06-e3e0-4208-b51f-e62d5b0b02f6'),
(125, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, '862cd455-26ca-48bd-a5c4-804bd5ae98b7'),
(126, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, '8e7497ee-7b41-4931-b051-94ab0cad254a'),
(127, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, '0250bbde-bfee-40d0-a66f-82791e58dcbb'),
(128, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, 'ff8d3531-2730-458b-a119-a9241d0db819'),
(129, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, 'fde4dd42-0f43-458e-866c-24aaa11da75c'),
(130, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:48:33', '2021-07-29 06:48:33', NULL, NULL, '74a21593-382c-4f2f-bf70-22e6a556fc93'),
(131, 4, NULL, 28, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 06:56:19', '2021-07-29 06:56:20', NULL, NULL, '1c7c032d-9aed-477e-9e44-faabc91580c2'),
(132, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, '9a7fa644-061c-4139-82f0-b5f935b0100e'),
(133, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, '82b654cc-68d9-4239-90ad-323c33328da3'),
(134, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, '5400d495-8c5f-4c2f-8487-90885ae8a911'),
(135, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, '60276c21-f704-459a-816a-efc9eec38880'),
(136, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, 'eecd1e33-aaed-43a3-9c0e-220be77b52ab'),
(137, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:20', '2021-07-29 06:56:20', NULL, NULL, '9c9fffcf-bb5b-4933-b047-75c4b7101d41'),
(145, 4, NULL, 29, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, '48e2941c-54a6-4915-bf61-aa136054f25d'),
(146, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, '2221d80d-7b80-42d3-acbe-2004f8a02f81'),
(147, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, 'f10a3da3-0786-4cc6-ae45-9c61bac135a4'),
(148, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, '66c1b1d6-89fa-4e70-b2b8-8c97fcda859b'),
(149, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, '32dbeb7d-e8a3-493e-a1ba-6fc97de90fb8'),
(150, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, '5d31e99a-ea57-4e9e-92c7-5e9477f410c6'),
(151, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:56:36', '2021-07-29 06:56:36', NULL, NULL, 'e9b646f7-0aa0-43a0-b6bd-c2a64335c732'),
(152, 4, NULL, 30, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, '0191843d-801d-47aa-8dac-1cb4a73a35f0'),
(153, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, 'd6283100-a663-4070-9d3b-5332d613f200'),
(154, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, '8c5b2f4e-0028-4fde-9a3c-52f4013783c3'),
(155, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, '29291586-1eda-42c2-8682-dac0c230cb39'),
(156, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, '6bc9a1ef-6ec4-4733-8ed3-2dfdf148d57d'),
(157, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, '3e2e98b7-105c-457a-9e78-d97ab0f3c00e'),
(158, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 06:59:06', '2021-07-29 06:59:06', NULL, NULL, 'ffbb5107-45da-44a9-9a00-6136d7f86524'),
(166, 4, NULL, 31, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, 'c70e6978-52e9-415b-ba80-a1267b36392c'),
(167, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, '84c4c865-6867-4388-b213-bf4ec4179720'),
(168, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, 'ac086f55-d0c8-4a3f-8eb5-120dad2dddb8'),
(169, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, '4f3a6c6b-54f1-4344-8cb5-5426fb1b9bb6'),
(170, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, '82464ea5-d287-4a11-a633-136c8b5f1af1'),
(171, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, 'ff3ccb32-7df6-44fd-85e0-66e47402ff9e'),
(172, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:00:10', '2021-07-29 07:00:10', NULL, NULL, 'f29c756c-0e20-40a6-a0e4-9617325af30a'),
(180, 4, NULL, 32, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 07:05:31', '2021-07-29 07:05:32', NULL, NULL, '04690831-bb49-4aea-8f89-f25cc0578a58'),
(181, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, '4e93ca7d-827f-4699-aa2e-bed74b21233f'),
(182, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, '972bd3ff-dd9d-4620-b20d-abb073d884ff'),
(183, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, '37eb23dc-b95b-4d09-86f4-7e2a1c42baa8'),
(184, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, '22c5578b-40b8-4425-afd5-e8e2bdc5b70d'),
(185, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, 'cda026a8-aa73-4bed-ae95-8098631b74a0'),
(186, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:05:32', '2021-07-29 07:05:32', NULL, NULL, '04961797-6ae6-4f1c-8265-555c0e8b94bf'),
(187, 4, NULL, 33, 2, 'craft\\elements\\Entry', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, '1a624228-598e-4a36-a2b1-a5a701d3b632'),
(188, 57, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, 'c4d0df3b-75f3-4333-8e46-0bfe9aef8a08'),
(189, 58, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, '54f34e75-e17c-4442-9f1d-80a557c94f31'),
(190, 59, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, 'd126a15a-3145-4564-a5cd-e514a66cd76f'),
(191, 99, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, 'ce60e4cf-fcb9-41aa-add1-6a556bc8eeb1'),
(192, 100, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, '5eed6b09-757c-4abe-a700-a0aa7547f4cb'),
(193, 101, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', NULL, NULL, 'd7c2808d-f97d-45c4-b9b2-1dd3bb4eb37e');

-- --------------------------------------------------------

--
-- Table structure for table `bao_elements_sites`
--

CREATE TABLE `bao_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_elements_sites`
--

INSERT INTO `bao_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2021-07-27 11:10:28', '2021-07-27 11:10:28', '3d8353f1-9017-4d82-8d05-6498366eae5a'),
(2, 2, 1, '__temp_edvficgtjiuyhwrsbopnmmthpwyeioxgeikz', 'banner/__temp_edvficgtjiuyhwrsbopnmmthpwyeioxgeikz', 1, '2021-07-28 11:27:10', '2021-07-28 11:27:10', '317b3508-9199-469f-b5e6-0d91dba01d63'),
(3, 3, 1, '__temp_dzvqaxmiuhcwyhobxmzfhewrnmjcmxtnjfrm', 'banner/__temp_dzvqaxmiuhcwyhobxmzfhewrnmjcmxtnjfrm', 1, '2021-07-28 11:27:38', '2021-07-28 11:27:38', 'a80c5eef-9930-4717-ba6d-65dc879f1df5'),
(4, 4, 1, 'home', '__home__', 1, '2021-07-28 15:47:20', '2021-07-28 15:47:20', '61e7006e-ca22-45f1-a9a8-b0fad07b8153'),
(5, 5, 1, 'home', '__home__', 1, '2021-07-28 15:47:20', '2021-07-28 15:47:20', 'b99a12f9-bd92-4eed-b210-c67149c9be37'),
(6, 6, 1, 'home', '__home__', 1, '2021-07-28 16:56:54', '2021-07-28 16:56:54', '5630cd1b-d4b8-410d-b877-95b65dd4ce08'),
(7, 7, 1, 'home', '__home__', 1, '2021-07-28 16:58:19', '2021-07-28 16:58:19', '6d15417d-f885-45cf-ac52-a83ffb9b11ce'),
(8, 8, 1, 'home', '__home__', 1, '2021-07-28 16:59:10', '2021-07-28 16:59:10', '2aed51e0-f2ad-4f8c-ae90-566ad7706ac7'),
(10, 10, 1, 'home', '__home__', 1, '2021-07-28 16:59:39', '2021-07-28 16:59:39', '3b732d5f-e0ed-4583-abff-1a42ed2153c1'),
(11, 11, 1, NULL, NULL, 1, '2021-07-28 17:05:08', '2021-07-28 17:05:08', '8148bdc2-032a-41b4-bcc5-7d20cc868b3c'),
(12, 12, 1, NULL, NULL, 1, '2021-07-28 17:06:30', '2021-07-28 17:06:30', '73d5a171-3634-4f09-87f7-a858ed5d2daa'),
(14, 14, 1, 'home', '__home__', 1, '2021-07-28 17:07:38', '2021-07-28 17:07:38', '63268213-e512-4ede-b6c9-45bdd40081e2'),
(15, 15, 1, 'home-banner-2', NULL, 1, '2021-07-28 17:28:06', '2021-07-28 17:28:06', '1601af13-4033-44d5-82d8-9b51e92201ee'),
(16, 16, 1, 'home-banner-2', NULL, 1, '2021-07-28 17:28:06', '2021-07-28 17:28:06', 'a485d6be-4428-440a-8517-66eee18d3451'),
(17, 17, 1, 'home-banner-2', NULL, 1, '2021-07-28 17:28:24', '2021-07-28 17:28:24', '129ea9bc-1c16-492e-9ea9-ab373c08cba1'),
(18, 18, 1, 'home', '__home__', 1, '2021-07-28 17:29:10', '2021-07-28 17:29:10', '18a163c3-0bf6-48e4-aaba-80013dc2becf'),
(19, 19, 1, 'home-banner-3', 'home-banner-3', 1, '2021-07-28 17:29:31', '2021-07-28 17:29:31', 'c6449b57-8552-4c11-a6b3-a7d796114ac9'),
(20, 20, 1, 'home-banner-3', 'home-banner-3', 1, '2021-07-28 17:29:31', '2021-07-28 17:29:31', '67850d46-646c-40de-bca4-01a3629f240f'),
(22, 22, 1, 'home-banner-2', NULL, 1, '2021-07-28 17:30:04', '2021-07-28 17:30:04', 'cf3aa263-940d-476d-b791-49a5ad6515e1'),
(23, 23, 1, 'home-banner-3', 'home-banner-3', 1, '2021-07-28 17:30:46', '2021-07-28 17:30:46', 'a0db91ac-42c7-48b2-91b8-1db248fc14c7'),
(25, 25, 1, 'home-banner-3', 'home-banner-3', 1, '2021-07-28 17:31:08', '2021-07-28 17:31:08', '74afb883-f04e-4e59-a857-f8f7b1139699'),
(26, 26, 1, 'home-banner-2', NULL, 1, '2021-07-28 17:42:31', '2021-07-28 17:42:31', '66479b4a-30fb-49cb-9479-823d914b589d'),
(27, 27, 1, 'home', '__home__', 1, '2021-07-28 17:47:30', '2021-07-28 17:47:30', 'ed2969e8-11b1-4af8-8fa3-ce0a46fc163b'),
(28, 28, 1, 'home', '__home__', 1, '2021-07-28 17:47:38', '2021-07-28 17:47:38', '1a8895f4-e0f0-4304-a8f3-bdae1312e68c'),
(30, 30, 1, 'home', '__home__', 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', 'b1c4c21e-5c82-478b-9ade-2191b7a78b8b'),
(31, 31, 1, 'home', '__home__', 1, '2021-07-28 18:05:53', '2021-07-28 18:05:53', '09672c24-b85f-49c1-a600-15acc6e2cd5b'),
(32, 32, 1, 'home', '__home__', 1, '2021-07-28 18:05:54', '2021-07-28 18:05:54', '68839bb6-f627-457b-9acf-7a5e529dc036'),
(33, 33, 1, 'home', '__home__', 1, '2021-07-28 18:09:13', '2021-07-28 18:09:13', '03c7f6fe-08dd-4b6d-9764-3ea65f83ded2'),
(34, 34, 1, 'home', '__home__', 1, '2021-07-28 18:09:47', '2021-07-28 18:09:47', '002405c1-eff6-4252-a398-623a8faf1b93'),
(36, 36, 1, 'home', '__home__', 1, '2021-07-28 18:11:32', '2021-07-28 18:11:32', '1d058efe-5cf5-4df1-a875-ed70f200f5e9'),
(37, 37, 1, 'home', '__home__', 1, '2021-07-28 18:26:46', '2021-07-28 18:26:46', 'fd831b85-9942-450e-9dc6-729b448431e1'),
(40, 40, 1, NULL, NULL, 1, '2021-07-28 18:28:24', '2021-07-28 18:28:24', '152f4df4-f8e2-4874-9302-7c94ad890b43'),
(41, 41, 1, NULL, NULL, 1, '2021-07-28 18:28:25', '2021-07-28 18:28:25', 'f32b21dc-47c6-4a55-bcad-3c6e7e47390a'),
(42, 42, 1, NULL, NULL, 1, '2021-07-28 18:28:26', '2021-07-28 18:28:26', 'f094d5aa-d0b7-4462-b580-2899858f0e50'),
(43, 43, 1, NULL, NULL, 1, '2021-07-28 18:28:51', '2021-07-28 18:28:51', 'b87114ff-03e3-4651-9eae-50529471ed3b'),
(44, 44, 1, NULL, NULL, 1, '2021-07-28 18:28:55', '2021-07-28 18:28:55', 'de8b7012-615a-42b2-85e5-c402983e5bf9'),
(45, 45, 1, NULL, NULL, 1, '2021-07-28 18:28:58', '2021-07-28 18:28:58', 'f1897e72-b78f-491a-a09b-728e11822ebf'),
(46, 46, 1, NULL, NULL, 1, '2021-07-28 18:29:00', '2021-07-28 18:29:00', 'dca46592-ecce-44c7-b45b-2646368f3de1'),
(47, 47, 1, NULL, NULL, 1, '2021-07-28 18:29:01', '2021-07-28 18:29:01', 'd9515b85-63d9-4d89-9e7e-e16d569c45ac'),
(48, 48, 1, NULL, NULL, 1, '2021-07-28 18:29:01', '2021-07-28 18:29:01', '2ca81ec3-d10f-4c39-8c81-6c01d26911f7'),
(49, 49, 1, NULL, NULL, 1, '2021-07-28 18:29:06', '2021-07-28 18:29:06', '120764da-3fad-4040-a049-7054c889aa04'),
(50, 50, 1, NULL, NULL, 1, '2021-07-28 18:29:06', '2021-07-28 18:29:06', '431545df-633b-4f90-8fb1-7596bc1cf175'),
(51, 51, 1, NULL, NULL, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', 'b5ed0f38-87e5-46eb-94f2-d4c8906e6bde'),
(52, 52, 1, NULL, NULL, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', 'ad6377f2-ced1-42fc-8a77-0fb8c40c05b1'),
(53, 53, 1, NULL, NULL, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '028a07cd-01ab-4c27-9f3b-22da6427e960'),
(54, 54, 1, NULL, NULL, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '0ffb24bd-1f24-4621-9f17-26f2b67771f2'),
(57, 57, 1, NULL, NULL, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', 'c159dc98-cc6f-4f87-aac0-4e73aed99e11'),
(58, 58, 1, NULL, NULL, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', '315977c2-7297-4d59-94cb-c073eeaca248'),
(59, 59, 1, NULL, NULL, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', 'bd44b652-6040-4670-ad1c-080d9e4cac6e'),
(60, 60, 1, 'home', '__home__', 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'd083b723-fb64-44bf-aaae-e120d5f78721'),
(61, 61, 1, NULL, NULL, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '61817b1c-8c50-40a5-bc54-5e0aec6a70a9'),
(62, 62, 1, NULL, NULL, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'dcc4227f-30b1-4d5c-b576-84fccdca058f'),
(63, 63, 1, NULL, NULL, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'f29c6949-6e8c-4d31-8371-6b222ce61eeb'),
(68, 68, 1, NULL, NULL, 1, '2021-07-28 18:33:40', '2021-07-28 18:33:40', '15e615b0-7f7a-4d6f-97ed-d4c5fe4395f0'),
(69, 69, 1, NULL, NULL, 1, '2021-07-28 18:33:45', '2021-07-28 18:33:45', '81d50b10-0fc2-44b6-b7af-c8a6697c3337'),
(70, 70, 1, NULL, NULL, 1, '2021-07-28 18:33:48', '2021-07-28 18:33:48', '24a3f544-3a79-4565-801c-733f746c0760'),
(71, 71, 1, NULL, NULL, 1, '2021-07-28 18:33:49', '2021-07-28 18:33:49', '6476d2b0-fde3-4e9d-a4e3-835d30ee5108'),
(72, 72, 1, NULL, NULL, 1, '2021-07-28 18:33:52', '2021-07-28 18:33:52', '9f150f59-d9df-494f-b474-4d612c182008'),
(73, 73, 1, NULL, NULL, 1, '2021-07-28 18:33:57', '2021-07-28 18:33:57', 'e71917c7-6c3a-4b96-b2a6-bf37d28c3cef'),
(74, 74, 1, NULL, NULL, 1, '2021-07-28 18:33:58', '2021-07-28 18:33:58', '50e3d0e3-7f16-4546-a73f-4e65f4914a47'),
(75, 75, 1, NULL, NULL, 1, '2021-07-28 18:33:58', '2021-07-28 18:33:58', 'd6d65d9c-1635-465d-b31a-098f125398ac'),
(76, 76, 1, NULL, NULL, 1, '2021-07-28 18:34:00', '2021-07-28 18:34:00', '414a2fe8-adeb-495c-9598-9b11207fc50f'),
(77, 77, 1, NULL, NULL, 1, '2021-07-28 18:34:00', '2021-07-28 18:34:00', 'b406a89d-a7bd-4476-b212-c90d2caef703'),
(78, 78, 1, NULL, NULL, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', '890c251d-0fd7-4678-a7b3-90e5f40336bb'),
(79, 79, 1, NULL, NULL, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', 'eb6ded52-2bd8-4ff6-a58c-fcb13de692a7'),
(80, 80, 1, NULL, NULL, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', '6acacd4c-b2b7-434a-887a-67bea7317ab5'),
(81, 81, 1, NULL, NULL, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', '0fad2478-87c7-4268-b16c-0d6ec0826353'),
(82, 82, 1, NULL, NULL, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', 'a56502c5-b0a6-4f2a-92e6-87d5735b1ced'),
(83, 83, 1, NULL, NULL, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', '3e9d084e-acf0-49c8-91c1-549e160cb189'),
(84, 84, 1, NULL, NULL, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', 'f98bd573-d73a-4fa7-bb26-2ebdc43e80f1'),
(85, 85, 1, NULL, NULL, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', '24b61790-87a8-4019-8d7b-dc0014debb24'),
(86, 86, 1, NULL, NULL, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', '14bbbba7-ff4d-40cc-a3da-749ed817728a'),
(87, 87, 1, NULL, NULL, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '0d953136-d5fc-4bc4-b27b-ae7076839d3d'),
(88, 88, 1, NULL, NULL, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '26cc5395-9d9e-4bbc-83b6-092f6bed2c28'),
(89, 89, 1, NULL, NULL, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', 'cdc2a637-73c8-4e02-84db-afb93efe96e0'),
(90, 90, 1, NULL, NULL, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '09889c36-1a24-4457-88f8-1b116e709a0f'),
(91, 91, 1, NULL, NULL, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', 'b29da2d0-c80f-4af9-a5c8-2b6c94d88875'),
(92, 92, 1, NULL, NULL, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '10bd0ada-14bd-43dc-9977-aa6f97755211'),
(93, 93, 1, NULL, NULL, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', '819d7354-8fed-4af8-8cd5-eb55eafea6ed'),
(94, 94, 1, NULL, NULL, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', '286873aa-b8a3-4808-aefb-886fd9b9dc19'),
(95, 95, 1, NULL, NULL, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', 'd0a1672a-c1dd-4944-ae21-6054afefcc56'),
(99, 99, 1, NULL, NULL, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '4c507429-f7dc-44a3-a2d7-374707e0c94d'),
(100, 100, 1, NULL, NULL, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '8c6d6d8b-e6f2-493e-8d4f-89d6c75cd236'),
(101, 101, 1, NULL, NULL, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '9887b9f1-488b-485a-a9c0-30166b07aca1'),
(102, 102, 1, 'home', '__home__', 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'a5f86020-52a8-47a1-9333-244e7bf0c476'),
(103, 103, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'e9aa3692-d204-44a8-b549-32aa2222f27c'),
(104, 104, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'adb8f25c-12bc-419a-98fc-bd28e46d478f'),
(105, 105, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'b131aad5-81d2-4412-b56c-0a4e28e68104'),
(106, 106, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '73d8e301-739b-429c-83d6-727676bf5480'),
(107, 107, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'e81d1356-0917-4993-91af-fa8ad889e01f'),
(108, 108, 1, NULL, NULL, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'b7d21413-c232-41dd-94b5-18c025c9e791'),
(109, 109, 1, 'home', '__home__', 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'a960bdbd-4d18-4434-8343-fa70ca802b44'),
(110, 110, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'a77f60fe-a224-47df-be69-f555bee1fe5e'),
(111, 111, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '5690201f-c788-4937-9aa0-9238da31aaf1'),
(112, 112, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '3cc63895-026e-477a-b06e-5c5acad8fb66'),
(113, 113, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '4ac8c037-1e1f-4626-9d3f-a25af1250487'),
(114, 114, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'a9a16cdc-9b80-4725-ba02-17c413782019'),
(115, 115, 1, NULL, NULL, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '13ed4d17-677e-4ca0-8a7d-c643c473ea20'),
(123, 123, 1, NULL, NULL, 1, '2021-07-29 06:48:24', '2021-07-29 06:48:24', '124284ea-d937-4195-bcbc-8e4e38f9066a'),
(124, 124, 1, 'home', '__home__', 1, '2021-07-29 06:48:32', '2021-07-29 06:48:32', 'a8e3c359-34d8-4f5b-a5f1-291a084ca647'),
(125, 125, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'a1abce69-801e-4882-abae-9d8220c5e077'),
(126, 126, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '7f1ce9a1-dae9-48d7-926a-baf4dad0106a'),
(127, 127, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '64fc998b-4080-4acd-bbb0-e0c246dd08f7'),
(128, 128, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '83001f6b-7838-41aa-adc2-cb2df569b826'),
(129, 129, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '3a49446b-0948-4784-8205-a98e3d96e7f5'),
(130, 130, 1, NULL, NULL, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '8eeef827-0472-42f8-8731-74f3683b6446'),
(131, 131, 1, 'home', '__home__', 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '8e56c766-40a1-41e3-9902-6df9dbd3de7b'),
(132, 132, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'f5d8944e-0a99-467b-8f52-382c56451c18'),
(133, 133, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '52c5783a-fbdd-4ba3-8b3f-b156fbf61dc8'),
(134, 134, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'a0c9ddc9-1bd0-4348-b060-72e6f75d1a98'),
(135, 135, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '51eb074d-7120-41d0-8116-4c3238658f99'),
(136, 136, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'ab305938-5096-466b-b67c-71666a211b82'),
(137, 137, 1, NULL, NULL, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'a24ccb87-c1f4-48db-b22a-222d28400e51'),
(145, 145, 1, 'home', '__home__', 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '2ff69d42-4a68-47fe-94bf-9c0bac189b97'),
(146, 146, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '80515c07-c476-435e-9b02-30bdd387b77d'),
(147, 147, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '041aa128-8552-44f5-b760-533317102d52'),
(148, 148, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '66f5ea45-a022-425b-bc69-d6d8018572a9'),
(149, 149, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'e78eaa25-a45a-484a-a315-2dd035f6f45d'),
(150, 150, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '774de829-adb1-45cd-9612-dfaf7b46f29f'),
(151, 151, 1, NULL, NULL, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '8128282b-8a1e-468e-90e3-4afeef22f340'),
(152, 152, 1, 'home', '__home__', 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '2c1c560e-05a7-4ff3-be2b-c634981725ea'),
(153, 153, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'c43c5338-30c5-4958-8de7-f69b9487a893'),
(154, 154, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'faa57f67-0c74-4114-baab-258c16d77f34'),
(155, 155, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'dc149881-609b-4a68-9daa-91fdc4169f88'),
(156, 156, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '1137d52c-eeea-4636-908f-091ecfa9f429'),
(157, 157, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'c5e0c25d-f930-4391-82a0-c3e3973ae664'),
(158, 158, 1, NULL, NULL, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '09d225b5-725a-4bea-a2ff-a5fadf7577f9'),
(166, 166, 1, 'home', '__home__', 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'ecce22fa-bc6d-4dc2-a43c-50ba392a4a86'),
(167, 167, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '1b89fc3d-af04-4013-8fd1-b3dc25c496cf'),
(168, 168, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '5710dcef-3da1-4789-a639-9f43ce946046'),
(169, 169, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'b13a4f34-63e4-419a-b2a4-cf8456b0f4af'),
(170, 170, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '60005906-8a8f-4612-80d8-50b238b5034b'),
(171, 171, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '9bad0592-6731-4c24-a6e5-b07e7e0e2932'),
(172, 172, 1, NULL, NULL, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '774fb9ab-6057-4cd0-a351-41b5f2753c76'),
(180, 180, 1, 'home', '__home__', 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'b5bd8967-09d1-44ed-8e0f-8d09cd8f1d7a'),
(181, 181, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '49cc3223-5943-41f9-a82a-3f0ec8e78c0d'),
(182, 182, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '0e8afef9-a770-4474-9550-5b7a401eac93'),
(183, 183, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '180d8fda-ccab-4ff7-99f7-ba7b00efeb72'),
(184, 184, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '914a191a-cb32-4c1a-aa6f-ba8953ffe4c6'),
(185, 185, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '0a2698da-3fce-4717-8b95-c08a889dbdf4'),
(186, 186, 1, NULL, NULL, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'fd6120d5-0799-4106-a4fe-b1219e7533aa'),
(187, 187, 1, 'home', '__home__', 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '61caf06c-57e1-4106-b3b0-7260a97ad00b'),
(188, 188, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '3263b8ee-9912-4fe7-a720-2a1b8ced425e'),
(189, 189, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'b68aa4e0-79ef-4d34-a296-4ed5c87a56a5'),
(190, 190, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '1637dfa6-304e-431a-83b1-c1f5b4f79e99'),
(191, 191, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '8d709c2e-e85c-45d9-b6e6-31611c472ad5'),
(192, 192, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'bd3a8e00-eb58-4378-bf6a-2f242ed928bb'),
(193, 193, 1, NULL, NULL, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '6817c50b-fdbf-459b-89f7-372e9d15933c');

-- --------------------------------------------------------

--
-- Table structure for table `bao_entries`
--

CREATE TABLE `bao_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_entries`
--

INSERT INTO `bao_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, 1, '2021-07-28 11:27:00', NULL, 1, '2021-07-28 11:27:10', '2021-07-28 11:27:10', 'a92dd520-95b8-4ae7-abda-555c959e8a9c'),
(3, 1, NULL, 1, 1, '2021-07-28 11:27:00', NULL, 1, '2021-07-28 11:27:38', '2021-07-28 11:27:38', '5ce636a7-4ea9-46f4-8cd9-8ae248e304a5'),
(4, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 15:47:20', '2021-07-28 15:47:20', 'f9f6cccb-c23d-4e6a-a451-5406f13b2e0a'),
(5, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 15:47:20', '2021-07-28 15:47:20', 'f6cb9e86-1549-4cc0-b268-34484c2aa686'),
(6, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 16:56:54', '2021-07-28 16:56:54', 'ffb3d0ae-69de-44b8-970b-4350be36be68'),
(7, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 16:58:19', '2021-07-28 16:58:19', '8535c681-6918-4ac0-a573-54866b48cb0f'),
(8, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 16:59:10', '2021-07-28 16:59:10', 'e44d683b-f6ef-40aa-b53b-528c86855dc0'),
(10, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 16:59:39', '2021-07-28 16:59:39', '2666a679-7708-4fc6-a9d5-1727fe03ee74'),
(14, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 17:07:38', '2021-07-28 17:07:38', 'd9cb627e-49cb-4f2e-ac10-9c8fc5ce1de1'),
(15, 3, NULL, 3, NULL, '2021-07-28 17:28:00', NULL, 1, '2021-07-28 17:28:06', '2021-07-28 17:28:06', 'a14bf446-7a80-4a37-9f5a-18125f349c13'),
(16, 3, NULL, 3, NULL, '2021-07-28 17:28:00', NULL, NULL, '2021-07-28 17:28:06', '2021-07-28 17:28:06', '0f985f55-71db-4559-88b1-0eb035494681'),
(17, 3, NULL, 3, NULL, '2021-07-28 17:28:00', NULL, NULL, '2021-07-28 17:28:24', '2021-07-28 17:28:24', '1def1188-d09b-4f24-adf0-9672dfec555f'),
(18, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 17:29:10', '2021-07-28 17:29:10', 'bb47faa9-593b-40ab-ae3c-a829f5b2b9da'),
(19, 4, NULL, 4, NULL, '2021-07-28 17:29:00', NULL, 1, '2021-07-28 17:29:31', '2021-07-28 17:29:31', 'fe553438-cf20-4913-9c2f-cd252b2ff9b3'),
(20, 4, NULL, 4, NULL, '2021-07-28 17:29:00', NULL, NULL, '2021-07-28 17:29:31', '2021-07-28 17:29:31', 'a49d83eb-8460-413c-839a-033bb34de6e9'),
(22, 3, NULL, 3, NULL, '2021-07-28 17:28:00', NULL, NULL, '2021-07-28 17:30:04', '2021-07-28 17:30:04', '8484a94e-6646-420a-a3ec-9d7f00863f2c'),
(23, 4, NULL, 4, NULL, '2021-07-28 17:29:00', NULL, NULL, '2021-07-28 17:30:46', '2021-07-28 17:30:46', 'a4ebd73d-18eb-47e9-83fa-792d7cf0d0d5'),
(25, 4, NULL, 4, NULL, '2021-07-28 17:29:00', NULL, NULL, '2021-07-28 17:31:08', '2021-07-28 17:31:08', 'ea563b44-0530-440e-9c96-5903cf6a6144'),
(26, 3, NULL, 3, NULL, '2021-07-28 17:28:00', NULL, NULL, '2021-07-28 17:42:31', '2021-07-28 17:42:31', 'ec85d6d8-5b17-45db-bfc9-93d21e82324b'),
(27, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 17:47:30', '2021-07-28 17:47:30', '67b0c159-a3c4-4444-968b-526dd526f71d'),
(28, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 17:47:38', '2021-07-28 17:47:38', 'a9ca26b5-d470-4fb4-9295-69e82af1c716'),
(30, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 17:48:15', '2021-07-28 17:48:15', '4dfe35ef-d418-4269-9bac-7da1371938f4'),
(31, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:05:53', '2021-07-28 18:05:53', '4ac6c537-305f-4c70-8b8c-610c7cb7bbf9'),
(32, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:05:54', '2021-07-28 18:05:54', '971e3781-fdcf-4657-8a70-fca8d266f069'),
(33, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:09:13', '2021-07-28 18:09:13', '17a74ff2-4ee0-4113-ac16-8d1f8ef186bc'),
(34, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:09:47', '2021-07-28 18:09:47', 'de69981b-0dc9-47a1-b9ae-97db30f02298'),
(36, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:11:32', '2021-07-28 18:11:32', '3f3b9306-b082-48d0-b5c3-a944b99af03e'),
(37, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:26:46', '2021-07-28 18:26:46', 'ca0ae8ab-3f9a-4e24-89d7-c706e47588d3'),
(60, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '74a9d389-2aa4-437f-9d85-1433e57fbb31'),
(102, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'b4b4e3bb-3cf6-4dda-b711-f89531f0da8d'),
(109, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '355ad62c-2794-4397-8bc3-c86e2de3babd'),
(124, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 06:48:32', '2021-07-29 06:48:32', '19bf697b-fb39-4252-a300-ac9f89662b28'),
(131, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'bdeb289d-ef29-4e80-ac08-c22c12fcde5f'),
(145, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '90cc1546-02ed-4d28-b31e-a146bff00370'),
(152, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'a4b1aa38-df20-4c46-9f64-4a1b8eb7403d'),
(166, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'fc23bea4-b00c-42f2-b255-4f8428a2afb9'),
(180, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '763f73d1-6510-4e44-85b1-b2fb18d5712f'),
(187, 2, NULL, 2, NULL, '2021-07-28 15:47:00', NULL, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '4e87d9ba-e9cd-4ce5-a6f7-d349b8ef18b6');

-- --------------------------------------------------------

--
-- Table structure for table `bao_entrytypes`
--

CREATE TABLE `bao_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_entrytypes`
--

INSERT INTO `bao_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Default', 'default', 1, 'site', NULL, NULL, 1, '2021-07-28 11:26:59', '2021-07-28 11:26:59', '2021-07-28 11:29:07', 'd5a92d0a-bedb-4b41-b300-3257e8eee0cd'),
(2, 2, 2, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2021-07-28 15:47:19', '2021-07-28 18:05:54', NULL, '178ae8bc-0106-4a41-ad55-9c250c0c761d'),
(3, 3, 4, 'Home Banner 2', 'homeBanner2', 0, 'site', NULL, '{section.name|raw}', 1, '2021-07-28 17:28:06', '2021-07-28 17:28:06', '2021-07-28 17:46:48', '1ea5d8aa-d2c8-44be-82ce-4472d2433b6a'),
(4, 4, 5, 'Home-Banner-3', 'homeBanner3', 0, 'site', NULL, '{section.name|raw}', 1, '2021-07-28 17:29:31', '2021-07-28 17:29:31', '2021-07-28 17:46:50', 'eb34af17-6fc3-42c4-aac8-fdd32a990ac0');

-- --------------------------------------------------------

--
-- Table structure for table `bao_fieldgroups`
--

CREATE TABLE `bao_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_fieldgroups`
--

INSERT INTO `bao_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2021-07-27 11:10:28', '2021-07-27 11:10:28', NULL, 'e85b409e-763e-4089-9fab-e552b8e9e4c4'),
(2, 'card', '2021-07-28 11:28:07', '2021-07-28 11:28:07', NULL, '23fd8410-c22f-4ce2-b9e9-ee18ea33273b'),
(3, 'Home Banner 1', '2021-07-28 16:01:31', '2021-07-28 17:19:50', NULL, '6ea547fb-7732-477d-a633-073ad70b7233'),
(4, 'Home Banner 2', '2021-07-28 17:19:56', '2021-07-28 17:19:56', NULL, '7a277a0a-ee6c-4522-b7fa-8e3021062db2'),
(5, 'Home Banner 3', '2021-07-28 17:20:00', '2021-07-28 17:20:00', NULL, '82722da7-1dd7-4f9e-9464-3763ba530b9c'),
(6, 'MiddleContent', '2021-07-28 18:07:07', '2021-07-28 18:07:07', NULL, 'd704237c-11fc-46b1-8ca4-400a705e7aa4'),
(7, 'home blue section', '2021-07-29 06:45:07', '2021-07-29 06:45:07', NULL, '7f2b0963-a4ad-4703-840c-08c8724c33b1'),
(8, 'Home Contact', '2021-07-29 06:54:38', '2021-07-29 06:54:38', NULL, 'edaea6ac-1538-4dda-9d2d-85a8636bae59'),
(9, 'Footer', '2021-07-29 06:57:25', '2021-07-29 06:57:25', NULL, '9732aa51-b630-40a6-96e6-bb26790edb8b');

-- --------------------------------------------------------

--
-- Table structure for table `bao_fieldlayoutfields`
--

CREATE TABLE `bao_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_fieldlayoutfields`
--

INSERT INTO `bao_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(11, 4, 8, 5, 0, 1, '2021-07-28 17:28:24', '2021-07-28 17:28:24', 'a6834a41-6854-46bd-8d28-f1953f4733b2'),
(12, 4, 8, 6, 0, 2, '2021-07-28 17:28:24', '2021-07-28 17:28:24', 'c16b7f56-1851-4ef1-afc3-35c0d43e4901'),
(13, 4, 8, 7, 0, 3, '2021-07-28 17:28:24', '2021-07-28 17:28:24', '6d819e32-bf43-4eba-a63f-c46c9baa9c4f'),
(14, 4, 8, 8, 0, 4, '2021-07-28 17:28:24', '2021-07-28 17:28:24', '8dbb0f00-e703-42af-a680-f9995867f29d'),
(19, 5, 11, 9, 0, 1, '2021-07-28 17:30:46', '2021-07-28 17:30:46', '0dadfdfe-fa86-4c26-b182-e33198d3c52a'),
(20, 5, 11, 10, 0, 2, '2021-07-28 17:30:46', '2021-07-28 17:30:46', '59516472-009c-4fdb-98b9-7ff556aee488'),
(21, 5, 11, 11, 0, 3, '2021-07-28 17:30:46', '2021-07-28 17:30:46', '6a15b0ae-740f-4e06-aacf-d2bd945e434a'),
(22, 5, 11, 12, 0, 4, '2021-07-28 17:30:46', '2021-07-28 17:30:46', '129d9f24-53eb-4e06-8187-4f974320fdb2'),
(111, 6, 36, 19, 0, 0, '2021-07-28 18:33:27', '2021-07-28 18:33:27', '899e8e5d-cc9d-4cbe-982c-8e5970b99682'),
(112, 6, 36, 18, 0, 1, '2021-07-28 18:33:27', '2021-07-28 18:33:27', '8f8a71b5-2b8c-49ef-bf8d-334f96ee5a0c'),
(113, 6, 36, 20, 0, 2, '2021-07-28 18:33:27', '2021-07-28 18:33:27', '70df983f-c732-4c2a-90f8-be6ce76c4099'),
(114, 6, 36, 21, 0, 3, '2021-07-28 18:33:27', '2021-07-28 18:33:27', 'f5aee9d1-aa23-477a-983f-cca1273f642c'),
(115, 6, 36, 22, 0, 4, '2021-07-28 18:33:27', '2021-07-28 18:33:27', '3c1fdae1-fb7b-46e4-a993-5058e9af222c'),
(183, 2, 58, 1, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '0a91794e-485f-49a1-aaad-c7dbe1edf0b8'),
(184, 2, 58, 2, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'c5b20fde-dabf-4ac5-a57c-1c23e98e1040'),
(185, 2, 58, 3, 0, 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '4ecee54d-48be-4d39-9468-9e5b2832679e'),
(186, 2, 58, 4, 0, 4, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'f5f4bd20-1b29-4ede-973e-40bdff5b79fd'),
(187, 2, 59, 5, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '1272d0b7-1f8e-4105-b7d3-cf2d2a1b0916'),
(188, 2, 59, 6, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '5525da70-a523-4cbf-beae-9040d9a48575'),
(189, 2, 59, 7, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '2f529726-77d8-4c17-9eff-9feef86ce75b'),
(190, 2, 59, 8, 0, 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '6a3be876-6365-44e4-86cd-83d3982dfc6e'),
(191, 2, 60, 9, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '24635d9a-d78a-4e1b-b0a7-51ca9884afa1'),
(192, 2, 60, 10, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'ab9ee8fe-b5a1-4dc5-9b5f-67544b8fd74f'),
(193, 2, 60, 11, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '3091e4fd-a8d2-4787-bcd2-c7cddc969937'),
(194, 2, 60, 12, 0, 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '1d01d269-04a6-415c-a124-82d913ec8a0e'),
(195, 2, 61, 13, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'ceb3aa8b-6552-4f4d-be15-46c95d962f48'),
(196, 2, 61, 14, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '30860853-ce40-4a3e-b097-cef032df1878'),
(197, 2, 61, 15, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '4442e700-e626-4801-aa9d-b27ea399bd1c'),
(198, 2, 62, 17, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '8cb8f97a-36bd-4136-bc25-c502da9b1243'),
(199, 2, 63, 24, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'dc0313ca-6b72-4e89-a6cf-d9b94acb3b43'),
(200, 2, 63, 23, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '56d10765-f752-403c-a8d9-180847db5108'),
(201, 2, 63, 25, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '5b1e152e-f714-4c8f-ad07-fcda9020ec95'),
(202, 2, 63, 26, 0, 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '67478d59-c453-4314-a16b-f3dc81bcd5f1'),
(203, 2, 64, 27, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '4e7c05f4-cca1-4987-9772-e5e28b4d6c0a'),
(204, 2, 64, 28, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '88e68ce2-6266-4cad-bd80-ffe2139c5cd9'),
(205, 2, 65, 29, 0, 0, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '43f02556-cdb6-4a9b-8c62-815e58b54f7e'),
(206, 2, 65, 30, 0, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '9c80a7e6-743e-4e07-8e17-84a1c9cabb47'),
(207, 2, 65, 31, 0, 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '3455cbc3-0c6e-4dde-b198-cce5b7adafc0'),
(208, 2, 65, 32, 0, 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '7839b23e-d7bb-4e02-8635-fe81b3b5d381'),
(209, 2, 65, 33, 0, 4, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'bc5c1aef-c714-4fa3-8263-ede03899c2ae'),
(210, 2, 65, 35, 0, 5, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '24f69e1b-99cc-4ca7-9742-62da515d87c9'),
(211, 2, 65, 34, 0, 6, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '36f001c3-289b-4bb4-b83a-5a5eb25580dd');

-- --------------------------------------------------------

--
-- Table structure for table `bao_fieldlayouts`
--

CREATE TABLE `bao_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_fieldlayouts`
--

INSERT INTO `bao_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2021-07-28 11:26:59', '2021-07-28 11:26:59', '2021-07-28 11:29:07', 'c0eee488-aefb-4e6e-9eab-4696926b610a'),
(2, 'craft\\elements\\Entry', '2021-07-28 15:47:19', '2021-07-28 15:47:19', NULL, 'be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16'),
(3, 'craft\\elements\\Asset', '2021-07-28 15:59:04', '2021-07-28 15:59:04', NULL, '77daae1e-77aa-41be-9c65-839a294eb8f5'),
(4, 'craft\\elements\\Entry', '2021-07-28 17:28:06', '2021-07-28 17:28:06', '2021-07-28 17:46:48', '4241740c-4bc0-4755-8610-f133c70b98e8'),
(5, 'craft\\elements\\Entry', '2021-07-28 17:29:31', '2021-07-28 17:29:31', '2021-07-28 17:46:50', '1cb63a8e-f3d2-47e3-b021-779ba7143946'),
(6, 'craft\\elements\\MatrixBlock', '2021-07-28 18:26:28', '2021-07-28 18:26:28', NULL, '4d6775b0-8092-4a23-b532-f44c4bf9d8c1');

-- --------------------------------------------------------

--
-- Table structure for table `bao_fieldlayouttabs`
--

CREATE TABLE `bao_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_fieldlayouttabs`
--

INSERT INTO `bao_fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-28 11:26:59', '2021-07-28 11:26:59', '311cb46a-94d1-4820-bb9e-93e53e4bc15b'),
(3, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-07-28 15:59:04', '2021-07-28 15:59:04', '9494b742-d70c-46bf-9f7a-5ce230820ee2'),
 (8, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"60f59284-2f43-4dba-ab5a-012ef113d8f6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"623423b0-765e-40ba-8b74-91f6275846cc\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2\"}]', 1, '2021-07-28 17:28:24', '2021-07-28 17:28:24', '31e2cde0-c19f-49e0-aaf5-4e760d07eecd'),
 (11, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"4b95413d-708c-41ea-9401-2b18a9d4e719\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c519cc4e-184b-407b-a0d2-fda61f904828\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"8de780dc-3b2e-429f-821f-04af829ae293\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d4f6ab0b-63fb-468b-8f95-eb09218db0b9\"}]', 1, '2021-07-28 17:30:46', '2021-07-28 17:30:46', 'f29ecb5c-ac04-4547-9793-c1a2d4e7bee1'),
 (36, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"500e1a67-48df-4cde-805d-aea18054434c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7f2485d2-c5a3-481d-80a6-5f2873f12039\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"aab2b4b1-eb1d-404d-9277-ca1103cf4062\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"9f841d87-d06b-42ad-aa43-b94acfb9ef80\"}]', 1, '2021-07-28 18:33:27', '2021-07-28 18:33:27', '72ab36a0-f0fa-4f25-b92f-54a4d740a6bb'),
 (58, 2, 'Banner Tab 1', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2ec35f1a-ce92-4a7d-9cd5-091a0597a602\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d4d31591-60bd-4408-abfd-f6690663b811\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0d995f2b-c48f-4124-afb7-de8f54e80bf3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"07155247-ec99-4c47-a713-75bdd40bf1ad\"}]', 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'a30a4b39-8ce7-40cf-8ce9-c1c80d6cbceb'),
 (59, 2, 'Banner Tab 2', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"60f59284-2f43-4dba-ab5a-012ef113d8f6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"623423b0-765e-40ba-8b74-91f6275846cc\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2\"}]', 2, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '55bd9964-b242-463b-92ba-70788843d451'),
 (60, 2, 'Banner Tab 3', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"4b95413d-708c-41ea-9401-2b18a9d4e719\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c519cc4e-184b-407b-a0d2-fda61f904828\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"8de780dc-3b2e-429f-821f-04af829ae293\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d4f6ab0b-63fb-468b-8f95-eb09218db0b9\"}]', 3, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'a974b7ea-6e50-4da4-9823-70c04c4bedd5'),
 (61, 2, 'Middle Intro', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"57242f8d-0c33-46b1-8f55-5bcafcbced44\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f776acaa-08b3-4ea5-a697-d36aacf95da5\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"31175c8e-9ffa-402b-bb55-0284dde8d9c9\"}]', 4, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '2b6d654d-ea55-443b-81b9-e43463781bca'),
 (62, 2, 'Cards', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e086403e-cb4a-4067-bc9a-2499f48f4ce2\"}]', 5, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'aee5deec-6754-41df-9338-37a71d51526c'),
 (63, 2, 'Blue Section', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5567ee76-83a7-47d6-9e0d-2517d8eca698\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"cc570e1e-cde3-4bb7-a76b-68c83b676eac\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2030c2a6-434f-4f19-8a52-62114facdfea\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ef996b5c-981c-4112-b43f-57ed82543500\"}]', 6, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '634c31cc-9eb7-4d7f-ae08-319e37773b10'),
 (64, 2, 'Contact Us', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f618f24d-1432-4a01-b327-c470351c42d8\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c51301b9-676d-4cf3-ae32-ba06ede6d98b\"}]', 7, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'bf53fac3-e301-49d7-9171-0b9ff08ee947'),
 (65, 2, 'Footer', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"10b3d775-4f2f-43be-9de2-1d1039b56756\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a8e37e54-11aa-49bc-bfdf-b251e3eeebe2\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b66dbdd1-6747-42d7-8227-38d75916f449\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"31719a5f-4a18-44bb-9b82-832aa75b2957\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"81694b47-4192-42ec-8785-18ec79a57ec3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2b2d4db6-ead8-498d-b816-7e16c41bea7a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5f122c15-582f-4e17-a1b3-8e54482c2b1d\"}]', 8, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'c78e72dd-cf42-4367-a7eb-503d8a039fdd');

-- --------------------------------------------------------

--
-- Table structure for table `bao_fields`
--

CREATE TABLE `bao_fields` (
                              `id` int(11) NOT NULL,
                              `groupId` int(11) DEFAULT NULL,
                              `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                              `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
                              `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
                              `columnSuffix` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `instructions` text COLLATE utf8_unicode_ci,
                              `searchable` tinyint(1) NOT NULL DEFAULT '1',
                              `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
                              `translationKeyFormat` text COLLATE utf8_unicode_ci,
                              `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                              `settings` text COLLATE utf8_unicode_ci,
                              `dateCreated` datetime NOT NULL,
                              `dateUpdated` datetime NOT NULL,
                              `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_fields`
--

INSERT INTO `bao_fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 'Banner-1-Image', 'banner1Image', 'global', NULL, 'Top Banner Image', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Update Background Image\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2021-07-28 16:04:15', '2021-07-28 17:14:45', '2ec35f1a-ce92-4a7d-9cd5-091a0597a602'),
(2, 3, 'Banner-1-Title', 'banner1Title', 'global', 'eewflaea', 'Two line Display Intro of Tab 1', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":\"Here we have a two line display intro. (Tab 1)\",\"uiMode\":\"normal\"}', '2021-07-28 16:55:51', '2021-07-28 16:55:51', 'd4d31591-60bd-4408-abfd-f6690663b811'),
(3, 3, 'Banner-1-intro', 'banner1Intro', 'global', 'vvboyfvv', 'Introduction text of banner 1', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 16:57:33', '2021-07-28 16:57:33', '0d995f2b-c48f-4124-afb7-de8f54e80bf3'),
(4, 3, 'Banner-1-Link', 'banner1Link', 'global', 'gdboomim', 'URL of Banner 1', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-28 16:58:02', '2021-07-28 16:58:02', '07155247-ec99-4c47-a713-75bdd40bf1ad'),
(5, 4, 'Banner-2-Image', 'banner2Image', 'global', NULL, 'Image of Banner 2', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2021-07-28 17:23:07', '2021-07-28 17:35:47', '60f59284-2f43-4dba-ab5a-012ef113d8f6'),
(6, 4, 'Banner-2-Title', 'banner2Title', 'global', 'iluthuab', 'Two line Display Intro of Tab 2', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":\"Two line Display Intro of Tab 2\",\"uiMode\":\"normal\"}', '2021-07-28 17:23:44', '2021-07-28 17:41:33', '623423b0-765e-40ba-8b74-91f6275846cc'),
(7, 4, 'Banner-2-Intro', 'banner2Intro', 'global', 'qxiwlxjp', 'Intro Text of banner 2', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 17:24:23', '2021-07-28 17:24:23', 'f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead'),
(8, 4, 'Banner-2-Link', 'banner2Link', 'global', 'gbyrdvrz', 'URL of Banner 2', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-28 17:24:42', '2021-07-28 17:24:42', '889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2'),
(9, 5, 'Banner-3-Image', 'banner3Image', 'global', NULL, 'Image of banner 3', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2021-07-28 17:25:25', '2021-07-28 17:36:06', '4b95413d-708c-41ea-9401-2b18a9d4e719'),
(10, 5, 'Banner-3-Title', 'banner3Title', 'global', 'tqnfzxbc', 'Title of Banner 3, 2 lines', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 17:26:20', '2021-07-28 17:26:20', 'c519cc4e-184b-407b-a0d2-fda61f904828'),
(11, 5, 'Banner 3 Intro', 'banner3Intro', 'global', 'mtvvgelx', 'Intro text of banner 3', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 17:26:42', '2021-07-28 17:26:42', '8de780dc-3b2e-429f-821f-04af829ae293'),
(12, 5, 'Banner-3-Link', 'banner3Link', 'global', 'cnnoduab', 'URL of banner 3', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-28 17:27:00', '2021-07-28 17:27:00', 'd4f6ab0b-63fb-468b-8f95-eb09218db0b9'),
(13, 6, 'MiddleTitle', 'middleTitle', 'global', 'ouzshyep', 'Middle title between slider and card', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 18:07:50', '2021-07-28 18:10:59', '57242f8d-0c33-46b1-8f55-5bcafcbced44'),
(14, 6, 'MiddleIntro', 'middleIntro', 'global', 'hnlmlqql', 'middle intro text between slider and card', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 18:08:09', '2021-07-28 18:11:04', 'f776acaa-08b3-4ea5-a697-d36aacf95da5'),
(15, 6, 'MiddleButton', 'middleButton', 'global', 'nnansqxm', 'button link of middle intro section', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-28 18:09:36', '2021-07-28 18:10:52', '31175c8e-9ffa-402b-bb55-0284dde8d9c9'),
(17, 2, 'cards', 'cards', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_cards}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2021-07-28 18:26:28', '2021-07-28 18:26:28', 'e086403e-cb4a-4067-bc9a-2499f48f4ce2'),
(18, NULL, 'cards-title', 'cardsTitle', 'matrixBlockType:0fb12c8b-904a-4033-87ad-39c6f85bb87c', NULL, '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-28 18:26:28', '2021-07-28 18:27:49', '7f2485d2-c5a3-481d-80a6-5f2873f12039'),
(19, NULL, 'cards-image', 'cardsImage', 'matrixBlockType:0fb12c8b-904a-4033-87ad-39c6f85bb87c', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2021-07-28 18:26:28', '2021-07-28 18:27:49', '500e1a67-48df-4cde-805d-aea18054434c'),
(20, NULL, 'cards intro', 'cardsIntro', 'matrixBlockType:0fb12c8b-904a-4033-87ad-39c6f85bb87c', NULL, '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"enlarged\"}', '2021-07-28 18:26:28', '2021-07-28 18:27:49', 'e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea'),
(21, NULL, 'cards link', 'cardsLink', 'matrixBlockType:0fb12c8b-904a-4033-87ad-39c6f85bb87c', NULL, '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-28 18:27:49', '2021-07-28 18:33:27', 'aab2b4b1-eb1d-404d-9277-ca1103cf4062'),
(22, NULL, 'cards group', 'cardsGroup', 'matrixBlockType:0fb12c8b-904a-4033-87ad-39c6f85bb87c', 'ylrpawib', '', 0, 'none', NULL, 'craft\\fields\\Dropdown', '{\"optgroups\":true,\"options\":[{\"label\":\"group1\",\"value\":\"group1\",\"default\":\"1\"},{\"label\":\"group2\",\"value\":\"group2\",\"default\":\"\"},{\"label\":\"group3\",\"value\":\"group3\",\"default\":\"\"}]}', '2021-07-28 18:33:27', '2021-07-28 18:33:27', '9f841d87-d06b-42ad-aa43-b94acfb9ef80'),
(23, 7, 'media-title', 'mediaTitle', 'global', 'mlggyjzx', 'Two lines heading ', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-07-29 06:45:29', '2021-07-29 06:45:29', 'cc570e1e-cde3-4bb7-a76b-68c83b676eac'),
(24, 7, 'media Image', 'mediaImage', 'global', NULL, 'left image of blue section', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:0826ef63-13c2-4164-b44d-701e67a12144\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2021-07-29 06:45:54', '2021-07-29 06:45:54', '5567ee76-83a7-47d6-9e0d-2517d8eca698'),
(25, 7, 'media intro', 'mediaIntro', 'global', 'qivleibj', 'blue section intro text', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"enlarged\"}', '2021-07-29 06:46:27', '2021-07-29 06:46:27', '2030c2a6-434f-4f19-8a52-62114facdfea'),
(26, 7, 'media link', 'mediaLink', 'global', 'hqszlxju', 'blue section link', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-29 06:46:46', '2021-07-29 06:46:46', 'ef996b5c-981c-4112-b43f-57ed82543500'),
(27, 8, 'contact intro', 'contactIntro', 'global', 'ddwmadjc', 'contact section top message.', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":\"A message followed by a way to get in touch.\",\"uiMode\":\"normal\"}', '2021-07-29 06:55:10', '2021-07-29 06:55:51', 'f618f24d-1432-4a01-b327-c470351c42d8'),
(28, 8, 'contact phone', 'contactPhone', 'global', 'slauzneq', 'contact section phone', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"+44 (0) 1234 567 890\",\"uiMode\":\"normal\"}', '2021-07-29 06:55:43', '2021-07-29 06:55:43', 'c51301b9-676d-4cf3-ae32-ba06ede6d98b'),
(29, 9, 'Footer Address', 'footerAddress', 'global', 'cpjfskik', 'footer section address', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"Floor 5, 12-14 Grey Street, Newcastle upon Tyne, NE1 6TE\",\"uiMode\":\"enlarged\"}', '2021-07-29 06:57:59', '2021-07-29 06:59:35', '10b3d775-4f2f-43be-9de2-1d1039b56756'),
(30, 9, 'footer phone', 'footerPhone', 'global', 'ccuxzwrs', 'footer section contact phone', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"0111 212 8111\",\"uiMode\":\"normal\"}', '2021-07-29 06:58:23', '2021-07-29 06:58:23', 'a8e37e54-11aa-49bc-bfdf-b251e3eeebe2'),
(31, 9, 'footer Email', 'footerEmail', 'global', 'odbxsnns', 'footer section email address', 0, 'none', NULL, 'craft\\fields\\Email', '{\"placeholder\":\"admin@horizonthemes.co.uk\"}', '2021-07-29 06:58:43', '2021-07-29 06:58:43', 'b66dbdd1-6747-42d7-8227-38d75916f449'),
(32, 9, 'facebook', 'facebook', 'global', 'ilsvchce', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-29 07:05:54', '2021-07-29 07:05:54', '31719a5f-4a18-44bb-9b82-832aa75b2957'),
(33, 9, 'instagram', 'instagram', 'global', 'gaizslbb', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-29 07:05:59', '2021-07-29 07:06:08', '81694b47-4192-42ec-8785-18ec79a57ec3'),
(34, 9, 'linkedin', 'linkedin', 'global', 'xolctzhb', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-29 07:06:18', '2021-07-29 07:06:18', '5f122c15-582f-4e17-a1b3-8e54482c2b1d'),
(35, 9, 'twitter', 'twitter', 'global', 'nywcufgq', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":null,\"types\":[\"url\"]}', '2021-07-29 07:06:45', '2021-07-29 07:06:45', '2b2d4db6-ead8-498d-b816-7e16c41bea7a');

-- --------------------------------------------------------

--
-- Table structure for table `bao_globalsets`
--

CREATE TABLE `bao_globalsets` (
                                  `id` int(11) NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `fieldLayoutId` int(11) DEFAULT NULL,
                                  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_gqlschemas`
--

CREATE TABLE `bao_gqlschemas` (
                                  `id` int(11) NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `scope` text COLLATE utf8_unicode_ci,
                                  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_gqltokens`
--

CREATE TABLE `bao_gqltokens` (
                                 `id` int(11) NOT NULL,
                                 `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                 `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                 `enabled` tinyint(1) NOT NULL DEFAULT '1',
                                 `expiryDate` datetime DEFAULT NULL,
                                 `lastUsed` datetime DEFAULT NULL,
                                 `schemaId` int(11) DEFAULT NULL,
                                 `dateCreated` datetime NOT NULL,
                                 `dateUpdated` datetime NOT NULL,
                                 `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_info`
--

CREATE TABLE `bao_info` (
                            `id` int(11) NOT NULL,
                            `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
                            `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
                            `maintenance` tinyint(1) NOT NULL DEFAULT '0',
                            `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
                            `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
                            `dateCreated` datetime NOT NULL,
                            `dateUpdated` datetime NOT NULL,
                            `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_info`
--

INSERT INTO `bao_info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.7.6', '3.7.7', 0, 'gxudxziewaix', 'jpdvbjquedop', '2021-07-27 11:10:28', '2021-07-29 10:58:35', '7cc66e8f-1e42-42e0-a358-847fd3e032d6');

-- --------------------------------------------------------

--
-- Table structure for table `bao_matrixblocks`
--

CREATE TABLE `bao_matrixblocks` (
                                    `id` int(11) NOT NULL,
                                    `ownerId` int(11) NOT NULL,
                                    `fieldId` int(11) NOT NULL,
                                    `typeId` int(11) NOT NULL,
                                    `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                                    `deletedWithOwner` tinyint(1) DEFAULT NULL,
                                    `dateCreated` datetime NOT NULL,
                                    `dateUpdated` datetime NOT NULL,
                                    `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_matrixblocks`
--

INSERT INTO `bao_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(57, 4, 17, 1, 1, NULL, '2021-07-28 18:29:15', '2021-07-28 18:29:15', '00425a46-b2be-458b-ac0c-ac073f0ce9da'),
(58, 4, 17, 1, 2, NULL, '2021-07-28 18:29:15', '2021-07-28 18:29:15', 'f3a88ec8-878c-465a-a307-2464f38daeca'),
(59, 4, 17, 1, 3, NULL, '2021-07-28 18:29:15', '2021-07-28 18:29:15', '07fdb89a-af67-4968-a0c1-24d89c686481'),
(61, 60, 17, 1, 1, NULL, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'd7e575e3-b2ea-41af-8010-68d4fbb09e2d'),
(62, 60, 17, 1, 2, NULL, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '1eb513f8-105e-45ab-a404-c6adeb2813c4'),
(63, 60, 17, 1, 3, NULL, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '22d91f03-3562-432e-b438-988550d8c3fe'),
(99, 4, 17, 1, 4, NULL, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'b57a321b-e280-4a8d-9014-d50f6bfd066f'),
(100, 4, 17, 1, 5, NULL, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'b37d6d9e-7926-4b2d-9a2e-58446c848e6a'),
(101, 4, 17, 1, 6, NULL, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '135e4d63-75fc-4e11-972a-93ad7ec663ba'),
(103, 102, 17, 1, 1, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '20f9e6b8-600e-4597-a5a9-ebb15493ce1f'),
(104, 102, 17, 1, 2, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '637d7e51-9c6b-466d-a7a4-178a9a9efd07'),
(105, 102, 17, 1, 3, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '43ad131e-5776-47bb-a950-1f9a85d3979e'),
(106, 102, 17, 1, 4, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'ad2ed2f5-2e00-43bc-a3d1-95cdb3a57246'),
(107, 102, 17, 1, 5, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '54b4491a-c047-4cea-aa61-54bbf35ce6b5'),
(108, 102, 17, 1, 6, NULL, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'bdd6585a-3fc7-49c3-8086-323370fcab91'),
(110, 109, 17, 1, 1, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'c683ff11-1f0c-4e23-8b1a-c61b2fe31e2e'),
(111, 109, 17, 1, 2, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'feb1525c-839b-4566-bb9b-d0515ed9a062'),
(112, 109, 17, 1, 3, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '6fdcc6ec-af3a-4c4c-83e8-c54aad7b6ebd'),
(113, 109, 17, 1, 4, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '195cb47c-beac-43a1-a82c-f242de80c9c8'),
(114, 109, 17, 1, 5, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '2450b27a-0b5a-4c8b-b1b9-cf07b713a542'),
(115, 109, 17, 1, 6, NULL, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'bdcf28a4-0ae3-4e18-bb05-10e62fe037a7'),
(125, 124, 17, 1, 1, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '9ae3010a-0e35-41f7-a5b7-6b9b91d178ee'),
(126, 124, 17, 1, 2, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '89c1b322-d933-45ab-83af-bf421cad23d4'),
(127, 124, 17, 1, 3, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'eac1d1dd-e708-4f55-b3c6-ea3459273c4a'),
(128, 124, 17, 1, 4, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'b2daeeba-53b9-437e-a9bf-93dfbbf2ecd5'),
(129, 124, 17, 1, 5, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '872d737a-73ef-4a97-b008-8b0d142310a8'),
(130, 124, 17, 1, 6, NULL, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'e5b4bed8-56c0-4561-937e-b2306dfd1c35'),
(132, 131, 17, 1, 1, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '3ce144e0-40d4-457c-8425-54c7fb31425f'),
(133, 131, 17, 1, 2, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '9129d0c9-d46b-4f50-b73f-0533658f495b'),
(134, 131, 17, 1, 3, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'e7a50ab3-8f9d-44cd-9a30-2725fcbbf767'),
(135, 131, 17, 1, 4, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'afac1691-3eee-475f-b2f2-70317963138f'),
(136, 131, 17, 1, 5, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'ab5130e6-9dae-4288-b8da-6c3bff72ab19'),
(137, 131, 17, 1, 6, NULL, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'c2b7735c-872c-4a44-8ac9-03a871fb8043'),
(146, 145, 17, 1, 1, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'c6764d6f-709e-4ab2-8516-9272ca09f6b9'),
(147, 145, 17, 1, 2, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'b219cd65-619e-49d1-b496-828104b88062'),
(148, 145, 17, 1, 3, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '522be825-d08b-4dd1-9cc9-14103fda4082'),
(149, 145, 17, 1, 4, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'ca31aae1-ee58-417f-bbaa-d86b483b7bac'),
(150, 145, 17, 1, 5, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'e9ba7f84-9384-4716-a662-b3e75488bcf2'),
(151, 145, 17, 1, 6, NULL, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'e1c98ce3-56c1-4530-8481-9868b7424cc2'),
(153, 152, 17, 1, 1, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '1528edf9-1c1f-460a-a452-3ba731088ba5'),
(154, 152, 17, 1, 2, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '93414898-3bf0-4d03-aaa7-acae24cd443e'),
(155, 152, 17, 1, 3, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '99c9e236-7fa3-4260-b80e-dc9d57c4ca54'),
(156, 152, 17, 1, 4, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '95ef9d26-7868-48c6-88c3-98d1f38f8c4f'),
(157, 152, 17, 1, 5, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '834d6750-208d-4876-b63f-419c55cb19b1'),
(158, 152, 17, 1, 6, NULL, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'f3258c08-0e68-4033-be8e-a852585ccd06'),
(167, 166, 17, 1, 1, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '87b5bf5d-05b0-4b06-a4a0-ef8e598ade9d'),
(168, 166, 17, 1, 2, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '139fd708-97a1-4129-9c1e-03527140efc9'),
(169, 166, 17, 1, 3, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'f49757a8-6acb-48e4-8d90-66d6521afac5'),
(170, 166, 17, 1, 4, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'a9fd4350-d548-4772-b952-b7cf3bbac680'),
(171, 166, 17, 1, 5, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '128702b9-9d28-4475-b0bf-914a656c9f75'),
(172, 166, 17, 1, 6, NULL, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '30ed4db1-ecef-474a-9412-455dc289be67'),
(181, 180, 17, 1, 1, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '403b0e0c-7527-45c2-bd71-13a2fc2623e6'),
(182, 180, 17, 1, 2, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '4b80bcd1-0522-4964-a71b-7aea112f7296'),
(183, 180, 17, 1, 3, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '8db216e7-d3e9-4ac0-8872-0b1f71573f22'),
(184, 180, 17, 1, 4, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'ba14d96b-39f0-4263-a1e8-92e2d51f99b7'),
(185, 180, 17, 1, 5, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '7ad5afad-d917-4372-8aa9-a8f93c75d45e'),
(186, 180, 17, 1, 6, NULL, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'a8672c8f-60ec-496d-8118-a34379a2dba7'),
(188, 187, 17, 1, 1, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'adfd257c-482c-4191-87d0-11d132365ba8'),
(189, 187, 17, 1, 2, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'c178f06d-9456-440f-9e9b-3fcb709de09c'),
(190, 187, 17, 1, 3, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'bac97daf-87e7-4bb5-adb3-5e37538caa84'),
(191, 187, 17, 1, 4, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '2b0bef86-9315-4982-ae3a-32fc5dc76049'),
(192, 187, 17, 1, 5, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'c360f959-5575-4532-9831-3c9a109936fc'),
(193, 187, 17, 1, 6, NULL, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '008d546d-d974-400c-b8e6-716ba3314c14');

-- --------------------------------------------------------

--
-- Table structure for table `bao_matrixblocktypes`
--

CREATE TABLE `bao_matrixblocktypes` (
                                        `id` int(11) NOT NULL,
                                        `fieldId` int(11) NOT NULL,
                                        `fieldLayoutId` int(11) DEFAULT NULL,
                                        `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                        `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                        `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                                        `dateCreated` datetime NOT NULL,
                                        `dateUpdated` datetime NOT NULL,
                                        `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_matrixblocktypes`
--

INSERT INTO `bao_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 17, 6, 'Cards-Content', 'cardsContent', 1, '2021-07-28 18:26:28', '2021-07-28 18:26:28', '0fb12c8b-904a-4033-87ad-39c6f85bb87c');

-- --------------------------------------------------------

--
-- Table structure for table `bao_matrixcontent_cards`
--

CREATE TABLE `bao_matrixcontent_cards` (
                                           `id` int(11) NOT NULL,
                                           `elementId` int(11) NOT NULL,
                                           `siteId` int(11) NOT NULL,
                                           `dateCreated` datetime NOT NULL,
                                           `dateUpdated` datetime NOT NULL,
                                           `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
                                           `field_cardsContent_cardsTitle` text COLLATE utf8_unicode_ci,
                                           `field_cardsContent_cardsIntro` text COLLATE utf8_unicode_ci,
                                           `field_cardsContent_cardsLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `field_cardsContent_cardsGroup_ylrpawib` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_matrixcontent_cards`
--

INSERT INTO `bao_matrixcontent_cards` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_cardsContent_cardsTitle`, `field_cardsContent_cardsIntro`, `field_cardsContent_cardsLink`, `field_cardsContent_cardsGroup_ylrpawib`) VALUES
(2, 43, 1, '2021-07-28 18:28:51', '2021-07-28 18:28:51', 'd6523ca2-1b37-4541-be52-284a2abe4caa', NULL, NULL, NULL, NULL),
(3, 44, 1, '2021-07-28 18:28:55', '2021-07-28 18:28:55', 'c8f46f6e-78a0-4984-8572-280c19ec19c2', NULL, NULL, NULL, NULL),
(4, 45, 1, '2021-07-28 18:28:58', '2021-07-28 18:28:58', 'fadf9d23-bc7e-4589-8292-231e9a153736', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(5, 46, 1, '2021-07-28 18:29:00', '2021-07-28 18:29:00', 'd126ea6c-232a-42e5-921b-4310d44244d2', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(6, 47, 1, '2021-07-28 18:29:01', '2021-07-28 18:29:01', 'd882022a-8e5b-4986-8226-85bbad8182dc', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(7, 48, 1, '2021-07-28 18:29:01', '2021-07-28 18:29:01', '1be4ad95-7d83-42e7-90d0-1be83765ca44', NULL, NULL, NULL, NULL),
(8, 49, 1, '2021-07-28 18:29:06', '2021-07-28 18:29:06', 'ce8e9b8d-daf2-4754-8089-48a1eec6cbb1', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(9, 50, 1, '2021-07-28 18:29:06', '2021-07-28 18:29:06', '9b535122-d642-49e8-8d95-41e6ba97e489', 'Card 3 Title', NULL, NULL, NULL),
(10, 51, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', '3fb0dd14-328c-4a92-8002-b55db6c98923', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(11, 52, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', 'a2c51062-4125-4d98-a40a-2dc64ddda5cb', 'Card 3 Title', NULL, NULL, NULL),
(12, 53, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '354f93ac-2162-4e87-b219-edcfc758d4e4', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(13, 54, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '934913f5-007a-40c9-913e-06d24f9ecd30', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL),
(16, 57, 1, '2021-07-28 18:29:15', '2021-07-29 07:05:31', '7679543b-5889-45db-9785-17b3fc90a186', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(17, 58, 1, '2021-07-28 18:29:15', '2021-07-29 07:05:31', '001fbc51-f540-4f7f-a934-b0fd4310f689', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(18, 59, 1, '2021-07-28 18:29:15', '2021-07-29 07:05:31', 'ccbc7222-5ac0-4cce-9a7c-c9ff72d31c26', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(19, 61, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'edc92bd7-6261-4f84-9154-b943ddcf3d3d', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', NULL),
(20, 62, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '419f4978-80c2-41d6-bda9-a8e966921626', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(21, 63, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '172a217a-6c14-47f3-897f-a5b135ff0ab0', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', NULL),
(25, 68, 1, '2021-07-28 18:33:40', '2021-07-28 18:33:40', 'f50fcf73-7216-4d60-8db9-01144a5685aa', NULL, NULL, NULL, 'group1'),
(26, 69, 1, '2021-07-28 18:33:45', '2021-07-28 18:33:45', 'bb46e863-89ba-4204-b631-dc52b365c9b6', NULL, NULL, NULL, 'group1'),
(27, 70, 1, '2021-07-28 18:33:48', '2021-07-28 18:33:48', '9ff543e6-bf72-4a86-8c09-c182c7e6804c', 'Card 4', NULL, NULL, 'group1'),
(28, 71, 1, '2021-07-28 18:33:49', '2021-07-28 18:33:49', '2c1fc163-1f87-49fd-8e82-f05e05cef9b4', 'Card 4', NULL, NULL, 'group1'),
(29, 72, 1, '2021-07-28 18:33:52', '2021-07-28 18:33:52', '1ffffb60-537d-42bd-97ba-cada0331cdef', 'Card 4', NULL, NULL, 'group2'),
(30, 73, 1, '2021-07-28 18:33:57', '2021-07-28 18:33:57', '64708f23-a5a8-4d5c-96d5-c9444b2eb221', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(31, 74, 1, '2021-07-28 18:33:58', '2021-07-28 18:33:58', '90282548-48dd-4ea5-9405-c35f3cb4d8d0', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(32, 75, 1, '2021-07-28 18:33:58', '2021-07-28 18:33:58', 'f113c92c-4286-4789-8629-2aa4ac2188b5', NULL, NULL, NULL, 'group1'),
(33, 76, 1, '2021-07-28 18:34:00', '2021-07-28 18:34:00', '6c575fde-8550-4d84-9967-71bcf2aaddaa', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(34, 77, 1, '2021-07-28 18:34:00', '2021-07-28 18:34:00', '8244b727-82ea-47f3-8e14-6cdcc18e4cc7', 'card 5', NULL, NULL, 'group1'),
(35, 78, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', '9fc51606-83d9-4aa2-9b49-667d11906249', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(36, 79, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', '890424a6-764b-4488-bd02-eb08ec554af9', 'card 5', NULL, NULL, 'group1'),
(37, 80, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', '564a652b-c877-4ab6-a439-fd80ed711665', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(38, 81, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', '686f7ad7-1712-4684-9276-febf48527689', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group1'),
(39, 82, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', '0c44b94e-e2c4-40c5-a653-af9175f73bc9', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(40, 83, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', 'a4baa869-a6e1-4e05-b30a-7061c35c0185', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(41, 84, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', 'b6ab7864-3693-45f7-bbe0-28dcfa8136ea', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(42, 85, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', 'e6dbae0d-2689-452a-9c1a-1bf81b39d0c7', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(43, 86, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', '75949243-0642-4871-986c-44cfaa0e8433', NULL, NULL, NULL, 'group1'),
(44, 87, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '842f42cd-604f-432c-af49-00125deb2470', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(45, 88, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '6b21d467-4c66-4312-aa41-8fcd0fecf4ce', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(46, 89, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '8456dc10-8ace-4ed5-b8d2-dfe4303b4c4d', 'card 6', NULL, NULL, 'group1'),
(47, 90, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '5690a454-22c7-4cea-864e-20ed7e6d5850', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(48, 91, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '2bac6429-166d-4b1e-a8f7-1872269181ab', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(49, 92, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '53d5ed0c-27d7-436b-8738-59e42968cc22', 'card 6', NULL, NULL, 'group1'),
(50, 93, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', 'e49554f8-c655-4c73-84e3-19e2d71fe542', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(51, 94, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', '72504963-8f31-4bbc-982c-236d6637a89b', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(52, 95, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', '598b28f5-0b58-4d0b-ab6a-d080dd62b7f5', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group1'),
(56, 99, 1, '2021-07-28 18:34:19', '2021-07-29 07:05:31', '5857a701-b07b-441a-b448-43b961ccf329', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(57, 100, 1, '2021-07-28 18:34:19', '2021-07-29 07:05:31', 'bdf91f13-aa6f-4474-8b8d-b983084a8c49', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(58, 101, 1, '2021-07-28 18:34:19', '2021-07-29 07:05:31', '7e6fde21-7379-49db-9dc1-f899e086215c', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(59, 103, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'b9dc09df-a947-46d4-a2bc-59be1124dec4', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(60, 104, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '3df28df3-7c2b-43f8-be20-bf3ca13deedb', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(61, 105, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'db2b909f-6362-45a3-8bb8-e96ef573cee8', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(62, 106, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '743f90be-d009-4696-894c-71666e1efbc7', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(63, 107, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '4611f733-a1e7-4d36-b3a4-2751093ddfff', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(64, 108, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'f3c992ce-65fd-4ed3-a2e4-9a7dec680b55', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(65, 110, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '14cdd188-6a98-4f8c-b8d2-18188504919b', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(66, 111, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '42ad4381-a513-4677-b630-bc83ebe7f46b', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(67, 112, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'fb4ce434-5c0e-4da6-8bcc-a83a9aba438b', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(68, 113, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '1a182c17-dcf0-496f-883c-d0b87e05806f', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(69, 114, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '6cd1df8c-b6a6-48fe-97ed-d8c49ef1b54a', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(70, 115, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'a0a6a0ca-00dd-4469-876c-c7b0e9a0665a', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(77, 125, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '5628d2af-8482-4e6d-bf17-108e3adff95d', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(78, 126, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'c6f1e494-a834-4197-a589-4834a5a0f402', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(79, 127, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'a63cc453-8db9-47bf-8a88-295ffe041847', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(80, 128, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '44976eb4-de3c-48ac-ab6f-c66b67d83c9f', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(81, 129, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'b890a230-225a-4590-a87e-7a2d8a2676c9', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(82, 130, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '8259d231-159d-43cf-8062-86a97057b5bd', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(83, 132, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'a51ac7d1-84dc-41ba-a1b5-5113594a0219', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(84, 133, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '056e9f72-26f2-454c-9f4f-3a86cb71ef1c', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(85, 134, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '1d6178a0-ffc7-4b2b-ace2-79d4b81e1856', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(86, 135, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'f860a38e-82b0-4aaf-9e75-e61f3724ffab', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(87, 136, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'd1d79173-026b-4d29-ace6-2bbc99018b40', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(88, 137, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'b7fc174a-f938-4a67-babd-80b31181970f', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(95, 146, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '6894de9e-9994-4b16-a98b-5dd6970f74ae', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(96, 147, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '34458b10-675e-42b0-ba75-1c8acfca4fc0', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(97, 148, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '26154819-0257-4a5a-8f38-07a7d45d3d7a', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(98, 149, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'b10b840d-15bf-4091-8df9-d351aa46eb50', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(99, 150, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'ebf0e87f-c459-4f1a-ba0d-ee444185e132', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(100, 151, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'c615da5d-e770-4e54-8ebf-e35b4092b550', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(101, 153, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '323e5596-3db8-4bdf-9c55-948a74d67178', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(102, 154, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '5f2e8a88-4387-402d-91d1-9ed3e8d80b6f', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(103, 155, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'fe95f3b1-6db4-4d24-a9a8-66848ce70fa3', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(104, 156, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '72a13e2b-fddf-47d1-8639-42d04188bee9', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(105, 157, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'e728a631-e92d-4531-a2ab-2246d67d2144', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(106, 158, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '6b48a2cf-b5af-431c-a0e6-ddde8e85ce9e', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(113, 167, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '9381830e-3391-436b-9331-57685c83e14b', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(114, 168, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '927c4f6a-24ec-4165-bef6-401283a1a501', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(115, 169, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '8435cf81-e284-40a1-8666-686612690ea6', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(116, 170, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '464703a6-7ef7-449b-9d01-7191b22c5f69', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(117, 171, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '0dfc759f-3b00-4410-8d3e-215702ebd95f', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(118, 172, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'df6393f8-5caa-4936-a04c-171a7628c535', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(125, 181, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '5b4f8e52-11e4-4803-8b98-95736f636e52', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(126, 182, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'b15e0e35-b9c5-4887-ab42-d6ca1592c478', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(127, 183, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '6bec082c-65ed-47f3-aab7-1e33f65ec649', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(128, 184, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'ef20b5f8-22a3-4eb4-881b-5e2872193402', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(129, 185, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'ea140f7c-4091-4ba2-bec5-6db646ee82bf', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(130, 186, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '179f65d1-4e5f-497b-917a-4b0f6e76f6d8', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(131, 188, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '905189c8-fbb6-4410-8dcf-370e484ef189', 'Card 1 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'http://#', 'group1'),
(132, 189, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'b73cb4de-9519-4373-8db1-f20d7b542990', 'Card 2 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(133, 190, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'f31820d8-36a8-4598-b446-4e5c83850d42', 'Card 3 Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'http://#', 'group1'),
(134, 191, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'f06384a0-2a78-4a78-85c3-c75d1c0db433', 'Card 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(135, 192, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'dd756ace-afdf-4185-8a4d-469c2403111d', 'card 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2'),
(136, 193, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '2bb5e7ef-247f-4a1a-88e0-de857e6bad68', 'card 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, 'group2');

-- --------------------------------------------------------

--
-- Table structure for table `bao_migrations`
--

CREATE TABLE `bao_migrations` (
                                  `id` int(11) NOT NULL,
                                  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `applyTime` datetime NOT NULL,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_migrations`
--

INSERT INTO `bao_migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '145ea519-8d62-4c7c-a967-a8c509cf8425'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '8aaf9b50-ba6f-44ac-98c1-79bb24af8c78'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cb248091-c3f4-44a9-b56b-11ff6debc7de'),
(4, 'craft', 'm150403_184533_field_version', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '26297852-534e-4bcb-999c-5dd3317561be'),
(5, 'craft', 'm150403_184729_type_columns', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3615cecb-3a86-4a15-81b5-ce9a32739b79'),
(6, 'craft', 'm150403_185142_volumes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2090be36-510f-4253-89b9-774889b658b1'),
(7, 'craft', 'm150428_231346_userpreferences', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '07680e5f-c785-4044-94be-93880caefabc'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ffec7de8-4bad-4680-95bf-76ab38a47672'),
(9, 'craft', 'm150617_213829_update_email_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '71897d76-0249-4820-8acb-eafb35e03f1e'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '163a4f31-103d-4049-b749-ecf99d00f5cb'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'efcba149-effa-4632-9b47-4e8785c4e263'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '1476f355-5aad-48fc-b496-60961df52695'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '64417bb3-4ab3-41e0-a291-5dc0b2a54a32'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3cc4a4ab-29b2-47b9-9c92-490f9be64cc1'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c8fe97ec-dbf7-4d5b-a55a-a7bdbbd44ca7'),
(16, 'craft', 'm151209_000000_move_logo', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cbe29ebc-64d5-4228-afeb-e0e3895bf603'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '392257e9-62fb-4ae2-83e8-91a23cdff0a7'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c56d2ec6-69ee-4925-9893-9168ccfb06b8'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cee65df4-e62f-435f-b768-ad350bf9203b'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '23be1d87-7c8b-49b5-a856-dcf00c73ef00'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'af55a304-1f2d-455a-960b-9147f4f0a238'),
(22, 'craft', 'm160727_194637_column_cleanup', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '44f3e410-d337-4297-ab69-3da0660e3e83'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '20f76f7a-3e36-4baa-9392-77910130d403'),
(24, 'craft', 'm160807_144858_sites', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b5ad59c7-fa75-4b7a-9a64-fced87ae333c'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '8ec4ef35-bee7-49ad-910c-7aad610a9a64'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2b86d7a2-f4cd-4fcf-bc00-99a47d40062d'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '03597ae9-7028-4bbc-ad0d-025c58500fd1'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7f4bd0b5-58f3-4415-a9f7-01010da1a082'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e0cfa5ba-d1e7-41aa-b2bc-6e3e16079224'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '09d4d2e5-7c8e-44b8-9734-607e3dfd2773'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fff997fe-b001-485c-8fd3-bbf29fbfd48e'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '43678784-653a-4eb5-8f01-877920b9085f'),
(33, 'craft', 'm161007_130653_update_email_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '71ccda41-9bf2-4c67-90cf-19bc23239012'),
(34, 'craft', 'm161013_175052_newParentId', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '981eca4b-ab78-4288-a9b0-115ccd4c3244'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fb177cd3-27c6-425a-8865-b4e02e2da909'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e1552271-95f0-400f-8ea2-8924074dc67b'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b13d5d5b-011d-4d30-a51f-01d300f46642'),
(38, 'craft', 'm161029_124145_email_message_languages', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ae7697cc-402e-4429-8e0b-9a9975fba84c'),
(39, 'craft', 'm161108_000000_new_version_format', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c6e41ca4-2f1d-4005-8e56-77d9aaab40e3'),
(40, 'craft', 'm161109_000000_index_shuffle', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ac3d2a32-e6a4-459e-b7f9-7e8d4c64b01d'),
(41, 'craft', 'm161122_185500_no_craft_app', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '1bfc599f-5a7d-44c6-8430-1f6b4b9e47e2'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '4ec0f844-b032-42af-b02a-cd29e7af8341'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b965dda1-c16e-42cc-acc4-f0616034f061'),
(44, 'craft', 'm170114_161144_udates_permission', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a73d5152-b496-4506-82bc-b25958544726'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'f509bb3a-3c84-435f-8b49-98661ae5d9d2'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '9b6c456c-05f3-4d93-8c31-caffa7a62766'),
(47, 'craft', 'm170206_142126_system_name', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e3103063-2f27-495e-91c8-f14a9942d667'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7f42a5da-ef69-428b-9736-84046e49bbbc'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5d2bba10-a855-4a2f-9f17-f26820452753'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '81505c4d-30ee-4cf5-ae73-e2787bab8ab0'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'df4f5f8b-1885-49ab-80d1-a78082ee90c6'),
(52, 'craft', 'm170228_171113_system_messages', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5043b5c6-81c1-4983-a7b7-187fde93066f'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '9b73dd7a-e08c-494e-9d35-d3fa3153b10d'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '897128af-7deb-46c1-abc9-f3b91ccbf1c0'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a2df7c80-1895-448e-ac51-88bc153181cb'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '4b4fd253-095e-4e78-9f21-0f726762af0e'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ca87b667-1161-40fe-8899-556d591951d1'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '19c782ae-deb1-46fc-8ed2-bc3ffa1b1ff5'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c78586e0-3195-4fd1-815d-c3c97a6a3655'),
(60, 'craft', 'm170704_134916_sites_tables', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '27e343e1-eff8-4f75-9f5f-274ca9956416'),
(61, 'craft', 'm170706_183216_rename_sequences', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'f89ba3dc-d6d3-4bf2-aaa6-9dd6d9d138d7'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '848c0b0f-e39c-4656-9f7b-178c1a3e6c30'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '03b22dad-892b-4515-a673-198e2ead0c97'),
(64, 'craft', 'm170810_201318_create_queue_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'df0d2012-b916-412b-9198-f341972c6b53'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '23e2ef28-c099-4447-ba2a-f43a9a192015'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'aee06026-544c-4190-9828-813bd9797233'),
(67, 'craft', 'm171011_214115_site_groups', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7a802352-8e5d-468d-a186-1fe589b82fee'),
(68, 'craft', 'm171012_151440_primary_site', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '86374859-debc-4406-86fd-5e5dc27ffd19'),
(69, 'craft', 'm171013_142500_transform_interlace', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'caec5595-c85a-46ed-ae14-e603025f5092'),
(70, 'craft', 'm171016_092553_drop_position_select', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ee74661d-cda5-4a3e-aab7-ffa4c5bba07a'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '542d22fe-c7b5-4911-aa3f-bc8e93472751'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '36762dbe-14d3-425a-8e96-52d50908f32c'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '46eb12c2-eb13-4bef-802c-a86fc344fd23'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c46ae4e7-4b8f-4683-a7df-23778afaa061'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5691df38-7b84-42ab-ba6d-d6a5250869e5'),
(76, 'craft', 'm171202_004225_update_email_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'abb0beee-a8ab-4212-bfde-bb3c6f8e4206'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '38354eaa-375b-4e28-9f89-2081dc4c1b52'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '618d9b51-6790-459f-a562-0e5db8e1688c'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a75b38cc-7982-4569-bb27-b8b635b10c55'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '372a88b4-bed0-4c87-bf9c-abb56439bf3e'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'df9404e7-a42d-42c2-bfdb-04071374497d'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e9310c45-86df-41ca-b43b-a662cce1ea99'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '0c7a3b23-9e25-4b9a-ad5e-ccd608245da8'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ef65093c-47ed-4b41-999f-095c07b16a79'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a5126f09-3b91-47fc-a3aa-ed3bdc7773e8'),
(86, 'craft', 'm180217_172123_tiny_ints', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'dfb7d999-22cd-4b77-aba0-da86d06e83e0'),
(87, 'craft', 'm180321_233505_small_ints', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '9cc90317-09cf-4eef-8a3d-fa788bf7667b'),
(88, 'craft', 'm180404_182320_edition_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '4b57e16b-709a-4ee4-becd-5a9cc1640714'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '0b96953f-1875-44aa-8da5-ac4524988ad6'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '08e116fb-6c1b-43d7-9012-657f652d2dd0'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'd9be22a8-8612-4a90-9d43-3ebc4d8ccc4f'),
(92, 'craft', 'm180425_203349_searchable_fields', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '20bd3b3c-ce3c-46f1-ba80-4b28a4e63035'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a9e5a435-60f0-4146-ac6f-5c759f7e8b1c'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cc76ff50-7cd1-4424-b1c0-ef821a4c4ee6'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5bb57d1b-75fc-42b9-a8b9-83c835e330f6'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '6add356a-dd5b-491e-8895-e60a2ffe9a72'),
(97, 'craft', 'm180521_172900_project_config_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a6294351-c4ba-40db-bce0-04550b65a336'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2b520e4b-a5e3-4bbe-9a6c-5b99bbfb7eb3'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '98092673-af06-4bab-9b02-08278bcf9f6f'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fbd66dca-9d88-4cee-8dfd-7452de3635b6'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7994c54d-c882-41d6-8feb-9035ab51652c'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '0373b3a1-697a-45c2-a9a2-1ac12c6e2c23'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e458417d-2d1c-461f-bae0-4d01061c43bf'),
(104, 'craft', 'm180904_112109_permission_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'd2f19d42-558b-497a-8a65-a053e3fdb5d2'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7d4ac4aa-26c4-4b9b-8922-7b51aafc864d'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '67b9437c-3865-478d-8f17-52147a03f1a8'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '26118e00-adf3-4809-8ddb-771b20317eb7'),
(108, 'craft', 'm181017_225222_system_config_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '09f980b7-4722-4111-9814-21c7935d9c46'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '04395801-de44-4af9-b013-5f695d3578a1'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '02a061fe-cd65-49b6-b019-5194fbe267ee'),
(111, 'craft', 'm181112_203955_sequences_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '67c2eaf1-1360-451c-97ac-30f2bee8776f'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '817f683b-9a1a-4d60-bf4a-d2994e6db50b'),
(113, 'craft', 'm181128_193942_fix_project_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '42e03d22-5124-4d82-b28d-cda65ceafbf6'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '50205581-0e35-4e27-8868-2da0a6b67c0c'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3a518ebd-537e-42f2-80ce-1159bb05b58e'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'd8ee03df-efb4-40cf-96c7-d3ba09d43a08'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '529cddd2-9d74-440d-ba3c-e4dd941e0240'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5e76bf95-6b82-41e7-b887-510162f6b6ac'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '57aae3f1-692a-48b5-9a7f-93a92cc9a755'),
(120, 'craft', 'm190109_172845_fix_colspan', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '9ac16afa-e7e7-4a18-8d6a-7a3316febfe0'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '969a8406-8401-43d1-b80a-d401bd77836c'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '42eac2fa-305c-4e14-849b-d1b750cfc3e0'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fdac2f0c-3212-4298-9531-426cc85f9661'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'bed54221-f9cf-4062-9dd8-5d8057909c71'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3a79d1ca-7d9b-4e00-97d2-076de3d9ef2b'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5b06e494-d56a-413f-81b4-2eaaa2e7607a'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '63eed88b-5dd9-4f93-abc3-674ae8bca1e0'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cdc3c18a-310f-4b36-a8b7-442cb7f25437'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '6f2b8560-2ec4-4600-909b-a9185ba9981a'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3d66a065-386a-4d43-a137-787a81a6f437'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cbd12445-8361-4ed6-b3e7-9af772861ca8'),
(132, 'craft', 'm190312_152740_element_revisions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3f110feb-18ab-4234-b0e5-9a8d8a3e15ef'),
(133, 'craft', 'm190327_235137_propagation_method', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2ec9992e-4633-4e8d-8451-4af6da49b469'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '8df96030-b424-48ca-83a7-b2ce46f3e36c'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7fdc2b18-a9cd-4a7a-b362-96059d0d962b'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '6510c46b-2fba-4c9b-8b98-f1ea0173c3f2'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '625e0260-de8d-469d-9798-2f3419ff0cd7'),
(138, 'craft', 'm190504_150349_preview_targets', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5e23ddb5-6883-4416-a00d-b390e71baa74'),
(139, 'craft', 'm190516_184711_job_progress_label', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c0dbffa9-2893-4dce-86cf-784cfbbad185'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e130bff7-ff7d-49ef-80cb-edcffc96a81a'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b29abbbc-4fac-4c99-87db-022480c54ca1'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'be85cf5b-50d5-44e6-bc7d-ad7e4e820ac2'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b8cbd81b-9d10-4ef8-8b73-a742fcc06905'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '1d77d4c7-8e16-4a0b-bfaf-0f140bd2b58f'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cd338ba1-ad2b-439f-bb76-8f7a4c76c28c'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '54b85712-2e7c-4139-9c61-8f1410122eaf'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '780d54da-2fdc-4a30-a20f-987ca96a94d7'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fccd5255-827c-4612-8d2f-0546b7b82f6b'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a6ae844c-654f-445a-86cf-6737bf11d53e'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '9a2a91fb-0460-4aef-b5e8-705924fe955e'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '5114c893-824f-4c95-97d5-9400ea8e0c8c'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '708c8642-5bd2-409c-bd5e-751176082b3d'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'dadd0eca-6732-46fe-badb-444a80a9d232'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '565e1162-553c-4607-b24b-7e4db33edc81'),
(155, 'craft', 'm191206_001148_change_tracking', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ced1d960-93c6-4133-b133-81b77218ff63'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'ea14a20d-be63-41af-bf97-5916f521be8f'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b7e5ae2e-bf9d-40b8-954d-248cc1e70586'),
(158, 'craft', 'm200127_172522_queue_channels', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '8c7b3997-b91e-4b8e-ae77-737d0233c6c0'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e583df21-6505-4420-84af-57a9ce589012'),
(160, 'craft', 'm200213_172522_new_elements_index', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'aecf380b-a24c-4865-855c-60f90a4447cf'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fd77c2b0-e55a-45e3-a735-3bae9d04f7c6'),
(162, 'craft', 'm200306_054652_disabled_sites', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '29c58cb2-cef6-4874-b964-ce7d9460d0f1'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'f54a0c9e-e9e8-4c39-b488-c00e706d5856'),
(164, 'craft', 'm200606_231117_migration_tracks', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '54a7ca7e-ccdf-4f34-89f3-78021965e049'),
(165, 'craft', 'm200619_215137_title_translation_method', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '75a6040d-0f51-455d-93d2-6844c3e75164'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '3a1fd4ec-0bd3-4385-8413-556649891516'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '6503e9cb-25e2-41e8-89d6-4db4320d4c77'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'fe4d02a5-206e-4bdb-87db-fb4ad06b0251'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'bd1c0c1c-636a-4c84-8c49-43d35283aab0'),
(170, 'craft', 'm200630_183000_drop_configmap', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a8bff235-bda6-4611-8cbc-0e010aaf27e1'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e35e6889-6ee3-463a-9b0f-5530189c3111'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '8fc12113-b1cc-462e-8e42-938d48fc43e4'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2e7fd907-0a93-4785-a1a2-5ccd7f95d2f9'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '579d724e-fdab-4626-941b-447034d8fa58'),
(175, 'craft', 'm200825_051217_project_config_version', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2a20b0af-61d2-4880-bb63-691f5929dfa2'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '4d141617-ff74-4631-8616-a1bf46f30062'),
(177, 'craft', 'm201124_003555_plugin_trials', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'cc71fd81-fec4-4a7c-9713-41259a405630'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '415e4b2e-a415-4fdb-98d8-2f270b85cc98'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '0ea9e3ac-5b24-4a69-97ff-531e99069de8'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '1e434d3a-1d4d-4768-9827-fe5e3dd1e9c5'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'c2fcbac5-f7f5-4dbe-8ffb-408b86b6ab39'),
(182, 'craft', 'm210302_212318_canonical_elements', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '48780b31-9e87-4b39-bd32-712de1d7bc32'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'b2611f26-2340-4c04-98bf-dd04753f4648'),
(184, 'craft', 'm210329_214847_field_column_suffixes', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'e07f1689-9dec-4078-95bc-a08163595b74'),
(185, 'craft', 'm210331_220322_null_author', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'a4de866b-535d-4278-963e-2e379a4b826b'),
(186, 'craft', 'm210405_231315_provisional_drafts', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '44369ef0-f01b-409c-97d0-c61980af9073'),
(187, 'craft', 'm210602_111300_project_config_names_in_config', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '7897f3f9-3094-421c-9da3-485c31097a36'),
(188, 'craft', 'm210611_233510_default_placement_settings', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'abc53ceb-a7c0-4f24-8aee-f595eee3cee3'),
(189, 'craft', 'm210613_145522_sortable_global_sets', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', 'd96a0b6c-f570-4e2a-bda6-9bfb7399d978'),
(190, 'craft', 'm210613_184103_announcements', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2021-07-27 11:10:29', '2cba7338-81b9-4aa3-89d0-39133265d5af'),
(191, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2021-07-28 18:20:28', '2021-07-28 18:20:28', '2021-07-28 18:20:28', 'd80646b9-3e91-4a89-8ce7-235e2c405dc7'),
(192, 'plugin:redactor', 'Install', '2021-07-28 18:20:28', '2021-07-28 18:20:28', '2021-07-28 18:20:28', '6b0d8e7e-e601-4bf6-817d-f1c566cb5059'),
(193, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2021-07-28 18:20:28', '2021-07-28 18:20:28', '2021-07-28 18:20:28', '74decabe-d5bc-4e6b-b0f4-5840c7f4f3f7');

-- --------------------------------------------------------

--
-- Table structure for table `bao_plugins`
--

CREATE TABLE `bao_plugins` (
                               `id` int(11) NOT NULL,
                               `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
                               `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `installDate` datetime NOT NULL,
                               `dateCreated` datetime NOT NULL,
                               `dateUpdated` datetime NOT NULL,
                               `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_plugins`
--

INSERT INTO `bao_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 'redactor', '2.8.7', '2.3.0', 'unknown', NULL, '2021-07-28 18:20:28', '2021-07-28 18:20:28', '2021-07-30 06:19:20', '13392faf-ea00-447d-98c7-90c47f9c97aa'),
(3, 'element-api', '2.7.0', '1.0.0', 'unknown', NULL, '2021-07-29 10:58:35', '2021-07-29 10:58:35', '2021-07-30 06:19:20', '08f04b8d-2c7d-4c74-919d-9a64e4835e89');

-- --------------------------------------------------------

--
-- Table structure for table `bao_projectconfig`
--

CREATE TABLE `bao_projectconfig` (
                                     `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                     `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_projectconfig`
--

INSERT INTO `bao_projectconfig` (`path`, `value`) VALUES
('dateModified', '1627556315'),
('email.fromEmail', '\"chubao.uk@gmail.com\"'),
('email.fromName', '\"Demo\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.class', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.disabled', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.id', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.max', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.min', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.name', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.orientation', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.readonly', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.requirable', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.size', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.step', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.title', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.fieldUid', '\"2ec35f1a-ce92-4a7d-9cd5-091a0597a602\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.fieldUid', '\"d4d31591-60bd-4408-abfd-f6690663b811\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.fieldUid', '\"0d995f2b-c48f-4124-afb7-de8f54e80bf3\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.3.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.fieldUid', '\"07155247-ec99-4c47-a713-75bdd40bf1ad\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.elements.4.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.name', '\"Banner Tab 1\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.0.sortOrder', '1'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.fieldUid', '\"60f59284-2f43-4dba-ab5a-012ef113d8f6\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.fieldUid', '\"623423b0-765e-40ba-8b74-91f6275846cc\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.fieldUid', '\"f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.fieldUid', '\"889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.elements.3.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.name', '\"Banner Tab 2\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.1.sortOrder', '2'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.fieldUid', '\"4b95413d-708c-41ea-9401-2b18a9d4e719\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.fieldUid', '\"c519cc4e-184b-407b-a0d2-fda61f904828\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.fieldUid', '\"8de780dc-3b2e-429f-821f-04af829ae293\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.fieldUid', '\"d4f6ab0b-63fb-468b-8f95-eb09218db0b9\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.elements.3.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.name', '\"Banner Tab 3\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.2.sortOrder', '3'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.fieldUid', '\"57242f8d-0c33-46b1-8f55-5bcafcbced44\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.fieldUid', '\"f776acaa-08b3-4ea5-a697-d36aacf95da5\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.fieldUid', '\"31175c8e-9ffa-402b-bb55-0284dde8d9c9\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.name', '\"Middle Intro\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.3.sortOrder', '4'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.fieldUid', '\"e086403e-cb4a-4067-bc9a-2499f48f4ce2\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.name', '\"Cards\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.4.sortOrder', '5'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.fieldUid', '\"5567ee76-83a7-47d6-9e0d-2517d8eca698\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.fieldUid', '\"cc570e1e-cde3-4bb7-a76b-68c83b676eac\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.fieldUid', '\"2030c2a6-434f-4f19-8a52-62114facdfea\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.fieldUid', '\"ef996b5c-981c-4112-b43f-57ed82543500\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.elements.3.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.name', '\"Blue Section\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.5.sortOrder', '6'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.fieldUid', '\"f618f24d-1432-4a01-b327-c470351c42d8\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.fieldUid', '\"c51301b9-676d-4cf3-ae32-ba06ede6d98b\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.name', '\"Contact Us\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.6.sortOrder', '7'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.fieldUid', '\"10b3d775-4f2f-43be-9de2-1d1039b56756\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.0.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.fieldUid', '\"a8e37e54-11aa-49bc-bfdf-b251e3eeebe2\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.1.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.fieldUid', '\"b66dbdd1-6747-42d7-8227-38d75916f449\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.2.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.fieldUid', '\"31719a5f-4a18-44bb-9b82-832aa75b2957\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.3.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.fieldUid', '\"81694b47-4192-42ec-8785-18ec79a57ec3\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.4.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.fieldUid', '\"2b2d4db6-ead8-498d-b816-7e16c41bea7a\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.5.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.fieldUid', '\"5f122c15-582f-4e17-a1b3-8e54482c2b1d\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.instructions', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.label', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.required', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.tip', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.warning', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.elements.6.width', '100'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.name', '\"Footer\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.fieldLayouts.be4b86ee-4aef-4c8b-b3dd-a53d8e49ae16.tabs.7.sortOrder', '8'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.handle', '\"home\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.hasTitleField', 'false'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.name', '\"Home\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.section', '\"f6f9de35-ef9d-4953-af2d-c36d424d74e9\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.sortOrder', '1'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.titleTranslationKeyFormat', 'null'),
('entryTypes.178ae8bc-0106-4a41-ad55-9c250c0c761d.titleTranslationMethod', '\"site\"'),
('fieldGroups.23fd8410-c22f-4ce2-b9e9-ee18ea33273b.name', '\"card\"'),
('fieldGroups.6ea547fb-7732-477d-a633-073ad70b7233.name', '\"Home Banner 1\"'),
('fieldGroups.7a277a0a-ee6c-4522-b7fa-8e3021062db2.name', '\"Home Banner 2\"'),
('fieldGroups.7f2b0963-a4ad-4703-840c-08c8724c33b1.name', '\"home blue section\"'),
('fieldGroups.82722da7-1dd7-4f9e-9464-3763ba530b9c.name', '\"Home Banner 3\"'),
('fieldGroups.9732aa51-b630-40a6-96e6-bb26790edb8b.name', '\"Footer\"'),
('fieldGroups.d704237c-11fc-46b1-8ca4-400a705e7aa4.name', '\"MiddleContent\"'),
('fieldGroups.e85b409e-763e-4089-9fab-e552b8e9e4c4.name', '\"Common\"'),
('fieldGroups.edaea6ac-1538-4dda-9d2d-85a8636bae59.name', '\"Home Contact\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.columnSuffix', '\"gdboomim\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.contentColumnType', '\"string(255)\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.fieldGroup', '\"6ea547fb-7732-477d-a633-073ad70b7233\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.handle', '\"banner1Link\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.instructions', '\"URL of Banner 1\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.name', '\"Banner-1-Link\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.searchable', 'false'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.settings.maxLength', '\"255\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.settings.placeholder', 'null'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.settings.types.0', '\"url\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.translationKeyFormat', 'null'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.translationMethod', '\"none\"'),
('fields.07155247-ec99-4c47-a713-75bdd40bf1ad.type', '\"craft\\\\fields\\\\Url\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.columnSuffix', '\"vvboyfvv\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.contentColumnType', '\"text\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.fieldGroup', '\"6ea547fb-7732-477d-a633-073ad70b7233\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.handle', '\"banner1Intro\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.instructions', '\"Introduction text of banner 1\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.name', '\"Banner-1-intro\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.searchable', 'false'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.byteLimit', 'null'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.charLimit', 'null'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.code', '\"\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.columnType', 'null'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.initialRows', '\"4\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.multiline', '\"1\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.placeholder', 'null'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.settings.uiMode', '\"normal\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.translationKeyFormat', 'null'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.translationMethod', '\"none\"'),
('fields.0d995f2b-c48f-4124-afb7-de8f54e80bf3.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.columnSuffix', '\"cpjfskik\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.contentColumnType', '\"text\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.handle', '\"footerAddress\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.instructions', '\"footer section address\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.name', '\"Footer Address\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.searchable', 'false'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.byteLimit', 'null'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.charLimit', 'null'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.code', '\"\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.columnType', 'null'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.initialRows', '\"4\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.multiline', '\"1\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.placeholder', '\"Floor 5, 12-14 Grey Street, Newcastle upon Tyne, NE1 6TE\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.settings.uiMode', '\"enlarged\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.translationKeyFormat', 'null'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.translationMethod', '\"none\"'),
('fields.10b3d775-4f2f-43be-9de2-1d1039b56756.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.columnSuffix', '\"qivleibj\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.contentColumnType', '\"text\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.fieldGroup', '\"7f2b0963-a4ad-4703-840c-08c8724c33b1\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.handle', '\"mediaIntro\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.instructions', '\"blue section intro text\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.name', '\"media intro\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.searchable', 'false'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.byteLimit', 'null'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.charLimit', 'null'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.code', '\"\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.columnType', 'null'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.initialRows', '\"4\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.multiline', '\"1\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.placeholder', 'null'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.settings.uiMode', '\"enlarged\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.translationKeyFormat', 'null'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.translationMethod', '\"none\"'),
('fields.2030c2a6-434f-4f19-8a52-62114facdfea.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.columnSuffix', '\"nywcufgq\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.contentColumnType', '\"string(255)\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.handle', '\"twitter\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.instructions', '\"\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.name', '\"twitter\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.searchable', 'false'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.settings.maxLength', '\"255\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.settings.placeholder', 'null'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.settings.types.0', '\"url\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.translationKeyFormat', 'null'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.translationMethod', '\"none\"'),
('fields.2b2d4db6-ead8-498d-b816-7e16c41bea7a.type', '\"craft\\\\fields\\\\Url\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.columnSuffix', 'null'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.contentColumnType', '\"string\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.fieldGroup', '\"6ea547fb-7732-477d-a633-073ad70b7233\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.handle', '\"banner1Image\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.instructions', '\"Top Banner Image\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.name', '\"Banner-1-Image\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.searchable', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.allowedKinds.0', '\"image\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.allowSelfRelations', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.allowUploads', 'true'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.defaultUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.limit', '\"1\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.localizeRelations', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.previewMode', '\"full\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.restrictFiles', '\"1\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.selectionLabel', '\"Update Background Image\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.showSiteMenu', 'true'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.showUnpermittedFiles', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.showUnpermittedVolumes', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.singleUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.singleUploadLocationSubpath', '\"\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.source', 'null'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.sources.0', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.targetSiteId', 'null'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.useSingleFolder', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.validateRelatedElements', 'false'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.settings.viewMode', '\"large\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.translationKeyFormat', 'null'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.translationMethod', '\"site\"'),
('fields.2ec35f1a-ce92-4a7d-9cd5-091a0597a602.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.columnSuffix', '\"nnansqxm\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.contentColumnType', '\"string(255)\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.fieldGroup', '\"d704237c-11fc-46b1-8ca4-400a705e7aa4\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.handle', '\"middleButton\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.instructions', '\"button link of middle intro section\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.name', '\"MiddleButton\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.searchable', 'false'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.settings.maxLength', '\"255\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.settings.placeholder', 'null'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.settings.types.0', '\"url\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.translationKeyFormat', 'null');
INSERT INTO `bao_projectconfig` (`path`, `value`) VALUES
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.translationMethod', '\"none\"'),
('fields.31175c8e-9ffa-402b-bb55-0284dde8d9c9.type', '\"craft\\\\fields\\\\Url\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.columnSuffix', '\"ilsvchce\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.contentColumnType', '\"string(255)\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.handle', '\"facebook\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.instructions', '\"\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.name', '\"facebook\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.searchable', 'false'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.settings.maxLength', '\"255\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.settings.placeholder', 'null'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.settings.types.0', '\"url\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.translationKeyFormat', 'null'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.translationMethod', '\"none\"'),
('fields.31719a5f-4a18-44bb-9b82-832aa75b2957.type', '\"craft\\\\fields\\\\Url\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.columnSuffix', 'null'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.contentColumnType', '\"string\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.fieldGroup', '\"82722da7-1dd7-4f9e-9464-3763ba530b9c\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.handle', '\"banner3Image\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.instructions', '\"Image of banner 3\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.name', '\"Banner-3-Image\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.searchable', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.allowedKinds.0', '\"image\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.allowSelfRelations', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.allowUploads', 'true'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.defaultUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.limit', '\"1\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.localizeRelations', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.previewMode', '\"full\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.restrictFiles', '\"1\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.selectionLabel', '\"\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.showSiteMenu', 'true'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.showUnpermittedFiles', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.showUnpermittedVolumes', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.singleUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.singleUploadLocationSubpath', '\"\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.source', 'null'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.sources.0', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.targetSiteId', 'null'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.useSingleFolder', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.validateRelatedElements', 'false'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.settings.viewMode', '\"large\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.translationKeyFormat', 'null'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.translationMethod', '\"site\"'),
('fields.4b95413d-708c-41ea-9401-2b18a9d4e719.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.columnSuffix', 'null'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.contentColumnType', '\"string\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.fieldGroup', '\"7f2b0963-a4ad-4703-840c-08c8724c33b1\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.handle', '\"mediaImage\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.instructions', '\"left image of blue section\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.name', '\"media Image\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.searchable', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.allowedKinds.0', '\"image\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.allowSelfRelations', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.allowUploads', 'true'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.defaultUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.limit', '\"1\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.localizeRelations', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.previewMode', '\"full\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.restrictFiles', '\"1\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.selectionLabel', '\"\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.showSiteMenu', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.showUnpermittedFiles', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.showUnpermittedVolumes', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.singleUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.singleUploadLocationSubpath', '\"\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.source', 'null'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.sources.0', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.targetSiteId', 'null'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.useSingleFolder', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.validateRelatedElements', 'false'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.settings.viewMode', '\"large\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.translationKeyFormat', 'null'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.translationMethod', '\"site\"'),
('fields.5567ee76-83a7-47d6-9e0d-2517d8eca698.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.columnSuffix', '\"ouzshyep\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.contentColumnType', '\"text\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.fieldGroup', '\"d704237c-11fc-46b1-8ca4-400a705e7aa4\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.handle', '\"middleTitle\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.instructions', '\"Middle title between slider and card\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.name', '\"MiddleTitle\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.searchable', 'false'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.byteLimit', 'null'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.charLimit', 'null'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.code', '\"\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.columnType', 'null'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.initialRows', '\"2\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.multiline', '\"1\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.placeholder', 'null'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.settings.uiMode', '\"normal\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.translationKeyFormat', 'null'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.translationMethod', '\"none\"'),
('fields.57242f8d-0c33-46b1-8f55-5bcafcbced44.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.columnSuffix', '\"xolctzhb\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.contentColumnType', '\"string(255)\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.handle', '\"linkedin\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.instructions', '\"\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.name', '\"linkedin\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.searchable', 'false'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.settings.maxLength', '\"255\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.settings.placeholder', 'null'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.settings.types.0', '\"url\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.translationKeyFormat', 'null'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.translationMethod', '\"none\"'),
('fields.5f122c15-582f-4e17-a1b3-8e54482c2b1d.type', '\"craft\\\\fields\\\\Url\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.columnSuffix', 'null'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.contentColumnType', '\"string\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.fieldGroup', '\"7a277a0a-ee6c-4522-b7fa-8e3021062db2\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.handle', '\"banner2Image\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.instructions', '\"Image of Banner 2\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.name', '\"Banner-2-Image\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.searchable', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.allowedKinds.0', '\"image\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.allowSelfRelations', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.allowUploads', 'true'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.defaultUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.limit', '\"1\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.localizeRelations', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.previewMode', '\"full\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.restrictFiles', '\"1\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.selectionLabel', '\"\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.showSiteMenu', 'true'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.showUnpermittedFiles', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.showUnpermittedVolumes', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.singleUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.singleUploadLocationSubpath', '\"\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.source', 'null'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.sources.0', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.targetSiteId', 'null'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.useSingleFolder', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.validateRelatedElements', 'false'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.settings.viewMode', '\"large\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.translationKeyFormat', 'null'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.translationMethod', '\"site\"'),
('fields.60f59284-2f43-4dba-ab5a-012ef113d8f6.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.columnSuffix', '\"iluthuab\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.contentColumnType', '\"text\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.fieldGroup', '\"7a277a0a-ee6c-4522-b7fa-8e3021062db2\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.handle', '\"banner2Title\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.instructions', '\"Two line Display Intro of Tab 2\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.name', '\"Banner-2-Title\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.searchable', 'false'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.byteLimit', 'null'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.charLimit', 'null'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.code', '\"\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.columnType', 'null'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.initialRows', '\"2\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.multiline', '\"1\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.placeholder', '\"Two line Display Intro of Tab 2\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.settings.uiMode', '\"normal\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.translationKeyFormat', 'null'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.translationMethod', '\"none\"'),
('fields.623423b0-765e-40ba-8b74-91f6275846cc.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.columnSuffix', '\"gaizslbb\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.contentColumnType', '\"string(255)\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.handle', '\"instagram\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.instructions', '\"\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.name', '\"instagram\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.searchable', 'false'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.settings.maxLength', '\"255\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.settings.placeholder', 'null'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.settings.types.0', '\"url\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.translationKeyFormat', 'null'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.translationMethod', '\"none\"'),
('fields.81694b47-4192-42ec-8785-18ec79a57ec3.type', '\"craft\\\\fields\\\\Url\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.columnSuffix', '\"gbyrdvrz\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.contentColumnType', '\"string(255)\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.fieldGroup', '\"7a277a0a-ee6c-4522-b7fa-8e3021062db2\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.handle', '\"banner2Link\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.instructions', '\"URL of Banner 2\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.name', '\"Banner-2-Link\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.searchable', 'false'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.settings.maxLength', '\"255\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.settings.placeholder', 'null'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.settings.types.0', '\"url\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.translationKeyFormat', 'null'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.translationMethod', '\"none\"'),
('fields.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2.type', '\"craft\\\\fields\\\\Url\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.columnSuffix', '\"mtvvgelx\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.contentColumnType', '\"text\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.fieldGroup', '\"82722da7-1dd7-4f9e-9464-3763ba530b9c\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.handle', '\"banner3Intro\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.instructions', '\"Intro text of banner 3\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.name', '\"Banner 3 Intro\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.searchable', 'false'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.byteLimit', 'null'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.charLimit', 'null'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.code', '\"\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.columnType', 'null'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.initialRows', '\"4\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.multiline', '\"1\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.placeholder', 'null'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.settings.uiMode', '\"normal\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.translationKeyFormat', 'null'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.translationMethod', '\"none\"'),
('fields.8de780dc-3b2e-429f-821f-04af829ae293.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.columnSuffix', '\"ccuxzwrs\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.contentColumnType', '\"text\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.handle', '\"footerPhone\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.instructions', '\"footer section contact phone\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.name', '\"footer phone\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.searchable', 'false'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.byteLimit', 'null'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.charLimit', 'null'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.code', '\"\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.columnType', 'null'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.initialRows', '\"4\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.multiline', '\"\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.placeholder', '\"0111 212 8111\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.settings.uiMode', '\"normal\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.translationKeyFormat', 'null'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.translationMethod', '\"none\"'),
('fields.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.columnSuffix', '\"odbxsnns\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.contentColumnType', '\"string\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.fieldGroup', '\"9732aa51-b630-40a6-96e6-bb26790edb8b\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.handle', '\"footerEmail\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.instructions', '\"footer section email address\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.name', '\"footer Email\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.searchable', 'false'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.settings.placeholder', '\"admin@horizonthemes.co.uk\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.translationKeyFormat', 'null'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.translationMethod', '\"none\"'),
('fields.b66dbdd1-6747-42d7-8227-38d75916f449.type', '\"craft\\\\fields\\\\Email\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.columnSuffix', '\"slauzneq\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.contentColumnType', '\"text\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.fieldGroup', '\"edaea6ac-1538-4dda-9d2d-85a8636bae59\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.handle', '\"contactPhone\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.instructions', '\"contact section phone\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.name', '\"contact phone\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.searchable', 'false'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.byteLimit', 'null'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.charLimit', 'null'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.code', '\"\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.columnType', 'null'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.initialRows', '\"4\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.multiline', '\"\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.placeholder', '\"+44 (0) 1234 567 890\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.settings.uiMode', '\"normal\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.translationKeyFormat', 'null'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.translationMethod', '\"none\"'),
('fields.c51301b9-676d-4cf3-ae32-ba06ede6d98b.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.columnSuffix', '\"tqnfzxbc\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.contentColumnType', '\"text\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.fieldGroup', '\"82722da7-1dd7-4f9e-9464-3763ba530b9c\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.handle', '\"banner3Title\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.instructions', '\"Title of Banner 3, 2 lines\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.name', '\"Banner-3-Title\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.searchable', 'false'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.byteLimit', 'null'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.charLimit', 'null'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.code', '\"\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.columnType', 'null'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.initialRows', '\"2\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.multiline', '\"1\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.placeholder', 'null'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.settings.uiMode', '\"normal\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.translationKeyFormat', 'null'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.translationMethod', '\"none\"'),
('fields.c519cc4e-184b-407b-a0d2-fda61f904828.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.columnSuffix', '\"mlggyjzx\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.contentColumnType', '\"text\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.fieldGroup', '\"7f2b0963-a4ad-4703-840c-08c8724c33b1\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.handle', '\"mediaTitle\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.instructions', '\"Two lines heading \"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.name', '\"media-title\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.searchable', 'false'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.byteLimit', 'null'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.charLimit', 'null'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.code', '\"\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.columnType', 'null'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.initialRows', '\"2\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.multiline', '\"1\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.placeholder', 'null'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.settings.uiMode', '\"normal\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.translationKeyFormat', 'null'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.translationMethod', '\"none\"'),
('fields.cc570e1e-cde3-4bb7-a76b-68c83b676eac.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.columnSuffix', '\"eewflaea\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.contentColumnType', '\"text\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.fieldGroup', '\"6ea547fb-7732-477d-a633-073ad70b7233\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.handle', '\"banner1Title\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.instructions', '\"Two line Display Intro of Tab 1\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.name', '\"Banner-1-Title\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.searchable', 'false'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.byteLimit', 'null'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.charLimit', 'null'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.code', '\"\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.columnType', 'null'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.initialRows', '\"2\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.multiline', '\"1\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.placeholder', '\"Here we have a two line display intro. (Tab 1)\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.settings.uiMode', '\"normal\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.translationKeyFormat', 'null'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.translationMethod', '\"none\"'),
('fields.d4d31591-60bd-4408-abfd-f6690663b811.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.columnSuffix', '\"cnnoduab\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.contentColumnType', '\"string(255)\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.fieldGroup', '\"82722da7-1dd7-4f9e-9464-3763ba530b9c\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.handle', '\"banner3Link\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.instructions', '\"URL of banner 3\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.name', '\"Banner-3-Link\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.searchable', 'false'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.settings.maxLength', '\"255\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.settings.placeholder', 'null'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.settings.types.0', '\"url\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.translationKeyFormat', 'null'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.translationMethod', '\"none\"'),
('fields.d4f6ab0b-63fb-468b-8f95-eb09218db0b9.type', '\"craft\\\\fields\\\\Url\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.columnSuffix', 'null'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.contentColumnType', '\"string\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.fieldGroup', '\"23fd8410-c22f-4ce2-b9e9-ee18ea33273b\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.handle', '\"cards\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.instructions', '\"\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.name', '\"cards\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.searchable', 'false'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.settings.contentTable', '\"{{%matrixcontent_cards}}\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.settings.maxBlocks', '\"\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.settings.minBlocks', '\"\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.settings.propagationKeyFormat', 'null'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.settings.propagationMethod', '\"all\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.translationKeyFormat', 'null'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.translationMethod', '\"site\"'),
('fields.e086403e-cb4a-4067-bc9a-2499f48f4ce2.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.columnSuffix', '\"hqszlxju\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.contentColumnType', '\"string(255)\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.fieldGroup', '\"7f2b0963-a4ad-4703-840c-08c8724c33b1\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.handle', '\"mediaLink\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.instructions', '\"blue section link\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.name', '\"media link\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.searchable', 'false'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.settings.maxLength', '\"255\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.settings.placeholder', 'null'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.settings.types.0', '\"url\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.translationKeyFormat', 'null'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.translationMethod', '\"none\"'),
('fields.ef996b5c-981c-4112-b43f-57ed82543500.type', '\"craft\\\\fields\\\\Url\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.columnSuffix', '\"qxiwlxjp\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.contentColumnType', '\"text\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.fieldGroup', '\"7a277a0a-ee6c-4522-b7fa-8e3021062db2\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.handle', '\"banner2Intro\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.instructions', '\"Intro Text of banner 2\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.name', '\"Banner-2-Intro\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.searchable', 'false'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.byteLimit', 'null'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.charLimit', 'null'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.code', '\"\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.columnType', 'null'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.initialRows', '\"4\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.multiline', '\"1\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.placeholder', 'null'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.settings.uiMode', '\"normal\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.translationKeyFormat', 'null'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.translationMethod', '\"none\"'),
('fields.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.columnSuffix', '\"ddwmadjc\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.contentColumnType', '\"text\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.fieldGroup', '\"edaea6ac-1538-4dda-9d2d-85a8636bae59\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.handle', '\"contactIntro\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.instructions', '\"contact section top message.\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.name', '\"contact intro\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.searchable', 'false'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.byteLimit', 'null'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.charLimit', 'null'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.code', '\"\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.columnType', 'null'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.initialRows', '\"2\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.multiline', '\"1\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.placeholder', '\"A message followed by a way to get in touch.\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.settings.uiMode', '\"normal\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.translationKeyFormat', 'null'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.translationMethod', '\"none\"'),
('fields.f618f24d-1432-4a01-b327-c470351c42d8.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.columnSuffix', '\"hnlmlqql\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.contentColumnType', '\"text\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.fieldGroup', '\"d704237c-11fc-46b1-8ca4-400a705e7aa4\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.handle', '\"middleIntro\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.instructions', '\"middle intro text between slider and card\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.name', '\"MiddleIntro\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.searchable', 'false'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.byteLimit', 'null'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.charLimit', 'null'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.code', '\"\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.columnType', 'null'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.initialRows', '\"4\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.multiline', '\"1\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.placeholder', 'null'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.settings.uiMode', '\"normal\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.translationKeyFormat', 'null'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.translationMethod', '\"none\"'),
('fields.f776acaa-08b3-4ea5-a697-d36aacf95da5.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.field', '\"e086403e-cb4a-4067-bc9a-2499f48f4ce2\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.fieldUid', '\"500e1a67-48df-4cde-805d-aea18054434c\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.fieldUid', '\"7f2485d2-c5a3-481d-80a6-5f2873f12039\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.fieldUid', '\"e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.required', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.fieldUid', '\"aab2b4b1-eb1d-404d-9277-ca1103cf4062\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.instructions', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.label', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.required', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.tip', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.warning', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.3.width', '100'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.fieldUid', '\"9f841d87-d06b-42ad-aa43-b94acfb9ef80\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.instructions', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.label', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.required', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.tip', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.warning', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.elements.4.width', '100'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fieldLayouts.4d6775b0-8092-4a23-b532-f44c4bf9d8c1.tabs.0.sortOrder', '1'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.columnSuffix', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.contentColumnType', '\"string\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.fieldGroup', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.handle', '\"cardsImage\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.instructions', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.name', '\"cards-image\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.searchable', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.allowUploads', 'true'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.defaultUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.limit', '\"1\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.localizeRelations', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.previewMode', '\"full\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.restrictFiles', '\"1\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.showSiteMenu', 'true'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.singleUploadLocationSource', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.source', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.sources.0', '\"volume:0826ef63-13c2-4164-b44d-701e67a12144\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.targetSiteId', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.useSingleFolder', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.settings.viewMode', '\"large\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.translationKeyFormat', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.translationMethod', '\"site\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.500e1a67-48df-4cde-805d-aea18054434c.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.columnSuffix', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.contentColumnType', '\"text\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.fieldGroup', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.handle', '\"cardsTitle\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.instructions', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.name', '\"cards-title\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.searchable', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.byteLimit', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.charLimit', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.code', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.columnType', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.initialRows', '\"4\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.multiline', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.placeholder', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.translationKeyFormat', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.translationMethod', '\"none\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.7f2485d2-c5a3-481d-80a6-5f2873f12039.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.columnSuffix', '\"ylrpawib\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.contentColumnType', '\"string\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.fieldGroup', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.handle', '\"cardsGroup\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.instructions', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.name', '\"cards group\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.searchable', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.optgroups', 'true'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.0.0', '\"label\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.0.1', '\"group1\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.1.0', '\"value\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.1.1', '\"group1\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.2.0', '\"default\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.0.__assoc__.2.1', '\"1\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.0.0', '\"label\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.0.1', '\"group2\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.1.0', '\"value\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.1.1', '\"group2\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.2.0', '\"default\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.1.__assoc__.2.1', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.0.0', '\"label\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.0.1', '\"group3\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.1.0', '\"value\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.1.1', '\"group3\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.2.0', '\"default\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.settings.options.2.__assoc__.2.1', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.translationKeyFormat', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.translationMethod', '\"none\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.9f841d87-d06b-42ad-aa43-b94acfb9ef80.type', '\"craft\\\\fields\\\\Dropdown\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.columnSuffix', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.fieldGroup', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.handle', '\"cardsLink\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.instructions', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.name', '\"cards link\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.searchable', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.settings.maxLength', '\"255\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.settings.placeholder', 'null');
INSERT INTO `bao_projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.settings.types.0', '\"url\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.translationKeyFormat', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.translationMethod', '\"none\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.aab2b4b1-eb1d-404d-9277-ca1103cf4062.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.columnSuffix', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.contentColumnType', '\"text\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.fieldGroup', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.handle', '\"cardsIntro\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.instructions', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.name', '\"cards intro\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.searchable', 'false'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.byteLimit', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.charLimit', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.code', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.columnType', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.initialRows', '\"4\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.multiline', '\"\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.placeholder', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.translationKeyFormat', 'null'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.translationMethod', '\"none\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.fields.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.handle', '\"cardsContent\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.name', '\"Cards-Content\"'),
('matrixBlockTypes.0fb12c8b-904a-4033-87ad-39c6f85bb87c.sortOrder', '1'),
('meta.__names__.07155247-ec99-4c47-a713-75bdd40bf1ad', '\"Banner-1-Link\"'),
('meta.__names__.0826ef63-13c2-4164-b44d-701e67a12144', '\"Uploads\"'),
('meta.__names__.0d995f2b-c48f-4124-afb7-de8f54e80bf3', '\"Banner-1-intro\"'),
('meta.__names__.0fb12c8b-904a-4033-87ad-39c6f85bb87c', '\"Cards-Content\"'),
('meta.__names__.10b3d775-4f2f-43be-9de2-1d1039b56756', '\"Footer Address\"'),
('meta.__names__.178ae8bc-0106-4a41-ad55-9c250c0c761d', '\"Home\"'),
('meta.__names__.2030c2a6-434f-4f19-8a52-62114facdfea', '\"media intro\"'),
('meta.__names__.23fd8410-c22f-4ce2-b9e9-ee18ea33273b', '\"card\"'),
('meta.__names__.2b2d4db6-ead8-498d-b816-7e16c41bea7a', '\"twitter\"'),
('meta.__names__.2ec35f1a-ce92-4a7d-9cd5-091a0597a602', '\"Banner-1-Image\"'),
('meta.__names__.31175c8e-9ffa-402b-bb55-0284dde8d9c9', '\"MiddleButton\"'),
('meta.__names__.31719a5f-4a18-44bb-9b82-832aa75b2957', '\"facebook\"'),
('meta.__names__.4b95413d-708c-41ea-9401-2b18a9d4e719', '\"Banner-3-Image\"'),
('meta.__names__.500e1a67-48df-4cde-805d-aea18054434c', '\"cards-image\"'),
('meta.__names__.5567ee76-83a7-47d6-9e0d-2517d8eca698', '\"media Image\"'),
('meta.__names__.57242f8d-0c33-46b1-8f55-5bcafcbced44', '\"MiddleTitle\"'),
('meta.__names__.5f122c15-582f-4e17-a1b3-8e54482c2b1d', '\"linkedin\"'),
('meta.__names__.60f59284-2f43-4dba-ab5a-012ef113d8f6', '\"Banner-2-Image\"'),
('meta.__names__.623423b0-765e-40ba-8b74-91f6275846cc', '\"Banner-2-Title\"'),
('meta.__names__.6ea547fb-7732-477d-a633-073ad70b7233', '\"Home Banner 1\"'),
('meta.__names__.7a277a0a-ee6c-4522-b7fa-8e3021062db2', '\"Home Banner 2\"'),
('meta.__names__.7c462d2b-74f8-405b-921f-fc656b0982a8', '\"Demo\"'),
('meta.__names__.7f2485d2-c5a3-481d-80a6-5f2873f12039', '\"cards-title\"'),
('meta.__names__.7f2b0963-a4ad-4703-840c-08c8724c33b1', '\"home blue section\"'),
('meta.__names__.81694b47-4192-42ec-8785-18ec79a57ec3', '\"instagram\"'),
('meta.__names__.82722da7-1dd7-4f9e-9464-3763ba530b9c', '\"Home Banner 3\"'),
('meta.__names__.889e7ff0-4ff2-4318-ac7a-b4e25c7da6c2', '\"Banner-2-Link\"'),
('meta.__names__.8de780dc-3b2e-429f-821f-04af829ae293', '\"Banner 3 Intro\"'),
('meta.__names__.9418c922-8791-4be4-80e6-15b330717c37', '\"Demo\"'),
('meta.__names__.9732aa51-b630-40a6-96e6-bb26790edb8b', '\"Footer\"'),
('meta.__names__.9f841d87-d06b-42ad-aa43-b94acfb9ef80', '\"cards group\"'),
('meta.__names__.a8e37e54-11aa-49bc-bfdf-b251e3eeebe2', '\"footer phone\"'),
('meta.__names__.aab2b4b1-eb1d-404d-9277-ca1103cf4062', '\"cards link\"'),
('meta.__names__.b66dbdd1-6747-42d7-8227-38d75916f449', '\"footer Email\"'),
('meta.__names__.c51301b9-676d-4cf3-ae32-ba06ede6d98b', '\"contact phone\"'),
('meta.__names__.c519cc4e-184b-407b-a0d2-fda61f904828', '\"Banner-3-Title\"'),
('meta.__names__.cc570e1e-cde3-4bb7-a76b-68c83b676eac', '\"media-title\"'),
('meta.__names__.d4d31591-60bd-4408-abfd-f6690663b811', '\"Banner-1-Title\"'),
('meta.__names__.d4f6ab0b-63fb-468b-8f95-eb09218db0b9', '\"Banner-3-Link\"'),
('meta.__names__.d704237c-11fc-46b1-8ca4-400a705e7aa4', '\"MiddleContent\"'),
('meta.__names__.e086403e-cb4a-4067-bc9a-2499f48f4ce2', '\"cards\"'),
('meta.__names__.e5f9d053-3cc3-485b-a2ee-2e7f1d7502ea', '\"cards intro\"'),
('meta.__names__.e85b409e-763e-4089-9fab-e552b8e9e4c4', '\"Common\"'),
('meta.__names__.edaea6ac-1538-4dda-9d2d-85a8636bae59', '\"Home Contact\"'),
('meta.__names__.ef996b5c-981c-4112-b43f-57ed82543500', '\"media link\"'),
('meta.__names__.f1e7cb1b-ad4b-4c8e-8ef0-14f8e64daead', '\"Banner-2-Intro\"'),
('meta.__names__.f618f24d-1432-4a01-b327-c470351c42d8', '\"contact intro\"'),
('meta.__names__.f6f9de35-ef9d-4953-af2d-c36d424d74e9', '\"Home\"'),
('meta.__names__.f776acaa-08b3-4ea5-a697-d36aacf95da5', '\"MiddleIntro\"'),
('plugins.element-api.edition', '\"standard\"'),
('plugins.element-api.enabled', 'true'),
('plugins.element-api.schemaVersion', '\"1.0.0\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.defaultPlacement', '\"end\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.enableVersioning', 'true'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.handle', '\"home\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.name', '\"Home\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.propagationMethod', '\"all\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.siteSettings.9418c922-8791-4be4-80e6-15b330717c37.enabledByDefault', 'true'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.siteSettings.9418c922-8791-4be4-80e6-15b330717c37.hasUrls', 'true'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.siteSettings.9418c922-8791-4be4-80e6-15b330717c37.template', '\"index\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.siteSettings.9418c922-8791-4be4-80e6-15b330717c37.uriFormat', '\"__home__\"'),
('sections.f6f9de35-ef9d-4953-af2d-c36d424d74e9.type', '\"single\"'),
('siteGroups.7c462d2b-74f8-405b-921f-fc656b0982a8.name', '\"Demo\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.handle', '\"default\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.hasUrls', 'true'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.language', '\"en-US\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.name', '\"Demo\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.primary', 'true'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.siteGroup', '\"7c462d2b-74f8-405b-921f-fc656b0982a8\"'),
('sites.9418c922-8791-4be4-80e6-15b330717c37.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Demo\"'),
('system.schemaVersion', '\"3.7.7\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.autocomplete', 'false'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.autocorrect', 'true'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.class', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.disabled', 'false'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.id', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.instructions', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.label', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.max', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.min', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.name', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.orientation', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.placeholder', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.readonly', 'false'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.requirable', 'false'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.size', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.step', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.tip', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.title', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.warning', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.elements.0.width', '100'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.name', '\"Content\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.fieldLayouts.77daae1e-77aa-41be-9c65-839a294eb8f5.tabs.0.sortOrder', '1'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.handle', '\"uploads\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.hasUrls', 'true'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.name', '\"Uploads\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.settings.path', '\"$ASSET_BASE_PATH\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.sortOrder', '1'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.titleTranslationKeyFormat', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.titleTranslationMethod', 'null'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.0826ef63-13c2-4164-b44d-701e67a12144.url', '\"$ASSET_BASE_URL\"');

-- --------------------------------------------------------

--
-- Table structure for table `bao_queue`
--

CREATE TABLE `bao_queue` (
                             `id` int(11) NOT NULL,
                             `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
                             `job` longblob NOT NULL,
                             `description` text COLLATE utf8_unicode_ci,
                             `timePushed` int(11) NOT NULL,
                             `ttr` int(11) NOT NULL,
                             `delay` int(11) NOT NULL DEFAULT '0',
                             `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
                             `dateReserved` datetime DEFAULT NULL,
                             `timeUpdated` int(11) DEFAULT NULL,
                             `progress` smallint(6) NOT NULL DEFAULT '0',
                             `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `attempt` int(11) DEFAULT NULL,
                             `fail` tinyint(1) DEFAULT '0',
                             `dateFailed` datetime DEFAULT NULL,
                             `error` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_relations`
--

CREATE TABLE `bao_relations` (
                                 `id` int(11) NOT NULL,
                                 `fieldId` int(11) NOT NULL,
                                 `sourceId` int(11) NOT NULL,
                                 `sourceSiteId` int(11) DEFAULT NULL,
                                 `targetId` int(11) NOT NULL,
                                 `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                                 `dateCreated` datetime NOT NULL,
                                 `dateUpdated` datetime NOT NULL,
                                 `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_relations`
--

INSERT INTO `bao_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 4, NULL, 11, 1, '2021-07-28 17:07:38', '2021-07-28 17:07:38', 'afe8fc7d-c38d-45a4-b2c0-252d9a15bdf0'),
(3, 1, 14, NULL, 11, 1, '2021-07-28 17:07:38', '2021-07-28 17:07:38', 'ac305249-cf4c-4540-a5f9-b17de6aae713'),
(4, 1, 18, NULL, 11, 1, '2021-07-28 17:29:10', '2021-07-28 17:29:10', '5d549836-a490-4829-a5d4-89eeadc2692f'),
(6, 5, 15, NULL, 11, 1, '2021-07-28 17:30:04', '2021-07-28 17:30:04', '2fb2a90d-1e98-4041-bd92-4b2b0d6a70a0'),
(7, 5, 22, NULL, 11, 1, '2021-07-28 17:30:04', '2021-07-28 17:30:04', '9d3bbaa7-2f74-4b15-a698-bd78e51e70ee'),
(9, 9, 19, NULL, 11, 1, '2021-07-28 17:31:08', '2021-07-28 17:31:08', '1706d335-3e17-4d85-8b0a-7e896454b0ab'),
(10, 9, 25, NULL, 11, 1, '2021-07-28 17:31:08', '2021-07-28 17:31:08', 'f0c4fa3d-73d6-49c2-aabc-1f83653c7d71'),
(11, 5, 26, NULL, 11, 1, '2021-07-28 17:42:31', '2021-07-28 17:42:31', 'f18458e5-82d9-4177-bd78-487def6d2bf2'),
(12, 1, 27, NULL, 11, 1, '2021-07-28 17:47:30', '2021-07-28 17:47:30', '7d5f90a2-0fb6-49ea-a484-acb59b8971d2'),
(13, 1, 28, NULL, 11, 1, '2021-07-28 17:47:38', '2021-07-28 17:47:38', 'fe227912-9089-43cb-9071-4284765c9816'),
(17, 5, 4, NULL, 11, 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', '97b1c5d2-86e0-4b6a-95ef-0b227c4cf9e8'),
(18, 9, 4, NULL, 11, 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', 'c2842a38-6711-4aab-b433-36306245bb9e'),
(19, 1, 30, NULL, 11, 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', 'e34aec14-1c55-420d-9e6e-214d5b4ceb96'),
(20, 5, 30, NULL, 11, 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', '5e6851e9-7fb1-4227-a226-d8e5ce1068c1'),
(21, 9, 30, NULL, 11, 1, '2021-07-28 17:48:15', '2021-07-28 17:48:15', '44fdb016-62d9-4933-9277-92d85f75d1d1'),
(22, 1, 31, NULL, 11, 1, '2021-07-28 18:05:53', '2021-07-28 18:05:53', '194770de-1f32-43e6-bf80-a890f35133a9'),
(23, 5, 31, NULL, 11, 1, '2021-07-28 18:05:53', '2021-07-28 18:05:53', '72c65e4e-988c-4f9e-b9c7-ba25eb8e6f61'),
(24, 9, 31, NULL, 11, 1, '2021-07-28 18:05:53', '2021-07-28 18:05:53', 'a5777279-7601-4ec9-bf74-d553be262d6a'),
(25, 1, 32, NULL, 11, 1, '2021-07-28 18:05:54', '2021-07-28 18:05:54', 'd4d35f04-effb-43bd-9fed-b3eafe3a77f8'),
(26, 5, 32, NULL, 11, 1, '2021-07-28 18:05:54', '2021-07-28 18:05:54', '65d444a8-3db5-43ed-b838-6b410c6cf15a'),
(27, 9, 32, NULL, 11, 1, '2021-07-28 18:05:54', '2021-07-28 18:05:54', '9528b3e8-badd-4298-9e82-7f70a37a62b6'),
(28, 1, 33, NULL, 11, 1, '2021-07-28 18:09:13', '2021-07-28 18:09:13', 'a56384a7-b70b-4a8f-9bba-28c5900f07ec'),
(29, 5, 33, NULL, 11, 1, '2021-07-28 18:09:13', '2021-07-28 18:09:13', '3f570ecd-1603-49de-85f4-f06744d1baf3'),
(30, 9, 33, NULL, 11, 1, '2021-07-28 18:09:13', '2021-07-28 18:09:13', '0ac04c32-cf60-422c-9f33-cbf413662574'),
(31, 1, 34, NULL, 11, 1, '2021-07-28 18:09:47', '2021-07-28 18:09:47', 'f0315987-60e0-414d-a675-24c2701a4a8a'),
(32, 5, 34, NULL, 11, 1, '2021-07-28 18:09:47', '2021-07-28 18:09:47', 'fa42cf86-cc89-4477-9ca6-127625076e0f'),
(33, 9, 34, NULL, 11, 1, '2021-07-28 18:09:47', '2021-07-28 18:09:47', '8a69a696-44e5-4d93-a447-85c0f69f2842'),
(37, 1, 36, NULL, 11, 1, '2021-07-28 18:11:32', '2021-07-28 18:11:32', 'af68bc5b-a024-4860-94ba-cb79d1051172'),
(38, 5, 36, NULL, 11, 1, '2021-07-28 18:11:32', '2021-07-28 18:11:32', '3f3c76b1-ca62-409d-96d0-c45c230d4e61'),
(39, 9, 36, NULL, 11, 1, '2021-07-28 18:11:32', '2021-07-28 18:11:32', 'acbc9fe3-eb16-4d49-8818-eea515bee4de'),
(40, 1, 37, NULL, 11, 1, '2021-07-28 18:26:46', '2021-07-28 18:26:46', '983fa769-f4d5-4927-a39f-8f21b6ab15f7'),
(41, 5, 37, NULL, 11, 1, '2021-07-28 18:26:46', '2021-07-28 18:26:46', '2ae1ba1e-ab61-44ed-b9da-401651906564'),
(42, 9, 37, NULL, 11, 1, '2021-07-28 18:26:46', '2021-07-28 18:26:46', '8c929d5a-bdf1-43d1-8260-db9cbd686ad4'),
(47, 19, 44, NULL, 41, 1, '2021-07-28 18:28:55', '2021-07-28 18:28:55', '96af3077-bad5-4484-8702-87bc1fd13fb5'),
(48, 19, 45, NULL, 41, 1, '2021-07-28 18:28:58', '2021-07-28 18:28:58', 'f59ed443-79d9-40de-89f9-07353ac6a0c0'),
(49, 19, 46, NULL, 41, 1, '2021-07-28 18:29:00', '2021-07-28 18:29:00', '3cf3b0c9-1b4f-4268-a66f-2d9265af79f5'),
(50, 19, 47, NULL, 41, 1, '2021-07-28 18:29:01', '2021-07-28 18:29:01', '3918a6ae-dbb3-4633-9cbd-73b934f70fed'),
(51, 19, 49, NULL, 41, 1, '2021-07-28 18:29:06', '2021-07-28 18:29:06', '7b057988-cf54-4c34-887b-a92b661120f1'),
(52, 19, 51, NULL, 41, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', '389a7db9-2cf3-409c-b9a0-6ad24c346eb8'),
(53, 19, 52, NULL, 42, 1, '2021-07-28 18:29:09', '2021-07-28 18:29:09', '02f4ae0b-5346-4b1b-b741-9b2d6ff562b7'),
(54, 19, 53, NULL, 41, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '3f8f6e3e-c489-4611-93b4-0159387430d3'),
(55, 19, 54, NULL, 42, 1, '2021-07-28 18:29:11', '2021-07-28 18:29:11', '0605aeca-fbf1-4ae6-84c6-01b7c725dac8'),
(58, 19, 57, NULL, 40, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', 'b5b79d27-5f60-4b4d-a254-9b70da59ead5'),
(59, 19, 58, NULL, 41, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', '2b591bd3-c19c-4715-bb8c-4b76c47dee89'),
(60, 19, 59, NULL, 42, 1, '2021-07-28 18:29:15', '2021-07-28 18:29:15', 'fa240020-da89-4616-9681-98787ccea502'),
(61, 1, 60, NULL, 11, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'e908c2f9-748b-473a-8ac4-b443989b1cdd'),
(62, 5, 60, NULL, 11, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'c5c2f924-599a-4f75-82f3-8338f0565e8c'),
(63, 9, 60, NULL, 11, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'a16c0fc2-fc3e-4db5-88bb-bce387743657'),
(64, 19, 61, NULL, 40, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', 'b568469f-4ea8-44ad-b7db-ba00023d42ed'),
(65, 19, 62, NULL, 41, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '7d1a0b7b-5971-4dfd-aed6-8d15ea4cc793'),
(66, 19, 63, NULL, 42, 1, '2021-07-28 18:29:16', '2021-07-28 18:29:16', '42e70976-3378-4568-be3b-398964e30c34'),
(73, 19, 69, NULL, 40, 1, '2021-07-28 18:33:45', '2021-07-28 18:33:45', 'fbad4b6f-3454-4081-aa5e-0c28406ffc81'),
(74, 19, 70, NULL, 40, 1, '2021-07-28 18:33:48', '2021-07-28 18:33:48', 'ef752218-9552-44bf-bab2-58d39e11ef68'),
(75, 19, 71, NULL, 40, 1, '2021-07-28 18:33:49', '2021-07-28 18:33:49', '04d1a812-3628-49da-a2be-921dcdc6c6c8'),
(76, 19, 72, NULL, 40, 1, '2021-07-28 18:33:52', '2021-07-28 18:33:52', '1184d116-b41a-48a6-a7ba-fc54ad0308aa'),
(77, 19, 73, NULL, 40, 1, '2021-07-28 18:33:57', '2021-07-28 18:33:57', 'a425d0ce-3911-40e5-a09f-24972bbb9395'),
(78, 19, 74, NULL, 40, 1, '2021-07-28 18:33:58', '2021-07-28 18:33:58', '4b07dcae-15fa-4038-91af-dc689246f677'),
(79, 19, 76, NULL, 40, 1, '2021-07-28 18:34:00', '2021-07-28 18:34:00', 'cd008494-1baa-4c91-8e7b-7e96a469ac6f'),
(80, 19, 78, NULL, 40, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', 'cfb2e702-aa52-4f21-8e76-42f944ea26ce'),
(81, 19, 79, NULL, 41, 1, '2021-07-28 18:34:03', '2021-07-28 18:34:03', '416206e6-4c30-41fb-97af-c6752f39889f'),
(82, 19, 80, NULL, 40, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', 'b32771f8-0993-4464-b85b-d1604685165e'),
(83, 19, 81, NULL, 41, 1, '2021-07-28 18:34:05', '2021-07-28 18:34:05', '8e40e084-5a5b-40fd-9698-577809e47b8e'),
(84, 19, 82, NULL, 40, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', '782480af-01a1-4358-9be3-c46e0d007105'),
(85, 19, 83, NULL, 41, 1, '2021-07-28 18:34:08', '2021-07-28 18:34:08', '43792117-856a-4cef-8c49-369d9e9e72d0'),
(86, 19, 84, NULL, 40, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', '0229906c-678b-475a-b470-abfdf17dbec8'),
(87, 19, 85, NULL, 41, 1, '2021-07-28 18:34:09', '2021-07-28 18:34:09', '7c7fcf27-269b-46dd-bf4d-f951cbc31df5'),
(88, 19, 87, NULL, 40, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '4d7253b4-e8b3-49df-a350-c99fbfff12be'),
(89, 19, 88, NULL, 41, 1, '2021-07-28 18:34:11', '2021-07-28 18:34:11', '863d846a-93ae-4f5d-91b1-8fbe6f634ed5'),
(90, 19, 90, NULL, 40, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '82136722-eed3-4d60-b049-8edeaea7f9ad'),
(91, 19, 91, NULL, 41, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', 'df97b759-7208-4486-b423-9a2cf4284cb4'),
(92, 19, 92, NULL, 42, 1, '2021-07-28 18:34:13', '2021-07-28 18:34:13', '1cc78131-639e-43ca-9988-c6aafe282e06'),
(93, 19, 93, NULL, 40, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', 'db7c9cfc-1e43-4d6f-ac26-52b2213d42ad'),
(94, 19, 94, NULL, 41, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', 'cac06eac-3ac3-4405-95be-5dc97bad3959'),
(95, 19, 95, NULL, 42, 1, '2021-07-28 18:34:15', '2021-07-28 18:34:15', 'ee76f6f4-0896-483e-8da4-3b811256ba8d'),
(99, 19, 99, NULL, 40, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'f27ca4db-d77a-401e-bd5e-b7bc2ebaec18'),
(100, 19, 100, NULL, 41, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '4b0674be-67c0-40f8-ade9-51e5e95886c5'),
(101, 19, 101, NULL, 42, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '68b66428-1c8b-4999-a870-009220f32cba'),
(102, 1, 102, NULL, 11, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '6bf9e783-f961-4530-9468-02684704f4c7'),
(103, 5, 102, NULL, 11, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', '96b1d7e3-7db9-48c6-9ea7-0f90eb53cfcf'),
(104, 9, 102, NULL, 11, 1, '2021-07-28 18:34:19', '2021-07-28 18:34:19', 'cf28a75c-8abc-49d9-a5a1-3073c4c5521b'),
(105, 19, 103, NULL, 40, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '6e60ae8b-30ab-4a99-a9e4-bd732010c647'),
(106, 19, 104, NULL, 41, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'cb08f691-cf8f-4f13-a821-3dd4e511143e'),
(107, 19, 105, NULL, 42, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '26ef8ee2-9509-461e-8e17-fb54f0255fd2'),
(108, 19, 106, NULL, 40, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '893b0d50-17a9-4c60-b998-614b243d7599'),
(109, 19, 107, NULL, 41, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', '99fd4fc5-0433-42c7-8448-25f597d9eddc'),
(110, 19, 108, NULL, 42, 1, '2021-07-28 18:34:20', '2021-07-28 18:34:20', 'd31f2f9a-b516-4ccf-ab77-f583de1b7f6e'),
(111, 1, 109, NULL, 11, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '9526fcf6-2f7e-4beb-a41b-fa28787cda36'),
(112, 5, 109, NULL, 11, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'd7c85a45-a394-431c-b4ec-fb0cf54c88fa'),
(113, 9, 109, NULL, 11, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'e8a626fc-95f9-4751-b67f-d14ef00ef5dc'),
(114, 19, 110, NULL, 40, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'd778dfb9-e773-4d93-8a4d-87f57b5720c3'),
(115, 19, 111, NULL, 41, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'b5377c81-301b-43a8-bb9a-e8cb5cc640ba'),
(116, 19, 112, NULL, 42, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '80265575-0406-46de-8294-03697a6d32e7'),
(117, 19, 113, NULL, 40, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', '2daaeda0-66a4-4981-a389-e5f80366c295'),
(118, 19, 114, NULL, 41, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'f3ca3906-3068-4cf1-9a70-1d20ead19279'),
(119, 19, 115, NULL, 42, 1, '2021-07-29 06:47:15', '2021-07-29 06:47:15', 'e6d5efb8-d09f-4996-b069-c3576d6e65ba'),
(130, 24, 4, NULL, 123, 1, '2021-07-29 06:48:32', '2021-07-29 06:48:32', '1008d3c5-1abd-46dd-8402-7b314622fb66'),
(131, 1, 124, NULL, 11, 1, '2021-07-29 06:48:32', '2021-07-29 06:48:32', 'e8c0eb17-8931-47ef-9d14-0c6609201609'),
(132, 5, 124, NULL, 11, 1, '2021-07-29 06:48:32', '2021-07-29 06:48:32', 'a2877915-c80b-489a-ba60-e0e6fbf32776'),
(133, 9, 124, NULL, 11, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'eb6dafa5-21c2-464a-8b77-0192483f04e3'),
(134, 24, 124, NULL, 123, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '6c105501-c0d4-4a64-bf2c-84473ddd43dd'),
(135, 19, 125, NULL, 40, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'f403fb1a-9535-42de-ae17-8dbbb9a61177'),
(136, 19, 126, NULL, 41, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'daa2e191-1a97-4c0c-b389-f600fed69b6b'),
(137, 19, 127, NULL, 42, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '1190ccf1-9d50-4ca7-866e-507d26fd2739'),
(138, 19, 128, NULL, 40, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '9455e238-234e-4924-9702-d4a299528ea7'),
(139, 19, 129, NULL, 41, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', 'd2e77440-8fad-4fd5-a43d-5de5d618a328'),
(140, 19, 130, NULL, 42, 1, '2021-07-29 06:48:33', '2021-07-29 06:48:33', '7ef71ba8-3869-432c-85c9-1e4d40420a33'),
(141, 1, 131, NULL, 11, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '8c4e28bb-961e-4838-b324-f617e38b49ae'),
(142, 5, 131, NULL, 11, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'c1aceac0-0c0d-49e0-b729-ad081fe1eb2c'),
(143, 9, 131, NULL, 11, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '7ab360f5-95c2-4f22-b2f5-bac5e4803bbf'),
(144, 24, 131, NULL, 123, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'c364e592-7fce-464a-a2ef-b56c279c749c'),
(145, 19, 132, NULL, 40, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'fbcb25ba-23fb-42dc-a4f4-1d1b7e37d0c6'),
(146, 19, 133, NULL, 41, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '831d24f6-91ec-4a0f-b03d-f9ca4764d200'),
(147, 19, 134, NULL, 42, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'ad224c1a-2fcb-4737-902f-d20766387bb1'),
(148, 19, 135, NULL, 40, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '778842cb-b600-427c-8a7e-190b1425ee35'),
(149, 19, 136, NULL, 41, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', '27340cce-914c-48e7-ac95-301c004f854d'),
(150, 19, 137, NULL, 42, 1, '2021-07-29 06:56:20', '2021-07-29 06:56:20', 'a27a4b7f-fa29-4749-9591-fcbdbefb1343'),
(161, 1, 145, NULL, 11, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '6bd0389c-9d7c-44be-a197-f2fa178cbd50'),
(162, 5, 145, NULL, 11, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '96e58b45-dde3-4997-8ab7-6a83b9b8f203'),
(163, 9, 145, NULL, 11, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'cd566bd0-1f7a-4304-8f9d-1dd625b9a203'),
(164, 24, 145, NULL, 123, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '12430f6b-ca34-413d-8ae3-7344999fc96f'),
(165, 19, 146, NULL, 40, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'd12e4fdc-ed0a-4c53-8140-0cfd1b643731'),
(166, 19, 147, NULL, 41, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '2c5555fa-c4fd-415f-a90b-1fe0110732e0'),
(167, 19, 148, NULL, 42, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '950ea9f5-e81d-4993-8815-354899e54143'),
(168, 19, 149, NULL, 40, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '6aa62d03-88a3-4804-92ed-23f82f95afff'),
(169, 19, 150, NULL, 41, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', 'de688314-9384-4dd3-9ac8-9004a943b7da'),
(170, 19, 151, NULL, 42, 1, '2021-07-29 06:56:36', '2021-07-29 06:56:36', '686300f7-abfd-4000-8e3f-3d2c24f24013'),
(171, 1, 152, NULL, 11, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '249b9f93-419f-46cc-baf0-16cff8e9aa59'),
(172, 5, 152, NULL, 11, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'd823b30f-75bc-4096-be12-511cfb56d5c0'),
(173, 9, 152, NULL, 11, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '4a0da544-3c99-4a08-81b8-65e4a1812c4e'),
(174, 24, 152, NULL, 123, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '56c00970-9a5a-4204-8c34-8c69a9f8924c'),
(175, 19, 153, NULL, 40, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'c495f5dc-a4ee-40aa-8c54-32e174485000'),
(176, 19, 154, NULL, 41, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'ea859f40-2a00-4bd4-984f-e92c75ece71a'),
(177, 19, 155, NULL, 42, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '1e98beee-35ff-4f6a-affb-d1f427a8feb7'),
(178, 19, 156, NULL, 40, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '91731cf0-97d4-4327-b81d-459a988b5535'),
(179, 19, 157, NULL, 41, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', '2db370d7-5bdf-4323-b563-145857b82cab'),
(180, 19, 158, NULL, 42, 1, '2021-07-29 06:59:06', '2021-07-29 06:59:06', 'b0be186c-6efa-4e03-8694-24fa9956f472'),
(191, 1, 166, NULL, 11, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'e9931faf-0125-4c82-b356-5376fc1249ef'),
(192, 5, 166, NULL, 11, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'ec3ff6b5-3423-4460-804d-71b3f15dd1bc'),
(193, 9, 166, NULL, 11, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'e6c27ce7-c249-46ab-bdee-d0750116c742'),
(194, 24, 166, NULL, 123, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '5ddfeaae-cf88-4674-a6f5-49d820972045'),
(195, 19, 167, NULL, 40, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '72e1201c-f808-4972-84fd-fd455f80f586'),
(196, 19, 168, NULL, 41, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'c2c44e42-9a0e-4130-a652-34cd0e7060f6'),
(197, 19, 169, NULL, 42, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '62546967-2806-4b07-994e-c7fb402f31f0'),
(198, 19, 170, NULL, 40, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', '755f4401-ef19-4783-a9c7-5599b8b3bebd'),
(199, 19, 171, NULL, 41, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'd54f50ec-a7ad-4532-8a0e-bbd482fd3198'),
(200, 19, 172, NULL, 42, 1, '2021-07-29 07:00:10', '2021-07-29 07:00:10', 'dc4f1525-587a-4d84-9012-9e12ef44e599'),
(211, 1, 180, NULL, 11, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'c11e5cc6-456d-4e27-b96b-21e5eb69a687'),
(212, 5, 180, NULL, 11, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'd2bcc9a8-dfd5-418d-9a2b-a32a3ec64cc1'),
(213, 9, 180, NULL, 11, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '35b74236-ab6d-4c98-b2d1-8e53522a810d'),
(214, 24, 180, NULL, 123, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '3ad3d25e-edf9-456b-b685-14697cbee004'),
(215, 19, 181, NULL, 40, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '71df6f62-70af-480d-8208-25429dfe0941'),
(216, 19, 182, NULL, 41, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'a3686574-5f53-4070-8f9d-b0063a6f15ba'),
(217, 19, 183, NULL, 42, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'c9c62cfe-ce0d-4c2d-b47a-3f6ed967ae62'),
(218, 19, 184, NULL, 40, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'c6ece3bd-51c2-4c4e-b4ab-58e68127bd61'),
(219, 19, 185, NULL, 41, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', 'e9155eee-bfc3-4f4f-bb7c-ea8eaceccf9c'),
(220, 19, 186, NULL, 42, 1, '2021-07-29 07:05:32', '2021-07-29 07:05:32', '65a30c5f-3835-4cae-a010-83530a6b123a'),
(221, 1, 187, NULL, 11, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'b72610e3-9de3-4a6e-9160-e8830cc02908'),
(222, 5, 187, NULL, 11, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'c9820b17-49a8-4d7f-96b4-d6151dbd7389'),
(223, 9, 187, NULL, 11, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '78a74608-afc7-480b-81fb-9f097c581479'),
(224, 24, 187, NULL, 123, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '94fe6de0-a140-4fad-adee-321360ebebd1'),
(225, 19, 188, NULL, 40, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '8aedc340-05e5-43ce-80ea-a5bd2c4f2eaf'),
(226, 19, 189, NULL, 41, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'e9896b5d-1f40-47ef-88d9-e599bdbdda4e'),
(227, 19, 190, NULL, 42, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '374f78f0-32c7-4aa2-95b7-cc717bc14795'),
(228, 19, 191, NULL, 40, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'faa36964-dfd8-46da-b192-6aef09f31f72'),
(229, 19, 192, NULL, 41, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', 'a2fc41a2-0159-4585-afa8-5829a5e48fce'),
(230, 19, 193, NULL, 42, 1, '2021-07-29 07:07:23', '2021-07-29 07:07:23', '2d505792-0e6f-46c2-a3da-8312507c28fb');

-- --------------------------------------------------------

--
-- Table structure for table `bao_resourcepaths`
--

CREATE TABLE `bao_resourcepaths` (
                                     `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                     `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_resourcepaths`
--

INSERT INTO `bao_resourcepaths` (`hash`, `path`) VALUES
('115baca6', '@craft/web/assets/cp/dist'),
('1233377e', '@bower/jquery/dist'),
('177489ef', '@lib/selectize'),
('17eaf523', '@craft/web/assets/editentry/dist'),
('18209cdb', '@craft/web/assets/pluginstore/dist'),
('1d18cd65', '@lib/xregexp'),
('1f9b6feb', '@lib/jquery.payment'),
('20a216c', '@craft/web/assets/generalsettings/dist'),
('20d29a6c', '@app/web/assets/editsection/dist'),
('2aed5154', '@app/web/assets/plugins/dist'),
('36e3d817', '@app/web/assets/admintable/dist'),
('374c3723', '@craft/web/assets/dashboard/dist'),
('3bcc003', '@lib/velocity'),
('3c5c7106', '@craft/web/assets/updater/dist'),
('3da39c8b', '@lib/element-resize-detector'),
('430aa46b', '@lib/picturefill'),
('44ae98a9', '@lib/jquery-touch-events'),
('46289220', '@lib/prismjs'),
('47a2fc73', '@app/web/assets/matrix/dist'),
('47c21bef', '@lib/axios'),
('4880de47', '@app/web/assets/editentry/dist'),
('4ba9946c', '@craft/web/assets/utilities/dist'),
('4d155ba6', '@lib/jquery-ui'),
('4daf843a', '@lib/d3'),
('4e0f11e8', '@craft/web/assets/feed/dist'),
('5572b605', '@craft/web/assets/editsection/dist'),
('57419a82', '@lib/iframe-resizer'),
('5be2a595', '@lib/fileupload'),
('62bf76ba', '@craft/web/assets/admintable/dist'),
('666566e', '@craft/web/assets/fieldsettings/dist'),
('68261c47', '@app/web/assets/dashboard/dist'),
('6a29b89a', '@lib/vue'),
('6b544782', '@lib/fabric'),
('6b918e6f', '@craft/web/assets/fields/dist'),
('6f413209', '@app/web/assets/fields/dist'),
('711a2cac', '@craft/web/assets/craftsupport/dist'),
('791c9b61', '@craft/web/assets/login/dist'),
('7e1293bc', '@lib/garnishjs'),
('859f14b1', '@app/web/assets/fieldsettings/dist'),
('864e9b29', '@app/web/assets/craftsupport/dist'),
('86710a07', '@lib/fileupload'),
('88e11997', '@craft/web/assets/editsection/dist'),
('88e2a9dd', '@craft/web/assets/sites/dist'),
('8ad23510', '@lib/iframe-resizer'),
('8e384585', '@craft/web/assets/plugins/dist'),
('903c2ba8', '@lib/d3'),
('9086f434', '@lib/jquery-ui'),
('963a3bfe', '@craft/web/assets/utilities/dist'),
('993d373b', '@lib/jquery-touch-events'),
('9a51b47d', '@lib/axios'),
('9c785bf9', '@app/web/assets/generalsettings/dist'),
('9e990bf9', '@lib/picturefill'),
('a3813c2e', '@lib/garnishjs'),
('a8ac94', '@app/web/assets/edituser/dist'),
('ab2b520b', '@app/web/assets/cp/dist'),
('af154775', '@app/web/assets/login/dist'),
('b0131f20', '@app/web/assets/pluginstore/dist'),
('b60221fd', '@craft/web/assets/fields/dist'),
('b6667586', '@app/web/assets/recententries/dist'),
('b6c7e810', '@lib/fabric'),
('b7ba1708', '@lib/vue'),
('bf2cd928', '@craft/web/assets/admintable/dist'),
('c08b62f7', '@lib/xregexp'),
('c1b458e2', '@craft/web/assets/installer/dist'),
('c208c079', '@lib/jquery.payment'),
('c5b33349', '@craft/web/assets/pluginstore/dist'),
('c950109a', '@app/web/assets/utilities/dist'),
('ca795ab1', '@craft/web/assets/editentry/dist'),
('cae7267d', '@lib/selectize'),
('ccc80334', '@craft/web/assets/cp/dist'),
('cfa098ec', '@bower/jquery/dist'),
('d23019b5', '@app/web/assets/feed/dist'),
('d6b6daa5', '@craft/web/assets/updateswidget/dist'),
('dbf5f9fc', '@craft/web/assets/fieldsettings/dist'),
('de2f6f91', '@lib/velocity'),
('e0303319', '@lib/element-resize-detector'),
('e1cfde94', '@craft/web/assets/updater/dist'),
('e3fa4dda', '@app/web/assets/matrixsettings/dist'),
('e80c98cb', '@craft/web/assets/recententries/dist'),
('e82f3f01', '@lib/iframe-resizer-cw'),
('e9d6875', '@craft/web/assets/updates/dist'),
('ff743a82', '@lib/timepicker');

-- --------------------------------------------------------

--
-- Table structure for table `bao_revisions`
--

CREATE TABLE `bao_revisions` (
                                 `id` int(11) NOT NULL,
                                 `sourceId` int(11) NOT NULL,
                                 `creatorId` int(11) DEFAULT NULL,
                                 `num` int(11) NOT NULL,
                                 `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_revisions`
--

INSERT INTO `bao_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 4, 1, 1, NULL),
(2, 4, 1, 2, NULL),
(3, 4, 1, 3, NULL),
(4, 4, 1, 4, NULL),
(5, 4, 1, 5, 'Applied “Draft 1”'),
(6, 4, 1, 6, 'Applied “Draft 1”'),
(7, 15, 1, 1, NULL),
(8, 15, 1, 2, NULL),
(9, 4, 1, 7, NULL),
(10, 19, 1, 1, NULL),
(11, 15, 1, 3, 'Applied “Draft 1”'),
(12, 19, 1, 2, NULL),
(13, 19, 1, 3, 'Applied “Draft 1”'),
(14, 15, 1, 4, ''),
(15, 4, 1, 8, NULL),
(16, 4, 1, 9, NULL),
(17, 4, 1, 10, 'Applied “Draft 1”'),
(18, 4, 1, 11, NULL),
(19, 4, 1, 12, NULL),
(20, 4, 1, 13, NULL),
(21, 4, 1, 14, NULL),
(22, 4, 1, 15, 'Applied “Draft 1”'),
(23, 4, 1, 16, NULL),
(24, 4, 1, 17, 'Applied “Draft 1”'),
(25, 4, 1, 18, 'Applied “Draft 1”'),
(26, 4, 1, 19, NULL),
(27, 4, 1, 20, 'Applied “Draft 1”'),
(28, 4, 1, 21, NULL),
(29, 4, 1, 22, 'Applied “Draft 1”'),
(30, 4, 1, 23, NULL),
(31, 4, 1, 24, 'Applied “Draft 1”'),
(32, 4, 1, 25, 'Applied “Draft 1”'),
(33, 4, 1, 26, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bao_searchindex`
--

CREATE TABLE `bao_searchindex` (
                                   `elementId` int(11) NOT NULL,
                                   `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
                                   `fieldId` int(11) NOT NULL,
                                   `siteId` int(11) NOT NULL,
                                   `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_searchindex`
--

INSERT INTO `bao_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(2, 'slug', 0, 1, ' temp edvficgtjiuyhwrsbopnmmthpwyeioxgeikz '),
(2, 'title', 0, 1, ''),
(3, 'slug', 0, 1, ' temp dzvqaxmiuhcwyhobxmzfhewrnmjcmxtnjfrm '),
(3, 'title', 0, 1, ''),
(4, 'title', 0, 1, ' home '),
(4, 'slug', 0, 1, ' home '),
(11, 'filename', 0, 1, ' mainstage png '),
(11, 'extension', 0, 1, ' png '),
(11, 'kind', 0, 1, ' image '),
(11, 'slug', 0, 1, ''),
(11, 'title', 0, 1, ' mainstage '),
(12, 'filename', 0, 1, ' mainstage 2021 07 28 170630 sukp png '),
(12, 'extension', 0, 1, ' png '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' mainstage '),
(15, 'slug', 0, 1, ' home banner 2 '),
(15, 'title', 0, 1, ' home banner 2 '),
(57, 'slug', 0, 1, ''),
(19, 'slug', 0, 1, ' home banner 3 '),
(19, 'title', 0, 1, ' home banner 3 '),
(58, 'slug', 0, 1, ''),
(40, 'filename', 0, 1, ' card 1 png '),
(40, 'extension', 0, 1, ' png '),
(40, 'kind', 0, 1, ' image '),
(40, 'slug', 0, 1, ''),
(40, 'title', 0, 1, ' card 1 '),
(41, 'filename', 0, 1, ' card 2 png '),
(41, 'extension', 0, 1, ' png '),
(41, 'kind', 0, 1, ' image '),
(41, 'slug', 0, 1, ''),
(41, 'title', 0, 1, ' card 2 '),
(42, 'filename', 0, 1, ' card 3 png '),
(42, 'extension', 0, 1, ' png '),
(42, 'kind', 0, 1, ' image '),
(42, 'slug', 0, 1, ''),
(42, 'title', 0, 1, ' card 3 '),
(59, 'slug', 0, 1, ''),
(61, 'slug', 0, 1, ''),
(62, 'slug', 0, 1, ''),
(63, 'slug', 0, 1, ''),
(99, 'slug', 0, 1, ''),
(100, 'slug', 0, 1, ''),
(101, 'slug', 0, 1, ''),
(103, 'slug', 0, 1, ''),
(104, 'slug', 0, 1, ''),
(105, 'slug', 0, 1, ''),
(106, 'slug', 0, 1, ''),
(107, 'slug', 0, 1, ''),
(108, 'slug', 0, 1, ''),
(110, 'slug', 0, 1, ''),
(111, 'slug', 0, 1, ''),
(112, 'slug', 0, 1, ''),
(113, 'slug', 0, 1, ''),
(114, 'slug', 0, 1, ''),
(115, 'slug', 0, 1, ''),
(125, 'slug', 0, 1, ''),
(126, 'slug', 0, 1, ''),
(127, 'slug', 0, 1, ''),
(132, 'slug', 0, 1, ''),
(130, 'slug', 0, 1, ''),
(129, 'slug', 0, 1, ''),
(128, 'slug', 0, 1, ''),
(123, 'filename', 0, 1, ' media png '),
(123, 'extension', 0, 1, ' png '),
(123, 'kind', 0, 1, ' image '),
(123, 'slug', 0, 1, ''),
(123, 'title', 0, 1, ' media '),
(133, 'slug', 0, 1, ''),
(134, 'slug', 0, 1, ''),
(135, 'slug', 0, 1, ''),
(136, 'slug', 0, 1, ''),
(137, 'slug', 0, 1, ''),
(146, 'slug', 0, 1, ''),
(147, 'slug', 0, 1, ''),
(148, 'slug', 0, 1, ''),
(149, 'slug', 0, 1, ''),
(150, 'slug', 0, 1, ''),
(151, 'slug', 0, 1, ''),
(153, 'slug', 0, 1, ''),
(154, 'slug', 0, 1, ''),
(155, 'slug', 0, 1, ''),
(156, 'slug', 0, 1, ''),
(157, 'slug', 0, 1, ''),
(158, 'slug', 0, 1, ''),
(168, 'slug', 0, 1, ''),
(169, 'slug', 0, 1, ''),
(170, 'slug', 0, 1, ''),
(181, 'slug', 0, 1, ''),
(172, 'slug', 0, 1, ''),
(171, 'slug', 0, 1, ''),
(167, 'slug', 0, 1, ''),
(182, 'slug', 0, 1, ''),
(183, 'slug', 0, 1, ''),
(184, 'slug', 0, 1, ''),
(185, 'slug', 0, 1, ''),
(186, 'slug', 0, 1, ''),
(188, 'slug', 0, 1, ''),
(189, 'slug', 0, 1, ''),
(190, 'slug', 0, 1, ''),
(191, 'slug', 0, 1, ''),
(192, 'slug', 0, 1, ''),
(193, 'slug', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' chubao uk gmail com '),
(1, 'slug', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bao_sections`
--

CREATE TABLE `bao_sections` (
                                `id` int(11) NOT NULL,
                                `structureId` int(11) DEFAULT NULL,
                                `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
                                `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
                                `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
                                `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
                                `previewTargets` text COLLATE utf8_unicode_ci,
                                `dateCreated` datetime NOT NULL,
                                `dateUpdated` datetime NOT NULL,
                                `dateDeleted` datetime DEFAULT NULL,
                                `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_sections`
--

INSERT INTO `bao_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Banner', 'banner', 'structure', 1, 'all', 'end', NULL, '2021-07-28 11:26:59', '2021-07-28 11:26:59', '2021-07-28 11:29:07', 'af4496b0-942c-4457-bb8d-76f6075c23f8'),
(2, NULL, 'Home', 'home', 'single', 1, 'all', 'end', NULL, '2021-07-28 15:47:19', '2021-07-28 18:05:53', NULL, 'f6f9de35-ef9d-4953-af2d-c36d424d74e9'),
(3, NULL, 'Home Banner 2', 'homeBanner2', 'single', 1, 'all', 'end', NULL, '2021-07-28 17:28:05', '2021-07-28 17:28:05', '2021-07-28 17:46:48', 'd874daee-0048-42a1-88a4-c67325296395'),
(4, NULL, 'Home-Banner-3', 'homeBanner3', 'single', 1, 'all', 'end', NULL, '2021-07-28 17:29:31', '2021-07-28 17:29:31', '2021-07-28 17:46:50', '1bc2d7ce-1d70-4d37-a708-897bcb6ba45c');

-- --------------------------------------------------------

--
-- Table structure for table `bao_sections_sites`
--

CREATE TABLE `bao_sections_sites` (
                                      `id` int(11) NOT NULL,
                                      `sectionId` int(11) NOT NULL,
                                      `siteId` int(11) NOT NULL,
                                      `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
                                      `uriFormat` text COLLATE utf8_unicode_ci,
                                      `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
                                      `dateCreated` datetime NOT NULL,
                                      `dateUpdated` datetime NOT NULL,
                                      `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_sections_sites`
--

INSERT INTO `bao_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'banner/{slug}', 'banner/_entry', 1, '2021-07-28 11:26:59', '2021-07-28 11:26:59', '57d97124-a564-4655-a5fa-9fa5d6ecbb64'),
(2, 2, 1, 1, '__home__', 'index', 1, '2021-07-28 15:47:19', '2021-07-28 15:47:19', 'f4faba08-11f7-4ae1-b100-7d723c39d85c'),
(3, 3, 1, 0, NULL, NULL, 1, '2021-07-28 17:28:05', '2021-07-28 17:28:05', '2ebe556e-ce5f-4592-b3e6-5dab3c7a04dd'),
(4, 4, 1, 1, 'home-banner-3', 'index', 1, '2021-07-28 17:29:31', '2021-07-28 17:29:31', '5007a811-9afa-4df3-9b05-b7067ad4e894');

-- --------------------------------------------------------

--
-- Table structure for table `bao_sequences`
--

CREATE TABLE `bao_sequences` (
                                 `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                 `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_sessions`
--

CREATE TABLE `bao_sessions` (
                                `id` int(11) NOT NULL,
                                `userId` int(11) NOT NULL,
                                `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
                                `dateCreated` datetime NOT NULL,
                                `dateUpdated` datetime NOT NULL,
                                `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_sessions`
--

INSERT INTO `bao_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 1, 'btzXQQj5MBzAflSzALsGY_yYg2PRSJiuI2OuRWzjVe_9xTNNe_Y4wp23HF7eOlGxZ4lRUEWYLkDv3Tm2HvWTQlcwfbMz9Ca3M9LL', '2021-07-30 09:20:42', '2021-07-30 09:21:44', 'a81d2371-467c-4369-ac28-d6ab60289b3f');

-- --------------------------------------------------------

--
-- Table structure for table `bao_shunnedmessages`
--

CREATE TABLE `bao_shunnedmessages` (
                                       `id` int(11) NOT NULL,
                                       `userId` int(11) NOT NULL,
                                       `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                       `expiryDate` datetime DEFAULT NULL,
                                       `dateCreated` datetime NOT NULL,
                                       `dateUpdated` datetime NOT NULL,
                                       `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_sitegroups`
--

CREATE TABLE `bao_sitegroups` (
                                  `id` int(11) NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `dateDeleted` datetime DEFAULT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_sitegroups`
--

INSERT INTO `bao_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Demo', '2021-07-27 11:10:28', '2021-07-27 11:10:28', NULL, '7c462d2b-74f8-405b-921f-fc656b0982a8');

-- --------------------------------------------------------

--
-- Table structure for table `bao_sites`
--

CREATE TABLE `bao_sites` (
                             `id` int(11) NOT NULL,
                             `groupId` int(11) NOT NULL,
                             `primary` tinyint(1) NOT NULL,
                             `enabled` tinyint(1) NOT NULL DEFAULT '1',
                             `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                             `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                             `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
                             `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
                             `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                             `dateCreated` datetime NOT NULL,
                             `dateUpdated` datetime NOT NULL,
                             `dateDeleted` datetime DEFAULT NULL,
                             `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_sites`
--

INSERT INTO `bao_sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Demo', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2021-07-27 11:10:28', '2021-07-27 11:10:28', NULL, '9418c922-8791-4be4-80e6-15b330717c37');

-- --------------------------------------------------------

--
-- Table structure for table `bao_structureelements`
--

CREATE TABLE `bao_structureelements` (
                                         `id` int(11) NOT NULL,
                                         `structureId` int(11) NOT NULL,
                                         `elementId` int(11) DEFAULT NULL,
                                         `root` int(11) UNSIGNED DEFAULT NULL,
                                         `lft` int(11) UNSIGNED NOT NULL,
                                         `rgt` int(11) UNSIGNED NOT NULL,
                                         `level` smallint(6) UNSIGNED NOT NULL,
                                         `dateCreated` datetime NOT NULL,
                                         `dateUpdated` datetime NOT NULL,
                                         `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_structureelements`
--

INSERT INTO `bao_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 2, 0, '2021-07-28 11:27:10', '2021-07-28 11:29:07', 'be0ba7bf-2a01-4ef6-9d90-138fbfe82311');

-- --------------------------------------------------------

--
-- Table structure for table `bao_structures`
--

CREATE TABLE `bao_structures` (
                                  `id` int(11) NOT NULL,
                                  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `dateDeleted` datetime DEFAULT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_structures`
--

INSERT INTO `bao_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2021-07-28 11:26:59', '2021-07-28 11:26:59', '2021-07-28 11:29:07', '50c84479-90f4-4c3f-836b-13cd616f9ddc');

-- --------------------------------------------------------

--
-- Table structure for table `bao_systemmessages`
--

CREATE TABLE `bao_systemmessages` (
                                      `id` int(11) NOT NULL,
                                      `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                      `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                      `subject` text COLLATE utf8_unicode_ci NOT NULL,
                                      `body` text COLLATE utf8_unicode_ci NOT NULL,
                                      `dateCreated` datetime NOT NULL,
                                      `dateUpdated` datetime NOT NULL,
                                      `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_taggroups`
--

CREATE TABLE `bao_taggroups` (
                                 `id` int(11) NOT NULL,
                                 `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                 `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                 `fieldLayoutId` int(11) DEFAULT NULL,
                                 `dateCreated` datetime NOT NULL,
                                 `dateUpdated` datetime NOT NULL,
                                 `dateDeleted` datetime DEFAULT NULL,
                                 `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_tags`
--

CREATE TABLE `bao_tags` (
                            `id` int(11) NOT NULL,
                            `groupId` int(11) NOT NULL,
                            `deletedWithGroup` tinyint(1) DEFAULT NULL,
                            `dateCreated` datetime NOT NULL,
                            `dateUpdated` datetime NOT NULL,
                            `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_templatecacheelements`
--

CREATE TABLE `bao_templatecacheelements` (
                                             `id` int(11) NOT NULL,
                                             `cacheId` int(11) NOT NULL,
                                             `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_templatecachequeries`
--

CREATE TABLE `bao_templatecachequeries` (
                                            `id` int(11) NOT NULL,
                                            `cacheId` int(11) NOT NULL,
                                            `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                            `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_templatecaches`
--

CREATE TABLE `bao_templatecaches` (
                                      `id` int(11) NOT NULL,
                                      `siteId` int(11) NOT NULL,
                                      `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                      `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `expiryDate` datetime NOT NULL,
                                      `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_tokens`
--

CREATE TABLE `bao_tokens` (
                              `id` int(11) NOT NULL,
                              `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
                              `route` text COLLATE utf8_unicode_ci,
                              `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
                              `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
                              `expiryDate` datetime NOT NULL,
                              `dateCreated` datetime NOT NULL,
                              `dateUpdated` datetime NOT NULL,
                              `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_tokens`
--

INSERT INTO `bao_tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'hSSTzcsz57ZoMI6kjPLwdQhIsH-mS_bv', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":14,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-07-30 07:05:10', '2021-07-29 07:05:10', '2021-07-29 07:05:10', '7a969e25-c9b2-4633-abdd-94ee14270d18');

-- --------------------------------------------------------

--
-- Table structure for table `bao_usergroups`
--

CREATE TABLE `bao_usergroups` (
                                  `id` int(11) NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                  `description` text COLLATE utf8_unicode_ci,
                                  `dateCreated` datetime NOT NULL,
                                  `dateUpdated` datetime NOT NULL,
                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_usergroups_users`
--

CREATE TABLE `bao_usergroups_users` (
                                        `id` int(11) NOT NULL,
                                        `groupId` int(11) NOT NULL,
                                        `userId` int(11) NOT NULL,
                                        `dateCreated` datetime NOT NULL,
                                        `dateUpdated` datetime NOT NULL,
                                        `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_userpermissions`
--

CREATE TABLE `bao_userpermissions` (
                                       `id` int(11) NOT NULL,
                                       `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                       `dateCreated` datetime NOT NULL,
                                       `dateUpdated` datetime NOT NULL,
                                       `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_userpermissions_usergroups`
--

CREATE TABLE `bao_userpermissions_usergroups` (
                                                  `id` int(11) NOT NULL,
                                                  `permissionId` int(11) NOT NULL,
                                                  `groupId` int(11) NOT NULL,
                                                  `dateCreated` datetime NOT NULL,
                                                  `dateUpdated` datetime NOT NULL,
                                                  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_userpermissions_users`
--

CREATE TABLE `bao_userpermissions_users` (
                                             `id` int(11) NOT NULL,
                                             `permissionId` int(11) NOT NULL,
                                             `userId` int(11) NOT NULL,
                                             `dateCreated` datetime NOT NULL,
                                             `dateUpdated` datetime NOT NULL,
                                             `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bao_userpreferences`
--

CREATE TABLE `bao_userpreferences` (
                                       `userId` int(11) NOT NULL,
                                       `preferences` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_userpreferences`
--

INSERT INTO `bao_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"locale\":null,\"weekStartDay\":\"1\",\"alwaysShowFocusRings\":false,\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `bao_users`
--

CREATE TABLE `bao_users` (
                             `id` int(11) NOT NULL,
                             `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
                             `photoId` int(11) DEFAULT NULL,
                             `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                             `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `admin` tinyint(1) NOT NULL DEFAULT '0',
                             `locked` tinyint(1) NOT NULL DEFAULT '0',
                             `suspended` tinyint(1) NOT NULL DEFAULT '0',
                             `pending` tinyint(1) NOT NULL DEFAULT '0',
                             `lastLoginDate` datetime DEFAULT NULL,
                             `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `invalidLoginWindowStart` datetime DEFAULT NULL,
                             `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
                             `lastInvalidLoginDate` datetime DEFAULT NULL,
                             `lockoutDate` datetime DEFAULT NULL,
                             `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
                             `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `verificationCodeIssuedDate` datetime DEFAULT NULL,
                             `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
                             `lastPasswordChangeDate` datetime DEFAULT NULL,
                             `dateCreated` datetime NOT NULL,
                             `dateUpdated` datetime NOT NULL,
                             `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_users`
--

INSERT INTO `bao_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, '', '', 'chubao.uk@gmail.com', '$2y$13$v2bm4DJWDkEFUJIjolZlBOCNW4kq4v91PbEXzSau/ZMFj60karLJ2', 1, 0, 0, 0, '2021-07-30 09:20:42', NULL, NULL, NULL, '2021-07-30 09:19:56', NULL, 1, NULL, NULL, NULL, 0, '2021-07-30 09:20:28', '2021-07-27 11:10:29', '2021-07-30 09:20:42', '93ce3e37-0ed9-47cc-be6d-22c90a57731a');

-- --------------------------------------------------------

--
-- Table structure for table `bao_volumefolders`
--

CREATE TABLE `bao_volumefolders` (
                                     `id` int(11) NOT NULL,
                                     `parentId` int(11) DEFAULT NULL,
                                     `volumeId` int(11) DEFAULT NULL,
                                     `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                     `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                     `dateCreated` datetime NOT NULL,
                                     `dateUpdated` datetime NOT NULL,
                                     `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_volumefolders`
--

INSERT INTO `bao_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Uploads', '', '2021-07-28 15:59:04', '2021-07-28 15:59:04', '06bfdd80-23bc-4c1f-a9ce-1bd224bb0804'),
(2, NULL, NULL, 'Temporary source', NULL, '2021-07-28 16:56:59', '2021-07-28 16:56:59', '2085e53e-bfe3-4049-9df6-c7acdebc1524'),
(3, 2, NULL, 'user_1', 'user_1/', '2021-07-28 16:56:59', '2021-07-28 16:56:59', 'a2b86f48-68a9-47a7-99f1-37ac09ea8c44');

-- --------------------------------------------------------

--
-- Table structure for table `bao_volumes`
--

CREATE TABLE `bao_volumes` (
                               `id` int(11) NOT NULL,
                               `fieldLayoutId` int(11) DEFAULT NULL,
                               `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
                               `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
                               `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
                               `settings` text COLLATE utf8_unicode_ci,
                               `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                               `dateCreated` datetime NOT NULL,
                               `dateUpdated` datetime NOT NULL,
                               `dateDeleted` datetime DEFAULT NULL,
                               `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_volumes`
--

INSERT INTO `bao_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 3, 'Uploads', 'uploads', 'craft\\volumes\\Local', 1, '$ASSET_BASE_URL', 'site', NULL, '{\"path\":\"$ASSET_BASE_PATH\"}', 1, '2021-07-28 15:59:04', '2021-07-28 15:59:04', NULL, '0826ef63-13c2-4164-b44d-701e67a12144');

-- --------------------------------------------------------

--
-- Table structure for table `bao_widgets`
--

CREATE TABLE `bao_widgets` (
                               `id` int(11) NOT NULL,
                               `userId` int(11) NOT NULL,
                               `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                               `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
                               `colspan` tinyint(3) DEFAULT NULL,
                               `settings` text COLLATE utf8_unicode_ci,
                               `enabled` tinyint(1) NOT NULL DEFAULT '1',
                               `dateCreated` datetime NOT NULL,
                               `dateUpdated` datetime NOT NULL,
                               `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bao_widgets`
--

INSERT INTO `bao_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2021-07-27 11:11:49', '2021-07-27 11:11:49', '5a5e9cc8-c401-435e-b8b0-e1a9a60ec4e3'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2021-07-27 11:11:49', '2021-07-27 11:11:49', '0a29c455-c539-419f-ab84-b922e74695c6'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2021-07-27 11:11:49', '2021-07-27 11:11:49', 'eb6ed0d7-e5fe-4345-93c0-3e730283f600'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2021-07-27 11:11:49', '2021-07-27 11:11:49', '1832eb13-c3b8-4acb-a82e-15d94ced85a5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bao_announcements`
--
ALTER TABLE `bao_announcements`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_nlkegoncuufbwbopijacisuxxymhcsxooupt` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `bao_idx_wzjrmugiyqdtuuaewrzjvggkrchczrksxeow` (`dateRead`),
  ADD KEY `bao_fk_kiatkimhmofcsvjwlwlhrhvuexndikpikuvx` (`pluginId`);

--
-- Indexes for table `bao_assetindexdata`
--
ALTER TABLE `bao_assetindexdata`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_sbzwuxwdlrdyktomjuyiqjtbgplaylkphbts` (`sessionId`,`volumeId`),
  ADD KEY `bao_idx_pvrkfxbclntzyhthaccxmtmknmvbxjlfttfl` (`volumeId`);

--
-- Indexes for table `bao_assets`
--
ALTER TABLE `bao_assets`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_mdwoxqfokdvkjwurbydnyyqopvjwwjjyblrv` (`filename`,`folderId`),
  ADD KEY `bao_idx_wixaztgcbazzmwgcsnshxvtvvqytztipoqjn` (`folderId`),
  ADD KEY `bao_idx_vhjghjpwoujirwxhyxxbbqqohtvxrycscubs` (`volumeId`),
  ADD KEY `bao_fk_adyrtxgsrctcfrhmyuqxciapypgdbzmwvjlp` (`uploaderId`);

--
-- Indexes for table `bao_assettransformindex`
--
ALTER TABLE `bao_assettransformindex`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_fzcfszhztccwjbebyebzpzpuyaiglnvhuulg` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `bao_assettransforms`
--
ALTER TABLE `bao_assettransforms`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_rbqcaiseqmtueewygroorippvdnacqdjxfrw` (`name`),
  ADD KEY `bao_idx_xflxscgjmarusccsvfuevvdiwyjxxktoxbjw` (`handle`);

--
-- Indexes for table `bao_categories`
--
ALTER TABLE `bao_categories`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_zdfnejfcgwokgnkcktqbweputxzdoaekwpll` (`groupId`),
  ADD KEY `bao_fk_fzbvjklisnvlgfjczppdcjygwcxkyxyaqoqj` (`parentId`);

--
-- Indexes for table `bao_categorygroups`
--
ALTER TABLE `bao_categorygroups`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_wdvpkaunsxfqzhlvrpragkrzguzcuhgfmgdd` (`name`),
  ADD KEY `bao_idx_kpqjqkonmcprhflesmggwmqgkwnlgwuoglur` (`handle`),
  ADD KEY `bao_idx_pctifzvypcbhfgytbkmwoxdipclgodhngiqk` (`structureId`),
  ADD KEY `bao_idx_oudjxmluupggowwagvhrahfpflebhlwfooxb` (`fieldLayoutId`),
  ADD KEY `bao_idx_shrsmvtsfuqhkxcntljgfzreaxxzjhapbspx` (`dateDeleted`);

--
-- Indexes for table `bao_categorygroups_sites`
--
ALTER TABLE `bao_categorygroups_sites`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_wmalntljrqogkmqwnvjlekqzwtycztidtsop` (`groupId`,`siteId`),
  ADD KEY `bao_idx_npkkhmalncmpqxxhnwvqbyfifrrrlghitgdx` (`siteId`);

--
-- Indexes for table `bao_changedattributes`
--
ALTER TABLE `bao_changedattributes`
    ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `bao_idx_ujecxrjhhwisdvndyobqtlqxgllzuiepgakf` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `bao_fk_ljunbghrpkjgyirwraccxwjrxgcyuluuylaq` (`siteId`),
  ADD KEY `bao_fk_bjoreqcabrlokeggipfrrahghxdvrurgutcs` (`userId`);

--
-- Indexes for table `bao_changedfields`
--
ALTER TABLE `bao_changedfields`
    ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `bao_idx_ezbvajftxbfswdbyfnpmwxtfobvnjnmxpdlo` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `bao_fk_ljrducbzhiouuwaeysjykydqznvjjzmiguiv` (`siteId`),
  ADD KEY `bao_fk_juulvcdfuarkrkxannsyulbztphnncsbxdfj` (`fieldId`),
  ADD KEY `bao_fk_avpzyicivrfxqvbilexgdcbimbyhcnutvvsv` (`userId`);

--
-- Indexes for table `bao_content`
--
ALTER TABLE `bao_content`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_ilyvfwuwniwtinhjovsybnehmflickyrbazr` (`elementId`,`siteId`),
  ADD KEY `bao_idx_zcpdkjngtzbvulvjbxbhkchbwjzurykfjdld` (`siteId`),
  ADD KEY `bao_idx_cckbqfsogvqzacaqlhqwrkyrnzhrtrcgjlzx` (`title`);

--
-- Indexes for table `bao_craftidtokens`
--
ALTER TABLE `bao_craftidtokens`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_fk_kfpzynbtpfvllfrmvjzohmaiuoldqwixvehn` (`userId`);

--
-- Indexes for table `bao_deprecationerrors`
--
ALTER TABLE `bao_deprecationerrors`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_bwxgnsmdalvlygtnijdxucwgiqcsuasykwiz` (`key`,`fingerprint`);

--
-- Indexes for table `bao_drafts`
--
ALTER TABLE `bao_drafts`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_vbrfellmubmzjdqmbbtuekpfbzceqnlbopun` (`creatorId`,`provisional`),
  ADD KEY `bao_idx_lylhehboontncrarqslsetyeuctilizkmaxl` (`saved`),
  ADD KEY `bao_fk_ronkrrvrnpvfmbcomdsihjntrprugsffuzso` (`sourceId`);

--
-- Indexes for table `bao_elementindexsettings`
--
ALTER TABLE `bao_elementindexsettings`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_mhajlzdadbcebfigsaxuunumxnmqptpoxxov` (`type`);

--
-- Indexes for table `bao_elements`
--
ALTER TABLE `bao_elements`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_utavaciijbivmiezgoffpmndhharrbgdhpmr` (`dateDeleted`),
  ADD KEY `bao_idx_wjlypbeoacautvguwpzfhzpexggbizgoffqf` (`fieldLayoutId`),
  ADD KEY `bao_idx_pglfoslmghmbhjigxquqihjthnkatcnkywpw` (`type`),
  ADD KEY `bao_idx_qutwlgfeawyhynjhykejviownjehznfjofuz` (`enabled`),
  ADD KEY `bao_idx_mrjeazrohqsryjyrrsjkaqlpriqbrkilpyra` (`archived`,`dateCreated`),
  ADD KEY `bao_idx_eysqgoimshmsivnivhbbqcuhzmjhkvrcuoau` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  ADD KEY `bao_fk_uvaaztyagpnkfaoedprnbvurbkzjavssuwwp` (`canonicalId`),
  ADD KEY `bao_fk_dxhsmxsbrarmmrbqxadyjfnhvqfgnsohrapk` (`draftId`),
  ADD KEY `bao_fk_aqqhbjbqwbomxvuzhasegqczmnvswgeprvio` (`revisionId`);

--
-- Indexes for table `bao_elements_sites`
--
ALTER TABLE `bao_elements_sites`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_tetlkpkwdeimevfktobjqirsjlfitqwregsg` (`elementId`,`siteId`),
  ADD KEY `bao_idx_rrgpgjrglgkhviwdksrohuibyzurrwmewuns` (`siteId`),
  ADD KEY `bao_idx_gjxsvcvpagkjydaoclfasrymzumudavtnqse` (`slug`,`siteId`),
  ADD KEY `bao_idx_glrzsiobppfxalvpzeeisfnphxjxybemkdtb` (`enabled`),
  ADD KEY `bao_idx_qopipcftjzfabtewevxlpynizubgxztlwvhj` (`uri`,`siteId`);

--
-- Indexes for table `bao_entries`
--
ALTER TABLE `bao_entries`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_vddbqjkgytgoonztmleuomxcpbttxkkalkox` (`postDate`),
  ADD KEY `bao_idx_etvkzgeycronrfcorwjuyxkmwgyrnqcxivwa` (`expiryDate`),
  ADD KEY `bao_idx_xgmkngyicfeaiksqalbfxushnpytrcecvzrt` (`authorId`),
  ADD KEY `bao_idx_kftfkpklxbkiqjjoeovdqppfyiadgjfimunx` (`sectionId`),
  ADD KEY `bao_idx_jpbayvovekdbzelgxylhegcvmrhlozmgxgul` (`typeId`),
  ADD KEY `bao_fk_rqnwertstflhkezgurjrsfgjwettmqmjlwce` (`parentId`);

--
-- Indexes for table `bao_entrytypes`
--
ALTER TABLE `bao_entrytypes`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_llnzbzyoodlgjhazvyecpwkdtsscvplvnhiq` (`name`,`sectionId`),
  ADD KEY `bao_idx_bgvuofiavepbthptnrwzncgcqsubibcxfhms` (`handle`,`sectionId`),
  ADD KEY `bao_idx_ryxjoxsirxvlesnghgjqrsycsradwmlwhfhd` (`sectionId`),
  ADD KEY `bao_idx_czbxxvmkfdpxqynhtckaqvocisqjpnubyedt` (`fieldLayoutId`),
  ADD KEY `bao_idx_vfglasweoiwejqpfsmavkrsiqpusvmzytaad` (`dateDeleted`);

--
-- Indexes for table `bao_fieldgroups`
--
ALTER TABLE `bao_fieldgroups`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_tppffcvxzhzydiratimibgkdpxngrrrbbcos` (`name`),
  ADD KEY `bao_idx_ymlzcpiucifkaumudqeojtfbrhjxnyublfhv` (`dateDeleted`,`name`);

--
-- Indexes for table `bao_fieldlayoutfields`
--
ALTER TABLE `bao_fieldlayoutfields`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_axkaikmvhngdnixbwjsxkzvivjahxvnvsprq` (`layoutId`,`fieldId`),
  ADD KEY `bao_idx_oamispozaffxyphjojrbviixulntowbecvfo` (`sortOrder`),
  ADD KEY `bao_idx_jdjtevrpnnpgjkplstenfnxhrvprngflpkve` (`tabId`),
  ADD KEY `bao_idx_kvhdinyjbizlaqvpnsneffheqvmohwrzkctx` (`fieldId`);

--
-- Indexes for table `bao_fieldlayouts`
--
ALTER TABLE `bao_fieldlayouts`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_wmndbxjwjnxissvkccsmxpbowvziwhcioszh` (`dateDeleted`),
  ADD KEY `bao_idx_grbextpmvrwgocdvvmtcaoalkvzsncyxwsie` (`type`);

--
-- Indexes for table `bao_fieldlayouttabs`
--
ALTER TABLE `bao_fieldlayouttabs`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_iauqfpzzetdgvarpzvryzjsyemxenricjrpi` (`sortOrder`),
  ADD KEY `bao_idx_udcwfhphundbqajncadvftiklucavmcejtgx` (`layoutId`);

--
-- Indexes for table `bao_fields`
--
ALTER TABLE `bao_fields`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_kzwfcenewvpcciffwqgaamowudnrsgrmdjrk` (`handle`,`context`),
  ADD KEY `bao_idx_cwqyjlxrvlnqqmvkdmzzbwprsvkglwhbemvv` (`groupId`),
  ADD KEY `bao_idx_wkeifzsdtbanakqxorzcfkvqsiuzngresuig` (`context`);

--
-- Indexes for table `bao_globalsets`
--
ALTER TABLE `bao_globalsets`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_rnvokrnwelbcslkbhrcdattisvjqidwycmkx` (`name`),
  ADD KEY `bao_idx_gacjefxbxnrsbykymnoowlnzkrcwpfllyhdj` (`handle`),
  ADD KEY `bao_idx_diqrdqgebhlnopzhuzwvddwytdqejfgjbfxn` (`fieldLayoutId`),
  ADD KEY `bao_idx_gpcpkhhchwsqqrizdicgxstsbnfauzsvendz` (`sortOrder`);

--
-- Indexes for table `bao_gqlschemas`
--
ALTER TABLE `bao_gqlschemas`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bao_gqltokens`
--
ALTER TABLE `bao_gqltokens`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_lskphbwozeklgvupbfbdqvxdxjzjwioogggk` (`accessToken`),
  ADD UNIQUE KEY `bao_idx_jazxmgvzfxxtuwujleszceggaygrywzaqxql` (`name`),
  ADD KEY `bao_fk_camctdvowsbzhzcjdjnqyfmacdmugtqbuoki` (`schemaId`);

--
-- Indexes for table `bao_info`
--
ALTER TABLE `bao_info`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bao_matrixblocks`
--
ALTER TABLE `bao_matrixblocks`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_nxxthurgqjfvfuqqpqhinebkehajeklbhggc` (`ownerId`),
  ADD KEY `bao_idx_alhvosgkjmoeguoyrtijtcolvbohyjmimsxx` (`fieldId`),
  ADD KEY `bao_idx_gestpgmitxnslrfewoexstrtljhuzcfjtyju` (`typeId`),
  ADD KEY `bao_idx_ptwncfupgxnsikuuusougegrfpxcugvuokog` (`sortOrder`);

--
-- Indexes for table `bao_matrixblocktypes`
--
ALTER TABLE `bao_matrixblocktypes`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_pgnevyahysvuktzqelpqzhoazhytamndpzmi` (`name`,`fieldId`),
  ADD KEY `bao_idx_ridyvszalncuiobupvltldoycwgweiwiwdox` (`handle`,`fieldId`),
  ADD KEY `bao_idx_tdslzqemntbyregzbljvoprichziarkqguvf` (`fieldId`),
  ADD KEY `bao_idx_dkbszhxosxudzcunrwzzfosgppaxmzqnqsef` (`fieldLayoutId`);

--
-- Indexes for table `bao_matrixcontent_cards`
--
ALTER TABLE `bao_matrixcontent_cards`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_tijlqpsrjdilcznplnigvwdmvscivmeotook` (`elementId`,`siteId`),
  ADD KEY `bao_fk_odlbuyjzfasbbpwjnprhqwlbjzwdihsysznb` (`siteId`);

--
-- Indexes for table `bao_migrations`
--
ALTER TABLE `bao_migrations`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_utnnarltoevwywtrfkvxtwlodbaoaifhmxsj` (`track`,`name`);

--
-- Indexes for table `bao_plugins`
--
ALTER TABLE `bao_plugins`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_jummvdyrvqqudprufbrdhrpfcqypeqbijjre` (`handle`);

--
-- Indexes for table `bao_projectconfig`
--
ALTER TABLE `bao_projectconfig`
    ADD PRIMARY KEY (`path`);

--
-- Indexes for table `bao_queue`
--
ALTER TABLE `bao_queue`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_ibrtcuqkcaqcdlffeokrkswmvzmnitdrpabk` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `bao_idx_hbqpxkeodrgqgdqrnypuozmgwjjfnqmbuoke` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `bao_relations`
--
ALTER TABLE `bao_relations`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_khqyjfxlwfqifhuottkwkmgmrwflisdsyqwi` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `bao_idx_qunyknldjnuunhuxzxcdexeapljrbfdrbinp` (`sourceId`),
  ADD KEY `bao_idx_bwvulfbinusvvreeqmizfdwcjwqeexoopotx` (`targetId`),
  ADD KEY `bao_idx_uyqtypceaeehgmusxhrqjkuvwkwuejcoswhm` (`sourceSiteId`);

--
-- Indexes for table `bao_resourcepaths`
--
ALTER TABLE `bao_resourcepaths`
    ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `bao_revisions`
--
ALTER TABLE `bao_revisions`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_piodfcajxjudgjsncpoldigpuubyxoyufsqi` (`sourceId`,`num`),
  ADD KEY `bao_fk_isbhtpyhoxlzvdpswwornxzzjrreyegyosok` (`creatorId`);

--
-- Indexes for table `bao_searchindex`
--
ALTER TABLE `bao_searchindex`
    ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `bao_searchindex` ADD FULLTEXT KEY `bao_idx_jdbhwvijuiygonnopcbwfziaciffhhrukdfj` (`keywords`);

--
-- Indexes for table `bao_sections`
--
ALTER TABLE `bao_sections`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_duhduccycrrgrjizhmzcbusrfyykyyghuezj` (`handle`),
  ADD KEY `bao_idx_lxjdhdcwnfglocuyvlkqtozurghtndzhekbf` (`name`),
  ADD KEY `bao_idx_ttbdszaogoqszzqyqhokpnqzboxdvzggygla` (`structureId`),
  ADD KEY `bao_idx_htpgvfuqnvcssgxckepgqmuvctuewnvywlks` (`dateDeleted`);

--
-- Indexes for table `bao_sections_sites`
--
ALTER TABLE `bao_sections_sites`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_erednegioitkexqxbqhylwgubrypsuhcotmh` (`sectionId`,`siteId`),
  ADD KEY `bao_idx_gnptrzskuaotqayvfyzduwntbdafqeetjhso` (`siteId`);

--
-- Indexes for table `bao_sequences`
--
ALTER TABLE `bao_sequences`
    ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bao_sessions`
--
ALTER TABLE `bao_sessions`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_uuyctdakcramsroydyykethjqbfnazternaf` (`uid`),
  ADD KEY `bao_idx_tujzxhkjgbetpfbofatbdmfyedmrhrhwcjqj` (`token`),
  ADD KEY `bao_idx_ufsybpgzvjomnjuwixqpgrngziachmapiywu` (`dateUpdated`),
  ADD KEY `bao_idx_fpslwudvjidfnxgyqxlxqnjqvoicopndoepy` (`userId`);

--
-- Indexes for table `bao_shunnedmessages`
--
ALTER TABLE `bao_shunnedmessages`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_jmxmacqaqclpetkhyzgytldlfbyvrvksvxmt` (`userId`,`message`);

--
-- Indexes for table `bao_sitegroups`
--
ALTER TABLE `bao_sitegroups`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_kekywqimefhwhggevaxzqgiaxvcfgnwiabuc` (`name`);

--
-- Indexes for table `bao_sites`
--
ALTER TABLE `bao_sites`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_twssixmalxqbovhfxstgcrpauixcbczdcmur` (`dateDeleted`),
  ADD KEY `bao_idx_udyufbduwtnipnttoytlmtmvihftpombxibk` (`handle`),
  ADD KEY `bao_idx_qgpwqcbagqritlbqakvaersprludjtxoqiwi` (`sortOrder`),
  ADD KEY `bao_fk_khjlihkdhbcexsksctmhdvlfvnsiiyeozqfh` (`groupId`);

--
-- Indexes for table `bao_structureelements`
--
ALTER TABLE `bao_structureelements`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_yidmafoquuxjpchlzemzzykivgoqvtdyiefn` (`structureId`,`elementId`),
  ADD KEY `bao_idx_ltxhacqbptqcwznweulqvckirynowfefahbc` (`root`),
  ADD KEY `bao_idx_mgzyrgjsqckguqnyesszgrbynuhpgxzbxqbi` (`lft`),
  ADD KEY `bao_idx_ntyvsovrbkvtuuutolxhopbpcweudjljajso` (`rgt`),
  ADD KEY `bao_idx_nvzixpiwzwyesdjzppxvqvzvbymqkvobairh` (`level`),
  ADD KEY `bao_idx_xnkylbepadejkxzmyabxtgvizsohhvpatmfs` (`elementId`);

--
-- Indexes for table `bao_structures`
--
ALTER TABLE `bao_structures`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_gzzplcrhwjhxccltjwbvjgnqyizkrsfzaxin` (`dateDeleted`);

--
-- Indexes for table `bao_systemmessages`
--
ALTER TABLE `bao_systemmessages`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_jlvquvnfbheswjxstyopypiwckwgxjsndehw` (`key`,`language`),
  ADD KEY `bao_idx_pdzemajtjigngieqrdxndghekpysemwkjwln` (`language`);

--
-- Indexes for table `bao_taggroups`
--
ALTER TABLE `bao_taggroups`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_bhvcufvxyclgiatdghassfcjsqhczmlntdxg` (`name`),
  ADD KEY `bao_idx_hkabvvunvbchvburyedkisjordbnbflkxobl` (`handle`),
  ADD KEY `bao_idx_eiykkvbuuxckxkucpwwsfvdielpygevedmxk` (`dateDeleted`),
  ADD KEY `bao_fk_pfyeqatakyohprmhjmxwcebfemcpgtkystcg` (`fieldLayoutId`);

--
-- Indexes for table `bao_tags`
--
ALTER TABLE `bao_tags`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_gkywdhfnsfzhytspcwetcuixqppokhkqxwga` (`groupId`);

--
-- Indexes for table `bao_templatecacheelements`
--
ALTER TABLE `bao_templatecacheelements`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_jvbpffjyrwwqtvwngkbtljkpoynbdnipqjlz` (`cacheId`),
  ADD KEY `bao_idx_itgwlhyprhjevkzjsaqyfwcnxgzvzzgfcqcw` (`elementId`);

--
-- Indexes for table `bao_templatecachequeries`
--
ALTER TABLE `bao_templatecachequeries`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_ltfwknqetjpbvppoxnsbjrcbdhmkxkkmykva` (`cacheId`),
  ADD KEY `bao_idx_csjuyizeoocwgqdfzssfpowihkztrjgfhgqi` (`type`);

--
-- Indexes for table `bao_templatecaches`
--
ALTER TABLE `bao_templatecaches`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_lccdfbkxhmotbqykixwpvkauxjsbaxarugsu` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `bao_idx_iaifoveyrqdbpqwjjdhudjngxjxhevrnvnmq` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `bao_idx_upeoaoetviusgdvmxqxudylprwxkegptjtdl` (`siteId`);

--
-- Indexes for table `bao_tokens`
--
ALTER TABLE `bao_tokens`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_lfbrmnzdibtrlxqyxwkqsxgkezoysbwdxfru` (`token`),
  ADD KEY `bao_idx_rykwuqjpirusguezpqpyttxzvyiqouurcvmi` (`expiryDate`);

--
-- Indexes for table `bao_usergroups`
--
ALTER TABLE `bao_usergroups`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_tbqhlcravpxgxsppcusjtrzorzjdbhsbdzws` (`handle`),
  ADD KEY `bao_idx_qxjodvtiozupdiyzuvxmlohpfekburuglbac` (`name`);

--
-- Indexes for table `bao_usergroups_users`
--
ALTER TABLE `bao_usergroups_users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_jykgpbvsbdmjeuxurgxdsffkbssoivtvbens` (`groupId`,`userId`),
  ADD KEY `bao_idx_kvstjlxqndxsldbtnetjmsvmirdgsbjhyoxp` (`userId`);

--
-- Indexes for table `bao_userpermissions`
--
ALTER TABLE `bao_userpermissions`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_euutxluykftycaynqtlewcfuwmxfpoufrkyu` (`name`);

--
-- Indexes for table `bao_userpermissions_usergroups`
--
ALTER TABLE `bao_userpermissions_usergroups`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_ryvxmdscznitegarcbmtaeteiaubzydsdlth` (`permissionId`,`groupId`),
  ADD KEY `bao_idx_lktypjhegkzdgcqhivlujjavbagtbutcycfd` (`groupId`);

--
-- Indexes for table `bao_userpermissions_users`
--
ALTER TABLE `bao_userpermissions_users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_jviqayhzngzqynkeuxlqsadainbdpyuzwdmk` (`permissionId`,`userId`),
  ADD KEY `bao_idx_sdgrsjlhzdgpmegtrcmxdshdrrbwjortansv` (`userId`);

--
-- Indexes for table `bao_userpreferences`
--
ALTER TABLE `bao_userpreferences`
    ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `bao_users`
--
ALTER TABLE `bao_users`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_htobplpsjaerxobsznedbngxbiaamcagqesz` (`uid`),
  ADD KEY `bao_idx_eruwbaengrtkwpdyjyfktlmuelkazlahxnid` (`verificationCode`),
  ADD KEY `bao_idx_nfcoatdsqihjopsfftetjtbpgmrqkbhjxupd` (`email`),
  ADD KEY `bao_idx_rmguebdrbwmmdrbdrqwtahnrohjzcvtxgttl` (`username`),
  ADD KEY `bao_fk_znlrlzobldydppefunuqlmmcoaeuvnqmuxnd` (`photoId`);

--
-- Indexes for table `bao_volumefolders`
--
ALTER TABLE `bao_volumefolders`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bao_idx_zasqucazrppfbircpsajzluwpmwskbggxtno` (`name`,`parentId`,`volumeId`),
  ADD KEY `bao_idx_otbclibbyqydndpoxwckmvhctwyznevpvjya` (`parentId`),
  ADD KEY `bao_idx_aiwutsiohfksvaevwulsegkfdpuimzgkqlwa` (`volumeId`);

--
-- Indexes for table `bao_volumes`
--
ALTER TABLE `bao_volumes`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_hyqtcynmbavbzxoevmlccjfrwlfyzitqdsed` (`name`),
  ADD KEY `bao_idx_clqlcnpczddbpnkrzwcelymmqwicfpfgajhm` (`handle`),
  ADD KEY `bao_idx_nqpxdrufxwrwnlsbttovipyswoqwhjayxcrs` (`fieldLayoutId`),
  ADD KEY `bao_idx_sqbvolkaubqssiplyatnmdkfnvxtayixqsnc` (`dateDeleted`);

--
-- Indexes for table `bao_widgets`
--
ALTER TABLE `bao_widgets`
    ADD PRIMARY KEY (`id`),
  ADD KEY `bao_idx_jgoaxyzibyqlwbdwtrucjbxwylfflqlzhyeb` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bao_announcements`
--
ALTER TABLE `bao_announcements`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_assetindexdata`
--
ALTER TABLE `bao_assetindexdata`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_assettransformindex`
--
ALTER TABLE `bao_assettransformindex`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_assettransforms`
--
ALTER TABLE `bao_assettransforms`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_categorygroups`
--
ALTER TABLE `bao_categorygroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_categorygroups_sites`
--
ALTER TABLE `bao_categorygroups_sites`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_content`
--
ALTER TABLE `bao_content`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `bao_craftidtokens`
--
ALTER TABLE `bao_craftidtokens`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_deprecationerrors`
--
ALTER TABLE `bao_deprecationerrors`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_drafts`
--
ALTER TABLE `bao_drafts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bao_elementindexsettings`
--
ALTER TABLE `bao_elementindexsettings`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_elements`
--
ALTER TABLE `bao_elements`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `bao_elements_sites`
--
ALTER TABLE `bao_elements_sites`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `bao_entrytypes`
--
ALTER TABLE `bao_entrytypes`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bao_fieldgroups`
--
ALTER TABLE `bao_fieldgroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bao_fieldlayoutfields`
--
ALTER TABLE `bao_fieldlayoutfields`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `bao_fieldlayouts`
--
ALTER TABLE `bao_fieldlayouts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bao_fieldlayouttabs`
--
ALTER TABLE `bao_fieldlayouttabs`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `bao_fields`
--
ALTER TABLE `bao_fields`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bao_globalsets`
--
ALTER TABLE `bao_globalsets`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_gqlschemas`
--
ALTER TABLE `bao_gqlschemas`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_gqltokens`
--
ALTER TABLE `bao_gqltokens`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_info`
--
ALTER TABLE `bao_info`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_matrixblocktypes`
--
ALTER TABLE `bao_matrixblocktypes`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_matrixcontent_cards`
--
ALTER TABLE `bao_matrixcontent_cards`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `bao_migrations`
--
ALTER TABLE `bao_migrations`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `bao_plugins`
--
ALTER TABLE `bao_plugins`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bao_queue`
--
ALTER TABLE `bao_queue`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `bao_relations`
--
ALTER TABLE `bao_relations`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `bao_revisions`
--
ALTER TABLE `bao_revisions`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bao_sections`
--
ALTER TABLE `bao_sections`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bao_sections_sites`
--
ALTER TABLE `bao_sections_sites`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bao_sessions`
--
ALTER TABLE `bao_sessions`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bao_shunnedmessages`
--
ALTER TABLE `bao_shunnedmessages`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_sitegroups`
--
ALTER TABLE `bao_sitegroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_sites`
--
ALTER TABLE `bao_sites`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_structureelements`
--
ALTER TABLE `bao_structureelements`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bao_structures`
--
ALTER TABLE `bao_structures`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_systemmessages`
--
ALTER TABLE `bao_systemmessages`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_taggroups`
--
ALTER TABLE `bao_taggroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_templatecacheelements`
--
ALTER TABLE `bao_templatecacheelements`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_templatecachequeries`
--
ALTER TABLE `bao_templatecachequeries`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_templatecaches`
--
ALTER TABLE `bao_templatecaches`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_tokens`
--
ALTER TABLE `bao_tokens`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_usergroups`
--
ALTER TABLE `bao_usergroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_usergroups_users`
--
ALTER TABLE `bao_usergroups_users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_userpermissions`
--
ALTER TABLE `bao_userpermissions`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_userpermissions_usergroups`
--
ALTER TABLE `bao_userpermissions_usergroups`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_userpermissions_users`
--
ALTER TABLE `bao_userpermissions_users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bao_userpreferences`
--
ALTER TABLE `bao_userpreferences`
    MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_volumefolders`
--
ALTER TABLE `bao_volumefolders`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bao_volumes`
--
ALTER TABLE `bao_volumes`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bao_widgets`
--
ALTER TABLE `bao_widgets`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bao_announcements`
--
ALTER TABLE `bao_announcements`
    ADD CONSTRAINT `bao_fk_kiatkimhmofcsvjwlwlhrhvuexndikpikuvx` FOREIGN KEY (`pluginId`) REFERENCES `bao_plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_xfhxruphqzmngctpygrysjbangbjyzroasvy` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_assetindexdata`
--
ALTER TABLE `bao_assetindexdata`
    ADD CONSTRAINT `bao_fk_ehasmuhlrftzmxhnmjhilvyhvmxdwabmbnyw` FOREIGN KEY (`volumeId`) REFERENCES `bao_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_assets`
--
ALTER TABLE `bao_assets`
    ADD CONSTRAINT `bao_fk_adyrtxgsrctcfrhmyuqxciapypgdbzmwvjlp` FOREIGN KEY (`uploaderId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_gsztvlxyhurqouzsnrxwwewxzcfjufbnjdfy` FOREIGN KEY (`folderId`) REFERENCES `bao_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_meelxvwxmsajmpklmsxogkbqcbxiucezwnmo` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_tphuphrkureddicltqtfppixuvrexivoygly` FOREIGN KEY (`volumeId`) REFERENCES `bao_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_categories`
--
ALTER TABLE `bao_categories`
    ADD CONSTRAINT `bao_fk_fzbvjklisnvlgfjczppdcjygwcxkyxyaqoqj` FOREIGN KEY (`parentId`) REFERENCES `bao_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_hzpbyqqaxgmaqrocdbimngxeystvowoqhach` FOREIGN KEY (`groupId`) REFERENCES `bao_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_zsgkslrghlbtpawbcmtcityibwklrvhsmwzr` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_categorygroups`
--
ALTER TABLE `bao_categorygroups`
    ADD CONSTRAINT `bao_fk_jupftuxyqnrdfxokblkpncvbgpwxeqfcjwoy` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_sjaydgovuolbakpsepsmfoaaqgochwfwkdir` FOREIGN KEY (`structureId`) REFERENCES `bao_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_categorygroups_sites`
--
ALTER TABLE `bao_categorygroups_sites`
    ADD CONSTRAINT `bao_fk_fgjfqmvzmrhtswkjjaemlmpmxyfrxmwnuguh` FOREIGN KEY (`groupId`) REFERENCES `bao_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_rulqaqzcmstxujasjixzsmzjyzbuchlushnt` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bao_changedattributes`
--
ALTER TABLE `bao_changedattributes`
    ADD CONSTRAINT `bao_fk_bjoreqcabrlokeggipfrrahghxdvrurgutcs` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_ljunbghrpkjgyirwraccxwjrxgcyuluuylaq` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_piuvvywcliqloejclpsfhkkddvlmpahmksqd` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bao_changedfields`
--
ALTER TABLE `bao_changedfields`
    ADD CONSTRAINT `bao_fk_avpzyicivrfxqvbilexgdcbimbyhcnutvvsv` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_juulvcdfuarkrkxannsyulbztphnncsbxdfj` FOREIGN KEY (`fieldId`) REFERENCES `bao_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_ljrducbzhiouuwaeysjykydqznvjjzmiguiv` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_qvgqkujdifgzujtgnjfhsjuqbxsalvnaeath` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bao_content`
--
ALTER TABLE `bao_content`
    ADD CONSTRAINT `bao_fk_wrpershifiizdqnwkewuyrrlxjydjywrzgib` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_ygrxgexisjdicnwlxucmnfrfbhkdeviaaowa` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bao_craftidtokens`
--
ALTER TABLE `bao_craftidtokens`
    ADD CONSTRAINT `bao_fk_kfpzynbtpfvllfrmvjzohmaiuoldqwixvehn` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_drafts`
--
ALTER TABLE `bao_drafts`
    ADD CONSTRAINT `bao_fk_ogqygxfeobyxcyfxguzjdwdhntdigsahbxfl` FOREIGN KEY (`creatorId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_ronkrrvrnpvfmbcomdsihjntrprugsffuzso` FOREIGN KEY (`sourceId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_elements`
--
ALTER TABLE `bao_elements`
    ADD CONSTRAINT `bao_fk_aqqhbjbqwbomxvuzhasegqczmnvswgeprvio` FOREIGN KEY (`revisionId`) REFERENCES `bao_revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_dxhsmxsbrarmmrbqxadyjfnhvqfgnsohrapk` FOREIGN KEY (`draftId`) REFERENCES `bao_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_uvaaztyagpnkfaoedprnbvurbkzjavssuwwp` FOREIGN KEY (`canonicalId`) REFERENCES `bao_elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_yeecjolagkxyrlcquflpbustykbjcgpibbzz` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_elements_sites`
--
ALTER TABLE `bao_elements_sites`
    ADD CONSTRAINT `bao_fk_gqceswxszkatkkztbryjnfguqpdxaqgjnyfy` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_uzdeitpvvoyonrdcuxyeibhpfypscieapmgi` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_entries`
--
ALTER TABLE `bao_entries`
    ADD CONSTRAINT `bao_fk_ceeuuhfdldhpuafdexqbmtyymvmpufwawped` FOREIGN KEY (`sectionId`) REFERENCES `bao_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_ffspxirovfybvnlkucxtgpwbmxprkyfafxro` FOREIGN KEY (`authorId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_rqnwertstflhkezgurjrsfgjwettmqmjlwce` FOREIGN KEY (`parentId`) REFERENCES `bao_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bao_fk_srdfkzrvqrjehucvmhpswtiwecrzztfbmpnx` FOREIGN KEY (`typeId`) REFERENCES `bao_entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_yhtvgbvrddclozmldekjgjiyydjegpqdxoag` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_entrytypes`
--
ALTER TABLE `bao_entrytypes`
    ADD CONSTRAINT `bao_fk_ivsndwzkednaufzzcqidrsgtwhrsnazvlbsu` FOREIGN KEY (`sectionId`) REFERENCES `bao_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_xltvpgahtkmutzeurkyidxvwcjxmulnelftu` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_fieldlayoutfields`
--
ALTER TABLE `bao_fieldlayoutfields`
    ADD CONSTRAINT `bao_fk_icahvbrkpfcwjhogqyszpvpffncftlwfohjf` FOREIGN KEY (`fieldId`) REFERENCES `bao_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_scrmiohuiimjmjibbvqwjvtkkwggsffyddgp` FOREIGN KEY (`tabId`) REFERENCES `bao_fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_xahihyhcaacgtfbzksmpmjkuzzaddmziihcd` FOREIGN KEY (`layoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_fieldlayouttabs`
--
ALTER TABLE `bao_fieldlayouttabs`
    ADD CONSTRAINT `bao_fk_wufvttaicbuswwaawzgvtahkjcooraejkqdd` FOREIGN KEY (`layoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_fields`
--
ALTER TABLE `bao_fields`
    ADD CONSTRAINT `bao_fk_pidyjhsruqnwdemjwihkxizrgrhgsycqxwlg` FOREIGN KEY (`groupId`) REFERENCES `bao_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_globalsets`
--
ALTER TABLE `bao_globalsets`
    ADD CONSTRAINT `bao_fk_cqkjgkrhelbapmpqdrfkeuduinyxyhdvchrw` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_htlixmgumpcmssugefrancxykknfdeqnbuju` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_gqltokens`
--
ALTER TABLE `bao_gqltokens`
    ADD CONSTRAINT `bao_fk_camctdvowsbzhzcjdjnqyfmacdmugtqbuoki` FOREIGN KEY (`schemaId`) REFERENCES `bao_gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_matrixblocks`
--
ALTER TABLE `bao_matrixblocks`
    ADD CONSTRAINT `bao_fk_cifxrrricfrfnrsvlgdgzjgyhthxvvqymtbu` FOREIGN KEY (`ownerId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_gerqbzusidedltvznsybbccsfrayohlbvduq` FOREIGN KEY (`fieldId`) REFERENCES `bao_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_iijurosncnarhomqjaapywzbrielxyhmoxnp` FOREIGN KEY (`typeId`) REFERENCES `bao_matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_qewemwldzijnnzsikjzxnuxkqrfnouwsnpvc` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_matrixblocktypes`
--
ALTER TABLE `bao_matrixblocktypes`
    ADD CONSTRAINT `bao_fk_ioilkcswffcammxhwlkpkrtjsuvbbvsowrpu` FOREIGN KEY (`fieldId`) REFERENCES `bao_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_oyakbheedzgngfqoihtodfvcrlfhbwulgcqy` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_matrixcontent_cards`
--
ALTER TABLE `bao_matrixcontent_cards`
    ADD CONSTRAINT `bao_fk_odlbuyjzfasbbpwjnprhqwlbjzwdihsysznb` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_zizmitbwwyrsvxfwxnxshtyrprribufwqkbg` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_relations`
--
ALTER TABLE `bao_relations`
    ADD CONSTRAINT `bao_fk_dcypaaodnpfnmjqzqzpzsapvlimrczsoyupq` FOREIGN KEY (`fieldId`) REFERENCES `bao_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_dhhsilgrxqxjtzoyasfusmtyqoppsoaefjyo` FOREIGN KEY (`sourceId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_nyfxadklnoeiflgwqqesslkgkafqzmjgmcld` FOREIGN KEY (`sourceSiteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_rmvcesohavfierjwggvhfodfvmestmbebczc` FOREIGN KEY (`targetId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_revisions`
--
ALTER TABLE `bao_revisions`
    ADD CONSTRAINT `bao_fk_ewaeuirzzxpzhvmndpekestywzhdtlrmovha` FOREIGN KEY (`sourceId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_isbhtpyhoxlzvdpswwornxzzjrreyegyosok` FOREIGN KEY (`creatorId`) REFERENCES `bao_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_sections`
--
ALTER TABLE `bao_sections`
    ADD CONSTRAINT `bao_fk_woxtzeuajdwilimekprwbrwpzrzzjpdgvyil` FOREIGN KEY (`structureId`) REFERENCES `bao_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_sections_sites`
--
ALTER TABLE `bao_sections_sites`
    ADD CONSTRAINT `bao_fk_beuuqposdmtdogsxfnosdhvotelxqiuzgcsa` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bao_fk_vwgyklyeoogqnifmhxgxfawsnzsgmamahgld` FOREIGN KEY (`sectionId`) REFERENCES `bao_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_sessions`
--
ALTER TABLE `bao_sessions`
    ADD CONSTRAINT `bao_fk_gwqotbpcyqgmtnossucwphcbgrroedcfjhdh` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_shunnedmessages`
--
ALTER TABLE `bao_shunnedmessages`
    ADD CONSTRAINT `bao_fk_ynaclgejielimgqbzuhxjwqumzfdujxjdawg` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_sites`
--
ALTER TABLE `bao_sites`
    ADD CONSTRAINT `bao_fk_khjlihkdhbcexsksctmhdvlfvnsiiyeozqfh` FOREIGN KEY (`groupId`) REFERENCES `bao_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_structureelements`
--
ALTER TABLE `bao_structureelements`
    ADD CONSTRAINT `bao_fk_jwkbukhqoyfeiybmqntgevwdfssnxisinhqh` FOREIGN KEY (`structureId`) REFERENCES `bao_structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_vgvcanmoyemiewaapiokykdklaasqtzbtmut` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_taggroups`
--
ALTER TABLE `bao_taggroups`
    ADD CONSTRAINT `bao_fk_pfyeqatakyohprmhjmxwcebfemcpgtkystcg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_tags`
--
ALTER TABLE `bao_tags`
    ADD CONSTRAINT `bao_fk_smluhtjuwxtiicdwdiycqoskhljmmroirzoh` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_yxjqnqvpvchepnzimypgsdhhtsimcdsyvzyf` FOREIGN KEY (`groupId`) REFERENCES `bao_taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_templatecacheelements`
--
ALTER TABLE `bao_templatecacheelements`
    ADD CONSTRAINT `bao_fk_wgttfvtmkezurbrfzmhutvarnyrqhwtkyjqq` FOREIGN KEY (`cacheId`) REFERENCES `bao_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_zjxgherlzdiqyueqtybvcexubadfcozrwqbc` FOREIGN KEY (`elementId`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_templatecachequeries`
--
ALTER TABLE `bao_templatecachequeries`
    ADD CONSTRAINT `bao_fk_ydnaqtnbgghycbknikdkcqxxbwowtwrdlswt` FOREIGN KEY (`cacheId`) REFERENCES `bao_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_templatecaches`
--
ALTER TABLE `bao_templatecaches`
    ADD CONSTRAINT `bao_fk_wxpsicfgqrxoxzbqcfnijqtixnxrlrbmwfwm` FOREIGN KEY (`siteId`) REFERENCES `bao_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bao_usergroups_users`
--
ALTER TABLE `bao_usergroups_users`
    ADD CONSTRAINT `bao_fk_coqegtglfigchlaaldrhxeffdgthvrudlpwf` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_wnmrlgvwosjhqlzyvzmdmwjzgrshlfgmzeyk` FOREIGN KEY (`groupId`) REFERENCES `bao_usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_userpermissions_usergroups`
--
ALTER TABLE `bao_userpermissions_usergroups`
    ADD CONSTRAINT `bao_fk_bjfgiolntfeogjsaunkqoxbitbznlccjebmr` FOREIGN KEY (`permissionId`) REFERENCES `bao_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_hyawyhwjktgkavhvdwrxyomlospirrhjuuhx` FOREIGN KEY (`groupId`) REFERENCES `bao_usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_userpermissions_users`
--
ALTER TABLE `bao_userpermissions_users`
    ADD CONSTRAINT `bao_fk_vdomvsonulejsedlszhvpcznazuybevqozuf` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_xiltfagshqyxcpzrvejjcgfmwgkpoakssucm` FOREIGN KEY (`permissionId`) REFERENCES `bao_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_userpreferences`
--
ALTER TABLE `bao_userpreferences`
    ADD CONSTRAINT `bao_fk_qcluxkipgfhzuudmeqmqbbeicrzrqxuuzbdf` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_users`
--
ALTER TABLE `bao_users`
    ADD CONSTRAINT `bao_fk_yoyexbrrfykadlqxrrmzxekvyswkttwynuqh` FOREIGN KEY (`id`) REFERENCES `bao_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_znlrlzobldydppefunuqlmmcoaeuvnqmuxnd` FOREIGN KEY (`photoId`) REFERENCES `bao_assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_volumefolders`
--
ALTER TABLE `bao_volumefolders`
    ADD CONSTRAINT `bao_fk_jadvtdwgwuyjauwibzsukaudjqfpsjegrnbj` FOREIGN KEY (`parentId`) REFERENCES `bao_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bao_fk_lltjqkrbyrnybtivsuudsuwplhleqmhkkxlc` FOREIGN KEY (`volumeId`) REFERENCES `bao_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bao_volumes`
--
ALTER TABLE `bao_volumes`
    ADD CONSTRAINT `bao_fk_pfftrumrtqwrgqjmsojikxyizjejawhyooeg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `bao_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bao_widgets`
--
ALTER TABLE `bao_widgets`
    ADD CONSTRAINT `bao_fk_bslqzvhcqwhkcufcaojmuaseymcjcipucdim` FOREIGN KEY (`userId`) REFERENCES `bao_users` (`id`) ON DELETE CASCADE;
