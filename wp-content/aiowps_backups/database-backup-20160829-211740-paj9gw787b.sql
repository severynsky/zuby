DROP TABLE IF EXISTS `wp_aiowps_events`;

CREATE TABLE `wp_aiowps_events` (
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



DROP TABLE IF EXISTS `wp_aiowps_failed_logins`;

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_aiowps_failed_logins` VALUES("1","0","Iya_admin","2016-08-29 19:43:13","91.124.231.*");
INSERT INTO `wp_aiowps_failed_logins` VALUES("2","2","Iya_seo","2016-08-29 19:43:20","91.124.231.*");


DROP TABLE IF EXISTS `wp_aiowps_global_meta`;

CREATE TABLE `wp_aiowps_global_meta` (
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



DROP TABLE IF EXISTS `wp_aiowps_login_activity`;

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_aiowps_login_activity` VALUES("1","1","alex","2016-08-10 19:41:44","0000-00-00 00:00:00","127.0.0.1","","");
INSERT INTO `wp_aiowps_login_activity` VALUES("5","1","alex","2016-08-22 13:29:35","0000-00-00 00:00:00","93.79.139.244","","");
INSERT INTO `wp_aiowps_login_activity` VALUES("6","1","alex","2016-08-29 19:39:56","2016-08-29 19:43:03","91.124.231.232","","");
INSERT INTO `wp_aiowps_login_activity` VALUES("7","2","Iya_seo","2016-08-29 19:43:34","0000-00-00 00:00:00","91.124.231.232","","");
INSERT INTO `wp_aiowps_login_activity` VALUES("8","1","alex","2016-08-29 20:59:18","0000-00-00 00:00:00","127.0.0.1","","");


DROP TABLE IF EXISTS `wp_aiowps_login_lockdown`;

CREATE TABLE `wp_aiowps_login_lockdown` (
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



DROP TABLE IF EXISTS `wp_aiowps_permanent_block`;

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
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

INSERT INTO `wp_comments` VALUES("1","1","Пан WordPress","","https://wordpress.org/","","2016-08-03 15:16:18","2016-08-03 12:16:18","Привіт! Це коментар.
Щоб видалити коментар, увійдіть і подивіться на коментарі до запису. Там будуть посилання для їхньої зміни або видалення.","0","post-trashed","","","0","0");


DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
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



DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_options` VALUES("1","siteurl","http://stomat","yes");
INSERT INTO `wp_options` VALUES("2","home","http://stomat","yes");
INSERT INTO `wp_options` VALUES("3","blogname","М.Р.С стоматологія","yes");
INSERT INTO `wp_options` VALUES("4","blogdescription","Швидке, ефективне та доступне вирiшення будь-яких проблем з зубами","yes");
INSERT INTO `wp_options` VALUES("5","users_can_register","0","yes");
INSERT INTO `wp_options` VALUES("6","admin_email","alex110@list.ru","yes");
INSERT INTO `wp_options` VALUES("7","start_of_week","1","yes");
INSERT INTO `wp_options` VALUES("8","use_balanceTags","0","yes");
INSERT INTO `wp_options` VALUES("9","use_smilies","1","yes");
INSERT INTO `wp_options` VALUES("10","require_name_email","1","yes");
INSERT INTO `wp_options` VALUES("11","comments_notify","1","yes");
INSERT INTO `wp_options` VALUES("12","posts_per_rss","10","yes");
INSERT INTO `wp_options` VALUES("13","rss_use_excerpt","0","yes");
INSERT INTO `wp_options` VALUES("14","mailserver_url","mail.example.com","yes");
INSERT INTO `wp_options` VALUES("15","mailserver_login","login@example.com","yes");
INSERT INTO `wp_options` VALUES("16","mailserver_pass","password","yes");
INSERT INTO `wp_options` VALUES("17","mailserver_port","110","yes");
INSERT INTO `wp_options` VALUES("18","default_category","1","yes");
INSERT INTO `wp_options` VALUES("19","default_comment_status","open","yes");
INSERT INTO `wp_options` VALUES("20","default_ping_status","open","yes");
INSERT INTO `wp_options` VALUES("21","default_pingback_flag","1","yes");
INSERT INTO `wp_options` VALUES("22","posts_per_page","10","yes");
INSERT INTO `wp_options` VALUES("23","date_format","F j, Y","yes");
INSERT INTO `wp_options` VALUES("24","time_format","H:i","yes");
INSERT INTO `wp_options` VALUES("25","links_updated_date_format","F j, Y g:i a","yes");
INSERT INTO `wp_options` VALUES("26","comment_moderation","0","yes");
INSERT INTO `wp_options` VALUES("27","moderation_notify","1","yes");
INSERT INTO `wp_options` VALUES("28","permalink_structure","/%postname%/","yes");
INSERT INTO `wp_options` VALUES("29","rewrite_rules","a:135:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"gallery/?$\";s:27:\"index.php?post_type=gallery\";s:40:\"gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:35:\"gallery/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:27:\"gallery/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=gallery&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes");
INSERT INTO `wp_options` VALUES("30","hack_file","0","yes");
INSERT INTO `wp_options` VALUES("31","blog_charset","UTF-8","yes");
INSERT INTO `wp_options` VALUES("32","moderation_keys","","no");
INSERT INTO `wp_options` VALUES("33","active_plugins","a:7:{i:0;s:27:\"abv_gallery/abv_gallery.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:22:\"cyr3lat/cyr-to-lat.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}","yes");
INSERT INTO `wp_options` VALUES("34","category_base","","yes");
INSERT INTO `wp_options` VALUES("35","ping_sites","http://rpc.pingomatic.com/","yes");
INSERT INTO `wp_options` VALUES("36","comment_max_links","2","yes");
INSERT INTO `wp_options` VALUES("37","gmt_offset","","yes");
INSERT INTO `wp_options` VALUES("38","default_email_category","1","yes");
INSERT INTO `wp_options` VALUES("39","recently_edited","a:2:{i:0;s:58:\"/home/alex/sites/stomat/wp-content/themes/stomat/style.css\";i:1;s:0:\"\";}","no");
INSERT INTO `wp_options` VALUES("40","template","stomat","yes");
INSERT INTO `wp_options` VALUES("41","stylesheet","stomat","yes");
INSERT INTO `wp_options` VALUES("42","comment_whitelist","1","yes");
INSERT INTO `wp_options` VALUES("43","blacklist_keys","","no");
INSERT INTO `wp_options` VALUES("44","comment_registration","0","yes");
INSERT INTO `wp_options` VALUES("45","html_type","text/html","yes");
INSERT INTO `wp_options` VALUES("46","use_trackback","0","yes");
INSERT INTO `wp_options` VALUES("47","default_role","subscriber","yes");
INSERT INTO `wp_options` VALUES("48","db_version","37965","yes");
INSERT INTO `wp_options` VALUES("49","uploads_use_yearmonth_folders","1","yes");
INSERT INTO `wp_options` VALUES("50","upload_path","","yes");
INSERT INTO `wp_options` VALUES("51","blog_public","1","yes");
INSERT INTO `wp_options` VALUES("52","default_link_category","2","yes");
INSERT INTO `wp_options` VALUES("53","show_on_front","page","yes");
INSERT INTO `wp_options` VALUES("54","tag_base","","yes");
INSERT INTO `wp_options` VALUES("55","show_avatars","1","yes");
INSERT INTO `wp_options` VALUES("56","avatar_rating","G","yes");
INSERT INTO `wp_options` VALUES("57","upload_url_path","","yes");
INSERT INTO `wp_options` VALUES("58","thumbnail_size_w","150","yes");
INSERT INTO `wp_options` VALUES("59","thumbnail_size_h","150","yes");
INSERT INTO `wp_options` VALUES("60","thumbnail_crop","1","yes");
INSERT INTO `wp_options` VALUES("61","medium_size_w","0","yes");
INSERT INTO `wp_options` VALUES("62","medium_size_h","0","yes");
INSERT INTO `wp_options` VALUES("63","avatar_default","mystery","yes");
INSERT INTO `wp_options` VALUES("64","large_size_w","0","yes");
INSERT INTO `wp_options` VALUES("65","large_size_h","0","yes");
INSERT INTO `wp_options` VALUES("66","image_default_link_type","","yes");
INSERT INTO `wp_options` VALUES("67","image_default_size","","yes");
INSERT INTO `wp_options` VALUES("68","image_default_align","","yes");
INSERT INTO `wp_options` VALUES("69","close_comments_for_old_posts","0","yes");
INSERT INTO `wp_options` VALUES("70","close_comments_days_old","14","yes");
INSERT INTO `wp_options` VALUES("71","thread_comments","1","yes");
INSERT INTO `wp_options` VALUES("72","thread_comments_depth","5","yes");
INSERT INTO `wp_options` VALUES("73","page_comments","0","yes");
INSERT INTO `wp_options` VALUES("74","comments_per_page","50","yes");
INSERT INTO `wp_options` VALUES("75","default_comments_page","newest","yes");
INSERT INTO `wp_options` VALUES("76","comment_order","asc","yes");
INSERT INTO `wp_options` VALUES("77","sticky_posts","a:0:{}","yes");
INSERT INTO `wp_options` VALUES("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("81","uninstall_plugins","a:1:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}","no");
INSERT INTO `wp_options` VALUES("82","timezone_string","Europe/Kiev","yes");
INSERT INTO `wp_options` VALUES("83","page_for_posts","0","yes");
INSERT INTO `wp_options` VALUES("84","page_on_front","5","yes");
INSERT INTO `wp_options` VALUES("85","default_post_format","0","yes");
INSERT INTO `wp_options` VALUES("86","link_manager_enabled","0","yes");
INSERT INTO `wp_options` VALUES("87","finished_splitting_shared_terms","1","yes");
INSERT INTO `wp_options` VALUES("88","site_icon","0","yes");
INSERT INTO `wp_options` VALUES("89","medium_large_size_w","768","yes");
INSERT INTO `wp_options` VALUES("90","medium_large_size_h","0","yes");
INSERT INTO `wp_options` VALUES("91","initial_db_version","36686","yes");
INSERT INTO `wp_options` VALUES("92","wp_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO `wp_options` VALUES("93","WPLANG","ru_RU","yes");
INSERT INTO `wp_options` VALUES("94","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("95","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("96","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("97","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("98","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("99","sidebars_widgets","a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO `wp_options` VALUES("100","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("101","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("102","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("103","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wp_options` VALUES("104","cron","a:6:{i:1472496328;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1472516178;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1472559391;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1472561128;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1472570833;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO `wp_options` VALUES("152","theme_mods_twentysixteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1470227733;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes");
INSERT INTO `wp_options` VALUES("153","current_theme","Stomat","yes");
INSERT INTO `wp_options` VALUES("154","theme_mods_stomat","a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}","yes");
INSERT INTO `wp_options` VALUES("155","theme_switched","","yes");
INSERT INTO `wp_options` VALUES("158","recently_activated","a:1:{s:27:\"wp-super-cache/wp-cache.php\";i:1472494526;}","yes");
INSERT INTO `wp_options` VALUES("159","wpseo","a:14:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"3.4.2\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";}","yes");
INSERT INTO `wp_options` VALUES("160","wpseo_permalinks","a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}","yes");
INSERT INTO `wp_options` VALUES("161","wpseo_titles","a:56:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:23:\"content-analysis-active\";b:1;s:23:\"keyword-analysis-active\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:5:\"noodp\";b:0;s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}","yes");
INSERT INTO `wp_options` VALUES("162","wpseo_social","a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"fb7c0cf9a75ccff61f3d59f593223711\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes");
INSERT INTO `wp_options` VALUES("163","wpseo_rss","a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}","yes");
INSERT INTO `wp_options` VALUES("164","wpseo_internallinks","a:10:{s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;}","yes");
INSERT INTO `wp_options` VALUES("165","wpseo_xml","a:16:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;}","yes");
INSERT INTO `wp_options` VALUES("166","wpseo_flush_rewrite","1","yes");
INSERT INTO `wp_options` VALUES("167","aiowpsec_db_version","1.8","yes");
INSERT INTO `wp_options` VALUES("168","aio_wp_security_configs","a:76:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:15:\"alex110@list.ru\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:32:\"aiowps_unlock_request_secret_key\";s:20:\"2syy9rmjvbz316wmwdmh\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"0dizaj3zquwidk7c1kln\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:15:\"alex110@list.ru\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:15:\"alex110@list.ru\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";}","yes");
INSERT INTO `wp_options` VALUES("172","ossdl_off_cdn_url","http://stomat","yes");
INSERT INTO `wp_options` VALUES("173","ossdl_off_include_dirs","wp-content,wp-includes","yes");
INSERT INTO `wp_options` VALUES("174","ossdl_off_exclude",".php","yes");
INSERT INTO `wp_options` VALUES("175","ossdl_cname","","yes");
INSERT INTO `wp_options` VALUES("177","wp_super_cache_index_detected","3","yes");
INSERT INTO `wp_options` VALUES("178","wpsupercache_start","1470228349","yes");
INSERT INTO `wp_options` VALUES("179","wpsupercache_count","0","yes");
INSERT INTO `wp_options` VALUES("185","tadv_settings","a:6:{s:9:\"toolbar_1\";s:117:\"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv\";s:9:\"toolbar_2\";s:121:\"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"options\";s:15:\"advlist,menubar\";s:7:\"plugins\";s:107:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist\";}","yes");
INSERT INTO `wp_options` VALUES("186","tadv_admin_settings","a:3:{s:7:\"options\";s:0:\"\";s:16:\"disabled_plugins\";s:0:\"\";s:16:\"disabled_editors\";s:0:\"\";}","yes");
INSERT INTO `wp_options` VALUES("187","tadv_version","4000","yes");
INSERT INTO `wp_options` VALUES("190","wpseo_sitemap_1_cache_validator","5AlAI","no");
INSERT INTO `wp_options` VALUES("191","wpseo_sitemap_page_cache_validator","5AlAQ","no");
INSERT INTO `wp_options` VALUES("192","wpseo_sitemap_revision_cache_validator","5AlAY","no");
INSERT INTO `wp_options` VALUES("200","wpseo_sitemap_nav_menu_item_cache_validator","3kLDA","no");
INSERT INTO `wp_options` VALUES("201","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes");
INSERT INTO `wp_options` VALUES("202","wpseo_sitemap_nav_menu_cache_validator","3kLDb","no");
INSERT INTO `wp_options` VALUES("203","wpseo_sitemap_8_cache_validator","52Iy3","no");
INSERT INTO `wp_options` VALUES("206","wpseo_sitemap_cache_validator_global","35C4y","no");
INSERT INTO `wp_options` VALUES("209","wpseo_sitemap_7_cache_validator","pJVJ","no");
INSERT INTO `wp_options` VALUES("213","wpseo_sitemap_post_cache_validator","5miJH","no");
INSERT INTO `wp_options` VALUES("214","wpseo_sitemap_category_cache_validator","4Bt4V","no");
INSERT INTO `wp_options` VALUES("215","category_children","a:0:{}","yes");
INSERT INTO `wp_options` VALUES("217","wpseo_sitemap_attachment_cache_validator","5rLe3","no");
INSERT INTO `wp_options` VALUES("238","wpseo_sitemap_gallery_cache_validator","4jBFx","no");
INSERT INTO `wp_options` VALUES("276","wpcf7","a:2:{s:7:\"version\";s:3:\"4.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1470302383;s:7:\"version\";s:5:\"4.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes");
INSERT INTO `wp_options` VALUES("277","wpseo_sitemap_wpcf7_contact_form_cache_validator","25it6","no");
INSERT INTO `wp_options` VALUES("336","wpseo_sitemap_test_cache_validator","4CJr6","no");
INSERT INTO `wp_options` VALUES("425","abv_gallery_owl_stetting","","yes");
INSERT INTO `wp_options` VALUES("426","abv_gallery_slick_stetting","1","yes");
INSERT INTO `wp_options` VALUES("745","wpseo_sitemap_test_image_cache_validator","3Mxu6","no");
INSERT INTO `wp_options` VALUES("753","wpseo_sitemap_med-services_cache_validator","4m7g2","no");
INSERT INTO `wp_options` VALUES("755","abv_options","a:5:{s:5:\"short\";s:2:\"60\";s:3:\"rnd\";s:1:\"9\";s:10:\"rand_count\";s:2:\"30\";s:10:\"max_stores\";s:1:\"6\";s:9:\"max_sales\";s:1:\"6\";}","yes");
INSERT INTO `wp_options` VALUES("756","wpseo_sitemap_stores_cache_validator","3W9d5","no");
INSERT INTO `wp_options` VALUES("759","wpseo_sitemap_sales_cache_validator","3WijF","no");
INSERT INTO `wp_options` VALUES("793","wpseo_sitemap_services_cache_validator","5rM9X","no");
INSERT INTO `wp_options` VALUES("846","wpseo_sitemap_127_cache_validator","5QJeZ","no");
INSERT INTO `wp_options` VALUES("847","wpseo_sitemap_128_cache_validator","uzVI","no");
INSERT INTO `wp_options` VALUES("848","wpseo_sitemap_129_cache_validator","uzWx","no");
INSERT INTO `wp_options` VALUES("849","wpseo_sitemap_130_cache_validator","5QJht","no");
INSERT INTO `wp_options` VALUES("850","wpseo_sitemap_131_cache_validator","5QJii","no");
INSERT INTO `wp_options` VALUES("851","wpseo_sitemap_132_cache_validator","5QJj7","no");
INSERT INTO `wp_options` VALUES("852","wpseo_sitemap_133_cache_validator","5QJjV","no");
INSERT INTO `wp_options` VALUES("853","wpseo_sitemap_134_cache_validator","5QJkL","no");
INSERT INTO `wp_options` VALUES("854","wpseo_sitemap_135_cache_validator","5QJlA","no");
INSERT INTO `wp_options` VALUES("877","abv_options_theme_stomat","a:2:{s:5:\"phone\";s:18:\"+(380)67 766 50 41\";s:4:\"time\";s:54:\"Пн – Сб 9:00 – 20:00 <br>без перерви\";}","yes");
INSERT INTO `wp_options` VALUES("1006","db_upgraded","","yes");
INSERT INTO `wp_options` VALUES("1109","wpsupercache_gc_time","1472491960","yes");
INSERT INTO `wp_options` VALUES("1301","_transient_timeout_users_online","1472496268","no");
INSERT INTO `wp_options` VALUES("1302","_transient_users_online","a:3:{i:0;a:3:{s:7:\"user_id\";i:2;s:13:\"last_activity\";d:1472502620;s:10:\"ip_address\";s:14:\"91.124.231.232\";}i:1;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";d:1472502897;s:10:\"ip_address\";s:13:\"93.79.139.244\";}i:2;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";d:1472505268;s:10:\"ip_address\";s:9:\"127.0.0.1\";}}","no");
INSERT INTO `wp_options` VALUES("1303","_site_transient_timeout_browser_e8c12107d072a476eb340cc45332b98b","1473093598","yes");
INSERT INTO `wp_options` VALUES("1304","_site_transient_browser_e8c12107d072a476eb340cc45332b98b","a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"52.0.2743.116\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","yes");
INSERT INTO `wp_options` VALUES("1307","wpseo_sitemap_author_cache_validator","rwbe","no");
INSERT INTO `wp_options` VALUES("1310","_transient_timeout_feed_36934a9aa50b61d4a4f39bdb7acbd3b2","1472532218","no");
INSERT INTO `wp_options` VALUES("1311","_transient_feed_36934a9aa50b61d4a4f39bdb7acbd3b2","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Український WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://wordpress.co.ua\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"Проект підтримки та українізації безкоштовного (GNU/GPL) Wordpress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Aug 2016 07:25:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"uk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://wordpress.org/?v=4.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"WordPress 4.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"http://feedproxy.google.com/~r/uawordpress/~3/RZxBBEaWWLA/wordpress-4-6.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.co.ua/posts/wordpress-4-6.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Aug 2016 07:17:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12287\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1005:\"<p>Привіт! Вітаю з виходом нової версії WordPress 4.6 , що відбувся 16 серпня 2016 року. Більшість змін у новій версії WordPress стосується внутрішньої частини. Що можна побачити очима: Покращення в редакторі постів стосуються функції автозбереження, вона стала більш стабільнішою і використовує окрім WordPress ще і можливості вашого браузера. Посилання, що ви додаєте у тексті тепер перевіряються [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wordpress-4-6.html\">WordPress 4.6</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3475:\"<p>Привіт! Вітаю з виходом нової версії WordPress 4.6 , що відбувся 16 серпня 2016 року. Більшість змін у новій версії WordPress стосується внутрішньої частини.</p>
<h3>Що можна побачити очима:</h3>
<ul>
<li>Покращення в редакторі постів стосуються функції автозбереження, вона стала більш стабільнішою і використовує окрім WordPress ще і можливості вашого браузера.</li>
<li>Посилання, що ви додаєте у тексті тепер перевіряються і підсвічуються, якщо вони ведуть \"у нікуди\" (віддають код 404).</li>
<li>Системний шрифт в адмінці. Тепер адмін-панель не використовуватиме шрифт Open Sans, що додасть трошки швидкості у роботі адмін-частини сайту.</li>
<li>Оновлення та встановлення плагінів і тем тепер без перезавантаження сторінки, функціонал взято з плагіну Shiny Updates</li>
</ul>
<h3>Що можна відчути, але не побачити )</h3>
<ul>
<li>Мультисайт тепер працюватиме швидше. Перероблено код багатьох функцій.</li>
<li>HTTP API WordPress тепер має підтримку паралельних і асинхронних запитів.</li>
<li>Переклади шаблонів і плагінів, отримані з translate.wordpress.org тепер мають більший пріоритет, ніж переклади, які йдуть безпосередньо у темі / плагіні.</li>
<li>Оновлення зовнішніх бібліотек (Masonry , imagesLoaded , MediaElement.js , TinyMCE , Backbone.js )</li>
<li>І ще багато іншого (докладніше тут https://wordpress.org/news/2016/08/pepper/ )</li>
</ul>
<p>Завантажити останню версію, як завжди, можна в розділі <a href=\"https://wordpress.co.ua/releases\">Релізи</a> та на сторінці https://wordpress.org/</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wordpress-4-6.html\">WordPress 4.6</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=RZxBBEaWWLA:b-TbuNaxzhg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=RZxBBEaWWLA:b-TbuNaxzhg:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=RZxBBEaWWLA:b-TbuNaxzhg:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=RZxBBEaWWLA:b-TbuNaxzhg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/RZxBBEaWWLA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.co.ua/posts/wordpress-4-6.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wordpress.co.ua/posts/wordpress-4-6.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:63:\"
		
		
		
		
		
				
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"wp-config.php – все, про що треба знати.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"http://feedproxy.google.com/~r/uawordpress/~3/ih4Jx1iE3lY/wp-config-php-ultimate-guide.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.co.ua/posts/wp-config-php-ultimate-guide.html#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Aug 2016 14:29:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Secure\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:13:\"wp-config.php\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"wp-content\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:14:\"безпека\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:24:\"налаштування\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:18:\"оновлення\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:6:\"хак\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12249\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1042:\"<p>Привіт, впевнений, що багато з Вас знають, що WP-config.php, це основний \"файл налаштувань\" у WordPress. Як ми зазвичай використовуємо файл wp-config.php? Коли ми інсталюємо вордпрес, у цей файл записується інформація для встановлення з’єднання з базою даних, та й забуваємо про нього майже назавжди. На мою думку - Дарма. В цій \"чарівній скриньці\" є безліч функцій і можливостей для [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wp-config-php-ultimate-guide.html\">wp-config.php &#8211; все, про що треба знати.</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:37131:\"<p>Привіт, впевнений, що багато з Вас знають, що WP-config.php, це основний \"файл налаштувань\" у WordPress.</p>
<p>Як ми зазвичай використовуємо файл wp-config.php? Коли ми інсталюємо вордпрес, у цей файл записується інформація для встановлення з’єднання з базою даних, та й забуваємо про нього майже назавжди.</p>
<p>На мою думку - Дарма. В цій \"чарівній скриньці\" є безліч функцій і можливостей для оптимізації сайту, захисту та інші приховані корисні \"хаки\" - добре продуманий конфігураційний файл допоможе зробити сайт швидшим та безпечнішим, відключити функції, які Вам не потрібні і навпаки.</p>
<p>Так давайте розглянемо, що ж за звір оцей конфігураційний файл , та як Ви можете налаштувати його, щоб Ваш сайт WordPress відповідав усім Вашим потребам.</p>
<h2>Що таке wp-config.php файл і з чим його їдять?</h2>
<p>Згідно з документацією до WordPress, конфігураційний файл є одним з найважливіших файлів для роботи/встановлення WordPress. Він знаходиться у кореневому каталозі та містить таку важливу інформацію, як дані з’єднання з базою даних (ім’я користувача, пароль і т.д.) і різні додаткові опції.</p>
<p>Але насправді <strong>WP-config.php</strong> не є частиною файлів, які поставляються з WordPress. Після завантаження WordPress Ви не знайдете цей файл серед інших. Замість нього Ви знайдете файл <strong>WP-config-sample.php</strong>.</p>
<p>Під час встановлення WordPress Ви можете перейменувати цей файл  на wp-config.php і внести \"руками\" усі опції, або ж WordPress створить цей конфігураційний файл, базуючись на інформації , яку Ви даєте йому під час інсталяції.</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/06/install2.png\" rel=\"prettyPhoto[12249]\"><img class=\"aligncenter wp-image-12251 size-full\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/06/install2.png\" alt=\"налаштування з\'єднання з базою даних WordPress\" width=\"522\" height=\"321\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/06/install2.png 522w, https://wordpress.co.ua/wp-content/uploads/2016/06/install2-300x184.png 300w\" sizes=\"(max-width: 522px) 100vw, 522px\" /></a></p>
<h2>Базовий вміст конфігураційного файлу.</h2>
<p>Розглянути вміст базового конфігураційного файлу Ви можете у цьому прикладі на <a href=\"https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php\" target=\"_blank\">GitHub</a>. Це той самий wp-config-sample.php. Файл досить добре задокументований, але давайте подивимось докладніше.</p>
<p>Багато параметрів у файлі використовують PHP константи, тобто певним \"параметрам\" ми встановлюємо певні значення , що мають силу для усього сайту. Значення не може бути зміненим під час роботи сайту, тільки якщо виправите у файлі. Загальний формат встановлення значення для параметрів -  <strong>define( \'назва константи\', \'значення\' )</strong>.</p>
<h5>Отже пройдемося по значеннях у коді wp-config.php.</h5>
<p><strong>Конфігурація бази даних</strong><br />
У перших шести налаштуваннях – все про підключення до бази даних. WordPress зберігає публікації та іншу інформацію в базі даних, тож йому потрібен доступ до цієї бази, щоб нормально функціонувати. З\'єднання з базою даних, як правило, вимагає хост, ім\'я користувача, пароль та ім\'я бази даних.</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define(&#039;DB_NAME&#039;, &#039;database_name_here&#039;); // назва БД
define(&#039;DB_USER&#039;, &#039;username_here&#039;); // користувач БД
define(&#039;DB_PASSWORD&#039;, &#039;password_here&#039;); // пароль користувача БД
define(&#039;DB_HOST&#039;, &#039;localhost&#039;); // хост/сервер БД
define(&#039;DB_CHARSET&#039;, &#039;utf8&#039;); //  набір символів, кодування тексту / з&#039;єднання
define(&#039;DB_COLLATE&#039;, &#039;&#039;); // порядок сортування символів
</pre></p>
<p>Перші чотири рядки визначають чотири параметри, які ми згадували трішки вище по тексту.</p>
<p>Набір символів і порядок сортування - слід залишити \"як є\", якщо не знаєте, що це таке (два параметри, що відповідають за кодування \"тексту\" під час роботи з базою). UTF8 - хороший вибір, він містить особливі символи і повністю підтримує українську та інші кирилічні мови.</p>
<p><strong>Salts та ключі.</strong></p>
<p>Наведені вісім налаштувань дуже важливі для безпеки Вашого WordPress. Ключі аутентифікації використовуються для перевірки авторизації, а salts використовуються для хешування/шифрування пароля. Ми вже писали про це у серії \"<a href=\"https://wordpress.co.ua/posts/bezpeka-wordpress-vycherpnyj-ohlyad-chastyna.html\" target=\"_blank\">Безепечний WordPress</a>\".</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define(&#039;AUTH_KEY&#039;, &#039;w^f{6KRGRuaHF&lt;v]un;?&amp;6]&gt;23[kA-3x|WoQ{W8SNv:!&#039;);
define(&#039;SECURE_AUTH_KEY&#039;, &#039;:)xuZ-p)a:(Ij|-8AtCt1ds4lBm=uD/y}d!FOkZi&amp;7-Y&#039;);
define(&#039;LOGGED_IN_KEY&#039;, &#039;} Oc.qOa5bbSqh(~Tiu,[`Sda!P(5%l9{5ebmT-3=_`:&#039;);
define(&#039;NONCE_KEY&#039;, &#039;C;xA&lt;Q|h=S`77L+:`mA&amp;Fx(LKG|s6$6zm:gH!+EMI0zl&#039;);
define(&#039;AUTH_SALT&#039;, &#039;f [Q-$3A4,?F{G&gt;F{ZRDKIc:Mg~Z&amp;fw2/,mA5^YTWOnL&#039;);
define(&#039;SECURE_AUTH_SALT&#039;, &#039;FT1#6+2=eX &lt;}AnrgpumT6~Hb/vS|}11+ZIx]ha.{R]{&#039;);
define(&#039;LOGGED_IN_SALT&#039;, &#039;HPW;?Iy%gnhbuzQ:&gt;r&amp;5BD]jsjc}&lt;&lt;0P*N|V$9QVK?fF&#039;);
define(&#039;NONCE_SALT&#039;, &#039;VAR!;oueIhLK{RvZ@$|f+uHc8iFbo.7O2 r~JV+k-,~]&#039;);</pre></p>
<p>Якщо є час та натхнення, можна заповнити ці поля самотужки, та нагальної потреби у цьому немає. Швидше та зручніше використовувати для цього <a href=\"https://api.wordpress.org/secret-key/1.1/salt/\" target=\"_blank\">скрипт генерації</a> секретних ключів.</p>
<p>Буде не зайвим регулярно змінювати ці ключі для посилення безпеки сайту.</p>
<p><strong>Інші налаштування.</strong></p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">$table_prefix  = &#039;h8h3_&#039;; //префікс таблиць
define(&#039;WP_DEBUG&#039;, false); // режим відладки/дебаг </pre></p>
<p>У файлі присутні ще дві опції - префікс таблиць баз даних та режим \"дебаг/відладка\". Префікс каже вордпресу, з яких символів починаються назви його таблиць у базі даних, за замовчуванням це <strong>wp_ </strong>, для прикладу це означає, що таблиця з публікаціями матиме назву <strong>wp_posts</strong>.</p>
<p>Один з найкращих способів захисту від атак – бути непередбачуваним та загадковим ))). Насправді, варто замислитись над тим, щоб використовувати параметри \"за замовчуванням\" <strong>якомога рідше</strong>, особливо якщо від них залежить безпека баз даних.</p>
<p>Тож слід спробувати використання ось таких неясних префіксів <strong>Jbh8h3dD_oj3e_</strong> , у зазначеній вище <a href=\"https://wordpress.co.ua/defence\" target=\"_blank\">серії статей</a> про безпеку ми описували, як коректно змінити ці префікси на сайті, що вже працює.</p>
<p>Друга опція вимикає/вмикає режим \"debug\" , у деактивованому стані зі значенням false повідомлення про помилки не будуть відображатись на сайті. <strong>FALSE</strong> - це стандартне значення, і встановлено на більшості \"працюючих\" сайтів , а от при розробці часто необхідно увімкнути відображення помилок, тоді встановлюємо опцію WP_DEBUG у значення <strong>TRUE</strong></p>
<h2>Кастомізуємо</h2>
<p>Конфігураційний файл є звичайним PHP-файлом окрім іншого, тож у нього можна додати будь-який коректний код PHP. Але зауважте, що цей файл є своєрідним сердцем вордпресу, тобто зміни у ньому вплинуть на роботу усього сайту!</p>
<p>У <a href=\"https://codex.wordpress.org/Editing_wp-config.php\" target=\"_blank\">WordPress Codex</a> (офіційній документації) вже описано багато \"хаків\" для цього файлу, ми спробуємо описати ще кілька.</p>
<p><strong>1. URL</strong><br />
Є дві опції, що можна прописати у файлі, і змінити адресу Вашого сайту - <strong>WP_HOME</strong> та <strong>WP_SITEURL</strong></p>
<p>Обидві опції зазвичай можна змінити через адмінку у меню \"Налаштування - загальне\":</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31.jpg\" rel=\"prettyPhoto[12249]\"><img class=\"aligncenter size-large wp-image-12254\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31-720x281.jpg\" alt=\"WP_HOME та WP_SITEURL\" width=\"720\" height=\"281\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31-720x281.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31-300x117.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31-610x238.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/06/Screenshot_31.jpg 773w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Перша опція з адресою сайту - WP_HOME, друга - WP_SITEURL. Якщо ці опції прописати у конфігураційному файлі, змінити через адмінку їх не буде можливості (на зображенні, наприклад, перша опція не доступна для редагування)</p>
<p>WP_HOME - це адреса, що люди вводять, аби потрапити на Ваш сайт, а ось WP_SITEURL - це адреса, де розміщено WordPress (іноді він може бути у піддиректорії).</p>
<p><strong>2. Зміна адрес директорій сайту</strong><br />
У конфігураційному файлі можна вказати нові адреси для \"системних\" директорій WordPress. Наприклад, можна змінити адресу директорії з плагінами, з файлами, що завантажуються через адмінку, і т.д. Це чудовий додатковий захист для сайту. Кілька прикладів:<br />
<pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">// Зміна шляху до директорії wp-content

define( &#039;WP_CONTENT_DIR&#039;, dirname(__FILE__) . &#039;/extensions&#039; );

define( &#039;WP_CONTENT_URL&#039;, &#039;http://mywebsite.com/extensions&#039; );

// Зміна шляху до директорії з плагінами

define( &#039;WP_PLUGIN_DIR&#039;, dirname(__FILE__) . &#039;/extensions/plugins&#039; );

define( &#039;WP_PLUGIN_URL&#039;, &#039;http://mywebsite.com/extensions/plugins&#039; );

define( &#039;PLUGINDIR&#039;, dirname(__FILE__) . &#039;/extensions/plugins&#039; );

// Зміна шляху до директорії з шаблонами

register_theme_directory( dirname( __FILE__ ) . &#039;/themes-dev&#039; );

// Зміна шляху до директорії із завантаженнями

define( &#039;UPLOADS&#039;, &#039;myfiles&#039; );

// Зміна шляху до директорії із must-use плагінами

define( &#039;WPMU_PLUGIN_DIR&#039;, dirname(__FILE__) . &#039;/extensions/builtin&#039; );

define( &#039;WPMU_PLUGIN_URL&#039;, &#039;http://mywebsite.com/extensions/builtin&#039; );

</pre></p>
<p>Зауважте кілька важливих моментів - для зміни адреси директорії <strong>wp-content</strong> потрібно вказати абсолютний шлях на сервері до неї та повний URL. Для папки з плагінами діє те саме правило, але додатково варто вказати константу PLUGINDIR (для сумісності із застарілим кодом).</p>
<p>З директорією для шаблонів ситуація трохи складніша. В коді WordPress \"зафіксована\" її адреса, це завжди папка з іменем <strong>themes </strong>всередині директорії <strong>wp-content</strong>. Але Ви можете додати додаткову директорію для шаблонів.</p>
<p>Шлях до папки завантажень вказується відносно кореневої папки з WordPress. У прикладі вище директорія <strong>myfiles</strong> буде розміщена у корені сайту.</p>
<p>Ще є така специфічна папка з \"обов\'язковими\" плагінами, називається <strong>mu-plugins</strong>, якщо коротко - ці плагіни завжди завантажуються на сайті раніше за інші. В останніх двох рядках прикладу вказано, як змінити їх розташування.</p>
<p><strong>3. Інший шаблон за замовчуванням</strong><br />
Зазвичай стандартним шаблоном є один з <strong>twenty-щось</strong>. У WordPress 4.0 це буде <strong>Twenty Fourteen</strong>. Якщо Ви бажаєте це змінити, пропишіть назву папки з потрібним шаблоном в опції WP_DEFAULT_THEME:<br />
<code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define(&#039;WP_DEFAULT_THEME&#039;, &#039;twentyeleven&#039;);</code></p>
<p>Ця опція досить корисна, якщо з Вашою основною темою щось трапиться - вордпрес перемкнеться автоматично на шаблон <strong>за замовчуванням.</strong></p>
<p><strong>4. Зміна назв таблиць</strong><br />
Є можливість використовувати відмінні від стандартних назви для таблиць користувачів та їх \"додаткових полів\" - <strong>users</strong> та <strong>usermeta</strong>. Це також додатковий рівень захисту, хоча якщо хтось вже отримає доступ до Вашої бази даних - це не врятує. Отже для зміни потрібно прописати:<br />
<pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;CUSTOM_USER_TABLE&#039;, $table_prefix.&#039;cossacks&#039; );

define( &#039;CUSTOM_USER_META_TABLE&#039;, $table_prefix.&#039;cossacksmeta&#039; );</pre></p>
<p>Якщо Ви все ж наважитесь на це, то перед зміною варто ознайомитись з цим <a href=\"http://codex.wordpress.org/Editing_wp-config.php#Custom_User_and_Usermeta_Tables\" target=\"_blank\">посиланням</a>.</p>
<p><strong>5. Ревізії, автозбереження та кошик</strong><br />
Є така інформація, що більшість користувачів не використовують функціонал \"ревізій\", хоча ця фішка з\'явилась ще у WordPress 2.6 . На щастя, WordPress дає можливість обмежити кількість створення ревізій чи взагалі від них відмовитись, вказавши значення для <strong>WP_POST_REVISIONS:</strong><br />
<pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">// Вимкнути ревізії

define( &#039;WP_POST_REVISIONS&#039;, false );

// Зберігати не більше трьох

define( &#039;WP_POST_REVISIONS&#039;, 3 );</pre></p>
<p>Зауважте, потрібно використовувати лише один з варіантів, ми показали два для прикладу.</p>
<p>На відміну від ревізій - функція автозбереження досить зручна, за замовчуванням публікації зберігаються раз у 60 секунд. За потреби можна змінити цю цифру:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;AUTOSAVE_INTERVAL&#039;, 120 );</code></p>
<p>При видаленні записів - вони потрапляють у \"кошик\", можна налаштувати, аби з кошику видалявся покладений у нього запис після певної кількості днів, для цього вказуємо цю кількість у параметрі EMPTY_TRASH_DAYS. Якщо ж вказати 0 (нуль), то функція кошику буде вимкнена взагалі:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;EMPTY_TRASH_DAYS&#039;, 3 );</code></p>
<div class=\"et_bloom_inline_form et_bloom_optin et_bloom_make_form_visible et_bloom_optin_5\" style=\"display: none;\">
				<style type=\"text/css\">.et_bloom .et_bloom_optin_5 .et_bloom_form_content { background-color: #ffb040 !important; } .et_bloom .et_bloom_optin_5 .zigzag_edge .et_bloom_form_content:before { background: linear-gradient(45deg, transparent 33.33%, #ffb040 33.333%, #ffb040 66.66%, transparent 66.66%), linear-gradient(-45deg, transparent 33.33%, #ffb040 33.33%, #ffb040 66.66%, transparent 66.66%) !important; background-size: 20px 40px !important; } .et_bloom .et_bloom_optin_5 .zigzag_edge.et_bloom_form_right .et_bloom_form_content:before, .et_bloom .et_bloom_optin_5 .zigzag_edge.et_bloom_form_left .et_bloom_form_content:before { background-size: 40px 20px !important; }
					@media only screen and ( max-width: 767px ) {.et_bloom .et_bloom_optin_5 .zigzag_edge.et_bloom_form_right .et_bloom_form_content:before, .et_bloom .et_bloom_optin_5 .zigzag_edge.et_bloom_form_left .et_bloom_form_content:before { background: linear-gradient(45deg, transparent 33.33%, #ffb040 33.333%, #ffb040 66.66%, transparent 66.66%), linear-gradient(-45deg, transparent 33.33%, #ffb040 33.33%, #ffb040 66.66%, transparent 66.66%) !important; background-size: 20px 40px !important; } }.et_bloom .et_bloom_optin_5 .et_bloom_form_container .et_bloom_form_header { background-color: #eaeaea !important; } .et_bloom .et_bloom_optin_5 .et_bloom_form_content button { background-color: #ffffff !important; } .et_bloom .et_bloom_optin_5 .et_bloom_form_content button { background-color: #ffffff !important; } .et_bloom .et_bloom_optin_5 h2, .et_bloom .et_bloom_optin_5 h2 span, .et_bloom .et_bloom_optin_5 h2 strong { font-family: \"Open Sans\", Helvetica, Arial, Lucida, sans-serif; }.et_bloom .et_bloom_optin_5 p, .et_bloom .et_bloom_optin_5 p span, .et_bloom .et_bloom_optin_5 p strong, .et_bloom .et_bloom_optin_5 form input, .et_bloom .et_bloom_optin_5 form button span { font-family: \"Open Sans\", Helvetica, Arial, Lucida, sans-serif; } .et_bloom .et_bloom_form_container .et_bloom_form_content .et_bloom_form_footer { padding: 20px 0 0; }</style>
				<div class=\"et_bloom_form_container  with_edge zigzag_edge et_bloom_rounded et_bloom_form_text_light et_bloom_form_bottom et_bloom_inline_2_fields\">
					
			<div class=\"et_bloom_form_container_wrapper clearfix\">
				<div class=\"et_bloom_header_outer\">
					<div class=\"et_bloom_form_header split image_right et_bloom_header_text_dark\">
						<img width=\"610\" height=\"341\" src=\"https://wordpress.co.ua/wp-content/uploads/2015/12/Screenshot_2-610x341.jpg\" class=\"et_bloom_hide_mobile et_bloom_image_no_animation et_bloom_image\" alt=\"Screenshot_2\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2015/12/Screenshot_2-610x341.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2015/12/Screenshot_2-300x168.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2015/12/Screenshot_2-720x402.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2015/12/Screenshot_2.jpg 1199w\" sizes=\"(max-width: 610px) 100vw, 610px\" />
						<div class=\"et_bloom_form_text\">
						<h2>Доступ до унікальних матеріалів!</h2><p style=\"text-align: left;\"><span style=\"color: #787778; font-family: Ubuntu, sans-serif; font-size: 16px; line-height: 24px;\">Приєднуйтесь до тих, хто дізнається ПЕРШИМ про найцікавіше зі світу Українського WordPress.</span></p>
<p style=\"text-align: left;\"><span style=\"color: #787778; font-family: Ubuntu, sans-serif; font-size: 16px; line-height: 24px;\">Отримайте три преміум-шаблони для </span><span style=\"color: #787778; font-family: Ubuntu, sans-serif; font-size: 16px; line-height: 24px;\">WordPress <strong>абсолютно БЕЗКОШТОВНО </strong>для Ваших сайтів!</span></p>
					</div>
						
					</div>
				</div>
				<div class=\"et_bloom_form_content et_bloom_2_fields et_bloom_bottom_stacked\">
					
					
					<form method=\"post\" class=\"clearfix\">
						<p class=\"et_bloom_popup_input et_bloom_subscribe_name\">
								<input placeholder=\"Ваше ім&#039;я\" maxlength=\"50\">
							</p>
						<p class=\"et_bloom_popup_input et_bloom_subscribe_email\">
							<input placeholder=\"Ваша Email адреса\">
						</p>

						<button data-optin_id=\"optin_5\" data-service=\"campaign_monitor\" data-list_id=\"60dc50e79c80f262c8a2cea6af534f78\" data-page_id=\"12249\" data-account=\"a86f556c3e3889eaa34a16ef0873f96c\" data-disable_dbl_optin=\"\" class=\"et_bloom_submit_subscription\">
							<span class=\"et_bloom_subscribe_loader\"></span>
							<span class=\"et_bloom_button_text et_bloom_button_text_color_dark\">Приєднатись і завантажити!</span>
						</button>
					</form>
					<div class=\"et_bloom_success_container\">
						<span class=\"et_bloom_success_checkmark\"></span>
					</div>
					<h2 class=\"et_bloom_success_message\">Дякуємо! Перший лист вже в дорозі...</h2>
					<div class=\"et_bloom_form_footer\">
					<p>* Жодного СПАМу! Email буде використано лише для листів про оновлення сайту та інші наші новини. Відписатись можна у будь-який час.</p>
				</div>
				</div>
			</div>
			<span class=\"et_bloom_close_button\"></span>
				</div>
			</div>
<p><strong>5. WordPress Multisite</strong><br />
Multisite - це такий режим роботи , коли в рамках однієї інсталяції WordPress працює ціла мережа сайтів. Вони використовують одні теми і плагіни, усі сайти в певному сенсі \"віртуальні\", тобто не мають своїх окремих директорій на сервері та окремих баз даних.</p>
<p>Аби почати працювати з цією функцією, потрібно додати наступне:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;WP_ALLOW_MULTISITE&#039;, true );</code></p>
<p>Після додавання цієї опції зайдіть в адмінку наново і побачите підменю \"Налаштування мережі\" у меню \"Інструменти\".</p>
<p>Ми можемо також додати таку опцію як NOBLOGREDIRECT , вона вказує адресу, куди перенаправити відвідувача, якщо він намагається відкрити один з сайтів мережі, якого не існує.</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;NOBLOGREDIRECT&#039;, &#039;http://mainwebsite.com&#039; );</code></p>
<p><strong>6. Редагування файлів</strong></p>
<p>Мабуть Ви знаєте, що через адмінку можна редагувати певні файли шаблонів та плагінів. Цю можливість можна також  вимкнути, вказавши для параметру DISALLOW_FILE_EDIT значення TRUE. А от якщо таке значення вказати для опції DISALLOW_FILE_MODS , то не тільки редагувати, ще й встановлювати та оновлювати плагіни з темами не можна буде:</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;DISALLOW_FILE_EDIT&#039;, true );

define( &#039;DISALLOW_FILE_MODS&#039;, true );
</pre></p>
<p>Зауважте, що наявність опції DISALLOW_FILE_MODS є достатнім для вимкнення редагування/оновлення/встановлення, при цьому опцію DISALLOW_FILE_EDIT вже не потрібно вказувати.</p>
<p><strong>7. Для <del>ботаніків</del> розробників</strong><br />
Для тих, хто віддає перевагу розробці, а не покемонам :) , є також кілька корисних налаштувань. Зокрема вони допомагають відловити помилки та писати кращий код. Найпопулярніша константа - це WP_DEBUG , якщо встановити для неї значення \"True\" , на екран будуть виводитись помилки та зауваження.</p>
<p>Якщо потрібно подивитись, чи є якісь проблеми зі скриптами та стилями - пропишіть наступне:<br />
<pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;SCRIPT_DEBUG&#039;, true );

define( &#039;CONCATENATE_SCRIPTS&#039;, false );</pre></p>
<p>Зазвичай WordPress об\'єднує та зменшує/мініфікує скрипти. Аби не підгружати одразу 100500 скриптів, все це об\'єднується в один, та ще і \"стискається/мініфікується\". Мініфіковані скрипти читати просто немає можливості, щось типу \"матриці\" ;) , але якщо прописати вище наведений код - ситуація виправиться на краще.</p>
<p>Якщо Ви не дуже хочете, аби помилки виводились на екран і їх бачив хто завгодно, спробуйте записувати їх у файл, це робити можна через константу WP_DEBUG_LOG:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;WP_DEBUG_LOG&#039;, true );</code></p>
<p>Якщо таке прописати, помилки мають записуватися у файл error.log в папці wp-content .</p>
<p>Вважаєте себе перфекціоністом  , тоді константа SAVEQUERIES саме для Вас. Bстановіть значення цієї константи у true і отримаєте детальну інформацію щодо SQL запитів на Вашому сайті :</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;SAVEQUERIES&#039;, true );</code></p>
<p>Після встановлення Ви можете вивести десь вміст <code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">$wpdb-&gt;queries</code> і отримати усі запити. Приблизно так:</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">global $wpdb;
echo &quot;&lt;pre&gt;&quot;;
print_r( $wpdb-&gt;queries );
echo &quot;&lt;/pre&gt;&quot;;</pre></p>
<p><strong>8. Чарівний \"пендель\"</strong><br />
Іноді WordPress потребує трохи більше оперативної пам\'яті, Ви можете бачити в таких випадках помилки на зразок <strong><em>Fatal error: Out of memory (allocated 4666) (tried to allocate 37...</em></strong>. У певних технічних середовищах можна спробувати \"відкусити\" для себе трохи більше, ніж Вам виділено. Для цього потрібно прописати потрібне значення у константи  WP_MEMORY_LIMIT та WP_MAX_MEMORY_LIMIT (остання визначає розмір пам\'яті, що використовується адмінкою):<br />
<pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">
define( &#039;WP_MEMORY_LIMIT&#039;, &#039;128M&#039; );

define( &#039;WP_MAX_MEMORY_LIMIT&#039;, &#039;256M&#039; );</pre></p>
<p><strong>9. Cron (планувальник)</strong><br />
Є така штука, Cron, яка дозволяє за розкладом запускати певні процеси. Зокрема саме завдяки їй Ваш сайт час від часу перевіряє наявність оновлень для плагінів, тем, ядра.<br />
Одна з найбільш популярних задач, для якої потрібен Cron - заплановані публікації, тобто коли Ви після написання статті встановлюєте дату публікації \"на завтра\".</p>
<p>Вбудований у вордпрес Cron іноді просто не працює )) . Коли таке трапилось, перше, що Ви можете спробувати для вирішення питання - таке налаштування:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;ALTERNATE_WP_CRON&#039;, true );</code></p>
<p>Більш правильним, на мою думку, буде вимкнути вбудований планувальник взагалі, а налаштувати його на стороны хостингу (зверніться до свого хостера):</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;DISABLE_WP_CRON&#039;, true );</code></p>
<p><strong>10. Оновлення глобальних таблиць</strong><br />
Під час оновлення ядра може викликатись функція dbDelta() , яка перевіряє, чи відповідає Ваша база усім потребам/специфікаціям нової версії вордпресу. Якщо Ваша база має дуже великі розміри, особливо таблиця з користувачами, це може принести певні проблеми. Вимкнути цю функцію можна таким параметром:</p>
<p><code data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">define( &#039;DO_NOT_UPGRADE_GLOBAL_TABLES&#039;, true );</code></p>
<p><strong>11. Вимкнення автоматичного оновлення</strong><br />
На дану тему ми вже писали у <a href=\"https://wordpress.co.ua/posts/bezpeka-wordpress-vycherpnyj-ohlyad-chastyna.html\" target=\"_blank\">статті про Безпеку</a> . Тож я не бачу особливого сенсу зупинятися на цьому докладніше. </p>
<p>На останок додам лише таку цікаву деталь, більшість з Вас про неї і не здогадувались. Для підвищення рівня безпеки сайту та захисту цього чудового файлу wp-config.php Ви можете просто перенести його у директорію на один рівень вище тої, де знаходиться Ваш сайт. При цьому немає потреби щось додатково прописувати, змінювати чи налаштовувати, WordPress самостійно буде шукати цей файл або у директорії з сайтом, або на один рівень вище.</p>
<p>Навряд, хтось з Вас зможе додати щось до цього майже вичерпного списку чудових хаків. Якщо ж я помиляюсь - чекаю на коментарі, які краще починати зі слів <strong>\"Дмитро, Привіт! )))\"</strong></p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wp-config-php-ultimate-guide.html\">wp-config.php &#8211; все, про що треба знати.</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=ih4Jx1iE3lY:NVcdIBzMisA:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=ih4Jx1iE3lY:NVcdIBzMisA:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=ih4Jx1iE3lY:NVcdIBzMisA:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=ih4Jx1iE3lY:NVcdIBzMisA:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/ih4Jx1iE3lY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.co.ua/posts/wp-config-php-ultimate-guide.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.co.ua/posts/wp-config-php-ultimate-guide.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WordPress Session #1, перший івент\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"http://feedproxy.google.com/~r/uawordpress/~3/JAkMFRDm8NE/wordpress-session-1.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.co.ua/posts/wordpress-session-1.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 08:39:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12272\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:931:\"<p>06.08 у Fabrika.space (Харків, вул. Благовіщенська, 1) відбудеться WordPress Session #1, перший івент з серії #WPSessions. Ми поговоримо про оцінку та ризики при розробці проектів на  WordPress с Микитою Юровим з TeamDev, про Elasticsearch + WordPress на практиці з Дмитром Романенко з Deco.agency. Обговоримо безпеку сайтів на WordPress з Дмитром Кондрюком з WPHost та зовнішню [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wordpress-session-1.html\">WordPress Session #1, перший івент</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2461:\"<p>06.08 у Fabrika.space (Харків, вул. Благовіщенська, 1) відбудеться <a href=\"https://fabrika.space/news/wordpress-session-1/\">WordPress Session #1</a>, перший івент з серії #WPSessions.</p>
<p>Ми поговоримо про оцінку та ризики при розробці проектів на  WordPress с Микитою Юровим з TeamDev, про Elasticsearch + WordPress на практиці з Дмитром Романенко з Deco.agency. Обговоримо безпеку сайтів на WordPress з Дмитром Кондрюком з WPHost та зовнішню і внутрішню оптимізацією сайтів під WordPress з Олександром Лисенко, спеціалістом з SEO під WP.</p>
<p>Придбати квитки на  WPSession #1 - <a href=\"https://fabrika.space/news/wordpress-session-1\">https://fabrika.space/news/wordpress-session-1</a>.</p>
<p>Вартість:</p>
<p>350 грн з 26.07 до 05.08.</p>
<p>450 грн у день проведення.</p>
<p>Промо-код для читачів блогу WordPress.Co.Ua на 20% знижку: wpsession4wordpresscoua.</p>
<p>Вводити промо-код тут: <a href=\"https://fabrika.space/news/wordpress-session-1\">https://fabrika.space/news/wordpress-session-1</a></p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/wordpress-session-1.html\">WordPress Session #1, перший івент</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=JAkMFRDm8NE:UpIKFoqNNJI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=JAkMFRDm8NE:UpIKFoqNNJI:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=JAkMFRDm8NE:UpIKFoqNNJI:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=JAkMFRDm8NE:UpIKFoqNNJI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/JAkMFRDm8NE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.co.ua/posts/wordpress-session-1.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.co.ua/posts/wordpress-session-1.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Maintenance Mode, або як прикинутись мертвим\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"http://feedproxy.google.com/~r/uawordpress/~3/pxBt0Bbf45s/maintenance-mode-how-to.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.co.ua/how-to/maintenance-mode-how-to.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 May 2016 14:34:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:19:\"Як зробити\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Coming Soon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:16:\"maintenance mode\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:18:\"Under Construction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:39:\"режим обслуговування\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:992:\"<p>Привіт, можливо я трохи перегнув з назвою статті ) , але і розробники WordPress мали, певно, схожі думки, коли називали одну з системних функцій як wp_die (про неї нижче). В будь-якому випадку, давайте ближче до справи. Maintenance Mode, режим обслуговування, Coming Soon, Under Construction та інше - такі собі режими роботи, а для відвідувача більше \"не роботи\", сайту. В [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/maintenance-mode-how-to.html\">Maintenance Mode, або як прикинутись мертвим</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8158:\"<p>Привіт, можливо я трохи перегнув з назвою статті ) , але і розробники WordPress мали, певно, схожі думки, коли називали одну з системних функцій як wp_die (про неї нижче).</p>
<p>В будь-якому випадку, давайте ближче до справи. Maintenance Mode, режим обслуговування, Coming Soon, Under Construction та інше - такі собі режими роботи, а для відвідувача більше \"не роботи\", сайту. В цьому режимі адміністратори мають до сайту доступ для виконання певних робіт (оновлення, зміна дизайну і т.д.) , а відвідувачі бачать певну \"заглушку\". Ось кілька прикладів:</p>

<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/7-5\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/7-150x150.png\" class=\"attachment-thumbnail size-thumbnail\" alt=\"7\" /></a>
<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/world-transportation-concept\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/4-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Vector flat global transportation concept illustration.\" /></a>
<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/5-4\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/5-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"5\" /></a>
<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/1-5\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/1-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"1\" /></a>
<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/3-6\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/3-150x150.png\" class=\"attachment-thumbnail size-thumbnail\" alt=\"3\" /></a>
<a href=\'https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/attachment/6-4\'><img width=\"150\" height=\"150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/6-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"6\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/6-150x150.jpg 150w, https://wordpress.co.ua/wp-content/uploads/2016/05/6-450x450.jpg 450w\" sizes=\"(max-width: 150px) 100vw, 150px\" /></a>

<p>Зараз я швиденько наведу Вам кілька способів, як робити щось із сайтом, а відвідувачам показувати певну інформацію/повідомлення про тимчасову <del>смерть</del> перерву у його роботі.</p>
<h2>Спосіб 1</h2>
<p>Створіть пустий файл з іменем <strong>.maintenance</strong> в корені сайту - і відвідувачі побачать \"білий екран\" (<del>знову хотів написати смерті</del>) з написом, що сайт тимчасово не доступний. Плюс цього варіанту у простоті:</p>
<ul>
<li>є файл, тоді сайт не працює</li>
<li>немає файлу, тоді працює</li>
</ul>
<p>Мінус цього методу, ви також не матимете доступу через браузер до функцій сайту. Корисно, коли треба завантажити нові/оновленні файли по ftp, наприклад.</p>
<h2>Спосіб 2</h2>
<p>Додайте до файлу functions.php (що у папці з ваши активним шаблоном) наступний код :</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">// Активуємо режим обслуговування )
function wpcoua_maintenance_mode(){
if(!current_user_can(&#039;edit_themes&#039;) || !is_user_logged_in()){
wp_die(&#039;&lt;h1 style=&quot;color:orange&quot;&gt;Привіт, друзі, і пробачте&lt;/h1&gt;&lt;br /&gt;Ми проводимо певні роботи на сайті і скоро повернемо його до життя!&#039;);
}
}
add_action(&#039;get_header&#039;, &#039;wpcoua_maintenance_mode&#039;);</pre></p>
<p>На виході отримаєте таку заглушку при спробі відкрити якісь сторінки сайту, якщо ви не авторизовані:</p>
<div id=\"attachment_12244\" style=\"width: 730px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1.jpg\" rel=\"prettyPhoto[12235]\"><img class=\"size-large wp-image-12244\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1-720x310.jpg\" alt=\"режим обслуговування, спосіб 2\" width=\"720\" height=\"310\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1-720x310.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1-300x129.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1-610x262.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_1.jpg 1411w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a><p class=\"wp-caption-text\">режим обслуговування, спосіб 2</p></div>
<p>Плюс - швидко і надійно )) , мінус - мінімум налаштувань і авторизуватись треба перед вмиканням режиму.</p>
<h2>Спосіб 3 і 4</h2>
<p>Ці способи аналогічні, тож я вирішив їх особливо не ділити на абзаци. Способи полягають у тому, аби встановити шаблон або плагін, що додасть Вам функціональність \"заглушки\". Такі способи добрі тим, що не потребують якихось додаткових умінь/знань, мають більше налаштувань і часто гарніший вигляд.</p>
<p>Зокрема, ми вже публікували шаблони-заглушки <a href=\"https://wordpress.co.ua/theme/undercon\" target=\"_blank\">undercon</a> та <a href=\"https://wordpress.co.ua/theme/changing-room\" target=\"_blank\">changing room</a> , а також плагін <a href=\"https://wordpress.co.ua/plugin/wp-maintenance-mode\" target=\"_blank\">WP Maintenance Mode</a> . А якщо пошукати глибше, то навіть можна знайти <a href=\"https://wordpress.co.ua/hacks/oformlennya-vlasnoji-temy-zahlushky.html\" target=\"_blank\">статтю</a>, як самому створити таку тему.</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/maintenance-mode-how-to.html\">Maintenance Mode, або як прикинутись мертвим</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=pxBt0Bbf45s:2ExWnhXYvQw:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=pxBt0Bbf45s:2ExWnhXYvQw:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=pxBt0Bbf45s:2ExWnhXYvQw:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=pxBt0Bbf45s:2ExWnhXYvQw:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/pxBt0Bbf45s\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.co.ua/how-to/maintenance-mode-how-to.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.co.ua/how-to/maintenance-mode-how-to.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Як привернути увагу відвідувачів\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://feedproxy.google.com/~r/uawordpress/~3/gX2iyK289o0/light-announcement-bar.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.co.ua/how-to/light-announcement-bar.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 May 2016 09:04:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Як зробити\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12222\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1075:\"<p>Вітаю. Зараз зробимо з Вами дуже швидко гарну панельку, що буде привертати увагу Ваших відвідувачів, додасть можливість виводити якусь цікаву інформацію (наприклад, про акції чи важливі новини) , при цьому не буде заважати користуватись сайтом. Складність - середня, тобто потрібно мати певні навички у редагуванні файлів шаблону. Приблизно так буде виглядати ця панелька , прикріплена [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/light-announcement-bar.html\">Як привернути увагу відвідувачів</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9722:\"<p>Вітаю. Зараз зробимо з Вами дуже швидко гарну панельку, що буде привертати увагу Ваших відвідувачів, додасть можливість виводити якусь цікаву інформацію (наприклад, про акції чи важливі новини) , при цьому не буде заважати користуватись сайтом. Складність - середня, тобто потрібно мати певні навички у редагуванні файлів шаблону.</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186.jpg\" rel=\"prettyPhoto[12222]\"><img class=\"aligncenter size-large wp-image-12224\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186-720x384.jpg\" alt=\"Screenshot_186\" width=\"720\" height=\"384\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186-720x384.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186-300x160.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186-610x325.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_186.jpg 933w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Приблизно так буде виглядати ця панелька , прикріплена до нижнього краю екрану. Отже перше, це html код, який потрібно додати у Ваш шаблон перед тегом <em><strong>&lt;/body&gt;</strong></em> , зазвичай цей тег можна знайти у <strong>footer.php </strong>в кореневій папці шаблону:</p>
<p><pre data-enlighter-language=\"html\" class=\"EnlighterJSRAW\">
&lt;div id=&quot;annonbar&quot;&gt;
&lt;strong&gt;Ексклюзивно на WordPress.co.ua!&lt;/strong&gt; &lt;a href=&quot;#&quot;&gt;Підпишись на новини.&lt;/a&gt;
&lt;/div&gt;
</pre></p>
<p>Оця частина <code data-enlighter-language=\"html\" class=\"EnlighterJSRAW\">&lt;strong&gt;Ексклюзивно на WordPress.co.ua!&lt;/strong&gt; &lt;a href=&quot;#&quot;&gt;Підпишись на новини.&lt;/a&gt;</code> - це і є текст , що показується на панелі, тобто Ви можете замінити на щось своє.</p>
<p>Наступний крок - прикрашаємо нашу панельку і задаємо їй положення , додаючи відповідні стилі, наприклад, у файл <strong>style.css</strong> в самому кінці, що також у кореневій папці шаблону:<br />
<pre data-enlighter-language=\"css\" class=\"EnlighterJSRAW\">#annonbar {
background: rgb(252, 70, 30);
color: #fff;
display: block;
position: fixed;
bottom: 0;
width: 100%;
padding: 10px 0px;
text-align: center;
}
#annonbar a{
color: #fff;
text-decoration:underline;
font-weight: normal;
}</pre></p>
<p>Нічого супер складного ми не прописали у стилях, лише вказали колір фону, колір тексту, невеличкі відступи для тексту всередині панелі, рівняння тексту по центру та ширину панелі , що дорівнює 100% ширини екрану, і фіксовану позицію - 0 пікселів від нижнього краю. Ви можете, наприклад, прикріпити панельку до верхнього краю, змінивши <code data-enlighter-language=\"css\" class=\"EnlighterJSRAW\">bottom: 0</code> на <code data-enlighter-language=\"css\" class=\"EnlighterJSRAW\">top: 0</code></p>
<p>Додамо ще маленький трюк - приховаємо цю панель з екранів мобільних пристроїв, адже вона може зайняти достатньо велику частину екрану, для цього у стилі ще додамо такий код:</p>
<p><pre data-enlighter-language=\"css\" class=\"EnlighterJSRAW\">@media only screen and (max-width: 767px) {
#annonbar {
display: none;
}
}</pre></p>
<p>Тим самим  ми ховаємо панель з екранів, ширина яких менша за 767 пікселів. Звісно, для ідеального вигляду можна ще підшаманити, але це вже на Ваш розсуд. Зверніть увагу, що панелька трохи \"перекриє\" нижню частину екрану, в такому випадку можна додати в стилі, наприклад, аби вона була напівпрозорою:</p>
<p><pre data-enlighter-language=\"css\" class=\"EnlighterJSRAW\">#annonbar {
opacity: 0.65;
}</pre></p>
<p>Для тих, хто не хоче морочитись з усіма цими кодами, ми зробили міні-плагін, який додасть в адмінці поле для введення тексту:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/admin-menu.jpg\" rel=\"prettyPhoto[12222]\"><img class=\"aligncenter size-large wp-image-12225\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/admin-menu-720x182.jpg\" alt=\"admin-menu\" width=\"720\" height=\"182\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/admin-menu-720x182.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/admin-menu-300x76.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/admin-menu-610x154.jpg 610w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>а також покаже цю панельку на Вашому сайті автоматично, якщо Ви додали якийсь текст у поле, описане вище:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo.jpg\" rel=\"prettyPhoto[12222]\"><img class=\"aligncenter size-large wp-image-12226\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo-720x305.jpg\" alt=\"anon-demo\" width=\"720\" height=\"305\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo-720x305.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo-300x127.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo-610x258.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/anon-demo.jpg 1473w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Роботу плагіну можна побачити на нашому демо-сайті <a href=\"http://demo.wordpress.co.ua/silk/\" target=\"_blank\">http://demo.wordpress.co.ua/silk/</a> , завантажити плагін можна за посиланням нижче усього за 7 гривень.</p>
	<form id=\"edd_purchase_12227\" class=\"edd_download_purchase_form edd_purchase_12227\" method=\"post\">

		
		<div class=\"edd_purchase_submit_wrapper\">
			<a href=\"#\" class=\"edd-add-to-cart button orange edd-submit\" data-action=\"edd_add_to_cart\" data-download-id=\"12227\" data-variable-price=\"no\" data-price-mode=single data-price=\"7.00\" ><span class=\"edd-add-to-cart-label\">7.00 UAH&nbsp;&ndash;&nbsp;У кошик</span> <span class=\"edd-loading\"><i class=\"edd-icon-spinner edd-icon-spin\"></i></span></a><input type=\"submit\" class=\"edd-add-to-cart edd-no-js button orange edd-submit\" name=\"edd_purchase_download\" value=\"7.00 UAH&nbsp;&ndash;&nbsp;У кошик\" data-action=\"edd_add_to_cart\" data-download-id=\"12227\" data-variable-price=\"no\" data-price-mode=single /><a href=\"https://wordpress.co.ua/checkout\" class=\"edd_go_to_checkout button orange edd-submit\" style=\"display:none;\">Checkout</a>
							<span class=\"edd-cart-ajax-alert\" aria-live=\"assertive\">
					<span class=\"edd-cart-added-alert\" style=\"display: none;\">
						<i class=\"edd-icon-ok\" aria-hidden=\"true\"></i> Added to cart					</span>
				</span>
															</div><!--end .edd_purchase_submit_wrapper-->

		<input type=\"hidden\" name=\"download_id\" value=\"12227\">
							<input type=\"hidden\" name=\"edd_action\" class=\"edd_action_input\" value=\"add_to_cart\">
		
		
		
	</form><!--end #edd_purchase_12227-->

<p>Зауважте, плагін не має опцій для зміни зовнішнього вигляду, лише вбудовано можливість для редагування  тексту, що виводиться на панелі за допомогою візуального редактора (показано на скріншоті).</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/light-announcement-bar.html\">Як привернути увагу відвідувачів</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=gX2iyK289o0:Ue_nqxjqFG0:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=gX2iyK289o0:Ue_nqxjqFG0:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=gX2iyK289o0:Ue_nqxjqFG0:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=gX2iyK289o0:Ue_nqxjqFG0:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/gX2iyK289o0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.co.ua/how-to/light-announcement-bar.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.co.ua/how-to/light-announcement-bar.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"Хакнули сайт? Чистимо та відновлюємо роботу.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"http://feedproxy.google.com/~r/uawordpress/~3/5oB2mbvsDy0/clear-hacked-site-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.co.ua/defence/clear-hacked-site-wordpress.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 May 2016 14:54:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Захист WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12191\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1101:\"<p>Привіт. Не дуже приємна але дуже важлива тема сьогодні буде розглянута. Нещодавно ми вже наводили невеличку статистику від авторів плагіну Wordfence, згдіно якої кожну секунду атакують близько 100 сайтів, і це лише статистика серед тих сайтів, що надсилають анонімні статистичні дані для аналізу авторам вказаного плагіну. Ще одна цікава статистика, про яку ми писали близько місяця тому - [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/defence/clear-hacked-site-wordpress.html\">Хакнули сайт? Чистимо та відновлюємо роботу.</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:36913:\"<p>Привіт. Не дуже приємна але дуже важлива тема сьогодні буде розглянута. Нещодавно ми <a href=\"https://www.facebook.com/WPHostMe/photos/a.697082973639672.1073741825.190122717669036/1228431863838111/?type=3\" target=\"_blank\" rel=\"nofollow\">вже наводили</a> невеличку статистику від авторів плагіну Wordfence, згдіно якої кожну секунду атакують близько 100 сайтів, і це лише статистика серед тих сайтів, що надсилають анонімні статистичні дані для аналізу авторам вказаного плагіну.</p>
<p>Ще одна цікава статистика, про яку ми писали близько місяця тому - у приблизно 55% випадків сайти зламують через дірки у безпеці плагінів, які використовуються на цих сайтах, і ще у приблизно 15% випадків - шляхом підбору паролів адміністратора. Таким чином, складний пароль і використання мінімальної кількості перевірених плагінів - це вже 70% успіху у боротьбі із зловмисниками.</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12196 size-medium\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o-300x181.jpg\" alt=\"12032797_1256264801054817_4934383587872111999_o\" width=\"300\" height=\"181\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o-300x181.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o-720x434.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o-610x368.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/12032797_1256264801054817_4934383587872111999_o.jpg 805w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<p>Але поки залишимо сухі цифри в стороні, і перейдемо до практики. Я по кроках викладу Вам перевірений на практиці метод очищення сайтів на WordPress, якщо вже так сталося, і його було зламано.</p>
<p><strong>Зауважте</strong>:</p>
<ul>
<li>Найпростіший спосіб відновлення сайту - відновлення з резервної копії. У такому випадку Ви з найбільшою вірогідністю не пропустите нічого, відновите роботу сайту за мінімальний час і з використанням мінімальних зусиль. Отже робіть резервну копію регулярно і зберігайте десь у безпечному місці мінімум 3 копії - після створення сайту (або будь-яка найстаріша 100% робоча копія), копія тижневої давності і копія  \"на вчора\". <a href=\"https://www.youtube.com/watch?v=nci7NuUN_aY&amp;list=PLiqpeunFx8WcKiM17no2MwaKZcPerJPlS\" target=\"_blank\" rel=\"nofollow\">Ось приклад</a>, як робити копії, якщо на хостингу використовується панель ISPmanager. Після великих/важливих змін на сайті робіть разову копію і \"кладіть\" поруч з Вашою \"найстарішою\", це дозволить у випадку чого не повертатись до самого початку.</li>
<li>Описаний далі спосіб спрацьовує у більшості випадків, з якими мені довелось зустрітись, але не є панацеєю від будь-яких типів \"вірусів/атак\".</li>
</ul>
<h3>1. Бекап / резервна копія.</h3>
<p><strong>Перше правило - завжди роби бекап.</strong></p>
<p>Навіть перед початком очищення зараженого сайту потрібно зробити бекап його поточного стану. Чому? По-перше, як в анекдоті, дивись перше правило . По-друге, під час роботи із ураженим сайтом можна помилково видалити потрібну інформацію, якої немає у більш старих Ваших резервних копіях (якщо ці копії у Вас взагалі є).</p>
<p>Багато хто вважає, що будь-який хостинг-провайдер робить бекапи їх сайтів, отже немає сенсу морочити собі голову цим. Вони праві, але десь на відсотків 30% . Не завжди є інформація, які саме копії робить провайдер, копії чого і скільки копій зберігається. Наприклад, провайдер може робити копії Ваших сайтів, але за виключенням файлів, що за розміром більші 5мб. Це досить нормальна практика, адже більшість \"скриптів\"/\"корисних файлів\" не перевищує цю межу, а різні \"відео\", архіви та інші медіа-дані, які займають багато місця - не будуть заважати провайдеру, з\'їдаючи ресурси серверу резервних копій. Провайдер може зберігати дані, наприклад, за останні 2 дні. Цього цілком достатньо аби відновити роботу сайтів клієнтів у випадку якихось  проблем на стороні провайдера, але у більшості випадків Ви помітите, що сайт зламано десь за тиждень, а інколи люди місяцями про це не здогадуються (це 100% правда з особистого досвіду роботи з сайтами клієнтів). Отже, коли Ви помітите проблеми, провайдер зможе надати Вам лише копії 2-денної давнини, але від цих копій не буде користі. Ну і останнє, є такі штуки як \"форс-мажор\" і \"закон підлості\", оці штуки зазвичай трапляються, коли Ви сподіваєтесь на допомогу \"третіх\" осіб замість того, щоб нести відповідальність за свої сайти особисто. Усі цифри я навів для прикладу і розуміння важливості бекапів.</p>
<h3>2. to Be or Not to Be</h3>
<p>Завдячуючи архітектурі WordPress нам значно легше буде видалити \"половину\" вірусів у порівнянні з іншими системами керування сайтами. Отже другий крок, який нам потрібно зробити - це видалити усі \"стандартні\" файли та папки, що ми пізніше замінимо на їх \"оригінальні/чисті\" версії. Ці файли та папки у 99% випадків не повинні відрізнятись від оригіналу. Ось приклад файлів ураженого сайту (червоним відмічено для прикладу деякі \"нестандартні\" файли/папки, яких не повинно бути):</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-full wp-image-12201\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25.jpg\" alt=\"Screenshot_25\" width=\"857\" height=\"779\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25.jpg 857w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25-300x273.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25-720x654.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_25-610x554.jpg 610w\" sizes=\"(max-width: 857px) 100vw, 857px\" /></a></p>
<p>Коричневим я відмітив те, що ми залишимо - файл <strong>wp-config.php</strong> та директорія <strong>wp-content</strong>, це єдине, що нам потрібно, все інше видаляємо. Директорію wp-content ми залишаємо, оскільки у ній містяться усі наші зображення із статей та сторінок, усі плагіни та шаблон, що ми використовуємо. У файлі wp-config.php міститься інформація про доступ до бази даних та інша конфігурація. В принципі його теж можна б було видалити, але я підкажу пізніше, чому він знадобиться.</p>
<p>Звісно, якщо у Вас в кореневій директорії сайту є якісь \"свої\" папки чи файли, наприклад, як на скріншоті файли, що підтверджують права на домен для сторонніх сервісів, їх теж можна залишити, але в цій статті я не зможу розглянути способи, як їх перевірити/почистити:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-full wp-image-12198\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22.jpg\" alt=\"Screenshot_22\" width=\"777\" height=\"63\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22.jpg 777w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22-300x24.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22-720x58.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_22-610x49.jpg 610w\" sizes=\"(max-width: 777px) 100vw, 777px\" /></a></p>
<p>Ось приклад вмісту одного з файлів, що було розміщено в кореневій директорії сайту:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12200 size-full\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24.jpg\" width=\"1042\" height=\"61\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24.jpg 1042w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24-300x18.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24-720x42.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_24-610x36.jpg 610w\" sizes=\"(max-width: 1042px) 100vw, 1042px\" /></a></p>
<p>Такий файл одразу розпізнається навіть windows-антивірусом як Backdoor: PHP/Small.M - в двох словах, цей файл надає можливість зловмиснику отримати доступ до Вашого сайту віддалено.</p>
<h3>3. Видалення , відновлення</h3>
<p><strong>Важливий момент</strong> - починаючи з цього кроку не потрібно намагатись відкривати сайт, адмінку чи якось звертатись до сайту через браузер. Може таке бути, що під час спроби відкрити будь-яку сторінку віруси автоматично знову потраплять на сайт.</p>
<p><strong>Перше</strong>, що ми робимо, видаляємо все, окрім файлу <strong>wp-config.php</strong> та директорії <strong>wp-content </strong>, як результат маємо такий вміст директорії з сайтом:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/files2.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-full wp-image-12203\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/files2.jpg\" alt=\"files2\" width=\"568\" height=\"92\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/files2.jpg 568w, https://wordpress.co.ua/wp-content/uploads/2016/05/files2-300x49.jpg 300w\" sizes=\"(max-width: 568px) 100vw, 568px\" /></a></p>
<p><strong>Друге</strong> - створюємо в корені файл <strong>.htaccess</strong>, з наступним вмістом:</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">Order Deny,Allow
Deny from all
Allow from 98.244.195.106</pre></p>
<p>Де IP адресу 98.244.195.106 потрібно замінити на Вашу, яку можна дізнатись, наприклад, відвідавши сайт <a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_26.jpg\" rel=\"prettyPhoto[12191]\">http://myip.com.ua</a> . Таким способом Ви дозволяєте доступ до Вашого сайту лише з Вашого комп\'ютера.</p>
<p><strong>Третє</strong> - беремо останню версію WordPress зі сторінки <a href=\"https://wordpress.co.ua/releases\" target=\"_blank\">релізів у нас</a> чи на офіційному <a href=\"https://uk.wordpress.org/\" target=\"_blank\" rel=\"nofollow\">сайті</a> та завантажуємо вміст директорії wordpress, що Ви знайдете в архіві на Ваш сайт, погоджуючись із заміною файлів, що на сайті існують, на нові:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12205 size-large\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27-720x309.jpg\" alt=\"ftp_27\" width=\"720\" height=\"309\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27-720x309.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27-300x129.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27-610x261.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/ftp_27.jpg 1514w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p><strong>Четверте</strong> - один з найважливіших кроків, адже стосується заміни файлів плагінів, через які в більшості ламають сайти за статистикою. Суть кроку полягає у тому, що потрібно повністю видалити усі директорії з плагінами, а замість них завантажити \"чисті\" версії. Робити це досить нудно, але без цього увесь процес може бути марним. Один із способів наступний:</p>
<ul>
<li>переходимо у папку /wp-content/plugins і по черзі в кожній директорії відкриваємо головний файл плагіну. Він зазвичай має співпадати за іменем з директорією:<a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12206 size-medium\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin-300x145.jpg\" alt=\"plugin\" width=\"300\" height=\"145\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin-300x145.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin-720x349.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin-610x296.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin-820x400.jpg 820w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin.jpg 1092w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></li>
<li>у цьому файлі ми знаходимо посилання на офіційну сторінку плагіну, куди ми і йдемо. Там беремо актуальну і чисту версію, з якої потім відновимо наш плагін:</li>
</ul>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12207 size-medium\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2-300x160.jpg\" alt=\"plugin2\" width=\"300\" height=\"160\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2-300x160.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2-720x385.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2-610x326.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/plugin2.jpg 1042w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<ul>
<li>Я, наприклад, завантажую усі архіви в якусь порожню папку, а після працюю з усіма разом. Виходить десь так:</li>
</ul>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_27.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-full wp-image-12208\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_27.jpg\" alt=\"Screenshot_27\" width=\"695\" height=\"288\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_27.jpg 695w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_27-300x124.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_27-610x253.jpg 610w\" sizes=\"(max-width: 695px) 100vw, 695px\" /></a></p>
<ul>
<li>Плагіни, що не розміщені на офіційному сайті WordPress.org, наприклад <a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/plugin3.jpg\" rel=\"prettyPhoto[12191]\">цей</a>, я зазвичай не завантажую. За потреби, можу надати пояснення і описати винятки у коментах.</li>
<li>Отже маємо набір чистих плагінів і можемо видалити усе \"лайно\", яке знаходиться на їх місці, а його там ціла купа :)</li>
</ul>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12210 size-medium\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28-300x271.jpg\" alt=\"Screenshot_28\" width=\"300\" height=\"271\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28-300x271.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28-720x649.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28-610x550.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_28.jpg 735w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<ul>
<li>Видаляємо з папки /wp-content/plugins усе, окрім файлу index.php , його ми вже замінили на чистий на одному з кроків.</li>
<li>Розпаковуємо архіви з плагінами і завантажуємо на сайт у /wp-content/plugins</li>
</ul>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-medium wp-image-12211\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30-300x96.jpg\" alt=\"Screenshot_30\" width=\"300\" height=\"96\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30-300x96.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30-720x231.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30-610x196.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_30.jpg 1476w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<p><strong>П\'яте</strong> - ми проводимо аналогічну операцію з шаблонами. Тут менше дурної роботи, адже шаблон Ви можете використовувати лише один (максимум два у випадку з дочірньою темою, але це окрема розмова). Отже потрібно зайти в директорію з шаблонами /wp-content/themes , перейменувати папку з Вашим активним (сподіваюся, Ви знаєте, який шаблон використовуєте) , а усі інші папки/файли видалити (окрім файлу index.php , його ми вже замінили на чистий на одному з кроків). Тоді замість такого:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_31.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter size-full wp-image-12212\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_31.jpg\" alt=\"Screenshot_31\" width=\"571\" height=\"247\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_31.jpg 571w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_31-300x130.jpg 300w\" sizes=\"(max-width: 571px) 100vw, 571px\" /></a></p>
<p>отримуємо чисту директорію з однією папкою, що ми перейменували (не важливо, яку нову назви папки обрано):</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_33.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12214 size-full\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_33.jpg\" width=\"572\" height=\"45\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_33.jpg 572w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_33-300x24.jpg 300w\" sizes=\"(max-width: 572px) 100vw, 572px\" /></a></p>
<p>Тепер потрібно лише перейти на сайт, де Ви завантажували шаблон, і аналогічно плагінам скопіювати чистий шаблон у /wp-content/themes. Якщо Ви використовували безкоштовний шаблон з WordPress.org , його можна знайти за назвою папки тут https://wordpress.org/themes/ , якщо купували - завантажити там, де купували. Якщо все зовсім погано :) і чистий шаблон знайти не вдається - завантажте з https://wordpress.org/themes/ будь-який , що Вам подобається, наприклад стандартний https://wordpress.org/themes/twentysixteen/. В жодному випадку <strong>не рекомендую</strong> використовувати той, що ми хвилину тому перейменували!</p>
<p><strong>Шосте</strong> - потрібно перевірити/почистити директорії, що залишились, а саме <strong>/wp-content/languages</strong> та <strong>/wp-content/uploads</strong> . Зазвичай усе всередені /wp-content/languages можна видалити. У цій папці зберігається у більшості випадків лише переклад самого \"WordPress\", якщо Ви використовуєте мовну версію відмінну від англійської. Аби цей переклад знову там з\'явився, буде достатньо наприкінці обрати в адмінці англійську мову, зберегти налаштування, а потім обрати потрібну (наприклад, українську) і знову зберегти налаштування:</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_33.jpg\"><br />
</a> <a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34.jpg\" rel=\"prettyPhoto[12191]\"><img class=\"aligncenter wp-image-12215 size-medium\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34-300x129.jpg\" alt=\"Screenshot_34\" width=\"300\" height=\"129\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34-300x129.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34-720x309.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34-610x262.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_34.jpg 1040w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<p>Найцікавіше можна знайти у <strong>/wp-content/uploads . </strong>За замовчуванням у цій папці можуть бути лише такі файли:</p>
<p><strong>Зображення</strong> - .jpg , .jpeg , .png , .gif , .ico ,<br />
<strong>Документи</strong> - .pdf , .doc , .docx , .ppt , .pptx , .pps , .ppsx , .odt , .xls , .xlsx , .psd<br />
<strong>Аудіо</strong> - .mp3 , .m4a , .ogg , .wav<br />
<strong>Відео</strong> - .mp4 , .m4v , .mov , .wmv , .avi , .mpg , .ogv , .3gp , .3g2</p>
<ul>
<li>На практиці, більшість з нас на сайт завантажують лише зображення , з цього виходить, що в даній директорії не повинно бути нічого окрім зазначених вище файлів (або тільки зображень).</li>
<li>Також у більшості випадків усі файли/зображення знаходяться у папках з структурою <strong>рік/місяць, </strong>наприклад /wp-content/uploads/2016/01 . Тож всі інші директорії теж потрібно видалити</li>
</ul>
<p>Нижче я навів приклад стрілками, які директорії та файли є зайвими у папці /wp-content/uploads/ . Звісно можуть бути виключення (наведено синіми стрілками), але раджу і їх видалити, в будь-якому випадку Ви зробили повну копію на початку, отже маєте ці папки/файли про всяк випадок. Тож потрібно пройтись по усім папкам/підпапкам і залишити тільки потрібні файли та директорії.</p>
<p><strong>Сьоме</strong> - багато вірусів завантажують саме у папку /wp-content/uploads/. Як вже зрозуміло, там можуть бути лише картинки , документи чи тому подібне. Але в жодному разі там не має бути скриптів / файлів *.php . Аби вберегти себе від того, коли ці файли все ж там з\'являться чи Ви просто пропустили при очищенні їх - створимо у папці /wp-content/uploads/ файл .htaccess з наступним вмістом:</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">&lt;Files *.php&gt;
deny from all
&lt;/Files&gt;</pre></p>
<p>Це забороняє доступ будь-кому до файлів *.php у папці /wp-content/uploads/ , такий собі додатковий рівень захисту. Плюс, якщо немає, створіть поруч файл index.php з наступним вмістом, аби через браузер не можна було напряму переглядати вміст директорії /wp-content/uploads/ :</p>
<p><pre data-enlighter-language=\"php\" class=\"EnlighterJSRAW\">&lt;?php
// Silence is golden.</pre></p>
<h3>4. wp-config.php</h3>
<p>Зараз ми відновимо / почистимо цей важливий файл в корені Вашого сайту. Зробити це не дуже складно, з чистим вордпресом Ви завантажили файл wp-config-sample.php - це і є \"незаймана\" версія wp-config.php . Нам лише потрібно перенести туди певні налаштування. Відкриваємо обидва файли для редагування, беремо дані з wp-config.php і вставляємо у wp-config-sample.php , а саме:</p>
<ul>
<li>налаштування підключення до бази даних (<a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_36.jpg\" rel=\"prettyPhoto[12191]\">клікайте</a>)</li>
<li>ключі аутентифікації (<a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_37.jpg\" rel=\"prettyPhoto[12191]\">клікайте</a>)</li>
<li>префікс таблиць (<a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/Screenshot_39.jpg\" rel=\"prettyPhoto[12191]\">клікайте</a>)</li>
<li>зберігаємо зміни.</li>
<li>видаляємо wp-config.php</li>
<li>змінюємо назву wp-config-sample.php на wp-config.php</li>
</ul>
<p><em>п.с. Перед перенесенням інформації про підключення до бази даних я б ще радив хоча б <strong>змінити пароль</strong> до бази, і тоді використовувати вже новий. Зазвичай це можна зробити через хостинг-панель Вашого хостинг-провайдера.</em></p>
<h3>5. Поїхали</h3>
<p>Цього має бути достатньо аби перейти вже до нашої адмінки. Отже відкриваємо http://vash_site/wp-admin</p>
<p>Нас чекають наступні справи та сюрпризи :</p>
<ul>
<li>перше, що треба - зайти в меню \"<strong>Користувачі\"</strong>, подивитися, чи немає зайвих адміністраторів та змінити паролі усім адміністраторам, що залишились.</li>
<li>відкривши меню \"<strong>Плагіни\"</strong>, ми <a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/pluginerror.jpg\" rel=\"prettyPhoto[12191]\">можемо побачити</a>, що певні плагіни були відключені , оскільки ми видалили їх папки. Інші плагіни залишаться на місці, їх налаштування мають зберегтися.</li>
<li>в меню \"<strong>Вигляд\"</strong> Ви <a href=\"https://wordpress.co.ua/wp-content/uploads/2016/05/themeerror.jpg\" rel=\"prettyPhoto[12191]\">можете побачити</a>, що Ваша активна тема пошкоджена (це якщо ви не знайшли її \"чистого\" варіанту) , в такому випадку просто активуйте нову, яку ми завантажили пару кроків тому.</li>
<li>Видаліть код з файлу .htaccess у корені сайту, що ми додали на початку статті для обмеження доступу</li>
<li>Зайдіть в меню \"<strong>Налаштування</strong> - <strong>Постійні</strong> <strong>посилання\"</strong> і натисніть <strong>Зберегти</strong>, це заново створить в корені сайту файл .htaccess з потрібним вмістом для відкриття сторінок з гарними url-ами.</li>
</ul>
<h3>Фініта</h3>
<p>Звісно, окрім зміни паролів доступу до адмінки і бази даних, <strong>бажано змінити</strong> паролі і на хостингу (до хостинг-панелі/FTP та інші) .</p>
<p>На виході Ви не завжди отримаєте 100% той самий сайт, що був до моменту зламу, але у вас буде сайт і буде збережено Ваш контент. В залежності від хостингу, програм та налаштувань, що Ви використовуєте - можуть бути певні специфічні нюанси на кожному кроці, на жаль, я ніяк не можу їх усі врахувати і описати. Також зауважте, якщо Ваші сайти є способом заробітку і приносять гроші, не варто  нехтувати їх захистом, це може обійтися дорожче. Тож раджу також ознайомитись з нашими статтями у розділі \"<a href=\"https://wordpress.co.ua/defence\" target=\"_blank\">Про Захист WordPress</a>\" , присвятити певний час та сили для покращення безпеки Вашого сайту або скористатися послугами сторонніх спеціалістів.</p>
<div class=\"call_to_action\"><div class=\"call_to_action_wrapper\" style=\"background-image:url(https://wordpress.co.ua/wp-content/uploads/2014/09/security-subzero-air-conditioning-sheffield-720x316.jpg);\"><div class=\"inner-padding\"><div class=\"vertical-align-middle\"><h4>Захист від підбору паролів. Все зробимо за Вас!</h4><a href=\"https://wphost.me/tech-support\" class=\"button \">Подивитись умови</a></div></div></div></div>

<p>Додатково раджу після очищення чи для профілактики вже зараз скористатися наступними плагінами:</p>
<ul>
<li>https://wordpress.org/plugins/tac/</li>
<li>https://wordpress.org/plugins/exploit-scanner/</li>
<li>https://wordpress.org/plugins/wp-antivirus-site-protection/</li>
<li>https://wordpress.org/plugins/antivirus/</li>
<li>https://wordpress.org/plugins/gotmls/</li>
<li>https://wordpress.org/plugins/wemahu/</li>
</ul>
<p>Якщо у Вас виникнуть додаткові питання - буду радий відповісти. Не забувайте підписуватись на нашу розсилку (форма нижче) та \"лайкати\" у соцмережах наші сторінки і записи :)</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/defence/clear-hacked-site-wordpress.html\">Хакнули сайт? Чистимо та відновлюємо роботу.</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=5oB2mbvsDy0:CnB5TPs_doM:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=5oB2mbvsDy0:CnB5TPs_doM:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=5oB2mbvsDy0:CnB5TPs_doM:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=5oB2mbvsDy0:CnB5TPs_doM:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/5oB2mbvsDy0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.co.ua/defence/clear-hacked-site-wordpress.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.co.ua/defence/clear-hacked-site-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"
		
		
		
		
				

		
		
				
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"Що нового Вас чекає?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"http://feedproxy.google.com/~r/uawordpress/~3/avWBB16VTIo/shho-novogo-vas-chekaye.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 May 2016 12:22:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12188\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:979:\"<p>Як завжди, ми готуємо найцікавіше для Вас. Але цього разу просимо Вас обрати - що Ви бажаєте побачити на сайті в першу чергу: - новий чудовий безкоштовний корпоративний шаблон - нову статтю про те, як привернути увагу Ваших відвідувачів яскравими повідомленнями у нижній частині сторінок сайту - покрокова інструкція, як видалити віруси на сайті та [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/shho-novogo-vas-chekaye.html\">Що нового Вас чекає?</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2008:\"<p>Як завжди, ми готуємо найцікавіше для Вас. Але цього разу просимо Вас обрати - що Ви бажаєте побачити на сайті в першу чергу:<br />
- новий чудовий безкоштовний корпоративний шаблон<br />
- нову статтю про те, як привернути увагу Ваших відвідувачів яскравими повідомленнями у нижній частині сторінок сайту<br />
- покрокова інструкція, як видалити віруси на сайті та відновити роботу, якщо його було \"хакнуто\"</p>
<p>Чекаємо на Ваші коментарі на нашій сторінці у <a href=\"https://www.facebook.com/uawordpress/posts/1138506829522402\" target=\"_blank\">фейсбук </a></p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/shho-novogo-vas-chekaye.html\">Що нового Вас чекає?</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=avWBB16VTIo:Js274Lp5IJ4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=avWBB16VTIo:Js274Lp5IJ4:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=avWBB16VTIo:Js274Lp5IJ4:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=avWBB16VTIo:Js274Lp5IJ4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/avWBB16VTIo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.co.ua/posts/shho-novogo-vas-chekaye.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:66:\"
		
		
		
		
		
				
		
		
		
		
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Створюємо Блог з нуля за 1 годину\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"http://feedproxy.google.com/~r/uawordpress/~3/MJok4w282uE/blog-za-1-godynu.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wordpress.co.ua/how-to/blog-za-1-godynu.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Apr 2016 12:22:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:19:\"Як зробити\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"блог на Wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:16:\"вордпрес\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:24:\"встановлення\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:10:\"домен\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"плагін\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:14:\"хостинг\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:12:\"шаблон\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12162\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:941:\"<p>Вітаю з чудовим днем! Сьогодні ми від А до Я пропишемо, опишемо та покажемо, як можна повністю самостійно створити чудовий та гарний блог на WordPress без якихось специфічних знань чи навичок. Звісно, перед початком Ви вже маєте розуміти \"що таке блог\" , \"що таке WordPress\" та чи потрібно це Вам ) Відверто зауважу, більша частина [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/blog-za-1-godynu.html\">Створюємо Блог з нуля за 1 годину</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:27377:\"<p>Вітаю з чудовим днем! Сьогодні ми від А до Я пропишемо, опишемо та покажемо, як можна повністю самостійно створити чудовий та гарний блог на WordPress без якихось специфічних знань чи навичок.<br />
Звісно, перед початком Ви вже маєте розуміти \"<a href=\"https://wordpress.co.ua/stvoryty-blog-na-wordpress/1-what-is-blog-is-it-usefull\" target=\"_blank\">що таке блог</a>\" , \"<a href=\"https://wordpress.co.ua/stvoryty-blog-na-wordpress/3-blog-management-system-wordpress\" target=\"_blank\">що таке WordPress</a>\" та чи потрібно це Вам )</p>
<p>Відверто зауважу, більша частина цього дійства зовсім не цікава, і іноді навіть складна для розуміння. Але саме тому ми і пишемо цю статтю!<br />
Не буду більше казати зайвого, почнемо працювати!</p>
<h2>1. Складно та нудно</h2>
<p>Як водиться у житті, завжди аби отримати щось приємне, гарне та цікаве потрібно зробити якусь дуже не \"цікаву\" роботу ))) . Наш випадок не є виключенням. Для функціонування сайту обов\'язковим моментом є те, що у Вас має бути домен , хостинг і вони мають працювати разом. Досягнення цієї мети для багатьох є бар\'єром, який взагалі відбиває бажання вести сайт. Але я запевняю, немає чого боятись, треба лише приділити близько 20 хвилин свого часу, не соромитись питати і все вийде! Отже усього три кроки і почнемо робити сайт:</p>
<ul>
<li>реєстрація доменного імені</li>
<li>замовлення хостингу</li>
<li>налашутвання для роботи першого з другим</li>
</ul>
<h5>Домен</h5>
<p>Перше, що нам потрібно для старту - доменне ім\'я / адреса , за якою буде відкриватись Ваш сайт (трохи докладніше про ці послуги ми писали <a href=\"https://wordpress.co.ua/stvoryty-blog-na-wordpress/2-i-want-create-blog#hosting\" target=\"_blank\">тут</a>). Якщо Ви вже маєте домен - просто переходьте до наступного абзацу про хостинг.</p>
<p>Доменні імена (наприклад, як наше wordpress.co.ua) - бувають платні та безкоштовні. Придбати домен можна у безлічі реєстраторів, зокрема рекомендуємо Ukrnames.com . У цій статті ми хотіли навести приклад реєстрації безкоштовного домену. Як я знаю, в Україні є лише один варіант такого імені - це домен ****.pp.ua, але не склалося :)</p>
<blockquote><p>Цікаво, що безкоштовний домен виявилось досить тяжко зареєструвати безкоштовно ) , і взагалі зареєструвати. Єдиний реєстратор, що пропонував його безкоштовно, - це nic.ua, але на момент написання статті спочатку мав проблеми взагалі з формуванням замовлення на цей домен, а через день очікування виявилось, що для підтвердження реєстрації треба ще багато чого зробити. Прийшлось переписувати пів статті ))). Пробачте за ліричний відступ, бажаємо <a href=\"https://nic.ua\" target=\"_blank\" rel=\"nofollow\">nic.ua</a> аби все виправилось скоріше!</p></blockquote>
<p>Отже повернемось на абзац вище - залишається ще один варіант безкоштовного домену для Вашого сайту, він менш \"офіційний\", але його можна використовувати безкоштовно - це домен, який надає WPhost.me під час замовлення послуги хостингу. Він буде виглядати як vashlogin<strong>.miy.link</strong></p>
<p>Думаю, це гарна альтернатива, аби почати без додаткових витрат. У випадку, коли Ви бажаєте скористатись безкоштовним варіантом домену ***<strong>.miy.link , </strong>немає потреби у якихось додаткових діях, переходьте до замовлення хостингу. Зауважте, скористатись цим доменом можна лише користуючись послугою хостингу від WPHost.me.</p>
<p>Але якщо Ваші наміри більш \"серйозні\", можете зареєструвати домен за гроші, наприклад, у доменній зоні <strong>com.ua</strong> чи <strong>com </strong>на сайтах як <em><strong>www.imena.ua</strong></em> чи <em><strong>Ukrnames.com</strong></em> (взагалі вартість доменів коливається від +-100грн і до ....... ). Сам процесс реєстрації досить простий, головне знайти потрібне і вільне для реєстрації ім\'я. Наприклад, переходите за посилання <a href=\"https://www.ukrnames.com/reg_domains.jsp\" target=\"_blank\" rel=\"nofollow\">Ukrnames.com</a> , шукаєте домен, додаєте у кошик, реєструєтесь як клієнт , вводите дані про себе як власника домену і сплачуєте :</p>
<div id=\"attachment_12172\" style=\"width: 826px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/4-1.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12172 size-full\" title=\"Замовлення доменного імені\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/ezgif-2674724828-1.gif\" alt=\"Замовлення доменного імені\" width=\"816\" height=\"469\" /></a><p class=\"wp-caption-text\">Натисніть для збільшення</p></div>
<p>З будь-яких питань, що виникнуть при замовленні, не соромтесь звертатись до служби підтримки, в цих хлопців можна легко проконсультуватись по телефону чи через онлайн-чат (номерів телефонів багато) :</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175.jpg\" rel=\"prettyPhoto[12162]\"><img class=\"aligncenter wp-image-12173 size-large\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175-720x383.jpg\" alt=\"Замовлення доменного імені\" width=\"720\" height=\"383\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175-720x383.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175-300x160.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175-610x324.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_175.jpg 1040w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<h5>Хостинг</h5>
<p>Хостинг - це технічне середовище, на якому буде сайт/WordPress працювати і розміщуватись (докладніше про ці послуги <a href=\"https://wordpress.co.ua/stvoryty-blog-na-wordpress/2-i-want-create-blog#hosting\" target=\"_blank\">тут</a>) . Послуга хостингу, в більшості, надається лише за гроші. Є різні види цієї послуги, і навіть є певні безкоштовні пропозиції (трохи детальніше описано <a href=\"http://help.wphost.me/qpk12\" target=\"_blank\">тут </a>). Але моя особиста рекомендація - скористайтесь перевіреними платними пропозиціями.</p>
<p>Отже, як \"зареєструвати\" хостинг? Скористайтесь послугами чудового хостингу для WordPress від <a href=\"https://wphost.me/hosting-wordpress-cms\" target=\"_blank\">WPHost.me</a>. У нас є чудове відео, у якому по кроках показано, як можна замовити тестовий БЕЗКОШТОВНИЙ хостинг на нашому спеціалізованому проекті WPHost.me . Ви отримаєте повноцінну послугу за обраним Вами тарифом безкоштовно на 14 днів, після чого потрібно буде сплачувати згідно вартості тарифу (або не сплачувати, якщо Ви вирішили більше не користуватись цією послугою, жодних додаткових зобов\'язань). Під час замовлення обов\'язково вкажіть Ваше доменне ім\'я, яке ми зареєстрували кілька хвилин тому , <strong>чи залиште поле для домену пустим і отримайте домен у зоні .miy.link безкоштовно</strong>:</p>
<p><iframe width=\"820\" height=\"461\" src=\"https://www.youtube.com/embed/WChbRGyp0Ro?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe></p>
<h5>Налаштування</h5>
<p>Якщо ВИ обрали безкоштовний домен у зоні miy.link - нічого робити не потрібно для поєднання цього домену і послуги хостингу, все автоматично.</p>
<p>Якщо домен буде зареєстровано за гроші, то, зазвичай, для \"поєднання\" домену і хостингу в одне ціле достатньо після реєстрації домену в його налаштуваннях вказати так звані NS-сервери вашого хостингу.</p>
<p>Вказати Ви їх можете самостійно, в більшості випадків це легко робиться на сайті реєстратора (приклад з Ukrnames <a href=\"https://support.ukrnames.com/index.php?_m=knowledgebase&amp;_a=viewarticle&amp;kbarticleid=77&amp;nav=0,4\" target=\"_blank\" rel=\"nofollow\">тут</a>), в крайньому випадку - зверніться до їх підтримки, мають допомогти. Самі адреси цих NS-серверів ви знайдете на сайті хостингу (приклад з WPHost.me <a href=\"http://help.wphost.me/EULNK\" target=\"_blank\">тут</a>).</p>
<h2>2. Вже цікавіше</h2>
<h5>Встановлення WordPress</h5>
<p>Я сподіваюсь, що вже можна Вас привітати з проходженням першого кроку. Тепер потрібно встановити WordPress, чим ми і займемося. Як Ви могли бачити з попереднього відео, на wphost.me можна просто попросити службу підтримки, і вони встановлять для Вас WordPress безкоштовно. Але для тих, хто користується іншими провайдерами, чи тих, кому цікаво пройти цю дуже НЕ складну процедуру самостійно, ми маємо ще один міні відео-урок, по аналогії з діями у якому, Ви зможете все зробити самостійно.</p>
<p>І не забувайте вмикати звук при перегляді, грає гарна музика :)</p>
<p><iframe width=\"820\" height=\"461\" src=\"https://www.youtube.com/embed/GPC0VASkhG8?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe></p>
<h2>3. Плагіни</h2>
<p>Половина шляху позаду. І, як я казав Вам, мабуть найскладніша і найменш цікава половина ) . Ви вже повинні мати доступ у адмін-панель WordPress , що зазвичай знаходиться за адресою <em>http://vash-site.com/wp-admin . </em>На кроці номер 3 ми встановимо кілька плагінів через цю панель. Я дуже рекомендую не пропустити цей крок, адже в майбутньому це значно полегшить Вам життя.</p>
<p>Плагіни - це такі додатки до Вашого сайту, які розширюють його функціональність або змінюють її. Плагіни, які є на офіційному сайті WordPress.org , встановлюються дуже просто - в адмінці потрібно перейти в меню \"<strong>Плагіни-Додати</strong>\" , ввести назву плагіну для пошуку, а після того, як знайшли - натиснути <strong>встановити</strong> і <strong>увімкнути</strong>:</p>
<div id=\"attachment_12167\" style=\"width: 1583px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/3-1.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12167 size-full\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/3-1.gif\" alt=\"Ставимо плагін для WordPress\" width=\"1573\" height=\"827\" /></a><p class=\"wp-caption-text\">Натисніть для збільшення</p></div>
<p>Отже список плагінів, які рекомендовано встановити одразу:</p>
<ul>
<li><a href=\"https://wordpress.org/plugins/cyr3lat/\" target=\"_blank\" rel=\"nofollow\">https://wordpress.org/plugins/cyr3lat/</a> для автоматичного формування більш коректних адрес ваших сторінок на сайті латинськими літерами, вводьте в пошуку <strong>Cyr to Lat enhanced</strong></li>
<li><a href=\"https://wordpress.org/plugins/antispam-bee/\" target=\"_blank\" rel=\"nofollow\">https://wordpress.org/plugins/antispam-bee/</a> для захисту від СПАМу у коментарях, вводьте в пошуку <strong>antispam bee</strong></li>
<li><a href=\"https://wordpress.org/plugins/wp-fastest-cache/\" target=\"_blank\" rel=\"nofollow\">https://wordpress.org/plugins/wp-fastest-cache/</a> для більш швидкого завантаження Ваших сторінок, вводьте в пошуку <strong>wp fastest cache</strong></li>
<li><a href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\" rel=\"nofollow\">https://wordpress.org/plugins/wordpress-seo/</a> для СЕО оптимізації (не обов\'язковий), вводьте в пошуку <strong>yoast seo</strong></li>
</ul>
<p>Після встановлення потрібно провести невеличке налаштування кожного з плагінів (окрім першого, він працює \"з коробки\"). Сьогодні ми не будемо зупинятись на цьому, але у найближчих випусках докладно опишемо роботу з кожним з трьох ;) . Скажу лише, що без цього додаткового налаштування робота сайту не припиниться.</p>
<p>Далі за Вашим бажанням Ви можете додавати/видаляти різноманітні плагіни, якщо є потреба. Зокрема ми нещодавно зробили кілька цікавих оглядів гарних плагінів для <a href=\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html\" target=\"_blank\">слайдшоу</a>, для <a href=\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\" target=\"_blank\">контактних форм</a> та <a href=\"https://wordpress.co.ua/posts/top-5-adaptyvnyh-plaginiv-sotsialnyh-knopok-dlya-wordpress.html\" target=\"_blank\">соціальних кнопок</a>. Зверніть лише увагу, що кожен додатковий активний плагін на Вашому сайті - це додаткова потреба у ресурсах хостингу, додатковий час на завантаження сторінок ... Використовуйте тільки ті плагіни, без яких Ваш сайт не може обійтися, видаляйте ті плагіни, які не використовуються (не тільки вимикайте, а й видаляйте вимкнені).</p>
<h2>4. Шаблон</h2>
<p>Шаблон, тема, дизайн - можна різними словами описувати це... В будь-якому випадку, це певний набір файлів, що змінює вигляд Вашого сайту, а іноді і додає якоїсь певної функціональності. Шаблонів багато, і безкоштовні, і платні, і дешеві, і досить дорогі. Особиста рекомендація - починайте з шаблону, що можна завантажити безкоштовно і з перевірених ресурсів. Окрім <a href=\"https://wordpress.co.ua/themes\" target=\"_blank\">розділу шаблонів </a>на нашому сайті :) , я звісно раджу ще переглянути офіційний <a href=\"https://wordpress.org/themes\" target=\"_blank\" rel=\"nofollow\">https://wordpress.org/themes</a> для пошуку безкоштовних варіантів, і такі ресурси як <a href=\"http://themeforest.net/category/wordpress\" target=\"_blank\" rel=\"nofollow\">themeforest.net</a>, <a href=\"http://www.elegantthemes.com/\" target=\"_blank\" rel=\"nofollow\">elegantthemes.com</a> для платних \"преміум\" варіантів (не забувайте, що <strong>підписавшись</strong> на наші новини у формі під цією публікацією, ви отримаєте <strong>3 преміум-шаблони безкоштовно</strong>).</p>
<p>Далі ми розглянемо встановлення та налаштування нового перекладеного нами українською шаблону <a href=\"https://wordpress.co.ua/theme/silk-lite\" target=\"_blank\">Silk</a>, який чудово підійде, на мою думку, для створення якісного та гарного Блогу:</p>
<div id=\"attachment_12168\" style=\"width: 1572px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172.jpg\" rel=\"prettyPhoto[12162]\"><img class=\"size-full wp-image-12168\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172.jpg\" alt=\"елегантний шаблон від румунських колег pixelgrade.com\" width=\"1562\" height=\"713\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172.jpg 1562w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172-300x137.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172-720x329.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_172-610x278.jpg 610w\" sizes=\"(max-width: 1562px) 100vw, 1562px\" /></a><p class=\"wp-caption-text\">елегантний шаблон від румунських колег pixelgrade.com</p></div>
<p>Отже завантажити архів вже з перекладеним шаблоном можна за цим <a href=\"https://wordpress.co.ua/theme/silk-lite\" target=\"_blank\">посиланням</a>, а встановити цю тему дуже легко - оберіть архів з шаблоном, натиснувши \"Додати нову\" і після \"Завантажити\" у меню \"Вигляд - Теми\" (<a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/1-1.gif\" rel=\"prettyPhoto[12162]\">Натисніть для програвання</a>). Після завантаження тиснемо \"Активувати\". Тепер Ваш сайт вже виглядатиме інакше ) .</p>
<p>Пройдемо по більшості нюансів , які можуть бути Вам корисні та цікаві. В меню \"Вигляд - Налаштувати\" можна зробити таке:</p>
<ul>
<li>вказати назву Вашого сайту та короткий опис</li>
<li>обрати тип вигляду публікацій - в одну чи дві колонки</li>
<li>обрати чи показувати \"головне зображення\" на сторінці публікації</li>
<li>додати до копірайтів свій текст</li>
<li>трохи змінити стиль текстового лого</li>
</ul>
<div id=\"attachment_12179\" style=\"width: 639px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/5-1.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12179 size-full\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/52.gif\" alt=\"налаштування шаблону\" width=\"629\" height=\"418\" /></a><p class=\"wp-caption-text\">натисніть для збільшення</p></div>
<p>Для створення меню стандартно використовуйте пункт \"Вигляд - меню\" , або через той самий пункт \"Вигляд - Налаштувати\". Як вказано було вище, якщо Ви у верхньому меню праворуч вкажете посилання на соцмережі, біля пунктів меню з\'являться іконки цих мереж:</p>
<div id=\"attachment_12180\" style=\"width: 730px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/62.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12180 size-large\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/6-720x478.gif\" alt=\"налаштування шаблону\" width=\"720\" height=\"478\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/6-720x478.gif 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/6-300x199.gif 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/6-610x405.gif 610w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a><p class=\"wp-caption-text\">натисніть для збільшення</p></div>
<p>На прикладі вище видно, яким чином Ви обираєте, де Ваше меню буде виводитись. Ще один з моментів - це додавання віджетів, зокрема спеціального віджету, що йде у комплекті з цим шаблоном:</p>
<div id=\"attachment_12181\" style=\"width: 730px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12181 size-large\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7-720x473.gif\" alt=\"додаємо віджети на сайт\" width=\"720\" height=\"473\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7-720x473.gif 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/7-300x197.gif 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/7-610x401.gif 610w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a><p class=\"wp-caption-text\">натисніть для збільшення</p></div>
<p>Ну і мабуть останнє, чого не вистачає - опублікуємо перший запис у блозі, для цього тиснемо \"Записи - Додати\", пишемо назву та текст, обираємо категорію за потреби, додаємо фотку і вуаля :</p>
<div id=\"attachment_12182\" style=\"width: 730px\" class=\"wp-caption aligncenter\"><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8.gif\" rel=\"prettyPhoto[12162]\"><img class=\"wp-image-12182 size-large\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8-720x473.gif\" alt=\"додаємо записи\" width=\"720\" height=\"473\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8-720x473.gif 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/8-300x197.gif 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/8-610x401.gif 610w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a><p class=\"wp-caption-text\">натисніть для збільшення</p></div>
<p>Вітаю! Сподіваюсь, все було описано максимально просто та цікаво, чекаю на Ваші відгуки, критику, коментарі нижче під публікацією! Гарного дня.</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/how-to/blog-za-1-godynu.html\">Створюємо Блог з нуля за 1 годину</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=MJok4w282uE:yzp4eK2RnHs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=MJok4w282uE:yzp4eK2RnHs:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=MJok4w282uE:yzp4eK2RnHs:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=MJok4w282uE:yzp4eK2RnHs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/MJok4w282uE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.co.ua/how-to/blog-za-1-godynu.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.co.ua/how-to/blog-za-1-godynu.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:51:\"
		
		
		
		
		
				
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"5 кращих слайдшоу плагінів для WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"http://feedproxy.google.com/~r/uawordpress/~3/1ApN6LZB1Fs/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Apr 2016 14:02:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"slider\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:12:\"плагін\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:14:\"сладйер\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12148\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1109:\"<p>Мабуть ніхто не може на сьогоднішній день заперечити,  що роль зображень у публікаціях на сайті дуже важлива, якщо не сказати більше. Один з найпомітніших способів показати гарні картинки на сайті - це слайдер, слайдшоу... Це чудовий спосіб привернути увагу відвідувачів, спосіб показати роботи зі свого портфоліо чи галереї. Сьогодні розглянемо приклади плагінів, що допоможуть Вам додати [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html\">5 кращих слайдшоу плагінів для WordPress</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12593:\"<p>Мабуть ніхто не може на сьогоднішній день заперечити,  що роль зображень у публікаціях на сайті дуже важлива, якщо не сказати більше. Один з найпомітніших способів показати гарні картинки на сайті - це слайдер, слайдшоу... Це чудовий спосіб привернути увагу відвідувачів, спосіб показати роботи зі свого портфоліо чи галереї.</p>
<p>Сьогодні розглянемо приклади плагінів, що допоможуть Вам додати на сайт слайдер.</p>
<h2>1. <a href=\"https://wordpress.org/plugins/ml-slider/\" target=\"_blank\" rel=\"nofollow\">Meta Slider</a> (встановлено 600000+ разів)</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider.png\" rel=\"prettyPhoto[12148]\"><img class=\"aligncenter size-large wp-image-12150\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider-720x233.png\" alt=\"meta-slider\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider-720x233.png 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider-300x97.png 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider-610x198.png 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/meta-slider.png 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>&nbsp;</p>
<p>Плагін дуже популярний, на сайті WordPress.org міститься інформація, що його використовують на більш ніж 600 тисячах сайтів. Встановити його досить просто , має кілька типів слайдерів та різноманітні опції. Працювати з слайдами також легко, є drag-and-drop інтерфейс, можливість \"обрізати\" зображення .</p>
<p>Можна обрати такі слайдери:<br />
Flex Slider 2 - адаптивний, 2 ефекти, режим каруселі<br />
Nivo Slider - адаптивний, 16 ефектів, 4 теми/скіни<br />
Responsive Slides - адаптивний і дуже \"легкий\" (в сенсі розміру скриптів, що підключаються)<br />
Coin Slider - 4 ефекти</p>
<h2>2. <a href=\"https://wordpress.org/plugins/soliloquy-lite/\" target=\"_blank\" rel=\"nofollow\">Soliloquy</a> (встановлено 90000+ разів)</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy.png\" rel=\"prettyPhoto[12148]\"><img class=\"aligncenter size-large wp-image-12154\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy-720x233.png\" alt=\"soliloquy\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy-720x233.png 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy-300x97.png 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy-610x198.png 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/soliloquy.png 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>&nbsp;</p>
<p>Soliloquy – використовується на близько 100,000 сайтів, характеризується як найкращий адаптивний плагін слайдеру для WordPress. Soliloquy використовує кастомний тип контенту , що дозволяє створювати слайди без обмежень по кількості. Серед цікавих можливостей: швидке встановлення, функціонал drag-and-drop та багато різноманітних опцій на сторінці налаштувань. Дуже важливий момент - скрипти/стилі та інші додатки плагіну завантажуються лише разом з тією сторінкою, де слайдер використовується. Це допомагає не \"смітити\" на інших сторінках, тобто не збільшувати їх розмір і час завантаження.</p>
<h2>3. <a href=\"https://wordpress.org/plugins/smooth-slider/\" target=\"_blank\" rel=\"nofollow\">Smooth Slider</a> (встановлено 20000+ разів)</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider.png\" rel=\"prettyPhoto[12148]\"><img class=\"aligncenter size-large wp-image-12155\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider-720x233.png\" alt=\"smooth-slider\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider-720x233.png 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider-300x97.png 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider-610x198.png 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/smooth-slider.png 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>&nbsp;</p>
<p>У наступного плагіну досить багато оцінок \"на 5!\" на сайті wordpress.org. Слайдер має адаптивний дизайн , заявлено підтримку усіх браузерів, різноманітні опції, а ще можливість вивести слайдер останніх публікацій Вашого сайту. Сторінка налаштувань надає безліч опцій для зміни зовнішнього вигляду, також представлено багато вбудованих ефектів для зображень. На сайт слайдер може бути доданий через короткий код/shortcode чи тег/код для файлу шаблону.</p>
<h2>4. <a href=\"https://wordpress.org/plugins/meteor-slides/\" target=\"_blank\" rel=\"nofollow\">Meteor Slides</a> (встановлено 90000+ разів)</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides.png\" rel=\"prettyPhoto[12148]\"><img class=\"aligncenter size-large wp-image-12156\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides-720x233.png\" alt=\"meteor-slides\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides-720x233.png 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides-300x97.png 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides-610x198.png 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/meteor-slides.png 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>&nbsp;</p>
<p>Meteor Slides є ще одним представником з більш ніж 100,000 сайтів , що його використовують. Кожен слайд адаптивний та з підтримкою \"дотиків\" на мобільних пристроях. Один з небагатьох плагінів, що одночасно приємний на вигляд і зручний у використанні.</p>
<p>Слайдер підтримує більше 20 ефектів при зміні зображень і ще більше опцій на сторінці налаштувань, включаючи розмір, часові параметри, опції дизайну та стилі навігаційних елементів. На думку багатьох користувачів - це один з найпростіших і найзручніших слайдерів для використання на сайті (а тут маленький <a href=\"https://vimeo.com/16270730\" target=\"_blank\" rel=\"nofollow\">відео-огляд</a>).</p>
<h2>5. <a href=\"https://wordpress.org/plugins/slider-image/\" target=\"_blank\" rel=\"nofollow\">Huge-IT slider</a> (встановлено 100000+ разів)</h2>
<p>&nbsp;</p>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168.jpg\" rel=\"prettyPhoto[12148]\"><img class=\"aligncenter size-large wp-image-12157\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168-720x233.jpg\" alt=\"Screenshot_168\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168-610x197.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/Screenshot_168.jpg 774w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Розробники цього слайдеру вже <a href=\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\">потрапляли в наші огляди</a> зі своїм <a href=\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\">плагіном контактних форм</a> Forms. Слайдер підтримує як зображення так і відео , створювати слайдери досить просто, а працює код швидко, за допомогою функції drag and drop можна впорядковувати слайди за власним бажанням.</p>
<p>Слайдер можна додати у записи та сторінки, є код і для файлів шаблону. Відео у сладйер можна вставити з Youtube та Vimeo, а вигляд елементів керування можна змінити, обравши один з 16 готових скінів.</p>
<h4>Серед цікавих функцій можна виділити:</h4>
<ul>
<li>В слайдер можна додати безліч зображень.</li>
<li>Підтримка картинок та відео.</li>
<li>Автоматично генерує короткі коди для вставки на сайті.</li>
<li>У заголовку та описі слайдів можна вставляти посилання.</li>
<li>Є віджет зі слайдером.</li>
<li>На одній сторінці можна використовувати більше одного слайдера.</li>
<li>Пдтримка коду HTML у заголовку та описі слайдів.</li>
<li>Адаптивний дизайн.</li>
</ul>
<p>&nbsp;</p>
<h2>Який плагін краще?</h2>
<p>Зрозуміло, що в залежності від Ваших потреб та забаганок, Вам може підійти будь-який з цих плагінів, а можливо і якийсь інший, що не потрапив у наш огляд сьогодні. Якщо Ви вже використовуєте плагін для слайдшоу у себе на сайті - поділіться з нами у коментарях, будемо дуже вдячні!</p>
<p>П.С. Не забудьте підписатися на наші новини і отримати 3 преміум-шаблони безкоштовно, деталі нижче...</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html\">5 кращих слайдшоу плагінів для WordPress</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=1ApN6LZB1Fs:kyN_VfOlWMc:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=1ApN6LZB1Fs:kyN_VfOlWMc:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=1ApN6LZB1Fs:kyN_VfOlWMc:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=1ApN6LZB1Fs:kyN_VfOlWMc:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/1ApN6LZB1Fs\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.co.ua/posts/5-krashhyh-slajdshou-plaginiv-dlya-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"12 кращих плагінів контактних форм для WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"http://feedproxy.google.com/~r/uawordpress/~3/VDlAyB06-uk/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Apr 2016 16:53:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Блоґ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://wordpress.co.ua/?p=12131\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1174:\"<p>Одна з найбільш важливих функцій будь-якого веб-сайту – це можливість читача зв\'язатись з власником/адміністратором проекту просто та швидко. Зазвичай для цього потрібно скористатись контактною формою, що міститься на окремо виділеній сторінці, у сайдбарі/боковій панелі чи підвалі/футері. Не всі контактні форми однакові, кожному сайту потрібно щось своє. Отже необхідно мати простий спосіб для їх створення та [&#8230;]</p>
<p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\">12 кращих плагінів контактних форм для WordPress</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Дмитро Кондрюк\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:24924:\"<p>Одна з найбільш важливих функцій будь-якого веб-сайту – це можливість читача зв\'язатись з власником/адміністратором проекту просто та швидко. Зазвичай для цього потрібно скористатись контактною формою, що міститься на окремо виділеній сторінці, у сайдбарі/боковій панелі чи підвалі/футері.</p>
<p>Не всі контактні форми однакові, кожному сайту потрібно щось своє. Отже необхідно мати простий спосіб для їх створення та налаштування. На щастя, плагіни WordPress дають змогу легко створювати різноманітні контактні форми, розміщувати їх на своєму сайті та отримувати повідомлення від читачів.</p>
<p>У цій статті ми хочемо зробити невеликий огляд безкоштовних плагінів контактних форм, які нам найбільш сподобались, та звернути увагу на особливості кожного з них.</p>
<h2>Contact Form 7</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/1.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12133\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/1-720x233.jpg\" alt=\"1\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/1-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/1-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/1-610x197.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/1.jpg 768w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Contact Form 7 Завдяки своїй простоті є найбільш популярним плагіном, який використовують більше мільйона сайтів.<br />
Базова контактна форма, що створюється автоматично при встановленні, задовольняє потреби більшості користувачів, проте Ви маєте можливість створювати нові форми та керувати ними. Кожну форму та електронне повідомлення, що з неї надсилається, можна просто налаштувати за допомогою простої html-розмітки.</p>
<p>Підтримка Ajax , CAPTCHA та додаткова фільтрація спаму допомагають зробити цей плагін дуже потужним. Є також багато розширень до цього плагіну чи сумісних з ним, якими Ви можете скористатись, щоб додати ще більше функціональних можливостей.</p>
<p>Зокрема зверніть увагу на наступні:</p>
<ul>
<li><a href=\"https://wordpress.org/plugins/flamingo/\" target=\"_blank\" rel=\"nofollow\">Flamingo</a> від Takayuki Miyoshi - можна зберігати усі надіслані через форму дані у базі.</li>
<li><a href=\"https://wordpress.org/plugins/postman-smtp/\" target=\"_blank\" rel=\"nofollow\">Postman</a> від Jason Hendriks - чудовий плагін, який дозволяє відправляти усі листи сайт через протокол SMTP (до речі, <a href=\"http://help.wphost.me/568gE\" target=\"_blank\">тут</a> інструкція з налаштування українською).</li>
</ul>
<p><a href=\"https://wordpress.org/plugins/contact-form-7/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Jetpack Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/2.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12134\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/2-720x233.jpg\" alt=\"2\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/2-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/2-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/2-610x198.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/2.jpg 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Jetpack не є самостійним плагіном контактних форм, це \"набір плагінів\" від Automattic , що додає вашим сайтам певну схожу з блогами на WordPress.com функціональність, зокрема контактні форми. Jetpack широко використовується завдяки своїм можливостям, інтегрується з іншими плагінами, як, наприклад, Akismet.<br />
Завдяки функціоналу контактної форми Jetpack Ви можете додати форму до будь-якої статті або сторінки прямо через редактор і налаштувати її за допомогою вбудованого конструктора.</p>
<p><a href=\"https://wordpress.org/plugins/jetpack/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>PlanSo Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/3.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12135\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/3-720x233.jpg\" alt=\"3\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/3-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/3-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/3-610x198.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/3.jpg 771w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Цей конструктор форм виявився досить зручним і простим, ми зокрема використовуємо його на дейких своїх проектах. Дає можливість швидко та інтуітивно зрозуміло будувати форми із різноманітними полями. Із цікавих можливостей - створення форм з дизайном у кілька колонок, іконки для полів, можливість прикріпити файл до повідомлення, вбудований захист від СПАМу без \"капчі\", поля з випадаючими \"календарями\" , свої CSS класи та стилі для кожного поля і багато іншого.</p>
<p><iframe width=\"820\" height=\"461\" src=\"https://www.youtube.com/embed/pKlgQH5VCck?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe></p>
<p><a href=\"https://wordpress.org/plugins/planso-forms/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Fast Secure Contact Form</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/4.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12136\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/4-720x232.jpg\" alt=\"4\" width=\"720\" height=\"232\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/4-720x232.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/4-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/4-610x197.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/4.jpg 762w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Fast Secure Contact Form - дуже простий у використанні конструктор контактних форм.<br />
Підтримка Akismet і CAPTCHA зводить вірогідність отримування спаму нанівець. Та це ще не все, інтеграція з vCita дає змогу відвідувачу надіслати запит на зустріч, аби у визначений час поговорити по телефону/скайпу, Google Hangouts або через інші служби онлайн зустрічей.</p>
<p><a href=\"https://wordpress.org/plugins/si-contact-form/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Ninja Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/5.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12137\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/5-720x232.jpg\" alt=\"5\" width=\"720\" height=\"232\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/5-720x232.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/5-300x96.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/5-610x196.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/5.jpg 771w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Ninja Forms – дуже потужний drag-and-drop конструктор форм, який стирає всі обмеження щодо кількості полів, повідомлень електронної пошти, дій з формами. Ви можете зберегти поля і їх параметри для повторного використання в інших формах, а також імпортувати і експортувати форми і поля. У вашому розпорядженні чотири варіанти захисту від небажаної пошти. Також Ви можете скористатись більш ніж 40 доповненнями для розширення функціональних можливостей, як, наприклад, інтеграція із сервісами email-маркетингу.<br />
Вбудовані фільтри для перевірки введених email адрес, номерів телефонів, дат та подібного. Можливість працювати з даними, що надсилають відвідувачі - редагувати, експортувати.<br />
Звісно, такий плагін підтримує відправку даних без перезавантаження сторінки за допомогою AJAX.</p>
<p><a href=\"https://wordpress.org/plugins/ninja-forms/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Formidable Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/6.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12138\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/6-720x234.jpg\" alt=\"6\" width=\"720\" height=\"234\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/6-720x234.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/6-300x98.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/6-610x198.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/6.jpg 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Ще один представник плагінів, що являє собою drag-and-drop конструктор. Плагін має також вбудований анти-спам захист та редактор шаблонів форм. Платна Pro-версія додає на вибір додаткові поля і такі функції як \"калькулятор значень\", можливість задавати логічні умови для обробки даних та відображення даних у вигляді чартів/графіків. Серед основних функцій також:</p>
<ul>
<li>7 типів полів : текст, email, url, багаторядковий текст, radio та checkbox, випадаючий список.</li>
<li>готові шаблони та можливість створити свої.</li>
<li>візуальний редактор стилів</li>
<li>збереження даних, надісланих через форму</li>
<li>імпорт/експорт</li>
<li>короткі коди / shortcode</li>
<li>інтеграція з reCAPTCHA та Akismet</li>
<li>попередній перегляд створених форм</li>
</ul>
<p><a href=\"https://wordpress.org/plugins/formidable/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Visual Form Builder</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12139\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7-720x232.jpg\" alt=\"7\" width=\"720\" height=\"232\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/7-720x232.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/7-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/7-610x197.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/7.jpg 769w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Visual Form Builder, як інші візуальні конструктори, дозволяє створити форми без будь-якого додаткового кодування з боку власника сайту. Поля можуть бути додані у форму одним кліком, а drag-and-drop конструктор дозволяє розмістити їх у будь-якому порядку. Дані, надіслані через форму, автоматично зберігаються і можуть бути експортовані у CSV файл. Можливість прописати свої стилі CSS та різноманітні опції дизайну дозволяють максимально налаштувати форму під вигляд Вашого сайту.<br />
Pro версія додає можливість прикріпити декілька файлів до форми відвідувачам та дизайнер листів, що надсилаються.</p>
<p><a href=\"https://wordpress.org/plugins/visual-form-builder/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Pirate Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12140\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8-720x233.jpg\" alt=\"8\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/8-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/8-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/8-610x197.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/8.jpg 771w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Pirate Forms - це перероджений плагін Proper Contact Form . Форми, створені через цей плагін, можуть бути додані у публікації та сторінки за допомогою короткого коду / shortcode або через віджет. Вбудована підтримка reCAPTCHA допомагає у боротьбі зі СПАМом, є також опції для налаштування відправки листів через the SMTP. Усі дані зберігаються у базі, що можна згодом використати для аналізу.</p>
<p><a href=\"https://wordpress.org/plugins/pirate-forms/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>HUGE-IT Forms</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/9.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12141\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/9-720x235.jpg\" alt=\"9\" width=\"720\" height=\"235\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/9-720x235.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/9-300x98.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/9-610x199.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/9.jpg 768w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Huge-IT Forms - наступний приклад непоганого плагіну для створення форм контакту, які можуть бути додані на сайт через короткий код / shortcode. Підтримує капчу для захисту від СПАМу, може працювати як форма підписки на новини, включає 5 дизайнів форм, зберігає дані, додані через форму, для подальшого користування у базі сайту.</p>
<p><a href=\"https://wordpress.org/plugins/forms-contact/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Form Craft Form Builder</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/10.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12142\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/10-720x234.jpg\" alt=\"10\" width=\"720\" height=\"234\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/10-720x234.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/10-300x98.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/10-610x198.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/10.jpg 769w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Знову ж таки drag-and-drop конструктор форм, також має візуальний WYSIWYG редактор, форми досить \"легкі\" у сенсі додаткових скриптів/зображень, а також адаптивні до різних розмірів екранів. Дизайн форм може бути імпортовано/експортовано. Плагін включає 8 типів полів, включаючи HTML, валідацію введених даних, вставку форм на сайт через короткий код.</p>
<p><a href=\"https://wordpress.org/plugins/formcraft-form-builder/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Contact Form Clean and Simple</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/11.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12143\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/11-720x230.jpg\" alt=\"11\" width=\"720\" height=\"230\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/11-720x230.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/11-300x96.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/11-610x195.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/11.jpg 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Contact Form Clean and Simple - як видно з назви, однією з переваг цього плагіну є \"простота та легкість\".</p>
<p>Плагін потребує мінімальної кількості налаштувань, підтримує reCAPTCHA, Akismet та перевіряє введені користувачами дані аби убезпечити Вас і Ваш сайт. Плагін використовує Twitter Bootstrap класи стилів, тож якщо Ваш шаблон також побудований на цьому фреймворку - форма буде виглядати на сайті \"як рідна\" ) .</p>
<p>Звісно, як інші сучасні плагіни, підтримує відправку даних за допомогою Ajax, а форму можна вставити на сторінки і публікації через короткий код.</p>
<p><a href=\"https://wordpress.org/plugins/clean-and-simple-contact-form-by-meg-nicholas/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Simple Basic Contact Form</h2>
<p><a href=\"https://wordpress.co.ua/wp-content/uploads/2016/04/12.jpg\" rel=\"prettyPhoto[12131]\"><img class=\"aligncenter size-large wp-image-12144\" src=\"https://wordpress.co.ua/wp-content/uploads/2016/04/12-720x233.jpg\" alt=\"12\" width=\"720\" height=\"233\" srcset=\"https://wordpress.co.ua/wp-content/uploads/2016/04/12-720x233.jpg 720w, https://wordpress.co.ua/wp-content/uploads/2016/04/12-300x97.jpg 300w, https://wordpress.co.ua/wp-content/uploads/2016/04/12-610x198.jpg 610w, https://wordpress.co.ua/wp-content/uploads/2016/04/12.jpg 772w\" sizes=\"(max-width: 720px) 100vw, 720px\" /></a></p>
<p>Simple Basic Contact Form – останній у нашому списку, але не останній за якістю. Це плагін контактної форми без надмірностей та викрутасів, отже його легко встановити та налаштувати.<br />
Не зважаючи на мінімалізм,  він дуже гнучкий. Використовуючи шорткоди або теги шаблону Ви можете відобразити форму в будь-якому місці. Тут є вбудований захист від спаму через CAPTCHA та міні-firewall, вміст листів, що надходять після відправки форми, повністю налаштовується через сторінку Опцій та при потребі можна прописати власні стилі CSS.</p>
<p><a href=\"https://wordpress.org/plugins/simple-basic-contact-form/\" target=\"_blank\" rel=\"nofollow\">Завантажити плагін</a></p>
<h2>Фінал</h2>
<p>Проста у використанні форма допомагає Вам підтримувати зв’язок з відвідувачами Вашого сайту. У наведеному вище списку ми поділились з Вами інформацією про достатньо широкий вибір плагінів для контактних форм. Тепер Ви маєте можливість підібрати для свого сайту плагін, який задовольнить саме Ваші потреби. Встановивши один із них Вам буде легше почути відвідувачів свого сайту.<br />
Якщо Ви вже користуєтесь одним з цих плагінів на вашому сайті, ми <strong>будемо вдячні за коментар</strong> про Ваш досвід роботи з ним! Звичайно, є ще багато плагінів контактних форм, і не всі вони висвітлені в нашій статті. Пишіть нам Ваші думки та коментарі щодо тих плагінів контактних форм, які до вподоби саме Вам.</p>
<p>Не прощаємося, а кажемо - до побачення!</p>
<span class=\"et_bloom_bottom_trigger\"></span><p>Оригінал статті <a rel=\"nofollow\" href=\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\">12 кращих плагінів контактних форм для WordPress</a> взято з найкращого в мережі сайту про WordPress <a rel=\"nofollow\" href=\"https://wordpress.co.ua\">Український WordPress</a>.</p>
<div class=\"feedflare\">
<a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=VDlAyB06-uk:rwZZrnRuh9Y:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=VDlAyB06-uk:rwZZrnRuh9Y:-BTjWOF_DHI\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?i=VDlAyB06-uk:rwZZrnRuh9Y:-BTjWOF_DHI\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/uawordpress?a=VDlAyB06-uk:rwZZrnRuh9Y:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/uawordpress?d=qj6IDK7rITs\" border=\"0\"></img></a>
</div><img src=\"http://feeds.feedburner.com/~r/uawordpress/~4/VDlAyB06-uk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.co.ua/posts/12-krashhyh-plaginiv-kontaktnyh-form-dlya-wordpress.html\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:39:\"http://feeds.feedburner.com/uawordpress\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:3:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:11:\"uawordpress\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"uawordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"rlusb4beqlnQuYT5iHNWIFJjj8c\";s:13:\"last-modified\";s:29:\"Mon, 29 Aug 2016 16:38:58 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 29 Aug 2016 16:43:47 GMT\";s:7:\"expires\";s:29:\"Mon, 29 Aug 2016 16:43:47 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}s:5:\"build\";s:14:\"20160814153117\";}","no");
INSERT INTO `wp_options` VALUES("1312","_transient_timeout_feed_mod_36934a9aa50b61d4a4f39bdb7acbd3b2","1472532218","no");
INSERT INTO `wp_options` VALUES("1313","_transient_feed_mod_36934a9aa50b61d4a4f39bdb7acbd3b2","1472489018","no");
INSERT INTO `wp_options` VALUES("1314","_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9","1472532222","no");
INSERT INTO `wp_options` VALUES("1315","_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
	
	
	
	




















































\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WP Mobile Apps: WordPress for iOS: Version 6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://apps.wordpress.com/?p=3568\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://apps.wordpress.com/2016/08/26/wordpress-for-ios-version-6-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4716:\"<p>Hi there, WordPress users! <a href=\"https://itunes.apple.com/us/app/wordpress/id335703880?mt=8&uo=6&at=&ct=\">Version 6.4 of the WordPress for iOS app</a> is now available in the App Store.</p>
<h1>What&#8217;s New:</h1>
<p><strong>iPad Keyboard Shortcuts.</strong> Press down the command key on your external keyboard to see a list of available shortcuts in the main screen and in the post editor.</p>

<a href=\"https://apps.wordpress.com/img_0007/\"><img width=\"300\" height=\"225\" src=\"https://apps.files.wordpress.com/2016/08/img_0007.png?w=300&h=225\" class=\"attachment-medium size-medium\" alt=\"Hold down the command key, and see the available shortcuts.\" /></a>
<a href=\"https://apps.wordpress.com/img_0006/\"><img width=\"300\" height=\"225\" src=\"https://apps.files.wordpress.com/2016/08/img_0006.png?w=300&h=225\" class=\"attachment-medium size-medium\" alt=\"There are many shortcuts you can use in the post editor, too.\" /></a>

<p><strong>Share Media.</strong> Our sharing extension now supports media, too!</p>

<a href=\"https://apps.wordpress.com/img_2385/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2385.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"Select any image and tap on the WordPress icon.\" /></a>
<a href=\"https://apps.wordpress.com/img_2386/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2386.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"Add a message and share it to your blog!\" /></a>

<p><strong>People Management.</strong> You can now manage your site&#8217;s users and roles using your mobile device.</p>

<a href=\"https://apps.wordpress.com/img_2392/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2392.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"A new people management section is available.\" /></a>
<a href=\"https://apps.wordpress.com/img_2393/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2393.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"See a list of your blog\'s users and their roles.\" /></a>
<a href=\"https://apps.wordpress.com/img_2394/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2394.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"Tap on any person to see their details.\" /></a>

<p><strong>Search in the Reader.</strong> The Reader now has search capability and autocompletes suggestions.</p>

<a href=\"https://apps.wordpress.com/img_2390/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_23901.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"Tap the magnification icon on the top right corner.\" /></a>
<a href=\"https://apps.wordpress.com/img_2389/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/08/img_2389.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"Searching is easier than ever.\" /></a>

<p><strong>Improved Gestures.</strong> Full screen image previews can be dismissed with a swanky flick/toss gesture.</p>
<p><strong>Bugs Squashed.</strong> A new homemade bug spray formula has allowed us to squash <a href=\"https://github.com/wordpress-mobile/WordPress-iOS/issues?q=is%3Aclosed+is%3Aissue+milestone%3A6.4+label%3A%22%5BType%5D+Bug%22\">many uninvited guests</a>.</p>
<p><strong>And much more! </strong>You can see the full list of changes <a href=\"https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue%20is%3Aclosed%20milestone%3A6.4\">here</a>.</p>
<h1>Thank You</h1>
<p>Thanks to all of the contributors who worked on this release:<br />
<a href=\"https://github.com/aerych\">@aerych</a>, <a href=\"https://github.com/astralbodies\">@astralbodies</a>, <a href=\"https://github.com/claudiosmweb\">@claudiosmweb</a>, <a href=\"https://github.com/diegoreymendez\">@diegoreymendez</a>, <a href=\"https://github.com/frosty\">@frosty</a>, <a href=\"https://github.com/jleandroperez\">@jleandroperez</a>, <a href=\"https://github.com/koke\">@koke</a>, <a href=\"https://github.com/kurzee\">@kurzee</a>, <a href=\"https://github.com/kwonye\">@kwonye</a>, <a href=\"https://github.com/oguzkocer\">@oguzkocer</a>, <a href=\"https://github.com/sendhil\">@sendhil</a>, <a href=\"https://github.com/SergioEstevao\">@SergioEstevao</a>.</p>
<p>You can track the development progress for the next update by visiting <a href=\"https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue+milestone%3A6.5+\" target=\"_blank\">our 6.5 milestone on GitHub</a>. Until next time!</p><img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3568&subd=apps&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 26 Aug 2016 12:27:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"diegoreymendez\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WP Mobile Apps: WordPress for Android: Version 5.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://apps.wordpress.com/?p=3535\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://apps.wordpress.com/2016/08/26/wordpress-for-android-version-5-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2814:\"<p>Hello WordPress users! <a href=\"https://play.google.com/store/apps/details?id=org.wordpress.android\" target=\"_blank\">Version 5.7 of the WordPress for Android app</a> is now available in the Google Play Store.</p>
<h1>New &#8220;Plans&#8221; section in My Site</h1>
<p>Starting with 5.7, you can see your current WordPress.com plan and learn more about the benefits we offer in other plans.</p>
<p><img class=\"aligncenter wp-image-3532\" src=\"https://apps.files.wordpress.com/2016/08/screenshot-2016-08-02_15-46-12-755.png?w=600\" alt=\"screenshot-2016-08-02_15.46.12.755\" /></p>
<h1>Manage your followers and viewers from the &#8220;People Management&#8221; screen</h1>
<p>You&#8217;re now able to use the app to invite new Administrators, Editors, Authors or Contributors to your site, or remove unwanted followers.</p>
<p><img class=\"aligncenter wp-image-3533\" src=\"https://apps.files.wordpress.com/2016/08/screenshot-2016-08-02_15-51-08-242.png?w=600\" alt=\"screenshot-2016-08-02_15.51.08.242\" /></p>
<h1 id=\"other-changes\">Other Changes</h1>
<p>Version 5.7 also comes with a few other changes and fixes:</p>
<ul>
<li>Reader tweaks in the Post Detail screen for tablets.</li>
<li>Keeps the &#8220;View Site&#8221; link visible for newly created users.</li>
<li>Fixes a rare crash when creating a new account.</li>
</ul>
<p>You can track our development progress for the next release by visiting <a href=\"https://github.com/wordpress-mobile/WordPress-Android/milestones/5.8\">our 5.8 milestone on GitHub</a>.</p>
<h1>Beta</h1>
<p>Do you like keeping up with what’s new in the app? Do you enjoy testing new stuff before anyone else? Our testers have access to beta versions with updates shipped directly through Google Play. The beta versions may have new features, new fixes — and possibly new bugs! Testers make it possible for us to improve the overall app experience, and offer us invaluable development feedback.</p>
<p>Want to become a tester? <a href=\"https://play.google.com/apps/testing/org.wordpress.android\">Opt-in</a>!</p>
<h1>Thank you</h1>
<p>Thanks to our GitHub contributors: <a href=\"https://github.com/0nko\">@0nko</a>, <a href=\"https://github.com/aforcier\">@aforcier</a>, <a href=\"https://github.com/hypest\">@hypest</a>, <a href=\"https://github.com/karambir252\">@karambir252</a>, <a href=\"https://github.com/khaykov\">@khaykov</a>, <a href=\"https://github.com/kwonye\">@kwonye</a>, <a href=\"https://github.com/maxme\">@maxme</a>, <a href=\"https://github.com/mzorz\">@mzorz</a>, <a href=\"https://github.com/nbradbury\">@nbradbury</a>, <a href=\"https://github.com/oguzkocer\">@oguzkocer</a>, and <a href=\"https://github.com/theck13\">@theck13</a>.</p><img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3535&subd=apps&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 26 Aug 2016 11:33:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Maxime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"HeroPress: A Minority Amongst Minorities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1241\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://heropress.com/essays/minority-amongst-minorities/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:25589:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Time passed, and I fell more and more in love with WordPress.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: A Minority Amongst Minorities\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=A%20Minority%20Amongst%20Minorities&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fminority-amongst-minorities%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: A Minority Amongst Minorities\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fminority-amongst-minorities%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fminority-amongst-minorities%2F&title=A+Minority+Amongst+Minorities\" rel=\"nofollow\" target=\"_blank\" title=\"Share: A Minority Amongst Minorities\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/minority-amongst-minorities/&media=http://heropress.com/wp-content/uploads/2016/08/082416-Uriahs-Victor-150x150.jpg&description=A Minority Amongst Minorities\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: A Minority Amongst Minorities\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/minority-amongst-minorities/\" title=\"A Minority Amongst Minorities\"></a></div><p>I’m a minority amongst minorities, but it doesn’t matter.</p>
<h3>Let’s get to know each other</h3>
<p>Hi, I’m Uriahs Victor and I’m a Carib &#8211; bean from the island of St. Lucia. How many Black Developers do you know in the WordPress Community? 5? 20? How many of them are from the Caribbean? How many raised up in places like this:</p>

<a href=\"http://heropress.com/essays/minority-amongst-minorities/my_childhood_home/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/my_childhood_home-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Uriahs Victor\'s childhood home, a blue house with low jungle around it\" /></a>
<a href=\"http://heropress.com/essays/minority-amongst-minorities/view_from_my_old_home/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/view_from_my_old_home-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"A vew from Uriahs Victor\'s childhood home, a shed and barn nestled in the jungle\" /></a>
<a href=\"http://heropress.com/essays/minority-amongst-minorities/neighbourhood_houses/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/neighbourhood_houses-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"A view of Uriahs Victors childhood neighborhood,, small houses surrounded by jungle\" /></a>

<p>I chose to write on this topic in hopes that there’s someone else like me reading this article someday who’s living in an area where it may seem like there aren’t many career paths.</p>
<blockquote><p>It doesn’t matter where in the world you are or your complexion; anyone could code.</p></blockquote>
<h3>How my passion for programming began</h3>
<p>I was fortunately raised with both parents in a community on my island called Fond St. Jacques which is a part of a bigger town called Soufriere. I grew up doing everything a typical adolescent from my community would be doing: playing football, playing cricket and going to work on my parents farm and occasionally on other farms to earn some money to burn through by drinking with friends ( don’t think about it too hard ) and partying.</p>
<p>One day I came home to a used computer setup in my room and was extremely ecstatic with the idea that my family now owned one. I spent hours upon hours on this computer messing around with paint but mostly playing Pinball, there was no internet in my community at the time but I was very intrigued by video games, once I got my first taste of unrestricted internet access several months after; my love for video games grew, I spent time reading about them but more time playing them and at that time I had decided that I wanted to be a Game Designer.</p>
<p>If being a Programmer from a rural community out of the Caribbean sounds different (not impossible) looking back at it now then just imagine how it sounded saying I wanted to be a Game Designer when someone asked me. I spent years with this goal set, I spent days reading about game designing but I always felt lacking, I believed there was always 1 skill Game Designers needed that I did not have and that was being able to draw/design.</p>
<p>In 2010 life was pretty easy going, I was 15 and still had not done any piece of Web or Desktop Development coding. My Secondary schooling was going pretty good, I was always the top performing IT student so this brought me comfort as I knew I would soon be writing the “CXC” exams soon.</p>
<h3>Everything changes</h3>
<p>On October 28th 2010 I woke up during the night to the sound of heavy rains, I looked through one of the windows of my home at the time and saw the trees around my house swaying pretty normal, or so I thought. The morning of October 29 I woke up to the sound of friends saying “Uriahs your mom shop is gone” in our second language (French Creole), this language naturally sounds a bit harsh when used to say various things so I thought they were pulling some kind of prank on me. What I saw after heading to the balcony where my friends were changed my life.</p>

<a href=\"http://heropress.com/essays/minority-amongst-minorities/tomas2/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/tomas2-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"A neighborhood with muddy water halfway up the sides of the houses\" /></a>
<a href=\"http://heropress.com/essays/minority-amongst-minorities/tomas/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/tomas-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Metal infrastructure and trees sweeping a house away\" /></a>

<p><em>Some Damage done to my hometown (more images could be seen by googling “<a href=\"https://www.google.com/search?q=Hurricane+Tomas+Fond+St.+Jacques+Damage&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiequDphNXOAhVDOCYKHeHrAPwQ_AUICSgC&biw=1242&bih=1510\">Hurricane Tomas Fond St. Jacques Damage</a>”</em></p>
<p>My friends were right, my mom&#8217;s shop where she sold snacks and food items which generated most of the income for my schooling had completely vanished, no trace of it was left, like it was never there.</p>
<blockquote><p>This storm had done so much damage that there was no way for anyone from my community to get to school</p></blockquote>
<p>Roads were completely sliced through by water and eventually I had to move out of my community to live in Soufriere for ease of travelling to school.</p>
<p>At age 16 I still wanted to be a Game Designer, I had spent the previous 5 years excelling in Information Technology at my Secondary school but had never done any piece of programming, the damages of Hurricane Tomas were still evident and I was still shaken up at how my life had changed, I was no longer living with my parents in my hometown, everything I would not wish for a teenager.</p>
<p>To this day the damage done to my home town is still visible:</p>

<a href=\"http://heropress.com/essays/minority-amongst-minorities/20160816_132245/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/20160816_132245-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Building with storm damage years later\" /></a>
<a href=\"http://heropress.com/essays/minority-amongst-minorities/20160816_132253/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/08/20160816_132253-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Building with storm damage years later\" /></a>

<p><em>This is the exact same area from one of the previous images. These pictures were taken August 8th 2016 when I visited.</em></p>
<p>In the Caribbean, at the end of your 5 years of Secondary schooling you are required to write an exam called “CXC” if you wish to pursue higher education. For my academic year we never finished our Information Technology syllabus which touched a bit on Pascal programming, so when it came to writing the Information Technology exam every category was aced, but <strong>I failed the programming section</strong>, even then I still wanted to be a Game Designer and had not yet grown any affection for coding.</p>
<p>In 2011 I started schooling at Sir Arthur Lewis Community College (SALCC) pursuing an Associate Degree in Computer Systems Engineering which was the only option available which dealt with Technology at that college (there are only two colleges on my island). This was a 2 year degree where the first year students are introduced to both the Hardware and Software side of computing then in the second year choose the path they wish to pursue. This was also around the time I first came across WordPress while fiddling on the internet and <strong>making the mistake of not looking more into what it really was</strong>.</p>
<h3>Technical Project</h3>
<p>One year into my Computer Engineering program it finally came the time to choose my path in IT and of course I chose the Software path because I believed if I wanted to be a Game Designer then this was the best path. That remaining year was when I really started to build up my affection for code, there was only one course in the software path that actually dealt with any type of code to some extent called “Programming Methodology”. Programming Methodology was a course tailored to teach you the very basics of programming such as Loops, IF and ELSE statements, Variables and small exercises to help you put those into practice. This entire Programming Methodology course was done with VB6 examples in Visual Studio 2006 so <strong>I was not taught a single line of Web Development code</strong>.</p>
<p>At this college every student who does Computer Systems Engineering is required to present a “Technical Project” in a typed and physical presentation form, it&#8217;s purpose is to show what you&#8217;ve picked up from the program over the 2 years; without receiving a pass on this Technical Project students would not be awarded their Degree and would need to redo the project until they succeeded. It may sound a bit brutal but I believe this is a good final test and I hope they don’t change this procedure.</p>
<p>I had known about this requirement for a very long time so I decided to build a video game for my technical project, I knew I could not draw so I decided to use a RPG Maker and ponder ways I could get a pass by presenting to the graders a video game which I did not physically design any of the characters or coded them in. I eventually decided to create an Educational video game and touch on the topic of teaching through entertainment (Edutainment). There was this one course called Data Communications that students always seem to have trouble passing so I thought “Hey, maybe I should create a game showing some basics of Data Communications”.</p>
<p>During my time learning how to use this RPG Maker and creating this game I found myself using a lot of the logic operators I had learnt about in Programming Methodology, this was all good because in my presentation I could have shown that though I used a RPG Maker, there was actually a lot of programming logic going on under the hood and that I was actually coding.</p>
<blockquote><p>While working on this project my love for code grew, I was having fun.</p></blockquote>
<p>By the time I had finished creating this game my passion had already broken down from Game Designing to coding. Thankfully, I was successful with the game which I called “EduCom” and was able to finish college in a perfect 2 years (woohoo!), you can download EduCom here: <a href=\"https://uriahsvictor.com/portfolio/educom-educational-video-game/\">Click here</a></p>
<p>Fast forward a few months and there I was as an intern from college at a web agency understudying some colleagues who didn’t build desktop apps. Keep in mind that at college I had learnt VB6 to the point where I could have switched over to self-learn VB.NET and I was now sitting in a web agency learning web development, well guess what? I still loved it. I went home each day and practiced it, I used <a href=\"http://codeacademy.com\">http://codeacademy.com</a> (which now redirects to codecademy.com) to learn HTML and CSS and I was even good with jQuery at some point! Life was great, at that time getting employed by the agency was not a big deal for me, I just loved coming to work and understudying the other Developers.</p>
<blockquote><p>A shock came to me one day when I was told that I had went to the wrong company for my internship.</p></blockquote>
<p>I remember to this day clearly being told that I was supposed to carry out my internship at this web agency but now I was being told that I went the wrong place. I really liked where I currently was but I actually needed to leave for the company which I was registered to in the school records, <strong>I still wonder what would have happened if I had never corrected that mistake</strong>.</p>
<p>With 2 months left out of the 3 month long internship program, I was at a new company with very little excitement in me. The silver lining came when I arrived and noticed that there was this 1 developer who was responsible for both building and maintaining desktop applications and websites, two things I really liked doing, so I quickly gravitated towards him and in no time we became friends. I was awed by him and I could safely say just like the previous guys at the web agency that he played a part in me not forgetting my true passion for coding. I say this because at this newly assigned company I became an IT Technician, doing everything Techs usually do such as fixing printers, troubleshooting WIFI networks, fixing computers and even building them too, but even after spending the day as an IT Technician I often spent the night as a Developer. <strong>I never stopped coding</strong>, I often came home fatigued from all the hands on tech work but I pushed myself through CodeCademy’s exercises, I spent time working in Visual Studio building simple apps that did nothing useful but I still liked the feeling of seeing my code come to life.</p>
<p>At the ending of my internship I had become such a great IT Technician that I got the job. I was excited because heck, who wouldn’t be excited to get a job straight out of college in a country with high unemployment rate?</p>
<h3>Reality Is Cruel; Immerse Yourself &#8211; Uriahs Victor</h3>
<p>On September 3rd 2013; two weeks before my birthday was my first day officially on the job. My day was going by normal, until I got a call from my sister, crying. My father had lost his life because of a mishap while working on our family farm. It took me a while to realize what had happened, I didn&#8217;t want to believe it. Might sound strange to you, but video games again came up and helped me through.</p>
<p><a href=\"http://heropress.com/wp-content/uploads/2016/08/custom_pc.jpg\"><img class=\"alignright wp-image-1255 size-medium\" src=\"http://heropress.com/wp-content/uploads/2016/08/custom_pc-300x225.jpg\" alt=\"Tricked out PC case with lights inside.\" width=\"300\" height=\"225\" /></a>Life went on and after one year I had grown my IT Technician skills even more, I was often tasked with building custom PCs like this.</p>
<h3>No matter where you are at right now, don’t stop doing what you truly love.</h3>
<p>The day came when my Developer friend at the company decided it was time for him to leave the job for greater things, and guess who offered to be the new Developer? That’s right, me. With some help from my colleague I got familiar with the different apps and websites the company had under their management, again I came across WordPress but I still did not know much about it on a coding stand point, I spent time at home getting familiar with its backend but what was more unusual to me was its code. I knew how to build static websites with HTML and CSS but I did not know much PHP at the time so I had to quickly learn a fair level of PHP to find myself around and also learn different things about WordPress such as plugins and backing up&#8230; enough to fill in my colleague’s shoes as quickly as I could before he was gone.</p>
<h3>I am not happy at my job!</h3>
<p>Two years into the job and things had begun to turn sour for me, I was not happy at my job. One of the main reasons was that I felt underappreciated and overlooked. Though I was the new Developer for the company they never got over the fact that I was also pretty good with computers, so I was often asked to stop whatever software related tasks I was doing to head over to some client’s business to check out a faulty computer or things of that nature. I was unhappy, I felt like I this company did not value the software side of their business nearly as much as the hardware side, couple that with the fact that I was still being paid the same salary as when I was only an IT tech, to now being in charge of the company’s software and still finding myself doing IT Technician related tasks and then being asked by my employer “Why can’t you work on the client apps at home?”, there was no overtime pay offered in my contract, so I used my nights to better myself and also to rest my mind.</p>
<p>I was still 20 but soon to be 21 at the time and I felt overworked. Having to condition your brain to work on VB.NET apps some of which were not built by yourself requires time to be spent getting familiar with the source code, but often minutes after I would have to recondition my brain to think of reasons why a computer has a certain issue, this was like P90X on the brain, it was a daily thing and I began disliking as weeks and months went by. Time passed and things became sourer, I began contemplating my resignation; I did not like the way I was being treated and it had begun to show, I often only found joy when practicing my code at home, this late night practicing also often caused me to arrive late the next day for work which I compensated for by leaving at late hours.</p>
<h3>If it doesn’t come bursting out of you, don’t do it.</h3>
<p>The day came when I decided to resign from my job but something inside me said “Uriahs, give it another shot”, that voice was the bad voice, I was let go from the job the same day I planned to resign.</p>
<h3>Is Karma real?</h3>
<p>So there I was, a 21 year old who had no backup plan and no job applications out in the wild but I was happy. I had felt relief that I did not have to deal with working in an environment I didn’t like. I was told by my past colleagues that my replacement had come in the next day and I thought to myself that maybe this company was contemplating letting me go just as long as I was contemplating leaving (lol). Well, let’s just say this replacement only lasted 3 days on the Job then quit after messing up one of the company’s high end clients website, a news publishing website: <a href=\"http://stluciastar.com/\">http://stluciastar.com/</a> built on WordPress which I had been maintaining and making code modifications for when asked.</p>
<p>I don’t know why the company thought it was ok to call me 3 days after letting me go, asking for my “help” in fixing whatever problem a replacement Developer (who I believe shortly quit after the incident) had done, but after consulting with the WordPress community, it was made clear to me that I should either charge for my services or decline; heck, I was unemployed and still had rent and bills to pay but I instead eventually declined.</p>
<h3>A new beginning</h3>
<p>Weeks went by with me just getting used to being out of an office type job to being home, I had been living alone since I had gotten the past job so I also had to get used to having less people around me. I took that time to learn more about WordPress, Udemy pricing scheme didn’t change yet so I bought myself a few WordPress Development courses for $10USD each when they came on sale, such as: WordPress Theme Development with Bootstrap by Brad Hussey, in that one course I learnt more about WordPress than I had learnt in all my time working in my last job(wut?). I began doing freelance work online and locally, there were not many other options on my island to work in software so I started questioning whether I should be sending out applications for new jobs or just do full time freelancing; I had my doubts about the few companies there were, and I actually enjoyed working from home. Time passed and I fell more and more in love with WordPress, I watched tutorials and googled away trying to pick up knowledge, the WordPress codex which I once found intimidating began to look sexy.</p>
<p>Once I felt I had gathered enough knowledge on WordPress, I thought of a plugin idea and began working on it. I had no immediate help except for the WordPress community populating the codex with all the useful information. I spent a few weeks working none stop on this plugin which I thought did a pretty good task which was to Inform buyers of a downloadable WooCommerce product that there is an update for that product after the shop owner has marked it as updated. After completing the plugin I was ready to submit to the WordPress repository, it brought me joy when I got the e-mail letting me know that the plugin was accepted to the WordPress repository! I love open source so just having a plugin for WordPress which could at least help some people made me feel warm inside.</p>
<h3>Pirate of the Caribbean</h3>
<p>Around that time something equally interesting happened. I had completed a short video chat with Ionut and Sabina from <a href=\"http://themeisle.com\">ThemeIsle</a> and found out that I would be part of their WordPress support team for their themes and plugins! Obviously I was happy, I would be amongst like minded individuals, a team who appreciates WordPress as much as I do, a team I could learn from! All without needing to fly over to Romania!</p>
<h3>Let’s have a drink</h3>
<p>One day while performing a random Google search for my plugin I saw in the search results a link to WPTavern, I curiously clicked on the link and saw that my plugin (TLD WooCommerce Downloadable Product Update Emails) had been picked as one of the top 3 plugins of the week on WPTavern, my very first plugin and <a href=\"https://wptavern.com/wpweekly-episode-233-recap-of-wordcamp-chicago-2016\">it was mentioned on WPTavern</a>?!</p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://wptavern.com/wpweekly-episode-233-recap-of-wordcamp-chicago-2016\">WPWeekly Episode 233 – Recap of WordCamp Chicago 2016</a></p></blockquote>
<p><br />
In under 1 year I have achieved more than I did in the recent years. It wasn’t easy, many nights were spent awake googling away, many parties were missed so I could save and be able to pay bills. If you like something, do it!</p>
<blockquote><p>Programming is for anyone and when I notice someone from my island or the Caribbean show interest in coding I never refrain from encouraging them.</p></blockquote>
<p>I am currently 21 and will be 22 next month, I still have lots to learn, I still have lots to give back to the WordPress community and open-source community on a whole, I currently aid small businesses and non-profits on my Island grow their brand with WordPress. I have plugins and plugin ideas in the pipeline which I am currently not able to complete, but through learning and growing my skills I eventually will.</p>
<p>It doesn’t matter which part of the world you grew up in, what challenges you’ve faced, nor does it matter your race, all it takes is the internet, passion, patience, practice and of course prayer.</p>
<p>WordPress has been good to me, if it has been good to you, then helping the WordPress Community in any way possible is the best we could all do.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/minority-amongst-minorities/\">A Minority Amongst Minorities</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 24 Aug 2016 12:00:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Uriahs Victor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Post Status: Static site generators versus WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=26180\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://poststatus.com/static-site-generators-versus-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7124:\"<h3>The current state of affairs</h3>
<p>In 2016, WordPress is far from the only choice for a new website. In fact, website owners have enjoyed a plethora of options (hosted and self-hosted) for many years. WordPress has remained the juggernaut solution for self-hosted websites, with 25% marketshare of the total web, and as the mainstay CMS for small-to-medium businesses with small or low budgets.</p>
<p>Amongst two groups &#8212; large institutions that need high scalability, and the ever-tinkering developer crowd &#8212; another option is trending positively: the static site generator, also known as a flat-file CMS.</p>
<p>Don’t get me wrong — the WordPress install base is huge, and the threat posed by static site generators is small. But it’s growing. Post Status editor Brian Krogsgard polled developers <a href=\"http://www.slideshare.net/krogsgard/the-state-of-wordpress-business\">prior to Pressnomics</a>, to assess the threat level posed by various CMSs and publishing platforms; Medium and static site generators were considered more of a threat than any others:</p>
<p><img class=\"aligncenter size-large wp-image-26181\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/08/Screen-Shot-2016-08-23-at-9.58.07-AM-752x234.png\" alt=\"Screen Shot 2016-08-23 at 9.58.07 AM\" width=\"752\" height=\"234\" /></p>
<p>He also wrote in a newsletter to <a href=\"https://poststatus.com/club\">members</a> in November, 2015, “Didn’t I just mention about the appeal of static sites? I really think they’re a big top-end threat,” referring to the <a href=\"https://github.com/department-of-veterans-affairs/vets-website\">launch of vets.gov</a>. Earlier that month, Smashing Magazine christened them <a href=\"https://www.smashingmagazine.com/2015/11/modern-static-website-generators-next-big-thing/\">the next big thing</a>. A number of high profile websites use static site generators, from <a href=\"http://product.voxmedia.com/2015/7/8/8907841/introducing-autotune\">Vox Media</a> to <a href=\"http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/\">Barack Obama</a>.</p>
<p>A spate of flat-file CMS options have become strong contenders: <a href=\"https://jekyllrb.com/\">GitHub’s Jekyll</a> is by far the most popular, but it’s joined by <a href=\"http://getgrav.org/\">Grav</a>, <a href=\"http://www.couchcms.com/\">Couch</a>, <a href=\"http://picocms.org/\">Pico</a>, and <a href=\"https://www.staticgen.com/\">more</a>. You can even host your static site on <a href=\"https://pages.github.com/\">GitHub Pages</a> for free, and they’re happy to let you use a custom domain.</p>
<h3>Historical WordPress advantages</h3>
<p>The continuing appeal of WordPress has been fourfold:</p>
<ol>
<li>The ability to get started very cheaply, without a monthly fee on top of hosting costs.</li>
<li>The liberty to use a custom domain name.</li>
<li>A robust ecosystem that provides thousands of free or inexpensive themes and plugins.</li>
<li>One-step installation facilitated by mainstream web hosts’ embrace of WordPress.</li>
</ol>
<p>Since Jekyll and its ilk are mostly open-source, advantage #1 is wiped out. GitHub Pages knocks out advantage #2. WordPress retains the upper hand regarding #3 and #4. Younger projects have a long way to go before they can rival the WordPress community, and they’re still focused on serving fellow developers rather than everyday consumers. Until that changes, big web hosts won’t bother to enable ultra-easy installation.</p>
<h3>Modern WordPress drawbacks</h3>
<p>WordPress does have legitimate downsides, especially if you’re already a competent web developer or you’re focused on the highest levels of technical performance.</p>
<p>Site speed is ever more important in an age of social distribution and mobile browsing, and made more difficult considering site assets and page weights seem to be constantly getting larger. WordPress can be difficult to scale for high levels of traffic, and certain site architecture decisions can get developers in trouble.</p>
<p>High scalability and smart web performance management with WordPress requires significant development expertise or more expensive managed hosting partners, especially for complex WordPress installs; whereas the inherently static nature of static site generators makes scalability more trivial.</p>
<p>Finally, security is a concern for some people that choose static site generators. WordPress has opportunities for user input that static site generators do not. It is also a natural target of hackers, simply due to its popularity. And static site generators are almost completely locally stored &#8212; aside from the output itself &#8212; whereas WordPress (potentially outdated, along with underlying themes and plugins) is stored on the server, more vulnerable to attacks.</p>
<h3>Why WordPress is still winning</h3>
<p>As I noted amongst its historical advantages, WordPress has an unparalleled ecosystem of plugins, add-ons, and extensions. (For comparison, the <a href=\"http://www.jekyll-plugins.com/\">Jekyll Plugins website</a> only lists fifty-two options at the time of writing.) It’s also relatively easy for non-technical people to install and use WordPress, in part because mainstream hosting companies put in the effort to make it easy, but even prior to such conveniences WordPress <a href=\"https://codex.wordpress.org/Installing_WordPress#Famous_5-Minute_Install\">boasted</a>, &#8220;the famous 5-minute install.&#8221; And static site generators are just not as powerful as traditional content management systems, especially in regard to user input.</p>
<p>Among the static site generators, Jekyll in particular is working toward feature parity, but it will take a long time. Current ease-of-use tools like <a href=\"http://prose.io/\">Prose</a>, a content editor that integrates with GitHub, and <a href=\"http://cloudcannon.com/jekyll-gui/\">CloudCannon’s Jekyll GUI</a>, which aims to help developers collaborate with clients, are in their infancy in terms of adoption and are still finicky to use.</p>
<p>It can be tempting to look longingly at the growing ecosystem around static site generators. It&#8217;s also easy to forget just how much you get &#8220;for free&#8221; with built-in WordPress functionality. Static site generators definitely play a role in the modern web, and can be a great choice for certain types of websites. But no static site generator signals the end for WordPress and its continuously strong community.</p>
<h3>The future — what should you do?</h3>
<p>Since you’re reading Post Status, it seems fair to assume that you’re part of the WordPress ecosystem, and very likely earn a living from it. Should you be panicking? No, for all the reasons I laid out.</p>
<p>But any wise professional keeps an eye on the future of their industry. We are seeing a trend, and over time Jekyll and its siblings will gain more marketshare. It’s probably worth your time to try out a few flat-file CMS options, get familiar with how to use and customize them, and perhaps consider what WordPress itself can learn from them.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Aug 2016 20:23:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Sonya Mann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Post Status: WordPress 4.6, “Pepper”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=26067\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://poststatus.com/wordpress-4-6-pepper/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14018:\"<p>WordPress 4.6, “Pepper”, <a href=\"https://wordpress.org/news/2016/08/pepper/\">has been released</a>. It’s named, as always, after a famous jazz musician, and this release is named after <a href=\"https://en.wikipedia.org/wiki/Pepper_Adams\">Park Frederick &#8220;Pepper&#8221; Adams III</a>, a baritone saxophonist and jazz composer.</p>
<p>The Release Lead for WordPress 4.6 was <a href=\"https://dominikschilling.de/\">Dominik Schilling</a>, known often as Ocean90, and the Deputy Release Lead was <a href=\"https://www.garthmortensen.com/\">Garth Mortensen.</a> There were 272 total contributors to this release. According <a href=\"https://twitter.com/aaronjorbin/status/765631441950703617\">to Aaron Jorbin</a>, 85 of these contributors were first timers, so congratulations to all new WordPress contributors!</p>
<p>For this release, we did a special episode of the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle — the CTO of Human Made — and me, Brian Krogsgard.</p>
<p>In this episode, Joe and I discuss WordPress 4.6 and deep dive on a few of its features.</p>
<p><!--[if lt IE 9]><script>document.createElement(\'audio\');</script><![endif]-->
<a href=\"https://audio.simplecast.com/44775.mp3\">https://audio.simplecast.com/44775.mp3</a><br />
<a href=\"https://audio.simplecast.com/44775.mp3\">Direct Download</a></p>
<h2>About WordPress 4.6</h2>
<p>Here’s a video overview of WordPress 4.6:</p>
<div class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<a href=\"https://videos.files.wordpress.com/GbdhpGF3/video-25313e7f01_hd.mp4\">https://videos.files.wordpress.com/GbdhpGF3/video-25313e7f01_hd.mp4</a></div>
<p>&nbsp;</p>
<p>Overall, this was a planned iterative release from the beginning, with a goal to fix as many longstanding bugs as possible, and to refine existing features, rather than to focus on a lot of brand new features.</p>
<p>Folks have been clamoring for a release like this for a long time, and in most respects 4.6 delivered. <a href=\"https://core.trac.wordpress.org/milestone/4.6\">According to Trac</a>, 489 tickets were closed, across 53 components, during the 4.6 milestone. Also, it shipped exactly on time.</p>
<h2>User facing features</h2>
<p>WordPress 4.6 has a few user facing features that aren&#8217;t huge functional changes, but nice interface enhancements.</p>
<h3>Shiny updates</h3>
<p>No more <em>bleak screen of sadness</em>, as the team working on this termed it. The plugin installation, updates, and delete process is much smoother than it used to be. There&#8217;s a nice video of this <a href=\"https://make.wordpress.org/core/2016/06/02/proposal-more-shiny-updates/\">from the initial proposal</a>:</p>
<div class=\"wp-video\"><a href=\"https://make.wordpress.org/flow/files/2016/05/Shiny-Plugins.mp4\">https://make.wordpress.org/flow/files/2016/05/Shiny-Plugins.mp4</a></div>
<p>&nbsp;</p>
<p>This was the second release where &#8220;shiny updates&#8221; features were a focus. To see some under the hood considerations for developers, there&#8217;s <a href=\"https://make.wordpress.org/core/2016/07/06/shiny-updates-in-4-6/\">more information on that</a> from Pascal Birchler.</p>
<h3>Native fonts</h3>
<p>WordPress is leaving Open Sans, which was introduced with the &#8220;MP6&#8221; admin overhaul of <a href=\"https://poststatus.com/meet-wordpress-3-8/\">WordPress 3.8</a>. You may have seen GitHub’s recent change to native fonts. It&#8217;s definitely a trend lately. Matt Miklic <a href=\"https://make.wordpress.org/core/2016/07/07/native-fonts-in-4-6/\">explains the switch</a> from Open Sans to native system fonts in the WordPress admin.</p>
<p>The declaration of fonts when using system fonts has a good bit of science behind it, and may be useful for those of you who wish to do something similar for your own projects. Marcin Wichary has a really interesting post <a href=\"https://medium.design/system-shock-6b1dc6d6596f#.n2idzpgry\">describing Medium&#8217;s process</a> when they made the switch.</p>
<p>And if you&#8217;re curious, the new declaration is this:</p>
<pre>font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen-Sans, Ubuntu, Cantarell, \"Helvetica Neue\", sans-serif;</pre>
<h3>Inline link checker</h3>
<p>WordPress will now automatically detect improperly formatted links, as you write. While this doesn&#8217;t check the validity of any properly written URL, it will ensure the URL you add in an <code>href</code> is properly formatted. So, it will catch if you accidentally type something like <code>htp://w.org</code> or <code>http:/w.org</code> and outline it in red for you to fix.</p>
<p>If you copy and past a URL into the link editor, but don&#8217;t include <code>http://</code> at all (I do this a bunch), it auto detects and inserts it for you.</p>
<h3>Browser content caching</h3>
<p>Yet more efforts have been made to always ensure that you do not lose your content as you write. I followed the <a href=\"https://core.trac.wordpress.org/ticket/37025\">steps in the Trac ticket</a> to see exactly what happens here.</p>
<p>So I typed the first sentence below, saved a draft, then typed the second paragraph:</p>
<blockquote><p>What if I start typing and save a draft?</p>
<p>Then start typing some more, because that&#8217;s what bloggers do. And I chill here for a few seconds, then stupidly just reload this page?</p></blockquote>
<p>Then I reloaded the page without saving again, and got this notice:</p>
<a href=\"https://poststatus.com/wordpress-4-6-pepper/#gallery-26067-1-slideshow\">Click to view slideshow.</a>
<p>And just like that, the content is back, because it was saved in the browser&#8217;s local storage. Pretty cool.</p>
<h2>Developer features</h2>
<p>There are several important developer centric features that you should know about.</p>
<h3>Enhanced meta data registration</h3>
<p>This is a significant aid to the (pending) REST API meta handling, but also improves other meta data functionality. The <code>register_meta()</code> function allows developers to tell WordPress more about what specific meta data is designed to do. In WordPress 4.6, the arguments for this function have changed, enabling more information to be communicated in the third parameter, which is now an array.</p>
<p>The <code>show_in_rest</code> key, an experimental key (until the API endpoint goes in), finally solves the issue for the REST API for knowing when to include meta data in the API&#8217;s default responses. It&#8217;s one step of a few that need to be made to better support meta for the API, but it&#8217;s a good step forward.</p>
<p>For plugin developers not using <code>register_meta()</code>, be sure to learn more about it and the advantages, as there are quite a few. Jeremy Felt describes how to use <code>register_meta()</code> <a href=\"https://make.wordpress.org/core/2016/07/20/additional-register_meta-changes-in-4-6/\">on Make Core</a>.</p>
<h3>Translation priorities and changes</h3>
<p>WordPress will now default to the translations from <a href=\"https://translate.wordpress.org\">Translate.WordPress.org</a> community translations, then pull from theme or plugin translation files. A procedure called “just-in-time” translation loading will be utilized, and for plugins and themes distributed through the official repository, <code>load_plugin_textdomain()</code> and <code>load_theme_textdomain()</code> no longer need to be used.</p>
<p>Commercial plugin authors will still largely follow the same internationalization procedures they always have.</p>
<p>In a related note, and quite impressively, WordPress 4.6 shipped 100% translated in 50+ languages.</p>
<h3>Resource hints</h3>
<p>Joe helped teach me more about resource hints on the podcast, and Aaron did a much better job detailing resource hints than I could, in his <a href=\"https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/\">excellent field guide</a>:</p>
<blockquote><p>Resource Hints is a rather new <a href=\"https://w3c.github.io/resource-hints/\">W3C specification</a> that <em>“defines the <a href=\"https://w3c.github.io/resource-hints/#dfn-dns-prefetch\"><code>dns-prefetch</code></a>, <a href=\"https://w3c.github.io/resource-hints/#dfn-preconnect\"><code>preconnect</code></a>, <a href=\"https://w3c.github.io/resource-hints/#dfn-prefetch\"><code>prefetch</code></a>, and <a href=\"https://w3c.github.io/resource-hints/#dfn-prerender\"><code>prerender</code></a> relationships of the HTML Link Element (<code>&lt;link&gt;</code>)”</em>. These can be used to assist the browser in the decision process of which origins it should connect to, and which resources it should fetch and preprocess to improve page performance.</p>
<p>In 4.6, WordPress adds an API to register and use resource hints. The relevant ticket is <a href=\"https://core.trac.wordpress.org/ticket/34292\">#34292</a>.</p>
<p>Developers can use the <code>wp_resource_hints</code> filter to add custom domains and URLs for <code>dns-prefetch</code>, <code>preconnect</code>, <code>prefetch</code> or <code>prerender</code>. One needs to be careful to not add too many resource hints as they could quite easily <em>negatively</em> impact performance, especially on mobile.</p></blockquote>
<p>Resource hints can be very useful for certain situations, and it&#8217;s a technique that I personally need to explore further. Those of you doing advanced performance-driven development will surely be excited about support for this in WordPress.</p>
<h3>Customizer APIs</h3>
<p>The <a href=\"https://make.wordpress.org/core/2016/07/06/customize-api-changes-in-4-6/\">Customize API continues to evolve</a> and improve, and Nick Halsey walks through new developer-focused features and changes to the API for WordPress 4.6. Also quite notably, Weston Ruter describes <a href=\"https://make.wordpress.org/core/2016/07/05/customizer-apis-in-4-6-for-setting-validation-and-notifications/\">new APIs for both settings validation and notification management</a> in the customizer.</p>
<h3>Other developer-centric changes</h3>
<p><a href=\"https://make.wordpress.org/core/2016/07/08/multisite-focused-changes-in-4-6/\">Multisite changes</a>: Jeremy Felt describes <code>WP_Site_Query</code> and <code>WP_Network_Query</code>, and goes over a few new functions and filters.</p>
<p>There is now a <a href=\"https://make.wordpress.org/core/2016/07/18/comments-in-4-6-can-now-be-cached-by-a-persistent-object-cache/\">persistent comment cache</a>, allowing more performant comment loading functionality. Rachel Baker, the comments component maintainer, explains further.</p>
<p>The WordPress HTTP API <a href=\"https://make.wordpress.org/core/2016/07/27/http-api-in-4-6/\">now uses the Requests library</a>, as Ryan McCue describes.</p>
<p>Aaron Jorbin describes some of the <a href=\"https://make.wordpress.org/core/2016/07/06/bootstrapload-updates-in-4-6/\">lower level WordPress loading priorities</a> and defaults that have changed. He also describes how WP CLI and core have reconciled their differences in <code>wp-settings.php</code>, which makes backward compatability for WP CLI possible now.</p>
<p>Boone Gorges <a href=\"https://make.wordpress.org/core/2016/07/06/wp_term_query-in-wordpress-4-6/\">describes the introduction of <code>WP_Term_Query</code></a>. He’s the term whisperer. As Joe and I discuss in the podcast, these sorts of changes make for better consistency in WordPress, and provide an improved developer experience.</p>
<h2>Learn more</h2>
<p>WordPress 4.6 is the result of hundreds of community members. You can find their names and links to their profiles on <a href=\"https://wordpress.org/news/2016/08/pepper/\">the official release post</a>.</p>
<p>Also check out the official <a href=\"https://codex.wordpress.org/Version_4.6\">4.6 Codex page</a> that has a lot of handy information and links to source Trac tickets. You can see all closed tickets from <a href=\"https://core.trac.wordpress.org/milestone/4.6\">4.6 on the Trac milestone</a>. View all new functions, classes, methods, and hooks <a href=\"https://developer.wordpress.org/reference/since/4.6.0/\">on the official Developer Reference</a>. And learn more about some of what I discuss above, and other items, on the ever-helpful <a href=\"https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/\">field guide</a>.</p>
<p>For the record, WordPress 4.5 was downloaded more than 45 million times. You can <a href=\"https://wordpress.org/download/counter/\">track 4.6 downloads</a> on the page dedicated to the task.</p>
<p>Thank you to everyone who contributed to WordPress 4.6! I hope you have a <img src=\"https://s.w.org/images/core/emoji/72x72/1f37a.png\" alt=\"🍺\" class=\"wp-smiley\" /> or <img src=\"https://s.w.org/images/core/emoji/72x72/1f37b.png\" alt=\"🍻\" class=\"wp-smiley\" /> to celebrate if that&#8217;s your kind of thing, or otherwise <img src=\"https://s.w.org/images/core/emoji/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" />  your efforts.</p>
<h3>Podcast Sponsor: Prospress</h3>
<p><a href=\"https://prospress.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">Prospress</a> exists to make the world’s best eCommerce platform a little better, because they want to help entrepreneurs prosper with WordPress. They are the creators of WooCommerce Subscriptions, PayPal Digital Goods, and One Page Checkout. Check them out at <a href=\"https://prospress.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">Prospress.com</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Aug 2016 17:21:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Taking A Chance With WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1228\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://heropress.com/essays/taking-chance-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10160:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/08/081716-NevenaTomovic-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordPress is actually for everyone, and that\'s what\'s fantastic about it.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Taking A Chance With WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Taking%20A%20Chance%20With%20WordPress&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Ftaking-chance-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Taking A Chance With WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Ftaking-chance-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Ftaking-chance-wordpress%2F&title=Taking+A+Chance+With+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Taking A Chance With WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/taking-chance-wordpress/&media=http://heropress.com/wp-content/uploads/2016/08/081716-NevenaTomovic-150x150.jpg&description=Taking A Chance With WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Taking A Chance With WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/taking-chance-wordpress/\" title=\"Taking A Chance With WordPress\"></a></div><p>My grandad always used to say “<em>živi se usput</em>”, which translates from Serbian into &#8220;<em>life happens while you are making plans</em>&#8220;. Everyone is in a rush,  planning their next weekend, holiday, career path, children…. Of course you have to exercise, stay fit, look good, relentless pressure is the way of life today. I happen to be one of those people who like making plans and setting goals. <strong>However, WordPress was never in any of my plans, I happen to stumble upon it</strong>. A friend of mine, Emma, a Cambridge philosophy graduate, who spends her time teaching circus arts, said “I stumble through life in general – I think the best people do it”. I think there is a lot of truth in this, sometimes the best things happen while you are busy making other plans. (This sounds a bit like an infomercial!)</p>
<p>When I spoke to Topher about this essay, he said to me “<em>oh so your story is also about taking chances</em>”. I never thought of my past actions as taking chances; I am one of those people who jump with their eyes closed, rather than take small calculated steps. But, I will tell you how and why I took a chance with WordPress.</p>
<h3>Before WordPress (BWP)</h3>
<p>BWP starts for me 6 months ago, because I have only been a WordPresser for the second part of 2016. I am a UCL graduate, I studied Italian and German language and literature. I have always been interested in reading, art, history of art and generally interested in understanding people. I used to go to the National Art Gallery in London with my dad and we would cover an era each time talking about how art changed, how the paintings happen to catch the change in culture and belief system of society. I continued to dedicate myself to art and language throughout my academic life, I wrote my dissertation in German, on an expressionist artist Oskar Kokoschka and for my MA I translated a black comedy in Italian that looks at social strata. I went on to study and work as a conference interpreter working in all four of my languages and getting lots of opportunities to meet different and interesting people.</p>
<p>I never imagined myself as a 60-hour-workweek girl in an office typing away on my computer. I planned my career to go a different way. I went to Italy to help create and promote a new teaching method called “edutainment”, teaching through entertainment. That’s where I was first introduced to marketing, localization and writing for an online audience.</p>
<h3>BWP And My Sports Career</h3>
<p>Apart from being a quintessential bookworm, I am also a covert adrenaline junkie. This actually ties in well with all of my studies. Sports and studies have one common denominator &#8211; it takes a lot of discipline for both. When I was 3 years old I started rollerblading, my mother found the smallest rollerblades (ever made) and bought them for me. I also played ice hockey in a mixed team and in 2014 we won the national championship in the UK. I am a qualified volleyball coach and ski instructor. Currently my sport obsession is with aerial gymnastics, and acro yoga. I like challenging myself both physically and mentally.</p>
<h3>Never Stop Learning</h3>
<p>In a recent <a href=\"https://managewp.com/tony-cecala-interview-on-wordpress-managewp-and-learning\">interview with Tony Cecala</a>, which was actually my first official interview for ManageWP, Tony said “never stop learning”, and this stuck with me, because I realized that the most important thing for me in whatever I do is to keep learning something new. At school I enjoyed learning new things, I enjoy trying out new sports and testing myself, and the same applies to work. Any job you do will have some repetitive aspect, and that is understandable, but it’s important for me to be in a position that embraces personal growth. That’s what WordPress has offered me, a combination of learning and support.</p>
<h3>My Road To WordPress</h3>
<p>I was first introduced to WordPress, when I moved back home to Serbia. I applied to work at <a href=\"https://managewp.com/\">ManageWP</a>, as “<em>what the hell</em>”, maybe there is a small chance they will call me back. My team lead happens to also play ice hockey and the first interview was us discussing hockey teams and player positions. Shortly after (they did test my skillset), I started working as a PR &amp; Digital Marketer. As part of the Growth team my job was to get acquainted with the WordPress community, introduce people to our product through online and offline methods, write content and establish myself as a product evangelist. I worked in our Customer Happiness Team as well, helping communicate with our customers on a daily basis.</p>
<p>WordPress was taking a chance for me, because I never thought of myself as an IT type. My boyfriend on the other hand is a software engineer, and so instead of being enthused by his job, I was always put off. He spends hours a day in front of a computer looking at strange symbols (that’s PHP I hear). Now, ironically I can understand a large part of PHP, no thanks to my boyfriend, but to my ManageWP colleagues.</p>
<blockquote><p>WordPress is actually for everyone, and that’s what’s fantastic about it.</p></blockquote>
<h3>After WordPress (AWP)</h3>
<p>Since being at ManageWP and part of the WordPress world, a lot has changed. I now have an online voice. I set up a blog, I was published on Tech.co, FishingBooker, Meks Themes, Devana Tech, Freelancermap and ManageWP. I also spoke at WordCamp Belgrade and it turned out to be one of the most popular talks of the day, I am speaking at WordCamp Split come September. On top of that I have been given an incredible opportunity to be part of the 2017 WCEU Paris organization team. WordPress has taught me how to express myself, in a non academic setting, how to become a better public speaker, and now I will learn how to help organize an event for a whooping 3 000 people. Never planned that!</p>
<p>WordPress has also offered me security by giving me a chance to do what I am good at. I have been able to dedicate myself to research, to writing and languages. I have also been able to carry on meeting people and travelling. A country like Serbia hardly offers international work opportunities, and WordPress has opened my eyes to a new community; a community that forges friendships across the world, accepts everyone, encourages tolerance, and welcomes rookies with open arms.</p>
<h3>AWP And More</h3>
<p>I don’t know of many other communities out there like WordPress, it’s rare to find a place where everyone is accepted and valued. It doesn’t matter if you are a software engineer or a language nerd, there is a place for you in WordPress. (This is the second part of my infomercial!)</p>
<blockquote><p>The biggest thing that WordPress has taught me is that sometimes in the most unlikely of places you will learn the most valuable lessons.</p></blockquote>
<p>It means that taking a chance is always worth the risk. Perhaps I wasn’t bred for the IT world, and I am more suited to be in the same room at the National Gallery as the 17th century French paysage painter, Claude, and his English counterpart of the 19th century, Turner. It so happens that I can’t paint, but I can write, and WordPress has created a virtual room in which I fit it.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/taking-chance-wordpress/\">Taking A Chance With WordPress</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Aug 2016 12:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Nevena Tomovic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WordPress.tv Blog: How to Get 100 Content Ideas in an Hour: Nicole Kohler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=571\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"http://blog.wordpress.tv/2016/08/11/how-to-get-100-content-ideas-in-an-hour-nicole-kohler/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1094:\"<p>If there’s one thing worse than writer’s block, it’s running out of ideas for your blog or business — or not having any to begin with. Luckily, the internet has made getting inspired an easy task, not to mention an incredibly quick one. In this talk, Nicole shares tips, tools, and content “lifehacks” you can use to generate 100 (or more!) content ideas in less time than it takes to settle on a new theme. Filmed at <a href=\"http://wordpress.tv/event/wordcamp-boston-2016/\">WordCamp Boston 2016</a></p>
<p></p>
<p><a href=\"http://littleyellowpenguin.com/wp-content/uploads/2016/07/WCBoston-Kohler-FINAL.pdf\">Presentation slides</a></p>
<p>See more WordCamp videos at <a href=\"http://wordpress.tv/\">WordPress.tv</a>!</p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/571/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/571/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=571&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Aug 2016 03:02:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"HeroPress: Finding WordPress in Fargo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1211\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://heropress.com/essays/finding-wordpress-fargo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:12851:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/08/081016-StaceyBartron-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: It may not all pan out, but I\'m along for the ride with WordPress in my backpack & I cannot wait to see where I end up.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Finding WordPress in Fargo\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Finding%20WordPress%20in%20Fargo&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-fargo%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Finding WordPress in Fargo\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-fargo%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-fargo%2F&title=Finding+WordPress+in+Fargo\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Finding WordPress in Fargo\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/finding-wordpress-fargo/&media=http://heropress.com/wp-content/uploads/2016/08/081016-StaceyBartron-150x150.jpg&description=Finding WordPress in Fargo\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Finding WordPress in Fargo\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/finding-wordpress-fargo/\" title=\"Finding WordPress in Fargo\"></a></div><p>I am sure most of you are wondering “New phone, who dis?” when it comes to me. Okay maybe not those words exactly, but I know I am a no-name and haven&#8217;t been around very long. I haven&#8217;t created any kick ass plugins (yet), I haven&#8217;t contributed to WordPress core (yet), and I haven&#8217;t developed any themes (yet).</p>
<p>So why was I asked to write an essay? Maybe it&#8217;s because there are a lot of people out there who are also trying to break into this community, probably somewhat introverted like me who don&#8217;t know how, or why, or what to do. No, I don&#8217;t have all the answers, I don&#8217;t have a set plan, and I am not in the position to dish out advice because I am still trying to figure it out and navigate it the best I can. But maybe, just maybe, this essay will ring true with someone who thinks, “SAMESIES.” and they know they&#8217;re not the only one out there.</p>
<p>Or maybe it&#8217;s because I am awesome. You guys can be the judge.</p>
<h3>Let&#8217;s get introduced</h3>
<p>I am a shy, but not so shy girl, from the great city of Fargo, ND (No, it&#8217;s nothing like the awesome movie or TV show, don&#8217;tcha know) who started Freelancing in March 2016 after working for a local agency for two and half years.</p>
<p>My story is probably one many have seen. Girl gets job, girl learns a lot, girl&#8217;s eyes are opened to a whole new world, girl works hard but doesn&#8217;t move up, girl applies for remote jobs with no luck, girl decides she can do this by herself, and girl leaves full time job and joins the million other freelancers in the self-employment world.</p>
<p>Generic sounding, but there is a bit more to it.</p>
<h3>Let&#8217;s go back in time for a quick second</h3>
<p>It all started in my parent’s basement when I was 16. Anyone ever heard of Xanga? It was a social blogging platform that was huge in my school. I made graphics using some freeware Photoshop knock off and custom layouts using basic CSS and HTML for Xanga in my free time, because you know, that&#8217;s normal for a 16 year old girl.</p>
<p>My parents encouraged me to go to school for graphic design at our local technical college and (blah blah blah&#8230;.let&#8217;s fast forward.) 4 years later after I graduated for Graphic Design, while I was working for a local school photography lab designing layouts for school ID cards and yearbooks, I graduated a second time after going back for Web Development and Design.</p>
<p>I landed a job doing web design in July 2013. In the interview, they asked me if I knew what WordPress was and I answered honestly like any person would in an interview with something along the lines of, “I have heard of it but I have never used it. BUT I am a go getter and love taking on any new challenges so I don&#8217;t doubt I will be able to figure it out.” I dove in and learned a lot of the WordPress basics in a short amount of time.</p>
<h3>A whole new world</h3>
<p>Fast Forward to May 2014, we decided as a team to go to WordCamp Minneapolis for the first time. I am an introverted extrovert, so networking is not my thing. After I get to know people, I am good, but the first step to introduce yourself to someone is scary.</p>
<p>After day one at WordCamp Minneapolis, my eyes were opened to a whole new world (queue Aladdin song). I didn&#8217;t know how my introverted self would do it, but I wanted to be best friends with everyone there. The WordPress community is so friendly, and so welcoming. I left feeling so inspired and wanted to go to every WordCamp that ever was. I went home with a goal of learning everything I can about WordPress.</p>
<p>Shortly thereafter, I started to dabble in front-end development. Custom post types, short codes, page templates, etc. I looked at how the themes were created, reversed engineered them, and started to mess around with it. If I hit a bump, I researched it, and of course there was a tutorial or someone in the WordPress community had a solution. (Reason #785 why the WordPress community is fantastic, #ThoseSupportForumsTho.)</p>
<blockquote><p>In November 2015, I started to feel this shift within myself; that I wanted to do more than I could do in my current position.</p></blockquote>
<p>The company was going in one way and I was going the other. I wanted to grow as a designer and a developer.</p>
<p>After a few months of indecision, wondering if I should move to Minneapolis and not hearing back from some remote positions I applied for, a former co-worker reached out to me and said she wanted to work with me. After discussing this with some friends, I had another former colleague that said they would hire me to develop their website, so the wheels started to turn in my head.</p>
<p>Let me just say, freelancing full time was not anything I considered before. My typical response “Me? Run my own business? Say what? HAHAHA, right.” I thought of every reason why I shouldn&#8217;t do it. Lack of steady income, mortgage, self-employment taxes, not having other clients interested in working with me. I could go on and on, really.</p>
<p>Yet there I was, considering quitting my full time job to work for myself. How else was I going to grow? How else was I going to get my name out there?</p>
<p>I only had about a full week to decide what I wanted to do and this wasn&#8217;t an easy decision at all. After some sleepless nights and having the same conversation with my husband at least 100 times, who did nothing but encourage me while I talked myself out of it, I came to a decision.</p>
<blockquote><p>I followed my gut instinct to grab the opportunity that was presented and go for it.</p></blockquote>
<p>I didn&#8217;t 100% know what I was doing, but I knew I loved WordPress, I knew I had the design chops, and I knew I was great with clients. I was raised with a can-do attitude, so I was going to freelance my little heart out, and on March 5th, 2016, I entered the self-employment world.</p>
<p>Fast forward to May 2016, I bought my ticket to WordCamp Minneapolis (because duh, it&#8217;s amazing). I then proceeded to buy my ticket to the Prestige Conference, which was taking place two days after WordCamp. I planned on going to both of these conferences by myself (and anyone who knows me on a personal level knows how much of an accomplishment this was for me). Because I was alone, WordCamp was a bit different this year. I didn&#8217;t have coworkers to talk to so I went in there with a mission to network, but my high anxiety and introverted side decided I should sit quietly and take it all in.</p>
<p>Prestige Conference, for those who aren&#8217;t familiar, is a smaller conference and focused on running your small business. As a noobie freelancer, I needed to know how other like-minded people were running their businesses, how they were succeeding. So, there I was, a full-time freelancer for a whole 3 months, sitting in this conference with some of these big industry names. Intimidating? Yep, just a bit. The speakers left me in awe and I felt so out of my league but I was just happy to be there, learning and absorbing what everyone was saying.</p>
<p>Topher and Cate DeRosia were also at this conference. Topher came up to me and started chatting and I quickly explained my background. He gave me some super helpful tips and resources for freelancing. I may have not emoted it, but I was elated. I made a connection. Not exactly because I was outgoing, BUT STILL, I NETWORKED!</p>
<p>A couple weeks later, Topher contacted me to see if I was interested in making blog images for this very blog. Taken aback, but ever so grateful, I accepted. And after communicating over Twitter, Slack, and email for a couple more weeks, he asked if I wanted to write my own essay. Once again, shocked, dumbfounded, and hesitant because who would want to read my story, but after some encouragement, I was writing my essay.</p>
<h3>Started from a basement now I&#8217;m here</h3>
<p>So from where I started 12 years ago messing around with graphics, CSS &amp; HTML for Xanga in my parents basement in Fargo, ND, I am back in a basement, my own this time, doing pretty much the same thing. Doesn&#8217;t sound like a big upgrade, but believe me, it is.</p>
<blockquote><p>I am sure I wouldn&#8217;t be where I am right now if I skipped out on any of the conferences I went to.</p></blockquote>
<p>Where is my future going? Who knows. I am not a &#8216;go with a flow&#8217; person, but for the first time, I am trying to go with the flow. I am going to be going to more events and plan on going to WordCamp USA so I can take another stab at networking.</p>
<h3>To sum it up</h3>
<p>TL/DR version: My story may be generic, but my love for WordPress is anything but generic. Before WordPress I enjoyed doing graphic design and web design, but discovering the WordPress community helped me find that missing spark I needed. It&#8217;s helped me realize my goals and it&#8217;s helped me find my drive and ambition I didn&#8217;t know I had.</p>
<blockquote><p>The WordPress community is a huge support system in my life and they don&#8217;t even know who the heck I am.</p></blockquote>
<p>I can honestly say I love my job, I love working with clients, and I am damn lucky to be able to do what I do every day.</p>
<p>It&#8217;s not all sunshine and rainbows. I still stress about everything that almost stopped me from doing this and I have my moments where I still question why I quit my full-time job. It may not pan out, it may go in a different direction, but I am along for the ride with WordPress in my backpack and I cannot wait to see where I end up.</p>
<p><em>Special thanks to: My husband for dealing with my indecisiveness, my sister for being my cheerleader when I doubt myself, and my family for supporting my every decision, Topher for taking a couple minutes out of his day to talk to me and everything else that followed, Kelsey and the Enclave team for being my very first client, and everyone else who has supported this venture.</em></p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/finding-wordpress-fargo/\">Finding WordPress in Fargo</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Aug 2016 12:00:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Stacey Barton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Post Status: Choosing plugins, libraries, and frameworks — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=25965\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/choosing-plugins-libraries-frameworks-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1614:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and me, Brian Krogsgard.</p>
<p>In this episode, Joe and I discuss how we choose plugins, code libraries, and frameworks for our projects.</p>
<a href=\"https://audio.simplecast.com/44063.mp3\">https://audio.simplecast.com/44063.mp3</a>
<p><a href=\"https://audio.simplecast.com/44063.mp3\">Direct Download</a></p>
<h3>Topics &amp; Links</h3>
<ul>
<li>How we pick plugins</li>
<li>Analyzing a plugin on WordPress.org</li>
<li>Using GitHub</li>
<li>Picking libraries or drop-in frameworks</li>
<li>Dealing with updates</li>
<li>Differentiating between picking tools for our personal or internal projects, versus doing so for clients</li>
</ul>
<h3>Sponsor: WooCommerce</h3>
<p><a href=\"https://woocommerce.com/\">WooCommerce</a> makes the most customizable eCommerce software on the planet, and it’s the most popular too. You can build just about anything with WooCommerce. <a href=\"https://woocommerce.com/\">Try it today</a>, and thanks to the team at WooCommerce being a Post Status partner</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 06 Aug 2016 14:57:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: The Joy of Giving Back\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"http://heropress.com/essays/joy-giving-back/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8817:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/08/080316-Juhi-Saxena-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Thanks to my mother; she has always supported me, without her I would not be here.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Joy of Giving Back\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Joy%20of%20Giving%20Back&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fjoy-giving-back%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Joy of Giving Back\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fjoy-giving-back%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fjoy-giving-back%2F&title=The+Joy+of+Giving+Back\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Joy of Giving Back\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/joy-giving-back/&media=http://heropress.com/wp-content/uploads/2016/08/080316-Juhi-Saxena-150x150.jpg&description=The Joy of Giving Back\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Joy of Giving Back\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/joy-giving-back/\" title=\"The Joy of Giving Back\"></a></div><p>I was born and brought up in a very small town called <a href=\"https://en.wikipedia.org/wiki/Patiyali\">Patiyali</a>. Patiyali is on the banks of the river Ganga. It is in India&#8217;s most populous state, Uttar Pradesh. Patiyali was laid back and idyllic, with no real opportunities in IT or computers. My father never wanted me to go for IT Job because I wouldn&#8217;t get chance to work near my town. He preferred I live closer home.</p>
<p>My mother supported me and somehow she convinced my father to let me follow my dreams. Thanks to my mother; she has always supported me, without her I would not be here.</p>
<p>In my college there was choice between Dot Net and Java, I choose Java. I have always been fan of Open Source. I loved Java, I had also started my blog on Java in my college time. After completing my MCA I had joined my first Job as a Java Developer. I did it for 1.5 years.</p>
<p>I never wanted to quit my job as Java Developer, but I had to because of my sister health issues. Doctors said she would not survive, it was very critical time.</p>
<h3>How I got into WordPress (Hello WordPress!)</h3>
<p>Unemployed for 6 months, Java was still on my mind. I could not get any Job. Meantime I had started teaching. I was hopeless, I thought I would never get a chance to work in any IT company again. Then a friend, <a href=\"https://twitter.com/ankitguptaindia\">Ankit</a>, who worked in <a href=\"https://rtcamp.com/\">rtCamp</a>, a company based in Pune told me to look up WordPress and asked me to apply for a QA opening. That lucky day I got call from rtCamp and cleared my interview. Now the challenge was to convince my parents to allow me to go Pune. Pune is in Maharashtra, almost 1000 miles away from my hometown.</p>
<p>My parents are from a smaller town, they were worried about me living alone in a big city. It was a challenge to convince them to let go.</p>
<p>Some things they worried about:</p>
<ul>
<li>Place to stay: It was too tough to find a place when I had no one in Pune.</li>
<li>Female Count: My mother was most worried about female count. rtCamp had only two female employees including me. (now they have 7)</li>
</ul>
<p>Before my first day, my father and I went to rtCamp&#8217;s address and looked up the office. Convinced the neighborhood where it was located was semi-residential and safe, he felt much better about Pune.</p>
<h3>But WordPress is just a blogging platform</h3>
<p>Before joining rtCamp I had known WordPress as only a blogging platform. My friends who worked in MNCs usually dismissed it as a blogging platform that could create only static sites at best. I did not have a very different opinion than my friends.</p>
<p>Working in rtCamp was fun. I made friends but to be honest I did not find WordPress very interesting for the first six months in the beginning.</p>
<h3>WordPress community called out to me</h3>
<p>Then I saw my colleagues involved in the WordPress community as Core contributors and in many other ways. I saw how my company was encouraging people to get involved in community.</p>
<p>That encouraged me to get involved in with <a href=\"http://make.wordpress.org\">make.WordPress.org</a>. I highly recommend you do that too.</p>
<h3>First Contribution Core Patch</h3>
<p>My first contribution was a small patch in the core. I was helped by colleagues and when it was accepted I was thrilled. Now something I did was on millions of websites. It might be a small line or two but still it was on millions of websites.</p>
<p>In September 2015, I took part in WordCamp Pune. It was my first WordCamp. I met so many wonderful people; <a href=\"http://heropress.com/essays/making-family/\">Topher</a>, <a href=\"http://heropress.com/essays/breaking-the-silence/\">Mahangu</a>, <a href=\"http://heropress.com/essays/finding-hope-darkness/\">Raghavendra Satish Peri</a>, I got to learn so many new things from them.</p>
<p>I try to contribute (Giving back to community) in every possible way, by giving support, translating, Review themes, and documentation.</p>
<h3>Theme Review</h3>
<p>Theme review was the challenge for me as I had no idea about WordPress development so I thought to learn by seeing other people&#8217;s code. It was challenge for me because I am QA (non- WordPress Developer), other people assume that we can not get involved in any code related activity. I learned a lot by reviewing themes, every day I review a theme I learn so many new things. The theme review team is wonderful, there are so many wonderful people like <a href=\"https://twitter.com/KevinHaig\">Kevin Archibald</a>, <a href=\"https://twitter.com/carolinapoena\">Carolina Nymark</a>, <a href=\"https://twitter.com/Kenshino\">Jon</a>, <a href=\"https://twitter.com/nilambar\">Nilambar</a>, who are ready to help you always. I am happy to be part of theme review team.</p>
<p>I love WordPress, it&#8217;s wonderful, it has wonderful community.</p>
<h3>Why do I love being part of WordPress?</h3>
<p>Recognition.</p>
<p>I have always been crazy for being known for something. In college time when I used to get likes for my blog post or any comment, I used to feel like…&#8230;wow, I can not even express that feeling in words. So that feeling WordPress gives me every time I gets mention in any WP.org posts. It gives me recognition.</p>
<p><a href=\"https://make.wordpress.org/themes/2016/06/28/thank-you-reviewers-2/\">https://make.wordpress.org/themes/2016/06/28/thank-you-reviewers-2/</a><br />
<a href=\"https://make.wordpress.org/docs/2016/07/12/summary-for-helphub-meeting-12-july/\">https://make.wordpress.org/docs/2016/07/12/summary-for-helphub-meeting-12-july/</a><br />
<a href=\"http://make.wordpress.org/core/2015/09/21/week-in-core-sept-13-21-2015/\">http://make.wordpress.org/core/2015/09/21/week-in-core-sept-13-21-2015/</a><br />
<a href=\"https://wordpress.org/news/2016/02/contributor-weekend-one-hour-video/\">https://wordpress.org/news/2016/02/contributor-weekend-one-hour-video/</a></p>
<h3>A Thank You Note</h3>
<p>All this wonderful adventure would not have been possible without someone back in Patiyali, who stood up for me and encouraged me to follow my dreams. My mother.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/joy-giving-back/\">The Joy of Giving Back</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Aug 2016 12:00:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Juhi Saxena\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Post Status: Using Kickstarter to fund open source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=25896\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://poststatus.com/kickstarter-open-source-project/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:12695:\"<p>Open source is how we create raw ingredients for the digital economy. It&#8217;s a rough, organic, and hugely important process. In fact, open source represented $143 million <a href=\"https://medium.com/@nayafia/open-source-was-worth-at-least-143m-of-instagram-s-1b-acquisition-808bb85e4681\">of Instagram’s $1 billion acquisition</a>. Yet the role of open source as economic infrastructure <a href=\"https://medium.com/@nayafia/funding-digital-infrastructure-8b1bf8b8e4cb\">is perilous at best</a> — the next <a href=\"http://heartbleed.com/\">Heartbleed</a> could be any day. Bridges don&#8217;t collapse often, but sustainably maintained open source projects are few and far between. Unless a project has the backing of a benevolent organization, it’s all too easy to <a href=\"https://twitter.com/danielbachhuber/status/752973741781463040\">fall into a state of disrepair</a>.</p>
<p>I do my part by volunteering several hours each week to maintain an open source project called <a href=\"https://wp-cli.org/\">WP-CLI</a>. Last November, I launched a Kickstarter project titled “<a href=\"https://www.kickstarter.com/projects/danielbachhuber/a-more-restful-wp-cli\">A more RESTful WP-CLI</a>” to provide a way for me, a <a href=\"https://handbuilt.co/\">self-employed freelancer</a>, to spend a large amount of dedicated time on WP-CLI and the <a href=\"http://v2.wp-api.org/\">WordPress REST API</a>. The funding wrapped up last month, so I thought it might be helpful to provide a retrospective on what worked, what I’d improve upon next time, and where I think this is all headed.</p>
<h3>We all love #shipping</h3>
<p>As a very brief summary of how I used the money:</p>
<ul>
<li>Over seven months, I spent 226 total hours on WP-CLI (150 of which were funded by the Kickstarter project) and 111 total hours on the WordPress REST API (92 of which were funded by the Kickstarter project).</li>
<li>I shipped three major versions of WP-CLI, and helped with three releases of the WordPress REST API v2 plugin.</li>
<li>In each release, I personally introduced dozens of new features to each project, fixed ten times as many bugs, provided code review, answered support questions, and revised documentation.</li>
</ul>
<p>There&#8217;s a <a href=\"https://wp-cli.org/restful/\">very complete project landing page</a> if you’d like to go through all of the details.</p>
<h3>“I’d love to get paid to work on open source too”</h3>
<p>On the surface, using Kickstarter seems like a great way to fund open source involvement: create a campaign, people give you money, and you get paid to work on your project. It&#8217;s actually fraught with challenges, though. The more appropriate way to think about using Kickstarter for open source is that you&#8217;re creating a one-time project for yourself, and have hundreds of customers to serve.</p>
<h4>Kickstarter can help freelancers make significant open source contributions</h4>
<p>It&#8217;s worth highlighting the single most important outcome of the crowdfunding campaign: I was able to spend dedicated time on WP-CLI and the WordPress REST API that I wouldn’t have been able to spend otherwise (or at least in such a concentrated period).</p>
<p>As a freelancer, I evaluate every hour of my working day as either billable or non-billable. While I&#8217;m fortunate I can already spend a large amount of non-billable time as I please, at the end of the day the time I don&#8217;t spend on billable hours is money out of my pocket. Kickstarter enabled me to consider open source contributions as billable, and rationalize dedicating a large number of hours each week to the projects.</p>
<p>In hindsight, the timing of the Kickstarter project turned out really well too. Because I didn&#8217;t have any clients when I quit my full-time job, the funds were a helpful cushion during the slow holiday period, and I had something to work on in January.</p>
<h4>It&#8217;s important to have backers with deep pockets</h4>
<p>Incorporating higher contribution levels, which I had primed by chatting with prospective backers in advance, meant the funding leapt forward in huge bounds. Every time one of those contributions came in, it moved the needle in a substantial way, and kept the excitement level up. This also helped keep lower level contributors engaged and willing to participate. I can’t imagine how difficult it would be to try and fund a Kickstarter exclusively on sub-$100 contributions.</p>
<p><a href=\"https://poststatus.com/profiles/ben-welch-bolen/\">Ben Welch-Bolen</a>, who I hadn&#8217;t met until he snagged the top contribution slot, explains:</p>
<blockquote><p>What attracted us to the WP CLI Kickstarter project was the higher pledge options that had some meaningful exposure for us to his community, and to him as a resource. Plus it was great to give back to a tool we use ourselves and follow closely.</p></blockquote>
<p>I consider myself fortunate to have an existing audience willing to financially back my open source contributions. Because of my track record, I was able to put my own social capital on the line as collateral, to “guarantee” the project. <span class=\"pullquote alignright\">If you can’t name fifty people who would realistically fund your project, then you’ll need to have a substantial marketing budget (of time or money) to raise awareness.</span></p>
<h4>Scope in open source is a double-edged sword</h4>
<p>While I had an established objective for the Kickstarter, I didn’t have a clearly defined scope. This meant that some intermediate implementation details blocked later features. For instance, you can’t use <a href=\"https://github.com/wp-cli/restful\">RESTful WP-CLI</a> to manage menus, because the menu endpoints don’t yet exist in the WordPress REST API.</p>
<p>At the same time, not having a super defined scope meant I could take the liberty to spend some of the time on what I thought was most useful. WP-CLI package management and the documentation portal essentially launched because I burned out working on the WordPress REST API.</p>
<h4>Crowdfunding requires a certain type of personality</h4>
<p>As far as honoring my commitments to my backers goes, I’d consider my Kickstarter a success. I did what I said I was going to do, on the schedule I communicated. I was able to do this, in part, because I’m a very meticulous person. I produce reasonably accurate estimates, keep track of how I spend my time, and over-communicate with stakeholders.</p>
<p>If this doesn’t sound like you, then crowdfunding might not be a great fit. As a freelancer, you need to know in advance how the work will fit alongside client commitments. As a full-time employee, you need to make sure you&#8217;re capable of completing the project on nights and weekends.</p>
<p><a href=\"https://poststatus.com/profiles/joshua-strebel/\">Josh Strebel</a>, to whom I&#8217;m thankful for a great deal of early feedback, thinks:</p>
<blockquote><p>The open source community is primarily reputation based, WordPress especially. Getting a campaign funded on Kickstarter is about trust. Trust and reputation are shades of the same color so to speak. If you build a reputation of trust, launching and promoting a Kickstarter project should be fairly easy as your peers trust you to execute against your stated goals (their money is used for it’s stated intent and appears to achieve the desired outcome). I do not think you can reverse the order, the reputation in the community must be cultivated prior to seeking funds.</p></blockquote>
<p>One huge challenge with a Kickstarter project is that you have to do all of the work after you receive the money, which can be really difficult for procrastinators. <span class=\"pullquote alignright\">You&#8217;re also faced with dozens of stakeholders to make happy, with your credibility and reputation on the line, so you need to make sure they’re regularly kept in the loop.</span></p>
<h4>Most of what goes into open source isn’t very sexy</h4>
<p>Contributing to open source isn’t just cranking out lines of code.</p>
<p>I spent a huge amount of the funded WordPress REST API time on discussion, code review, and support. These maintenance tasks aren’t very appealing for crowdfunding, and probably wouldn’t make it very far as a part of a Kickstarter project. People want to fund sexy new features, not bug fixes, maintenance, documentation, etc.</p>
<p>At the same time, this type of work is hugely expensive, and represents a substantial majority of the effort involved in maintaining an open source project.</p>
<p>Fortunately, <a href=\"https://poststatus.com/profiles/josh-koenig/\">Josh Koenig</a> has a healthy understanding of where open source fits into his business:</p>
<blockquote><p>We believe that open source software is a crucial part of the internet&#8217;s value proposition to humanity. However, at this stage in the development of our company, investments in open source have to be strategic. Any sustained contribution we make has to be justifiable in terms of hour it helps us improve our platform or grow our business.</p>
<p>As such our primary code and sponsorship contributions tend to be down the stack, to projects or libraries that we depend on to run our platform. When it comes to WordPress or Drupal, we typically contribute in ways that will have the most impact for our core audience: professional developers. So that means tools and utilities like WP-CLI, Redis or Solr integration, diagnostic tools, etc.</p></blockquote>
<h4>Simplicity means more time spent on the project</h4>
<p>On the practical side, offering consulting-time rewards instead of physical swag helped me keep reward costs manageable. Only two-thirds of backers redeemed their rewards, so I spent a total of 41.25 hours on that part of the project.</p>
<p>As it turns out, <a href=\"https://poststatus.com/profiles/jason-resnick/\">Jason Resnick</a> even appreciated the open-ended approach to rewards:</p>
<blockquote><p>The best part of the project was the ability to choose my own path, so to speak. Kind of like those Choose Your Own Adventure books when you were a kid. WP-CLI can be used in so many different ways for different tasks, it was awesome to be able to just hop on a call with you and one or two other folks that also wanted to learn the same thing, and get the answers to the specific questions.</p></blockquote>
<p>It also proved helpful to produce a landing page for the project with the overall goal, links to blog posts and milestones, and over-communication on how I was “spending” the money. In hindsight, I wish I had been more diligent about my progress updates and communication about what I was actually working on.</p>
<p>My favorite production trick: I used HTML and CSS to produce a graphic in my browser, and took a screenshot of it &#8212; quite possibly the easiest way to create a Kickstarter header image, for you other non-designers.</p>
<h3>Kickstarter is only the beginning</h3>
<p>Kickstarter is an amazing platform for funding creativity. The next time I launch a crowdfunding project, I&#8217;ll make sure to:</p>
<ul>
<li>Get feedback on the idea from as many people as possible, as a way of generating interest and buy-in.</li>
<li>Establish a project scope with features people want, while making sure there&#8217;s ample budget for the unglamorous work.</li>
<li>Keep the rewards rewarding, and as simple to deliver as possible.</li>
<li>Over-communicate progress, knowing I have hundreds of customers to make happy.</li>
</ul>
<p>In the case of WP-CLI, <a href=\"https://runcommand.io/\">runcommand</a> is my new company to pick up where Kickstarter leaves off.</p>
<p>An increasing number of businesses use WP-CLI as a key part of their infrastructure. Right now, each business has to internalize much of the cost associated with creating WP-CLI-based features. For instance, many web hosts would benefit from offering a web browser interface for running WP-CLI commands. However, there isn&#8217;t yet a great way for them to collaborate and produce a common solution.</p>
<p><a href=\"https://runcommand.io/\">runcommand</a> provides a platform for these businesses to <a href=\"https://runcommand.io/sparks/\">co-produce a shared open source roadmap</a>, and offload much of the burden of developing and maintaining infrastructural components.</p>
<p>Thinking about using Kickstarter to fund your open source projects? Have questions about runcommand? I&#8217;d love to hear from you — <a href=\"mailto:daniel@runcommand.io\">daniel@runcommand.io</a> or <a href=\"https://twitter.com/danielbachhuber\">@danielbachhuber</a> on Twitter.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Aug 2016 21:03:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Daniel Bachhuber\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Post Status: Scaling WordPress — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=25850\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://poststatus.com/scaling-wp-draft/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2270:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>
<p><span>In this episode, Joe and Brian talk scaling WordPress, and what to do when you think you might’ve reached WordPress’s limits. From meta data, to users, to traffic management, they break down some of the most common scaling issues.</span></p>
<a href=\"https://audio.simplecast.com/43493.mp3\">https://audio.simplecast.com/43493.mp3</a>
<p><a href=\"http://audio.simplecast.com/43493.mp3\">Direct Download</a></p>
<h3>Topics</h3>
<ul>
<li>Posts</li>
<li>Meta</li>
<li>Search</li>
<li>Database</li>
<li>Users</li>
<li>Traffic (types of caching)</li>
</ul>
<h3>Links</h3>
<ul>
<li><a href=\"https://github.com/elastic/elasticsearch\">Elasticsearch</a></li>
<li><a href=\"https://github.com/10up/ElasticPress\">ElasticPress</a></li>
<li><a href=\"https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-mlt-query.html\">More Like This Query</a></li>
<li><a href=\"https://github.com/alleyinteractive/es-wp-query\">Elasticsearch WP_Query</a></li>
<li><a href=\"https://memcached.org/\">Memcached</a></li>
<li><a href=\"http://redis.io/\">Redis</a></li>
<li><a href=\"https://github.com/Rarst/fragment-cache\">Rarst Fragment Cache Plugin</a></li>
<li><a href=\"https://github.com/humanmade/hm-fragment-cache\">Human Made Fragment Cache drop-in</a></li>
</ul>
<h3>Sponsor: iThemes</h3>
<p><span><a href=\"https://ithemes.com/\">iThemes</a> has a full suite of excellent products to help you level up your WordPress website. From iThemes Security, to BackupBuddy’s new live backups, to Exchange for your next membership site, iThemes has you covered. Thanks to the team at iThemes being a Post Status partner!</span></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Jul 2016 17:55:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WordPress.tv Blog: Matt Gibbs: Diving Into Commercial Plugin Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=544\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"http://blog.wordpress.tv/2016/07/28/matt-gibbs-diving-into-commercial-plugin-development/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1207:\"<p>Learn key takeaways from my running a plugin business. Matt Gibbs goes over how to determine whether your plugin idea can sell, how to set the price, deciding on the business model, whether to self-host, and handling support.</p>
<div id=\"v-9NHU2NND-1\" class=\"video-player\">
</div>
<p><a href=\"http://slides.com/logikal16/deck#/\">Slides</a></p>
<p>From <a href=\"https://wptv.wordpress.com/event/wordcamp-asheville-2016/\">WordCamp Asheville 2016</a></p>
<p>More <a href=\"https://wordpress.tv/\">WordCamp videos</a></p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/544/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/544/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=544&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://blog.wordpress.tv/2016/07/28/matt-gibbs-diving-into-commercial-plugin-development/\"><img alt=\"Matt Gibbs: Diving Into Commercial Plugin Development\" src=\"http://videos.videopress.com/9NHU2NND/matt-gibbs-diving-into-commercial-plugin-development-wcavl-2016_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jul 2016 05:15:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Cory Miller and Matt Danner Launch New Business Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57918\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/cory-miller-and-matt-danner-launch-new-business-podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2723:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/03/podcast.jpg?ssl=1\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/03/podcast.jpg?resize=960%2C472&ssl=1\" alt=\"photo credit: Maciej Korsan\" class=\"size-full wp-image-52297\" /></a>photo credit: <a href=\"https://stocksnap.io/photo/IQVHQYS3GL\">Maciej Korsan</a>
<p>WordPress professionals have demonstrated a decent appetite when it comes to listening to and supporting podcasts on <a href=\"http://iamdavidgray.com/best-wordpress-podcasts/\" target=\"_blank\">a wide variety of topics</a>, including industry news, development, e-commerce, marketing, and startups. Cory Miller, founder of <a href=\"https://ithemes.com/\" target=\"_blank\">iThemes</a>, and Matt Danner, the company&#8217;s COO, are adding a new business podcast to the mix with the launch of <a href=\"http://leader.team/\" target=\"_blank\">Leader.team</a>.</p>
<p>The <a href=\"http://leader.team/episode-1-introductions-background-backstory/\" target=\"_blank\">first episode</a> introduces the hosts and the goals of the show and is now available on iTunes. Miller and Danner, who often have casual chats about business strategy, decided to start recording their conversations to share with others who might benefit from their mistakes and successes in entrepreneurship.</p>
<p>&#8220;We&#8217;re going to talk about values, beliefs, philosophies, tools, all kinds of things that we have learned over the years, either accidentally or on purpose, about how to lead and manage teams and grow a business,&#8221; Miller said in the opening episode.</p>
<p>Leader.team will feature a short (15-25 minute) episode twice a month on Thursdays with practical advice for leaders and managers. The second episode will be available tomorrow, and Miller and Danner have already outlined the topics for the next four episodes with questions that will guide the discussion on the show:</p>
<ul>
<li>The Beliefs, Values, Philosophies We Hold Dear</li>
<li>The Culture We Cherish And Protect</li>
<li>Finding, Recruiting and Hiring the Best People</li>
<li>Leading a Hybrid Team of In-Office and Remote Team Members</li>
</ul>
<p>While Miller and Danner are not necessarily marketing the show as a WordPress-focused podcast, many of their shared experiences have come from growing one of the longest-running, successful product companies in the WordPress ecosystem. Upcoming episodes will feature big picture business topics that can be applied to many different types of industries. Leader.team episodes have been submitted to both iTunes and Google Play and will also be available on the show&#8217;s <a href=\"http://leader.team/\" target=\"_blank\">website</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 22:19:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: WordPress for Android 5.6 Adds Screen to Invite New Users, Expands Reader to Include Related Posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=58328\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://wptavern.com/wordpress-for-android-5-6-adds-screen-to-invite-new-users-expands-reader-to-include-related-posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2114:\"<p><a href=\"https://apps.wordpress.com/2016/07/27/wordpress-for-android-version-5-6/\" target=\"_blank\">Version 5.6</a> of the WordPress for Android app was released today with expanded features for WordPress.com sites. The previous release <a href=\"https://wptavern.com/wordpress-for-android-5-5-debuts-new-visual-editor-adds-user-management\" target=\"_blank\">added user management capabilities</a> under a new ‘People’ menu and 5.6 introduces the ability to invite new users.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/invite-new-users.png?ssl=1\"><img src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/invite-new-users.png?resize=281%2C500&ssl=1\" alt=\"invite-new-users\" class=\"aligncenter size-large wp-image-58332\" /></a></p>
<p>This release also adds a related posts section to posts found in the Reader. It appears directly underneath likes on posts and pulls in three related articles from the WordPress.com community of sites.</p>
<p>Version 5.6 adds the ability to customize the notification sound for new activity from the WordPress app. A handful of other small changes are also included in 5.6, as detailed in the release post:</p>
<ul>
<li>Post list: Posts in the middle of being uploaded will be disabled and shown a progress indicator. A publish button is added on drafts.</li>
<li>“View Site” and “View Admin” will now open the device browser.</li>
<li>A comment is automatically approved when you reply to it.</li>
</ul>
<p>If you use the app to manage both WordPress.com and self-hosted sites, you will notice a growing discrepancy between the site management screens and options available for each. Self-hosted site owners still cannot use the app to manage themes or users, and the gap is widening for each release. Version 5.6 expands features for WordPress.com users, while the capabilities for self-hosted sites fall further behind. We have requested a comment from Automattic&#8217;s mobile engineers regarding the roadmap for managing self-hosted sites and will update when we receive a response.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 20:19:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: IncludeWP: A Directory That Caters to WordPress Frameworks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=58222&preview_id=58222\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/includewp-a-directory-that-caters-to-wordpress-frameworks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3745:\"<p>Earlier this year, the WordPress plugin directory review team <a href=\"https://wptavern.com/the-wordpress-plugin-directory-will-no-longer-accept-frameworks\">reminded developers</a> that frameworks are not allowed in the directory. WordPress core doesn&#8217;t have a built-in way to support plugin dependencies which creates extra hassle for users.</p>
<p>Seeing an opportunity, Vova Feldman, founder of Freemius, created <a href=\"https://includewp.com/\">IncludeWP</a>, a directory specifically catered to listing WordPress theme and plugin frameworks.</p>
<img class=\"wp-image-58242 size-full\" src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/IncludeWPFrontpage.png?resize=1007%2C690&ssl=1\" alt=\"IncludeWPFrontpage.png\" />IncludeWP Front Page Displaying Theme and Plugin Frameworks
<p>Frameworks are listed using their public GitHub repositories. Visitors can sort frameworks by stars, forks, issues, or name. Selecting a framework displays information including, how many sites it&#8217;s on and the number of plugins and themes hosted on the official directory that are using it.</p>
<img class=\"wp-image-58259 size-full\" src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/IncludeWPSinglePageView.png?resize=1014%2C664&ssl=1\" alt=\"IncludeWPSinglePageView.png\" />IncludeWP Framework Single Page View
<p>To identify which plugins and themes are used by frameworks, Feldman collaborated with Luca Fracassi of <a href=\"https://addendio.com\">Addendio</a>. &#8220;We realized that we can leverage the WordPress.org APIs and SVN to automatically identify plugins and themes associated with frameworks on WordPress.org,&#8221; Feldman said. &#8220;So we decided to join forces.&#8221;</p>
<p>Fracassi developed a framework identification system and ran it against WordPress.org. The data was exposed via a custom API endpoint that allowed Feldman to display it on IncludeWP. &#8220;We leveraged Fracassi&#8217;s endpoint to fetch the plugins and themes data from WordPress.org and present it under the framework’s page,&#8221; Feldman said.</p>
<p>Like the frameworks listed on IncludeWP, the code powering the site is open source and <a href=\"https://github.com/Freemius/IncludeWP\">available on GitHub</a>. &#8220;I’m preaching about code reusability,&#8221; Feldman said.</p>
<p>&#8220;The least I can do is provide the option for other developers to reuse our code for their projects. By reusing this code base, everyone can easily create a similar category type listing mini-site for GitHub repos.&#8221;</p>
<p>Developers interested in having their frameworks listed need to fork the <a href=\"https://github.com/Freemius/IncludeWP\">IncludeWP repository</a> on GitHub, add the framework as a .php in the src/frameworks folder, and submit a Pull Request. However, in order to be listed, frameworks must meet the following guidelines.</p>
<ul>
<li>The framework must be GPL Licensed.</li>
<li>The framework must have a public repository on GitHub</li>
<li>Complete each field in the src/frameworks area</li>
<li>Add a reference to the plugin or theme&#8217;s slug if it&#8217;s hosted on WordPress.org</li>
<li>Have a short description</li>
</ul>
<p>Feldman says he doesn&#8217;t plan on generating revenue through the site and considers IncludeWP as one of many contributions back to the WordPress community.</p>
<p>IncludeWP is a great resource for developers whose frameworks are spread across GitHub who are looking for ways to generate more exposure. It&#8217;s also an excellent way to see what&#8217;s available in the WordPress ecosystem. Take a look around <a href=\"https://includewp.com/\">IncludeWP</a> and let us know what you think in the comments.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 15:07:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"HeroPress: 16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1177\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://heropress.com/essays/16-little-things-grew-into-big-things/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:34430:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/07/072616-16-2-little-things-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pill quote:WordCamp was not a conference, it was a sharing of ideas. It was not a convention, it was a place to build actual relationships.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: 16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=16%20Little%20Things%20That%20Grew%20Into%20Big%20Things%20%28My%20Life%20in%20a%20Bunch%20of%20Words%29&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2F16-little-things-grew-into-big-things%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: 16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2F16-little-things-grew-into-big-things%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2F16-little-things-grew-into-big-things%2F&title=16+Little+Things+That+Grew+Into+Big+Things+%28My+Life+in+a+Bunch+of+Words%29\" rel=\"nofollow\" target=\"_blank\" title=\"Share: 16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/16-little-things-grew-into-big-things/&media=http://heropress.com/wp-content/uploads/2016/07/072616-16-2-little-things-150x150.jpg&description=16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: 16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/16-little-things-grew-into-big-things/\" title=\"16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)\"></a></div><p>I suppose I’ve always had the “entrepreneurial spirit.” My first taste of being in business likely occurred prior to this, but the first time I *remember* really enjoying building my own business was in the fifth grade.</p>
<h3>Little Thing #1</h3>
<p>For Christmas, I had gotten a new handheld electronic game. I suspect that most readers here will not remember these, but the one I had gotten was the race car game. It was a game with a button that slid only left and right, the goal to be to dodge the oncoming LEDs with the LED you controlled with the slider. It was a simple game but fun. I brought it to school and started charging people .25 per game to play. I averaged $9.00 a day. That’s a lot to a fifth grader. I learned about profit and expenses (batteries do, after all, cost money). I learned about friendly competition when a friend of mine and classmate brought his electronic handheld football game to school and charged .50 per game. I learned about volume sales (my game would last about a minute or two whereas the football game lasted substantially longer). I also learned about charging what the market would bear (I couldn’t get .50 per game but I could do .25 all day long). And lastly, I learned about “The Man” and how something that is going so well can go away in the blink of an eye when the school, after about a month of my enterprise, decided that these games were too much of a distraction to “real learning” and shut both myself and my competitor down.</p>
<blockquote><p>Little did the school know that I learned more with my business experience in that short time than I did my whole fifth grade year</p></blockquote>
<p>(it was my worst experience in elementary school, yet one of my most formative). When all was said and done, though, I had made a couple hundred dollars from a game that cost about $40 (which I hadn’t even paid for). Not a bad return.</p>
<h3>Little Thing #2</h3>
<p>In High School economics class, we learned how the stock market worked. We split the class into several groups and formed “corporations.” The members of these corporations then bought stock with real money. This money went to buy product that we would sell to the student body over a period of a couple weeks. I had been asked to be a member of the one corporation due to a previous simulation in which I had almost successfully beaten another team by coordinating an uprising against them (the other team was far more powerful) by secretly putting several of the smaller, less powerful teams together to try to take out the big team. It almost worked. Almost.</p>
<p>This team asked me to be part of this new corporation because they were impressed. We decided that the thing we were going to sell to the student body was going to be candy. I invested $9.00 into the company. Of the members of this newly formed team, I invested the most. We talked about what types of candy to buy. It mostly involved peanut butter cups and skittles as I recall.</p>
<p>I don’t remember what the other corporations sold. It didn’t matter. It was not true competition because we each were exclusive with our products. During breaks, lunch, and after school, we all had our tables set up in the quad and sold our goods. Our corporation slaughtered all the others. It wasn’t even close.</p>
<p>At the end of it all, we determined the stock value based on costs of goods sold and profit left over. We sold our stocks for what they were worth. My $9.00 had turned into about $75.00 in the two weeks. I made, far and away, more money than anyone else in the class (and according to the teacher, more than anyone ever had in that simulation). Making money was easy, and it was what I was meant to do. Or so I thought.</p>
<h3>Little Thing #3</h3>
<p>Back to Fifth Grade. At the time, my best friend, Jack, had introduced me to Basic programming. My dad worked at a local University and as a result, the head of the Math &amp; Computing Department granted me a student account on the mainframe (their department was right across from my dad’s “Modern Languages” Department). It was here that I learned that a simple Basic statement such as “10 goto 10” could actually take down a campus-wide system as these mainframes were really not built to do multi-tasking. The joy of an endless loop. I hate to admit that there were times that I would laugh maniacally as other students in the lab would start literally banging their keyboards because nothing was happening. To all of you, I most humbly and heartily apologize. I was a jerk. I blame Jack.</p>
<blockquote><p>None the less, I had been bitten by the programming bug.</p></blockquote>
<p>I expanded my knowledge beyond causing others brain damage for fun and actually started to program useful things. My dad hired me at .50 an hour (which I’m pretty sure came out of his own pocket) and I worked on programs that would quiz his students. It’s also probable that he did it to keep me out of trouble.</p>
<p>My brain wrapped itself around programming rather quickly and, as a general rule, every day after school, you’d find me back up in one of the University labs hacking away. It wasn’t a bad life. I liked it a lot. My favorite lab was the one right outside the server room. I got to know the students who kept the systems up. I remember when they got some new storage. I want to say it was a drive that could store 20 megabytes. It was literally as big (and heavy) as a washing machine. Oh. . . the good ol’ days.</p>
<h3>Little Thing #4</h3>
<p>I believe it was during the summer between Eighth Grade and Ninth Grade (circa 1980-81) that a representative from a company called Commodore came and demonstrated this great new personal computer. It was better than a TRS80 and far more affordable than the Apple ][. It had color and a whopping 5 KB of RAM. That is pretty impressive. All you needed to do was hook it up to your TV. I don’t remember what I paid for it, but I knew this was the machine for me, so I ponied up with my hard-earned money for the computer that looked like nothing more than a keyboard and a tape drive. Before I knew it (well . . . four to six weeks later), I was a programming fool from the comfort of my own home. I could get used to this. It was a few months later that I had saved up enough for a 300 baud modem (If you don’t know what 300 baud is, let me explain: It’s SLOW) and learned how I could hook up to my account at the college. It was my first taste of remote work and I knew that, one day, it was going to be the life I’d be living. The world would just have to catch up (ya, I was just a scosche cocky back then).</p>
<p>A year later, I upgraded to a Commodore 64 and purchased my first Commodore 1541 5.25” floppy drive. I learned about sprite graphics and created a game based on the Saturday Night Live character, “Mr. Bill.” The game totally sucked, but suffice it to say, Mr. Bill died a LOT at the hands of Sluggo. A LOT.</p>
<h3>Little Thing #5</h3>
<p>Between my Junior and Senior years of high school, I was going to take a trip to Europe. I knew that Europe was no place to take my computers, and what I really needed was to make memories. I had always envied my sister’s camera and decided that it was time for me to dive into 35mm photography, so I sold my whole computer setup and purchased my first 35mm camera; a Canon AE1-Program with a couple of lenses and some books and accessories. I quickly learned how to actually use the thing and gained a basic understanding of the math behind the exposure you want. During that trip, I shot as many rolls of film as I could afford and discovered that maybe a life in photography was what I really wanted.</p>
<p>I came back, my senior year, where I was the head photographer for the yearbook. I was rather proud of that yearbook and I put a lot of time and effort into it. So much so, that the yearbook staff felt obligated to give me an award. As mentioned earlier, in my younger years, I was sort of a jerk, so I cannot remember what the award was. At the time it meant a lot to me, though.</p>
<p>I loved photography and I loved technology. If only there was some way to combine photography with technology. . . Maybe one day.</p>
<h3>Little Thing #6</h3>
<p>After high school, I went to about one semester of College. I say, “about,” because I think the only class I regularly attended was the photography class I was taking. I really enjoyed the class and the teacher. But most of all, I enjoyed the full access to the dark room where I was the head know-it-all and all the other students came to me for assistance. My ego was riding pretty high around that time.</p>
<h3>Little Thing #7</h3>
<p>After deciding to drop out of college (much to the chagrin of my dad &#8211; did I mention he was a University Professor?), I knew I needed to make money. I applied for (and got) a job with a company called Lifetouch National School Studios. Many of you might be familiar with this company. They specialize in school photography. I worked there for two school years, the first being an assistant and general runner and then the next year I did a lot of darkroom work. I was in my zone. I got to be good friends with a guy named Gene who was the world’s biggest Raiders fan and even got me a press pass a couple years later to shoot from the sidelines.</p>
<blockquote><p>During that game, I met people like Howie Long, Bo Jackson and Bob Golic.</p></blockquote>
<p>I also met James Garner who got to stand by the bench because, well, he was James Garner. Incidentally, he was exactly what you’d have expected him to be. Gene also introduced me to the world of Santa Claus mall photography; possibly the worst job I ever had. No, I was not the Santa. I was the photographer. The problem was never the kids. It was always the parents. You try telling parents that their kid is hysterical, will never calm down, and will never smile for Santa because he or she is scared to death of the man with the beard. Or, maybe, try to find something to clean up the pee on the floor because some parent made their kid wait in line for two hours while he had to go to the bathroom (usually the two hours was because of a number of the aforementioned parents living in their dreamland of a smiling child). Or, having a parent make you tell their child that Santa has gone home for the day (because the parents waited until after the mall closed before they decided to get in line). All true stories. Ya &#8211; I only did it one Christmas. Ironically, I lasted longer than most.</p>
<h3>Little Thing #8</h3>
<p>I quickly realized that I needed to be making more money and that commissioned sales was where I needed to be. I applied for (and got) a job at a company called Circuit City. They sold electronics of all sorts. I originally wanted to work in their Camera Department, only to discover that they didn’t have one. So, it was Small Electronics for me, where I quickly became Assistant Manager of the department.</p>
<p>After cutting my teeth in electronics, I figured out that where I really wanted to be was in the Video Department. It’s where the money was. So I put in for a transfer and that’s where I got to be good friends with Gregg Franklin. Gregg and I forged a strong friendship and discovered that neither one of us ever really had a desire to work for “The Man,” so we decided to look for business opportunities. This was around 1987 or 1988.</p>
<h3>Little Thing #9</h3>
<p>In 1989, Gregg and I decided to venture off from Circuit City and we bought a little camera store for $10,000.00. It had been around for a while and, honestly, neither one of us did much due diligence. Had we done so, we would have discovered the reputation the owner of the store had. We spent the next two years working on re-branding, building up a local reputation of supporting schools and professional photographers in the area, and eventually became a reputable business in town. The local photographers would come and chat for hours on end with us and we became friends with many who remain our friends to this day. During this time, we built a darkroom and did a lot of custom work.</p>
<p>Additionally, a friend from school had started his own company in which he built custom PCs. It was time for me to return to the world of computing, where, after purchasing an XT PC running MS-DOS 2.0 (I believe), and a piece of database software called Q&amp;A, I developed a fully operational Point of Sale system. It was my first foray into data mining. I had finally figured out a way to combine my love of photography with my love for computing. It wasn’t what I initially imagined, but it would do.</p>
<p>During the time of the camera store, I also started my own WWIV BBS called “The Dragon’s Tavern”, a precursor to the Internet. It had software and games (can you say, “Global Thermal Nuclear War?). At one point, I was the only one in the area with a BBS and ONE GIG of storage space. Modem tech had advanced and I got myself a USRobotics 14.4 Courier HST modem. I was the king of the local BBS world. WWIV was an open source BBS platform and I spent a lot of time writing mods for it in Turbo C++. I met people from all over the world and spent hours on the phone with some of them as we worked through programming issues and ideas. It was my first experience with remote collaboration.</p>
<p>The camera store lasted a couple of years, but we suffered a bit from trying to do too much too fast, along with a failing economy, and we realized that our model was not really sustainable. Rather than getting buried under a mountain of debt, we made the choice to shut the place down.</p>
<p>From there Gregg and I tried our hands at a few things, the most significant being a sign company (we had actually been running it as a side business from the camera story for some time, to help bolster our income). To be honest, I didn’t like that job that much. Gregg got to have all the fun doing the creative work, then he, our alcoholic partner who showed us the ropes, and myself would go and install them. Vinyl cutting was fun and the tech behind it still fascinates me, but it didn’t take long for us to learn that we were not the right fit with the third partner, so Gregg and I split from him.</p>
<h3>Little Thing #10</h3>
<p>Fast forward a couple years. Gregg and I had been doing our own things separately for a while, trying to find our place in life. Owning and shutting down a couple of businesses does make you realize that you’re not as perfect as you think you are and may even be a bit of cause for some soul searching. I cannot speak for Gregg, but I know that for myself, that was the case.</p>
<p>I was burnt out on photography.</p>
<blockquote><p>Doing something for a couple of years for others and none for yourself sort of takes the passion out of it.</p></blockquote>
<p>Running a free BBS was not exactly a business model that worked. I think it was around 1995 that I discovered Netcom. It was one of the first real internet providers. I bit. I was hooked. It was *like* a BBS but SO much more! The world had opened up to me and I saw my vision of one day becoming a remote worker come that much closer. Before long, a feeling had returned that I had not had in awhile: the desire to learn something new in technology. I wanted to gain an understanding of how the back end of this wondrous new tool worked. I knew it was the future, and it was within my grasp. It had been a while since I had been that excited about anything.</p>
<p>It was then that Gregg and I reconnected. Gregg had told me that some other mutual friends of ours were about to embark on starting a regional Internet Service Provider, servicing schools and running a digital technology called ISDN. They had invested in the equipment but needed someone to run it. They had asked Gregg, and when I expressed interest, we formed a partnership and got to work. During this time, I learned about routers, IP traffic, DNS, collaboration with people on a global level, scalability, building departments and efficiently servicing customers through no more than email and a telephone connection. I learned about the value of good documentation and I learned how to deal with big, huge companies and their lawyers. I learned all of these things and yet, I wouldn’t say that any of those shaped my future and my life and business operating philosophy more than the epiphany I had once I hired our first employee.</p>
<p>Until this point, I had always been about making money and a name for myself. It was ALWAYS about the money for me. Always. But I remember that moment like it was yesterday. That moment I looked at the empty desk of our first employee and realized that we were embarking on something great. We were building a company that would help sustain the lives of others and their families. If all went well, it wouldn’t be just a few. It would be many.</p>
<blockquote><p>In the blink of an eye, it went from being about me and what I could take home, to being about them.</p></blockquote>
<p>To being about us. All of us. That one moment changed everything for me.</p>
<h3>Little (ok BIG) Thing #11</h3>
<p>In 2003, my wife and I decided to move to Wisconsin from sunny Southern California. I was going to continue to work remotely with the ISP we had built up to over 40 employees and my wife Jessica was going to also work remotely with the Electronic Funds Transfer company she had worked to build up while in California (she was their first employee). Wisconsin was a nice break from the rat race of Southern California. We bought a house, set up our office and before I knew it, I discovered that the people back home at the ISP didn’t understand the concept of remote work. I was a shareholder of a company that had no use for me sitting a couple thousand miles away. Sure, from time to time they’d call me, but overall, out of sight meant out of mind where I was concerned.</p>
<p>We moved to a pretty small town where we were happy to have high speed internet, but there was not a lot of demand for a network engineer or software programmer. I had, once again, found myself somewhat without a professional purpose.</p>
<p>Soon after our first year there, we found out that Jessica was pregnant. Our main purpose in moving to Wisconsin was to start a family, but Jessica had always had issues carrying a pregnancy to full term. It was heartbreaking to deal with multiple miscarriages, but we had found a doctor in Green Bay (2.5 hours away) who thought he might be able to narrow down the issue. He was right, and nine months (and two weeks) later, we were introduced to our son, Eli. Hard to believe it’s been 11 years. And while I was struggling to find my place professionally, there was no doubt that I knew my place personally, as a father.</p>
<blockquote><p>I was 38 and suddenly felt it was what I was meant to do.</p></blockquote>
<p>I attempted to work for a local computer place during this time, but that simply didn’t take. I had, for a long time, said that employment may not be for me and certainly, in that situation, I was proven right. I am not, and never have been, a “Yes” man, I would tell people. I needed to reinvent myself and I needed to figure out my place.</p>
<p>This time put a lot of strain on my marriage to Jessica. She was the main bread winner and while she was appreciative of the fact that I was really good with taking care of Eli and doing things around the house, she felt the pressures of being responsible for the family’s financial well-being. “Just find something &#8211; anything,” she’d say. She wanted me to find something that made me happy. She knew that while I loved being a father, I also felt the pressure to contribute to our stability. I struggled. A lot.</p>
<h3>Little Thing #12</h3>
<p>During the short time that I worked for the computer company, we moved again. This time, we bought the home of one of the city’s founders. It was on the river and while the place needed work, it was on about 3 acres of land and was a pretty nice place. I had my eye on the house next to it which was a big Victorian (and at one point, part of the same property). It was owned by a couple of empty-nesters and I knew that owning the house we had just purchased would put us in a prime position to buy it when it became available. It was my five year plan.</p>
<p>Two years later, I was approached by our neighbor. We bought the house and moved in. We still had not been able to sell the first house that we bought and it was sitting empty. We were about to have two empty houses. I had been doing tech work as I could, but still was without a purpose. Fortunately, Jessica was still plugging away. Throughout it all, she was supportive of my desire to find something. I admit, there were those moments where I was just happy to be a dad (that’s my way of saying I might have gotten a little lazy looking for an income).</p>
<p>In the new house for a bit, I was talking to one of my friends back in California. He was going through some pretty major life changes and was looking for his own purpose. I remember asking him what he’d like to do and he said that he enjoyed going to motorcycle swap meets, buying parts and then selling them on Ebay. And just like that, a business was born. He needed a new start. I needed something to do &#8211; a way to make money. And I knew Ebay and tech really well. It seemed like a match made in heaven.We moved him into the empty first house that we had and ran the business out of that house for a while. We made contacts and started buying larger and larger lots, liquidating them almost as fast as we were getting them. We were starting to make a little bit of money, but we kept turning that money into bigger lots, which meant we needed more storage, which meant it was time to get office space. Our specialty was Harley Davidson parts and it only took a short time for me to go from only knowing that most Harleys had two wheels to being able to identify the part, year and bike it came from; to know its value; and to have an idea on its demand. I became a tougher negotiator and walked away from a deal or two that just didn’t feel right. The biker world was definitely a world I never imagined myself within, but I certainly, for the first time in my professional life, actually felt like I was part of a community.</p>
<p>Soon after we started that company, though, the company Jessica had been working for shut its doors, literally overnight. She was not making money, in an industry where there was no local demand, and I was trying to grow a company. For those wondering, that is not a sustainable personal financial model. The housing market crashed, and I was spending nights doing database patient record merging at the local hospital.</p>
<blockquote><p>Before we knew it, we were flat broke. We literally lost almost everything.</p></blockquote>
<p>The two empty houses were taken by the banks and we were just fighting to keep the house we were in. It was also about this time that Jessica announced that she was pregnant with Brenna. It was the only good news we had at the time. I was 42 and, for the first time in my adult life, had to actually go to my parents and ask for help. I honestly don’t know where I’d be today if I didn’t have them.</p>
<p>The company we had was starting to see dwindling sales. When the economy crashes, people suddenly learn to live with that little ding in their gas tank or that other non-critical noise their bike may be making. Ebay started raising their fees and our business model became unsustainable.</p>
<h3>Little Thing #13</h3>
<p>With money quickly dwindling away in our bank account, I suddenly had this wonderful idea to start making money off of our competitors on Ebay. They had an affiliate program and I needed to figure out a way to leverage that. But how?</p>
<blockquote><p>It was then that I discovered WordPress.</p></blockquote>
<p>Like many, I had always thought of it as a blogging platform and nothing more. But then I discovered a plugin that would read in a feed from Ebay and worked within WordPress. It took me about an hour to set up a WordPress site and another minute to figure out how to install the plugin. The next two days was spent populating categories, and a little over a month later, I got my first direct deposit from Ebay. This could work. But even more importantly, for the first time, I saw that WordPress could be so much more than a blogging platform.</p>
<p>It wasn’t much longer before I was starting to develop websites for others. My design skills have always lacked, so to start, it was mostly out of the box themes, but as I got more seasoned, I learned more and more about the power of WordPress.</p>
<p>Eventually, we closed down the motorcycle liquidation business.</p>
<blockquote><p>We tried our hand at running a Renaissance Faire booth (along with touring the country), but that, too, was not really sustainable.</p></blockquote>
<p>I even drove a truck with staging equipment for Fox Sports a couple of times. Anything to pay the bills.</p>
<h3>Little Thing #14</h3>
<p>During one of my driving trips, I had been talking to Gregg. Turns out he had been doing WordPress development for a while and he was looking for some help. I was not a good designer, and I had barely dipped my feet into being a developer, but Gregg was willing to teach me everything he knew. Every morning, I’d wake up, Gregg and I would get on a call and he’d explain really cool ways to customize WordPress. We’d strip a theme down to the bones and build it up. We’d find frameworks and build them out. We’d bang our heads over CSS (something, I think, neither of us ever really were able to wrap our minds around), and we had work. Lots of work.</p>
<blockquote><p>Though financially ruined, Jessica and I were finally starting to see some light.</p></blockquote>
<p>I had finally found something I really liked and she had finally found herself with a position working for another company. We had lost all our homes except the one in which we lived and had depleted all our bank accounts and college funds, yet we were hopeful. We had our two kids, a roof over our heads and work which generated income.</p>
<p>Most of the work Gregg and I did was working with agencies. We liked it that way. Neither of us really enjoyed pounding pavement, so it was nice to have people who specialized in sales do that part of the lifting. But despite the fact that we were getting busier, we knew that we needed to work on passive income possibilities.</p>
<h3>Little Thing #15</h3>
<p>In 2012, Gregg brought up the idea of me going to WordCamp San Diego. Now, I hate conferences and conventions. This sounded to me about as far from fun as I could get. He offered to pay for the badge if I paid for my plane ticket. Not knowing *really* what a WordCamp was, I figured it was a fair deal. It was only after I spoke with Jessica about going that I realized the cost of the ticket. I tell people that I still feel like I got the better end of the deal.</p>
<blockquote><p>That trip to WordCamp San Diego changed everything for me.</p></blockquote>
<p>I had always believed that businesses could succeed while also being part of a community that supported and built each other up. For the first time in my adult life, I got to witness it first hand. I had a blast! WordCamp was not a conference, it was a sharing of ideas. It was not a convention, it was a place to build actual relationships. It was a business event, educational event, and social event all in one package. I knew I was in the right place (finally).</p>
<blockquote><p>44 years old and I finally found my place.</p></blockquote>
<p>But how could I actively participate? Part of being in a community is that desire and need to give back. I was green and hardly knew anything.</p>
<h3>Little Thing #15(a)</h3>
<p>One of the people I met while in San Diego in 2012 was Stephen Carroll. He had developed this really cool tool called DesktopServer; a tool Gregg and I used almost every day during our development days. Gregg was having an issue with a site we were building and Stephen offered to help us figure it out. I was blown away that someone would give up their time so freely with no interest in remuneration. He just wanted to help. Stephen and I spoke a little bit, but he mostly focused on helping Gregg get through the issue he had. He was kind and generous, and I liked him immediately.</p>
<h3>Little Thing #16</h3>
<p>In 2013 Gregg and I were working together on a project and, as often happened, the conversation turned back to what we could do for some passive income. He and I came up with an idea for a theme we wanted to build. It would be unlike anything anyone had seen. Robust, clean code, efficient. In other words, it was a theme that was above our skill levels, over our heads, and somewhat out of reach. We needed a developer with a skill that far exceeded our own. Gregg said it: “We need someone like Stephen.”</p>
<p>I totally agreed with Gregg and so the call was placed. Gregg was to get in touch with Steve and see if he’d be interested in helping us out. It was a good plan.</p>
<p>An hour later, Gregg called me back to let me know the result of the conversation. Steve was, indeed, anxious to work with us (if pressed slightly, I think he would tell you that he was anxious to work with Gregg since he only really knew me through Facebook). But what he wanted was for US to help HIM at ServerPress. He wanted to simply code while we handled the rest. I contacted him directly to ask him some questions, set up a path for the company under the new structure and the rest, as they say, is history.</p>
<hr class=\"ttfmake-hr\" />
<p>This past June marked three years since we re-formed the company and it’s been a thrill ride to say the least. Since then, we’ve grown the company by over 400%, I’ve had the opportunity to travel the country and speak at several WordCamps (2014 saw me at over 20) and I actually look forward to Mondays every bit as much as I look forward to weekends. ServerPress, LLC is a company that’s respected within the WordPress Community, and it has afforded me the ability to help financially sustain my family.</p>
<p>In 2013 Jessica, Eli, Brenna, and I moved to Milwaukee where we bought an older home (117 years) with the purpose of restoring it, building it out (and up), and fostering to adopt sibling groups (you can read about it on my blog, <a href=\"http://twotofive.us\">http://twotofive.us</a>).</p>
<blockquote><p>We currently have six foster kids which puts us at a family of 10.</p></blockquote>
<p>None of this would have been possible without all the little things, a couple of big things, and WordPress (the most important of which, is its Community).</p>
<p>While we’re still digging ourselves out of the mess of a few years ago, that light is getting brighter every day.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/16-little-things-grew-into-big-things/\">16 Little Things That Grew Into Big Things (My Life in a Bunch of Words)</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 12:00:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Marc Benzakein\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WP Mobile Apps: WordPress for Android: Version 5.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://apps.wordpress.com/?p=3488\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://apps.wordpress.com/2016/07/27/wordpress-for-android-version-5-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3187:\"<p>Hello WordPress users! <a href=\"https://play.google.com/store/apps/details?id=org.wordpress.android\" target=\"_blank\">Version 5.6 of the WordPress for Android app</a> is now available in the Google Play Store.</p>
<h1 id=\"related-posts-in-the-reader\">Related Posts in the Reader</h1>
<p><strong>Discover relevant work from the WordPress community.</strong> A section of related posts will now appear just underneath Likes on a post:</p>
<p><img src=\"https://cldup.com/uI3GXFyyfOu/WFX8pk.png\" alt=\"Related Post Screenshot\" /></p>
<h1 id=\"custom-notification-sound\">Custom Notification Sound</h1>
<p><b>You&#8217;ve got activity!</b> With 5.6, you&#8217;ll be able to customize your notification sound:</p>
<p><img src=\"https://cldup.com/uI3GXFyyfOu/LBsHX3.png\" alt=\"Custom Notification Sound\" /></p>
<h1 id=\"invite-users\">Invite New Users</h1>
<p><strong>A cordial invitation.</strong> Invite users to your site from the People management screen, designate their roles, and customize a message to send to them:</p>
<p><img src=\"https://cldup.com/uI3GXFyyfOu/9fEtji.png\" alt=\"Invite Users\" /></p>
<h1 id=\"other-changes\">Other Changes</h1>
<p>Version 5.6 also comes with a few other changes and fixes:</p>
<ul>
<li>Post list: Posts in the middle of being uploaded will be disabled and shown a progress indicator. A publish button is added on drafts.</li>
<li>&#8220;View Site&#8221; and &#8220;View Admin&#8221; will now open the device browser.</li>
<li>A comment is automatically approved when you reply to it</li>
</ul>
<p>You can track our development progress for the next release by visiting <a href=\"https://github.com/wordpress-mobile/WordPress-Android/milestones/5.7\">our 5.7 milestone on GitHub</a>.</p>
<h1>Beta</h1>
<p>Do you like keeping up with what’s new in the app? Do you enjoy testing new stuff before anyone else? Our testers have access to beta versions with updates shipped directly through Google Play. The beta versions may have new features, new fixes — and possibly new bugs! Testers make it possible for us to improve the overall app experience, and offer us invaluable development feedback.</p>
<p>Want to become a tester? <a href=\"https://play.google.com/apps/testing/org.wordpress.android\">Opt-in</a>!</p>
<h1>Thank you</h1>
<p>Thanks to our GitHub contributors: <a href=\"https://github.com/0nko\">@0nko</a>, <a href=\"https://github.com/aforcier\">@aforcier</a>, <a href=\"https://github.com/bummytime\">@bummytime</a>, <a href=\"https://github.com/daniloercoli\">@daniloercoli</a>, <a href=\"https://github.com/hypest\">@hypest</a>, <a href=\"https://github.com/khaykov\">@khaykov</a>, <a href=\"https://github.com/kwonye\">@kwonye</a>, <a href=\"https://github.com/maxme\">@maxme</a>, <a href=\"https://github.com/mzorz\">@mzorz</a>, <a href=\"https://github.com/nbradbury\">@nbradbury</a>, <a href=\"https://github.com/oguzkocer\">@oguzkocer</a>, <a href=\"https://github.com/theck13\">@theck13</a>, <a href=\"https://github.com/thomasleplus\">@thomasleplus</a> and <a href=\"https://github.com/tonyr59h\">@tonyr59h</a>.</p><img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3488&subd=apps&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 06:51:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Maxime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Easily Hide WordPress’ Blogging Features With the Disable Blogging Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=58111&preview_id=58111\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/easily-hide-wordpress-blogging-features-with-the-disable-blogging-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2643:\"<p>WordPress strikes a good balance by offering users the ability to publish dynamic content via posts and static content via pages. However, if you&#8217;d like to use WordPress primarily as a static content management system without the features related to blogging, check out a new plugin developed by <a href=\"https://profiles.wordpress.org/factmaven/\">Fact Maven Corp</a>. and <a href=\"https://profiles.wordpress.org/ethanosullivan/\">Ethan Jinks O&#8217;Sullivan</a> called <a href=\"https://wordpress.org/plugins/disable-blogging/\">Disable Blogging</a>.</p>
<p>Disable Blogging hides a number of features including:</p>
<ul>
<li>Posts, Comments, and items related to blogging from the admin menus.</li>
<li>Comments from pages.</li>
<li>Blog related widgets.</li>
<li>Pingbacks, Trackbacks, and XML-RPC header links.</li>
<li>Biographical info and Admin Color schemes on the user profile page.</li>
<li>Press This Bookmarklet.</li>
<li>Posts via email.</li>
<li>Howdy, help tabs, and query strings from static resources.</li>
</ul>
<p>To really get a sense for what it&#8217;s like to use WordPress without its blogging capabilities, I activated the plugin on a fresh install.</p>
<img class=\"alignnone size-full wp-image-58148\" src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/DisableBloggingOnFreshInstall.png?resize=1025%2C579&ssl=1\" alt=\"DisableBloggingOnFreshInstall\" />Disable Blogging Enabled on a Fresh Install
<p>There are two things that immediately stand out during testing. The first is that logging in takes users to their profile page instead of the Dashboard. Second, the Dashboard and the link to it are gone.</p>
<p>I found the removal of the Dashboard creates a jarring experience that&#8217;s different from what users might expect. It&#8217;s usefulness to display widgets with site specific information, even for sites based on pages, is a huge benefit and therefore, its removal should be reconsidered.</p>
<p>The nice thing about Disable Blogging is that it doesn&#8217;t permanently remove features or data. Regaining access to WordPress&#8217; blogging capabilities is as simple as deactivating the plugin.</p>
<p>Browsing, using, and navigating WordPress with the blogging features hidden is an interesting experience that I encourage you to try for yourself. I tested <a href=\"https://wordpress.org/plugins/disable-blogging/\">Disable Blogging </a>on a fresh install of WordPress 4.5.3 and didn&#8217;t encounter any problems. The next time you or a client wants an easy way to disable WordPress&#8217; blogging capabilities, give this plugin a shot.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jul 2016 02:27:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: TechCrunch Hacked by OurMine, Attackers Target Weak Passwords\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=58081\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/techcrunch-hacked-by-ourmine-attackers-target-weak-passwords\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>TechCrunch is the latest victim in OurMine&#8217;s summer hacking rampage. The site, which is powered by WordPress and hosted via WordPress.com VIP, was <a href=\"http://webcache.googleusercontent.com/search?q=cache:https://techcrunch.com/2016/07/26/ourmine-team-important-message/\" target=\"_blank\">hacked this morning</a> and defaced with a message from the attackers who identify themselves as an &#8220;elite hacker group.&#8221;</p>
<p>TechCrunch&#8217;s news ticker was updated to display: &#8220;Hello guys it’s OurMine Team, we are just testing TechCrunch Security, don’t worry we never change your passwords. Please contact us.&#8221; OurMine gained access to a contributor account and posted a similar message.</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/techcrunch-hacked-by-ourmine.png?ssl=1\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/techcrunch-hacked-by-ourmine.png?resize=1025%2C523&ssl=1\" alt=\"techcrunch-hacked-by-ourmine\" class=\"aligncenter size-full wp-image-58085\" /></a></p>
<p>According to a <a href=\"https://www.engadget.com/2016/07/26/ourmine-techcrunch-compromise/\" target=\"_blank\">report from Engadget</a>, TechCrunch&#8217;s sister site, the hackers gained access via a contributor&#8217;s weak password, not by exploiting a vulnerability in WordPress or the site&#8217;s plugins. TechCrunch was able to regain control of the site within minutes and delete the content created by the attackers in the admin.</p>
<p>OurMine is the same group that <a href=\"http://gizmodo.com/mark-zuckerberg-hacked-on-twitter-and-pinterest-because-1780735073\" target=\"_blank\">hacked Mark Zuckerberg&#8217;s Twitter, Pinterest, and LinkedIn accounts</a> after he used the same password for multiple sites. Bad password security can make even the most secure websites vulnerable to these types of attacks. Although OurMine is primarily targeting high profile individuals and publications, WordPress sites are constantly the target of brute force attacks.</p>
<p>Security plugins like <a href=\"https://wordpress.org/plugins/wordfence/\" target=\"_blank\">Wordfence</a>, <a href=\"https://wordpress.org/plugins/better-wp-security/\" target=\"_blank\">iThemes Security</a>, and <a href=\"http://bruteprotect.com/\" target=\"_blank\">Jetpack&#8217;s Brute Protect module</a> can help deter brute force attacks, but it&#8217;s virtually impossible to eliminate the human factor in poor password selection or the practice of using the same password for multiple online services. WordPress site owners, especially those who run publications that have many users with permissions, are especially vulnerable to attacks that target bad password security.</p>
<p>Although WordPress warns users about weak passwords, it doesn&#8217;t force them to create a strong one. Site owners who want to make this a requirement can use a plugin like <a href=\"https://wordpress.org/plugins/force-strong-passwords/\" target=\"_blank\">Force Strong Passwords</a> for extra security.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 19:35:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"WPTavern: WooCommerce Releases Square Integration to Sync Online and Offline Purchases and Inventory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=58049\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://wptavern.com/woocommerce-releases-square-integration-to-sync-online-and-offline-purchases-and-inventory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3478:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/woocommerce-logo.jpg?ssl=1\"><img src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/woocommerce-logo.jpg?resize=1025%2C466&ssl=1\" alt=\"woocommerce-logo\" class=\"aligncenter size-full wp-image-56606\" /></a></p>
<p><a href=\"https://woocommerce.com/\" target=\"_blank\">WooCommerce</a>, which powers more than 37% of all online stores, announced today that the plugin now integrates with the millions of offline stores that use <a href=\"https://squareup.com/\" target=\"_blank\">Square</a> for payment processing. The new <a href=\"https://woocommerce.com/products/square/\" target=\"_blank\">Square for WooCommerce</a> extension tracks and syncs payments and inventory for products sold via online and offline stores.</p>
<p>Before agreeing to work with Square on building an integration for WooCommerce inventory management, the Woo team verified customer demand via its ideas board where the feature <a href=\"http://ideas.woothemes.com/forums/133476-woocommerce/suggestions/3771433-integration-with-square\" target=\"_blank\">received more than 900 votes</a>. Prior to today&#8217;s extension release, those who managed stores in online and offline environments had to perform manual updates to ensure accuracy of the current inventory. Manually tracking inventory between stores is a tedious, never-ending task, especially for larger operations. This is why Square integration was the most-requested feature in WooCommerce history.</p>
<p>After store owners connect a Square account to WooCommerce, they can perform a manual sync from WooCommerce to Square or back the other way. This will sync SKU&#8217;s, categories, details, and images for products that have been set up on either platform.</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/square-woocommerce-sync.png?ssl=1\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/square-woocommerce-sync.png?resize=620%2C345&ssl=1\" alt=\"square-woocommerce-sync\" class=\"aligncenter size-full wp-image-58063\" /></a></p>
<p>The ability to accept payments with WooCommerce using Square means store owners need only update products once and push changes to either store when ready to sell online or offline.</p>
<p>&#8220;WooCommerce and Square have a close working relationship around this integration, where we&#8217;re working together to on-board new merchants, receive their feedback, and adjust the integration to make sure the initial version is the best it can be,&#8221; said Matt Cohen, product lead for WooCommerce.</p>
<p>When asked if Automattic gets a percentage of Square&#8217;s fee based on the volume of sales it drives through its payment system, Cohen said that the companies have an agreement in place to promote the extension on WooCommerce.com and in Square&#8217;s catalog. He would not elaborate on the terms of the agreement. However, with WooCommerce powering more than a third of all online stores, it would be surprising if Automattic did not secure a custom volume rate.</p>
<p>Square customers who want to automatically connect their online and offline stores can find the new <a href=\"https://woocommerce.com/products/square/\" target=\"_blank\">Square for WooCommerce</a> extension on WooCommerce.com. Current Square customers can use their existing account details to configure their stores to accept payments with Square and start syncing inventory.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 14:39:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Automattic Will Continue to Use React.js in Calypso Despite Patent Clause\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=58065\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/automattic-will-continue-to-use-react-js-in-calypso-despite-patent-clause\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3234:\"<p><a href=\"https://developer.wordpress.com/calypso/\">Calypso</a> is an application <a href=\"https://ma.tt/2015/11/dance-to-calypso/\">developed by Automattic</a> that is built entirely with JavaScript using the <a href=\"https://nodejs.org/en/\">Node</a> and <a href=\"https://facebook.github.io/react/\">React</a> libraries. <a href=\"http://react-etc.net/\">React, etc</a>., a site that covers news related to the React library, recently <a href=\"http://react-etc.net/entry/your-license-to-use-react-js-can-be-revoked-if-you-compete-with-facebook\">published an article</a> highlighting how a license to use it in projects can be revoked.</p>
<p>React contains a <a href=\"https://github.com/facebook/react/blob/master/PATENTS\">patent clause</a> that allows Facebook to revoke the license if certain conditions are met. The clause has raised concerns that Automattic could have its license revoked for Calypso if it competes directly with Facebook.</p>
<p>Not long after the public release of Calypso, Paul D. Fernhout created <a href=\"https://github.com/Automattic/wp-calypso/issues/650#\">an issue</a> on the <a href=\"https://github.com/Automattic/wp-calypso\">project&#8217;s GitHub page</a>. Among a number of other reasons, Fernhout suggested that React be replaced with <a href=\"http://mithril.js.org/\">Mithril</a>, an alternative JavaScript library that doesn&#8217;t contain a clause.</p>
<p>Paul Sieminski, General Legal Counsel for Automattic, <a href=\"https://github.com/Automattic/wp-calypso/issues/650#issuecomment-235086367\">responded to the ticket</a> explaining why the company will continue to use React in its products.</p>
<p>&#8220;Automattic looked at the legal issues with Facebook&#8217;s patent license on React,&#8221; Sieminski said. &#8220;The termination provisions of the patent license aren’t ideal, but are not a blocker to using React as part of Calypso.&#8221;</p>
<p>&#8220;The termination provisions don’t apply to the right to use the code &#8211; just the license included in the &#8216;PATENTS&#8217; file. This license gives React users permission to use Facebook&#8217;s patents on React. Facebook&#8217;s intentions in including this additional license are admirable. As they say <a href=\"https://code.facebook.com/posts/1639473982937255/updating-our-open-source-patent-grant/\">here</a> &#8211; &#8216;[t]his grant was designed to ensure that developers can use our projects with confidence.\'&#8221;</p>
<p>According to Sieminski, &#8220;The companies with the greatest concern are those that have large patent portfolios and engage in offensive patent litigation, especially against Facebook.&#8221;</p>
<p>&#8220;Automattic isn’t in that boat, and has no plans to be, so we’re comfortable using React under its current license,&#8221; he said.</p>
<p>Considering <a href=\"http://www.vox.com/2014/5/9/5699960/this-court-decision-is-a-disaster-for-the-software-industry\">how complex patent laws are</a>, developers using React are encouraged to seek legal advice from a reputable lawyer to determine if your use case violates Facebook&#8217;s patent clause.</p>
<p>Has the clause kept you from using React in your projects? Let us know in the comments.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 08:05:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:11:\"
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"HeroPress: Defining Success\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://heropress.com/?p=1170\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"http://heropress.com/defining-success/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6937:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/07/072516-defining-sucess-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"You\'ll be happiest when you define success by the number of lives you touch for the better.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Defining Success\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Defining%20Success&via=heropress&url=http%3A%2F%2Fheropress.com%2Fdefining-success%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Defining Success\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fdefining-success%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fdefining-success%2F&title=Defining+Success\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Defining Success\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/defining-success/&media=http://heropress.com/wp-content/uploads/2016/07/072516-defining-sucess-150x150.jpg&description=Defining Success\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Defining Success\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/defining-success/\" title=\"Defining Success\"></a></div><p>When I first started HeroPress I assumed we&#8217;d get at <em>least</em> 1000 page views per day. How many WordPress developers are there in the world? Tens of thousands? Hundreds of thousands? What about bloggers? Users? Millions of them? Surely even a tiny tiny fraction of that would make for thousands of page views, right?</p>
<p>I&#8217;m writing this on a warm Sunday afternoon in July. HeroPress operates on GMT, so we&#8217;re about 20 hours into the day. Want to know how many page views we&#8217;ve had so far today?</p>
<p><img class=\"alignnone size-full wp-image-1171\" src=\"http://heropress.com/wp-content/uploads/2016/07/Selection_634.png\" alt=\"16\" width=\"178\" height=\"73\" /></p>
<p>And that&#8217;s pretty average for a Sunday. Only once in the history of HeroPress have we had a 1000+ page view day. It was very exciting.</p>
<p>There was a time when the (apparently) low traffic on HeroPress.com bothered me. I even thought about shutting it down a few times. Why bother if so few people read?</p>
<p>The reason it bothered me is that I was measuring success by numbers. Page views, repeat visitors, even number of concurrent readers on a Wednesday . It was all about the numbers. How many people pull up the site in the browser? That&#8217;s what I wanted.</p>
<h3>Shifting Perspectives</h3>
<p>My perspective first started to shift when I went to WordCamp Pune. A young woman came up to me with tears in her eyes, shook my hand, whispered &#8220;Thank you&#8221; and slipped back into the crowd.  I didn&#8217;t see her again, but I&#8217;ll never forget her.</p>
<p>People introduced themselves and told me their story with shining eyes, full of excitement.</p>
<p>That trip was a huge boost for my spirits, but I still watched the numbers.</p>
<h3>Stories That Need To Be Told</h3>
<p>Typically I seek out HeroPress contributors. People rarely think their own story is interesting, I usually have to show them. In the months that followed Pune however, several people came to me and said &#8220;I have a story, and I really need to share it, can I share it on HeroPress?&#8221; So far I&#8217;ve accepted all of those, so you&#8217;ve read them.</p>
<p>Their stories burned in their hearts, and they needed other people to know. To know there are people out there who want to help them learn, grow, and have a better life. That there are second, third, and fourth chances.</p>
<p>Comments from people both on the site and in person let me know that it worked. People find hope in the essays. Not just happy feel-good, but actual hope, that maybe there&#8217;s something better out there for them too.</p>
<h3>Casting a Wider Net</h3>
<p>I recently visited WordCamp Europe in Vienna. I was truly surprised by how many people had heard of HeroPress, and even knew my name. Story after story came to me from a dozen different cultures about how HeroPress stories give people confidence to try new things, talk to people outside their culture, or try to use WordPress to make a better life.</p>
<p>It was humbling to me to hear those individual stories. People whose lives had been been changed by their contact with our community, inspired by HeroPress essays.</p>
<h3>Defining Success by Different Numbers</h3>
<p>I still define success by numbers, but it&#8217;s not page views anymore. I&#8217;d be lying if I didn&#8217;t say it&#8217;s a little about stats, because countries matter to me. A wide net matters to me.</p>
<p>The numbers I <em>really</em> watch these days are the number of people who tell me HeroPress means something to them. I don&#8217;t keep an actual tally, but as long as I keep hearing from even one person that they&#8217;ve been made better by what&#8217;s on this site I consider it a success.</p>
<p>I don&#8217;t know if we&#8217;ll ever get huge readership, and at this point I&#8217;m not sure I care. What has HeroPress meant to you? I&#8217;d love to hear in the comments.</p>
<h3>And You?</h3>
<p>How do you define success in what you do? Is it number of sales? Number of support tickets answered? Page views?</p>
<p>I&#8217;d like to suggest that you&#8217;ll be happiest when you define success by the number of lives you touch for the better.  Sure, that might be measured by a stat somewhere, but always remember the real value is in the sparkle in their eyes, and the joy in their hearts.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/defining-success/\">Defining Success</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Jul 2016 00:28:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"HeroPress: How WordPress (literally) turned me into a brand new person\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1147\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://heropress.com/essays/wordpress-literally-turned-brand-new-person/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35567:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/07/071916-new-person-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: It\'s fair to say that without the support of the WordPress community I wouldn\'t be the person I am today - literally.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How WordPress (literally) turned me into a brand new person\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20WordPress%20%28literally%29%20turned%20me%20into%20a%20brand%20new%20person&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-literally-turned-brand-new-person%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How WordPress (literally) turned me into a brand new person\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-literally-turned-brand-new-person%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-literally-turned-brand-new-person%2F&title=How+WordPress+%28literally%29+turned+me+into+a+brand+new+person\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How WordPress (literally) turned me into a brand new person\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/wordpress-literally-turned-brand-new-person/&media=http://heropress.com/wp-content/uploads/2016/07/071916-new-person-150x150.jpg&description=How WordPress (literally) turned me into a brand new person\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How WordPress (literally) turned me into a brand new person\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/wordpress-literally-turned-brand-new-person/\" title=\"How WordPress (literally) turned me into a brand new person\"></a></div><h3>In the beginning&#8230;</h3>
<p>I&#8217;ve always been a geek. When I was in the third grade, I wanted to grow up to be an Egyptologist (or maybe a Marine Biologist; I changed my mind often). My dad built custom computers for a living, and early on, he taught me how to build and wire a computer from spare components.</p>
<p>I built my first web page when I was eleven years old; basic HTML, tables for layout, animated GIFs, and all. My first true web site that actually had more than one page was a Star Trek: Voyager fan site. For that site, I learned how to use frames to make a site that looked like a Star Trek computer interface, and I found Javascript snippets that allowed me to change content in one frame when a new page loaded in another frame.</p>
<p>As I learned more and more about the web, I was hooked. I started learning about PHP, and realized I could make header and footer files, so that I didn&#8217;t have to edit every web page on my site when I added a new page.</p>
<h3>Discovering WordPress</h3>
<p>And then, about 12 years ago, I installed WordPress for the first time. Blogging was this brand new thing that lots of other geeks were doing, and so I jumped on the bandwagon. I was 19 years old, living with my mom, working a low-paying job at a book store, and going to school part time. Ya know, basically living the dream.</p>
<p>WordPress was just about a year old at this point. There were no plugins or themes; you hacked core if you wanted to change the look of your blog. It was like the Wild West.</p>
<p>And I loved it.</p>
<p>Really, I enjoyed the process of changing the layout of my blog, editing the &#8220;theme&#8221; to make it look how I wanted. I got more of a kick out of that, than I did actually writing about myself.</p>
<p>Fast forward a few years; I left the book store I&#8217;d been working at behind, and started working as a Pharmacy Technician. I loved that job, but it was stressful. I got yelled at by patients when their doctor didn&#8217;t call in their prescription, and somehow it was my fault their copay went up when their insurance changed in the new year.</p>
<blockquote><p>Blogging became sort of a catharsis; a way to vent when I got home about everything that stressed me out during the day.</p></blockquote>
<p>It also helped me find community. I followed and commented on a ton of other pharmacy blogs. The pharmacy blogging community was, and still is, a really tight-knit group. I made friends in the WordPress Forums. I made friends from all over the world and all walks of life.</p>
<p>In 2009, I moved here to New York, from where I&#8217;d grown up, in the Washington, DC area. I&#8217;d only been to New York a couple of times before; once on a school field trip, and once to see a comedy film at the Staten Island film festival.</p>
<p>But I needed a change of scenery from the non-stop politics of the DC beltway, and after that trip to New York, I had decided that I wanted to move here.</p>
<h3>My first WordCamp</h3>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/nyc.jpg\"><img class=\"size-medium wp-image-1165\" src=\"http://heropress.com/wp-content/uploads/2016/07/nyc-300x241.jpg\" alt=\"New York City, my home for a little over five years.\" width=\"300\" height=\"241\" /></a>New York City, my home for a little over five years.
<p>Fairly soon after I got to New York, I learned that there was going to be this event called &#8220;WordCamp,&#8221; where you could spend two whole days learning about WordPress and meeting other people from the WordPress community. And tickets were only $40, including a t-shirt and lunch on both days!</p>
<p>Now, I&#8217;d just moved to New York. I was working in a retail job, and I was renting a room in an apartment in Washington Heights (the upper end of Manhattan).</p>
<blockquote><p>There were nights I ate popcorn for dinner because I didn&#8217;t get paid until Friday. I was lucky if I had ramen.</p></blockquote>
<p>So, as you might imagine, even $40 for something like this was hard to come by.</p>
<p>And then, I heard that if you volunteered at WordCamp, you could get a free ticket! For anybody  who knows me, it&#8217;ll come as no great shock that I spent most of the weekend volunteering. I&#8217;d only signed up to help with folding t-shirts the night before, and to help with registration on both mornings.</p>
<p>But I ended up spending most of the event walking from room to room, making sure everything was running on time.</p>
<p>By the end of Saturday, I was exhausted, but I was hooked.</p>
<p>I&#8217;m an introvert; socializing doesn&#8217;t come easy for me. But volunteering at WordCamp gave me a purpose in talking to people. My common interest with other attendees made it easy to strike up conversation.</p>
<p>After lunch on Sunday, my feet had finally given out, and I&#8217;d collapsed in a chair in our registration area.</p>
<p>And finally, Sunday afternoon, as WordCamp was ending, and everybody was coming down from the high generated by all of the weekend&#8217;s excitement, I found out that there was going to be another WordCamp in Boston a couple of months later.</p>
<p>For those two months, I scrimped and saved, begged and borrowed, every penny I could, and just barely managed to come up with enough to take the bus up to Boston for the weekend. I made even more friends, from even more places. They didn&#8217;t need any more volunteers, so I actually spent the weekend attending sessions!</p>
<p>Over the course of that weekend, I found myself talking with people in the hallways a lot. And I guess I sounded like I knew what I was talking about, because a lot of those conversations involved me giving advice about people&#8217;s sites, what plugin to use to solve a problem, stuff like that.</p>
<p>And I realized a couple of things:</p>
<p>A. I knew way more about WordPress than I realized, and</p>
<p>B. I really loved being able to help people.</p>
<h3>Wanderlust</h3>
<p>Over the next couple of years, I went to half a dozen WordCamps, in Philadelphia, Baltimore, Chicago, New York again.</p>
<p>I became hooked on traveling. Every few months, I visited a new city for the first time. I used WordCamp as an excuse to visit my older brothers in Minneapolis. I volunteered or spoke at almost every WordCamp I went to. And I ended up becoming one of the lead organizers for WordCamp NYC in 2012 and 2014.</p>
<p>By that time, I&#8217;d also moved on from working in a pharmacy to working at the Apple Store. I eventually moved to the Genius Bar, where, even though it wasn&#8217;t WordPress, I got to help people solve tech problems.</p>
<p>It was a job I enjoyed a lot more, one that payed a decent amount better, and made it easier to travel to far off places&#8211;which at this point, I already knew I couldn&#8217;t get enough of.</p>
<p><strong>I wanted to travel the world.</strong></p>
<p>It became an obsession, really. I spent hours online reading stories about people traveling around, working odd jobs here and there to make their way from country to country. And then, I found out, since I was under 30, I was eligible for something called a &#8220;Working Holiday&#8221; visa in Australia. Basically, it lets you move there for up to a year and work to pay your way, with the only caveat being you could only work for the same company for up to 6 months.</p>
<p>So again, I scrimped and I saved, and planned for over a year. The visa itself cost almost $500, but that was nothing compared to the total cost of picking up roots and moving halfway around the world. It certainly wasn&#8217;t cheap, but I was lucky enough to be in a position in life that allowed me to do it. For that whole year, I didn&#8217;t go out to the movies. I rarely ate out, even at fast food. Foolishly or not, I took some money out of my 401k, so that I&#8217;d have enough money to get me through until I could get set up down under.</p>
<blockquote><p>And when I had enough money, I bought a one way ticket from New York to Australia.</p></blockquote>
<p>My finger hovered over that &#8220;purchase&#8221; button for what seemed like hours, but was probably just a few minutes. After I clicked, a wave of emotion hit me like a tsunami:</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/fruitstand.jpg\"><img class=\"size-medium wp-image-1164\" src=\"http://heropress.com/wp-content/uploads/2016/07/fruitstand-300x225.jpg\" alt=\"I worked at the iconic glass cube on Fifth Avenue in New York (we often called it the Fruit Stand). This was taken on my last morning of work before setting off for the great unknown.\" width=\"300\" height=\"225\" /></a>I worked at the iconic glass cube on Fifth Avenue in New York (we often called it the Fruit Stand). This was taken on my last morning of work before setting off for the great unknown.
<p>&#8220;Wow, I&#8217;m really doing this!&#8221;</p>
<p>&#8220;Wait, am I really doing this?&#8221;</p>
<p>&#8220;Oh, crap, I&#8217;m really doing this.&#8221;</p>
<p>A few months later, I said goodbye to my job at the Apple Store. I&#8217;d worked there for nearly 4 years, and some of my coworkers were my closest friends. My last day was the iPhone 6 launch.</p>
<p>Apple has a tradition of &#8220;clapping out&#8221; employees on their last day, and at the end of my final shift, I was no exception. My coworkers gathered in the hallway outside the backroom, cheered for me, hugged me&#8211;I was in tears. It really hadn&#8217;t hit me until this moment that I was leaving almost everything and everyone I knew behind.</p>
<p>I did have a few stops on my way out of the country. I wanted to visit my family in Minnesota one more time before leaving. Also, WordCamp San Francisco, which I&#8217;d been asked to help run volunteers for, was happening a couple of weeks before I was due to leave. So I decided to spend a few weeks in California.</p>
<h3>The first WordCamp that changed my life</h3>
<p>Most of the people who ran WordCamp San Francisco worked at Automattic, the company that runs WordPress.com, Jetpack, Akismet, and more. And I&#8217;d been wanting to work for Automattic ever since my very first WordCamp, when I first met people who worked there.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/wcsf.jpg\"><img class=\"size-medium wp-image-1166\" src=\"http://heropress.com/wp-content/uploads/2016/07/wcsf-300x227.jpg\" alt=\"I was too busy making sure everything was in place for volunteers at WCSF, but I did manage to take one photo during lunch.\" width=\"300\" height=\"227\" /></a>I was too busy making sure everything was in place for volunteers at WCSF, but I did manage to take one photo during lunch.
<p>I arrived in San Francisco about a week before WordCamp, and spent the week working out of Automattic&#8217;s offices there, making sure everything was in place for the weekend. I got to talk to even more Automatticians, and since I was in charge of volunteers for the weekend, I got to boss a lot of them around.</p>
<p>I had a rare opportunity to spend a lot of time with the people who worked there. An experience made even more rare by the fact that, since pretty much everybody at the company works from home&#8211;wherever that may be&#8211;it&#8217;s not very often that that many employees are in one place.</p>
<p>By the end of the weekend, more than one of them encouraged me to submit an application to work for Automattic.</p>
<blockquote><p>And I could feel in my bones that it was where I was supposed to be. So that very night, I polished up my resume, and sent it in by email.</p></blockquote>
<p>But the application process takes time&#8211;WordCamp ended, and I had a plane to catch.</p>
<h3>Out into the great unknown</h3>
<p>Before I left the US altogether, I visited a few friends in San Diego, and even attended one last WordCamp&#8211;the smallest one to date, with only about 50 attendees&#8211;WordCamp Ventura. It was one last opportunity to see and make friends before leaving a continent behind.</p>
<p>I boarded a plane at LAX at about 9:00 on a Tuesday night. I should have been exhausted, but I was so excited, I had energy to burn. Sitting there on the tarmac, waiting for takeoff, I reflected on how far I&#8217;d come, and how far I was about to go, and even though I had a 12-hour overnight flight ahead of me, I didn&#8217;t sleep a wink.</p>
<p>As luck would have it, the best flight deal I could find from the US to Australia had a layover in Fiji, for just under 24 hours. When I booked the flight, I checked, and it turned out making the layover 5 days instead of one only added about $100 to the cost of the flight. I found accommodation at a hostel right on the beach for about $8/night, and that included a free ride to and from the airport.</p>
<p>I was like &#8220;$150 side trip to Fiji for 5 days? Sign me up!&#8221;</p>
<p>I got to the hostel about 6:00 in the morning, long before my bed was ready; check-in was normally at 1pm, I was told.</p>
<blockquote><p>Being awake for 36 hours finally had caught up to me, so I collapsed in a hammock outside in the shade, and finally went to sleep.</p></blockquote>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/fijitime.png\"><img class=\"size-medium wp-image-1155\" src=\"http://heropress.com/wp-content/uploads/2016/07/fijitime-300x225.png\" alt=\"The view from the hammock I slept in while waiting for my bed to be ready.\" width=\"300\" height=\"225\" /></a>The view from the hammock I slept in while waiting for my bed to be ready.
<p>They managed to get my bed ready a couple hours early, and so at 11:00, I dragged my feet and my suitcase over to the building I&#8217;d be sleeping in for the next few days, and slept until just after dusk.</p>
<p>I spent the next few days lounging in hammocks, taking swims in the ocean, and exploring the tiny town of Nandi just outside of the airport. I took day tours, and spent an afternoon relaxing in mud baths, then getting a deep tissue massage that seemed to go on forever. One day, a bunch of people from the hostel took a bus all the way across the island&#8211;about a 2 hour journey&#8211;to watch a Rugby tournament that some of the hostel&#8217;s staff members were playing in. Our team didn&#8217;t win, but it was fun to watch, so we didn&#8217;t care.</p>
<p>We spent the nights sitting around a fire, singing songs, and drinking Kava&#8211;a somewhat intoxicating drink that tasted like dirt, but made you happy and carefree.</p>
<p>Those five days seemed like a lifetime, but they did finally end, and I had another plane to catch.</p>
<h3>Back to reality</h3>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/operahouse.png\"><img class=\"size-medium wp-image-1157\" src=\"http://heropress.com/wp-content/uploads/2016/07/operahouse-300x225.png\" alt=\"When I first laid eyes on the Sydney Opera House, I stood in wonder for what felt like hours. \" width=\"300\" height=\"225\" /></a>When I first laid eyes on the Sydney Opera House, I stood in wonder for what felt like hours.
<p>So, after one last flight, this one, mercifully only about 5 hours, I finally landed in Australia, Sydney to be exact. As corny as it sounds, I&#8217;d fallen in love with the city after watching Finding Nemo.</p>
<p>I had spent so much time planning the &#8220;getting to Australia,&#8221; part of my journey, that I didn&#8217;t really have any solid plans for what to do after I got there.</p>
<p>The first order of business was finding a long-term place to stay, and the second was finding a job.</p>
<p>I had originally planned to transfer to an Apple Store in Sydney. But, as happens in large companies, I got caught in a quagmire of bureaucracy, and didn&#8217;t actually have a job waiting for me when I got to Australia. I met with managers at the store, and they were excited to have me come aboard, but there was a lot of red tape to get through.</p>
<p>And so a couple of months went by, and my savings were rapidly depleting.</p>
<blockquote><p>For a couple of weeks, just to pay my rent and buy some food, I spent hours every day as a street performer in one of the popular shopping areas in Sydney.</p></blockquote>
<p>I&#8217;d gone to the Aussie equivalent of Best Buy, bought an amp and a microphone, and connected it all to my phone playing some Karaoke tracks.</p>
<p>It was summertime, and just before Christmas, so there were lots of shoppers out and about, and in a giving mood. The Saturday before Christmas, I took in $300 in about 4 hours. It was really fun, and I made a lot of friends in other buskers, and some of our regular fans, but I couldn&#8217;t keep it up forever.</p>
<h3>Finally, a paycheck&#8230;</h3>
<p>Just as my savings were about to run out, and it looked like I might have to borrow money to head back to the States, I heard back from Apple. They wanted me to start working at the store in a couple of weeks. On that very same day, I got an email from Automattic. Over the previous few weeks, I&#8217;d interviewed with a hiring manager, and done a small project, and that day, they asked me to start a 6 week trial as a Happiness Engineer.</p>
<p>I&#8217;d gone from having no jobs, singing on the street just so I wouldn&#8217;t be living on the street, to having two full time jobs at the same time, and raking in the dough.</p>
<p>And so, I would wake up early in the morning, and spend a couple hours answering WordPress support tickets, then walk to the Apple Store and work a full 8 hour shift, and still come home and spend a few more hours working on tickets. I didn&#8217;t take a day off for over a month.</p>
<p>But, six weeks into my trial, I found out I was going to be passed on to Automattic&#8217;s CEO&#8211; a guy you might have heard of, named Matt Mullenweg&#8211;for the final interview. I had to ping him every day to ask if he was available, and after about a week, we chatted for hours-six long, but engaging hours, about everything from Karaoke, to what books I liked, to my traveling around the world.</p>
<blockquote><p>And at the end of the chat, Matt offered me the job. I would start full time at Automattic in a couple of weeks.</p></blockquote>
<p>And so, I gave my notice at Apple, and to celebrate, in the long weekend I had before starting at Automattic, I took a trip to the Great Barrier Reef.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/kangaroo.jpg\"><img class=\"size-medium wp-image-1156\" src=\"http://heropress.com/wp-content/uploads/2016/07/kangaroo-300x243.jpg\" alt=\"The kangaroos at the sanctuary were quite friendly! As long as you had food to offer them, anyway.\" width=\"300\" height=\"243\" /></a>The kangaroos at the sanctuary were quite friendly! As long as you had food to offer them, anyway.
<p>I had to fly up to Brisbane, then take an all day tour bus to a town hear the coast. We stopped at tourist traps along the way, including a sanctuary for kangaroos, koalas, emus, and more. That evening, we finally got to a small coastal town, with a population of <em>maybe</em> a few hundred.</p>
<p>The next day, the winds were too high on the seas for us to safely take a boat out. Instead, our tour guide took us to the top of a cliff overlooking the beach that night.</p>
<p>There were no cities for miles around, and I saw the entirety of the Milky Way in the sky for the first time in my life. That had a profound effect on me; it really hit home just how insignificant we really are in the universe.</p>
<p>The next day, we took a boat out to the reef, and I got to snorkel for a few hours. I did what Finding Nemo had made me want to do; watch see turtles play and look for &#8220;annemenenennones.&#8221;</p>
<p>And I found Nemo!</p>
<h3>On my own for the first time&#8230;</h3>
<p>Once I got back to Sydney, it was time to buckle down, and get to work. I had to buy, then set up my new computer. I went through some more training, settled into a routine, and attended my team&#8217;s weekly chats, which were at midnight, thanks to the time zone difference.</p>
<p>That didn&#8217;t stop me from exploring, though.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/outback.jpg\"><img class=\"size-medium wp-image-1154\" src=\"http://heropress.com/wp-content/uploads/2016/07/outback-300x246.jpg\" alt=\"40,000 feet over the Australian outback, on my way to Bali, it seemed like I was over an alien planet.\" width=\"300\" height=\"246\" /></a>40,000 feet over the Australian outback, on my way to Bali, it seemed like I was over an alien planet.
<p>Easter weekend, I took a side trip to Bali, Indonesia; flying there was actually cheaper than most destinations within Australia!</p>
<p>I traveled inland to a small town near the center of the island named Ubud. And while I was there, I stayed in a treehouse (albeit, a treehouse with wifi and air conditioning).</p>
<p>Every night, I got a full body oil massage for about $15 USD. I went to a monkey forest reserve, and spent hours playing with the monkeys. One even climbed up on my shoulder to grab a piece of fruit I was offering it.</p>
<p>A month or so later, I went to a WordCamp in Brisbane. Since I could work from anywhere, I rented an AirBNB for the month there, and had an apartment all to myself, for the first time in my life.</p>
<h3>A moment in crisis</h3>
<p>It&#8217;s funny how living in a place by yourself is a completely different mentality from sharing one with family or roommates.</p>
<p>What I didn&#8217;t know was just how much it would affect me.</p>
<p>You see, I&#8217;d been struggling with something all my life; something I&#8217;d kept hidden from everybody around me, sometimes even from myself.</p>
<p>Growing up, I always knew I was different somehow. It wasn&#8217;t until my teenage years that I was able to put a name to it, though.</p>
<p>All my life, I was told I was a boy, by family, by friends, by society. I believed it, too. After all, if everyone calls you something for long enough, you tend to end up believing it&#8217;s true.</p>
<p>But, in my heart, I knew I was different. I was really a girl.</p>
<blockquote><p>I&#8217;d find out later that this was called being transgender.</p></blockquote>
<p>Looking back, I can see signs that I wasn&#8217;t what everyone thought I was from my earliest memories, but it wasn&#8217;t until puberty hit that everything really started feeling wrong. My body wasn&#8217;t growing the way it was supposed to.</p>
<p>The teen years are known for being a pressure-filled, anxiety-ridden period in anybody&#8217;s life.</p>
<p>Mine was that way for the same reasons as most teenagers, but also because I had to hide who I really was. At the time, all I knew about trans people was what you saw on Maury and Jerry Springer, and the occasional transphobic jokes in TV shows and movies.</p>
<p>I didn&#8217;t want to be one of those caricatures, so I buried my feelings deep down into myself, so that eventually, even I believed they weren&#8217;t real.</p>
<p>But, every once in a while, they&#8217;d resurface. And I&#8217;d bury them back down because I was afraid. I was afraid that roommates would see me for the impostor that I felt like. Or that they&#8217;d be disgusted. I could never let my guard down.</p>
<p>When I moved into that first apartment of my own, though, a couple of things happened:</p>
<p>First, I was able to let my guard down. There was nobody around to worry about seeing me.</p>
<p>More importantly, though, I came across a Facebook post of a former coworker who had transitioned earlier in the year.</p>
<p>She&#8217;d originally made a big post on Facebook announcing that she was transitioning, but it happened during a time when I wasn&#8217;t really looking at Facebook, and by the time I was looking again, I had missed the post, and she had changed her name and profile image, so that I didn&#8217;t put two and two together.</p>
<p>But in June, for the first time since transitioning (that I saw anyway), she posted a picture of herself. I practically did that double-take that they show in cartoons: &#8220;Is that who I think it is?&#8221;</p>
<p>And so, I spent that evening reading back through all of her posts from the last six months. She talked about the feelings she&#8217;d had since she was a kid, and how she came to terms with them.</p>
<blockquote><p>I sat there for hours, until the sun came up. At some point&#8211;I don&#8217;t know when&#8211;I started sobbing. Everything she was saying punched me in the gut like a prize-fighter.</p></blockquote>
<p>These were the same feelings I&#8217;d suppressed all of these years&#8211;to a tee.</p>
<p>I&#8217;ve heard before that when you&#8217;re transgender, before you can accept yourself and start to transition, two things need to happen:</p>
<p>First, you need to realize you <strong>can</strong> do it.</p>
<p>Then, you need to realize that <strong>you</strong> can do it.</p>
<p>I already knew that it was possible to transition. Back when I worked in the pharmacy, I filled lots of hormone prescriptions for trans women.</p>
<p>But reading my friend&#8217;s posts helped me realize that transitioning was something I could do. That I needed to do.</p>
<p>I was in crisis mode. I was half a world away from everyone I knew, my family, my friends.</p>
<p>I was scared. I wanted to go home, but I still had about four months to go until I came back to the US.</p>
<h3>Starting a new journey, while already on another one</h3>
<p>I wanted to go home early. Several times, I&#8217;d gone to booking sites, and held my finger over the purchase button with a different kind of trepidation than I&#8217;d had when I originally bought my ticket to Australia.</p>
<p>But I&#8217;d already agreed to speak at a WordCamp in Pune, India in September, so if I went home early, it would mean cancelling that (and letting down one of my coworkers who&#8217;d worked hard to get me invited and approved to go in the first place).</p>
<p>So, I carried on. I found a therapist that would talk with me online, to help me through all of the anxiety and depression I was going through. By the time we finished a couple of sessions, I was absolutely certain that transitioning was right for me.</p>
<p>I muddled through the rest of my time abroad. I didn&#8217;t really go out much and explore the cities I had left to visit, though I did some. I&#8217;d started chatting with my friend whose posts had led to my own epiphany. Both she and the therapist I was talking to helped me through the worst of the homesickness.</p>
<p>I kept working, and eventually, the trip to India came. I had a weekend in Pune, a month in Mumbai, then back home to the US. I enjoyed India a lot. I met a lot of people at WordCamp, who treated me like a rockstar for working at Automattic. And oh yeah, Topher (ya know, the guy who runs this site?) was there, too. <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></p>
<h3>Finally back home</h3>
<p>After those final few weeks in India, September 30th finally came, and I was glad to be heading back home to the US. I&#8217;d spent the last few months making plans, and one of them was to tell my family.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/overgreenland.jpg\"><img class=\"size-medium wp-image-1162\" src=\"http://heropress.com/wp-content/uploads/2016/07/overgreenland-300x225.jpg\" alt=\"The view from the plane over Greenland, as I was finally on my way back home.\" width=\"300\" height=\"225\" /></a>The view from the plane over Greenland, as I was finally on my way back home.
<p>After two 9.5 hour flights from Mumbai to Paris, then Paris to Minneapolis, I was home. I wanted to tell my family (who I knew would be supportive) right away.</p>
<p>But every time I tried, my throat closed up and my eyes started to well up with tears.</p>
<p>Once I told them, there would be (in my mind, anyway) no going back. It took a few days, but I ended up telling them one at a time&#8211;via text message, so that I could say everything I wanted to say without stumbling.</p>
<p>Of course, my family accepted me for who I was, like I knew they would. But I still had to tell the rest of the world. So many people at work and in the WordPress community knew me already, so doing it under the radar wasn&#8217;t going to happen. And really, I&#8217;d spent my whole life hiding this part of me, and I didn&#8217;t want to hide anything any longer than I had to.</p>
<p>So, I made another plan to tell my coworkers, my WordPress friends, then everybody else.</p>
<h3>The second WordCamp that changed my life</h3>
<p>As it turned out, WordCamp US was coming up in December, just about a week before my birthday. I thought that would be the perfect opportunity to tell a small group of people, just so they would have my back in case anybody acted like a jerk when I later posted online that I&#8217;d be changing my name.</p>
<p>I&#8217;d already worked with my HR at work to come up with the right language for a blog post on our internal updates blog. And I would later use almost the same text when I posted to Facebook and my blog.</p>
<p>So WordCamp came, and I pulled over the few people that I wanted to talk to, and started telling people.</p>
<p>I told that small group of 5 during the community summit before WordCamp. Every single one of them told me they were happy for me, and thanked me for trusting them enough to tell them first.</p>
<p>And so, that was that. I&#8217;d already scheduled the blog posts (both internal at work and my own blog) and the Facebook post to go out a few days after WordCamp.</p>
<p>Or so I thought.</p>
<blockquote><p>What I didn&#8217;t realize is just how much I&#8217;d missed my friends from the WordPress community.</p></blockquote>
<p>I made new WP friends while traveling in Australia and India, for sure, but most of my friends were in Europe and the US, so WordCamp US was my first opportunity to see most of them.</p>
<p>I saw people I hadn&#8217;t seen in over a year, sometimes longer, and I didn&#8217;t want to pretend with them anymore. And so, I started pulling them aside, one at a time.</p>
<p>Every single one of them pretty much had the same three responses:</p>
<p>&#8220;Congratulations on finally being able to be yourself,&#8221;</p>
<p>&#8220;If you need to talk to someone, let me know,&#8221; and</p>
<p>&#8220;If anybody gives you trouble, I&#8217;ll punch them.&#8221; (Thankfully that one didn&#8217;t become necessary.)</p>
<p>Every time I told someone, and they reacted that way, I felt happier and happier. By the end of the weekend, when I&#8217;d planned to tell 5 people, I ended up telling several hundred; who knew I had that many WordPress friends?!</p>
<p>The community I&#8217;d surrounded myself made me feel loved, and I knew what I was doing was right.</p>
<p>A few days later, the blog and Facebook posts went out, and all of my friends and coworkers who weren&#8217;t at WordCamp finally knew.</p>
<p>And I felt free.</p>
<h3>And it&#8217;s all thanks to WordPress</h3>
<p>Discovering WordPress opened up a whole new world for me. It started me on a whirlwind journey that nobody could&#8217;ve known where it would eventually take me.</p>
<p>I look back at myself&#8211;when I started using WordPress&#8211;and I&#8217;m amazed. It&#8217;s hard to imagine that I was once that 19 year old kid, with a low paying job, living at home with a single parent, struggling to make ends meet, and just going through the motions of life without really living.</p>
<p>Now, I&#8217;ve got an amazing job, friends and family that love me for who I am, and I can finally live my life without pretending to be someone I&#8217;m not.</p>
<blockquote><p>Twelve years ago, I could never have imagined that I&#8217;d end up working for a company, and part of a community, that was full of so many accepting people. A community that placed a priority on making sure that all were welcome.</p></blockquote>
<p>It&#8217;s fair to say that without the support of the WordPress community, I wouldn&#8217;t be the person I am today&#8211;literally.</p>
<p>And to think it&#8217;s all because I started a blog over a decade ago.</p>
<p><small>All photos in this post were taken by Amy Lane, and are licensed under a <a href=\"http://creativecommons.org/licenses/by-sa/4.0/\" rel=\"license\">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</small></p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/wordpress-literally-turned-brand-new-person/\">How WordPress (literally) turned me into a brand new person</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Amy Lane\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"HeroPress: How to Learn WordPress Without Doing It on Your Own\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1138\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://heropress.com/essays/learn-wordpress-without-doing-it-on-your-own/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10290:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/07/071316-following-your-dream-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pullquote: There\'s nothing that will spur you on more in life than following your dream\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How to Learn WordPress Without Doing It on Your Own\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20to%20Learn%20WordPress%20Without%20Doing%20It%20on%20Your%20Own&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Flearn-wordpress-without-doing-it-on-your-own%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How to Learn WordPress Without Doing It on Your Own\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Flearn-wordpress-without-doing-it-on-your-own%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Flearn-wordpress-without-doing-it-on-your-own%2F&title=How+to+Learn+WordPress+Without+Doing+It+on+Your+Own\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How to Learn WordPress Without Doing It on Your Own\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/learn-wordpress-without-doing-it-on-your-own/&media=http://heropress.com/wp-content/uploads/2016/07/071316-following-your-dream-150x150.jpg&description=How to Learn WordPress Without Doing It on Your Own\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How to Learn WordPress Without Doing It on Your Own\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/learn-wordpress-without-doing-it-on-your-own/\" title=\"How to Learn WordPress Without Doing It on Your Own\"></a></div><p>Wait, what?</p>
<p>Okay, the headline might be a bit confusing, but bear with me. It all makes sense, I promise.</p>
<p>Let&#8217;s start somewhere else, though.</p>
<p>Hi, I&#8217;m Madalin Milea, and I am a technology professional based out of Rennes, France. I&#8217;m self-employed, a WordPress enthusiast, collaborating with <a href=\"http://www.codeinwp.com/blog/\">CodeinWP</a> (one of the top blogs about WordPress), and a member of the support team at <a href=\"http://themeisle.com/\">ThemeIsle</a>. I also maintain my own blog at <a href=\"http://madalinm.com/\">M.Online</a>, writing about a variety of topics such as blogging, WordPress and programming.</p>
<p><img class=\"alignnone size-large wp-image-644\" src=\"http://madalinm.com/wp-content/uploads/2016/06/Screen-Shot-2016-06-17-at-5.59.05-PM-1024x580.png\" alt=\"Screen Shot 2016-06-17 at 5.59.05 PM\" width=\"810\" height=\"459\" /></p>
<p>But I didn&#8217;t start like that. I studied Management and Economics for three years. It seemed like a sensible option, but while I knew I was gaining some useful skills, I also wanted more. I had a feeling I wasn&#8217;t yet on the right track.</p>
<p>So I went right back to square one and started out on a new path &#8211; programming; a field that had always had a magical allure for me, something I&#8217;d always dreamed of doing but never thought possible.</p>
<p>I obviously needed to learn a lot about WordPress, programming, and all things related before I could collaborate with companies like ThemeIsle, or before anyone would even hire me as a freelancer, for that matter.</p>
<p>So how do you do that? How do you go from studying Economics and being a phone center technician (which I used to do), to a WordPress developer?</p>
<p>Well, WordPress and programming in general are very interesting fields. First off, the way &#8220;mastering those fields&#8221; works is unheard of when compared to other fields. For example, if you want to be a doctor, you have no way of obtaining the necessary education on your own, through blog posts or whatever. You need to go to school. With programming, you very well <em>can</em> be self-taught, right from the start, all the way to being an expert.</p>
<p>But maybe this is not the best path to take after all&#8230; Maybe you&#8217;re better off not learning everything all on your own? I mean, I found the amount of info available out there on the web rather overwhelming. There&#8217;s just soooo much stuff. Where does one start?</p>
<h2>How to begin pursuing a new skill</h2>
<p>I, for instance, decided to look for some online courses that could help me learn in a more easy-to-grasp way. So, after several hours of searching, I stumbled upon some <a href=\"https://www.udemy.com/\">Udemy</a> courses on sale over at <a href=\"https://deals.creativebloq.com/\">Creative Bloq Deals</a>.</p>
<p>At first, they seemed interesting, but after a few days, I felt quite discouraged. It all seemed too complicated, I thought I&#8217;d never manage to learn anything. For a moment, I worried that I would never become a programmer. But I&#8217;m certainly not the one to give up easily, so I asked around for other ideas.</p>
<p>One <a href=\"http://ionutn.com/\">friend of mine</a> recommended the <a href=\"https://teamtreehouse.com/\">Treehouse</a> courses and told me that there&#8217;s two weeks of free trial available (with full access). That seemed fair enough, so I gave it a go.</p>
<p>Long story short, it turned out to be a brilliant decision, and looking back, perhaps one of the best career decisions I&#8217;ve ever made. After only two weeks, I was already fascinated by the courses and the team running them.</p>
<p>It was during this time that I found my enthusiasm for WordPress and developed my skills. The Treehouse course structure really made things easy to follow. I was really taken with the whole experience.</p>
<p>In just one year, I&#8217;ve learned PHP, JavaScript, CSS, and HTML. This has helped me to grow my new career as a freelancer, and allowed me to feel comfortable with things like creating themes, websites, and even plugins. This gives me a great feeling of satisfaction.</p>
<p>In hindsight, I could have started with random free info that&#8217;s available on countless websites, but it wouldn&#8217;t have given me a natural step-by-step progression that a structured course does.</p>
<p>So my message is this:</p>
<blockquote><p>Even if you set out to learn a new skill on your own, you don&#8217;t actually need to be on your own the whole time.</p></blockquote>
<p>Get guidance from someone or someplace that really knows what they&#8217;re doing!</p>
<p>And please don&#8217;t get me wrong, I&#8217;m not saying that Udemy courses aren&#8217;t any good, but in my case, Treehouse has just turned out to be perfect, considering my newbie level. I want to thank the team (especially Zac Gordon and Nick Pettit, my favorite teachers) for their wonderful work.</p>
<h2>&#8220;Can I make the move?&#8221;</h2>
<p>You might be at that point when you just can&#8217;t decide what you want to do with your life, or maybe all your previous ideas or your parents&#8217; ideas don&#8217;t seem all that exciting anymore.</p>
<p>That&#8217;s alright.</p>
<p>You can always pivot. <em>Change</em> really isn&#8217;t as hard as you might think if you&#8217;re motivated and hard working. There&#8217;s nothing that will spur you on more in life than following your dream. Whether you&#8217;d love to be a web developer, write mobile apps, computer games or start your own award winning blog, you can do it.</p>
<p>There are so many resources out there, some you pay for, but many are free. You can easily find a wealth of knowledge or even just people willing to share their expertise.</p>
<p>Once you find the right route for you, like I did, you&#8217;ll be full of motivation, and it&#8217;s this motivation that will get you there. The thought of a new career doing what you love will inspire you to put in a couple of hours each evening after work mastering a new skill.</p>
<p>Over the years I&#8217;ve learned a lot. These days, my areas of expertise include WordPress development, team management, programming and SEO. It&#8217;s my desire to learn more that has always pushed me forward. Every day, I expand my knowledge and hone my skills as a problem solver and effective developer.</p>
<p>You always have to remember that nothing is easy, but when you overcome obstacles, you get a huge sense of achievement. For me, it&#8217;s so frustrating when I just can&#8217;t understand something. It would be easy to give up and think it&#8217;s simply beyond me, but if you persevere, the sense of achievement when you have that &#8220;A-ha!&#8221; moment is incredible. Just in the last year, I gained a set of skills that seemed pretty much impossible to me before.</p>
<p>So again, whatever skill you want to master, don&#8217;t set out to do it on your own. Find quality sources of information, and don&#8217;t stop until you stumble upon something that fits.</p>
<p><strong>What&#8217;s your dream career? Have you taken the first steps to make it a reality?</strong></p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/learn-wordpress-without-doing-it-on-your-own/\">How to Learn WordPress Without Doing It on Your Own</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Madalin Milea\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"HeroPress: Making Family\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"http://heropress.com/essays/making-family/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:19817:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/07/070615-family-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pullquote: The longer we\'re a part of the WordPress community the more I realize we\'re not making friends, we\'re making family.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Making Family\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Making%20Family&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-family%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Making Family\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-family%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-family%2F&title=Making+Family\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Making Family\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/making-family/&media=http://heropress.com/wp-content/uploads/2016/07/070615-family-150x150.jpg&description=Making Family\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Making Family\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/making-family/\" title=\"Making Family\"></a></div><p>It&#8217;s not uncommon for me to ask someone to write a HeroPress essay and have them respond with &#8220;Why me? I&#8217;m not really on the periphery of anything. WordPress didn&#8217;t really help me overcome any hardship&#8221;. Almost every time I help them realize what an impact WordPress has made on their life, and how it has enabled them.</p>
<p>It took me quite a while to walk that path myself. I was a web developer for 15 years before I started working with WordPress, and if I hadn&#8217;t found WordPress I&#8217;d still be a web developer, and making a good happy living.</p>
<p>While WordPress as a technology made my career more pleasant, and certainly easier, the thing that has changed my life, and the life of my family, is unquestionably the WordPress community.</p>
<h3>Who I Am</h3>
<p>Another common requirement for writing a HeroPress essay is that you need to write to an audience. Who is this message for? This essay is for people like me. Read on and see if you&#8217;re like me.</p>
<p>People call me Topher, and for the new folks, I manage this little site. I&#8217;ve often said that everyone is on the periphery of something. I don&#8217;t <em>feel</em> like I&#8217;m on the periphery of anything. I&#8217;m an educated white American man. That right there puts me smack in the middle of most things. But if I had to pick something a little different I&#8217;d have to say it&#8217;s the way I was brought up.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/07/topher_homestead.jpg\"><img class=\"wp-image-1104\" src=\"http://heropress.com/wp-content/uploads/2016/07/topher_homestead.jpg\" alt=\"Photo of the foundation of a house with a trailer next to it in a clearing in the forest.\" width=\"400\" height=\"267\" /></a>The shed we started in is in the top right, then we stayed in that trailer for a summer. The largest thing is the foundation of the house.
<p>In 1979 my parents sold almost everything they had and moved 100 miles north. They bought a little plot of forest in the middle of a very large plot of forest and put up a tent and we moved in. Then we built a little shed, and my dad, my uncle, and I moved into that while mom and my sisters moved back to the city for a few months. We cleared the land and started building a house.</p>
<p>When it came time to hook up to the electrical grid we were told it would be $20,000 for the hookup. That&#8217;s nearly $70,000 at today&#8217;s rate. My dad simply said no. We didn&#8217;t get connected to the electrical grid for another 15 years.</p>
<p>If you&#8217;d like to read more of that story <a href=\"https://topher1kenobe.com/category/my-story/\">I did a nice long series on my own blog</a>.</p>
<h3>How I Got Here</h3>
<p>I taught myself to type in high school because it was way better than writing all that stuff by hand. When I got to college and it came time to write a paper I found that the library had a typewriter I could use.  It was an old IBM Selectric with a little motor that spun and hummed the end entire time.</p>
<p>One day a guy said to me &#8220;Why don&#8217;t you use The Computer?&#8221;.</p>
<p>&#8220;We have a computer?&#8221; I asked.  He showed me where the IBM 286 with WordPerfect was and I spent about a week learning everything I could about it. Soon I was typing papers for other people at a penny a word. That&#8217;s about $2 a page.</p>
<p>Then one day someone donated a new computer to the college.  It was a Microsoft Xenix server, with 5 dumb terminals. <em>Five</em> people could use it at the same time! It also had something called &#8220;email&#8221;.  It wasn&#8217;t on any network, so we could only email people in that room. But we loved it. Everyone swapped emails.</p>
<p>Fast forward a couple years and I went to a different school which ALSO had a server. This one was a giant VAX/VMS system. The machine was about the size of an old Volkswagen bug. There were terminals all over campus. You could send an electronic message to someone who was almost a mile away! It was amazing, and I was enthralled.</p>
<p>In my 4th year of college I was told that we could soon be connected to The Internet. I&#8217;d never heard of that, so I started learning. I found out that it would be just like what we had, but we could send emails to other schools! And people all over the world. It was AMAZING.</p>
<p>To try to keep a long story short(er) I moved through telnet, <a href=\"https://en.wikipedia.org/wiki/Gopher_(protocol)\">Gopher</a>, and finally the web.</p>
<p>One day a friend came to me and said &#8220;Hey, look what I made!&#8221;.  It was a web page. With his own content on it! He said &#8220;It&#8217;s really easy, you should try it!&#8221; I told him no, it looked far too complicated. He said it really wasn&#8217;t, and showed me.</p>
<p>That afternoon I learned every HTML tag there was. All 40 of them. And I started making web pages. Page after page. I made lists of interesting websites, and connected them all together. I built an unofficial website for my college. I joined the local Freenet, even though I didn&#8217;t have a computer of my own, and started building pages for them, for my city. It became an obsession.</p>
<p>Eventually I talked the college into paying me to build them a real website. Here&#8217;s a screenshot:</p>
<p><img class=\"aligncenter size-full wp-image-1106\" src=\"http://heropress.com/wp-content/uploads/2016/07/cornerstone_college_website_lynx.png\" alt=\"Screenshot of Cornerstone College\'s web site in Lynx in a terminal window,\" width=\"484\" height=\"316\" /></p>
<h3>Leveling Up</h3>
<p>After college I took a 6 month contract building an intranet website for Kellogg&#8217;s (the cereal people). It was their first internal website, and I had to make sure there was backward compatability for Netscape 1.0. It was still all plain HTML though.  CSS hadn&#8217;t been invented yet.  If there was back-end scripting to be done it was CGI in perl.</p>
<p>Fast forward to 1998 and I was working in my office with some co-workers and one of our designers came into the room. He said &#8220;I have a contract to build a site for a realtor, but I need someone who knows PHP&#8221;. No-one said anything, so I said &#8220;I&#8217;ll do it!&#8221;.</p>
<blockquote><p>That night I went home and learned PHP.</p></blockquote>
<p>I built the site and got paid. Let&#8217;s just say I&#8217;m glad it&#8217;s not around anymore.</p>
<p>I started taking more PHP jobs, getting better and better. A new thing became popular on the web called &#8220;web logging&#8221;, basically keeping a journal on the web.  People soon shortened it to &#8220;blogging&#8221;, which confused all the old people.</p>
<p>I tried some blog software, but it was crazy hard to set up. One platform even required an Apache module of its own. I decided blogging wasn&#8217;t for me, and probably wouldn&#8217;t be going very far.</p>
<h3>Enter WordPress</h3>
<p>In 2003 I was working as a PHP/MySQL developer at a radio station attached to a college (the very same at which I started so long ago). I was teaching a class called <em>Intro To Web Development</em>. I&#8217;d recently heard about WordPress and tried it out. I wasn&#8217;t very impressed. I could build that. I required each student to have a project for the year, and I took one for myself. Build something better than WordPress.</p>
<p>What I came up with wasn&#8217;t better than WordPress, but it was good enough that I used it as my main blogging software for 10 years. Looking back, I really wish I had become involved in the community then. Where would I be now?</p>
<h3>Spinning Off Into Chaos</h3>
<p>In 2010 I had been doing side work non-stop for several years. I did the math and realized that I was wasting a LOT of time and money going to my day job every day. Literally tens of thousands of dollars being lost by going there 5 days a week.</p>
<p>I quit.</p>
<p>I went freelance and the work poured in. I took a contract that used WordPress and was pretty impressed by its blogging abilities. It was still a chore to make any other kind of site with it, but I was able to bend it to my will. I loved that WordPress took care of permissions and user management for me. I quickly found out that most of the &#8220;WordPress developers&#8221; out there didn&#8217;t really know PHP. I had a huge advantage.</p>
<p>I used WordPress occasionally until 3.0 came out.  <strong>Everything changed</strong>.</p>
<p>Custom Post Types made practically anything possible! It was literally breathtaking. I hadn&#8217;t been so excited since the early days of web development, when a new browser version meant major new web technology.</p>
<p>Everything in my life began to change rapidly as well. I went from freelancing to being CTO in a startup to being a WordPress VIP developer at a major agency to trying something cool (HeroPress) to writing documentation. 5 different job changes in 6 years. <a href=\"http://catewerks.com/our-jump-to-freelancing/\">It was pretty stressful for my family</a>.</p>
<p>There was something consistent through most of the last 6 years though.</p>
<h3>You</h3>
<p>My first experience with The Community was when I went looking for a Theme Framework.  I found Startbox, by a guy named Brian Richards. I found out he lived only a few miles from my house! He answered SO MANY QUESTIONS. I wouldn&#8217;t be the WordPress developer I am today without him.</p>
<p>We formed a local WordPress meetup, and one of the first things he said was &#8220;We need a WordCamp&#8221;. What&#8217;s a WordCamp? He told me all about it and said he wanted to pull one together in only 4 months.  I thought he was CRAZY, but sure enough he did it, and <a href=\"https://2013.grandrapids.wordcamp.org/\">WordCamp Grand Rapids</a> was born.</p>
<p>I was hooked. I couldn&#8217;t wait until NEXT year when we could have another one!</p>
<p>Then I learned they happen all over the place! ALL THE TIME!</p>
<p>My first Away WordCamp was Austin in April 2014, and it felt like it changed everything. I mustered up the courage to approach Siobhan McKeown and ask her about writing docs. 15 minutes later (literally) I had admin rights to work on the Plugin Handbook. I spent the next 6 months finishing it.</p>
<p>I met Shayda Torabi, Chris Lema, Shawn and Kay Hesketh. I met for the first time my own co-workers at XWP.</p>
<p>And my father died.</p>
<p>My sister called on a quiet Sunday morning at sunrise and told me he was gone. My dear brother Luke Carbis cried with me. I&#8217;m crying now as I write this.</p>
<h3>More of You</h3>
<p>I was surprised to learn soon after that XWP wanted me to go to WordCamp Miami. I didn&#8217;t expect <em>two</em> WordCamps in one year! I met David Bisset, Karim Marucchi, Joe Hoyle, and dozens of other people who are now solid friends.</p>
<p>Then another, I found out I was going to WordCamp San Francisco! I met Rocio Valdivia, Julie Kuehl, Dave Rosen, Shane Pearlman, Jake Goldman, and more and more and more.</p>
<p>It was at that WordCamp that someone nominated me to be XWP&#8217;s WordCamp Outreach person. Dave Rosen looked at me with a sparkle in his eye and asked &#8220;Would you like that?&#8221;. That moment was the true beginning of HeroPress. That&#8217;s where he started thinking &#8220;What if?&#8221;</p>
<h3>HeroPress</h3>
<p>Until HeroPress WordPress was a tool to further my career. I&#8217;d made some dear dear friends, but maybe I would have made dear friends without WordPress. Dave Rosen came to me and told me he wanted me to do something great for WordPress. He told me it was my journey to discover. He wanted a business, a new product that would change everything.</p>
<p>He also sent me a picture.</p>
<p>It was a narrow alley in India. I don&#8217;t know what city. In the center of the alley was a small child, maybe 3 years old, getting a bath. His or her mother was pouring water to rinse.</p>
<p>&#8220;I want to help that child&#8221; Dave said. &#8220;I want to make a world where that child has the ability to make a good healthy living, without having to leave home.&#8221; The child was looking right at the camera.</p>
<p>Right at me.</p>
<p>Dave also made available to me a WordPress agency. &#8220;If you need to build anything, use them, I have them on retainer&#8221; he said. They were from Kolkata. I got to know one person there, a young man named Jeet. We spent months together trying to come up with something great to do for WordPress. I learned about his family, and he learned about mine. He got married in that time.</p>
<p>One day Jeet let go of some frustration. He was trying to get enough work for his agency to stick together.  It was really a group of friends who had been freelancing, and they wanted to make it work as a team. But he couldn&#8217;t get good work.  There was plenty of work for &#8220;cheap labor from India where they work for almost nothing&#8221;.  But that doesn&#8217;t work for actual grown up developers feeding families. He asked <em>me</em> how to get good work.</p>
<blockquote><p>I felt helpless. I&#8217;d never been to India. I wasn&#8217;t any good at business really. What do I know?</p></blockquote>
<p>So I set out to find someone who DID know. Someone who&#8217;d made a successful WordPress business in India.</p>
<p>That&#8217;s where the core idea of HeroPress started. That&#8217;s why HeroPress essays now need an audience. It&#8217;s about connecting people to each other to share wisdom.</p>
<p>I lost track of Jeet not long after the <a href=\"https://wptavern.com/heropress-fails-to-attract-backers-cancels-kickstarter-campaign-ahead-of-deadline\">HeroPress Kickstarter</a> failed, and I&#8217;ve been looking for him ever since. If anyone knows where to find Soumyajit Saha, I&#8217;d love to know.</p>
<h3>Failure</h3>
<p>The Kickstarter failed. My job situation was uncertain. Jeet never got his advice. The kid in the alley would certainly never get a good job. That&#8217;s ridiculous of course, but I could still see those eyes.</p>
<p>Then people started saying things like &#8220;HeroPress is such a good idea, please don&#8217;t let it die.&#8221; People who couldn&#8217;t afford to give more than they had, or any at all.  People said &#8220;I couldn&#8217;t afford to give any money, but I have time, if you need anything done, I&#8217;ll do it&#8221;. Dozens of them.</p>
<p>I started thinking about how I could make it work. If I gave up on video, and went with plain text, how hard could it be? What could it cost besides hosting? I decided to go for it.</p>
<p>I emailed Dave and asked permission but he didn&#8217;t write back. He was busy on something else at the time. I asked again.  Nothing.</p>
<p>So I did it anyway.</p>
<p>I found Rarst and asked him if he&#8217;d do his presentation in text form, and he said yes. We published. It was breathtaking.</p>
<p>Then I thought &#8220;I should have another, right? Umm&#8230; next week?&#8221; So I tracked down Saurabh Shukla, who had given so much great advice on how to talk to people from other cultures. &#8220;Sure!&#8221; he said. Then I needed another. For about the first 3 months I got contributors merely days, sometimes hours before publish time.</p>
<p>Failure turned to success. Text is BETTER than video. It&#8217;s cheaper, faster, more accessible.</p>
<p>It&#8217;s not a viable business. No-one&#8217;s making their living from it. From the viewpoint of the original goal, it has been a failure. From the eyes of everyone who talks to me about it, I can see it&#8217;s a success.</p>
<h3>Making Family</h3>
<p>In the spring of 2014 I went with my wife and two children to WordCamp Chicago. We all made new, wonderful friends. My children know people from all over the world, some of them that I don&#8217;t even know, because of WordPress. My wife now has dear friends she talks to all the time because of that WordCamp.</p>
<p><a href=\"http://heropress.com/wp-content/uploads/2016/07/wordcamp_dinner.jpg\"><img class=\"alignright wp-image-1122\" src=\"http://heropress.com/wp-content/uploads/2016/07/wordcamp_dinner-300x169.jpg\" alt=\"Some family being silly at dinner\" width=\"400\" height=\"225\" /></a>We were hooked. We decided to go to another WordCamp. Then another. We went to Chicago, Dayton, North Canton, Milwaukee, Miami, Orlando, Tampa, Virginia Beach, St. Louis, Kansas City, Columbus, and WordCamp US.</p>
<p>Without my family I went to Pressnomics and WordCamp Pune.</p>
<p>At every one of these places we made more friends. More people with whom we still stay in touch and to whom we have become close. Some of them we saw over and over at WordCamps all year, and traded stories of travel and family and life.</p>
<blockquote><p>The longer we&#8217;re a part of the WordPress community the more I realize we&#8217;re not making friends, we&#8217;re making family.</p></blockquote>
<p>Family from India, Ukraine, England, Argentina, Nepal, Lebanon, Sri Lanka, and literally hundreds of other countries.</p>
<p>WordPress didn&#8217;t rescue me from anything. The code shaped my career sure, but what has changed me is you. The lives of myself and my family will forever be better because of you.</p>
<p>Thank you.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/making-family/\">Making Family</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Topher DeRosia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"HeroPress: WordPress, Where I Found What I Didn’t Know I Was Missing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1088\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://heropress.com/essays/what-i-didnt-know-i-was-missing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13262:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/06/062916-ididntknowiwasmissing-2-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner: The incredible thing about WordPress is the diversity of what you can pursue.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: WordPress, Where I Found What I Didn&#8217;t Know I Was Missing\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=WordPress%2C%20Where%20I%20Found%20What%20I%20Didn%27t%20Know%20I%20Was%20Missing&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwhat-i-didnt-know-i-was-missing%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: WordPress, Where I Found What I Didn&#8217;t Know I Was Missing\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fwhat-i-didnt-know-i-was-missing%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwhat-i-didnt-know-i-was-missing%2F&title=WordPress%2C+Where+I+Found+What+I+Didn%26%238217%3Bt+Know+I+Was+Missing\" rel=\"nofollow\" target=\"_blank\" title=\"Share: WordPress, Where I Found What I Didn&#8217;t Know I Was Missing\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/what-i-didnt-know-i-was-missing/&media=http://heropress.com/wp-content/uploads/2016/06/062916-ididntknowiwasmissing-2-150x150.jpg&description=WordPress, Where I Found What I Didn\'t Know I Was Missing\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: WordPress, Where I Found What I Didn&#8217;t Know I Was Missing\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/what-i-didnt-know-i-was-missing/\" title=\"WordPress, Where I Found What I Didn&#8217;t Know I Was Missing\"></a></div><h3>Backstory</h3>
<p>My grandparents used to have a photograph that showed me as a child, just old enough to start walking; and in it I was trying to climb onto this little cement horse sculpture they had in their yard.</p>
<p>For as long as I can recall I&#8217;ve always had an interest in horses, and it was always believed that my primary career path in life would somehow revolve around riding or training horses.</p>
<p>I had the first chance to work around horses when I was nine, my parents wouldn&#8217;t pay for riding lessons but I was given the green light to volunteer at a handicapped riding facility near our home. So I would go there a few times each week to lead the horses around and assist the riders. I was in heaven.</p>
<p>After some months of this my parents finally conceded to riding lessons, then buying a horse and things seemed to be on course for a career in horses for me.</p>
<p>When I was 14 years old, we had moved to our own little property where we could keep our own horses. I would have been entering the 9th grade that fall, but instead I proposed to my parents that I should drop out of school and start a horse business instead; and surprisingly they agreed.</p>
<p>For the next 6 years, I would spend a significant amount of time learning how to build, maintain and improve my own website for that business; it started with a basic WYSIWYG website builder but I quickly learned I needed to dig directly into the code to achieve what I wanted. I broke things and learned how to fix by poking at them with a stick, possibly the most ineffectual method of learning but this was before Google contained all the answers to all the questions..</p>
<h3>What about *WordPress*?</h3>
<p>Bear with me, I&#8217;m getting to that point! It&#8217;s now 2005 and I&#8217;m packing up my truck and horse trailer with a reasonable amount of belongings and one of my horses to drive 2000 miles from southern Wisconsin to the Seattle, Washington area. The next step in my journey will be as working-student for a year, which is just a fancy way of saying I&#8217;ll be doing hard physical labor for gruelingly long hours in exchange for a few hours of one-on-one instruction when the trainer has time.</p>
<p>I wanted to learn more about Classical Dressage, and with few options in my immediate location, began looking outside the Midwest until I found a small facility in the Pacific NorthWest that was teaching what I wanted to learn.</p>
<p>So where does WordPress fit in here? From the time I started working at the farm, I had to maintain an online blog and post to it daily. I chose WordPress as my blogging platform, possibly it was a choice of complete chance. But **that was my introduction to WordPress**, the requirement to maintain a simple online blog every day.</p>
<h3>Momentum</h3>
<p>Every day, I blogged, and slowly I decided I wanted to do more with my blog. So I began exploring plugins and themes, and then how I could break and fix them to suit my own needs.</p>
<p>People I knew in the horse community would hire me from time to time to work on their site or build them one, and I was doing this in HTML and CSS until I got started with WordPress; and soon I was converting everyone I could to a WordPress site.</p>
<h3>Distractions</h3>
<p>There were a lot of other things going on in my life at this time unrelated to WordPress and websites as I continued to search for what I really wanted to do with my life.</p>
<p>I returned from Washington and began giving riding lessons in my area. I wrote and published a book about working with horses, &#8220;Centered Self, Centered Horse.&#8221; Despite the outward successes I was having, my career path with training horses was really just reaching its peak before fizzling out.</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/06/exhibition.jpg\"><img class=\"wp-image-1090 size-medium\" src=\"http://heropress.com/wp-content/uploads/2016/06/exhibition-277x300.jpg\" alt=\"Erica Franz, in costume, on a rearing horse\" width=\"277\" height=\"300\" /></a>One of the last times I exhibited my horses, this was at a fundraiser for a therapeutic riding facility.
<p>I began practicing Therapeutic Massage to help bring in additional income, sadly my arms would only hold out for a few years before severe chronic tendonitis forced me to quit altogether.</p>
<p>The economy in the gutter and I felt this might be a good time for me to pursue higher education, so I went to college for my Bachelor of Fine Arts degree.</p>
<p>School was a welcome distraction as my involvement with the horse community became less satisfying. I felt more at odds every day with the common methods used to train and ride horses until I decided I needed a full break from all-things-horses.</p>
<p>Even through all of this, I was still plugging away with WordPress, freelancing and slowly gaining more and more clients.</p>
<h3>The Big (little) Change</h3>
<p>In 2013, a freelance client I had just started working with wanted to use a very specific WordPress theme &#8211; Marketer&#8217;s Delight.</p>
<p>It&#8217;s funny when you think back to something small that can completely change the course you&#8217;re on. But it was this tiny thing that I believe began a full-stop to the path I was travelling at that time and helped re-route me to where I am today.</p>
<p>Marketer&#8217;s Delight, at that time, was a skin for the Thesis framework. So as I was working with it I would pop into the forum support to ask a few questions about whether certain functionality was supported out of the box, and Alex was looking to hire someone to help with forum support.</p>
<p>On a lark, I sent him an email. I loved working with Marketer&#8217;s Delight and felt I&#8217;d enjoy helping others in the forum as they navigated their way through customizing the theme for their own site.</p>
<p>And that was it, I joined Kolakube and worked in the support forum for about 3 months.</p>
<p>After that opportunity I realized some very important things. 1) I love figuring things out and finding out what the cause of a problem is, and 2) I really love helping people.</p>
<h3>Taking a chance at a random opportunity</h3>
<p>I had continued to freelance while working in the support forum, but after that time I really wanted to work with another support team again.</p>
<p>I wasn&#8217;t yet actively looking at job openings or submitting resumes to any companies; but opened up Twitter and one of the few people I was following at the time had retweeted a link to a job opening for OptinMonster.</p>
<p>I worked with creating &#8220;optins&#8221; with OptinMonster on a few of my clients&#8217; sites so was already somewhat familiar with the product and and really enjoyed using it.</p>
<p>Of course there was some immediate self-doubt about whether I was really qualified for the position because customer support wasn&#8217;t a field I had been pursuing for a long time or had a long history of experience in.</p>
<p>&#8220;Ah, the worst that can happen is they actually respond with a &#8216;no&#8217;.&#8221;</p>
<a href=\"http://heropress.com/wp-content/uploads/2016/06/resume.jpg\"><img class=\"size-medium wp-image-1093\" src=\"http://heropress.com/wp-content/uploads/2016/06/resume-213x300.jpg\" alt=\"Erica Franz\' resume, mostly blurred out\" width=\"213\" height=\"300\" /></a>Not a resume to be easily forgotten.
<p>So I got to work putting together a resume to submit that I felt would convey both my personality and highlight my motivation.</p>
<p>I actually listed the following as a skill-set in my resume:</p>
<p>&#8220;Owner of unicorns,<br />
slayer of dragons,<br />
rider of lightning&#8221;</p>
<p>Long story short, <strong>I got the job!</strong></p>
<h3>Time flies when you love what you do</h3>
<p>It&#8217;s been a year and a half now that I&#8217;ve been working not only with OptinMonster, but also with Soliloquy and Envira Gallery plugins which are part of the same company (AwesomeMotive).</p>
<p>I work with the really great, diverse team of people, who feel more like family.</p>
<p>In the short time I&#8217;ve worked at AwesomeMotive, I&#8217;ve learned so much and grown a lot with respect to my knowledge and skills in development even. I gained confidence to begin writing my own plugins and have some published now in the WordPress Plugin Repository.</p>
<p>This last fall I was promoted to Head of Customer Happiness and have the honor to oversee support for thousands of customers.</p>
<h3>Reflection</h3>
<p>Sometimes it&#8217;s difficult to look ahead and see clearly where your destination will be.</p>
<p>If you had asked me 10 years ago what I would be doing today, customer support or a career largely built on WordPress would not have been part of my answer.</p>
<p>But in all the little paths I&#8217;ve travelled that eventually got me here, what I&#8217;ve always been looking for was a place where I fit.</p>
<p>Since I first began writing a little daily blog in WordPress, to today working every day with this amazing team of incredibly skilled individuals, has been this comforting feeling that the world is right and my place in it correct.</p>
<p>The incredible thing about WordPress is the diversity of what you can pursue. WordPress is more than a blog, more than a website or online store.</p>
<p>WordPress is people coming together, sharing their own unique sets of skills and personalities to make something greater than could be achieved by any one person alone.</p>
<p>WordPress allows me to learn and grow as a person every day. It challenges me to think about problems from completely different perspectives as I work with individuals from around the world who share with me their experience and thoughts.</p>
<p>I doubt I would have a similar opportunity without WordPress; and really without each and every person who is using, extending and contributing to it. My gratitude for WordPress is really my gratitude for <strong>you</strong>, the person reading this story about my journey, because we are all helping support each others journey <strong>through</strong> WordPress.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/what-i-didnt-know-i-was-missing/\">WordPress, Where I Found What I Didn&#8217;t Know I Was Missing</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Erica Franz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"HeroPress: My Road to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1038\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://heropress.com/essays/my-road-to-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:17070:\"<img width=\"960\" height=\"480\" src=\"http://heropress.com/wp-content/uploads/2016/06/roadtowordpress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner: WordPress showed me that everything is possible is you invest enough time and effort.\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: My Road to WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=My%20Road%20to%20WordPress&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmy-road-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: My Road to WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fmy-road-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmy-road-to-wordpress%2F&title=My+Road+to+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: My Road to WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/my-road-to-wordpress/&media=http://heropress.com/wp-content/uploads/2016/06/roadtowordpress-150x150.jpg&description=My Road to WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: My Road to WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/my-road-to-wordpress/\" title=\"My Road to WordPress\"></a></div><p>What do you want to do for living? Depending on where you stand in life, this question can either be the most easiest or an incredibly tough one to answer. When you are ten or fifteen this question is exciting and it has the power to open a whole box of wishes and dreams that seem to just be waiting to be realized.</p>
<p>Well, with 25 and a university degree in civil engineering in my pocket, that was probably the most unpleasant question you could have asked me. This was not like I imagined it to be. The feeling was wrong. Instead of being eager to finally put the acquired knowledge into practice, I somehow felt like I&#8217;ve just spent the last 6 years of my life for nothing. There was zero enthusiasm in picturing me working in civil engineering field&#8230;not now&#8230;not ever.</p>
<h3>Life is perfect&#8230;well almost <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></h3>
<p>The year was 2009 and some big events are underway in my life. First, on April 4th I turned 25. OK, that doesn&#8217;t sound like much now, but for me, then, it surely was:). In May I got married to Marko. By the way, he is helping me write this and he won&#8217;t let me write epics about him, but otherwise I certainly would:). In June I finished my studies and in September I officially moved to Germany to live with my husband. Somehow, it still sounds strange when I say &#8220;my husband&#8221;, soo serious <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> .</p>
<p>When I recall these events now I can see what a great year that was. Still, there was this big question mark hanging above my head; what am I going to do for living? Beside having a major in a field I had no intention of pursuing a career, I now had another barrier&#8230; german language. If you&#8217;ve ever heard German talking you probably know it doesn&#8217;t sound like a piece of cake thing to learn:).</p>
<p>The first year in Germany I spent learning the language and working some part time jobs in restaurants, hotels and even giving dancing lessons. It was fun, new country, new language, new people. I even applied for a couple of jobs related to civil engineering, but luckily didn&#8217;t get them due to insufficient German knowledge.</p>
<h3>Why study something you don&#8217;t want to do?</h3>
<p>I guess this question might have crossed your mind at least once by now. To better describe the whole thing I need to give a bit more insight into my background and life prior to meeting Marko.</p>
<p>I was born in Kotor, Montenegro that was then a part of Yugoslavia. Kotor is a relaxed small town on the coast and in my memory it imprinted itself as a great place to be a child. Most people that heard of Kotor, probably visited it on board of one of one of the large cruising ships that stop there daily.</p>
<p>Unfortunately, in the beginning of 90&#8217;s terrible things started to happen all over Yugoslavia, the country started to fall apart and my family decided to move to Croatia that have just announced independence from Yugoslavia. We ended up on the small island Losinj, another tourist destination, where I lived with my parents until I was 18 and was time to go to college.</p>
<p>Although spending childhood in such beautiful small towns like Kotor and Losinj may seem like living in paradise for many people, there is always another side of the coin. For me that other side were missing options. It was like, there is a way how things work here and you have to get used to it. The sooner you forget about some unconventional ideas about your future the better <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> . And I&#8217;ve had a lot of those. I was interested in playing piano, dancing, design and so on. It was all acceptable as a hobby, but no one really considered those to be a serious occupation option.</p>
<p>Well, with time, I forgot about many of them as I tried to fit in and as a result I ended up studying civil engineering for the sole reason that it is, among maybe 3-4 other studies, traditionally considered &#8220;a good choice&#8221; in this country.</p>
<h3>Nothing without a support</h3>
<p>As people say, &#8220;better ever than never&#8221;. I don&#8217;t know and don&#8217;t want to know what my life would be like if I&#8217;ve forced myself to follow the path I had in front of me at that time, but I guess forcing yourself to do anything long term is receipt for failure.</p>
<blockquote><p>I figured out that &#8220;a good choice&#8221; doesn&#8217;t mean much if you&#8217;re not satisfied with it.</p></blockquote>
<p>It is a common saying that there are always alternatives, but sometimes it is really hard to see them. Especially if you live in an environment that doesn&#8217;t want or is afraid to see them. Moving to Germany to live with Marko changed my views and I started to open myself to new opportunities.</p>
<p>Although Marko originally comes from the same small island my family moved to in the 90&#8217;s, we first met in 2006 when he was already living in Germany. His way of thinking is quite unconventional by Croatian standards and although he also tried to ignore his own urges for some time, he dropped out of &#8220;a good choice&#8221; college just before the finish line and went to Germany to work as a musician.</p>
<p>He inspired me to rethink my options and supported me from the day one no matter what choice I make. All at once my choice was clear.</p>
<h3>Let&#8217;s Design</h3>
<p>I always wanted to do something creative and design was my wish for a long time although I&#8217;ve never done anything even remotely like it. Marko and I sat down, I told him what I&#8217;d want and he was like; great, take your time, start learning and sooner or later it will pay off.</p>
<p>So, I started browsing all over the net trying to find good sources that I can learn from. First I actually started creating logos, but very soon I was hooked on web design. I started learning HTML/CSS and even enrolled myself in the online based web design course that turned out to be a waste of time as the concepts that they taught were 10 years behind the times. However, persistence does pay off and within a year I was ready to try selling my first template.</p>
<p>Themeforest was an obvious choice, but the quality was not there yet. When I look at those first templates, they make me laugh, but you have to start somewhere:). Anyway, the templates got better, got accepted and I started to feel comfortable in what I was doing.</p>
<h3>WordPress all the way</h3>
<p>The year was 2012, I&#8217;ve had a couple of templates and a couple of small clients behind me, but with all these CMS solutions growing, HTML templates seemed like a dead end. In the meantime Marko and I decided to try to build a business selling only finished templates instead of developing custom websites for clients.</p>
<blockquote><p>Our goal was to build a business that is independent of the place of living.</p></blockquote>
<p>The way I got introduced to WordPress wasn&#8217;t very romantic and there is nothing really inspiring in that story. We were looking for a bigger market that could make our plan work and growing sales themes on Themeforest led us to one conclusion&#8230; WordPress.</p>
<p>I didn&#8217;t know anything about it and was quite reluctant to start learning it, but Marko can be quite stubborn:). He was like, &#8220;common it can&#8217;t be that hard&#8221;, although at that time he didn&#8217;t have any knowledge of it what so ever:) However, that kept me going and the more I learned about WordPress the more I liked the whole idea behind it.</p>
<h3>Community of like minded people</h3>
<p>From my very first steps with WordPress I was pleasantly surprised how helpful people in the WordPress community can be. Complete strangers were ready to take their precious time and help a beginner learn some basic concepts. This is something I&#8217;ve never experienced before and that is one of the greatest values of being a part of such a community.</p>
<p>In 2013 we launched our own site <a href=\"http://www.anarieldesign.com\">Anariel Design</a> where we offered our HTML template as well as the first theme or two. Here again complete strangers, that run a very popular site <a href=\"http://tympanus.net/codrops/\" target=\"_blank\">Codrops</a>, help us promote the site at the very beginning. In the meantime we got to know them in person so they are not strangers anymore :). Thank you Manoela and Pedro!</p>
<p>2014 was a turning point when, out of the blue, we got an email from <a href=\"https://twitter.com/philip_arthur\" target=\"_blank\"> Philip Arthur Moore</a> ( work for Automattic at the time ) asking if we&#8217;d like to sell our themes on WordPress.com. It was such honor for me to be invited. It was like an ultimate confirmation that I&#8217;m doing something right an that was finally something I actually enjoyed doing. Thank you Philip!</p>
<h3>When You Least Expect It</h3>
<p>2013 had its dark side as I was going through a series of panic attacks that seemed to start out of nothing. It was completely confusing as everything was going great in my life and then all of a sudden such a horror. I even ended up in a hospital for 2 days cause I felt as if I was having a heart attack so they kept me to do some tests.</p>
<p>Marko helped me analyze the situation and I discovered how much baggage I&#8217;ve been carrying around for a long long time. Things I&#8217;ve never talked about. Things I was ashamed or afraid of. Things I should have straighten out a long time ago, but didn&#8217;t. Opening up helped me a lot and it got better with time.</p>
<p>At the time the panic attacks started happening I got a gift, cute small teddy bear. It may sound funny or strange, but this teddy bear we named Bubi helped me calm down in my worst hours. Especially when Marko wasn&#8217;t at home. In the meantime Bubi became our lucky charm and he&#8217;s now with us where ever we go.</p>
<p><img class=\"aligncenter size-full wp-image-1042\" src=\"http://heropress.com/wp-content/uploads/2016/06/bubi.png\" alt=\"Small plush teddy bear on a stump wearing a Santa hat\" width=\"895\" height=\"360\" /></p>
<h3>A Glance at the Future</h3>
<p>The last two years were really a joyride. We achieved our goal of running a business that doesn&#8217;t tide us to a certain location. In 2014 Marko took a long needed break from music to learn WordPress and beside doing the business side of things he became an awesome support agent:).</p>
<p>We are now working from a home office or from where ever we find ourselves at the moment. We like to attend WordCamps whenever we can and meet new people. There are so many interesting stories as most of these people lead unconventional lives.</p>
<blockquote><p>No one knows what the future brings and how my life will be in a year or in five years.</p></blockquote>
<p>However, WordPress showed me that everything is possible if you invest enough time and effort. It helped me grow confidence in myself and in other people. That is something that no one can take away and that is what I&#8217;m most thankful for.</p>
<hr />
<h3>Thank you note</h3>
<p>With every project you, me or anyone else ever started there is always someone who knows something you don`t. Someone who can help you out when you get stuck, someone from whom you can always learn something new.<br />
So, in this last part i&#8217;d like to thank all the people that helped me on my way:</p>
<ul>
<li>First thanks Topher DeRosia for inviting me to write the essay and go out of my comfort zone <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f609.png\" alt=\"😉\" class=\"wp-smiley\" /></li>
<li>special thanks to Marko for all the help &amp; support, without you I wouldn&#8217;t manage all this</li>
<li>Big thanks to <a href=\"https://twitter.com/photomatt\" target=\"_blank\">Matt Mullenweg</a> &amp; <a href=\"https://twitter.com/mikelittlezed1\" target=\"_blank\">Mike Little</a> and to all that are contributing to WordPress</li>
<li><a href=\"https://twitter.com/philip_arthur\" target=\"_blank\"> Philip Arthur Moore</a> ( you are my &#8220;hero&#8221; <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f609.png\" alt=\"😉\" class=\"wp-smiley\" /> ), <a href=\"https://twitter.com/sixhours\" target=\"_blank\">Caroline Moore</a>, <a href=\"https://twitter.com/DavidAKennedy\" target=\"_blank\">David A. Kennedy</a>, Ola Laczek, <a href=\"https://twitter.com/mendezcode\" target=\"_blank\">Ernesto Méndez</a>, <a href=\"https://twitter.com/jacklenox\" target=\"_blank\">Jack Lenox</a>, <a href=\"https://twitter.com/karmatosed\" target=\"_blank\">Tammie Lister</a>, <a href=\"https://twitter.com/fklux\" target=\"_blank\">Fränk Klein</a> &amp; all Automatticians &#8211; I learned so much from you, thanks a bunch <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></li>
<li>Thanks to all volunteers and organizers of the WordCamps, you are doing a great job :). Special thanks to <a href=\"https://twitter.com/eblagonic\" target=\"_blank\">Emanuel Blagonic</a> &amp; all other Croatian organizers and volunteers for organizing amazing WordCamp Croatia ( next one is in September in Split: <a href=\"https://2016.split.wordcamp.org/\" target=\"_blank\">https://2016.split.wordcamp.org/</a> )</li>
<li>Big thanks to theme reviewers on WordPress.org, specially to <a href=\"https://twitter.com/joedolson\" target=\"_blank\">Joe Dolson</a> for the theme accessibility reviews, I learned a lot from you <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></li>
<li>Thanks to Manoela &amp; Pedro from <a href=\"http://tympanus.net/codrops/\" target=\"_blank\">Codrops</a></li>
<li>Big thanks to <a href=\"https://twitter.com/twsjonathan\" target=\"_blank\">Jonathan Atkinson</a> &amp; <a href=\"https://twitter.com/Smartik89\" target=\"_blank\">Andrei Surdu</a>, you advices helped a lot at the beginning <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></li>
<li>and thanks to all great people &amp; friends I met during my work &amp; WordCamps, so many beautiful &amp; inspiring people out there <img src=\"https://s.w.org/images/core/emoji/2/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></li>
</ul>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/my-road-to-wordpress/\">My Road to WordPress</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Ana Segota\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"HeroPress: The Making of a WordPress Journalist\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://heropress.com/essays/making-wordpress-journalist/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:17958:\"<img width=\"960\" height=\"522\" src=\"http://heropress.com/wp-content/uploads/2016/06/Maedah_Batool_Essay_HeroPress_2-1024x557.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Banner: So far I\'ve trained more than 700 women from almost every walk of life and about 80% of them are now earning a living with Wordpress\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Making of a WordPress Journalist\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Making%20of%20a%20WordPress%20Journalist&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-wordpress-journalist%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Making of a WordPress Journalist\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-wordpress-journalist%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fmaking-wordpress-journalist%2F&title=The+Making+of+a+WordPress+Journalist\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Making of a WordPress Journalist\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/making-wordpress-journalist/&media=http://heropress.com/wp-content/uploads/2016/06/Maedah_Batool_Essay_HeroPress_2-150x150.jpg&description=The Making of a WordPress Journalist\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Making of a WordPress Journalist\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/making-wordpress-journalist/\" title=\"The Making of a WordPress Journalist\"></a></div><p><em>I went from being an Electrical Engineer to a WordPress Journalist cum Researcher. I review products, provide WordPress support and handle technical documentations. Here’s my story.</em></p>
<p>October 27th, 2010 — The day my passion became my paycheck, and I was hopeful and excited about trying out something I always wanted to do i.e. to blog!</p>
<h2>The Backstory</h2>
<p>I was always a shy kid. But had a great inclination towards all the creative writing opportunities which were offered in the school. Be it contributing to the <i>school&#8217;s annual magazine</i> or joining the editorial team of the <i>Buzz</i> (the monthly newsletter), I always considered myself an amateur writer. I also remember how anxiously; I used to wait for the weekly edition of the US Magazine and used to pile up all its copies neatly in a big plastic folder bag. (I still have that big bundle stacked in my cupboard. <img src=\"https://s.w.org/images/core/emoji/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> )</p>
<p>Throughout my school, the laser focus on my career was to become a doctor and take up writing as a side profession. Even if I wanted to take writing as a full-time career at that time, my parents would not have allowed it (every parent wants their kids to be an engineer or a doctor — professions with less uncertainty).</p>
<p>So, I knew that just aiming to become a professional writer would only do more harm than good. Anywho, long story short, I ended up joining the Engineering field mostly because the profession ran in my blood. (Duh&#8230; my dad is an Engineer).</p>
<p>The general perception is that if you&#8217;re passionate about something, you&#8217;re more willing to take risks. But this wasn&#8217;t true for me. Honestly, I’m not a life-hacking kind of girl. Nor can I pretend to be one who has fully recovered from giving up on her passion. But somewhere in there I still wanted to write (as in professionally).</p>
<h3>The Hard Truth</h3>
<p>I was now on track to become an Electrical Engineer, which was not anywhere close to writing, except for that only <i>Communications Skills</i> course which included a few PPT presentations, technical writing and a 20-page report as a semester project. There was nothing creative about it since we were supposed to write like they write a research paper. There was more fuss about syntax than the content itself. It&#8217;s safe to assume that I didn&#8217;t enjoy <i>that</i> kind of writing.</p>
<h2>Stepping Forward Professionally</h2>
<p>Five years ago during my 4th semester at the university, I met an amazing team of entrepreneurs led by <a href=\"https://ahmadawais.com/\">Ahmad Awais</a>; it was a small team of passionate developers and bloggers. Better yet, they were looking to add one more resource to their team. I knew this was my chance to be a writer again.</p>
<p>For me, writing meant putting my voice out there and wanting it to matter even a tiny bit. After a few articles that I contributed, I was offered a part-time job, and I quickly jumped on it. I was like &#8220;Holly Smokes! It&#8217;s getting real&#8221;. I got started by writing on different niches like technology, design, food, fashion, hospitality, the web, etc.</p>
<blockquote><p>Re-living my passion once again induced new hope and rejuvenated me a lot.</p></blockquote>
<p>Whatever I wrote, came profoundly from my heart and this instinct made me believe I might have a chance to take a stab on writing once again. But writing for technology blogs wasn&#8217;t that simple as I had hoped.</p>
<h3>Defining Parts of a Copywriter</h3>
<p>Becoming a professional and sound copywriter is an intimidating struggle because there’s a lot of jargon. Unfortunately, you&#8217;re going to find some new mantra each time you browse this topic. So, I&#8217;m just writing what I found is necessary for one to become one such copywriter.</p>
<ul>
<li>Writing (of course!)</li>
<li>Code</li>
<li>Design</li>
</ul>
<p>One needs to know at least the basics of these three bullet points listed above. So, that was my goal. Mostly, because I worked with a team of developers and being an engineer, development was not a remote concept either. I knew that having basic design and development skills will only allow me to push beyond the limits of a normal copywriter.</p>
<h2>A Turning Point!</h2>
<p>Ahmad had always been a big fan of WordPress, and all three of our blogs were built with WordPress. The CMS was entirely new to me but when I gave it a spin found it surprisingly easy to learn. We had internal workshops about WordPress almost every other week. I made a point to sit through these workshops and even went through project RFP&#8217;s and init meetings. During the next semesters, I had fallen for two things, writing and yes, you guessed it, WordPress.</p>
<p>Now the biggest challenge for me was to pace things up as quickly as possible so that by the time I graduate, I don&#8217;t end up working in a Grid Station in a remote area. (I mean no offense to the Electrical Engineers out there. But it wasn&#8217;t the thing for me.)</p>
<p>I started getting a firm grip over WordPress. I kicked off with video tutorials from Lynda and then started reading authentic web resources like <a href=\"http://www.wpbeginner.com/\">WPBeginner</a>, <a href=\"http://wptavern.com/\">WP Tavern</a>, etc. After toying around with the basic setup and configurations, the next step was to face my biggest fear i.e. coding.</p>
<p>Did I mention that initially I knew very little of code?</p>
<h3>Encountering the Gap</h3>
<p>My first real interaction with the code was via C Programming in the first semester and believe me it was a deeply rooted bizarre.</p>
<blockquote><p>I found the fact <strong><i>development jobs “are for men”</i></strong> ridiculous and therefore, continued to focus on progressing my career.</p></blockquote>
<p>This was only possible if I would learn how to code.</p>
<p>I learned HTML5 followed by CSS3 and then jumped to high-level programming languages like PHP and JavaScript. And guess what&#8230; just after six months of coding, things started to make sense. I began with teeny tiny modifications of simple HTML templates and worked through the complex frameworks like Redux and Titan. I think this was because I was more focused on speed than I was on building a solid understanding of what I was doing.</p>
<h3>It Isn&#8217;t Enough</h3>
<p>With time, I started noticing an encouraging shift in my life. I knew I was up to something. My next step was to evolve with the local community and hence, I started attending design conferences and workshops. Why design? Because this would fulfill my third component to become a professional copywriter and it let me interact with people around me. Images play a vital role in making your content appealing, and a basic knowledge of Photoshop would be sufficient to achieve my goal.</p>
<p>My next step eventually hit the brick wall, and I started speaking at workshops too. I assisted the leading speakers at most of the workshops which made me gain experience that proved its worth just some time later.</p>
<h2>Be The Change</h2>
<p>By the time I graduated, I was leading the team of bloggers and had expanded my team to about 15 people. Believe me; it feels great to be working on what I want and when I want! Delegating to a team of emerging writers was an achievement itself. Obviously, it’s not an easy thing, but I enjoyed every single bit of it.</p>
<p>At that time, we thought of starting a new company focused on teaching people all things web. That also meant selling our blogging network. So, we have begun prepping for that and by the end of the year, we had have sold almost 80% of our blogs.</p>
<h2>The Startup — FinkTanks</h2>
<p>By now, I&#8217;ve realized that the only person who can get in the way of your career progress is <i>YOU</i>. One has to keep moving forward regardless of what you’re up against. The work you do may not bring drastic and immediate results, but your efforts will not go to waste. And I knew that the career path which I&#8217;ve opted for can directly impact the future of our next generation of women.</p>
<p>So, it just hit me that I should teach others how I did it, not much of a success story, but at least I could spread the word. Then I came up with the idea of a startup with my team. FinkTanks — as we called it was launched in 2013 and then again in 2014. I searched for my target audience and the perfect fit for this venture were the young girls just like me — fresh graduate looking to learn a few extra skill.</p>
<h3>When Women Engineer&#8230;</h3>
<p>I surveyed a little and realized that a number of females were interested in working from home (mostly coz it is easier, flexible and no transportation mess). There could not be a better choice for them other than blogging &amp; copywriting. I mean you don’t have to go for a job you just need to work hard wherever you are. All you need is a laptop and an uninterrupted internet connection which fortunately is available to almost all of us. So this was my biggest inspiration and hence I got started.</p>

<a href=\"http://heropress.com/essays/making-wordpress-journalist/13436098_10207765500470328_2048167471_n/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/06/13436098_10207765500470328_2048167471_n-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Small theatre-style classroom filled with women\" /></a>
<a href=\"http://heropress.com/essays/making-wordpress-journalist/13444387_10207765496750235_2139752860_n/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/06/13444387_10207765496750235_2139752860_n-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Small theatre-style classroom filled with women\" /></a>
<a href=\"http://heropress.com/essays/making-wordpress-journalist/13459626_10207765480509829_61196780_n/\"><img width=\"150\" height=\"150\" src=\"http://heropress.com/wp-content/uploads/2016/06/13459626_10207765480509829_61196780_n-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"4 men and three women holding up award certificates.\" /></a>

<p>I conducted training sessions on a monthly basis where I taught how to be a blogger and how to be self-employed. I taught all the essential components which a blogger needs to know starting from WordPress to design, code, and of course copywriting.</p>
<blockquote><p>So far, I&#8217;ve trained more than 700 women from almost every walk of life, and about 80% of them are now earning a living with WordPress.</p></blockquote>
<h2>WordPress is my new gluten</h2>
<p>All this was only possible because of WordPress. Had I not started early on with this open source script I had never been able to positively affect so many lives. WordPress had started to change my life.</p>
<p>When I started publishing content with WordPress, I knew little about its technical insights but gradually became aware of it. I started as a 360 writer who could pen down her thoughts on any niche, but soon I realized that<strong><i> instead of doing something of everything, I should learn everything of something</i></strong>. And that everything was WordPress.</p>
<p>Yes! WordPress is my new gluten and since 2013, this open source script has become a life-changing experience for me. I think that my passion for writing is the best fit to convey my thoughts and opinions on WordPress. Currently, I’m a part of <a href=\"http://wptie.com/\">WPTie</a> and working as the Creative Director.</p>
<h3>A Competitive Advantage</h3>
<p>My day to day routine involves reading about WordPress (and boy I read a lot of it), slacking through WP Slack, improving documentation of our products, providing WordPress support and blogging about WordPress. I also try listening to the popular podcasts. I follow folks like <a href=\"https://twitter.com/chrislema\">Chris Lema</a>, <a href=\"https://twitter.com/tommcfarlin\">Tom McFarlin</a>, and <a href=\"https://twitter.com/learnwithmattc\">Matt Cromwell</a>. Recently, I&#8217;ve also started a new venture with Ahmad Awais, i.e. a blog about stuff that couples well with WordPress <a href=\"http://wpcouple.com/\">WPCouple.com</a>.</p>
<p>Working at WPTie has been amazing. It has provided me with an excellent opportunity to work with a talented lot of the community ranging from beginners all the way up to professional developers, bloggers, designers, and WordPress core contributors, etc. So, interacting with like-minded people who are heading towards the same career goals as me is fascinating.</p>
<h2>All Set To Grow as a WordPress Journalist</h2>
<p>I have turned my life around from being an Electrical Eng. to becoming a WordPress Journalist. By now, I have reviewed several plugins, themes, and frameworks, and now I&#8217;m heading towards a big goal. My team and I are working on a brand new online content agency through which we can offer copywriting services to the WordPress community.</p>
<p>One of my goals has to never be just a copywriter, and that&#8217;s what I am up to. I write on complex WordPress topics which help me experiment and learn how to develop with WordPress while following the coding standards set by the community.</p>
<blockquote><p>If you think my story has a lot of WordPress in it, then you cannot be more right.</p></blockquote>
<p>I believe that sharing more than 26% of the web; WordPress has empowered many ordinary people.  I also find myself gearing for the same queue. My prime focus will be towards reviewing WordPress products as they are here to stay for sure. Likewise, I&#8217;m also brainstorming about my content agency.</p>
<p>With that said, I am planning to enter the services market, and one of my huge inspirations and motivations have been <a href=\"https://twitter.com/jenniferbourn\">Jennifer Bourn</a>. I truly admire the way she is maintaining a perfect blend of both personal and professional life. Because there always exists a big <strong><i>either</i></strong> for most of the women when it comes to choosing a professional career versus being a traditional housewife. Likewise, I&#8217;m planning to attend WordCamps next year and looking forward to meeting her.</p>
<p>I’ll conclude by stating the obvious ~ It&#8217;s hard to write about yourself. I don&#8217;t call myself a hero, hell I am no hero. On the contrary I am embarking on a journey to be better at what I do, and I cannot wait to see what is in store for me. Right now I&#8217;m happy and satisfied with what I do, I am surrounded by great people trying to accomplish great things and not many people can say that about their career. That&#8217;s because of WordPress and the community around it. So, Thank You, WordPress!</p>
<p>Thanks for reading! I&#8217;d love to hear back from you. You can reach out to me on <a href=\"https://twitter.com/MaedahBatool\">Twitter</a> or at my personal <a href=\"https://maedahbatool.com/\">blog</a>.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/making-wordpress-journalist/\">The Making of a WordPress Journalist</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Maedah Batool\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"HeroPress: You Really Have No Excuse\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1011\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"http://heropress.com/essays/really-no-excuse/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11696:\"<img width=\"600\" height=\"600\" src=\"http://heropress.com/wp-content/uploads/2016/06/vlad_olaru_pixelgrade.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Vlad Olaru\" /><div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: You Really Have No Excuse\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=You%20Really%20Have%20No%20Excuse&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Freally-no-excuse%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: You Really Have No Excuse\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Freally-no-excuse%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Freally-no-excuse%2F&title=You+Really+Have+No+Excuse\" rel=\"nofollow\" target=\"_blank\" title=\"Share: You Really Have No Excuse\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/really-no-excuse/&media=http://heropress.com/wp-content/uploads/2016/06/vlad_olaru_pixelgrade-150x150.jpg&description=You Really Have No Excuse\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: You Really Have No Excuse\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/really-no-excuse/\" title=\"You Really Have No Excuse\"></a></div><p>Topher really dropped it on me with this article. There I was happily mumbling away about philosophy and life lessons (with regards to our experience at PixelGrade) when he said: “<em>I’d love a message from you to other Romanians about what a business around WordPress can do for them</em>”. I kept on mumbling anyway (it’s a thing I am really good at <img src=\"https://s.w.org/images/core/emoji/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> ). “<em>Sure, I can do that!</em>”</p>
<p>But when it came to writing my “message”, damn. Talk about brain freeze. Should I write about this or that? Does this really relate to Romanians or it’s just something general? Are Romanians different in this respect? We have good coders here… but boy how lame we are when it comes to… There is talent here but… And on and on it went — procrastination 101.</p>
<p>I just couldn’t put my finger on it. I needed a solid reason. Something worthwhile. Something that I could get behind as being useful to others (Romanians included) from a new point of view (at least for me).</p>
<p>But you know what? I am going to mumble away about what I think kept us alive and kicking all these years and what is keeping others from joining the fun. WordPress, with it’s <em>capital_P_dangit()</em>, is an important part of it. Consider it an open letter to the Romanian community (and others in a similar situation), worthy of HeroPress, but most importantly helpful to some of you.</p>
<h3>Where do I start?</h3>
<p>You start from yourself. The rest will come later, with time. Right now all you have is you: you the wannabe coder, designer, marketer, what have you.</p>
<p>Just like me and my brother George. When we’ve started, we were just two kids (he was really a kid in highschool; I was in university — but age doesn’t show on me <img src=\"https://s.w.org/images/core/emoji/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> ) wanting to do something NOW. Not tomorrow, not when we finished our formal education, not when the opportunity presented itself to us. NOW! This sense of urgency is important to seed early on and hang on to it.</p>
<p>We knew some HTML, CSS, coding on my part (but not PHP), and that was pretty much it. No business experience, no mentors, no friends that were already doing this, no internet acquaintances that would give us some work to start from. Just us, a computer and the internet (that is, Romania’s internet speed — lucky us).</p>
<p>So where to start? From the obvious place, of course. Freelancing marketplaces. After some looking around, we’ve settled for vWorker.com (mainly because it seemed more upper class than the likes of freelancer.com — it got bought by the latter in the meantime). We started with very small gigs and worked our way (in a couple of years) to larger projects.</p>
<p>This is the point where we were forcibly introduced to WordPress. At first small customizations for themes, then the classic by now PSD-to-WP. We were getting the hang of it and loving it. We were honing our skills, making more money than most around us (it pays to have low living standards), and making a good name for ourselves.</p>
<p>So stop making excuses and start doing something. Keep at it and good things will happen, with time.</p>
<h3>But I want to be the Michelangelo of coders…</h3>
<p>Oh please! I know you want to be the best you can be, that you think learning that extra technique will make you even greater, that exploring that extra framework will widen your possibilities. No it won’t. It will only postpone the day when you actually do something and put it to the test of actual people. I know, it scares the shit out of you. It surely did scare us.</p>
<p>But that is the only way you will truly learn. You will hone your skills, but more importantly, you will learn what you actually need to know to get something done. That extra framework that you know will only drag you down. When faced with a problem you will have a hard time attacking it because you know so many “wonderful” ways it could be done. You will try to code for the sake of code.</p>
<p>Trust me. You don’t really want to be Michelangelo (I think neither did he). You want to be happy and satisfied with your end results. This is where WordPress comes into play once again.</p>
<p>It’s code base is not beautiful by any current standard. It’s not cutting edge, it’s not very “automagical”, part of it is truly out-dated, the templating is cumbersome bordering ancient in today’s landscape. You know it, I know it, and everybody else with some coding experience knows it. So what? Is it stopping you from crafting a sweet design and letting your customers enjoy it? Far from it.</p>
<blockquote><p>Stop agonizing about what it can’t do for your coder ego, and focus on what it can do for your life and your customers.</p></blockquote>
<p>Praise the internet gods for having such a low barrier of entry, for the gargantuan community, for the endless snippets of code laying around just ripe for copy-pasting. But above all else, thank each contributor that it hasn’t given up on “the user comes first”. It means your customers will also come first. What a great partner to have when starting out.</p>
<p>And don’t worry, you will get plenty of opportunities to focus on crafting clever code in your themes and/or plugins. Just not at the scale of Google. But then again, you are not Google. It’s healthy to keep a firm footing in reality.</p>
<h3>It sounds complicated, and I don’t have the resources</h3>
<p>Are you committed to this or not? Good! Then stop for a moment and think. Do you have to build everything yourself? Do you have to learn everything? How could you cut some corners without anyone noticing?</p>
<p>Welcome to the WordPress way (it could very well be the open-source way). The ones before you have literally put millions and millions worth of work on the table (that is dollars, not lei) for anyone to grab and use. You know CSS but not much PHP? Great, grab a starter theme. Or better yet, grab any free theme and hack it to your heart’s desire. And then sell it. Weird right?</p>
<p>You envision your design with some fancy (aka complicated) functionality? I am sure there is a WordPress plugin out there that does pretty much that. Recommended it, offer styling for it and you are good to go — bootstrapping 101.</p>
<p>One day, when you will afford it (and if really really makes sense), you can build your own bespoke solutions. But they better be damn good, ‘cuz otherwise few will notice the change.</p>
<p>When we build a new theme, we purposely try to match the design specs with what is available on WP.org or as a paid add-on to a certain “master” plugin (like WooCommerce). This way we make sure we leave enough time/resources on the table for the things we are really good at: fine tuning the front-end, ensuring a smooth customization experience on the back-end, crafting the copy to help make the complex less so, and so on. Even with 11 strong as we are today, we wouldn’t be able to get at those without leveraging open-source.</p>
<p>As you can see, the entire WordPress ecosystem is built on a can-do attitude. It’s fun being part of it. Don’t forget to give something back from time to time.</p>
<h3>The WordPress “stain” will never wash</h3>
<p>Sadly I still hear about this among developers. And I am sure it can be quite the deterrent for newcomers. I mean you don’t want to hang out with the wrong kind of people right from the start. You’ve got big, long term plans for you life. You could almost envision yourself interviewing for your dream job and being laughed upon for stating WordPress as your experience. It must suck, big time.</p>
<p>Unless… you realize early on that you simply want to be happy, and that no convoluted line of code will make you happy. Come to think of it, you could create your own dream job.</p>
<blockquote><p>Choose your own team mates. Forge your own values.</p></blockquote>
<p>Maybe even a huge WordPress logo outside the office (just to spite the non-believers — or that’s what WordCamps are for?).</p>
<p>The PixelGrade crew is filled with sinners from all walks of life. We bathe daily in less-than-perfect code, we shamelessly copy-paste code from StackOverflow (with proper attribution of course), we kick browser-compatibility’s butt with !importants… I should really stop. We are actually serious people — sort of.</p>
<p>Anyway, if you’ve peeked inside the WordPress world and you truly feel it would hold you back, despite all the advantages, leave right ahead. But don’t avoid it just because of misconceptions. You may be missing out.</p>
<hr class=\"ttfmake-hr\" />
<p>I could go on mumbling for a long time (it’s a thing I am really good at :) — remember?). Better leave the rest for another time.</p>
<p>Now, you Romanian (or less so) WordPress enthusiasts (or less so), do let me know your thoughts about the above.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/really-no-excuse/\">You Really Have No Excuse</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Vlad Olaru\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"HeroPress: How WordPress Taught Me To Be a Better Developer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://heropress.com/?post_type=heropress-essays&p=1001\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://heropress.com/essays/wordpress-taught-better-developer/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9239:\"<div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How WordPress Taught Me To Be a Better Developer\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20WordPress%20Taught%20Me%20To%20Be%20a%20Better%20Developer&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-taught-better-developer%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How WordPress Taught Me To Be a Better Developer\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-taught-better-developer%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-taught-better-developer%2F&title=How+WordPress+Taught+Me+To+Be+a+Better+Developer\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How WordPress Taught Me To Be a Better Developer\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/wordpress-taught-better-developer/&media=http://heropress.com/wp-content/uploads/2016/06/ed_heropress_article_banner-150x150.jpg&description=How WordPress Taught Me To Be a Better Developer\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How WordPress Taught Me To Be a Better Developer\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/wordpress-taught-better-developer/\" title=\"How WordPress Taught Me To Be a Better Developer\"></a><input type=\"hidden\" name=\"rts_id\" class=\"rts_id\" value=\"1001\" /><input type=\"hidden\" id=\"rts_media_nonce\" name=\"rts_media_nonce\" value=\"0de9308744\" /><input type=\"hidden\" name=\"_wp_http_referer\" value=\"/feed/\" /></div><p>I might seem like a curious choice to write a post at HeroPress. I haven&#8217;t done any WP dev since around 2.0. I&#8217;ve done some work here and there setting up a couple WP installs since, but it&#8217;s been years since I was on a first-name basis with the code of WP.</p>
<p>After having written some fairly complex plugins, I was pretty cynical about it. Generally I felt that it was a pretty solid front-end, but the codebase was a mess. It may still be a mess, I dunno. I do remember being super disappointed that WP didn&#8217;t go all-in with PHP5 when it stabilized, like some other CMSes. I also spent a fair bit of time criticizing what I felt were technical shortcomings or the codebase. A quick glance at the current codebase tells me it hasn&#8217;t changed much in it&#8217;s approach, and were I to judge the project just based on it&#8217;s codebase, I&#8217;d say it was… problematic.</p>
<p>I was at <a href=\"https://gist.github.com/funkatron/php%7Ctek%202013\">php|tek 2013</a>, and <a href=\"http://tek13.phparch.com/speakers/#nacin\">one of the keynotes</a> was by <a href=\"https://nacin.com/\">Andrew Nacin</a>. Andrew knew he was speaking to a room filled with a lot of folks who felt like I did &#8212; that WordPress was somehow an <em>embarassment</em> to PHP because it wasn&#8217;t following current best practices. Some people took this quite personally, and spent a lot of time on Twitter during his keynote expressing disagreement with his assertions.</p>
<p>I, however, found myself in wholesale agreement with Andrew. From the talk description:</p>
<blockquote><p>Why is [WordPress] so ubiquitous? The answer lies … in a core philosophy that holds the user above all else.</p></blockquote>
<p>The WordPress lead developers weren&#8217;t stupid, contrary to what so many people thought in that room. They just put the concerns of users over developers.</p>
<p>The purpose of the project is to <strong>empower users</strong></p>
<p>The purpose is <em>not</em> to make developers&#8217; lives easier.</p>
<p>That meant making hard choices about living with legacy code, and being very, very careful about breaking backwards compatibility. Several of Andrew&#8217;s slides showed how utilizing newer PHP libraries or extensions would make it impossible for hundreds of thousands &#8212; sometimes <em>millions</em> &#8212; of WP users to run it on their current hosting provider. API changes due to major code refactors would break popular plugins that users rely on, and likely splinter the WP add-on developer community beyond recognition.</p>
<p>&#8220;Fixing&#8221; WordPress would in fact make it useless to many, if not most, of the users.</p>
<p>Ultimately I believe that this is the correct approach. The purpose of creating software, web or otherwise is to <strong>empower people to do things that they&#8217;d otherwise find more difficult or impossible</strong>.</p>
<p>Web technologies are building blocks. We use them to build solutions to people&#8217;s problems. The point is not the thing we make, nor is the point how we make it. <strong>The point is to help the user</strong>.</p>
<p>Have we given them more time to do other things by making a task take less time?</p>
<p>Have we given them access to information they didn&#8217;t have before?</p>
<p>Have we empowered them to create something they could not?</p>
<p>Have we given them a voice they didn&#8217;t possess until now?</p>
<p>Those are the kinds of questions we have to ask. Anything that we choose to do must be in the service of those questions.</p>
<p><a href=\"https://gist.github.com/funkatron/harperreed.com\">Harper Reed</a> described technology as <strong>a <em>force multiplier</em></strong>, and I think it&#8217;s important to consider it in that respect. The intent is the matter of the user; <strong>the things we create take the user&#8217;s intent and amplify it</strong>.</p>
<blockquote><p>This is key to really being great at what we do &#8212; we empathize with the user, understand their intent, and create something to amplify their intent.</p></blockquote>
<p>Sometimes they need a bit of help applying their intent in the most effective ways, but <strong>our technology and technique choices can only serve that intent</strong>. The work I&#8217;ve done in the past few years hasn&#8217;t led me to use WordPress, but that doesn&#8217;t mean it&#8217;s not a very powerful, very useful tool for many people.</p>
<p>The philosophy of the project continues to guide my thinking as a developer, a speaker at tech conferences, a school board member, and an advocate for mental wellness. In all of these, I have to find the intent, such as allowing a business owner to communicate more easily to customers, or to help others have satisfying careers, or to educate kids in the most effective way possible, or to help others who struggle with mental illness get the help they need.</p>
<p>Then I have to find what I am able to do that serves that intent. Sometimes it means making a web-based tool. Sometimes it means practicing my technique to be a better speaker. Sometimes it means writing a letter to a frustrated parent. Sometimes it means pushing myself to do things I&#8217;m afraid to do, because it will make a big difference for people who are hurting, and are to afraid to ask for help.</p>
<p><img class=\"alignnone size-full wp-image-1002\" src=\"http://heropress.com/wp-content/uploads/2016/05/osmi.png\" alt=\"Banner for OSMI, Open Sourcing Mental Illness\" width=\"1024\" height=\"583\" /></p>
<p>Ultimately what I find most satisfying in life is not the particular actions I&#8217;ve chosen, but <strong>the impact they have upon the people around me</strong>.</p>
<p><a href=\"http://j.mp/osmikalxvideo\">When I spoke</a> at the <a href=\"http://kalamazoox.org/\">Kalamazoo X conference</a> this spring, I was tasked by the organizers to come up with a <a href=\"https://www.amazon.com/All-Changed-Instant-Six-Word-Memoirs-ebook/dp/B003100UQ0\">six-word memoir</a>. It was an exercise that made me reflect on where I&#8217;ve been, where I hope I&#8217;m going, and how I want to be remembered. This is what I came up with:</p>
<p>&#8220;By helping others, I save myself.&#8221;</p>
<p>That&#8217;s what WordPress taught me.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/wordpress-taught-better-developer/\">How WordPress Taught Me To Be a Better Developer</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Ed Finkler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"HeroPress: Growing Through WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://heropress.com/?post_type=heropress-essays&p=996\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://heropress.com/essays/growing-through-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6853:\"<div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Growing Through WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Growing%20Through%20WordPress&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-through-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Growing Through WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-through-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-through-wordpress%2F&title=Growing+Through+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Growing Through WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/growing-through-wordpress/&media=http://heropress.com/wp-content/uploads/2016/05/sam_najian-150x150.jpg&description=Growing Through WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Growing Through WordPress\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/growing-through-wordpress/\" title=\"Growing Through WordPress\"></a><input type=\"hidden\" name=\"rts_id\" class=\"rts_id\" value=\"996\" /><input type=\"hidden\" id=\"rts_media_nonce\" name=\"rts_media_nonce\" value=\"3ee123df18\" /><input type=\"hidden\" name=\"_wp_http_referer\" value=\"/feed/\" /></div><p>Having coded on visual studio for quite a while an older fellow of mine got me more interested in web and developing for web by saying &#8220;developing for a desktop is not as fun and as challenging as developing for web, things can get very boring soon on desktop, on web you have more problems to solve and more things to learn&#8221; This was all enough to get me interested in programming for web. With a bit of Yahooing ( googling was not really common or even known back then) I learned about the simplest ui factors of web, CSS and HTML, so thought CSS is the first thing I would like to learn. You know I love colors, colors are attractive after all, specially compared to all the skeleton looking HTML which was never fun enough for me to learn about its font and color attributes.</p>
<p>CSS and the appetite to learn more got me to this lovely blog of Chris Coyier, namely<a href=\"http://css-tricks.com\"> css-tricks.com</a>. Man you could find a lot in there and most interesting was the videos he did to teach new stuff every week or so. There was this <a href=\"https://css-tricks.com/video-screencasts/1-converting-a-photoshop-mockup-part-1-of-3/\">converting photoshop mockup</a> videos and <a href=\"https://css-tricks.com/video-screencasts/25-designing-for-wordpress-part-one/\">designing for WordPress</a> videos by him that brought me in touch with WordPress. Promise you won’t laugh and I will reveal a secret; before watching these WordPress templating video I was always mistaking WordPress logo for of that of <a href=\"http://www.volkswagen.de/de.html\">Volkswagen</a>, and was always really confused about the sentences on<a href=\"http://wordpress.org\"> wordpress.org</a> homepage and how they could relate to Volkswagen. Add to this my bad English, yea my English was even worse than what you see now in those days.</p>
<p>I was already making some little money developing in vb, but the exposure to WordPress brought an even more fun and well in demand skill-to-be to my plate. I was learning more and more about WordPress here and there, getting a few clients to create some kind of online catalogues for them while trying to bring a CMS out of this blogging platform. Back then without all the fancy custom post types and custom taxonomies and all the rest that came with them was not an easy thing to treat WordPress as a CMS.</p>
<h3>Expanding to the web</h3>
<p>WordPress was great company for the situation of those days. I was a freshman university student with very little computer science education, almost no money to buy extracurricular courses but very eager to be independent and learn things on my own with the help of not-so-fast internet of those days. jQuery was just around as well and I was making JavaScript more fun and easy. Remember, JavaScript demand of those days was hardly anything other than manipulating the DOM, so the ease and fun of WordPress and the life-saver jQuery was empowering me to get clients and make them happy. Honestly I learned WordPress before even learning PHP, HTML, CSS, a bit of jQuery and some knowledge about WordPress was just enough for me to create websites, mostly in the online-catalogue realm.</p>
<p>In those days Joomla and Drupal were much more advanced than WordPress since WordPress hadn’t added the more advanced features we have today.</p>
<blockquote><p>So as I was learning more about WordPress, Web, and PHP, WordPress was getting bigger and more advanced.</p></blockquote>
<p>Perfect timing right? It was small when I had little knowledge but was getting bigger and more advanced while I was educating myself more about WordPress.</p>
<p>How WordPress makes things easy keeps me using it and developing for it even after  good experience with a couple of other PHP and JavaScript frameworks.  This is why after developing with some other PHP frameworks I was thrilled to receive an email from <a href=\"https://premium.wpmudev.org/\">WPMUDEV</a> telling me about their job vacancy for WordPress plugin developer, so I applied for this position with them and was lucky enough to get back to work with this lovely and fun tool after a while being away from it.</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/growing-through-wordpress/\">Growing Through WordPress</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Sam Najian\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"HeroPress: Groomed for Real Estate, Destined for Something Else . . .\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://heropress.com/?post_type=heropress-essays&p=987\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://heropress.com/essays/groomed-real-estate-destined-something-else/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7787:\"<div class=\"rtsocial-container rtsocial-container-align-left rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Groomed for Real Estate, Destined for Something Else . . .\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Groomed%20for%20Real%20Estate%2C%20Destined%20for%20Something%20Else%20.%20.%20.&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgroomed-real-estate-destined-something-else%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-twitter-count\"></span></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Groomed for Real Estate, Destined for Something Else . . .\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fgroomed-real-estate-destined-something-else%2F\" rel=\"nofollow\" target=\"_blank\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-fb-count\"></span></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgroomed-real-estate-destined-something-else%2F&title=Groomed+for+Real+Estate%2C+Destined+for+Something+Else+.+.+.\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Groomed for Real Estate, Destined for Something Else . . .\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-linkedin-count\"></span></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/groomed-real-estate-destined-something-else/&media=http://heropress.com/wp-content/uploads/2016/05/nicole_osburn-150x150.jpg&description=Groomed for Real Estate, Destined for Something Else . . .\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Groomed for Real Estate, Destined for Something Else . . .\"></a></div><div class=\"rtsocial-horizontal-count\"><div class=\"rtsocial-horizontal-notch\"></div><span class=\"rtsocial-pinterest-count\"></span></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"http://heropress.com/essays/groomed-real-estate-destined-something-else/\" title=\"Groomed for Real Estate, Destined for Something Else . . .\"></a><input type=\"hidden\" name=\"rts_id\" class=\"rts_id\" value=\"987\" /><input type=\"hidden\" id=\"rts_media_nonce\" name=\"rts_media_nonce\" value=\"ba53090d47\" /><input type=\"hidden\" name=\"_wp_http_referer\" value=\"/feed/\" /></div><p>While other kids played with beanie babies I was hawking mine on eBay. I was always enamored with business and marketing. My family had a successful real estate business and at a young age I knew I wanted to go into business. I realized the importance of online marketing early on with my beanie baby business. Heck, I made two thousand dollars selling beanie babies when I was 13. I was not making that kind of money when I set up booths at collector shows. It’s all about the E-Commerce, baby!</p>
<h3>Bubble burst</h3>
<p>When I was 19, I obtained my real estate license. College was never really in my “life” plan. My plan was to work for the family business, in real estate.</p>
<p>Unfortunately for me, I became a real estate agent in 2007. As you recall, the real estate market crashed in 2008 and it crashed hard. This is when I realized I had to change my career path because of the economy. I was heartbroken that I had to start over. Little did I know this was a blessing in disguise.</p>
<h3>Diversification</h3>
<p>Fast forward to my college years. -Oh boy!</p>
<p><img class=\"alignright size-full wp-image-988\" src=\"http://heropress.com/wp-content/uploads/2016/05/Selection_431.png\" alt=\"Logo for 33.3\" width=\"201\" height=\"100\" />With an entrepreneurship spirit, a few of my friends and I joined forces to make the best t-shirt company ever. Our business model was flawless, well at least that’s what we had thought. The name of our company was 33.3 (I know, how cliché). We had a developer, graphic designer and a marketing/sales person.</p>
<p>While our developer used Dreamweaver, this was the first time I understood the importance of web development. Watching Diggnation and conjuring up our next business scheme, I began to understand more about development, different kinds of files, and the difference between serif and sans serif (everything I now take for granted). The t-shirt business failed <img src=\"https://s.w.org/images/core/emoji/72x72/1f641.png\" alt=\"🙁\" class=\"wp-smiley\" /> but the lessons it taught me were priceless. This was the first time I knew I had to be a part of the web development process.</p>
<h3>Back at it again</h3>
<p>My family stumbled upon some land that was a great investment. It was a “no-brainer” to purchase because the price was too good to pass up. My sister and I decided it was time to learn how the building industry works. Trinity Home Builders emerged where I spent the next four years developing our marketing strategy and web presence.</p>
<p>After working with three different web developers, I was still not happy with the end result of our website. So, I became obsessed with web development. After the website was in a good place, I was no longer content at Trinity. The CRM and PPC campaigns were on autopilot. Purchasing lumber and dealing with draw sheets was not my forte. I separated myself from Trinity and went back to school to finish the remaining two classes I needed to graduate in Marketing.</p>
<h3>HTML &amp; CSS 101</h3>
<p>Last summer I spend two nights a week learning the fundamentals of web development. I obtained a social media certificate after completing that course.</p>
<p>During the course, we were assigned the task of developing a WordPress website. I finally had my “ah-ha” moment &#8211; now everything I was trying to do for so long made sense.</p>
<p>Now, just because I can create a site on WordPress, this does not mean I’m a developer. It’s the organic SEO, GA, GSC, social media, and all other inbound marketing that drives me.</p>
<p>After a combination of my HTML class and WordCamp sessions, WordPress became my CMS of choice and I never looked back.</p>
<h3>WordCamp</h3>
<p>I was fortunate to be able to volunteer the first year I attended WordCamp Milwaukee. It was the beginning of my initiation into the WordCamp community. I met many talented individuals during the sessions, volunteering, snagging swag and at the social events. These individuals were not just acquaintances I met in passing, but they became friends and invaluable resources. It was and continues to be a wonderful experience.</p>
<p>During last year’s WordCamp at the speaker/sponsor after party, I had the privilege of meeting Topher. I shared my story with him and told him how WordPress had impacted my life for the better. He told me about HeroPress. He asked me if I would be interested in writing an essay about my WordPress journey thus far. And, here I am.</p>
<p>Currently, I work for Tuna Traffic as a Digital Marketing Technologist, and every day I am learning something new. I’m excited to see where my WordPress journey takes me next!</p>
<p>The post <a rel=\"nofollow\" href=\"http://heropress.com/essays/groomed-real-estate-destined-something-else/\">Groomed for Real Estate, Destined for Something Else . . .</a> appeared first on <a rel=\"nofollow\" href=\"http://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jul 2016 20:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Nicole Osburn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: WordPress to Bump Recommended PHP Version From 5.6 to 7.0 By The Middle of 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=58030\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/wordpress-to-bump-recommended-php-version-from-5-6-to-7-0-by-the-middle-of-2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5703:\"<p>Over the years, WordPress has been developed so that users and site owners don&#8217;t need to have a lot of technical knowledge to install and maintain it. Andrey Savchenko believes that WordPress is <a href=\"https://www.rarst.net/wordpress/technical-responsibility/\">causing technical irresponsibility</a> due to site owners not having to know technical details like which PHP version their site is running.</p>
<blockquote><p>Is not knowing good for you as a site owner?</p>
<p>Few good things ever happened by accident and ignorance.</p>
<p>Running your own site takes learning and effort. It is admirable of WordPress to make that easier. It is self–serving and insincere of it to pretend you don’t have to know anything.</p>
<p>You <strong>have to know</strong>. You <strong>are responsible</strong>.</p></blockquote>
<p>The post generated a healthy <a href=\"https://twitter.com/Rarst/status/755084068207861760\">discussion on Twitter</a> that included Matt Mullenweg.</p>
<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/perezbox\">@perezbox</a> <a href=\"https://twitter.com/Rarst\">@Rarst</a> shallow article: straw man assumptions and arguments, poor understanding of hosting ecosystem, faux controversial ending.</p>
<p>&mdash; Matt Mullenweg (@photomatt) <a href=\"https://twitter.com/photomatt/status/755204070789394432\">July 19, 2016</a></p></blockquote>
<p></p>
<p>Although it&#8217;s not happening at break neck speeds, there is an effort underway to increase WordPress&#8217; recommended PHP version from 5.6 to 7.</p>
<p>In September of 2015, Aaron Jorbin <a href=\"https://make.wordpress.org/core/2015/09/10/wordpress-and-php7/\">published a post</a> on the Make WordPress Core blog that explains what was accomplished in order for WordPress to officially support PHP 7. In the comments of the post, <a href=\"https://make.wordpress.org/core/2015/09/10/wordpress-and-php7/#comment-27688\">Rahul286 suggests</a> that a warning be displayed that informs users they&#8217;re using an outdated version of PHP.</p>
<p>Samuel &#8216;Otto&#8217; Wood <a href=\"https://make.wordpress.org/core/2015/09/10/wordpress-and-php7/#comment-27699\">succinctly explains</a> why a notice wouldn&#8217;t do any good.</p>
<blockquote><p>A notice by itself is massively pointless to show the end user, who likely neither knows nor cares how their hosting service runs.</p>
<p>However, it might be worth considering trying to detect the host in question, and providing valuable information for that specific host, such as links and other methods the end user can do to update themselves. Many hosts have a choice, somewhere, and if we know that, we can provide guidance.</p></blockquote>
<p>Unlike WordPress&#8217; <a href=\"https://premium.wpmudev.org/blog/wordpress-3-2-browse-happy-or-browse-crappy/\">Browse Happy notifications added in WordPress 3.2</a> that notifies users to update their browser, it appears WordPress is unlikely to perform a similar role with PHP versions.</p>
<p>Jorbin <a href=\"https://make.wordpress.org/core/2015/09/10/wordpress-and-php7/#comment-27670\">also commented</a> on the article suggesting that developers reach out to their local user groups and inform users why they need to care about which version of PHP their site is using.</p>
<blockquote><p>One thing everyone can do to help move these numbers is to talk to your local user group about why they need to care about the PHP version they run. Show them how they can upgrade, show them benchmarks of PHP 7 vs. earlier versions (especially vs 5.2).</p></blockquote>
<p>Three months ago, Jorbin created a <a href=\"https://core.trac.wordpress.org/ticket/36484\">trac ticket</a> with the suggestion that the PHP requirement for WordPress be increased from 5.6 to 7. Although many of the commenters agree with the move, Gary Pendergast <a href=\"https://core.trac.wordpress.org/ticket/36484#comment:8\">says</a> it&#8217;s best to wait. Dominik Schilling, WordPress 4.6 release lead, <a href=\"https://core.trac.wordpress.org/ticket/36484#comment:11\">agrees</a>.</p>
<blockquote><p>Given that we have until the end of the year before we <em>have</em> to bump it, there&#8217;s no harm in holding off until major plugins are confirmed to work without notices or warnings. Until we can confirm that, I&#8217;m -1 on bumping the version for now.</p>
<p>This is remembering that we&#8217;re talking about the <em>recommended</em> PHP version. The recommended version should be providing an ideal experience for folks, we shouldn&#8217;t be bumping to a bigger number just because it&#8217;s there.</p>
<p>Given the PHP 5.6 support timeline, we&#8217;ll be bumping it by WordPress 4.8 at the latest, so it&#8217;d be nice to use those intervening months to ensure the UX for the wider WordPress ecosystem under PHP 7 is solid.</p></blockquote>
<p>Major plugins like the <a href=\"https://core.trac.wordpress.org/ticket/36281\">WordPress Importer</a> are not yet compatible with PHP 7. Developers are highly encouraged to use the time before PHP 5.6 reaches <a href=\"http://php.net/supported-versions.php\">end of life</a> to thoroughly test their plugins and themes for PHP 7 compatibility.</p>
<p>Mullenweg has <a href=\"https://make.wordpress.org/core/2015/09/10/wordpress-and-php7/#comment-27668\">made it clear</a> that he will not use WordPress&#8217; marketshare to force webhosting companies to upgrade to PHP 7 but rely on established relationships instead. In order to move the needle and get site owners to know and care about PHP versions, it&#8217;s going to take a continuous effort on the part of the WordPress community to educate them.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 23 Jul 2016 00:42:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: BuddyPress 2.8 Will Bump Minimum PHP Requirement to 5.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57943\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/buddypress-2-8-will-bump-minimum-php-requirement-to-5-3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3951:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png?ssl=1\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png?resize=839%2C398&ssl=1\" alt=\"buddypress-logo-blue\" class=\"aligncenter size-full wp-image-30655\" /></a></p>
<p>BuddyPress lead developers have decided to bump the minimum PHP requirement for version 2.8 of the plugin to 5.3+. The <a href=\"https://codex.buddypress.org/getting-started/php-version-support/\" target=\"_blank\">new guidelines for BuddyPress&#8217; PHP version support</a>, authored by Boone Gorges on behalf of the team, states that the plugin will offer full support for <a href=\"http://php.net/supported-versions.php\" target=\"_blank\">all stable versions of PHP officially supported by the PHP project</a> (currently, 5.6.x and 7.0.x). Gorges outlined what &#8220;full support&#8221; means:</p>
<ul>
<li>BuddyPress should run error-free (ie, without fatal errors or PHP notices) on the PHP version.</li>
<li>If a new version of BP includes a feature that requires a more recent version of PHP, the feature should be gracefully disabled on earlier PHP versions.</li>
<li>The PHP version will be included in the plugin&#8217;s <a href=\"https://travis-ci.org/buddypress/BuddyPress/\" target=\"_blank\">automated testing build matrix</a>.</li>
</ul>
<p>The BP leadership team agreed that the project will provide basic support for legacy versions of PHP &#8220;until the cost-benefit ratio for supporting a given version suggests that it should be dropped.&#8221; That is the case with 5.2, which is currently in use on 7.6% of WordPress sites. Gorges acquired additional statistics from WordPress.org that indicate only 3.23% of BuddyPress sites are running on PHP 5.2:</p>
<p><code>Unknown - 1.08%<br />
5.2     - 3.23%<br />
5.3     - 12.92%<br />
5.4     - 34.44%<br />
5.5     - 22.38%<br />
5.6     - 23.02%<br />
7.0     - 2.92%</code></p>
<p>Another factor in the team&#8217;s decision is the project&#8217;s recent <a href=\"https://wptavern.com/buddypress-2-7-development-kicks-off-project-shifts-focus-to-developers-and-site-builders\" target=\"_blank\">shift in focus towards developers and site builders</a>, prioritizing building out the BuddyPress REST API.</p>
<p>&#8220;Coupled with these numbers is the recognition that PHP 5.3 introduced features that have a meaningful effect on our ability to write a modern PHP application: namespaces, closures, guaranteed access to SPL, late static binding, and so on,&#8221; Gorges said. &#8220;As BuddyPress aims to build a major new feature – a REST API – it frees us up significantly to be able to take advantage of these and other features unavailable in PHP 5.2.&#8221;</p>
<p>Gorges also explained why BuddyPress isn&#8217;t bumping the minimum version all the way up to 5.6, which is the oldest version for which the PHP project is still issuing security updates. With roughly three quarters of BuddyPress sites running on PHP versions 5.5 or older, a major jump to 5.6 would break the majority of sites using the plugin.</p>
<p>&#8220;For many (most?) people running BuddyPress, updating PHP is emphatically not a simple task,&#8221; Gorges said. &#8220;As such, we would simply lose these users, or cause them to stay on old and unsupported versions of BuddyPress. We support WordPress’ ongoing, progressive efforts to work with webhosts to move sites off of old versions of PHP.&#8221;</p>
<p>These changes will go into effect as of BuddyPress 2.8. In the meantime, contributors are working on <a href=\"https://buddypress.trac.wordpress.org/ticket/7195\" target=\"_blank\">adding a notice</a> when activating BuddyPress on a site that doesn&#8217;t meet system requirements as well as <a href=\"https://buddypress.trac.wordpress.org/ticket/7196\" target=\"_blank\">preventing the plugin from being updated</a> when minimum requirements are not met.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Jul 2016 18:56:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WPTavern: Stack Overflow Documentation is Now in Beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57906\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/stack-overflow-documentation-is-now-in-beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4516:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/stack-overflow.png?ssl=1\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/stack-overflow.png?resize=1025%2C401&ssl=1\" alt=\"stack-overflow\" class=\"aligncenter size-full wp-image-57913\" /></a></p>
<p>Building on the success of its Q&amp;A communities, Stack Overflow <a href=\"http://blog.stackoverflow.com/2016/07/introducing-stack-overflow-documentation-beta/\" target=\"_blank\">announced</a> that its new <a href=\"http://stackoverflow.com/tour/documentation\" target=\"_blank\">Documentation</a> product is now in beta. For the past eight years, the site has rewarded expert advice by floating high quality answers to the top and allowing users to earn reputation points. This formula has turned out to be more successful than traditional forums where it&#8217;s often difficult, if not impossible, to discern the quality of answers provided to questions.</p>
<p>Stack Overflow Documentation is curated by the community and focuses on providing code examples for developers. It offers versioning, collaborative authoring, and voting, which helps surface the best contributions. The documentation segment of the site has a new set of reputation badges and is open to contribution and feedback from anyone.</p>
<p>&#8220;Documentation gives a home to a lot of this good content that has been turned away, or very hard to &#8216;get right&#8217; in the Q&amp;A format. Namely, the canonical, general reference, instructional content,&#8221; Stack Overflow developer Kevin Montrose said in the announcement.</p>
<p>&#8220;It&#8217;s need-driven and self-healing,&#8221; Montrose said. &#8220;The best, most diligent technical writer out there still can&#8217;t beat thousands of actual users trying to learn a function or concept while writing real code. They&#8217;ll determine what topics or examples are needed most. And whenever something fails to explain something clearly, they can ask for it to be improved.&#8221;</p>
<p>The <a href=\"http://wordpress.stackexchange.com/\" target=\"_blank\">WordPress Stack Exchange</a> is a thriving community and a <a href=\"http://stackoverflow.com/documentation/wordpress\" target=\"_blank\">WordPress documentation tag</a> is already active on Stack Overflow with 10 topics, 12 topic requests, and 13 proposed. A sampling of topics so far include the Loop, registering custom post types, making network requests with HTTP API, and enqueuing scripts.</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/wordpress-documentation-stack-overflow.png?ssl=1\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/07/wordpress-documentation-stack-overflow.png?resize=1025%2C696&ssl=1\" alt=\"wordpress-documentation-stack-overflow\" class=\"aligncenter size-full wp-image-57915\" /></a></p>
<p>It would take many months, if not years, for the Stack Overflow WordPress Documentation to even come close to the quantity of official documentation on WordPress.org, but the site has the potential to become a valuable alternative resource. The fact that anyone can jump in and contribute using an existing Stack Overflow account makes the barrier to entry very low.</p>
<p>&#8220;From my experience with WP docs over years there is a significant issue with people using code snippets over and over again, while they become long outdated,&#8221; said Andrey Savchenko, a longtime WordPress Stack Exchange contributor and moderator.</p>
<p>&#8220;However, my first impression is that Documentation is considerably harder to use than the Q&amp;A sites,&#8221; he said. &#8220;It will take some time to see if it will be easier to contribute to than say Codex and Devhub, as well as if it manages to gather a community of WP experts to consistently participate.&#8221;</p>
<p>For whatever reason, many developers are not fond of writing documentation, especially when it comes to documenting products that are not their own. Stack Overflow&#8217;s Documentation beta will show whether recognition in the form of badges and reputation can attract people who otherwise wouldn&#8217;t be inclined to contribute to documentation.</p>
<p>If Stack Overflow can motivate developers to write documentation with the same success as the Q&amp;A sites, the company may potentially <a href=\"http://disq.us/p/1a8c0kf\" target=\"_blank\">explore adding this feature to its Enterprise version</a>, which is built to support private instances of 500 or more users.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Jul 2016 16:57:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WPTavern: WPCampus Survey Results Indicate Misconceptions of WordPress Are Slowing its Growth in Higher Education\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=57793&preview_id=57793\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"https://wptavern.com/wpcampus-survey-results-indicate-misconceptions-of-wordpress-are-slowing-its-growth-in-higher-education\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3611:\"<p>Before the first inaugural <a href=\"https://wpcampus.org/\">WPCampus</a> took place last weekend, the organizing team <a href=\"https://wptavern.com/help-wpcampus-gather-data-on-how-schools-and-campuses-use-wordpress\">conducted a survey</a> to learn how WordPress is used in higher education. A total of 486 people responded to the survey. Modern Tribe has not only made the <a href=\"http://bit.ly/WPCampusStudy\">survey results available to the public</a>, they have also published <a href=\"http://tri.be/blog/wpcampus-survey-wordpress-trends-in-education/\">an in-depth</a> review of the data.</p>
<p>There are a couple of items that stand out to me. Misconceptions that have plagued WordPress for years are affecting people&#8217;s decision to use it.</p>
<p>For instance, 18% of respondents said scalability is a barrier to being accepted at their school. Meanwhile, 37% of respondents said that WordPress&#8217; reputation of being <em>just a blogging platform</em> hindered its ability to be the platform of choice.</p>
<p>The <a href=\"https://wordpress.org/showcase/\">WordPress showcase</a> is filled with sites both large and small that prove WordPress&#8217; scalability. It&#8217;s also filled with sites that show WordPress is used for far more than blogging.</p>
<p>As WordPress continues to evolve from being a blogging platform to something capable of doing much more, it&#8217;s disappointing that this misconception still exists. Is there any hope that people can discover and realize that blogging is something WordPress is great at, but at its core, provides people the ability to go above and beyond?</p>
<p>Another fascinating part of the survey is the security aspect where 42% of respondents reported that they do not have a list of vetted plugins for their network. In addition, 13% of respondents said their networks are not running the latest version of WordPress.</p>
<p>How survey questions are asked can be the difference between receiving actionable or unusable data. ModernTribe acknowledges that the questions in future versions of the survey can be worded better to increase the accuracy of data.</p>
<blockquote><p>If you take a look at the multi-part question we used to help qualify the institutions represented in the survey, you’ll that it could have been written much better. Since the main part of the question was mandatory, the survey also made the subsection where you could input your URL mandatory as well.</p>
<p>Other areas we can improve include better categorization for multiple-choice questions, including an option for &#8216;n/a&#8217; or &#8216;I don’t know&#8217; in more questions, and fewer write-in responses.</p></blockquote>
<p>If you&#8217;re interested in reviewing the survey results, you can access them via <a href=\"http://bit.ly/WPCampusStudy\">this spreadsheet</a> on Google Docs.</p>
<p>For those that didn&#8217;t get a chance to attend WPCampus in person or watch it live, I highly encourage you to read <a href=\"http://davidbisset.com/wpcampus-review/\">this review</a> from David Bisset, who has organized a number of large WordPress conferences. There&#8217;s also <a href=\"https://calderawp.com/2016/07/wpcampus-2016-recap/\">this review</a> by Josh Pollock of CalderaWP. Last but not least, Adam Warner <a href=\"https://wpdistrict.sitelock.com/blog/wp-campus-a-wordpress-event-focused-on-higher-education/\">shares his experience</a> on the SiteLock blog.</p>
<p>What do you think of the WPCampus survey results? Is there any data that surprises you? Let us know in the comments.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jul 2016 23:56:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 242 – Interview with Eric Meyer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=57789&preview_id=57789\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-242-interview-with-eric-meyer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2812:\"<p>In this episode of WordPress Weekly, <a href=\"http://marcuscouch.com/\">Marcus Couch</a> and I are joined by <a href=\"http://meyerweb.com/\">Eric Meyer</a>. Meyer is an American web design consultant and author. He is best known for his advocacy work on behalf of<a href=\"https://en.wikipedia.org/wiki/Web_standards\"> web standards</a>, most notably<a href=\"https://en.wikipedia.org/wiki/Cascading_Style_Sheets\"> Cascading Style Sheets</a> (CSS), which is a technique for managing how<a href=\"https://en.wikipedia.org/wiki/HTML\"> HTML</a> is displayed.</p>
<p>We start off the show by discussing the technology of the 70s and 80s and how Meyer got involved with the CSS language. We then go in-depth on a number of topics covered in his WordCamp Northeast Ohio keynote presentation on <a href=\"http://wordpress.tv/2016/06/24/eric-a-meyer-design-for-real-life/\">Designing for Real Life</a>. Near the end of the interview, we find out what the state of CSS is and some of the key developments to keep an eye on.</p>
<h2>Stories Discussed:</h2>
<p><a href=\"https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/\">WordPress 4.6 Beta 4</a><br />
<a href=\"http://wordpress.tv/2016/06/24/eric-a-meyer-design-for-real-life/\">Eric Meyer &#8211; Designing for Real Life</a></p>
<h2>Plugins Picked By Marcus:</h2>
<p><a href=\"https://wordpress.org/plugins/byconsole-woo-order-delivery-time/\">WooCommerce Order Delivery or Pickup with Date and Time </a>is a plugin that allows customers to choose a desired delivery/pickup date and time for WooCommerce&#8217;s orders through a frontend widget. You can control number of days required to place an order, delivery hours to choose from, and the pickup hours available.</p>
<p><a href=\"https://wordpress.org/plugins/haremo-social-screenshots/\">HAREMO Social Screenshots </a>creates screenshots of Posts and Pages and uses the screen grabs as thumbnail images when the URL is shared on Facebook or Twitter.</p>
<p><a href=\"https://wordpress.org/plugins/cf7-messenger/\">Cf7 Messenger </a>works with Contact Form 7 and immediately sends submissions to Facebook Messenger.</p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, August 3rd 9:30 P.M. Eastern</p>
<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"https://wptavern.com/feed/podcast\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\">Click here to subscribe</a></p>
<p><strong>Listen To Episode #242:</strong><br />
</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jul 2016 20:42:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"WPTavern: Ford Foundation Publishes Non-Technical White Paper on Open Source Software and the Challenges of Sustaining Digital Infrastructure\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57765\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:152:\"https://wptavern.com/ford-foundation-publishes-non-technical-white-paper-on-open-source-software-and-the-challenges-of-sustaining-digital-infrastructure\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6254:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/roads.jpg?ssl=1\"><img src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/roads.jpg?resize=960%2C564&ssl=1\" alt=\"photo credit: Khara Woods\" class=\"size-full wp-image-57770\" /></a>photo credit: <a href=\"https://stocksnap.io/photo/476JX1HAUX\">Khara Woods</a>
<p>Last week the Ford Foundation <a href=\"http://www.fordfoundation.org/library/reports-and-studies/roads-and-bridges-the-unseen-labor-behind-our-digital-infrastructure/\" target=\"_blank\">published a white paper</a> titled &#8220;Roads and Bridges: The Unseen Labor Behind Our Digital Infrastructure.&#8221; The foundation, established in 1936 by Edsel Ford, president of the Ford Motor Company, is currently working to challenge inequality and advance human welfare. This new document in the foundation&#8217;s library, written by Nadia Eghbal, addresses the challenges of sustaining our digital infrastructure:</p>
<blockquote><p>Everybody relies on shared code to write software, including Fortune 500 companies, government, major software companies and startups. In a world driven by technology, we are putting increased demand on those who maintain our digital infrastructure. Yet because these communities are not highly visible, the rest of the world has been slow to notice.</p>
<p>Just like physical infrastructure, digital infrastructure needs regular upkeep and maintenance. But financial support for digital infrastructure is much harder to come by.</p></blockquote>
<p>Eghbal, an amateur software developer who previously worked in venture capital, drew from her experience using open source code when preparing the 143-page report. She also interviewed many leaders and contributors in various open source software communities.</p>
<p>&#8220;After I left my job in venture capital last year, I set off to explore the paradox I couldn’t stop thinking about: that there were valuable software tools that couldn’t be supported by commercial models, and that they lacked any form of institutional support,&#8221; she said.</p>
<p>The unique thing about this extraordinary contribution from the Ford Foundation is that Eghbal wrote the document to help consumers and companies understand the toll open source software takes on its contributors and offers strategies for how they can be supportive of the world&#8217;s shared digital infrastructure. It bridges a critical gap in understanding between the open source software development community and the people who use the software every day.</p>
<p>&#8220;Most of us take opening a software application for granted, the way we take turning on the lights for granted,&#8221; Eghbal said. &#8220;We don’t think about the human capital necessary to make that happen.&#8221;</p>
<p>Eghbal compares the physical infrastructure of the transportation industry to that of the digital world. She contends that the decentralized nature of digital infrastructure makes it more difficult to maintain as a public good. Since the progress is driven by citizens working together, and not by any official governing body, it requires consumers and companies to be supportive of how software communities work if we hope to achieve long-term sustainability of the open source projects we depend on.</p>
<p>Eghbal introduces consumers to common ways that open source projects find financial support but also highlights how many widely used projects can fall through the cracks. The document opens with the example of OpenSSL and the Heartbleed vulnerability which was exposed in 2014.</p>
<p>&#8220;A 2015 study by the Federal University of Minas Gerais in Brazil looked at 133 of the most actively used projects hosted on GitHub, across programming languages, and found that 64%, or nearly two-thirds, relied upon just one or two developers to survive,&#8221; Eghbal said. &#8220;Although there may be a long tail of casual or infrequent contributors, for many projects, the major responsibilities of project management fall on just a few people.&#8221;</p>
<p>In offering a brief history of open source software, Eghbal cites WordPress as a prime example (on page 34) of software that is flexible to customize thanks to the freedom its creators gave the project when licensing it under the GPL. Nevertheless, our community shares many of the struggles identified in the document, as maintainers of some of our most important development tools often cannot find financial support that will enable them to keep working on these projects.</p>
<p>The white paper covers many important topics that help non-technical consumers understand the critical need to support the creators of our digital infrastructure. A few example chapters include:</p>
<ul>
<li>How not charging for software transformed society</li>
<li>Why digital infrastructure support problems are accelerating</li>
<li>Open source’s complicated relationship with money</li>
<li>Business models for digital infrastructure</li>
<li>Institutional efforts to support digital infrastructure</li>
</ul>
<p>Eghbal advocates treating digital infrastructure as a necessary public good and working with existing software communities. She calls for a more holistic approach to project support, beyond just code and money.</p>
<p>Many of the topics in this white paper are completely new ideas for software consumers but Eghbal&#8217;s explanations make them easy for anyone to understand. She includes basic explanations for software terms like frameworks, libraries, and languages, and explains why certain types of open source projects have a more difficult time finding a means of financial support.</p>
<p>I highly recommend reading this document, whether you are an open source project maintainer, a company decision maker who contracts software development, or a consumer. The white paper doesn&#8217;t just explore the challenges but also offers constructive ways that people of all walks of life can work together to support our digital infrastructure. You can <a href=\"http://www.fordfoundation.org/library/reports-and-studies/roads-and-bridges-the-unseen-labor-behind-our-digital-infrastructure/\" target=\"_blank\">download the PDF</a> for free from the Ford Foundation.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Jul 2016 20:11:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: Downtime Expected for Some WP Engine Customers as Linode Patches A Critical Security Vulnerability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=57724&preview_id=57724\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wptavern.com/downtime-expected-for-some-wp-engine-customers-as-linode-patches-a-critical-security-vulnerability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2128:\"<p>WP Engine customers on legacy Xen Linode host servers are being notified via email and the <a href=\"https://wpenginestatus.com/cloud-security-maintenance-may-cause-downtime/\">company&#8217;s status blog</a> about impending downtime between July 21st and July 25th. According to an email forwarded to the Tavern from a WP Engine customer, Linode&#8217;s <a href=\"https://status.linode.com/incidents/dgzvdyqttr9f\">legacy Xen host servers</a> contain a critical security vulnerability.</p>
<blockquote><p>We are contacting you today regarding an upcoming emergency security maintenance being performed at one of our cloud infrastructure providers. The majority of cloud infrastructure providers across the world will be conducting maintenance due to this situation.</p></blockquote>
<p>The details of the vulnerability <a href=\"http://xenbits.xen.org/xsa/\">are embargoed</a> until July 26th giving Linode a limited amount of time to patch its systems. According to Linode, the company has no control over the disclosure date.</p>
<p>WP Engine expects the maintenance procedure to be conducted at some point on July 23rd. Downtime could last anywhere from 20-40 minutes during the migration.</p>
<p>This isn&#8217;t the first time both companies have been in the news due to security issues. Earlier this year, <a href=\"https://wptavern.com/linode-confirms-data-security-breach-that-matches-recent-wp-engine-attack\">Linode confirmed</a> that it experienced a data breach which resulted in resetting all of its customer&#8217;s passwords. The data breach was similar to one experienced by WP Engine where an attacker bypassed multiple layers of security to gain access to an administrative panel.</p>
<p>Linode is encouraging customers using its legacy Xen servers outside of hosting providers to <a href=\"https://www.linode.com/docs/uptime/reboot-survival-guide\">review the following document</a> to prepare for the reboot. WP Engine customers affected by this issue are encouraged to check the <a href=\"http://wpenginestatus.com\">company&#8217;s status blog</a> for further updates.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jul 2016 22:48:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: 18 WordPress Plugins Updated Due to Summer of Pwnage Findings, 40+ Vulnerabilities Still in Reporting Stage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57668\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://wptavern.com/18-wordpress-plugins-updated-due-to-summer-of-pwnage-findings-40-vulnerabilities-still-in-reporting-stage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3211:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/summer-of-pwnage.png?ssl=1\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/summer-of-pwnage.png?resize=1025%2C390&ssl=1\" alt=\"summer-of-pwnage\" class=\"aligncenter size-full wp-image-57671\" /></a></p>
<p><a href=\"https://sumofpwn.nl/\" target=\"_blank\">Summer of Pwnage</a>, a Dutch community program for anyone interested in software security, is focusing on WordPress for its current open source security bug hunting event. The community program hosts meetups and workshops on the weekend where anyone from &#8220;enthusiastic beginners to the 1337est hackers&#8221; is welcome to share findings and demonstrate skills and exploits.</p>
<p>The goal of the community event is to contribute to the security of widely used open source software projects and participants are strongly encouraged to responsibly disclose vulnerabilities to the authors of the original code. WordPress and its thousands of plugins are the target for this month, which organizers call &#8220;a bug hunter&#8217;s paradise.&#8221;</p>
<p>Summer of Pwnage <a href=\"https://sumofpwn.nl/advisories.html\" target=\"_blank\">July 2016 findings</a> includes dozens of vulnerabilities discovered in popular WordPress plugins. So far, 18 vulnerabilities have been fixed by the plugin authors and more than 40 others are currently in the reporting stage.</p>
<p>This week Ninja Forms, which has more than 600,000 active installs, issued <a href=\"https://wordpress.org/plugins/ninja-forms/changelog/\" target=\"_blank\">a security release</a> that fixed multiple Cross-Site Scripting (XSS) vulnerabilities discovered by Summer of Pwnage participants. The bug hunters also discovered a XSS vulnerability in WooCommerce (active on over a million installs), which was subsequently <a href=\"https://woocommerce.wordpress.com/2016/07/19/woocommerce-2-6-3-fixsecurity-release-notes/\" target=\"_blank\">patched</a>.</p>
<p>Security updates are also available for other popular plugins as the result of the program&#8217;s efforts, including Paid Memberships Pro, WP Fastest Cache, Easy Forms for MailChimp, and others. The list of reported vulnerabilities includes links to describe each and is being updated frequently, as WordPress plugin authors release patches to their plugins.</p>
<p>Summer of Pwnage is hosted at <a href=\"https://www.securify.nl/\" target=\"_blank\">Securify</a>, a software security company. Organizers provide users with VMs and set them loose hunting bugs. The focus of the event is sharing knowledge and teaching others and has been highly beneficial to the WordPress community so far.</p>
<p>With WordPress plugin vulnerabilities so plentiful, even within the top professionally supported plugins, it would be great to see a niche conference or virtual event focused on security with a contributor day. WordPress needs more guardians spread across the community that can specialize in contributing back in this way. Educational events like Summer of Pwnage demonstrate how successful this kind of event can be for hunting down serious vulnerabilities in the software that millions of people use every day.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jul 2016 21:38:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: Human Made is Giving Away Two Full Scholarships to A Week of REST Conference\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57650\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/human-made-is-giving-away-two-full-scholarships-to-a-week-of-rest-conference\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1349:\"<p><a href=\"https://aweekofrest.hm/\">A Week of REST</a>, a four-day conference devoted to the WordPress REST API that takes place September 4-9 in Darwin Lake, Matlock in the United Kingdom, <a href=\"https://hmn.md/2016/07/20/announcing-two-full-scholarships-a-week-of-rest-for-students-and-under-represented-groups-in-the-tech-industry/\">has announced</a> it is offering two full scholarships for students and under-represented groups in the tech industry.</p>
<p>“The WordPress REST API is transforming how people use WordPress, opening it up to new technologies and communities. We want to enable people from under-represented groups in technology to develop the skills they need to use the REST API and further their career,” said Siobhan McKeown, Events Director at Human Made.</p>
<p>The scholarships are worth £1500, and include all of the workshops, training, accommodation, meals, and transfer to Derby or Matlock station. To qualify for the scholarships, you must be employed or looking for work in the field of web development or design.</p>
<p>Those interested in applying have until July 29th, Midnight CET, to <a href=\"https://aweekofrest.hm/page/scholarship-tickets\">submit an application</a>. Applicants will receive an email by August 5th with details on who received a scholarship.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jul 2016 20:40:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WP-CLI GUI: An Interface to Speed Up WordPress Installation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57554\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/wp-cli-gui-an-interface-to-speed-up-wordpress-installation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2563:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/wp-cli-gui.png?ssl=1\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/wp-cli-gui.png?resize=1025%2C400&ssl=1\" alt=\"wp-cli-gui\" class=\"aligncenter size-full wp-image-57658\" /></a></p>
<p><a href=\"https://wpcligui.com/\" target=\"_blank\">WP-CLI GUI</a> is a new tool from WordPress developer <a href=\"http://timbrugman.com/\" target=\"_blank\">Tim Brugman</a>, created to speed up the creation of new WordPress sites when using <a href=\"http://wp-cli.org/\" target=\"_blank\">WP-CLI</a>. The tool captures the details required to configure the database, site info, admin user, and password. It outputs one long command that WP-CLI users can copy and paste.</p>
<p>At first it might seem counterintuitive &#8211; if you use the command line to manage WordPress, why would you want to add an extra interface to your workflow? Brugman explained the problem that led him to create WP-CLI GUI:</p>
<p>&#8220;I heard about WP-CLI and gave it a shot,&#8221; he said. &#8220;I thought it was very neat for managing your sites but a bit of a hassle for new installs. Because installing WP with the CLI is a sequence of commands, if you don&#8217;t concatenate them, you have wait for each to end. It&#8217;s especially annoying because the first, downloading WP, takes the longest.&#8221;</p>
<p>If you concatenate all of the commands into one giant command with all of the installation variables, the risk of typos increases to where you need to copy and paste.</p>
<p>&#8220;Once I started copy pasting, I figured I might as well automate that with JavaScript,&#8221; Brugman said. &#8220;That became the ridiculous GUI for the CLI.&#8221;</p>
<p>Brugman plans to expand with options for removing Akismet and Hello Dolly and is considering adding a list of optional plugins to install.</p>
<p>&#8220;Depending on the number of plugins you &#8216;always&#8217; use, could save some more time,&#8221; he said. &#8220;Tasks beyond the installation I haven&#8217;t yet looked at. Requests are welcome.&#8221;</p>
<p><a href=\"https://wpcligui.com/\" target=\"_blank\">WP-CLI GUI</a> is supported by <a href=\"https://toscani.nl/\" target=\"_blank\">Toscani</a>, a web development company. Brugman and his colleagues there use the tool to speed up installation of new WordPress sites. He said the tool is ideally suited for developers who often create new WordPress sites and are comfortable with the command line but don&#8217;t use WP-CLI at every opportunity.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Jul 2016 16:55:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"WPTavern: John James Jacoby Publishes 35 Part Tweetstorm on WordPress Leadership, Community, and Economics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=57643\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"https://wptavern.com/john-james-jacoby-publishes-35-part-tweetstorm-on-wordpress-leadership-community-and-economics\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6722:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2014/11/jjj.jpg?ssl=1\"><img class=\"alignright wp-image-33407 size-medium\" src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2014/11/jjj.jpg?resize=300%2C145&ssl=1\" alt=\"jjj\" /></a><a href=\"http://jjj.me/\">John James Jacoby</a>, lead developer of bbPress and BuddyPress, published a <a href=\"https://twitter.com/JJJ/status/755490645976940544\">35 part tweetstorm</a> sharing his thoughts on leadership in the WordPress project, the community, and the WordPress economy. A tweetstorm is a series of tweets linked together in chronological order around a particular topic.</p>
<p>There are a number of useful nuggets of wisdom in his tweets that I think can benefit from more exposure to a wider segment of the WordPress community outside of Twitter. It&#8217;s a snapshot of one individual&#8217;s eight year plus journey in trying to create a sustainable business using WordPress. With Jacoby&#8217;s permission, I&#8217;ve republished his tweetstorm into a blog post to make it easier to read and digest.</p>
<hr />
<p>No exacting leadership hierarchy provides the perception of opportunity for anyone to step-up. This is actually really important. Having<a href=\"https://twitter.com/photomatt\"> @photomatt</a> (Matt Mullenweg) be the BDFL (Benevolent Dictator For Life) means we always have a safety net, to help the community be true-north during times of unrest.</p>
<p>Don&#8217;t forget that<a href=\"https://twitter.com/photomatt\"> @photomatt</a> purposely has made monumental gestures to remove himself and<a href=\"https://twitter.com/automattic\"> @automattic</a> as a WordPress dependency. It&#8217;s up to the 99% of us that aren&#8217;t<a href=\"https://twitter.com/photomatt\"> @photomatt</a> to learn from what he&#8217;s accomplished, and find the ways to invest that he hasn&#8217;t yet.</p>
<p>Core, Plugins, Themes, etc… none of this in WordPress is easy or directly profitable. It&#8217;s all a very long gamble to sustainability. Some WordPress companies/agencies have long-term investment strategies outside of employee retention/satisfaction. Again, it&#8217;s a long game.</p>
<p>Ultimately, WordPress needs more than<a href=\"https://twitter.com/automattic\"> @Automattic</a>&#8216;s bank-roll to help empower the next generation of awesome plugins/themes as products. Some people in the WordPress community that have labeled me: Hot-Lava: Do Not Touch – that makes me sad, because I don&#8217;t feel that way.</p>
<p>People will choose to stonewall professional progress because of misperception. Biases exist all around the WordPress community. Some of the most prolific contributors to WordPress (<a href=\"https://twitter.com/alexkingorg\">@alexkingorg</a>,<a href=\"https://twitter.com/koop\"> @koop</a>, etc…) ultimately were shunned and exiled. It can be toxic.</p>
<p>When<a href=\"https://twitter.com/johnbillion\"> @johnbillion</a> (John Blackbourn) says there&#8217;s a lack of leadership – there is plenty of leadership, it&#8217;s all just currently in a holding pattern. Holding patterns are not bad things, they are necessary to assess what happens next. And there is more happening than ever before.</p>
<p>WordPress is about to get real. Reporting will shape your perception of progress, because there is too much progress to report on. <a href=\"https://twitter.com/post_status\">@post_status</a> &amp;<a href=\"https://twitter.com/wptavern\"> @wptavern</a> are our CNN and BBC. They are plugged in so the rest of us do not have to be, and can worry about other things.</p>
<p>I&#8217;ve made a lot of friends and allies through WordPress, and accidentally made foes somehow too. That&#8217;s not fair. We all need each other. So many individuals are pouring their lives into passion projects surrounding WordPress, hoping to eventually pay their kids tuition.</p>
<p>Talented individuals wanting a better life for their families than they had, busting their butts 24/7 on great ideas, need our support. When someone says <em>this plugin sucks because whatever</em> – it&#8217;s an OPPORTUNITY to help someone. Take it, be helpful, that&#8217;s the spirit.</p>
<p>When someone says <em>this WordCamp talk was bad</em> – provide that person with feedback yourself, in private, and help elevate them. The problems of the relatively small WordPress community are systemic across all communities. Be ready to be wrong, learn, and recover.</p>
<p>I&#8217;d be lying if I said I wanted to take a vow of poverty, relinquish my earthly possessions, and accept WordPress as my CMS and savior. I do want to be profitable enough (thanks to my WordPress experience) to provide others with stable and comfortable living conditions.</p>
<p>I&#8217;m eight solid years in, with a thorough understanding of the entire WordPress landscape, and know there are good people struggling. There&#8217;s no reason for qualified professionals to struggle in the WordPress space anymore. There is LIMITLESS opportunity and ability.</p>
<p>I deeply want WordPress to continue down the trajectory of success, and I want everyone following me to succeed along with it. Angel rounds dramatically increase the odds of success. Companies like<a href=\"https://twitter.com/10up\"> @10up</a> (the bootstrapped anomalies) need a<a href=\"https://twitter.com/jakemgold\"> @jakemgold</a> (Jake Goldman) to work.</p>
<p>People are VERY quick to categorize. Yes; I&#8217;m an engineer. I also love philosophy, business, yo-yo&#8217;s, and clearly tweet-storms. The next time someone says something negative about someone/thing WordPress related, please remind them super-villains are not real.</p>
<p>To make money in WordPress, you need to be likable, and build products where your likability shines through. Like<a href=\"https://twitter.com/pippinsplugins\"> @pippinsplugins</a> (Pippin Williamson). Being likable and profitable in open-source means having integrity, focusing on people more than product, and hoping it pays off in the end.</p>
<p>I think I&#8217;m likable, and I&#8217;d always like to be more likable, but I also know tweet-storms like this make people think you&#8217;re crazy. If you think there is ANYTHING I can do personally or professionally to help you, please know that I desperately want to.</p>
<p>I used to know<a href=\"https://twitter.com/photomatt\"> @photomatt</a> very well. He&#8217;s not a bad guy; he&#8217;s a great guy. Also an easy target. Concentrate on you. Shout-out to my starving indie plugin and theme artists out there. You rule. Don&#8217;t give up. We&#8217;ll figure it out together. Thanks for listening; sorry to muck-up your day. WordPress rules because of all of you.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Jul 2016 21:49:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Easily Add, Remove, and Rearrange Columns With The Admin Columns Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com?p=57565&preview_id=57565\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/easily-add-remove-and-rearrange-columns-with-the-admin-columns-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2834:\"<p>If you find yourself wanting more control over the columns on the posts, post types, pages, media, comments, links, and users administration screens, take a look at the <a href=\"https://wordpress.org/plugins/codepress-admin-columns/\">Admin Columns</a> plugin. Admin Columns, developed by <a href=\"https://profiles.wordpress.org/codepress/\">Codepress</a>, is a free plugin that is actively installed on more than 60K sites that enables administrators to add, remove, and rearrange columns.</p>
<p>Each column type has its own options panel where you can control settings such as width, label, and in the case of the featured image, preview size.</p>
<p><img class=\"alignnone size-full wp-image-57576\" src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2016/07/AddingAFeaturedImageColumn.png?resize=1020%2C679&ssl=1\" alt=\"AddingAFeaturedImageColumn\" /></p>
<p>There are a number of <a href=\"https://www.admincolumns.com/documentation/columns/column-types/\">column types</a> available but if you need additional flexibility, there&#8217;s a <a href=\"https://www.admincolumns.com/documentation/columns/custom-field-column/\">Custom Field</a> column type. Admin Columns also has built-in support for the <a href=\"https://www.admincolumns.com/documentation/compatible-plugins/advanced-custom-fields/\">Advanced Custom Fields</a>, <a href=\"https://www.admincolumns.com/documentation/compatible-plugins/pods/\">Pods</a>, and <a href=\"https://www.admincolumns.com/documentation/compatible-plugins/types/\">Types</a> plugins.</p>
<p>One of the things I found particularly useful as a new user is the Help tab. This tab in the upper right corner of the screen is often overlooked or not utilized by plugins. Admin Columns uses the tab to provide basic information about the plugin and how to navigate its user interface.</p>
<p><img class=\"alignnone size-full wp-image-57598\" src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/07/AdminColumnsHelpTab.png?resize=860%2C295&ssl=1\" alt=\"AdminColumnsHelpTab\" /></p>
<p>Although the free version likely takes care of most use cases, there is a <a href=\"https://www.admincolumns.com/upgrade-to-admin-columns-pro/?utm_source=plugin-installation&utm_medium=banner&utm_campaign=plugin-installation&utm_content=usp-editing\">commercial version</a> available that adds sorting, filtering, import/export, inline editing, and multiple column sets. If you maintain a number of sites that uses Admin Columns, the ability to import and export column configurations can be a huge time saver.</p>
<p>I thoroughly tested <a href=\"https://profiles.wordpress.org/codepress/\">Admin Columns</a> on WordPress 4.6 beta 3 and didn&#8217;t encounter any issues. To see a demo of the plugin in action, check out the following video.</p>
<div class=\"embed-wrap\"></div>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Jul 2016 23:33:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WP Mobile Apps: WordPress for iOS: Version 6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"http://apps.wordpress.com/?p=3471\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://apps.wordpress.com/2016/07/16/wordpress-for-ios-version-6-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2227:\"<p>Hi there, WordPress users! <a href=\"https://itunes.apple.com/us/app/wordpress/id335703880?mt=8&uo=6&at=&ct=\">Version 6.3 of the WordPress for iOS app</a> is now available in the App Store.</p>
<h1>What&#8217;s New:</h1>
<p><strong>Access your site’s media library</strong> — even if WordPress isn’t given permission to access your personal photo library.</p>

<a href=\"https://apps.wordpress.com/img_2282/\"><img width=\"169\" height=\"300\" src=\"https://apps.files.wordpress.com/2016/06/img_2282.png?w=169&h=300\" class=\"attachment-medium size-medium\" alt=\"IMG_2282\" /></a>

<p><strong>An improved design</strong> makes updating your WordPress.com profile and account settings easier and faster than ever.</p>
<p><strong>Several UI fixes.</strong> A bevy of fixes for WordPress for iPad, including search field, date picker, and layout improvements.</p>
<p><strong>And much more! </strong>You can see the full list of changes <a href=\"https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue%20is%3Aclosed%20milestone%3A6.3\">here</a>.</p>
<h1>Thank You</h1>
<p>Thanks to all of the contributors who worked on this release:<br />
<a href=\"https://github.com/aerych\">@aerych</a>, <a href=\"https://github.com/astralbodies\">@astralbodies</a>, <a href=\"https://github.com/claudiosmweb\">@claudiosmweb</a>, <a href=\"https://github.com/diegoreymendez\">@diegoreymendez</a>, <a href=\"https://github.com/frosty\">@frosty</a>, <a href=\"https://github.com/jleandroperez\">@jleandroperez</a>, <a href=\"https://github.com/koke\">@koke</a>, <a href=\"https://github.com/kurzee\">@kurzee</a>, <a href=\"https://github.com/kwonye\">@kwonye</a>, <a href=\"https://github.com/oguzkocer\">@oguzkocer</a>, <a href=\"https://github.com/sendhil\">@sendhil</a>, <a href=\"https://github.com/SergioEstevao\">@SergioEstevao</a>.</p>
<p>You can track the development progress for the next update by visiting <a href=\"https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue+milestone%3A6.4+\" target=\"_blank\">our 6.4 milestone on GitHub</a>. Until next time!</p><img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3471&subd=apps&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Jul 2016 21:12:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"diegoreymendez\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WordPress.tv Blog: Staff Pick: Theming in WordPress – Where do I start?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=524\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://blog.wordpress.tv/2016/07/16/staff-pick-theming-in-wordpress-where-do-i-start/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1125:\"<p>From the stage of <a href=\"http://wordpress.tv/event/wordcamp-europe-2016/\">WordCamp Europe 2016</a> here is Edmund Turbin&#8217;s great presentation on how to get started in creating WordPress themes.</p>
<p></p>
<p>Base theme, child theme, framework – These are a few of the options you can use for creating a WordPress Theme. Wether you are developing a theme for your personal blog, a clients website, or a theme to be used by other sites and the WordPress community, it is important to know the different approaches for getting started with theme development.</p>
<p><a href=\"http://www.slideshare.net/eturbin/theming-wordpress-where-do-i-start\">Presentation Slides</a></p>
<p><a href=\"http://wordpress.tv/\">Watch more great videos on WordPress.tv!</a></p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/524/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/524/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=524&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Jul 2016 02:49:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Post Status: Medium and WordPress — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=25489\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/medium-wordpress-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2496:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>
<p>In this episode, Joe and Brian talk about Medium &amp; WordPress and whether Medium and similar platforms are a significant threat to WordPress. They also discuss the benefits and challenges of open source platforms versus proprietary ones, and WordPress’s potential as a lower level item in the site stack.</p>
<p><a href=\"https://audio.simplecast.com/41890.mp3\">https://audio.simplecast.com/41890.mp3</a><br />
<a href=\"http://audio.simplecast.com/41890.mp3\">Direct Download</a></p>
<h3>Links</h3>
<ul>
<li><a href=\"https://wordpress.tv/2016/06/25/matt-mullenweg-interview-and-qa/\">Interview with Matt</a></li>
<li><a href=\"http://wordpress.tv/2016/06/30/joe-hoyle-the-ultimate-rest-api-talk-part-1/\">Joe&#8217;s REST API talk</a></li>
<li><a href=\"https://github.com/joehoyle/vienna\">Vienna WordPress app concept</a></li>
<li><a href=\"https://ma.tt/2015/03/typewriter/\">Billionaire&#8217;s Typewriter</a></li>
<li><a href=\"https://markarms.com/2016/06/23/what-to-consider-when-the-platforms-show-up-with-money/\">What to Consider When the Platforms Show up With Money</a></li>
<li><a href=\"https://medium.com/\">Medium.com</a></li>
<li><a href=\"https://developer.wordpress.com/calypso/\">WordPress.com Calypso</a></li>
<li><a href=\"https://www.alleyinteractive.com/blog/how-medium-became-livejournal-for-publishers/\">Medium compared to LiveJournal</a></li>
</ul>
<h3>Sponsor</h3>
<p>This episode is sponsored by <a href=\"https://pippinsplugins.com/\">Pippin&#8217;s Plugins.</a> If you want to sell downloads, setup content restriction, or start an affiliate program, Pippin’s Plugins have you covered. If you need all three, even better. Pippin’s Plugins is well known for making some of the best coded and most reliable plugins in the market. Check out <a href=\"https://pippinsplugins.com/\">PippinsPlugins.com </a>for more information.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Jul 2016 23:28:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WordPress.tv Blog: WordCamp Videos – Copywriting for SEO and improving your site security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.wordpress.tv/?p=507\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"http://blog.wordpress.tv/2016/07/08/wordcamp-videos-copywriting-for-seo-and-improving-your-site-security/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1545:\"<h2 class=\"video-title\">Aaron Campbell: Website Security – The Big Picture w/ Simple Steps to Take</h2>
<p>Security can be complex, intimidating, and even frightening. Don’t let the enormity of it scare you into inaction. Learn what some of the security researchers and security professionals deal with, and then find out some simple steps you can take to secure your sites.</p>
<p></p>
<p>More videos from <a href=\"http://wordpress.tv/event/wordcamp-europe-2016/\">WordCamp Europe 2016</a></p>
<h2 class=\"video-title\">Beyond SEO – Copywriting for professionals &#8211; Marieke van de Rakt &amp; Joost de Valk</h2>
<p>SEO has gone from a technical trade to being more marketing focussed. Joost &amp; Marieke will talk about how to gain great rankings &amp; satisfied visitors by writing good content. Focussing on SEO copywriting has a major pitfall. We give examples and tips on how to write a post that is both readable as well as SEO-friendly.</p>
<p></p>
<p><a href=\"http://www.slideshare.net/yoast/beyond-seo-copywriting-for-professionals\">Presentation slides</a></p>
<p>More videos from <a href=\"http://wordpress.tv/event/wordcamp-europe-2016/\">WordCamp Europe 2016</a></p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/507/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/507/\" /></a> <img alt=\"\" border=\"0\" src=\"http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=507&subd=wptvblog&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Jul 2016 16:29:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jerry Bates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"Post Status: WordCamp Europe 2016, held in Vienna, was a massive success\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=25313\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://poststatus.com/wordcamp-europe-2016-massive-success/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:34867:\"<p>WordCamp Europe 2016 &#8212; held in Vienna&#8217;s beautiful MuseumsQuartier &#8212; was wonderfully executed, and a highlight of the year in WordPress conferences. Organized by a huge team of dedicated volunteers, many of whom worked near full time in the weeks leading up to the events, pulled off the largest WordCamp ever.</p>
<p>Nearly 2,000 attendees streamed into Vienna for WordCamp Europe, and over the course of two conference days and a contributor day, showed just how diverse and special the WordPress community is.</p>
<p>There were many great talks, and I unfortunately didn&#8217;t get to see near enough of them, but fortunately the team got videos onto WordPress.tv incredibly fast, and you can now watch <a href=\"http://wordpress.tv/event/wordcamp-europe-2016/\">all WordCamp Europe sessions</a> for yourself.</p>
<p>I had the privilege to take part in the conference in two sessions, first as a moderator of a panel of business owners, on the topic of <a href=\"http://wordpress.tv/2016/06/29/panel-discussion-cultivating-happy-teams-for-better-business/\">cultivating happy teams</a>. I also greatly enjoyed <a href=\"http://wordpress.tv/2016/06/25/matt-mullenweg-interview-and-qa/\">interviewing Matt Mullenweg</a> for the event keynote.</p>
<p>I really recommend you check out all of the talks and choose those which you may learn from. I have pictures from some of those I attended, as well as from the event in general and contributor day.</p>

<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-1/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-1-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Emcee\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-2/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-2-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Welcome to WCEU\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-3/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-3-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WCEU dotmap\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-4/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-4-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WCEU stage\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-5/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-5-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Mike Little, WordPress co-founder\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-6/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-6-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"The stars of this conference\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-7/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-7-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"John Blackbourn\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-8/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-8-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Rarst\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-9/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-9-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"More Rarst\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-10/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-10-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Remkus de Vries\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-11/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-11-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Simon Dickson\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-13/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-13-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Helen\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-14/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-14-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Siobhan and Benji\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-15/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-15-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Adam Warner\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-16/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-16-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Wapuu coloring book\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-17/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-17-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Joe Hoyle\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-18/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-18-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Joe Hoyle\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-19/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-19-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"MuseumsQuartier\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-20/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-20-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nacin\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-21/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-21-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WCEU audience\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-22/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-22-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"More Nacin\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-23/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-23-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Tom Willmot, \" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-24/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-24-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"K.Adam White\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-25/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-25-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"More K.Adam\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-26/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-26-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Sara Rosso, Emcee\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-27/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-27-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Barry\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-28/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-28-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Ivelina\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-29/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-29-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Mike Little\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-30/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-30-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Family friendly\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-31/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-31-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Kari Leigh\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-32/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-32-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"audience\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-33/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-33-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Dancing Jenny\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-34/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-34-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Jenny and Petya handoff\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-35/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-35-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WCEU organizer transition\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-36/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-36-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Kari Leigh doing her thing\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-37/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-37-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WCEU organizers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-38/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-38-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Petya and friends\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-39/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-39-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Hall E+G\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-40/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-40-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Courtyard\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-41/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-41-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Picture of Picture Takers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-42/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-42-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Goodbye\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-43/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-43-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Robert O\'Rourke\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-44/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-44-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Robert, Sonja, John\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-45/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-45-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Tom & Simon\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-46/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-46-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Probably REST API talk\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-47/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-47-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Winky Japh\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-48/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-48-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Suave Tarei\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-49/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-49-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Bronson\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-50/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-50-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Oh, Ant\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-51/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-51-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Serious Ant\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-52/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-52-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Sneaky K.Adam\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-53/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-53-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Human Made\'s latest\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-54/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-54-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Can\'t get enough Rarst\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-55/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-55-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Shinichi\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-56/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-56-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Matt Mullenweg\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-57/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-57-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Ben May\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-58/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-58-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"masked Petya\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-59/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-59-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Ladies of the ball\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-60/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-60-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nacin\'s tie\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-61/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-61-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nacin\'s profile\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-62/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-62-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nacin\'s satisfaction\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-63/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-63-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Blue steel\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-64/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-64-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nacin & Matt\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-65/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-65-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Human Made ballers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-66/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-66-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Human Made ballers 2\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-67/\"><img width=\"150\" height=\"137\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-67-150x137.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Even more Human Made ballers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-68/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-68-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Ball dancers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-69/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-69-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Ball dancers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-70/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-70-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"WordPress Co-founders\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-71/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-71-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Joost\'s kicks\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-72/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-72-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Joost slick\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-73/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-73-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Mark Jaquith\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-74/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-74-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Power Convo\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-75/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-75-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Aaron\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-76/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-76-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Mika\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-77/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-77-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Jean\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-78/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-78-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Hat game\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-79/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-79-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Alain\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-80/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-80-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Contributors\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-81/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-81-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nice stickers\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-82/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-82-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Cassidy\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-83/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-83-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pascal\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-84/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-84-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Tammie\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-85/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-85-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Hugo and his awesome laptop\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-86/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-86-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Contributors\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-87/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-87-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Phone break\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-88/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-88-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"More Hugo\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-89/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-89-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Seriously, that laptop\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-90/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-90-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Matthew Haines-Young\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-91/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-91-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Impressed face?\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-92/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-92-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Collaboration\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-93/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-93-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"More collaboration\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-94/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-94-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Contributor day\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-95/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-95-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Break\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-96/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-96-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Konstantin\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-97/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-97-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Recording\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-98/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-98-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Chris\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-99/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-99-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Can\'t get enough Rarst\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-100/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-100-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-101/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-101-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Laughing\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-102/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-102-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Dominik\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-103/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-103-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Nikolay\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-104/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-104-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Working hard\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-105/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-105-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Helen judging Ryan\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-106/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-106-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"New Contributor Room\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-107/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-107-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Adam teaching\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-108/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-108-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"New contributors\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-109/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-109-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Accessibility testing\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-110/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-110-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"a11y collaboration\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-111/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-111-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Morten\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-112/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-112-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Listening\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-113/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-113-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Contributor\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-114/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-114-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Plugins\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-115/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-115-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Discussion\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-116/\"><img width=\"150\" height=\"100\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-116-150x100.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Lior\" /></a>
<a href=\"https://poststatus.com/wordcamp-europe-2016-massive-success/wceu-2016-vienna-117/\"><img width=\"100\" height=\"150\" src=\"https://cdn.poststatus.com/wp-content/uploads/2016/07/wceu-2016-vienna-117-100x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Brad\" /></a>

<p>&nbsp;</p>
<p>I&#8217;ll have more takeaways from WordCamp Europe <a href=\"https://poststatus.com/club\">in the member newsletter</a>, but for now, I hope you enjoy a few pictures! Thank you to the WordCamp Europe organizing team and volunteers for your efforts, and the entire European community for welcoming those of us who traveled from abroad. It was a blast, and I hope to see you again <a href=\"https://2017.europe.wordcamp.org/\">next year in Paris</a>!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jul 2016 20:28:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 29 Aug 2016 16:43:49 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:14:\"content-length\";s:6:\"488517\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Mon, 29 Aug 2016 16:30:27 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";s:13:\"accept-ranges\";s:5:\"bytes\";}s:5:\"build\";s:14:\"20160814153117\";}","no");
INSERT INTO `wp_options` VALUES("1316","_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1472532222","no");
INSERT INTO `wp_options` VALUES("1317","_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1472489022","no");
INSERT INTO `wp_options` VALUES("1318","_transient_timeout_dash_1ba4cf213ee97a4b25c78e8a35c7da22","1472532222","no");
INSERT INTO `wp_options` VALUES("1319","_transient_dash_1ba4cf213ee97a4b25c78e8a35c7da22","<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/uawordpress/~3/RZxBBEaWWLA/wordpress-4-6.html\'>WordPress 4.6</a> <span class=\"rss-date\">Серпень 17, 2016</span><div class=\"rssSummary\">Привіт! Вітаю з виходом нової версії WordPress 4.6 , що відбувся 16 серпня 2016 року. Більшість змін у новій версії WordPress стосується внутрішньої частини. Що можна побачити очима: Покращення в редакторі постів стосуються функції автозбереження, вона стала більш стабільнішою і використовує окрім WordPress ще і можливості вашого браузера. Посилання, що ви додаєте у тексті тепер перевіряються [&hellip;]</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://apps.wordpress.com/2016/08/26/wordpress-for-ios-version-6-4/\'>WP Mobile Apps: WordPress for iOS: Version 6.4</a></li><li><a class=\'rsswidget\' href=\'https://apps.wordpress.com/2016/08/26/wordpress-for-android-version-5-7/\'>WP Mobile Apps: WordPress for Android: Version 5.7</a></li><li><a class=\'rsswidget\' href=\'http://heropress.com/essays/minority-amongst-minorities/\'>HeroPress: A Minority Amongst Minorities</a></li></ul></div>","no");
INSERT INTO `wp_options` VALUES("1338","_site_transient_timeout_browser_99df0719b10b04f12be9d1d4b98a21bd","1473096901","yes");
INSERT INTO `wp_options` VALUES("1339","_site_transient_browser_99df0719b10b04f12be9d1d4b98a21bd","a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"51.0.2704.79\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","yes");
INSERT INTO `wp_options` VALUES("1346","_transient_timeout_yst_sm_1_1:35C4y_5AlAI","1472579939","no");
INSERT INTO `wp_options` VALUES("1347","_transient_yst_sm_1_1:35C4y_5AlAI","C:24:\"WPSEO_Sitemap_Cache_Data\":478:{a:2:{s:6:\"status\";s:2:\"ok\";s:3:\"xml\";s:431:\"<sitemapindex xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">
	<sitemap>
		<loc>http://stomat/page-sitemap.xml</loc>
		<lastmod>2016-08-29T20:36:44+03:00</lastmod>
	</sitemap>
	<sitemap>
		<loc>http://stomat/gallery-sitemap.xml</loc>
		<lastmod>2016-08-18T15:42:39+03:00</lastmod>
	</sitemap>
	<sitemap>
		<loc>http://stomat/services-sitemap.xml</loc>
		<lastmod>2016-08-29T20:04:20+03:00</lastmod>
	</sitemap>
</sitemapindex>\";}}","no");
INSERT INTO `wp_options` VALUES("1348","_transient_timeout_wpseo-dashboard-totals","1472580110","no");
INSERT INTO `wp_options` VALUES("1349","_transient_wpseo-dashboard-totals","a:1:{i:1;a:0:{}}","no");
INSERT INTO `wp_options` VALUES("1354","can_compress_scripts","0","no");
INSERT INTO `wp_options` VALUES("1355","_transient_timeout_yoast_i18n_wordpress-seo_uk","1472580116","no");
INSERT INTO `wp_options` VALUES("1356","_transient_yoast_i18n_wordpress-seo_uk","O:8:\"stdClass\":12:{s:2:\"id\";s:3:\"741\";s:4:\"name\";s:9:\"Ukrainian\";s:4:\"slug\";s:7:\"default\";s:10:\"project_id\";s:1:\"1\";s:6:\"locale\";s:2:\"uk\";s:13:\"current_count\";i:0;s:18:\"untranslated_count\";i:940;s:13:\"waiting_count\";i:619;s:11:\"fuzzy_count\";i:0;s:18:\"percent_translated\";i:0;s:9:\"wp_locale\";s:2:\"uk\";s:13:\"last_modified\";b:0;}","no");
INSERT INTO `wp_options` VALUES("1357","_transient_timeout_plugin_slugs","1472581020","no");
INSERT INTO `wp_options` VALUES("1358","_transient_plugin_slugs","a:8:{i:0;s:27:\"abv_gallery/abv_gallery.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:22:\"cyr3lat/cyr-to-lat.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:6;s:27:\"wp-super-cache/wp-cache.php\";i:7;s:24:\"wordpress-seo/wp-seo.php\";}","no");
INSERT INTO `wp_options` VALUES("1360","_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a","1472505022","no");
INSERT INTO `wp_options` VALUES("1361","_site_transient_poptags_40cd750bba9870f18aada2478b24840a","a:100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"5981\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3695\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3648\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"3163\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2824\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"2439\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"2240\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"2110\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"2070\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"2060\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"2009\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1949\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1883\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:4:\"1814\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1717\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1600\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1559\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1428\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1337\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1293\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:4:\"1252\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:4:\"1123\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:4:\"1110\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:4:\"1014\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:4:\"1009\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:4:\"1008\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"942\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"932\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"926\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"919\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"919\";}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";s:3:\"862\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"849\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"807\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"800\";}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";s:3:\"794\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"777\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"771\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"767\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"766\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"755\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"749\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"721\";}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";s:3:\"716\";}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";s:3:\"702\";}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"CSS\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";s:3:\"699\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"697\";}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";s:3:\"697\";}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";s:3:\"693\";}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";s:3:\"679\";}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";s:3:\"667\";}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";s:3:\"648\";}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";s:3:\"625\";}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";s:3:\"625\";}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";s:3:\"616\";}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";s:3:\"606\";}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";s:3:\"603\";}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";s:3:\"601\";}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";s:3:\"598\";}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";s:3:\"590\";}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";s:3:\"586\";}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";s:3:\"575\";}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";s:3:\"573\";}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";s:3:\"562\";}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";s:3:\"562\";}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";s:3:\"546\";}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";s:3:\"543\";}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";s:3:\"540\";}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";s:3:\"526\";}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";s:3:\"525\";}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";s:3:\"520\";}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";s:3:\"518\";}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";s:3:\"518\";}s:7:\"picture\";a:3:{s:4:\"name\";s:7:\"picture\";s:4:\"slug\";s:7:\"picture\";s:5:\"count\";s:3:\"516\";}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";s:3:\"489\";}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";s:3:\"479\";}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";s:3:\"472\";}s:4:\"shop\";a:3:{s:4:\"name\";s:4:\"shop\";s:4:\"slug\";s:4:\"shop\";s:5:\"count\";s:3:\"472\";}s:8:\"pictures\";a:3:{s:4:\"name\";s:8:\"pictures\";s:4:\"slug\";s:8:\"pictures\";s:5:\"count\";s:3:\"464\";}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";s:3:\"461\";}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";s:3:\"453\";}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";s:3:\"446\";}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";s:3:\"441\";}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";s:3:\"435\";}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";s:3:\"428\";}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";s:3:\"428\";}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";s:3:\"426\";}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";s:3:\"425\";}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";s:3:\"422\";}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"News\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";s:3:\"415\";}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";s:3:\"415\";}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";s:3:\"411\";}s:6:\"upload\";a:3:{s:4:\"name\";s:6:\"upload\";s:4:\"slug\";s:6:\"upload\";s:5:\"count\";s:3:\"408\";}s:9:\"thumbnail\";a:3:{s:4:\"name\";s:9:\"thumbnail\";s:4:\"slug\";s:9:\"thumbnail\";s:5:\"count\";s:3:\"407\";}s:7:\"sharing\";a:3:{s:4:\"name\";s:7:\"sharing\";s:4:\"slug\";s:7:\"sharing\";s:5:\"count\";s:3:\"406\";}s:6:\"paypal\";a:3:{s:4:\"name\";s:6:\"paypal\";s:4:\"slug\";s:6:\"paypal\";s:5:\"count\";s:3:\"406\";}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";s:3:\"405\";}s:7:\"profile\";a:3:{s:4:\"name\";s:7:\"profile\";s:4:\"slug\";s:7:\"profile\";s:5:\"count\";s:3:\"404\";}s:8:\"linkedin\";a:3:{s:4:\"name\";s:8:\"linkedin\";s:4:\"slug\";s:8:\"linkedin\";s:5:\"count\";s:3:\"401\";}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";s:3:\"401\";}}","no");
INSERT INTO `wp_options` VALUES("1363","_site_transient_timeout_theme_roots","1472496038","no");
INSERT INTO `wp_options` VALUES("1364","_site_transient_theme_roots","a:1:{s:6:\"stomat\";s:7:\"/themes\";}","no");
INSERT INTO `wp_options` VALUES("1367","supercache_stats","a:3:{s:9:\"generated\";i:1472494364;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:12:\"expired_list\";a:0:{}s:6:\"cached\";i:0;s:11:\"cached_list\";a:0:{}s:2:\"ts\";i:1472494364;}s:7:\"wpcache\";a:3:{s:6:\"cached\";i:0;s:7:\"expired\";i:0;s:5:\"fsize\";s:3:\"0KB\";}}","yes");
INSERT INTO `wp_options` VALUES("1368","_site_transient_timeout_available_translations","1472505391","no");
INSERT INTO `wp_options` VALUES("1369","_site_transient_available_translations","a:83:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 18:36:09\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 13:03:57\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/4.6/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2016-06-18 20:18:13\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-11 22:42:10\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-22 13:05:12\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 17:09:07\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-29 13:52:49\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་སྐད\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2016-04-19 23:16:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 17:21:06\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.4.3\";s:7:\"updated\";s:19:\"2016-02-16 15:34:57\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-11 18:32:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-12 10:17:24\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-12 09:12:43\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 12:59:43\";s:12:\"english_name\";s:23:\"(Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.6/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-27 22:40:28\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.6/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-27 22:13:38\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 12:56:13\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 19:00:23\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-11 23:19:29\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-20 07:14:07\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 11:54:12\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-11 22:36:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-12 02:18:44\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-12 15:12:41\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 17:56:31\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 22:11:44\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-29 15:07:52\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-28 08:51:46\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-19 13:48:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2016-04-16 17:35:43\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 12:34:44\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.3-RC\";s:7:\"updated\";s:19:\"2015-08-04 06:10:33\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:7:\"4.6-rc2\";s:7:\"updated\";s:19:\"2016-08-09 06:49:25\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.6-rc2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-28 10:11:19\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 16:59:29\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 18:30:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 19:02:20\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-23 09:46:30\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-13 16:21:14\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-21 15:44:17\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 18:48:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-28 11:08:39\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 14:03:05\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 17:22:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 23:35:30\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2016-02-04 07:13:54\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-20 00:18:09\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-28 16:20:57\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-27 13:32:18\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 17:33:07\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-29 11:51:34\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-26 00:37:05\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-11 21:29:34\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2016-05-12 13:55:28\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-23 16:19:03\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-14 14:18:43\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.12\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.12/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 13:09:49\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-24 08:27:02\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.4.3\";s:7:\"updated\";s:19:\"2016-01-20 13:35:50\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-27 16:24:28\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-25 09:29:49\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/4.6/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.5.3\";s:7:\"updated\";s:19:\"2016-06-23 08:13:15\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.12\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.12/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-14 15:53:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 09:38:18\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-15 18:51:49\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 02:25:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 10:49:08\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 16:23:26\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-14 07:00:01\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-12 16:41:17\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-27 06:35:58\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.5.3\";s:7:\"updated\";s:19:\"2016-06-30 10:22:26\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.5.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-11-27 15:51:36\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 10:50:15\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.5.3\";s:7:\"updated\";s:19:\"2016-06-22 12:27:05\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-16 23:29:57\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.6/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-09 01:01:25\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-18 13:53:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.5.2\";s:7:\"updated\";s:19:\"2016-04-17 03:29:01\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}","no");
INSERT INTO `wp_options` VALUES("1372","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.6\";s:7:\"version\";s:3:\"4.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1472494600;s:15:\"version_checked\";s:3:\"4.6\";s:12:\"translations\";a:0:{}}","no");
INSERT INTO `wp_options` VALUES("1373","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1472494619;s:7:\"checked\";a:8:{s:27:\"abv_gallery/abv_gallery.php\";s:3:\"1.1\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"4.1.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"4.5\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:27:\"svg-support/svg-support.php\";s:7:\"2.2.3.2\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"4.4.1\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.4.8\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"3.4.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"41309\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip\";}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"23472\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"52275\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:7:\"2.2.3.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/svg-support.2.2.3.2.zip\";s:14:\"upgrade_notice\";s:58:\"Changed text domain to match plugin slug for localization.\";}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"731\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.4.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.4.1.zip\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"1221\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip\";s:14:\"upgrade_notice\";s:38:\"Removed malware URL in a code comment.\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"5899\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"3.4.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.3.4.2.zip\";}}}","no");
INSERT INTO `wp_options` VALUES("1374","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1472494602;s:7:\"checked\";a:1:{s:6:\"stomat\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no");


DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_postmeta` VALUES("1","2","_wp_page_template","default");
INSERT INTO `wp_postmeta` VALUES("2","2","_wp_trash_meta_status","publish");
INSERT INTO `wp_postmeta` VALUES("3","2","_wp_trash_meta_time","1470238030");
INSERT INTO `wp_postmeta` VALUES("4","2","_wp_desired_post_slug","sample-page");
INSERT INTO `wp_postmeta` VALUES("5","5","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("6","5","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("7","5","_edit_lock","1471443532:1");
INSERT INTO `wp_postmeta` VALUES("26","9","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("27","9","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("28","9","_edit_lock","1470238084:1");
INSERT INTO `wp_postmeta` VALUES("29","9","_wp_trash_meta_status","publish");
INSERT INTO `wp_postmeta` VALUES("30","9","_wp_trash_meta_time","1470238229");
INSERT INTO `wp_postmeta` VALUES("31","9","_wp_desired_post_slug","pro-kliniku");
INSERT INTO `wp_postmeta` VALUES("32","11","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("33","11","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("34","11","_menu_item_object_id","11");
INSERT INTO `wp_postmeta` VALUES("35","11","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("36","11","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("37","11","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("38","11","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("39","11","_menu_item_url","#about");
INSERT INTO `wp_postmeta` VALUES("41","12","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("42","12","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("43","12","_menu_item_object_id","12");
INSERT INTO `wp_postmeta` VALUES("44","12","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("45","12","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("46","12","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("47","12","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("48","12","_menu_item_url","#medcine");
INSERT INTO `wp_postmeta` VALUES("50","13","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("51","13","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("52","13","_menu_item_object_id","13");
INSERT INTO `wp_postmeta` VALUES("53","13","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("54","13","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("55","13","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("56","13","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("57","13","_menu_item_url","#prices");
INSERT INTO `wp_postmeta` VALUES("59","14","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("60","14","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("61","14","_menu_item_object_id","14");
INSERT INTO `wp_postmeta` VALUES("62","14","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("63","14","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("64","14","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("65","14","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("66","14","_menu_item_url","#gallery");
INSERT INTO `wp_postmeta` VALUES("68","15","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("69","15","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("70","15","_menu_item_object_id","15");
INSERT INTO `wp_postmeta` VALUES("71","15","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("72","15","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("73","15","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("74","15","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("75","15","_menu_item_url","#contacts");
INSERT INTO `wp_postmeta` VALUES("77","1","_wp_trash_meta_status","publish");
INSERT INTO `wp_postmeta` VALUES("78","1","_wp_trash_meta_time","1470238797");
INSERT INTO `wp_postmeta` VALUES("79","1","_wp_desired_post_slug","hello-world");
INSERT INTO `wp_postmeta` VALUES("80","1","_wp_trash_meta_comments_status","a:1:{i:1;s:1:\"1\";}");
INSERT INTO `wp_postmeta` VALUES("81","17","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("82","17","_edit_lock","1470295941:1");
INSERT INTO `wp_postmeta` VALUES("85","17","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("86","17","_yoast_wpseo_primary_category","");
INSERT INTO `wp_postmeta` VALUES("91","22","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("92","22","_edit_lock","1470855202:1");
INSERT INTO `wp_postmeta` VALUES("93","22","abv_gallery_description_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("94","22","abv_gallery_images_meta_value_key","68,68,68");
INSERT INTO `wp_postmeta` VALUES("95","22","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("98","24","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("99","24","_edit_lock","1470881603:1");
INSERT INTO `wp_postmeta` VALUES("102","24","abv_gallery_description_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("103","24","abv_gallery_images_meta_value_key","69,69,69,69,69");
INSERT INTO `wp_postmeta` VALUES("104","24","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("105","33","_form","<div class=\"wrap\">
          <label for=\"your-name\">Ім’я та прізвище <span class=\"star\">*</span></label>
          [text* your-name id:your-name]
</div>
<div class=\"wrap\">
	<label for=\"tel-813\">Контактний телефон <span class=\"star\">*</span></label>
        [text* tel-813 id:tel-813]
</div>
<div class=\"wrap\">
        [select* menu-312 id:reason \"Причина звернення\" \"Лікуватись\" \"Просто так\"]
</div>
<div class=\"wrap\">
	<label for=\"your-message\">Додаткове питання, інформація</label>
        [text your-message id:your-message]
</div>
<div class=\"wrap\">
        [submit \"Надіслати\"]
</div>");
INSERT INTO `wp_postmeta` VALUES("106","33","_mail","a:8:{s:7:\"subject\";s:52:\"М. Р. С СТОМАТОЛОГІЯ \"[your-subject]\"\";s:6:\"sender\";s:0:\"\";s:4:\"body\";s:244:\"Від: [your-name] <[your-email]>
Тема: [your-subject]

Текст повідомлення:
[your-message]

--
Це повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)\";s:9:\"recipient\";s:15:\"alex110@list.ru\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO `wp_postmeta` VALUES("107","33","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:52:\"М. Р. С СТОМАТОЛОГІЯ \"[your-subject]\"\";s:6:\"sender\";s:54:\"М. Р. С СТОМАТОЛОГІЯ <wordpress@stomat>\";s:4:\"body\";s:183:\"Текст повідомлення:
[your-message]

--
Це повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:25:\"Reply-To: alex110@list.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO `wp_postmeta` VALUES("108","33","_messages","a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:62:\"Введено невірний контрольний код.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}");
INSERT INTO `wp_postmeta` VALUES("109","33","_additional_settings","");
INSERT INTO `wp_postmeta` VALUES("110","33","_locale","uk");
INSERT INTO `wp_postmeta` VALUES("115","35","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("116","35","_edit_lock","1470836835:1");
INSERT INTO `wp_postmeta` VALUES("119","35","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("120","35","_yoast_wpseo_primary_category","");
INSERT INTO `wp_postmeta` VALUES("121","37","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("122","37","_edit_lock","1470836852:1");
INSERT INTO `wp_postmeta` VALUES("123","38","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("124","38","_edit_lock","1470323438:1");
INSERT INTO `wp_postmeta` VALUES("125","38","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("126","38","abv_test_images_meta_value_key","19,19,25");
INSERT INTO `wp_postmeta` VALUES("127","39","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("128","39","_edit_lock","1472492446:1");
INSERT INTO `wp_postmeta` VALUES("129","39","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("130","41","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("131","41","_edit_lock","1470856661:1");
INSERT INTO `wp_postmeta` VALUES("132","41","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("133","48","_wp_attached_file","2016/08/fb.svg");
INSERT INTO `wp_postmeta` VALUES("134","49","_wp_attached_file","2016/08/vk.svg");
INSERT INTO `wp_postmeta` VALUES("135","52","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("136","52","_edit_lock","1472489191:2");
INSERT INTO `wp_postmeta` VALUES("137","52","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("138","58","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("139","58","_edit_lock","1472489074:2");
INSERT INTO `wp_postmeta` VALUES("140","58","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("141","60","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("142","60","_edit_lock","1471441549:1");
INSERT INTO `wp_postmeta` VALUES("143","61","_wp_attached_file","2016/08/free-diagnistic.svg");
INSERT INTO `wp_postmeta` VALUES("144","62","_wp_attached_file","2016/08/complex-treatment.svg");
INSERT INTO `wp_postmeta` VALUES("145","63","_wp_attached_file","2016/08/ensurence.svg");
INSERT INTO `wp_postmeta` VALUES("146","64","_wp_attached_file","2016/08/extra-help.svg");
INSERT INTO `wp_postmeta` VALUES("147","60","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("148","66","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("149","66","_edit_lock","1470856230:1");
INSERT INTO `wp_postmeta` VALUES("150","66","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("151","68","_wp_attached_file","2016/08/slider_girls.jpg");
INSERT INTO `wp_postmeta` VALUES("152","68","_wp_attachment_metadata","a:4:{s:5:\"width\";i:1887;s:6:\"height\";i:758;s:4:\"file\";s:24:\"2016/08/slider_girls.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("153","69","_wp_attached_file","2016/08/slider_bottom1.png");
INSERT INTO `wp_postmeta` VALUES("154","69","_wp_attachment_metadata","a:4:{s:5:\"width\";i:261;s:6:\"height\";i:160;s:4:\"file\";s:26:\"2016/08/slider_bottom1.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("155","70","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("156","70","_edit_lock","1470879024:1");
INSERT INTO `wp_postmeta` VALUES("157","70","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("158","72","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("159","72","_edit_lock","1470875276:1");
INSERT INTO `wp_postmeta` VALUES("160","72","_yoast_wpseo_content_score","60");
INSERT INTO `wp_postmeta` VALUES("161","74","_wp_attached_file","2016/08/logo.svg");
INSERT INTO `wp_postmeta` VALUES("162","5","_thumbnail_id","74");
INSERT INTO `wp_postmeta` VALUES("163","37","_wp_trash_meta_status","draft");
INSERT INTO `wp_postmeta` VALUES("164","37","_wp_trash_meta_time","1470837012");
INSERT INTO `wp_postmeta` VALUES("165","37","_wp_desired_post_slug","");
INSERT INTO `wp_postmeta` VALUES("166","35","_wp_trash_meta_status","publish");
INSERT INTO `wp_postmeta` VALUES("167","35","_wp_trash_meta_time","1470837012");
INSERT INTO `wp_postmeta` VALUES("168","35","_wp_desired_post_slug","pro-kliniku");
INSERT INTO `wp_postmeta` VALUES("169","17","_wp_trash_meta_status","publish");
INSERT INTO `wp_postmeta` VALUES("170","17","_wp_trash_meta_time","1470837012");
INSERT INTO `wp_postmeta` VALUES("171","17","_wp_desired_post_slug","nashi-perevagy");
INSERT INTO `wp_postmeta` VALUES("172","80","_wp_attached_file","2016/08/pointer.svg");
INSERT INTO `wp_postmeta` VALUES("173","83","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("174","83","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("175","83","_menu_item_object_id","83");
INSERT INTO `wp_postmeta` VALUES("176","83","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("177","83","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("178","83","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("179","83","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("180","83","_menu_item_url","#about");
INSERT INTO `wp_postmeta` VALUES("182","84","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("183","84","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("184","84","_menu_item_object_id","84");
INSERT INTO `wp_postmeta` VALUES("185","84","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("186","84","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("187","84","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("188","84","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("189","84","_menu_item_url","#medcine");
INSERT INTO `wp_postmeta` VALUES("191","85","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("192","85","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("193","85","_menu_item_object_id","85");
INSERT INTO `wp_postmeta` VALUES("194","85","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("195","85","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("196","85","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("197","85","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("198","85","_menu_item_url","#prices");
INSERT INTO `wp_postmeta` VALUES("200","86","_menu_item_type","custom");
INSERT INTO `wp_postmeta` VALUES("201","86","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("202","86","_menu_item_object_id","86");
INSERT INTO `wp_postmeta` VALUES("203","86","_menu_item_object","custom");
INSERT INTO `wp_postmeta` VALUES("204","86","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("205","86","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("206","86","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("207","86","_menu_item_url","#contacts");
INSERT INTO `wp_postmeta` VALUES("215","33","_config_errors","a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:78:\"http://contactform7.com/configuration-errors/#mail.sender:error_invalid_syntax\";}}}}");
INSERT INTO `wp_postmeta` VALUES("216","102","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("217","102","_edit_lock","1472489212:2");
INSERT INTO `wp_postmeta` VALUES("218","102","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("219","106","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("220","106","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("221","106","_edit_lock","1472489225:2");
INSERT INTO `wp_postmeta` VALUES("222","110","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("223","110","_edit_lock","1470999294:1");
INSERT INTO `wp_postmeta` VALUES("224","110","abv_test_image_images_meta_value_key","68,48");
INSERT INTO `wp_postmeta` VALUES("225","110","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("226","112","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("227","112","_edit_lock","1471000533:1");
INSERT INTO `wp_postmeta` VALUES("228","112","store_selected_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("229","112","store_like_value_key","");
INSERT INTO `wp_postmeta` VALUES("230","112","sales_close_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("231","112","sales_selected_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("232","112","sales_like_value_key","");
INSERT INTO `wp_postmeta` VALUES("233","112","sales_store_value_key","");
INSERT INTO `wp_postmeta` VALUES("234","112","sales_date_start_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("235","112","sales_date_end_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("236","112","_yoast_wpseo_primary_stores_cat","");
INSERT INTO `wp_postmeta` VALUES("237","112","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("238","113","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("239","113","store_selected_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("240","113","store_like_value_key","");
INSERT INTO `wp_postmeta` VALUES("241","113","sales_close_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("242","113","sales_selected_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("243","113","sales_like_value_key","");
INSERT INTO `wp_postmeta` VALUES("244","113","sales_store_value_key","");
INSERT INTO `wp_postmeta` VALUES("245","113","sales_date_start_meta_value_key","12.08.2016");
INSERT INTO `wp_postmeta` VALUES("246","113","sales_date_end_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("247","113","_yoast_wpseo_primary_sales_cat","");
INSERT INTO `wp_postmeta` VALUES("248","113","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("249","113","_edit_lock","1471012067:1");
INSERT INTO `wp_postmeta` VALUES("250","114","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("251","114","_edit_lock","1472489985:2");
INSERT INTO `wp_postmeta` VALUES("252","114","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("253","115","_wp_attached_file","2016/08/profilactic.svg");
INSERT INTO `wp_postmeta` VALUES("255","114","abv_short_meta_value_key","Прості правила попередження захворювання зубів.");
INSERT INTO `wp_postmeta` VALUES("256","116","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("257","116","_edit_lock","1472489925:2");
INSERT INTO `wp_postmeta` VALUES("258","117","_wp_attached_file","2016/08/teraphy.svg");
INSERT INTO `wp_postmeta` VALUES("259","116","_thumbnail_id","117");
INSERT INTO `wp_postmeta` VALUES("260","116","abv_short_meta_value_key","Лікування карієсу. Пломба з німецьких матеріалів.");
INSERT INTO `wp_postmeta` VALUES("261","116","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("262","118","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("263","118","_edit_lock","1472490093:2");
INSERT INTO `wp_postmeta` VALUES("264","119","_wp_attached_file","2016/08/endodontia.svg");
INSERT INTO `wp_postmeta` VALUES("265","118","_thumbnail_id","119");
INSERT INTO `wp_postmeta` VALUES("266","118","abv_short_meta_value_key","Лікування кореневих каналів без болю.");
INSERT INTO `wp_postmeta` VALUES("267","118","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("268","120","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("269","120","_edit_lock","1472490800:2");
INSERT INTO `wp_postmeta` VALUES("270","121","_wp_attached_file","2016/08/ortodontia.svg");
INSERT INTO `wp_postmeta` VALUES("272","120","abv_short_meta_value_key","Протезування зубів будь-якої складності");
INSERT INTO `wp_postmeta` VALUES("273","120","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("274","122","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("275","122","_edit_lock","1472490056:2");
INSERT INTO `wp_postmeta` VALUES("276","122","_thumbnail_id","172");
INSERT INTO `wp_postmeta` VALUES("277","122","abv_short_meta_value_key","Високоякісні брекети з гарантією результату.");
INSERT INTO `wp_postmeta` VALUES("278","122","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("279","123","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("280","123","_edit_lock","1472490140:2");
INSERT INTO `wp_postmeta` VALUES("281","123","_thumbnail_id","174");
INSERT INTO `wp_postmeta` VALUES("282","123","abv_short_meta_value_key","Лікування молочних зубів. Подарунки пацієнтикам");
INSERT INTO `wp_postmeta` VALUES("283","123","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("284","124","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("285","124","_edit_lock","1472490008:2");
INSERT INTO `wp_postmeta` VALUES("287","124","abv_short_meta_value_key","Лікування та попередження захворювань ясен.");
INSERT INTO `wp_postmeta` VALUES("288","124","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("289","125","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("290","125","_edit_lock","1472489958:2");
INSERT INTO `wp_postmeta` VALUES("292","125","abv_short_meta_value_key","Видалення зубів швидко та безболісно.");
INSERT INTO `wp_postmeta` VALUES("293","125","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("294","126","_edit_last","2");
INSERT INTO `wp_postmeta` VALUES("295","126","_edit_lock","1472490078:2");
INSERT INTO `wp_postmeta` VALUES("296","126","_thumbnail_id","173");
INSERT INTO `wp_postmeta` VALUES("297","126","abv_short_meta_value_key","Відновлення втраченого зуба. Усі види зубних імплантів");
INSERT INTO `wp_postmeta` VALUES("298","126","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("394","138","_wp_attached_file","2016/08/cross.svg");
INSERT INTO `wp_postmeta` VALUES("395","139","_wp_attached_file","2016/08/range.png");
INSERT INTO `wp_postmeta` VALUES("396","139","_wp_attachment_metadata","a:4:{s:5:\"width\";i:44;s:6:\"height\";i:44;s:4:\"file\";s:17:\"2016/08/range.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("401","142","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("402","142","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("403","142","_menu_item_object_id","126");
INSERT INTO `wp_postmeta` VALUES("404","142","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("405","142","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("406","142","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("407","142","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("408","142","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("410","143","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("411","143","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("412","143","_menu_item_object_id","125");
INSERT INTO `wp_postmeta` VALUES("413","143","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("414","143","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("415","143","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("416","143","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("417","143","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("419","144","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("420","144","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("421","144","_menu_item_object_id","124");
INSERT INTO `wp_postmeta` VALUES("422","144","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("423","144","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("424","144","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("425","144","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("426","144","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("428","145","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("429","145","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("430","145","_menu_item_object_id","123");
INSERT INTO `wp_postmeta` VALUES("431","145","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("432","145","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("433","145","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("434","145","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("435","145","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("437","146","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("438","146","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("439","146","_menu_item_object_id","122");
INSERT INTO `wp_postmeta` VALUES("440","146","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("441","146","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("442","146","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("443","146","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("444","146","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("446","147","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("447","147","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("448","147","_menu_item_object_id","120");
INSERT INTO `wp_postmeta` VALUES("449","147","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("450","147","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("451","147","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("452","147","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("453","147","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("455","148","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("456","148","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("457","148","_menu_item_object_id","118");
INSERT INTO `wp_postmeta` VALUES("458","148","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("459","148","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("460","148","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("461","148","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("462","148","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("464","149","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("465","149","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("466","149","_menu_item_object_id","116");
INSERT INTO `wp_postmeta` VALUES("467","149","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("468","149","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("469","149","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("470","149","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("471","149","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("473","150","_menu_item_type","post_type");
INSERT INTO `wp_postmeta` VALUES("474","150","_menu_item_menu_item_parent","0");
INSERT INTO `wp_postmeta` VALUES("475","150","_menu_item_object_id","114");
INSERT INTO `wp_postmeta` VALUES("476","150","_menu_item_object","services");
INSERT INTO `wp_postmeta` VALUES("477","150","_menu_item_target","");
INSERT INTO `wp_postmeta` VALUES("478","150","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("479","150","_menu_item_xfn","");
INSERT INTO `wp_postmeta` VALUES("480","150","_menu_item_url","");
INSERT INTO `wp_postmeta` VALUES("482","151","_wp_attached_file","2016/08/arrow.png");
INSERT INTO `wp_postmeta` VALUES("483","151","_wp_attachment_metadata","a:4:{s:5:\"width\";i:19;s:6:\"height\";i:31;s:4:\"file\";s:17:\"2016/08/arrow.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("484","5","abv_stomat_post_type_checkboxes","a:9:{i:126;s:1:\"1\";i:123;s:1:\"1\";i:125;s:1:\"1\";i:114;s:1:\"1\";i:116;s:1:\"1\";i:118;s:1:\"1\";i:120;s:1:\"1\";i:124;s:1:\"1\";i:122;s:1:\"1\";}");
INSERT INTO `wp_postmeta` VALUES("485","157","_wp_attached_file","2016/08/no_photo.png");
INSERT INTO `wp_postmeta` VALUES("486","157","_wp_attachment_metadata","a:4:{s:5:\"width\";i:500;s:6:\"height\";i:362;s:4:\"file\";s:20:\"2016/08/no_photo.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("487","159","_edit_last","1");
INSERT INTO `wp_postmeta` VALUES("488","159","abv_gallery_description_meta_value_key","");
INSERT INTO `wp_postmeta` VALUES("489","159","abv_gallery_images_meta_value_key","160,161,162");
INSERT INTO `wp_postmeta` VALUES("490","159","_yoast_wpseo_content_score","30");
INSERT INTO `wp_postmeta` VALUES("491","159","_edit_lock","1471526349:1");
INSERT INTO `wp_postmeta` VALUES("492","160","_wp_attached_file","2016/08/919_original.png");
INSERT INTO `wp_postmeta` VALUES("493","160","_wp_attachment_metadata","a:4:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:24:\"2016/08/919_original.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("494","161","_wp_attached_file","2016/08/detskaya-stomatologiya-donetsk-nedorogo.jpg");
INSERT INTO `wp_postmeta` VALUES("495","161","_wp_attachment_metadata","a:4:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:51:\"2016/08/detskaya-stomatologiya-donetsk-nedorogo.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:26:\"little girl at the dentist\";s:17:\"created_timestamp\";s:10:\"1352290262\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"68\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:26:\"little girl at the dentist\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("496","162","_wp_attached_file","2016/08/image.jpg");
INSERT INTO `wp_postmeta` VALUES("497","162","_wp_attachment_metadata","a:4:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:17:\"2016/08/image.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("498","126","_yoast_wpseo_focuskw_text_input","зуби, Імплантація зубів, львів, стоматологічна клініка");
INSERT INTO `wp_postmeta` VALUES("499","126","_yoast_wpseo_focuskw","зуби, Імплантація зубів, львів, стоматологічна клініка");
INSERT INTO `wp_postmeta` VALUES("500","126","_yoast_wpseo_title","Імплантація зубів");
INSERT INTO `wp_postmeta` VALUES("501","126","_yoast_wpseo_metadesc","бла бла бла імплантація зубів");
INSERT INTO `wp_postmeta` VALUES("502","126","_yoast_wpseo_linkdex","60");
INSERT INTO `wp_postmeta` VALUES("503","168","_wp_attached_file","2016/08/surgery.svg");
INSERT INTO `wp_postmeta` VALUES("504","125","_thumbnail_id","168");
INSERT INTO `wp_postmeta` VALUES("505","169","_wp_attached_file","2016/08/profilactic-1.svg");
INSERT INTO `wp_postmeta` VALUES("506","114","_thumbnail_id","169");
INSERT INTO `wp_postmeta` VALUES("507","170","_wp_attached_file","2016/08/paradontology.svg");
INSERT INTO `wp_postmeta` VALUES("508","124","_thumbnail_id","170");
INSERT INTO `wp_postmeta` VALUES("509","171","_wp_attached_file","2016/08/ortopedia.svg");
INSERT INTO `wp_postmeta` VALUES("510","120","_thumbnail_id","171");
INSERT INTO `wp_postmeta` VALUES("511","172","_wp_attached_file","2016/08/ortodontia-1.svg");
INSERT INTO `wp_postmeta` VALUES("512","173","_wp_attached_file","2016/08/implant.svg");
INSERT INTO `wp_postmeta` VALUES("513","174","_wp_attached_file","2016/08/child-dental.svg");


DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_posts` VALUES("1","1","2016-08-03 15:16:18","2016-08-03 12:16:18","1Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, тоді почніть писати!","Привіт світ!","","trash","open","open","","hello-world__trashed","","","2016-08-03 18:39:57","2016-08-03 15:39:57","","0","http://stomat/?p=1","0","post","","1");
INSERT INTO `wp_posts` VALUES("2","1","2016-08-03 15:16:18","2016-08-03 12:16:18","Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:

<blockquote>Привіт! Вдень я кур\'єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>

...або цього:

<blockquote>Компанія \"Штучки АБВ\" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>

Як новому користувачу WordPress, вам слід перейти до <a href=\"http://stomat/wp-admin/\">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!","Зразок сторінки","","trash","closed","open","","sample-page__trashed","","","2016-08-03 18:27:10","2016-08-03 15:27:10","","0","http://stomat/?page_id=2","0","page","","0");
INSERT INTO `wp_posts` VALUES("4","1","2016-08-03 18:27:10","2016-08-03 15:27:10","Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:

<blockquote>Привіт! Вдень я кур\'єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>

...або цього:

<blockquote>Компанія \"Штучки АБВ\" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>

Як новому користувачу WordPress, вам слід перейти до <a href=\"http://stomat/wp-admin/\">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!","Зразок сторінки","","inherit","closed","closed","","2-revision-v1","","","2016-08-03 18:27:10","2016-08-03 15:27:10","","2","http://stomat/2-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("5","1","2016-08-03 18:27:28","2016-08-03 15:27:28","","Головна","","publish","closed","closed","","golovna","","","2016-08-17 16:48:27","2016-08-17 13:48:27","","0","http://stomat/?page_id=5","0","page","","0");
INSERT INTO `wp_posts` VALUES("6","1","2016-08-03 18:27:28","2016-08-03 15:27:28","","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-03 18:27:28","2016-08-03 15:27:28","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("9","1","2016-08-03 18:29:48","2016-08-03 15:29:48","","Про клініку","","trash","closed","closed","","pro-kliniku__trashed","","","2016-08-03 18:30:29","2016-08-03 15:30:29","","0","http://stomat/?page_id=9","0","page","","0");
INSERT INTO `wp_posts` VALUES("10","1","2016-08-03 18:29:48","2016-08-03 15:29:48","","Про клініку","","inherit","closed","closed","","9-revision-v1","","","2016-08-03 18:29:48","2016-08-03 15:29:48","","9","http://stomat/9-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("11","1","2016-08-03 18:35:45","2016-08-03 15:35:45","","Про клініку","","publish","closed","closed","","pro-kliniku","","","2016-08-03 18:35:45","2016-08-03 15:35:45","","0","http://stomat/?p=11","1","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("12","1","2016-08-03 18:35:46","2016-08-03 15:35:46","","Лікування","","publish","closed","closed","","likuvannya","","","2016-08-03 18:35:46","2016-08-03 15:35:46","","0","http://stomat/?p=12","2","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("13","1","2016-08-03 18:35:46","2016-08-03 15:35:46","","Прейскурант","","publish","closed","closed","","prejskurant","","","2016-08-03 18:35:46","2016-08-03 15:35:46","","0","http://stomat/?p=13","3","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("14","1","2016-08-03 18:35:46","2016-08-03 15:35:46","","Фотогалерея","","publish","closed","closed","","fotogalereya","","","2016-08-03 18:35:46","2016-08-03 15:35:46","","0","http://stomat/?p=14","4","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("15","1","2016-08-03 18:35:46","2016-08-03 15:35:46","","Контакти","","publish","closed","closed","","kontakty","","","2016-08-03 18:35:46","2016-08-03 15:35:46","","0","http://stomat/?p=15","5","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("16","1","2016-08-03 18:39:57","2016-08-03 15:39:57","Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, тоді почніть писати!","Привіт світ!","","inherit","closed","closed","","1-revision-v1","","","2016-08-03 18:39:57","2016-08-03 15:39:57","","1","http://stomat/1-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("17","1","2016-08-03 18:42:49","2016-08-03 15:42:49","<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка","Наші переваги","","trash","open","open","","nashi-perevagy__trashed","","","2016-08-10 16:50:12","2016-08-10 13:50:12","","0","http://stomat/?p=17","0","post","","0");
INSERT INTO `wp_posts` VALUES("18","1","2016-08-03 18:42:49","2016-08-03 15:42:49","","Наші переваги","","inherit","closed","closed","","17-revision-v1","","","2016-08-03 18:42:49","2016-08-03 15:42:49","","17","http://stomat/17-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("20","1","2016-08-03 18:44:22","2016-08-03 15:44:22","<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка","Наші переваги","","inherit","closed","closed","","17-autosave-v1","","","2016-08-03 18:44:22","2016-08-03 15:44:22","","17","http://stomat/17-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("21","1","2016-08-03 18:44:27","2016-08-03 15:44:27","<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка

<img class=\"alignnone size-full wp-image-19\" src=\"http://stomat/wp-content/uploads/2016/08/perevaga1.png\" alt=\"perevaga1\" width=\"136\" height=\"135\" /> Безкоштовна діагностіка","Наші переваги","","inherit","closed","closed","","17-revision-v1","","","2016-08-03 18:44:27","2016-08-03 15:44:27","","17","http://stomat/17-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("22","1","2016-08-04 03:34:48","2016-08-04 00:34:48","","Слайдер зверху","","publish","closed","closed","","verhnya-galereya","","","2016-08-10 17:03:19","2016-08-10 14:03:19","","0","http://stomat/?post_type=gallery&#038;p=22","0","gallery","","0");
INSERT INTO `wp_posts` VALUES("24","1","2016-08-04 03:52:19","2016-08-04 00:52:19","","Слайдер знизу","","publish","closed","closed","","galereya-znyzu","","","2016-08-10 17:03:47","2016-08-10 14:03:47","","0","http://stomat/?post_type=gallery&#038;p=24","0","gallery","","0");
INSERT INTO `wp_posts` VALUES("26","1","2016-08-04 03:54:27","2016-08-04 00:54:27","[abv_gallery id=\"22\"]

[abv_gallery id=\"24\"]","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 03:54:27","2016-08-04 00:54:27","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("27","1","2016-08-10 16:47:02","2016-08-10 13:47:02","<div class=\"top_slider\"></div>
[contact-form-7 id=\"33\"]","Головна","","inherit","closed","closed","","5-autosave-v1","","","2016-08-10 16:47:02","2016-08-10 13:47:02","","5","http://stomat/5-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("28","1","2016-08-04 04:00:19","2016-08-04 01:00:19","&lt;div id=\"top_slider\"&gt;

[abv_gallery id=\"22\"]

&lt;/div&gt;

&lt;div id=\"top_slider\"&gt;

[abv_gallery id=\"24\"]

&lt;/div&gt;","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 04:00:19","2016-08-04 01:00:19","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("29","1","2016-08-04 04:02:01","2016-08-04 01:02:01","<div id=\"top_slider\">

[abv_gallery id=\"22\"]

</div>

<div id=\"top_slider\">

[abv_gallery id=\"24\"]

</div>","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 04:02:01","2016-08-04 01:02:01","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("30","1","2016-08-04 04:03:27","2016-08-04 01:03:27","<div id=\"top_slider\">[abv_gallery id=\"22\"]</div>



<div id=\"top_slider\">

[abv_gallery id=\"24\"]

</div>","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 04:03:27","2016-08-04 01:03:27","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("31","1","2016-08-04 04:27:59","2016-08-04 01:27:59","<div id=\"top_slider\">[abv_gallery id=\"22\"]</div>
<div id=\"bottom_slider\">[abv_gallery id=\"24\"]</div>","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 04:27:59","2016-08-04 01:27:59","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("32","1","2016-08-04 04:47:11","2016-08-04 01:47:11","<div class=\"top_slider\">[abv_gallery id=\"22\"]</div>
<div class=\"bottom_slider\">[abv_gallery id=\"24\"]</div>","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 04:47:11","2016-08-04 01:47:11","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("33","1","2016-08-04 09:19:43","2016-08-04 06:19:43","<div class=\"wrap\">
          <label for=\"your-name\">Ім’я та прізвище <span class=\"star\">*</span></label>
          [text* your-name id:your-name]
</div>
<div class=\"wrap\">
	<label for=\"tel-813\">Контактний телефон <span class=\"star\">*</span></label>
        [text* tel-813 id:tel-813]
</div>
<div class=\"wrap\">
        [select* menu-312 id:reason \"Причина звернення\" \"Лікуватись\" \"Просто так\"]
</div>
<div class=\"wrap\">
	<label for=\"your-message\">Додаткове питання, інформація</label>
        [text your-message id:your-message]
</div>
<div class=\"wrap\">
        [submit \"Надіслати\"]
</div>
М. Р. С СТОМАТОЛОГІЯ \"[your-subject]\"

Від: [your-name] <[your-email]>
Тема: [your-subject]

Текст повідомлення:
[your-message]

--
Це повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)
alex110@list.ru





М. Р. С СТОМАТОЛОГІЯ \"[your-subject]\"
М. Р. С СТОМАТОЛОГІЯ <wordpress@stomat>
Текст повідомлення:
[your-message]

--
Це повідомлення було відправлено з сайту М. Р. С СТОМАТОЛОГІЯ (http://stomat)
[your-email]
Reply-To: alex110@list.ru



Thank you for your message. It has been sent.
There was an error trying to send your message. Please try again later.
One or more fields have an error. Please check and try again.
There was an error trying to send your message. Please try again later.
You must accept the terms and conditions before sending your message.
The field is required.
The field is too long.
The field is too short.
The date format is incorrect.
The date is before the earliest one allowed.
The date is after the latest one allowed.
There was an unknown error uploading the file.
You are not allowed to upload files of this type.
The file is too big.
There was an error uploading the file.
The number format is invalid.
The number is smaller than the minimum allowed.
The number is larger than the maximum allowed.
The answer to the quiz is incorrect.
Введено невірний контрольний код.
The e-mail address entered is invalid.
The URL is invalid.
The telephone number is invalid.","Записатись на безкоштовну діагностику","","publish","closed","closed","","kontaktna-forma-1","","","2016-08-11 07:06:58","2016-08-11 04:06:58","","0","http://stomat/?post_type=wpcf7_contact_form&#038;p=33","0","wpcf7_contact_form","","0");
INSERT INTO `wp_posts` VALUES("34","1","2016-08-04 09:30:43","2016-08-04 06:30:43","<div class=\"top_slider\">[abv_gallery id=\"22\"]</div>
<div class=\"bottom_slider\">[abv_gallery id=\"24\"]</div>
[contact-form-7 id=\"33\"]","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-04 09:30:43","2016-08-04 06:30:43","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("35","1","2016-08-04 10:40:13","2016-08-04 07:40:13","М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом.","Про клініку","","trash","open","open","","pro-kliniku__trashed","","","2016-08-10 16:50:12","2016-08-10 13:50:12","","0","http://stomat/?p=35","0","post","","0");
INSERT INTO `wp_posts` VALUES("36","1","2016-08-04 10:40:13","2016-08-04 07:40:13","М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом. М. Р. С. Стоматологія - це результат, підтвержений досвідом.","Про клініку","","inherit","closed","closed","","35-revision-v1","","","2016-08-04 10:40:13","2016-08-04 07:40:13","","35","http://stomat/35-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("37","1","2016-08-04 10:43:41","2016-08-04 07:43:41","","Лікування","","trash","open","open","","__trashed","","","2016-08-10 16:50:12","2016-08-10 13:50:12","","0","http://stomat/?p=37","0","post","","0");
INSERT INTO `wp_posts` VALUES("38","1","2016-08-04 16:25:27","2016-08-04 13:25:27","","Еуіен","","publish","closed","closed","","euien","","","2016-08-04 16:55:00","2016-08-04 13:55:00","","0","http://stomat/?post_type=test&#038;p=38","0","test","","0");
INSERT INTO `wp_posts` VALUES("39","1","2016-08-10 14:12:05","2016-08-10 11:12:05","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i &lt; locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","publish","closed","closed","","mapa","","","2016-08-29 20:36:44","2016-08-29 17:36:44","","0","http://stomat/?page_id=39","0","page","","0");
INSERT INTO `wp_posts` VALUES("40","1","2016-08-10 14:12:05","2016-08-10 11:12:05","<script>
	google.maps.event.addDomListener(window, \'load\', init);
	var map;
	function init() {
		var mapOptions = {
			center: new google.maps.LatLng(49.843961, 24.021967),
			zoom: 16,
			zoomControl: false,
			disableDoubleClickZoom: true,
			mapTypeControl: false,
			scaleControl: false,
			scrollwheel: true,
			panControl: true,
			streetViewControl: false,
			draggable: true,
			overviewMapControl: true,
			overviewMapControlOptions: {
				opened: false,
			},
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			styles: [{
				\"featureType\": \"landscape\",
				\"elementType\": \"labels\",
				\"stylers\": [{\"visibility\": \"off\"}]
			}, {
				\"featureType\": \"transit\",
				\"elementType\": \"labels\",
				\"stylers\": [{\"visibility\": \"off\"}]
			}, {
				\"featureType\": \"poi\",
				\"elementType\": \"labels\",
				\"stylers\": [{\"visibility\": \"off\"}]
			}, {
				\"featureType\": \"water\",
				\"elementType\": \"labels\",
				\"stylers\": [{\"visibility\": \"off\"}]
			}, {
				\"featureType\": \"road\",
				\"elementType\": \"labels.icon\",
				\"stylers\": [{\"visibility\": \"off\"}]
			}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
				\"featureType\": \"road\",
				\"elementType\": \"labels.text.fill\",
				\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
			}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
		}
		var mapElement = document.getElementById(\'map\');
		var map = new google.maps.Map(mapElement, mapOptions);
		var locations = [
			[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
				\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']
		];
		for (i = 0; i < locations.length; i++) {
			if (locations[i][1] == \'undefined\') {
				description = \'\';
			} else {
				description = locations[i][1];
			}
			if (locations[i][2] == \'undefined\') {
				telephone = \'\';
			} else {
				telephone = locations[i][2];
			}
			if (locations[i][3] == \'undefined\') {
				email = \'\';
			} else {
				email = locations[i][3];
			}
			if (locations[i][4] == \'undefined\') {
				web = \'\';
			} else {
				web = locations[i][4];
			}
			if (locations[i][7] == \'undefined\') {
				markericon = \'\';
			} else {
				markericon = locations[i][7];
			}
			marker = new google.maps.Marker({
				icon: markericon,
				position: new google.maps.LatLng(locations[i][5], locations[i][6]),
				map: map,
				title: locations[i][0],
				desc: description,
				tel: telephone,
				email: email,
				web: web
			});
			link = \'\';
		}

	}
</script>","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-10 14:12:05","2016-08-10 11:12:05","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("41","1","2016-08-10 14:17:43","2016-08-10 11:17:43","79017 м.Львів
вул. Зелена 46/2

032 275 43 92
067 766 50 41

Пн – Сб 9:00 – 20:00
без перерви

Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160
Тролейбус:11, 24

Є парковочні місця

<a href=\"#\"><img src=\"/wp-content/uploads/2016/08/fb.svg\" alt=\"\" /></a> <a href=\"#\"><img src=\"/wp-content/uploads/2016/08/vk.svg\" alt=\"\" /></a>","Контакти","","publish","closed","closed","","kontakty","","","2016-08-10 22:13:17","2016-08-10 19:13:17","","0","http://stomat/?page_id=41","0","page","","0");
INSERT INTO `wp_posts` VALUES("42","1","2016-08-10 14:17:43","2016-08-10 11:17:43","								<p>
									79017 м.Львів <br>
									вул. Зелена 46/2
								</p>

								<p>
									032 275 43 92 <br>
									067 766 50 41
								</p>

								<p>
									Пн – Сб 9:00 – 20:00 <br>
									без перерви
								</p>

								<p>
									Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br>
									Тролейбус:11, 24
								</p>

								<p>
									Є парковочні місця
								</p>

								<p>
									<a href=\"#\"><img src=\"<?php echo bloginfo(\'template_directory\') ?>/images/fb.svg\" alt=\"\"></a>
									<a href=\"#\"><img src=\"<?php echo bloginfo(\'template_directory\') ?>/images/vk.svg\" alt=\"\"></a>
								</p>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:17:43","2016-08-10 11:17:43","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("43","1","2016-08-10 14:18:56","2016-08-10 11:18:56","<pre>&lt;p&gt;
   79017 м.Львів &lt;br&gt;
   вул. Зелена 46/2
&lt;/p&gt;

&lt;p&gt;
   032 275 43 92 &lt;br&gt;
   067 766 50 41
&lt;/p&gt;

&lt;p&gt;
   Пн – Сб 9:00 – 20:00 &lt;br&gt;
   без перерви
&lt;/p&gt;

&lt;p&gt;
   Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  &lt;br&gt;
   Тролейбус:11, 24
&lt;/p&gt;

&lt;p&gt;
   Є парковочні місця
&lt;/p&gt;

&lt;p&gt;
   &lt;a href=\"#\"&gt;&lt;img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg\" alt=\"\"&gt;&lt;/a&gt;
   &lt;a href=\"#\"&gt;&lt;img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg\" alt=\"\"&gt;&lt;/a&gt;
&lt;/p&gt;</pre>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:18:56","2016-08-10 11:18:56","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("44","1","2016-08-10 14:19:27","2016-08-10 11:19:27","								<p>
									79017 м.Львів <br>
									вул. Зелена 46/2
								</p>

								<p>
									032 275 43 92 <br>
									067 766 50 41
								</p>

								<p>
									Пн – Сб 9:00 – 20:00 <br>
									без перерви
								</p>

								<p>
									Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br>
									Тролейбус:11, 24
								</p>

								<p>
									Є парковочні місця
								</p>

								<p>
									<a href=\"#\"><img src=\"<?php echo bloginfo(\'template_directory\') ?>/images/fb.svg\" alt=\"\"></a>
									<a href=\"#\"><img src=\"<?php echo bloginfo(\'template_directory\') ?>/images/vk.svg\" alt=\"\"></a>
								</p>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:19:27","2016-08-10 11:19:27","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("45","1","2016-08-10 14:21:18","2016-08-10 11:21:18","<p>79017 м.Львів <br /> вул. Зелена 46/2</p><p>032 275 43 92 <br /> 067 766 50 41</p><p>Пн – Сб 9:00 – 20:00 <br /> без перерви</p><p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br /> Тролейбус:11, 24</p><p>Є парковочні місця</p><p><a href=\"#\"><img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg\" alt=\"\" /></a> <a href=\"#\"><img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg\" alt=\"\" /></a></p>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:21:18","2016-08-10 11:21:18","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("48","1","2016-08-10 14:23:59","2016-08-10 11:23:59","","fb","","inherit","open","closed","","fb","","","2016-08-10 14:23:59","2016-08-10 11:23:59","","0","http://stomat/wp-content/uploads/2016/08/fb.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("49","1","2016-08-10 14:23:59","2016-08-10 11:23:59","","vk","","inherit","open","closed","","vk","","","2016-08-10 14:23:59","2016-08-10 11:23:59","","0","http://stomat/wp-content/uploads/2016/08/vk.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("50","1","2016-08-10 14:25:21","2016-08-10 11:25:21","<p>79017 м.Львів <br />
 вул. Зелена 46/2</p>
<p>032 275 43 92 <br />
 067 766 50 41</p>
<p>Пн – Сб 9:00 – 20:00 <br />
 без перерви</p>
<p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br />
 Тролейбус:11, 24</p>
<p>Є парковочні місця</p>
<p><a href=\"#\"><img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/fb.svg\" alt=\"\" /></a> <a href=\"#\"><img src=\"&lt;?php echo bloginfo(\'template_directory\') ?&gt;/images/vk.svg\" alt=\"\" /></a></p>","Контакти","","inherit","closed","closed","","41-autosave-v1","","","2016-08-10 14:25:21","2016-08-10 11:25:21","","41","http://stomat/41-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("51","1","2016-08-10 14:26:22","2016-08-10 11:26:22","<p>79017 м.Львів <br />
 вул. Зелена 46/2</p>
<p>032 275 43 92 <br />
 067 766 50 41</p>
<p>Пн – Сб 9:00 – 20:00 <br />
 без перерви</p>
<p>Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160  <br />
 Тролейбус:11, 24</p>
<p>Є парковочні місця</p>
<p><a href=\"#\"><img src=\"/wp-content/uploads/2016/08/fb.svg\" alt=\"\" /></a> <a href=\"#\"><img src=\"/wp-content/uploads/2016/08/vk.svg\" alt=\"\" /></a></p>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:26:22","2016-08-10 11:26:22","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("52","1","2016-08-10 14:31:16","2016-08-10 11:31:16","Послуга|Ціна, грн
Професійна гігієна|350.01
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00
Пломба1|300.00
Забрати зуб|400.00","Послуга та ціна","","publish","closed","closed","","tsiny","","","2016-08-29 19:48:34","2016-08-29 16:48:34","","0","http://stomat/?page_id=52","0","page","","0");
INSERT INTO `wp_posts` VALUES("53","1","2016-08-10 14:31:16","2016-08-10 11:31:16","<p>Послуга|Ціна, грн</p>","Ціни","","inherit","closed","closed","","52-revision-v1","","","2016-08-10 14:31:16","2016-08-10 11:31:16","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("54","1","2016-08-10 14:32:27","2016-08-10 11:32:27","79017 м.Львів
вул. Зелена 46/2

032 275 43 92
067 766 50 41

Пн – Сб 9:00 – 20:00
без перерви

Маршрутні автобуси: 15, 27, 37, 39, 43, 44, 46, 54, 160
Тролейбус:11, 24

Є парковочні місця

<a href=\"#\"><img src=\"/wp-content/uploads/2016/08/fb.svg\" alt=\"\" /></a> <a href=\"#\"><img src=\"/wp-content/uploads/2016/08/vk.svg\" alt=\"\" /></a>","Контакти","","inherit","closed","closed","","41-revision-v1","","","2016-08-10 14:32:27","2016-08-10 11:32:27","","41","http://stomat/41-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("55","1","2016-08-10 14:35:24","2016-08-10 11:35:24","Послуга|Ціна, грн
<pre>Професійна гігієна|350.00</pre>
<pre>Відбілювання|</pre>","Ціни","","inherit","closed","closed","","52-autosave-v1","","","2016-08-10 14:35:24","2016-08-10 11:35:24","","52","http://stomat/52-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("56","1","2016-08-10 14:37:17","2016-08-10 11:37:17","Послуга|Ціна, грн
Професійна гігієна|350.00
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00","Ціни","","inherit","closed","closed","","52-revision-v1","","","2016-08-10 14:37:17","2016-08-10 11:37:17","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("57","1","2016-08-10 14:41:30","2016-08-10 11:41:30","Послуга|Ціна, грн
Професійна гігієна|350.00
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00","Послуга та ціна","","inherit","closed","closed","","52-revision-v1","","","2016-08-10 14:41:30","2016-08-10 11:41:30","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("58","1","2016-08-10 14:42:28","2016-08-10 11:42:28","Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані платежі. У нас Ви можете здійснити оплату карткою.","Прейскурант","","publish","closed","closed","","prejskurant","","","2016-08-10 22:09:55","2016-08-10 19:09:55","","0","http://stomat/?page_id=58","0","page","","0");
INSERT INTO `wp_posts` VALUES("59","1","2016-08-10 14:42:28","2016-08-10 11:42:28","<pre>Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік
необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані
платежі. У нас Ви можете здійснити оплату карткою.</pre>","Прейскурант","","inherit","closed","closed","","58-revision-v1","","","2016-08-10 14:42:28","2016-08-10 11:42:28","","58","http://stomat/58-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("60","1","2016-08-10 14:52:04","2016-08-10 11:52:04","<ul>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<p class=\"words\">Безкоштовна діагностика</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /></div>
<p class=\"words\">Комплексне лікування усієї родини</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /></div>
<p class=\"words\">Робота зі страховими компаніями</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /></div>
<p class=\"words\">Надання екстреної допомоги у день звернення</p>
</li>
</ul>



","Наші переваги","","publish","closed","closed","","nashi-perevagy","","","2016-08-17 13:56:37","2016-08-17 10:56:37","","0","http://stomat/?page_id=60","0","page","","0");
INSERT INTO `wp_posts` VALUES("61","1","2016-08-10 14:45:42","2016-08-10 11:45:42","","free diagnistic","","inherit","open","closed","","free-diagnistic","","","2016-08-10 14:47:31","2016-08-10 11:47:31","","60","http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("62","1","2016-08-10 14:46:04","2016-08-10 11:46:04","","complex treatment","","inherit","open","closed","","complex-treatment","","","2016-08-10 14:49:19","2016-08-10 11:49:19","","60","http://stomat/wp-content/uploads/2016/08/complex-treatment.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("63","1","2016-08-10 14:46:22","2016-08-10 11:46:22","","ensurence","","inherit","open","closed","","ensurence","","","2016-08-10 14:50:17","2016-08-10 11:50:17","","60","http://stomat/wp-content/uploads/2016/08/ensurence.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("64","1","2016-08-10 14:46:37","2016-08-10 11:46:37","","extra help","","inherit","open","closed","","extra-help","","","2016-08-10 14:51:35","2016-08-10 11:51:35","","60","http://stomat/wp-content/uploads/2016/08/extra-help.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("65","1","2016-08-10 14:52:04","2016-08-10 11:52:04","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" />
Безкоштовна діагностика
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />
Комплексне лікування усієї родини
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />
Робота зі страховими компаніями

<img class=\"alignnone wp-image-64\" src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />
Надання екстреної допомоги у день звернення","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-10 14:52:04","2016-08-10 11:52:04","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("66","1","2016-08-10 14:58:35","2016-08-10 11:58:35","«М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.","Про клініку","","publish","closed","closed","","pro-kliniku","","","2016-08-10 22:10:27","2016-08-10 19:10:27","","0","http://stomat/?page_id=66","0","page","","0");
INSERT INTO `wp_posts` VALUES("67","1","2016-08-10 14:58:35","2016-08-10 11:58:35","М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до 
стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.","Про клініку","","inherit","closed","closed","","66-revision-v1","","","2016-08-10 14:58:35","2016-08-10 11:58:35","","66","http://stomat/66-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("68","1","2016-08-10 15:00:44","2016-08-10 12:00:44","","slider_girls","","inherit","open","closed","","slider_girls","","","2016-08-10 15:00:44","2016-08-10 12:00:44","","0","http://stomat/wp-content/uploads/2016/08/slider_girls.jpg","0","attachment","image/jpeg","0");
INSERT INTO `wp_posts` VALUES("69","1","2016-08-10 15:01:15","2016-08-10 12:01:15","","slider_bottom1","","inherit","open","closed","","slider_bottom1","","","2016-08-10 15:01:15","2016-08-10 12:01:15","","0","http://stomat/wp-content/uploads/2016/08/slider_bottom1.png","0","attachment","image/png","0");
INSERT INTO `wp_posts` VALUES("70","1","2016-08-10 16:38:20","2016-08-10 13:38:20","Усі види стоматологічних послуг. Детальна діагностика. План лікування з переліком необхідних процедур, їх вартістю та термінами.","Лікування","","publish","closed","closed","","likuvannya","","","2016-08-10 16:38:20","2016-08-10 13:38:20","","0","http://stomat/?page_id=70","0","page","","0");
INSERT INTO `wp_posts` VALUES("71","1","2016-08-10 16:38:20","2016-08-10 13:38:20","Усі види стоматологічних послуг. Детальна діагностика. План лікування з переліком необхідних процедур, їх вартістю та термінами.","Лікування","","inherit","closed","closed","","70-revision-v1","","","2016-08-10 16:38:20","2016-08-10 13:38:20","","70","http://stomat/70-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("72","1","2016-08-10 16:41:26","2016-08-10 13:41:26","Найвища цінність - довіра пацієнта. Щодня ми вдосконалюємось,щоб виправдати цю довіру. Майже 85 % наших пацієнтів звертаються до нас за рекомендацією знайомих чи друзів.","Фотогалерея","","publish","closed","closed","","fotogalereya","","","2016-08-10 16:41:26","2016-08-10 13:41:26","","0","http://stomat/?page_id=72","0","page","","0");
INSERT INTO `wp_posts` VALUES("73","1","2016-08-10 16:41:26","2016-08-10 13:41:26","Найвища цінність - довіра пацієнта. Щодня ми вдосконалюємось,щоб виправдати цю довіру. Майже 85 % наших пацієнтів звертаються до нас за рекомендацією знайомих чи друзів.","Фотогалерея","","inherit","closed","closed","","72-revision-v1","","","2016-08-10 16:41:26","2016-08-10 13:41:26","","72","http://stomat/72-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("74","1","2016-08-10 16:46:26","2016-08-10 13:46:26","","logo","","inherit","open","closed","","logo","","","2016-08-10 16:46:26","2016-08-10 13:46:26","","5","http://stomat/wp-content/uploads/2016/08/logo.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("75","1","2016-08-10 16:47:17","2016-08-10 13:47:17","","Головна","","inherit","closed","closed","","5-revision-v1","","","2016-08-10 16:47:17","2016-08-10 13:47:17","","5","http://stomat/5-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("76","1","2016-08-10 16:50:12","2016-08-10 13:50:12","","Лікування","","inherit","closed","closed","","37-revision-v1","","","2016-08-10 16:50:12","2016-08-10 13:50:12","","37","http://stomat/37-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("77","1","2016-08-10 16:53:08","2016-08-10 13:53:08","<script>// <![CDATA[
google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
	var mapOptions = {
		center: new google.maps.LatLng(49.843961, 24.021967),
		zoom: 16,
		zoomControl: false,
		disableDoubleClickZoom: true,
		mapTypeControl: false,
		scaleControl: false,
		scrollwheel: true,
		panControl: true,
		streetViewControl: false,
		draggable: true,
		overviewMapControl: true,
		overviewMapControlOptions: {
			opened: false,
		},
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			\"featureType\": \"landscape\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"transit\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"poi\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"water\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.icon\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.text.fill\",
			\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
		}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
	}
	var mapElement = document.getElementById(\'map\');
	var map = new google.maps.Map(mapElement, mapOptions);
	var locations = [
		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']
	];
	for (i = 0; i < locations.length; i++) {
		if (locations[i][1] == \'undefined\') {
			description = \'\';
		} else {
			description = locations[i][1];
		}
		if (locations[i][2] == \'undefined\') {
			telephone = \'\';
		} else {
			telephone = locations[i][2];
		}
		if (locations[i][3] == \'undefined\') {
			email = \'\';
		} else {
			email = locations[i][3];
		}
		if (locations[i][4] == \'undefined\') {
			web = \'\';
		} else {
			web = locations[i][4];
		}
		if (locations[i][7] == \'undefined\') {
			markericon = \'\';
		} else {
			markericon = locations[i][7];
		}
		marker = new google.maps.Marker({
			icon: markericon,
			position: new google.maps.LatLng(locations[i][5], locations[i][6]),
			map: map,
			title: locations[i][0],
			desc: description,
			tel: telephone,
			email: email,
			web: web
		});
		link = \'\';
	}

}
// ]]></script>","Мапа","","inherit","closed","closed","","39-autosave-v1","","","2016-08-10 16:53:08","2016-08-10 13:53:08","","39","http://stomat/39-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("78","1","2016-08-10 16:53:42","2016-08-10 13:53:42","<script>
google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
	var mapOptions = {
		center: new google.maps.LatLng(49.843961, 24.021967),
		zoom: 16,
		zoomControl: false,
		disableDoubleClickZoom: true,
		mapTypeControl: false,
		scaleControl: false,
		scrollwheel: true,
		panControl: true,
		streetViewControl: false,
		draggable: true,
		overviewMapControl: true,
		overviewMapControlOptions: {
			opened: false,
		},
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			\"featureType\": \"landscape\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"transit\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"poi\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"water\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.icon\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.text.fill\",
			\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
		}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
	}
	var mapElement = document.getElementById(\'map\');
	var map = new google.maps.Map(mapElement, mapOptions);
	var locations = [
		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']
	];
	for (i = 0; i < locations.length; i++) {
		if (locations[i][1] == \'undefined\') {
			description = \'\';
		} else {
			description = locations[i][1];
		}
		if (locations[i][2] == \'undefined\') {
			telephone = \'\';
		} else {
			telephone = locations[i][2];
		}
		if (locations[i][3] == \'undefined\') {
			email = \'\';
		} else {
			email = locations[i][3];
		}
		if (locations[i][4] == \'undefined\') {
			web = \'\';
		} else {
			web = locations[i][4];
		}
		if (locations[i][7] == \'undefined\') {
			markericon = \'\';
		} else {
			markericon = locations[i][7];
		}
		marker = new google.maps.Marker({
			icon: markericon,
			position: new google.maps.LatLng(locations[i][5], locations[i][6]),
			map: map,
			title: locations[i][0],
			desc: description,
			tel: telephone,
			email: email,
			web: web
		});
		link = \'\';
	}

}
</script>","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-10 16:53:42","2016-08-10 13:53:42","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("79","1","2016-08-10 16:56:46","2016-08-10 13:56:46","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
	var mapOptions = {
		center: new google.maps.LatLng(49.843961, 24.021967),
		zoom: 16,
		zoomControl: false,
		disableDoubleClickZoom: true,
		mapTypeControl: false,
		scaleControl: false,
		scrollwheel: true,
		panControl: true,
		streetViewControl: false,
		draggable: true,
		overviewMapControl: true,
		overviewMapControlOptions: {
			opened: false,
		},
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			\"featureType\": \"landscape\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"transit\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"poi\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"water\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.icon\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.text.fill\",
			\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
		}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
	}
	var mapElement = document.getElementById(\'map\');
	var map = new google.maps.Map(mapElement, mapOptions);
	var locations = [
		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
			\'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg\']
	];
	for (i = 0; i < locations.length; i++) {
		if (locations[i][1] == \'undefined\') {
			description = \'\';
		} else {
			description = locations[i][1];
		}
		if (locations[i][2] == \'undefined\') {
			telephone = \'\';
		} else {
			telephone = locations[i][2];
		}
		if (locations[i][3] == \'undefined\') {
			email = \'\';
		} else {
			email = locations[i][3];
		}
		if (locations[i][4] == \'undefined\') {
			web = \'\';
		} else {
			web = locations[i][4];
		}
		if (locations[i][7] == \'undefined\') {
			markericon = \'\';
		} else {
			markericon = locations[i][7];
		}
		marker = new google.maps.Marker({
			icon: markericon,
			position: new google.maps.LatLng(locations[i][5], locations[i][6]),
			map: map,
			title: locations[i][0],
			desc: description,
			tel: telephone,
			email: email,
			web: web
		});
		link = \'\';
	}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-10 16:56:46","2016-08-10 13:56:46","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("80","1","2016-08-10 16:57:24","2016-08-10 13:57:24","","pointer","","inherit","open","closed","","pointer","","","2016-08-10 16:57:24","2016-08-10 13:57:24","","0","http://stomat/wp-content/uploads/2016/08/pointer.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("81","1","2016-08-10 16:58:18","2016-08-10 13:58:18","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
	var mapOptions = {
		center: new google.maps.LatLng(49.843961, 24.021967),
		zoom: 16,
		zoomControl: false,
		disableDoubleClickZoom: true,
		mapTypeControl: false,
		scaleControl: false,
		scrollwheel: true,
		panControl: true,
		streetViewControl: false,
		draggable: true,
		overviewMapControl: true,
		overviewMapControlOptions: {
			opened: false,
		},
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			\"featureType\": \"landscape\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"transit\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"poi\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"water\",
			\"elementType\": \"labels\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.icon\",
			\"stylers\": [{\"visibility\": \"off\"}]
		}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
			\"featureType\": \"road\",
			\"elementType\": \"labels.text.fill\",
			\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
		}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
	}
	var mapElement = document.getElementById(\'map\');
	var map = new google.maps.Map(mapElement, mapOptions);
	var locations = [
		[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
			\'/wp-content/uploads/2016/08/pointer.svg\']
	];
	for (i = 0; i < locations.length; i++) {
		if (locations[i][1] == \'undefined\') {
			description = \'\';
		} else {
			description = locations[i][1];
		}
		if (locations[i][2] == \'undefined\') {
			telephone = \'\';
		} else {
			telephone = locations[i][2];
		}
		if (locations[i][3] == \'undefined\') {
			email = \'\';
		} else {
			email = locations[i][3];
		}
		if (locations[i][4] == \'undefined\') {
			web = \'\';
		} else {
			web = locations[i][4];
		}
		if (locations[i][7] == \'undefined\') {
			markericon = \'\';
		} else {
			markericon = locations[i][7];
		}
		marker = new google.maps.Marker({
			icon: markericon,
			position: new google.maps.LatLng(locations[i][5], locations[i][6]),
			map: map,
			title: locations[i][0],
			desc: description,
			tel: telephone,
			email: email,
			web: web
		});
		link = \'\';
	}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-10 16:58:18","2016-08-10 13:58:18","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("82","1","2016-08-10 16:59:49","2016-08-10 13:59:49","Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік
необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані
платежі. У нас Ви можете здійснити оплату карткою.","Прейскурант","","inherit","closed","closed","","58-revision-v1","","","2016-08-10 16:59:49","2016-08-10 13:59:49","","58","http://stomat/58-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("83","1","2016-08-10 17:15:26","2016-08-10 14:15:26","","Про клініку","","publish","closed","closed","","pro-kliniku-2","","","2016-08-14 11:56:16","2016-08-14 08:56:17","","0","http://stomat/?p=83","1","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("84","1","2016-08-10 17:15:26","2016-08-10 14:15:26","","Лікування","","publish","closed","closed","","likuvannya-2","","","2016-08-14 11:56:17","2016-08-14 08:56:17","","0","http://stomat/?p=84","2","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("85","1","2016-08-10 17:15:27","2016-08-10 14:15:27","","Прейскурант","","publish","closed","closed","","prejskurant-2","","","2016-08-14 11:56:17","2016-08-14 08:56:17","","0","http://stomat/?p=85","3","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("86","1","2016-08-10 17:15:41","2016-08-10 14:15:41","","Контакти","","publish","closed","closed","","kontakty-2","","","2016-08-14 11:56:17","2016-08-14 08:56:17","","0","http://stomat/?p=86","4","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("88","1","2016-08-10 22:05:08","2016-08-10 19:05:08","М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.","Про клініку","","inherit","closed","closed","","66-revision-v1","","","2016-08-10 22:05:08","2016-08-10 19:05:08","","66","http://stomat/66-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("89","1","2016-08-10 22:09:55","2016-08-10 19:09:55","Ціни на стоматологічні послуги у клініці «М.Р.С.» є абсолютно прозорими. Перелік необхідних процедур обговорюється заздалегіть, що виключає приховані або неочікувані платежі. У нас Ви можете здійснити оплату карткою.","Прейскурант","","inherit","closed","closed","","58-revision-v1","","","2016-08-10 22:09:55","2016-08-10 19:09:55","","58","http://stomat/58-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("90","1","2016-08-10 22:10:27","2016-08-10 19:10:27","«М.Р.С. Стоматологія» - це результат, підтверджений досвідом. 15 років дотримання світових стандартів та контролю якості стоматологічних послуг. Команда фахівців, які забезпечують повний комплекс вирішення стоматологічних проблем. Найвищі стандарти та вимоги до стерилізації та дезінфекції. Німецьке обладнання KAVO та матеріали світових виробників.","Про клініку","","inherit","closed","closed","","66-revision-v1","","","2016-08-10 22:10:27","2016-08-10 19:10:27","","66","http://stomat/66-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("91","1","2016-08-11 03:33:02","2016-08-11 00:33:02","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" />Безкоштовна діагностика
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />Комплексне лікування усієї родини
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />Робота зі страховими компаніями
<img class=\"alignnone wp-image-64\" src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />Надання екстреної допомоги у день звернення","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:33:02","2016-08-11 00:33:02","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("92","1","2016-08-11 03:34:42","2016-08-11 00:34:42","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /><p>Безкоштовна діагностика</p>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />Комплексне лікування усієї родини
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />Робота зі страховими компаніями
<img class=\"alignnone wp-image-64\" src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />Надання екстреної допомоги у день звернення","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:34:42","2016-08-11 00:34:42","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("93","1","2016-08-11 03:36:29","2016-08-11 00:36:29","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /><div>Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />Комплексне лікування усієї родини
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />Робота зі страховими компаніями
<img class=\"alignnone wp-image-64\" src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />Надання екстреної допомоги у день звернення","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:36:29","2016-08-11 00:36:29","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("94","1","2016-08-11 03:38:17","2016-08-11 00:38:17","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" />
<div>Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /><div>Комплексне лікування усієї родини</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /><div>Робота зі страховими компаніями</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /><div>Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:38:17","2016-08-11 00:38:17","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("95","1","2016-08-11 03:38:39","2016-08-11 00:38:39","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /><div>Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /><div>Комплексне лікування усієї родини</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /><div>Робота зі страховими компаніями</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /><div>Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:38:39","2016-08-11 00:38:39","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("96","1","2016-08-11 03:40:59","2016-08-11 00:40:59","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" />
<div class=\"text\">Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />
<div>Комплексне лікування усієї родини</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />
<div>Робота зі страховими компаніями</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />
<div>Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:40:59","2016-08-11 00:40:59","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("97","1","2016-08-11 03:41:36","2016-08-11 00:41:36","<img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" />
<div class=\"words\">Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />
<div>Комплексне лікування усієї родини</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />
<div>Робота зі страховими компаніями</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />
<div>Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:41:36","2016-08-11 00:41:36","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("98","1","2016-08-11 03:42:48","2016-08-11 00:42:48","<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<div class=\"words\">Безкоштовна діагностика</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" />
<div>Комплексне лікування усієї родини</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" />
<div>Робота зі страховими компаніями</div>
<img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" />
<div>Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:42:48","2016-08-11 00:42:48","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("99","1","2016-08-11 03:44:50","2016-08-11 00:44:50","<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<div class=\"words\">Безкоштовна діагностика</div>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /></div>
<div class=\"words\">Комплексне лікування усієї родини</div>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /></div>
<div class=\"words\">Робота зі страховими компаніями</div>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /></div>
<div class=\"words\">Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-11 03:44:50","2016-08-11 00:44:50","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("101","1","2016-08-11 06:13:19","2016-08-11 03:13:19","Послуга|Ціна, грн
Професійна гігієна|350.00
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00
Пломба|300.00","Послуга та ціна","","inherit","closed","closed","","52-revision-v1","","","2016-08-11 06:13:19","2016-08-11 03:13:19","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("102","1","2016-08-11 15:54:24","2016-08-11 12:54:24","price-list","Сторінка прейскуранту","","publish","closed","closed","","price-list","","","2016-08-11 16:48:01","2016-08-11 13:48:01","","0","http://stomat/?page_id=102","0","page","","0");
INSERT INTO `wp_posts` VALUES("103","1","2016-08-11 15:54:24","2016-08-11 12:54:24","","Сторінка прейскуранту","","inherit","closed","closed","","102-revision-v1","","","2016-08-11 15:54:24","2016-08-11 12:54:24","","102","http://stomat/102-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("104","1","2016-08-11 16:37:21","2016-08-11 13:37:21","1","Сторінка прейскуранту","","inherit","closed","closed","","102-revision-v1","","","2016-08-11 16:37:21","2016-08-11 13:37:21","","102","http://stomat/102-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("105","1","2016-08-11 16:48:01","2016-08-11 13:48:01","price-list","Сторінка прейскуранту","","inherit","closed","closed","","102-revision-v1","","","2016-08-11 16:48:01","2016-08-11 13:48:01","","102","http://stomat/102-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("106","1","2016-08-11 16:49:37","2016-08-11 13:49:37","services","Сторінка сервісу","","publish","closed","closed","","services","","","2016-08-11 16:51:09","2016-08-11 13:51:09","","0","http://stomat/?page_id=106","0","page","","0");
INSERT INTO `wp_posts` VALUES("107","1","2016-08-11 16:49:37","2016-08-11 13:49:37","","services","","inherit","closed","closed","","106-revision-v1","","","2016-08-11 16:49:37","2016-08-11 13:49:37","","106","http://stomat/106-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("108","1","2016-08-11 16:50:04","2016-08-11 13:50:04","","Сторінка сервісу","","inherit","closed","closed","","106-revision-v1","","","2016-08-11 16:50:04","2016-08-11 13:50:04","","106","http://stomat/106-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("109","1","2016-08-11 16:51:09","2016-08-11 13:51:09","services","Сторінка сервісу","","inherit","closed","closed","","106-revision-v1","","","2016-08-11 16:51:09","2016-08-11 13:51:09","","106","http://stomat/106-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("110","1","2016-08-12 13:41:20","2016-08-12 10:41:20","","Test image 1","","publish","closed","closed","","test-image-1","","","2016-08-12 13:41:20","2016-08-12 10:41:20","","0","http://stomat/?post_type=test_image&#038;p=110","0","test_image","","0");
INSERT INTO `wp_posts` VALUES("112","1","2016-08-12 14:17:39","2016-08-12 11:17:39","","test mag","","publish","closed","closed","","test-mag","","","2016-08-12 14:17:39","2016-08-12 11:17:39","","0","http://stomat/?post_type=stores&#038;p=112","0","stores","","0");
INSERT INTO `wp_posts` VALUES("113","1","2016-08-12 14:18:13","2016-08-12 11:18:13","","test sales","","publish","closed","closed","","test-sales","","","2016-08-12 14:18:13","2016-08-12 11:18:13","","0","http://stomat/?post_type=sales&#038;p=113","0","sales","","0");
INSERT INTO `wp_posts` VALUES("114","1","2016-08-12 15:06:52","2016-08-12 12:06:52","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.

&nbsp;","Профілактика","","publish","closed","closed","","posluga-persha-1","","","2016-08-29 20:02:04","2016-08-29 17:02:04","","0","http://stomat/?post_type=services&#038;p=114","0","services","","0");
INSERT INTO `wp_posts` VALUES("115","1","2016-08-12 15:08:12","2016-08-12 12:08:12","","profilactic","","inherit","open","closed","","profilactic","","","2016-08-12 15:08:12","2016-08-12 12:08:12","","114","http://stomat/wp-content/uploads/2016/08/profilactic.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("116","1","2016-08-12 15:44:36","2016-08-12 12:44:36","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Терапія","","publish","closed","closed","","terapiya","","","2016-08-12 15:44:36","2016-08-12 12:44:36","","0","http://stomat/?post_type=services&#038;p=116","0","services","","0");
INSERT INTO `wp_posts` VALUES("117","1","2016-08-12 15:44:20","2016-08-12 12:44:20","","teraphy","","inherit","open","closed","","teraphy","","","2016-08-12 15:44:20","2016-08-12 12:44:20","","116","http://stomat/wp-content/uploads/2016/08/teraphy.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("118","1","2016-08-12 15:46:15","2016-08-12 12:46:15","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Ендодонтія","","publish","closed","closed","","endodontiya","","","2016-08-12 15:46:15","2016-08-12 12:46:15","","0","http://stomat/?post_type=services&#038;p=118","0","services","","0");
INSERT INTO `wp_posts` VALUES("119","1","2016-08-12 15:46:10","2016-08-12 12:46:10","","endodontia","","inherit","open","closed","","endodontia","","","2016-08-12 15:46:10","2016-08-12 12:46:10","","118","http://stomat/wp-content/uploads/2016/08/endodontia.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("120","1","2016-08-12 15:47:40","2016-08-12 12:47:40","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Ортопедія","","publish","closed","closed","","ortopediya","","","2016-08-29 20:02:54","2016-08-29 17:02:54","","0","http://stomat/?post_type=services&#038;p=120","0","services","","0");
INSERT INTO `wp_posts` VALUES("121","1","2016-08-12 15:47:26","2016-08-12 12:47:26","","ortodontia","","inherit","open","closed","","ortodontia","","","2016-08-12 15:47:26","2016-08-12 12:47:26","","120","http://stomat/wp-content/uploads/2016/08/ortodontia.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("122","1","2016-08-12 15:49:08","2016-08-12 12:49:08","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Ортодонтія","","publish","closed","closed","","ortodontiya","","","2016-08-29 20:03:16","2016-08-29 17:03:16","","0","http://stomat/?post_type=services&#038;p=122","0","services","","0");
INSERT INTO `wp_posts` VALUES("123","1","2016-08-12 15:49:54","2016-08-12 12:49:54","<strong>Профілактика: Як зберегти здорові зуби1?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів1</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Дитяча стоматологія","","publish","closed","closed","","dytyacha-stomatologiya","","","2016-08-29 20:04:20","2016-08-29 17:04:20","","0","http://stomat/?post_type=services&#038;p=123","0","services","","0");
INSERT INTO `wp_posts` VALUES("124","1","2016-08-12 15:50:28","2016-08-12 12:50:28","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Пародонтологія","","publish","closed","closed","","parodontologiya","","","2016-08-29 20:02:28","2016-08-29 17:02:28","","0","http://stomat/?post_type=services&#038;p=124","0","services","","0");
INSERT INTO `wp_posts` VALUES("125","1","2016-08-12 15:51:22","2016-08-12 12:51:22","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Хірургія","","publish","closed","closed","","hirurgiya","","","2016-08-29 20:01:36","2016-08-29 17:01:36","","0","http://stomat/?post_type=services&#038;p=125","0","services","","0");
INSERT INTO `wp_posts` VALUES("126","1","2016-08-12 15:52:07","2016-08-12 12:52:07","<strong>Профілактика: Як зберегти здорові зуби?</strong>

Кожна людина замислюється, як зберегти свої зуби здоровими, але не всі дотримуються правил гігієни. Тільки уявіть, що за сто років люди почали вживати у 20 раз більше цукру. Тож не дивно, що майже немає людей із здоровими зубами.  Кава, перекуси протягом дня спричиняються до того, що зуби не встигають відновити свій природний захист від шкідливих речовин.

<strong>Гігієна і профілактика зубів</strong>

Одним із найважливіших методів профілактики захворювань зубів і ясен є ретельна та регулярна гігієна ротової порожнини. Про це чули всі, але хтось впадає у крайнощі і чистить зуби після кожного прийому їжі, інші ж, навпаки, думають, що почистити зуби раз на день достатньо. Насправді у кожній справі корисною є золота середина. Найкраща профілактика для зубів – комплексний догляд. Перший метод профілактики зубів – гігієна вдома. Чистіть зуби 2-3 рази на день якнайшвидше після прийому їжі. Якщо у вас немає можливості скористатись зубною щіткою та пастою чи йоршиком, застосуйте жувальну гумку, зубну нитку, ополіскувачі. Другий метод профілактики захворювань зубів – два рази на рік вам необхідно відвідувати стоматолога для огляду та професійних процедур очищення зубів. У стоматологічній клініці вам очистять зуби від зубного нальоту, зубного каменю. Третій метод профілактики зубів – це правильне харчування. Дуже любите солодощі? Спробуйте замінити цукерки, печиво, шоколадки на натуральні природні солодощі: овочі, сухофрукти, яблука та моркву. Вам подякують не лише зуби, а й увесь організм! Та пам’ятайте – все добре в міру. Профілактика карієсу зубів Крім вищезгаданих методів, профілактики захворювань карієсу зубів є застосовування зубних паст, що містять кальцій, фтор або фосфор. Якщо ви використовуєте усі рекомендації, а це не діє, і з’явився карієс, то у вас генетична схильність до цієї хвороби. Щоб побороти карієс, вам необхідно заприятелювати із стоматологом. Професійна профілактика зубів у стоматологічній клініці «Рікота» – це індивідуальний підхід до кожного. У центрі спеціально для вас складуть індивідуальний графік профілактики та гігієни, який допоможе зберегти осяйну усмішку.","Імплантація","","publish","closed","closed","","implantatsiya","","","2016-08-29 20:03:38","2016-08-29 17:03:38","","0","http://stomat/?post_type=services&#038;p=126","0","services","","0");
INSERT INTO `wp_posts` VALUES("138","1","2016-08-13 18:41:46","2016-08-13 15:41:46","","cross","","inherit","open","closed","","cross","","","2016-08-13 18:41:46","2016-08-13 15:41:46","","0","http://stomat/wp-content/uploads/2016/08/cross.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("139","1","2016-08-13 20:26:37","2016-08-13 17:26:37","","range","","inherit","open","closed","","range","","","2016-08-13 20:26:37","2016-08-13 17:26:37","","0","http://stomat/wp-content/uploads/2016/08/range.png","0","attachment","image/png","0");
INSERT INTO `wp_posts` VALUES("142","1","2016-08-13 21:41:24","2016-08-13 18:41:24"," ","","","publish","closed","closed","","142","","","2016-08-13 21:41:24","2016-08-13 18:41:24","","0","http://stomat/?p=142","1","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("143","1","2016-08-13 21:41:24","2016-08-13 18:41:24"," ","","","publish","closed","closed","","143","","","2016-08-13 21:41:24","2016-08-13 18:41:24","","0","http://stomat/?p=143","2","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("144","1","2016-08-13 21:41:25","2016-08-13 18:41:25"," ","","","publish","closed","closed","","144","","","2016-08-13 21:41:25","2016-08-13 18:41:25","","0","http://stomat/?p=144","3","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("145","1","2016-08-13 21:41:25","2016-08-13 18:41:25"," ","","","publish","closed","closed","","145","","","2016-08-13 21:41:25","2016-08-13 18:41:25","","0","http://stomat/?p=145","4","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("146","1","2016-08-13 21:41:25","2016-08-13 18:41:25"," ","","","publish","closed","closed","","146","","","2016-08-13 21:41:25","2016-08-13 18:41:25","","0","http://stomat/?p=146","5","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("147","1","2016-08-13 21:41:25","2016-08-13 18:41:25"," ","","","publish","closed","closed","","147","","","2016-08-13 21:41:25","2016-08-13 18:41:25","","0","http://stomat/?p=147","6","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("148","1","2016-08-13 21:41:25","2016-08-13 18:41:25"," ","","","publish","closed","closed","","148","","","2016-08-13 21:41:25","2016-08-13 18:41:25","","0","http://stomat/?p=148","7","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("149","1","2016-08-13 21:41:26","2016-08-13 18:41:26"," ","","","publish","closed","closed","","149","","","2016-08-13 21:41:26","2016-08-13 18:41:26","","0","http://stomat/?p=149","8","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("150","1","2016-08-13 21:41:26","2016-08-13 18:41:26"," ","","","publish","closed","closed","","150","","","2016-08-13 21:41:26","2016-08-13 18:41:26","","0","http://stomat/?p=150","9","nav_menu_item","","0");
INSERT INTO `wp_posts` VALUES("151","1","2016-08-13 21:57:11","2016-08-13 18:57:11","","arrow","","inherit","open","closed","","arrow","","","2016-08-13 21:57:11","2016-08-13 18:57:11","","0","http://stomat/wp-content/uploads/2016/08/arrow.png","0","attachment","image/png","0");
INSERT INTO `wp_posts` VALUES("153","1","2016-08-17 04:28:30","2016-08-17 01:28:30","Послуга|Ціна, грн
Професійна гігієна|350.01
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00
Пломба|300.00","Послуга та ціна","","inherit","closed","closed","","52-revision-v1","","","2016-08-17 04:28:30","2016-08-17 01:28:30","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("154","1","2016-08-17 13:54:38","2016-08-17 10:54:38","<ul>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<div class=\"words\">Безкоштовна діагностика</div>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /></div>
<div class=\"words\">Комплексне лікування усієї родини</div>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /></div>
<div class=\"words\">Робота зі страховими компаніями</div>
</li>
<li></li>
</ul>



<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /></div>
<div class=\"words\">Надання екстреної допомоги у день звернення</div>","Наші переваги","","inherit","closed","closed","","60-autosave-v1","","","2016-08-17 13:54:38","2016-08-17 10:54:38","","60","http://stomat/60-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("155","1","2016-08-17 13:54:53","2016-08-17 10:54:53","<ul>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<div class=\"words\">Безкоштовна діагностика</div>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /></div>
<div class=\"words\">Комплексне лікування усієї родини</div>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /></div>
<div class=\"words\">Робота зі страховими компаніями</div>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /></div>
<div class=\"words\">Надання екстреної допомоги у день звернення</div>
</li>
</ul>



","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-17 13:54:53","2016-08-17 10:54:53","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("156","1","2016-08-17 13:56:37","2016-08-17 10:56:37","<ul>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/free-diagnistic.svg\" alt=\"free diagnistic\" width=\"88\" height=\"88\" /></div>
<p class=\"words\">Безкоштовна діагностика</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/complex-treatment.svg\" alt=\"complex treatment\" /></div>
<p class=\"words\">Комплексне лікування усієї родини</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/ensurence.svg\" alt=\"ensurence\" width=\"97\" height=\"95\" /></div>
<p class=\"words\">Робота зі страховими компаніями</p>
</li>
<li>
<div class=\"img\"><img src=\"http://stomat/wp-content/uploads/2016/08/extra-help.svg\" alt=\"extra help\" width=\"86\" height=\"82\" /></div>
<p class=\"words\">Надання екстреної допомоги у день звернення</p>
</li>
</ul>



","Наші переваги","","inherit","closed","closed","","60-revision-v1","","","2016-08-17 13:56:37","2016-08-17 10:56:37","","60","http://stomat/60-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("157","1","2016-08-17 17:38:27","2016-08-17 14:38:27","","no_photo","","inherit","open","closed","","no_photo","","","2016-08-17 17:38:27","2016-08-17 14:38:27","","0","http://stomat/wp-content/uploads/2016/08/no_photo.png","0","attachment","image/png","0");
INSERT INTO `wp_posts` VALUES("159","1","2016-08-18 15:30:03","2016-08-18 12:30:03","","Слайдер зверху мобайл","","publish","closed","closed","","slajder-zverhu-mobajl","","","2016-08-18 15:42:39","2016-08-18 12:42:39","","0","http://stomat/?post_type=gallery&#038;p=159","0","gallery","","0");
INSERT INTO `wp_posts` VALUES("160","1","2016-08-18 15:33:52","2016-08-18 12:33:52","","919_original","","inherit","open","closed","","919_original","","","2016-08-18 15:33:52","2016-08-18 12:33:52","","0","http://stomat/wp-content/uploads/2016/08/919_original.png","0","attachment","image/png","0");
INSERT INTO `wp_posts` VALUES("161","1","2016-08-18 15:33:53","2016-08-18 12:33:53","","little girl at the dentist","little girl at the dentist","inherit","open","closed","","little-girl-at-the-dentist","","","2016-08-18 15:33:53","2016-08-18 12:33:53","","0","http://stomat/wp-content/uploads/2016/08/detskaya-stomatologiya-donetsk-nedorogo.jpg","0","attachment","image/jpeg","0");
INSERT INTO `wp_posts` VALUES("162","1","2016-08-18 15:33:53","2016-08-18 12:33:53","","image","","inherit","open","closed","","image","","","2016-08-18 15:33:53","2016-08-18 12:33:53","","0","http://stomat/wp-content/uploads/2016/08/image.jpg","0","attachment","image/jpeg","0");
INSERT INTO `wp_posts` VALUES("163","1","2016-08-29 19:39:58","0000-00-00 00:00:00","","Авточернетка","","auto-draft","open","open","","","","","2016-08-29 19:39:58","0000-00-00 00:00:00","","0","http://stomat/?p=163","0","post","","0");
INSERT INTO `wp_posts` VALUES("164","2","2016-08-29 19:43:35","0000-00-00 00:00:00","","Авточернетка","","auto-draft","open","open","","","","","2016-08-29 19:43:35","0000-00-00 00:00:00","","0","http://stomat/?p=164","0","post","","0");
INSERT INTO `wp_posts` VALUES("165","2","2016-08-29 19:47:57","2016-08-29 16:47:57","Послуга|Ціна, грн
Професійна гігієна|350.01
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00
Пломба|300.00
Забрати зуб|400.00","Послуга та ціна","","inherit","closed","closed","","52-revision-v1","","","2016-08-29 19:47:57","2016-08-29 16:47:57","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("166","2","2016-08-29 19:48:34","2016-08-29 16:48:34","Послуга|Ціна, грн
Професійна гігієна|350.01
Відбілювання|від 2000.00
Брекети металеві|7000.00
Пломба|300.00
Пломба1|300.00
Забрати зуб|400.00","Послуга та ціна","","inherit","closed","closed","","52-revision-v1","","","2016-08-29 19:48:34","2016-08-29 16:48:34","","52","http://stomat/52-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("167","2","2016-08-29 19:50:04","2016-08-29 16:50:04","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i &lt; locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-29 19:50:04","2016-08-29 16:50:04","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("168","2","2016-08-29 20:01:27","2016-08-29 17:01:27","","surgery","","inherit","open","closed","","surgery","","","2016-08-29 20:01:27","2016-08-29 17:01:27","","125","http://stomat/wp-content/uploads/2016/08/surgery.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("169","2","2016-08-29 20:01:58","2016-08-29 17:01:58","","profilactic","","inherit","open","closed","","profilactic-2","","","2016-08-29 20:01:58","2016-08-29 17:01:58","","114","http://stomat/wp-content/uploads/2016/08/profilactic-1.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("170","2","2016-08-29 20:02:25","2016-08-29 17:02:25","","paradontology","","inherit","open","closed","","paradontology","","","2016-08-29 20:02:25","2016-08-29 17:02:25","","124","http://stomat/wp-content/uploads/2016/08/paradontology.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("171","2","2016-08-29 20:02:49","2016-08-29 17:02:49","","ortopedia","","inherit","open","closed","","ortopedia","","","2016-08-29 20:02:49","2016-08-29 17:02:49","","120","http://stomat/wp-content/uploads/2016/08/ortopedia.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("172","2","2016-08-29 20:03:12","2016-08-29 17:03:12","","ortodontia","","inherit","open","closed","","ortodontia-2","","","2016-08-29 20:03:12","2016-08-29 17:03:12","","122","http://stomat/wp-content/uploads/2016/08/ortodontia-1.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("173","2","2016-08-29 20:03:34","2016-08-29 17:03:34","","implant","","inherit","open","closed","","implant","","","2016-08-29 20:03:34","2016-08-29 17:03:34","","126","http://stomat/wp-content/uploads/2016/08/implant.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("174","2","2016-08-29 20:04:16","2016-08-29 17:04:16","","child dental","","inherit","open","closed","","child-dental","","","2016-08-29 20:04:16","2016-08-29 17:04:16","","123","http://stomat/wp-content/uploads/2016/08/child-dental.svg","0","attachment","image/svg+xml","0");
INSERT INTO `wp_posts` VALUES("175","2","2016-08-29 20:25:56","2016-08-29 17:25:56","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i < locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-29 20:25:56","2016-08-29 17:25:56","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("176","2","2016-08-29 20:29:13","2016-08-29 17:29:13","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i \\< locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-29 20:29:13","2016-08-29 17:29:13","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("177","2","2016-08-29 20:29:40","2016-08-29 17:29:40","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (a = 0; a < locations.length; a++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-29 20:29:40","2016-08-29 17:29:40","","39","http://stomat/39-revision-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("178","2","2016-08-29 20:33:09","2016-08-29 17:33:09","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i &lt; locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-autosave-v1","","","2016-08-29 20:33:09","2016-08-29 17:33:09","","39","http://stomat/39-autosave-v1/","0","revision","","0");
INSERT INTO `wp_posts` VALUES("179","1","2016-08-29 20:36:44","2016-08-29 17:36:44","google.maps.event.addDomListener(window, \'load\', init);
var map;
function init() {
var mapOptions = {
center: new google.maps.LatLng(49.843961, 24.021967),
zoom: 18,
zoomControl: false,
disableDoubleClickZoom: true,
mapTypeControl: false,
scaleControl: false,
scrollwheel: true,
panControl: true,
streetViewControl: false,
draggable: true,
overviewMapControl: true,
overviewMapControlOptions: {
opened: false,
},
mapTypeId: google.maps.MapTypeId.ROADMAP,
styles: [{
\"featureType\": \"landscape\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"transit\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"poi\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"water\",
\"elementType\": \"labels\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {
\"featureType\": \"road\",
\"elementType\": \"labels.icon\",
\"stylers\": [{\"visibility\": \"off\"}]
}, {\"stylers\": [{\"hue\": \"#00aaff\"}, {\"saturation\": -100}, {\"gamma\": 2.15}, {\"lightness\": 12}]}, {
\"featureType\": \"road\",
\"elementType\": \"labels.text.fill\",
\"stylers\": [{\"visibility\": \"on\"}, {\"lightness\": 24}]
}, {\"featureType\": \"road\", \"elementType\": \"geometry\", \"stylers\": [{\"lightness\": 57}]}],
}
var mapElement = document.getElementById(\'map\');
var map = new google.maps.Map(mapElement, mapOptions);
var locations = [
[\'my_pointer\', \'undefined\', \'undefined\', \'undefined\', \'undefined\', 49.844331, 24.022193399999992,
\'/wp-content/uploads/2016/08/pointer.svg\']
];
for (i = 0; i &lt; locations.length; i++) {
if (locations[i][1] == \'undefined\') {
description = \'\';
} else {
description = locations[i][1];
}
if (locations[i][2] == \'undefined\') {
telephone = \'\';
} else {
telephone = locations[i][2];
}
if (locations[i][3] == \'undefined\') {
email = \'\';
} else {
email = locations[i][3];
}
if (locations[i][4] == \'undefined\') {
web = \'\';
} else {
web = locations[i][4];
}
if (locations[i][7] == \'undefined\') {
markericon = \'\';
} else {
markericon = locations[i][7];
}
marker = new google.maps.Marker({
icon: markericon,
position: new google.maps.LatLng(locations[i][5], locations[i][6]),
map: map,
title: locations[i][0],
desc: description,
tel: telephone,
email: email,
web: web
});
link = \'\';
}

}","Мапа","","inherit","closed","closed","","39-revision-v1","","","2016-08-29 20:36:44","2016-08-29 17:36:44","","39","http://stomat/39-revision-v1/","0","revision","","0");


DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_term_relationships` VALUES("1","1","0");
INSERT INTO `wp_term_relationships` VALUES("11","2","0");
INSERT INTO `wp_term_relationships` VALUES("12","2","0");
INSERT INTO `wp_term_relationships` VALUES("13","2","0");
INSERT INTO `wp_term_relationships` VALUES("14","2","0");
INSERT INTO `wp_term_relationships` VALUES("15","2","0");
INSERT INTO `wp_term_relationships` VALUES("17","1","0");
INSERT INTO `wp_term_relationships` VALUES("35","1","0");
INSERT INTO `wp_term_relationships` VALUES("37","1","0");
INSERT INTO `wp_term_relationships` VALUES("83","3","0");
INSERT INTO `wp_term_relationships` VALUES("84","3","0");
INSERT INTO `wp_term_relationships` VALUES("85","3","0");
INSERT INTO `wp_term_relationships` VALUES("86","3","0");
INSERT INTO `wp_term_relationships` VALUES("142","4","0");
INSERT INTO `wp_term_relationships` VALUES("143","4","0");
INSERT INTO `wp_term_relationships` VALUES("144","4","0");
INSERT INTO `wp_term_relationships` VALUES("145","4","0");
INSERT INTO `wp_term_relationships` VALUES("146","4","0");
INSERT INTO `wp_term_relationships` VALUES("147","4","0");
INSERT INTO `wp_term_relationships` VALUES("148","4","0");
INSERT INTO `wp_term_relationships` VALUES("149","4","0");
INSERT INTO `wp_term_relationships` VALUES("150","4","0");


DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
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

INSERT INTO `wp_term_taxonomy` VALUES("1","1","category","","0","0");
INSERT INTO `wp_term_taxonomy` VALUES("2","2","nav_menu","","0","5");
INSERT INTO `wp_term_taxonomy` VALUES("3","3","nav_menu","","0","4");
INSERT INTO `wp_term_taxonomy` VALUES("4","4","nav_menu","","0","9");


DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_terms` VALUES("1","Без категорії","uncategorized","0");
INSERT INTO `wp_terms` VALUES("2","Верхне меню","verhne-menyu","0");
INSERT INTO `wp_terms` VALUES("3","Гамбургер","gamburger","0");
INSERT INTO `wp_terms` VALUES("4","Меню послуги","menyu-poslugy","0");


DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_usermeta` VALUES("1","1","nickname","alex");
INSERT INTO `wp_usermeta` VALUES("2","1","first_name","");
INSERT INTO `wp_usermeta` VALUES("3","1","last_name","");
INSERT INTO `wp_usermeta` VALUES("4","1","description","");
INSERT INTO `wp_usermeta` VALUES("5","1","rich_editing","true");
INSERT INTO `wp_usermeta` VALUES("6","1","comment_shortcuts","false");
INSERT INTO `wp_usermeta` VALUES("7","1","admin_color","fresh");
INSERT INTO `wp_usermeta` VALUES("8","1","use_ssl","0");
INSERT INTO `wp_usermeta` VALUES("9","1","show_admin_bar_front","true");
INSERT INTO `wp_usermeta` VALUES("10","1","wp_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("11","1","wp_user_level","10");
INSERT INTO `wp_usermeta` VALUES("12","1","dismissed_wp_pointers","");
INSERT INTO `wp_usermeta` VALUES("13","1","show_welcome_panel","0");
INSERT INTO `wp_usermeta` VALUES("15","1","wp_dashboard_quick_press_last_post_id","163");
INSERT INTO `wp_usermeta` VALUES("16","1","wp_yoast_notifications","a:1:{i:0;a:2:{s:7:\"message\";s:225:\"Не пропустите свои ошибки индексирования: <a href=\"http://stomat/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">подключитесь к Google Search Console здесь</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}");
INSERT INTO `wp_usermeta` VALUES("17","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("18","1","metaboxhidden_nav-menus","a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `wp_usermeta` VALUES("19","1","nav_menu_recently_edited","4");
INSERT INTO `wp_usermeta` VALUES("20","1","closedpostboxes_post","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("21","1","metaboxhidden_post","a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}");
INSERT INTO `wp_usermeta` VALUES("22","1","wp_user-settings","libraryContent=browse&editor=tinymce&mfold=o");
INSERT INTO `wp_usermeta` VALUES("23","1","wp_user-settings-time","1472493553");
INSERT INTO `wp_usermeta` VALUES("24","1","closedpostboxes_page","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("25","1","metaboxhidden_page","a:7:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"revisionsdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}");
INSERT INTO `wp_usermeta` VALUES("26","1","closedpostboxes_gallery","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("27","1","metaboxhidden_gallery","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("28","1","meta-box-order_gallery","a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:25:\"abv_gallery_id,wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("29","1","screen_layout_gallery","2");
INSERT INTO `wp_usermeta` VALUES("30","1","closedpostboxes_test","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("31","1","metaboxhidden_test","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("32","1","meta-box-order_test","a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:22:\"abv_test_id,wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("33","1","screen_layout_test","2");
INSERT INTO `wp_usermeta` VALUES("34","1","closedpostboxes_dashboard","a:0:{}");
INSERT INTO `wp_usermeta` VALUES("35","1","metaboxhidden_dashboard","a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}");
INSERT INTO `wp_usermeta` VALUES("36","1","session_tokens","a:2:{s:64:\"a129dc0ad8f6d5ea6b2c4f44ca890ae174303d4e9883d6dcd81fc0ecb11c86f6\";a:4:{s:10:\"expiration\";i:1473071375;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/51.0.2704.79 Chrome/51.0.2704.79 Safari/537.36\";s:5:\"login\";i:1471861775;}s:64:\"aab5bcf3ec421682676d2338a97dfae366fc97ffc3707343b700488d0eb2eb44\";a:4:{s:10:\"expiration\";i:1473703158;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/51.0.2704.79 Chrome/51.0.2704.79 Safari/537.36\";s:5:\"login\";i:1472493558;}}");
INSERT INTO `wp_usermeta` VALUES("37","1","last_login_time","2016-08-29 20:59:18");
INSERT INTO `wp_usermeta` VALUES("38","1","closedpostboxes_test_image","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("39","1","metaboxhidden_test_image","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("40","1","meta-box-order_test_image","a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:28:\"abv_test_image_id,wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("41","1","screen_layout_test_image","2");
INSERT INTO `wp_usermeta` VALUES("42","1","closedpostboxes_stores","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("43","1","metaboxhidden_stores","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("44","1","closedpostboxes_sales","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("45","1","metaboxhidden_sales","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("46","1","meta-box-order_page","a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:70:\"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:30:\"abv_med-services_id,wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("47","1","screen_layout_page","2");
INSERT INTO `wp_usermeta` VALUES("48","1","closedpostboxes_med-services","a:1:{i:0;s:10:\"wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("49","1","metaboxhidden_med-services","a:1:{i:0;s:7:\"slugdiv\";}");
INSERT INTO `wp_usermeta` VALUES("50","1","meta-box-order_med-services","a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:40:\"abv_med-services_meta_post_id,wpseo_meta\";}");
INSERT INTO `wp_usermeta` VALUES("51","1","screen_layout_med-services","2");
INSERT INTO `wp_usermeta` VALUES("52","2","nickname","Iya_seo");
INSERT INTO `wp_usermeta` VALUES("53","2","first_name","Iya");
INSERT INTO `wp_usermeta` VALUES("54","2","last_name","seo_admin");
INSERT INTO `wp_usermeta` VALUES("55","2","description","");
INSERT INTO `wp_usermeta` VALUES("56","2","rich_editing","true");
INSERT INTO `wp_usermeta` VALUES("57","2","comment_shortcuts","false");
INSERT INTO `wp_usermeta` VALUES("58","2","admin_color","fresh");
INSERT INTO `wp_usermeta` VALUES("59","2","use_ssl","0");
INSERT INTO `wp_usermeta` VALUES("60","2","show_admin_bar_front","true");
INSERT INTO `wp_usermeta` VALUES("61","2","wp_capabilities","a:1:{s:6:\"editor\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("62","2","wp_user_level","7");
INSERT INTO `wp_usermeta` VALUES("63","2","_yoast_wpseo_profile_updated","1472488973");
INSERT INTO `wp_usermeta` VALUES("64","2","dismissed_wp_pointers","");
INSERT INTO `wp_usermeta` VALUES("65","2","session_tokens","a:1:{s:64:\"028ece96d12ab7ad8bd7c10bc7c61ac0fb504cdf644d6ac0ef70f3dbddf65245\";a:4:{s:10:\"expiration\";i:1473698614;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36\";s:5:\"login\";i:1472489014;}}");
INSERT INTO `wp_usermeta` VALUES("66","2","last_login_time","2016-08-29 19:43:34");
INSERT INTO `wp_usermeta` VALUES("67","2","wp_dashboard_quick_press_last_post_id","164");
INSERT INTO `wp_usermeta` VALUES("68","2","wp_user-settings","libraryContent=browse&editor=tinymce");
INSERT INTO `wp_usermeta` VALUES("69","2","wp_user-settings-time","1472491985");
INSERT INTO `wp_usermeta` VALUES("70","2","closedpostboxes_services","a:0:{}");
INSERT INTO `wp_usermeta` VALUES("71","2","metaboxhidden_services","a:1:{i:0;s:7:\"slugdiv\";}");


DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_users` VALUES("1","alex","$P$Bl2R2su/.LZKGWITgV..kZvy4RUsxg.","alex","alex110@list.ru","","2016-08-03 12:16:17","","0","alex");
INSERT INTO `wp_users` VALUES("2","Iya_seo","$P$BByS5/lPmCAON5/5PXaiIuslPDYd.M.","iya_seo","severynr@gmail.com","","2016-08-29 16:42:53","1472488973:$P$B/1D5nGUgHzUI3v3azA9e25RtcdS7H/","0","seo_admin Iya");




