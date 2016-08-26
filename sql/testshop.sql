-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2016 at 05:34 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_apsl_users_social_profile_details`
--

CREATE TABLE IF NOT EXISTS `wp_apsl_users_social_profile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider_name` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `unique_verifier` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` varchar(255) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(75) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(25) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `provider_name` (`provider_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2016-08-04 19:04:35', '2016-08-04 16:04:35', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, '1', '', '', 0, 0),
(2, 42, 'WooCommerce', '', '', '', '2016-08-17 12:24:36', '2016-08-17 09:24:36', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_deliverreport`
--

CREATE TABLE IF NOT EXISTS `wp_es_deliverreport` (
  `es_deliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_deliver_sentguid` varchar(255) NOT NULL,
  `es_deliver_emailid` int(10) unsigned NOT NULL,
  `es_deliver_emailmail` varchar(255) NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) NOT NULL DEFAULT 'Instant Mail',
  PRIMARY KEY (`es_deliver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_emaillist`
--

CREATE TABLE IF NOT EXISTS `wp_es_emaillist` (
  `es_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_email_name` varchar(255) NOT NULL,
  `es_email_mail` varchar(255) NOT NULL,
  `es_email_status` varchar(25) NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) NOT NULL,
  `es_email_group` varchar(255) NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) NOT NULL,
  PRIMARY KEY (`es_email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_es_emaillist`
--

INSERT INTO `wp_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'sheva-gitara@mail.ru', 'Confirmed', '2016-08-17 07:49:10', '0', 'Public', 'axmboh-klsvfu-fonhbs-wugoha-twlekx'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2016-08-17 07:49:10', '0', 'Public', 'ckivrx-dsvlbp-jicpla-fdhsec-ibojxl');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_notification`
--

CREATE TABLE IF NOT EXISTS `wp_es_notification` (
  `es_note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_note_cat` text,
  `es_note_group` varchar(255) NOT NULL,
  `es_note_templ` int(10) unsigned NOT NULL,
  `es_note_status` varchar(10) NOT NULL DEFAULT 'Enable',
  PRIMARY KEY (`es_note_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_es_notification`
--

INSERT INTO `wp_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Без рубрики## ', 'Public', 1, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_pluginconfig`
--

CREATE TABLE IF NOT EXISTS `wp_es_pluginconfig` (
  `es_c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_c_fromname` varchar(255) NOT NULL,
  `es_c_fromemail` varchar(255) NOT NULL,
  `es_c_mailtype` varchar(255) NOT NULL,
  `es_c_adminmailoption` varchar(255) NOT NULL,
  `es_c_adminemail` varchar(255) NOT NULL,
  `es_c_adminmailsubject` varchar(255) NOT NULL,
  `es_c_adminmailcontant` text,
  `es_c_usermailoption` varchar(255) NOT NULL,
  `es_c_usermailsubject` varchar(255) NOT NULL,
  `es_c_usermailcontant` text,
  `es_c_optinoption` varchar(255) NOT NULL,
  `es_c_optinsubject` varchar(255) NOT NULL,
  `es_c_optincontent` text,
  `es_c_optinlink` varchar(255) NOT NULL,
  `es_c_unsublink` varchar(255) NOT NULL,
  `es_c_unsubtext` text,
  `es_c_unsubhtml` text,
  `es_c_subhtml` text,
  `es_c_message1` text,
  `es_c_message2` text,
  PRIMARY KEY (`es_c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_es_pluginconfig`
--

INSERT INTO `wp_es_pluginconfig` (`es_c_id`, `es_c_fromname`, `es_c_fromemail`, `es_c_mailtype`, `es_c_adminmailoption`, `es_c_adminemail`, `es_c_adminmailsubject`, `es_c_adminmailcontant`, `es_c_usermailoption`, `es_c_usermailsubject`, `es_c_usermailcontant`, `es_c_optinoption`, `es_c_optinsubject`, `es_c_optincontent`, `es_c_optinlink`, `es_c_unsublink`, `es_c_unsubtext`, `es_c_unsubhtml`, `es_c_subhtml`, `es_c_message1`, `es_c_message2`) VALUES
(1, 'Admin', 'sheva-gitara@mail.ru', 'WP HTML MAIL', 'YES', 'sheva-gitara@mail.ru', 'TestShop New email subscription', 'Hi Admin, \r\n\r\nWe have received a request to subscribe new email address to receive emails from our website. \r\n\r\nEmail: ###EMAIL### \r\nName : ###NAME### \r\n\r\nThank You\r\nTestShop', 'YES', 'TestShop Welcome to our newsletter', 'Hi ###NAME###, \r\n\r\nWe have received a request to subscribe this email address to receive newsletter from our website. \r\n\r\nThank You\r\nTestShop \r\n\r\n No longer interested email from TestShop?. Please <a href=''###LINK###''>click here</a> to unsubscribe', 'Double Opt In', 'TestShop confirm subscription', 'Hi ###NAME###, \r\n\r\nA newsletter subscription request for this email address was received. Please confirm it by <a href=''###LINK###''>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please click this link : \r\n ###LINK### \r\n\r\nThank You\r\nTestShop', 'http://lgm-solution/?es=optin&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'http://lgm-solution/?es=unsubscribe&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'No longer interested email from TestShop?. Please <a href=''###LINK###''>click here</a> to unsubscribe', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'Thank You, You have been successfully subscribed to our newsletter.', 'Oops.. This subscription cant be completed, sorry. The email address is blocked or already subscribed. Thank you.', 'Oops.. We are getting some technical error. Please try again or contact admin.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_sentdetails`
--

CREATE TABLE IF NOT EXISTS `wp_es_sentdetails` (
  `es_sent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_sent_guid` varchar(255) NOT NULL,
  `es_sent_qstring` varchar(255) NOT NULL,
  `es_sent_source` varchar(255) NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) unsigned NOT NULL,
  `es_sent_preview` text,
  `es_sent_status` varchar(25) NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) NOT NULL DEFAULT 'Instant Mail',
  `es_sent_subject` varchar(255) NOT NULL,
  PRIMARY KEY (`es_sent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_templatetable`
--

CREATE TABLE IF NOT EXISTS `wp_es_templatetable` (
  `es_templ_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `es_templ_heading` varchar(255) NOT NULL,
  `es_templ_body` text,
  `es_templ_status` varchar(25) NOT NULL DEFAULT 'Published',
  `es_email_type` varchar(100) NOT NULL DEFAULT 'Static Template',
  PRIMARY KEY (`es_templ_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_es_templatetable`
--

INSERT INTO `wp_es_templatetable` (`es_templ_id`, `es_templ_heading`, `es_templ_body`, `es_templ_status`, `es_email_type`) VALUES
(1, 'New post published ###POSTTITLE###', 'Hello ###NAME###,\r\n\r\nWe have published new blog in our website. ###POSTTITLE###\r\n###POSTDESC###\r\nYou may view the latest post at ###POSTLINK###\r\nYou received this e-mail because you asked to be notified when new updates are posted.\r\n\r\nThanks & Regards\r\nAdmin', 'Published', 'Dynamic Template'),
(2, 'Post notification ###POSTTITLE###', 'Hello ###EMAIL###,\r\n\r\nWe have published new blog in our website. ###POSTTITLE###\r\n###POSTIMAGE###\r\n###POSTFULL###\r\nYou may view the latest post at ###POSTLINK###\r\nYou received this e-mail because you asked to be notified when new updates are posted.\r\n\r\nThanks & Regards\r\nAdmin', 'Published', 'Dynamic Template'),
(3, 'Hello World Newsletter', '<strong style="color: #990000"> Email Subscribers</strong><p>Email Subscribers plugin has options to send newsletters to subscribers. It has a separate page with HTML editor to create a HTML newsletter. Also have options to send notification email to subscribers when new posts are published to your blog. Separate page available to include and exclude categories to send notifications. Using plugin Import and Export options admins can easily import registered users and commenters to subscriptions list.</p> <strong style="color: #990000">Plugin Features</strong><ol> <li>Send notification email to subscribers when new posts are published.</li> <li>Subscription box.</li><li>Double opt-in and single opt-in facility for subscriber.</li> <li>Email notification to admin when user signs up (Optional).</li> <li>Automatic welcome mail to subscriber (Optional).</li> <li>Unsubscribe link in the mail.</li> <li>Import/Export subscriber emails.</li> <li>HTML editor to compose newsletter.</li> </ol> <p>Plugin live demo and video tutorial available on the official website. Check official website for more information.</p> <strong>Thanks & Regards</strong><br>Admin', 'Published', 'Static Template');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itslider_images`
--

CREATE TABLE IF NOT EXISTS `wp_huge_itslider_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slider_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` text,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `sl_stitle` text NOT NULL,
  `sl_sdesc` text NOT NULL,
  `sl_postlink` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_huge_itslider_images`
--

INSERT INTO `wp_huge_itslider_images` (`id`, `name`, `slider_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `sl_stitle`, `sl_sdesc`, `sl_postlink`, `ordering`, `published`, `published_in_sl_width`) VALUES
(1, '', '1', '', 'http://lgm-solution/wp-content/plugins/slider-image/Front_images/slides/slide1.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 1, 1, NULL),
(2, 'Simple Usage', '1', '', 'http://lgm-solution/wp-content/plugins/slider-image/Front_images/slides/slide2.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 2, 1, NULL),
(3, 'Huge-IT Slider', '1', 'The slider allows having unlimited amount of images with their titles and descriptions. The slider uses autogenerated shortcodes making it easier for the users to add it to the custom location.', 'http://lgm-solution/wp-content/plugins/slider-image/Front_images/slides/slide3.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itslider_params`
--

CREATE TABLE IF NOT EXISTS `wp_huge_itslider_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `wp_huge_itslider_params`
--

INSERT INTO `wp_huge_itslider_params` (`id`, `name`, `title`, `description`, `value`) VALUES
(89, 'slider_crop_image', 'Slider crop image', 'Slider crop image', 'resize'),
(90, 'slider_title_color', 'Slider title color', 'Slider title color', '000000'),
(91, 'slider_title_font_size', 'Slider title font size', 'Slider title font size', '13'),
(92, 'slider_description_color', 'Slider description color', 'Slider description color', 'ffffff'),
(93, 'slider_description_font_size', 'Slider description font size', 'Slider description font size', '13'),
(94, 'slider_title_position', 'Slider title position', 'Slider title position', 'right-top'),
(95, 'slider_description_position', 'Slider description position', 'Slider description position', 'right-bottom'),
(96, 'slider_title_border_size', 'Slider Title border size', 'Slider Title border size', '0'),
(97, 'slider_title_border_color', 'Slider title border color', 'Slider title border color', 'ffffff'),
(98, 'slider_title_border_radius', 'Slider title border radius', 'Slider title border radius', '4'),
(99, 'slider_description_border_size', 'Slider description border size', 'Slider description border size', '0'),
(100, 'slider_description_border_color', 'Slider description border color', 'Slider description border color', 'ffffff'),
(101, 'slider_description_border_radius', 'Slider description border radius', 'Slider description border radius', '0'),
(102, 'slider_slideshow_border_size', 'Slider border size', 'Slider border size', '0'),
(103, 'slider_slideshow_border_color', 'Slider border color', 'Slider border color', 'ffffff'),
(104, 'slider_slideshow_border_radius', 'Slider border radius', 'Slider border radius', '0'),
(105, 'slider_navigation_type', 'Slider navigation type', 'Slider navigation type', '1'),
(106, 'slider_navigation_position', 'Slider navigation position', 'Slider navigation position', 'bottom'),
(107, 'slider_title_background_color', 'Slider title background color', 'Slider title background color', 'ffffff'),
(108, 'slider_description_background_color', 'Slider description background color', 'Slider description background color', '000000'),
(109, 'slider_title_transparent', 'Slider title has background', 'Slider title has background', 'on'),
(110, 'slider_description_transparent', 'Slider description has background', 'Slider description has background', 'on'),
(111, 'slider_slider_background_color', 'Slider slider background color', 'Slider slider background color', 'ffffff'),
(112, 'slider_dots_position', 'slider dots position', 'slider dots position', 'top'),
(113, 'slider_active_dot_color', 'slider active dot color', '', 'ffffff'),
(114, 'slider_dots_color', 'slider dots color', '', '000000'),
(115, 'slider_description_width', 'Slider description width', 'Slider description width', '70'),
(116, 'slider_description_height', 'Slider description height', 'Slider description height', '50'),
(117, 'slider_description_background_transparency', 'slider description background transparency', 'slider description background transparency', '70'),
(118, 'slider_description_text_align', 'description text-align', 'description text-align', 'justify'),
(119, 'slider_title_width', 'slider title width', 'slider title width', '30'),
(120, 'slider_title_height', 'slider title height', 'slider title height', '50'),
(121, 'slider_title_background_transparency', 'slider title background transparency', 'slider title background transparency', '70'),
(122, 'slider_title_text_align', 'title text-align', 'title text-align', 'right'),
(123, 'slider_title_has_margin', 'title has margin', 'title has margin', 'on'),
(124, 'slider_description_has_margin', 'description has margin', 'description has margin', 'on'),
(125, 'slider_show_arrows', 'Slider show left right arrows', 'Slider show left right arrows', 'on'),
(126, 'loading_icon_type', 'Slider loading icon type', 'Slider loading icon type', '1'),
(127, 'slider_thumb_count_slides', 'Slide thumbs count', 'Slide thumbs count', '3'),
(128, 'slider_dots_position_new', 'Slide Dots Position', 'Slide Dots Position', 'dotstop'),
(129, 'slider_thumb_back_color', 'Thumbnail Background Color', 'Thumbnail Background Color', 'FFFFFF'),
(130, 'slider_thumb_passive_color', 'Passive Thumbnail Color', 'Passive Thumbnail Color', 'FFFFFF'),
(131, 'slider_thumb_passive_color_trans', 'Passive Thumbnail Color Transparency', 'Passive Thumbnail Color Transparency', '50'),
(132, 'slider_thumb_height', 'Slider Thumb Height', 'Slider Thumb Height', '100');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itslider_sliders`
--

CREATE TABLE IF NOT EXISTS `wp_huge_itslider_sliders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text,
  `slider_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `sl_loading_icon` text NOT NULL,
  `show_thumb` varchar(255) NOT NULL DEFAULT 'dotstop',
  `video_autoplay` varchar(255) NOT NULL DEFAULT 'off',
  `random_images` varchar(255) NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_huge_itslider_sliders`
--

INSERT INTO `wp_huge_itslider_sliders` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `slider_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `sl_loading_icon`, `show_thumb`, `video_autoplay`, `random_images`) VALUES
(1, 'My First Slider', 375, 600, 'on', 'random', '4000', '1000', 'center', 1, '300', 'off', 'dotstop', 'off', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=976 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://lgm-solution/', 'yes'),
(2, 'home', 'http://lgm-solution/', 'yes'),
(3, 'blogname', 'TestShop', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'sheva-gitara@mail.ru', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:63:"accesspress-social-login-lite/accesspress-social-login-lite.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:39:"email-subscribers/email-subscribers.php";i:4;s:23:"loco-translate/loco.php";i:5;s:31:"popup-builder/popup-builder.php";i:6;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:7;s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";i:8;s:37:"woocommerce-products-filter/index.php";i:9;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'accesspress-store', 'yes'),
(41, 'stylesheet', 'accesspress-store', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '36686', 'yes'),
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
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:166:"<a href="tel:+30632242204"><i class="fa fa-phone"/></i>+3063 224 22 04 </a>|<a href="mailto:youremail@gmail.com"><i class="fa fa-envelope"></i>youremail@gmail.com</a>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:31:"popup-builder/popup-builder.php";s:17:"sgPopupDeactivate";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '45', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:10:"loco_admin";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:10:"translator";a:2:{s:4:"name";s:10:"Translator";s:12:"capabilities";a:1:{s:10:"loco_admin";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:19:{s:12:"sidebar-woof";a:0:{}s:19:"wp_inactive_widgets";a:1:{i:0;s:28:"accesspress_store_product2-2";}s:13:"sidebar-right";a:0:{}s:12:"sidebar-left";a:1:{i:0;s:32:"woocommerce_product_categories-5";}s:4:"shop";a:1:{i:0;s:13:"woof_widget-2";}s:20:"header-callto-action";a:1:{i:0;s:6:"text-2";}s:14:"promo-widget-1";a:0:{}s:16:"product-widget-1";a:1:{i:0;s:17:"homeless_widget-3";}s:14:"promo-widget-2";a:0:{}s:16:"product-widget-2";a:2:{i:0;s:27:"accesspress_store_product-3";i:1;s:27:"accesspress_store_product-2";}s:9:"cta-video";a:0:{}s:16:"product-widget-3";a:1:{i:0;s:22:"brands_slider_widget-2";}s:14:"promo-widget-3";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:19:"subcategory-sidebar";a:1:{i:0;s:32:"woocommerce_product_categories-4";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:8:{i:1472222158;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1472227475;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1472227485;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472227613;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472227720;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472266800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473120000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(114, '_site_transient_timeout_browser_2fc6e11379baceb9ef09921351f1ecf7', '1470931486', 'yes'),
(115, '_site_transient_browser_2fc6e11379baceb9ef09921351f1ecf7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"52.0.2743.82";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(117, 'can_compress_scripts', '1', 'yes'),
(132, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470326755;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(133, 'current_theme', 'AccessPress Store', 'yes'),
(134, 'theme_mods_accesspress-store', 'a:13:{i:0;b:0;s:30:"accesspress_header_layout_type";s:9:"headerone";s:11:"show_slider";i:1;s:10:"show_pager";i:0;s:13:"slider_1_post";i:0;s:30:"accesspress_widget_layout_type";s:15:"title_style_one";s:27:"accesspress_background_type";s:5:"color";s:36:"accesspress_background_image_pattern";s:8:"pattern4";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:7;}s:27:"accesspress_ticker_checkbox";s:0:"";s:24:"accesspress_ticker_title";s:0:"";s:24:"accesspress_ticker_text1";s:0:"";s:27:"accesspress_store_copyright";s:0:"";}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(136, 'widget_accesspress_store_icon_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_accesspress_cta_simple', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_accesspress_storemo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_accesspress_cta_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_accesspress_store_full_promo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'woocommerce_default_country', 'UA', 'yes'),
(146, 'woocommerce_allowed_countries', 'all', 'yes'),
(147, 'woocommerce_all_except_countries', '', 'yes'),
(148, 'woocommerce_specific_allowed_countries', '', 'yes'),
(149, 'woocommerce_ship_to_countries', '', 'yes'),
(150, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(151, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(152, 'woocommerce_calc_taxes', 'no', 'yes'),
(153, 'woocommerce_demo_store', 'no', 'yes'),
(154, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(155, 'woocommerce_currency', 'UAH', 'yes'),
(156, 'woocommerce_currency_pos', 'right', 'yes'),
(157, 'woocommerce_price_thousand_sep', ',', 'yes'),
(158, 'woocommerce_price_decimal_sep', '.', 'yes'),
(159, 'woocommerce_price_num_decimals', '2', 'yes'),
(160, 'woocommerce_weight_unit', 'kg', 'yes'),
(161, 'woocommerce_dimension_unit', 'cm', 'yes'),
(162, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(163, 'woocommerce_review_rating_required', 'yes', 'no'),
(164, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(166, 'woocommerce_shop_page_id', '5', 'yes'),
(167, 'woocommerce_shop_page_display', '', 'yes'),
(168, 'woocommerce_category_archive_display', '', 'yes'),
(169, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(170, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(171, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(172, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(173, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(174, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(175, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(176, 'woocommerce_manage_stock', 'yes', 'yes'),
(177, 'woocommerce_hold_stock_minutes', '60', 'no'),
(178, 'woocommerce_notify_low_stock', 'yes', 'no'),
(179, 'woocommerce_notify_no_stock', 'yes', 'no'),
(180, 'woocommerce_stock_email_recipient', 'sheva-gitara@mail.ru', 'no'),
(181, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(182, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(183, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(184, 'woocommerce_stock_format', '', 'yes'),
(185, 'woocommerce_file_download_method', 'force', 'no'),
(186, 'woocommerce_downloads_require_login', 'no', 'no'),
(187, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(188, 'woocommerce_prices_include_tax', 'no', 'yes'),
(189, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(190, 'woocommerce_shipping_tax_class', '', 'yes'),
(191, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(192, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(193, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(194, 'woocommerce_tax_display_cart', 'excl', 'no'),
(195, 'woocommerce_price_display_suffix', '', 'yes'),
(196, 'woocommerce_tax_total_display', 'itemized', 'no'),
(197, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(198, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(199, 'woocommerce_ship_to_destination', 'shipping', 'no'),
(200, 'woocommerce_enable_coupons', 'no', 'yes'),
(201, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(202, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(203, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(204, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_cart_page_id', '6', 'yes'),
(206, 'woocommerce_checkout_page_id', '7', 'yes'),
(207, 'woocommerce_terms_page_id', '', 'no'),
(208, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(209, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(210, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(211, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(212, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(213, 'woocommerce_myaccount_page_id', '8', 'yes'),
(214, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(215, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(216, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(217, 'woocommerce_registration_generate_username', 'yes', 'no'),
(218, 'woocommerce_registration_generate_password', 'no', 'no'),
(219, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(220, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(221, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(222, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(223, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(224, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(225, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(226, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(227, 'woocommerce_email_from_name', 'TestShop', 'no'),
(228, 'woocommerce_email_from_address', 'sheva-gitara@mail.ru', 'no'),
(229, 'woocommerce_email_header_image', '', 'no'),
(230, 'woocommerce_email_footer_text', 'TestShop - Powered by WooCommerce', 'no'),
(231, 'woocommerce_email_base_color', '#557da1', 'no'),
(232, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(233, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(234, 'woocommerce_email_text_color', '#505050', 'no'),
(235, 'woocommerce_api_enabled', 'yes', 'yes'),
(239, 'woocommerce_db_version', '2.6.4', 'yes'),
(240, 'woocommerce_version', '2.6.4', 'yes'),
(241, 'recently_activated', 'a:1:{s:23:"slider-image/slider.php";i:1471865282;}', 'yes'),
(242, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(244, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(245, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_categories', 'a:3:{i:4;a:7:{s:5:"title";s:18:"Категории";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:0;s:18:"show_children_only";i:1;s:10:"hide_empty";i:0;}i:5;a:7:{s:5:"title";s:33:"Категории товаров";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:0;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_accesspress_store_product', 'a:3:{i:2;a:4:{s:13:"product_title";s:21:"Хиты продаж";s:12:"product_type";s:15:"feature_product";s:16:"product_category";s:0:"";s:14:"number_of_prod";i:8;}i:3;a:4:{s:13:"product_title";s:10:"Акция";s:12:"product_type";s:7:"on_sale";s:16:"product_category";s:0:"";s:14:"number_of_prod";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_accesspress_store_product2', 'a:2:{i:2;a:2:{s:17:"product_alignment";s:11:"right_align";s:16:"product_category";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(259, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(262, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(264, '_transient_timeout_geoip_127.0.0.1', '1470931629', 'no'),
(265, '_transient_geoip_127.0.0.1', '', 'no'),
(268, '_transient_timeout_geoip_178.151.72.118', '1470931630', 'no'),
(269, '_transient_geoip_178.151.72.118', 'UA', 'no'),
(270, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(271, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(272, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:20:"sheva-gitara@mail.ru";}', 'yes'),
(273, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(274, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(275, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:33:"Наложенный платеж";s:11:"description";s:69:"Оплата наличными при доставке заказа.";s:12:"instructions";s:69:"Оплата наличными при доставке заказа.";s:18:"enable_for_methods";a:3:{i:0;s:9:"flat_rate";i:1;s:13:"free_shipping";i:2;s:12:"local_pickup";}s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(276, 'woocommerce_allow_tracking', 'no', 'yes'),
(277, '_transient_shipping-transient-version', '1471425668', 'yes'),
(281, '_transient_product_query-transient-version', '1472220462', 'yes'),
(282, '_transient_product-transient-version', '1472220463', 'yes'),
(303, 'polylang', 'a:12:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:0;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:4:{i:0;s:7:"product";i:1;s:10:"shop_order";i:2;s:11:"shop_coupon";i:3;s:12:"shop_webhook";}s:10:"taxonomies";a:2:{i:0;s:11:"product_cat";i:1;s:11:"product_tag";}s:7:"domains";a:0:{}s:7:"version";s:5:"2.0.2";}', 'yes'),
(304, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(305, 'widget_polylang', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woof_widget', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:22:"additional_text_before";s:0:"";s:8:"redirect";s:0:"";s:11:"ajax_redraw";s:1:"0";}s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'woof_first_init', '1', 'yes'),
(329, 'woof_set_automatically', '0', 'yes'),
(330, 'woof_autosubmit', '1', 'yes'),
(331, 'woof_show_count', '1', 'yes'),
(332, 'woof_show_count_dynamic', '1', 'yes'),
(333, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(334, 'woof_try_ajax', '1', 'yes'),
(335, 'woof_checkboxes_slide', '1', 'yes'),
(336, 'woof_hide_red_top_panel', '0', 'yes'),
(337, 'woof_filter_btn_txt', '', 'yes'),
(338, 'woof_reset_btn_txt', '', 'yes'),
(339, 'woof_settings', 'a:40:{s:11:"items_order";s:0:"";s:8:"by_price";a:6:{s:4:"show";s:1:"1";s:11:"show_button";s:1:"0";s:10:"title_text";s:0:"";s:6:"ranges";s:0:"";s:17:"first_option_text";s:0:"";s:15:"ion_slider_step";s:1:"1";}s:8:"tax_type";a:3:{s:5:"brand";s:8:"checkbox";s:11:"product_cat";s:6:"select";s:11:"product_tag";s:5:"radio";}s:14:"excluded_terms";a:3:{s:5:"brand";s:0:"";s:11:"product_cat";s:0:"";s:11:"product_tag";s:0:"";}s:16:"tax_block_height";a:3:{s:5:"brand";s:1:"0";s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:16:"show_title_label";a:3:{s:5:"brand";s:1:"0";s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:18:"show_toggle_button";a:3:{s:5:"brand";s:1:"0";s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:13:"dispay_in_row";a:3:{s:5:"brand";s:1:"0";s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:16:"custom_tax_label";a:3:{s:5:"brand";s:0:"";s:11:"product_cat";s:0:"";s:11:"product_tag";s:0:"";}s:3:"tax";a:2:{s:5:"brand";s:1:"1";s:11:"product_cat";s:1:"1";}s:11:"icheck_skin";s:4:"none";s:12:"overlay_skin";s:7:"default";s:19:"overlay_skin_bg_img";s:0:"";s:18:"plainoverlay_color";s:0:"";s:25:"default_overlay_skin_word";s:0:"";s:10:"use_chosen";s:1:"1";s:17:"use_beauty_scroll";s:1:"0";s:15:"ion_slider_skin";s:8:"skinNice";s:25:"woof_auto_hide_button_img";s:0:"";s:25:"woof_auto_hide_button_txt";s:0:"";s:26:"woof_auto_subcats_plus_img";s:0:"";s:27:"woof_auto_subcats_minus_img";s:0:"";s:11:"toggle_type";s:4:"text";s:18:"toggle_opened_text";s:0:"";s:18:"toggle_closed_text";s:0:"";s:19:"toggle_opened_image";s:0:"";s:19:"toggle_closed_image";s:0:"";s:16:"custom_front_css";s:0:"";s:15:"custom_css_code";s:0:"";s:18:"js_after_ajax_done";s:0:"";s:12:"init_only_on";s:0:"";s:8:"per_page";s:2:"-1";s:14:"non_latin_mode";s:1:"1";s:25:"listen_catalog_visibility";s:1:"0";s:23:"disable_swoof_influence";s:1:"0";s:16:"cache_count_data";s:1:"0";s:11:"cache_terms";s:1:"0";s:19:"show_woof_edit_view";s:1:"1";s:22:"custom_extensions_path";s:0:"";s:20:"activated_extensions";s:0:"";}', 'yes'),
(367, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(369, 'rewrite_rules', 'a:218:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"brand/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?brand=$matches[1]&feed=$matches[2]";s:41:"brand/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?brand=$matches[1]&feed=$matches[2]";s:22:"brand/([^/]+)/embed/?$";s:38:"index.php?brand=$matches[1]&embed=true";s:34:"brand/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?brand=$matches[1]&paged=$matches[2]";s:16:"brand/([^/]+)/?$";s:27:"index.php?brand=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"homeless/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"homeless/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"homeless/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"homeless/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"homeless/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"homeless/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"homeless/([^/]+)/embed/?$";s:41:"index.php?homeless=$matches[1]&embed=true";s:29:"homeless/([^/]+)/trackback/?$";s:35:"index.php?homeless=$matches[1]&tb=1";s:37:"homeless/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?homeless=$matches[1]&paged=$matches[2]";s:44:"homeless/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?homeless=$matches[1]&cpage=$matches[2]";s:34:"homeless/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?homeless=$matches[1]&wc-api=$matches[3]";s:40:"homeless/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"homeless/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"homeless/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?homeless=$matches[1]&page=$matches[2]";s:25:"homeless/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"homeless/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"homeless/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"homeless/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"homeless/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"homeless/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=45&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(375, 'apss_share_settings', 'a:16:{s:13:"share_options";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:15:"social_icon_set";s:1:"1";s:15:"share_positions";s:13:"below_content";s:15:"social_networks";a:8:{s:8:"facebook";s:1:"1";s:7:"twitter";s:1:"1";s:11:"google-plus";s:1:"1";s:9:"pinterest";s:1:"1";s:8:"linkedin";s:1:"1";s:4:"digg";s:1:"1";s:5:"email";s:1:"0";s:5:"print";s:1:"0";}s:23:"disable_frontend_assets";s:1:"0";s:10:"share_text";s:0:"";s:16:"twitter_username";s:0:"";s:22:"counter_enable_options";s:1:"0";s:19:"twitter_counter_api";s:1:"1";s:28:"total_counter_enable_options";s:1:"0";s:12:"enable_cache";s:1:"1";s:12:"cache_period";s:2:"24";s:29:"apss_social_counts_transients";a:0:{}s:18:"dialog_box_options";s:1:"1";s:18:"apss_email_subject";s:30:"Please visit this link %%url%%";s:15:"apss_email_body";s:110:"Hey Buddy!, I found this information for you: "%%title%%". Here is the website link: %%permalink%%. Thank you.";}', 'yes'),
(376, 'apss_social_counts_transients', 'a:15:{i:0;s:35:"fb_297f87efa1686292cf5ce04d11ddba8b";i:1;s:40:"twitter_297f87efa1686292cf5ce04d11ddba8b";i:2;s:35:"gp_297f87efa1686292cf5ce04d11ddba8b";i:3;s:42:"pinterest_297f87efa1686292cf5ce04d11ddba8b";i:4;s:41:"linkedin_297f87efa1686292cf5ce04d11ddba8b";i:5;s:35:"fb_8a6009a6120ab6d573250dfd1656aae5";i:6;s:40:"twitter_8a6009a6120ab6d573250dfd1656aae5";i:7;s:35:"gp_8a6009a6120ab6d573250dfd1656aae5";i:8;s:42:"pinterest_8a6009a6120ab6d573250dfd1656aae5";i:9;s:41:"linkedin_8a6009a6120ab6d573250dfd1656aae5";i:10;s:35:"fb_768ab015c9665e477faf93aad37eddb2";i:11;s:40:"twitter_768ab015c9665e477faf93aad37eddb2";i:12;s:35:"gp_768ab015c9665e477faf93aad37eddb2";i:13;s:42:"pinterest_768ab015c9665e477faf93aad37eddb2";i:14;s:41:"linkedin_768ab015c9665e477faf93aad37eddb2";}', 'yes'),
(380, 'yit_recently_activated', 'a:0:{}', 'yes'),
(381, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1471529313', 'no'),
(382, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(383, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1471529313', 'no'),
(384, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(385, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(386, 'yith_wcwl_enabled', 'yes', 'yes'),
(387, 'yith_wcwl_wishlist_title', 'Мои закладки на  TestShop', 'yes'),
(388, 'yith_wcwl_wishlist_page_id', '19', 'yes'),
(389, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(390, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(391, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(392, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(393, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(394, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(395, 'yith_wcwl_add_to_cart_text', 'Добавить в корзину', 'yes'),
(396, 'yith_wcwl_price_show', 'yes', 'yes'),
(397, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(398, 'yith_wcwl_stock_show', 'yes', 'yes'),
(399, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(400, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(401, 'yith_wcwl_use_button', 'no', 'yes'),
(402, 'yith_wcwl_custom_css', '', 'yes'),
(403, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(404, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(405, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(406, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(407, 'yith_wcwl_share_fb', 'yes', 'yes'),
(408, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(409, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(410, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(411, 'yith_wcwl_share_email', 'yes', 'yes'),
(412, 'yith_wcwl_socials_title', 'Мои закладки на  TestShop', 'yes'),
(413, 'yith_wcwl_socials_text', '', 'yes'),
(414, 'yith_wcwl_socials_image_url', '', 'yes'),
(415, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(416, 'yith-wcwl-page-id', '19', 'yes'),
(417, 'yith_wcwl_version', '2.0.16', 'yes'),
(418, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(419, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:95:"http://lgm-solution/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(421, 'wc_glt_default', 'grid', 'yes'),
(424, '_transient_timeout_yith_wcwl_user_default_count_1', '1471940620', 'no'),
(425, '_transient_yith_wcwl_user_default_count_1', '0', 'no'),
(433, '_transient_timeout_fb_297f87efa1686292cf5ce04d11ddba8b', '1471506350', 'no'),
(434, '_transient_fb_297f87efa1686292cf5ce04d11ddba8b', '0', 'no'),
(435, '_transient_timeout_twitter_297f87efa1686292cf5ce04d11ddba8b', '1471506350', 'no'),
(436, '_transient_twitter_297f87efa1686292cf5ce04d11ddba8b', '0', 'no'),
(437, '_transient_timeout_gp_297f87efa1686292cf5ce04d11ddba8b', '1471506350', 'no'),
(438, '_transient_gp_297f87efa1686292cf5ce04d11ddba8b', '0', 'no'),
(439, '_transient_timeout_pinterest_297f87efa1686292cf5ce04d11ddba8b', '1471506351', 'no'),
(440, '_transient_pinterest_297f87efa1686292cf5ce04d11ddba8b', '0', 'no'),
(441, '_transient_timeout_linkedin_297f87efa1686292cf5ce04d11ddba8b', '1471506351', 'no'),
(442, '_transient_linkedin_297f87efa1686292cf5ce04d11ddba8b', '0', 'no'),
(443, '_transient_timeout_fb_8a6009a6120ab6d573250dfd1656aae5', '1471506361', 'no'),
(444, '_transient_fb_8a6009a6120ab6d573250dfd1656aae5', '0', 'no'),
(445, '_transient_timeout_twitter_8a6009a6120ab6d573250dfd1656aae5', '1471506361', 'no'),
(446, '_transient_twitter_8a6009a6120ab6d573250dfd1656aae5', '0', 'no'),
(447, '_transient_timeout_gp_8a6009a6120ab6d573250dfd1656aae5', '1471506362', 'no'),
(448, '_transient_gp_8a6009a6120ab6d573250dfd1656aae5', '0', 'no'),
(449, '_transient_timeout_pinterest_8a6009a6120ab6d573250dfd1656aae5', '1471506362', 'no'),
(450, '_transient_pinterest_8a6009a6120ab6d573250dfd1656aae5', '0', 'no'),
(451, '_transient_timeout_linkedin_8a6009a6120ab6d573250dfd1656aae5', '1471506363', 'no'),
(452, '_transient_linkedin_8a6009a6120ab6d573250dfd1656aae5', '0', 'no'),
(465, 'apsl-lite-settings', 'a:14:{s:16:"network_ordering";a:3:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:6:"google";}s:22:"apsl_facebook_settings";a:5:{s:20:"apsl_facebook_enable";s:1:"0";s:20:"apsl_facebook_app_id";s:0:"";s:24:"apsl_facebook_app_secret";s:0:"";s:24:"apsl_profile_image_width";s:2:"50";s:25:"apsl_profile_image_height";s:2:"50";}s:21:"apsl_twitter_settings";a:3:{s:19:"apsl_twitter_enable";s:1:"0";s:20:"apsl_twitter_api_key";s:0:"";s:23:"apsl_twitter_api_secret";s:0:"";}s:20:"apsl_google_settings";a:3:{s:18:"apsl_google_enable";s:1:"0";s:21:"apsl_google_client_id";s:0:"";s:25:"apsl_google_client_secret";s:0:"";}s:26:"apsl_enable_disable_plugin";s:3:"yes";s:20:"apsl_display_options";a:3:{i:0;s:10:"login_form";i:1;s:13:"register_form";i:2;s:12:"comment_form";}s:15:"apsl_icon_theme";s:1:"1";s:21:"apsl_title_text_field";s:15:"Social connect:";s:35:"apsl_custom_logout_redirect_options";s:4:"home";s:32:"apsl_custom_logout_redirect_link";s:0:"";s:34:"apsl_custom_login_redirect_options";s:4:"home";s:31:"apsl_custom_login_redirect_link";s:0:"";s:24:"apsl_user_avatar_options";s:7:"default";s:36:"apsl_send_email_notification_options";s:3:"yes";}', 'yes'),
(466, 'email-subscribers', '2.9', 'yes'),
(470, 'widget_apsl_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(471, 'widget_email-subscribers', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(474, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(478, '_transient_timeout_fb_768ab015c9665e477faf93aad37eddb2', '1471507423', 'no'),
(479, '_transient_fb_768ab015c9665e477faf93aad37eddb2', '0', 'no'),
(480, '_transient_timeout_twitter_768ab015c9665e477faf93aad37eddb2', '1471507423', 'no'),
(481, '_transient_twitter_768ab015c9665e477faf93aad37eddb2', '0', 'no'),
(482, '_transient_timeout_gp_768ab015c9665e477faf93aad37eddb2', '1471507424', 'no'),
(483, '_transient_gp_768ab015c9665e477faf93aad37eddb2', '0', 'no'),
(484, '_transient_timeout_pinterest_768ab015c9665e477faf93aad37eddb2', '1471507424', 'no'),
(485, '_transient_pinterest_768ab015c9665e477faf93aad37eddb2', '0', 'no'),
(486, '_transient_timeout_linkedin_768ab015c9665e477faf93aad37eddb2', '1471507425', 'no'),
(487, '_transient_linkedin_768ab015c9665e477faf93aad37eddb2', '0', 'no'),
(541, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(549, '_transient_timeout_wc_shipping_method_count_1_1471425668', '1474017675', 'no'),
(550, '_transient_wc_shipping_method_count_1_1471425668', '0', 'no'),
(551, '_transient_timeout_wc_shipping_method_count_0_1471425668', '1474017711', 'no'),
(552, '_transient_wc_shipping_method_count_0_1471425668', '0', 'no'),
(554, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=6";i:1;s:6:"/cart/";i:2;s:3:"p=7";i:3;s:10:"/checkout/";i:4;s:3:"p=8";i:5;s:12:"/my-account/";}', 'yes'),
(555, '_transient_orders-transient-version', '1471425877', 'yes'),
(557, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(596, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1471517587;s:7:"version";s:3:"4.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(598, 'SG_POPUP_VERSION', '2.36', 'yes'),
(600, 'SG_POPUP_SHORTCODE_1', '1', 'yes'),
(663, 'widget_homeless_widget', 'a:2:{i:3;a:1:{s:5:"title";s:22:"Они ищут дом";}s:12:"_multiwidget";i:1;}', 'yes'),
(700, '_transient_timeout_wc_related_39', '1471962326', 'no'),
(701, '_transient_wc_related_39', 'a:2:{i:0;s:1:"9";i:1;s:2:"56";}', 'no'),
(712, '_transient_timeout_wc_related_56', '1471936151', 'no'),
(713, '_transient_wc_related_56', 'a:2:{i:0;s:1:"9";i:1;s:2:"39";}', 'no'),
(714, '_transient_timeout_wc_addons_sections', '1472455626', 'no'),
(715, '_transient_wc_addons_sections', 'O:8:"stdClass":10:{s:8:"featured";O:8:"stdClass":2:{s:5:"title";s:8:"Featured";s:8:"endpoint";s:59:"https://d3t0oesq8995hv.cloudfront.net/section/featured.json";}s:7:"popular";O:8:"stdClass":2:{s:5:"title";s:7:"Popular";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/popular.json";}s:16:"payment_gateways";O:8:"stdClass":2:{s:5:"title";s:16:"Payment Gateways";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json";}s:16:"shipping_methods";O:8:"stdClass":2:{s:5:"title";s:16:"Shipping Methods";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json";}s:13:"import_export";O:8:"stdClass":2:{s:5:"title";s:13:"Import/Export";s:8:"endpoint";s:64:"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json";}s:10:"accounting";O:8:"stdClass":2:{s:5:"title";s:10:"Accounting";s:8:"endpoint";s:61:"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json";}s:9:"marketing";O:8:"stdClass":2:{s:5:"title";s:9:"Marketing";s:8:"endpoint";s:60:"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json";}s:7:"product";O:8:"stdClass":2:{s:5:"title";s:8:"Products";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/product.json";}s:4:"free";O:8:"stdClass":2:{s:5:"title";s:4:"Free";s:8:"endpoint";s:55:"https://d3t0oesq8995hv.cloudfront.net/section/free.json";}s:11:"third_party";O:8:"stdClass":2:{s:5:"title";s:11:"Third-party";s:8:"endpoint";s:62:"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json";}}', 'no'),
(716, '_transient_timeout_wc_addons_section_featured', '1472455627', 'no'),
(717, '_transient_wc_addons_section_featured', 'O:8:"stdClass":1:{s:8:"products";a:4:{i:0;O:8:"stdClass":5:{s:5:"title";s:27:"PayPal Powered by Braintree";s:5:"image";s:74:"https://www.woothemes.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png";s:7:"excerpt";s:196:"<span style="font-weight: 400;">With this FREE extension, accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree for WooCommerce</span>";s:4:"link";s:142:"https://www.woothemes.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:1;O:8:"stdClass":5:{s:5:"title";s:20:"WooCommerce Bookings";s:5:"image";s:0:"";s:7:"excerpt";s:108:"Sell your time or date based bookings! Perfect for those wanting to offer appointments, services or rentals.";s:4:"link";s:115:"https://www.woothemes.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;249.00";}i:2;O:8:"stdClass":5:{s:5:"title";s:15:"Product Add-Ons";s:5:"image";s:0:"";s:7:"excerpt";s:104:"Allow your customers to customize products by adding input boxes, dropdowns, file uploads or checkboxes.";s:4:"link";s:110:"https://www.woothemes.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:3;O:8:"stdClass":5:{s:5:"title";s:25:"WooCommerce Subscriptions";s:5:"image";s:64:"https://www.woothemes.com/wp-content/uploads/2012/09/woosubs.png";s:7:"excerpt";s:85:"WC Subscriptions makes it easy to create and manage products with recurring payments.";s:4:"link";s:120:"https://www.woothemes.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;199.00";}}}', 'no'),
(718, '_transient_timeout_wc_addons_section_product', '1472455643', 'no'),
(719, '_transient_wc_addons_section_product', 'O:8:"stdClass":1:{s:8:"products";a:24:{i:0;O:8:"stdClass":5:{s:5:"title";s:15:"Product Add-Ons";s:5:"image";s:0:"";s:7:"excerpt";s:104:"Allow your customers to customize products by adding input boxes, dropdowns, file uploads or checkboxes.";s:4:"link";s:110:"https://www.woothemes.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:1;O:8:"stdClass":5:{s:5:"title";s:15:"Dynamic Pricing";s:5:"image";s:0:"";s:7:"excerpt";s:48:"Bulk discounts, role-based pricing and much more";s:4:"link";s:110:"https://www.woothemes.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;129.00";}i:2;O:8:"stdClass":5:{s:5:"title";s:15:"Product Bundles";s:5:"image";s:0:"";s:7:"excerpt";s:149:"Create and offer highly configurable product bundles, kits and assemblies that consist of simple and variable items - both physical and downloadable.";s:4:"link";s:110:"https://www.woothemes.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:3;O:8:"stdClass":5:{s:5:"title";s:21:"Checkout Field Editor";s:5:"image";s:0:"";s:7:"excerpt";s:128:"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.";s:4:"link";s:128:"https://www.woothemes.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:4;O:8:"stdClass":5:{s:5:"title";s:29:"Gravity Forms Product Add-ons";s:5:"image";s:0:"";s:7:"excerpt";s:39:"Powerful product add-ons, Gravity style";s:4:"link";s:116:"https://www.woothemes.com/products/gravity-forms-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;99.00";}i:5;O:8:"stdClass":5:{s:5:"title";s:10:"TradeGecko";s:5:"image";s:71:"https://www.woothemes.com/wp-content/uploads/2015/09/tradegecko_new.jpg";s:7:"excerpt";s:216:"TradeGecko is a cloud-based inventory management platform for retailers and wholesalers that want effortless commerce. Enhance your business with advanced inventory and order management connected to your WooCommerce.";s:4:"link";s:117:"https://www.woothemes.com/products/woocommerce-tradegecko/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:6;O:8:"stdClass":5:{s:5:"title";s:22:"Groups for WooCommerce";s:5:"image";s:0:"";s:7:"excerpt";s:84:"Sell memberships using the free ''Groups'' plugin, Groups integration and WooCommerce.";s:4:"link";s:113:"https://www.woothemes.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:7;O:8:"stdClass":5:{s:5:"title";s:18:"Min/Max Quantities";s:5:"image";s:0:"";s:7:"excerpt";s:82:"Specify minimum and maximum allowed product quantities for orders to be completed.";s:4:"link";s:112:"https://www.woothemes.com/products/minmax-quantities/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;29.00";}i:8;O:8:"stdClass":5:{s:5:"title";s:29:"Variation Swatches and Photos";s:5:"image";s:0:"";s:7:"excerpt";s:73:"Show color and image swatches instead of dropdowns for variable products.";s:4:"link";s:124:"https://www.woothemes.com/products/variation-swatches-and-photos/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;99.00";}i:9;O:8:"stdClass":5:{s:5:"title";s:15:"Name your price";s:5:"image";s:0:"";s:7:"excerpt";s:90:"Allow customers to define the product price. Also useful for accepting user-set donations.";s:4:"link";s:110:"https://www.woothemes.com/products/name-your-price/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:10;O:8:"stdClass":5:{s:5:"title";s:18:"Composite Products";s:5:"image";s:0:"";s:7:"excerpt";s:104:"Create complex, configurable product kits and let your customers build their own, personalized versions.";s:4:"link";s:113:"https://www.woothemes.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:11;O:8:"stdClass":5:{s:5:"title";s:6:"Brands";s:5:"image";s:0:"";s:7:"excerpt";s:84:"Create, assign and list brands for products, and allow customers to filter by brand.";s:4:"link";s:101:"https://www.woothemes.com/products/brands/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;29.00";}i:12;O:8:"stdClass":5:{s:5:"title";s:15:"Product Vendors";s:5:"image";s:0:"";s:7:"excerpt";s:47:"Turn your store into a multi-vendor marketplace";s:4:"link";s:110:"https://www.woothemes.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:13;O:8:"stdClass":5:{s:5:"title";s:22:"Advanced Notifications";s:5:"image";s:0:"";s:7:"excerpt";s:96:"Easily setup "new order" and stock email notifications for multiple recipients of your choosing.";s:4:"link";s:117:"https://www.woothemes.com/products/advanced-notifications/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;29.00";}i:14;O:8:"stdClass":5:{s:5:"title";s:24:"WooCommerce Social Login";s:5:"image";s:90:"https://www.woothemes.com/wp-content/uploads/2014/08/wc_social-login_feat-img@2x.jpg?w=639";s:7:"excerpt";s:62:"Enable Social Login for Seamless Checkout and Account Creation";s:4:"link";s:119:"https://www.woothemes.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:15;O:8:"stdClass":5:{s:5:"title";s:23:"WooCommerce Memberships";s:5:"image";s:0:"";s:7:"excerpt";s:44:"Sell memberships via your WooCommerce store.";s:4:"link";s:118:"https://www.woothemes.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;149.00";}i:16;O:8:"stdClass":5:{s:5:"title";s:28:"WooCommerce Checkout Add-Ons";s:5:"image";s:0:"";s:7:"excerpt";s:59:"Easily Offer Free or Paid Add-ons and Services at Checkout.";s:4:"link";s:123:"https://www.woothemes.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:17;O:8:"stdClass":5:{s:5:"title";s:23:"Newsletter Subscription";s:5:"image";s:0:"";s:7:"excerpt";s:127:"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.";s:4:"link";s:118:"https://www.woothemes.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:18;O:8:"stdClass":5:{s:5:"title";s:13:"EU VAT Number";s:5:"image";s:0:"";s:7:"excerpt";s:85:"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.";s:4:"link";s:108:"https://www.woothemes.com/products/eu-vat-number/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;29.00";}i:19;O:8:"stdClass":5:{s:5:"title";s:22:"WooCommerce Pre-Orders";s:5:"image";s:0:"";s:7:"excerpt";s:60:"Allow customers to order products before they are available.";s:4:"link";s:117:"https://www.woothemes.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;129.00";}i:20;O:8:"stdClass":5:{s:5:"title";s:29:"WooCommerce One Page Checkout";s:5:"image";s:0:"";s:7:"excerpt";s:159:"Make it super fast for customers to purchase with your store. Create special pages where customers can choose products, checkout &amp; pay all on the one page!";s:4:"link";s:124:"https://www.woothemes.com/products/woocommerce-one-page-checkout/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:21;O:8:"stdClass":5:{s:5:"title";s:20:"WooCommerce Waitlist";s:5:"image";s:0:"";s:7:"excerpt";s:117:"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.";s:4:"link";s:115:"https://www.woothemes.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:22;O:8:"stdClass":5:{s:5:"title";s:28:"Measurement Price Calculator";s:5:"image";s:0:"";s:7:"excerpt";s:109:"Add a calculator to your product pages to calculate the product quantity required by square footage and more.";s:4:"link";s:123:"https://www.woothemes.com/products/measurement-price-calculator/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;129.00";}i:23;O:8:"stdClass":5:{s:5:"title";s:12:"Cart Notices";s:5:"image";s:0:"";s:7:"excerpt";s:73:"Display dynamic, actionable messages to your customers as they check out.";s:4:"link";s:107:"https://www.woothemes.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}}}', 'no'),
(728, 'acf_version', '4.4.8', 'yes'),
(732, 'brand_20_image', '58', 'no'),
(733, '_brand_20_image', 'field_57bab63c51a0c', 'no'),
(735, 'brand_21_image', '59', 'no'),
(736, '_brand_21_image', 'field_57bab63c51a0c', 'no'),
(737, 'brand_22_image', '60', 'no'),
(738, '_brand_22_image', 'field_57bab63c51a0c', 'no'),
(745, 'widget_huge_it_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(754, 'widget_brands_slider_widget', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(756, 'brand_23_image', '61', 'no'),
(757, '_brand_23_image', 'field_57bab63c51a0c', 'no'),
(759, 'brand_24_image', '62', 'no'),
(760, '_brand_24_image', 'field_57bab63c51a0c', 'no'),
(762, 'brand_25_image', '63', 'no'),
(763, '_brand_25_image', 'field_57bab63c51a0c', 'no'),
(765, 'brand_26_image', '64', 'no'),
(766, '_brand_26_image', 'field_57bab63c51a0c', 'no'),
(768, 'brand_27_image', '65', 'no'),
(769, '_brand_27_image', 'field_57bab63c51a0c', 'no'),
(771, 'brand_28_image', '66', 'no'),
(772, '_brand_28_image', 'field_57bab63c51a0c', 'no'),
(774, 'brand_29_image', '67', 'no'),
(775, '_brand_29_image', 'field_57bab63c51a0c', 'no'),
(776, 'brand_children', 'a:0:{}', 'yes'),
(840, '_transient_timeout_wc_related_40', '1472020991', 'no'),
(841, '_transient_wc_related_40', 'a:1:{i:0;s:2:"53";}', 'no'),
(844, '_transient_timeout_external_ip_address_127.0.0.1', '1472804979', 'no'),
(845, '_transient_external_ip_address_127.0.0.1', '82.117.251.21', 'no'),
(852, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1472218856;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(853, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1472218858;s:7:"checked";a:4:{s:17:"accesspress-store";s:5:"2.1.2";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.6.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.8.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(855, '_site_transient_timeout_browser_cad6a976fb71c45b22c81157d1534d3b', '1472805334', 'yes'),
(856, '_site_transient_browser_cad6a976fb71c45b22c81157d1534d3b', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(857, '_transient_timeout_wc_report_sales_by_date', '1472306914', 'no'),
(858, '_transient_wc_report_sales_by_date', 'a:7:{s:32:"4a35d3867c582e8e1181a50db34720b0";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2016-08-17 12:24:36";}}s:32:"a82e22a522c5d4effb4b2861502e87d2";a:0:{}s:32:"e086c0b06f5bd602e6a9bbfee930697c";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"5";s:9:"post_date";s:19:"2016-08-17 12:24:36";}}s:32:"e66c23e01e0e35f6bea0d4d456076161";N;s:32:"b9b1156a18ea4ad26937f12f94dc3dbf";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:3:"132";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2016-08-17 12:24:36";}}s:32:"bfcf398ff269f7dabc9b8bf1683ee137";a:0:{}s:32:"4edd7b338940c0a7be0bb496a8542ac7";a:0:{}}', 'no'),
(859, '_transient_timeout_wc_admin_report', '1472286935', 'no'),
(860, '_transient_wc_admin_report', 'a:2:{s:32:"34d2df6e01103f0efcb400076ae7ddf4";a:1:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:3:"132";s:9:"post_date";s:19:"2016-08-17 12:24:36";}}s:32:"e7dc1191756054de36c071d9255195c0";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:1:"9";s:15:"sparkline_value";s:1:"4";s:9:"post_date";s:19:"2016-08-17 12:24:36";}}}', 'no'),
(861, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1472243739', 'no'),
(862, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1472243740', 'no'),
(863, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1472200540', 'no'),
(864, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1472243743', 'no'),
(865, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1472243743', 'no'),
(866, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1472200543', 'no'),
(867, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1472243745', 'no'),
(868, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Aug 2016 08:14:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 26 Aug 2016 08:35:45 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Fri, 26 Aug 2016 08:49:08 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Fri, 26 Aug 2016 08:14:08 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20160816080700";}', 'no'),
(869, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1472243745', 'no'),
(870, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1472200545', 'no'),
(871, '_transient_timeout_plugin_slugs', '1472305375', 'no'),
(872, '_transient_plugin_slugs', 'a:15:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:39:"email-subscribers/email-subscribers.php";i:4;s:9:"hello.php";i:5;s:23:"loco-translate/loco.php";i:6;s:21:"polylang/polylang.php";i:7;s:31:"popup-builder/popup-builder.php";i:8;s:63:"accesspress-social-login-lite/accesspress-social-login-lite.php";i:9;s:53:"accesspress-social-share/accesspress-social-share.php";i:10;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:11;s:27:"woocommerce/woocommerce.php";i:12;s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";i:13;s:37:"woocommerce-products-filter/index.php";i:14;s:34:"yith-woocommerce-wishlist/init.php";}', 'no'),
(873, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1472243745', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(874, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/08/pepper/''>WordPress 4.6 “Pepper”</a> <span class="rss-date">16.08.2016</span><div class="rssSummary">Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://heropress.com/essays/minority-amongst-minorities/''>HeroPress: A Minority Amongst Minorities</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/static-site-generators-versus-wordpress/''>Post Status: Static site generators versus WordPress</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/wordpress-4-6-pepper/''>Post Status: WordPress 4.6, “Pepper”</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Популярный плагин:</span> Page Builder by SiteOrigin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=d03e4ce603&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Установить Page Builder by SiteOrigin">(Установить)</a></li></ul></div>', 'no'),
(896, 'product_cat_children', 'a:1:{i:10;a:2:{i:0;i:31;i:1;i:32;}}', 'yes'),
(917, '_transient_timeout_wc_related_53', '1472302941', 'no'),
(918, '_transient_wc_related_53', 'a:1:{i:0;s:2:"40";}', 'no'),
(919, '_transient_timeout_wc_related_55', '1472302943', 'no'),
(920, '_transient_wc_related_55', 'a:0:{}', 'no'),
(928, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1472229442', 'yes'),
(929, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5981";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3695";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3648";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3163";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2824";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2439";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2240";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2110";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2070";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2060";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2009";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1883";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1814";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1717";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1600";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1559";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1428";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1337";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1293";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1252";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1123";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1110";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1014";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1008";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"942";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"932";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"919";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"919";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"862";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"849";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"807";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"800";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"794";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"777";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"771";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"767";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"755";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"749";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"721";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"702";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"697";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"697";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"693";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"679";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"667";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"648";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"625";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"625";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"616";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"606";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"601";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"598";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"590";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"586";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"573";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"562";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"526";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"525";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"520";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"516";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"489";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"479";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"472";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"461";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"453";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"446";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"441";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"426";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"415";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"415";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"408";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"407";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"406";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"406";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"405";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"404";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"401";}}', 'yes'),
(930, '_site_transient_timeout_theme_roots', '1472220648', 'yes'),
(931, '_site_transient_theme_roots', 'a:4:{s:17:"accesspress-store";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(933, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1472218863;s:7:"checked";a:15:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.8";s:19:"akismet/akismet.php";s:6:"3.1.11";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.5";s:39:"email-subscribers/email-subscribers.php";s:5:"3.1.5";s:9:"hello.php";s:3:"1.6";s:23:"loco-translate/loco.php";s:5:"2.0.5";s:21:"polylang/polylang.php";s:5:"2.0.2";s:31:"popup-builder/popup-builder.php";s:5:"2.3.6";s:63:"accesspress-social-login-lite/accesspress-social-login-lite.php";s:5:"3.1.4";s:53:"accesspress-social-share/accesspress-social-share.php";s:5:"4.1.6";s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";s:5:"1.2.4";s:27:"woocommerce/woocommerce.php";s:5:"2.6.4";s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";s:5:"1.0.0";s:37:"woocommerce-products-filter/index.php";s:7:"1.1.5.1";s:34:"yith-woocommerce-wishlist/init.php";s:6:"2.0.16";}s:8:"response";a:3:{s:21:"polylang/polylang.php";O:8:"stdClass":8:{s:2:"id";s:5:"25780";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"2.0.3";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/polylang.2.0.3.zip";s:6:"tested";s:3:"4.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:31:"popup-builder/popup-builder.php";O:8:"stdClass":8:{s:2:"id";s:5:"60652";s:4:"slug";s:13:"popup-builder";s:6:"plugin";s:31:"popup-builder/popup-builder.php";s:11:"new_version";s:5:"2.3.7";s:3:"url";s:44:"https://wordpress.org/plugins/popup-builder/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/popup-builder.zip";s:6:"tested";s:3:"4.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:53:"accesspress-social-share/accesspress-social-share.php";O:8:"stdClass":8:{s:2:"id";s:5:"57136";s:4:"slug";s:24:"accesspress-social-share";s:6:"plugin";s:53:"accesspress-social-share/accesspress-social-share.php";s:11:"new_version";s:5:"4.1.8";s:3:"url";s:55:"https://wordpress.org/plugins/accesspress-social-share/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/accesspress-social-share.4.1.8.zip";s:6:"tested";s:3:"4.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.5";s:7:"updated";s:19:"2016-08-14 15:56:55";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.5/ru_RU.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"loco-translate";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"2.0.5";s:7:"updated";s:19:"2016-05-28 20:19:02";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/loco-translate/2.0.5/ru_RU.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:2:"uk";s:7:"version";s:5:"2.6.4";s:7:"updated";s:19:"2016-08-23 08:34:39";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/woocommerce/2.6.4/uk.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:12:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.8";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.8.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.zip";}s:39:"email-subscribers/email-subscribers.php";O:8:"stdClass":6:{s:2:"id";s:5:"50170";s:4:"slug";s:17:"email-subscribers";s:6:"plugin";s:39:"email-subscribers/email-subscribers.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:48:"https://wordpress.org/plugins/email-subscribers/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/email-subscribers.3.1.5.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:23:"loco-translate/loco.php";O:8:"stdClass":7:{s:2:"id";s:5:"42611";s:4:"slug";s:14:"loco-translate";s:6:"plugin";s:23:"loco-translate/loco.php";s:11:"new_version";s:5:"2.0.5";s:3:"url";s:45:"https://wordpress.org/plugins/loco-translate/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/loco-translate.2.0.5.zip";s:14:"upgrade_notice";s:34:"Various bug fixes and improvements";}s:63:"accesspress-social-login-lite/accesspress-social-login-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"61485";s:4:"slug";s:29:"accesspress-social-login-lite";s:6:"plugin";s:63:"accesspress-social-login-lite/accesspress-social-login-lite.php";s:11:"new_version";s:5:"3.1.4";s:3:"url";s:60:"https://wordpress.org/plugins/accesspress-social-login-lite/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/accesspress-social-login-lite.3.1.4.zip";}s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"64085";s:4:"slug";s:26:"ultimate-form-builder-lite";s:6:"plugin";s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:57:"https://wordpress.org/plugins/ultimate-form-builder-lite/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/ultimate-form-builder-lite.1.2.4.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.4";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.4.zip";}s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";O:8:"stdClass":6:{s:2:"id";s:5:"34181";s:4:"slug";s:28:"woocommerce-grid-list-toggle";s:6:"plugin";s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-grid-list-toggle/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/woocommerce-grid-list-toggle.1.0.0.zip";}s:37:"woocommerce-products-filter/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"55691";s:4:"slug";s:27:"woocommerce-products-filter";s:6:"plugin";s:37:"woocommerce-products-filter/index.php";s:11:"new_version";s:7:"1.1.5.1";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-products-filter/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip";}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"41084";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:6:"2.0.16";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.0.16.zip";}}}', 'yes'),
(934, 'loco_settings', 'a:3:{s:1:"c";s:18:"Loco_data_Settings";s:1:"v";i:0;s:1:"d";a:7:{s:7:"version";s:5:"2.0.5";s:8:"gen_hash";b:0;s:9:"use_fuzzy";b:1;s:11:"num_backups";i:1;s:9:"pot_alias";a:3:{i:0;s:10:"default.po";i:1;s:8:"en_US.po";i:2;s:5:"en.po";}s:10:"fs_persist";b:0;s:12:"max_php_size";s:4:"100K";}}', 'yes'),
(935, '_site_transient_timeout_available_translations', '1472229799', 'yes'),
(936, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-14 10:53:34";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-27 08:19:49";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-14 05:03:35";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 20:22:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:29:56";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 11:16:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 18:59:13";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-30 21:42:25";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 10:08:23";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-26 19:02:02";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 19:24:51";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 21:28:52";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:55:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:23:41";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 13:59:02";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:32:46";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 15:42:15";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:26:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 19:09:44";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 19:36:14";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-05 22:16:54";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-07 15:28:20";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 11:41:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 09:08:24";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 06:33:34";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 13:30:07";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-13 12:55:08";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 21:28:18";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 15:19:37";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 11:01:09";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 16:18:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 18:58:51";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 09:14:16";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-19 01:01:44";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-16 10:17:50";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 17:39:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 07:32:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-23 09:09:28";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-03 22:34:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:36:22";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.12/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-09 14:35:35";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 10:43:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 11:56:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-25 15:00:30";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 08:13:15";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.12/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 23:41:16";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 15:23:17";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:26:21";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 13:55:57";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-15 21:05:03";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 21:37:59";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 09:08:48";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-28 05:05:25";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 10:13:40";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 10:22:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 08:25:58";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-20 19:27:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(937, 'loco_recent', 'a:3:{s:1:"c";s:21:"Loco_data_RecentItems";s:1:"v";i:0;s:1:"d";a:1:{s:6:"bundle";a:2:{s:44:"plugin.woocommerce-products-filter/index.php";i:1472219293;s:23:"theme.accesspress-store";i:1472220570;}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(938, '_transient_loco_po_08a01fa555422130f78018db7dd39c1f', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:77:"plugins/woocommerce-products-filter/languages/woocommerce-products-filter.pot";s:5:"bytes";i:30897;s:5:"mtime";i:1472219219;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:287;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(944, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:50:"plugins/woocommerce/i18n/languages/woocommerce.pot";s:5:"bytes";i:551083;s:5:"mtime";i:1471334820;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4540;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(945, '_transient_loco_po_3ae5f021e192ac020955a412ce32a8e5', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:35:"languages/plugins/woocommerce-uk.po";s:5:"bytes";i:808466;s:5:"mtime";i:1471334820;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4540;s:1:"p";i:4540;s:1:"f";i:0;}}}', 'yes'),
(946, '_transient_loco_po_20d72aba9d671bf44e820c51e2fc8eb1', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:38:"languages/plugins/woocommerce-ru_RU.po";s:5:"bytes";i:809007;s:5:"mtime";i:1472218481;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:4535;s:1:"p";i:4535;s:1:"f";i:0;}}}', 'yes'),
(947, '_transient_loco_po_b92cd0eeeb3dee5a619e31b71543ab21', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:56:"themes/accesspress-store/languages/accesspress-store.pot";s:5:"bytes";i:49385;s:5:"mtime";i:1471510389;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:433;s:1:"p";i:0;s:1:"f";i:0;}}}', 'yes'),
(958, '_transient_is_multi_author', '0', 'yes'),
(959, '_transient_timeout_wc_term_counts', '1474812474', 'no'),
(960, '_transient_wc_term_counts', 'a:14:{i:30;s:0:"";i:13;s:0:"";i:10;s:1:"5";i:12;s:0:"";i:8;s:1:"2";i:16;s:0:"";i:15;s:0:"";i:9;s:0:"";i:17;s:0:"";i:14;s:0:"";i:6;s:1:"1";i:11;s:0:"";i:31;s:1:"2";i:32;s:0:"";}', 'no'),
(963, '_transient_timeout_wc_low_stock_count', '1474812514', 'no'),
(964, '_transient_wc_low_stock_count', '0', 'no'),
(965, '_transient_timeout_wc_outofstock_count', '1474812514', 'no'),
(966, '_transient_wc_outofstock_count', '0', 'no'),
(967, '_transient_loco_po_4a4ed8b08a28fc775c3dca67c816dbc8', 'a:3:{s:1:"c";s:21:"Loco_gettext_Metadata";s:1:"v";i:0;s:1:"d";a:5:{s:5:"rpath";s:48:"languages/loco/themes/accesspress-store-ru_RU.po";s:5:"bytes";i:47092;s:5:"mtime";i:1472220141;s:5:"valid";b:1;s:5:"stats";a:3:{s:1:"t";i:433;s:1:"p";i:4;s:1:"f";i:0;}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=580 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 9, '_edit_last', '1'),
(5, 9, '_edit_lock', '1471878045:1'),
(6, 9, '_visibility', 'visible'),
(7, 9, '_stock_status', 'instock'),
(8, 9, 'total_sales', '4'),
(9, 9, '_downloadable', 'no'),
(10, 9, '_virtual', 'no'),
(11, 9, '_purchase_note', ''),
(12, 9, '_featured', 'yes'),
(13, 9, '_weight', ''),
(14, 9, '_length', ''),
(15, 9, '_width', ''),
(16, 9, '_height', ''),
(17, 9, '_sku', ''),
(18, 9, '_product_attributes', 'a:0:{}'),
(19, 9, '_regular_price', '10'),
(20, 9, '_sale_price', '8'),
(21, 9, '_sale_price_dates_from', ''),
(22, 9, '_sale_price_dates_to', ''),
(23, 9, '_price', '8'),
(24, 9, '_sold_individually', ''),
(25, 9, '_manage_stock', 'no'),
(26, 9, '_backorders', 'no'),
(27, 9, '_stock', ''),
(28, 9, '_upsell_ids', 'a:0:{}'),
(29, 9, '_crosssell_ids', 'a:0:{}'),
(30, 9, '_product_version', '2.6.4'),
(31, 9, '_product_image_gallery', '38,37,36,35'),
(32, 9, '_wc_rating_count', 'a:0:{}'),
(33, 9, '_wc_review_count', '0'),
(34, 9, '_wc_average_rating', '0'),
(35, 6, '_edit_lock', '1470326908:1'),
(36, 6, '_edit_last', '1'),
(37, 6, '_wp_page_template', 'default'),
(38, 6, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(39, 12, '_menu_item_type', 'custom'),
(40, 12, '_menu_item_menu_item_parent', '0'),
(41, 12, '_menu_item_object_id', '12'),
(42, 12, '_menu_item_object', 'custom'),
(43, 12, '_menu_item_target', ''),
(44, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 12, '_menu_item_xfn', ''),
(46, 12, '_menu_item_url', 'http://testsite.local/'),
(47, 12, '_menu_item_orphaned', '1470328518'),
(48, 13, '_menu_item_type', 'post_type'),
(49, 13, '_menu_item_menu_item_parent', '0'),
(50, 13, '_menu_item_object_id', '7'),
(51, 13, '_menu_item_object', 'page'),
(52, 13, '_menu_item_target', ''),
(53, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 13, '_menu_item_xfn', ''),
(55, 13, '_menu_item_url', ''),
(56, 13, '_menu_item_orphaned', '1470328518'),
(57, 14, '_menu_item_type', 'post_type'),
(58, 14, '_menu_item_menu_item_parent', '0'),
(59, 14, '_menu_item_object_id', '8'),
(60, 14, '_menu_item_object', 'page'),
(61, 14, '_menu_item_target', ''),
(62, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 14, '_menu_item_xfn', ''),
(64, 14, '_menu_item_url', ''),
(65, 14, '_menu_item_orphaned', '1470328518'),
(66, 15, '_menu_item_type', 'post_type'),
(67, 15, '_menu_item_menu_item_parent', '0'),
(68, 15, '_menu_item_object_id', '5'),
(69, 15, '_menu_item_object', 'page'),
(70, 15, '_menu_item_target', ''),
(71, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 15, '_menu_item_xfn', ''),
(73, 15, '_menu_item_url', ''),
(74, 15, '_menu_item_orphaned', '1470328518'),
(75, 16, '_menu_item_type', 'post_type'),
(76, 16, '_menu_item_menu_item_parent', '0'),
(77, 16, '_menu_item_object_id', '6'),
(78, 16, '_menu_item_object', 'page'),
(79, 16, '_menu_item_target', ''),
(80, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 16, '_menu_item_xfn', ''),
(82, 16, '_menu_item_url', ''),
(83, 16, '_menu_item_orphaned', '1470328518'),
(84, 17, '_menu_item_type', 'post_type'),
(85, 17, '_menu_item_menu_item_parent', '0'),
(86, 17, '_menu_item_object_id', '2'),
(87, 17, '_menu_item_object', 'page'),
(88, 17, '_menu_item_target', ''),
(89, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 17, '_menu_item_xfn', ''),
(91, 17, '_menu_item_url', ''),
(92, 17, '_menu_item_orphaned', '1470328518'),
(93, 5, '_edit_lock', '1471336525:1'),
(94, 5, '_edit_last', '1'),
(95, 5, '_wp_page_template', 'default'),
(96, 5, 'apss_content_flag', '0'),
(97, 5, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(161, 28, '_edit_last', '1'),
(162, 28, '_wp_page_template', 'default'),
(163, 28, 'apss_content_flag', '0'),
(164, 28, 'accesspress_store_sidebar_layout', 'both-sidebar'),
(165, 28, '_edit_lock', '1471616680:1'),
(166, 30, '_edit_last', '1'),
(167, 30, '_wp_page_template', 'default'),
(168, 30, 'apss_content_flag', '0'),
(169, 30, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(170, 30, '_edit_lock', '1471421118:1'),
(171, 32, '_menu_item_type', 'post_type'),
(172, 32, '_menu_item_menu_item_parent', '0'),
(173, 32, '_menu_item_object_id', '30'),
(174, 32, '_menu_item_object', 'page'),
(175, 32, '_menu_item_target', ''),
(176, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 32, '_menu_item_xfn', ''),
(178, 32, '_menu_item_url', ''),
(180, 33, '_menu_item_type', 'post_type'),
(181, 33, '_menu_item_menu_item_parent', '0'),
(182, 33, '_menu_item_object_id', '28'),
(183, 33, '_menu_item_object', 'page'),
(184, 33, '_menu_item_target', ''),
(185, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 33, '_menu_item_xfn', ''),
(187, 33, '_menu_item_url', ''),
(189, 34, '_menu_item_type', 'post_type'),
(190, 34, '_menu_item_menu_item_parent', '0'),
(191, 34, '_menu_item_object_id', '8'),
(192, 34, '_menu_item_object', 'page'),
(193, 34, '_menu_item_target', ''),
(194, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 34, '_menu_item_xfn', ''),
(196, 34, '_menu_item_url', ''),
(198, 35, '_wp_attached_file', '2016/08/images.jpeg'),
(199, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:231;s:6:"height";i:218;s:4:"file";s:19:"2016/08/images.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"images-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"images-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 9, '_thumbnail_id', '35'),
(201, 36, '_wp_attached_file', '2016/08/minion.jpeg'),
(202, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:284;s:6:"height";i:177;s:4:"file";s:19:"2016/08/minion.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"minion-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"minion-180x177.jpeg";s:5:"width";i:180;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 37, '_wp_attached_file', '2016/08/erp-bg.jpg'),
(204, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:750;s:4:"file";s:18:"2016/08/erp-bg.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"erp-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"erp-bg-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"erp-bg-768x411.jpg";s:5:"width";i:768;s:6:"height";i:411;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"erp-bg-1024x549.jpg";s:5:"width";i:1024;s:6:"height";i:549;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"erp-bg-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"erp-bg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"erp-bg-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:25:"accesspress-prod-cat-size";a:4:{s:4:"file";s:18:"erp-bg-562x492.jpg";s:5:"width";i:562;s:6:"height";i:492;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:18:"erp-bg-380x252.jpg";s:5:"width";i:380;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:18:"erp-bg-760x300.jpg";s:5:"width";i:760;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"accesspress-slider";a:4:{s:4:"file";s:19:"erp-bg-1350x570.jpg";s:5:"width";i:1350;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 38, '_wp_attached_file', '2016/08/CHGk1-h4FWk.jpg'),
(206, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:23:"2016/08/CHGk1-h4FWk.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"accesspress-prod-cat-size";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-500x492.jpg";s:5:"width";i:500;s:6:"height";i:492;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-380x252.jpg";s:5:"width";i:380;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:23:"CHGk1-h4FWk-500x300.jpg";s:5:"width";i:500;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 38, '_edit_lock', '1471421816:1'),
(208, 39, '_edit_last', '1'),
(209, 39, '_edit_lock', '1471423212:1'),
(210, 39, '_thumbnail_id', '35'),
(211, 39, '_visibility', 'visible'),
(212, 39, '_stock_status', 'instock'),
(213, 39, 'total_sales', '0'),
(214, 39, '_downloadable', 'no'),
(215, 39, '_virtual', 'no'),
(216, 39, '_purchase_note', ''),
(217, 39, '_featured', 'yes'),
(218, 39, '_weight', ''),
(219, 39, '_length', ''),
(220, 39, '_width', ''),
(221, 39, '_height', ''),
(222, 39, '_sku', ''),
(223, 39, '_product_attributes', 'a:0:{}'),
(224, 39, '_regular_price', '20'),
(225, 39, '_sale_price', ''),
(226, 39, '_sale_price_dates_from', ''),
(227, 39, '_sale_price_dates_to', ''),
(228, 39, '_price', '20'),
(229, 39, '_sold_individually', ''),
(230, 39, '_manage_stock', 'no'),
(231, 39, '_backorders', 'no'),
(232, 39, '_stock', ''),
(233, 39, '_upsell_ids', 'a:0:{}'),
(234, 39, '_crosssell_ids', 'a:0:{}'),
(235, 39, '_product_version', '2.6.4'),
(236, 39, '_product_image_gallery', ''),
(237, 40, '_edit_last', '1'),
(238, 40, '_edit_lock', '1471875934:1'),
(239, 41, '_wp_attached_file', '2016/08/cat.jpg'),
(240, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:15:"2016/08/cat.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"cat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"cat-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"cat-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"cat-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"cat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"cat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"cat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:25:"accesspress-prod-cat-size";a:4:{s:4:"file";s:15:"cat-562x492.jpg";s:5:"width";i:562;s:6:"height";i:492;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:15:"cat-380x252.jpg";s:5:"width";i:380;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:15:"cat-760x300.jpg";s:5:"width";i:760;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"accesspress-slider";a:4:{s:4:"file";s:16:"cat-1350x570.jpg";s:5:"width";i:1350;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(241, 40, '_thumbnail_id', '41'),
(242, 40, '_visibility', 'visible'),
(243, 40, '_stock_status', 'instock'),
(244, 40, 'total_sales', '1'),
(245, 40, '_downloadable', 'no'),
(246, 40, '_virtual', 'no'),
(247, 40, '_purchase_note', ''),
(248, 40, '_featured', 'yes'),
(249, 40, '_weight', ''),
(250, 40, '_length', ''),
(251, 40, '_width', ''),
(252, 40, '_height', ''),
(253, 40, '_sku', ''),
(254, 40, '_product_attributes', 'a:0:{}'),
(255, 40, '_regular_price', '100'),
(256, 40, '_sale_price', ''),
(257, 40, '_sale_price_dates_from', ''),
(258, 40, '_sale_price_dates_to', ''),
(259, 40, '_price', '100'),
(260, 40, '_sold_individually', ''),
(261, 40, '_manage_stock', 'no'),
(262, 40, '_backorders', 'no'),
(263, 40, '_stock', ''),
(264, 40, '_upsell_ids', 'a:0:{}'),
(265, 40, '_crosssell_ids', 'a:0:{}'),
(266, 40, '_product_version', '2.6.4'),
(267, 40, '_product_image_gallery', ''),
(268, 42, '_order_key', 'wc_order_57b42d5453906'),
(269, 42, '_order_currency', 'UAH'),
(270, 42, '_prices_include_tax', 'no'),
(271, 42, '_customer_ip_address', '127.0.0.1'),
(272, 42, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0'),
(273, 42, '_customer_user', '1'),
(274, 42, '_created_via', 'checkout'),
(275, 42, '_cart_hash', 'ac0310520821797eb06cee89c6112534'),
(276, 42, '_order_version', '2.6.4'),
(277, 42, '_billing_first_name', 'Дмитрий'),
(278, 42, '_billing_last_name', 'Михеев'),
(279, 42, '_billing_company', ''),
(280, 42, '_billing_email', 'sheva-gitara@mail.ru'),
(281, 42, '_billing_phone', '0632242204'),
(282, 42, '_billing_country', 'UA'),
(283, 42, '_billing_address_1', 'Сумская, 1'),
(284, 42, '_billing_address_2', ''),
(285, 42, '_billing_city', 'Харьков'),
(286, 42, '_billing_state', 'Харьковская'),
(287, 42, '_billing_postcode', '61096'),
(288, 42, '_shipping_first_name', 'Дмитрий'),
(289, 42, '_shipping_last_name', 'Михеев'),
(290, 42, '_shipping_company', ''),
(291, 42, '_shipping_country', 'UA'),
(292, 42, '_shipping_address_1', 'Сумская, 1'),
(293, 42, '_shipping_address_2', ''),
(294, 42, '_shipping_city', 'Харьков'),
(295, 42, '_shipping_state', 'Харьковская'),
(296, 42, '_shipping_postcode', '61096'),
(297, 42, '_payment_method', 'cod'),
(298, 42, '_payment_method_title', 'Наложенный платеж'),
(299, 42, '_order_shipping', ''),
(300, 42, '_cart_discount', '0'),
(301, 42, '_cart_discount_tax', '0'),
(302, 42, '_order_tax', '0'),
(303, 42, '_order_shipping_tax', '0'),
(304, 42, '_order_total', '132.00'),
(305, 42, '_download_permissions_granted', '1'),
(306, 42, '_recorded_sales', 'yes'),
(307, 42, '_order_stock_reduced', '1'),
(308, 39, '_wc_rating_count', 'a:0:{}'),
(309, 39, '_wc_review_count', '0'),
(310, 39, '_wc_average_rating', '0'),
(311, 43, '_form', '<label> Ваше Имя (*)\n    [text* your-name size:20] </label>\n\n<label> Номер телефона (*)\n    [tel* tel size:20] </label>\n\n\n[submit "Заказать"]'),
(312, 43, '_mail', 'a:8:{s:7:"subject";s:29:"Заказать звонок";s:6:"sender";s:36:"[your-name] <wordpress@lgm-solution>";s:4:"body";s:210:"From: [your-name] <wordpress@lgm-solution>\nSubject: Заказать звонок\n\nMessage Body:\nНомер телефона: [tel]\n\n--\nThis e-mail was sent from a contact form on TestShop (http://lgm-solution)";s:9:"recipient";s:20:"sheva-gitara@mail.ru";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(313, 43, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"TestShop "[your-subject]"";s:6:"sender";s:33:"TestShop <wordpress@lgm-solution>";s:4:"body";s:107:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TestShop (http://lgm-solution)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:30:"Reply-To: sheva-gitara@mail.ru";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(314, 43, '_messages', 'a:23:{s:12:"mail_sent_ok";s:76:"Спасибо. Мы перезвоним в кратчайшие сроки";s:12:"mail_sent_ng";s:29:"Ошибка отправки";s:16:"validation_error";s:130:"ОДно или несколько полей содержат ошибки. Пожалуйста проверьте ещё раз";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:33:"Обязательное поле";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:35:"Некорректный номер";}'),
(315, 43, '_additional_settings', ''),
(316, 43, '_locale', 'ru_RU'),
(333, 43, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:78:"http://contactform7.com/configuration-errors/#mail.sender:error_invalid_syntax";}}}}'),
(334, 45, '_edit_last', '1'),
(335, 45, '_edit_lock', '1472201486:1'),
(336, 45, '_wp_page_template', 'template-home.php'),
(337, 45, 'accesspress_store_sidebar_layout', 'left-sidebar'),
(338, 47, '_wp_attached_file', '2016/08/homyak.jpg'),
(339, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:478;s:4:"file";s:18:"2016/08/homyak.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"homyak-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"homyak-300x239.jpg";s:5:"width";i:300;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"homyak-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"homyak-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"homyak-600x478.jpg";s:5:"width";i:600;s:6:"height";i:478;s:9:"mime-type";s:10:"image/jpeg";}s:25:"accesspress-prod-cat-size";a:4:{s:4:"file";s:18:"homyak-562x478.jpg";s:5:"width";i:562;s:6:"height";i:478;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:18:"homyak-380x252.jpg";s:5:"width";i:380;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:18:"homyak-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(340, 48, '_edit_last', '1'),
(341, 48, '_edit_lock', '1471615460:1'),
(342, 49, '_wp_attached_file', '2016/08/Серый-ветер.jpg'),
(343, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:248;s:6:"height";i:382;s:4:"file";s:33:"2016/08/Серый-ветер.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Серый-ветер-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Серый-ветер-195x300.jpg";s:5:"width";i:195;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Серый-ветер-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"Серый-ветер-248x300.jpg";s:5:"width";i:248;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:33:"Серый-ветер-248x252.jpg";s:5:"width";i:248;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:33:"Серый-ветер-248x300.jpg";s:5:"width";i:248;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(344, 48, '_thumbnail_id', '49'),
(345, 50, '_edit_last', '1'),
(346, 50, '_edit_lock', '1471618719:1'),
(347, 51, '_wp_attached_file', '2016/08/призрак.jpg'),
(348, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:440;s:6:"height";i:604;s:4:"file";s:26:"2016/08/призрак.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"призрак-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"призрак-219x300.jpg";s:5:"width";i:219;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"призрак-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"призрак-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"призрак-440x600.jpg";s:5:"width";i:440;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:25:"accesspress-prod-cat-size";a:4:{s:4:"file";s:26:"призрак-440x492.jpg";s:5:"width";i:440;s:6:"height";i:492;s:9:"mime-type";s:10:"image/jpeg";}s:29:"accesspress-service-thumbnail";a:4:{s:4:"file";s:26:"призрак-380x252.jpg";s:5:"width";i:380;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:30:"accesspress-blog-big-thumbnail";a:4:{s:4:"file";s:26:"призрак-440x300.jpg";s:5:"width";i:440;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"accesspress-slider";a:4:{s:4:"file";s:26:"призрак-440x570.jpg";s:5:"width";i:440;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 50, '_thumbnail_id', '51'),
(350, 50, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b7%d1%80%d0%b0%d0%ba'),
(351, 52, '_menu_item_type', 'post_type'),
(352, 52, '_menu_item_menu_item_parent', '0'),
(353, 52, '_menu_item_object_id', '45'),
(354, 52, '_menu_item_object', 'page'),
(355, 52, '_menu_item_target', ''),
(356, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 52, '_menu_item_xfn', ''),
(358, 52, '_menu_item_url', ''),
(360, 53, '_edit_last', '1'),
(361, 53, '_edit_lock', '1471857757:1'),
(362, 53, '_visibility', 'visible'),
(363, 53, '_stock_status', 'instock'),
(364, 53, 'total_sales', '0'),
(365, 53, '_downloadable', 'no'),
(366, 53, '_virtual', 'no'),
(367, 53, '_purchase_note', ''),
(368, 53, '_featured', 'yes'),
(369, 53, '_weight', ''),
(370, 53, '_length', ''),
(371, 53, '_width', ''),
(372, 53, '_height', ''),
(373, 53, '_sku', ''),
(374, 53, '_product_attributes', 'a:0:{}'),
(375, 53, '_regular_price', '10'),
(376, 53, '_sale_price', ''),
(377, 53, '_sale_price_dates_from', ''),
(378, 53, '_sale_price_dates_to', ''),
(379, 53, '_price', '10'),
(380, 53, '_sold_individually', ''),
(381, 53, '_manage_stock', 'no'),
(382, 53, '_backorders', 'no'),
(383, 53, '_stock', ''),
(384, 53, '_upsell_ids', 'a:0:{}'),
(385, 53, '_crosssell_ids', 'a:0:{}'),
(386, 53, '_product_version', '2.6.4'),
(387, 53, '_product_image_gallery', ''),
(388, 55, '_edit_last', '1'),
(389, 55, '_edit_lock', '1471849523:1'),
(390, 55, '_visibility', 'visible'),
(391, 55, '_stock_status', 'instock'),
(392, 55, 'total_sales', '0'),
(393, 55, '_downloadable', 'no'),
(394, 55, '_virtual', 'no'),
(395, 55, '_purchase_note', ''),
(396, 55, '_featured', 'yes'),
(397, 55, '_weight', ''),
(398, 55, '_length', ''),
(399, 55, '_width', ''),
(400, 55, '_height', ''),
(401, 55, '_sku', ''),
(402, 55, '_product_attributes', 'a:0:{}'),
(403, 55, '_regular_price', '10'),
(404, 55, '_sale_price', ''),
(405, 55, '_sale_price_dates_from', ''),
(406, 55, '_sale_price_dates_to', ''),
(407, 55, '_price', '10'),
(408, 55, '_sold_individually', ''),
(409, 55, '_manage_stock', 'no'),
(410, 55, '_backorders', 'no'),
(411, 55, '_stock', ''),
(412, 55, '_upsell_ids', 'a:0:{}'),
(413, 55, '_crosssell_ids', 'a:0:{}'),
(414, 55, '_product_version', '2.6.4'),
(415, 55, '_product_image_gallery', ''),
(416, 56, '_edit_last', '1'),
(417, 56, '_edit_lock', '1471849566:1'),
(418, 56, '_visibility', 'visible'),
(419, 56, '_stock_status', 'instock'),
(420, 56, 'total_sales', '0'),
(421, 56, '_downloadable', 'no'),
(422, 56, '_virtual', 'no'),
(423, 56, '_purchase_note', ''),
(424, 56, '_featured', 'no'),
(425, 56, '_weight', ''),
(426, 56, '_length', ''),
(427, 56, '_width', ''),
(428, 56, '_height', ''),
(429, 56, '_sku', ''),
(430, 56, '_product_attributes', 'a:0:{}'),
(431, 56, '_regular_price', '5'),
(432, 56, '_sale_price', ''),
(433, 56, '_sale_price_dates_from', ''),
(434, 56, '_sale_price_dates_to', ''),
(435, 56, '_price', '5'),
(436, 56, '_sold_individually', ''),
(437, 56, '_manage_stock', 'no'),
(438, 56, '_backorders', 'no'),
(439, 56, '_stock', ''),
(440, 56, '_upsell_ids', 'a:0:{}'),
(441, 56, '_crosssell_ids', 'a:0:{}'),
(442, 56, '_product_version', '2.6.4'),
(443, 56, '_product_image_gallery', ''),
(444, 55, '_wc_rating_count', 'a:0:{}'),
(445, 55, '_wc_review_count', '0'),
(446, 55, '_wc_average_rating', '0'),
(447, 56, '_wc_rating_count', 'a:0:{}'),
(448, 56, '_wc_review_count', '0'),
(449, 56, '_wc_average_rating', '0'),
(450, 57, '_edit_last', '1'),
(451, 57, 'field_57bab63c51a0c', 'a:11:{s:3:"key";s:19:"field_57bab63c51a0c";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(452, 57, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:5:"brand";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(453, 57, 'position', 'normal'),
(454, 57, 'layout', 'no_box'),
(455, 57, 'hide_on_screen', ''),
(456, 57, '_edit_lock', '1471854054:1'),
(457, 58, '_wp_attached_file', '2016/08/вискас.jpeg'),
(458, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:129;s:4:"file";s:25:"2016/08/вискас.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"вискас-150x129.jpeg";s:5:"width";i:150;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"вискас-180x129.jpeg";s:5:"width";i:180;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(459, 59, '_wp_attached_file', '2016/08/китикет.jpeg'),
(460, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:296;s:6:"height";i:170;s:4:"file";s:27:"2016/08/китикет.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"китикет-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"китикет-180x170.jpeg";s:5:"width";i:180;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(461, 60, '_wp_attached_file', '2016/08/чаппи.jpg'),
(462, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:125;s:4:"file";s:22:"2016/08/чаппи.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"чаппи-150x125.jpg";s:5:"width";i:150;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"чаппи-180x125.jpg";s:5:"width";i:180;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(463, 61, '_wp_attached_file', '2016/08/foxi.jpg'),
(464, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:96;s:4:"file";s:16:"2016/08/foxi.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(465, 62, '_wp_attached_file', '2016/08/aquael-logo.gif'),
(466, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2016/08/aquael-logo.gif";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(467, 63, '_wp_attached_file', '2016/08/tetra-logo.jpg'),
(468, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:58;s:4:"file";s:22:"2016/08/tetra-logo.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(469, 64, '_wp_attached_file', '2016/08/pc113_logo_kippy.jpg'),
(470, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:28:"2016/08/pc113_logo_kippy.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(471, 65, '_wp_attached_file', '2016/08/Before-logo.png'),
(472, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:73;s:4:"file";s:23:"2016/08/Before-logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(473, 66, '_wp_attached_file', '2016/08/Аквариус.jpeg'),
(474, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:80;s:4:"file";s:29:"2016/08/Аквариус.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(475, 67, '_wp_attached_file', '2016/08/Logo_Canina.jpg'),
(476, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:103;s:4:"file";s:23:"2016/08/Logo_Canina.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(477, 68, '_edit_last', '1'),
(478, 68, '_edit_lock', '1471871877:1'),
(479, 68, '_wp_page_template', 'default'),
(480, 68, 'accesspress_store_sidebar_layout', 'both-sidebar'),
(481, 70, '_menu_item_type', 'post_type'),
(482, 70, '_menu_item_menu_item_parent', '0'),
(483, 70, '_menu_item_object_id', '68'),
(484, 70, '_menu_item_object', 'page'),
(485, 70, '_menu_item_target', ''),
(486, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(487, 70, '_menu_item_xfn', ''),
(488, 70, '_menu_item_url', ''),
(490, 40, '_wc_rating_count', 'a:0:{}'),
(491, 40, '_wc_review_count', '0'),
(492, 40, '_wc_average_rating', '0'),
(493, 53, '_wc_rating_count', 'a:0:{}'),
(494, 53, '_wc_review_count', '0'),
(495, 53, '_wc_average_rating', '0'),
(496, 73, '_edit_last', '1'),
(497, 73, '_edit_lock', '1472202776:1'),
(498, 73, '_thumbnail_id', '41'),
(499, 74, '_edit_last', '1'),
(500, 74, '_edit_lock', '1472202762:1'),
(501, 74, '_thumbnail_id', '38'),
(502, 75, '_edit_last', '1'),
(503, 75, '_edit_lock', '1472202773:1'),
(504, 75, '_thumbnail_id', '36'),
(505, 76, '_thumbnail_id', '47'),
(506, 76, '_edit_last', '1'),
(507, 76, '_edit_lock', '1472202804:1'),
(508, 77, '_edit_last', '1'),
(509, 77, '_edit_lock', '1472202843:1'),
(510, 77, '_thumbnail_id', '36'),
(511, 78, '_edit_last', '1'),
(512, 78, '_edit_lock', '1472202873:1'),
(513, 78, '_thumbnail_id', '47'),
(514, 79, '_edit_last', '1'),
(515, 79, '_edit_lock', '1472202902:1'),
(516, 79, '_thumbnail_id', '41'),
(517, 80, '_thumbnail_id', '41'),
(518, 80, '_edit_last', '1'),
(519, 80, '_edit_lock', '1472203222:1'),
(520, 7, '_edit_lock', '1472219361:1'),
(521, 7, '_edit_last', '1'),
(522, 7, '_wp_page_template', 'default'),
(523, 7, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(524, 82, '_edit_last', '1'),
(525, 82, '_edit_lock', '1472220294:1'),
(526, 82, '_visibility', 'visible'),
(527, 82, '_stock_status', 'instock'),
(528, 82, 'total_sales', '0'),
(529, 82, '_downloadable', 'no'),
(530, 82, '_virtual', 'no'),
(531, 82, '_purchase_note', ''),
(532, 82, '_featured', 'no'),
(533, 82, '_weight', ''),
(534, 82, '_length', ''),
(535, 82, '_width', ''),
(536, 82, '_height', ''),
(537, 82, '_sku', ''),
(538, 82, '_product_attributes', 'a:0:{}'),
(539, 82, '_regular_price', '20'),
(540, 82, '_sale_price', ''),
(541, 82, '_sale_price_dates_from', ''),
(542, 82, '_sale_price_dates_to', ''),
(543, 82, '_price', '20'),
(544, 82, '_sold_individually', ''),
(545, 82, '_manage_stock', 'no'),
(546, 82, '_backorders', 'no'),
(547, 82, '_stock', ''),
(548, 82, '_upsell_ids', 'a:0:{}'),
(549, 82, '_crosssell_ids', 'a:0:{}'),
(550, 82, '_product_version', '2.6.4'),
(551, 82, '_product_image_gallery', ''),
(552, 83, '_edit_last', '1'),
(553, 83, '_edit_lock', '1472220429:1'),
(554, 83, '_visibility', 'visible'),
(555, 83, '_stock_status', 'instock'),
(556, 83, 'total_sales', '0'),
(557, 83, '_downloadable', 'no'),
(558, 83, '_virtual', 'no'),
(559, 83, '_purchase_note', ''),
(560, 83, '_featured', 'no'),
(561, 83, '_weight', ''),
(562, 83, '_length', ''),
(563, 83, '_width', ''),
(564, 83, '_height', ''),
(565, 83, '_sku', ''),
(566, 83, '_product_attributes', 'a:0:{}'),
(567, 83, '_regular_price', '25'),
(568, 83, '_sale_price', ''),
(569, 83, '_sale_price_dates_from', ''),
(570, 83, '_sale_price_dates_to', ''),
(571, 83, '_price', '25'),
(572, 83, '_sold_individually', ''),
(573, 83, '_manage_stock', 'no'),
(574, 83, '_backorders', 'no'),
(575, 83, '_stock', ''),
(576, 83, '_upsell_ids', 'a:0:{}'),
(577, 83, '_crosssell_ids', 'a:0:{}'),
(578, 83, '_product_version', '2.6.4'),
(579, 83, '_product_image_gallery', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-08-04 19:04:35', '2016-08-04 16:04:35', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2016-08-04 19:04:35', '2016-08-04 16:04:35', '', 0, 'http://testsite.local/?p=1', 0, 'post', '', 1),
(2, 1, '2016-08-04 19:04:35', '2016-08-04 16:04:35', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://testsite.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-08-04 19:04:35', '2016-08-04 16:04:35', '', 0, 'http://testsite.local/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-08-04 19:07:08', '2016-08-04 16:07:08', '', 'Магазин для животных', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-08-16 11:29:03', '2016-08-16 08:29:03', '', 0, 'http://testsite.local/shop/', 0, 'page', '', 0),
(6, 1, '2016-08-04 19:07:08', '2016-08-04 16:07:08', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-08-04 19:10:50', '2016-08-04 16:10:50', '', 0, 'http://testsite.local/cart/', 0, 'page', '', 0),
(7, 1, '2016-08-04 19:07:08', '2016-08-04 16:07:08', '[woocommerce_checkout]', 'Информация о заказе', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-08-26 16:50:23', '2016-08-26 13:50:23', '', 0, 'http://testsite.local/checkout/', 0, 'page', '', 0),
(8, 1, '2016-08-04 19:07:08', '2016-08-04 16:07:08', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-08-04 19:07:08', '2016-08-04 16:07:08', '', 0, 'http://testsite.local/my-account/', 0, 'page', '', 0),
(9, 1, '2016-08-04 19:09:19', '2016-08-04 16:09:19', 'Описание продукта', 'тест продукт', 'короткое описание продукта', 'publish', 'open', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82-%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82', '', '', '2016-08-22 17:51:33', '2016-08-22 14:51:33', '', 0, 'http://testsite.local/?post_type=product&#038;p=9', 0, 'product', '', 0),
(10, 1, '2016-08-04 19:10:50', '2016-08-04 16:10:50', '[woocommerce_cart]', 'Корзина', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-08-04 19:10:50', '2016-08-04 16:10:50', '', 6, 'http://testsite.local/2016/08/04/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-08-04 19:35:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-08-04 19:35:18', '0000-00-00 00:00:00', '', 0, 'http://testsite.local/?p=17', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-08-16 11:21:54', '2016-08-16 08:21:54', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2016-08-16 11:21:54', '2016-08-16 08:21:54', '', 0, 'http://lgm-solution/wishlist/', 0, 'page', '', 0),
(20, 1, '2016-08-16 11:29:03', '2016-08-16 08:29:03', '', 'Магазин для животных', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-16 11:29:03', '2016-08-16 08:29:03', '', 5, 'http://lgm-solution/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-08-17 10:59:54', '2016-08-17 07:59:54', '', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2016-08-19 16:32:02', '2016-08-19 13:32:02', '', 0, 'http://lgm-solution/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-08-17 10:59:54', '2016-08-17 07:59:54', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-08-17 10:59:54', '2016-08-17 07:59:54', '', 28, 'http://lgm-solution/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-08-17 11:00:35', '2016-08-17 08:00:35', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d0%b8-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0', '', '', '2016-08-17 11:00:35', '2016-08-17 08:00:35', '', 0, 'http://lgm-solution/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-08-17 11:00:35', '2016-08-17 08:00:35', '', 'Оплата и доставка', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-17 11:00:35', '2016-08-17 08:00:35', '', 30, 'http://lgm-solution/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-08-17 11:01:08', '2016-08-17 08:01:08', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-08-22 16:20:37', '2016-08-22 13:20:37', '', 0, 'http://lgm-solution/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2016-08-17 11:01:08', '2016-08-17 08:01:08', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-08-22 16:20:37', '2016-08-22 13:20:37', '', 0, 'http://lgm-solution/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2016-08-17 11:02:56', '2016-08-17 08:02:56', '', 'Кабинет покупателя', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%b1%d0%b8%d0%bd%d0%b5%d1%82-%d0%bf%d0%be%d0%ba%d1%83%d0%bf%d0%b0%d1%82%d0%b5%d0%bb%d1%8f', '', '', '2016-08-22 16:20:37', '2016-08-22 13:20:37', '', 0, 'http://lgm-solution/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2016-08-17 11:15:52', '2016-08-17 08:15:52', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2016-08-17 11:15:52', '2016-08-17 08:15:52', '', 9, 'http://lgm-solution/wp-content/uploads/2016/08/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-08-17 11:16:04', '2016-08-17 08:16:04', '', 'minion', '', 'inherit', 'open', 'closed', '', 'minion', '', '', '2016-08-17 11:16:04', '2016-08-17 08:16:04', '', 9, 'http://lgm-solution/wp-content/uploads/2016/08/minion.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-08-17 11:16:21', '2016-08-17 08:16:21', '', 'erp-bg', '', 'inherit', 'open', 'closed', '', 'erp-bg', '', '', '2016-08-17 11:16:21', '2016-08-17 08:16:21', '', 9, 'http://lgm-solution/wp-content/uploads/2016/08/erp-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-08-17 11:18:24', '2016-08-17 08:18:24', '', 'CHGk1-h4FWk', '', 'inherit', 'open', 'closed', '', 'chgk1-h4fwk', '', '', '2016-08-17 11:18:24', '2016-08-17 08:18:24', '', 9, 'http://lgm-solution/wp-content/uploads/2016/08/CHGk1-h4FWk.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-08-17 11:40:04', '2016-08-17 08:40:04', 'Крутой хомяк. Мало ест, много бегает, корм для хомяка в подарок', 'Хомяк', 'Крутой хомяк', 'publish', 'open', 'closed', '', '%d1%85%d0%be%d0%bc%d1%8f%d0%ba', '', '', '2016-08-17 11:40:04', '2016-08-17 08:40:04', '', 0, 'http://lgm-solution/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2016-08-17 11:42:36', '2016-08-17 08:42:36', 'Кот пушистый, много ест, много спит. Пачка вискас в подарок', 'Кот пушистый', 'Кот пушистый', 'publish', 'open', 'closed', '', '%d0%ba%d0%be%d1%82-%d0%bf%d1%83%d1%88%d0%b8%d1%81%d1%82%d1%8b%d0%b9', '', '', '2016-08-22 17:26:47', '2016-08-22 14:26:47', '', 0, 'http://lgm-solution/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2016-08-17 11:42:26', '2016-08-17 08:42:26', '', 'cat', '', 'inherit', 'open', 'closed', '', 'cat', '', '', '2016-08-17 11:42:26', '2016-08-17 08:42:26', '', 40, 'http://lgm-solution/wp-content/uploads/2016/08/cat.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-08-17 12:24:36', '2016-08-17 09:24:36', '', 'Order &ndash; Август 17, 2016 @ 12:24 ПП', '', 'wc-processing', 'open', 'closed', 'order_57b42d5451ae6', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-17-aug-2016-%d0%b2-0924', '', '', '2016-08-17 12:24:36', '2016-08-17 09:24:36', '', 0, 'http://lgm-solution/?post_type=shop_order&#038;p=42', 0, 'shop_order', '', 1),
(43, 1, '2016-08-18 10:53:07', '2016-08-18 07:53:07', '<label> Ваше Имя (*)\r\n    [text* your-name size:20] </label>\r\n\r\n<label> Номер телефона (*)\r\n    [tel* tel size:20] </label>\r\n\r\n\r\n[submit "Заказать"]\nЗаказать звонок\n[your-name] <wordpress@lgm-solution>\nFrom: [your-name] <wordpress@lgm-solution>\r\nSubject: Заказать звонок\r\n\r\nMessage Body:\r\nНомер телефона: [tel]\r\n\r\n--\r\nThis e-mail was sent from a contact form on TestShop (http://lgm-solution)\nsheva-gitara@mail.ru\n\n\n\n\n\nTestShop "[your-subject]"\nTestShop <wordpress@lgm-solution>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on TestShop (http://lgm-solution)\n[your-email]\nReply-To: sheva-gitara@mail.ru\n\n\n\nСпасибо. Мы перезвоним в кратчайшие сроки\nОшибка отправки\nОДно или несколько полей содержат ошибки. Пожалуйста проверьте ещё раз\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nОбязательное поле\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nНекорректный номер', 'Заказать звонок', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-08-18 11:18:28', '2016-08-18 08:18:28', '', 0, 'http://lgm-solution/?post_type=wpcf7_contact_form&#038;p=43', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2016-08-18 13:20:30', '2016-08-18 10:20:30', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-08-26 11:49:31', '2016-08-26 08:49:31', '', 0, 'http://lgm-solution/?page_id=45', 0, 'page', '', 0),
(46, 1, '2016-08-18 13:20:30', '2016-08-18 10:20:30', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-08-18 13:20:30', '2016-08-18 10:20:30', '', 45, 'http://lgm-solution/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-08-19 10:28:53', '2016-08-19 07:28:53', '', 'homyak', '', 'inherit', 'open', 'closed', '', 'homyak', '', '', '2016-08-19 10:28:53', '2016-08-19 07:28:53', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/homyak.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-08-19 17:04:12', '2016-08-19 14:04:12', 'Крутая собака', 'Серый Ветер', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b5%d1%80%d1%8b%d0%b9-%d0%b2%d0%b5%d1%82%d0%b5%d1%80', '', '', '2016-08-19 17:04:12', '2016-08-19 14:04:12', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=48', 0, 'homeless', '', 0),
(49, 1, '2016-08-19 17:04:05', '2016-08-19 14:04:05', '', 'Серый ветер', '', 'inherit', 'open', 'closed', '', '%d1%81%d0%b5%d1%80%d1%8b%d0%b9-%d0%b2%d0%b5%d1%82%d0%b5%d1%80', '', '', '2016-08-19 17:04:05', '2016-08-19 14:04:05', '', 48, 'http://lgm-solution/wp-content/uploads/2016/08/Серый-ветер.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-08-19 17:05:22', '2016-08-19 14:05:22', 'Лютоволк...', 'Призрак', '', 'publish', 'closed', 'closed', '', 'prizrak', '', '', '2016-08-19 17:57:31', '2016-08-19 14:57:31', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=50', 0, 'homeless', '', 0),
(51, 1, '2016-08-19 17:05:17', '2016-08-19 14:05:17', '', 'призрак', '', 'inherit', 'open', 'closed', '', '%d0%bf%d1%80%d0%b8%d0%b7%d1%80%d0%b0%d0%ba', '', '', '2016-08-19 17:05:17', '2016-08-19 14:05:17', '', 50, 'http://lgm-solution/wp-content/uploads/2016/08/призрак.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-08-22 09:38:24', '2016-08-22 06:38:24', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2016-08-22 16:20:37', '2016-08-22 13:20:37', '', 0, 'http://lgm-solution/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2016-08-22 10:07:09', '2016-08-22 07:07:09', '', 'Корм для кота', 'фыафыафыафыва', 'publish', 'open', 'closed', '', '%d0%ba%d0%be%d1%80%d0%bc-%d0%b4%d0%bb%d1%8f-%d0%ba%d0%be%d1%82%d0%b0', '', '', '2016-08-22 11:30:55', '2016-08-22 08:30:55', '', 0, 'http://lgm-solution/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2016-08-22 10:06:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-08-22 10:06:46', '0000-00-00 00:00:00', '', 0, 'http://lgm-solution/?post_type=product&p=54', 0, 'product', '', 0),
(55, 1, '2016-08-22 10:07:42', '2016-08-22 07:07:42', 'фывафывафывафыв', 'Корм для собаки', 'фывафыафывафывафаыв', 'publish', 'open', 'closed', '', '%d0%ba%d0%be%d1%80%d0%bc-%d0%b4%d0%bb%d1%8f-%d1%81%d0%be%d0%b1%d0%b0%d0%ba%d0%b8', '', '', '2016-08-22 10:07:42', '2016-08-22 07:07:42', '', 0, 'http://lgm-solution/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2016-08-22 10:08:04', '2016-08-22 07:08:04', 'фввфаваафвыаф', 'Корм для хомяка', 'фывафыафыа', 'publish', 'open', 'closed', '', '%d0%ba%d0%be%d1%80%d0%bc-%d0%b4%d0%bb%d1%8f-%d1%85%d0%be%d0%bc%d1%8f%d0%ba%d0%b0', '', '', '2016-08-22 10:08:04', '2016-08-22 07:08:04', '', 0, 'http://lgm-solution/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2016-08-22 11:23:12', '2016-08-22 08:23:12', '', 'brands', '', 'publish', 'closed', 'closed', '', 'acf_brands', '', '', '2016-08-22 11:23:12', '2016-08-22 08:23:12', '', 0, 'http://lgm-solution/?post_type=acf&#038;p=57', 0, 'acf', '', 0),
(58, 1, '2016-08-22 11:27:41', '2016-08-22 08:27:41', '', 'вискас', '', 'inherit', 'open', 'closed', '', '%d0%b2%d0%b8%d1%81%d0%ba%d0%b0%d1%81', '', '', '2016-08-22 11:27:41', '2016-08-22 08:27:41', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/вискас.jpeg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-08-22 11:28:35', '2016-08-22 08:28:35', '', 'китикет', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%b8%d1%82%d0%b8%d0%ba%d0%b5%d1%82', '', '', '2016-08-22 11:28:35', '2016-08-22 08:28:35', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/китикет.jpeg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2016-08-22 11:29:32', '2016-08-22 08:29:32', '', 'чаппи', '', 'inherit', 'open', 'closed', '', '%d1%87%d0%b0%d0%bf%d0%bf%d0%b8', '', '', '2016-08-22 11:29:32', '2016-08-22 08:29:32', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/чаппи.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-08-22 15:47:59', '2016-08-22 12:47:59', '', 'foxi', '', 'inherit', 'open', 'closed', '', 'foxi', '', '', '2016-08-22 15:47:59', '2016-08-22 12:47:59', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/foxi.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2016-08-22 15:48:46', '2016-08-22 12:48:46', '', 'aquael-logo', '', 'inherit', 'open', 'closed', '', 'aquael-logo', '', '', '2016-08-22 15:48:46', '2016-08-22 12:48:46', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/aquael-logo.gif', 0, 'attachment', 'image/gif', 0),
(63, 1, '2016-08-22 15:49:41', '2016-08-22 12:49:41', '', 'tetra-logo', '', 'inherit', 'open', 'closed', '', 'tetra-logo', '', '', '2016-08-22 15:49:41', '2016-08-22 12:49:41', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/tetra-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-08-22 15:50:42', '2016-08-22 12:50:42', '', 'pc113_logo_kippy', '', 'inherit', 'open', 'closed', '', 'pc113_logo_kippy', '', '', '2016-08-22 15:50:42', '2016-08-22 12:50:42', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/pc113_logo_kippy.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-08-22 15:51:19', '2016-08-22 12:51:19', '', 'Before logo', '', 'inherit', 'open', 'closed', '', 'before-logo', '', '', '2016-08-22 15:51:19', '2016-08-22 12:51:19', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/Before-logo.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2016-08-22 16:02:14', '2016-08-22 13:02:14', '', 'Аквариус', '', 'inherit', 'open', 'closed', '', '%d0%b0%d0%ba%d0%b2%d0%b0%d1%80%d0%b8%d1%83%d1%81', '', '', '2016-08-22 16:02:14', '2016-08-22 13:02:14', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/Аквариус.jpeg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2016-08-22 16:02:50', '2016-08-22 13:02:50', '', 'Logo_Canina', '', 'inherit', 'open', 'closed', '', 'logo_canina', '', '', '2016-08-22 16:02:50', '2016-08-22 13:02:50', '', 0, 'http://lgm-solution/wp-content/uploads/2016/08/Logo_Canina.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2016-08-22 16:20:03', '2016-08-22 13:20:03', '', 'Полезные статьи', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%bb%d0%b5%d0%b7%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8', '', '', '2016-08-22 16:20:03', '2016-08-22 13:20:03', '', 0, 'http://lgm-solution/?page_id=68', 0, 'page', '', 0),
(69, 1, '2016-08-22 16:20:03', '2016-08-22 13:20:03', '', 'Полезные статьи', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-08-22 16:20:03', '2016-08-22 13:20:03', '', 68, 'http://lgm-solution/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2016-08-22 16:20:37', '2016-08-22 13:20:37', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2016-08-22 16:20:37', '2016-08-22 13:20:37', '', 0, 'http://lgm-solution/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2016-08-22 17:26:45', '2016-08-22 14:26:45', 'Кот пушистый, много ест, много спит. Пачка вискас в подарок', 'Кот пушистый', 'Кот пушистый', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2016-08-22 17:26:45', '2016-08-22 14:26:45', '', 40, 'http://lgm-solution/40-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2016-08-26 11:35:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-26 11:35:35', '0000-00-00 00:00:00', '', 0, 'http://lgm-solution/?p=72', 0, 'post', '', 0),
(73, 1, '2016-08-26 12:12:52', '2016-08-26 09:12:52', '', 'dfgsdsdfgsfgsdg', '', 'publish', 'closed', 'closed', '', 'dfgsdsdfgsfgsdg', '', '', '2016-08-26 12:12:52', '2016-08-26 09:12:52', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=73', 0, 'homeless', '', 0),
(74, 1, '2016-08-26 12:13:08', '2016-08-26 09:13:08', '', 'sdgsfggg', '', 'publish', 'closed', 'closed', '', 'sdgsfggg', '', '', '2016-08-26 12:13:08', '2016-08-26 09:13:08', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=74', 0, 'homeless', '', 0),
(75, 1, '2016-08-26 12:15:15', '2016-08-26 09:15:15', '', 'asdfafasdfasfd', '', 'publish', 'closed', 'closed', '', 'asdfafasdfasfd', '', '', '2016-08-26 12:15:15', '2016-08-26 09:15:15', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=75', 0, 'homeless', '', 0),
(76, 1, '2016-08-26 12:15:28', '2016-08-26 09:15:28', '', 'asdfaasdfasdf', '', 'publish', 'closed', 'closed', '', 'asdfaasdfasdf', '', '', '2016-08-26 12:15:28', '2016-08-26 09:15:28', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=76', 0, 'homeless', '', 0),
(77, 1, '2016-08-26 12:16:21', '2016-08-26 09:16:21', '', 'asdfasf', '', 'publish', 'closed', 'closed', '', 'asdfasf', '', '', '2016-08-26 12:16:21', '2016-08-26 09:16:21', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=77', 0, 'homeless', '', 0),
(78, 1, '2016-08-26 12:16:39', '2016-08-26 09:16:39', '', 'asdfasdfdsfasdf', '', 'publish', 'closed', 'closed', '', 'asdfasdfdsfasdf', '', '', '2016-08-26 12:16:39', '2016-08-26 09:16:39', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=78', 0, 'homeless', '', 0),
(79, 1, '2016-08-26 12:17:08', '2016-08-26 09:17:08', '', 'asdfasdfasdf', '', 'publish', 'closed', 'closed', '', 'asdfasdfasdf', '', '', '2016-08-26 12:17:08', '2016-08-26 09:17:08', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=79', 0, 'homeless', '', 0),
(80, 1, '2016-08-26 12:17:36', '2016-08-26 09:17:36', '', 'dfgsdfgsg', '', 'publish', 'closed', 'closed', '', 'dfgsdfgsg', '', '', '2016-08-26 12:17:36', '2016-08-26 09:17:36', '', 0, 'http://lgm-solution/?post_type=homeless&#038;p=80', 0, 'homeless', '', 0),
(81, 1, '2016-08-26 16:50:23', '2016-08-26 13:50:23', '[woocommerce_checkout]', 'Информация о заказе', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-08-26 16:50:23', '2016-08-26 13:50:23', '', 7, 'http://lgm-solution/7-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2016-08-26 17:07:09', '2016-08-26 14:07:09', '', 'еуыефыва', '', 'publish', 'open', 'closed', '', '%d0%b5%d1%83%d1%8b%d0%b5%d1%84%d1%8b%d0%b2%d0%b0', '', '', '2016-08-26 17:07:09', '2016-08-26 14:07:09', '', 0, 'http://lgm-solution/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2016-08-26 17:07:41', '2016-08-26 14:07:41', '', 'фывафываывафыва', '', 'publish', 'open', 'closed', '', '%d1%84%d1%8b%d0%b2%d0%b0%d1%84%d1%8b%d0%b2%d0%b0%d1%8b%d0%b2%d0%b0%d1%84%d1%8b%d0%b2%d0%b0', '', '', '2016-08-26 17:07:41', '2016-08-26 14:07:41', '', 0, 'http://lgm-solution/?post_type=product&#038;p=83', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_fblike_popup`
--

CREATE TABLE IF NOT EXISTS `wp_sg_fblike_popup` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_html_popup`
--

CREATE TABLE IF NOT EXISTS `wp_sg_html_popup` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_image_popup`
--

CREATE TABLE IF NOT EXISTS `wp_sg_image_popup` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_popup`
--

CREATE TABLE IF NOT EXISTS `wp_sg_popup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_sg_popup`
--

INSERT INTO `wp_sg_popup` (`id`, `type`, `title`, `options`) VALUES
(1, 'shortcode', 'Обратный звонок', '{"width":"300px","height":"400px","delay":0,"duration":1,"effect":"No effect","escKey":"on","scrolling":"on","reposition":"on","overlayClose":"on","contentClick":"","content-click-behavior":"close","click-redirect-to-url":"","opacity":"0.8","sgOverlayColor":"","sg-content-background-color":"","popupFixed":"on","fixedPostion":"2","maxWidth":"","maxHeight":"","initialWidth":"300","initialHeight":"100","closeButton":"on","theme":"colorbox4.css","onScrolling":"","inActivityStatus":"","inactivity-timout":"","beforeScrolingPrsent":0,"forMobile":"","openMobile":"","repeatPopup":"","popup-appear-number-limit":"","autoClosePopup":"","countryStatus":"","showAllPages":"","allPagesStatus":"","allPostsStatus":"","allSelectedPages":[""],"showAllPosts":"","allSelectedPosts":[""],"posts-all-categories":"","sg-user-status":"","loggedin-user":"","popup-timer-status":"","popup-schedule-status":"","popup-start-timer":"","popup-finish-timer":"","time-range-time-zone":"","schedule-start-weeks":"","schedule-start-time":"","schedule-end-time":"","allowCountries":"","countryName":"","countryIso":"","disablePopup":"","disablePopupOverlay":"","popupClosingTimer":"","yesButtonLabel":"","noButtonLabel":"","restrictionUrl":"","yesButtonBackgroundColor":"","noButtonBackgroundColor":"","yesButtonTextColor":"","noButtonTextColor":"","yesButtonRadius":0,"noButtonRadius":0,"pushToBottom":"","onceExpiresTime":"","sgOverlayCustomClasss":"sg-popup-overlay","sgContentCustomClasss":"sg-popup-content","theme-close-text":"\\u0417\\u0430\\u043a\\u0440\\u044b\\u0442\\u044c","socialButtons":"{\\"sgTwitterStatus\\":\\"\\",\\"sgFbStatus\\":\\"\\",\\"sgEmailStatus\\":\\"\\",\\"sgLinkedinStatus\\":\\"\\",\\"sgGoogleStatus\\":\\"\\",\\"sgPinterestStatus\\":\\"\\",\\"pushToBottom\\":\\"\\"}","socialOptions":"{\\"sgSocialTheme\\":\\"\\",\\"sgSocialButtonsSize\\":\\"\\",\\"sgSocialLabel\\":\\"\\",\\"sgSocialShareCount\\":\\"\\",\\"sgRoundButton\\":\\"\\",\\"fbShareLabel\\":\\"\\",\\"lindkinLabel\\":\\"\\",\\"sgShareUrl\\":\\"\\",\\"shareUrlType\\":\\"\\",\\"googLelabel\\":\\"\\",\\"twitterLabel\\":\\"\\",\\"pinterestLabel\\":\\"\\",\\"sgMailSubject\\":\\"\\",\\"sgMailLable\\":\\"\\"}","countdownOptions":"{\\"pushToBottom\\":\\"\\",\\"countdownNumbersBgColor\\":\\"\\",\\"countdownNumbersTextColor\\":\\"\\",\\"sg-due-date\\":\\"\\",\\"countdown-position\\":\\"\\",\\"counts-language\\":\\"\\",\\"sg-time-zone\\":\\"\\",\\"sg-countdown-type\\":\\"\\",\\"countdown-autoclose\\":\\"\\"}","exitIntentOptions":"{\\"exit-intent-type\\":\\"\\",\\"exit-intent-expire-time\\":\\"\\",\\"exit-intent-alert\\":\\"\\"}","videoOptions":"{\\"video-autoplay\\":\\"\\"}","fblikeOptions":"{\\"fblike-like-url\\":\\"\\",\\"fblike-layout\\":\\"\\"}"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_popup_addons`
--

CREATE TABLE IF NOT EXISTS `wp_sg_popup_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `paths` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_popup_settings`
--

CREATE TABLE IF NOT EXISTS `wp_sg_popup_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_sg_popup_settings`
--

INSERT INTO `wp_sg_popup_settings` (`id`, `options`) VALUES
(1, '{"tables-delete-status":"on","plugin_users_role":[],"sg-popup-time-zone":"Pacific\\/Midway"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sg_shortCode_popup`
--

CREATE TABLE IF NOT EXISTS `wp_sg_shortCode_popup` (
  `id` int(12) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_sg_shortCode_popup`
--

INSERT INTO `wp_sg_shortCode_popup` (`id`, `url`) VALUES
(1, '[contact-form-7 id="43" title="Заказать звонок"]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'order', '0'),
(2, 6, 'display_type', ''),
(3, 6, 'thumbnail_id', '0'),
(4, 8, 'order', '0'),
(5, 8, 'display_type', ''),
(6, 8, 'thumbnail_id', '0'),
(7, 9, 'order', '0'),
(8, 9, 'display_type', ''),
(9, 9, 'thumbnail_id', '0'),
(10, 10, 'order', '0'),
(11, 10, 'display_type', ''),
(12, 10, 'thumbnail_id', '47'),
(13, 11, 'order', '0'),
(14, 11, 'display_type', ''),
(15, 11, 'thumbnail_id', '0'),
(16, 12, 'order', '0'),
(17, 12, 'display_type', ''),
(18, 12, 'thumbnail_id', '0'),
(19, 13, 'order', '0'),
(20, 13, 'display_type', ''),
(21, 13, 'thumbnail_id', '0'),
(22, 14, 'order', '0'),
(23, 14, 'display_type', ''),
(24, 14, 'thumbnail_id', '0'),
(25, 15, 'order', '0'),
(26, 15, 'display_type', ''),
(27, 15, 'thumbnail_id', '0'),
(28, 16, 'order', '0'),
(29, 16, 'display_type', ''),
(30, 16, 'thumbnail_id', '0'),
(31, 17, 'order', '0'),
(32, 17, 'display_type', ''),
(33, 17, 'thumbnail_id', '0'),
(34, 10, 'product_count_product_cat', '5'),
(35, 8, 'product_count_product_cat', '2'),
(36, 6, 'product_count_product_cat', '1'),
(37, 30, 'order', '0'),
(38, 30, 'display_type', ''),
(39, 30, 'thumbnail_id', '0'),
(40, 31, 'order', '0'),
(41, 31, 'display_type', ''),
(42, 31, 'thumbnail_id', '0'),
(43, 32, 'order', '0'),
(44, 32, 'display_type', ''),
(45, 32, 'thumbnail_id', '61'),
(46, 31, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Собаки', 'dogs', 0),
(7, 'Menu 1', 'menu-1', 0),
(8, 'Кошки', 'cats', 0),
(9, 'Птицы', 'birds', 0),
(10, 'Грызуны', 'rodents', 0),
(11, 'Хорьки', 'fitch', 0),
(12, 'Ежи', 'hedgehog', 0),
(13, 'Аквариумистика', 'aquarium', 0),
(14, 'Рептилии', 'reptiles', 0),
(15, 'Пруд', 'pond', 0),
(16, 'Лошади', 'horses', 0),
(17, 'Пчёлы', 'bees', 0),
(20, 'Вискас', 'wiskas', 0),
(21, 'Китикет', 'kittycat', 0),
(22, 'Чаппи', 'chappi', 0),
(23, 'Foxi', 'foxi', 0),
(24, 'Aquael', 'aquael', 0),
(25, 'Tetra', 'tetra', 0),
(26, 'Kippy', 'kippy', 0),
(27, 'Before', 'before', 0),
(28, 'akvarius', 'akvarius', 0),
(29, 'Canina', 'canina', 0),
(30, 'C/X Животные', 'shzhivotie', 0),
(31, 'Корм для хомяка', 'korm-dlya-homyaka', 0),
(32, 'Кормя для мышей', 'korm-dlya-mishey', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(9, 10, 0),
(32, 7, 0),
(33, 7, 0),
(34, 7, 0),
(39, 2, 0),
(39, 10, 0),
(40, 2, 0),
(40, 8, 0),
(52, 7, 0),
(53, 2, 0),
(53, 8, 0),
(53, 20, 0),
(55, 2, 0),
(55, 6, 0),
(56, 2, 0),
(56, 10, 0),
(70, 7, 0),
(82, 2, 0),
(82, 29, 0),
(82, 31, 0),
(83, 2, 0),
(83, 26, 0),
(83, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_cat', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'product_cat', '', 0, 2),
(9, 9, 'product_cat', '', 0, 0),
(10, 10, 'product_cat', '', 0, 3),
(11, 11, 'product_cat', '', 0, 0),
(12, 12, 'product_cat', '', 0, 0),
(13, 13, 'product_cat', '', 0, 0),
(14, 14, 'product_cat', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(20, 20, 'brand', 'Корм для котов', 0, 1),
(21, 21, 'brand', 'afgasfgdsfg', 0, 0),
(22, 22, 'brand', 'asdfsdfasf', 0, 0),
(23, 23, 'brand', '', 0, 0),
(24, 24, 'brand', '', 0, 0),
(25, 25, 'brand', '', 0, 0),
(26, 26, 'brand', '', 0, 1),
(27, 27, 'brand', '', 0, 0),
(28, 28, 'brand', '', 0, 0),
(29, 29, 'brand', '', 0, 1),
(30, 30, 'product_cat', '', 0, 0),
(31, 31, 'product_cat', '', 10, 2),
(32, 32, 'product_cat', '', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ufbl_entries`
--

CREATE TABLE IF NOT EXISTS `wp_ufbl_entries` (
  `entry_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(9) DEFAULT NULL,
  `entry_detail` text COLLATE utf8mb4_unicode_ci,
  `entry_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ufbl_forms`
--

CREATE TABLE IF NOT EXISTS `wp_ufbl_forms` (
  `form_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_detail` text COLLATE utf8mb4_unicode_ci,
  `form_status` int(11) DEFAULT NULL,
  `form_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'dismissed_wp_pointers', 'pll_lgt,yith_wcwl_panel'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '72'),
(16, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&unfold=1&mfold=o&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1471877471'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:19:"pll_lang_switch_box";i:2;s:21:"add-post-type-product";i:3;s:12:"add-post_tag";i:4;s:15:"add-post_format";i:5;s:15:"add-product_cat";i:6;s:15:"add-product_tag";}'),
(23, 1, 'nav_menu_recently_edited', '7'),
(24, 1, 'billing_first_name', 'Дмитрий'),
(25, 1, 'billing_last_name', 'Михеев'),
(26, 1, 'billing_company', ''),
(27, 1, 'billing_email', 'sheva-gitara@mail.ru'),
(28, 1, 'billing_phone', '0632242204'),
(29, 1, 'billing_country', 'UA'),
(30, 1, 'billing_address_1', 'Сумская, 1'),
(31, 1, 'billing_address_2', ''),
(32, 1, 'billing_city', 'Харьков'),
(33, 1, 'billing_state', 'Харьковская'),
(34, 1, 'billing_postcode', '61096'),
(35, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:3:{s:32:"d645920e395fedad7bbbed0eca3fe2e0";a:9:{s:10:"product_id";i:40;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:100;s:8:"line_tax";i:0;s:13:"line_subtotal";i:100;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"d67d8ab4f4c10bf22aa353e27879133c";a:9:{s:10:"product_id";i:39;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:40;s:8:"line_tax";i:0;s:13:"line_subtotal";i:40;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"b53b3a3d6ab90ce0268229151c9bde11";a:9:{s:10:"product_id";i:55;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:10;s:8:"line_tax";i:0;s:13:"line_subtotal";i:10;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(36, 1, 'closedpostboxes_product', 'a:0:{}'),
(37, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(38, 1, 'session_tokens', 'a:1:{s:64:"7f13729d7914fb13607115a63887d3712787ee0913327554683dff01e8a6c05c";a:4:{s:10:"expiration";i:1472373333;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1472200533;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bqz0gcJa5rI/Nv4nkN0xfBPy4LEOox.', 'admin', 'sheva-gitara@mail.ru', '', '2016-08-04 16:04:35', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '4'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '9'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '32'),
(6, 1, '_line_total', '32'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_qty', '1'),
(11, 2, '_tax_class', ''),
(12, 2, '_product_id', '40'),
(13, 2, '_variation_id', '0'),
(14, 2, '_line_subtotal', '100'),
(15, 2, '_line_total', '100'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'тест продукт', 'line_item', 42),
(2, 'Кот пушистый', 'line_item', 42);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) NOT NULL,
  `zone_order` bigint(20) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woof_query_cache`
--

CREATE TABLE IF NOT EXISTS `wp_woof_query_cache` (
  `mkey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `wishlist_token` (`wishlist_token`),
  KEY `wishlist_slug` (`wishlist_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
