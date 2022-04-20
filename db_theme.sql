-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 20-04-2022 a las 14:01:21
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1', 'yes'),
(2, 'home', 'http://127.0.0.1', 'yes'),
(3, 'blogname', 'Abertay University', 'yes'),
(4, 'blogdescription', 'We place a strong emphasis on teaching excellence and preparing our graduates for the world of work', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luis.jaramillo@sigma3ds.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '5', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"programs/?$\";s:28:\"index.php?post_type=programs\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=programs&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=programs&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=programs&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"categories_programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?categories_programs=$matches[1]&feed=$matches[2]\";s:55:\"categories_programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?categories_programs=$matches[1]&feed=$matches[2]\";s:36:\"categories_programs/([^/]+)/embed/?$\";s:52:\"index.php?categories_programs=$matches[1]&embed=true\";s:48:\"categories_programs/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?categories_programs=$matches[1]&paged=$matches[2]\";s:30:\"categories_programs/([^/]+)/?$\";s:41:\"index.php?categories_programs=$matches[1]\";s:34:\"programs/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"programs/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"programs/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"programs/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"programs/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"programs/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"programs/(.+?)/embed/?$\";s:41:\"index.php?programs=$matches[1]&embed=true\";s:27:\"programs/(.+?)/trackback/?$\";s:35:\"index.php?programs=$matches[1]&tb=1\";s:47:\"programs/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?programs=$matches[1]&feed=$matches[2]\";s:42:\"programs/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?programs=$matches[1]&feed=$matches[2]\";s:35:\"programs/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?programs=$matches[1]&paged=$matches[2]\";s:42:\"programs/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?programs=$matches[1]&cpage=$matches[2]\";s:31:\"programs/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?programs=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:32:\"duplicate-page/duplicatepage.php\";i:3;s:41:\"post-type-switcher/post-type-switcher.php\";i:4;s:33:\"search-exclude/search-exclude.php\";i:5;s:47:\"show-current-template/show-current-template.php\";i:6;s:43:\"wp-extra-file-types/wp-extra-file-types.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'branch-theme', 'yes'),
(41, 'stylesheet', 'branch-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '8', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665850935', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'cron', 'a:8:{i:1650464550;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1650471747;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650471750;a:3:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650471751;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650471864;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650471867;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650990147;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650462081;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.11.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.11.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:5:\"4.4.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";}s:41:\"post-type-switcher/post-type-switcher.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/post-type-switcher\";s:4:\"slug\";s:18:\"post-type-switcher\";s:6:\"plugin\";s:41:\"post-type-switcher/post-type-switcher.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/post-type-switcher/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/post-type-switcher.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-type-switcher/assets/icon-256x256.jpg?rev=1823578\";s:2:\"1x\";s:71:\"https://ps.w.org/post-type-switcher/assets/icon-128x128.jpg?rev=1823578\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/post-type-switcher/assets/banner-1544x500.jpg?rev=1823571\";s:2:\"1x\";s:73:\"https://ps.w.org/post-type-switcher/assets/banner-772x250.jpg?rev=1823571\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"search-exclude/search-exclude.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/search-exclude\";s:4:\"slug\";s:14:\"search-exclude\";s:6:\"plugin\";s:33:\"search-exclude/search-exclude.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/search-exclude/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/search-exclude.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/search-exclude/assets/icon-256x256.png?rev=1385618\";s:2:\"1x\";s:67:\"https://ps.w.org/search-exclude/assets/icon-128x128.png?rev=1385618\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/search-exclude/assets/banner-1544x500.jpg?rev=1084914\";s:2:\"1x\";s:69:\"https://ps.w.org/search-exclude/assets/banner-772x250.jpg?rev=1084914\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:43:\"wp-extra-file-types/wp-extra-file-types.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/wp-extra-file-types\";s:4:\"slug\";s:19:\"wp-extra-file-types\";s:6:\"plugin\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:11:\"new_version\";s:5:\"0.5.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-extra-file-types/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-extra-file-types.0.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wp-extra-file-types/assets/icon-256x256.png?rev=2651791\";s:2:\"1x\";s:72:\"https://ps.w.org/wp-extra-file-types/assets/icon-128x128.png?rev=2651791\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.11.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.11.2\";s:32:\"duplicate-page/duplicatepage.php\";s:5:\"4.4.8\";s:41:\"post-type-switcher/post-type-switcher.php\";s:5:\"3.2.1\";s:33:\"search-exclude/search-exclude.php\";s:5:\"1.2.6\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.6\";s:43:\"wp-extra-file-types/wp-extra-file-types.php\";s:5:\"0.5.2\";}}', 'no'),
(124, 'fresh_site', '0', 'yes'),
(126, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:21:\"sidebar-theme-primary\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(127, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650299094;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, '_site_transient_timeout_browser_401968bb22de31bd3e1c851b49cbba74', '1650903865', 'no'),
(130, '_site_transient_browser_401968bb22de31bd3e1c851b49cbba74', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"100.0.4896.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_807c8573af5722dc652a2e0e9f9a1135', '1650903866', 'no'),
(132, '_site_transient_php_check_807c8573af5722dc652a2e0e9f9a1135', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(148, 'current_theme', 'Branch Theme', 'yes'),
(149, 'theme_mods_branch-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:19:\"menu-branch-primary\";i:9;s:18:\"menu-branch-footer\";i:10;s:17:\"menu-branch-terms\";i:11;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'db_upgraded', '', 'yes'),
(160, 'can_compress_scripts', '0', 'no'),
(161, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1650463197;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(164, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:27:\"luis.jaramillo@sigma3ds.com\";s:7:\"version\";s:5:\"5.9.3\";s:9:\"timestamp\";i:1650299229;}', 'no'),
(165, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650462081;s:7:\"checked\";a:1:{s:12:\"branch-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'acf_version', '5.11.4', 'yes'),
(175, 'cptui_new_install', 'false', 'yes'),
(176, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'yes'),
(177, '_transient_timeout_acf_plugin_updates', '1650475981', 'no'),
(178, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.11.4\";}}', 'no'),
(179, 'sep_exclude', 'a:3:{i:0;i:3;i:1;i:22;i:2;i:20;}', 'yes'),
(180, 'wpeft_types', 'a:9:{s:2:\"7z\";s:27:\"application/x-7z-compressed\";s:3:\"bz2\";s:19:\"application/x-bzip2\";s:3:\"svg\";s:13:\"image/svg+xml\";s:3:\"tgz\";s:18:\"application/x-gzip\";s:3:\"txz\";s:16:\"application/x-xz\";s:3:\"txt\";s:10:\"text/plain\";s:2:\"xz\";s:2:\"xz\";s:3:\"zip\";s:15:\"application/zip\";s:4:\"svgz\";s:7:\"svg+xml\";}', 'yes'),
(181, 'wpeft_custom_types', 'a:0:{}', 'yes'),
(183, 'category_children', 'a:0:{}', 'yes'),
(186, 'WPLANG', '', 'yes'),
(187, 'new_admin_email', 'luis.jaramillo@sigma3ds.com', 'yes'),
(194, '_wp_suggested_policy_text_has_changed', 'not-changed', 'yes'),
(199, 'cptui_post_types', 'a:1:{s:8:\"programs\";a:32:{s:4:\"name\";s:8:\"programs\";s:5:\"label\";s:8:\"Programs\";s:14:\"singular_label\";s:7:\"Program\";s:11:\"description\";s:27:\"Programs Abertay University\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:10:\"can_export\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"2\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:28:\"dashicons-welcome-learn-more\";s:8:\"supports\";a:8:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:13:\"custom-fields\";i:5;s:9:\"revisions\";i:6;s:6:\"author\";i:7;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:8:\"Programs\";s:9:\"all_items\";s:12:\"All Programs\";s:7:\"add_new\";s:15:\"Add New Program\";s:12:\"add_new_item\";s:15:\"Add New Program\";s:9:\"edit_item\";s:12:\"Edit Program\";s:8:\"new_item\";s:11:\"New Program\";s:9:\"view_item\";s:12:\"View Program\";s:10:\"view_items\";s:12:\"View Program\";s:12:\"search_items\";s:14:\"Search Program\";s:9:\"not_found\";s:16:\"No program found\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(212, 'cptui_taxonomies', 'a:1:{s:19:\"categories_programs\";a:27:{s:4:\"name\";s:19:\"categories_programs\";s:5:\"label\";s:19:\"Categories Programs\";s:14:\"singular_label\";s:16:\"Category Program\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:4:\"true\";s:4:\"sort\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:8:\"programs\";}}}', 'yes'),
(220, 'categories_programs_children', 'a:0:{}', 'yes'),
(229, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(262, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":0}', 'yes'),
(316, '_site_transient_timeout_browser_09af53e829b1687c5db16483617c3ced', '1651005617', 'no'),
(317, '_site_transient_browser_09af53e829b1687c5db16483617c3ced', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:14:\"100.0.4896.127\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(318, 'options_abertay-logo-white', '47', 'no'),
(319, '_options_abertay-logo-white', 'field_625f1f31602e5', 'no'),
(320, 'options_abertay-logo-color', '48', 'no'),
(321, '_options_abertay-logo-color', 'field_625f1f7b602e6', 'no'),
(346, '_site_transient_timeout_theme_roots', '1650463880', 'no'),
(347, '_site_transient_theme_roots', 'a:1:{s:12:\"branch-theme\";s:7:\"/themes\";}', 'no'),
(362, '_transient_timeout_global_styles_branch-theme', '1650463160', 'no'),
(363, '_transient_global_styles_branch-theme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(7, 3, '_edit_last', '1'),
(8, 3, '_edit_lock', '1650311398:1'),
(12, 3, '_wp_suggested_privacy_policy_content', 'a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:4235:\"<h2>Who we are</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1.</p><h2>Comments</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h2>Media</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h2>Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h2>Embedded content from other websites</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h2>Who we share your data with</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><h2>How long we retain your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\";s:5:\"added\";i:1650303652;}'),
(13, 8, '_edit_lock', '1650311071:1'),
(14, 8, '_edit_last', '1'),
(15, 11, '_edit_lock', '1650311092:1'),
(16, 11, '_edit_last', '1'),
(17, 13, '_edit_lock', '1650311227:1'),
(18, 13, '_edit_last', '1'),
(19, 15, '_edit_lock', '1650311253:1'),
(20, 15, '_edit_last', '1'),
(21, 18, '_edit_lock', '1650311429:1'),
(22, 18, '_edit_last', '1'),
(23, 20, '_edit_lock', '1650311488:1'),
(24, 20, '_edit_last', '1'),
(25, 22, '_edit_lock', '1650311504:1'),
(26, 22, '_edit_last', '1'),
(27, 20, '_wp_page_template', 'default'),
(28, 22, '_wp_page_template', 'default'),
(29, 24, '_menu_item_type', 'post_type'),
(30, 24, '_menu_item_menu_item_parent', '0'),
(31, 24, '_menu_item_object_id', '11'),
(32, 24, '_menu_item_object', 'page'),
(33, 24, '_menu_item_target', ''),
(34, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 24, '_menu_item_xfn', ''),
(36, 24, '_menu_item_url', ''),
(38, 25, '_menu_item_type', 'post_type'),
(39, 25, '_menu_item_menu_item_parent', '0'),
(40, 25, '_menu_item_object_id', '8'),
(41, 25, '_menu_item_object', 'page'),
(42, 25, '_menu_item_target', ''),
(43, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 25, '_menu_item_xfn', ''),
(45, 25, '_menu_item_url', ''),
(47, 26, '_menu_item_type', 'post_type'),
(48, 26, '_menu_item_menu_item_parent', '0'),
(49, 26, '_menu_item_object_id', '15'),
(50, 26, '_menu_item_object', 'page'),
(51, 26, '_menu_item_target', ''),
(52, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 26, '_menu_item_xfn', ''),
(54, 26, '_menu_item_url', ''),
(56, 27, '_menu_item_type', 'post_type'),
(57, 27, '_menu_item_menu_item_parent', '0'),
(58, 27, '_menu_item_object_id', '13'),
(59, 27, '_menu_item_object', 'page'),
(60, 27, '_menu_item_target', ''),
(61, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 27, '_menu_item_xfn', ''),
(63, 27, '_menu_item_url', ''),
(65, 28, '_edit_lock', '1650311688:1'),
(66, 28, '_edit_last', '1'),
(67, 30, '_menu_item_type', 'post_type_archive'),
(68, 30, '_menu_item_menu_item_parent', '0'),
(69, 30, '_menu_item_object_id', '-15'),
(70, 30, '_menu_item_object', 'programs'),
(71, 30, '_menu_item_target', ''),
(72, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 30, '_menu_item_xfn', ''),
(74, 30, '_menu_item_url', ''),
(76, 31, '_menu_item_type', 'taxonomy'),
(77, 31, '_menu_item_menu_item_parent', '30'),
(78, 31, '_menu_item_object_id', '4'),
(79, 31, '_menu_item_object', 'categories_programs'),
(80, 31, '_menu_item_target', ''),
(81, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 31, '_menu_item_xfn', ''),
(83, 31, '_menu_item_url', ''),
(85, 32, '_menu_item_type', 'taxonomy'),
(86, 32, '_menu_item_menu_item_parent', '30'),
(87, 32, '_menu_item_object_id', '3'),
(88, 32, '_menu_item_object', 'categories_programs'),
(89, 32, '_menu_item_target', ''),
(90, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 32, '_menu_item_xfn', ''),
(92, 32, '_menu_item_url', ''),
(94, 33, '_menu_item_type', 'post_type_archive'),
(95, 33, '_menu_item_menu_item_parent', '0'),
(96, 33, '_menu_item_object_id', '-15'),
(97, 33, '_menu_item_object', 'programs'),
(98, 33, '_menu_item_target', ''),
(99, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 33, '_menu_item_xfn', ''),
(101, 33, '_menu_item_url', ''),
(103, 34, '_menu_item_type', 'post_type'),
(104, 34, '_menu_item_menu_item_parent', '0'),
(105, 34, '_menu_item_object_id', '8'),
(106, 34, '_menu_item_object', 'page'),
(107, 34, '_menu_item_target', ''),
(108, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 34, '_menu_item_xfn', ''),
(110, 34, '_menu_item_url', ''),
(112, 35, '_menu_item_type', 'post_type'),
(113, 35, '_menu_item_menu_item_parent', '0'),
(114, 35, '_menu_item_object_id', '15'),
(115, 35, '_menu_item_object', 'page'),
(116, 35, '_menu_item_target', ''),
(117, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 35, '_menu_item_xfn', ''),
(119, 35, '_menu_item_url', ''),
(121, 36, '_menu_item_type', 'post_type'),
(122, 36, '_menu_item_menu_item_parent', '0'),
(123, 36, '_menu_item_object_id', '18'),
(124, 36, '_menu_item_object', 'page'),
(125, 36, '_menu_item_target', ''),
(126, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 36, '_menu_item_xfn', ''),
(128, 36, '_menu_item_url', ''),
(129, 36, '_menu_item_orphaned', '1650311877'),
(130, 37, '_menu_item_type', 'post_type'),
(131, 37, '_menu_item_menu_item_parent', '0'),
(132, 37, '_menu_item_object_id', '13'),
(133, 37, '_menu_item_object', 'page'),
(134, 37, '_menu_item_target', ''),
(135, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 37, '_menu_item_xfn', ''),
(137, 37, '_menu_item_url', ''),
(139, 38, '_menu_item_type', 'post_type'),
(140, 38, '_menu_item_menu_item_parent', '0'),
(141, 38, '_menu_item_object_id', '3'),
(142, 38, '_menu_item_object', 'page'),
(143, 38, '_menu_item_target', ''),
(144, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 38, '_menu_item_xfn', ''),
(146, 38, '_menu_item_url', ''),
(148, 39, '_menu_item_type', 'post_type'),
(149, 39, '_menu_item_menu_item_parent', '0'),
(150, 39, '_menu_item_object_id', '22'),
(151, 39, '_menu_item_object', 'page'),
(152, 39, '_menu_item_target', ''),
(153, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 39, '_menu_item_xfn', ''),
(155, 39, '_menu_item_url', ''),
(157, 40, '_menu_item_type', 'post_type'),
(158, 40, '_menu_item_menu_item_parent', '0'),
(159, 40, '_menu_item_object_id', '20'),
(160, 40, '_menu_item_object', 'page'),
(161, 40, '_menu_item_target', ''),
(162, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 40, '_menu_item_xfn', ''),
(164, 40, '_menu_item_url', ''),
(166, 41, '_menu_item_type', 'post_type'),
(167, 41, '_menu_item_menu_item_parent', '0'),
(168, 41, '_menu_item_object_id', '18'),
(169, 41, '_menu_item_object', 'page'),
(170, 41, '_menu_item_target', ''),
(171, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 41, '_menu_item_xfn', ''),
(173, 41, '_menu_item_url', ''),
(175, 42, '_edit_last', '1'),
(176, 42, '_edit_lock', '1650403917:1'),
(179, 47, '_wp_attached_file', '2022/04/logo_abertay_white.png'),
(180, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:49;s:4:\"file\";s:30:\"2022/04/logo_abertay_white.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo_abertay_white-150x49.png\";s:5:\"width\";i:150;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 47, '_wp_attachment_image_alt', 'Abertay University'),
(182, 48, '_wp_attached_file', '2022/04/logo_abertay_color.png'),
(183, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:51;s:4:\"file\";s:30:\"2022/04/logo_abertay_color.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo_abertay_color-150x51.png\";s:5:\"width\";i:150;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 48, '_wp_attachment_image_alt', 'Abertay University'),
(185, 49, '_menu_item_type', 'post_type'),
(186, 49, '_menu_item_menu_item_parent', '31'),
(187, 49, '_menu_item_object_id', '28'),
(188, 49, '_menu_item_object', 'programs'),
(189, 49, '_menu_item_target', ''),
(190, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 49, '_menu_item_xfn', ''),
(192, 49, '_menu_item_url', ''),
(194, 50, '_menu_item_type', 'custom'),
(195, 50, '_menu_item_menu_item_parent', '32'),
(196, 50, '_menu_item_object_id', '50'),
(197, 50, '_menu_item_object', 'custom'),
(198, 50, '_menu_item_target', ''),
(199, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 50, '_menu_item_xfn', ''),
(201, 50, '_menu_item_url', '#'),
(203, 24, '_wp_old_date', '2022-04-18'),
(204, 30, '_wp_old_date', '2022-04-18'),
(205, 32, '_wp_old_date', '2022-04-18'),
(206, 31, '_wp_old_date', '2022-04-18'),
(207, 27, '_wp_old_date', '2022-04-18'),
(208, 25, '_wp_old_date', '2022-04-18'),
(209, 26, '_wp_old_date', '2022-04-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2022-04-18 16:22:44', '2022-04-18 16:22:44', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2022-04-18 19:49:54', '2022-04-18 19:49:54', '', 0, 'http://127.0.0.1/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-04-18 16:24:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-18 16:24:26', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/?p=4', 0, 'post', '', 0),
(6, 1, '2022-04-18 17:36:22', '2022-04-18 17:36:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-04-18 17:36:22', '2022-04-18 17:36:22', '', 3, 'http://127.0.0.1/?p=6', 0, 'revision', '', 0),
(8, 1, '2022-04-18 19:44:25', '2022-04-18 19:44:25', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2022-04-18 19:44:28', '2022-04-18 19:44:28', '', 0, 'http://127.0.0.1/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-04-18 19:43:54', '2022-04-18 19:43:54', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-branch-theme', '', '', '2022-04-18 19:43:54', '2022-04-18 19:43:54', '', 0, 'http://127.0.0.1/wp-global-styles-branch-theme/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-04-18 19:44:25', '2022-04-18 19:44:25', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-04-18 19:44:25', '2022-04-18 19:44:25', '', 8, 'http://127.0.0.1/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-04-18 19:44:47', '2022-04-18 19:44:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-04-18 19:44:50', '2022-04-18 19:44:50', '', 0, 'http://127.0.0.1/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-04-18 19:44:47', '2022-04-18 19:44:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-18 19:44:47', '2022-04-18 19:44:47', '', 11, 'http://127.0.0.1/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-04-18 19:47:01', '2022-04-18 19:47:01', '', 'Tuition And Fees', '', 'publish', 'closed', 'closed', '', 'tuition-and-fees', '', '', '2022-04-18 19:47:04', '2022-04-18 19:47:04', '', 0, 'http://127.0.0.1/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-04-18 19:47:01', '2022-04-18 19:47:01', '', 'Tuition And Fees', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-04-18 19:47:01', '2022-04-18 19:47:01', '', 13, 'http://127.0.0.1/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-04-18 19:47:29', '2022-04-18 19:47:29', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2022-04-18 19:47:33', '2022-04-18 19:47:33', '', 0, 'http://127.0.0.1/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-04-18 19:47:29', '2022-04-18 19:47:29', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-04-18 19:47:29', '2022-04-18 19:47:29', '', 15, 'http://127.0.0.1/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-04-18 19:49:52', '2022-04-18 19:49:52', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-04-18 19:49:52', '2022-04-18 19:49:52', '', 3, 'http://127.0.0.1/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-04-18 19:50:24', '2022-04-18 19:50:24', '', 'Terms And Coniditions', '', 'publish', 'closed', 'closed', '', 'terms-and-coniditions', '', '', '2022-04-18 19:50:27', '2022-04-18 19:50:27', '', 0, 'http://127.0.0.1/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-04-18 19:50:24', '2022-04-18 19:50:24', '', 'Terms And Coniditions', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-18 19:50:24', '2022-04-18 19:50:24', '', 18, 'http://127.0.0.1/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-04-18 19:50:41', '2022-04-18 19:50:41', '', 'Disclaimer', '', 'publish', 'closed', 'closed', '', 'disclaimer', '', '', '2022-04-18 19:51:27', '2022-04-18 19:51:27', '', 0, 'http://127.0.0.1/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-04-18 19:50:41', '2022-04-18 19:50:41', '', 'Disclaimer', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-04-18 19:50:41', '2022-04-18 19:50:41', '', 20, 'http://127.0.0.1/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-04-18 19:51:03', '2022-04-18 19:51:03', '', 'Cookies', '', 'publish', 'closed', 'closed', '', 'cookies', '', '', '2022-04-18 19:51:44', '2022-04-18 19:51:44', '', 0, 'http://127.0.0.1/?page_id=22', 0, 'page', '', 0),
(23, 1, '2022-04-18 19:51:03', '2022-04-18 19:51:03', '', 'Cookies', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2022-04-18 19:51:03', '2022-04-18 19:51:03', '', 22, 'http://127.0.0.1/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-04-20 13:45:58', '2022-04-18 19:54:00', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2022-04-20 13:45:58', '2022-04-20 13:45:58', '', 0, 'http://127.0.0.1/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2022-04-20 13:46:03', '2022-04-18 19:54:01', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2022-04-20 13:46:03', '2022-04-20 13:46:03', '', 0, 'http://127.0.0.1/?p=25', 8, 'nav_menu_item', '', 0),
(26, 1, '2022-04-20 13:46:03', '2022-04-18 19:54:02', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-04-20 13:46:03', '2022-04-20 13:46:03', '', 0, 'http://127.0.0.1/?p=26', 9, 'nav_menu_item', '', 0),
(27, 1, '2022-04-20 13:46:02', '2022-04-18 19:54:03', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2022-04-20 13:46:02', '2022-04-20 13:46:02', '', 0, 'http://127.0.0.1/?p=27', 7, 'nav_menu_item', '', 0),
(28, 1, '2022-04-18 19:54:42', '2022-04-18 19:54:42', '', 'MBA', '', 'publish', 'closed', 'closed', '', 'mba', '', '', '2022-04-18 19:54:45', '2022-04-18 19:54:45', '', 0, 'http://127.0.0.1/?post_type=programs&#038;p=28', 0, 'programs', '', 0),
(29, 1, '2022-04-18 19:54:42', '2022-04-18 19:54:42', '', 'MBA', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-04-18 19:54:42', '2022-04-18 19:54:42', '', 28, 'http://127.0.0.1/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-04-20 13:45:59', '2022-04-18 19:56:35', 'Programs Abertay University', 'Programmes', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2022-04-20 13:45:59', '2022-04-20 13:45:59', '', 0, 'http://127.0.0.1/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2022-04-20 13:46:01', '2022-04-18 19:56:37', '', 'MBA', '', 'publish', 'closed', 'closed', '', '31', '', '', '2022-04-20 13:46:01', '2022-04-20 13:46:01', '', 0, 'http://127.0.0.1/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2022-04-20 13:45:59', '2022-04-18 19:56:36', '', 'MSC', '', 'publish', 'closed', 'closed', '', '32', '', '', '2022-04-20 13:45:59', '2022-04-20 13:45:59', '', 0, 'http://127.0.0.1/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2022-04-18 19:58:42', '2022-04-18 19:58:42', 'Programs Abertay University', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs-2', '', '', '2022-04-18 19:58:42', '2022-04-18 19:58:42', '', 0, 'http://127.0.0.1/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2022-04-18 19:58:42', '2022-04-18 19:58:42', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2022-04-18 19:58:42', '2022-04-18 19:58:42', '', 0, 'http://127.0.0.1/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2022-04-18 19:58:43', '2022-04-18 19:58:43', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2022-04-18 19:58:43', '2022-04-18 19:58:43', '', 0, 'http://127.0.0.1/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2022-04-18 19:57:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-04-18 19:57:55', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2022-04-18 19:58:42', '2022-04-18 19:58:42', '', 'Fees', '', 'publish', 'closed', 'closed', '', 'fees', '', '', '2022-04-18 19:58:42', '2022-04-18 19:58:42', '', 0, 'http://127.0.0.1/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2022-04-18 20:00:24', '2022-04-18 20:00:24', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2022-04-18 20:00:24', '2022-04-18 20:00:24', '', 0, 'http://127.0.0.1/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2022-04-18 20:00:25', '2022-04-18 20:00:25', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2022-04-18 20:00:25', '2022-04-18 20:00:25', '', 0, 'http://127.0.0.1/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2022-04-18 20:00:25', '2022-04-18 20:00:25', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2022-04-18 20:00:25', '2022-04-18 20:00:25', '', 0, 'http://127.0.0.1/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2022-04-18 20:00:23', '2022-04-18 20:00:23', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2022-04-18 20:00:23', '2022-04-18 20:00:23', '', 0, 'http://127.0.0.1/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2022-04-19 20:46:14', '2022-04-19 20:46:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Abertay - Header settings', 'abertay-header-settings', 'publish', 'closed', 'closed', '', 'group_625f1ebb0c7cd', '', '', '2022-04-19 20:52:26', '2022-04-19 20:52:26', '', 0, 'http://127.0.0.1/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2022-04-19 20:46:14', '2022-04-19 20:46:14', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:20:\"Image : 190px X 50px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:1;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Configuration Site Logo', '', 'publish', 'closed', 'closed', '', 'field_625f1ef2602e4', '', '', '2022-04-19 20:48:21', '2022-04-19 20:48:21', '', 42, 'http://127.0.0.1/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(44, 1, '2022-04-19 20:46:14', '2022-04-19 20:46:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Abertay Logo Ligth Version', 'abertay-logo-white', 'publish', 'closed', 'closed', '', 'field_625f1f31602e5', '', '', '2022-04-19 20:52:26', '2022-04-19 20:52:26', '', 42, 'http://127.0.0.1/?post_type=acf-field&#038;p=44', 1, 'acf-field', '', 0),
(45, 1, '2022-04-19 20:46:15', '2022-04-19 20:46:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Abertay Logo Color Version', 'abertay-logo-color', 'publish', 'closed', 'closed', '', 'field_625f1f7b602e6', '', '', '2022-04-19 20:52:26', '2022-04-19 20:52:26', '', 42, 'http://127.0.0.1/?post_type=acf-field&#038;p=45', 2, 'acf-field', '', 0),
(47, 1, '2022-04-19 20:50:10', '2022-04-19 20:50:10', 'Abertay University Online Master\'s programmes', 'logo_abertay_white', 'Abertay University Online Master\'s programmes', 'inherit', 'open', 'closed', '', 'logo_abertay_white', '', '', '2022-04-19 20:51:38', '2022-04-19 20:51:38', '', 0, 'http://127.0.0.1/wp-content/uploads/2022/04/logo_abertay_white.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2022-04-19 20:51:09', '2022-04-19 20:51:09', 'Abertay University Online Master\'s programmes', 'logo_abertay_color', 'Abertay University Online Master\'s programmes', 'inherit', 'open', 'closed', '', 'logo_abertay_color', '', '', '2022-04-19 20:51:49', '2022-04-19 20:51:49', '', 0, 'http://127.0.0.1/wp-content/uploads/2022/04/logo_abertay_color.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2022-04-20 13:46:02', '2022-04-20 13:46:02', '', 'MBA prg', '', 'publish', 'closed', 'closed', '', 'mba-prg', '', '', '2022-04-20 13:46:02', '2022-04-20 13:46:02', '', 0, 'http://127.0.0.1/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2022-04-20 13:46:01', '2022-04-20 13:46:01', '', 'MSC prg', '', 'publish', 'closed', 'closed', '', 'msc-prg', '', '', '2022-04-20 13:46:01', '2022-04-20 13:46:01', '', 0, 'http://127.0.0.1/?p=50', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'blog', 'blog', 0),
(2, 'Programs Abertay', 'programs-abertay', 0),
(3, 'Programs MSc', 'programs-msc', 0),
(4, 'Programs MBA', 'programs-mba', 0),
(5, 'Programs MPA', 'programs-mpa', 0),
(6, 'Programs MPH', 'programs-mph', 0),
(7, 'Programs MA', 'programs-ma', 0),
(8, 'branch-theme', 'branch-theme', 0),
(9, 'Primary Menu', 'primary-menu', 0),
(10, 'Footer Menu', 'footer-menu', 0),
(11, 'Terms Menu', 'terms-menu', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 8, 0),
(24, 9, 0),
(25, 9, 0),
(26, 9, 0),
(27, 9, 0),
(28, 2, 1),
(28, 4, 2),
(30, 9, 0),
(31, 9, 0),
(32, 9, 0),
(33, 10, 0),
(34, 10, 0),
(35, 10, 0),
(37, 10, 0),
(38, 11, 0),
(39, 11, 0),
(40, 11, 0),
(41, 11, 0),
(49, 9, 0),
(50, 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'categories_programs', 'All Programs Abertay', 0, 1),
(3, 3, 'categories_programs', '', 0, 0),
(4, 4, 'categories_programs', '', 0, 1),
(5, 5, 'categories_programs', '', 0, 0),
(6, 6, 'categories_programs', '', 0, 0),
(7, 7, 'categories_programs', '', 0, 0),
(8, 8, 'wp_theme', '', 0, 1),
(9, 9, 'nav_menu', '', 0, 9),
(10, 10, 'nav_menu', '', 0, 4),
(11, 11, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"77d7f980408db81cab7f52b1da1b77a4eefef511d12daf87e81be4c561f05f2e\";a:4:{s:10:\"expiration\";i:1651508663;s:2:\"ip\";s:10:\"172.22.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36\";s:5:\"login\";i:1650299063;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1650299061'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.22.0.0\";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:17:\"dashboard_primary\";}'),
(23, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:17:\"dashboard_primary\";}'),
(24, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:59:\"dashboard_site_health,dashboard_activity,custom_help_widget\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:19:\"dashboard_right_now\";s:7:\"column4\";s:0:\"\";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(29, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:14:\"sep_metabox_id\";s:15:\"acf_after_title\";s:0:\"\";}'),
(30, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(32, 1, 'nav_menu_recently_edited', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7HxARWhp6yHF8yVgfCScByZ5vQJE20', 'admin', 'luis.jaramillo@sigma3ds.com', 'http://127.0.0.1', '2022-04-18 16:22:40', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
