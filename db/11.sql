-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.13-0ubuntu0.16.04.2 - (Ubuntu)
-- Операционная система:         Linux
-- HeidiSQL Версия:              9.3.0.5107
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица stomat.wp_aiowps_events
CREATE TABLE IF NOT EXISTS `wp_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_events: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_events`;
/*!40000 ALTER TABLE `wp_aiowps_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_events` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_aiowps_failed_logins
CREATE TABLE IF NOT EXISTS `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_failed_logins: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_failed_logins`;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_aiowps_global_meta
CREATE TABLE IF NOT EXISTS `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_global_meta: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_global_meta`;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_aiowps_login_activity
CREATE TABLE IF NOT EXISTS `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_login_activity: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_login_activity`;
/*!40000 ALTER TABLE `wp_aiowps_login_activity` DISABLE KEYS */;
INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
	(1, 1, 'alex', '2016-08-10 19:41:44', '0000-00-00 00:00:00', '127.0.0.1', '', '');
/*!40000 ALTER TABLE `wp_aiowps_login_activity` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_aiowps_login_lockdown
CREATE TABLE IF NOT EXISTS `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_login_lockdown: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_login_lockdown`;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_aiowps_permanent_block
CREATE TABLE IF NOT EXISTS `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_aiowps_permanent_block: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_permanent_block`;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_commentmeta: ~0 rows (приблизительно)
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_comments: ~1 rows (приблизительно)
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Пан WordPress', '', 'https://wordpress.org/', '', '2016-08-03 15:16:18', '2016-08-03 12:16:18', 'Привіт! Це коментар.\nЩоб видалити коментар, увійдіть і подивіться на коментарі до запису. Там будуть посилання для їхньої зміни або видалення.', 0, 'post-trashed', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_links: ~0 rows (приблизительно)
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_options: ~180 rows (приблизительно)
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://stomat', 'yes'),
	(2, 'home', 'http://stomat', 'yes'),
	(3, 'blogname', 'М.Р.С стоматологія', 'yes'),
	(4, 'blogdescription', 'Швидке, ефективне та доступне вирiшення будь-яких проблем з зубами', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'alex110@list.ru', 'yes'),
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
	(19, 'default_comment_status', 'open', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'H:i', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:135:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:10:"gallery/?$";s:27:"index.php?post_type=gallery";s:40:"gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=gallery&feed=$matches[1]";s:35:"gallery/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=gallery&feed=$matches[1]";s:27:"gallery/page/([0-9]{1,})/?$";s:45:"index.php?post_type=gallery&paged=$matches[1]";s:11:"services/?$";s:28:"index.php?post_type=services";s:41:"services/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:36:"services/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:28:"services/page/([0-9]{1,})/?$";s:46:"index.php?post_type=services&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"gallery/([^/]+)/embed/?$";s:40:"index.php?gallery=$matches[1]&embed=true";s:28:"gallery/([^/]+)/trackback/?$";s:34:"index.php?gallery=$matches[1]&tb=1";s:48:"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?gallery=$matches[1]&feed=$matches[2]";s:43:"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?gallery=$matches[1]&feed=$matches[2]";s:36:"gallery/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&paged=$matches[2]";s:43:"gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&cpage=$matches[2]";s:32:"gallery/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?gallery=$matches[1]&page=$matches[2]";s:24:"gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"services/([^/]+)/embed/?$";s:41:"index.php?services=$matches[1]&embed=true";s:29:"services/([^/]+)/trackback/?$";s:35:"index.php?services=$matches[1]&tb=1";s:49:"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:44:"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:37:"services/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&paged=$matches[2]";s:44:"services/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&cpage=$matches[2]";s:33:"services/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?services=$matches[1]&page=$matches[2]";s:25:"services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:8:{i:0;s:27:"abv_gallery/abv_gallery.php";i:2;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:22:"cyr3lat/cyr-to-lat.php";i:5;s:27:"svg-support/svg-support.php";i:6;s:37:"tinymce-advanced/tinymce-advanced.php";i:7;s:24:"wordpress-seo/wp-seo.php";i:8;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', 'a:2:{i:0;s:58:"/home/alex/sites/stomat/wp-content/themes/stomat/style.css";i:1;s:0:"";}', 'no'),
	(40, 'template', 'stomat', 'yes'),
	(41, 'stylesheet', 'stomat', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '37965', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '1', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'page', 'yes'),
	(54, 'tag_base', '', 'yes'),
	(55, 'show_avatars', '1', 'yes'),
	(56, 'avatar_rating', 'G', 'yes'),
	(57, 'upload_url_path', '', 'yes'),
	(58, 'thumbnail_size_w', '150', 'yes'),
	(59, 'thumbnail_size_h', '150', 'yes'),
	(60, 'thumbnail_crop', '1', 'yes'),
	(61, 'medium_size_w', '0', 'yes'),
	(62, 'medium_size_h', '0', 'yes'),
	(63, 'avatar_default', 'mystery', 'yes'),
	(64, 'large_size_w', '0', 'yes'),
	(65, 'large_size_h', '0', 'yes'),
	(66, 'image_default_link_type', '', 'yes'),
	(67, 'image_default_size', '', 'yes'),
	(68, 'image_default_align', '', 'yes'),
	(69, 'close_comments_for_old_posts', '0', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '0', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'uninstall_plugins', 'a:1:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
	(82, 'timezone_string', 'Europe/Kiev', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '5', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'initial_db_version', '36686', 'yes'),
	(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(93, 'WPLANG', 'uk', 'yes'),
	(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
	(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'cron', 'a:6:{i:1471434328;a:1:{s:24:"aiowps_hourly_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1471436178;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471436191;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471437928;a:1:{s:23:"aiowps_daily_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471447633;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(132, '_transient_timeout_plugin_slugs', '1471446342', 'no'),
	(133, '_transient_plugin_slugs', 'a:9:{i:0;s:27:"abv_gallery/abv_gallery.php";i:1;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:22:"cyr3lat/cyr-to-lat.php";i:4;s:29:"abv_storsale/abv_storsale.php";i:5;s:27:"svg-support/svg-support.php";i:6;s:37:"tinymce-advanced/tinymce-advanced.php";i:7;s:27:"wp-super-cache/wp-cache.php";i:8;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
	(152, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470227733;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
	(153, 'current_theme', 'Stomat', 'yes'),
	(154, 'theme_mods_stomat', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
	(155, 'theme_switched', '', 'yes'),
	(158, 'recently_activated', 'a:1:{s:29:"abv_storsale/abv_storsale.php";i:1471012705;}', 'yes'),
	(159, 'wpseo', 'a:14:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"3.4.2";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";}', 'yes'),
	(160, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
	(161, 'wpseo_titles', 'a:56:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:23:"content-analysis-active";b:1;s:23:"keyword-analysis-active";b:1;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
	(162, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"fb7c0cf9a75ccff61f3d59f593223711";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
	(163, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
	(164, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
	(165, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
	(166, 'wpseo_flush_rewrite', '1', 'yes'),
	(167, 'aiowpsec_db_version', '1.8', 'yes'),
	(168, 'aio_wp_security_configs', 'a:76:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:15:"alex110@list.ru";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:32:"aiowps_unlock_request_secret_key";s:20:"2syy9rmjvbz316wmwdmh";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"0dizaj3zquwidk7c1kln";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:15:"alex110@list.ru";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:0:"";s:28:"aiowps_enable_login_honeypot";s:0:"";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:15:"alex110@list.ru";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";}', 'yes'),
	(172, 'ossdl_off_cdn_url', 'http://stomat', 'yes'),
	(173, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
	(174, 'ossdl_off_exclude', '.php', 'yes'),
	(175, 'ossdl_cname', '', 'yes'),
	(177, 'wp_super_cache_index_detected', '3', 'yes'),
	(178, 'wpsupercache_start', '1470228349', 'yes'),
	(179, 'wpsupercache_count', '0', 'yes'),
	(185, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"advlist,menubar";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
	(186, 'tadv_admin_settings', 'a:3:{s:7:"options";s:0:"";s:16:"disabled_plugins";s:0:"";s:16:"disabled_editors";s:0:"";}', 'yes'),
	(187, 'tadv_version', '4000', 'yes'),
	(190, 'wpseo_sitemap_1_cache_validator', '3QzVo', 'no'),
	(191, 'wpseo_sitemap_page_cache_validator', '3QzVN', 'no'),
	(192, 'wpseo_sitemap_revision_cache_validator', '3QzWc', 'no'),
	(200, 'wpseo_sitemap_nav_menu_item_cache_validator', '3kLDA', 'no'),
	(201, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
	(202, 'wpseo_sitemap_nav_menu_cache_validator', '3kLDb', 'no'),
	(203, 'wpseo_sitemap_8_cache_validator', '52Iy3', 'no'),
	(206, 'wpseo_sitemap_cache_validator_global', '35C4y', 'no'),
	(209, 'wpseo_sitemap_7_cache_validator', 'pJVJ', 'no'),
	(213, 'wpseo_sitemap_post_cache_validator', '5lOa6', 'no'),
	(214, 'wpseo_sitemap_category_cache_validator', '4Bt4V', 'no'),
	(215, 'category_children', 'a:0:{}', 'yes'),
	(217, 'wpseo_sitemap_attachment_cache_validator', '5VBRx', 'no'),
	(238, 'wpseo_sitemap_gallery_cache_validator', '4F44z', 'no'),
	(276, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1470302383;s:7:"version";s:5:"4.4.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
	(277, 'wpseo_sitemap_wpcf7_contact_form_cache_validator', '25it6', 'no'),
	(336, 'wpseo_sitemap_test_cache_validator', '4CJr6', 'no'),
	(425, 'abv_gallery_owl_stetting', '', 'yes'),
	(426, 'abv_gallery_slick_stetting', '1', 'yes'),
	(612, '_site_transient_timeout_browser_99df0719b10b04f12be9d1d4b98a21bd', '1471446383', 'yes'),
	(613, '_site_transient_browser_99df0719b10b04f12be9d1d4b98a21bd', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.79";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
	(745, 'wpseo_sitemap_test_image_cache_validator', '3Mxu6', 'no'),
	(753, 'wpseo_sitemap_med-services_cache_validator', '4m7g2', 'no'),
	(755, 'abv_options', 'a:5:{s:5:"short";s:2:"60";s:3:"rnd";s:1:"9";s:10:"rand_count";s:2:"30";s:10:"max_stores";s:1:"6";s:9:"max_sales";s:1:"6";}', 'yes'),
	(756, 'wpseo_sitemap_stores_cache_validator', '3W9d5', 'no'),
	(759, 'wpseo_sitemap_sales_cache_validator', '3WijF', 'no'),
	(793, 'wpseo_sitemap_services_cache_validator', '4PraV', 'no'),
	(846, 'wpseo_sitemap_127_cache_validator', '5QJeZ', 'no'),
	(847, 'wpseo_sitemap_128_cache_validator', 'uzVI', 'no'),
	(848, 'wpseo_sitemap_129_cache_validator', 'uzWx', 'no'),
	(849, 'wpseo_sitemap_130_cache_validator', '5QJht', 'no'),
	(850, 'wpseo_sitemap_131_cache_validator', '5QJii', 'no'),
	(851, 'wpseo_sitemap_132_cache_validator', '5QJj7', 'no'),
	(852, 'wpseo_sitemap_133_cache_validator', '5QJjV', 'no'),
	(853, 'wpseo_sitemap_134_cache_validator', '5QJkL', 'no'),
	(854, 'wpseo_sitemap_135_cache_validator', '5QJlA', 'no'),
	(877, 'abv_options_theme_stomat', 'a:2:{s:5:"phone";s:18:"+(380)67 766 50 41";s:4:"time";s:54:"Пн – Сб 9:00 – 20:00 <br>без перерви";}', 'yes'),
	(1003, '_site_transient_timeout_theme_roots', '1471405948', 'yes'),
	(1004, '_site_transient_theme_roots', 'a:1:{s:6:"stomat";s:7:"/themes";}', 'yes'),
	(1006, 'db_upgraded', '', 'yes'),
	(1009, 'can_compress_scripts', '0', 'no'),
	(1012, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:60:"https://downloads.wordpress.org/release/uk/wordpress-4.6.zip";s:6:"locale";s:2:"uk";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/uk/wordpress-4.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1471404241;s:15:"version_checked";s:3:"4.6";s:12:"translations";a:0:{}}', 'no'),
	(1013, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1471404243;s:7:"checked";a:9:{s:27:"abv_gallery/abv_gallery.php";s:3:"1.1";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:5:"4.1.4";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.5";s:22:"cyr3lat/cyr-to-lat.php";s:3:"3.5";s:29:"abv_storsale/abv_storsale.php";s:3:"1.0";s:27:"svg-support/svg-support.php";s:7:"2.2.3.2";s:37:"tinymce-advanced/tinymce-advanced.php";s:5:"4.4.1";s:27:"wp-super-cache/wp-cache.php";s:5:"1.4.8";s:24:"wordpress-seo/wp-seo.php";s:5:"3.4.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:51:"all-in-one-wp-security-and-firewall/wp-security.php";O:8:"stdClass":6:{s:2:"id";s:5:"41309";s:4:"slug";s:35:"all-in-one-wp-security-and-firewall";s:6:"plugin";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:11:"new_version";s:5:"4.1.4";s:3:"url";s:66:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip";}s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":6:{s:2:"id";s:5:"23472";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";}s:27:"svg-support/svg-support.php";O:8:"stdClass":7:{s:2:"id";s:5:"52275";s:4:"slug";s:11:"svg-support";s:6:"plugin";s:27:"svg-support/svg-support.php";s:11:"new_version";s:7:"2.2.3.2";s:3:"url";s:42:"https://wordpress.org/plugins/svg-support/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/svg-support.2.2.3.2.zip";s:14:"upgrade_notice";s:58:"Changed text domain to match plugin slug for localization.";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.4.1.zip";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip";s:14:"upgrade_notice";s:38:"Removed malware URL in a code comment.";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"3.4.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.3.4.2.zip";}}}', 'no'),
	(1014, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471404243;s:7:"checked";a:1:{s:6:"stomat";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(1022, '_transient_timeout_users_online', '1471435660', 'no'),
	(1023, '_transient_users_online', 'a:1:{i:0;a:3:{s:7:"user_id";i:1;s:13:"last_activity";d:1471444660;s:10:"ip_address";s:9:"127.0.0.1";}}', 'no'),
	(1027, '_transient_stomat_categories', '0', 'yes'),
	(1029, '_transient_timeout_yst_sm_1_1:35C4y_3QzVo', '1471518102', 'no'),
	(1030, '_transient_yst_sm_1_1:35C4y_3QzVo', 'C:24:"WPSEO_Sitemap_Cache_Data":478:{a:2:{s:6:"status";s:2:"ok";s:3:"xml";s:431:"<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<sitemap>\n		<loc>http://stomat/page-sitemap.xml</loc>\n		<lastmod>2016-08-17T13:56:37+03:00</lastmod>\n	</sitemap>\n	<sitemap>\n		<loc>http://stomat/gallery-sitemap.xml</loc>\n		<lastmod>2016-08-10T17:03:47+03:00</lastmod>\n	</sitemap>\n	<sitemap>\n		<loc>http://stomat/services-sitemap.xml</loc>\n		<lastmod>2016-08-14T16:56:29+03:00</lastmod>\n	</sitemap>\n</sitemapindex>";}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_postmeta: ~340 rows (приблизительно)
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 2, '_wp_trash_meta_status', 'publish'),
	(3, 2, '_wp_trash_meta_time', '1470238030'),
	(4, 2, '_wp_desired_post_slug', 'sample-page'),
	(5, 5, '_edit_last', '1'),
	(6, 5, '_yoast_wpseo_content_score', '30'),
	(7, 5, '_edit_lock', '1471186582:1'),
	(26, 9, '_edit_last', '1'),
	(27, 9, '_yoast_wpseo_content_score', '30'),
	(28, 9, '_edit_lock', '1470238084:1'),
	(29, 9, '_wp_trash_meta_status', 'publish'),
	(30, 9, '_wp_trash_meta_time', '1470238229'),
	(31, 9, '_wp_desired_post_slug', 'pro-kliniku'),
	(32, 11, '_menu_item_type', 'custom'),
	(33, 11, '_menu_item_menu_item_parent', '0'),
	(34, 11, '_menu_item_object_id', '11'),
	(35, 11, '_menu_item_object', 'custom'),
	(36, 11, '_menu_item_target', ''),
	(37, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(38, 11, '_menu_item_xfn', ''),
	(39, 11, '_menu_item_url', '#about'),
	(41, 12, '_menu_item_type', 'custom'),
	(42, 12, '_menu_item_menu_item_parent', '0'),
	(43, 12, '_menu_item_object_id', '12'),
	(44, 12, '_menu_item_object', 'custom'),
	(45, 12, '_menu_item_target', ''),
	(46, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(47, 12, '_menu_item_xfn', ''),
	(48, 12, '_menu_item_url', '#medcine'),
	(50, 13, '_menu_item_type', 'custom'),
	(51, 13, '_menu_item_menu_item_parent', '0'),
	(52, 13, '_menu_item_object_id', '13'),
	(53, 13, '_menu_item_object', 'custom'),
	(54, 13, '_menu_item_target', ''),
	(55, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(56, 13, '_menu_item_xfn', ''),
	(57, 13, '_menu_item_url', '#prices'),
	(59, 14, '_menu_item_type', 'custom'),
	(60, 14, '_menu_item_menu_item_parent', '0'),
	(61, 14, '_menu_item_object_id', '14'),
	(62, 14, '_menu_item_object', 'custom'),
	(63, 14, '_menu_item_target', ''),
	(64, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(65, 14, '_menu_item_xfn', ''),
	(66, 14, '_menu_item_url', '#gallery'),
	(68, 15, '_menu_item_type', 'custom'),
	(69, 15, '_menu_item_menu_item_parent', '0'),
	(70, 15, '_menu_item_object_id', '15'),
	(71, 15, '_menu_item_object', 'custom'),
	(72, 15, '_menu_item_target', ''),
	(73, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(74, 15, '_menu_item_xfn', ''),
	(75, 15, '_menu_item_url', '#contacts'),
	(77, 1, '_wp_trash_meta_status', 'publish'),
	(78, 1, '_wp_trash_meta_time', '1470238797'),
	(79, 1, '_wp_desired_post_slug', 'hello-world'),
	(80, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
	(81, 17, '_edit_last', '1'),
	(82, 17, '_edit_lock', '1470295941:1'),
	(85, 17, '_yoast_wpseo_content_score', '60'),
	(86, 17, '_yoast_wpseo_primary_category', ''),
	(91, 22, '_edit_last', '1'),
	(92, 22, '_edit_lock', '1470855202:1'),
	(93, 22, 'abv_gallery_description_meta_value_key', ''),
	(94, 22, 'abv_gallery_images_meta_value_key', '68,68,68'),
	(95, 22, '_yoast_wpseo_content_score', '30'),
	(98, 24, '_edit_last', '1'),
	(99, 24, '_edit_lock', '1470881603:1'),
	(102, 24, 'abv_gallery_description_meta_value_key', ''),
	(103, 24, 'abv_gallery_images_meta_value_key', '69,69,69,69,69'),
	(104, 24, '_yoast_wpseo_content_score', '30'),
	(105, 33, '_form', '<div class="wrap">\n          <label for="your-name">Ім’я та прізвище <span class="star">*</span></label>\n          [text* your-name id:your-name]\n</div>\n<div class="wrap">\n	<label for="tel-813">Контактний телефон <span class="star">*</span></label>\n        [text* tel-813 id:tel-813]\n</div>\n<div class="wrap">\n        [select* menu-312 id:reason "Причина звернення" "Лікуватись" "Просто так"]\n</div>\n<div class="wrap">\n	<label for="your-message">Додаткове питання, інформація</label>\n        [text your-message id:your-message]\n</div>\n<div class="wrap">\n        [submit "Надіслати"]\n</div>'),
	(106, 33, '_mail', 'a:8:{s:7:"subject";s:52:"М. Р. С СТОМАТОЛОГІЯ "[your-subject]"";s:6:"sender";s:0:"";s:4:"body";s:244:"Від: [your-name] <[your-email]>\nТема: [your-subject]\n\nТекст повідомлення:\n[your-message]\n\n--\nЦе повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)";s:9:"recipient";s:15:"alex110@list.ru";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
	(107, 33, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:52:"М. Р. С СТОМАТОЛОГІЯ "[your-subject]"";s:6:"sender";s:54:"М. Р. С СТОМАТОЛОГІЯ <wordpress@stomat>";s:4:"body";s:183:"Текст повідомлення:\n[your-message]\n\n--\nЦе повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: alex110@list.ru";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
	(108, 33, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:62:"Введено невірний контрольний код.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
	(109, 33, '_additional_settings', ''),
	(110, 33, '_locale', 'uk'),
	(115, 35, '_edit_last', '1'),
	(116, 35, '_edit_lock', '1470836835:1'),
	(119, 35, '_yoast_wpseo_content_score', '60'),
	(120, 35, '_yoast_wpseo_primary_category', ''),
	(121, 37, '_edit_last', '1'),
	(122, 37, '_edit_lock', '1470836852:1'),
	(123, 38, '_edit_last', '1'),
	(124, 38, '_edit_lock', '1470323438:1'),
	(125, 38, '_yoast_wpseo_content_score', '30'),
	(126, 38, 'abv_test_images_meta_value_key', '19,19,25'),
	(127, 39, '_edit_last', '1'),
	(128, 39, '_edit_lock', '1470849376:1'),
	(129, 39, '_yoast_wpseo_content_score', '30'),
	(130, 41, '_edit_last', '1'),
	(131, 41, '_edit_lock', '1470856661:1'),
	(132, 41, '_yoast_wpseo_content_score', '60'),
	(133, 48, '_wp_attached_file', '2016/08/fb.svg'),
	(134, 49, '_wp_attached_file', '2016/08/vk.svg'),
	(135, 52, '_edit_last', '1'),
	(136, 52, '_edit_lock', '1471404005:1'),
	(137, 52, '_yoast_wpseo_content_score', '60'),
	(138, 58, '_edit_last', '1'),
	(139, 58, '_edit_lock', '1470856059:1'),
	(140, 58, '_yoast_wpseo_content_score', '60'),
	(141, 60, '_edit_last', '1'),
	(142, 60, '_edit_lock', '1471431398:1'),
	(143, 61, '_wp_attached_file', '2016/08/free-diagnistic.svg'),
	(144, 62, '_wp_attached_file', '2016/08/complex-treatment.svg'),
	(145, 63, '_wp_attached_file', '2016/08/ensurence.svg'),
	(146, 64, '_wp_attached_file', '2016/08/extra-help.svg'),
	(147, 60, '_yoast_wpseo_content_score', '60'),
	(148, 66, '_edit_last', '1'),
	(149, 66, '_edit_lock', '1470856230:1'),
	(150, 66, '_yoast_wpseo_content_score', '60'),
	(151, 68, '_wp_attached_file', '2016/08/slider_girls.jpg'),
	(152, 68, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1887;s:6:"height";i:758;s:4:"file";s:24:"2016/08/slider_girls.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
	(153, 69, '_wp_attached_file', '2016/08/slider_bottom1.png'),
	(154, 69, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:261;s:6:"height";i:160;s:4:"file";s:26:"2016/08/slider_bottom1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(155, 70, '_edit_last', '1'),
	(156, 70, '_edit_lock', '1470879024:1'),
	(157, 70, '_yoast_wpseo_content_score', '60'),
	(158, 72, '_edit_last', '1'),
	(159, 72, '_edit_lock', '1470875276:1'),
	(160, 72, '_yoast_wpseo_content_score', '60'),
	(161, 74, '_wp_attached_file', '2016/08/logo.svg'),
	(162, 5, '_thumbnail_id', '74'),
	(163, 37, '_wp_trash_meta_status', 'draft'),
	(164, 37, '_wp_trash_meta_time', '1470837012'),
	(165, 37, '_wp_desired_post_slug', ''),
	(166, 35, '_wp_trash_meta_status', 'publish'),
	(167, 35, '_wp_trash_meta_time', '1470837012'),
	(168, 35, '_wp_desired_post_slug', 'pro-kliniku'),
	(169, 17, '_wp_trash_meta_status', 'publish'),
	(170, 17, '_wp_trash_meta_time', '1470837012'),
	(171, 17, '_wp_desired_post_slug', 'nashi-perevagy'),
	(172, 80, '_wp_attached_file', '2016/08/pointer.svg'),
	(173, 83, '_menu_item_type', 'custom'),
	(174, 83, '_menu_item_menu_item_parent', '0'),
	(175, 83, '_menu_item_object_id', '83'),
	(176, 83, '_menu_item_object', 'custom'),
	(177, 83, '_menu_item_target', ''),
	(178, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(179, 83, '_menu_item_xfn', ''),
	(180, 83, '_menu_item_url', '#about'),
	(182, 84, '_menu_item_type', 'custom'),
	(183, 84, '_menu_item_menu_item_parent', '0'),
	(184, 84, '_menu_item_object_id', '84'),
	(185, 84, '_menu_item_object', 'custom'),
	(186, 84, '_menu_item_target', ''),
	(187, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(188, 84, '_menu_item_xfn', ''),
	(189, 84, '_menu_item_url', '#medcine'),
	(191, 85, '_menu_item_type', 'custom'),
	(192, 85, '_menu_item_menu_item_parent', '0'),
	(193, 85, '_menu_item_object_id', '85'),
	(194, 85, '_menu_item_object', 'custom'),
	(195, 85, '_menu_item_target', ''),
	(196, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(197, 85, '_menu_item_xfn', ''),
	(198, 85, '_menu_item_url', '#prices'),
	(200, 86, '_menu_item_type', 'custom'),
	(201, 86, '_menu_item_menu_item_parent', '0'),
	(202, 86, '_menu_item_object_id', '86'),
	(203, 86, '_menu_item_object', 'custom'),
	(204, 86, '_menu_item_target', ''),
	(205, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(206, 86, '_menu_item_xfn', ''),
	(207, 86, '_menu_item_url', '#contacts'),
	(215, 33, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:78:"http://contactform7.com/configuration-errors/#mail.sender:error_invalid_syntax";}}}}'),
	(216, 102, '_edit_last', '1'),
	(217, 102, '_edit_lock', '1471012613:1'),
	(218, 102, '_yoast_wpseo_content_score', '30'),
	(219, 106, '_edit_last', '1'),
	(220, 106, '_yoast_wpseo_content_score', '30'),
	(221, 106, '_edit_lock', '1471009414:1'),
	(222, 110, '_edit_last', '1'),
	(223, 110, '_edit_lock', '1470999294:1'),
	(224, 110, 'abv_test_image_images_meta_value_key', '68,48'),
	(225, 110, '_yoast_wpseo_content_score', '30'),
	(226, 112, '_edit_last', '1'),
	(227, 112, '_edit_lock', '1471000533:1'),
	(228, 112, 'store_selected_meta_value_key', ''),
	(229, 112, 'store_like_value_key', ''),
	(230, 112, 'sales_close_meta_value_key', ''),
	(231, 112, 'sales_selected_meta_value_key', ''),
	(232, 112, 'sales_like_value_key', ''),
	(233, 112, 'sales_store_value_key', ''),
	(234, 112, 'sales_date_start_meta_value_key', ''),
	(235, 112, 'sales_date_end_meta_value_key', ''),
	(236, 112, '_yoast_wpseo_primary_stores_cat', ''),
	(237, 112, '_yoast_wpseo_content_score', '30'),
	(238, 113, '_edit_last', '1'),
	(239, 113, 'store_selected_meta_value_key', ''),
	(240, 113, 'store_like_value_key', ''),
	(241, 113, 'sales_close_meta_value_key', ''),
	(242, 113, 'sales_selected_meta_value_key', ''),
	(243, 113, 'sales_like_value_key', ''),
	(244, 113, 'sales_store_value_key', ''),
	(245, 113, 'sales_date_start_meta_value_key', '12.08.2016'),
	(246, 113, 'sales_date_end_meta_value_key', ''),
	(247, 113, '_yoast_wpseo_primary_sales_cat', ''),
	(248, 113, '_yoast_wpseo_content_score', '30'),
	(249, 113, '_edit_lock', '1471012067:1'),
	(250, 114, '_edit_last', '1'),
	(251, 114, '_edit_lock', '1471006276:1'),
	(252, 114, '_yoast_wpseo_content_score', '30'),
	(253, 115, '_wp_attached_file', '2016/08/profilactic.svg'),
	(254, 114, '_thumbnail_id', '115'),
	(255, 114, 'abv_short_meta_value_key', 'Прості правила попередження захворювання зубів.'),
	(256, 116, '_edit_last', '1'),
	(257, 116, '_edit_lock', '1471005746:1'),
	(258, 117, '_wp_attached_file', '2016/08/teraphy.svg'),
	(259, 116, '_thumbnail_id', '117'),
	(260, 116, 'abv_short_meta_value_key', 'Лікування карієсу. Пломба з німецьких матеріалів.'),
	(261, 116, '_yoast_wpseo_content_score', '30'),
	(262, 118, '_edit_last', '1'),
	(263, 118, '_edit_lock', '1471005851:1'),
	(264, 119, '_wp_attached_file', '2016/08/endodontia.svg'),
	(265, 118, '_thumbnail_id', '119'),
	(266, 118, 'abv_short_meta_value_key', 'Лікування кореневих каналів без болю.'),
	(267, 118, '_yoast_wpseo_content_score', '30'),
	(268, 120, '_edit_last', '1'),
	(269, 120, '_edit_lock', '1471005949:1'),
	(270, 121, '_wp_attached_file', '2016/08/ortodontia.svg'),
	(271, 120, '_thumbnail_id', '121'),
	(272, 120, 'abv_short_meta_value_key', 'Протезування зубів будь-якої складності'),
	(273, 120, '_yoast_wpseo_content_score', '30'),
	(274, 122, '_edit_last', '1'),
	(275, 122, '_edit_lock', '1471006012:1'),
	(276, 122, '_thumbnail_id', '121'),
	(277, 122, 'abv_short_meta_value_key', 'Високоякісні брекети з гарантією результату.'),
	(278, 122, '_yoast_wpseo_content_score', '30'),
	(279, 123, '_edit_last', '1'),
	(280, 123, '_edit_lock', '1471182865:1'),
	(281, 123, '_thumbnail_id', '121'),
	(282, 123, 'abv_short_meta_value_key', 'Лікування молочних зубів. Подарунки пацієнтикам'),
	(283, 123, '_yoast_wpseo_content_score', '30'),
	(284, 124, '_edit_last', '1'),
	(285, 124, '_edit_lock', '1471012994:1'),
	(286, 124, '_thumbnail_id', '121'),
	(287, 124, 'abv_short_meta_value_key', 'Лікування та попередження захворювань ясен.'),
	(288, 124, '_yoast_wpseo_content_score', '30'),
	(289, 125, '_edit_last', '1'),
	(290, 125, '_edit_lock', '1471006149:1'),
	(291, 125, '_thumbnail_id', '121'),
	(292, 125, 'abv_short_meta_value_key', 'Видалення зубів швидко та безболісно.'),
	(293, 125, '_yoast_wpseo_content_score', '30'),
	(294, 126, '_edit_last', '1'),
	(295, 126, '_edit_lock', '1471012557:1'),
	(296, 126, '_thumbnail_id', '121'),
	(297, 126, 'abv_short_meta_value_key', 'Відновлення втраченого зуба. Усі види зубних імплантів'),
	(298, 126, '_yoast_wpseo_content_score', '30'),
	(394, 138, '_wp_attached_file', '2016/08/cross.svg'),
	(395, 139, '_wp_attached_file', '2016/08/range.png'),
	(396, 139, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:44;s:6:"height";i:44;s:4:"file";s:17:"2016/08/range.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(401, 142, '_menu_item_type', 'post_type'),
	(402, 142, '_menu_item_menu_item_parent', '0'),
	(403, 142, '_menu_item_object_id', '126'),
	(404, 142, '_menu_item_object', 'services'),
	(405, 142, '_menu_item_target', ''),
	(406, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(407, 142, '_menu_item_xfn', ''),
	(408, 142, '_menu_item_url', ''),
	(410, 143, '_menu_item_type', 'post_type'),
	(411, 143, '_menu_item_menu_item_parent', '0'),
	(412, 143, '_menu_item_object_id', '125'),
	(413, 143, '_menu_item_object', 'services'),
	(414, 143, '_menu_item_target', ''),
	(415, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(416, 143, '_menu_item_xfn', ''),
	(417, 143, '_menu_item_url', ''),
	(419, 144, '_menu_item_type', 'post_type'),
	(420, 144, '_menu_item_menu_item_parent', '0'),
	(421, 144, '_menu_item_object_id', '124'),
	(422, 144, '_menu_item_object', 'services'),
	(423, 144, '_menu_item_target', ''),
	(424, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(425, 144, '_menu_item_xfn', ''),
	(426, 144, '_menu_item_url', ''),
	(428, 145, '_menu_item_type', 'post_type'),
	(429, 145, '_menu_item_menu_item_parent', '0'),
	(430, 145, '_menu_item_object_id', '123'),
	(431, 145, '_menu_item_object', 'services'),
	(432, 145, '_menu_item_target', ''),
	(433, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(434, 145, '_menu_item_xfn', ''),
	(435, 145, '_menu_item_url', ''),
	(437, 146, '_menu_item_type', 'post_type'),
	(438, 146, '_menu_item_menu_item_parent', '0'),
	(439, 146, '_menu_item_object_id', '122'),
	(440, 146, '_menu_item_object', 'services'),
	(441, 146, '_menu_item_target', ''),
	(442, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(443, 146, '_menu_item_xfn', ''),
	(444, 146, '_menu_item_url', ''),
	(446, 147, '_menu_item_type', 'post_type'),
	(447, 147, '_menu_item_menu_item_parent', '0'),
	(448, 147, '_menu_item_object_id', '120'),
	(449, 147, '_menu_item_object', 'services'),
	(450, 147, '_menu_item_target', ''),
	(451, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(452, 147, '_menu_item_xfn', ''),
	(453, 147, '_menu_item_url', ''),
	(455, 148, '_menu_item_type', 'post_type'),
	(456, 148, '_menu_item_menu_item_parent', '0'),
	(457, 148, '_menu_item_object_id', '118'),
	(458, 148, '_menu_item_object', 'services'),
	(459, 148, '_menu_item_target', ''),
	(460, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(461, 148, '_menu_item_xfn', ''),
	(462, 148, '_menu_item_url', ''),
	(464, 149, '_menu_item_type', 'post_type'),
	(465, 149, '_menu_item_menu_item_parent', '0'),
	(466, 149, '_menu_item_object_id', '116'),
	(467, 149, '_menu_item_object', 'services'),
	(468, 149, '_menu_item_target', ''),
	(469, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(470, 149, '_menu_item_xfn', ''),
	(471, 149, '_menu_item_url', ''),
	(473, 150, '_menu_item_type', 'post_type'),
	(474, 150, '_menu_item_menu_item_parent', '0'),
	(475, 150, '_menu_item_object_id', '114'),
	(476, 150, '_menu_item_object', 'services'),
	(477, 150, '_menu_item_target', ''),
	(478, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(479, 150, '_menu_item_xfn', ''),
	(480, 150, '_menu_item_url', ''),
	(482, 151, '_wp_attached_file', '2016/08/arrow.png'),
	(483, 151, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:19;s:6:"height";i:31;s:4:"file";s:17:"2016/08/arrow.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(484, 5, 'abv_stomat_post_type_checkboxes', 'a:9:{i:126;s:1:"1";i:123;s:1:"1";i:125;s:1:"1";i:114;s:1:"0";i:116;s:1:"1";i:118;s:1:"1";i:120;s:1:"0";i:124;s:1:"1";i:122;s:1:"0";}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_posts: ~134 rows (приблизительно)
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2016-08-03 15:16:18', '2016-08-03 12:16:18', 'Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, тоді почніть писати!', 'Привіт світ!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2016-08-03 18:39:57', '2016-08-03 15:39:57', '', 0, 'http://stomat/?p=1', 0, 'post', '', 1),
	(2, 1, '2016-08-03 15:16:18', '2016-08-03 12:16:18', 'Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:\n\n<blockquote>Привіт! Вдень я кур\'єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>\n\n...або цього:\n\n<blockquote>Компанія "Штучки АБВ" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>\n\nЯк новому користувачу WordPress, вам слід перейти до <a href="http://stomat/wp-admin/">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-08-03 18:27:10', '2016-08-03 15:27:10', '', 0, 'http://stomat/?page_id=2', 0, 'page', '', 0),
	(4, 1, '2016-08-03 18:27:10', '2016-08-03 15:27:10', 'Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:\n\n<blockquote>Привіт! Вдень я кур\'єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>\n\n...або цього:\n\n<blockquote>Компанія "Штучки АБВ" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>\n\nЯк новому користувачу WordPress, вам слід перейти до <a href="http://stomat/wp-admin/">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-08-03 18:27:10', '2016-08-03 15:27:10', '', 2, 'http://stomat/2-revision-v1/', 0, 'revision', '', 0),
	(5, 1, '2016-08-03 18:27:28', '2016-08-03 15:27:28', '', 'Головна', '', 'publish', 'closed', 'closed', '', 'golovna', '', '', '2016-08-14 17:46:07', '2016-08-14 14:46:07', '', 0, 'http://stomat/?page_id=5', 0, 'page', '', 0),
	(6, 1, '2016-08-03 18:27:28', '2016-08-03 15:27:28', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-03 18:27:28', '2016-08-03 15:27:28', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(9, 1, '2016-08-03 18:29:48', '2016-08-03 15:29:48', '', 'Про клініку', '', 'trash', 'closed', 'closed', '', 'pro-kliniku__trashed', '', '', '2016-08-03 18:30:29', '2016-08-03 15:30:29', '', 0, 'http://stomat/?page_id=9', 0, 'page', '', 0),
	(10, 1, '2016-08-03 18:29:48', '2016-08-03 15:29:48', '', 'Про клініку', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-08-03 18:29:48', '2016-08-03 15:29:48', '', 9, 'http://stomat/9-revision-v1/', 0, 'revision', '', 0),
	(11, 1, '2016-08-03 18:35:45', '2016-08-03 15:35:45', '', 'Про клініку', '', 'publish', 'closed', 'closed', '', 'pro-kliniku', '', '', '2016-08-03 18:35:45', '2016-08-03 15:35:45', '', 0, 'http://stomat/?p=11', 1, 'nav_menu_item', '', 0),
	(12, 1, '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 'Лікування', '', 'publish', 'closed', 'closed', '', 'likuvannya', '', '', '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 0, 'http://stomat/?p=12', 2, 'nav_menu_item', '', 0),
	(13, 1, '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 'Прейскурант', '', 'publish', 'closed', 'closed', '', 'prejskurant', '', '', '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 0, 'http://stomat/?p=13', 3, 'nav_menu_item', '', 0),
	(14, 1, '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 'Фотогалерея', '', 'publish', 'closed', 'closed', '', 'fotogalereya', '', '', '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 0, 'http://stomat/?p=14', 4, 'nav_menu_item', '', 0),
	(15, 1, '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 'Контакти', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2016-08-03 18:35:46', '2016-08-03 15:35:46', '', 0, 'http://stomat/?p=15', 5, 'nav_menu_item', '', 0),
	(16, 1, '2016-08-03 18:39:57', '2016-08-03 15:39:57', 'Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, тоді почніть писати!', 'Привіт світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-08-03 18:39:57', '2016-08-03 15:39:57', '', 1, 'http://stomat/1-revision-v1/', 0, 'revision', '', 0),
	(17, 1, '2016-08-03 18:42:49', '2016-08-03 15:42:49', '<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка', 'Наші переваги', '', 'trash', 'open', 'open', '', 'nashi-perevagy__trashed', '', '', '2016-08-10 16:50:12', '2016-08-10 13:50:12', '', 0, 'http://stomat/?p=17', 0, 'post', '', 0),
	(18, 1, '2016-08-03 18:42:49', '2016-08-03 15:42:49', '', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-08-03 18:42:49', '2016-08-03 15:42:49', '', 17, 'http://stomat/17-revision-v1/', 0, 'revision', '', 0),
	(20, 1, '2016-08-03 18:44:22', '2016-08-03 15:44:22', '<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\n\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2016-08-03 18:44:22', '2016-08-03 15:44:22', '', 17, 'http://stomat/17-autosave-v1/', 0, 'revision', '', 0),
	(21, 1, '2016-08-03 18:44:27', '2016-08-03 15:44:27', '<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка\r\n\r\n<img class="alignnone size-full wp-image-19" src="http://stomat/wp-content/uploads/2016/08/perevaga1.png" alt="perevaga1" width="136" height="135" /> Безкоштовна діагностіка', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-08-03 18:44:27', '2016-08-03 15:44:27', '', 17, 'http://stomat/17-revision-v1/', 0, 'revision', '', 0),
	(22, 1, '2016-08-04 03:34:48', '2016-08-04 00:34:48', '', 'Слайдер зверху', '', 'publish', 'closed', 'closed', '', 'verhnya-galereya', '', '', '2016-08-10 17:03:19', '2016-08-10 14:03:19', '', 0, 'http://stomat/?post_type=gallery&#038;p=22', 0, 'gallery', '', 0),
	(24, 1, '2016-08-04 03:52:19', '2016-08-04 00:52:19', '', 'Слайдер знизу', '', 'publish', 'closed', 'closed', '', 'galereya-znyzu', '', '', '2016-08-10 17:03:47', '2016-08-10 14:03:47', '', 0, 'http://stomat/?post_type=gallery&#038;p=24', 0, 'gallery', '', 0),
	(26, 1, '2016-08-04 03:54:27', '2016-08-04 00:54:27', '[abv_gallery id="22"]\r\n\r\n[abv_gallery id="24"]', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 03:54:27', '2016-08-04 00:54:27', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(27, 1, '2016-08-10 16:47:02', '2016-08-10 13:47:02', '<div class="top_slider"></div>\n[contact-form-7 id="33"]', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2016-08-10 16:47:02', '2016-08-10 13:47:02', '', 5, 'http://stomat/5-autosave-v1/', 0, 'revision', '', 0),
	(28, 1, '2016-08-04 04:00:19', '2016-08-04 01:00:19', '&lt;div id="top_slider"&gt;\r\n\r\n[abv_gallery id="22"]\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div id="top_slider"&gt;\r\n\r\n[abv_gallery id="24"]\r\n\r\n&lt;/div&gt;', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 04:00:19', '2016-08-04 01:00:19', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(29, 1, '2016-08-04 04:02:01', '2016-08-04 01:02:01', '<div id="top_slider">\r\n\r\n[abv_gallery id="22"]\r\n\r\n</div>\r\n\r\n<div id="top_slider">\r\n\r\n[abv_gallery id="24"]\r\n\r\n</div>', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 04:02:01', '2016-08-04 01:02:01', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(30, 1, '2016-08-04 04:03:27', '2016-08-04 01:03:27', '<div id="top_slider">[abv_gallery id="22"]</div>\r\n\r\n\r\n\r\n<div id="top_slider">\r\n\r\n[abv_gallery id="24"]\r\n\r\n</div>', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 04:03:27', '2016-08-04 01:03:27', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(31, 1, '2016-08-04 04:27:59', '2016-08-04 01:27:59', '<div id="top_slider">[abv_gallery id="22"]</div>\r\n<div id="bottom_slider">[abv_gallery id="24"]</div>', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 04:27:59', '2016-08-04 01:27:59', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(32, 1, '2016-08-04 04:47:11', '2016-08-04 01:47:11', '<div class="top_slider">[abv_gallery id="22"]</div>\r\n<div class="bottom_slider">[abv_gallery id="24"]</div>', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 04:47:11', '2016-08-04 01:47:11', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(33, 1, '2016-08-04 09:19:43', '2016-08-04 06:19:43', '<div class="wrap">\r\n          <label for="your-name">Ім’я та прізвище <span class="star">*</span></label>\r\n          [text* your-name id:your-name]\r\n</div>\r\n<div class="wrap">\r\n	<label for="tel-813">Контактний телефон <span class="star">*</span></label>\r\n        [text* tel-813 id:tel-813]\r\n</div>\r\n<div class="wrap">\r\n        [select* menu-312 id:reason "Причина звернення" "Лікуватись" "Просто так"]\r\n</div>\r\n<div class="wrap">\r\n	<label for="your-message">Додаткове питання, інформація</label>\r\n        [text your-message id:your-message]\r\n</div>\r\n<div class="wrap">\r\n        [submit "Надіслати"]\r\n</div>\nМ. Р. С СТОМАТОЛОГІЯ "[your-subject]"\n\nВід: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nТекст повідомлення:\r\n[your-message]\r\n\r\n--\r\nЦе повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)\nalex110@list.ru\n\n\n\n\n\nМ. Р. С СТОМАТОЛОГІЯ "[your-subject]"\nМ. Р. С СТОМАТОЛОГІЯ <wordpress@stomat>\nТекст повідомлення:\r\n[your-message]\r\n\r\n--\r\nЦе повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)\n[your-email]\nReply-To: alex110@list.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nВведено невірний контрольний код.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Записатись на безкоштовну діагностику', '', 'publish', 'closed', 'closed', '', 'kontaktna-forma-1', '', '', '2016-08-11 07:06:58', '2016-08-11 04:06:58', '', 0, 'http://stomat/?post_type=wpcf7_contact_form&#038;p=33', 0, 'wpcf7_contact_form', '', 0),
	(34, 1, '2016-08-04 09:30:43', '2016-08-04 06:30:43', '<div class="top_slider">[abv_gallery id="22"]</div>\r\n<div class="bottom_slider">[abv_gallery id="24"]</div>\r\n[contact-form-7 id="33"]', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-04 09:30:43', '2016-08-04 06:30:43', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(35, 1, '2016-08-04 10:40:13', '2016-08-04 07:40:13', 'М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом.', 'Про клініку', '', 'trash', 'open', 'open', '', 'pro-kliniku__trashed', '', '', '2016-08-10 16:50:12', '2016-08-10 13:50:12', '', 0, 'http://stomat/?p=35', 0, 'post', '', 0),
	(36, 1, '2016-08-04 10:40:13', '2016-08-04 07:40:13', 'М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом.', 'Про клініку', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-08-04 10:40:13', '2016-08-04 07:40:13', '', 35, 'http://stomat/35-revision-v1/', 0, 'revision', '', 0),
	(37, 1, '2016-08-04 10:43:41', '2016-08-04 07:43:41', '', 'Лікування', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2016-08-10 16:50:12', '2016-08-10 13:50:12', '', 0, 'http://stomat/?p=37', 0, 'post', '', 0),
	(38, 1, '2016-08-04 16:25:27', '2016-08-04 13:25:27', '', 'Еуіен', '', 'publish', 'closed', 'closed', '', 'euien', '', '', '2016-08-04 16:55:00', '2016-08-04 13:55:00', '', 0, 'http://stomat/?post_type=test&#038;p=38', 0, 'test', '', 0),
	(39, 1, '2016-08-10 14:12:05', '2016-08-10 11:12:05', 'google.maps.event.addDomListener(window, \'load\', init);\r\nvar map;\r\nfunction init() {\r\n	var mapOptions = {\r\n		center: new google.maps.LatLng(49.843961, 24.021967),\r\n		zoom: 16,\r\n		zoomControl: false,\r\n		disableDoubleClickZoom: true,\r\n		mapTypeControl: false,\r\n		scaleControl: false,\r\n		scrollwheel: true,\r\n		panControl: true,\r\n		streetViewControl: false,\r\n		draggable: true,\r\n		overviewMapControl: true,\r\n		overviewMapControlOptions: {\r\n			opened: false,\r\n		},\r\n		mapTypeId: google.maps.MapTypeId.ROADMAP,\r\n		styles: [{\r\n			"featureType": "landscape",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "transit",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "poi",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "water",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.icon",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.text.fill",\r\n			"stylers": [{"visibility": "on"}, {"lightness": 24}]\r\n		}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\r\n	}\r\n	var mapElement = document.getElementById(\'map\');\r\n	var map = new google.maps.Map(mapElement, mapOptions);\r\n	var locations = [\r\n		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\r\n			\'/wp-content/uploads/2016/08/pointer.svg\']\r\n	];\r\n	for (i = 0; i < locations.length; i++) {\r\n		if (locations[i][1] == \'undefined\') {\r\n			description = \'\';\r\n		} else {\r\n			description = locations[i][1];\r\n		}\r\n		if (locations[i][2] == \'undefined\') {\r\n			telephone = \'\';\r\n		} else {\r\n			telephone = locations[i][2];\r\n		}\r\n		if (locations[i][3] == \'undefined\') {\r\n			email = \'\';\r\n		} else {\r\n			email = locations[i][3];\r\n		}\r\n		if (locations[i][4] == \'undefined\') {\r\n			web = \'\';\r\n		} else {\r\n			web = locations[i][4];\r\n		}\r\n		if (locations[i][7] == \'undefined\') {\r\n			markericon = \'\';\r\n		} else {\r\n			markericon = locations[i][7];\r\n		}\r\n		marker = new google.maps.Marker({\r\n			icon: markericon,\r\n			position: new google.maps.LatLng(locations[i][5], locations[i][6]),\r\n			map: map,\r\n			title: locations[i][0],\r\n			desc: description,\r\n			tel: telephone,\r\n			email: email,\r\n			web: web\r\n		});\r\n		link = \'\';\r\n	}\r\n\r\n}', 'Мапа', '', 'publish', 'closed', 'closed', '', 'mapa', '', '', '2016-08-10 16:58:18', '2016-08-10 13:58:18', '', 0, 'http://stomat/?page_id=39', 0, 'page', '', 0),
	(40, 1, '2016-08-10 14:12:05', '2016-08-10 11:12:05', '<script>\r\n	google.maps.event.addDomListener(window, \'load\', init);\r\n	var map;\r\n	function init() {\r\n		var mapOptions = {\r\n			center: new google.maps.LatLng(49.843961, 24.021967),\r\n			zoom: 16,\r\n			zoomControl: false,\r\n			disableDoubleClickZoom: true,\r\n			mapTypeControl: false,\r\n			scaleControl: false,\r\n			scrollwheel: true,\r\n			panControl: true,\r\n			streetViewControl: false,\r\n			draggable: true,\r\n			overviewMapControl: true,\r\n			overviewMapControlOptions: {\r\n				opened: false,\r\n			},\r\n			mapTypeId: google.maps.MapTypeId.ROADMAP,\r\n			styles: [{\r\n				"featureType": "landscape",\r\n				"elementType": "labels",\r\n				"stylers": [{"visibility": "off"}]\r\n			}, {\r\n				"featureType": "transit",\r\n				"elementType": "labels",\r\n				"stylers": [{"visibility": "off"}]\r\n			}, {\r\n				"featureType": "poi",\r\n				"elementType": "labels",\r\n				"stylers": [{"visibility": "off"}]\r\n			}, {\r\n				"featureType": "water",\r\n				"elementType": "labels",\r\n				"stylers": [{"visibility": "off"}]\r\n			}, {\r\n				"featureType": "road",\r\n				"elementType": "labels.icon",\r\n				"stylers": [{"visibility": "off"}]\r\n			}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\r\n				"featureType": "road",\r\n				"elementType": "labels.text.fill",\r\n				"stylers": [{"visibility": "on"}, {"lightness": 24}]\r\n			}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\r\n		}\r\n		var mapElement = document.getElementById(\'map\');\r\n		var map = new google.maps.Map(mapElement, mapOptions);\r\n		var locations = [\r\n			[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\r\n				\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']\r\n		];\r\n		for (i = 0; i < locations.length; i++) {\r\n			if (locations[i][1] == \'undefined\') {\r\n				description = \'\';\r\n			} else {\r\n				description = locations[i][1];\r\n			}\r\n			if (locations[i][2] == \'undefined\') {\r\n				telephone = \'\';\r\n			} else {\r\n				telephone = locations[i][2];\r\n			}\r\n			if (locations[i][3] == \'undefined\') {\r\n				email = \'\';\r\n			} else {\r\n				email = locations[i][3];\r\n			}\r\n			if (locations[i][4] == \'undefined\') {\r\n				web = \'\';\r\n			} else {\r\n				web = locations[i][4];\r\n			}\r\n			if (locations[i][7] == \'undefined\') {\r\n				markericon = \'\';\r\n			} else {\r\n				markericon = locations[i][7];\r\n			}\r\n			marker = new google.maps.Marker({\r\n				icon: markericon,\r\n				position: new google.maps.LatLng(locations[i][5], locations[i][6]),\r\n				map: map,\r\n				title: locations[i][0],\r\n				desc: description,\r\n				tel: telephone,\r\n				email: email,\r\n				web: web\r\n			});\r\n			link = \'\';\r\n		}\r\n\r\n	}\r\n</script>', 'Мапа', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-08-10 14:12:05', '2016-08-10 11:12:05', '', 39, 'http://stomat/39-revision-v1/', 0, 'revision', '', 0),
	(41, 1, '2016-08-10 14:17:43', '2016-08-10 11:17:43', '79017 м.Львів\r\nвул. Зелена 46/2\r\n\r\n032 275 43 92\r\n067 766 50 41\r\n\r\nПн – Сб 9:00 – 20:00\r\nбез перерви\r\n\r\nМаршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160\r\nТролейбус:11, 24\r\n\r\nЄ парковочні місця\r\n\r\n<a href="#"><img src="/wp-content/uploads/2016/08/fb.svg" alt="" /></a> <a href="#"><img src="/wp-content/uploads/2016/08/vk.svg" alt="" /></a>', 'Контакти', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2016-08-10 22:13:17', '2016-08-10 19:13:17', '', 0, 'http://stomat/?page_id=41', 0, 'page', '', 0),
	(42, 1, '2016-08-10 14:17:43', '2016-08-10 11:17:43', '								<p>\r\n									79017 м.Львів <br>\r\n									вул. Зелена 46/2\r\n								</p>\r\n\r\n								<p>\r\n									032 275 43 92 <br>\r\n									067 766 50 41\r\n								</p>\r\n\r\n								<p>\r\n									Пн – Сб 9:00 – 20:00 <br>\r\n									без перерви\r\n								</p>\r\n\r\n								<p>\r\n									Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br>\r\n									Тролейбус:11, 24\r\n								</p>\r\n\r\n								<p>\r\n									Є парковочні місця\r\n								</p>\r\n\r\n								<p>\r\n									<a href="#"><img src="<?php echo bloginfo(\'template_directory\') ?>/images/fb.svg" alt=""></a>\r\n									<a href="#"><img src="<?php echo bloginfo(\'template_directory\') ?>/images/vk.svg" alt=""></a>\r\n								</p>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:17:43', '2016-08-10 11:17:43', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(43, 1, '2016-08-10 14:18:56', '2016-08-10 11:18:56', '<pre>&lt;p&gt;\r\n   79017 м.Львів &lt;br&gt;\r\n   вул. Зелена 46/2\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n   032 275 43 92 &lt;br&gt;\r\n   067 766 50 41\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n   Пн – Сб 9:00 – 20:00 &lt;br&gt;\r\n   без перерви\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n   Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  &lt;br&gt;\r\n   Тролейбус:11, 24\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n   Є парковочні місця\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n   &lt;a href="#"&gt;&lt;img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg" alt=""&gt;&lt;/a&gt;\r\n   &lt;a href="#"&gt;&lt;img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg" alt=""&gt;&lt;/a&gt;\r\n&lt;/p&gt;</pre>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:18:56', '2016-08-10 11:18:56', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(44, 1, '2016-08-10 14:19:27', '2016-08-10 11:19:27', '								<p>\r\n									79017 м.Львів <br>\r\n									вул. Зелена 46/2\r\n								</p>\r\n\r\n								<p>\r\n									032 275 43 92 <br>\r\n									067 766 50 41\r\n								</p>\r\n\r\n								<p>\r\n									Пн – Сб 9:00 – 20:00 <br>\r\n									без перерви\r\n								</p>\r\n\r\n								<p>\r\n									Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br>\r\n									Тролейбус:11, 24\r\n								</p>\r\n\r\n								<p>\r\n									Є парковочні місця\r\n								</p>\r\n\r\n								<p>\r\n									<a href="#"><img src="<?php echo bloginfo(\'template_directory\') ?>/images/fb.svg" alt=""></a>\r\n									<a href="#"><img src="<?php echo bloginfo(\'template_directory\') ?>/images/vk.svg" alt=""></a>\r\n								</p>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:19:27', '2016-08-10 11:19:27', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(45, 1, '2016-08-10 14:21:18', '2016-08-10 11:21:18', '<p>79017 м.Львів <br /> вул. Зелена 46/2</p><p>032 275 43 92 <br /> 067 766 50 41</p><p>Пн – Сб 9:00 – 20:00 <br /> без перерви</p><p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br /> Тролейбус:11, 24</p><p>Є парковочні місця</p><p><a href="#"><img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg" alt="" /></a> <a href="#"><img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg" alt="" /></a></p>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:21:18', '2016-08-10 11:21:18', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(48, 1, '2016-08-10 14:23:59', '2016-08-10 11:23:59', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2016-08-10 14:23:59', '2016-08-10 11:23:59', '', 0, 'http://stomat/wp-content/uploads/2016/08/fb.svg', 0, 'attachment', 'image/svg+xml', 0),
	(49, 1, '2016-08-10 14:23:59', '2016-08-10 11:23:59', '', 'vk', '', 'inherit', 'open', 'closed', '', 'vk', '', '', '2016-08-10 14:23:59', '2016-08-10 11:23:59', '', 0, 'http://stomat/wp-content/uploads/2016/08/vk.svg', 0, 'attachment', 'image/svg+xml', 0),
	(50, 1, '2016-08-10 14:25:21', '2016-08-10 11:25:21', '<p>79017 м.Львів <br />\n вул. Зелена 46/2</p>\n<p>032 275 43 92 <br />\n 067 766 50 41</p>\n<p>Пн – Сб 9:00 – 20:00 <br />\n без перерви</p>\n<p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br />\n Тролейбус:11, 24</p>\n<p>Є парковочні місця</p>\n<p><a href="#"><img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg" alt="" /></a> <a href="#"><img src="&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg" alt="" /></a></p>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2016-08-10 14:25:21', '2016-08-10 11:25:21', '', 41, 'http://stomat/41-autosave-v1/', 0, 'revision', '', 0),
	(51, 1, '2016-08-10 14:26:22', '2016-08-10 11:26:22', '<p>79017 м.Львів <br />\r\n вул. Зелена 46/2</p>\r\n<p>032 275 43 92 <br />\r\n 067 766 50 41</p>\r\n<p>Пн – Сб 9:00 – 20:00 <br />\r\n без перерви</p>\r\n<p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br />\r\n Тролейбус:11, 24</p>\r\n<p>Є парковочні місця</p>\r\n<p><a href="#"><img src="/wp-content/uploads/2016/08/fb.svg" alt="" /></a> <a href="#"><img src="/wp-content/uploads/2016/08/vk.svg" alt="" /></a></p>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:26:22', '2016-08-10 11:26:22', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(52, 1, '2016-08-10 14:31:16', '2016-08-10 11:31:16', 'Послуга|Ціна, грн\r\nПрофесійна гігієна|350.01\r\nВідбілювання|від 2000.00\r\nБрекети металеві|7000.00\r\nПломба|300.00\r\nПломба|300.00', 'Послуга та ціна', '', 'publish', 'closed', 'closed', '', 'tsiny', '', '', '2016-08-17 04:28:30', '2016-08-17 01:28:30', '', 0, 'http://stomat/?page_id=52', 0, 'page', '', 0),
	(53, 1, '2016-08-10 14:31:16', '2016-08-10 11:31:16', '<p>Послуга|Ціна, грн</p>', 'Ціни', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-10 14:31:16', '2016-08-10 11:31:16', '', 52, 'http://stomat/52-revision-v1/', 0, 'revision', '', 0),
	(54, 1, '2016-08-10 14:32:27', '2016-08-10 11:32:27', '79017 м.Львів\r\nвул. Зелена 46/2\r\n\r\n032 275 43 92\r\n067 766 50 41\r\n\r\nПн – Сб 9:00 – 20:00\r\nбез перерви\r\n\r\nМаршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160\r\nТролейбус:11, 24\r\n\r\nЄ парковочні місця\r\n\r\n<a href="#"><img src="/wp-content/uploads/2016/08/fb.svg" alt="" /></a> <a href="#"><img src="/wp-content/uploads/2016/08/vk.svg" alt="" /></a>', 'Контакти', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-10 14:32:27', '2016-08-10 11:32:27', '', 41, 'http://stomat/41-revision-v1/', 0, 'revision', '', 0),
	(55, 1, '2016-08-10 14:35:24', '2016-08-10 11:35:24', 'Послуга|Ціна, грн\n<pre>Професійна гігієна|350.00</pre>\n<pre>Відбілювання|</pre>', 'Ціни', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2016-08-10 14:35:24', '2016-08-10 11:35:24', '', 52, 'http://stomat/52-autosave-v1/', 0, 'revision', '', 0),
	(56, 1, '2016-08-10 14:37:17', '2016-08-10 11:37:17', 'Послуга|Ціна, грн\r\nПрофесійна гігієна|350.00\r\nВідбілювання|від 2000.00\r\nБрекети металеві|7000.00\r\nПломба|300.00', 'Ціни', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-10 14:37:17', '2016-08-10 11:37:17', '', 52, 'http://stomat/52-revision-v1/', 0, 'revision', '', 0),
	(57, 1, '2016-08-10 14:41:30', '2016-08-10 11:41:30', 'Послуга|Ціна, грн\r\nПрофесійна гігієна|350.00\r\nВідбілювання|від 2000.00\r\nБрекети металеві|7000.00\r\nПломба|300.00', 'Послуга та ціна', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-10 14:41:30', '2016-08-10 11:41:30', '', 52, 'http://stomat/52-revision-v1/', 0, 'revision', '', 0),
	(58, 1, '2016-08-10 14:42:28', '2016-08-10 11:42:28', 'Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані платежі. У нас Ви можете здійснити оплату карткою.', 'Прейскурант', '', 'publish', 'closed', 'closed', '', 'prejskurant', '', '', '2016-08-10 22:09:55', '2016-08-10 19:09:55', '', 0, 'http://stomat/?page_id=58', 0, 'page', '', 0),
	(59, 1, '2016-08-10 14:42:28', '2016-08-10 11:42:28', '<pre>Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік\r\nнеобхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані\r\nплатежі. У нас Ви можете здійснити оплату карткою.</pre>', 'Прейскурант', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-08-10 14:42:28', '2016-08-10 11:42:28', '', 58, 'http://stomat/58-revision-v1/', 0, 'revision', '', 0),
	(60, 1, '2016-08-10 14:52:04', '2016-08-10 11:52:04', '<ul>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\r\n<p class="words">Безкоштовна діагностика</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /></div>\r\n<p class="words">Комплексне лікування усієї родини</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /></div>\r\n<p class="words">Робота зі страховими компаніями</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /></div>\r\n<p class="words">Надання екстреної допомоги у день звернення</p>\r\n</li>\r\n</ul>\r\n\r\n\r\n\r\n', 'Наші переваги', '', 'publish', 'closed', 'closed', '', 'nashi-perevagy', '', '', '2016-08-17 13:56:37', '2016-08-17 10:56:37', '', 0, 'http://stomat/?page_id=60', 0, 'page', '', 0),
	(61, 1, '2016-08-10 14:45:42', '2016-08-10 11:45:42', '', 'free diagnistic', '', 'inherit', 'open', 'closed', '', 'free-diagnistic', '', '', '2016-08-10 14:47:31', '2016-08-10 11:47:31', '', 60, 'http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg', 0, 'attachment', 'image/svg+xml', 0),
	(62, 1, '2016-08-10 14:46:04', '2016-08-10 11:46:04', '', 'complex treatment', '', 'inherit', 'open', 'closed', '', 'complex-treatment', '', '', '2016-08-10 14:49:19', '2016-08-10 11:49:19', '', 60, 'http://stomat/wp-content/uploads/2016/08/complex-treatment.svg', 0, 'attachment', 'image/svg+xml', 0),
	(63, 1, '2016-08-10 14:46:22', '2016-08-10 11:46:22', '', 'ensurence', '', 'inherit', 'open', 'closed', '', 'ensurence', '', '', '2016-08-10 14:50:17', '2016-08-10 11:50:17', '', 60, 'http://stomat/wp-content/uploads/2016/08/ensurence.svg', 0, 'attachment', 'image/svg+xml', 0),
	(64, 1, '2016-08-10 14:46:37', '2016-08-10 11:46:37', '', 'extra help', '', 'inherit', 'open', 'closed', '', 'extra-help', '', '', '2016-08-10 14:51:35', '2016-08-10 11:51:35', '', 60, 'http://stomat/wp-content/uploads/2016/08/extra-help.svg', 0, 'attachment', 'image/svg+xml', 0),
	(65, 1, '2016-08-10 14:52:04', '2016-08-10 11:52:04', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" />\r\nБезкоштовна діагностика\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />\r\nКомплексне лікування усієї родини\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />\r\nРобота зі страховими компаніями\r\n\r\n<img class="alignnone wp-image-64" src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />\r\nНадання екстреної допомоги у день звернення', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-10 14:52:04', '2016-08-10 11:52:04', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(66, 1, '2016-08-10 14:58:35', '2016-08-10 11:58:35', '«М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.', 'Про клініку', '', 'publish', 'closed', 'closed', '', 'pro-kliniku', '', '', '2016-08-10 22:10:27', '2016-08-10 19:10:27', '', 0, 'http://stomat/?page_id=66', 0, 'page', '', 0),
	(67, 1, '2016-08-10 14:58:35', '2016-08-10 11:58:35', 'М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до \r\nстерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.', 'Про клініку', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-08-10 14:58:35', '2016-08-10 11:58:35', '', 66, 'http://stomat/66-revision-v1/', 0, 'revision', '', 0),
	(68, 1, '2016-08-10 15:00:44', '2016-08-10 12:00:44', '', 'slider_girls', '', 'inherit', 'open', 'closed', '', 'slider_girls', '', '', '2016-08-10 15:00:44', '2016-08-10 12:00:44', '', 0, 'http://stomat/wp-content/uploads/2016/08/slider_girls.jpg', 0, 'attachment', 'image/jpeg', 0),
	(69, 1, '2016-08-10 15:01:15', '2016-08-10 12:01:15', '', 'slider_bottom1', '', 'inherit', 'open', 'closed', '', 'slider_bottom1', '', '', '2016-08-10 15:01:15', '2016-08-10 12:01:15', '', 0, 'http://stomat/wp-content/uploads/2016/08/slider_bottom1.png', 0, 'attachment', 'image/png', 0),
	(70, 1, '2016-08-10 16:38:20', '2016-08-10 13:38:20', 'Усі види стоматологічних послуг. Детальна діагностика. План лікування з переліком необхідних процедур, їх вартістю та термінами.', 'Лікування', '', 'publish', 'closed', 'closed', '', 'likuvannya', '', '', '2016-08-10 16:38:20', '2016-08-10 13:38:20', '', 0, 'http://stomat/?page_id=70', 0, 'page', '', 0),
	(71, 1, '2016-08-10 16:38:20', '2016-08-10 13:38:20', 'Усі види стоматологічних послуг. Детальна діагностика. План лікування з переліком необхідних процедур, їх вартістю та термінами.', 'Лікування', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2016-08-10 16:38:20', '2016-08-10 13:38:20', '', 70, 'http://stomat/70-revision-v1/', 0, 'revision', '', 0),
	(72, 1, '2016-08-10 16:41:26', '2016-08-10 13:41:26', 'Найвища цінність - довіра пацієнта. Щодня ми вдосконалюємось,щоб виправдати цю довіру. Майже 85 % наших пацієнтів звертаються до нас за рекомендацією знайомих чи друзів.', 'Фотогалерея', '', 'publish', 'closed', 'closed', '', 'fotogalereya', '', '', '2016-08-10 16:41:26', '2016-08-10 13:41:26', '', 0, 'http://stomat/?page_id=72', 0, 'page', '', 0),
	(73, 1, '2016-08-10 16:41:26', '2016-08-10 13:41:26', 'Найвища цінність - довіра пацієнта. Щодня ми вдосконалюємось,щоб виправдати цю довіру. Майже 85 % наших пацієнтів звертаються до нас за рекомендацією знайомих чи друзів.', 'Фотогалерея', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2016-08-10 16:41:26', '2016-08-10 13:41:26', '', 72, 'http://stomat/72-revision-v1/', 0, 'revision', '', 0),
	(74, 1, '2016-08-10 16:46:26', '2016-08-10 13:46:26', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-08-10 16:46:26', '2016-08-10 13:46:26', '', 5, 'http://stomat/wp-content/uploads/2016/08/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
	(75, 1, '2016-08-10 16:47:17', '2016-08-10 13:47:17', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-10 16:47:17', '2016-08-10 13:47:17', '', 5, 'http://stomat/5-revision-v1/', 0, 'revision', '', 0),
	(76, 1, '2016-08-10 16:50:12', '2016-08-10 13:50:12', '', 'Лікування', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-08-10 16:50:12', '2016-08-10 13:50:12', '', 37, 'http://stomat/37-revision-v1/', 0, 'revision', '', 0),
	(77, 1, '2016-08-10 16:53:08', '2016-08-10 13:53:08', '<script>// <![CDATA[\ngoogle.maps.event.addDomListener(window, \'load\', init);\nvar map;\nfunction init() {\n	var mapOptions = {\n		center: new google.maps.LatLng(49.843961, 24.021967),\n		zoom: 16,\n		zoomControl: false,\n		disableDoubleClickZoom: true,\n		mapTypeControl: false,\n		scaleControl: false,\n		scrollwheel: true,\n		panControl: true,\n		streetViewControl: false,\n		draggable: true,\n		overviewMapControl: true,\n		overviewMapControlOptions: {\n			opened: false,\n		},\n		mapTypeId: google.maps.MapTypeId.ROADMAP,\n		styles: [{\n			"featureType": "landscape",\n			"elementType": "labels",\n			"stylers": [{"visibility": "off"}]\n		}, {\n			"featureType": "transit",\n			"elementType": "labels",\n			"stylers": [{"visibility": "off"}]\n		}, {\n			"featureType": "poi",\n			"elementType": "labels",\n			"stylers": [{"visibility": "off"}]\n		}, {\n			"featureType": "water",\n			"elementType": "labels",\n			"stylers": [{"visibility": "off"}]\n		}, {\n			"featureType": "road",\n			"elementType": "labels.icon",\n			"stylers": [{"visibility": "off"}]\n		}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\n			"featureType": "road",\n			"elementType": "labels.text.fill",\n			"stylers": [{"visibility": "on"}, {"lightness": 24}]\n		}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\n	}\n	var mapElement = document.getElementById(\'map\');\n	var map = new google.maps.Map(mapElement, mapOptions);\n	var locations = [\n		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\n			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']\n	];\n	for (i = 0; i < locations.length; i++) {\n		if (locations[i][1] == \'undefined\') {\n			description = \'\';\n		} else {\n			description = locations[i][1];\n		}\n		if (locations[i][2] == \'undefined\') {\n			telephone = \'\';\n		} else {\n			telephone = locations[i][2];\n		}\n		if (locations[i][3] == \'undefined\') {\n			email = \'\';\n		} else {\n			email = locations[i][3];\n		}\n		if (locations[i][4] == \'undefined\') {\n			web = \'\';\n		} else {\n			web = locations[i][4];\n		}\n		if (locations[i][7] == \'undefined\') {\n			markericon = \'\';\n		} else {\n			markericon = locations[i][7];\n		}\n		marker = new google.maps.Marker({\n			icon: markericon,\n			position: new google.maps.LatLng(locations[i][5], locations[i][6]),\n			map: map,\n			title: locations[i][0],\n			desc: description,\n			tel: telephone,\n			email: email,\n			web: web\n		});\n		link = \'\';\n	}\n\n}\n// ]]></script>', 'Мапа', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2016-08-10 16:53:08', '2016-08-10 13:53:08', '', 39, 'http://stomat/39-autosave-v1/', 0, 'revision', '', 0),
	(78, 1, '2016-08-10 16:53:42', '2016-08-10 13:53:42', '<script>\r\ngoogle.maps.event.addDomListener(window, \'load\', init);\r\nvar map;\r\nfunction init() {\r\n	var mapOptions = {\r\n		center: new google.maps.LatLng(49.843961, 24.021967),\r\n		zoom: 16,\r\n		zoomControl: false,\r\n		disableDoubleClickZoom: true,\r\n		mapTypeControl: false,\r\n		scaleControl: false,\r\n		scrollwheel: true,\r\n		panControl: true,\r\n		streetViewControl: false,\r\n		draggable: true,\r\n		overviewMapControl: true,\r\n		overviewMapControlOptions: {\r\n			opened: false,\r\n		},\r\n		mapTypeId: google.maps.MapTypeId.ROADMAP,\r\n		styles: [{\r\n			"featureType": "landscape",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "transit",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "poi",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "water",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.icon",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.text.fill",\r\n			"stylers": [{"visibility": "on"}, {"lightness": 24}]\r\n		}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\r\n	}\r\n	var mapElement = document.getElementById(\'map\');\r\n	var map = new google.maps.Map(mapElement, mapOptions);\r\n	var locations = [\r\n		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\r\n			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']\r\n	];\r\n	for (i = 0; i < locations.length; i++) {\r\n		if (locations[i][1] == \'undefined\') {\r\n			description = \'\';\r\n		} else {\r\n			description = locations[i][1];\r\n		}\r\n		if (locations[i][2] == \'undefined\') {\r\n			telephone = \'\';\r\n		} else {\r\n			telephone = locations[i][2];\r\n		}\r\n		if (locations[i][3] == \'undefined\') {\r\n			email = \'\';\r\n		} else {\r\n			email = locations[i][3];\r\n		}\r\n		if (locations[i][4] == \'undefined\') {\r\n			web = \'\';\r\n		} else {\r\n			web = locations[i][4];\r\n		}\r\n		if (locations[i][7] == \'undefined\') {\r\n			markericon = \'\';\r\n		} else {\r\n			markericon = locations[i][7];\r\n		}\r\n		marker = new google.maps.Marker({\r\n			icon: markericon,\r\n			position: new google.maps.LatLng(locations[i][5], locations[i][6]),\r\n			map: map,\r\n			title: locations[i][0],\r\n			desc: description,\r\n			tel: telephone,\r\n			email: email,\r\n			web: web\r\n		});\r\n		link = \'\';\r\n	}\r\n\r\n}\r\n</script>', 'Мапа', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-08-10 16:53:42', '2016-08-10 13:53:42', '', 39, 'http://stomat/39-revision-v1/', 0, 'revision', '', 0),
	(79, 1, '2016-08-10 16:56:46', '2016-08-10 13:56:46', 'google.maps.event.addDomListener(window, \'load\', init);\r\nvar map;\r\nfunction init() {\r\n	var mapOptions = {\r\n		center: new google.maps.LatLng(49.843961, 24.021967),\r\n		zoom: 16,\r\n		zoomControl: false,\r\n		disableDoubleClickZoom: true,\r\n		mapTypeControl: false,\r\n		scaleControl: false,\r\n		scrollwheel: true,\r\n		panControl: true,\r\n		streetViewControl: false,\r\n		draggable: true,\r\n		overviewMapControl: true,\r\n		overviewMapControlOptions: {\r\n			opened: false,\r\n		},\r\n		mapTypeId: google.maps.MapTypeId.ROADMAP,\r\n		styles: [{\r\n			"featureType": "landscape",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "transit",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "poi",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "water",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.icon",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.text.fill",\r\n			"stylers": [{"visibility": "on"}, {"lightness": 24}]\r\n		}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\r\n	}\r\n	var mapElement = document.getElementById(\'map\');\r\n	var map = new google.maps.Map(mapElement, mapOptions);\r\n	var locations = [\r\n		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\r\n			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']\r\n	];\r\n	for (i = 0; i < locations.length; i++) {\r\n		if (locations[i][1] == \'undefined\') {\r\n			description = \'\';\r\n		} else {\r\n			description = locations[i][1];\r\n		}\r\n		if (locations[i][2] == \'undefined\') {\r\n			telephone = \'\';\r\n		} else {\r\n			telephone = locations[i][2];\r\n		}\r\n		if (locations[i][3] == \'undefined\') {\r\n			email = \'\';\r\n		} else {\r\n			email = locations[i][3];\r\n		}\r\n		if (locations[i][4] == \'undefined\') {\r\n			web = \'\';\r\n		} else {\r\n			web = locations[i][4];\r\n		}\r\n		if (locations[i][7] == \'undefined\') {\r\n			markericon = \'\';\r\n		} else {\r\n			markericon = locations[i][7];\r\n		}\r\n		marker = new google.maps.Marker({\r\n			icon: markericon,\r\n			position: new google.maps.LatLng(locations[i][5], locations[i][6]),\r\n			map: map,\r\n			title: locations[i][0],\r\n			desc: description,\r\n			tel: telephone,\r\n			email: email,\r\n			web: web\r\n		});\r\n		link = \'\';\r\n	}\r\n\r\n}', 'Мапа', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-08-10 16:56:46', '2016-08-10 13:56:46', '', 39, 'http://stomat/39-revision-v1/', 0, 'revision', '', 0),
	(80, 1, '2016-08-10 16:57:24', '2016-08-10 13:57:24', '', 'pointer', '', 'inherit', 'open', 'closed', '', 'pointer', '', '', '2016-08-10 16:57:24', '2016-08-10 13:57:24', '', 0, 'http://stomat/wp-content/uploads/2016/08/pointer.svg', 0, 'attachment', 'image/svg+xml', 0),
	(81, 1, '2016-08-10 16:58:18', '2016-08-10 13:58:18', 'google.maps.event.addDomListener(window, \'load\', init);\r\nvar map;\r\nfunction init() {\r\n	var mapOptions = {\r\n		center: new google.maps.LatLng(49.843961, 24.021967),\r\n		zoom: 16,\r\n		zoomControl: false,\r\n		disableDoubleClickZoom: true,\r\n		mapTypeControl: false,\r\n		scaleControl: false,\r\n		scrollwheel: true,\r\n		panControl: true,\r\n		streetViewControl: false,\r\n		draggable: true,\r\n		overviewMapControl: true,\r\n		overviewMapControlOptions: {\r\n			opened: false,\r\n		},\r\n		mapTypeId: google.maps.MapTypeId.ROADMAP,\r\n		styles: [{\r\n			"featureType": "landscape",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "transit",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "poi",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "water",\r\n			"elementType": "labels",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.icon",\r\n			"stylers": [{"visibility": "off"}]\r\n		}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {\r\n			"featureType": "road",\r\n			"elementType": "labels.text.fill",\r\n			"stylers": [{"visibility": "on"}, {"lightness": 24}]\r\n		}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],\r\n	}\r\n	var mapElement = document.getElementById(\'map\');\r\n	var map = new google.maps.Map(mapElement, mapOptions);\r\n	var locations = [\r\n		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,\r\n			\'/wp-content/uploads/2016/08/pointer.svg\']\r\n	];\r\n	for (i = 0; i < locations.length; i++) {\r\n		if (locations[i][1] == \'undefined\') {\r\n			description = \'\';\r\n		} else {\r\n			description = locations[i][1];\r\n		}\r\n		if (locations[i][2] == \'undefined\') {\r\n			telephone = \'\';\r\n		} else {\r\n			telephone = locations[i][2];\r\n		}\r\n		if (locations[i][3] == \'undefined\') {\r\n			email = \'\';\r\n		} else {\r\n			email = locations[i][3];\r\n		}\r\n		if (locations[i][4] == \'undefined\') {\r\n			web = \'\';\r\n		} else {\r\n			web = locations[i][4];\r\n		}\r\n		if (locations[i][7] == \'undefined\') {\r\n			markericon = \'\';\r\n		} else {\r\n			markericon = locations[i][7];\r\n		}\r\n		marker = new google.maps.Marker({\r\n			icon: markericon,\r\n			position: new google.maps.LatLng(locations[i][5], locations[i][6]),\r\n			map: map,\r\n			title: locations[i][0],\r\n			desc: description,\r\n			tel: telephone,\r\n			email: email,\r\n			web: web\r\n		});\r\n		link = \'\';\r\n	}\r\n\r\n}', 'Мапа', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-08-10 16:58:18', '2016-08-10 13:58:18', '', 39, 'http://stomat/39-revision-v1/', 0, 'revision', '', 0),
	(82, 1, '2016-08-10 16:59:49', '2016-08-10 13:59:49', 'Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік\r\nнеобхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані\r\nплатежі. У нас Ви можете здійснити оплату карткою.', 'Прейскурант', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-08-10 16:59:49', '2016-08-10 13:59:49', '', 58, 'http://stomat/58-revision-v1/', 0, 'revision', '', 0),
	(83, 1, '2016-08-10 17:15:26', '2016-08-10 14:15:26', '', 'Про клініку', '', 'publish', 'closed', 'closed', '', 'pro-kliniku-2', '', '', '2016-08-14 11:56:16', '2016-08-14 08:56:17', '', 0, 'http://stomat/?p=83', 1, 'nav_menu_item', '', 0),
	(84, 1, '2016-08-10 17:15:26', '2016-08-10 14:15:26', '', 'Лікування', '', 'publish', 'closed', 'closed', '', 'likuvannya-2', '', '', '2016-08-14 11:56:17', '2016-08-14 08:56:17', '', 0, 'http://stomat/?p=84', 2, 'nav_menu_item', '', 0),
	(85, 1, '2016-08-10 17:15:27', '2016-08-10 14:15:27', '', 'Прейскурант', '', 'publish', 'closed', 'closed', '', 'prejskurant-2', '', '', '2016-08-14 11:56:17', '2016-08-14 08:56:17', '', 0, 'http://stomat/?p=85', 3, 'nav_menu_item', '', 0),
	(86, 1, '2016-08-10 17:15:41', '2016-08-10 14:15:41', '', 'Контакти', '', 'publish', 'closed', 'closed', '', 'kontakty-2', '', '', '2016-08-14 11:56:17', '2016-08-14 08:56:17', '', 0, 'http://stomat/?p=86', 4, 'nav_menu_item', '', 0),
	(87, 1, '2016-08-10 19:41:45', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-10 19:41:45', '0000-00-00 00:00:00', '', 0, 'http://stomat/?p=87', 0, 'post', '', 0),
	(88, 1, '2016-08-10 22:05:08', '2016-08-10 19:05:08', 'М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.', 'Про клініку', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-08-10 22:05:08', '2016-08-10 19:05:08', '', 66, 'http://stomat/66-revision-v1/', 0, 'revision', '', 0),
	(89, 1, '2016-08-10 22:09:55', '2016-08-10 19:09:55', 'Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані платежі. У нас Ви можете здійснити оплату карткою.', 'Прейскурант', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-08-10 22:09:55', '2016-08-10 19:09:55', '', 58, 'http://stomat/58-revision-v1/', 0, 'revision', '', 0),
	(90, 1, '2016-08-10 22:10:27', '2016-08-10 19:10:27', '«М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.', 'Про клініку', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-08-10 22:10:27', '2016-08-10 19:10:27', '', 66, 'http://stomat/66-revision-v1/', 0, 'revision', '', 0),
	(91, 1, '2016-08-11 03:33:02', '2016-08-11 00:33:02', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" />Безкоштовна діагностика\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />Комплексне лікування усієї родини\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />Робота зі страховими компаніями\r\n<img class="alignnone wp-image-64" src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />Надання екстреної допомоги у день звернення', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:33:02', '2016-08-11 00:33:02', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(92, 1, '2016-08-11 03:34:42', '2016-08-11 00:34:42', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /><p>Безкоштовна діагностика</p>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />Комплексне лікування усієї родини\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />Робота зі страховими компаніями\r\n<img class="alignnone wp-image-64" src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />Надання екстреної допомоги у день звернення', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:34:42', '2016-08-11 00:34:42', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(93, 1, '2016-08-11 03:36:29', '2016-08-11 00:36:29', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /><div>Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />Комплексне лікування усієї родини\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />Робота зі страховими компаніями\r\n<img class="alignnone wp-image-64" src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />Надання екстреної допомоги у день звернення', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:36:29', '2016-08-11 00:36:29', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(94, 1, '2016-08-11 03:38:17', '2016-08-11 00:38:17', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" />\r\n<div>Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /><div>Комплексне лікування усієї родини</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /><div>Робота зі страховими компаніями</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /><div>Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:38:17', '2016-08-11 00:38:17', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(95, 1, '2016-08-11 03:38:39', '2016-08-11 00:38:39', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /><div>Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /><div>Комплексне лікування усієї родини</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /><div>Робота зі страховими компаніями</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /><div>Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:38:39', '2016-08-11 00:38:39', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(96, 1, '2016-08-11 03:40:59', '2016-08-11 00:40:59', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" />\r\n<div class="text">Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />\r\n<div>Комплексне лікування усієї родини</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />\r\n<div>Робота зі страховими компаніями</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />\r\n<div>Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:40:59', '2016-08-11 00:40:59', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(97, 1, '2016-08-11 03:41:36', '2016-08-11 00:41:36', '<img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" />\r\n<div class="words">Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />\r\n<div>Комплексне лікування усієї родини</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />\r\n<div>Робота зі страховими компаніями</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />\r\n<div>Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:41:36', '2016-08-11 00:41:36', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(98, 1, '2016-08-11 03:42:48', '2016-08-11 00:42:48', '<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\r\n<div class="words">Безкоштовна діагностика</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" />\r\n<div>Комплексне лікування усієї родини</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" />\r\n<div>Робота зі страховими компаніями</div>\r\n<img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" />\r\n<div>Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:42:48', '2016-08-11 00:42:48', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(99, 1, '2016-08-11 03:44:50', '2016-08-11 00:44:50', '<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\r\n<div class="words">Безкоштовна діагностика</div>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /></div>\r\n<div class="words">Комплексне лікування усієї родини</div>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /></div>\r\n<div class="words">Робота зі страховими компаніями</div>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /></div>\r\n<div class="words">Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-11 03:44:50', '2016-08-11 00:44:50', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(101, 1, '2016-08-11 06:13:19', '2016-08-11 03:13:19', 'Послуга|Ціна, грн\r\nПрофесійна гігієна|350.00\r\nВідбілювання|від 2000.00\r\nБрекети металеві|7000.00\r\nПломба|300.00\r\nПломба|300.00', 'Послуга та ціна', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-11 06:13:19', '2016-08-11 03:13:19', '', 52, 'http://stomat/52-revision-v1/', 0, 'revision', '', 0),
	(102, 1, '2016-08-11 15:54:24', '2016-08-11 12:54:24', 'price-list', 'Сторінка прейскуранту', '', 'publish', 'closed', 'closed', '', 'price-list', '', '', '2016-08-11 16:48:01', '2016-08-11 13:48:01', '', 0, 'http://stomat/?page_id=102', 0, 'page', '', 0),
	(103, 1, '2016-08-11 15:54:24', '2016-08-11 12:54:24', '', 'Сторінка прейскуранту', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2016-08-11 15:54:24', '2016-08-11 12:54:24', '', 102, 'http://stomat/102-revision-v1/', 0, 'revision', '', 0),
	(104, 1, '2016-08-11 16:37:21', '2016-08-11 13:37:21', '1', 'Сторінка прейскуранту', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2016-08-11 16:37:21', '2016-08-11 13:37:21', '', 102, 'http://stomat/102-revision-v1/', 0, 'revision', '', 0),
	(105, 1, '2016-08-11 16:48:01', '2016-08-11 13:48:01', 'price-list', 'Сторінка прейскуранту', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2016-08-11 16:48:01', '2016-08-11 13:48:01', '', 102, 'http://stomat/102-revision-v1/', 0, 'revision', '', 0),
	(106, 1, '2016-08-11 16:49:37', '2016-08-11 13:49:37', 'services', 'Сторінка сервісу', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-08-11 16:51:09', '2016-08-11 13:51:09', '', 0, 'http://stomat/?page_id=106', 0, 'page', '', 0),
	(107, 1, '2016-08-11 16:49:37', '2016-08-11 13:49:37', '', 'services', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2016-08-11 16:49:37', '2016-08-11 13:49:37', '', 106, 'http://stomat/106-revision-v1/', 0, 'revision', '', 0),
	(108, 1, '2016-08-11 16:50:04', '2016-08-11 13:50:04', '', 'Сторінка сервісу', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2016-08-11 16:50:04', '2016-08-11 13:50:04', '', 106, 'http://stomat/106-revision-v1/', 0, 'revision', '', 0),
	(109, 1, '2016-08-11 16:51:09', '2016-08-11 13:51:09', 'services', 'Сторінка сервісу', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2016-08-11 16:51:09', '2016-08-11 13:51:09', '', 106, 'http://stomat/106-revision-v1/', 0, 'revision', '', 0),
	(110, 1, '2016-08-12 13:41:20', '2016-08-12 10:41:20', '', 'Test image 1', '', 'publish', 'closed', 'closed', '', 'test-image-1', '', '', '2016-08-12 13:41:20', '2016-08-12 10:41:20', '', 0, 'http://stomat/?post_type=test_image&#038;p=110', 0, 'test_image', '', 0),
	(111, 1, '2016-08-12 14:01:22', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-08-12 14:01:22', '0000-00-00 00:00:00', '', 0, 'http://stomat/?post_type=services&p=111', 0, 'services', '', 0),
	(112, 1, '2016-08-12 14:17:39', '2016-08-12 11:17:39', '', 'test mag', '', 'publish', 'closed', 'closed', '', 'test-mag', '', '', '2016-08-12 14:17:39', '2016-08-12 11:17:39', '', 0, 'http://stomat/?post_type=stores&#038;p=112', 0, 'stores', '', 0),
	(113, 1, '2016-08-12 14:18:13', '2016-08-12 11:18:13', '', 'test sales', '', 'publish', 'closed', 'closed', '', 'test-sales', '', '', '2016-08-12 14:18:13', '2016-08-12 11:18:13', '', 0, 'http://stomat/?post_type=sales&#038;p=113', 0, 'sales', '', 0),
	(114, 1, '2016-08-12 15:06:52', '2016-08-12 12:06:52', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.\r\n\r\n&nbsp;', 'Профілактика', '', 'publish', 'closed', 'closed', '', 'posluga-persha-1', '', '', '2016-08-12 15:42:32', '2016-08-12 12:42:32', '', 0, 'http://stomat/?post_type=services&#038;p=114', 0, 'services', '', 0),
	(115, 1, '2016-08-12 15:08:12', '2016-08-12 12:08:12', '', 'profilactic', '', 'inherit', 'open', 'closed', '', 'profilactic', '', '', '2016-08-12 15:08:12', '2016-08-12 12:08:12', '', 114, 'http://stomat/wp-content/uploads/2016/08/profilactic.svg', 0, 'attachment', 'image/svg+xml', 0),
	(116, 1, '2016-08-12 15:44:36', '2016-08-12 12:44:36', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Терапія', '', 'publish', 'closed', 'closed', '', 'terapiya', '', '', '2016-08-12 15:44:36', '2016-08-12 12:44:36', '', 0, 'http://stomat/?post_type=services&#038;p=116', 0, 'services', '', 0),
	(117, 1, '2016-08-12 15:44:20', '2016-08-12 12:44:20', '', 'teraphy', '', 'inherit', 'open', 'closed', '', 'teraphy', '', '', '2016-08-12 15:44:20', '2016-08-12 12:44:20', '', 116, 'http://stomat/wp-content/uploads/2016/08/teraphy.svg', 0, 'attachment', 'image/svg+xml', 0),
	(118, 1, '2016-08-12 15:46:15', '2016-08-12 12:46:15', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Ендодонтія', '', 'publish', 'closed', 'closed', '', 'endodontiya', '', '', '2016-08-12 15:46:15', '2016-08-12 12:46:15', '', 0, 'http://stomat/?post_type=services&#038;p=118', 0, 'services', '', 0),
	(119, 1, '2016-08-12 15:46:10', '2016-08-12 12:46:10', '', 'endodontia', '', 'inherit', 'open', 'closed', '', 'endodontia', '', '', '2016-08-12 15:46:10', '2016-08-12 12:46:10', '', 118, 'http://stomat/wp-content/uploads/2016/08/endodontia.svg', 0, 'attachment', 'image/svg+xml', 0),
	(120, 1, '2016-08-12 15:47:40', '2016-08-12 12:47:40', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Ортопедія', '', 'publish', 'closed', 'closed', '', 'ortopediya', '', '', '2016-08-12 15:47:40', '2016-08-12 12:47:40', '', 0, 'http://stomat/?post_type=services&#038;p=120', 0, 'services', '', 0),
	(121, 1, '2016-08-12 15:47:26', '2016-08-12 12:47:26', '', 'ortodontia', '', 'inherit', 'open', 'closed', '', 'ortodontia', '', '', '2016-08-12 15:47:26', '2016-08-12 12:47:26', '', 120, 'http://stomat/wp-content/uploads/2016/08/ortodontia.svg', 0, 'attachment', 'image/svg+xml', 0),
	(122, 1, '2016-08-12 15:49:08', '2016-08-12 12:49:08', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Ортодонтія', '', 'publish', 'closed', 'closed', '', 'ortodontiya', '', '', '2016-08-12 15:49:08', '2016-08-12 12:49:08', '', 0, 'http://stomat/?post_type=services&#038;p=122', 0, 'services', '', 0),
	(123, 1, '2016-08-12 15:49:54', '2016-08-12 12:49:54', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Дитяча стоматологія1', '', 'publish', 'closed', 'closed', '', 'dytyacha-stomatologiya', '', '', '2016-08-14 16:56:29', '2016-08-14 13:56:29', '', 0, 'http://stomat/?post_type=services&#038;p=123', 0, 'services', '', 0),
	(124, 1, '2016-08-12 15:50:28', '2016-08-12 12:50:28', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Пародонтологія', '', 'publish', 'closed', 'closed', '', 'parodontologiya', '', '', '2016-08-12 15:50:28', '2016-08-12 12:50:28', '', 0, 'http://stomat/?post_type=services&#038;p=124', 0, 'services', '', 0),
	(125, 1, '2016-08-12 15:51:22', '2016-08-12 12:51:22', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Хірургія', '', 'publish', 'closed', 'closed', '', 'hirurgiya', '', '', '2016-08-12 15:51:22', '2016-08-12 12:51:22', '', 0, 'http://stomat/?post_type=services&#038;p=125', 0, 'services', '', 0),
	(126, 1, '2016-08-12 15:52:07', '2016-08-12 12:52:07', '<strong>Профілактика: Як зберегти здорові зуби?</strong>\r\n\r\nКожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.\r\n\r\n<strong>Гігієна і профілактика зубів</strong>\r\n\r\nОдним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.', 'Імплантація', '', 'publish', 'closed', 'closed', '', 'implantatsiya', '', '', '2016-08-12 15:52:07', '2016-08-12 12:52:07', '', 0, 'http://stomat/?post_type=services&#038;p=126', 0, 'services', '', 0),
	(138, 1, '2016-08-13 18:41:46', '2016-08-13 15:41:46', '', 'cross', '', 'inherit', 'open', 'closed', '', 'cross', '', '', '2016-08-13 18:41:46', '2016-08-13 15:41:46', '', 0, 'http://stomat/wp-content/uploads/2016/08/cross.svg', 0, 'attachment', 'image/svg+xml', 0),
	(139, 1, '2016-08-13 20:26:37', '2016-08-13 17:26:37', '', 'range', '', 'inherit', 'open', 'closed', '', 'range', '', '', '2016-08-13 20:26:37', '2016-08-13 17:26:37', '', 0, 'http://stomat/wp-content/uploads/2016/08/range.png', 0, 'attachment', 'image/png', 0),
	(142, 1, '2016-08-13 21:41:24', '2016-08-13 18:41:24', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2016-08-13 21:41:24', '2016-08-13 18:41:24', '', 0, 'http://stomat/?p=142', 1, 'nav_menu_item', '', 0),
	(143, 1, '2016-08-13 21:41:24', '2016-08-13 18:41:24', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2016-08-13 21:41:24', '2016-08-13 18:41:24', '', 0, 'http://stomat/?p=143', 2, 'nav_menu_item', '', 0),
	(144, 1, '2016-08-13 21:41:25', '2016-08-13 18:41:25', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2016-08-13 21:41:25', '2016-08-13 18:41:25', '', 0, 'http://stomat/?p=144', 3, 'nav_menu_item', '', 0),
	(145, 1, '2016-08-13 21:41:25', '2016-08-13 18:41:25', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2016-08-13 21:41:25', '2016-08-13 18:41:25', '', 0, 'http://stomat/?p=145', 4, 'nav_menu_item', '', 0),
	(146, 1, '2016-08-13 21:41:25', '2016-08-13 18:41:25', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2016-08-13 21:41:25', '2016-08-13 18:41:25', '', 0, 'http://stomat/?p=146', 5, 'nav_menu_item', '', 0),
	(147, 1, '2016-08-13 21:41:25', '2016-08-13 18:41:25', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2016-08-13 21:41:25', '2016-08-13 18:41:25', '', 0, 'http://stomat/?p=147', 6, 'nav_menu_item', '', 0),
	(148, 1, '2016-08-13 21:41:25', '2016-08-13 18:41:25', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2016-08-13 21:41:25', '2016-08-13 18:41:25', '', 0, 'http://stomat/?p=148', 7, 'nav_menu_item', '', 0),
	(149, 1, '2016-08-13 21:41:26', '2016-08-13 18:41:26', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2016-08-13 21:41:26', '2016-08-13 18:41:26', '', 0, 'http://stomat/?p=149', 8, 'nav_menu_item', '', 0),
	(150, 1, '2016-08-13 21:41:26', '2016-08-13 18:41:26', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2016-08-13 21:41:26', '2016-08-13 18:41:26', '', 0, 'http://stomat/?p=150', 9, 'nav_menu_item', '', 0),
	(151, 1, '2016-08-13 21:57:11', '2016-08-13 18:57:11', '', 'arrow', '', 'inherit', 'open', 'closed', '', 'arrow', '', '', '2016-08-13 21:57:11', '2016-08-13 18:57:11', '', 0, 'http://stomat/wp-content/uploads/2016/08/arrow.png', 0, 'attachment', 'image/png', 0),
	(152, 1, '2016-08-14 17:16:22', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-08-14 17:16:22', '0000-00-00 00:00:00', '', 0, 'http://stomat/?post_type=services&p=152', 0, 'services', '', 0),
	(153, 1, '2016-08-17 04:28:30', '2016-08-17 01:28:30', 'Послуга|Ціна, грн\r\nПрофесійна гігієна|350.01\r\nВідбілювання|від 2000.00\r\nБрекети металеві|7000.00\r\nПломба|300.00\r\nПломба|300.00', 'Послуга та ціна', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-17 04:28:30', '2016-08-17 01:28:30', '', 52, 'http://stomat/52-revision-v1/', 0, 'revision', '', 0),
	(154, 1, '2016-08-17 13:54:38', '2016-08-17 10:54:38', '<ul>\n<li>\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\n<div class="words">Безкоштовна діагностика</div>\n</li>\n<li>\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /></div>\n<div class="words">Комплексне лікування усієї родини</div>\n</li>\n<li>\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /></div>\n<div class="words">Робота зі страховими компаніями</div>\n</li>\n<li></li>\n</ul>\n\n\n\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /></div>\n<div class="words">Надання екстреної допомоги у день звернення</div>', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2016-08-17 13:54:38', '2016-08-17 10:54:38', '', 60, 'http://stomat/60-autosave-v1/', 0, 'revision', '', 0),
	(155, 1, '2016-08-17 13:54:53', '2016-08-17 10:54:53', '<ul>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\r\n<div class="words">Безкоштовна діагностика</div>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /></div>\r\n<div class="words">Комплексне лікування усієї родини</div>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /></div>\r\n<div class="words">Робота зі страховими компаніями</div>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /></div>\r\n<div class="words">Надання екстреної допомоги у день звернення</div>\r\n</li>\r\n</ul>\r\n\r\n\r\n\r\n', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-17 13:54:53', '2016-08-17 10:54:53', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0),
	(156, 1, '2016-08-17 13:56:37', '2016-08-17 10:56:37', '<ul>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg" alt="free diagnistic" width="88" height="88" /></div>\r\n<p class="words">Безкоштовна діагностика</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/complex-treatment.svg" alt="complex treatment" /></div>\r\n<p class="words">Комплексне лікування усієї родини</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/ensurence.svg" alt="ensurence" width="97" height="95" /></div>\r\n<p class="words">Робота зі страховими компаніями</p>\r\n</li>\r\n<li>\r\n<div class="img"><img src="http://stomat/wp-content/uploads/2016/08/extra-help.svg" alt="extra help" width="86" height="82" /></div>\r\n<p class="words">Надання екстреної допомоги у день звернення</p>\r\n</li>\r\n</ul>\r\n\r\n\r\n\r\n', 'Наші переваги', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-17 13:56:37', '2016-08-17 10:56:37', '', 60, 'http://stomat/60-revision-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_termmeta: ~0 rows (приблизительно)
DELETE FROM `wp_termmeta`;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_terms: ~2 rows (приблизительно)
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Без категорії', 'uncategorized', 0),
	(2, 'Верхне меню', 'verhne-menyu', 0),
	(3, 'Гамбургер', 'gamburger', 0),
	(4, 'Меню послуги', 'menyu-poslugy', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_term_relationships: ~22 rows (приблизительно)
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(11, 2, 0),
	(12, 2, 0),
	(13, 2, 0),
	(14, 2, 0),
	(15, 2, 0),
	(17, 1, 0),
	(35, 1, 0),
	(37, 1, 0),
	(83, 3, 0),
	(84, 3, 0),
	(85, 3, 0),
	(86, 3, 0),
	(142, 4, 0),
	(143, 4, 0),
	(144, 4, 0),
	(145, 4, 0),
	(146, 4, 0),
	(147, 4, 0),
	(148, 4, 0),
	(149, 4, 0),
	(150, 4, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_term_taxonomy: ~2 rows (приблизительно)
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 0),
	(2, 2, 'nav_menu', '', 0, 5),
	(3, 3, 'nav_menu', '', 0, 4),
	(4, 4, 'nav_menu', '', 0, 9);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_usermeta: ~48 rows (приблизительно)
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'alex'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'comment_shortcuts', 'false'),
	(7, 1, 'admin_color', 'fresh'),
	(8, 1, 'use_ssl', '0'),
	(9, 1, 'show_admin_bar_front', 'true'),
	(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(11, 1, 'wp_user_level', '10'),
	(12, 1, 'dismissed_wp_pointers', ''),
	(13, 1, 'show_welcome_panel', '0'),
	(15, 1, 'wp_dashboard_quick_press_last_post_id', '87'),
	(16, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";s:156:"Don\'t miss your crawl errors: <a href="http://stomat/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
	(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
	(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
	(19, 1, 'nav_menu_recently_edited', '2'),
	(20, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
	(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o'),
	(23, 1, 'wp_user-settings-time', '1471431289'),
	(24, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(25, 1, 'metaboxhidden_page', 'a:7:{i:0;s:13:"pageparentdiv";i:1;s:12:"revisionsdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
	(26, 1, 'closedpostboxes_gallery', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(27, 1, 'metaboxhidden_gallery', 'a:1:{i:0;s:7:"slugdiv";}'),
	(28, 1, 'meta-box-order_gallery', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:25:"abv_gallery_id,wpseo_meta";}'),
	(29, 1, 'screen_layout_gallery', '2'),
	(30, 1, 'closedpostboxes_test', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(31, 1, 'metaboxhidden_test', 'a:1:{i:0;s:7:"slugdiv";}'),
	(32, 1, 'meta-box-order_test', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:22:"abv_test_id,wpseo_meta";}'),
	(33, 1, 'screen_layout_test', '2'),
	(34, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
	(35, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:17:"dashboard_primary";}'),
	(36, 1, 'session_tokens', 'a:1:{s:64:"a4129ef4eadf1b83f58fc5a7186409288dcd47e5e50144da5d7b055835ec5c16";a:4:{s:10:"expiration";i:1472056904;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/51.0.2704.79 Chrome/51.0.2704.79 Safari/537.36";s:5:"login";i:1470847304;}}'),
	(37, 1, 'last_login_time', '2016-08-10 19:41:44'),
	(38, 1, 'closedpostboxes_test_image', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(39, 1, 'metaboxhidden_test_image', 'a:1:{i:0;s:7:"slugdiv";}'),
	(40, 1, 'meta-box-order_test_image', 'a:3:{s:4:"side";s:9:"submitdiv";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:28:"abv_test_image_id,wpseo_meta";}'),
	(41, 1, 'screen_layout_test_image', '2'),
	(42, 1, 'closedpostboxes_stores', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(43, 1, 'metaboxhidden_stores', 'a:1:{i:0;s:7:"slugdiv";}'),
	(44, 1, 'closedpostboxes_sales', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(45, 1, 'metaboxhidden_sales', 'a:1:{i:0;s:7:"slugdiv";}'),
	(46, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:30:"abv_med-services_id,wpseo_meta";}'),
	(47, 1, 'screen_layout_page', '2'),
	(48, 1, 'closedpostboxes_med-services', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(49, 1, 'metaboxhidden_med-services', 'a:1:{i:0;s:7:"slugdiv";}'),
	(50, 1, 'meta-box-order_med-services', 'a:3:{s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:40:"abv_med-services_meta_post_id,wpseo_meta";}'),
	(51, 1, 'screen_layout_med-services', '2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Дамп структуры для таблица stomat.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы stomat.wp_users: ~0 rows (приблизительно)
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'alex', '$P$Bl2R2su/.LZKGWITgV..kZvy4RUsxg.', 'alex', 'alex110@list.ru', '', '2016-08-03 12:16:17', '', 0, 'alex');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
