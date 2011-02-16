CREATE TABLE `microposts` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `relationships` (
  `id` int(11) NOT NULL auto_increment,
  `follower_id` int(11) default NULL,
  `followed_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `encrypted_password` varchar(255) collate utf8_unicode_ci default NULL,
  `salt` varchar(255) collate utf8_unicode_ci default NULL,
  `user_type_id` int(11) default '3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20110201204536');

INSERT INTO schema_migrations (version) VALUES ('20110202014448');

INSERT INTO schema_migrations (version) VALUES ('20110202033251');

INSERT INTO schema_migrations (version) VALUES ('20110202041319');

INSERT INTO schema_migrations (version) VALUES ('20110209201438');

INSERT INTO schema_migrations (version) VALUES ('20110210222221');