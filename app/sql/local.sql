-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-02-03 19:32:17','2021-02-03 19:32:17','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://portofolio.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://portofolio.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Meshkin Ahmed','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"crop-thumbnails/crop-thumbnails.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Portofolio','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Portofolio','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','8','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','10','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1627932736','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1614781938;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1614799938;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614799972;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614799973;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614886338;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','StcY#$mQi%rLvxJN!=u[IC=SR]OLj1;pz?c$<m$eDA?dy~ysh7DtXBF2chhI<tE8','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','0,N~49c~nnLl-_+J2Gc7A=s+ATtaW{d%okd6i5_+E0*M9d|279 TOnpxqEoQ.EO+','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-rollback-0.zip\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1614779481;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612380822;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614779483;s:7:\"checked\";a:2:{s:10:\"Portofolio\";s:0:\"\";s:13:\"wp-portofolio\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (150,'current_theme','Portofolio','yes');
INSERT INTO `wp_options` VALUES (151,'theme_mods_wp-portofolio','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612713504;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (152,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (166,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":6,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (211,'theme_mods_Portofolio','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (282,'recently_activated','a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1613501001;}','yes');
INSERT INTO `wp_options` VALUES (328,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (439,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1614779480;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (460,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (461,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (467,'_transient_timeout_acf_plugin_updates','1614952282','no');
INSERT INTO `wp_options` VALUES (468,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}','no');
INSERT INTO `wp_options` VALUES (469,'_site_transient_timeout_theme_roots','1614781282','no');
INSERT INTO `wp_options` VALUES (470,'_site_transient_theme_roots','a:2:{s:10:\"Portofolio\";s:7:\"/themes\";s:13:\"wp-portofolio\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (471,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1615384283','no');
INSERT INTO `wp_options` VALUES (472,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (11,8,'_edit_lock','1612560964:1');
INSERT INTO `wp_postmeta` VALUES (12,10,'_edit_lock','1613501604:1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_wp_attached_file','2021/02/chris-hardy-RSOCEhCllBk-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (14,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:44:\"2021/02/chris-hardy-RSOCEhCllBk-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"chris-hardy-RSOCEhCllBk-unsplash-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"chris-hardy-RSOCEhCllBk-unsplash-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"aboutAvatar_old_240x240\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-240x240.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"aboutAvatar_old_300x300\";a:4:{s:4:\"file\";s:44:\"chris-hardy-RSOCEhCllBk-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (15,10,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (16,12,'_wp_attachment_image_alt','');
INSERT INTO `wp_postmeta` VALUES (17,13,'_edit_lock','1613846077:1');
INSERT INTO `wp_postmeta` VALUES (18,14,'_wp_attached_file','2021/02/147950014_3858254840904290_7096354755480656482_n.jpg');
INSERT INTO `wp_postmeta` VALUES (19,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:648;s:6:\"height\";i:753;s:4:\"file\";s:60:\"2021/02/147950014_3858254840904290_7096354755480656482_n.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"147950014_3858254840904290_7096354755480656482_n-258x300.jpg\";s:5:\"width\";i:258;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"147950014_3858254840904290_7096354755480656482_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:60:\"147950014_3858254840904290_7096354755480656482_n-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"aboutAvatar_old_240x240\";a:4:{s:4:\"file\";s:60:\"147950014_3858254840904290_7096354755480656482_n-240x240.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"aboutAvatar_old_300x300\";a:4:{s:4:\"file\";s:60:\"147950014_3858254840904290_7096354755480656482_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,21,'_wp_attached_file','2021/02/Screenshot_4.png');
INSERT INTO `wp_postmeta` VALUES (32,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:509;s:6:\"height\";i:647;s:4:\"file\";s:24:\"2021/02/Screenshot_4.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"aboutAvatar_old_240x240\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-240x240.png\";s:5:\"width\";i:240;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"aboutAvatar_old_300x300\";a:4:{s:4:\"file\";s:24:\"Screenshot_4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,13,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (34,22,'_wp_attached_file','2021/02/Screenshot_5.png');
INSERT INTO `wp_postmeta` VALUES (35,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:523;s:6:\"height\";i:768;s:4:\"file\";s:24:\"2021/02/Screenshot_5.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-204x300.png\";s:5:\"width\";i:204;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"aboutAvatar_old_240x240\";a:4:{s:4:\"file\";s:24:\"Screenshot_5-240x240.png\";s:5:\"width\";i:240;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"aboutAvatar_old_300x300\";a:5:{s:4:\"file\";s:24:\"Screenshot_5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:0;s:2:\"x2\";i:523;s:2:\"y2\";i:523;s:14:\"original_width\";i:523;s:15:\"original_height\";i:768;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (38,27,'_edit_lock','1613846077:1');
INSERT INTO `wp_postmeta` VALUES (42,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (43,27,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (44,27,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (45,27,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (46,27,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (47,27,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (48,27,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (49,34,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (50,34,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (51,34,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (52,34,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (53,34,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (54,34,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (61,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (62,35,'_edit_lock','1613251429:1');
INSERT INTO `wp_postmeta` VALUES (75,27,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"56\";i:7;s:2:\"96\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (76,27,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (77,48,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (78,48,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (79,48,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (80,48,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (81,48,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (82,48,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (83,48,'stack_gallery','a:10:{i:0;s:2:\"40\";i:1;s:2:\"38\";i:2;s:2:\"45\";i:3;s:2:\"47\";i:4;s:2:\"44\";i:5;s:2:\"42\";i:6;s:2:\"41\";i:7;s:2:\"43\";i:8;s:2:\"39\";i:9;s:2:\"46\";}');
INSERT INTO `wp_postmeta` VALUES (84,48,'_stack_gallery','field_60270b72dcd20');
INSERT INTO `wp_postmeta` VALUES (85,49,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (86,49,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (87,49,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (88,49,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (89,49,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (90,49,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (91,49,'stack_gallery','a:11:{i:0;s:2:\"40\";i:1;s:2:\"38\";i:2;s:2:\"45\";i:3;s:2:\"47\";i:4;s:2:\"44\";i:5;s:2:\"42\";i:6;s:2:\"41\";i:7;s:2:\"43\";i:8;s:2:\"39\";i:9;s:2:\"46\";i:10;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (92,49,'_stack_gallery','field_60270b72dcd20');
INSERT INTO `wp_postmeta` VALUES (93,50,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (94,50,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (95,50,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (96,50,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (97,50,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (98,50,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (99,50,'stack_gallery','41');
INSERT INTO `wp_postmeta` VALUES (100,50,'_stack_gallery','field_60270b72dcd20');
INSERT INTO `wp_postmeta` VALUES (102,52,'_wp_attached_file','2021/02/git.svg');
INSERT INTO `wp_postmeta` VALUES (103,53,'_wp_attached_file','2021/02/html5.svg');
INSERT INTO `wp_postmeta` VALUES (104,54,'_wp_attached_file','2021/02/jquery-1.svg');
INSERT INTO `wp_postmeta` VALUES (105,55,'_wp_attached_file','2021/02/logo-javascript.svg');
INSERT INTO `wp_postmeta` VALUES (106,56,'_wp_attached_file','2021/02/php-1.svg');
INSERT INTO `wp_postmeta` VALUES (107,57,'_wp_attached_file','2021/02/sass-1-1.svg');
INSERT INTO `wp_postmeta` VALUES (108,58,'_wp_attached_file','2021/02/tailwind-css-1-1.svg');
INSERT INTO `wp_postmeta` VALUES (109,59,'_wp_attached_file','2021/02/woocommerce.svg');
INSERT INTO `wp_postmeta` VALUES (110,35,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (111,35,'_wp_trash_meta_time','1613251576');
INSERT INTO `wp_postmeta` VALUES (112,35,'_wp_desired_post_slug','group_60270b67d4031');
INSERT INTO `wp_postmeta` VALUES (113,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (114,36,'_wp_trash_meta_time','1613251576');
INSERT INTO `wp_postmeta` VALUES (115,36,'_wp_desired_post_slug','field_60270b72dcd20');
INSERT INTO `wp_postmeta` VALUES (116,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (117,60,'_edit_lock','1613500855:1');
INSERT INTO `wp_postmeta` VALUES (118,62,'_wp_attached_file','2021/02/bootstrap-4.svg');
INSERT INTO `wp_postmeta` VALUES (119,63,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (120,63,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (121,63,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (122,63,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (123,63,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (124,63,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (125,63,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"51\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (126,63,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (129,65,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (130,65,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (131,65,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (132,65,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (133,65,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (134,65,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (135,65,'stack_gallery','a:11:{i:0;s:2:\"53\";i:1;s:2:\"51\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";i:10;s:2:\"64\";}');
INSERT INTO `wp_postmeta` VALUES (136,65,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (137,66,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (138,66,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (139,66,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (140,66,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (141,66,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (142,66,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (143,66,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"51\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (144,66,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (146,68,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (147,68,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (148,68,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (149,68,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (150,68,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (151,68,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (152,68,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"67\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (153,68,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (154,69,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (155,69,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (156,69,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (157,69,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (158,69,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (159,69,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (160,69,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"51\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (161,69,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (163,71,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (164,71,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (165,71,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (166,71,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (167,71,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (168,71,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (169,71,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"70\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (170,71,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (173,73,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (174,73,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (175,73,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (176,73,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (177,73,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (178,73,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (179,73,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"72\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (180,73,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (181,74,'_wp_attached_file','2021/02/CSS.3.svg');
INSERT INTO `wp_postmeta` VALUES (182,75,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (183,75,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (184,75,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (185,75,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (186,75,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (187,75,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (188,75,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (189,75,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (190,76,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (191,76,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (192,76,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (193,76,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (194,76,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (195,76,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (196,76,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (197,76,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (198,77,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (199,77,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (200,77,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (201,77,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (202,77,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (203,77,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (204,77,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"54\";i:7;s:2:\"56\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (205,77,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (206,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (207,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (208,80,'_edit_lock','1613773539:1');
INSERT INTO `wp_postmeta` VALUES (209,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (210,90,'_edit_lock','1613773557:1');
INSERT INTO `wp_postmeta` VALUES (211,91,'_wp_attached_file','2021/02/Screenshot_1.png');
INSERT INTO `wp_postmeta` VALUES (212,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1901;s:6:\"height\";i:920;s:4:\"file\";s:24:\"2021/02/Screenshot_1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Screenshot_1-1024x496.png\";s:5:\"width\";i:1024;s:6:\"height\";i:496;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-768x372.png\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Screenshot_1-1536x743.png\";s:5:\"width\";i:1536;s:6:\"height\";i:743;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"projectSize\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (213,90,'_thumbnail_id','91');
INSERT INTO `wp_postmeta` VALUES (214,90,'live_project_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:16:\"http://google.ba\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (215,90,'_live_project_link','field_602d8e39ba5c8');
INSERT INTO `wp_postmeta` VALUES (216,90,'github_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:49:\"https://github.com/COBNETCKNN/FictionalUniversity\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (217,90,'_github_link','field_602d8e4fba5c9');
INSERT INTO `wp_postmeta` VALUES (218,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (219,92,'_edit_lock','1613774828:1');
INSERT INTO `wp_postmeta` VALUES (220,93,'_wp_attached_file','2021/02/Screenshot_2.png');
INSERT INTO `wp_postmeta` VALUES (221,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1897;s:6:\"height\";i:925;s:4:\"file\";s:24:\"2021/02/Screenshot_2.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-300x146.png\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Screenshot_2-1024x499.png\";s:5:\"width\";i:1024;s:6:\"height\";i:499;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-768x374.png\";s:5:\"width\";i:768;s:6:\"height\";i:374;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Screenshot_2-1536x749.png\";s:5:\"width\";i:1536;s:6:\"height\";i:749;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"projectSize\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (222,92,'_thumbnail_id','93');
INSERT INTO `wp_postmeta` VALUES (223,92,'live_project_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:16:\"http://google.ba\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (224,92,'_live_project_link','field_602d8e39ba5c8');
INSERT INTO `wp_postmeta` VALUES (225,92,'github_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:40:\"https://github.com/COBNETCKNN/wp-glozzom\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (226,92,'_github_link','field_602d8e4fba5c9');
INSERT INTO `wp_postmeta` VALUES (227,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (228,94,'_edit_lock','1613773580:1');
INSERT INTO `wp_postmeta` VALUES (229,95,'_wp_attached_file','2021/02/Screenshot_4-1.png');
INSERT INTO `wp_postmeta` VALUES (230,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1897;s:6:\"height\";i:933;s:4:\"file\";s:26:\"2021/02/Screenshot_4-1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Screenshot_4-1-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Screenshot_4-1-1024x504.png\";s:5:\"width\";i:1024;s:6:\"height\";i:504;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Screenshot_4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Screenshot_4-1-768x378.png\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"Screenshot_4-1-1536x755.png\";s:5:\"width\";i:1536;s:6:\"height\";i:755;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:26:\"Screenshot_4-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"projectSize\";a:4:{s:4:\"file\";s:26:\"Screenshot_4-1-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (231,94,'_thumbnail_id','95');
INSERT INTO `wp_postmeta` VALUES (232,94,'live_project_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:16:\"http://google.ba\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (233,94,'_live_project_link','field_602d8e39ba5c8');
INSERT INTO `wp_postmeta` VALUES (234,94,'github_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:43:\"https://github.com/COBNETCKNN/wp-flowershop\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (235,94,'_github_link','field_602d8e4fba5c9');
INSERT INTO `wp_postmeta` VALUES (236,96,'_wp_attached_file','2021/02/acf-icon-200.png');
INSERT INTO `wp_postmeta` VALUES (237,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2021/02/acf-icon-200.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"acf-icon-200-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (238,97,'_wp_attached_file','2021/02/acf-logo-flat-green-500x500-circle.png');
INSERT INTO `wp_postmeta` VALUES (239,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:46:\"2021/02/acf-logo-flat-green-500x500-circle.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"acf-logo-flat-green-500x500-circle-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"acf-logo-flat-green-500x500-circle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"aboutAvatar\";a:4:{s:4:\"file\";s:46:\"acf-logo-flat-green-500x500-circle-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"projectSize\";a:4:{s:4:\"file\";s:46:\"acf-logo-flat-green-500x500-circle-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (240,98,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (241,98,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (242,98,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (243,98,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (244,98,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (245,98,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (246,98,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"56\";i:7;s:2:\"96\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (247,98,'_stack_gallery','field_60284405a70dd');
INSERT INTO `wp_postmeta` VALUES (248,102,'stack_repeater_0_programming_language','Sass');
INSERT INTO `wp_postmeta` VALUES (249,102,'_stack_repeater_0_programming_language','field_6027045536501');
INSERT INTO `wp_postmeta` VALUES (250,102,'stack_repeater_0_language_logo','33');
INSERT INTO `wp_postmeta` VALUES (251,102,'_stack_repeater_0_language_logo','field_6027046236502');
INSERT INTO `wp_postmeta` VALUES (252,102,'stack_repeater','1');
INSERT INTO `wp_postmeta` VALUES (253,102,'_stack_repeater','field_6027043736500');
INSERT INTO `wp_postmeta` VALUES (254,102,'stack_gallery','a:10:{i:0;s:2:\"53\";i:1;s:2:\"74\";i:2;s:2:\"58\";i:3;s:2:\"62\";i:4;s:2:\"57\";i:5;s:2:\"55\";i:6;s:2:\"56\";i:7;s:2:\"96\";i:8;s:2:\"59\";i:9;s:2:\"52\";}');
INSERT INTO `wp_postmeta` VALUES (255,102,'_stack_gallery','field_60284405a70dd');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-03 19:32:17','2021-02-03 19:32:17','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-02-03 19:32:17','2021-02-03 19:32:17','',0,'http://portofolio.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (8,1,'2021-02-05 21:38:26','2021-02-05 21:38:26','','Blog','','publish','closed','closed','','blog','','','2021-02-05 21:38:26','2021-02-05 21:38:26','',0,'http://portofolio.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-02-05 21:38:26','2021-02-05 21:38:26','','Blog','','inherit','closed','closed','','8-revision-v1','','','2021-02-05 21:38:26','2021-02-05 21:38:26','',8,'http://portofolio.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-02-05 21:38:36','2021-02-05 21:38:36','','Home','','publish','closed','closed','','home','','','2021-02-07 21:39:23','2021-02-07 21:39:23','',0,'http://portofolio.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-02-05 21:38:36','2021-02-05 21:38:36','','Home','','inherit','closed','closed','','10-revision-v1','','','2021-02-05 21:38:36','2021-02-05 21:38:36','',10,'http://portofolio.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-02-07 21:39:18','2021-02-07 21:39:18','','chris-hardy-RSOCEhCllBk-unsplash','','inherit','open','closed','','chris-hardy-rsocehcllbk-unsplash','','','2021-02-08 14:42:36','2021-02-08 14:42:36','',10,'http://portofolio.local/wp-content/uploads/2021/02/chris-hardy-RSOCEhCllBk-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-02-09 19:47:56','2021-02-09 19:47:56','<!-- wp:paragraph -->\r\n<p>I\'m 23 years old human being from Bosnia and Herzegovina. As a web developer I have used all the major WordPress frameworks, plugins, builders and themes. I design, develop, maintain, update and secure WordPress websites for your needs.</p>\r\n<!-- /wp:paragraph -->','About','','publish','closed','closed','','about','','','2021-02-20 18:35:23','2021-02-20 18:35:23','',0,'http://portofolio.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-02-09 19:47:52','2021-02-09 19:47:52','','147950014_3858254840904290_7096354755480656482_n','','inherit','open','closed','','147950014_3858254840904290_7096354755480656482_n','','','2021-02-09 19:47:52','2021-02-09 19:47:52','',13,'http://portofolio.local/wp-content/uploads/2021/02/147950014_3858254840904290_7096354755480656482_n.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-02-09 19:47:56','2021-02-09 19:47:56','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-09 19:47:56','2021-02-09 19:47:56','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-02-09 20:01:39','2021-02-09 20:01:39','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-09 20:01:39','2021-02-09 20:01:39','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-02-09 20:14:04','2021-02-09 20:14:04','','Screenshot_4','','inherit','open','closed','','screenshot_4','','','2021-02-09 20:14:04','2021-02-09 20:14:04','',13,'http://portofolio.local/wp-content/uploads/2021/02/Screenshot_4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-02-09 20:14:42','2021-02-09 20:14:42','','Screenshot_5','','inherit','open','closed','','screenshot_5','','','2021-02-09 20:14:42','2021-02-09 20:14:42','',13,'http://portofolio.local/wp-content/uploads/2021/02/Screenshot_5.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-02-11 15:58:36','2021-02-11 15:58:36','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>\n<!-- /wp:paragraph -->','Who am I?','','inherit','closed','closed','','13-revision-v1','','','2021-02-11 15:58:36','2021-02-11 15:58:36','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-02-11 16:47:17','2021-02-11 16:47:17','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-11 16:47:17','2021-02-11 16:47:17','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-02-12 22:38:56','2021-02-12 22:38:56','Fast load times and proper search engine optimization are my highest priority. My layouts will work on any kind of device, big or small. Strong preference for easy to use, intutitive UX/UI. Websites don\'t have to be static, I love making pages come to life.','Stack','','publish','closed','closed','','stack','','','2021-02-20 18:33:18','2021-02-20 18:33:18','',0,'http://portofolio.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-02-12 22:38:56','2021-02-12 22:38:56','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-12 22:38:56','2021-02-12 22:38:56','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-02-12 23:06:19','2021-02-12 23:06:19','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-12 23:06:19','2021-02-12 23:06:19','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-02-12 23:13:05','2021-02-12 23:13:05','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Stack Gallery','stack-gallery','trash','closed','closed','','group_60270b67d4031__trashed','','','2021-02-13 21:26:16','2021-02-13 21:26:16','',0,'http://portofolio.local/?post_type=acf-field-group&#038;p=35',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-02-12 23:13:05','2021-02-12 23:13:05','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Stack Gallery','stack_gallery','trash','closed','closed','','field_60270b72dcd20__trashed','','','2021-02-13 21:26:16','2021-02-13 21:26:16','',35,'http://portofolio.local/?post_type=acf-field&#038;p=36',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-02-12 23:19:37','2021-02-12 23:19:37','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-12 23:19:37','2021-02-12 23:19:37','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-02-12 23:21:16','2021-02-12 23:21:16','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-12 23:21:16','2021-02-12 23:21:16','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-02-12 23:42:26','2021-02-12 23:42:26','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-12 23:42:26','2021-02-12 23:42:26','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-02-13 21:25:48','2021-02-13 21:25:48','','Git','','inherit','open','closed','','git','','','2021-02-13 22:09:21','2021-02-13 22:09:21','',27,'http://portofolio.local/wp-content/uploads/2021/02/git.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','HTML5','','inherit','open','closed','','html5','','','2021-02-13 22:09:30','2021-02-13 22:09:30','',27,'http://portofolio.local/wp-content/uploads/2021/02/html5.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','jQuery','','inherit','open','closed','','jquery-1','','','2021-02-13 22:09:35','2021-02-13 22:09:35','',27,'http://portofolio.local/wp-content/uploads/2021/02/jquery-1.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','Javascript','','inherit','open','closed','','logo-javascript','','','2021-02-13 22:09:41','2021-02-13 22:09:41','',27,'http://portofolio.local/wp-content/uploads/2021/02/logo-javascript.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','PHP','','inherit','open','closed','','php-1','','','2021-02-13 22:09:46','2021-02-13 22:09:46','',27,'http://portofolio.local/wp-content/uploads/2021/02/php-1.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','SASS','','inherit','open','closed','','sass-1-1','','','2021-02-13 22:09:52','2021-02-13 22:09:52','',27,'http://portofolio.local/wp-content/uploads/2021/02/sass-1-1.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','Tailwind','','inherit','open','closed','','tailwind-css-1-1','','','2021-02-13 22:09:57','2021-02-13 22:09:57','',27,'http://portofolio.local/wp-content/uploads/2021/02/tailwind-css-1-1.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-02-13 21:25:49','2021-02-13 21:25:49','','WooCommerce','','inherit','open','closed','','woocommerce','','','2021-02-13 22:10:23','2021-02-13 22:10:23','',27,'http://portofolio.local/wp-content/uploads/2021/02/woocommerce.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-02-13 21:26:43','2021-02-13 21:26:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Stack Gallery','stack-gallery','publish','closed','closed','','group_602843fa1b4df','','','2021-02-13 21:26:43','2021-02-13 21:26:43','',0,'http://portofolio.local/?post_type=acf-field-group&#038;p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-02-13 21:26:43','2021-02-13 21:26:43','a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Stack Gallery','stack_gallery','publish','closed','closed','','field_60284405a70dd','','','2021-02-13 21:26:43','2021-02-13 21:26:43','',60,'http://portofolio.local/?post_type=acf-field&p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-02-13 21:27:21','2021-02-13 21:27:21','','Bootstrap','','inherit','open','closed','','bootstrap-4','','','2021-02-13 22:10:29','2021-02-13 22:10:29','',27,'http://portofolio.local/wp-content/uploads/2021/02/bootstrap-4.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-02-13 21:27:41','2021-02-13 21:27:41','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:27:41','2021-02-13 21:27:41','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-02-13 21:31:05','2021-02-13 21:31:05','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:31:05','2021-02-13 21:31:05','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-02-13 21:38:18','2021-02-13 21:38:18','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:38:18','2021-02-13 21:38:18','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-02-13 21:38:38','2021-02-13 21:38:38','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:38:38','2021-02-13 21:38:38','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-02-13 21:39:08','2021-02-13 21:39:08','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:39:08','2021-02-13 21:39:08','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-02-13 21:40:15','2021-02-13 21:40:15','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:40:15','2021-02-13 21:40:15','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-02-13 21:40:53','2021-02-13 21:40:53','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:40:53','2021-02-13 21:40:53','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-02-13 21:41:35','2021-02-13 21:41:35','','CSS3','','inherit','open','closed','','css-3','','','2021-02-13 22:10:40','2021-02-13 22:10:40','',27,'http://portofolio.local/wp-content/uploads/2021/02/CSS.3.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-02-13 21:41:40','2021-02-13 21:41:40','','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-13 21:41:40','2021-02-13 21:41:40','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-02-16 18:49:12','2021-02-16 18:49:12','Fast load times and proper search engine optimization are my highest priority. My layouts will work on any kind of device, big or small. Stron preference for easy to use, intutitive UX/UI. Websites don\'t have to be static, I love making pages come to life','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-16 18:49:12','2021-02-16 18:49:12','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-02-16 18:52:49','2021-02-16 18:52:49','Fast load times and proper search engine optimization are my highest priority. My layouts will work on any kind of device, big or small. Strong preference for easy to use, intutitive UX/UI. Websites don\'t have to be static, I love making pages come to life','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-16 18:52:49','2021-02-16 18:52:49','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-02-16 18:55:55','2021-02-16 18:55:55','<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-16 18:55:55','2021-02-16 18:55:55','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-02-17 21:44:58','2021-02-17 21:44:58','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Project Links','project-links','publish','closed','closed','','group_602d8e31c490d','','','2021-02-19 22:26:20','2021-02-19 22:26:20','',0,'http://portofolio.local/?post_type=acf-field-group&#038;p=80',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-02-17 21:44:58','2021-02-17 21:44:58','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Live Preview Link','live_project_link','publish','closed','closed','','field_602d8e39ba5c8','','','2021-02-19 22:26:14','2021-02-19 22:26:14','',80,'http://portofolio.local/?post_type=acf-field&#038;p=81',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-02-17 21:44:58','2021-02-17 21:44:58','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Github Link','github_link','publish','closed','closed','','field_602d8e4fba5c9','','','2021-02-19 22:26:20','2021-02-19 22:26:20','',80,'http://portofolio.local/?post_type=acf-field&#038;p=82',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-02-19 16:44:39','2021-02-19 16:44:39','','Fictional University','','publish','closed','closed','','fictional-university','','','2021-02-19 22:28:20','2021-02-19 22:28:20','',0,'http://portofolio.local/?post_type=project&#038;p=90',0,'project','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-02-19 16:44:36','2021-02-19 16:44:36','','Screenshot_1','','inherit','open','closed','','screenshot_1','','','2021-02-19 16:44:36','2021-02-19 16:44:36','',90,'http://portofolio.local/wp-content/uploads/2021/02/Screenshot_1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-02-19 16:45:08','2021-02-19 16:45:08','','Glozzom','','publish','closed','closed','','glozzom','','','2021-02-19 22:29:37','2021-02-19 22:29:37','',0,'http://portofolio.local/?post_type=project&#038;p=92',0,'project','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-02-19 16:45:05','2021-02-19 16:45:05','','Screenshot_2','','inherit','open','closed','','screenshot_2','','','2021-02-19 16:45:05','2021-02-19 16:45:05','',92,'http://portofolio.local/wp-content/uploads/2021/02/Screenshot_2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-02-19 16:45:41','2021-02-19 16:45:41','','FlowersHop','','publish','closed','closed','','flowershop','','','2021-02-19 22:28:43','2021-02-19 22:28:43','',0,'http://portofolio.local/?post_type=project&#038;p=94',0,'project','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-02-19 16:45:37','2021-02-19 16:45:37','','Screenshot_4','','inherit','open','closed','','screenshot_4-2','','','2021-02-19 16:45:37','2021-02-19 16:45:37','',94,'http://portofolio.local/wp-content/uploads/2021/02/Screenshot_4-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-02-20 16:47:26','2021-02-20 16:47:26','','acf-icon-200','','inherit','open','closed','','acf-icon-200','','','2021-02-20 16:47:26','2021-02-20 16:47:26','',27,'http://portofolio.local/wp-content/uploads/2021/02/acf-icon-200.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-02-20 16:47:45','2021-02-20 16:47:45','','acf-logo-flat-green-500x500-circle','','inherit','open','closed','','acf-logo-flat-green-500x500-circle','','','2021-02-20 16:47:45','2021-02-20 16:47:45','',27,'http://portofolio.local/wp-content/uploads/2021/02/acf-logo-flat-green-500x500-circle.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-02-20 16:48:05','2021-02-20 16:48:05','Fast load times and proper search engine optimization are my highest priority. My layouts will work on any kind of device, big or small. Strong preference for easy to use, intutitive UX/UI. Websites don\'t have to be static, I love making pages come to life','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-20 16:48:05','2021-02-20 16:48:05','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-02-20 18:29:29','2021-02-20 18:29:29','<!-- wp:paragraph -->\r\n<p>I\'m 23 years old human being from Bosnia, skilled WordPress developer. As a web developer I have used all the major WordPress frameworks, plugins, builders and themes. I design, develop, maintain, update and secure WordPress websites.</p>\r\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-20 18:29:29','2021-02-20 18:29:29','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-02-20 18:32:32','2021-02-20 18:32:32','<!-- wp:paragraph -->\r\n<p>I\'m 23 years old human being from Bosnia. As a web developer I have used all the major WordPress frameworks, plugins, builders and themes. I design, develop, maintain, update and secure WordPress websites.</p>\r\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-20 18:32:32','2021-02-20 18:32:32','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-02-20 18:32:56','2021-02-20 18:32:56','<!-- wp:paragraph -->\r\n<p>I\'m 23 years old human being from Bosnia. As a web developer I have used all the major WordPress frameworks, plugins, builders and themes. I design, develop, maintain, update and secure WordPress websites for your needs.</p>\r\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-20 18:32:56','2021-02-20 18:32:56','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-02-20 18:33:18','2021-02-20 18:33:18','Fast load times and proper search engine optimization are my highest priority. My layouts will work on any kind of device, big or small. Strong preference for easy to use, intutitive UX/UI. Websites don\'t have to be static, I love making pages come to life.','Stack','','inherit','closed','closed','','27-revision-v1','','','2021-02-20 18:33:18','2021-02-20 18:33:18','',27,'http://portofolio.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-02-20 18:35:23','2021-02-20 18:35:23','<!-- wp:paragraph -->\r\n<p>I\'m 23 years old human being from Bosnia and Herzegovina. As a web developer I have used all the major WordPress frameworks, plugins, builders and themes. I design, develop, maintain, update and secure WordPress websites for your needs.</p>\r\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','13-revision-v1','','','2021-02-20 18:35:23','2021-02-20 18:35:23','',13,'http://portofolio.local/13-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"23999d44c5957d60a4d5eacb0fe4f034606b68fc82d332a59309265aeaf45f41\";a:4:{s:10:\"expiration\";i:1613925823;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1613753023;}s:64:\"6c05446172055205d0e4ce1c0f02fd29afd956220dec154d610f7f7175a4c8f6\";a:4:{s:10:\"expiration\";i:1613926683;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1613753883;}s:64:\"26ec12bf645b90109624028d3507fa037bdc20eff1d22c60c955b7fc7e6aaf64\";a:4:{s:10:\"expiration\";i:1614012404;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1613839604;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','89');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1612396758');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BiItkbfFL21xAytXRI6jtiSJnytAPd1','admin','dev-email@flywheel.local','http://portofolio.local','2021-02-03 19:32:17','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04  1:59:46
