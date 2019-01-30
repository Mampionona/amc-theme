# WordPress MySQL database migration
#
# Generated: Wednesday 30. January 2019 07:46 UTC
# Hostname: localhost
# Database: `amc`
# URL: //192.168.88.12/amc
# Path: C:\\laragon\\www\\amc
# Tables: amc_commentmeta, amc_comments, amc_links, amc_nf3_action_meta, amc_nf3_actions, amc_nf3_chunks, amc_nf3_field_meta, amc_nf3_fields, amc_nf3_form_meta, amc_nf3_forms, amc_nf3_object_meta, amc_nf3_objects, amc_nf3_relationships, amc_nf3_upgrades, amc_options, amc_postmeta, amc_posts, amc_term_relationships, amc_term_taxonomy, amc_termmeta, amc_terms, amc_usermeta, amc_users
# Table Prefix: amc_
# Post Types: revision, acf-field, acf-field-group, attachment, nav_menu_item, page, post, wck-meta-box, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `amc_commentmeta`
#

DROP TABLE IF EXISTS `amc_commentmeta`;


#
# Table structure of table `amc_commentmeta`
#

CREATE TABLE `amc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_commentmeta`
#

#
# End of data contents of table `amc_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `amc_comments`
#

DROP TABLE IF EXISTS `amc_comments`;


#
# Table structure of table `amc_comments`
#

CREATE TABLE `amc_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_comments`
#
INSERT INTO `amc_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-22 12:54:56', '2019-01-22 11:54:56', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `amc_comments`
# --------------------------------------------------------



#
# Delete any existing table `amc_links`
#

DROP TABLE IF EXISTS `amc_links`;


#
# Table structure of table `amc_links`
#

CREATE TABLE `amc_links` (
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


#
# Data contents of table `amc_links`
#

#
# End of data contents of table `amc_links`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_action_meta`
#

DROP TABLE IF EXISTS `amc_nf3_action_meta`;


#
# Table structure of table `amc_nf3_action_meta`
#

CREATE TABLE `amc_nf3_action_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_action_meta`
#
INSERT INTO `amc_nf3_action_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '', 'payment_total', ''),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '', 'to', ''),
(9, 1, 'email_subject', '', 'email_subject', ''),
(10, 1, 'email_message', '', 'email_message', ''),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '', 'payment_total', ''),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '', 'payment_total', ''),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}', 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '', 'payment_total', ''),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '', 'to', ''),
(67, 4, 'email_subject', '', 'email_subject', ''),
(68, 4, 'email_message', '', 'email_message', ''),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', '') ;

#
# End of data contents of table `amc_nf3_action_meta`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_actions`
#

DROP TABLE IF EXISTS `amc_nf3_actions`;


#
# Table structure of table `amc_nf3_actions`
#

CREATE TABLE `amc_nf3_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_actions`
#
INSERT INTO `amc_nf3_actions` ( `id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2019-01-23 13:14:43', '2019-01-23 13:14:43', 'Store Submission'),
(2, '', '', 'email', 1, 1, '2019-01-23 13:14:44', '2019-01-23 13:14:44', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2019-01-23 13:14:45', '2019-01-23 13:14:45', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2019-01-23 13:14:46', '2019-01-23 13:14:46', 'Success Message') ;

#
# End of data contents of table `amc_nf3_actions`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_chunks`
#

DROP TABLE IF EXISTS `amc_nf3_chunks`;


#
# Table structure of table `amc_nf3_chunks`
#

CREATE TABLE `amc_nf3_chunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_chunks`
#

#
# End of data contents of table `amc_nf3_chunks`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_field_meta`
#

DROP TABLE IF EXISTS `amc_nf3_field_meta`;


#
# Table structure of table `amc_nf3_field_meta`
#

CREATE TABLE `amc_nf3_field_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_field_meta`
#
INSERT INTO `amc_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'field_label', NULL, 'field_label', NULL),
(2, 1, 'field_key', NULL, 'field_key', NULL),
(3, 1, 'label_pos', 'above', 'label_pos', 'above'),
(4, 1, 'required', '1', 'required', '1'),
(5, 1, 'order', '1', 'order', '1'),
(6, 1, 'placeholder', '', 'placeholder', ''),
(7, 1, 'default', '', 'default', ''),
(8, 1, 'wrapper_class', '', 'wrapper_class', ''),
(9, 1, 'element_class', '', 'element_class', ''),
(10, 1, 'objectType', 'Field', 'objectType', 'Field'),
(11, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(12, 1, 'editActive', '', 'editActive', ''),
(13, 1, 'container_class', '', 'container_class', ''),
(14, 1, 'input_limit', '', 'input_limit', ''),
(15, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(16, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(17, 1, 'manual_key', '', 'manual_key', ''),
(18, 1, 'disable_input', '', 'disable_input', ''),
(19, 1, 'admin_label', '', 'admin_label', ''),
(20, 1, 'help_text', '', 'help_text', ''),
(21, 1, 'desc_text', '', 'desc_text', ''),
(22, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(23, 1, 'mask', '', 'mask', ''),
(24, 1, 'custom_mask', '', 'custom_mask', ''),
(25, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(26, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(27, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(28, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(29, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(30, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(31, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(32, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(33, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(34, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(35, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(36, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(37, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(38, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(39, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(40, 1, 'label_styles_border', '', 'label_styles_border', ''),
(41, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(42, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(43, 1, 'label_styles_color', '', 'label_styles_color', ''),
(44, 1, 'label_styles_height', '', 'label_styles_height', ''),
(45, 1, 'label_styles_width', '', 'label_styles_width', ''),
(46, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(47, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(48, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(49, 1, 'label_styles_display', '', 'label_styles_display', ''),
(50, 1, 'label_styles_float', '', 'label_styles_float', ''),
(51, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(52, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(53, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(54, 1, 'element_styles_border', '', 'element_styles_border', ''),
(55, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(56, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(57, 1, 'element_styles_color', '', 'element_styles_color', ''),
(58, 1, 'element_styles_height', '', 'element_styles_height', ''),
(59, 1, 'element_styles_width', '', 'element_styles_width', ''),
(60, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(61, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(62, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(63, 1, 'element_styles_display', '', 'element_styles_display', ''),
(64, 1, 'element_styles_float', '', 'element_styles_float', ''),
(65, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(66, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(67, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(68, 2, 'field_label', NULL, 'field_label', NULL),
(69, 2, 'field_key', NULL, 'field_key', NULL),
(70, 2, 'label_pos', 'above', 'label_pos', 'above'),
(71, 2, 'required', '1', 'required', '1'),
(72, 2, 'order', '2', 'order', '2'),
(73, 2, 'placeholder', '', 'placeholder', ''),
(74, 2, 'default', '', 'default', ''),
(75, 2, 'wrapper_class', '', 'wrapper_class', ''),
(76, 2, 'element_class', '', 'element_class', ''),
(77, 2, 'objectType', 'Field', 'objectType', 'Field'),
(78, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(79, 2, 'editActive', '', 'editActive', ''),
(80, 2, 'container_class', '', 'container_class', ''),
(81, 2, 'admin_label', '', 'admin_label', ''),
(82, 2, 'help_text', '', 'help_text', ''),
(83, 2, 'desc_text', '', 'desc_text', ''),
(84, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(85, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(86, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(87, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(88, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(89, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(90, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(91, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(92, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(93, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(94, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(95, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(96, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(97, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(98, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(99, 2, 'label_styles_border', '', 'label_styles_border', ''),
(100, 2, 'label_styles_border-style', '', 'label_styles_border-style', '') ;
INSERT INTO `amc_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(101, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(102, 2, 'label_styles_color', '', 'label_styles_color', ''),
(103, 2, 'label_styles_height', '', 'label_styles_height', ''),
(104, 2, 'label_styles_width', '', 'label_styles_width', ''),
(105, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(106, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(107, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(108, 2, 'label_styles_display', '', 'label_styles_display', ''),
(109, 2, 'label_styles_float', '', 'label_styles_float', ''),
(110, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(111, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(112, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(113, 2, 'element_styles_border', '', 'element_styles_border', ''),
(114, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(115, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(116, 2, 'element_styles_color', '', 'element_styles_color', ''),
(117, 2, 'element_styles_height', '', 'element_styles_height', ''),
(118, 2, 'element_styles_width', '', 'element_styles_width', ''),
(119, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(120, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(121, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(122, 2, 'element_styles_display', '', 'element_styles_display', ''),
(123, 2, 'element_styles_float', '', 'element_styles_float', ''),
(124, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(125, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(126, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(127, 3, 'field_label', NULL, 'field_label', NULL),
(128, 3, 'field_key', NULL, 'field_key', NULL),
(129, 3, 'label_pos', 'above', 'label_pos', 'above'),
(130, 3, 'required', '1', 'required', '1'),
(131, 3, 'order', '3', 'order', '3'),
(132, 3, 'placeholder', '', 'placeholder', ''),
(133, 3, 'default', '', 'default', ''),
(134, 3, 'wrapper_class', '', 'wrapper_class', ''),
(135, 3, 'element_class', '', 'element_class', ''),
(136, 3, 'objectType', 'Field', 'objectType', 'Field'),
(137, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(138, 3, 'editActive', '', 'editActive', ''),
(139, 3, 'container_class', '', 'container_class', ''),
(140, 3, 'input_limit', '', 'input_limit', ''),
(141, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(142, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(143, 3, 'manual_key', '', 'manual_key', ''),
(144, 3, 'disable_input', '', 'disable_input', ''),
(145, 3, 'admin_label', '', 'admin_label', ''),
(146, 3, 'help_text', '', 'help_text', ''),
(147, 3, 'desc_text', '', 'desc_text', ''),
(148, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(149, 3, 'textarea_rte', '', 'textarea_rte', ''),
(150, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(151, 3, 'textarea_media', '', 'textarea_media', ''),
(152, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(153, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(154, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(155, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(156, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(157, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(158, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(159, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(160, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(161, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(162, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(163, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(164, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(165, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(166, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(167, 3, 'label_styles_border', '', 'label_styles_border', ''),
(168, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(169, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(170, 3, 'label_styles_color', '', 'label_styles_color', ''),
(171, 3, 'label_styles_height', '', 'label_styles_height', ''),
(172, 3, 'label_styles_width', '', 'label_styles_width', ''),
(173, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(174, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(175, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(176, 3, 'label_styles_display', '', 'label_styles_display', ''),
(177, 3, 'label_styles_float', '', 'label_styles_float', ''),
(178, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(179, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(180, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(181, 3, 'element_styles_border', '', 'element_styles_border', ''),
(182, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(183, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(184, 3, 'element_styles_color', '', 'element_styles_color', ''),
(185, 3, 'element_styles_height', '', 'element_styles_height', ''),
(186, 3, 'element_styles_width', '', 'element_styles_width', ''),
(187, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(188, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(189, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(190, 3, 'element_styles_display', '', 'element_styles_display', ''),
(191, 3, 'element_styles_float', '', 'element_styles_float', ''),
(192, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(193, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(194, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(195, 4, 'field_label', NULL, 'field_label', NULL),
(196, 4, 'field_key', NULL, 'field_key', NULL),
(197, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(198, 4, 'order', '5', 'order', '5'),
(199, 4, 'objectType', 'Field', 'objectType', 'Field'),
(200, 4, 'objectDomain', 'fields', 'objectDomain', 'fields') ;
INSERT INTO `amc_nf3_field_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(201, 4, 'editActive', '', 'editActive', ''),
(202, 4, 'container_class', '', 'container_class', ''),
(203, 4, 'element_class', '', 'element_class', ''),
(204, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(205, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(206, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(207, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(208, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(209, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(210, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(211, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(212, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(213, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(214, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(215, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(216, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(217, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(218, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(219, 4, 'label_styles_border', '', 'label_styles_border', ''),
(220, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(221, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(222, 4, 'label_styles_color', '', 'label_styles_color', ''),
(223, 4, 'label_styles_height', '', 'label_styles_height', ''),
(224, 4, 'label_styles_width', '', 'label_styles_width', ''),
(225, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(226, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(227, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(228, 4, 'label_styles_display', '', 'label_styles_display', ''),
(229, 4, 'label_styles_float', '', 'label_styles_float', ''),
(230, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(231, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(232, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(233, 4, 'element_styles_border', '', 'element_styles_border', ''),
(234, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(235, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(236, 4, 'element_styles_color', '', 'element_styles_color', ''),
(237, 4, 'element_styles_height', '', 'element_styles_height', ''),
(238, 4, 'element_styles_width', '', 'element_styles_width', ''),
(239, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(240, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(241, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(242, 4, 'element_styles_display', '', 'element_styles_display', ''),
(243, 4, 'element_styles_float', '', 'element_styles_float', ''),
(244, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(245, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(246, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(247, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(248, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(249, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(250, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(251, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(252, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(253, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(254, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(255, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(256, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(257, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(258, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(259, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(260, 4, 'cellcid', 'c3287', 'cellcid', 'c3287') ;

#
# End of data contents of table `amc_nf3_field_meta`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_fields`
#

DROP TABLE IF EXISTS `amc_nf3_fields`;


#
# Table structure of table `amc_nf3_fields`
#

CREATE TABLE `amc_nf3_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext,
  `field_key` longtext,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_fields`
#
INSERT INTO `amc_nf3_fields` ( `id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2019-01-23 13:14:41', '2019-01-23 13:14:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Email', 'email', 'email', 1, '2019-01-23 13:14:41', '2019-01-23 13:14:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Message', 'message', 'textarea', 1, '2019-01-23 13:14:41', '2019-01-23 13:14:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Submit', 'submit', 'submit', 1, '2019-01-23 13:14:42', '2019-01-23 13:14:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ;

#
# End of data contents of table `amc_nf3_fields`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_form_meta`
#

DROP TABLE IF EXISTS `amc_nf3_form_meta`;


#
# Table structure of table `amc_nf3_form_meta`
#

CREATE TABLE `amc_nf3_form_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_form_meta`
#
INSERT INTO `amc_nf3_form_meta` ( `id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2019-01-23 13:14:37', 'created_at', '2019-01-23 13:14:37'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '', 'editActive', ''),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}', 'formContentData', 'a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', '') ;

#
# End of data contents of table `amc_nf3_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_forms`
#

DROP TABLE IF EXISTS `amc_nf3_forms`;


#
# Table structure of table `amc_nf3_forms`
#

CREATE TABLE `amc_nf3_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_forms`
#
INSERT INTO `amc_nf3_forms` ( `id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2019-01-23 13:14:37', '2019-01-23 13:14:37', NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL) ;

#
# End of data contents of table `amc_nf3_forms`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_object_meta`
#

DROP TABLE IF EXISTS `amc_nf3_object_meta`;


#
# Table structure of table `amc_nf3_object_meta`
#

CREATE TABLE `amc_nf3_object_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_object_meta`
#

#
# End of data contents of table `amc_nf3_object_meta`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_objects`
#

DROP TABLE IF EXISTS `amc_nf3_objects`;


#
# Table structure of table `amc_nf3_objects`
#

CREATE TABLE `amc_nf3_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_objects`
#

#
# End of data contents of table `amc_nf3_objects`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_relationships`
#

DROP TABLE IF EXISTS `amc_nf3_relationships`;


#
# Table structure of table `amc_nf3_relationships`
#

CREATE TABLE `amc_nf3_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_relationships`
#

#
# End of data contents of table `amc_nf3_relationships`
# --------------------------------------------------------



#
# Delete any existing table `amc_nf3_upgrades`
#

DROP TABLE IF EXISTS `amc_nf3_upgrades`;


#
# Table structure of table `amc_nf3_upgrades`
#

CREATE TABLE `amc_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `amc_nf3_upgrades`
#
INSERT INTO `amc_nf3_upgrades` ( `id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:4:{s:2:"id";i:1;s:6:"fields";a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:70:{s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:9:"parent_id";i:1;s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"1";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:62:{s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:9:"parent_id";i:1;s:4:"type";s:5:"email";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"2";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:71:{s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:9:"parent_id";i:1;s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"3";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:69:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";i:1;s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2019-01-23 13:14:42";s:16:"processing_label";s:10:"Processing";s:5:"order";s:1:"5";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";}}}s:7:"actions";a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:25:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:43";s:5:"label";s:16:"Store Submission";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:26:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:44";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{all_fields_table}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:24:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:45";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:60:"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:27:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:46";s:5:"label";s:15:"Success Message";s:7:"message";s:47:"Thank you {field:name} for filling out my form!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:89:"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>";s:19:"email_message_plain";s:0:"";}}}s:8:"settings";a:99:{s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2019-01-23 13:14:37";s:17:"default_label_pos";s:5:"above";s:10:"conditions";a:0:{}s:10:"objectType";s:12:"Form Setting";s:10:"editActive";s:0:"";s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:4:{i:0;a:2:{s:5:"order";s:1:"0";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:4:"name";}s:5:"width";s:3:"100";}}}i:1;a:2:{s:5:"order";s:1:"1";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:5:"email";}s:5:"width";s:3:"100";}}}i:2;a:2:{s:5:"order";s:1:"2";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:7:"message";}s:5:"width";s:3:"100";}}}i:3;a:2:{s:5:"order";s:1:"3";s:5:"cells";a:1:{i:0;a:3:{s:5:"order";s:1:"0";s:6:"fields";a:1:{i:0;s:6:"submit";}s:5:"width";s:3:"100";}}}}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";}}', 4, b'0') ;

#
# End of data contents of table `amc_nf3_upgrades`
# --------------------------------------------------------



#
# Delete any existing table `amc_options`
#

DROP TABLE IF EXISTS `amc_options`;


#
# Table structure of table `amc_options`
#

CREATE TABLE `amc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_options`
#
INSERT INTO `amc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.88.12/amc', 'yes'),
(2, 'home', 'http://192.168.88.12/amc', 'yes'),
(3, 'blogname', 'AMC', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'devke03@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:51:"cf7-invisible-recaptcha/cf7-Invisible-recaptcha.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:23:"loco-translate/loco.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:13:"soil/soil.php";i:7;s:35:"themeum-project/themeum-project.php";i:8;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'starter', 'yes'),
(41, 'stylesheet', 'amc-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:79:"<ul>\r\n 	<li><a href="http://192.168.88.12/amc/contact/">Contact</a></li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"ninja-forms/ninja-forms.php";s:21:"ninja_forms_uninstall";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'amc_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"loco_admin";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:10:"translator";a:2:{s:4:"name";s:10:"Translator";s:12:"capabilities";a:2:{s:4:"read";b:1;s:10:"loco_admin";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `amc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:4:"Meta";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:1:{i:0;s:6:"meta-2";}s:6:"bottom";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1548834901;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1548849301;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1548849302;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1548849391;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1548850987;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548159176;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'AMC Theme', 'yes'),
(147, 'theme_mods_amc-theme', 'a:25:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548224785;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:6:"bottom";a:0:{}}}s:15:"body_font_style";a:3:{s:4:"size";s:4:"14px";s:5:"style";s:3:"400";s:5:"color";s:7:"#111111";}s:18:"heading_font_style";a:2:{s:5:"style";s:3:"700";s:5:"color";s:7:"#555555";}s:9:"nav_style";a:1:{s:5:"style";s:3:"700";}s:7:"backups";N;s:9:"smof_init";s:31:"Wed, 23 Jan 2019 06:35:37 +0000";s:7:"favicon";s:0:"";s:11:"before_head";s:0:"";s:11:"before_body";s:0:"";s:10:"logo_image";s:45:"[site_url]/wp-content/uploads/2019/01/amc.png";s:7:"presets";s:7:"preset1";s:7:"body_bg";s:7:"#ffffff";s:9:"header_bg";s:7:"#ffffff";s:9:"footer_bg";s:7:"#34495E";s:8:"g_select";s:7:"Raleway";s:9:"head_font";s:7:"Raleway";s:8:"nav_font";s:7:"Raleway";s:14:"copyright_text";s:0:"";s:16:"google_analytics";s:0:"";s:10:"custom_css";s:0:"";s:9:"of_backup";s:0:"";s:11:"of_transfer";s:0:"";}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'widget_themeum_image_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'widget_themeum_social_share_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'recently_activated', 'a:8:{s:49:"ajaxify-wordpress-site/ajaxify-wordpress-site.php";i:1548834240;s:30:"advanced-custom-fields/acf.php";i:1548680876;s:55:"wck-custom-fields-and-custom-post-types-creator/wck.php";i:1548680841;s:21:"meta-box/meta-box.php";i:1548658031;s:44:"widget-settings-importexport/widget-data.php";i:1548654748;s:35:"themeum-project/themeum-project.php";i:1548396051;s:67:"advanced-custom-field-repeater-collapser/acf_repeater_collapser.php";i:1548396017;s:27:"ninja-forms/ninja-forms.php";i:1548246224;}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(193, 'theme_mods_starter', 'a:12:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548225079;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:6:"bottom";a:0:{}}}s:15:"body_font_style";a:3:{s:4:"size";s:4:"14px";s:5:"style";s:3:"400";s:5:"color";s:7:"#111111";}s:18:"heading_font_style";a:2:{s:5:"style";s:3:"700";s:5:"color";s:7:"#555555";}s:9:"nav_style";a:1:{s:5:"style";s:3:"700";}s:7:"backups";N;s:9:"smof_init";s:31:"Wed, 23 Jan 2019 06:29:52 +0000";s:7:"favicon";s:0:"";s:11:"before_head";s:0:"";s:11:"before_body";s:0:"";s:10:"logo_image";s:0:"";}', 'yes'),
(194, 'updated_data', '1', 'yes'),
(197, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548224991;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(201, 'theme_mods_starter-t', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1548225284;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:6:"bottom";a:0:{}}}}', 'yes'),
(212, 'acf_version', '5.7.10', 'yes'),
(223, 'ninja_forms_oauth_client_secret', '1797x9OSFHLRlj6phSOiOmTH5O9liM7MUGjf7ey9', 'yes'),
(224, 'ninja_forms_version', '3.4.2', 'yes'),
(225, 'ninja_forms_db_version', '1.4', 'no'),
(226, 'ninja_forms_required_updates', 'a:5:{s:19:"CacheCollateActions";s:19:"2019-01-23 12:14:29";s:17:"CacheCollateForms";s:19:"2019-01-23 12:14:29";s:18:"CacheCollateFields";s:19:"2019-01-23 12:14:29";s:19:"CacheCollateObjects";s:19:"2019-01-23 12:14:29";s:19:"CacheCollateCleanup";s:19:"2019-01-23 12:14:29";}', 'yes'),
(227, 'ninja_forms_settings', 'a:7:{s:11:"date_format";s:5:"m/d/Y";s:8:"currency";s:3:"USD";s:18:"recaptcha_site_key";s:0:"";s:20:"recaptcha_secret_key";s:0:"";s:14:"recaptcha_lang";s:0:"";s:19:"delete_on_uninstall";i:0;s:21:"disable_admin_notices";i:0;}', 'yes'),
(228, 'ninja_forms_zuul', '68', 'no'),
(231, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(234, 'ninja_forms_needs_updates', '0', 'yes'),
(235, 'nf_admin_notice', 'a:1:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"1/30/2019";s:3:"int";i:7;}}', 'yes'),
(236, 'nf_form_tel_data', '1', 'no'),
(237, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(238, 'ninja_forms_optin_reported', '0', 'yes'),
(239, 'nf_form_tel_sent', 'true', 'no'),
(244, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1548250069;s:7:"version";s:5:"5.1.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(276, 'invisible_recaptcha_badge_exclude', '', 'yes'),
(277, 'invisible_recaptcha_enable', '1', 'yes'),
(278, 'invisible_recaptcha_sitekey', '6LesdIwUAAAAAIyj9bQYGpn5ngIgT0AgykXLajjz', 'yes'),
(279, 'invisible_recaptcha_secretkey', '6LesdIwUAAAAAN2dnIDRdoi4rjB-8JZkvoShAehO', 'yes'),
(280, 'invisible_recaptcha_badge', 'no', 'yes'),
(281, 'invisible_recaptcha_badge_position', 'bottomright', 'yes'),
(309, 'container-id', 'ajax-content', 'yes'),
(310, 'mcdc', 'menu-niveau-1', 'yes'),
(311, 'search-form', 'searchform', 'yes'),
(312, 'transition', '1', 'yes'),
(313, 'scrollTop', '1', 'yes'),
(314, 'loader', 'loader.gif', 'yes'),
(331, 'loco_settings', 'a:3:{s:1:"c";s:18:"Loco_data_Settings";s:1:"v";i:0;s:1:"d";a:12:{s:7:"version";s:5:"2.2.0";s:8:"gen_hash";b:0;s:9:"use_fuzzy";b:1;s:11:"num_backups";i:1;s:9:"pot_alias";a:3:{i:0;s:10:"default.po";i:1;s:8:"en_US.po";i:2;s:5:"en.po";}s:9:"php_alias";a:2:{i:0;s:3:"php";i:1;s:4:"twig";}s:9:"jsx_alias";a:0:{}s:10:"fs_persist";b:0;s:10:"fs_protect";i:1;s:12:"max_php_size";s:4:"100K";s:11:"po_utf8_bom";b:0;s:8:"po_width";s:2:"79";}}', 'yes'),
(358, 'loco_recent', 'a:3:{s:1:"c";s:21:"Loco_data_RecentItems";s:1:"v";i:0;s:1:"d";a:1:{s:6:"bundle";a:3:{s:15:"theme.amc-theme";i:1548411271;s:62:"plugin.wck-custom-fields-and-custom-post-types-creator/wck.php";i:1548665340;s:13:"theme.starter";i:1548669592;}}}', 'no'),
(383, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1548834380;}', 'no'),
(396, 'wck_meta_boxes_ids', 'a:3:{i:0;i:118;i:1;i:119;i:2;i:122;}', 'yes'),
(397, 'wck_update_to_unserialized', 'no', 'yes'),
(420, 'wck_tools', 'a:1:{i:0;a:4:{s:21:"custom-fields-creator";s:7:"enabled";s:24:"custom-post-type-creator";s:8:"disabled";s:23:"custom-taxonomy-creator";s:8:"disabled";s:37:"swift-templates-and-front-end-posting";s:8:"disabled";}}', 'yes'),
(492, 'no-ajax-ids', '', 'yes') ;

#
# End of data contents of table `amc_options`
# --------------------------------------------------------



#
# Delete any existing table `amc_postmeta`
#

DROP TABLE IF EXISTS `amc_postmeta`;


#
# Table structure of table `amc_postmeta`
#

CREATE TABLE `amc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_postmeta`
#
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1548324125:1'),
(4, 5, '_edit_last', '1'),
(5, 5, 'themeum_subtitle_color', '#444'),
(15, 8, '_menu_item_type', 'post_type'),
(16, 8, '_menu_item_menu_item_parent', '0'),
(17, 8, '_menu_item_object_id', '5'),
(18, 8, '_menu_item_object', 'page'),
(19, 8, '_menu_item_target', ''),
(20, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 8, '_menu_item_xfn', ''),
(22, 8, '_menu_item_url', ''),
(23, 8, '_menu_item_orphaned', '1548223760'),
(33, 2, '_edit_lock', '1548236312:1'),
(34, 10, '_edit_lock', '1548224585:1'),
(35, 11, '_edit_lock', '1548224334:1'),
(36, 5, '_wp_page_template', 'front-page.php'),
(37, 5, 'thm_no_title', '0'),
(38, 5, 'thm_no_hash', '0'),
(39, 5, 'thm_bg_color', '#ffffff'),
(40, 5, 'thm_disable_menu', '0'),
(41, 5, 'thm_section_type', 'default'),
(44, 2, '_edit_last', '1'),
(45, 2, 'thm_no_title', '0'),
(46, 2, 'thm_no_hash', '0'),
(47, 2, 'thm_bg_color', '#ffffff'),
(48, 2, 'thm_disable_menu', '0'),
(49, 2, 'thm_section_type', 'default'),
(50, 15, '_edit_lock', '1548768262:1'),
(51, 15, '_edit_last', '1'),
(52, 15, 'thm_no_title', '0'),
(53, 15, 'thm_no_hash', '1'),
(54, 15, 'thm_bg_color', '#ffffff'),
(55, 15, 'thm_disable_menu', '0'),
(56, 15, 'thm_section_type', 'default'),
(88, 28, '_form', '<div class="row">\n<div class="col-sm-7">\n<label> Nom\n    [text nom] </label>\n</div>\n<div class="col-sm-5">\n<label> Prénom\n    [text prenom] </label>\n</div>\n</div>\n\n<label> Adresse\n    [text adresse] </label>\n\n<div class="row">\n<div class="col-sm-7">\n<label> Email\n    [email* email] </label>\n</div>\n<div class="col-sm-5">\n<label> Téléphone\n    [text telephone] </label>\n</div>\n</div>\n\n<label> Message\n    [textarea message] </label>\n\n<div class="row footer">\n<div class="col-sm-6 text">\n<strong>Donec</strong>\nDonec diam ipsum, bibendum eget commodo et, sodales pulvinar magna. Aenean vitae ante enim. Nulla aliquet justo odio, luctus vestibulum eros placerat eget. Integer est lorem, aliquet quis pulvinar eu\n</div>\n<div class="col-sm-6 buttons">\n<div class="row">\n<div class="col-6">\n<span class="ajouter-fichier btn btn-outline-light btn-dark">Ajouter un fichier</span>[file file-927 limit:2000000 filetypes:jpg|jpeg|pdf|png]\n</div>\n<div class="col-6">\n[submit class:btn class:btn-outline-light "Envoyer"]\n</div>\n</div>\n</div>\n</div>'),
(89, 28, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:3:"AMC";s:6:"sender";s:29:"AMC <wordpress@192.168.88.12>";s:9:"recipient";s:17:"devke03@gmail.com";s:4:"body";s:148:"De : [name] <[email]>\n\nCorps du message :\n[message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)";s:18:"additional_headers";s:17:"Reply-To: [email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(90, 28, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"AMC "[your-subject]"";s:6:"sender";s:29:"AMC <wordpress@192.168.88.12>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:129:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)";s:18:"additional_headers";s:27:"Reply-To: devke03@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(91, 28, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(92, 28, '_additional_settings', ''),
(93, 28, '_locale', 'fr_FR'),
(107, 15, 'thm_page_title', 'Nous contacter'),
(108, 34, '_form', '<div class="row">\n<div class="col-sm-5">\n<label> Nom\n    [text nom] </label>\n\n<label> Téléphone\n    [text telephone] </label>\n\n<label> Email\n    [email email] </label>\n</div>\n<div class="col-sm-7">\n<label> Message\n    [textarea message] </label>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-7 text">\n<strong>Nunc</strong>\nNunc mattis urna sed varius scelerisque. Duis nisi nisi, convallis nec urna nec, cursus finibus magna. Etiam ultrices quam lectus, nec consequat ligula finibus nec. Duis aliquet nunc in dolor interdum, at bibendum nibh condimentum. Integer commodo quis nisi eget pellentesque.\n</div>\n<div class="col-sm-5 text-center text-sm-right">\n[submit class:btn class:btn-outline-light "Envoyer"]\n</div>\n</div>'),
(109, 34, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"AMC "[your-subject]"";s:6:"sender";s:29:"AMC <wordpress@192.168.88.12>";s:9:"recipient";s:17:"devke03@gmail.com";s:4:"body";s:187:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(110, 34, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"AMC "[your-subject]"";s:6:"sender";s:29:"AMC <wordpress@192.168.88.12>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:129:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)";s:18:"additional_headers";s:27:"Reply-To: devke03@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(111, 34, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(112, 34, '_additional_settings', ''),
(113, 34, '_locale', 'fr_FR'),
(115, 35, '_edit_lock', '1548828124:1'),
(116, 35, '_edit_last', '1'),
(117, 35, 'thm_no_title', '0'),
(118, 35, 'thm_no_hash', '0'),
(119, 35, 'thm_bg_color', '#ffffff'),
(120, 35, 'thm_disable_menu', '0'),
(121, 35, 'thm_section_type', 'default'),
(133, 38, '_edit_lock', '1548331197:1'),
(134, 38, '_edit_last', '1'),
(135, 38, 'thm_no_title', '0'),
(136, 38, 'thm_no_hash', '0'),
(137, 38, 'thm_bg_color', '#ffffff'),
(138, 38, 'thm_disable_menu', '0'),
(139, 38, 'thm_section_type', 'default'),
(140, 40, '_edit_lock', '1548252997:1'),
(141, 41, '_edit_lock', '1548772440:1'),
(142, 41, '_edit_last', '1'),
(143, 41, 'thm_no_title', '0'),
(144, 41, 'thm_no_hash', '0'),
(145, 41, 'thm_bg_color', '#ffffff'),
(146, 41, 'thm_disable_menu', '0'),
(147, 41, 'thm_section_type', 'default'),
(148, 43, '_edit_lock', '1548253303:1'),
(149, 43, '_edit_last', '1'),
(150, 43, 'thm_no_title', '0'),
(151, 43, 'thm_no_hash', '0'),
(152, 43, 'thm_bg_color', '#ffffff'),
(153, 43, 'thm_disable_menu', '0'),
(154, 43, 'thm_section_type', 'default'),
(155, 45, '_edit_lock', '1548253318:1'),
(156, 45, '_edit_last', '1'),
(157, 45, 'thm_no_title', '0'),
(158, 45, 'thm_no_hash', '0'),
(159, 45, 'thm_bg_color', '#ffffff'),
(160, 45, 'thm_disable_menu', '0'),
(161, 45, 'thm_section_type', 'default'),
(162, 47, '_edit_lock', '1548253334:1'),
(163, 47, '_edit_last', '1'),
(164, 47, 'thm_no_title', '0'),
(165, 47, 'thm_no_hash', '0'),
(166, 47, 'thm_bg_color', '#ffffff'),
(167, 47, 'thm_disable_menu', '0'),
(168, 47, 'thm_section_type', 'default'),
(169, 49, '_edit_lock', '1548253355:1'),
(170, 49, '_edit_last', '1'),
(171, 49, 'thm_no_title', '0'),
(172, 49, 'thm_no_hash', '0'),
(173, 49, 'thm_bg_color', '#ffffff'),
(174, 49, 'thm_disable_menu', '0'),
(175, 49, 'thm_section_type', 'default'),
(176, 51, '_edit_lock', '1548253370:1'),
(177, 51, '_edit_last', '1') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(178, 51, 'thm_no_title', '0'),
(179, 51, 'thm_no_hash', '0'),
(180, 51, 'thm_bg_color', '#ffffff'),
(181, 51, 'thm_disable_menu', '0'),
(182, 51, 'thm_section_type', 'default'),
(183, 53, '_edit_lock', '1548685308:1'),
(184, 53, '_edit_last', '1'),
(185, 53, 'thm_no_title', '0'),
(186, 53, 'thm_no_hash', '0'),
(187, 53, 'thm_bg_color', '#ffffff'),
(188, 53, 'thm_disable_menu', '0'),
(189, 53, 'thm_section_type', 'default'),
(190, 55, '_edit_lock', '1548670927:1'),
(191, 55, '_edit_last', '1'),
(192, 55, 'thm_no_title', '0'),
(193, 55, 'thm_no_hash', '0'),
(194, 55, 'thm_bg_color', '#ffffff'),
(195, 55, 'thm_disable_menu', '0'),
(196, 55, 'thm_section_type', 'default'),
(197, 2, '_wp_trash_meta_status', 'publish'),
(198, 2, '_wp_trash_meta_time', '1548253441'),
(199, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(200, 57, '_menu_item_type', 'custom'),
(201, 57, '_menu_item_menu_item_parent', '0'),
(202, 57, '_menu_item_object_id', '57'),
(203, 57, '_menu_item_object', 'custom'),
(204, 57, '_menu_item_target', ''),
(205, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 57, '_menu_item_xfn', ''),
(207, 57, '_menu_item_url', '#'),
(208, 57, '_menu_item_orphaned', '1548253536'),
(209, 58, '_edit_lock', '1548743710:1'),
(210, 58, '_edit_last', '1'),
(211, 58, 'thm_no_title', '0'),
(212, 58, 'thm_no_hash', '1'),
(213, 58, 'thm_bg_color', '#ffffff'),
(214, 58, 'thm_disable_menu', '0'),
(215, 58, 'thm_section_type', 'default'),
(216, 60, '_edit_lock', '1548743736:1'),
(217, 60, '_edit_last', '1'),
(218, 60, 'thm_no_title', '0'),
(219, 60, 'thm_no_hash', '1'),
(220, 60, 'thm_bg_color', '#ffffff'),
(221, 60, 'thm_disable_menu', '0'),
(222, 60, 'thm_section_type', 'default'),
(223, 62, '_edit_lock', '1548743760:1'),
(224, 62, '_edit_last', '1'),
(225, 62, 'thm_no_title', '0'),
(226, 62, 'thm_no_hash', '1'),
(227, 62, 'thm_bg_color', '#ffffff'),
(228, 62, 'thm_disable_menu', '0'),
(229, 62, 'thm_section_type', 'default'),
(230, 64, '_menu_item_type', 'post_type'),
(231, 64, '_menu_item_menu_item_parent', '66'),
(232, 64, '_menu_item_object_id', '35'),
(233, 64, '_menu_item_object', 'page'),
(234, 64, '_menu_item_target', ''),
(235, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(236, 64, '_menu_item_xfn', ''),
(237, 64, '_menu_item_url', ''),
(239, 65, '_menu_item_type', 'post_type'),
(240, 65, '_menu_item_menu_item_parent', '66'),
(241, 65, '_menu_item_object_id', '47'),
(242, 65, '_menu_item_object', 'page'),
(243, 65, '_menu_item_target', ''),
(244, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 65, '_menu_item_xfn', ''),
(246, 65, '_menu_item_url', ''),
(248, 66, '_menu_item_type', 'post_type'),
(249, 66, '_menu_item_menu_item_parent', '0'),
(250, 66, '_menu_item_object_id', '58'),
(251, 66, '_menu_item_object', 'page'),
(252, 66, '_menu_item_target', ''),
(253, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 66, '_menu_item_xfn', ''),
(255, 66, '_menu_item_url', ''),
(266, 68, '_menu_item_type', 'post_type'),
(267, 68, '_menu_item_menu_item_parent', '66'),
(268, 68, '_menu_item_object_id', '45'),
(269, 68, '_menu_item_object', 'page'),
(270, 68, '_menu_item_target', ''),
(271, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 68, '_menu_item_xfn', ''),
(273, 68, '_menu_item_url', ''),
(284, 70, '_menu_item_type', 'post_type'),
(285, 70, '_menu_item_menu_item_parent', '66'),
(286, 70, '_menu_item_object_id', '43'),
(287, 70, '_menu_item_object', 'page'),
(288, 70, '_menu_item_target', ''),
(289, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(290, 70, '_menu_item_xfn', ''),
(291, 70, '_menu_item_url', ''),
(292, 71, '_edit_last', '1'),
(293, 71, '_edit_lock', '1548763989:1'),
(294, 15, 'carte', ''),
(295, 15, '_carte', 'field_5c494bf7da1dd'),
(296, 15, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(297, 15, '_horaires', 'field_5c494ecd9e5be'),
(298, 15, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(299, 15, '_adresse', 'field_5c494c35da1de') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(300, 75, 'carte', ''),
(301, 75, '_carte', 'field_5c494bf7da1dd'),
(302, 75, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(303, 75, '_horaires', 'field_5c494ecd9e5be'),
(304, 75, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(305, 75, '_adresse', 'field_5c494c35da1de'),
(306, 76, 'carte', ''),
(307, 76, '_carte', 'field_5c494bf7da1dd'),
(308, 76, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(309, 76, '_horaires', 'field_5c494ecd9e5be'),
(310, 76, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(311, 76, '_adresse', 'field_5c494c35da1de'),
(312, 77, 'carte', ''),
(313, 77, '_carte', 'field_5c494bf7da1dd'),
(314, 77, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(315, 77, '_horaires', 'field_5c494ecd9e5be'),
(316, 77, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(317, 77, '_adresse', 'field_5c494c35da1de'),
(318, 79, 'carte', ''),
(319, 79, '_carte', 'field_5c494bf7da1dd'),
(320, 79, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(321, 79, '_horaires', 'field_5c494ecd9e5be'),
(322, 79, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(323, 79, '_adresse', 'field_5c494c35da1de'),
(324, 15, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(325, 15, '_formulaire', 'field_5c4950b13473b'),
(326, 81, 'carte', ''),
(327, 81, '_carte', 'field_5c494bf7da1dd'),
(328, 81, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(329, 81, '_horaires', 'field_5c494ecd9e5be'),
(330, 81, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(331, 81, '_adresse', 'field_5c494c35da1de'),
(332, 81, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(333, 81, '_formulaire', 'field_5c4950b13473b'),
(334, 82, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(335, 82, '_carte', 'field_5c494bf7da1dd'),
(336, 82, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(337, 82, '_horaires', 'field_5c494ecd9e5be'),
(338, 82, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(339, 82, '_adresse', 'field_5c494c35da1de'),
(340, 82, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(341, 82, '_formulaire', 'field_5c4950b13473b'),
(342, 83, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(343, 83, '_carte', 'field_5c494bf7da1dd'),
(344, 83, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(345, 83, '_horaires', 'field_5c494ecd9e5be'),
(346, 83, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(347, 83, '_adresse', 'field_5c494c35da1de'),
(348, 83, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(349, 83, '_formulaire', 'field_5c4950b13473b'),
(350, 15, '_wp_page_template', 'template-page-contact.php'),
(351, 84, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(352, 84, '_carte', 'field_5c494bf7da1dd'),
(353, 84, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(354, 84, '_horaires', 'field_5c494ecd9e5be'),
(355, 84, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(356, 84, '_adresse', 'field_5c494c35da1de'),
(357, 84, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(358, 84, '_formulaire', 'field_5c4950b13473b'),
(359, 85, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(360, 85, '_carte', 'field_5c494bf7da1dd'),
(361, 85, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(362, 85, '_horaires', 'field_5c494ecd9e5be'),
(363, 85, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(364, 85, '_adresse', 'field_5c494c35da1de'),
(365, 85, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(366, 85, '_formulaire', 'field_5c4950b13473b'),
(367, 86, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(368, 86, '_carte', 'field_5c494bf7da1dd'),
(369, 86, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(370, 86, '_horaires', 'field_5c494ecd9e5be'),
(371, 86, 'adresse', '<p>AMC<br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(372, 86, '_adresse', 'field_5c494c35da1de'),
(373, 86, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(374, 86, '_formulaire', 'field_5c4950b13473b'),
(375, 87, '_menu_item_type', 'post_type'),
(376, 87, '_menu_item_menu_item_parent', '0'),
(377, 87, '_menu_item_object_id', '60'),
(378, 87, '_menu_item_object', 'page'),
(379, 87, '_menu_item_target', ''),
(380, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(381, 87, '_menu_item_xfn', ''),
(382, 87, '_menu_item_url', ''),
(384, 88, '_menu_item_type', 'post_type'),
(385, 88, '_menu_item_menu_item_parent', '87'),
(386, 88, '_menu_item_object_id', '38'),
(387, 88, '_menu_item_object', 'page'),
(388, 88, '_menu_item_target', ''),
(389, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(390, 88, '_menu_item_xfn', ''),
(391, 88, '_menu_item_url', ''),
(393, 89, '_menu_item_type', 'post_type'),
(394, 89, '_menu_item_menu_item_parent', '87'),
(395, 89, '_menu_item_object_id', '49'),
(396, 89, '_menu_item_object', 'page'),
(397, 89, '_menu_item_target', ''),
(398, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(399, 89, '_menu_item_xfn', ''),
(400, 89, '_menu_item_url', ''),
(402, 90, '_menu_item_type', 'post_type') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(403, 90, '_menu_item_menu_item_parent', '87'),
(404, 90, '_menu_item_object_id', '51'),
(405, 90, '_menu_item_object', 'page'),
(406, 90, '_menu_item_target', ''),
(407, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(408, 90, '_menu_item_xfn', ''),
(409, 90, '_menu_item_url', ''),
(411, 91, '_menu_item_type', 'post_type'),
(412, 91, '_menu_item_menu_item_parent', '0'),
(413, 91, '_menu_item_object_id', '62'),
(414, 91, '_menu_item_object', 'page'),
(415, 91, '_menu_item_target', ''),
(416, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 91, '_menu_item_xfn', ''),
(418, 91, '_menu_item_url', ''),
(420, 92, '_menu_item_type', 'post_type'),
(421, 92, '_menu_item_menu_item_parent', '91'),
(422, 92, '_menu_item_object_id', '53'),
(423, 92, '_menu_item_object', 'page'),
(424, 92, '_menu_item_target', ''),
(425, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(426, 92, '_menu_item_xfn', ''),
(427, 92, '_menu_item_url', ''),
(429, 93, '_menu_item_type', 'post_type'),
(430, 93, '_menu_item_menu_item_parent', '91'),
(431, 93, '_menu_item_object_id', '55'),
(432, 93, '_menu_item_object', 'page'),
(433, 93, '_menu_item_target', ''),
(434, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(435, 93, '_menu_item_xfn', ''),
(436, 93, '_menu_item_url', ''),
(438, 94, '_menu_item_type', 'post_type'),
(439, 94, '_menu_item_menu_item_parent', '0'),
(440, 94, '_menu_item_object_id', '15'),
(441, 94, '_menu_item_object', 'page'),
(442, 94, '_menu_item_target', ''),
(443, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(444, 94, '_menu_item_xfn', ''),
(445, 94, '_menu_item_url', ''),
(447, 35, 'thm_page_title', 'Agréments <span class="blue light">&</span> partenaires'),
(448, 95, '_edit_last', '1'),
(449, 95, '_edit_lock', '1548681390:1'),
(450, 35, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(451, 35, '_url_jetassistance', 'field_5c495f9586e04'),
(452, 97, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(453, 97, '_url_jetassistance', 'field_5c495f9586e04'),
(454, 99, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(455, 99, '_url_jetassistance', 'field_5c495f9586e04'),
(456, 35, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(457, 35, '_texte_additionnel', 'field_5c496226116bc'),
(458, 101, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(459, 101, '_url_jetassistance', 'field_5c495f9586e04'),
(460, 101, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(461, 101, '_texte_additionnel', 'field_5c496226116bc'),
(462, 35, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(463, 35, '_devenez_partenaire', 'field_5c496598e5f68'),
(464, 103, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(465, 103, '_url_jetassistance', 'field_5c495f9586e04'),
(466, 103, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(467, 103, '_texte_additionnel', 'field_5c496226116bc'),
(468, 103, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(469, 103, '_devenez_partenaire', 'field_5c496598e5f68'),
(470, 35, '_wp_page_template', 'default'),
(471, 104, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(472, 104, '_url_jetassistance', 'field_5c495f9586e04'),
(473, 104, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(474, 104, '_texte_additionnel', 'field_5c496226116bc'),
(475, 104, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(476, 104, '_devenez_partenaire', 'field_5c496598e5f68'),
(486, 38, '_wp_page_template', 'default'),
(487, 41, '_wp_page_template', 'default'),
(488, 108, '_menu_item_type', 'post_type'),
(489, 108, '_menu_item_menu_item_parent', '66'),
(490, 108, '_menu_item_object_id', '41'),
(491, 108, '_menu_item_object', 'page'),
(492, 108, '_menu_item_target', ''),
(493, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(494, 108, '_menu_item_xfn', ''),
(495, 108, '_menu_item_url', ''),
(497, 53, '_wp_page_template', 'template-page-histoire-entreprise.php'),
(502, 1, '_wp_trash_meta_status', 'publish'),
(503, 1, '_wp_trash_meta_time', '1548407085'),
(504, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(505, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(506, 62, '_wp_page_template', 'template-page-one-page.php'),
(511, 118, '_edit_last', '1'),
(512, 119, '_edit_last', '1'),
(513, 119, 'wck_cfc_post_type_arg', 'page'),
(514, 119, 'wck_cfc_page_template_arg', 'template-page-histoire-entreprise.php'),
(515, 119, 'wck_cfc_args', 'a:1:{i:0;a:7:{s:9:"meta-name";s:19:"histoire_entreprise";s:9:"post-type";s:4:"page";s:8:"repeater";s:4:"true";s:8:"sortable";s:4:"true";s:7:"post-id";s:0:"";s:13:"page-template";s:37:"template-page-histoire-entreprise.php";s:9:"box-style";s:7:"default";}}'),
(516, 119, 'meta-name', 'histoire_entreprise'),
(517, 119, 'post-type', 'page'),
(518, 119, 'repeater', 'true'),
(519, 119, 'sortable', 'true'),
(520, 119, 'post-id', ''),
(521, 119, 'page-template', 'template-page-histoire-entreprise.php'),
(522, 119, 'box-style', 'default'),
(523, 119, '_edit_lock', '1548660346:1'),
(524, 53, 'histoire_entreprise', 'a:2:{i:0;a:4:{s:14:"histoire_titre";s:17:"Lorem ipsum dolor";s:14:"histoire_photo";s:3:"123";s:13:"histoire_date";s:4:"1959";s:20:"histoire_description";s:192:"Sed tempus id nisl sed mattis. Etiam blandit sapien eu lectus convallis, vitae hendrerit ex varius. Nunc ipsum diam, egestas ut dolor eget, mollis elementum massa. Fusce porttitor lorem metus.";}i:1;a:4:{s:14:"histoire_titre";s:43:"Création de la carrosserie Moletta Frères";s:14:"histoire_photo";s:3:"121";s:13:"histoire_date";s:4:"1960";s:20:"histoire_description";s:331:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut gravida purus. Donec egestas malesuada orci, sed hendrerit nisl porta ut. Praesent vitae leo enim. Suspendisse potenti. Praesent maximus erat vitae lacus ornare molestie. In sed nunc quis lacus iaculis suscipit nec eu arcu. Mauris dictum imperdiet justo sed luctus.";}}'),
(525, 119, 'wck_cfc_fields', 'a:4:{i:0;a:24:{s:11:"field-title";s:5:"Titre";s:10:"field-type";s:4:"text";s:10:"field-slug";s:14:"histoire_titre";s:18:"wck-overwrite-slug";s:0:"";s:11:"description";s:0:"";s:8:"required";s:5:"false";s:3:"cpt";s:4:"post";s:13:"default-value";s:0:"";s:12:"default-text";s:0:"";s:12:"html-content";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:12:"phone-format";s:14:"(###) ###-####";s:16:"min-number-value";s:0:"";s:16:"max-number-value";s:0:"";s:17:"number-step-value";s:0:"";s:21:"attach-upload-to-post";s:3:"yes";s:14:"number-of-rows";s:1:"5";s:8:"readonly";s:5:"false";s:20:"map-default-latitude";s:1:"0";s:21:"map-default-longitude";s:1:"0";s:16:"map-default-zoom";s:2:"15";s:10:"map-height";s:3:"350";s:11:"date-format";s:8:"dd-mm-yy";}i:1;a:24:{s:11:"field-title";s:5:"Photo";s:10:"field-type";s:6:"upload";s:10:"field-slug";s:14:"histoire_photo";s:18:"wck-overwrite-slug";s:0:"";s:11:"description";s:0:"";s:8:"required";s:5:"false";s:3:"cpt";s:4:"post";s:13:"default-value";s:0:"";s:12:"default-text";s:0:"";s:12:"html-content";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:12:"phone-format";s:14:"(###) ###-####";s:16:"min-number-value";s:0:"";s:16:"max-number-value";s:0:"";s:17:"number-step-value";s:0:"";s:21:"attach-upload-to-post";s:3:"yes";s:14:"number-of-rows";s:1:"5";s:8:"readonly";s:5:"false";s:20:"map-default-latitude";s:1:"0";s:21:"map-default-longitude";s:1:"0";s:16:"map-default-zoom";s:2:"15";s:10:"map-height";s:3:"350";s:11:"date-format";s:8:"dd-mm-yy";}i:2;a:24:{s:11:"field-title";s:4:"Date";s:10:"field-type";s:4:"text";s:10:"field-slug";s:13:"histoire_date";s:18:"wck-overwrite-slug";s:0:"";s:11:"description";s:0:"";s:8:"required";s:5:"false";s:3:"cpt";s:4:"post";s:13:"default-value";s:0:"";s:12:"default-text";s:0:"";s:12:"html-content";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:12:"phone-format";s:14:"(###) ###-####";s:16:"min-number-value";s:0:"";s:16:"max-number-value";s:0:"";s:17:"number-step-value";s:0:"";s:21:"attach-upload-to-post";s:3:"yes";s:14:"number-of-rows";s:1:"5";s:8:"readonly";s:5:"false";s:20:"map-default-latitude";s:1:"0";s:21:"map-default-longitude";s:1:"0";s:16:"map-default-zoom";s:2:"15";s:10:"map-height";s:3:"350";s:11:"date-format";s:8:"dd-mm-yy";}i:3;a:24:{s:11:"field-title";s:11:"Description";s:10:"field-type";s:8:"textarea";s:10:"field-slug";s:20:"histoire_description";s:18:"wck-overwrite-slug";s:0:"";s:11:"description";s:0:"";s:8:"required";s:5:"false";s:3:"cpt";s:4:"post";s:13:"default-value";s:0:"";s:12:"default-text";s:0:"";s:12:"html-content";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:12:"phone-format";s:14:"(###) ###-####";s:16:"min-number-value";s:0:"";s:16:"max-number-value";s:0:"";s:17:"number-step-value";s:0:"";s:21:"attach-upload-to-post";s:3:"yes";s:14:"number-of-rows";s:1:"4";s:8:"readonly";s:5:"false";s:20:"map-default-latitude";s:1:"0";s:21:"map-default-longitude";s:1:"0";s:16:"map-default-zoom";s:2:"15";s:10:"map-height";s:3:"350";s:11:"date-format";s:8:"dd-mm-yy";}}') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(526, 119, 'field-title', 'Titre'),
(527, 119, 'field-type', 'text'),
(528, 119, 'field-slug', 'histoire_titre'),
(529, 119, 'wck-overwrite-slug', ''),
(530, 119, 'description', ''),
(531, 119, 'required', 'false'),
(532, 119, 'cpt', 'post'),
(533, 119, 'default-value', ''),
(534, 119, 'default-text', ''),
(535, 119, 'html-content', ''),
(536, 119, 'options', ''),
(537, 119, 'labels', ''),
(538, 119, 'phone-format', '(###) ###-####'),
(539, 119, 'min-number-value', ''),
(540, 119, 'max-number-value', ''),
(541, 119, 'number-step-value', ''),
(542, 119, 'attach-upload-to-post', 'yes'),
(543, 119, 'number-of-rows', '5'),
(544, 119, 'readonly', 'false'),
(545, 119, 'map-default-latitude', '0'),
(546, 119, 'map-default-longitude', '0'),
(547, 119, 'map-default-zoom', '15'),
(548, 119, 'map-height', '350'),
(549, 119, 'date-format', 'dd-mm-yy'),
(550, 119, 'field-title_1', 'Photo'),
(551, 119, 'field-type_1', 'upload'),
(552, 119, 'field-slug_1', 'histoire_photo'),
(553, 119, 'wck-overwrite-slug_1', ''),
(554, 119, 'description_1', ''),
(555, 119, 'required_1', 'false'),
(556, 119, 'cpt_1', 'post'),
(557, 119, 'default-value_1', ''),
(558, 119, 'default-text_1', ''),
(559, 119, 'html-content_1', ''),
(560, 119, 'options_1', ''),
(561, 119, 'labels_1', ''),
(562, 119, 'phone-format_1', '(###) ###-####'),
(563, 119, 'min-number-value_1', ''),
(564, 119, 'max-number-value_1', ''),
(565, 119, 'number-step-value_1', ''),
(566, 119, 'attach-upload-to-post_1', 'yes'),
(567, 119, 'number-of-rows_1', '5'),
(568, 119, 'readonly_1', 'false'),
(569, 119, 'map-default-latitude_1', '0'),
(570, 119, 'map-default-longitude_1', '0'),
(571, 119, 'map-default-zoom_1', '15'),
(572, 119, 'map-height_1', '350'),
(573, 119, 'date-format_1', 'dd-mm-yy'),
(580, 121, '_wp_attached_file', '2019/01/car-2351706_1920.jpg'),
(581, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1086;s:4:"file";s:28:"2019/01/car-2351706_1920.jpg";s:5:"sizes";a:6:{s:8:"histoire";a:4:{s:4:"file";s:29:"car-2351706_1920-1000x450.jpg";s:5:"width";i:1000;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"car-2351706_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"car-2351706_1920-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"car-2351706_1920-768x434.jpg";s:5:"width";i:768;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"car-2351706_1920-1024x579.jpg";s:5:"width";i:1024;s:6:"height";i:579;s:9:"mime-type";s:10:"image/jpeg";}s:10:"blog-thumb";a:4:{s:4:"file";s:28:"car-2351706_1920-750x350.jpg";s:5:"width";i:750;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(584, 119, 'field-title_2', 'Date'),
(585, 119, 'field-type_2', 'text'),
(586, 119, 'field-slug_2', 'histoire_date'),
(587, 119, 'wck-overwrite-slug_2', ''),
(588, 119, 'description_2', ''),
(589, 119, 'required_2', 'false'),
(590, 119, 'cpt_2', 'post'),
(591, 119, 'default-value_2', ''),
(592, 119, 'default-text_2', ''),
(593, 119, 'html-content_2', ''),
(594, 119, 'options_2', ''),
(595, 119, 'labels_2', ''),
(596, 119, 'phone-format_2', '(###) ###-####'),
(597, 119, 'min-number-value_2', ''),
(598, 119, 'max-number-value_2', ''),
(599, 119, 'number-step-value_2', ''),
(600, 119, 'attach-upload-to-post_2', 'yes'),
(601, 119, 'number-of-rows_2', '5'),
(602, 119, 'readonly_2', 'false'),
(603, 119, 'map-default-latitude_2', '0'),
(604, 119, 'map-default-longitude_2', '0'),
(605, 119, 'map-default-zoom_2', '15'),
(606, 119, 'map-height_2', '350'),
(607, 119, 'date-format_2', 'dd-mm-yy'),
(608, 119, 'field-title_3', 'Description'),
(609, 119, 'field-type_3', 'textarea'),
(610, 119, 'field-slug_3', 'histoire_description'),
(611, 119, 'wck-overwrite-slug_3', ''),
(612, 119, 'description_3', ''),
(613, 119, 'required_3', 'false'),
(614, 119, 'cpt_3', 'post'),
(615, 119, 'default-value_3', ''),
(616, 119, 'default-text_3', ''),
(617, 119, 'html-content_3', ''),
(618, 119, 'options_3', ''),
(619, 119, 'labels_3', ''),
(620, 119, 'phone-format_3', '(###) ###-####'),
(621, 119, 'min-number-value_3', ''),
(622, 119, 'max-number-value_3', ''),
(623, 119, 'number-step-value_3', ''),
(624, 119, 'attach-upload-to-post_3', 'yes'),
(625, 119, 'number-of-rows_3', '4'),
(626, 119, 'readonly_3', 'false'),
(627, 119, 'map-default-latitude_3', '0'),
(628, 119, 'map-default-longitude_3', '0'),
(629, 119, 'map-default-zoom_3', '15'),
(630, 119, 'map-height_3', '350'),
(631, 119, 'date-format_3', 'dd-mm-yy'),
(634, 53, 'histoire_titre', 'Lorem ipsum dolor'),
(635, 53, 'histoire_photo', '123') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(636, 53, 'histoire_date', '1959'),
(637, 53, 'histoire_description', 'Sed tempus id nisl sed mattis. Etiam blandit sapien eu lectus convallis, vitae hendrerit ex varius. Nunc ipsum diam, egestas ut dolor eget, mollis elementum massa. Fusce porttitor lorem metus.'),
(638, 53, 'histoire_titre_1', 'Création de la carrosserie Moletta Frères'),
(639, 53, 'histoire_photo_1', '121'),
(640, 53, 'histoire_date_1', '1960'),
(641, 53, 'histoire_description_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut gravida purus. Donec egestas malesuada orci, sed hendrerit nisl porta ut. Praesent vitae leo enim. Suspendisse potenti. Praesent maximus erat vitae lacus ornare molestie. In sed nunc quis lacus iaculis suscipit nec eu arcu. Mauris dictum imperdiet justo sed luctus.'),
(642, 122, '_edit_last', '1'),
(643, 122, '_edit_lock', '1548664867:1'),
(644, 122, 'wck_cfc_post_type_arg', 'page'),
(645, 122, 'wck_cfc_page_template_arg', 'template-page-agrements-partenaires.php'),
(646, 122, 'wck_cfc_args', 'a:1:{i:0;a:7:{s:9:"meta-name";s:5:"logos";s:9:"post-type";s:4:"page";s:8:"repeater";s:4:"true";s:8:"sortable";s:4:"true";s:7:"post-id";s:0:"";s:13:"page-template";s:39:"template-page-agrements-partenaires.php";s:9:"box-style";s:7:"default";}}'),
(647, 122, 'meta-name', 'logos'),
(648, 122, 'post-type', 'page'),
(649, 122, 'repeater', 'true'),
(650, 122, 'sortable', 'true'),
(651, 122, 'post-id', ''),
(652, 122, 'page-template', 'template-page-agrements-partenaires.php'),
(653, 122, 'box-style', 'default'),
(654, 122, 'wck_cfc_fields', 'a:1:{i:0;a:24:{s:11:"field-title";s:4:"Logo";s:10:"field-type";s:6:"upload";s:10:"field-slug";s:15:"partenaire_logo";s:18:"wck-overwrite-slug";s:0:"";s:11:"description";s:0:"";s:8:"required";s:5:"false";s:3:"cpt";s:4:"post";s:13:"default-value";s:0:"";s:12:"default-text";s:0:"";s:12:"html-content";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:12:"phone-format";s:14:"(###) ###-####";s:16:"min-number-value";s:0:"";s:16:"max-number-value";s:0:"";s:17:"number-step-value";s:0:"";s:21:"attach-upload-to-post";s:3:"yes";s:14:"number-of-rows";s:1:"5";s:8:"readonly";s:5:"false";s:20:"map-default-latitude";s:1:"0";s:21:"map-default-longitude";s:1:"0";s:16:"map-default-zoom";s:2:"15";s:10:"map-height";s:3:"350";s:11:"date-format";s:8:"dd-mm-yy";}}'),
(655, 122, 'field-title', 'Logo'),
(656, 122, 'field-type', 'upload'),
(657, 122, 'field-slug', 'partenaire_logo'),
(658, 122, 'wck-overwrite-slug', ''),
(659, 122, 'description', ''),
(660, 122, 'required', 'false'),
(661, 122, 'cpt', 'post'),
(662, 122, 'default-value', ''),
(663, 122, 'default-text', ''),
(664, 122, 'html-content', ''),
(665, 122, 'options', ''),
(666, 122, 'labels', ''),
(667, 122, 'phone-format', '(###) ###-####'),
(668, 122, 'min-number-value', ''),
(669, 122, 'max-number-value', ''),
(670, 122, 'number-step-value', ''),
(671, 122, 'attach-upload-to-post', 'yes'),
(672, 122, 'number-of-rows', '5'),
(673, 122, 'readonly', 'false'),
(674, 122, 'map-default-latitude', '0'),
(675, 122, 'map-default-longitude', '0'),
(676, 122, 'map-default-zoom', '15'),
(677, 122, 'map-height', '350'),
(678, 122, 'date-format', 'dd-mm-yy'),
(679, 35, 'logos', 'a:2:{i:0;a:1:{s:15:"partenaire_logo";s:3:"125";}i:1;a:1:{s:15:"partenaire_logo";s:3:"126";}}'),
(681, 118, '_edit_lock', '1548660598:1'),
(682, 118, '_wp_trash_meta_status', 'publish'),
(683, 118, '_wp_trash_meta_time', '1548660741'),
(684, 118, '_wp_desired_post_slug', '118'),
(685, 123, '_wp_attached_file', '2019/01/jungle-831222_1920.jpg'),
(686, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1280;s:4:"file";s:30:"2019/01/jungle-831222_1920.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"jungle-831222_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"jungle-831222_1920-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"jungle-831222_1920-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"jungle-831222_1920-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:10:"blog-thumb";a:4:{s:4:"file";s:30:"jungle-831222_1920-750x350.jpg";s:5:"width";i:750;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:8:"histoire";a:4:{s:4:"file";s:31:"jungle-831222_1920-1000x450.jpg";s:5:"width";i:1000;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(695, 35, 'partenaire_logo', '125'),
(696, 35, 'partenaire_logo_1', '126'),
(699, 35, 'logos_des_partenaires_0_logo', '145'),
(700, 35, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(701, 35, 'logos_des_partenaires', '5'),
(702, 35, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(703, 131, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(704, 131, '_url_jetassistance', 'field_5c495f9586e04'),
(705, 131, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(706, 131, '_texte_additionnel', 'field_5c496226116bc'),
(707, 131, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(708, 131, '_devenez_partenaire', 'field_5c496598e5f68'),
(709, 131, 'logos_des_partenaires_0_logo', '125'),
(710, 131, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(711, 131, 'logos_des_partenaires', '1'),
(712, 131, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(713, 35, 'logos_des_partenaires_1_logo', '146'),
(714, 35, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(715, 35, 'logos_des_partenaires_2_logo', '148'),
(716, 35, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(717, 132, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(718, 132, '_url_jetassistance', 'field_5c495f9586e04'),
(719, 132, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(720, 132, '_texte_additionnel', 'field_5c496226116bc'),
(721, 132, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(722, 132, '_devenez_partenaire', 'field_5c496598e5f68'),
(723, 132, 'logos_des_partenaires_0_logo', '125'),
(724, 132, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(725, 132, 'logos_des_partenaires', '3'),
(726, 132, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(727, 132, 'logos_des_partenaires_1_logo', '126'),
(728, 132, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(729, 132, 'logos_des_partenaires_2_logo', '13'),
(730, 132, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(731, 133, '_edit_last', '1'),
(732, 133, '_edit_lock', '1548683696:1'),
(733, 53, 'histoires_0_titre', 'Création de la carrosserie Moletta'),
(734, 53, '_histoires_0_titre', 'field_5c4f017ea0c9f'),
(735, 53, 'histoires_0_photo', '123'),
(736, 53, '_histoires_0_photo', 'field_5c4f018aa0ca0'),
(737, 53, 'histoires_0_date', '1959'),
(738, 53, '_histoires_0_date', 'field_5c4f01aaa0ca1'),
(739, 53, 'histoires_0_description', 'Donec sed risus elit. In ultrices ullamcorper est eget condimentum. Nullam bibendum, enim non placerat laoreet, enim tortor dictum magna, in hendrerit mi massa id purus.'),
(740, 53, '_histoires_0_description', 'field_5c4f01b6a0ca2'),
(741, 53, 'histoires', '2'),
(742, 53, '_histoires', 'field_5c4f0168a0c9e'),
(743, 139, 'histoires_0_titre', 'Création de la carrosserie Moletta'),
(744, 139, '_histoires_0_titre', 'field_5c4f017ea0c9f'),
(745, 139, 'histoires_0_photo', '123'),
(746, 139, '_histoires_0_photo', 'field_5c4f018aa0ca0') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(747, 139, 'histoires_0_date', '1959'),
(748, 139, '_histoires_0_date', 'field_5c4f01aaa0ca1'),
(749, 139, 'histoires_0_description', 'Donec sed risus elit. In ultrices ullamcorper est eget condimentum. Nullam bibendum, enim non placerat laoreet, enim tortor dictum magna, in hendrerit mi massa id purus.'),
(750, 139, '_histoires_0_description', 'field_5c4f01b6a0ca2'),
(751, 139, 'histoires', '1'),
(752, 139, '_histoires', 'field_5c4f0168a0c9e'),
(753, 53, 'histoires_1_titre', 'Cras egestas, dui et viverra luctus, sem velit viverra quam'),
(754, 53, '_histoires_1_titre', 'field_5c4f017ea0c9f'),
(755, 53, 'histoires_1_photo', '121'),
(756, 53, '_histoires_1_photo', 'field_5c4f018aa0ca0'),
(757, 53, 'histoires_1_date', '1960'),
(758, 53, '_histoires_1_date', 'field_5c4f01aaa0ca1'),
(759, 53, 'histoires_1_description', 'Curabitur eget fermentum eros. Cras egestas, dui et viverra luctus, sem velit viverra quam, ultrices sollicitudin sapien libero at quam. Vivamus tortor metus, pharetra a bibendum at, lacinia quis massa. Sed ut interdum orci. Mauris eu orci turpis. Mauris in est nec quam vulputate faucibus.'),
(760, 53, '_histoires_1_description', 'field_5c4f01b6a0ca2'),
(761, 140, 'histoires_0_titre', 'Création de la carrosserie Moletta'),
(762, 140, '_histoires_0_titre', 'field_5c4f017ea0c9f'),
(763, 140, 'histoires_0_photo', '123'),
(764, 140, '_histoires_0_photo', 'field_5c4f018aa0ca0'),
(765, 140, 'histoires_0_date', '1959'),
(766, 140, '_histoires_0_date', 'field_5c4f01aaa0ca1'),
(767, 140, 'histoires_0_description', 'Donec sed risus elit. In ultrices ullamcorper est eget condimentum. Nullam bibendum, enim non placerat laoreet, enim tortor dictum magna, in hendrerit mi massa id purus.'),
(768, 140, '_histoires_0_description', 'field_5c4f01b6a0ca2'),
(769, 140, 'histoires', '2'),
(770, 140, '_histoires', 'field_5c4f0168a0c9e'),
(771, 140, 'histoires_1_titre', 'Cras egestas, dui et viverra luctus, sem velit viverra quam'),
(772, 140, '_histoires_1_titre', 'field_5c4f017ea0c9f'),
(773, 140, 'histoires_1_photo', '121'),
(774, 140, '_histoires_1_photo', 'field_5c4f018aa0ca0'),
(775, 140, 'histoires_1_date', '1960'),
(776, 140, '_histoires_1_date', 'field_5c4f01aaa0ca1'),
(777, 140, 'histoires_1_description', 'Curabitur eget fermentum eros. Cras egestas, dui et viverra luctus, sem velit viverra quam, ultrices sollicitudin sapien libero at quam. Vivamus tortor metus, pharetra a bibendum at, lacinia quis massa. Sed ut interdum orci. Mauris eu orci turpis. Mauris in est nec quam vulputate faucibus.'),
(778, 140, '_histoires_1_description', 'field_5c4f01b6a0ca2'),
(779, 141, 'histoires_0_titre', 'Création de la carrosserie Moletta'),
(780, 141, '_histoires_0_titre', 'field_5c4f017ea0c9f'),
(781, 141, 'histoires_0_photo', ''),
(782, 141, '_histoires_0_photo', 'field_5c4f018aa0ca0'),
(783, 141, 'histoires_0_date', '1959'),
(784, 141, '_histoires_0_date', 'field_5c4f01aaa0ca1'),
(785, 141, 'histoires_0_description', 'Donec sed risus elit. In ultrices ullamcorper est eget condimentum. Nullam bibendum, enim non placerat laoreet, enim tortor dictum magna, in hendrerit mi massa id purus.'),
(786, 141, '_histoires_0_description', 'field_5c4f01b6a0ca2'),
(787, 141, 'histoires', '2'),
(788, 141, '_histoires', 'field_5c4f0168a0c9e'),
(789, 141, 'histoires_1_titre', 'Cras egestas, dui et viverra luctus, sem velit viverra quam'),
(790, 141, '_histoires_1_titre', 'field_5c4f017ea0c9f'),
(791, 141, 'histoires_1_photo', '121'),
(792, 141, '_histoires_1_photo', 'field_5c4f018aa0ca0'),
(793, 141, 'histoires_1_date', '1960'),
(794, 141, '_histoires_1_date', 'field_5c4f01aaa0ca1'),
(795, 141, 'histoires_1_description', 'Curabitur eget fermentum eros. Cras egestas, dui et viverra luctus, sem velit viverra quam, ultrices sollicitudin sapien libero at quam. Vivamus tortor metus, pharetra a bibendum at, lacinia quis massa. Sed ut interdum orci. Mauris eu orci turpis. Mauris in est nec quam vulputate faucibus.'),
(796, 141, '_histoires_1_description', 'field_5c4f01b6a0ca2'),
(797, 142, 'histoires_0_titre', 'Création de la carrosserie Moletta'),
(798, 142, '_histoires_0_titre', 'field_5c4f017ea0c9f'),
(799, 142, 'histoires_0_photo', '123'),
(800, 142, '_histoires_0_photo', 'field_5c4f018aa0ca0'),
(801, 142, 'histoires_0_date', '1959'),
(802, 142, '_histoires_0_date', 'field_5c4f01aaa0ca1'),
(803, 142, 'histoires_0_description', 'Donec sed risus elit. In ultrices ullamcorper est eget condimentum. Nullam bibendum, enim non placerat laoreet, enim tortor dictum magna, in hendrerit mi massa id purus.'),
(804, 142, '_histoires_0_description', 'field_5c4f01b6a0ca2'),
(805, 142, 'histoires', '2'),
(806, 142, '_histoires', 'field_5c4f0168a0c9e'),
(807, 142, 'histoires_1_titre', 'Cras egestas, dui et viverra luctus, sem velit viverra quam'),
(808, 142, '_histoires_1_titre', 'field_5c4f017ea0c9f'),
(809, 142, 'histoires_1_photo', '121'),
(810, 142, '_histoires_1_photo', 'field_5c4f018aa0ca0'),
(811, 142, 'histoires_1_date', '1960'),
(812, 142, '_histoires_1_date', 'field_5c4f01aaa0ca1'),
(813, 142, 'histoires_1_description', 'Curabitur eget fermentum eros. Cras egestas, dui et viverra luctus, sem velit viverra quam, ultrices sollicitudin sapien libero at quam. Vivamus tortor metus, pharetra a bibendum at, lacinia quis massa. Sed ut interdum orci. Mauris eu orci turpis. Mauris in est nec quam vulputate faucibus.'),
(814, 142, '_histoires_1_description', 'field_5c4f01b6a0ca2'),
(815, 143, '_wp_attached_file', '2019/01/amc.png'),
(816, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:89;s:6:"height";i:64;s:4:"file";s:15:"2019/01/amc.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(817, 58, '_wp_page_template', 'template-page-one-page.php'),
(818, 60, '_wp_page_template', 'template-page-one-page.php'),
(819, 144, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(820, 144, '_url_jetassistance', 'field_5c495f9586e04'),
(821, 144, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(822, 144, '_texte_additionnel', 'field_5c496226116bc'),
(823, 144, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(824, 144, '_devenez_partenaire', 'field_5c496598e5f68'),
(825, 144, 'logos_des_partenaires_0_logo', ''),
(826, 144, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(827, 144, 'logos_des_partenaires', '3'),
(828, 144, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(829, 144, 'logos_des_partenaires_1_logo', ''),
(830, 144, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(831, 144, 'logos_des_partenaires_2_logo', ''),
(832, 144, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(833, 145, '_wp_attached_file', '2019/01/allianz.png'),
(834, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:79;s:6:"height";i:19;s:4:"file";s:19:"2019/01/allianz.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(835, 146, '_wp_attached_file', '2019/01/macsf.png'),
(836, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:111;s:6:"height";i:28;s:4:"file";s:17:"2019/01/macsf.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(837, 147, '_wp_attached_file', '2019/01/prima.png'),
(838, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:86;s:6:"height";i:19;s:4:"file";s:17:"2019/01/prima.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(839, 148, '_wp_attached_file', '2019/01/sagena.png'),
(840, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:78;s:6:"height";i:43;s:4:"file";s:18:"2019/01/sagena.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(841, 149, '_wp_attached_file', '2019/01/swisslife.png'),
(842, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:74;s:6:"height";i:52;s:4:"file";s:21:"2019/01/swisslife.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(843, 35, 'logos_des_partenaires_3_logo', '149'),
(844, 35, '_logos_des_partenaires_3_logo', 'field_5c4eff73bc8ba'),
(845, 35, 'logos_des_partenaires_4_logo', '147'),
(846, 35, '_logos_des_partenaires_4_logo', 'field_5c4eff73bc8ba') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(847, 150, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(848, 150, '_url_jetassistance', 'field_5c495f9586e04'),
(849, 150, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(850, 150, '_texte_additionnel', 'field_5c496226116bc'),
(851, 150, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(852, 150, '_devenez_partenaire', 'field_5c496598e5f68'),
(853, 150, 'logos_des_partenaires_0_logo', '145'),
(854, 150, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(855, 150, 'logos_des_partenaires', '5'),
(856, 150, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(857, 150, 'logos_des_partenaires_1_logo', '146'),
(858, 150, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(859, 150, 'logos_des_partenaires_2_logo', '148'),
(860, 150, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(861, 150, 'logos_des_partenaires_3_logo', '149'),
(862, 150, '_logos_des_partenaires_3_logo', 'field_5c4eff73bc8ba'),
(863, 150, 'logos_des_partenaires_4_logo', '147'),
(864, 150, '_logos_des_partenaires_4_logo', 'field_5c4eff73bc8ba'),
(865, 151, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(866, 151, '_carte', 'field_5c494bf7da1dd'),
(867, 151, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(868, 151, '_horaires', 'field_5c494ecd9e5be'),
(869, 151, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(870, 151, '_adresse', 'field_5c494c35da1de'),
(871, 151, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(872, 151, '_formulaire', 'field_5c4950b13473b'),
(873, 153, 'carte', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2868.2323000417528!2d1.365209415041644!3d44.03725657910995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12ac12763e5de5ef%3A0x6b3e66ab53104ac6!2sAntoine+Moletta+Carrosserie+(AMC)!5e0!3m2!1sfr!2smg!4v1548308747590" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),
(874, 153, '_carte', 'field_5c494bf7da1dd'),
(875, 153, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(876, 153, '_horaires', 'field_5c494ecd9e5be'),
(877, 153, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(878, 153, '_adresse', 'field_5c494c35da1de'),
(879, 153, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(880, 153, '_formulaire', 'field_5c4950b13473b'),
(881, 154, 'carte', ''),
(882, 154, '_carte', 'field_5c494bf7da1dd'),
(883, 154, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(884, 154, '_horaires', 'field_5c494ecd9e5be'),
(885, 154, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(886, 154, '_adresse', 'field_5c494c35da1de'),
(887, 154, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(888, 154, '_formulaire', 'field_5c4950b13473b'),
(889, 155, '_edit_last', '1'),
(890, 155, '_edit_lock', '1548767389:1'),
(891, 15, 'latitude', '44.037464'),
(892, 15, '_latitude', 'field_5c50416810202'),
(893, 15, 'longitude', '1.3673073'),
(894, 15, '_longitude', 'field_5c50417610203'),
(895, 15, 'api_key', 'AIzaSyBOg92ZiJBkUb6jdKwAfMnxy0fuCW9h6-Y'),
(896, 15, '_api_key', 'field_5c50418110204'),
(897, 159, 'carte', ''),
(898, 159, '_carte', 'field_5c494bf7da1dd'),
(899, 159, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(900, 159, '_horaires', 'field_5c494ecd9e5be'),
(901, 159, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(902, 159, '_adresse', 'field_5c494c35da1de'),
(903, 159, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(904, 159, '_formulaire', 'field_5c4950b13473b'),
(905, 159, 'latitude', '44.037464'),
(906, 159, '_latitude', 'field_5c50416810202'),
(907, 159, 'longitude', '1.3673073'),
(908, 159, '_longitude', 'field_5c50417610203'),
(909, 159, 'api_key', 'AIzaSyBOg92ZiJBkUb6jdKwAfMnxy0fuCW9h6-Y'),
(910, 159, '_api_key', 'field_5c50418110204'),
(911, 15, 'zoom', '17'),
(912, 15, '_zoom', 'field_5c5041fd06ba4'),
(913, 161, 'carte', ''),
(914, 161, '_carte', 'field_5c494bf7da1dd'),
(915, 161, 'horaires', '<p><strong>Horaires d\'ouverture</strong><br />du lundi au jeudi 8:00 - 12:00 / 14:00 - 19:00, <br />le samedi 9:00 - 12:00</p>'),
(916, 161, '_horaires', 'field_5c494ecd9e5be'),
(917, 161, 'adresse', '<p><strong>AMC</strong><br />ANTOINE MOLETTA CARROSSERIE</p>\r\n<p>1 RUE PAUL RIQUET<br />82000 MONTAUBAN<br /><a href="tel:05 63 03 20 08">05 63 03 20 08</a></p>'),
(918, 161, '_adresse', 'field_5c494c35da1de'),
(919, 161, 'formulaire', '[contact-form-7 id="28" title="Contact"]'),
(920, 161, '_formulaire', 'field_5c4950b13473b'),
(921, 161, 'latitude', '44.037464'),
(922, 161, '_latitude', 'field_5c50416810202'),
(923, 161, 'longitude', '1.3673073'),
(924, 161, '_longitude', 'field_5c50417610203'),
(925, 161, 'api_key', 'AIzaSyBOg92ZiJBkUb6jdKwAfMnxy0fuCW9h6-Y'),
(926, 161, '_api_key', 'field_5c50418110204'),
(927, 161, 'zoom', '17'),
(928, 161, '_zoom', 'field_5c5041fd06ba4'),
(929, 41, 'thm_page_title', 'Présentation'),
(930, 164, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(931, 164, '_url_jetassistance', 'field_5c495f9586e04'),
(932, 164, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(933, 164, '_texte_additionnel', 'field_5c496226116bc'),
(934, 164, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(935, 164, '_devenez_partenaire', 'field_5c496598e5f68'),
(936, 164, 'logos_des_partenaires_0_logo', '145'),
(937, 164, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(938, 164, 'logos_des_partenaires', '5'),
(939, 164, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(940, 164, 'logos_des_partenaires_1_logo', '146'),
(941, 164, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(942, 164, 'logos_des_partenaires_2_logo', '148'),
(943, 164, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(944, 164, 'logos_des_partenaires_3_logo', '149'),
(945, 164, '_logos_des_partenaires_3_logo', 'field_5c4eff73bc8ba'),
(946, 164, 'logos_des_partenaires_4_logo', '147') ;
INSERT INTO `amc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(947, 164, '_logos_des_partenaires_4_logo', 'field_5c4eff73bc8ba'),
(948, 165, '_wp_attached_file', '2019/01/soudure.jpg'),
(949, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:508;s:6:"height";i:761;s:4:"file";s:19:"2019/01/soudure.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"soudure-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"soudure-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"blog-thumb";a:4:{s:4:"file";s:19:"soudure-508x350.jpg";s:5:"width";i:508;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:8:"histoire";a:4:{s:4:"file";s:19:"soudure-508x450.jpg";s:5:"width";i:508;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(950, 41, '_thumbnail_id', '165'),
(951, 167, 'url_jetassistance', 'https://www.jet-assistance.fr/'),
(952, 167, '_url_jetassistance', 'field_5c495f9586e04'),
(953, 167, 'texte_additionnel', '<p>Par ailleurs, nous travaillons régulièrement avec les constructeurs et concessionnaires qui nous font confiance dans la réparation des éléments de carrosserie de leurs véhicules.</p>'),
(954, 167, '_texte_additionnel', 'field_5c496226116bc'),
(955, 167, 'devenez_partenaire', '[contact-form-7 id="34" title="Devenez partenaire"]'),
(956, 167, '_devenez_partenaire', 'field_5c496598e5f68'),
(957, 167, 'logos_des_partenaires_0_logo', '145'),
(958, 167, '_logos_des_partenaires_0_logo', 'field_5c4eff73bc8ba'),
(959, 167, 'logos_des_partenaires', '5'),
(960, 167, '_logos_des_partenaires', 'field_5c4eff3abc8b9'),
(961, 167, 'logos_des_partenaires_1_logo', '146'),
(962, 167, '_logos_des_partenaires_1_logo', 'field_5c4eff73bc8ba'),
(963, 167, 'logos_des_partenaires_2_logo', '148'),
(964, 167, '_logos_des_partenaires_2_logo', 'field_5c4eff73bc8ba'),
(965, 167, 'logos_des_partenaires_3_logo', '149'),
(966, 167, '_logos_des_partenaires_3_logo', 'field_5c4eff73bc8ba'),
(967, 167, 'logos_des_partenaires_4_logo', '147'),
(968, 167, '_logos_des_partenaires_4_logo', 'field_5c4eff73bc8ba'),
(970, 34, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:73:"La syntaxe de la boîte mail utilisée dans le champ %name% est invalide.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}') ;

#
# End of data contents of table `amc_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `amc_posts`
#

DROP TABLE IF EXISTS `amc_posts`;


#
# Table structure of table `amc_posts`
#

CREATE TABLE `amc_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_posts`
#
INSERT INTO `amc_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-22 12:54:56', '2019-01-22 11:54:56', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2019-01-25 10:04:45', '2019-01-25 09:04:45', '', 0, 'http://192.168.88.12/amc/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-22 12:54:56', '2019-01-22 11:54:56', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://192.168.88.12/amc/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-01-23 15:24:01', '2019-01-23 14:24:01', '', 0, 'http://192.168.88.12/amc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-22 12:54:56', '2019-01-22 11:54:56', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://192.168.88.12/amc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-01-22 12:54:56', '2019-01-22 11:54:56', '', 0, 'http://192.168.88.12/amc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-22 13:24:58', '2019-01-22 12:24:58', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo felis, viverra ultrices rhoncus id, vestibulum a magna. Curabitur ex nulla, tincidunt fringilla dapibus eu, accumsan et purus. Nunc augue orci, efficitur eu ante a, dictum ultrices dui. Ut iaculis ligula lorem, et blandit odio ultrices eu. Nam hendrerit dolor rutrum, consequat dui et, malesuada urna.\n\n</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-01-23 07:43:45', '2019-01-23 06:43:45', '', 0, 'http://192.168.88.12/amc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-01-22 13:24:58', '2019-01-22 12:24:58', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed justo felis, viverra ultrices rhoncus id, vestibulum a magna. Curabitur ex nulla, tincidunt fringilla dapibus eu, accumsan et purus. Nunc augue orci, efficitur eu ante a, dictum ultrices dui. Ut iaculis ligula lorem, et blandit odio ultrices eu. Nam hendrerit dolor rutrum, consequat dui et, malesuada urna.\n\n</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-22 13:24:58', '2019-01-22 12:24:58', '', 5, 'http://192.168.88.12/amc/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-23 07:09:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-23 07:09:20', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?p=8', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-01-23 07:19:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-23 07:19:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-01-23 07:21:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-23 07:21:12', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-01-23 07:25:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-23 07:25:30', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?page_id=12', 0, 'page', '', 0),
(14, 1, '2019-01-23 10:01:18', '2019-01-23 09:01:18', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://192.168.88.12/amc/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-23 10:01:18', '2019-01-23 09:01:18', '', 2, 'http://192.168.88.12/amc/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-01-23 10:40:12', '2019-01-23 09:40:12', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-29 13:08:52', '2019-01-29 12:08:52', '', 0, 'http://192.168.88.12/amc/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-01-23 10:40:12', '2019-01-23 09:40:12', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in est nec ex facilisis vestibulum. Sed nec nulla lectus. Maecenas at pretium purus. Morbi commodo posuere enim porta aliquet. Aliquam erat volutpat. Mauris sed pellentesque ex. In eget risus lacinia, semper neque vel, volutpat sapien. Pellentesque et fringilla tellus. Cras facilisis risus at porta eleifend. In eu porttitor orci, et faucibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec nec mattis ligula. Quisque sed posuere neque. Suspendisse tempor ut ex at lobortis. Curabitur cursus, nisi in ultricies finibus, dui nisi placerat mi, at rhoncus dolor ligula sed augue. Aliquam ut volutpat tortor. Etiam in sapien nec mi pellentesque venenatis. Cras ac sapien eget urna tincidunt interdum ut eu dui. Aenean ornare varius quam, sit amet tincidunt lorem luctus tincidunt. Aliquam eu neque suscipit, cursus dui ac, volutpat augue.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-23 10:40:12', '2019-01-23 09:40:12', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-01-23 11:23:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-23 11:23:39', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?post_type=acf-field-group&p=18', 0, 'acf-field-group', '', 0),
(28, 1, '2019-01-23 13:30:57', '2019-01-23 12:30:57', '<div class="row">\r\n<div class="col-sm-7">\r\n<label> Nom\r\n    [text nom] </label>\r\n</div>\r\n<div class="col-sm-5">\r\n<label> Prénom\r\n    [text prenom] </label>\r\n</div>\r\n</div>\r\n\r\n<label> Adresse\r\n    [text adresse] </label>\r\n\r\n<div class="row">\r\n<div class="col-sm-7">\r\n<label> Email\r\n    [email* email] </label>\r\n</div>\r\n<div class="col-sm-5">\r\n<label> Téléphone\r\n    [text telephone] </label>\r\n</div>\r\n</div>\r\n\r\n<label> Message\r\n    [textarea message] </label>\r\n\r\n<div class="row footer">\r\n<div class="col-sm-6 text">\r\n<strong>Donec</strong>\r\nDonec diam ipsum, bibendum eget commodo et, sodales pulvinar magna. Aenean vitae ante enim. Nulla aliquet justo odio, luctus vestibulum eros placerat eget. Integer est lorem, aliquet quis pulvinar eu\r\n</div>\r\n<div class="col-sm-6 buttons">\r\n<div class="row">\r\n<div class="col-6">\r\n<span class="ajouter-fichier btn btn-outline-light btn-dark">Ajouter un fichier</span>[file file-927 limit:2000000 filetypes:jpg|jpeg|pdf|png]\r\n</div>\r\n<div class="col-6">\r\n[submit class:btn class:btn-outline-light "Envoyer"]\r\n</div>\r\n</div>\r\n</div>\r\n</div>\n1\nAMC\nAMC <wordpress@192.168.88.12>\ndevke03@gmail.com\nDe : [name] <[email]>\r\n\r\nCorps du message :\r\n[message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)\nReply-To: [email]\n\n\n\n\nAMC "[your-subject]"\nAMC <wordpress@192.168.88.12>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)\nReply-To: devke03@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-29 10:50:16', '2019-01-29 09:50:16', '', 0, 'http://192.168.88.12/amc/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2019-01-23 13:32:30', '2019-01-23 12:32:30', '<!-- wp:shortcode -->\n[contact-form-7 id="28" title="Contact"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-23 13:32:30', '2019-01-23 12:32:30', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-23 13:36:34', '2019-01-23 12:36:34', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id purus molestie ipsum posuere facilisis. Cras at efficitur justo, ac hendrerit tortor. Morbi et erat ac massa condimentum lobortis. Donec non ullamcorper eros. Donec ligula mauris, aliquet cursus blandit non, pellentesque et leo. Phasellus commodo lectus lectus, ut ornare lacus tincidunt id. Proin ut venenatis nisl. Nunc pulvinar congue eros, vitae facilisis augue. Vestibulum eget pulvinar lectus, et mollis justo. Donec accumsan magna augue, non mollis mi luctus et. Proin vel velit consectetur, maximus nisl ac, cursus leo.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id="28" title="Contact"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-23 13:36:34', '2019-01-23 12:36:34', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-23 14:52:21', '2019-01-23 13:52:21', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id purus molestie ipsum posuere facilisis. Cras at efficitur justo, ac hendrerit tortor. Morbi et erat ac massa condimentum lobortis. Donec non ullamcorper eros. Donec ligula mauris, aliquet cursus blandit non, pellentesque et leo. Phasellus commodo lectus lectus, ut ornare lacus tincidunt id. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id="28" title="Contact"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-23 14:52:21', '2019-01-23 13:52:21', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-01-23 15:04:02', '2019-01-23 14:04:02', '<div class="row">\r\n<div class="col-sm-5">\r\n<label> Nom\r\n    [text nom] </label>\r\n\r\n<label> Téléphone\r\n    [text telephone] </label>\r\n\r\n<label> Email\r\n    [email email] </label>\r\n</div>\r\n<div class="col-sm-7">\r\n<label> Message\r\n    [textarea message] </label>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-7 text">\r\n<strong>Nunc</strong>\r\nNunc mattis urna sed varius scelerisque. Duis nisi nisi, convallis nec urna nec, cursus finibus magna. Etiam ultrices quam lectus, nec consequat ligula finibus nec. Duis aliquet nunc in dolor interdum, at bibendum nibh condimentum. Integer commodo quis nisi eget pellentesque.\r\n</div>\r\n<div class="col-sm-5 text-center text-sm-right">\r\n[submit class:btn class:btn-outline-light "Envoyer"]\r\n</div>\r\n</div>\n1\nAMC "[your-subject]"\nAMC <wordpress@192.168.88.12>\ndevke03@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)\nReply-To: [your-email]\n\n\n\n\nAMC "[your-subject]"\nAMC <wordpress@192.168.88.12>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de AMC (http://192.168.88.12/amc)\nReply-To: devke03@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Devenez partenaire', '', 'publish', 'closed', 'closed', '', 'devenez-partenaire', '', '', '2019-01-30 07:06:01', '2019-01-30 06:06:01', '', 0, 'http://192.168.88.12/amc/?post_type=wpcf7_contact_form&#038;p=34', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2019-01-23 15:10:01', '2019-01-23 14:10:01', '<!-- wp:heading -->\n<h2>Agréments <span>&amp;</span> partenaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'publish', 'closed', 'closed', '', 'agrements-et-partenaires', '', '', '2019-01-30 07:03:45', '2019-01-30 06:03:45', '', 0, 'http://192.168.88.12/amc/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-01-23 15:10:01', '2019-01-23 14:10:01', '<!-- wp:shortcode -->\n[contact-form-7 id="34" title="Devenez partenaire"]\n<!-- /wp:shortcode -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-23 15:10:01', '2019-01-23 14:10:01', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-01-23 15:18:36', '2019-01-23 14:18:36', '', 'Présentation - Nos services poids lourds', '', 'publish', 'closed', 'closed', '', 'presentation', '', '', '2019-01-24 12:59:57', '2019-01-24 11:59:57', '', 0, 'http://192.168.88.12/amc/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-01-23 15:18:36', '2019-01-23 14:18:36', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-01-23 15:18:36', '2019-01-23 14:18:36', '', 38, 'http://192.168.88.12/amc/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-01-23 15:18:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-23 15:18:40', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?p=40', 0, 'post', '', 0),
(41, 1, '2019-01-23 15:19:47', '2019-01-23 14:19:47', '<!-- wp:heading -->\n<h2>Présentation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>AMC est une carrosserie spécialisée dans la réparation de véhicules légers (automobiles et utilitaires) et poids lourds (autocars).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre entreprise tire sa force à la fois de son expérience et de la complémentarité de ses équipes. Notre clientèle se compose de clients variés et exigeants, et notre atelier s\'engage à mettre en oeuvre tout son possible afin de répondre aux besoins spécifiques de chacun (qualité de prestation, maîtrise des coûts, et optimisation des délais dans la mesure du réalisable).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le respect de l\'origine est élément fondamental vis-à-vis des propriétaires qui nous font confiance :  pièces d\'origine, respect des normes constructeur, recommandation des marques et connaissance des différentes modèles resetent les règles indispensables au coeur de notre stratégie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Enfin, présent sur la place montalbanaise depuis 50 ans et 3 générations, nous avons fait le choix de rester une entreprise familiale à taille humaine afin de rester accessibles à nos clients et de travailler dans un climat de confiance.</p>\n<!-- /wp:paragraph -->', 'Présentation - Nos services automobiles', '', 'publish', 'closed', 'closed', '', 'presentation-2', '', '', '2019-01-29 14:58:36', '2019-01-29 13:58:36', '', 0, 'http://192.168.88.12/amc/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-01-23 15:19:47', '2019-01-23 14:19:47', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-23 15:19:47', '2019-01-23 14:19:47', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-01-23 15:21:41', '2019-01-23 14:21:41', '', 'Notre atelier de carrosserie automobile', '', 'publish', 'closed', 'closed', '', 'notre-atelier-de-carrosserie-automobile', '', '', '2019-01-23 15:21:42', '2019-01-23 14:21:42', '', 0, 'http://192.168.88.12/amc/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-01-23 15:21:41', '2019-01-23 14:21:41', '', 'Notre atelier de carrosserie automobile', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-01-23 15:21:41', '2019-01-23 14:21:41', '', 43, 'http://192.168.88.12/amc/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-01-23 15:21:56', '2019-01-23 14:21:56', '', 'Notre laboratoire de peinture automobile', '', 'publish', 'closed', 'closed', '', 'notre-laboratoire-de-peinture-automobile', '', '', '2019-01-23 15:21:57', '2019-01-23 14:21:57', '', 0, 'http://192.168.88.12/amc/?page_id=45', 0, 'page', '', 0),
(46, 1, '2019-01-23 15:21:56', '2019-01-23 14:21:56', '', 'Notre laboratoire de peinture automobile', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-01-23 15:21:56', '2019-01-23 14:21:56', '', 45, 'http://192.168.88.12/amc/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-01-23 15:22:12', '2019-01-23 14:22:12', '', 'Les étapes de la réparation de votre véhicule', '', 'publish', 'closed', 'closed', '', 'les-etapes-de-la-reparation-de-votre-vehicule', '', '', '2019-01-23 15:22:13', '2019-01-23 14:22:13', '', 0, 'http://192.168.88.12/amc/?page_id=47', 0, 'page', '', 0),
(48, 1, '2019-01-23 15:22:12', '2019-01-23 14:22:12', '', 'Les étapes de la réparation de votre véhicule', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-01-23 15:22:12', '2019-01-23 14:22:12', '', 47, 'http://192.168.88.12/amc/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-01-23 15:22:33', '2019-01-23 14:22:33', '', 'Notre atelier de carrosserie poids lourds', '', 'publish', 'closed', 'closed', '', 'notre-atelier-de-carrosserie-poids-lourds', '', '', '2019-01-23 15:22:34', '2019-01-23 14:22:34', '', 0, 'http://192.168.88.12/amc/?page_id=49', 0, 'page', '', 0),
(50, 1, '2019-01-23 15:22:33', '2019-01-23 14:22:33', '', 'Notre atelier de carrosserie poids lourds', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-01-23 15:22:33', '2019-01-23 14:22:33', '', 49, 'http://192.168.88.12/amc/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-01-23 15:22:48', '2019-01-23 14:22:48', '', 'Notre laboratoire de peinture poids lourds', '', 'publish', 'closed', 'closed', '', 'notre-laboratoire-de-peinture-poids-lourds', '', '', '2019-01-23 15:22:49', '2019-01-23 14:22:49', '', 0, 'http://192.168.88.12/amc/?page_id=51', 0, 'page', '', 0),
(52, 1, '2019-01-23 15:22:48', '2019-01-23 14:22:48', '', 'Notre laboratoire de peinture poids lourds', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-23 15:22:48', '2019-01-23 14:22:48', '', 51, 'http://192.168.88.12/amc/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-01-23 15:23:01', '2019-01-23 14:23:01', '', 'Histoire de l\'entreprise', '', 'publish', 'closed', 'closed', '', 'histoire-de-lentreprise', '', '', '2019-01-28 15:02:49', '2019-01-28 14:02:49', '', 0, 'http://192.168.88.12/amc/?page_id=53', 0, 'page', '', 0),
(54, 1, '2019-01-23 15:23:01', '2019-01-23 14:23:01', '', 'Histoire de l\'entreprise', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-23 15:23:01', '2019-01-23 14:23:01', '', 53, 'http://192.168.88.12/amc/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-01-23 15:23:25', '2019-01-23 14:23:25', '', 'Stratégie', '', 'publish', 'closed', 'closed', '', 'strategie', '', '', '2019-01-28 11:18:50', '2019-01-28 10:18:50', '', 0, 'http://192.168.88.12/amc/?page_id=55', 0, 'page', '', 0),
(56, 1, '2019-01-23 15:23:25', '2019-01-23 14:23:25', '', 'Stratégie', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-23 15:23:25', '2019-01-23 14:23:25', '', 55, 'http://192.168.88.12/amc/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-01-23 15:25:35', '0000-00-00 00:00:00', '', 'Nos services automobiles', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-23 15:25:35', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2019-01-23 15:26:33', '2019-01-23 14:26:33', '', 'Nos services automobiles', '', 'publish', 'closed', 'closed', '', 'nos-services-automobiles', '', '', '2019-01-29 07:35:08', '2019-01-29 06:35:08', '', 0, 'http://192.168.88.12/amc/?page_id=58', 0, 'page', '', 0),
(59, 1, '2019-01-23 15:26:33', '2019-01-23 14:26:33', '', 'Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-01-23 15:26:33', '2019-01-23 14:26:33', '', 58, 'http://192.168.88.12/amc/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-01-23 15:26:48', '2019-01-23 14:26:48', '', 'Nos services poids lourds', '', 'publish', 'closed', 'closed', '', 'nos-services-poids-lourds', '', '', '2019-01-29 07:35:34', '2019-01-29 06:35:34', '', 0, 'http://192.168.88.12/amc/?page_id=60', 0, 'page', '', 0),
(61, 1, '2019-01-23 15:26:48', '2019-01-23 14:26:48', '', 'Nos services poids lourds', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-01-23 15:26:48', '2019-01-23 14:26:48', '', 60, 'http://192.168.88.12/amc/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-01-23 15:27:03', '2019-01-23 14:27:03', '', 'L\'atelier AMC', '', 'publish', 'closed', 'closed', '', 'latelier-amc', '', '', '2019-01-29 07:35:59', '2019-01-29 06:35:59', '', 0, 'http://192.168.88.12/amc/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-01-23 15:27:03', '2019-01-23 14:27:03', '', 'L\'atelier AMC', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-01-23 15:27:03', '2019-01-23 14:27:03', '', 62, 'http://192.168.88.12/amc/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-01-23 15:31:38', '2019-01-23 14:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=64', 6, 'nav_menu_item', '', 0),
(65, 1, '2019-01-23 15:31:38', '2019-01-23 14:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2019-01-23 15:31:37', '2019-01-23 14:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=66', 1, 'nav_menu_item', '', 0),
(68, 1, '2019-01-23 15:31:38', '2019-01-23 14:31:38', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=68', 4, 'nav_menu_item', '', 0),
(70, 1, '2019-01-23 15:33:09', '2019-01-23 14:33:09', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2019-01-24 06:25:23', '2019-01-24 05:25:23', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"15";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5c494b5c6d3c3', '', '', '2019-01-29 13:10:31', '2019-01-29 12:10:31', '', 0, 'http://192.168.88.12/amc/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(73, 1, '2019-01-24 06:25:23', '2019-01-24 05:25:23', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Adresse', 'adresse', 'publish', 'closed', 'closed', '', 'field_5c494c35da1de', '', '', '2019-01-29 13:10:30', '2019-01-29 12:10:30', '', 71, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=73', 0, 'acf-field', '', 0),
(74, 1, '2019-01-24 06:37:31', '2019-01-24 05:37:31', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Horaires d\'ouverture', 'horaires', 'publish', 'closed', 'closed', '', 'field_5c494ecd9e5be', '', '', '2019-01-29 13:10:31', '2019-01-29 12:10:31', '', 71, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=74', 1, 'acf-field', '', 0),
(75, 1, '2019-01-24 06:39:17', '2019-01-24 05:39:17', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id purus molestie ipsum posuere facilisis. Cras at efficitur justo, ac hendrerit tortor. Morbi et erat ac massa condimentum lobortis. Donec non ullamcorper eros. Donec ligula mauris, aliquet cursus blandit non, pellentesque et leo. Phasellus commodo lectus lectus, ut ornare lacus tincidunt id. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id="28" title="Contact"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:39:17', '2019-01-24 05:39:17', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-01-24 06:40:05', '2019-01-24 05:40:05', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id purus molestie ipsum posuere facilisis. Cras at efficitur justo, ac hendrerit tortor. Morbi et erat ac massa condimentum lobortis. Donec non ullamcorper eros. Donec ligula mauris, aliquet cursus blandit non, pellentesque et leo. Phasellus commodo lectus lectus, ut ornare lacus tincidunt id. </p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:40:05', '2019-01-24 05:40:05', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-01-24 06:42:46', '2019-01-24 05:42:46', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de vtre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:42:46', '2019-01-24 05:42:46', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-01-24 06:43:24', '2019-01-24 05:43:24', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:43:24', '2019-01-24 05:43:24', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-01-24 06:44:47', '2019-01-24 05:44:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Formulaire de contact', 'formulaire', 'publish', 'closed', 'closed', '', 'field_5c4950b13473b', '', '', '2019-01-29 13:10:31', '2019-01-29 12:10:31', '', 71, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=80', 2, 'acf-field', '', 0),
(81, 1, '2019-01-24 06:45:02', '2019-01-24 05:45:02', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:45:02', '2019-01-24 05:45:02', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-01-24 06:46:17', '2019-01-24 05:46:17', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:46:17', '2019-01-24 05:46:17', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-24 06:46:25', '2019-01-24 05:46:25', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:46:25', '2019-01-24 05:46:25', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-24 06:46:49', '2019-01-24 05:46:49', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:46:49', '2019-01-24 05:46:49', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-01-24 06:57:34', '2019-01-24 05:57:34', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 06:57:34', '2019-01-24 05:57:34', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-01-24 07:02:51', '2019-01-24 06:02:51', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-24 07:02:51', '2019-01-24 06:02:51', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-01-24 07:17:51', '2019-01-24 06:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=87', 7, 'nav_menu_item', '', 0),
(88, 1, '2019-01-24 07:17:51', '2019-01-24 06:17:51', '', 'Présentation – Nos services poids lourds', '', 'publish', 'closed', 'closed', '', '88', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=88', 8, 'nav_menu_item', '', 0),
(89, 1, '2019-01-24 07:17:51', '2019-01-24 06:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=89', 9, 'nav_menu_item', '', 0),
(90, 1, '2019-01-24 07:17:51', '2019-01-24 06:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=90', 10, 'nav_menu_item', '', 0),
(91, 1, '2019-01-24 07:19:00', '2019-01-24 06:19:00', '', 'L\'atelier AMC', '', 'publish', 'closed', 'closed', '', 'latelier-amc', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=91', 11, 'nav_menu_item', '', 0),
(92, 1, '2019-01-24 07:19:01', '2019-01-24 06:19:01', '', 'Histoire de l\'entreprise', '', 'publish', 'closed', 'closed', '', 'histoire-de-lentreprise', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=92', 12, 'nav_menu_item', '', 0),
(93, 1, '2019-01-24 07:19:01', '2019-01-24 06:19:01', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2019-01-25 08:00:04', '2019-01-25 07:00:04', '', 0, 'http://192.168.88.12/amc/?p=93', 13, 'nav_menu_item', '', 0),
(94, 1, '2019-01-24 07:19:02', '2019-01-24 06:19:02', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2019-01-25 08:00:04', '2019-01-25 07:00:04', '', 0, 'http://192.168.88.12/amc/?p=94', 14, 'nav_menu_item', '', 0),
(95, 1, '2019-01-24 07:48:41', '2019-01-24 06:48:41', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"35";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Agréments et partenaires', 'agrements-et-partenaires', 'publish', 'closed', 'closed', '', 'group_5c495f877a54f', '', '', '2019-01-28 14:16:44', '2019-01-28 13:16:44', '', 0, 'http://192.168.88.12/amc/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2019-01-24 07:48:42', '2019-01-24 06:48:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'URL Jet assistance', 'url_jetassistance', 'publish', 'closed', 'closed', '', 'field_5c495f9586e04', '', '', '2019-01-28 14:13:03', '2019-01-28 13:13:03', '', 95, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=96', 2, 'acf-field', '', 0),
(97, 1, '2019-01-24 07:49:02', '2019-01-24 06:49:02', '<!-- wp:shortcode -->\n[contact-form-7 id="34" title="Devenez partenaire"]\n<!-- /wp:shortcode -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-24 07:49:02', '2019-01-24 06:49:02', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-01-24 07:56:25', '2019-01-24 06:56:25', '<!-- wp:paragraph -->\n<p>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-24 07:56:25', '2019-01-24 06:56:25', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-01-24 08:10:24', '2019-01-24 07:10:24', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Texte additionnel', 'texte_additionnel', 'publish', 'closed', 'closed', '', 'field_5c496226116bc', '', '', '2019-01-28 14:13:03', '2019-01-28 13:13:03', '', 95, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=100', 1, 'acf-field', '', 0),
(101, 1, '2019-01-24 08:12:44', '2019-01-24 07:12:44', '<!-- wp:paragraph -->\n<p>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-24 08:12:44', '2019-01-24 07:12:44', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-01-24 08:13:49', '2019-01-24 07:13:49', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Devenez partenaire', 'devenez_partenaire', 'publish', 'closed', 'closed', '', 'field_5c496598e5f68', '', '', '2019-01-28 14:13:04', '2019-01-28 13:13:04', '', 95, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=102', 3, 'acf-field', '', 0) ;
INSERT INTO `amc_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2019-01-24 08:14:26', '2019-01-24 07:14:26', '<!-- wp:paragraph -->\n<p>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-24 08:14:26', '2019-01-24 07:14:26', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-01-24 08:49:47', '2019-01-24 07:49:47', '<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-24 08:49:47', '2019-01-24 07:49:47', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-01-24 12:59:57', '2019-01-24 11:59:57', '', 'Présentation - Nos services poids lourds', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-01-24 12:59:57', '2019-01-24 11:59:57', '', 38, 'http://192.168.88.12/amc/38-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-01-24 13:00:12', '2019-01-24 12:00:12', '', 'Présentation - Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-24 13:00:12', '2019-01-24 12:00:12', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-01-24 13:01:21', '2019-01-24 12:01:21', '', 'Présentation – Nos services automobiles', '', 'publish', 'closed', 'closed', '', 'presentation-nos-services-automobiles', '', '', '2019-01-25 08:00:03', '2019-01-25 07:00:03', '', 0, 'http://192.168.88.12/amc/?p=108', 2, 'nav_menu_item', '', 0),
(109, 1, '2019-01-24 13:09:50', '2019-01-24 12:09:50', '<!-- wp:paragraph -->\n<p>AMC est une carrosserie spécialisée dans la réparation de véhiclues légers (automobiles et utilitaires) et poids lourds (autocars).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre entreprise tire sa force à la fois de son expérience et de la complémentarité de ses équipes. Notre clientèle se compose de clients variés et exigeants, et notre atelier s\'engage à mettre en oeuvre tout son possible afin de répondre aux besoins spécifiques de chacun (qualité de prestation, maîtrise des coûts, et optimisation des délairs dsans la mesure du réalisable).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Présentation - Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-24 13:09:50', '2019-01-24 12:09:50', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-01-24 13:12:28', '2019-01-24 12:12:28', '<!-- wp:paragraph -->\n<p>AMC est une carrosserie spécialisée dans la réparation de véhiclues légers (automobiles et utilitaires) et poids lourds (autocars).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre entreprise tire sa force à la fois de son expérience et de la complémentarité de ses équipes. Notre clientèle se compose de clients variés et exigeants, et notre atelier s\'engage à mettre en oeuvre tout son possible afin de répondre aux besoins spécifiques de chacun (qualité de prestation, maîtrise des coûts, et optimisation des délairs dsans la mesure du réalisable).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le respect de l\'origine est élément fondamental vis-à-vis des propriétaires qui nous font confiance :  pièces d\'origine, respect des normes constructeur, recommandation des marques et connaissance des différentes modèles resetent les règles indispensables au coeur de notre stratégie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Enfin, présent sur la place montalbanaise depuis 50 ans et 3 générations, nus avons fait le choix de rester une entreprise familiale à taille humaine afin de erster accessibles à nos clients et de travailler dans un climat de confiance.</p>\n<!-- /wp:paragraph -->', 'Présentation - Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-24 13:12:28', '2019-01-24 12:12:28', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-01-24 13:14:24', '2019-01-24 12:14:24', '<!-- wp:paragraph -->\n<p>AMC est une carrosserie spécialisée dans la réparation de véhicules légers (automobiles et utilitaires) et poids lourds (autocars).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre entreprise tire sa force à la fois de son expérience et de la complémentarité de ses équipes. Notre clientèle se compose de clients variés et exigeants, et notre atelier s\'engage à mettre en oeuvre tout son possible afin de répondre aux besoins spécifiques de chacun (qualité de prestation, maîtrise des coûts, et optimisation des délais dans la mesure du réalisable).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le respect de l\'origine est élément fondamental vis-à-vis des propriétaires qui nous font confiance :  pièces d\'origine, respect des normes constructeur, recommandation des marques et connaissance des différentes modèles resetent les règles indispensables au coeur de notre stratégie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Enfin, présent sur la place montalbanaise depuis 50 ans et 3 générations, nous avons fait le choix de rester une entreprise familiale à taille humaine afin de rester accessibles à nos clients et de travailler dans un climat de confiance.</p>\n<!-- /wp:paragraph -->', 'Présentation - Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-24 13:14:24', '2019-01-24 12:14:24', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-01-25 10:04:45', '2019-01-25 09:04:45', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-25 10:04:45', '2019-01-25 09:04:45', '', 1, 'http://192.168.88.12/amc/1-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-01-28 07:56:34', '2019-01-28 06:56:34', '', '', '', 'trash', 'closed', 'closed', '', '118__trashed', '', '', '2019-01-28 08:32:21', '2019-01-28 07:32:21', '', 0, 'http://192.168.88.12/amc/?post_type=wck-meta-box&#038;p=118', 0, 'wck-meta-box', '', 0),
(119, 1, '2019-01-28 07:58:47', '2019-01-28 06:58:47', '', 'Histoire de l\'entreprise', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-01-28 08:20:03', '2019-01-28 07:20:03', '', 0, 'http://192.168.88.12/amc/?post_type=wck-meta-box&#038;p=119', 0, 'wck-meta-box', '', 0),
(120, 1, '2019-01-28 07:58:57', '2019-01-28 06:58:57', '', '', '', 'inherit', 'closed', 'closed', '', '119-autosave-v1', '', '', '2019-01-28 07:58:57', '2019-01-28 06:58:57', '', 119, 'http://192.168.88.12/amc/119-autosave-v1/', 0, 'revision', '', 0),
(121, 1, '2019-01-28 08:05:33', '2019-01-28 07:05:33', '', 'car-2351706_1920', '', 'inherit', 'open', 'closed', '', 'car-2351706_1920', '', '', '2019-01-28 08:05:33', '2019-01-28 07:05:33', '', 53, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/car-2351706_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-01-28 08:29:47', '2019-01-28 07:29:47', '', 'Logos des partenaires', '', 'publish', 'closed', 'closed', '', 'logos-des-partenaires', '', '', '2019-01-28 08:30:51', '2019-01-28 07:30:51', '', 0, 'http://192.168.88.12/amc/?post_type=wck-meta-box&#038;p=122', 0, 'wck-meta-box', '', 0),
(123, 1, '2019-01-28 08:59:58', '2019-01-28 07:59:58', '', 'jungle-831222_1920', '', 'inherit', 'open', 'closed', '', 'jungle-831222_1920', '', '', '2019-01-28 08:59:58', '2019-01-28 07:59:58', '', 53, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/jungle-831222_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-01-28 14:12:17', '2019-01-28 13:12:17', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Logos des partenaires', 'logos_des_partenaires', 'publish', 'closed', 'closed', '', 'field_5c4eff3abc8b9', '', '', '2019-01-28 14:13:03', '2019-01-28 13:13:03', '', 95, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=129', 0, 'acf-field', '', 0),
(130, 1, '2019-01-28 14:12:17', '2019-01-28 13:12:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:7:"jpg,png";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5c4eff73bc8ba', '', '', '2019-01-28 14:16:44', '2019-01-28 13:16:44', '', 129, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=130', 0, 'acf-field', '', 0),
(131, 1, '2019-01-28 14:14:31', '2019-01-28 13:14:31', '<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-28 14:14:31', '2019-01-28 13:14:31', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-01-28 14:17:32', '2019-01-28 13:17:32', '<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-28 14:17:32', '2019-01-28 13:17:32', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-01-28 14:19:27', '2019-01-28 13:19:27', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"53";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Histoire de l\'entreprise', 'histoire-de-lentreprise', 'publish', 'closed', 'closed', '', 'group_5c4f0142ad6f0', '', '', '2019-01-28 14:29:45', '2019-01-28 13:29:45', '', 0, 'http://192.168.88.12/amc/?post_type=acf-field-group&#038;p=133', 0, 'acf-field-group', '', 0) ;
INSERT INTO `amc_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(134, 1, '2019-01-28 14:21:14', '2019-01-28 13:21:14', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Histoires', 'histoires', 'publish', 'closed', 'closed', '', 'field_5c4f0168a0c9e', '', '', '2019-01-28 14:29:45', '2019-01-28 13:29:45', '', 133, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=134', 0, 'acf-field', '', 0),
(135, 1, '2019-01-28 14:21:15', '2019-01-28 13:21:15', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5c4f017ea0c9f', '', '', '2019-01-28 14:21:15', '2019-01-28 13:21:15', '', 134, 'http://192.168.88.12/amc/?post_type=acf-field&p=135', 0, 'acf-field', '', 0),
(136, 1, '2019-01-28 14:21:18', '2019-01-28 13:21:18', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5c4f018aa0ca0', '', '', '2019-01-28 14:21:18', '2019-01-28 13:21:18', '', 134, 'http://192.168.88.12/amc/?post_type=acf-field&p=136', 1, 'acf-field', '', 0),
(137, 1, '2019-01-28 14:21:22', '2019-01-28 13:21:22', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_5c4f01aaa0ca1', '', '', '2019-01-28 14:21:22', '2019-01-28 13:21:22', '', 134, 'http://192.168.88.12/amc/?post_type=acf-field&p=137', 2, 'acf-field', '', 0),
(138, 1, '2019-01-28 14:21:23', '2019-01-28 13:21:23', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5c4f01b6a0ca2', '', '', '2019-01-28 14:21:23', '2019-01-28 13:21:23', '', 134, 'http://192.168.88.12/amc/?post_type=acf-field&p=138', 3, 'acf-field', '', 0),
(139, 1, '2019-01-28 14:27:40', '2019-01-28 13:27:40', '', 'Histoire de l\'entreprise', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-28 14:27:40', '2019-01-28 13:27:40', '', 53, 'http://192.168.88.12/amc/53-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-01-28 14:29:22', '2019-01-28 13:29:22', '', 'Histoire de l\'entreprise', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-28 14:29:22', '2019-01-28 13:29:22', '', 53, 'http://192.168.88.12/amc/53-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-01-28 14:57:55', '2019-01-28 13:57:55', '', 'Histoire de l\'entreprise', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-28 14:57:55', '2019-01-28 13:57:55', '', 53, 'http://192.168.88.12/amc/53-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-01-28 15:02:49', '2019-01-28 14:02:49', '', 'Histoire de l\'entreprise', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-28 15:02:49', '2019-01-28 14:02:49', '', 53, 'http://192.168.88.12/amc/53-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2019-01-28 15:24:53', '2019-01-28 14:24:53', '', 'amc', '', 'inherit', 'open', 'closed', '', 'amc', '', '', '2019-01-28 15:24:53', '2019-01-28 14:24:53', '', 0, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/amc.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2019-01-29 08:13:26', '2019-01-29 07:13:26', '<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-29 08:13:26', '2019-01-29 07:13:26', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-01-29 08:14:35', '2019-01-29 07:14:35', '', 'allianz', '', 'inherit', 'open', 'closed', '', 'allianz', '', '', '2019-01-29 08:14:35', '2019-01-29 07:14:35', '', 35, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/allianz.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2019-01-29 08:14:36', '2019-01-29 07:14:36', '', 'macsf', '', 'inherit', 'open', 'closed', '', 'macsf', '', '', '2019-01-29 08:14:36', '2019-01-29 07:14:36', '', 35, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/macsf.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2019-01-29 08:14:37', '2019-01-29 07:14:37', '', 'prima', '', 'inherit', 'open', 'closed', '', 'prima', '', '', '2019-01-29 08:14:37', '2019-01-29 07:14:37', '', 35, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/prima.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2019-01-29 08:14:38', '2019-01-29 07:14:38', '', 'sagena', '', 'inherit', 'open', 'closed', '', 'sagena', '', '', '2019-01-29 08:14:38', '2019-01-29 07:14:38', '', 35, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/sagena.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2019-01-29 08:14:39', '2019-01-29 07:14:39', '', 'swisslife', '', 'inherit', 'open', 'closed', '', 'swisslife', '', '', '2019-01-29 08:14:39', '2019-01-29 07:14:39', '', 35, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/swisslife.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2019-01-29 08:15:07', '2019-01-29 07:15:07', '<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-29 08:15:07', '2019-01-29 07:15:07', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-01-29 10:33:20', '2019-01-29 09:33:20', '<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 10:33:20', '2019-01-29 09:33:20', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2019-01-29 10:54:44', '2019-01-29 09:54:44', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 10:54:44', '2019-01-29 09:54:44', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-01-29 10:54:46', '2019-01-29 09:54:46', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 10:54:46', '2019-01-29 09:54:46', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-01-29 13:03:36', '2019-01-29 12:03:36', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 13:03:36', '2019-01-29 12:03:36', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-01-29 13:06:03', '2019-01-29 12:06:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"15";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Carte Gmap ( https://www.google.com/maps )', 'carte-gmap-https-www-google-com-maps', 'publish', 'closed', 'closed', '', 'group_5c50415f8102f', '', '', '2019-01-29 13:16:52', '2019-01-29 12:16:52', '', 0, 'http://192.168.88.12/amc/?post_type=acf-field-group&#038;p=155', 0, 'acf-field-group', '', 0),
(156, 1, '2019-01-29 13:06:03', '2019-01-29 12:06:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Latitude', 'latitude', 'publish', 'closed', 'closed', '', 'field_5c50416810202', '', '', '2019-01-29 13:06:03', '2019-01-29 12:06:03', '', 155, 'http://192.168.88.12/amc/?post_type=acf-field&p=156', 0, 'acf-field', '', 0),
(157, 1, '2019-01-29 13:06:03', '2019-01-29 12:06:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Longitude', 'longitude', 'publish', 'closed', 'closed', '', 'field_5c50417610203', '', '', '2019-01-29 13:06:03', '2019-01-29 12:06:03', '', 155, 'http://192.168.88.12/amc/?post_type=acf-field&p=157', 1, 'acf-field', '', 0),
(158, 1, '2019-01-29 13:06:03', '2019-01-29 12:06:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Clé API', 'api_key', 'publish', 'closed', 'closed', '', 'field_5c50418110204', '', '', '2019-01-29 13:08:34', '2019-01-29 12:08:34', '', 155, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=158', 3, 'acf-field', '', 0),
(159, 1, '2019-01-29 13:07:09', '2019-01-29 12:07:09', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 13:07:09', '2019-01-29 12:07:09', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-01-29 13:08:06', '2019-01-29 12:08:06', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Zoom', 'zoom', 'publish', 'closed', 'closed', '', 'field_5c5041fd06ba4', '', '', '2019-01-29 13:08:34', '2019-01-29 12:08:34', '', 155, 'http://192.168.88.12/amc/?post_type=acf-field&#038;p=160', 2, 'acf-field', '', 0),
(161, 1, '2019-01-29 13:08:52', '2019-01-29 12:08:52', '<!-- wp:heading {"level":1} -->\n<h1>Nous contacter</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Notre équipe réalise pour vous des devis gratuits sans rendez-vous si vous envisagez une réparation de votre véhicule. Nous pouvons réaliser un premier devis sur photo pour les autocars. Pour ce faire, envoyez-nous un courriel à l\'adresse suivante, en joignant les photos des éléments que vous souhaitez réparer, ainsi que vos contraintes de délai (nous ne réalisons pas de devis sur photo ou par téléphone).</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-29 13:08:52', '2019-01-29 12:08:52', '', 15, 'http://192.168.88.12/amc/15-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-01-29 14:51:48', '2019-01-29 13:51:48', '<!-- wp:heading -->\n<h2>Présentation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>AMC est une carrosserie spécialisée dans la réparation de véhicules légers (automobiles et utilitaires) et poids lourds (autocars).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre entreprise tire sa force à la fois de son expérience et de la complémentarité de ses équipes. Notre clientèle se compose de clients variés et exigeants, et notre atelier s\'engage à mettre en oeuvre tout son possible afin de répondre aux besoins spécifiques de chacun (qualité de prestation, maîtrise des coûts, et optimisation des délais dans la mesure du réalisable).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le respect de l\'origine est élément fondamental vis-à-vis des propriétaires qui nous font confiance :  pièces d\'origine, respect des normes constructeur, recommandation des marques et connaissance des différentes modèles resetent les règles indispensables au coeur de notre stratégie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Enfin, présent sur la place montalbanaise depuis 50 ans et 3 générations, nous avons fait le choix de rester une entreprise familiale à taille humaine afin de rester accessibles à nos clients et de travailler dans un climat de confiance.</p>\n<!-- /wp:paragraph -->', 'Présentation - Nos services automobiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-29 14:51:48', '2019-01-29 13:51:48', '', 41, 'http://192.168.88.12/amc/41-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-01-29 14:53:12', '2019-01-29 13:53:12', '<!-- wp:heading -->\n<h2>Agréments <span>&amp;</span> partenaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</strong></p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-29 14:53:12', '2019-01-29 13:53:12', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-01-29 14:58:27', '2019-01-29 13:58:27', '', 'soudure', '', 'inherit', 'open', 'closed', '', 'soudure', '', '', '2019-01-29 14:58:27', '2019-01-29 13:58:27', '', 41, 'http://192.168.88.12/amc/wp-content/uploads/2019/01/soudure.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2019-01-30 06:23:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-30 06:23:09', '0000-00-00 00:00:00', '', 0, 'http://192.168.88.12/amc/?p=166', 0, 'post', '', 0),
(167, 1, '2019-01-30 07:03:43', '2019-01-30 06:03:43', '<!-- wp:heading -->\n<h2>Agréments <span>&amp;</span> partenaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>La plupart des assurances nous font aujourd\'hui confiance,<br>et nous sommes partenaires au quotidien avec les suivantes</p>\n<!-- /wp:paragraph -->', 'Agréments et partenaires', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-30 07:03:43', '2019-01-30 06:03:43', '', 35, 'http://192.168.88.12/amc/35-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `amc_posts`
# --------------------------------------------------------



#
# Delete any existing table `amc_term_relationships`
#

DROP TABLE IF EXISTS `amc_term_relationships`;


#
# Table structure of table `amc_term_relationships`
#

CREATE TABLE `amc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_term_relationships`
#
INSERT INTO `amc_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(68, 2, 0),
(70, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 2, 0),
(94, 2, 0),
(108, 2, 0) ;

#
# End of data contents of table `amc_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `amc_term_taxonomy`
#

DROP TABLE IF EXISTS `amc_term_taxonomy`;


#
# Table structure of table `amc_term_taxonomy`
#

CREATE TABLE `amc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_term_taxonomy`
#
INSERT INTO `amc_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 14) ;

#
# End of data contents of table `amc_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `amc_termmeta`
#

DROP TABLE IF EXISTS `amc_termmeta`;


#
# Table structure of table `amc_termmeta`
#

CREATE TABLE `amc_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_termmeta`
#

#
# End of data contents of table `amc_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `amc_terms`
#

DROP TABLE IF EXISTS `amc_terms`;


#
# Table structure of table `amc_terms`
#

CREATE TABLE `amc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_terms`
#
INSERT INTO `amc_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Primaire', 'primaire', 0) ;

#
# End of data contents of table `amc_terms`
# --------------------------------------------------------



#
# Delete any existing table `amc_usermeta`
#

DROP TABLE IF EXISTS `amc_usermeta`;


#
# Table structure of table `amc_usermeta`
#

CREATE TABLE `amc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `amc_usermeta`
#
INSERT INTO `amc_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'devke03'),
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
(12, 1, 'amc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'amc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'amc_dashboard_quick_press_last_post_id', '166'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"192.168.88.0";}'),
(19, 1, 'session_tokens', 'a:1:{s:64:"1c20ab903b2646828cabd1991fc4bc33501c410011ce14bec0953e9f0479fe94";a:5:{s:10:"expiration";i:1549605502;s:2:"ip";s:13:"192.168.88.12";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1548395902;s:4:"loco";a:3:{s:1:"c";s:17:"Loco_data_Session";s:1:"v";i:0;s:1:"d";a:1:{s:7:"success";a:0:{}}}}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-project";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-project-tag";}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'amc_user-settings', 'libraryContent=browse'),
(26, 1, 'amc_user-settings-time', '1548231401'),
(27, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:6:"normal";s:42:"acf-group_5c4854af8cd23,page-meta-settings";s:4:"side";s:0:"";s:8:"advanced";s:0:"";}'),
(28, 1, 'amc_nf_form_preview_1', 'a:4:{s:2:"id";i:1;s:8:"settings";a:101:{s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2019-01-23 13:14:37";s:17:"default_label_pos";s:5:"above";s:10:"conditions";a:0:{}s:10:"objectType";s:12:"Form Setting";s:10:"editActive";s:0:"";s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:4:{i:0;s:4:"name";i:1;s:5:"email";i:2;s:7:"message";i:3;s:6:"submit";}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";s:8:"currency";s:0:"";s:18:"unique_field_error";s:50:"A form with this value has already been submitted.";}s:6:"fields";a:4:{i:1;a:1:{s:8:"settings";a:73:{s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:9:"parent_id";i:1;s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";i:1;s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";s:21:"custom_name_attribute";s:0:"";s:23:"personally_identifiable";s:0:"";s:14:"drawerDisabled";b:0;}}i:2;a:1:{s:8:"settings";a:64:{s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:9:"parent_id";i:1;s:4:"type";s:5:"email";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";i:2;s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";s:21:"custom_name_attribute";s:5:"email";s:23:"personally_identifiable";s:1:"1";}}i:3;a:1:{s:8:"settings";a:71:{s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:9:"parent_id";i:1;s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2019-01-23 13:14:41";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";i:3;s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}}i:4;a:1:{s:8:"settings";a:70:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";i:1;s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2019-01-23 13:14:42";s:16:"processing_label";s:10:"Processing";s:5:"order";i:4;s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";s:14:"drawerDisabled";b:0;}}}s:7:"actions";a:4:{i:1;a:1:{s:8:"settings";a:31:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:43";s:5:"label";s:16:"Store Submission";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:13:"email_subject";s:17:"Formulaires Ninja";s:13:"email_message";s:14:"{fields_table}";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";s:7:"message";s:160:"This action adds users to WordPress\' personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.";s:15:"submitter_email";s:0:"";s:18:"fields-save-toggle";s:8:"save_all";s:16:"exception_fields";a:0:{}s:18:"set_subs_to_expire";i:0;s:16:"subs_expire_time";s:2:"90";}}i:2;a:1:{s:8:"settings";a:26:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:44";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{all_fields_table}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}}i:3;a:1:{s:8:"settings";a:25:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:45";s:5:"label";s:18:"Email Notification";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:60:"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";s:7:"message";s:160:"This action adds users to WordPress\' personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site\'s front end.";}}i:4;a:1:{s:8:"settings";a:32:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:14:"successmessage";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2019-01-23 13:14:46";s:5:"label";s:15:"Success Message";s:7:"message";s:47:"Thank you {field:name} for filling out my form!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:1:"0";s:3:"tag";s:0:"";s:2:"to";s:16:"{wp:admin_email}";s:13:"email_subject";s:17:"Formulaires Ninja";s:13:"email_message";s:14:"{fields_table}";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:11:"success_msg";s:89:"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>";s:19:"email_message_plain";s:0:"";s:15:"submitter_email";s:0:"";s:18:"fields-save-toggle";s:8:"save_all";s:16:"exception_fields";a:0:{}s:18:"set_subs_to_expire";i:0;s:16:"subs_expire_time";s:2:"90";}}}}'),
(29, 1, 'tgmpa_dismissed_notice', '1'),
(30, 1, 'closedpostboxes_wck_page_sas-page', 'a:1:{i:0;s:18:"wck_tools_activate";}'),
(31, 1, 'metaboxhidden_wck_page_sas-page', 'a:0:{}') ;

#
# End of data contents of table `amc_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `amc_users`
#

DROP TABLE IF EXISTS `amc_users`;


#
# Table structure of table `amc_users`
#

CREATE TABLE `amc_users` (
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


#
# Data contents of table `amc_users`
#
INSERT INTO `amc_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'devke03', '$P$Bs92QJzYfa2fl6YeeCB.jZqHwNQNAm0', 'devke03', 'devke03@gmail.com', '', '2019-01-22 11:54:56', '', 0, 'devke03') ;

#
# End of data contents of table `amc_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

