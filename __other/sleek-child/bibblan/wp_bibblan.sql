-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: pod-114052.wpengine.com:13306
-- Generation Time: Jun 02, 2020 at 10:16 AM
-- Server version: 5.7.29-32-log
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_bibblan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_clientUsers`
--

CREATE TABLE `dbtblprefix_clientUsers` (
  `id` mediumint(9) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `site` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_clientUsers`
--

INSERT INTO `dbtblprefix_clientUsers` (`id`, `username`, `password`, `link`, `site`, `name`) VALUES
(1, 'testkund1@lrfkonsult.se', 'SUnEKyk6KX6sbrPk', 'https://login.mspecs.se/', 'http://bibblan.wpengine.com', NULL),
(2, 'testkund1@lrfkonsult.se', 'SUnEKyk6KX6sbrPk', 'https://login.mspecs.se/', 'http://bibblan.wpengine.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_commentmeta`
--

CREATE TABLE `dbtblprefix_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_comments`
--

CREATE TABLE `dbtblprefix_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_comments`
--

INSERT INTO `dbtblprefix_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-27 09:06:10', '2018-02-27 09:06:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_links`
--

CREATE TABLE `dbtblprefix_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_options`
--

CREATE TABLE `dbtblprefix_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_options`
--

INSERT INTO `dbtblprefix_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bibblan.wpengine.com', 'yes'),
(2, 'home', 'http://bibblan.wpengine.com', 'yes'),
(3, 'blogname', 'Bibblan', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andreas.lagerkvist@invise.se', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"blog/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"blog/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"blog/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"blog/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:45:\"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:26:\"blog/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:38:\"blog/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:20:\"blog/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:52:\"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:47:\"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:40:\"blog/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"blog/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"blog/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"blog/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"blog/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"blog/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"wp-instagram-widget/wp-instagram-widget.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:65:\"/nas/content/live/bibblan/wp-content/themes/sleek-child/style.css\";i:1;s:69:\"/nas/content/live/bibblan/wp-content/themes/sleek-child/functions.php\";i:2;s:70:\"/nas/content/live/bibblan/wp-content/themes/sleek-child/front-page.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'sleek', 'yes'),
(41, 'stylesheet', 'sleek-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '480', 'yes'),
(59, 'thumbnail_size_h', '270', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '960', 'yes'),
(62, 'medium_size_h', '540', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1920', 'yes'),
(65, 'large_size_h', '1080', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:29:\"Copyright &copy; 2018 Bibblan\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '5', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '1440', 'yes'),
(90, 'medium_large_size_h', '810', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'dbtblprefix_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"header\";a:1:{i:0;s:10:\"nav_menu-2\";}s:6:\"footer\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_wpe_powered_by_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1591094447;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591098220;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591098262;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591104444;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591106105;a:1:{s:46:\"WPEngineSecurityAuditor_Scans_fingerprint_core\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591117066;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591131970;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591175185;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591175790;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591178191;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591398841;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542968525;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(128, 'wpe_notices', 'a:1:{s:4:\"read\";s:0:\"\";}', 'yes'),
(129, 'wpe_notices_ttl', '1570708889', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(147, 'acf_version', '5.8.5', 'yes'),
(167, 'widget_null-instagram-feed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(170, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TlRVME5UVjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQTFMVEExSURFME9qUTVPalE1IjtzOjM6InVybCI7czoyNzoiaHR0cDovL2JpYmJsYW4ud3BlbmdpbmUuY29tIjt9', 'yes'),
(182, 'current_theme', 'SleekChild', 'yes'),
(183, 'theme_mods_sleek-child', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:19:\"google_maps_api_key\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542901557;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"header\";a:1:{i:0;s:10:\"nav_menu-2\";}s:6:\"footer\";a:1:{i:0;s:6:\"text-2\";}}}s:9:\"head_code\";s:0:\"\";}', 'yes'),
(184, 'theme_switched', '', 'yes'),
(185, 'medium_crop', '1', 'yes'),
(186, 'medium_large_crop', '1', 'yes'),
(187, 'large_crop', '1', 'yes'),
(188, 'category_children', 'a:0:{}', 'yes'),
(199, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(241, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1734, 'WPLANG', 'sv_SE', 'yes'),
(1735, 'new_admin_email', 'andreas.lagerkvist@invise.se', 'yes'),
(1741, 'theme_mods_sleek', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542900823;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";i:7;s:6:\"text-2\";}}}}', 'yes'),
(1797, 'sleek_settings', 'a:6:{s:19:\"google_maps_api_key\";s:39:\"AIzaSyAFKeWuQgHIS-8e_RjxelRFSP2saoPGwOE\";s:21:\"google_search_api_key\";s:0:\"\";s:23:\"google_search_engine_id\";s:0:\"\";s:9:\"head_code\";s:453:\"<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-43704602-2\"></script>\r\n<script>\r\n	window.dataLayer = window.dataLayer || [];\r\n\r\n	function gtag () {\r\n		dataLayer.push(arguments);\r\n	}\r\n\r\n	gtag(\'js\', new Date());\r\n\r\n	if (window.localStorage.getItem(\'user_id\')) {\r\n		gtag(\'set\', {\'user_id\': window.localStorage.getItem(\'user_id\')});\r\n	}\r\n\r\n	gtag(\'config\', \'UA-43704602-2\');\r\n</script>\";s:9:\"body_code\";s:0:\"\";s:9:\"foot_code\";s:0:\"\";}', 'yes'),
(2007, 'wp_page_for_privacy_policy', '0', 'yes'),
(2008, 'show_comments_cookies_opt_in', '0', 'yes'),
(2009, 'db_upgraded', '', 'yes'),
(2298, 'mspecs_db_version', '1.0', 'yes'),
(2299, 'mspecsapi:username', 'testkund1@lrfkonsult.se', 'yes'),
(2300, 'mspecsapi:password', 'SUnEKyk6KX6sbrPk', 'yes'),
(2301, 'mspecsapi:api-link', 'https://login.mspecs.se/', 'yes'),
(2302, 'mspecsapi:api-page', '', 'yes'),
(3348, 'recovery_keys', 'a:0:{}', 'yes'),
(3735, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1570695164;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(4343, 'admin_email_lifespan', '0', 'yes'),
(4888, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":3,\"critical\":2}', 'yes'),
(4959, '_site_transient_timeout_php_check_543bc0dcfa38e8bc92438f3d93a3f397', '1591231016', 'no'),
(4960, '_site_transient_php_check_543bc0dcfa38e8bc92438f3d93a3f397', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4989, '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1591402313', 'no'),
(4990, '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4993, '_transient_timeout_acf_plugin_updates', '1591162371', 'no'),
(4994, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:243:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU5UVTBOVFY4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTFMVEExTFRBMUlERTBPalE1T2pRNSIsIndwX3VybCI6Imh0dHA6XC9cL2JpYmJsYW4ud3BlbmdpbmUuY29tIn0=\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.5\";}}', 'no'),
(5012, '_site_transient_timeout_theme_roots', '1591094397', 'no'),
(5013, '_site_transient_theme_roots', 'a:2:{s:11:\"sleek-child\";s:7:\"/themes\";s:5:\"sleek\";s:7:\"/themes\";}', 'no'),
(5016, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"sv_SE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591092599;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 16:02:59\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sv_SE.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(5017, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591092599;s:7:\"checked\";a:2:{s:11:\"sleek-child\";s:27:\"Version: 0.0.0 (semver.org)\";s:5:\"sleek\";s:18:\"1.0.0 (semver.org)\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(5018, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591092600;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:43:\"wp-instagram-widget/wp-instagram-widget.php\";s:5:\"2.0.3\";}s:8:\"response\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:243:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU5UVTBOVFY4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTFMVEExTFRBMUlERTBPalE1T2pRNSIsIndwX3VybCI6Imh0dHA6XC9cL2JpYmJsYW4ud3BlbmdpbmUuY29tIn0=\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_postmeta`
--

CREATE TABLE `dbtblprefix_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_postmeta`
--

INSERT INTO `dbtblprefix_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 2, '_edit_lock', '1570697722:1'),
(9, 2, '_edit_last', '1'),
(10, 2, 'modules_below_content', 'a:13:{i:0;s:48:\"field_group_modules_below_content_featured-posts\";i:1;s:45:\"field_group_modules_below_content_text-blocks\";i:2;s:45:\"field_group_modules_below_content_child-pages\";i:3;s:46:\"field_group_modules_below_content_latest-posts\";i:4;s:44:\"field_group_modules_below_content_text-block\";i:5;s:39:\"field_group_modules_below_content_video\";i:6;s:41:\"field_group_modules_below_content_gallery\";i:7;s:43:\"field_group_modules_below_content_instagram\";i:8;s:39:\"field_group_modules_below_content_users\";i:9;s:46:\"field_group_modules_below_content_contact-form\";i:10;s:44:\"field_group_modules_below_content_share-page\";i:11;s:44:\"field_group_modules_below_content_google-map\";i:12;s:43:\"field_group_modules_below_content_next-post\";}'),
(11, 2, '_modules_below_content', 'field_group_modules_below_content_modules'),
(12, 2, 'modules_aside_content', 'a:2:{i:0;s:43:\"field_group_modules_aside_content_page-menu\";i:1;s:45:\"field_group_modules_aside_content_attachments\";}'),
(13, 2, '_modules_aside_content', 'field_group_modules_aside_content_modules'),
(14, 2, 'video-hero-code', ''),
(15, 2, '_video-hero-code', 'field_group_page_content_video-hero-code'),
(16, 5, '_edit_last', '1'),
(17, 5, 'modules_below_content', ''),
(18, 5, '_modules_below_content', 'field_group_modules_below_content_modules'),
(19, 5, 'modules_aside_content', ''),
(20, 5, '_modules_aside_content', 'field_group_modules_aside_content_modules'),
(21, 5, 'video-hero-code', ''),
(22, 5, '_video-hero-code', 'field_group_page_content_video-hero-code'),
(23, 5, '_edit_lock', '1570697117:1'),
(24, 6, '_wp_attached_file', '2018/02/aaron-burden-183659.jpg'),
(25, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:31:\"2018/02/aaron-burden-183659.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"aaron-burden-183659-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"aaron-burden-183659-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"aaron-burden-183659-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"aaron-burden-183659-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"aaron-burden-183659-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 7, '_wp_attached_file', '2018/02/alberto-restifo-4510.jpg'),
(27, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6048;s:6:\"height\";i:4032;s:4:\"file\";s:32:\"2018/02/alberto-restifo-4510.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"alberto-restifo-4510-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"alberto-restifo-4510-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"alberto-restifo-4510-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"alberto-restifo-4510-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"alberto-restifo-4510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 8, '_wp_attached_file', '2018/02/averie-woodard-111822.jpg'),
(29, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2738;s:6:\"height\";i:1779;s:4:\"file\";s:33:\"2018/02/averie-woodard-111822.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"averie-woodard-111822-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"averie-woodard-111822-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"averie-woodard-111822-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"averie-woodard-111822-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"averie-woodard-111822-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 9, '_wp_attached_file', '2018/02/brooke-lark-96398.jpg'),
(31, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5760;s:6:\"height\";i:3840;s:4:\"file\";s:29:\"2018/02/brooke-lark-96398.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"brooke-lark-96398-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"brooke-lark-96398-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"brooke-lark-96398-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"brooke-lark-96398-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"brooke-lark-96398-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 10, '_wp_attached_file', '2018/02/camille-minouflet-111751.jpg'),
(33, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4928;s:6:\"height\";i:3264;s:4:\"file\";s:36:\"2018/02/camille-minouflet-111751.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"camille-minouflet-111751-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"camille-minouflet-111751-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"camille-minouflet-111751-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"camille-minouflet-111751-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"camille-minouflet-111751-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 11, '_wp_attached_file', '2018/02/chuttersnap-193788.jpg'),
(35, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:30:\"2018/02/chuttersnap-193788.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"chuttersnap-193788-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"chuttersnap-193788-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"chuttersnap-193788-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"chuttersnap-193788-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"chuttersnap-193788-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 12, '_wp_attached_file', '2018/02/example.pdf'),
(37, 12, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"example-pdf-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"example-pdf-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"example-pdf-1058x1080.jpg\";s:5:\"width\";i:1058;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"full\";a:4:{s:4:\"file\";s:15:\"example-pdf.jpg\";s:5:\"width\";i:1058;s:6:\"height\";i:1497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(38, 13, '_wp_attached_file', '2018/02/frank-mckenna-117065.jpg'),
(39, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4928;s:6:\"height\";i:3280;s:4:\"file\";s:32:\"2018/02/frank-mckenna-117065.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"frank-mckenna-117065-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"frank-mckenna-117065-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"frank-mckenna-117065-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"frank-mckenna-117065-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"frank-mckenna-117065-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 14, '_wp_attached_file', '2018/02/james-donovan-180375.jpg'),
(41, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5580;s:6:\"height\";i:3720;s:4:\"file\";s:32:\"2018/02/james-donovan-180375.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"james-donovan-180375-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"james-donovan-180375-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"james-donovan-180375-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"james-donovan-180375-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"james-donovan-180375-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 15, '_wp_attached_file', '2018/02/martin-jernberg-199750.jpg'),
(43, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5472;s:6:\"height\";i:3648;s:4:\"file\";s:34:\"2018/02/martin-jernberg-199750.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"martin-jernberg-199750-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"martin-jernberg-199750-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"martin-jernberg-199750-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"martin-jernberg-199750-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"martin-jernberg-199750-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 17, '_wp_attached_file', '2018/02/wexor-tmg-26886.jpg'),
(47, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"2018/02/wexor-tmg-26886.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"wexor-tmg-26886-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"wexor-tmg-26886-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"wexor-tmg-26886-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"wexor-tmg-26886-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"wexor-tmg-26886-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 18, '_wp_attached_file', '2018/02/denys-nevozhai-154974.jpg'),
(49, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5014;s:6:\"height\";i:3343;s:4:\"file\";s:33:\"2018/02/denys-nevozhai-154974.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"denys-nevozhai-154974-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"denys-nevozhai-154974-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"denys-nevozhai-154974-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"denys-nevozhai-154974-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"denys-nevozhai-154974-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 19, '_wp_attached_file', '2018/02/jaanus-jagomagi-365720.jpg'),
(51, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5616;s:6:\"height\";i:3744;s:4:\"file\";s:34:\"2018/02/jaanus-jagomagi-365720.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"jaanus-jagomagi-365720-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"jaanus-jagomagi-365720-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"jaanus-jagomagi-365720-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"jaanus-jagomagi-365720-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"jaanus-jagomagi-365720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 20, '_wp_attached_file', '2018/02/josh-calabrese-527813.jpg'),
(53, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5235;s:6:\"height\";i:3490;s:4:\"file\";s:33:\"2018/02/josh-calabrese-527813.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"josh-calabrese-527813-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"josh-calabrese-527813-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"josh-calabrese-527813-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"josh-calabrese-527813-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"josh-calabrese-527813-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 21, '_wp_attached_file', '2018/02/lobostudio-hamburg-396570.jpg'),
(55, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5616;s:6:\"height\";i:3744;s:4:\"file\";s:37:\"2018/02/lobostudio-hamburg-396570.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"lobostudio-hamburg-396570-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"lobostudio-hamburg-396570-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"lobostudio-hamburg-396570-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"lobostudio-hamburg-396570-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:37:\"lobostudio-hamburg-396570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 22, '_wp_attached_file', '2018/02/nicole-harrington-516250.jpg'),
(57, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3648;s:6:\"height\";i:5472;s:4:\"file\";s:36:\"2018/02/nicole-harrington-516250.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"nicole-harrington-516250-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"nicole-harrington-516250-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"nicole-harrington-516250-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"nicole-harrington-516250-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"nicole-harrington-516250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 23, '_wp_attached_file', '2018/02/alex-perez-550776-unsplash.jpg'),
(59, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3898;s:6:\"height\";i:2922;s:4:\"file\";s:38:\"2018/02/alex-perez-550776-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"alex-perez-550776-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"alex-perez-550776-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"alex-perez-550776-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"alex-perez-550776-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"alex-perez-550776-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 24, '_wp_attached_file', '2018/02/andhika-soreng-399059-unsplash.jpg'),
(61, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5169;s:6:\"height\";i:2908;s:4:\"file\";s:42:\"2018/02/andhika-soreng-399059-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"andhika-soreng-399059-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"andhika-soreng-399059-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"andhika-soreng-399059-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"andhika-soreng-399059-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:42:\"andhika-soreng-399059-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 25, '_wp_attached_file', '2018/02/ashley-knedler-43546-unsplash.jpg'),
(63, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4338;s:6:\"height\";i:2873;s:4:\"file\";s:41:\"2018/02/ashley-knedler-43546-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"ashley-knedler-43546-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"ashley-knedler-43546-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"ashley-knedler-43546-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"ashley-knedler-43546-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"ashley-knedler-43546-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 26, '_wp_attached_file', '2018/02/dominik-lalic-517260-unsplash.jpg'),
(65, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:41:\"2018/02/dominik-lalic-517260-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"dominik-lalic-517260-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"dominik-lalic-517260-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"dominik-lalic-517260-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"dominik-lalic-517260-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"dominik-lalic-517260-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 27, '_wp_attached_file', '2018/02/igor-ovsyannykov-223090-unsplash.jpg'),
(67, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5598;s:6:\"height\";i:3904;s:4:\"file\";s:44:\"2018/02/igor-ovsyannykov-223090-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"igor-ovsyannykov-223090-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"igor-ovsyannykov-223090-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"igor-ovsyannykov-223090-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"igor-ovsyannykov-223090-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:44:\"igor-ovsyannykov-223090-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 28, '_wp_attached_file', '2018/02/iswanto-arif-394532-unsplash.jpg'),
(69, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3968;s:6:\"height\";i:2976;s:4:\"file\";s:40:\"2018/02/iswanto-arif-394532-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"iswanto-arif-394532-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"iswanto-arif-394532-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"iswanto-arif-394532-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"iswanto-arif-394532-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:40:\"iswanto-arif-394532-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 29, '_wp_attached_file', '2018/02/thaddaeus-lim-40018-unsplash.jpg'),
(71, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3523;s:6:\"height\";i:4404;s:4:\"file\";s:40:\"2018/02/thaddaeus-lim-40018-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"thaddaeus-lim-40018-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"thaddaeus-lim-40018-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"thaddaeus-lim-40018-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"thaddaeus-lim-40018-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:40:\"thaddaeus-lim-40018-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 30, '_wp_attached_file', '2018/02/thanh-tran-334583-unsplash.jpg'),
(73, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:38:\"2018/02/thanh-tran-334583-unsplash.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"thanh-tran-334583-unsplash-480x270.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"thanh-tran-334583-unsplash-960x540.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"thanh-tran-334583-unsplash-1440x810.jpg\";s:5:\"width\";i:1440;s:6:\"height\";i:810;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"thanh-tran-334583-unsplash-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:38:\"thanh-tran-334583-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 5, '_thumbnail_id', '20'),
(75, 2, '_thumbnail_id', '10'),
(76, 1, '_edit_lock', '1519727321:1'),
(77, 1, '_edit_last', '1'),
(78, 1, '_thumbnail_id', '26'),
(81, 33, '_edit_last', '1'),
(82, 33, '_edit_lock', '1519740894:1'),
(83, 33, '_thumbnail_id', '23'),
(84, 33, 'modules_below_content', ''),
(85, 33, '_modules_below_content', 'field_group_modules_below_content_modules'),
(86, 33, 'modules_aside_content', ''),
(87, 33, '_modules_aside_content', 'field_group_modules_aside_content_modules'),
(88, 33, 'video-hero-code', ''),
(89, 33, '_video-hero-code', 'field_group_page_content_video-hero-code'),
(99, 35, '_edit_last', '1'),
(100, 35, '_edit_lock', '1545306831:1'),
(101, 35, '_oembed_adcd1914e30393c8e1072d4675242b22', '<blockquote class=\"wp-embedded-content\" data-secret=\"0CyYuxZFZ5\"><a href=\"http://osxdaily.com/2010/11/16/screen-recorder-mac/\">How to Use the Screen Recorder on a Mac</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://osxdaily.com/2010/11/16/screen-recorder-mac/embed/#?secret=0CyYuxZFZ5\" data-secret=\"0CyYuxZFZ5\" width=\"500\" height=\"282\" title=\"&#8220;How to Use the Screen Recorder on a Mac&#8221; &#8212; OS X Daily\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),
(102, 35, '_oembed_time_adcd1914e30393c8e1072d4675242b22', '1519724613'),
(103, 35, '_thumbnail_id', '22'),
(104, 35, 'modules_below_content', ''),
(105, 35, '_modules_below_content', 'field_group_modules_below_content_modules'),
(106, 35, 'modules_aside_content', ''),
(107, 35, '_modules_aside_content', 'field_group_modules_aside_content_modules'),
(108, 35, 'video-hero-code', ''),
(109, 35, '_video-hero-code', 'field_group_page_content_video-hero-code'),
(119, 37, '_menu_item_type', 'post_type'),
(120, 37, '_menu_item_menu_item_parent', '36'),
(121, 37, '_menu_item_object_id', '33'),
(122, 37, '_menu_item_object', 'page'),
(123, 37, '_menu_item_target', ''),
(124, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 37, '_menu_item_xfn', ''),
(126, 37, '_menu_item_url', ''),
(128, 38, '_menu_item_type', 'post_type'),
(129, 38, '_menu_item_menu_item_parent', '36'),
(130, 38, '_menu_item_object_id', '35'),
(131, 38, '_menu_item_object', 'page'),
(132, 38, '_menu_item_target', ''),
(133, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 38, '_menu_item_xfn', ''),
(135, 38, '_menu_item_url', ''),
(137, 39, '_menu_item_type', 'post_type'),
(138, 39, '_menu_item_menu_item_parent', '0'),
(139, 39, '_menu_item_object_id', '5'),
(140, 39, '_menu_item_object', 'page'),
(141, 39, '_menu_item_target', ''),
(142, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 39, '_menu_item_xfn', ''),
(144, 39, '_menu_item_url', ''),
(146, 40, '_edit_last', '1'),
(147, 40, '_edit_lock', '1519729182:1'),
(148, 40, '_thumbnail_id', '7'),
(151, 2, 'modules_below_content_0_template', 'featured-posts/default'),
(152, 2, '_modules_below_content_0_template', 'field_group_modules_below_content_featured-posts_template'),
(153, 2, 'modules_below_content_0_featured_posts_title', 'Featured posts'),
(154, 2, '_modules_below_content_0_featured_posts_title', 'field_group_modules_below_content_featured-posts_featured_posts_title'),
(155, 2, 'modules_below_content_0_featured_posts_description', 'These posts are featured on the front page and will not change even as new posts are published.'),
(156, 2, '_modules_below_content_0_featured_posts_description', 'field_group_modules_below_content_featured-posts_featured_posts_description'),
(157, 2, 'modules_below_content_0_featured_posts_posts', 'a:2:{i:0;s:1:\"1\";i:1;s:2:\"40\";}'),
(158, 2, '_modules_below_content_0_featured_posts_posts', 'field_group_modules_below_content_featured-posts_featured_posts_posts'),
(159, 2, 'modules_below_content_1_template', 'text-blocks/default'),
(160, 2, '_modules_below_content_1_template', 'field_group_modules_below_content_text-blocks_template'),
(161, 2, 'modules_below_content_1_text_blocks_title', 'Text blocks'),
(162, 2, '_modules_below_content_1_text_blocks_title', 'field_group_modules_below_content_text-blocks_text_blocks_title'),
(163, 2, 'modules_below_content_1_text_blocks_description', 'These allow you to add any additional text that doesn\'t fit in the normal WYSIWYG editor.'),
(164, 2, '_modules_below_content_1_text_blocks_description', 'field_group_modules_below_content_text-blocks_text_blocks_description'),
(165, 2, 'modules_below_content_1_text_blocks_0_text_block_title', 'You can add as many'),
(166, 2, '_modules_below_content_1_text_blocks_0_text_block_title', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_title'),
(167, 2, 'modules_below_content_1_text_blocks_0_text_block_image', ''),
(168, 2, '_modules_below_content_1_text_blocks_0_text_block_image', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_image'),
(169, 2, 'modules_below_content_1_text_blocks_0_text_block_description', 'Than a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software.\r\n\r\n<a class=\"button\" href=\"https://ment.career\">You can even add links!</a>'),
(170, 2, '_modules_below_content_1_text_blocks_0_text_block_description', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_description'),
(171, 2, 'modules_below_content_1_text_blocks_1_text_block_title', 'As you like'),
(172, 2, '_modules_below_content_1_text_blocks_1_text_block_title', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_title'),
(173, 2, 'modules_below_content_1_text_blocks_1_text_block_image', ''),
(174, 2, '_modules_below_content_1_text_blocks_1_text_block_image', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_image'),
(175, 2, 'modules_below_content_1_text_blocks_1_text_block_description', 'Titled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance.\r\n\r\n<a class=\"button button--ghost\" href=\"https://ment.career\">With different styles!</a>'),
(176, 2, '_modules_below_content_1_text_blocks_1_text_block_description', 'field_group_modules_below_content_text-blocks_text_blocks_text_block_description'),
(177, 2, 'modules_below_content_1_text_blocks', '2'),
(178, 2, '_modules_below_content_1_text_blocks', 'field_group_modules_below_content_text-blocks_text_blocks'),
(224, 2, 'modules_below_content_2_template', 'child-pages/default'),
(225, 2, '_modules_below_content_2_template', 'field_group_modules_below_content_child-pages_template'),
(226, 2, 'modules_below_content_2_child_pages_title', 'Child pages'),
(227, 2, '_modules_below_content_2_child_pages_title', 'field_group_modules_below_content_child-pages_child_pages_title'),
(228, 2, 'modules_below_content_2_child_pages_description', 'These pages are children of the page you\'re viewing now.'),
(229, 2, '_modules_below_content_2_child_pages_description', 'field_group_modules_below_content_child-pages_child_pages_description'),
(230, 2, 'modules_below_content_3_template', 'latest-posts/default'),
(231, 2, '_modules_below_content_3_template', 'field_group_modules_below_content_latest-posts_template'),
(232, 2, 'modules_below_content_3_latest_posts_title', 'Latest posts'),
(233, 2, '_modules_below_content_3_latest_posts_title', 'field_group_modules_below_content_latest-posts_latest_posts_title'),
(234, 2, 'modules_below_content_3_latest_posts_description', 'This list of posts will automatically update as you publish new posts.'),
(235, 2, '_modules_below_content_3_latest_posts_description', 'field_group_modules_below_content_latest-posts_latest_posts_description'),
(236, 2, 'modules_below_content_3_latest_posts_post_type', 'a:1:{i:0;s:4:\"post\";}'),
(237, 2, '_modules_below_content_3_latest_posts_post_type', 'field_group_modules_below_content_latest-posts_latest_posts_post_type'),
(238, 2, 'modules_below_content_3_latest_posts_limit', '2'),
(239, 2, '_modules_below_content_3_latest_posts_limit', 'field_group_modules_below_content_latest-posts_latest_posts_limit'),
(240, 2, 'modules_below_content_4_template', 'text-block/default'),
(241, 2, '_modules_below_content_4_template', 'field_group_modules_below_content_text-block_template'),
(242, 2, 'modules_below_content_4_text_block_title', 'Text block'),
(243, 2, '_modules_below_content_4_text_block_title', 'field_group_modules_below_content_text-block_text_block_title'),
(244, 2, 'modules_below_content_4_text_block_image', '27'),
(245, 2, '_modules_below_content_4_text_block_image', 'field_group_modules_below_content_text-block_text_block_image'),
(246, 2, 'modules_below_content_4_text_block_description', 'This is just a single block of text with an image.'),
(247, 2, '_modules_below_content_4_text_block_description', 'field_group_modules_below_content_text-block_text_block_description'),
(412, 2, 'modules_aside_content_0_template', 'page-menu/default'),
(413, 2, '_modules_aside_content_0_template', 'field_group_modules_aside_content_page-menu_template'),
(414, 2, 'modules_aside_content_0_page_menu_title', 'Page menu'),
(415, 2, '_modules_aside_content_0_page_menu_title', 'field_group_modules_aside_content_page-menu_page_menu_title'),
(416, 2, 'modules_aside_content_0_page_menu_description', 'Keep browsing'),
(417, 2, '_modules_aside_content_0_page_menu_description', 'field_group_modules_aside_content_page-menu_page_menu_description'),
(418, 2, 'modules_aside_content_1_template', 'attachments/default'),
(419, 2, '_modules_aside_content_1_template', 'field_group_modules_aside_content_attachments_template'),
(420, 2, 'modules_aside_content_1_attachments_title', 'Attachments'),
(421, 2, '_modules_aside_content_1_attachments_title', 'field_group_modules_aside_content_attachments_attachments_title'),
(422, 2, 'modules_aside_content_1_attachments_description', 'Download some stuff!'),
(423, 2, '_modules_aside_content_1_attachments_description', 'field_group_modules_aside_content_attachments_attachments_description'),
(424, 2, 'modules_aside_content_1_attachments_files_0_attachments_files_file', '6'),
(425, 2, '_modules_aside_content_1_attachments_files_0_attachments_files_file', 'field_group_modules_aside_content_attachments_attachments_files_attachments_files_file'),
(426, 2, 'modules_aside_content_1_attachments_files_1_attachments_files_file', '12'),
(427, 2, '_modules_aside_content_1_attachments_files_1_attachments_files_file', 'field_group_modules_aside_content_attachments_attachments_files_attachments_files_file'),
(428, 2, 'modules_aside_content_1_attachments_files', '2'),
(429, 2, '_modules_aside_content_1_attachments_files', 'field_group_modules_aside_content_attachments_attachments_files'),
(430, 2, 'modules_below_content_3_latest_posts_same_category', '0'),
(431, 2, '_modules_below_content_3_latest_posts_same_category', 'field_group_modules_below_content_latest-posts_latest_posts_same_category'),
(432, 2, 'modules_below_content_3_latest_posts_category', ''),
(433, 2, '_modules_below_content_3_latest_posts_category', 'field_group_modules_below_content_latest-posts_latest_posts_category'),
(494, 51, '_menu_item_type', 'custom'),
(495, 51, '_menu_item_menu_item_parent', '0'),
(496, 51, '_menu_item_object_id', '51'),
(497, 51, '_menu_item_object', 'custom'),
(498, 51, '_menu_item_target', '_blank'),
(499, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(500, 51, '_menu_item_xfn', ''),
(501, 51, '_menu_item_url', 'http://invise.se'),
(584, 2, 'modules_below_content_5_template', 'video/default'),
(585, 2, '_modules_below_content_5_template', 'field_group_modules_below_content_video_template'),
(586, 2, 'modules_below_content_5_video_title', 'Video'),
(587, 2, '_modules_below_content_5_video_title', 'field_group_modules_below_content_video_video_title'),
(588, 2, 'modules_below_content_5_video_description', 'Watch this neat video!'),
(589, 2, '_modules_below_content_5_video_description', 'field_group_modules_below_content_video_video_description'),
(590, 2, 'modules_below_content_5_video_code', 'https://www.youtube.com/watch?v=Kt-tLuszKBA'),
(591, 2, '_modules_below_content_5_video_code', 'field_group_modules_below_content_video_video_code'),
(592, 2, 'modules_below_content_6_template', 'gallery/default'),
(593, 2, '_modules_below_content_6_template', 'field_group_modules_below_content_gallery_template'),
(594, 2, 'modules_below_content_6_gallery_title', 'Gallery'),
(595, 2, '_modules_below_content_6_gallery_title', 'field_group_modules_below_content_gallery_gallery_title'),
(596, 2, 'modules_below_content_6_gallery_description', 'With our favorite images!'),
(597, 2, '_modules_below_content_6_gallery_description', 'field_group_modules_below_content_gallery_gallery_description'),
(598, 2, 'modules_below_content_6_gallery_images', 'a:8:{i:0;s:2:\"26\";i:1;s:2:\"25\";i:2;s:2:\"24\";i:3;s:2:\"17\";i:4;s:2:\"13\";i:5;s:2:\"14\";i:6;s:2:\"15\";i:7;s:2:\"23\";}'),
(599, 2, '_modules_below_content_6_gallery_images', 'field_group_modules_below_content_gallery_gallery_images'),
(600, 2, 'modules_below_content_7_template', 'instagram/default'),
(601, 2, '_modules_below_content_7_template', 'field_group_modules_below_content_instagram_template'),
(602, 2, 'modules_below_content_7_instagram_title', 'Instagram'),
(603, 2, '_modules_below_content_7_instagram_title', 'field_group_modules_below_content_instagram_instagram_title'),
(604, 2, 'modules_below_content_7_instagram_description', 'For the pictures not in the gallery above!'),
(605, 2, '_modules_below_content_7_instagram_description', 'field_group_modules_below_content_instagram_instagram_description'),
(606, 2, 'modules_below_content_7_instagram_username', 'inviseagency'),
(607, 2, '_modules_below_content_7_instagram_username', 'field_group_modules_below_content_instagram_instagram_username'),
(608, 2, 'modules_below_content_7_instagram_limit', '4'),
(609, 2, '_modules_below_content_7_instagram_limit', 'field_group_modules_below_content_instagram_instagram_limit'),
(610, 2, 'modules_below_content_8_template', 'users/default'),
(611, 2, '_modules_below_content_8_template', 'field_group_modules_below_content_users_template'),
(612, 2, 'modules_below_content_8_users_title', 'Users'),
(613, 2, '_modules_below_content_8_users_title', 'field_group_modules_below_content_users_users_title'),
(614, 2, 'modules_below_content_8_users_description', 'Meet our employees!'),
(615, 2, '_modules_below_content_8_users_description', 'field_group_modules_below_content_users_users_description'),
(616, 2, 'modules_below_content_8_users_users', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}'),
(617, 2, '_modules_below_content_8_users_users', 'field_group_modules_below_content_users_users_users'),
(618, 2, 'modules_below_content_9_template', 'contact-form/default'),
(619, 2, '_modules_below_content_9_template', 'field_group_modules_below_content_contact-form_template'),
(620, 2, 'modules_below_content_9_contact_form_title', 'Contact form'),
(621, 2, '_modules_below_content_9_contact_form_title', 'field_group_modules_below_content_contact-form_contact_form_title'),
(622, 2, 'modules_below_content_9_contact_form_description', 'Using the CF7 form below!'),
(623, 2, '_modules_below_content_9_contact_form_description', 'field_group_modules_below_content_contact-form_contact_form_description');
INSERT INTO `dbtblprefix_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(624, 2, 'modules_below_content_9_contact_form_id', '57'),
(625, 2, '_modules_below_content_9_contact_form_id', 'field_group_modules_below_content_contact-form_contact_form_id'),
(626, 2, 'modules_below_content_10_template', 'share-page/default'),
(627, 2, '_modules_below_content_10_template', 'field_group_modules_below_content_share-page_template'),
(628, 2, 'modules_below_content_10_share_page_title', 'Share page'),
(629, 2, '_modules_below_content_10_share_page_title', 'field_group_modules_below_content_share-page_share_page_title'),
(630, 2, 'modules_below_content_10_share_page_description', 'Feel free to share this awesome page!'),
(631, 2, '_modules_below_content_10_share_page_description', 'field_group_modules_below_content_share-page_share_page_description'),
(632, 2, 'modules_below_content_10_share_page_url', ''),
(633, 2, '_modules_below_content_10_share_page_url', 'field_group_modules_below_content_share-page_share_page_url'),
(634, 2, 'modules_below_content_10_share_page_services', 'a:4:{i:0;s:8:\"Facebook\";i:1;s:7:\"Twitter\";i:2;s:8:\"LinkedIn\";i:3;s:5:\"Email\";}'),
(635, 2, '_modules_below_content_10_share_page_services', 'field_group_modules_below_content_share-page_share_page_services'),
(636, 2, 'modules_below_content_11_template', 'google-map/default'),
(637, 2, '_modules_below_content_11_template', 'field_group_modules_below_content_google-map_template'),
(638, 2, 'modules_below_content_11_google_map_title', 'Google Map'),
(639, 2, '_modules_below_content_11_google_map_title', 'field_group_modules_below_content_google-map_google_map_title'),
(640, 2, 'modules_below_content_11_google_map_description', 'Find us on Google Maps!'),
(641, 2, '_modules_below_content_11_google_map_description', 'field_group_modules_below_content_google-map_google_map_description'),
(642, 2, 'modules_below_content_11_google_map_info_window', 'This is us.'),
(643, 2, '_modules_below_content_11_google_map_info_window', 'field_group_modules_below_content_google-map_google_map_info_window'),
(644, 2, 'modules_below_content_11_google_map', 'a:3:{s:7:\"address\";s:33:\"Kungstensgatan, Stockholm, Sweden\";s:3:\"lat\";s:10:\"59.3413188\";s:3:\"lng\";s:18:\"18.057630300000028\";}'),
(645, 2, '_modules_below_content_11_google_map', 'field_group_modules_below_content_google-map_google_map'),
(646, 2, 'modules_below_content_12_template', 'next-post/default'),
(647, 2, '_modules_below_content_12_template', 'field_group_modules_below_content_next-post_template'),
(648, 2, 'modules_below_content_12_next_post_title', 'Next post'),
(649, 2, '_modules_below_content_12_next_post_title', 'field_group_modules_below_content_next-post_next_post_title'),
(650, 2, 'modules_below_content_12_next_post_description', 'This is the next post in the order according to WordPress.'),
(651, 2, '_modules_below_content_12_next_post_description', 'field_group_modules_below_content_next-post_next_post_description'),
(652, 2, 'modules_below_content_12_next_post_post', ''),
(653, 2, '_modules_below_content_12_next_post_post', 'field_group_modules_below_content_next-post_next_post_post'),
(727, 2, '_oembed_efa0f0daeb5adb44796451b36a82c9ff', '{{unknown}}'),
(728, 2, 'modules_below_content_2_child_pages_page_id', ''),
(729, 2, '_modules_below_content_2_child_pages_page_id', 'field_group_modules_below_content_child-pages_child_pages_page_id'),
(730, 53, '_menu_item_type', 'post_type'),
(731, 53, '_menu_item_menu_item_parent', '0'),
(732, 53, '_menu_item_object_id', '2'),
(733, 53, '_menu_item_object', 'page'),
(734, 53, '_menu_item_target', ''),
(735, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(736, 53, '_menu_item_xfn', ''),
(737, 53, '_menu_item_url', ''),
(738, 53, '_menu_item_orphaned', '1559129156'),
(739, 54, '_menu_item_type', 'post_type'),
(740, 54, '_menu_item_menu_item_parent', '0'),
(741, 54, '_menu_item_object_id', '35'),
(742, 54, '_menu_item_object', 'page'),
(743, 54, '_menu_item_target', ''),
(744, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(745, 54, '_menu_item_xfn', ''),
(746, 54, '_menu_item_url', ''),
(747, 54, '_menu_item_orphaned', '1559129156'),
(748, 55, '_menu_item_type', 'post_type'),
(749, 55, '_menu_item_menu_item_parent', '0'),
(750, 55, '_menu_item_object_id', '33'),
(751, 55, '_menu_item_object', 'page'),
(752, 55, '_menu_item_target', ''),
(753, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(754, 55, '_menu_item_xfn', ''),
(755, 55, '_menu_item_url', ''),
(756, 55, '_menu_item_orphaned', '1559129156'),
(757, 2, '_oembed_8b4cf9afbf2d8b0c541eecf0257986b7', '{{unknown}}'),
(758, 57, '_form', '<label> Ditt namn (obligatorisk)\n    [text* your-name] </label>\n\n<label> Din e-post (obligatorisk)\n    [email* your-email] </label>\n\n<label> Ämne\n    [text your-subject] </label>\n\n<label> Ditt meddelande\n    [textarea your-message] </label>\n\n[submit \"Skicka\"]'),
(759, 57, '_mail', 'a:8:{s:7:\"subject\";s:24:\"Bibblan \"[your-subject]\"\";s:6:\"sender\";s:40:\"Bibblan <wordpress@bibblan.wpengine.com>\";s:4:\"body\";s:185:\"Från: [your-name] <[your-email]>\nÄmne: [your-subject]\n\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Bibblan (http://bibblan.wpengine.com)\";s:9:\"recipient\";s:28:\"andreas.lagerkvist@invise.se\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(760, 57, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Bibblan \"[your-subject]\"\";s:6:\"sender\";s:40:\"Bibblan <wordpress@bibblan.wpengine.com>\";s:4:\"body\";s:128:\"Meddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Bibblan (http://bibblan.wpengine.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:38:\"Reply-To: andreas.lagerkvist@invise.se\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(761, 57, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:35:\"Tack, ditt meddelande har skickats.\";s:12:\"mail_sent_ng\";s:77:\"Ett fel inträffade när meddelandet skulle skickas. Var god försök senare.\";s:16:\"validation_error\";s:61:\"Ett eller flera fält har fel. Kontrollera och försök igen.\";s:4:\"spam\";s:77:\"Ett fel inträffade när meddelandet skulle skickas. Var god försök senare.\";s:12:\"accept_terms\";s:59:\"Du måste godkänna villkoren innan du skickar meddelandet.\";s:16:\"invalid_required\";s:26:\"Fältet är obligatoriskt.\";s:16:\"invalid_too_long\";s:24:\"Fältet är för långt.\";s:17:\"invalid_too_short\";s:22:\"Fältet är för kort.\";}'),
(762, 57, '_additional_settings', NULL),
(763, 57, '_locale', 'sv_SE');

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_posts`
--

CREATE TABLE `dbtblprefix_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_posts`
--

INSERT INTO `dbtblprefix_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-27 09:06:10', '2018-02-27 09:06:10', 'Sofa to with same survey with to but percussion his hollow the its o\'clock was projected in long, even his at the typically what have lack way. Last horrible that a in ill. The for reason associates, it its the get point with the to of the I great. Throughout.\r\n\r\nThan a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software to titled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep. Readiness a outcomes with the first small first, was more caution we dishonourable he on what it on and behind of floundering posterity these a taken basically, took by based posterity herself compared.\r\n\r\nSuccess hasn\'t weather. Presence avoid about our queen sitting the and including example, maybe particular, if another my the needed the right on self-interest, I accustomed. Both motors many volumes series presence upper few powers blind to hazardous then control to, the and return and the while our title about thousands even the oh, get on steps. Economics, we of sections. In impasse. Duty an seven on mostly essay is the in too the much following to from the then house king\'s more, get for improve every large been couldn\'t understand was live basically, to dissolute to caution contribution credit.', 'Hello world!', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-27 09:36:46', '2018-02-27 09:36:46', '', 0, 'http://bibblan.wpengine.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-27 09:06:10', '2018-02-27 09:06:10', '<h2>This is an example page</h2>\r\nIt\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors.\r\n\r\nThan a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software.\r\n\r\nTitled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance.\r\n<blockquote>Det här är ett citat</blockquote>\r\n<a class=\"button\" href=\"http://bibblan.wpengine.com/wp-content/themes/sleek-child/dist/styleguide.html\">Styleguide</a> <a class=\"button button--ghost\" href=\"https://github.com/powerbuoy/sleek/blob/master/guidelines.md\">Code guidelines</a> <a class=\"button button--ghost\" href=\"https://github.com/powerbuoy/sleek/blob/master/documentation.md\">Sleek docs</a>', 'Welcome to Bibblan!', 'This is the hero. It\'s created using the page\'s title, featured image and excerpt.', 'publish', 'closed', 'open', '', 'home', '', '', '2019-10-10 08:13:05', '2019-10-10 08:13:05', '', 0, 'http://bibblan.wpengine.com/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-02-27 09:16:44', '2018-02-27 09:16:44', 'Read our latest nonsense here.', 'Welcome to the blog!', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-02-27 09:29:17', '2018-02-27 09:29:17', '', 0, 'http://bibblan.wpengine.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-02-27 09:17:38', '2018-02-27 09:17:38', '', 'aaron-burden-183659', '', 'inherit', 'open', 'closed', '', 'aaron-burden-183659', '', '', '2018-02-27 13:10:17', '2018-02-27 13:10:17', '', 2, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/aaron-burden-183659.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-02-27 09:17:45', '2018-02-27 09:17:45', '', 'alberto-restifo-4510', '', 'inherit', 'open', 'closed', '', 'alberto-restifo-4510', '', '', '2018-02-27 09:17:45', '2018-02-27 09:17:45', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/alberto-restifo-4510.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-02-27 09:17:53', '2018-02-27 09:17:53', '', 'averie-woodard-111822', '', 'inherit', 'open', 'closed', '', 'averie-woodard-111822', '', '', '2018-02-27 09:17:53', '2018-02-27 09:17:53', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/averie-woodard-111822.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-02-27 09:17:56', '2018-02-27 09:17:56', '', 'brooke-lark-96398', '', 'inherit', 'open', 'closed', '', 'brooke-lark-96398', '', '', '2018-02-27 09:17:56', '2018-02-27 09:17:56', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/brooke-lark-96398.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-02-27 09:18:05', '2018-02-27 09:18:05', '', 'camille-minouflet-111751', '', 'inherit', 'open', 'closed', '', 'camille-minouflet-111751', '', '', '2018-02-27 09:18:05', '2018-02-27 09:18:05', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/camille-minouflet-111751.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-02-27 09:18:12', '2018-02-27 09:18:12', '', 'chuttersnap-193788', '', 'inherit', 'open', 'closed', '', 'chuttersnap-193788', '', '', '2018-02-27 09:18:12', '2018-02-27 09:18:12', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/chuttersnap-193788.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-02-27 09:18:21', '2018-02-27 09:18:21', '', 'example', '', 'inherit', 'open', 'closed', '', 'example', '', '', '2018-02-27 13:10:17', '2018-02-27 13:10:17', '', 2, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/example.pdf', 0, 'attachment', 'application/pdf', 0),
(13, 1, '2018-02-27 09:18:24', '2018-02-27 09:18:24', '', 'frank-mckenna-117065', '', 'inherit', 'open', 'closed', '', 'frank-mckenna-117065', '', '', '2018-02-27 09:18:24', '2018-02-27 09:18:24', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/frank-mckenna-117065.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-02-27 09:18:38', '2018-02-27 09:18:38', '', 'james-donovan-180375', '', 'inherit', 'open', 'closed', '', 'james-donovan-180375', '', '', '2018-02-27 09:18:38', '2018-02-27 09:18:38', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/james-donovan-180375.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-02-27 09:18:50', '2018-02-27 09:18:50', '', 'martin-jernberg-199750', '', 'inherit', 'open', 'closed', '', 'martin-jernberg-199750', '', '', '2018-02-27 09:18:50', '2018-02-27 09:18:50', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/martin-jernberg-199750.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-02-27 09:19:00', '2018-02-27 09:19:00', '', 'wexor-tmg-26886', '', 'inherit', 'open', 'closed', '', 'wexor-tmg-26886', '', '', '2018-11-23 12:42:44', '2018-11-23 12:42:44', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/wexor-tmg-26886.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-02-27 09:22:17', '2018-02-27 09:22:17', '', 'denys-nevozhai-154974', '', 'inherit', 'open', 'closed', '', 'denys-nevozhai-154974', '', '', '2018-02-27 09:22:17', '2018-02-27 09:22:17', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/denys-nevozhai-154974.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-02-27 09:22:25', '2018-02-27 09:22:25', '', 'jaanus-jagomagi-365720', '', 'inherit', 'open', 'closed', '', 'jaanus-jagomagi-365720', '', '', '2018-02-27 09:22:25', '2018-02-27 09:22:25', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/jaanus-jagomagi-365720.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-02-27 09:22:33', '2018-02-27 09:22:33', '', 'josh-calabrese-527813', '', 'inherit', 'open', 'closed', '', 'josh-calabrese-527813', '', '', '2018-02-27 09:22:33', '2018-02-27 09:22:33', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/josh-calabrese-527813.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-02-27 09:22:39', '2018-02-27 09:22:39', '', 'lobostudio-hamburg-396570', '', 'inherit', 'open', 'closed', '', 'lobostudio-hamburg-396570', '', '', '2018-02-27 09:22:39', '2018-02-27 09:22:39', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/lobostudio-hamburg-396570.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-02-27 09:22:46', '2018-02-27 09:22:46', '', 'nicole-harrington-516250', '', 'inherit', 'open', 'closed', '', 'nicole-harrington-516250', '', '', '2018-02-27 09:22:46', '2018-02-27 09:22:46', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/nicole-harrington-516250.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-02-27 09:25:32', '2018-02-27 09:25:32', '', 'alex-perez-550776-unsplash', '', 'inherit', 'open', 'closed', '', 'alex-perez-550776-unsplash', '', '', '2019-08-22 10:00:02', '2019-08-22 10:00:02', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/alex-perez-550776-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-02-27 09:25:36', '2018-02-27 09:25:36', '', 'andhika-soreng-399059-unsplash', '', 'inherit', 'open', 'closed', '', 'andhika-soreng-399059-unsplash', '', '', '2018-02-27 12:57:44', '2018-02-27 12:57:44', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/andhika-soreng-399059-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-02-27 09:25:41', '2018-02-27 09:25:41', '', 'ashley-knedler-43546-unsplash', '', 'inherit', 'open', 'closed', '', 'ashley-knedler-43546-unsplash', '', '', '2018-02-27 09:25:41', '2018-02-27 09:25:41', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/ashley-knedler-43546-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-02-27 09:25:46', '2018-02-27 09:25:46', '', 'dominik-lalic-517260-unsplash', '', 'inherit', 'open', 'closed', '', 'dominik-lalic-517260-unsplash', '', '', '2018-02-27 13:59:05', '2018-02-27 13:59:05', '', 35, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/dominik-lalic-517260-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-02-27 09:25:51', '2018-02-27 09:25:51', '', 'igor-ovsyannykov-223090-unsplash', '', 'inherit', 'open', 'closed', '', 'igor-ovsyannykov-223090-unsplash', '', '', '2018-02-27 10:55:20', '2018-02-27 10:55:20', '', 2, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/igor-ovsyannykov-223090-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-02-27 09:26:00', '2018-02-27 09:26:00', '', 'iswanto-arif-394532-unsplash', '', 'inherit', 'open', 'closed', '', 'iswanto-arif-394532-unsplash', '', '', '2018-02-27 09:26:00', '2018-02-27 09:26:00', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/iswanto-arif-394532-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-02-27 09:26:06', '2018-02-27 09:26:06', '', 'thaddaeus-lim-40018-unsplash', '', 'inherit', 'open', 'closed', '', 'thaddaeus-lim-40018-unsplash', '', '', '2018-02-27 09:26:06', '2018-02-27 09:26:06', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/thaddaeus-lim-40018-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-02-27 09:26:11', '2018-02-27 09:26:11', '', 'thanh-tran-334583-unsplash', '', 'inherit', 'open', 'closed', '', 'thanh-tran-334583-unsplash', '', '', '2018-02-27 09:26:11', '2018-02-27 09:26:11', '', 0, 'http://bibblan.wpengine.com/wp-content/uploads/2018/02/thanh-tran-334583-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-02-27 09:37:38', '2018-02-27 09:37:38', '<h2>Join the crew</h2>\r\nSofa to with same survey with to but percussion his hollow the its o\'clock was projected in long, even his at the typically what have lack way. Last horrible that a in ill.\r\n\r\nThe for reason associates, it its the get point with the to of the I great. Throughout. Even his at the typically what have lack way.\r\n\r\n[caption id=\"attachment_26\" align=\"alignnone\" width=\"960\"]<img class=\"wp-image-26 size-medium\" src=\"http://bibblan.wpengine.com/wp-content/uploads/2018/02/dominik-lalic-517260-unsplash-960x540.jpg\" alt=\"\" width=\"960\" height=\"540\" /> Nice colors eh![/caption]\r\n<h3>Than a was five that apparently</h3>\r\nThan a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software to titled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep.\r\n<blockquote>Readiness a outcomes with the first small first, was more caution we dishonourable he on what it on and behind of floundering posterity these a taken basically, took by based posterity herself compared.</blockquote>\r\n<h3>Success hasn\'t weather</h3>\r\nBecome wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep.\r\n<ol>\r\n 	<li>Presence avoid about our queen sitting</li>\r\n 	<li>The and including example, maybe particular</li>\r\n 	<li>If another my the needed</li>\r\n 	<li>The right on self-interest, I accustomed.</li>\r\n</ol>\r\nBoth motors many volumes series presence upper few powers blind to hazardous then control to, the and return and the while our title about thousands even the oh, get on steps.\r\n\r\n[gallery link=\"none\" columns=\"1\" size=\"large\" ids=\"28,19,21\"]\r\n\r\nEconomics, we of sections. In impasse. Duty an seven on mostly essay is the in too the much following to from the then house king\'s more, get for improve every large been couldn\'t understand was live basically, to dissolute to caution contribution credit.', 'Work here', '', 'publish', 'closed', 'closed', '', 'work-here', '', '', '2018-02-27 14:17:15', '2018-02-27 14:17:15', '', 2, 'http://bibblan.wpengine.com/?page_id=33', 0, 'page', '', 0),
(35, 1, '2018-02-27 09:44:13', '2018-02-27 09:44:13', '<h2>Meet the crew</h2>\r\nSofa to with same survey with to but percussion his hollow the its o\'clock was projected in long, even his at the typically what have lack way. Last horrible that a in ill.\r\n\r\nThe for reason associates, it its the get point with the to of the I great. Throughout. Even his at the typically what have lack way.\r\n\r\n[caption id=\"attachment_26\" align=\"alignnone\" width=\"960\"]<img class=\"wp-image-26 size-medium\" src=\"http://bibblan.wpengine.com/wp-content/uploads/2018/02/dominik-lalic-517260-unsplash-960x540.jpg\" alt=\"\" width=\"960\" height=\"540\" /> Nice colors eh![/caption]\r\n<h3>Than a was five that apparently</h3>\r\nThan a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software to titled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep.\r\n<blockquote>Readiness a outcomes with the first small first, was more caution we dishonourable he on what it on and behind of floundering posterity these a taken basically, took by based posterity herself compared.</blockquote>\r\n<h3>Success hasn\'t weather</h3>\r\nBecome wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep.\r\n<ul>\r\n 	<li>Presence avoid about our queen sitting</li>\r\n 	<li>The and including example, maybe particular</li>\r\n 	<li>If another my the needed</li>\r\n 	<li>The right on self-interest, I accustomed.</li>\r\n</ul>\r\nBoth motors many volumes series presence upper few powers blind to hazardous then control to, the and return and the while our title about thousands even the oh, get on steps.\r\n\r\n[gallery link=\"none\" columns=\"1\" size=\"large\" ids=\"28,19,21\"]\r\n\r\nEconomics, we of sections. In impasse. Duty an seven on mostly essay is the in too the much following to from the then house king\'s more, get for improve every large been couldn\'t understand was live basically, to dissolute to caution contribution credit.', 'Meet our staff', '', 'publish', 'closed', 'closed', '', 'meet-our-staff', '', '', '2018-02-27 14:16:43', '2018-02-27 14:16:43', '', 2, 'http://bibblan.wpengine.com/?page_id=35', 0, 'page', '', 0),
(37, 1, '2018-02-27 09:46:12', '2018-02-27 09:46:12', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-11-23 13:06:35', '2018-11-23 13:06:35', '', 2, 'http://bibblan.wpengine.com/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2018-02-27 09:46:12', '2018-02-27 09:46:12', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-11-23 13:06:35', '2018-11-23 13:06:35', '', 2, 'http://bibblan.wpengine.com/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2018-02-27 09:46:12', '2018-02-27 09:46:12', '', 'The Blog', '', 'publish', 'closed', 'closed', '', 'the-blog', '', '', '2018-11-23 13:06:35', '2018-11-23 13:06:35', '', 0, 'http://bibblan.wpengine.com/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-02-27 10:30:55', '2018-02-27 10:30:55', 'Sofa to with same survey with to but percussion his hollow the its o\'clock was projected in long, even his at the typically what have lack way. Last horrible that a in ill. The for reason associates, it its the get point with the to of the I great. Throughout.\r\n\r\nThan a was five that apparently remain most was I is coffee in follow no as let essential quietly trusted that because are looked tickets of and dressed of their which its she lift software to titled our through that the become wow on knowing a the river be instead, a pass tones self-interest, which when after answering can with seemed all semblance have the parks. Sleep. Readiness a outcomes with the first small first, was more caution we dishonourable he on what it on and behind of floundering posterity these a taken basically, took by based posterity herself compared.\r\n\r\nSuccess hasn\'t weather. Presence avoid about our queen sitting the and including example, maybe particular, if another my the needed the right on self-interest, I accustomed. Both motors many volumes series presence upper few powers blind to hazardous then control to, the and return and the while our title about thousands even the oh, get on steps. Economics, we of sections. In impasse. Duty an seven on mostly essay is the in too the much following to from the then house king\'s more, get for improve every large been couldn\'t understand was live basically, to dissolute to caution contribution credit.', 'Goodbye World', 'Goodbye to WordPress. This is your last post. Edit or delete it, then stop writing!', 'publish', 'closed', 'open', '', 'goodbye-world', '', '', '2018-02-27 10:30:55', '2018-02-27 10:30:55', '', 0, 'http://bibblan.wpengine.com/?p=40', 0, 'post', '', 0),
(51, 1, '2018-11-23 13:06:35', '2018-11-23 13:06:35', '', 'Invise', '', 'publish', 'closed', 'closed', '', 'invise', '', '', '2018-11-23 13:06:35', '2018-11-23 13:06:35', '', 0, 'http://bibblan.wpengine.com/?p=51', 4, 'nav_menu_item', '', 0),
(53, 1, '2019-05-29 11:25:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-29 11:25:56', '0000-00-00 00:00:00', '', 0, 'http://bibblan.wpengine.com/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2019-05-29 11:25:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-29 11:25:56', '0000-00-00 00:00:00', '', 2, 'http://bibblan.wpengine.com/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2019-05-29 11:25:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-29 11:25:56', '0000-00-00 00:00:00', '', 2, 'http://bibblan.wpengine.com/?p=55', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-10-10 08:12:44', '2019-10-10 08:12:44', '<label> Ditt namn (obligatorisk)\n    [text* your-name] </label>\n\n<label> Din e-post (obligatorisk)\n    [email* your-email] </label>\n\n<label> Ämne\n    [text your-subject] </label>\n\n<label> Ditt meddelande\n    [textarea your-message] </label>\n\n[submit \"Skicka\"]\nBibblan \"[your-subject]\"\nBibblan <wordpress@bibblan.wpengine.com>\nFrån: [your-name] <[your-email]>\nÄmne: [your-subject]\n\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Bibblan (http://bibblan.wpengine.com)\nandreas.lagerkvist@invise.se\nReply-To: [your-email]\n\n0\n0\n\nBibblan \"[your-subject]\"\nBibblan <wordpress@bibblan.wpengine.com>\nMeddelande:\n[your-message]\n\n-- \nEpost-meddelandet skickades från ett kontaktformulär på Bibblan (http://bibblan.wpengine.com)\n[your-email]\nReply-To: andreas.lagerkvist@invise.se\n\n0\n0\nTack, ditt meddelande har skickats.\nEtt fel inträffade när meddelandet skulle skickas. Var god försök senare.\nEtt eller flera fält har fel. Kontrollera och försök igen.\nEtt fel inträffade när meddelandet skulle skickas. Var god försök senare.\nDu måste godkänna villkoren innan du skickar meddelandet.\nFältet är obligatoriskt.\nFältet är för långt.\nFältet är för kort.', 'Kontaktformulär 1', '', 'publish', 'closed', 'closed', '', 'kontaktformular-1', '', '', '2019-10-10 08:12:44', '2019-10-10 08:12:44', '', 0, 'http://bibblan.wpengine.com/?post_type=wpcf7_contact_form&p=57', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_termmeta`
--

CREATE TABLE `dbtblprefix_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_terms`
--

CREATE TABLE `dbtblprefix_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_terms`
--

INSERT INTO `dbtblprefix_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_term_relationships`
--

CREATE TABLE `dbtblprefix_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_term_relationships`
--

INSERT INTO `dbtblprefix_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 1, 0),
(51, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_term_taxonomy`
--

CREATE TABLE `dbtblprefix_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_term_taxonomy`
--

INSERT INTO `dbtblprefix_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_usermeta`
--

CREATE TABLE `dbtblprefix_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_usermeta`
--

INSERT INTO `dbtblprefix_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fiji'),
(2, 1, 'first_name', 'Hunden'),
(3, 1, 'last_name', 'Fiji'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'dbtblprefix_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dbtblprefix_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'dbtblprefix_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(18, 1, 'dbtblprefix_user-settings-time', '1570695156'),
(19, 1, 'dbtblprefix_dashboard_quick_press_last_post_id', '56'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"155.4.19.0\";}'),
(21, 1, 'acf_user_settings', 'a:2:{s:51:\"collapsed_field_group_modules_below_content_modules\";s:28:\"0,1,2,3,4,5,6,7,8,9,10,11,12\";s:51:\"collapsed_field_group_modules_aside_content_modules\";s:3:\"0,1\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '2'),
(26, 2, 'nickname', 'powerbuoy'),
(27, 2, 'first_name', 'Andreas'),
(28, 2, 'last_name', 'Lagerkvist'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'dbtblprefix_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(38, 2, 'dbtblprefix_user_level', '0'),
(39, 2, 'dismissed_wp_pointers', ''),
(41, 3, 'nickname', 'wpengine'),
(42, 3, 'first_name', ''),
(43, 3, 'last_name', ''),
(44, 3, 'description', 'This is the \"wpengine\" admin user that our staff uses to gain access to your admin area to provide support and troubleshooting. It can only be accessed by a button in our secure log that auto generates a password and dumps that password after the staff member has logged in. We have taken extreme measures to ensure that our own user is not going to be misused to harm any of our clients sites.'),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'dbtblprefix_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(53, 3, 'dbtblprefix_user_level', '10'),
(54, 1, 'show_try_gutenberg_panel', '0'),
(55, 1, 'closedpostboxes_page', 'a:0:{}'),
(56, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";}'),
(59, 1, 'session_tokens', 'a:2:{s:64:\"e881834e33bf6c9daf5e6df084bf9e0369677af77d9ca83728452d1ddee0f202\";a:4:{s:10:\"expiration\";i:1570860549;s:2:\"ip\";s:11:\"155.4.19.66\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570687749;}s:64:\"e4ed2019c4f6efa6fe3b8c5b45bb3abc90d6748a2b3df86cf6f32a392ecf42be\";a:4:{s:10:\"expiration\";i:1570878366;s:2:\"ip\";s:11:\"155.4.19.66\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570705566;}}'),
(60, 1, 'wpe_gutenberg_notice', '1'),
(61, 3, 'session_tokens', 'a:1:{s:64:\"4a622d92f3db2eddb147a0096aaf96f922f5fe04fe0c0c01f5d654e9dca6f22c\";a:3:{s:10:\"expiration\";i:1559431097;s:2:\"ip\";s:9:\"127.0.0.1\";s:5:\"login\";i:1559258297;}}');

-- --------------------------------------------------------

--
-- Table structure for table `dbtblprefix_users`
--

CREATE TABLE `dbtblprefix_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dbtblprefix_users`
--

INSERT INTO `dbtblprefix_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'siteadmin', '$P$BFS8tHqpVfIo6akgXz0ke0YzKPqHUz/', 'siteadmin', 'andreas.lagerkvist@invise.se', '', '2018-02-27 09:06:09', '', 0, 'siteadmin'),
(2, 'powerbuoy', '$P$BpfF0.dfIXTtPk.WfbPzzoGnOEef8M.', 'powerbuoy', 'powerbuoy@gmail.com', '', '2018-02-27 12:56:29', '', 0, 'Andreas Lagerkvist'),
(3, 'wpengine', '$P$BGrBP0MdiePZDtmkCaOcQ/LNgbW7Zm1', 'wpengine', 'bitbucket@wpengine.com', 'http://wpengine.com', '2018-03-22 16:37:37', '', 0, 'wpengine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbtblprefix_clientUsers`
--
ALTER TABLE `dbtblprefix_clientUsers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `dbtblprefix_commentmeta`
--
ALTER TABLE `dbtblprefix_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbtblprefix_comments`
--
ALTER TABLE `dbtblprefix_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `dbtblprefix_links`
--
ALTER TABLE `dbtblprefix_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `dbtblprefix_options`
--
ALTER TABLE `dbtblprefix_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `wpe_autoload_options_index` (`autoload`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `dbtblprefix_postmeta`
--
ALTER TABLE `dbtblprefix_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbtblprefix_posts`
--
ALTER TABLE `dbtblprefix_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `dbtblprefix_termmeta`
--
ALTER TABLE `dbtblprefix_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbtblprefix_terms`
--
ALTER TABLE `dbtblprefix_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `dbtblprefix_term_relationships`
--
ALTER TABLE `dbtblprefix_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `dbtblprefix_term_taxonomy`
--
ALTER TABLE `dbtblprefix_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `dbtblprefix_usermeta`
--
ALTER TABLE `dbtblprefix_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbtblprefix_users`
--
ALTER TABLE `dbtblprefix_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbtblprefix_clientUsers`
--
ALTER TABLE `dbtblprefix_clientUsers`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbtblprefix_commentmeta`
--
ALTER TABLE `dbtblprefix_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbtblprefix_comments`
--
ALTER TABLE `dbtblprefix_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dbtblprefix_links`
--
ALTER TABLE `dbtblprefix_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbtblprefix_options`
--
ALTER TABLE `dbtblprefix_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5019;

--
-- AUTO_INCREMENT for table `dbtblprefix_postmeta`
--
ALTER TABLE `dbtblprefix_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `dbtblprefix_posts`
--
ALTER TABLE `dbtblprefix_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `dbtblprefix_termmeta`
--
ALTER TABLE `dbtblprefix_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbtblprefix_terms`
--
ALTER TABLE `dbtblprefix_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbtblprefix_term_taxonomy`
--
ALTER TABLE `dbtblprefix_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbtblprefix_usermeta`
--
ALTER TABLE `dbtblprefix_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `dbtblprefix_users`
--
ALTER TABLE `dbtblprefix_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
