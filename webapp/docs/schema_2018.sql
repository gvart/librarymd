--
-- Table structure for table `adminslog`
--

DROP TABLE IF EXISTS `adminslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `an_nou_fulgi`
--

DROP TABLE IF EXISTS `an_nou_fulgi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `an_nou_fulgi` (
  `user_id` int(11) NOT NULL,
  `fulgi_url` varchar(255) NOT NULL,
  `fulgi_no` tinyint(4) NOT NULL,
  `fulgi_enable` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `an_nou_jucarii`
--

DROP TABLE IF EXISTS `an_nou_jucarii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `an_nou_jucarii` (
  `img_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `leftpx` smallint(6) DEFAULT NULL,
  `toppx` smallint(6) DEFAULT NULL,
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avps`
--

DROP TABLE IF EXISTS `avps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avps` (
  `arg` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`arg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_ro` varchar(100) NOT NULL,
  `title_ru` varchar(100) NOT NULL,
  `desc_ro` text NOT NULL,
  `desc_ru` text NOT NULL,
  `img` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banned_email`
--

DROP TABLE IF EXISTS `banned_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned_email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first` int(11) DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first` (`first`),
  KEY `last` (`last`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bans_browser`
--

DROP TABLE IF EXISTS `bans_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans_browser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `browser_hash` varchar(32) NOT NULL,
  `until` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `browser_hash` (`browser_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bans_ip_hash`
--

DROP TABLE IF EXISTS `bans_ip_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans_ip_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `bans_registration`
--

DROP TABLE IF EXISTS `bans_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans_registration` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) DEFAULT NULL,
  `comment` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `added` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `blockid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blockid` (`blockid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (userid)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text CHARACTER SET utf8,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `censored` enum('y','n') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`torrent`,`id`),
  KEY `id` (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flagpic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `downloaded_torrents`
--

DROP TABLE IF EXISTS `downloaded_torrents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloaded_torrents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `torrent` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `browser_hash` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `browser_hash` (`browser_hash`),
  KEY `date` (`date`),
  KEY `torrent` (`torrent`),
  KEY `user_torrent` (`user`,`torrent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `dateUnix` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) DEFAULT NULL,
  `organizators` varchar(100) DEFAULT NULL,
  `forumTopicId` int(11) DEFAULT NULL,
  `photoCatId` int(11) DEFAULT NULL,
  `addedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL,
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (torrent)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forum_admin_answer`
--

DROP TABLE IF EXISTS `forum_admin_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_admin_answer` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicid` int(10) NOT NULL,
  `postid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forum_moderators`
--

DROP TABLE IF EXISTS `forum_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_moderators` (
  `forum_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `statut` enum('moderator_primar','moderator_secundar') NOT NULL,
  KEY `forum_category_id` (`forum_category_id`,`user_id`,`statut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_ro` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minclassread` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minclasswrite` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postcount` int(10) unsigned NOT NULL DEFAULT '0',
  `topiccount` int(10) unsigned NOT NULL DEFAULT '0',
  `minclasscreate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lastPost` int(10) unsigned NOT NULL,
  `tomdOnly` enum('y','n') COLLATE utf8_unicode_ci DEFAULT 'n',
  `topicmdOnly` enum('y','n') COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `lastPost` (`lastPost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forums_tags`
--

DROP TABLE IF EXISTS `forums_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums_tags` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `forum` smallint(6) unsigned DEFAULT NULL,
  `name_ro` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forum` (`forum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forumslog`
--

DROP TABLE IF EXISTS `forumslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` text NOT NULL,
  `forumid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forumid` (`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests` (
  `sender_user_id` int(10) unsigned NOT NULL,
  `receiver_user_id` int(10) unsigned NOT NULL,
  `status` enum('awaits','refused','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'awaits',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`receiver_user_id`,`sender_user_id`),
  KEY `sender_user_id` (`sender_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `friendid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `friendid` (`friendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `global_notifications`
--

DROP TABLE IF EXISTS `global_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdb_tt`
--

DROP TABLE IF EXISTS `imdb_tt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imdb_tt` (
  `id` mediumint(9) unsigned NOT NULL,
  `votes` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `rating` tinyint(3) NOT NULL DEFAULT '0',
  `year` smallint(6) NOT NULL DEFAULT '0',
  `date_published` date NOT NULL DEFAULT '0000-00-00',
  `bayesian_rating` tinyint(3) NOT NULL DEFAULT '0',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `torrents` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rating_votes` (`rating`,`votes`),
  KEY `year_bayesian_rating` (`year`,`bayesian_rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdb_tt_to_process`
--

DROP TABLE IF EXISTS `imdb_tt_to_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imdb_tt_to_process` (
  `id` mediumint(9) unsigned NOT NULL,
  `verified` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdb_tt_top250`
--

DROP TABLE IF EXISTS `imdb_tt_top250`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imdb_tt_top250` (
  `imdb` mediumint(9) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inviter` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `msg` text,
  `unread` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `location` enum('in','out','both') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'in',
  KEY `receiver` (`receiver`),
  KEY `sender` (`sender`),
  KEY `added` (`added`),
  KEY `id` (`id`),
  KEY `rec_loc_id` (`receiver`,`location`,`id`),
  KEY `sender_loc_id` (`sender`,`location`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (receiver)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages_archive`
--

DROP TABLE IF EXISTS `messages_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `msg` text,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  `location` enum('in','out','both') NOT NULL DEFAULT 'in',
  KEY `receiver` (`receiver`),
  KEY `unread` (`unread`),
  KEY `sender` (`sender`),
  KEY `added` (`added`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (receiver)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `moderslog`
--

DROP TABLE IF EXISTS `moderslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moderslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body_ru` text CHARACTER SET utf8,
  `body_ro` text CHARACTER SET utf8,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `msg` text,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `user_id_id` (`user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peers`
--

DROP TABLE IF EXISTS `peers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `peer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `to_go` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seeder` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `connectable` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `agent` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `finishedat` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uploadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  KEY `torrent` (`torrent`),
  KEY `userid` (`userid`),
  KEY `id` (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (torrent)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pollanswers`
--

DROP TABLE IF EXISTS `pollanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollanswers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pollid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `selection` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`),
  KEY `selection` (`selection`),
  KEY `userid` (`userid`),
  KEY `pollid_userid` (`pollid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `question_ro` text NOT NULL,
  `question_ru` text NOT NULL,
  `options` text NOT NULL,
  `sort` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `body` text CHARACTER SET utf8,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ori_text` text CHARACTER SET utf8,
  `censored` enum('y','n') COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` mediumint(10) unsigned NOT NULL DEFAULT '1',
  `forumid` tinyint(3) unsigned NOT NULL,
  `likes` smallint(10) NOT NULL DEFAULT '0',
  `unlikes` smallint(10) NOT NULL DEFAULT '0',
  `mod_approved` enum('yes','no','not_needed','awaiting') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_needed',
  PRIMARY KEY (`forumid`,`topicid`,`page`,`id`),
  KEY `userid` (`userid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Table structure for table `posts_likes`
--

DROP TABLE IF EXISTS `posts_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_likes` (
  `postid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `type` enum('plus','minus') NOT NULL DEFAULT 'plus',
  PRIMARY KEY (`postid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `raportedmsg`
--

DROP TABLE IF EXISTS `raportedmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raportedmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `type` enum('forum','comment') COLLATE utf8_unicode_ci DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `status` enum('waiting','reviewed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `forumid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `postId` (`postId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `readposts`
--

DROP TABLE IF EXISTS `readposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readposts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `topicid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpostread` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`topicid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reds`
--

DROP TABLE IF EXISTS `reds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` int(10) unsigned zerofill DEFAULT NULL,
  `cand` int(10) unsigned DEFAULT NULL,
  `limba` enum('ro','ru') DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `request` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `cat` int(10) unsigned NOT NULL DEFAULT '0',
  `filled` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filledby` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchindex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `year` smallint(6) unsigned DEFAULT NULL,
  `lang` tinyint(4) unsigned DEFAULT NULL,
  `genre` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sitelog`
--

DROP TABLE IF EXISTS `sitelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snatched`
--

DROP TABLE IF EXISTS `snatched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snatched` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `torrentid` int(11) DEFAULT '0',
  `userid` int(11) DEFAULT '0',
  `finish_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `torrentid` (`torrentid`),
  KEY `userid` (`userid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (userid)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sph_counter`
--

DROP TABLE IF EXISTS `sph_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sph_counter` (
  `counter_id` int(11) NOT NULL,
  `max_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` enum('uniqueips','totaldl','totalul','torrents','todayVisit') DEFAULT NULL,
  `value` bigint(20) unsigned NOT NULL DEFAULT '0',
  KEY `KEY` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stylesheets`
--

DROP TABLE IF EXISTS `stylesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylesheets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysopslog`
--

DROP TABLE IF EXISTS `sysopslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysopslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysopslog_real`
--

DROP TABLE IF EXISTS `sysopslog_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysopslog_real` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team` int(11) DEFAULT NULL,
  `member` int(11) DEFAULT NULL,
  `confirmed` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `member` (`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `description` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `owner` int(11) DEFAULT NULL,
  `logo` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `minFilesSizeMb` smallint(6) unsigned DEFAULT NULL,
  `initials` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `owner` (`owner`),
  KEY `name` (`name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_albums`
--

DROP TABLE IF EXISTS `tmusic_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `year` int(10) unsigned NOT NULL DEFAULT '0',
  `total_videos` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) DEFAULT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `moder_status` enum('neverificat','se_verifica','verificat') DEFAULT 'neverificat',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_artists`
--

DROP TABLE IF EXISTS `tmusic_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_artists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `total_videos` int(10) unsigned NOT NULL DEFAULT '0',
  `url_image` text NOT NULL,
  `url_facebook` text NOT NULL,
  `url_discogs` text NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `moder_status` enum('neverificat','se_verifica','verificat') DEFAULT 'neverificat',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_log`
--

DROP TABLE IF EXISTS `tmusic_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_log` (
  `added` datetime NOT NULL,
  `txt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_songs`
--

DROP TABLE IF EXISTS `tmusic_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_songs` (
  `id` varchar(255) NOT NULL,
  `album_id` int(10) unsigned NOT NULL DEFAULT '0',
  `artist_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `youtube_views` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `moder_status` enum('neverificat','se_verifica','verificat') DEFAULT 'neverificat',
  `moder_id` int(10) NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`(12))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_songs_comments`
--

DROP TABLE IF EXISTS `tmusic_songs_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_songs_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `thread_id` varchar(11) NOT NULL,
  `thread_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`thread_id`,`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_songs_info`
--

DROP TABLE IF EXISTS `tmusic_songs_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_songs_info` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tags` text,
  `publishedAt` varchar(255) DEFAULT NULL,
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0',
  `channelTitle` varchar(255) DEFAULT NULL,
  `views` int(10) DEFAULT NULL,
  `likes` int(10) DEFAULT NULL,
  `deslikes` int(10) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL,
  `privacyStatus` varchar(255) DEFAULT NULL,
  `embeddable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`(12))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmusic_to_moderate`
--

DROP TABLE IF EXISTS `tmusic_to_moderate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmusic_to_moderate` (
  `id` varchar(255) NOT NULL,
  `type` enum('song','artist','album') DEFAULT NULL,
  `sate` enum('neverificat','se_verifica','verificat') DEFAULT 'neverificat',
  `moderator_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` text COLLATE utf8_unicode_ci,
  `locked` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `forumid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `subcat` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mod_approval` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `forumid` (`forumid`),
  KEY `created` (`created`),
  KEY `forum_stikey_lastpost` (`forumid`,`sticky`,`lastpost`),
  KEY `subcat` (`subcat`),
  KEY `lastpost` (`lastpost`),
  KEY `forum_lastpost` (`forumid`,`lastpost`),
  KEY `forum_subcat_lastpost` (`forumid`,`subcat`,`lastpost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topics_archive`
--

DROP TABLE IF EXISTS `topics_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(140) DEFAULT NULL,
  `locked` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `forumid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `lastpost` (`lastpost`),
  KEY `forumid` (`forumid`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrent_reports`
--

DROP TABLE IF EXISTS `torrent_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrent_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` int(10) unsigned NOT NULL DEFAULT '0',
  `solvedby` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(5) NOT NULL DEFAULT '0',
  `reason` varchar(256) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `solved` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents`
--

DROP TABLE IF EXISTS `torrents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `info_hash` varchar(40) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `save_as` varchar(255) DEFAULT NULL,
  `category` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('single','multi') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'single',
  `numfiles` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `comments` smallint(6) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `times_completed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `leechers` smallint(6) NOT NULL DEFAULT '0',
  `seeders` smallint(6) NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visible` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `numratings` int(10) unsigned NOT NULL DEFAULT '0',
  `ratingsum` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(7) DEFAULT NULL,
  `torrent_opt` int(10) unsigned NOT NULL DEFAULT '0',
  `team` smallint(6) unsigned DEFAULT NULL,
  `lastcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `moder_status` enum('neverificat','se_verifica','inchis','verificat','necomplet','parital_necomplet','dublare','absorbit','copyright','dubios','temporar') NOT NULL DEFAULT 'neverificat',
  `thanks` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dht_peers` smallint(6) NOT NULL DEFAULT '-1',
  `dht_peers_updated` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `dht_peers_job_started` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `dht_peers_update_scheduled` enum('yes','no') DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `category` (`category`),
  KEY `added` (`added`),
  KEY `team` (`team`),
  KEY `info_hash` (`info_hash`),
  KEY `dht_peers_update_scheduled` (`dht_peers_update_scheduled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (88134) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (165517) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_2`
--

DROP TABLE IF EXISTS `torrents_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `info_hash` varchar(40) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `save_as` varchar(255) DEFAULT NULL,
  `category` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('single','multi') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'single',
  `numfiles` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `comments` smallint(6) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `times_completed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `leechers` smallint(6) NOT NULL DEFAULT '0',
  `seeders` smallint(6) NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visible` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `numratings` int(10) unsigned NOT NULL DEFAULT '0',
  `ratingsum` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(7) DEFAULT NULL,
  `torrent_opt` int(10) unsigned NOT NULL DEFAULT '0',
  `team` smallint(6) unsigned DEFAULT NULL,
  `lastcomment` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `category` (`category`),
  KEY `added` (`added`),
  KEY `team` (`team`),
  KEY `info_hash` (`info_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (88134) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (96695) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_added`
--

DROP TABLE IF EXISTS `torrents_added`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_added` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `addedUnix` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addedUnix` (`addedUnix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_catetags`
--

DROP TABLE IF EXISTS `torrents_catetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_catetags` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name_ro` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `father` mediumint(8) unsigned NOT NULL,
  `desc_ro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderi` smallint(8) DEFAULT '0',
  `visible` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'yes',
  `checkable` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'yes',
  `total` mediumint(3) DEFAULT '0',
  `dependendOnCategTagCSV` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_catetags_index`
--

DROP TABLE IF EXISTS `torrents_catetags_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_catetags_index` (
  `torrent` int(9) unsigned NOT NULL,
  `catetag` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`catetag`,`torrent`),
  KEY `torrent` (`torrent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_details`
--

DROP TABLE IF EXISTS `torrents_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_details` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `descr_ar` text CHARACTER SET utf8,
  `descr_search_str` text COLLATE utf8_unicode_ci NOT NULL,
  `descr_html` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (id)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_details_versioned`
--

DROP TABLE IF EXISTS `torrents_details_versioned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_details_versioned` (
  `id` int(10) unsigned NOT NULL,
  `changed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descr_ar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_genres`
--

DROP TABLE IF EXISTS `torrents_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_genres` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `categ` tinyint(4) unsigned DEFAULT NULL,
  `genre` smallint(6) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrentid` (`torrentid`),
  KEY `ind_genre` (`genre`),
  KEY `categ_genre_id` (`categ`,`genre`,`torrentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_hot_fields`
--

DROP TABLE IF EXISTS `torrents_hot_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_hot_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `leechers` smallint(6) NOT NULL DEFAULT '0',
  `seeders` smallint(6) NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `times_completed` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_hot_fields_MyIsam`
--

DROP TABLE IF EXISTS `torrents_hot_fields_MyIsam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_hot_fields_MyIsam` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `leechers` smallint(6) NOT NULL DEFAULT '0',
  `seeders` smallint(6) NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `times_completed` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_imdb`
--

DROP TABLE IF EXISTS `torrents_imdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_imdb` (
  `torrent` int(9) unsigned NOT NULL,
  `imdb_tt` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`torrent`),
  KEY `imdb_tt` (`imdb_tt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_rates`
--

DROP TABLE IF EXISTS `torrents_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_rates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `torrentid` int(11) unsigned DEFAULT NULL,
  `userid` int(11) unsigned DEFAULT NULL,
  `rate` tinyint(4) unsigned DEFAULT NULL,
  `rate_time` datetime DEFAULT NULL,
  KEY `userid` (`userid`),
  KEY `torrentid` (`torrentid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (torrentid)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_see_lee`
--

DROP TABLE IF EXISTS `torrents_see_lee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_see_lee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `leechers` smallint(6) NOT NULL DEFAULT '0',
  `seeders` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_tags`
--

DROP TABLE IF EXISTS `torrents_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_tags` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(11) NOT NULL DEFAULT '0',
  `torrentid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrentid` (`torrentid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_tags_index`
--

DROP TABLE IF EXISTS `torrents_tags_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_tags_index` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` tinytext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_name` (`tag_name`(100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_thanks`
--

DROP TABLE IF EXISTS `torrents_thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_thanks` (
  `torrent` mediumint(9) unsigned DEFAULT NULL,
  `user` mediumint(9) unsigned DEFAULT NULL,
  `torrent_owner` mediumint(9) unsigned DEFAULT NULL,
  `thank_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (torrent)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_thanks_count`
--

DROP TABLE IF EXISTS `torrents_thanks_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_thanks_count` (
  `id` mediumint(9) unsigned DEFAULT NULL,
  `count` mediumint(9) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrents_years`
--

DROP TABLE IF EXISTS `torrents_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrents_years` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `year` smallint(6) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `torrentid` (`torrentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torrentsmoderslog`
--

DROP TABLE IF EXISTS `torrentsmoderslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torrentsmoderslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upload_cat_fields`
--

DROP TABLE IF EXISTS `upload_cat_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_cat_fields` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name_ro` varchar(20) NOT NULL,
  `name_ru` varchar(20) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `typeGen` text NOT NULL,
  `typeGenMore` text NOT NULL,
  `req` tinyint(1) NOT NULL,
  `js` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upload_cat_templates`
--

DROP TABLE IF EXISTS `upload_cat_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_cat_templates` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `catID` int(11) NOT NULL,
  `subCat` int(11) DEFAULT NULL,
  `templates` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_posts_in_topics`
--

DROP TABLE IF EXISTS `user_posts_in_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_posts_in_topics` (
  `userid` int(10) NOT NULL,
  `topicid` int(10) NOT NULL,
  `max_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `posts` int(10) NOT NULL,
  PRIMARY KEY (`userid`,`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `old_password` varchar(40) DEFAULT NULL,
  `passhash` varchar(32) DEFAULT NULL,
  `secret` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editsecret` varchar(32) DEFAULT NULL,
  `privacy` enum('strong','normal','low') NOT NULL DEFAULT 'normal',
  `info` text,
  `acceptpms` enum('yes','friends','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(64) DEFAULT NULL,
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `avatar` enum('yes','no') NOT NULL DEFAULT 'no',
  `title` varchar(70) DEFAULT NULL,
  `notifs` varchar(200) DEFAULT '[pm]',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `avatars` enum('yes','no') NOT NULL DEFAULT 'yes',
  `donor` enum('yes','no') NOT NULL DEFAULT 'no',
  `warned` enum('yes','no') NOT NULL DEFAULT 'no',
  `warneduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `torrentsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `topicsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `postsperpage` int(3) unsigned NOT NULL DEFAULT '0',
  `deletepms` enum('yes','no') NOT NULL DEFAULT 'yes',
  `savepms` enum('yes','no') NOT NULL DEFAULT 'no',
  `passkey` varchar(32) DEFAULT NULL,
  `region` mediumint(9) DEFAULT NULL,
  `language` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `last_browse_see` int(11) unsigned DEFAULT '0',
  `have_voted` enum('yes','no') DEFAULT 'no',
  `user_opt` int(10) unsigned NOT NULL DEFAULT '0',
  `postingbanuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gender` enum('masc','fem','none') DEFAULT 'none',
  `clone_hash` varchar(32) DEFAULT NULL,
  `invisible` enum('yes','no') DEFAULT NULL,
  `team` smallint(6) unsigned DEFAULT NULL,
  `thanks` int(11) DEFAULT '0',
  `browserSession` varchar(32) DEFAULT NULL,
  `browserHash` varchar(32) DEFAULT NULL,
  `uploadbanuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `downloadbanuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inviter` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar_version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `download_no_passkey` tinyint(1) DEFAULT '0',
  `topicmd_only` enum('y','n') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  `email_is_invalid` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `status_added` (`status`,`added`),
  KEY `enabled` (`enabled`),
  KEY `class` (`class`),
  KEY `status` (`status`),
  KEY `ip` (`ip`),
  KEY `browserHash` (`browserHash`),
  KEY `passkey` (`passkey`),
  KEY `username` (`username`),
  KEY `inviter` (`inviter`),
  KEY `email` (`email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (id)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_acl`
--

DROP TABLE IF EXISTS `users_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_acl` (
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_additional`
--

DROP TABLE IF EXISTS `users_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_additional` (
  `id` int(11) NOT NULL,
  `comments` mediumint(9) DEFAULT '0',
  `posts` mediumint(9) DEFAULT '0',
  `spankuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_invites` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_regeneration` date NOT NULL DEFAULT '0000-00-00',
  `total_censored` int(10) DEFAULT '0',
  `author_of_reported_posts_total` int(10) DEFAULT '0',
  `author_of_reported_posts_total_censored` int(10) DEFAULT '0',
  `total_wall_posts` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_badges`
--

DROP TABLE IF EXISTS `users_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_badges` (
  `userId` int(10) unsigned NOT NULL,
  `badgeId` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_down_up`
--

DROP TABLE IF EXISTS `users_down_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_down_up` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_topic` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_updates` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `last_access` (`last_access`),
  KEY `last_access_topic` (`last_access_topic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (id)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_down_up2`
--

DROP TABLE IF EXISTS `users_down_up2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_down_up2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `last_access` (`last_access`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (id)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_down_up_MyIsam`
--

DROP TABLE IF EXISTS `users_down_up_MyIsam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_down_up_MyIsam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_down_up_onHdd`
--

DROP TABLE IF EXISTS `users_down_up_onHdd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_down_up_onHdd` (
  `id` int(10) unsigned NOT NULL,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_down_up_to_increment`
--

DROP TABLE IF EXISTS `users_down_up_to_increment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_down_up_to_increment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (id)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_hot`
--

DROP TABLE IF EXISTS `users_hot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_hot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_browse_see` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_hot_old`
--

DROP TABLE IF EXISTS `users_hot_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_hot_old` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_browse_see` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_inbox`
--

DROP TABLE IF EXISTS `users_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_inbox` (
  `id` int(11) NOT NULL DEFAULT '0',
  `received` smallint(6) unsigned DEFAULT '0',
  `sended` smallint(6) unsigned DEFAULT '0',
  `unread` smallint(6) unsigned DEFAULT '0',
  `unread_notifications` smallint(6) unsigned DEFAULT '0',
  `last_read_global_notification` int(10) unsigned DEFAULT '0',
  `last_notification_received` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_notification_email` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unread_watched_notification_maxLastSeenMsg` int(11) unsigned NOT NULL DEFAULT '0',
  `last_email_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emails_sent` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_inbox_archive`
--

DROP TABLE IF EXISTS `users_inbox_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_inbox_archive` (
  `id` int(11) NOT NULL DEFAULT '0',
  `received` smallint(6) unsigned DEFAULT '0',
  `sended` smallint(6) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_json`
--

DROP TABLE IF EXISTS `users_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_json` (
  `id` int(11) NOT NULL,
  `json` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_rare`
--

DROP TABLE IF EXISTS `users_rare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_rare` (
  `id` int(11) NOT NULL,
  `modcomment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_stats`
--

DROP TABLE IF EXISTS `users_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_stats` (
  `userid` int(10) NOT NULL,
  `total_censored` int(10) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_stats_comments`
--

DROP TABLE IF EXISTS `users_stats_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_stats_comments` (
  `userid` int(10) NOT NULL,
  `total_censored` int(10) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_stats_temp`
--

DROP TABLE IF EXISTS `users_stats_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_stats_temp` (
  `userid` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_username`
--

DROP TABLE IF EXISTS `users_username`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_username` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `gender` enum('masc','fem','none') DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dump completed on 2018-01-29 21:11:32
