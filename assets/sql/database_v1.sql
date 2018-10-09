--
-- Table structure for table `academic_years`
--

CREATE TABLE IF NOT EXISTS `academic_years` (
  `id` int(11) NOT NULL,
  `session_year` varchar(12) CHARACTER SET utf8 NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_running` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `session_year`, `note`, `is_running`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '2016 - 2017', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 1, '2018-02-08 05:41:10', '0000-00-00 00:00:00', 1, 0),
(2, '2017 - 2018', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2018-02-08 05:41:45', '0000-00-00 00:00:00', 1, 0),
(3, '2018 - 2019', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 0, 1, '2018-02-08 05:42:55', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `deadline` date NOT NULL,
  `note` text CHARACTER SET utf8,
  `assignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `custom_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isbn_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `edition` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `cover` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rack_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Table structure for table `book_issues`
--

CREATE TABLE IF NOT EXISTS `book_issues` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `library_member_id` int(11) NOT NULL COMMENT 'Library member id',
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date NOT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numeric_name` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(5) NOT NULL,
  `language` varchar(50) CHARACTER SET utf8 NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `language`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '', 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af', NULL, '0000-00-00 00:00:00', 0, 0),
(2, '', 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax', NULL, '0000-00-00 00:00:00', 0, 0),
(3, '', 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al', NULL, '0000-00-00 00:00:00', 0, 0),
(4, '', 'DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz', NULL, '0000-00-00 00:00:00', 0, 0),
(5, '', 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as', NULL, '0000-00-00 00:00:00', 0, 0),
(6, '', 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad', NULL, '0000-00-00 00:00:00', 0, 0),
(7, '', 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao', NULL, '0000-00-00 00:00:00', 0, 0),
(8, '', 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai', NULL, '0000-00-00 00:00:00', 0, 0),
(9, '', 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq', NULL, '0000-00-00 00:00:00', 0, 0),
(10, '', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag', NULL, '0000-00-00 00:00:00', 0, 0),
(11, '', 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar', NULL, '0000-00-00 00:00:00', 0, 0),
(12, '', 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am', NULL, '0000-00-00 00:00:00', 0, 0),
(13, '', 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw', NULL, '0000-00-00 00:00:00', 0, 0),
(14, '', 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au', NULL, '0000-00-00 00:00:00', 0, 0),
(15, '', 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at', NULL, '0000-00-00 00:00:00', 0, 0),
(16, '', 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az', NULL, '0000-00-00 00:00:00', 0, 0),
(17, '', 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs', NULL, '0000-00-00 00:00:00', 0, 0),
(18, '', 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh', NULL, '0000-00-00 00:00:00', 0, 0),
(19, '', 'BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd', NULL, '0000-00-00 00:00:00', 0, 0),
(20, '', 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb', NULL, '0000-00-00 00:00:00', 0, 0),
(21, '', 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by', NULL, '0000-00-00 00:00:00', 0, 0),
(22, '', 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be', NULL, '0000-00-00 00:00:00', 0, 0),
(23, '', 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz', NULL, '0000-00-00 00:00:00', 0, 0),
(24, '', 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj', NULL, '0000-00-00 00:00:00', 0, 0),
(25, '', 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm', NULL, '0000-00-00 00:00:00', 0, 0),
(26, '', 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt', NULL, '0000-00-00 00:00:00', 0, 0),
(27, '', 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo', NULL, '0000-00-00 00:00:00', 0, 0),
(28, '', 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq', NULL, '0000-00-00 00:00:00', 0, 0),
(29, '', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba', NULL, '0000-00-00 00:00:00', 0, 0),
(30, '', 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw', NULL, '0000-00-00 00:00:00', 0, 0),
(31, '', 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv', NULL, '0000-00-00 00:00:00', 0, 0),
(32, '', 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br', NULL, '0000-00-00 00:00:00', 0, 0),
(33, '', 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io', NULL, '0000-00-00 00:00:00', 0, 0),
(34, '', 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn', NULL, '0000-00-00 00:00:00', 0, 0),
(35, '', 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg', NULL, '0000-00-00 00:00:00', 0, 0),
(36, '', 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf', NULL, '0000-00-00 00:00:00', 0, 0),
(37, '', 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi', NULL, '0000-00-00 00:00:00', 0, 0),
(38, '', 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh', NULL, '0000-00-00 00:00:00', 0, 0),
(39, '', 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm', NULL, '0000-00-00 00:00:00', 0, 0),
(40, '', 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca', NULL, '0000-00-00 00:00:00', 0, 0),
(41, '', 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv', NULL, '0000-00-00 00:00:00', 0, 0),
(42, '', 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky', NULL, '0000-00-00 00:00:00', 0, 0),
(43, '', 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf', NULL, '0000-00-00 00:00:00', 0, 0),
(44, '', 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td', NULL, '0000-00-00 00:00:00', 0, 0),
(45, '', 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl', NULL, '0000-00-00 00:00:00', 0, 0),
(46, '', 'CN', 'China', 'People''s Republic of China', 'CHN', '156', 'yes', '86', '.cn', NULL, '0000-00-00 00:00:00', 0, 0),
(47, '', 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx', NULL, '0000-00-00 00:00:00', 0, 0),
(48, '', 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc', NULL, '0000-00-00 00:00:00', 0, 0),
(49, '', 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co', NULL, '0000-00-00 00:00:00', 0, 0),
(50, '', 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km', NULL, '0000-00-00 00:00:00', 0, 0),
(51, '', 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg', NULL, '0000-00-00 00:00:00', 0, 0),
(52, '', 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck', NULL, '0000-00-00 00:00:00', 0, 0),
(53, '', 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr', NULL, '0000-00-00 00:00:00', 0, 0),
(54, '', 'CI', 'Cote d''ivoire (Ivory Coast)', 'Republic of C&ocirc;te D''Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci', NULL, '0000-00-00 00:00:00', 0, 0),
(55, '', 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr', NULL, '0000-00-00 00:00:00', 0, 0),
(56, '', 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu', NULL, '0000-00-00 00:00:00', 0, 0),
(57, '', 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw', NULL, '0000-00-00 00:00:00', 0, 0),
(58, '', 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy', NULL, '0000-00-00 00:00:00', 0, 0),
(59, '', 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz', NULL, '0000-00-00 00:00:00', 0, 0),
(60, '', 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd', NULL, '0000-00-00 00:00:00', 0, 0),
(61, '', 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk', NULL, '0000-00-00 00:00:00', 0, 0),
(62, '', 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj', NULL, '0000-00-00 00:00:00', 0, 0),
(63, '', 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm', NULL, '0000-00-00 00:00:00', 0, 0),
(64, '', 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do', NULL, '0000-00-00 00:00:00', 0, 0),
(65, '', 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec', NULL, '0000-00-00 00:00:00', 0, 0),
(66, '', 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg', NULL, '0000-00-00 00:00:00', 0, 0),
(67, '', 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv', NULL, '0000-00-00 00:00:00', 0, 0),
(68, '', 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq', NULL, '0000-00-00 00:00:00', 0, 0),
(69, '', 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er', NULL, '0000-00-00 00:00:00', 0, 0),
(70, '', 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee', NULL, '0000-00-00 00:00:00', 0, 0),
(71, '', 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et', NULL, '0000-00-00 00:00:00', 0, 0),
(72, '', 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk', NULL, '0000-00-00 00:00:00', 0, 0),
(73, '', 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo', NULL, '0000-00-00 00:00:00', 0, 0),
(74, '', 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj', NULL, '0000-00-00 00:00:00', 0, 0),
(75, '', 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi', NULL, '0000-00-00 00:00:00', 0, 0),
(76, '', 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr', NULL, '0000-00-00 00:00:00', 0, 0),
(77, '', 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf', NULL, '0000-00-00 00:00:00', 0, 0),
(78, '', 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf', NULL, '0000-00-00 00:00:00', 0, 0),
(79, '', 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf', NULL, '0000-00-00 00:00:00', 0, 0),
(80, '', 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga', NULL, '0000-00-00 00:00:00', 0, 0),
(81, '', 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm', NULL, '0000-00-00 00:00:00', 0, 0),
(82, '', 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge', NULL, '0000-00-00 00:00:00', 0, 0),
(83, '', 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de', NULL, '0000-00-00 00:00:00', 0, 0),
(84, '', 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh', NULL, '0000-00-00 00:00:00', 0, 0),
(85, '', 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi', NULL, '0000-00-00 00:00:00', 0, 0),
(86, '', 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr', NULL, '0000-00-00 00:00:00', 0, 0),
(87, '', 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl', NULL, '0000-00-00 00:00:00', 0, 0),
(88, '', 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd', NULL, '0000-00-00 00:00:00', 0, 0),
(89, '', 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp', NULL, '0000-00-00 00:00:00', 0, 0),
(90, '', 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu', NULL, '0000-00-00 00:00:00', 0, 0),
(91, '', 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt', NULL, '0000-00-00 00:00:00', 0, 0),
(92, '', 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg', NULL, '0000-00-00 00:00:00', 0, 0),
(93, '', 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn', NULL, '0000-00-00 00:00:00', 0, 0),
(94, '', 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw', NULL, '0000-00-00 00:00:00', 0, 0),
(95, '', 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy', NULL, '0000-00-00 00:00:00', 0, 0),
(96, '', 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht', NULL, '0000-00-00 00:00:00', 0, 0),
(97, '', 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm', NULL, '0000-00-00 00:00:00', 0, 0),
(98, '', 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn', NULL, '0000-00-00 00:00:00', 0, 0),
(99, '', 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk', NULL, '0000-00-00 00:00:00', 0, 0),
(100, '', 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu', NULL, '0000-00-00 00:00:00', 0, 0),
(101, '', 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is', NULL, '0000-00-00 00:00:00', 0, 0),
(102, '', 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in', NULL, '0000-00-00 00:00:00', 0, 0),
(103, '', 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id', NULL, '0000-00-00 00:00:00', 0, 0),
(104, '', 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir', NULL, '0000-00-00 00:00:00', 0, 0),
(105, '', 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq', NULL, '0000-00-00 00:00:00', 0, 0),
(106, '', 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie', NULL, '0000-00-00 00:00:00', 0, 0),
(107, '', 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im', NULL, '0000-00-00 00:00:00', 0, 0),
(108, '', 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il', NULL, '0000-00-00 00:00:00', 0, 0),
(109, '', 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm', NULL, '0000-00-00 00:00:00', 0, 0),
(110, '', 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm', NULL, '0000-00-00 00:00:00', 0, 0),
(111, '', 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp', NULL, '0000-00-00 00:00:00', 0, 0),
(112, '', 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je', NULL, '0000-00-00 00:00:00', 0, 0),
(113, '', 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo', NULL, '0000-00-00 00:00:00', 0, 0),
(114, '', 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz', NULL, '0000-00-00 00:00:00', 0, 0),
(115, '', 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke', NULL, '0000-00-00 00:00:00', 0, 0),
(116, '', 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki', NULL, '0000-00-00 00:00:00', 0, 0),
(117, '', 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', '', NULL, '0000-00-00 00:00:00', 0, 0),
(118, '', 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw', NULL, '0000-00-00 00:00:00', 0, 0),
(119, '', 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg', NULL, '0000-00-00 00:00:00', 0, 0),
(120, '', 'LA', 'Laos', 'Lao People''s Democratic Republic', 'LAO', '418', 'yes', '856', '.la', NULL, '0000-00-00 00:00:00', 0, 0),
(121, '', 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv', NULL, '0000-00-00 00:00:00', 0, 0),
(122, '', 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb', NULL, '0000-00-00 00:00:00', 0, 0),
(123, '', 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls', NULL, '0000-00-00 00:00:00', 0, 0),
(124, '', 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr', NULL, '0000-00-00 00:00:00', 0, 0),
(125, '', 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly', NULL, '0000-00-00 00:00:00', 0, 0),
(126, '', 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li', NULL, '0000-00-00 00:00:00', 0, 0),
(127, '', 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt', NULL, '0000-00-00 00:00:00', 0, 0),
(128, '', 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu', NULL, '0000-00-00 00:00:00', 0, 0),
(129, '', 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo', NULL, '0000-00-00 00:00:00', 0, 0),
(130, '', 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', '807', 'yes', '389', '.mk', NULL, '0000-00-00 00:00:00', 0, 0),
(131, '', 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg', NULL, '0000-00-00 00:00:00', 0, 0),
(132, '', 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw', NULL, '0000-00-00 00:00:00', 0, 0),
(133, '', 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my', NULL, '0000-00-00 00:00:00', 0, 0),
(134, '', 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv', NULL, '0000-00-00 00:00:00', 0, 0),
(135, '', 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml', NULL, '0000-00-00 00:00:00', 0, 0),
(136, '', 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt', NULL, '0000-00-00 00:00:00', 0, 0),
(137, '', 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh', NULL, '0000-00-00 00:00:00', 0, 0),
(138, '', 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq', NULL, '0000-00-00 00:00:00', 0, 0),
(139, '', 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr', NULL, '0000-00-00 00:00:00', 0, 0),
(140, '', 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu', NULL, '0000-00-00 00:00:00', 0, 0),
(141, '', 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt', NULL, '0000-00-00 00:00:00', 0, 0),
(142, '', 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx', NULL, '0000-00-00 00:00:00', 0, 0),
(143, '', 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm', NULL, '0000-00-00 00:00:00', 0, 0),
(144, '', 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md', NULL, '0000-00-00 00:00:00', 0, 0),
(145, '', 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc', NULL, '0000-00-00 00:00:00', 0, 0),
(146, '', 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn', NULL, '0000-00-00 00:00:00', 0, 0),
(147, '', 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me', NULL, '0000-00-00 00:00:00', 0, 0),
(148, '', 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms', NULL, '0000-00-00 00:00:00', 0, 0),
(149, '', 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma', NULL, '0000-00-00 00:00:00', 0, 0),
(150, '', 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz', NULL, '0000-00-00 00:00:00', 0, 0),
(151, '', 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm', NULL, '0000-00-00 00:00:00', 0, 0),
(152, '', 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na', NULL, '0000-00-00 00:00:00', 0, 0),
(153, '', 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr', NULL, '0000-00-00 00:00:00', 0, 0),
(154, '', 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np', NULL, '0000-00-00 00:00:00', 0, 0),
(155, '', 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl', NULL, '0000-00-00 00:00:00', 0, 0),
(156, '', 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc', NULL, '0000-00-00 00:00:00', 0, 0),
(157, '', 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz', NULL, '0000-00-00 00:00:00', 0, 0),
(158, '', 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni', NULL, '0000-00-00 00:00:00', 0, 0),
(159, '', 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne', NULL, '0000-00-00 00:00:00', 0, 0),
(160, '', 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng', NULL, '0000-00-00 00:00:00', 0, 0),
(161, '', 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu', NULL, '0000-00-00 00:00:00', 0, 0),
(162, '', 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf', NULL, '0000-00-00 00:00:00', 0, 0),
(163, '', 'KP', 'North Korea', 'Democratic People''s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp', NULL, '0000-00-00 00:00:00', 0, 0),
(164, '', 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp', NULL, '0000-00-00 00:00:00', 0, 0),
(165, '', 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no', NULL, '0000-00-00 00:00:00', 0, 0),
(166, '', 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om', NULL, '0000-00-00 00:00:00', 0, 0),
(167, '', 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk', NULL, '0000-00-00 00:00:00', 0, 0),
(168, '', 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw', NULL, '0000-00-00 00:00:00', 0, 0),
(169, '', 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps', NULL, '0000-00-00 00:00:00', 0, 0),
(170, '', 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa', NULL, '0000-00-00 00:00:00', 0, 0),
(171, '', 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg', NULL, '0000-00-00 00:00:00', 0, 0),
(172, '', 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py', NULL, '0000-00-00 00:00:00', 0, 0),
(173, '', 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe', NULL, '0000-00-00 00:00:00', 0, 0),
(174, '', 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph', NULL, '0000-00-00 00:00:00', 0, 0),
(175, '', 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn', NULL, '0000-00-00 00:00:00', 0, 0),
(176, '', 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl', NULL, '0000-00-00 00:00:00', 0, 0),
(177, '', 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt', NULL, '0000-00-00 00:00:00', 0, 0),
(178, '', 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr', NULL, '0000-00-00 00:00:00', 0, 0),
(179, '', 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa', NULL, '0000-00-00 00:00:00', 0, 0),
(180, '', 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re', NULL, '0000-00-00 00:00:00', 0, 0),
(181, '', 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro', NULL, '0000-00-00 00:00:00', 0, 0),
(182, '', 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru', NULL, '0000-00-00 00:00:00', 0, 0),
(183, '', 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw', NULL, '0000-00-00 00:00:00', 0, 0),
(184, '', 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl', NULL, '0000-00-00 00:00:00', 0, 0),
(185, '', 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh', NULL, '0000-00-00 00:00:00', 0, 0),
(186, '', 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn', NULL, '0000-00-00 00:00:00', 0, 0),
(187, '', 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc', NULL, '0000-00-00 00:00:00', 0, 0),
(188, '', 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf', NULL, '0000-00-00 00:00:00', 0, 0),
(189, '', 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm', NULL, '0000-00-00 00:00:00', 0, 0),
(190, '', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc', NULL, '0000-00-00 00:00:00', 0, 0),
(191, '', 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws', NULL, '0000-00-00 00:00:00', 0, 0),
(192, '', 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm', NULL, '0000-00-00 00:00:00', 0, 0),
(193, '', 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st', NULL, '0000-00-00 00:00:00', 0, 0),
(194, '', 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa', NULL, '0000-00-00 00:00:00', 0, 0),
(195, '', 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn', NULL, '0000-00-00 00:00:00', 0, 0),
(196, '', 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs', NULL, '0000-00-00 00:00:00', 0, 0),
(197, '', 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc', NULL, '0000-00-00 00:00:00', 0, 0),
(198, '', 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl', NULL, '0000-00-00 00:00:00', 0, 0),
(199, '', 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg', NULL, '0000-00-00 00:00:00', 0, 0),
(200, '', 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx', NULL, '0000-00-00 00:00:00', 0, 0),
(201, '', 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk', NULL, '0000-00-00 00:00:00', 0, 0),
(202, '', 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si', NULL, '0000-00-00 00:00:00', 0, 0),
(203, '', 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb', NULL, '0000-00-00 00:00:00', 0, 0),
(204, '', 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so', NULL, '0000-00-00 00:00:00', 0, 0),
(205, '', 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za', NULL, '0000-00-00 00:00:00', 0, 0),
(206, '', 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs', NULL, '0000-00-00 00:00:00', 0, 0),
(207, '', 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr', NULL, '0000-00-00 00:00:00', 0, 0),
(208, '', 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss', NULL, '0000-00-00 00:00:00', 0, 0),
(209, '', 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es', NULL, '0000-00-00 00:00:00', 0, 0),
(210, '', 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk', NULL, '0000-00-00 00:00:00', 0, 0),
(211, '', 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd', NULL, '0000-00-00 00:00:00', 0, 0),
(212, '', 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr', NULL, '0000-00-00 00:00:00', 0, 0),
(213, '', 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj', NULL, '0000-00-00 00:00:00', 0, 0),
(214, '', 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz', NULL, '0000-00-00 00:00:00', 0, 0),
(215, '', 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se', NULL, '0000-00-00 00:00:00', 0, 0),
(216, '', 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch', NULL, '0000-00-00 00:00:00', 0, 0),
(217, '', 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy', NULL, '0000-00-00 00:00:00', 0, 0),
(218, '', 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw', NULL, '0000-00-00 00:00:00', 0, 0),
(219, '', 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj', NULL, '0000-00-00 00:00:00', 0, 0),
(220, '', 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz', NULL, '0000-00-00 00:00:00', 0, 0),
(221, '', 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th', NULL, '0000-00-00 00:00:00', 0, 0),
(222, '', 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl', NULL, '0000-00-00 00:00:00', 0, 0),
(223, '', 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg', NULL, '0000-00-00 00:00:00', 0, 0),
(224, '', 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk', NULL, '0000-00-00 00:00:00', 0, 0),
(225, '', 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to', NULL, '0000-00-00 00:00:00', 0, 0),
(226, '', 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt', NULL, '0000-00-00 00:00:00', 0, 0),
(227, '', 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn', NULL, '0000-00-00 00:00:00', 0, 0),
(228, '', 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr', NULL, '0000-00-00 00:00:00', 0, 0),
(229, '', 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm', NULL, '0000-00-00 00:00:00', 0, 0),
(230, '', 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc', NULL, '0000-00-00 00:00:00', 0, 0),
(231, '', 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv', NULL, '0000-00-00 00:00:00', 0, 0),
(232, '', 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug', NULL, '0000-00-00 00:00:00', 0, 0),
(233, '', 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua', NULL, '0000-00-00 00:00:00', 0, 0),
(234, '', 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae', NULL, '0000-00-00 00:00:00', 0, 0),
(235, '', 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk', NULL, '0000-00-00 00:00:00', 0, 0),
(236, '', 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us', NULL, '0000-00-00 00:00:00', 0, 0),
(237, '', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE', NULL, '0000-00-00 00:00:00', 0, 0),
(238, '', 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy', NULL, '0000-00-00 00:00:00', 0, 0),
(239, '', 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz', NULL, '0000-00-00 00:00:00', 0, 0),
(240, '', 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu', NULL, '0000-00-00 00:00:00', 0, 0),
(241, '', 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va', NULL, '0000-00-00 00:00:00', 0, 0),
(242, '', 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve', NULL, '0000-00-00 00:00:00', 0, 0),
(243, '', 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn', NULL, '0000-00-00 00:00:00', 0, 0),
(244, '', 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg', NULL, '0000-00-00 00:00:00', 0, 0),
(245, '', 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi', NULL, '0000-00-00 00:00:00', 0, 0),
(246, '', 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf', NULL, '0000-00-00 00:00:00', 0, 0),
(247, '', 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh', NULL, '0000-00-00 00:00:00', 0, 0),
(248, '', 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye', NULL, '0000-00-00 00:00:00', 0, 0),
(249, '', 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm', NULL, '0000-00-00 00:00:00', 0, 0),
(250, '', 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw', NULL, '0000-00-00 00:00:00', 0, 0),
(251, '', 'wo', 'world', '', NULL, NULL, NULL, NULL, 'world', NULL, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(120) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text CHARACTER SET utf8,
  `academic_year_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `resume` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `designation_id`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 9, 'Super Admin', '123456789', NULL, NULL, '', '', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE IF NOT EXISTS `employee_attendances` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Table structure for table `enrollments`
--

CREATE TABLE IF NOT EXISTS `enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `event_place` varchar(255) CHARACTER SET utf8 NOT NULL,
  `event_from` date NOT NULL,
  `event_to` date NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `start_date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_attendances`
--

CREATE TABLE IF NOT EXISTS `exam_attendances` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `is_attend` varchar(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE IF NOT EXISTS `exam_schedules` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `room_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `expenditures`
--

CREATE TABLE IF NOT EXISTS `expenditures` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_head_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expenditure_via` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `expenditure_heads`
--

CREATE TABLE IF NOT EXISTS `expenditure_heads` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `point` decimal(10,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_to` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Table structure for table `gsms_sessions`
--

CREATE TABLE IF NOT EXISTS `gsms_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `guardians`
--

CREATE TABLE IF NOT EXISTS `guardians` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
--
-- Table structure for table `hostels`
--

CREATE TABLE IF NOT EXISTS `hostels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Table structure for table `hostel_members`
--

CREATE TABLE IF NOT EXISTS `hostel_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Table structure for table `income_heads`
--

CREATE TABLE IF NOT EXISTS `income_heads` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL,
  `custom_invoice_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `invoice_type` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'academic, general',
  `academic_year_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `paid_status` varchar(20) NOT NULL DEFAULT 'Unpaid',
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL,
  `label` text COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  `bengali` longtext COLLATE utf8_unicode_ci,
  `spanish` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `urdu` longtext COLLATE utf8_unicode_ci,
  `chinese` longtext COLLATE utf8_unicode_ci,
  `japanese` longtext COLLATE utf8_unicode_ci,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `russian` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `korean` longtext COLLATE utf8_unicode_ci,
  `german` longtext COLLATE utf8_unicode_ci,
  `italian` longtext COLLATE utf8_unicode_ci,
  `thai` longtext COLLATE utf8_unicode_ci,
  `hungarian` longtext COLLATE utf8_unicode_ci,
  `dutch` longtext COLLATE utf8_unicode_ci,
  `latin` longtext COLLATE utf8_unicode_ci,
  `indonesian` longtext COLLATE utf8_unicode_ci,
  `turkish` longtext COLLATE utf8_unicode_ci,
  `greek` longtext COLLATE utf8_unicode_ci,
  `persian` longtext COLLATE utf8_unicode_ci,
  `malay` longtext COLLATE utf8_unicode_ci,
  `telugu` longtext COLLATE utf8_unicode_ci,
  `tamil` longtext COLLATE utf8_unicode_ci,
  `gujarati` longtext COLLATE utf8_unicode_ci,
  `polish` longtext COLLATE utf8_unicode_ci,
  `ukrainian` longtext COLLATE utf8_unicode_ci,
  `panjabi` longtext COLLATE utf8_unicode_ci,
  `romanian` longtext COLLATE utf8_unicode_ci,
  `burmese` longtext COLLATE utf8_unicode_ci,
  `yoruba` longtext COLLATE utf8_unicode_ci,
  `hausa` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(1, 'add', 'Add', 'যোগ করুন', 'Añadir', 'إضافة', 'जोड़ना', 'شامل کریں', '加', '追加', 'Adicionar', 'Добавить', 'Ajouter', '더하다', 'Hinzufügen', 'Inserisci', 'เพิ่ม', 'hozzáad', 'Toevoegen', 'addere', 'Menambahkan', 'Eklemek', 'Προσθέτω', 'اضافه کردن', 'Tambah', 'చేర్చు', 'கூட்டு', 'ઉમેરો', 'Dodaj', 'Додати', 'ਜੋੜੋ', 'Adăuga', 'ပေါင်း', 'Fi kun', 'Ƙara'),
(2, 'edit', 'Edit', 'সম্পাদনা করুন', 'Editar', 'تصحيح', 'संपादित करें', 'ترمیم', '编辑', '編集', 'Editar', 'редактировать', 'modifier', '편집하다', 'Bearbeiten', 'modificare', 'แก้ไข', 'szerkesztése', 'Bewerk', 'recensere', 'Edit', 'Düzenle', 'Επεξεργασία', 'ویرایش', 'Edit', 'మార్చు', 'தொகு', 'સંપાદિત કરો', 'Edytować', 'Редагувати', 'ਸੰਪਾਦਿਤ ਕਰੋ', 'Editați | ×', 'Edit ကို', 'Ṣatunkọ', 'Shirya'),
(3, 'delete', 'Delete', 'মুছুন', 'Borrar', 'حذف', 'हटाना', 'حذف کریں', '删除', '削除', 'Excluir', 'Удалить', 'effacer', '지우다', 'Löschen', 'Elimina', 'ลบ', 'Töröl', 'Verwijder', 'delere', 'Menghapus', 'silmek', 'Διαγράφω', 'حذف', 'Padam', 'తొలగించు', 'அழி', 'કાઢી નાંખો', 'Kasować', 'Видалити', 'ਮਿਟਾਓ', 'Șterge', 'ဖျက်ပစ်ပါ', 'Paarẹ', 'Share'),
(4, 'view', 'View', 'দেখুন', 'Ver', 'رأي', 'राय', 'دیکھیں', '视图', 'ビュー', 'Visão', 'Посмотреть', 'vue', '전망', 'Aussicht', 'vista', 'ดู', 'Kilátás', 'Uitzicht', 'View', 'Melihat', 'Görünüm', 'Θέα', 'چشم انداز', 'Lihat', 'చూడండి', 'காண்க', 'જુઓ', 'Widok', 'Вид', 'ਵੇਖੋ', 'Vedere', 'ကြည့်ရှုခြင်း', 'Wo', 'Duba'),
(5, 'action', 'Action', 'ক্রিয়া', 'Acción', 'عمل', 'कार्य', 'عمل', '行动', 'アクション', 'Açao', 'действие', 'action', '동작', 'Aktion', 'Azione', 'การกระทำ', 'Akció', 'Actie', 'actum', 'Tindakan', 'Aksiyon', 'Δράση', 'عمل', 'Tindakan', 'యాక్షన్', 'அதிரடி', 'ક્રિયા', 'Akcja', 'Дія', 'ਐਕਸ਼ਨ', 'Acțiune', 'လှုပ်ရှားမှု', 'Ise', 'Action'),
(6, 'status', 'Status', 'অবস্থা', 'Estado', 'الحالة', 'स्थिति', 'حالت', '状态', '状態', 'Status', 'Положение дел', 'statut', '지위', 'Status', 'Stato', 'สถานะ', 'Állapot', 'staat', 'Status', 'Status', 'durum', 'Κατάσταση', 'وضعیت', 'Status', 'స్థితి', 'நிலைமை', 'સ્થિતિ', 'Status', 'Статус', 'ਸਥਿਤੀ', 'stare', 'အဆင့်အတန်း', 'Ipo', 'Matsayi'),
(7, 'select', 'Select', 'নির্বাচন করুন', 'Seleccionar', 'تحديد', 'चुनते हैं', 'منتخب کریں', '选择', '選択', 'Selecione', 'Выбрать', 'sélectionner', '고르다', 'Wählen', 'Selezionare', 'เลือก', 'választ', 'kiezen', 'select', 'Memilih', 'seçmek', 'Επιλέγω', 'انتخاب کنید', 'Pilih', 'ఎంచుకోండి', 'தேர்வு', 'પસંદ કરો', 'Wybierz', 'Виберіть', 'ਚੁਣੋ', 'Selectați', 'ကို Select လုပ်ပါ', 'Yan', 'Zaɓi'),
(8, 'photo', 'Photo', 'ছবি', 'Foto', 'صورة فوتوغرافية', 'तस्वीर', 'تصویر', '照片', '写真', 'foto', 'Фото', 'photo', '사진', 'Foto', 'Foto', 'ภาพถ่าย', 'Fénykép', 'Foto', 'photo', 'Foto', 'Fotoğraf', 'φωτογραφία', 'عکس', 'Foto', 'ఫోటో', 'புகைப்பட', 'ફોટો', 'Zdjęcie', 'Фотографія', 'ਫੋਟੋ', 'Fotografie', 'ဓာတ်ပုံ', 'aworan', 'Hotuna'),
(9, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'अपलोड', 'اپ لوڈ کریں', '上传', 'アップロード', 'Envio', 'Загрузить', 'télécharger', '업로드', 'Hochladen', 'Caricare', 'อัปโหลด', 'Feltöltés', 'Uploaden', 'Index', 'Upload', 'Yükleme', 'Μεταφόρτωση', 'بارگذاری', 'Muat naik', 'అప్లోడ్', 'பதிவேற்றம்', 'અપલોડ કરો', 'Przekazać plik', 'Завантажити', 'ਅਪਲੋਡ ਕਰੋ', 'Încărcați', 'လွှတ်တင်ခြင်း', 'Po si', 'Upload'),
(10, 'created', 'Created', 'তৈরীর তারিখ', 'Creado', 'خلقت', 'बनाया था', 'تخلیق', '创建', '作成した', 'Criada', 'созданный', 'créé', '만들어진', 'Erstellt', 'Creato', 'ที่สร้างไว้', 'Alkotó', 'gemaakt', 'creatum', 'Dibuat', 'düzenlendi', 'Δημιουργήθηκε', 'ایجاد شده', 'Dicipta', 'రూపొందించబడింది', 'உருவாக்கப்பட்டது', 'બનાવ્યું', 'Stworzony', 'Створено', 'ਬਣਾਇਆ ਗਿਆ', 'Creată', 'Created', 'Ti ṣẹda', 'An yi'),
(11, 'modified', 'Modified', 'পরিবর্তিত তারিখ', 'Modificado', 'تم التعديل', 'संशोधित', 'ترمیم', '改性', '変更された', 'Modificado', 'модифицированный', 'modifié', '수정 됨', 'Geändert', 'Modificata', 'ดัดแปลง', 'Módosított', 'gewijzigde', 'Modified', 'Diubah', 'Değiştirilmiş', 'Τροποποιήθηκε', 'اصلاح شده', 'Diubah suai', 'సవరించిన', 'திருத்தப்பட்ட', 'સંશોધિત', 'Zmodyfikowany', 'Змінено', 'ਸੰਸ਼ੋਧਿਤ', 'Modificat', 'ပြုပြင်ထားသော', 'Ti yipada', 'An gyara'),
(12, 'manage', 'Manage', 'পরিচালনা করা', 'Gestionar', 'تدبير', 'प्रबंधित', 'انتظام کریں', '管理', '管理', 'Gerir', 'управлять', 'gérer', '꾸리다', 'Verwalten', 'Gestire', 'จัดการ', 'kezel', 'beheren', 'curo', 'Mengelola', 'yönetme', 'Διαχειρίζονται', 'مدیریت کردن', 'Mengurus', 'నిర్వహించడానికి', 'நிர்வகிக்கவும்', 'મેનેજ કરો', 'Zarządzanie', 'Керувати', 'ਪ੍ਰਬੰਧ ਕਰਨਾ, ਕਾਬੂ ਕਰਨਾ', 'Administra', 'စီမံခန့်ခွဲရန်', 'Ṣakoso', 'Sarrafa'),
(13, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'रद्द करना', 'منسوخ کریں', '取消', 'キャンセル', 'Cancelar', 'Отмена', 'Annuler', '취소', 'Stornieren', 'Annulla', 'ยกเลิก', 'Megszünteti', 'Annuleer', 'Cancel', 'Membatalkan', 'İptal etmek', 'Ματαίωση', 'لغو', 'Batalkan', 'రద్దు', 'ரத்து', 'રદ કરો', 'Anuluj', 'Скасувати', 'ਰੱਦ ਕਰੋ', 'Anulare', 'Cancel', 'Fagilee', 'Cancel'),
(14, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'خضع', 'जमा करें', 'جمع', '提交', '提出する', 'Enviar', 'Отправить', 'soumettre', '제출', 'einreichen', 'Sottoscrivi', 'เสนอ', 'beküldése', 'voorleggen', 'submit', 'Menyerahkan', 'Gönder', 'υποβάλλουν', 'ارسال', 'Hantar', 'సమర్పించండి', 'சமர்ப்பி', 'સબમિટ કરો', 'Zatwierdź', 'Відправити', 'ਜਮ੍ਹਾਂ ਕਰੋ', 'A depune', 'တင်သွင်း', 'Firanṣẹ', 'Sanya'),
(15, 'update', 'Update', 'আপডেট', 'Actualizar', 'تحديث', 'अद्यतन करें', 'اپ ڈیٹ', '更新', '更新', 'Atualizar', 'Обновить', 'mettre à jour', '최신 정보', 'Aktualisieren', 'Aggiornare', 'ปรับปรุง', 'frissítés', 'Bijwerken', 'Update', 'Memperbarui', 'Güncelleştirme', 'Εκσυγχρονίζω', 'به روز رسانی', 'Kemas kini', 'నవీకరణ', 'புதுப்பிக்கப்பட்டது', 'અપડેટ કરો', 'Aktualizacja', 'Оновити', 'ਅੱਪਡੇਟ ਕਰੋ', 'Actualizați', 'Update ကို', 'Imudojuiwọn', 'Sabuntawa'),
(16, 'no_data_found', 'No available data found ', 'কোন তথ্য পাওয়া যায় নি', 'No hay datos disponibles encontrados', 'لم يتم العثور على بيانات متوفرة', 'कोई उपलब्ध डेटा नहीं मिला', 'دستیاب ڈیٹا نہیں ملا', '没有找到可用的数据', '利用可能なデータが見つかりません', 'Não foram encontrados dados disponíveis', 'Нет доступных данных', 'mettre à jour...', '사용할 수있는 데이터가 없습니다.', 'Keine verfügbaren Daten gefunden', 'Nessun dato disponibile trovato', 'ไม่พบข้อมูลที่มีอยู่', 'Nincs elérhető adat', 'Geen beschikbare gegevens gevonden', 'Notitia available non inveni', 'Tidak ditemukan data yang tersedia', 'Mevcut veri bulunamadı', 'Δεν βρέθηκαν διαθέσιμα δεδομένα', 'داده های موجود یافت نشد', 'Tiada data yang terdapat', 'అందుబాటులో ఉన్న డేటా కనుగొనబడలేదు', 'கிடைக்கக்கூடிய தரவுகள் எதுவும் கிடைக்கவில்லை', 'કોઈ ઉપલબ્ધ માહિતી મળી નથી', 'Nie znaleziono żadnych dostępnych danych', 'Не знайдено доступних даних', 'ਕੋਈ ਉਪਲਬਧ ਡੇਟਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu s-au găsit date disponibile', 'မျှမတွေ့မရရှိနိုင်ပါဒေတာ', 'Ko si data to wa ti o wa', 'Babu samin bayanai da aka samo'),
(17, 'confirm_alert', 'Are you sure you want to delete this', 'আপনি কি ডেটা মুছে ফেলার ব্যাপারে নিশ্চিত?', 'Estás seguro que quieres eliminar esto', 'هل أنت متأكد أنك تريد حذف هذا', 'क्या आप वाकई इसे हटाना चाहते हैं', 'کیا آپ واقعی یہ حذف کرنا چاہتے ہیں', '你确定要删除这个吗', 'これを削除してもよろしいですか？', 'Tem certeza de que deseja excluir isso', 'Вы действительно хотите удалить это', 'vous êtes sûr de vouloir supprimer ce', '이 사진을 삭제 하시겠습니까?', 'Möchtest du das wirklich löschen?', 'Sei sicuro di voler cancellare questo', 'คุณแน่ใจหรือไม่ว่าต้องการลบข้อมูลนี้', 'Biztosan törölni szeretné', 'Weet je zeker dat je dit wilt verwijderen?', 'Esne certus vos volo ut delete is', 'Apa kamu yakin ingin menghapus ini', 'Bunu silmek istediğinizden emin misiniz', 'Είστε βέβαιοι ότι θέλετε να το διαγράψετε', 'آیا مطمئن هستید که می خواهید این را حذف کنید', 'Adakah anda pasti mahu memadam ini', 'మీరు దీన్ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా', 'இதை நீ நிச்சயமாக நீக்க விரும்புகிறாயா?', 'શું તમે ખરેખર આને કાઢી નાખવા માંગો છો?', 'Czy na pewno chcesz to usunąć?', 'Ви впевнені, що хочете видалити це', 'ਕੀ ਤੁਸੀਂ ਨਿਸ਼ਚਤ ਰੂਪ ਤੋਂ ਇਸ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Sigur doriți să ștergeți acest lucru', 'သင်ဤပယ်ဖျက်ဖို့လိုတာသေချာ', 'Ṣe o da ọ loju pe o fẹ paarẹ yii', 'Kuna tabbatar kana so ka share wannan'),
(18, 'insert_success', 'Data inserted successfully', 'ডেটা সফলভাবে ঢোকানো হয়েছে', 'Datos insertados con éxito', 'تم إدراج البيانات بنجاح', 'डेटा सफलतापूर्वक डाला गया', 'ڈیٹا کامیابی سے داخل ہوگئی ہے', '数据插入成功', 'データが正常に挿入された', 'Dados inseridos com sucesso', 'Данные успешно вставлены', 'Données insérées avec succès', '데이터가 성공적으로 삽입되었습니다.', 'Daten wurden erfolgreich eingefügt', 'Dati inseriti correttamente', 'แทรกข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen be vannak illesztve', 'Gegevens succesvol ingevoegd', 'Data bene insertas', 'Data berhasil dimasukkan', 'Veriler başarıyla eklendi', 'Τα δεδομένα έχουν εισαχθεί με επιτυχία', 'داده ها با موفقیت وارد شدند', 'Data dimasukkan dengan jayanya', 'డేటా విజయవంతంగా చొప్పించబడింది', 'தரவு வெற்றிகரமாக சேர்க்கப்பட்டது', 'ડેટા સફળતાપૂર્વક શામેલ કર્યો', 'Dane wstawione pomyślnie', 'Дані введені успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਪਾਇਆ ਗਿਆ', 'Datele introduse cu succes', 'အောင်မြင်စွာဖြည့်စွက်ဖို့ဒေတာ', 'Data ti a fi sii ni ifijišẹ', 'Bayanin da aka sanya nasara'),
(19, 'insert_failed', 'Data insert failed. Please try again ', 'ডেটা সন্নিবেশ ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La inserción de datos falló. Inténtalo de nuevo', 'أخفقت عملية إدراج البيانات. حاول مرة اخرى', 'डेटा डालना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا داخل ناکام ہوگیا. دوبارہ کوشش کریں', '数据插入失败。 请再试一次', 'データの挿入に失敗しました。 もう一度お試しください', 'A inserção de dados falhou. Por favor, tente novamente', 'Ошибка ввода данных. Пожалуйста, попробуйте еще раз', 'L''insertion de données a échoué. S''il vous plaît essayez', '데이터 삽입에 실패했습니다. 다시 시도적으로 업데이트되었습니다.하십시오.', 'Daten einfügen fehlgeschlagen. Bitte versuche es erneut', 'Inserimento dati non riuscito. Per favore riprova', 'แทรกข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatbetöltés meghiúsult. Kérlek próbáld újra', 'Gegevensinvoer mislukt. Probeer het opnieuw', 'Data inserta defecit. Quaero, iterum conare', 'Penyisipan data gagal Silahkan coba lagi', 'Veri girişi başarısız oldu. Lütfen tekrar deneyin', 'Η εισαγωγή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'درج اطلاعات وارد نشد لطفا دوباره تلاش کنید', 'Masukkan data gagal. Sila cuba lagi', 'డేటా చొప్పించడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு செருக முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા શામેલ નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wstawić danych. Proszę spróbuj ponownie', 'Вставка даних не вдалося. Будь ласка спробуйте ще раз', 'ਡੇਟਾ ਡ੍ਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Introducerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုထည့်သွင်းမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Asun faili ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Saka bayanai ya kasa. Da fatan a sake gwadawa'),
(20, 'update_success', 'Data updated successfully', 'ডেটা সফলভাবে আপডেট করা হয়েছে', 'Datos actualizados con éxito', 'تم تحديث البيانات بنجاح', 'डेटा सफलतापूर्वक अपडेट किया गया', 'ڈیٹا کامیابی سے اپ ڈیٹ کیا', '数据已成功更新', 'データが正常に更新された', 'Dados atualizados com sucesso', 'Обновлены данные', 'Data updated successfully', '데이터가 성공적으로 업데이트되었습니다..', 'Daten wurden erfolgreich aktualisiert', 'Dati aggiornati con successo', 'อัปเดตข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen frissültek', 'Gegevens zijn succesvol bijgewerkt', 'Updated notitia feliciter', 'Data berhasil diperbarui', 'Veri başarıyla güncellendiVeri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Τα δεδομένα ενημερώθηκαν με επιτυχία', 'داده ها با موفقیت به روز شد', 'Data dikemas kini berjaya', 'డేటా విజయవంతంగా నవీకరించబడింది', 'தரவு வெற்றிகரமாக புதுப்பிக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક અપડેટ થયો છે', 'Data zaktualizowana pomyślnie', 'Дані оновлено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਅਪਡੇਟ ਕੀਤਾ ਗਿਆ', 'Datele au fost actualizate cu succes', 'ဒေတာကိုအောင်မြင်စွာ updated', 'Ti ṣe imudojuiwọn imudojuiwọn ni ifijišẹ', 'An sabunta bayanan da aka sabunta'),
(21, 'update_failed', 'Data update failed. Please try again', 'তথ্য আপডেট ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La actualización de datos falló. Inténtalo de nuevo', 'فشل تحديث البيانات. حاول مرة اخرى', 'डेटा अपडेट विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا اپ ڈیٹ ناکام ہوگیا. دوبارہ کوشش کریں', '数据更新失败。 请再试一次', 'データの更新に失敗しました。 もう一度お試しください', 'A atualização de dados falhou. Por favor, tente novamente', 'Ошибка обновления данных. Пожалуйста, попробуйте еще раз', 'La mise à jour des données a Veuillez réessayer', '데이터 업데이트에 실패했습니다. 다시 시도하십시오.', 'Datenaktualisierung fehlgeschlagen. Bitte versuche es erneut', 'Aggiornamento dati fallito. Per favore riprova', 'การอัปเดตข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatfrissítés nem sikerült. Kérlek próbáld újra', 'Gegevensupdate mislukt. Probeer het opnieuw', 'Data update defecit. Quaero, iterum conare', 'Pembaruan data gagal Silahkan coba lagi', 'Veri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Η ενημέρωση δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'به روز رسانی داده خراب شد لطفا دوباره تلاش کنید', 'Kemas kini data gagal. Sila cuba lagi', 'డేటా నవీకరణ విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு புதுப்பிப்பு தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા અપડેટ નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Aktualizacja danych nie powiodła się. Proszę spróbuj ponownie', 'Не вдалося оновити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਅਪਡੇਟ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Actualizarea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကို update ကိုမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Imudara data ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Rashin bayanin bayanai ya kasa. Da fatan a sake gwadawa'),
(22, 'delete_success', 'Data deleted successully', 'ডেটা সফলভাবে মোছা হয়েছে', 'Datos borrados con éxito', 'تم حذف البيانات بنجاح', 'डाटा सफलतापूर्वक हटा दिया गया', 'ڈیٹا کامیابی سے خارج ہوگئی ہے', '数据删除成功', 'データが正常に削除された', 'Dados eliminados com sucesso', 'Удалены данные', 'DonnéDonnées supprimées avec succès', '데이터가 성공적으로 삭제되었습니다.', 'Daten wurden erfolgreich gelöscht', 'Dati cancellati con successo', 'ลบข้อมูลสำเร็จแล้ว', 'Az adatok sikeresen törölve', 'Gegevens zijn met succes verwijderd', 'Data delevit feliciter', 'Data berhasil dihapus', 'Veri başarıyla silindi', 'Τα δεδομένα διαγράφηκαν με επιτυχία', 'داده ها با موفقیت حذف شدند', 'Data berjaya dipadam', 'డేటా విజయవంతంగా తొలగించబడింది', 'தரவு வெற்றிகரமாக நீக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક કાઢી નાખ્યો', 'Dane zostały pomyślnie usunięte', 'Дані видалено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ', 'Datele au fost șterse cu succes', 'အောင်မြင်စွာဖျက်ပစ်ဒေတာများ', 'Paarẹ ti paarẹ ni ifijišẹ', 'Bayanan da aka share nasarar'),
(23, 'delete_failed', 'Data delete failed. Please try again', 'ডেটা মুছে ফেলতে ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La eliminación de datos falló. Inténtalo de nuevo', 'أخفق حذف البيانات. حاول مرة اخرى', 'डेटा को विफल करना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا ناکام ہوگیا. دوبارہ کوشش کریں', '数据删除失败。 请再试一次', 'データの削除に失敗しました。 もう一度お試しください', 'A exclusão de dados falhou. Por favor, tente novamente', 'Ошибка удаления данных. Пожалуйста, попробуйте еще раз', 'La suppression des données a échoué. Veuillez réessayer', '데이터를 삭제하지 못했습니다. 다시 시도하십시오.', 'Daten löschen fehlgeschlagen. Bitte versuche es erneut', 'Cancellazione dei dati fallita. Per favore riprova', 'การลบข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adat törlése nem sikerült. Kérlek próbáld újra', 'Gegevens verwijderen mislukt. Probeer het opnieuw', 'Delete notitia defuit. Quaero, iterum conare', 'Penghapusan data gagal Silahkan coba lagi', 'Veri silinemedi. Lütfen tekrar deneyin', 'Η διαγραφή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'داده حذف شد لطفا دوباره تلاش کنید', 'Pemadaman data gagal. Sila cuba lagi', 'డేటా తొలగింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு நீக்கம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા કાઢી નાખવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Usuwanie danych nie powiodło się. Proszę spróbuj ponownie', 'Не вдалося видалити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਮਿਟਾਉਣਾ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Ștergerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုမအောင်မြင်ပါဖျက်ပစ်ပါမည်။ ထပ်ကြိုးစားပါ', 'Pipadanu data pa. Jọwọ gbiyanju lẹẹkansi', 'Kuskuren bayanai ya kasa. Da fatan a sake gwadawa'),
(24, 'sl_no', '#SL', 'ক্রমিক', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '# એસએલ', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL'),
(25, 'find', 'Find', 'খোঁজ করুন', 'Encontrar', 'تجد', 'खोज', 'مل', '找', '検索', 'Encontrar', 'найти', 'Trouver', '발견', 'Finden', 'Trova', 'หา', 'megtalálja', 'Vind', 'Find', 'Menemukan', 'bulmak', 'Εύρημα', 'پیدا کردن', 'Cari', 'కనుగొనండి', 'கண்டுபிடிக்க', 'શોધવા', 'Odnaleźć', 'Знайдіть', 'ਲੱਭੋ', 'Găsi', 'ရှာတွေ့', 'Wa', 'Nemo'),
(26, 'quick_link', 'Quick Link', 'সরাসরি লিঙ্ক', 'Enlace rápido', 'رابط سريع', 'त्वरित लिंक', 'فوری لنک', '快速链接', 'クイックリンク', 'Link rápido', 'Прямая ссылка', 'Lien rapide', '빠른 링크', 'Schneller Link', 'Collegamento veloce', 'ลิงก์ด่วน', 'Gyors link', 'Snelle link', 'Velox Link', 'Tautan Cepat', 'Hızlı link', 'Γρήγορη σύνδεση', 'اتصال سریع', 'Pautan Cepat', 'త్వరిత లింక్', 'விரைவு இணைப்பு', 'ક્વિક લિંક', 'Szybki link', 'Швидка посилання', 'ਤੁਰੰਤ ਲਿੰਕ', 'Legătură rapidă', 'quick Link ကို', 'Ọna asopọ kiakia', 'Quick Link'),
(27, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'डैशबोर्ड', 'ڈیش بورڈ', '仪表板', 'ダッシュボード', 'painel de controle', 'Панель приборов', 'tableau de bord', '데이터를 삭제하지 못했계기반', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'Irányítópult', 'Dashboard', 'ashboardday', 'Dasbor', 'gösterge paneli', 'Ταμπλό', 'داشبورد', 'Papan Pemuka', 'డాష్బోర్డ్', 'டாஷ்போர்டு', 'ડેશબોર્ડ', 'Deska rozdzielcza', 'Панель приладів', 'ਡੈਸ਼ਬੋਰਡ', 'Bord', 'dashboard ကို', 'Dasibodu', 'Dashboard'),
(28, 'list', 'List', 'তালিকা', 'Lista', 'قائمة', 'सूची', 'فہرست', '名单', 'リスト', 'Lista', 'Список', 'liste', '명부', 'Liste', 'Elenco', 'รายการ', 'Lista', 'Lijst', 'album', 'Daftar', 'Liste', 'Λίστα', 'فهرست', 'Senarai', 'జాబితా', 'பட்டியல்', 'યાદી', 'Lista', 'Перелік', 'ਸੂਚੀ', 'Listă', 'စာရင်း', 'Akojọ', 'Jerin'),
(29, 'setting', 'Setting', 'সেটিংস', 'Ajuste', 'ضبط', 'सेटिंग', 'سیٹنگ', '设置', '設定', 'Configuração', 'настройка', 'Sélection', '환경', 'Rahmen', 'Ambientazione', 'การตั้งค่า', 'Beállítás', 'omgeving', 'Occasum', 'pengaturan', 'Ayar', 'Σύνθεση', 'تنظیمات', 'Menetapkan', 'సెట్టింగు', 'அமைப்பை', 'સેટિંગ', 'Oprawa', 'Налаштування', 'ਸੈਟਿੰਗ', 'reglaj', 'setting ကို', 'Eto', 'Saitin'),
(30, 'general', 'General', 'সাধারণ', 'General', 'جنرال لواء', 'सामान्य', 'جنرل', '一般', '一般', 'Geral', 'Генеральная', 'général', '일반', 'Allgemeines', 'Generale', 'ทั่วไป', 'Tábornok', 'Algemeen', 'Generalis', 'Umum', 'Genel', 'Γενικός', 'عمومی', 'Ketua', 'జనరల్', 'பொது', 'જનરલ', 'Generał', 'Генерал', 'ਜਨਰਲ', 'General', 'ယေဘုယျ', 'Gbogbogbo', 'Janar'),
(31, 'payment', 'Payment', 'পেমেন্ট', 'Pago', 'دفع', 'भुगतान', 'ادائیگی', '付款', '支払い', 'Forma de pagamento', 'Оплата', 'Paiement', '지불', 'Zahlung', 'Pagamento', 'การชำระเงิน', 'Fizetés', 'Betaling', 'Payment', 'Pembayaran', 'Ödeme', 'Πληρωμή', 'پرداخت', 'Pembayaran', 'చెల్లింపు', 'கொடுப்பனவு', 'ચુકવણી', 'Zapłata', 'Оплата', 'ਭੁਗਤਾਨ', 'Plată', 'ငွေပေးချေမှုရမည့်', 'Isanwo', 'Biyan kuɗi'),
(32, 'theme', 'Theme', 'থিম', 'Tema', 'موضوع', 'विषय', 'خیالیہ', '主题', 'テーマ', 'Tema', 'тема', 'thème', '테마', 'Thema', 'Tema', 'กระทู้', 'Téma', 'Thema', 'theme', 'Tema', 'Tema', 'Θέμα', 'موضوع', 'Tema', 'థీమ్', 'தீம்', 'થીમ', 'Motyw', 'Тема', 'ਥੀਮ', 'Temă', 'အကွောငျး', 'Akori', 'Jigo'),
(33, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'भाषा', 'زبان', '语言', '言語', 'Língua', 'язык', 'La langue', '언어', 'Sprache', 'linguaggio', 'ภาษา', 'Nyelv', 'Taal', 'Lingua', 'Bahasa', 'Dil', 'Γλώσσα', 'زبان', 'Bahasa', 'భాషా', 'மொழி', 'ભાષા', 'Język', 'Мова', 'ਭਾਸ਼ਾ', 'Limba', 'ဘာသာစကား', 'Ede', 'Harshe'),
(34, 'administrator', 'Administrator', 'প্রশাসক', 'Administrador', 'مدير', 'प्रशासक', 'منتظم', '管理员', '管理者', 'Administrador', 'администратор', 'administrateur', '관리자', 'Administrator', 'Amministratore', 'ผู้บริหาร', 'Adminisztrátor', 'Beheerder', 'administrator', 'Administrator', 'yönetici', 'Διαχειριστής', 'مدیر', 'Pentadbir', 'నిర్వాహకుడు', 'நிர்வாகி', 'સંચાલક', 'Administrator', 'Адміністратор', 'ਪ੍ਰਬੰਧਕ', 'Administrator', 'အုပ်ချုပ်သူ', 'IT', 'Mai gudanarwa'),
(35, 'academic_year', 'Academic Year', 'শিক্ষাবর্ষ', 'Año académico', 'السنة الأكاديمية', 'शैक्षणिक वर्ष', 'تعلیمی سال', '学年', '学年', 'Ano acadêmico', 'Академический год', 'Année académique', '학년', 'Akademisches Jahr', 'Anno accademico', 'ปีการศึกษา', 'Tanév', 'Academiejaar', 'anno academic', 'Tahun akademik', 'Akademik yıl', 'Ακαδημαϊκό έτος', 'سال تحصیلی', 'Tahun akademik', 'విద్యా సంవత్సరం', 'கல்வி ஆண்டில்', 'શૈક્ષણીક વર્ષ', 'Rok akademicki', 'Навчальний рік', 'ਅਕਾਦਮਿਕ ਸਾਲ', 'An academic', 'စာသင်နှစ်', 'Akẹkọ Ọdún', 'Makarantar Kwalejin'),
(36, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستعمل', 'उपयोगकर्ता', 'صارف', '用户', 'ユーザー', 'Do utilizador', 'пользователь', 'Utilisateur', '사용자', 'Benutzer', 'Utente', 'ผู้ใช้งาน', 'használó', 'Gebruiker', 'User', 'Pengguna', 'kullanıcı', 'Χρήστης', 'کاربر', 'Pengguna', 'వాడుకరి', 'பயனர்', 'વપરાશકર્તા', 'Użytkownik', 'Користувач', 'ਯੂਜ਼ਰ', 'Utilizator', 'အသုံးပြုသူကို', 'Olumulo', 'Mai amfani'),
(37, 'role', 'Role', 'ভূমিকা', 'Papel', 'وظيفة', 'भूमिका', 'کردار', '角色', '役割', 'Função', 'Роль', 'Rôle', '역할', 'Rolle', 'Ruolo', 'บทบาท', 'Szerep', 'Rol', 'partes', 'Peran', 'rol', 'Ρόλος', 'نقش', 'Peranan', 'పాత్ర', 'பங்கு', 'ભૂમિકા', 'Rola', 'Роль', 'ਭੂਮਿਕਾ', 'Rol', 'အခန်းက္ပ', 'Ipa', 'Matsayi'),
(38, 'user_role', 'User Role', 'ব্যবহারকারীর ভূমিকা', 'Rol del usuario', 'دور المستخدم', 'उपयोगकर्ता भूमिका', 'صارف کردار', '用户角色', 'ユーザーロール', 'Papel do usuário', 'Роль пользователя', 'Rôle d''utilisateur', '사용자 역할', 'Benutzer-Rolle', 'Ruolo utente', 'บทบาทผู้ใช้', 'Felhasználói szerepkör', 'Gebruikersrol', 'User Partes', 'Peran pengguna', 'Kullanıcı rolü', 'Ρόλος χρήστη', 'نقش کاربر', 'Peranan Pengguna', 'వాడుకరి పాత్ర', 'பயனர் பங்கு', 'વપરાશકર્તા ભૂમિકા', 'Rola użytkownika', 'Роль користувача', 'ਯੂਜ਼ਰ ਭੂਮਿਕਾ', 'Rolul utilizatorului', 'အသုံးပြုသူအခန်းက္ပ', 'Išẹ Olumulo', 'Mai amfani'),
(39, 'role_permission', 'Role Permission', 'ভূমিকা অনুমতি', 'Permiso de función', 'إذن الدور', 'भूमिका अनुमति', 'کردار کی اجازت', '角色权限', '役割の許可', 'Permissão de papel', 'Ролевое разрешение', 'Permission de rôle', '역할 권한', 'Rollenberechtigungen', 'Permesso di ruolo', 'การอนุญาตบทบาท', 'Szerepengedély', 'Roltoestemming', 'Licet munus', 'Perizinan Peran', 'Rol İzni', 'Άδεια ρόλου', 'نقش مجاز', 'Kebenaran Peranan', 'పాత్ర అనుమతి', 'பங்கு அனுமதி', 'ભૂમિકા પરવાનગી', 'Zezwolenie na role', 'Ролевий дозвіл', 'ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ', 'Permisiune pentru roluri', 'အခန်းက္ပခွင့်ပြုချက်', 'Igbese ipa', 'Yarjejeniyar aiki'),
(40, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট', 'Restablecer la contraseña', 'إعادة تعيين كلمة المرور', 'पासवर्ड रीसेट', 'پاس ورڈ ری سیٹ', '重设密码', 'パスワードを再設定する', 'Redefinir Senha', 'Сброс пароля', 'réinitialiser le mot de passe', '암호를 재설정', 'Passwort zurücksetzen', 'Resetta la password', 'รีเซ็ตรหัสผ่าน', 'Jelszó visszaállítása', 'Reset wachtwoord', 'Reset password', 'Reset Password', 'Şifreyi yenile', 'Επαναφέρετε τον κωδικό πρόσβασης', 'بازنشانی گذرواژه', 'Menetapkan semula kata laluan', 'రహస్యపదాన్ని మార్చుకోండి', 'கடவுச்சொல்லை மீட்டமைக்க', 'પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło', 'Скинути пароль', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Reseteaza parola', 'လျှို့ဝှတ်နံပါတ်အားမူလအတိုင်းပြန်လုပ်သည်', 'Atunwo Ọrọigbaniwọle', 'Sake saita kalmar sirri'),
(41, 'reset_user_password', 'Reset User Password', 'ব্যবহারকারী পাসওয়ার্ড রিসেট', 'Restablecer contraseña de usuario', 'إعادة تعيين كلمة مرور المستخدم', 'उपयोगकर्ता पासवर्ड रीसेट करें', 'صارف کا پاس ورڈ ری سیٹ کریں', '重置用户密码', 'ユーザパスワードをリセットする', 'Redefinir Senha do Usuário', 'Сбросить пароль пользователя', 'Réinitialiser mot de passe', '사용자 암호 재설정', 'Benutzerpasswort zurücksetzen', 'Reimposta password utente', 'รีเซ็ตรหัสผ่านผู้ใช้', 'Felhasználói jelszó visszaállítása', 'Reset gebruikerswachtwoord', 'User Password Reset', 'Reset Password Pengguna', 'Kullanıcı Parolasını Sıfırla', 'Επαναφορά κωδικού χρήστη', 'تنظیم مجدد رمز عبور کاربر', 'Tetapkan semula Kata Laluan Pengguna', 'యూజర్ పాస్వర్డ్ను రీసెట్ చేయండి', 'பயனர் கடவுச்சொல்லை மீட்டமைக்கவும்', 'વપરાશકર્તા પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło użytkownika', 'Скинути пароль користувача', 'ਯੂਜ਼ਰ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Resetați parola de utilizator', 'အသုံးပြုသူ Password ကို Reset', 'Atunto Ọrọ Olumulo Titun', 'Sake saitin Kalmar Mai amfani'),
(42, 'backup', 'Backup', 'ব্যাকআপ', 'Apoyo', 'دعم', 'बैकअप', 'بیک اپ', '备用', 'バックアップ', 'Cópia de segurança', 'Резервное копирование', 'Sauvegarde', '지원', 'Backup', 'di riserva', 'การสำรองข้อมูล', 'biztonsági mentés', 'backup', 'tergum', 'Backup', 'yedek', 'Αντιγράφων ασφαλείας', 'پشتیبان گیری', 'Sandaran', 'బ్యాకప్', 'காப்பு', 'બેકઅપ', 'Utworzyć kopię zapasową', 'Резервне копіювання', 'ਬੈਕਅਪ', 'Backup', 'Backup ကို', 'Afẹyinti', 'Ajiyayyen'),
(43, 'human_resource', 'Human Resource', 'মানব সম্পদ', 'Recursos humanos', 'الموارد البشرية', 'मानव संसाधन', 'انسانی وسائل', '人力资源', '人的資源', 'Recursos humanos', 'Человеческие ресурсы', 'Ressource humaine', '인적 자원', 'Personal', 'Risorse umane', 'ทรัพยากรบุคคล', 'Emberi erőforrás', 'Human Resource', 'Humanum Resource', 'Sumber daya manusia', 'İnsan kaynakları', 'Ανθρώπινο δυναμικό', 'منابع انسانی', 'Sumber Manusia', 'మానవ వనరుల', 'மனித வளம்', 'માનવ સંસાધન', 'Zasoby ludzkie', 'Людський ресурс', 'ਮਾਨਵ ਸੰਸਾਧਨ', 'Resurse umane', 'လူ့စွမ်းအားအရင်းအမြစ်', 'Eda eniyan', 'Human Resource'),
(44, 'designation', 'Designation', 'পদবি', 'Designacion', 'تعيين', 'पद', 'عہدہ', '指定', '指定', 'Designação', 'обозначение', 'La désignation', '지정', 'Bezeichnung', 'Designazione', 'การแต่งตั้ง', 'Kijelölés', 'Aanwijzing', 'designatio', 'Penunjukan', 'tayin', 'Ονομασία', 'تعیین', 'Jawatan', 'హోదా', 'பதவி', 'હોદ્દો', 'Przeznaczenie', 'Позначення', 'ਅਹੁਦਾ', 'Desemnare', 'သတ်မှတ်ရေး', 'Ipilẹṣẹ', 'Dama'),
(45, 'employee', 'Employee', 'কর্মচারী', 'Empleado', 'موظف', 'कर्मचारी', 'ملازم', '雇员', '従業員', 'Empregado', 'Наемный рабочий', 'Employé', '종업원', 'Mitarbeiter', 'Dipendente', 'ลูกจ้าง', 'Munkavállaló', 'Werknemer', 'Aliquam', 'Karyawan', 'işçi', 'Υπάλληλος', 'کارمند', 'Pekerja', 'ఉద్యోగి', 'பணியாளர்', 'કર્મચારી', 'Pracownik', 'Працівник', 'ਕਰਮਚਾਰੀ', 'Angajat', 'လုပ်သား', 'Abáni', 'Ma''aikaci'),
(46, 'teacher', 'Teacher', 'শিক্ষক', 'Profesor', 'مدرس', 'अध्यापक', 'استاد', '老师', '先生', 'Professor', 'учитель', 'Prof', '선생', 'Lehrer', 'Insegnante', 'ครู', 'Tanár', 'Leraar', 'magister', 'Guru', 'Öğretmen', 'Δάσκαλος', 'معلم', 'Guru', 'టీచర్', 'ஆசிரியர்', 'શિક્ષક', 'Nauczyciel', 'Вчитель', 'ਟੀਚਰ', 'Profesor', 'ဆရာမ', 'Olùkọ', 'Malam'),
(47, 'class', 'Class', 'শ্রেণী', 'Clase', 'صف دراسي', 'कक्षा', 'کلاس', '类', 'クラス', 'Classe', 'Класс', 'Classe', '수업', 'Klasse', 'Classe', 'ชั้น', 'Osztály', 'Klasse', 'genus', 'Kelas', 'Sınıf', 'Τάξη', 'کلاس', 'Kelas', 'క్లాస్', 'வர்க்கம்', 'વર્ગ', 'Klasa', 'Клас', 'ਕਲਾਸ', 'Clasă', 'အတန်းအစား', 'Kilasi', 'Class'),
(48, 'section', 'Section', 'শাখা', 'Sección', 'الجزء', 'अनुभाग', 'سیکشن', '部分', 'セクション', 'Seção', 'Раздел', 'Section', '섹션', 'Sektion', 'Sezione', 'มาตรา', 'Szakasz', 'Sectie', 'sectioni', 'Bagian', 'Bölüm', 'Ενότητα', 'بخش D', 'Seksyen', 'విభాగం', 'பிரிவு', 'વિભાગ', 'Sekcja', 'Розділ', 'ਅਨੁਭਾਗ', 'Secțiune', 'အပိုင်း', 'Abala', 'Sashi'),
(49, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'विषय', 'مضمون', '学科', '件名', 'Subject', 'Предмет', 'assujettir', '제목', 'Gegenstand', ' Soggetto', 'เรื่อง', 'Tantárgy', 'Onderwerpen', 'subject', 'Subyek', 'konu', 'Θέμα', 'موضوع', 'Subjek', 'విషయం', 'பொருள்', 'વિષય', 'Przedmiot', 'Тема', 'ਵਿਸ਼ਾ', 'Subiect', 'ဘာသာရပ်', 'Koko-ọrọ', 'Subject'),
(50, 'syllabus', 'Syllabus', 'পাঠ্যক্রম', 'Silaba', 'المنهج', 'पाठ्यक्रम', 'نصاب', '教学大纲', 'シラバス', 'Programa de Estudos', 'Учебный план', 'Programme', '강의 계획서', 'Lehrplan', 'Programma', 'หลักสูตร', 'Tanmenet', 'Syllabus', 'Syllabus', 'Silabus', 'Müfredat', 'Περίληψη', 'سرفصل دروس', 'Silibus', 'సిలబస్', 'பாடத்திட்டங்கள்', 'અભ્યાસક્રમ', 'Konspekt', 'Силабус', 'ਸਿਲੇਬਸ', 'Silabă', 'သင်ရိုးညွှန်းတမ်း', 'Syllabus', 'Syllabus'),
(51, 'routine', 'Routine', 'রূটিন', 'Rutina', 'نمط', 'सामान्य', 'معمول', '常规', 'ルーチン', 'Rotina', 'рутинный', 'Routine', '루틴', 'Routine', 'Routine', 'กิจวัตรประจำวัน', 'Rutin', 'Routine', 'exercitatione', 'Rutin', 'Rutin', 'Ρουτίνα', 'معمولی', 'Rutin', 'రొటీన్', 'வழக்கமான', 'નિયમિત', 'Rutyna', 'Звичайний', 'ਰੁਟੀਨ', 'Rutină', 'လုပ်ရိုးလုပ်စဉ်', 'Ilana', 'Gyara'),
(52, 'guardian', 'Guardian', 'অভিভাবক', 'guardián', 'وصي', 'अभिभावक', 'سرپرست', '监护人', 'ガーディアン', 'Guardião', 'блюститель', 'Gardien', '보호자', 'Wächter', 'Custode', 'ผู้ปกครอง', 'Gyám', 'Voogd', 'custos', 'Wali', 'Gardiyan', 'Κηδεμόνας', 'نگهبان', 'Guardian', 'సంరక్షకుడు', 'கார்டியன்', 'ગાર્ડિયન', 'Opiekun', 'Опікун', 'ਗਾਰਡੀਅਨ', 'paznic', 'ဂေါကလူကြီး', 'Oluṣọ', 'Guardian'),
(53, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'छात्र', 'طالب علم', '学生', '学生', 'Aluna', 'Студент', 'Étudiant', '학생', 'Schüler', 'Alunno', 'นักเรียน', 'Diák', 'Student', 'Discipulus', 'Mahasiswa', 'Öğrenci', 'Μαθητης σχολειου', 'دانشجو', 'Pelajar', 'విద్యార్థి', 'மாணவர்', 'વિદ્યાર્થી', 'Student', 'Студентка', 'ਵਿਦਿਆਰਥੀ', 'Student', 'ကြောငျးသား', 'Ọmọ-iwe', 'Student'),
(54, 'admit', 'Admit', 'ভর্তি', 'Admitir', 'يعترف', 'स्वीकार करना', 'تسلیم', '承认', '認める', 'Admitem', 'Признавать', 'Admettre', '들이다', 'Eingestehen', 'Ammettere', 'ยอมรับ', 'Beismerni', 'Toegeven', 'fateri', 'Mengakui', 'Kabul et', 'Ομολογώ', 'اقرار کردن', 'Mengaku', 'ఒప్పుకుంటే', 'ஒப்புக்கொள்ள', 'સ્વીકાર્યું', 'Przyznać', 'Приймати', 'ਸਵੀਕਾਰ ਕਰੋ', 'admite', 'ဖွောငျ့ဆို', 'Gba', 'Shiga'),
(55, 'attendance', 'Attendance', 'উপস্থিতি', 'Asistencia', 'الحضور', 'उपस्थिति', 'حاضری', '勤', '出席', 'Comparecimento', 'посещаемость', 'Présence', '출석', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'Részvétel', 'opkomst', 'attendance', 'Kehadiran', 'katılım', 'Παρουσία', 'حضور', 'Kehadiran', 'హాజరు', 'வருகை', 'હાજરી', 'Frekwencja', 'Відвідуваність', 'ਹਾਜ਼ਰੀ', 'prezență', 'တက်ရောက်သူ', 'Wiwa', 'Ziyarci'),
(56, 'assignment', 'Assignment', 'এসাইনমেন্ট', 'Asignación', 'مهمة', 'असाइनमेंट', 'تفویض', '分配', '割り当て', 'Tarefa', 'присваивание', 'Affectation', '할당', 'Zuordnung', 'assegnazione', 'การมอบหมาย', 'Feladat', 'toewijzing', 'assignment', 'Tugas', 'atama', 'ΑΝΑΘΕΣΗ ΕΡΓΑΣΙΑΣ', 'وظیفه', 'tugasan', 'అసైన్మెంట్', 'வேலையை', 'સોંપણી', 'Zadanie', 'Назначення', 'ਅਸਾਈਨਮੈਂਟ', 'Misiune', 'တာဝန်ကျတဲ့နေရာ', 'Ifiranṣẹ', 'Matsayi'),
(57, 'submission', 'Submission', 'সাব্মিশন', 'Sumisión', 'تسليم', 'प्रस्तुत करने', 'جمع کرانے', '服从', '提出', 'Submissão', 'представление', 'Soumission', '제출', 'Einreichung', 'Sottomissione', 'ส่ง', 'Benyújtás', 'Voorlegging', 'submission', 'pengajuan', 'boyun eğme', 'Υποβολή', 'ارسال', 'Penyerahan', 'సమర్పణ', 'சமர்ப்பிக்கும்', 'રજૂઆત', 'Uległość', 'Подання', 'ਸਬਮਿਸ਼ਨ', 'supunere', 'နားထောင်ခြင်း', 'Iwawe', 'Shiga'),
(58, 'exam', 'Exam', 'পরীক্ষা', 'Examen', 'امتحان', 'परीक्षा', 'امتحان', '考试', '試験', 'Exame', 'Экзамен', 'Examen', '시험', 'Prüfung', 'Esame', 'การสอบ', 'Vizsga', 'tentamen', 'nito', 'Ujian', 'sınav', 'Εξέταση', 'امتحان', 'Peperiksaan', 'పరీక్షా', 'தேர்வு', 'પરીક્ષા', 'Egzamin', 'Іспит', 'ਪ੍ਰੀਖਿਆ', 'Examen', 'စာမေးပွဲ', 'Idanwo', 'Binciken'),
(59, 'exam_grade', 'Exam Grade', 'পরীক্ষার গ্রেড', 'Examen de grado', 'امتحان الصف', 'परीक्षा ग्रेड', 'امتحان گریڈ', '考试成绩', '試験グレード', 'Nota da prova', 'Экзамен', 'Grade d''examen', '시험 성적', 'Prüfungsnote', 'Voto d''esame', 'ระดับการสอบ', 'Vizsga fokozat', 'Examencijfer', 'Romani nito', 'Kelas ujian', 'Sınav Notu', 'Βαθμό εξετάσεων', 'درجه آزمون', 'Gred Peperiksaan', 'పరీక్ష గ్రేడ్', 'தேர்வு தரம்', 'પરીક્ષા ગ્રેડ', 'Stopień egzaminu', 'Ступінь іспиту', 'ਐਜੂਕੇਸ਼ਨ ਗ੍ਰੇਡ', 'Gradul de examen', 'စာမေးပွဲအဆင့်', 'Ayẹwo Ipele', 'Binciken Nazari'),
(60, 'exam_term', 'Exam Term', 'পরীক্ষা টার্ম', 'Plazo del examen', 'مدة الامتحان', 'परीक्षा की अवधि', 'امتحان کی مدت', '考试期限', '試験期間', 'Termo do Exame', 'Срок действия экзамена', 'Terme d''examen', '시험 기간', 'Prüfungsdauer', 'Termine d''esame', 'เงื่อนไขการสอบ', 'Vizsgaidőszak', 'Examen termijn', 'Term nito', 'Ujian Term', 'Sınav Terimi', 'Όρος Εξέτασης', 'شرایط آزمون', 'Tempoh Peperiksaan', 'పరీక్షా టర్మ్', 'தேர்வு கால', 'પરીક્ષાની મુદત', 'Okres egzaminacyjny', 'Термін екзамену', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ', 'Termen de examinare', 'စာမေးပွဲ Term', 'Ayewo Aago', 'Tambaya'),
(61, 'schedule', 'Schedule', 'সময়সূচী', 'Programar', 'جدول', 'अनुसूची', 'شیڈول', '时间表', 'スケジュール', 'Cronograma', 'График', 'Programme', '시간표', 'Zeitplan', 'Programma', 'ตารางเวลา', 'Menetrend', 'Planning', 'schedule', 'Susunan acara', 'program', 'Πρόγραμμα', 'برنامه', 'Jadual', 'షెడ్యూల్', 'அட்டவணை', 'સૂચિ', 'Harmonogram', 'Розклад', 'ਸਮਾਸੂਚੀ, ਕਾਰਜ - ਕ੍ਰਮ', 'Programa', 'ဇယား', 'Iṣeto', 'Jadawalin'),
(62, 'suggestion', 'Suggestion', 'সাজেশন', 'Sugerencia', 'اقتراح', 'सुझाव', 'مشورہ', '建议', '提案', 'Sugestão', 'Предложение', 'Suggestion', '암시', 'Vorschlag', 'Suggerimento', 'ข้อเสนอแนะ', 'Javaslat', 'Suggestie', 'suggestion', 'Saran', 'Öneri', 'Πρόταση', 'پیشنهادی', 'Cadangan', 'సూచన', 'பரிந்துரை', 'સૂચન', 'Sugestia', 'Пропозиція', 'ਸੁਝਾਅ', 'Sugestie', 'အကြံပေးချက်', 'Abajade', 'Shawarwarin'),
(63, 'exam_mark', 'Exam Mark', 'পরীক্ষা মার্ক', 'Marca de examen', 'علامة الامتحان', 'परीक्षा चिन्ह', 'امتحان مارک', '考试标志', '試験のマーク', 'Marca de exame', 'Экзамен Mark', 'Marque d''examen', '시험 마크', 'Prüfzeichen', 'Segno dell''esame', 'เครื่องหมายการสอบ', 'Vizsga Mark', 'Examenmarkering', 'Mark nito', 'Tanda ujian', 'Sınav işareti', 'Εξετάσεων Εξετάσεων', 'علامت امتحان', 'Ujian Mark', 'పరీక్ష మార్క్', 'தேர்வு மார்க்', 'પરીક્ષા માર્ક', 'Znak egzaminu', 'Екзаменаційний знак', 'ਐਜੂਕੇਸ਼ਨ ਮਾਰਕ', 'Exam Mark', 'စာမေးပွဲမာကု', 'Aami ayẹwo', 'Alamar Duba'),
(64, 'mark_sheet', 'Mark Sheet', 'নাম্বার শিট', 'Hoja de marca', 'علامة ورقة', 'अंक तालिका', 'مارک شیٹ', '标记表', 'マークシート', 'Marca Folha', 'Mark Sheet', 'Feuille de marque', '마크 시트', 'Markierungsblatt', 'Libretto universitario', 'ทำเครื่องหมายแผ่นงาน', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Lembar penilaian', 'Mark Levha', 'Φυλλάδιο απαντήσεων', 'برگه مارک', 'Mark Sheet', 'గణాంకాల పట్టి', 'மதிப்பீட்டு தாள்', 'માર્ક શીટ', 'Arkusz ocen', 'Марк Лист', 'ਮਾਰਕ ਸ਼ੀਟ', 'Marcați foaia', 'မာကုစာရွက်', 'Samisi iwe', 'Mark Sheet'),
(65, 'exam_final_result', 'Exam Final Result', 'পরীক্ষার ফাইনাল ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان کے حتمی نتیجہ', '考试最终结果', '試験最終結果', 'Resultado Final do Exame', 'Экзамен Окончательный результат', 'Résultat final de l''examen', '시험 최종 결과', 'Abschluss der Prüfung', 'Esame Risultato finale', 'ผลสอบปลายภาค', 'Vizsga végeredmény', 'Examen Eindresultaat', 'Nito captorum eventus superae', 'Hasil Ujian Akhir Ujian', 'Sınav Sonucu', 'Τελικό αποτέλεσμα εξέτασης', 'نتیجه نهایی آزمون', 'Keputusan Akhir Peperiksaan', 'పరీక్ష ఫలితం', 'தேர்வு இறுதி முடிவு', 'પરીક્ષા અંતિમ પરિણામ', 'Egzamin Wynik końcowy', 'Останній результат іспиту', 'ਪ੍ਰੀਖਿਆ ਅੰਤਿਮ ਨਤੀਜੇ', 'Examen Rezultat final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ipari ikẹhin', 'Binciken Ƙarshe na Ƙarshe'),
(66, 'result', 'Result', 'পরীক্ষার ফলাফল', 'Resultado', 'نتيجة', 'परिणाम', 'نتیجہ', '结果', '結果', 'Resultado', 'результат', 'Résultat', '결과', 'Ergebnis', 'Risultato', 'ผล', 'Eredmény', 'Resultaat', 'exitum', 'Hasil', 'Sonuç', 'Αποτέλεσμα', 'نتیجه', 'Keputusan', 'ఫలితం', 'விளைவாக', 'પરિણામ', 'Wynik', 'Результат', 'ਨਤੀਜਾ', 'Rezultat', 'ရလဒ်', 'Esi', 'Sakamako'),
(67, 'send', 'Send', 'প্রেরণ', 'Enviar', 'إرسال', 'भेजना', 'بھیجیں', '发送', '送信', 'Enviar', 'послать', 'Envoyer', '보내다', 'Senden', 'Inviare', 'ส่ง', 'Elküld', 'Sturen', 'Mitte', 'Kirim', 'göndermek', 'Στείλετε', 'ارسال', 'Hantar', 'పంపండి', 'அனுப்பு', 'મોકલો', 'Wysłać', 'Відправити', 'ਭੇਜੋ', 'Trimite', 'ပေးပို့', 'Firanṣẹ', 'Aika'),
(68, 'mark_send_by_sms', 'Mark send by SMS', 'মার্ক পাঠান এসএমএস দিয়ে', 'Marca enviar por SMS', 'علامة إرسال عن طريق الرسائل القصيرة', 'एसएमएस द्वारा भेजें भेजें', 'ایس ایم ایس کے ذریعہ بھیجیں', '标记通过短信发送', 'SMSでマークする', 'Marcar enviar por SMS', 'Отметить отправку по SMS', 'Mark envoyer par SMS', 'SMS로 보내기 표시', 'Markiere per SMS', 'Mark invia tramite SMS', 'ทำเครื่องหมายว่าส่งทาง SMS', 'Jelölje be SMS-ben', 'Markeer per sms', 'Mark a mittere SMS', 'Tandai kirim melalui SMS', 'SMS ile gönderiyi işaretle', 'Σημειώστε την αποστολή μέσω SMS', 'علامت گذاری به عنوان خوانده شده توسط SMS', 'Tandakan hantar melalui SMS', 'SMS ద్వారా మార్క్ పంపండి', 'SMS மூலம் அனுப்பவும்', 'એસએમએસ દ્વારા મોકલો માર્ક કરો', 'Oznacz, wyślij przez SMS', 'Марк відправити SMS', 'ਐਸਐਮਐਸ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcare trimite prin SMS', 'မာကုကို SMS ဖွငျ့ပေးပို့', 'Samisi firanṣẹ nipasẹ SMS', 'Alama aika ta SMS'),
(69, 'mark_send_by_email', 'Mark send by Email', 'মার্ক পাঠান ইমেইল দিয়ে', 'Marcar enviar por correo electrónico', 'علامة إرسال عن طريق البريد الإلكتروني', 'ईमेल द्वारा भेजें मार्क', 'ایس ایم ایس کے ذریعہ بھیجیں', '用电子邮件标记发送', '電子メールで送信する', 'Marcar enviar por e-mail', 'Марк отправить по электронной почте', 'Mark envoyer par Email', '전자 메일로 보내기 표시', 'Markiere per Email', 'Mark invia tramite e-mail', 'มาร์คส่งทางอีเมล', 'A feliratkozás e-mailben történik', 'Markeer per e-mail', 'Email a Mark mittere', 'Tandai kirim melalui Email', 'E-postayla gönder''i işaretle', 'Σημειώστε στείλτε με Email', 'علامت گذاری به عنوان ارسال از طریق ایمیل', 'Tandakan hantar melalui E-mel', 'ఇమెయిల్ ద్వారా మార్క్ పంపండి', 'மின்னஞ்சல் மூலம் அனுப்பவும்', 'ઇમેઇલ દ્વારા મોકલો માર્ક કરો', 'Zaznacz Wyślij przez e-mail', 'Позначити відправити по електронній пошті', 'ਈਮੇਲ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcați trimiteți prin e-mail', 'မာကုအီးမေးလ်ပေးပို့', 'Samisi firanṣẹ nipasẹ Imeeli', 'Alama aika ta Imel'),
(70, 'promotion', 'Promotion', 'প্রমোশন', 'Promoción', 'ترقية وظيفية', 'पदोन्नति', 'فروغ', '提升', 'プロモーション', 'Promoção', 'Продвижение', 'Promotion', '승진', 'Beförderung', 'Promozione', 'การส่งเสริม', 'promóció', 'Bevordering', 'promotio', 'Promosi', 'tanıtım', 'Προβολή', 'ترفیع', 'Promosi', 'ప్రమోషన్', 'பதவி உயர்வு', 'પ્રોત્સાહન', 'Awans', 'Просування', 'ਪ੍ਰੋਮੋਸ਼ਨ', 'Promovare', 'ရာထူးတိုးမြှင့်ပေးခြင်း', 'Igbega', 'Shawarwarin'),
(71, 'library', 'Library', 'গ্রন্থাগার', 'Biblioteca', 'مكتبة', 'पुस्तकालय', 'لائبریری', '图书馆', 'としょうかん', 'Biblioteca', 'Библиотека', 'Bibliothèque', '도서관', 'Bibliothek', 'Biblioteca', 'ห้องสมุด', 'Könyvtár', 'Bibliotheek', 'Bibliotheca', 'Perpustakaan', 'Kütüphane', 'Βιβλιοθήκη', 'کتابخانه', 'Perpustakaan', 'లైబ్రరీ', 'நூலகம்', 'પુસ્તકાલય', 'Biblioteka', 'Бібліотека', 'ਲਾਇਬ੍ਰੇਰੀ', 'Bibliotecă', 'စာကြည့်တိုက်', 'Iwadi', 'Library'),
(72, 'book', 'Book', 'বই', 'Libro', 'كتاب', 'किताब', 'کتاب', '书', '本', 'Livro', 'Книга', 'Livre', '도서', 'Buch', 'Libro', 'หนังสือ', 'Könyv', 'Boek', 'liber', 'Book', 'Kitap', 'Βιβλίο', 'کتاب', 'Buku', 'పుస్తకం', 'புத்தக', 'પુસ્તક', 'Książka', 'Книга', 'ਬੁੱਕ', 'Carte', 'စာအုပ်', 'Iwe', 'Littafin'),
(73, 'member', 'Member', 'সদস্য', 'Miembro', 'عضو', 'सदस्य', 'رکن', '会员', 'メンバー', 'Membro', 'член', 'Membre', '회원', 'Mitglied', 'Membro', 'สมาชิก', 'Tag', 'Lid', 'socius', 'Anggota', 'üye', 'Μέλος', 'عضو', 'Ahli', 'సభ్యుడు', 'உறுப்பினர்', 'સભ્ય', 'Członek', 'Член', 'ਸਦੱਸ', 'Membru', 'အဖှဲ့ဝငျ', 'Ẹgbẹ', 'Memba'),
(74, 'issue_and_return', 'Issue & Return', 'ইস্যু এবং রিটার্ন', 'Emisión y devolución', 'الإصدار والعودة', 'अंक और वापसी', 'مسئلہ اور واپسی', '问题和回报', '問題とリターン', 'Problema e retorno', 'Проблема и возврат', 'Emission et retour', '이슈와 리턴', 'Problem und Rückgabe', 'Problema e ritorno', 'การออกและการคืนสินค้า', 'Kiadás és visszatérés', 'Probleem en terugkeer', 'Et exitus Redi', 'Isu dan Kembali', 'Sayı ve İade', 'Έκδοση και επιστροφή', 'مسئله و بازگشت', 'Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్', 'வெளியீடு மற்றும் திரும்ப', 'ઇશ્યૂ અને રીટર્ન', 'Wydanie i zwrot', 'Проблема та повернення', 'ਇਸ਼ੂ ਅਤੇ ਵਾਪਸੀ', 'Eliberare și returnare', 'ပြဿနာများနှင့်ပြန်သွား', 'Oro ati Pada', 'Isar da Komawa'),
(75, 'issue', 'Issue', 'ইস্যু', 'Emisión y devolución...', 'القضية', 'मुद्दा', 'مسئلہ', '问题', '問題', 'Questão', 'вопрос', 'Problème', '발행물', 'Problem', 'Problema', 'ปัญหา', 'Probléma', 'Kwestie', 'exitus', 'Isu', 'Konu', 'Θέμα', 'موضوع', 'Isu', 'సమస్య', 'பிரச்சினை', 'મુદ્દો', 'Kwestia', 'Проблема', 'ਮੁੱਦੇ', 'Problema', 'ထုတ်ပြန်သည်', 'Oro naa', 'Matsalar'),
(76, 'return', 'Return', 'রিটার্ন করা হয়েছে', 'Regreso', 'إرجاع', 'वापसी', 'واپس لو', '返回', '戻る', 'Retorna', 'Вернуть', 'Revenir', '반환', 'Rückkehr', 'Ritorno', 'กลับ', 'Visszatérés', 'terugkeer', 'Redi', 'Kembali', 'Dönüş', 'ΕΠΙΣΤΡΟΦΗ', 'برگشت', 'Kembali', 'రిటర్న్', 'திரும்ப', 'પાછા આવો', 'Powrót', 'Повернення', 'ਵਾਪਸੀ', 'Întoarcere', 'ပြန်လာ', 'Pada', 'Komawa'),
(77, 'issue_date', 'Issue Date', 'ইস্যু তারিখ', 'Fecha de asunto', 'تاريخ الاصدار', 'जारी करने की तिथि', 'تاریخ اجراء', '发行日期', '発行日', 'Data de emissão', 'Дата выпуска', 'Date d''émission', '발행일', 'Ausgabedatum', 'Data di rilascio', 'วันที่ออก', 'Kiadás dátuma', 'Datum van publicatie', 'exitus Date', 'Tanggal pembuatan', 'Veriliş tarihi', 'Ημερομηνία έκδοσης', 'تاریخ انتشار', 'Tarikh Keluaran', 'జారి చేయు తేది', 'வெளியீட்டு தேதி', 'અંક તારીખ', 'Data wydania', 'Дата випуску', 'ਜਾਰੀ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data emiterii', 'ထုတ်ပြန်ရက်စွဲ', 'Ọjọ itẹjade', 'Isowar ranar'),
(78, 'due_date', 'Due Date', 'নির্দিষ্ট তারিখ', 'Fecha de vencimiento', 'تاريخ الاستحقاق', 'नियत तारीख', 'اخری تاریخ', '截止日期', '期日', 'Data de Vencimento', 'Срок', 'Date d''échéance', '마감일', 'Geburtstermin', 'Scadenza', 'Due Date', 'Esedékesség', 'Opleveringsdatum', 'ob Date', 'Batas tanggal terakhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ تحویل', 'Tarikh Gagal', 'గడువు తేది', 'தேதி தேதி', 'નિયત તારીખ', 'Termin płatności', 'Термін сплати', 'ਅਦਾਇਗੀ ਤਾਰੀਖ', 'Data scadentă', 'နောက်ဆုံးရက်', 'Asiko to ba to', 'Kwanan wata'),
(79, 'return_date', 'Return Date', 'রিটার্ন তারিখ', 'Fecha de regreso', 'تاريخ العودة', 'वापसी की तिथि', 'واپسی کی تاریخ', '归期', '返却日', 'Data de retorno', 'Дата возврата', 'Date de retour', '반환 기일', 'Rückflugdatum', 'Data di ritorno', 'วันที่กลับ', 'Visszatérítési dátum', 'Retourdatum', 'Redi Date', 'Tanggal pengembalian', 'Dönüş tarihi', 'Ημερομηνία επιστροφής', 'تاریخ بازگشت', 'Tarikh Pulang', 'తిరిగి వచ్చు తేదీ', 'திரும்ப தேதி', 'રીટર્ન તારીખ', 'Data powrotu', 'Дата повернення', 'ਵਾਪਸੀ ਦੀ ਤਾਰੀਖ', 'Data retur', 'သို့ပြန်သွားသည်နေ့စွဲ', 'Ọjọ pada', 'Ranar Koma'),
(80, 'new_issue', 'New Issue', 'নতুন ইস্যু', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا مسئلہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', 'ฉบับใหม่', 'Új probléma', 'Nieuw probleem', 'New issue', 'Isu Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'مسئله جدید', 'Isu Baru', 'కొత్త సంచిక', 'புதிய வெளியீடு', 'નવું અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮਸਲਾ', 'Problemă nouă', 'နယူး Issue', 'Oro tuntun', 'Sabon Tambaya'),
(81, 'transport', 'Transport', 'পরিবহন', 'Transporte', 'المواصلات', 'ट्रांसपोर्ट', 'نقل و حمل', '运输', '輸送', 'Transporte', 'Транспорт', 'Transport', '수송', 'Transport', 'Trasporto', 'ขนส่ง', 'Szállítás', 'Vervoer', 'onerariis', 'Mengangkut', 'taşıma', 'Μεταφορά', 'حمل و نقل', 'Pengangkutan', 'రవాణా', 'போக்குவரத்து', 'પરિવહન', 'Transport', 'Транспорт', 'ਟ੍ਰਾਂਸਪੋਰਟ', 'Transport', 'တင်ဆောင်', 'Ọkọ', 'Mota'),
(82, 'vehicle', 'Vehicle', 'গাড়ী', 'Transporte...', 'مركبة', 'वाहन', 'گاڑی', '车辆', '車両', 'Veículo', 'Средство передвижения', 'Véhicule', '차량', 'Fahrzeug', 'Veicolo', 'พาหนะ', 'Jármű', 'Voertuig', 'vehiculum', 'Kendaraan', 'araç', 'Οχημα', 'وسیله نقلیه', 'Kenderaan', 'వాహనం', 'வாகன', 'વાહન', 'Pojazd', 'Автомобіль', 'ਵਾਹਨ', 'Vehicul', 'ယာဉ်', 'Ọkọ', 'Mota'),
(83, 'transport_route', 'Transport Route', 'পরিবহন রাস্তা', 'Ruta de transporte', 'طريق النقل', 'परिवहन मार्ग', 'ٹرانسپورٹ کا راستہ', '运输路线', '輸送ルート', 'Rota dos transportes', 'Транспортный маршрут', 'Route de transport', '운송 경로', 'Transportweg', 'Itinerario di trasporto', 'เส้นทางคมนาคม', 'Szállítási útvonal', 'Transportroute', 'Iter itineris onerariam', 'Rute transportasi', 'Ulaşım Güzergahı', 'Διαδρομή μεταφοράς', 'مسیر حمل و نقل', 'Laluan Pengangkutan', 'రవాణా మార్గం', 'போக்குவரத்து பாதை', 'પરિવહન માર્ગ', 'Szlak transportowy', 'Транспортний маршрут', 'ਟ੍ਰਾਂਸਪੋਰਟ ਰੂਟ', 'Traseul de transport', 'ပို့ဆောင်ရေးလမ်းကြောင်း', 'Ọna itọsọna', 'Hanyar sufuri'),
(84, 'hostel', 'Hostel', 'ছাত্রাবাস', 'Hostal', 'نزل', 'छात्रावास', 'ہاسٹل', '宿舍', 'ホステル', 'Hostel', 'Хостел', 'Hôtel', '호스텔', 'Herberge', 'Ostello', 'ที่พัก', 'Diákszálló', 'Herberg', 'Hostel', 'Asrama', 'Pansiyon', 'Ξενοδοχείο', 'خوابگاه', 'Asrama', 'వసతిగృహం', 'விடுதி', 'છાત્રાલય', 'Schronisko', 'Хостел', 'ਹੋਸਟਲ', 'Hostel', 'ဘော်ဒါဆောင်', 'Agbegbe', 'Dakunan kwanan dalibai'),
(85, 'room', 'Room', 'কক্ষ', 'Habitación', 'مجال', 'कक्ष', 'کمرہ', '房间', 'ルーム', 'Quarto', 'Комната', 'Chambre', '방', 'Zimmer', 'Camera', 'ห้อง', 'Szoba', 'Kamer', 'locus', 'Kamar', 'oda', 'Δωμάτιο', 'اتاق', 'Bilik', 'గది', 'அறை', 'રૂમ', 'Pokój', 'Номер', 'ਕਮਰਾ', 'Cameră', 'အခန်း', 'Yara', 'Room'),
(86, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo'),
(87, 'mail_and_sms', 'Mail & SMS', 'ইমেইল ও এসএমএস', 'Correo y SMS', 'البريد والرسائل القصيرة', 'मेल और एसएमएस', 'میل اور ایس ایم ایس', '邮件和短信', 'メールとSMS', 'Correio e SMS', 'Почта и SMS', 'Mail et SMS', '메일 및 SMS', 'Mail & SMS', 'Mail e SMS', 'อีเมลและ SMS', 'Mail & SMS', 'Mail & SMS', 'Mail SMS &', 'Mail & SMS', 'Posta ve SMS', 'Mail και SMS', 'ایمیل و اس ام اس', 'Mail & SMS', 'మెయిల్ & SMS', 'அஞ்சல் & SMS', 'મેઇલ અને એસએમએસ', 'Poczta i SMS', 'Пошта та SMS', 'ਮੇਲ ਅਤੇ ਐਸਐਮਐਸ', 'Mail și SMS', 'မေးလ် & SMS ကို', 'Mail & SMS', 'Mail & SMS'),
(88, 'email', 'Email', 'ইমেইল', 'Email', 'البريد الإلكتروني', 'ईमेल', 'ای میل', '电子邮件', 'Eメール', 'O email', 'Эл. адрес', 'Email', '이메일', 'Email', 'E-mail', 'อีเมล์', 'Email', 'E-mail', 'Email', 'E-mail', 'E-posta', 'ΗΛΕΚΤΡΟΝΙΚΗ ΔΙΕΥΘΥΝΣΗ', 'پست الکترونیک', 'E-mel', 'ఇమెయిల్', 'மின்னஞ்சல்', 'ઇમેઇલ', 'E-mail', 'Електронна пошта', 'ਈ - ਮੇਲ', 'E-mail', 'အီးမေးလ်ပို့ရန်', 'Imeeli', 'Imel'),
(89, 'sms', 'SMS', 'এসএমএস', 'SMS', 'رسالة قصيرة', 'एसएमएस', 'پیغام', '短信', 'SMS', 'SMS', 'смс', 'SMS', 'SMS', 'SMS', 'sms', 'ข้อความ', 'SMS', 'sms', 'SMS', 'SMS', 'SMS', 'γραπτό μήνυμα', 'پیامک', 'SMS', 'SMS', 'எஸ்எம்எஸ்', 'એસએમએસ', 'SMS', 'СМС', 'SMS', 'mesaj', 'စာတို', 'SMS', 'SMS'),
(90, 'announcement', 'Announcement', 'ঘোষণা', 'Anuncio', 'إعلان', 'घोषणा', 'اعلان', '公告', '発表', 'Anúncio', 'Объявление', 'Annonce', '발표', 'Ankündigung', 'Annuncio', 'การประกาศ', 'Közlemény', 'Aankondiging', 'denuntiatio', 'Pengumuman', 'duyuru', 'Ανακοίνωση', 'اطلاعیه', 'Pengumuman', 'ప్రకటన', 'அறிவிப்பு', 'જાહેરાત', 'Ogłoszenie', 'Оголошення', 'ਘੋਸ਼ਣਾ', 'Anunţ', 'ကြေညာချက်', 'Ikede', 'Sanarwa'),
(91, 'notice', 'Notice', 'বিজ্ঞপ্তি', 'darse cuenta', 'تنويه', 'नोटिस', 'نوٹس', '注意', '通知', 'Aviso prévio', 'уведомление', 'Remarquer', '주의', 'Beachten', 'Avviso', 'แจ้งให้ทราบ', 'Értesítés', 'Merk op', 'notitia', 'Melihat', 'ihbar', 'Ειδοποίηση', 'اطلاع', 'Notis', 'నోటీసు', 'அறிவிப்பு', 'નોટિસ', 'Ogłoszenie', 'Зверніть увагу', 'ਨੋਟਿਸ', 'Înștiințare', 'အသိပေးစာ', 'Akiyesi', 'Lura'),
(92, 'news', 'News', 'সংবাদ', 'Noticias', 'أخبار', 'समाचार', 'خبریں', '新闻', 'ニュース', 'Notícia', 'Новости', 'Nouvelles', '뉴스', 'Nachrichten', 'notizia', 'ข่าว', 'hírek', 'Nieuws', 'News', 'Berita', 'Haber', 'Νέα', 'اخبار', 'Berita', 'న్యూస్', 'செய்திகள்', 'સમાચાર', 'Aktualności', 'Новини', 'ਨਿਊਜ਼', 'Știri', 'သတင်း', 'Awọn iroyin', 'News'),
(93, 'holiday', 'Holiday', 'ছুটির দিন', 'Fiesta', 'يوم الاجازة', 'छुट्टी का दिन', 'چھٹیوں', '假日', '休日', 'Feriado', 'День отдыха', 'Vacances', '휴일', 'Urlaub', 'Vacanza', 'วันหยุด', 'Ünnep', 'Holiday', 'ferias', 'Liburan', 'Tatil', 'Αργία', 'تعطیلات', 'Percutian', 'హాలిడే', 'விடுமுறை', 'રજા', 'Święto', 'Свято', 'ਛੁੱਟੀਆਂ', 'Vacanţă', 'အားလပ်ရက်များ', 'Isinmi', 'Holiday'),
(94, 'event', 'Event', 'ইভেন্ট', 'Evento', 'هدف', 'घटना', 'تقریب', '事件', 'イベント', 'Evento', 'Мероприятие', 'un événement', '행사', 'Veranstaltung', 'Evento', 'เหตุการณ์', 'Esemény', 'Evenement', 'res', 'Peristiwa', 'Etkinlik', 'Εκδήλωση', 'رویداد', 'Acara', 'ఈవెంట్', 'நிகழ்வு', 'ઇવેન્ટ', 'Zdarzenie', 'Подія', 'ਘਟਨਾ', 'Eveniment', 'အဖြစ်အပျက်', 'Iṣẹ iṣe', 'Event'),
(95, 'visitor_info', 'Visitor Info', 'আগন্তুক তথ্য', 'Información del visitante', 'معلومات الزائر', 'आगंतुक जानकारी', 'وزیٹر کی معلومات', '访客信息', '訪問者の情報', 'Informação do visitante', 'Информация для посетителей', 'Infos visiteurs', '방문자 정보', 'Besucherinfo', 'Informazioni per i visitatori', 'ข้อมูลผู้เยี่ยมชม', 'Látogatóinformációk', 'Bezoekersinformatie', 'visitor Info', 'Info Pengunjung', 'Ziyaretçi Bilgisi', 'Πληροφορίες επισκεπτών', 'اطلاعات بازدید کننده', 'Maklumat Pelawat', 'సందర్శకుల సమాచారం', 'பார்வையாளர் தகவல்', 'મુલાકાતી માહિતી', 'Informacje dla odwiedzających', 'Інформація про відвідувачів', 'ਵਿਜ਼ਟਰ ਜਾਣਕਾਰੀ', 'Informații despre vizitatori', 'ဧည့်သည်အင်ဖို', 'Alaye Alejo', 'Bayar da Bayani'),
(96, 'accounting', 'Accounting', 'হিসাবরক্ষণ', 'Contabilidad', 'محاسبة', 'लेखांकन', 'اکاؤنٹنگ', '会计', '会計', 'Contabilidade', 'бухгалтерский учет', 'Comptabilité', '회계', 'Buchhaltung', 'Contabilità', 'การบัญชี', 'Számvitel', 'Accounting', 'ratio', 'Akuntansi', 'Muhasebe', 'Λογιστική', 'حسابداری', 'Perakaunan', 'అకౌంటింగ్', 'கணக்கியல்', 'નામું', 'Rachunkowość', 'Бухгалтерський облік', 'ਲੇਿਾਕਾਰੀ', 'Contabilitate', 'စာရင်းကိုင်', 'Iṣiro', 'Ƙididdiga'),
(97, 'fee_type', 'Fee Type', 'ফি টাইপ', 'Tipo de tarifa', 'نوع الرسوم', 'शुल्क प्रकार', 'فیس قسم', '费用类型', '料金タイプ', 'Tipo de taxa', 'Тип платы', 'Type de frais', '수수료 유형', 'Gebührenart', 'Tipo di commissione', 'ประเภทค่าธรรมเนียม', 'Díj típusa', 'Vergoedingstype', 'feodo Type', 'Jenis Biaya', 'Ücret Türü', 'Τύπος τέλους', 'نوع هزینه', 'Jenis Bayaran', 'ఫీజు రకం', 'கட்டணம் வகை', 'ફી પ્રકાર', 'Rodzaj opłaty', 'Плата типу', 'ਫੀਸ ਕਿਸਮ', 'Tip de taxă', 'အခကြေးငွေအမျိုးအစား', 'Iru Ẹri', 'Fee Type');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(98, 'type', 'Type', 'প্রকার', 'Tipo', 'اكتب', 'प्रकार', 'ٹائپ کریں', '类型', 'タイプ', 'Tipo', 'Тип', 'Type', '유형', 'Art', 'genere', 'ชนิด', 'típus', 'Type', 'genus', 'Mengetik', 'tip', 'Τύπος', 'تایپ کنید', 'Taipkan', 'రకం', 'வகை', 'પ્રકાર', 'Rodzaj', 'Тип', 'ਟਾਈਪ ਕਰੋ', 'Tip', 'ပုံစံ', 'Iru', 'Rubuta'),
(99, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'बीजक', 'انوائس', '发票', '請求書', 'Fatura', 'Выставленный счет', 'Facture d''achat', '송장', 'Rechnung', 'Fattura', 'ใบแจ้งหนี้', 'Számla', 'Factuur', 'cautionem', 'Faktur', 'Fatura', 'Τιμολόγιο', 'صورتحساب', 'Invois', 'వాయిస్', 'விலைப்பட்டியல்', 'ભરતિયું', 'Faktura', 'Рахунок-фактура', 'ਇਨਵੌਇਸ', 'Factura fiscala', 'ဝယ်ကုန်စာရင်း', 'Ifiweranṣẹ', 'Invoice'),
(100, 'create', 'Create', 'তৈরী কর', 'Crear', 'خلق', 'सर्जन करना', 'بنانا', '创建', '作成する', 'Crio', 'Создайте', 'Créer', '몹시 떠들어 대다', 'Erstellen', 'Creare', 'สร้าง', 'Teremt', 'creëren', 'Create', 'Membuat', 'yaratmak', 'Δημιουργώ', 'ايجاد كردن', 'Buat', 'సృష్టించు', 'உருவாக்கவும்', 'બનાવો', 'Stwórz', 'Створити', 'ਬਣਾਓ', 'Crea', 'ဖန်တီး', 'Ṣẹda', 'Ƙirƙiri'),
(101, 'due_invoice', 'Due Invoice', 'বাকি চালান', 'Factura debida', 'الفاتورة المستحقة', 'कारण चालान', 'وجہ انوائس', '到期发票', '支払請求書', 'Fatura devida', 'Счет-фактура', 'Due Facture', '송장', 'Fällige Rechnung', 'Fattura dovuta', 'ใบแจ้งหนี้ที่ครบกำหนด', 'Esedékes számla', 'Doorlopende factuur', 'ob cautionem', 'Karena Faktur', 'Fatura Faturası', 'Οφειλόμενο τιμολόγιο', 'فاکتور موقت', 'Invois yang Dikehendaki', 'ఇన్వాయిస్ కారణంగా', 'காரணமாக விலைப்பட்டியல்', 'કારણે ભરતિયું', 'Due Faktura', 'Належний рахунок-фактура', 'ਬਕਾਇਆ ਇਨਵੌਇਸ', 'Datorită facturii', 'ကြောင့်ငွေတောင်းခံလွှာ', 'Fun Iroyin', 'Saboda Bayani'),
(102, 'expenditure', 'Expenditure', 'ব্যয়', 'Gasto', 'المصروفات', 'व्यय', 'خرچ', '支出', '支出', 'Despesa', 'Расход', 'Dépense', '지출', 'Ausgaben', 'Spesa', 'รายจ่าย', 'Kiadás', 'Uitgaven', 'Custus', 'Pengeluaran', 'harcama', 'Δαπάνη', 'هزینه ها', 'Perbelanjaan', 'ఎక్స్పెండిచర్', 'செலவினம்', 'ખર્ચ', 'Wydatek', 'Витрати', 'ਖਰਚੇ', 'Cheltuieli', 'သုံးငှေ', 'Isanwo', 'Sakamako'),
(103, 'expenditure_head', 'Expenditure Head', 'ব্যয় হেড', 'Jefe de gastos', 'رئيس النفقات', 'व्यय हेड', 'خرچ سر', '支出负责人', '支出ヘッド', 'Chefe de despesas', 'Руководитель отдела расходов', 'Chef des dépenses', '지출 헤드', 'Ausgabenleiter', 'Capo spese', 'หัวหน้าค่าใช้จ่าย', 'Kiadási vezető', 'Uitgaven Hoofd', 'caput capitis expensi,', 'Kepala Pengeluaran', 'Harcama Kafası', 'Επικεφαλής δαπανών', 'سر هزینه', 'Ketua Perbelanjaan', 'ఎక్స్పెండిచర్ హెడ్', 'செலவுத் தலை', 'ખર્ચ હેડ', 'Wydatki Kierownik', 'Голова витрат', 'ਖਰਚਾ ਸਿਰ', 'Șef de cheltuieli', 'အသုံးစရိတ်ဌာနမှူး', 'Oriiye Gbese', 'Shugaban Kuɗi'),
(104, 'income', 'Income', 'আয়', 'Ingresos', 'الإيرادات', 'आय', 'آمدنی', '收入', '所得', 'Renda', 'доход', 'le revenu', '수입', 'Einkommen', 'Reddito', 'เงินได้', 'Jövedelem', 'Inkomen', 'reditus', 'Pendapatan', 'Gelir', 'Εισόδημα', 'درآمد', 'Pendapatan', 'ఆదాయపు', 'வருமான', 'આવક', 'Dochód', 'Дохід', 'ਆਮਦਨੀ', 'Sursa de venit', 'ဝငျငှေ', 'Owo oya', 'Kudin shiga'),
(105, 'income_head', 'Income Head', 'আয় হেড', 'Jefe de ingresos', 'رئيس الدخل', 'आय हेड', 'آمدنی کے سربراہ', '收入负责人', '所得の頭部', 'Chefe de renda', 'Головной доход', 'Tête de revenu', '소득 헤드', 'Einkommen Kopf', 'Capo reddito', 'หัวหน้ารายได้', 'Jövedelemvezető', 'Inkomenskop', 'caput capitis reditus', 'Kepala Penghasilan', 'Gelir Kafası', 'Κεφάλαιο Εισοδήματος', 'سر درآمد', 'Ketua Pendapatan', 'ఆదాయం హెడ్', 'வருமானத் தலைவர்', 'આવક હેડ', 'Głowa dochodów', 'Голова доходів', 'ਇਨਕਮ ਹੈੱਡ', 'Cap de venit', 'ဝင်ငွေခွန်ဌာနမှူး', 'owo oya Head', 'Shugaban Asusun'),
(106, 'report', 'Report', 'প্রতিবেদন', 'Informe', 'أبلغ عن', 'रिपोर्ट', 'رپورٹ', '报告', '報告する', 'Relatório', 'отчет', 'rapport', '보고서', 'Bericht', 'rapporto', 'รายงาน', 'Jelentés', 'Verslag doen van', 'Report', 'Melaporkan', 'Rapor', 'Κανω ΑΝΑΦΟΡΑ', 'گزارش', 'Laporan', 'నివేదిక', 'அறிக்கை', 'અહેવાલ', 'Raport', 'Звіт', 'ਰਿਪੋਰਟ ਕਰੋ', 'Raport', 'အစီရင်ခံစာ', 'Iroyin', 'Rahoton'),
(107, 'balance', 'Balance', 'হিসাবনিকাশ', 'Equilibrar', 'توازن', 'संतुलन', 'بقیہ', '平衡', 'バランス', 'Equilibrar', 'Баланс', 'Équilibre', '밸런스', 'Balance', 'Equilibrio', 'สมดุล', 'Egyensúly', 'Balans', 'Libra', 'Keseimbangan', 'Denge', 'Ισορροπία', 'تعادل', 'Seimbang', 'సంతులనం', 'இருப்பு', 'બેલેન્સ', 'Saldo', 'Баланс', 'ਬਕਾਇਆ', 'Echilibru', 'ချိန်ခွင်လျှာ', 'Iwontunws.funfun', 'Balance'),
(108, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'प्रोफाइल', 'پروفائل', '轮廓', 'プロフィール', 'Perfil', 'Профиль', 'Profil', '윤곽', 'Profil', 'Profilo', 'ข้อมูลส่วนตัว', 'Profil', 'Profiel', 'Profile', 'Profil', 'Profil', 'Προφίλ', 'مشخصات', 'Profil', 'ప్రొఫైల్', 'விவரம்', 'પ્રોફાઇલ', 'Profil', 'Профіль', 'ਪ੍ਰੋਫਾਈਲ', 'Profil', 'ပရိုဖိုင်းကို', 'Profaili', 'Profile'),
(109, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi perfil', 'ملفي', 'मेरी प्रोफाइल', 'میری پروفائل', '我的简历', '私のプロフィール', 'Meu perfil', 'Мой профайл', 'Mon profil', '내 프로필', 'Mein Profil', 'Il mio profilo', 'ประวัติของฉัน', 'A profilom', 'Mijn profiel', 'mea Profile', 'Profil saya', 'Benim profilim', 'Το ΠΡΟΦΙΛ μου', 'پروفایل من', 'Profil saya', 'నా జీవన వివరణ', 'என் சுயவிவரம்', 'મારી પ્રોફાઈલ', 'Mój profil', 'Мій профіль', 'ਮੇਰੀ ਪ੍ਰੋਫਾਈਲ', 'Profilul meu', 'အကြှနျုပျ၏ကိုယ်ရေးဖိုင်', 'Profaili mi', 'My Profile'),
(110, 'logout', 'Log Out', 'প্রস্থান', 'Cerrar sesión', 'الخروج', 'लोग आउट', 'لاگ آوٹ', '登出', 'ログアウト', 'Sair', 'Выйти', 'Connectez - Out', '로그 아웃', 'Ausloggen', 'Disconnettersi', 'ออกจากระบบ', 'Kijelentkezés', 'Uitloggen', 'Ex Log', 'Keluar', 'Çıkış Yap', 'Αποσυνδέση', 'خروج', 'Log keluar', 'లాగ్ అవుట్', 'வெளியேறு', 'લૉગ આઉટ', 'Wyloguj', 'Вийти', 'ਲਾੱਗ ਆਊਟ, ਬਾਹਰ ਆਉਣਾ', 'Deconectați-vă', 'အထဲက Log', 'Jade kuro', 'An fita'),
(111, 'login', 'Log In', 'লগইন', 'Iniciar sesión', 'تسجيل الدخول', 'लॉग इन करें', 'میں لاگ ان کریں', '登录', 'ログイン', 'Entrar', 'Авторизоваться', 'S''identifier', '로그인', 'Einloggen', 'Accesso', 'เข้าสู่ระบบ', 'Belépés', 'Log in', 'Log In', 'Masuk', 'Oturum aç', 'Σύνδεση', 'ورود', 'Log masuk', 'లాగ్ ఇన్', 'உள் நுழை', 'લૉગ ઇન કરો', 'Zaloguj Się', 'Увійти', 'ਲਾਗਿਨ', 'Logare', 'လော့ဂ်အင်', 'Wo ile', 'Shiga'),
(112, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছি', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'पासवर्ड भूल गए', 'پاسورڈ بھول گے', '忘记密码', 'パスワードをお忘れですか', 'Esqueceu a senha', 'Забыли пароль', 'Forgot Password', '비밀번호를 잊으 셨나요', 'Passwort vergessen', 'Ha dimenticato la password', 'ลืมรหัสผ่าน', 'Elfelejtett jelszó', 'Wachtwoord vergeten', 'Forgot Password', 'Lupa kata sandi', 'Parolanızı mı unuttunuz', 'Ξεχάσατε τον κωδικό', 'رمز عبور را فراموش کرده اید', 'Lupa kata laluan', 'పాస్వర్డ్ మర్చిపోయారా', 'கடவுச்சொல்லை மறந்துவிட்டீர்களா', 'પાસવર્ડ ભૂલી ગયા છો', 'Zapomniałeś hasła', 'Забули пароль', 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ', 'Aţi uitat parola', 'စကားဝှက်ကိုမေ့နေပါသလား', 'Gbagbe ọrọ aṣina bi', 'Kalmar sirri da aka manta'),
(113, 'recovery_email', 'Recovery Email', 'পুনরুদ্ধার ইমেল', 'Correo electrónico de recuperación', 'البريد الإلكتروني الاسترداد', 'रिकवरी ईमेल', 'بازیابی ای میل', '恢复邮件', '復旧メール', 'Email de recuperação', 'Восстановление электронной почты', 'E-mail de secours', '복구 이메일', 'Wiederherstellungs-E-Mail', 'Email di recupero', 'อีเมลสำหรับกู้คืน', 'Helyreállítási e-mail', 'Herstel e-mail', 'Email convaluisset', 'Email pemulihan', 'Kurtarma Postası', 'Email αποκατάστασης', 'ایمیل بازیابی', 'E-mel Pemulihan', 'రికవరీ ఇమెయిల్', 'மீட்பு மின்னஞ்சல்', 'પુનઃપ્રાપ્તિ ઇમેઇલ', 'E-mail odzyskiwania', 'Електронна пошта відновлення', 'ਰਿਕਵਰੀ ਈਮੇਲ', 'E-mail de recuperare', 'recovery ကိုအီးမေးလ်ပို့ရန်', 'Imeeli igbasilẹ', 'Maido da Imel'),
(114, 'remember_me', 'Remember me', 'আমাকে মনে রাখুন', 'Recuérdame', 'تذكرنى', 'मुझे याद रखना', 'مجھے پہچانتے ہو', '记住我', '私を覚えてますか', 'Lembre de mim', 'Запомни меня', 'Souviens-toi de moi', '날 기억해', 'Erinnere dich an mich', 'Ricordati di me', 'จดจำฉัน', 'Emlékezz rám', 'Onthoud me', 'memento mei', 'Ingat saya', 'Beni hatırla', 'Θυμήσου με', 'مرا به خاطر بسپار', 'Ingat saya', 'నన్ను గుర్తు పెట్టుకో', 'என்னை நினைவில் கொள்ளுங்கள்', 'મને યાદ', 'Zapamiętaj mnie', 'Пам''ятай мене', 'ਮੇਰੀ ਯਾਦ ਹੈ', 'Amintește-ți de mine', 'ငါ့ကိုသတိရပါ', 'Ranti mi', 'Ka tuna da ni'),
(115, 'school', 'School', 'বিদ্যালয়', 'Colegio', 'مدرسة', 'स्कूल', 'اسکول', '学校', '学校', 'Escola', 'Школа', 'École', '학교', 'Schule', 'Scuola', 'โรงเรียน', 'Iskola', 'School', 'School', 'Sekolah', 'Okul', 'Σχολείο', 'مدرسه', 'Sekolah', 'స్కూల్', 'பள்ளி', 'શાળા', 'Szkoła', 'Школа', 'ਸਕੂਲ', 'Şcoală', 'ကြောငျး', 'Ile-iwe', 'Makarantar'),
(116, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'नाम', 'نام', '名称', '名', 'Nome', 'имя', 'prénom', '이름', 'Name', 'Nome', 'ชื่อ', 'Név', 'Naam', 'nomine', 'Nama', 'isim', 'Ονομα', 'نام', 'Nama', 'పేరు', 'பெயர்', 'નામ', 'Nazwa', 'Ім''я', 'ਨਾਮ', 'Nume', 'အမည်', 'Oruko', 'Sunan'),
(117, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'पता', 'ایڈریس', '地址', '住所', 'Endereço', 'Адрес', 'Adresse', '주소', 'Adresse', 'Indirizzo', 'ที่อยู่', 'Cím', 'Adres', 'oratio', 'Alamat', 'Adres', 'Διεύθυνση', 'نشانی', 'Alamat', 'చిరునామా', 'முகவரி', 'સરનામું', 'Adres', 'Адреса', 'ਪਤਾ', 'Adresa', 'လိပ်စာ', 'Adirẹsi', 'Adireshin'),
(118, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'फ़ोन', 'فون', '电话', '電話', 'telefone', 'Телефон', 'Phone', '전화', 'Telefon', 'Telefono', 'โทรศัพท์', 'Telefon', 'Telefoon', 'Phone', 'Telepon', 'Telefon', 'Τηλέφωνο', 'تلفن', 'Telefon', 'ఫోన్', 'தொலைபேசி', 'ફોન', 'Telefon', 'Телефон', 'ਫੋਨ', 'Telefon', 'ဖုန်းနံပါတ်', 'Foonu', 'Waya'),
(119, 'footer', 'Footer', 'ওয়েবসাইট ফুটার', 'Pie de página', 'تذييل', 'फ़ुटबाल', 'فوٹر', '页脚', 'フッター', 'Rodapé', 'нижний колонтитул', 'Bas de page', '보행인', 'Fußzeile', 'footer', 'ฟุตบอล', 'Lábjegyzet', 'footer', 'footer', 'Footer', 'Alt Bilgi', 'Υποσέλιδο', 'پاورقی', 'Footer', 'ఫుటర్', 'அடிக்குறிப்பு', 'ફૂટર', 'Stopka', 'Нижній колонтитул', 'ਪਦਲੇਰ', 'Subsol', 'အောက်ခြေ', 'Ẹlẹsẹ', 'Hanya'),
(120, 'logo', 'Logo', 'লগো', 'Logo', 'شعار', 'प्रतीक चिन्ह', 'لوگو', '商标', 'ロゴ', 'Logotipo', 'логотип', 'Logo', '심벌 마크', 'Logo', 'Logo', 'เครื่องหมาย', 'logo', 'Logo', 'logo', 'Logo', 'Logo', 'Λογότυπο', 'لوگو', 'Logo', 'లోగో', 'சின்னம்', 'લૉગો', 'Logo', 'Логотип', 'ਲੋਗੋ', 'Siglă', 'လိုဂို', 'Logo', 'Logo'),
(121, 'title', 'Title', 'শিরোনাম', 'Título', 'عنوان', 'शीर्षक', 'عنوان', '标题', 'タイトル', 'Título', 'заглавие', 'Titre', '표제', 'Titel', 'Titolo', 'หัวข้อ', 'Cím', 'Titel', 'titulus', 'Judul', 'Başlık', 'Τίτλος', 'عنوان', 'Tajuk', 'శీర్షిక', 'தலைப்பு', 'શીર્ષક', 'Tytuł', 'Назва', 'ਟਾਈਟਲ', 'Titlu', 'ခေါင်းစဥ်', 'Akọle', 'Title'),
(122, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'कुल', 'کل', '总', '合計', 'Total', 'Всего', 'Total', '합계', 'Gesamt', 'Totale', 'ทั้งหมด', 'Teljes', 'Totaal', 'summa', 'Total', 'Genel Toplam', 'Σύνολο', 'جمع', 'Jumlah', 'మొత్తం', 'மொத்த', 'કુલ', 'Całkowity', 'Всього', 'ਕੁੱਲ', 'Total', 'စုစုပေါငျး', 'Lapapọ', 'Jimlar'),
(123, 'calendar', 'Calendar', 'পঞ্জিকা', 'Calendario', 'التقويم', 'कैलेंडर', 'کیلنڈر', '日历', 'カレンダー', 'Calendário', 'Календарь', 'Calendrier', '달력', 'Kalender', 'Calendario', 'ปฏิทิน', 'Naptár', 'Kalender', 'Calendar', 'Kalender', 'Takvim', 'Ημερολόγιο', 'تقویم', 'Kalendar', 'క్యాలెండర్', 'நாட்காட்டி', 'કૅલેન્ડર', 'Kalendarz', 'Календар', 'ਕੈਲੰਡਰ', 'Calendar', 'ပြက္ခဒိန်', 'Kalẹnda', 'Kalanda'),
(124, 'statistics', 'Statistics', 'পরিসংখ্যান', 'Estadística', 'الإحصاء', 'आंकड़े', 'اعداد و شمار', '统计', '統計', 'Estatisticas', 'Статистика', 'Statistiques', '통계', 'Statistiken', 'statistica', 'สถิติ', 'Statisztika', 'Statistieken', 'Statistics', 'Statistik', 'istatistik', 'Στατιστική', 'آمار', 'Statistik', 'గణాంకాలు', 'புள்ளியியல்', 'આંકડા', 'Statystyka', 'Статистика', 'ਅੰਕੜੇ', 'Statistici', 'စာရင်းအင်း', 'Awọn iṣiro', 'Statistics'),
(125, 'latest', 'Latest', 'সর্বশেষ', 'Último', 'آخر', 'नवीनतम', 'تازہ ترین', '最新', '最新', 'Mais recentes', 'Последний', 'Dernier', '최근', 'Neueste', 'Più recente', 'ล่าสุด', 'Legújabb', 'Laatste', 'latest', 'Terbaru', 'son', 'Αργότερο', 'آخرین', 'Terkini', 'తాజా', 'சமீபத்திய', 'તાજેતરની', 'Najnowszy', 'Останні', 'ਨਵੀਨਤਮ', 'Cele mai recente', 'နောက်ဆုံး', 'Titun', 'Bugawa'),
(126, 'currency', 'Currency', 'মুদ্রা', 'Moneda', 'دقة', 'मुद्रा', 'کرنسی', '货币', '通貨', 'Moeda', 'валюта', 'Devise', '통화', 'Währung', 'Moneta', 'เงินตรา', 'Valuta', 'Valuta', 'monetæ', 'Mata uang', 'Para birimi', 'Νόμισμα', 'واحد پول', 'Mata wang', 'కరెన్సీ', 'நாணய', 'ચલણ', 'Waluta', 'Валюта', 'ਮੁਦਰਾ', 'Valută', 'ငွေကြေးစနစ်', 'Owo', 'Kudin'),
(127, 'currency_symbol', 'Currency Symbol', 'মুদ্রা চিহ্ন', 'Símbolo de moneda', 'رمز العملة', 'मुद्रा चिन्ह', 'کرنسی علامت', '货币符号', '通貨記号', 'Símbolo monetário', 'Символ валюты', 'Symbole de la monnaie', '통화 기호', 'Währungszeichen', 'Simbolo di valuta', 'สัญลักษณ์สกุลเงิน', 'Pénznem szimbólum', 'Symbool van munteenheid', 'monetæ Symbol', 'Simbol mata uang', 'Para Birimi Sembolü', 'Σύμβολο νομίσματος', 'نماد ارز', 'Simbol mata wang', 'కరెన్సీ చిహ్నం', 'நாணய சின்னம்', 'કરન્સી પ્રતીક', 'Symbol waluty', 'Символ валюти', 'ਕਰੰਸੀ ਨਿਸ਼ਾਨ', 'Simbolul valutei', 'ငွေကြေးသင်္ကေတ', 'Aami Owo', 'Alamar Kudin'),
(128, 'note', 'Note', 'মন্তব্য', 'Nota', 'ملحوظة', 'ध्यान दें', 'نوٹ', '注意', '注意', 'Nota', 'Заметка', 'Remarque', '노트', 'Hinweis', 'Nota', 'บันทึก', 'jegyzet', 'Notitie', 'nota', 'Catatan', 'Not', 'Σημείωση', 'توجه داشته باشید', 'Nota', 'గమనిక', 'குறிப்பு', 'નૉૅધ', 'Uwaga', 'Примітка', 'ਨੋਟ', 'Notă', 'မှတ်စု', 'Akiyesi', 'Lura'),
(129, 'is_running', 'Is Running?', 'চলছে?', '¿Esta corriendo?', 'يجري؟', 'दौड रहा है?', 'بھاگ رہا ہے؟', '在跑？', 'が走っています？', 'Está correndo?', 'Бежит?', 'Est en cours d''exécution?', '달리기?', 'Läuft?', 'È in esecuzione?', 'กำลังวิ่ง?', 'Fut?', 'Is aan het rennen?', 'Is Cursor?', 'Sedang berlari?', 'Çalışıyor?', 'Τρέχει?', 'در حال اجراست؟', 'Adalah berlari?', 'పరిగెత్తుతున్నాడు?', 'இயங்குகிறது?', 'ચાલી રહ્યું છે?', 'Biegnie?', 'Біжить?', 'ਚੱਲ ਰਿਹਾ ਹੈ?', 'Rulează?', 'ကို run သလဲ?', 'Nṣiṣẹ?', 'Yana gudana?'),
(130, 'running_year', 'Running Year', 'চলমান বছর', 'Año de ejecución', 'تشغيل السنة', 'वर्ष चल रहा है', 'چل رہا ہے سال', '运行年', 'ランニング・イヤー', 'Ano corrente', 'Бегущий год', 'Année de fonctionnement', '러닝 연도', 'Laufendes Jahr', 'Anno in corso', 'ปีที่ดำเนินการ', 'Futóév', 'Lopend jaar', 'anno currit', 'Tahun berjalan', 'Koşu Yılı', 'Τρέχον έτος', 'در حال اجرا سال', 'Tahun Berjalan', 'రన్నింగ్ ఇయర్', 'இயங்கும் வருடம்', 'વર્ષ ચાલી રહ્યું છે', 'Rok bieżący', 'Біг Рік', 'ਰਨਿੰਗ ਯੀਅਰ', 'Anul de funcționare', 'အပြေးတစ်နှစ်တာ', 'Nṣiṣẹ Ọdun', 'Gudun Shekara'),
(131, 'is_demo', 'Is Demo?', 'ডেমো কি?', 'Es Demo?', 'هل تجريبي؟', 'डेमो है?', 'ڈیمو ہے؟', '是演示？', 'デモですか？', 'Demo?', 'Есть демо?', 'Est-ce que Demo?', '데모입니까?', 'Ist Demo?', 'È Demo?', 'Demo?', 'A demo?', 'Is demo?', 'Demo est?', 'Apakah demo', 'Demo var mı?', 'Είναι επίδειξη;', 'آیا نسخه ی نمایشی است؟', 'Adakah Demo?', 'డెమోనా?', 'டெமோ?', 'ડેમો છે?', 'Czy to demo?', 'Демо?', 'ਡੈਮੋ ਹੈ?', 'Este Demo?', 'Demo လား?', 'Ṣe Demo?', 'Shin Demo?'),
(132, 'is_active', 'Is Active?', 'একটিভ?', '¿Está activo?', 'هل نشط؟', 'सक्रिय है?', 'فعال ہے؟', '活跃？', 'アクティブです？', 'Está ativo?', 'Активен?', 'C''est actif?', '활성?', 'Ist aktiv?', 'È attivo?', 'มีการใช้งานอยู่หรือไม่?', 'Aktív?', 'Is actief?', 'Active est?', 'Aktif?', 'Aktif?', 'Είναι ενεργό?', 'فعال است؟', 'Adalah aktif?', 'సక్రియంగా ఉందా?', 'செயலில் இருக்கிறதா?', 'સક્રિય છે?', 'Jest aktywny?', 'Активний?', 'ਸਰਗਰਮ ਹੈ?', 'Este activ?', 'Active ကိုလား?', 'Ṣe Iroyin?', 'Yana aiki?'),
(133, 'active', 'Active', 'সক্রিয়', 'Activo', 'نشيط', 'सक्रिय', 'فعال', '活性', 'アクティブ', 'Ativo', 'активный', 'actif', '유효한', 'Aktiv', 'Attivo', 'คล่องแคล่ว', 'Aktív', 'Actief', 'Active', 'Aktif', 'Aktif', 'Ενεργός', 'فعال', 'Aktif', 'క్రియాశీల', 'செயலில்', 'સક્રિય', 'Aktywny', 'Активний', 'ਕਿਰਿਆਸ਼ੀਲ', 'Activ', 'တက်ကြွ', 'Iroyin', 'Aiki'),
(134, 'secret', 'Secret', 'গোপন', 'Secreto', 'سر', 'गुप्त', 'خفیہ', '秘密', '秘密', 'Segredo', 'секрет', 'Secret', '비밀', 'Geheimnis', 'Segreto', 'ลับ', 'Titok', 'Geheim', 'secret', 'Rahasia', 'Gizli', 'Μυστικό', 'راز', 'Rahsia', 'సీక్రెట్', 'இரகசிய', 'સિક્રેટ', 'Sekret', 'Таємно', 'ਰਾਜ਼', 'Secret', 'လျှို့ဝှက်ချက်', 'ìkọkọ', 'Asiri'),
(135, 'api_key', 'Api Key', 'এপিআই কী', 'Clave API', 'مفتاح API', 'एपीआई कुंजी', 'اےپی کی کلی', 'Api Key', 'Api Key', 'Chave API', 'Api Key', 'Clé de feu', 'API 키', 'API-Schlüssel', 'Chiave Api', 'คีย์ Api', 'Api Key', 'API sleutel', 'API key', 'Kunci API', 'Api Key', 'Api Key', 'کلید ای پی ای', 'Api Utama', 'అపి కీ', 'அப் கீ', 'API કી', 'Klucz API', 'Api Key', 'ਅਪੀ ਕੁੰਜੀ', 'Api Key', 'api Key ကို', 'Bọtini Api', 'Api Key'),
(136, 'key', 'Key', 'কী', 'Llave', 'مفتاح', 'कुंजी', 'کلیدی', '键', 'キー', 'Chave', 'ключ', 'Clé', '키', 'Schlüssel', 'Chiave', 'สำคัญ', 'Kulcs', 'Sleutel', 'Clavis', 'Kunci', 'anahtar', 'Κλειδί', 'کلید', 'Kunci', 'కీ', 'சாவி', 'કી', 'Klawisz', 'Ключ', 'ਕੁੰਜੀ', 'Cheie', 'သော့', 'Bọtini', 'Key'),
(137, 'key_salt', 'Key Salt', 'কী সল্ট', 'Key Salt', 'مفتاح الملح', 'कुंजी नमक', 'کلیدی نمک', '关键盐', 'キーソルト', 'Sal chave', 'Основная соль', 'Sel principal', '키 솔트', 'Schlüsselsalz', 'Key Salt', 'เกลือแกง', 'Fő só', 'Key Salt', 'Key salis', 'Garam utama', 'Anahtar Tuz', 'Βασικό αλάτι', 'نمک کلیدی', 'Garam utama', 'కీ ఉప్పు', 'முக்கிய உப்பு', 'કી સોલ્ટ', 'Kluczowa sól', 'Ключові солі', 'ਕੀ ਸਲੌਲ', 'Sare cheie', 'Key ကိုဆား', 'iyọ bọtini', 'Key Salt'),
(138, 'username', 'Username', 'ব্যবহারকারীর নাম', 'Nombre de usuario', 'اسم المستخدم', 'उपयोगकर्ता नाम', 'صارف کا نام', '用户名', 'ユーザー名', 'Nome de usuário', 'имя пользователя', 'Nom d''utilisateur', '사용자 이름', 'Nutzername', 'Nome utente', 'ชื่อผู้ใช้', 'Felhasználónév', 'Gebruikersnaam', 'nomen usoris', 'Nama pengguna', 'Kullanıcı adı', 'Όνομα χρήστη', 'نام کاربری', 'Nama pengguna', 'యూజర్ పేరు', 'பயனர்பெயர்', 'વપરાશકર્તા નામ', 'Nazwa Użytkownika', 'Ім''я користувача', 'ਯੂਜ਼ਰਨਾਮ', 'Nume de utilizator', 'အသုံးပြုသူအမည်', 'Orukọ olumulo', 'Sunan mai amfani'),
(139, 'account_sid', 'Account SID', 'একাউন্ট এসআইডি', 'SID de la cuenta', 'حساب سيد', 'अकाउंट एसआईडी', 'اکاؤنٹ SID', '帐户SID', 'アカウントSID', 'SID da conta', 'SID учетной записи', 'Compte SID', '계정 SID', 'Konto SID', 'SID dell''account', 'บัญชี SID', 'Fiók SID', 'Account SID', 'ratio SID', 'Akun SID', 'Hesap SID', 'Λογαριασμός SID', 'SID حساب', 'SID Akaun', 'SID ఖాతా', 'கணக்கு SID', 'એકાઉન્ટ SID', 'Identyfikator konta SID', 'Ідентифікатор облікового запису', 'ਖਾਤਾ SID', 'Cont SID', 'အကောင့် SID', 'SID iroyin', 'Asusun SID'),
(140, 'auth_token', 'Auth Token', 'অথ টোকেন', 'Token de autenticación', 'الرمز المميز للمصادقة', 'औथ टोकन', 'مصنف ٹوکن', '验证令牌', '認証トークン', 'Token Auth', 'Auth Token', 'Jeton d''authentification', '인증 토큰', 'Auth Token', 'Token di autenticazione', 'Auth Token', 'Hitel Token', 'Auth Token', 'auth Thochen', 'Token Auth', 'Auth Token', 'Auth Token', 'Auth Token', 'Token Auth', 'ప్రామాణీకరణ టోకెన్', 'அங்கீகார டோக்கன்', 'ઑથ ટોકન', 'token autoryzacji', 'Авт токен', 'Auth ਟੋਕਨ', 'Auth Token', 'auth တိုကင်', 'auth aami', 'Auth Token'),
(141, 'auth_key', 'Auth Key', 'অথ কী', 'Clave de autenticación', 'مفتاح المصادقة', 'प्रमाणन कुंजी', 'مصنف کلیدی', '授权键', '認証キー', 'Chave de autenticação', 'Auth Key', 'Clé d''authentification', '인증 키', 'Authentifizierungsschlüssel', 'Chiave d''autenticazione', 'คีย์การตรวจสอบ', 'Autentikációs kulcs', 'Inlogcode', 'Key auth', 'Kunci otomatis', 'Auth Key', 'Auth Key', 'کلید تایید', 'Auth Key', 'ప్రామాణీకరణ కీ', 'அங்கீகார விசை', 'ઑથ કી', 'Klucz autoryzujący', 'Автх ключ', 'ਔਥ ਕੀ', 'Auth Key', 'auth Key ကို', 'Bọtini Auth', 'A Key Key'),
(142, 'auth_id', 'Auth ID', 'অথ আইডি', 'ID de autenticación', 'معرف المصادقة', 'ऑथ आईडी', 'مصنف ID', '身份验证ID', '認証ID', 'ID de Autenticação', 'Auth ID', 'Authentification', '인증 ID', 'Authentifizierungs-ID', 'Auth ID', 'รหัสผู้ใช้', 'Hitelazonosító', 'Auth ID', 'id auth', 'ID Auth', 'Kimliği kimliği', 'Auth ID', 'ID Auth', 'ID pengarang', 'ప్రామాణీకరణ ID', 'அங்கீகார ஐடி', 'ઑથ ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'auth ID ကို', 'Auth ID', 'ID ID'),
(143, 'from_number', 'From Number', 'ফ্রম নম্বর', 'Desde el número', 'من العدد', 'संख्या से', 'نمبر سے', '从数字', '番号から', 'Do número', 'От номера', 'À partir du numéro', '발신 번호', 'Von Nummer', 'Dal numero', 'จากจำนวน', 'A számtól', 'Van nummer', 'Ex Number', 'Dari nomor', 'Numaradan', 'Από τον αριθμό', 'از شماره', 'Daripada Nombor', 'సంఖ్య నుండి', 'எண் இருந்து', 'સંખ્યા પ્રતિ', 'Z numeru', 'З числа', 'ਨੰਬਰ ਤੋਂ', 'Din numărul', 'နံပါတ် မှစ.', 'Lati Nọmba', 'Daga Lambar'),
(144, 'number', 'Number', 'নম্বর', 'Número', 'رقم', 'संख्या', 'نمبر', '数', '数', 'Número', 'Число', 'Nombre', '번호', 'Nummer', 'Numero', 'จำนวน', 'Szám', 'Aantal', 'numerus', 'Jumlah', 'Numara', 'Αριθμός', 'عدد', 'Nombor', 'సంఖ్య', 'எண்', 'સંખ્યા', 'Numer', 'Номер', 'ਗਿਣਤੀ', 'Număr', 'ဂဏန်း', 'Nọmba', 'Lambar'),
(145, 'from', 'From', 'থেকে', 'De', 'من عند', 'से', 'سے', '从', 'から', 'A partir de', 'Из', 'De', '에서', 'Von', 'A partire dal', 'จาก', 'Tól től', 'Van', 'Ex', 'Dari', 'itibaren', 'Από', 'از جانب', 'Dari', 'నుండి', 'இருந்து', 'પ્રતિ', 'Od', 'Від', 'ਤੋਂ', 'Din', 'မှ', 'Lati', 'Daga'),
(146, 'sender_id', 'Sender ID', 'প্রেরকের আইডি', 'identificación del remitente', 'هوية المرسل', 'प्रेषक आईडी', 'بھیجنے والے کی شناخت', '发件人ID', '送信者ID', 'ID do remetente', 'Удостоверение личности отправителя', 'Identifiant d''expéditeur', '보낸 사람 ID', 'Absenderidentität', 'identità del mittente', 'ID ผู้ส่ง', 'Sender ID', 'zender ID', 'id mittens', 'ID pengirim', 'Gönderen Kimliği', 'ταυτότητα αποστολέα', 'شناسه فرستنده', 'ID penghantar', 'పంపినవారు ID', 'அனுப்பியவர் ஐடி', 'પ્રેષક ID', 'Identyfikator nadawcy', 'Ідентифікатор відправника', 'ਭੇਜਣ ਵਾਲਾ ID', 'ID-ul expeditorului', 'ပေးပို့သူ ID', 'Olu ID', 'Mai aikawa ID'),
(147, 'activate', 'Activate', 'সক্রিয় করুন', 'Activar', 'تفعيل', 'सक्रिय', 'چالو کریں', '启用', 'アクティブ化する', 'Ativar', 'активировать', 'Activer', '활성화', 'aktivieren Sie', 'Attivare', 'กระตุ้น', 'Aktiválja', 'Activeren', 'strenuus', 'Mengaktifkan', 'etkinleştirmek', 'Θέτω εις ενέργειαν', 'فعالسازی', 'Aktifkan', 'సక్రియం', 'செயல்படுத்த', 'સક્રિય કરો', 'Aktywuj', 'Активувати', 'ਸਰਗਰਮ ਕਰੋ', 'Activati', 'ကိုသက်ဝင်', 'Muu ṣiṣẹ', 'Kunna'),
(148, 'label', 'Lavel', 'লেভেল', 'Lavel', 'Lavel', 'Lavel', 'لیلیل', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'لاوئل', 'Lavel', 'Lavel', 'Lavel', 'લેવેલ', 'Lavel', 'Лавел', 'ਲੇਵਲ', 'Lavel', 'Lavel', 'Lavel', 'Lavel'),
(149, 'session_year', 'Session Year', 'সেশন বছর', 'Año de la sesión', 'سنة الدورة', 'सत्र वर्ष', 'اجلاس کا سال', '会议年', 'セッション年', 'Ano da sessão', 'Сезонность', 'Année de la session', '세션 연도', 'Sitzungsjahr', 'Anno di sessione', 'ปีการศึกษา', 'Session Year', 'Sessiejaar', 'Anno Sessio', 'Sesi Tahun', 'Oturum Yılı', 'Έτος συνεδρίας', 'سال نشست', 'Tahun Sesi', 'సెషన్ ఇయర్', 'அமர்வு ஆண்டு', 'સત્ર વર્ષ', 'Rok sesji', 'Сесія року', 'ਸੈਸ਼ਨ ਸਾਲ', 'Anul Sesiunii', 'session တစ်နှစ်တာ', 'Akoko Odun', 'Zama Na Zama'),
(150, 'is_default', 'Is Default?', 'ডিফল্ট কি?', 'Es predeterminado?', 'هل الافتراضي؟', 'डिफ़ॉल्ट है?', 'پہلے سے طے شدہ ہے؟', '是默认的？', 'デフォルトですか？', 'O padrão é?', 'По умолчанию?', 'Est par défaut?', '디폴트인가?', 'Ist Standard?', 'È predefinito?', 'เป็นค่าเริ่มต้นหรือไม่?', 'Alapértelmezés?', 'Is standaard?', 'Default est?', 'Apakah Default?', 'Varsayılan mı?', 'Είναι προεπιλογή;', 'پیش فرض', 'Adakah Default?', 'డిఫాల్ట్?', 'இயல்புநிலையா?', 'ડિફૉલ્ટ છે?', 'Czy domyślne?', 'За замовчуванням?', 'ਕੀ ਡਿਫਾਲਟ ਹੈ?', 'Este implicit?', 'ပုံမှန်ဖြစ်သနည်း', 'Ni aiyipada?', 'Shin Default?'),
(151, 'module', 'Module', 'মডিউল', 'Módulo', 'وحدة', 'मॉड्यूल', 'ماڈیول', '模', 'モジュール', 'Módulo', 'модуль', 'Module', '기준 치수', 'Modul', 'Modulo', 'โมดูล', 'modul', 'module', 'OMNIBUS', 'Modul', 'modül', 'Μονάδα μέτρησης', 'ماژول', 'Modul', 'మాడ్యూల్', 'தொகுதி', 'મોડ્યુલ', 'Moduł', 'Модуль', 'ਮੋਡੀਊਲ', 'Modul', 'module တစ်ခု', 'Module', 'Module'),
(152, 'function', 'Function', 'কর্তব্যপালন', 'Función', 'وظيفة', 'समारोह', 'فنکشن', '功能', '関数', 'Função', 'функция', 'Fonction', '기능', 'Funktion', 'Funzione', 'ฟังก์ชัน', 'Funkció', 'Functie', 'Officium', 'Fungsi', 'fonksiyon', 'Λειτουργία', 'عملکرد', 'Fungsi', 'ఫంక్షన్', 'விழா', 'કાર્ય', 'Funkcjonować', 'Функція', 'ਫੰਕਸ਼ਨ', 'Funcţie', 'လုပ်ဆောင်ချက်', 'Išẹ', 'Yanayi'),
(153, 'confirm', 'Confirm', 'নিশ্চিত করা', 'Confirmar', 'تؤكد', 'की पुष्टि करें', 'تصدیق کریں', '确认', '確認', 'confirme', 'подтвердить', 'Confirmer', '확인', 'Bestätigen', 'Confermare', 'ยืนยัน', 'megerősít', 'Bevestigen', 'Constituo', 'Memastikan', 'Onaylamak', 'Επιβεβαιώνω', 'تایید', 'Sahkan', 'నిర్ధారించండి', 'உறுதிப்படுத்தவும்', 'પુષ્ટિ કરો', 'Potwierdzać', 'Підтвердьте', 'ਪੁਸ਼ਟੀ ਕਰੋ', 'A confirma', 'အတည်ပြု', 'Jẹrisi', 'Tabbatar'),
(154, 'database', 'Database', 'ডেটাবেস', 'Base de datos', 'قاعدة البيانات', 'डेटाबेस', 'ڈیٹا بیس', '数据库', 'データベース', 'Base de dados', 'База данных', 'Base de données', '데이터 베이스', 'Datenbank', 'Banca dati', 'ฐานข้อมูล', 'adatbázis', 'Database', 'database', 'Database', 'Veritabanı', 'Βάση δεδομένων', 'بانک اطلاعاتی', 'Pangkalan data', 'డేటాబేస్', 'டேட்டாபேஸ்', 'ડેટાબેઝ', 'Baza danych', 'База даних', 'ਡਾਟਾਬੇਸ', 'Bază de date', 'ဒေတာဘေ့စ', 'Aaye data', 'Database'),
(155, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'डाउनलोड', 'ڈاؤن لوڈ کریں', '下载', 'ダウンロード', 'Download', 'Скачать', 'Télécharger', '다운로드', 'Herunterladen', 'Scaricare', 'ดาวน์โหลด', 'Letöltés', 'Download', 'download', 'Download', 'İndir', 'Κατεβάστε', 'دانلود', 'Muat turun', 'డౌన్లోడ్', 'பதிவிறக்க', 'ડાઉનલોડ કરો', 'Pobieranie', 'Завантажити', 'ਡਾਊਨਲੋਡ ਕਰੋ', 'Descarca', 'ဒေါင်းလုပ်', 'Gba lati ayelujara', 'Saukewa'),
(156, 'join_date', 'Joining Date', 'যোগদান তারিখ', 'Dia de ingreso', 'تاريخ الانضمام', 'कार्यग्रहण तिथि', 'شامل ہونے کی تاریخ', '入职日期', '参加日', 'Data de ingresso', 'Дата вступления', 'Date d''inscription', '가입 날짜', 'Beitrittsdatum', 'Data di adesione', 'วันที่เข้าร่วม', 'Csatlakozási dátum', 'Lid worden van datum', 'Adhaeret Date', 'Tanggal Bergabung', 'Birleştirme Tarihi', 'Ημερομηνία σύνδεσης', 'تاریخ عضویت', 'Menyertai Tarikh', 'తేదీ చేరడం', 'சேரும் தேதி', 'તારીખ જોડાયા', 'Data przyłączenia', 'Дата приєднання', 'ਦਾਖਲ ਹੋਣ ਦੀ ਤਾਰੀਖ', 'Data îmbinării', 'နေ့စွဲလာရောက်ပူးပေါင်း', 'Ọjọ Ajọpọ', 'Ranar Jiki'),
(157, 'present', 'Present', 'বর্তমান', 'Presente', 'অনুবাদ ত্রুটি', 'वर्तमान', 'موجودہ', '当下', '現在', 'Presente', 'настоящее время', 'Présent', '선물', 'Geschenk', 'Presente', 'นำเสนอ', 'Ajándék', 'Aanwezig', 'praesenti', 'Menyajikan', 'Mevcut', 'Παρόν', 'حاضر', 'Hadir', 'ప్రస్తుతం', 'தற்போதைய', 'હાજર', 'Obecny', 'Подаруй', 'ਵਰਤਮਾਨ', 'Prezent', 'လက်ဆောင်', 'Nisin', 'Gabatarwa'),
(158, 'permanent', 'Permanent', 'স্থায়ী', 'Permanente', 'دائم', 'स्थायी', 'مستقل', '常驻', '恒久的な', 'Permanente', 'перманентный', 'Permanent', '퍼머넌트', 'Permanent', 'Permanente', 'ถาวร', 'Állandó', 'blijvend', 'permanent', 'Permanen', 'kalıcı', 'Μόνιμος', 'دائمی', 'Kekal', 'శాశ్వత', 'நிரந்தர', 'કાયમી', 'Stały', 'Постійний', 'ਸਥਾਈ', 'Permanent', 'အမြဲတမ်း', 'O yẹ', 'Tabbatacce'),
(159, 'gender', 'Gender', 'লিঙ্গ', 'Género', 'جنس', 'लिंग', 'صنف', '性别', '性別', 'Gênero', 'Пол', 'Le genre', '성별', 'Geschlecht', 'Genere', 'เพศ', 'nem', 'Geslacht', 'genus', 'Jenis kelamin', 'Cinsiyet', 'Γένος', 'جنسيت', 'Jantina', 'జెండర్', 'பாலினம்', 'જાતિ', 'Płeć', 'Стать', 'ਲਿੰਗ', 'Gen', 'ကျား, မ', 'Iwa', 'Gender'),
(160, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ', 'Grupo sanguíneo', 'فصيلة الدم', 'रक्त समूह', 'خون گروپ', '血型', '血液型', 'Grupo sanguíneo', 'Группа крови', 'Groupe sanguin', '혈액형', 'Blutgruppe', 'Gruppo sanguigno', 'กรุ๊ปเลือด', 'Vércsoport', 'Bloedgroep', 'Sanguine coetus', 'Golongan darah', 'Kan grubu', 'Ομάδα αίματος', 'گروه خونی', 'Kumpulan darah', 'రక్తపు గ్రూపు', 'இரத்த வகை', 'બ્લડ ગ્રુપ', 'Grupa krwi', 'Група крові', 'ਬਲੱਡ ਗਰੁੱਪ', 'Grupa sanguină', 'သွေးအုပ်စု', 'Ẹgbẹ Ẹjẹ', 'Kungiyar Blood'),
(161, 'group', 'Group', 'গ্রুপ', 'Grupo', 'مجموعة', 'समूह', 'گروپ', '组', 'グループ', 'Grupo', 'группа', 'Groupe', '그룹', 'Gruppe', 'Gruppo', 'กลุ่ม', 'Csoport', 'Groep', 'Group', 'Kelompok', 'grup', 'Ομάδα', 'گروه', 'Kumpulan', 'గ్రూప్', 'குழு', 'ગ્રુપ', 'Grupa', 'Група', 'ਗਰੁੱਪ', 'grup', 'Group မှ', 'Ẹgbẹ', 'Rukuni'),
(162, 'religion', 'Religion', 'ধর্ম', 'Religión', 'دين', 'धर्म', 'مذہب', '宗教', '宗教', 'Religião', 'религия', 'Religion', '종교', 'Religion', 'Religione', 'ศาสนา', 'Vallás', 'Religie', 'religio', 'Agama', 'Din', 'Θρησκεία', 'دین', 'Agama', 'మతం', 'மதம்', 'ધર્મ', 'Religia', 'Релігія', 'ਧਰਮ', 'Religie', 'ဘာသာ', 'Esin', 'Addini'),
(163, 'birth_date', 'Birth Date', 'জন্ম তারিখ', 'Fecha de nacimiento', 'تاريخ الميلاد', 'जन्म दिन', 'تاریخ پیدائش', '生日', '誕生日', 'Data de nascimento', 'Дата рождения', 'Date de naissance', '생일', 'Geburtsdatum', 'Data di nascita', 'วันที่เกิด', 'Születési dátum', 'Geboortedatum', 'Dies natalis, diei natalis, m', 'Tanggal lahir', 'Doğum günü', 'Ημερομηνία γέννησης', 'تاریخ تولد', 'Tarikh lahir', 'పుట్టిన తేదీ', 'பிறந்த தேதி', 'જન્મતારીખ', 'Data urodzenia', 'Дата народження', 'ਜਨਮ ਮਿਤੀ', 'Data nasterii', 'မွေးရက်', 'Ojo ibi', 'Ranar haifuwa'),
(164, 'resume', 'Resume', 'জীবনবৃত্তান্ত', 'Currículum', 'استئنف', 'बायोडाटा', 'دوبارہ شروع کریں', '恢复', '履歴書', 'Currículo', 'Продолжить', 'CV', '이력서', 'Fortsetzen', 'Curriculum vitae', 'ประวัติย่อ', 'Önéletrajz', 'Hervat', 'Proin', 'Lanjut', 'Devam et', 'ΒΙΟΓΡΑΦΙΚΟ', 'خلاصه', 'Teruskan', 'పునఃప్రారంభం', 'தற்குறிப்பு', 'ફરી શરુ કરવું', 'Wznawianie', 'Резюме', 'ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ', 'Relua', 'ပြန်စသည်', 'Tun pada', 'Tsayawa'),
(165, 'other_info', 'Other Info', 'অন্যান্য তথ্য', 'Otra información', 'معلومات اخرى', 'अन्य सूचना', 'دیگر معلومات', '其他信息', '他の情報', 'Outras informações', 'Дополнительная информация', 'Autre info', '기타 정보', 'Andere Information', 'Altre informazioni', 'ข้อมูลอื่น ๆ', 'Más információ', 'Andere informatie', 'alii Info', 'Info lain', 'Diğer Bilgiler', 'Άλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat Lain', 'ఇతర సమాచారం', 'மற்ற தகவல்', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', 'အခြားအအင်ဖို', 'Alaye miiran', 'Sauran Bayanan'),
(166, 'numeric', 'Numeric', 'সাংখ্যিক', 'Numérico', 'رقمية', 'संख्यात्मक', 'تعداد', '数字', '数値', 'Numérico', 'числовой', 'Numérique', '숫자', 'Numerisch', 'Numerico', 'เป็นตัวเลข', 'numerikus', 'numerieke', 'Ordo numerorum', 'Numerik', 'Sayısal', 'Αριθμητικός', 'عددی', 'Angka', 'సంఖ్యా', 'எண்', 'સંખ્યાત્મક', 'Numeryczne', 'Чисельний', 'ਨੁਮਾਇਕ', 'Numeric', 'ဂဏန်း', 'Nọmba', 'Numeric'),
(167, 'code', 'Code', 'কোড', 'Código', 'الشفرة', 'कोड', 'کوڈ', '码', 'コード', 'Código', 'Код', 'Code', '암호', 'Code', 'Codice', 'รหัส', 'Kód', 'Code', 'Code', 'Kode', 'kod', 'Κώδικας', 'کد', 'Kod', 'కోడ్', 'குறியீடு', 'કોડ', 'Kod', 'Код', 'ਕੋਡ', 'Cod', 'ကုဒ်', 'Koodu', 'Code'),
(168, 'pass_mark', 'Pass Mark', 'পাশ নম্বর', 'Aprobado', 'علامة المرور', 'उतीर्णांक', 'نشان مارک', '合格标志', 'パスマーク', 'Pass Mark', 'Проходной балл', 'Moyenne', '패스 마크', 'Mindestpunktzahl', 'Punteggio minimo', 'ผ่านมาร์ค', 'Minimális pontszám', 'Pass Mark', 'Mark Tempus', 'Pass Mark', 'Geçme notu', 'Περάστε το σήμα', 'علامت گذاری به عنوان', 'Pas Mark', 'పాస్ మార్క్', 'தேர்ச்சி மதிப்பெண்', 'પાસ માર્ક', 'Przekaż Marka', 'Пройти марку', 'ਮਾਰਕ ਪਾਸ ਕਰੋ', 'Nota de trecere', 'မာကုဖြတ်သွား', 'Ṣe ami Marku', 'Alamar tafiya'),
(169, 'full_mark', 'Full Mark', 'পুরো নম্বর', 'Marca completa', 'درجة كاملة', 'पूर्ण अंक', 'مکمل نشان', '满分', '満点', 'Nota máxima', 'Отметить все', 'Pleine marque', '만점', 'Volle Markierung', 'Full Mark', 'เครื่องหมายเต็มรูปแบบ', 'Teljes Mark', 'Volle markering', 'Mark plena', 'Tanda penuh', 'Tam not', 'Πλήρες σήμα', 'علامت کامل', 'Mark penuh', 'పూర్తి మార్కులు', 'முழு மதிப்பெண்', 'સંપૂર્ણ માર્ક', 'Pełny znak', 'Повний Марк', 'ਪੂਰਾ ਮਾਰਕ', 'Nota maxima', 'အပြည့်အဝမာကု', 'Samisi Kikun', 'Alamar cikakke'),
(170, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'लेखक', 'مصنف', '作者', '著者', 'Autor', 'автор', 'Auteur', '저자', 'Autor', 'Autore', 'ผู้เขียน', 'Szerző', 'Auteur', 'auctor', 'Penulis', 'Yazar', 'Συγγραφέας', 'نویسنده', 'Pengarang', 'రచయిత', 'ஆசிரியர்', 'લેખક', 'Autor', 'Автор', 'ਲੇਖਕ', 'Autor', 'စာရေးသူ', 'Onkọwe', 'Mawallafin'),
(171, 'day', 'Day', 'দিন', 'Día', 'يوم', 'दिन', 'دن', '天', '日', 'Dia', 'День', 'Dayjournée', '일', 'Tag', 'Giorno', 'วัน', 'Nap', 'Dag', 'Dies', 'Hari', 'Gün', 'Ημέρα', 'روز', 'Hari', 'డే', 'தினம்', 'દિવસ', 'Dzień', 'День', 'ਦਿਨ', 'Zi', 'နေ့', 'Ọjọ', 'Ranar'),
(172, 'start_time', 'Start Time', 'সময় শুরু', 'Hora de inicio', 'وقت البدء', 'समय शुरू', 'وقت آغاز', '开始时间', '始まる時間', 'Hora de início', 'Время начала', 'Heure de début', '시작 시간', 'Startzeit', 'Ora di inizio', 'เวลาเริ่มต้น', 'Kezdési idő', 'Starttijd', 'Satus tempus', 'Waktu mulai', 'Başlama zamanı', 'Ωρα έναρξης', 'زمان شروع', 'Masa mula', 'సమయం ప్రారంభించండి', 'ஆரம்பிக்கும் நேரம்', 'પ્રારંભ સમય', 'Czas rozpoczęcia', 'Час початку', 'ਸ਼ੁਰੂਆਤੀ ਸਮਾਂ', 'Timpul de începere', 'start ကိုအချိန်', 'Aago Ibẹrẹ', 'Fara lokaci'),
(173, 'end_time', 'End Time', 'শেষ সময়', 'Hora de finalización', 'وقت النهاية', 'अंतिम समय', 'آخر وقت', '时间结束', '終了時間', 'Fim do tempo', 'Время окончания', 'Heure de fin', '종료 시간', 'Endzeit', 'Fine del tempo', 'เวลาสิ้นสุด', 'Idő vége', 'Eindtijd', 'finis Tempus', 'Akhir waktu', 'Bitiş zamanı', 'Τέλος χρόνου', 'زمان پایان', 'Masa tamat', 'ముగింపు సమయం', 'முடிவு நேரம்', 'સમાપ્તિ સમય', 'Koniec czasu', 'Кінець часу', 'ਅੰਤ ਸਮਾਂ', 'Ora de terminare', 'အဆုံးအချိန်', 'Aago ipari', 'Ƙarshen lokaci'),
(174, 'start_date', 'Start Date', 'শুরুর তারিখ', 'Fecha de inicio', 'تاريخ البدء', 'आरंभ करने की तिथि', 'شروع کرنے کی تاریخ', '开始日期', '開始日', 'Data de início', 'Дата начала', 'Date de début', '시작 날짜', 'Anfangsdatum', 'Data d''inizio', 'วันที่เริ่มต้น', 'Kezdő dátum', 'Begin datum', 'Date incipere', 'Mulai tanggal', 'Başlangıç tarihi', 'Ημερομηνία έναρξης', 'تاریخ شروع', 'Tarikh mula', 'ప్రారంబపు తేది', 'தொடக்க தேதி', 'પ્રારંભ તારીખ', 'Data rozpoczęcia', 'Дата початку', 'ਤਾਰੀਖ ਸ਼ੁਰੂ', 'Data de început', 'စတင်သည့်ရက်စွဲ', 'Ọjọ Bẹrẹ', 'Fara Farawa'),
(175, 'end_date', 'End Date', 'শেষ তারিখ', 'Fecha final', 'تاريخ الانتهاء', 'अंतिम तिथि', 'آخری تاریخ', '结束日期', '終了日', 'Data final', 'Дата окончания', 'Date de fin', '종료일', 'Endtermin', 'Data di fine', 'วันที่สิ้นสุด', 'Befejezés dátuma', 'Einddatum', 'finis Date', 'Tanggal akhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ پایان', 'Tarikh tamat', 'ఆఖరి తేది', 'கடைசி தேதி', 'અંતિમ તારીખ', 'Data końcowa', 'Дата закінчення', 'ਅੰਤ ਦੀ ਮਿਤੀ', 'Data de încheiere', 'အဆုံးနေ့စွဲ', 'Ọjọ ipari', 'Ƙarshe Ranar'),
(176, 'relation', 'Relation', 'সম্পর্ক', 'Relación', 'علاقة', 'रिश्ता', 'تعلقات', '关系', '関係', 'Relação', 'Связь', 'Relation', '관계', 'Beziehung', 'Relazione', 'ความสัมพันธ์', 'Kapcsolat', 'Relatie', 'relatione', 'Hubungan', 'ilişki', 'Σχέση', 'رابطه', 'Hubungan', 'రిలేషన్', 'உறவு', 'સંબંધ', 'Relacja', 'Відносини', 'ਸਬੰਧ', 'Relație', 'ဆှေမြိုး', 'Ibasepo', 'Hada dangantaka'),
(177, 'profession', 'Profession', 'পেশা', 'Profesión', 'مهنة', 'व्यवसाय', 'پیشہ', '职业', '職業', 'Profissão', 'профессия', 'Métier', '직업', 'Beruf', 'Professione', 'อาชีพ', 'Szakma', 'Beroep', 'professionis', 'Profesi', 'Meslek', 'Επάγγελμα', 'حرفه', 'Profesion', 'వృత్తి', 'தொழில்', 'વ્યવસાય', 'Zawód', 'Професія', 'ਪੇਸ਼ਾ', 'Profesie', 'အလုပ်အကိုင်', 'Oṣiṣẹ', 'Zama'),
(178, 'roll_no', 'Roll No', 'ক্রমিক নাম্বার', 'Rollo No', 'رول نو', 'अनुक्रमांक', 'رول نمبر نہیں', '卷号', 'ロールNo', 'Roll No', 'Нет', 'Rouler Non', '롤 아니요', 'Rolle Nr', 'Rotolo n', 'ฉบับที่ไม่มี', 'Roll No', 'Roll No', 'Nulla volvunt', 'Roll No', 'Rulo Hayır', 'ρολό αριθ', 'رول نه', 'Roll No', 'రోల్ నం', 'ரோல் இல்லை', 'રોલ નં', 'Rzuć nr', 'ролл немає', 'ਰੋਲ ਨੰਬਰ ਨਹੀਂ', 'Rola numărul', 'အဘယ်သူမျှမလှိမ့်ပုံ', 'Roll Bẹẹkọ', 'Roll Babu'),
(179, 'registration_no', 'Registration No', 'নিবন্ধন নম্বর', 'Número de registro', 'رقم التسجيل', 'पंजीकरण क्रमांक', 'رجسٹریشن نمبر', '注册号', '登録番号', 'número de registro', 'номер регистрации', 'N ° d''enregistrement', '등록 번호', 'Registrierungsnr', 'Registrazione N', 'หมายเลขทะเบียน', 'regisztrációs szám', 'Registratienummer', 'No registration', 'Pendaftaran No', 'kayıt numarası', 'αριθμός καταχώρησης', 'شماره ثبت نام', 'Nombor pendaftaran', 'నమోదు సంఖ్య', 'பதிவு எண்', 'નોંધણી નં', 'Numer rejestracyjny', 'Номер реєстрації', 'ਰਜਿਸਟਰੇਸ਼ਨ ਨੰਬਰ', 'nr. de inregistrare', 'မှတ်ပုံတင်ခြင်းအဘယ်သူမျှမ', 'Iforukọ silẹ Ko si', 'Lambar rajista'),
(180, 'present_all', 'Present All', 'উপস্থিত সকল', 'Presente todo', 'الحالي الكل', 'सभी को प्रस्तुत करें', 'سب پیش', '现在所有', 'すべてを表示', 'Presente tudo', 'Представить все', 'Présenter tout', '모두 선물하기', 'Alle präsentieren', 'Presente tutto', 'นำเสนอทั้งหมด', 'Jelenleg mindet', 'Presenteer alles', 'nunc omnes', 'Hadir Semua', 'Hepsini Sunun', 'Παρουσιάστε όλα', 'در حال حاضر همه', 'Hadir Semua', 'అందరికీ అందించండి', 'அனைவருக்கும் வழங்கவும்', 'બધા હાજર', 'Przedstaw wszystko', 'Подаруй все', 'ਸਭ ਪੇਸ਼ ਕਰੋ', 'Prezentați-vă pe toți', 'ပစ္စုပ္ပန်အားလုံး', 'Paa Gbogbo', 'Duk Dukkan'),
(181, 'late_all', 'Late All', 'বিলম্বিত সকল', 'Late All', 'أواخر الكل', 'स्वर्गीय सभी', 'دیر سے', '所有的晚', '後期', 'Late All', 'Поздно все', 'Tard tout', '늦게 모두', 'Spät alle', 'Tutto in ritardo', 'ปลายทั้งหมด', 'Késő minden', 'Laat alles', 'late omnes', 'Terlambat semua', 'Hep Geç', 'Αργά Όλα', 'اواخر همه', 'Akhir semua', 'లేట్ అన్నీ', 'அனைவருக்கும்', 'લેટ ઓલ', 'Późno wszystkim', 'Пізно все', 'ਦੇਰ ਸਾਰੇ', 'Totul târziu', 'နှောင်းပိုင်းတွင်အားလုံး', 'Paa Gbogbo', 'Late Duk'),
(182, 'absent_all', 'Absent All', 'অনুপস্থিত সকল', 'Ausente todo', 'غائب الجميع', 'सभी अनुपस्थित', 'سب کو مطمئن', '缺席全部', 'すべてが不在', 'Absent All', 'Отсутствует все', 'Absent Tous', '모두 없슴', 'Alles fehlt', 'Assente tutti', 'ขาดทั้งหมด', 'Mindenki hiányzik', 'Afwezig allemaal', 'aberant aegrae', 'Tidak ada', 'Herkesten Yoksun', 'Απουσία όλων', 'همه وجود ندارند', 'Absent All', 'అబ్సెంట్ అన్నీ', 'எல்லாவற்றையும் விட', 'બધા ગેરહાજર', 'Nieobecny', 'Немає всіх', 'ਸਾਰੀ ਗੈਰਹਾਜ਼ਰੀ', 'Absent Toate', 'ပျက်ကွက်အားလုံး', 'Ti ko ni Gbogbo', 'Bazuwa Duk'),
(183, 'deadline', 'Deadline', 'শেষ তারিখ', 'Fecha tope', 'الموعد النهائي', 'समयसीमा', 'ڈیڈ لائن', '截止日期', '締め切り', 'Data limite', 'Крайний срок', 'Date limite', '마감 시간', 'Frist', 'Scadenza', 'วันกำหนดส่ง', 'Határidő', 'Deadline', 'deadline', 'Batas waktu', 'Son tarih', 'Προθεσμία', 'ضرب الاجل', 'Tarikh akhir', 'గడువు', 'காலக்கெடுவை', 'અન્તિમ રેખા', 'Ostateczny termin', 'Термін дії', 'ਡੈੱਡਲਾਈਨ', 'Termen limita', 'သတ်မှတ်နောက်ဆုံးအချိန်', 'Ọjọ ipari', 'Kwanan lokaci'),
(184, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট', 'Punto de Grado', 'تراكمي', 'मूल्यांकन', 'گریڈ پوائنٹ', '成绩点', 'グレードポイント', 'Ponto de classificação', 'Точка оценки', 'Grade Point', '학점', 'Notenpunkt', 'Grado', 'Grade Point', 'Grade Point', 'Grade punt', 'gradus punctum', 'Indeks Prestasi', 'Grade Point', 'Σημείο βαθμού', 'نقطه درجه', 'Gred Point', 'గ్రేడ్ పాయింట్', 'கிரேடு புள்ளி', 'ગ્રેડ પોઇન્ટ', 'Punkt Grade', 'Градуйова точка', 'ਗਰੇਡ ਪੁਆਇੰਟ', 'Punct de punctaj', 'တန်း Point သို့', 'Iwe Ipele', 'Alamar Jagora'),
(185, 'mark_from', 'Mark From', 'মার্ক থেকে', 'Marcar de', 'علامة من', 'मार्क से', 'سے نشان زد کریں', '马克从', 'マークする', 'Mark From', 'Отметить от', 'Mark From', '마크부터', 'Mark von', 'Mark From', 'ทำเครื่องหมายจาก', 'Mark From', 'Markeer van', 'Mark ex', 'Mark dari', 'İşaretle', 'Σημειώστε από', 'مارک از', 'Tanda dari', 'నుండి మార్క్', 'இருந்து மார்க்', 'માર્ક ફ્રોમ', 'Mark From', 'Позначка з', 'ਮਾਰਕ ਤੋ', 'Marchează din', 'မှစ. , Mark', 'Samisi Lati', 'Alama Daga'),
(186, 'mark_to', 'Mark To', 'মার্ক পর্যন্ত', 'Marcar a', 'مارك تو', 'मार्क टू', 'نشان زد کریں', '标记为', 'マークする', 'Mark To', 'Отметить', 'Mark To', '표시 대상', 'Zu markieren', 'Mark To', 'ทำเครื่องหมายว่าต้องการ', 'Jelölje meg', 'Mark To', 'Mark Ad', 'Mark To', 'Mark To', 'Mark To', 'علامت گذاری به عنوان', 'Mark To', 'మార్క్ టు', 'மார்க் டூ', 'માર્ક ટુ', 'Mark To', 'Позначити до', 'ਮਾਰਕ ਕਰਨ ਲਈ', 'Marchează la', 'မာကုရန်', 'Samisi Lati', 'Alama Don'),
(187, 'room_no', 'Room No', 'কক্ষ নম্বর', 'Habitación no', 'غرفة رقم', 'कमरा क्रमांक', 'کمرہ نمبر', '房间号', '部屋番号', 'Quarto Não', 'Комната нет', 'Chambre numéro', '객실 번호', 'Raum Nummer', 'Stanza No', 'เบอร์ห้อง', 'Szobaszám', 'Kamer nummer', 'nullus locus', 'Kamar no', 'Oda numarası', 'Αριθμός δωματίου', 'شماره اتاق', 'Nombor bilik', 'గది సంఖ్య', 'அறை இல்லை', 'રૂમ નં', 'Pokój numer', 'Кімната №', 'ਕਮਰਾ ਨੰਬਰ', 'Cameră nr', 'ROOM တွင်အဘယ်သူမျှမ', 'Yara Bẹẹkọ', 'Room Babu'),
(188, 'attend_all', 'Attend All', 'উপস্থিত সকল', 'Asistir a todos', 'حضور الجميع', 'सभी में शामिल हों', 'Attend All', '全部参加', 'すべてに出席する', 'Participe de todos', 'Все участники', 'Assister à tous', '모두 참석', 'An allen teilnehmen', 'Partecipare a tutti', 'เข้าร่วมทั้งหมด', 'Vegyen részt mindenben', 'Woon iedereen bij', 'adtende omnes', 'Menghadiri Semua', 'Herkese Katıl', 'Παρακολουθήστε όλους', 'حضور در همه', 'Hadiri Semua', 'అన్ని హాజరు', 'எல்லாவற்றிலும் கலந்துகொள்ளுங்கள்', 'બધા હાજરી', 'Weź udział w wszystkim', 'Відвідати все', 'ਸਾਰੇ ਹਾਜ਼ਰ ਹੋਵੋ', 'Participați la toate', 'အားလုံးတက်ရောက်ရန်', 'Lọ gbogbo', 'Ku halarci Duk'),
(189, 'mark_total', 'Mark Total', 'মোট মার্ক', 'Mark Total', 'مارك المجموع', 'कुल मार्क', 'کل مارک', '马克总', 'マーク合計', 'Mark Total', 'Марка Всего', 'Mark Total', '마크 합계', 'Gesamtmarkierung', 'Mark Total', 'Mark Total', 'Mark Összesen', 'Markeer Total', 'Mark Summa', 'Mark Total', 'Mark Total', 'Σημείωση Σύνολο', 'مارک کل', 'Mark Jumlah', 'మొత్తం మార్క్', 'மொத்தம் மார்க்', 'કુલ ચિહ્ન', 'Mark Total', 'Марк Тотал', 'ਕੁੱਲ ਮਿਲਾਓ', 'Marchează total', 'မာကုစုစုပေါင်း', 'Samisi Kolopin', 'Mark Total'),
(190, 'mark_obtain', 'Mark Obtain', 'প্রাপ্ত মার্ক', 'Mark Obtain', 'الحصول على علامة', 'मार्क ओब्टेन', 'نشان زد کریں', '马克获得', 'マーク取得', 'Mark Obtain', 'Mark Получить', 'Mark Obtain', '마크 획득', 'Mark Erhalten', 'Mark Ottieni', 'Mark Obtain', 'Mark Obtain', 'Markeer verkrijgen', 'Mark Vitam', 'Mark mendapatkan', 'Mark Al', 'Σημάδι αποκτήστε', 'علامت گذاری به دست آوردن', 'Mark Obtain', 'గుర్తు పొందండి', 'மார்க் பெறவும்', 'માર્ક ઑબ્ટેન', 'Mark Obtain', 'Позначте ', 'ਮਾਰਕ ਆਬਟੈੱਨ', 'Marchează Obțineți', 'မာကုရယူပါ', 'Samisi Gba', 'Mark Obtain'),
(191, 'remark', 'Remark', 'মন্তব্য', 'Observación', 'تعليق', 'टिप्पणी', 'تبصرہ', '备注', 'リマーク', 'Observação', 'замечание', 'Remarque', '말', 'Anmerkung', 'osservazione', 'ข้อสังเกต', 'Megjegyzés', 'Opmerking', 'Attende', 'Ucapan', 'düşünce', 'Παρατήρηση', 'یادداشت', 'Catatan', 'వ్యాఖ్య', 'கருத்து', 'રીમાર્ક', 'Uwaga', 'Зауваження', 'ਟਿੱਪਣੀ', 'Remarcă', 'ပွောဆို', 'Atokasi', 'Alamar'),
(192, 'option', 'Option', 'পছন্দ', 'Opción', 'اختيار', 'विकल्प', 'اختیار', '选项', 'オプション', 'Opção', 'вариант', 'Option', '선택권', 'Möglichkeit', 'Opzione', 'ตัวเลือก', 'választási lehetőség', 'Keuze', 'optionem', 'Pilihan', 'seçenek', 'Επιλογή', 'گزینه', 'Pilihan', 'ఎంపిక', 'விருப்பம்', 'વિકલ્પ', 'Opcja', 'Варіант', 'ਚੋਣ', 'Opțiune', 'option ကို', 'Aṣayan', 'Zaži'),
(193, 'running_session', 'Running Session', 'চলমান সেশন', 'Sesión en ejecución', 'تشغيل الدورة', 'चल रहा सत्र', 'چل رہا ہے اجلاس', '运行会话', 'ランニングセッション', 'Sessão de corrida', 'Запуск сеанса', 'Session en cours', '러닝 세션', 'Sitzung wird ausgeführt', 'Esecuzione della sessione', 'การเรียกใช้เซสชัน', 'Futtatás', 'Sessie uitvoeren', 'currens Sessio', 'Menjalankan sesi', 'Oturum Devam Ediyor', 'Εκτέλεση συνόδου', 'در حال اجرا', 'Sesi Berjalan', 'సెషన్ రన్నింగ్', 'அமர்வு இயக்குதல்', 'સત્ર ચાલી રહ્યું છે', 'Prowadzenie sesji', 'Запуск сесії', 'ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ', 'Sesiunea de desfășurare', 'အပြေးတွေ့ဆုံဆွေးနွေးပွဲ', 'Ipade Nṣiṣẹ', 'Zangon Zama'),
(194, 'promote_to_session', 'Promote to Session', 'উন্নীতকরণ  সেশন', 'Promover a la sesión', 'الترقية إلى الجلسة', 'सत्र को बढ़ावा देना', 'اجلاس میں فروغ دیں', '促进会议', 'セッションに昇進', 'Promover a Sessão', 'Поощрять сессию', 'Promouvoir à la session', '세션으로 승격', 'Zu einer Sitzung hochstufen', 'Promuovi alla sessione', 'โปรโมตเซสชัน', 'Előmozdítása a munkamenethez', 'Promoten naar sessie', 'Sessio autem Promovere', 'Promosikan untuk Sesi', 'Oturuma Teşvik Et', 'Προωθήστε στη σύνοδο', 'ارتقا به جلسه', 'Menggalakkan Sesi', 'సెషన్కు ప్రచారం చేయండి', 'அமர்வுக்கு ஊக்குவிக்கவும்', 'સત્રમાં પ્રમોટ કરો', 'Promuj do sesji', 'Реклама на сеанс', 'ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ', 'Promovați la sesiune', 'တွေ့ဆုံဆွေးနွေးပွဲမှမြှင့်တင်', 'Igbelaruge si Ipade', 'Ƙaddamar zuwa Zama'),
(195, 'current_class', 'Current Class', 'বর্তমান শ্রেণী', 'Clase actual', 'الفئة الحالية', 'वर्तमान कक्षा', 'موجودہ کلاس', '当前类', '現在のクラス', 'Classe atual', 'Текущий класс', 'Classe actuelle', '현재 수업', 'Aktuelle Klasse', 'Classe corrente', 'ระดับปัจจุบัน', 'Jelenlegi osztály', 'Huidige klasse', 'Current Paleonemertea Class', 'Kelas sekarang', 'Mevcut Sınıf', 'Τρέχουσα κλάση', 'کلاس کنونی', 'Kelas Semasa', 'ప్రస్తుత క్లాస్', 'தற்போதைய வகுப்பு', 'વર્તમાન વર્ગ', 'Aktualna klasa', 'Поточний клас', 'ਮੌਜੂਦਾ ਕਲਾਸ', 'Clasa curentă', 'လက်ရှိအတန်းအစား', 'Akoko lọwọlọwọ', 'Kwanan Yanzu'),
(196, 'promote_to_class', 'Promote To Class', 'উন্নীতকরণ  শ্রেণী', 'Promover a clase', 'الترقية إلى الفصل', 'कक्षा को बढ़ावा देना', 'کلاس میں فروغ دیں', '促进上课', 'クラスに昇格', 'Promover para a classe', 'Повысить класс', 'Promouvoir en classe', '클래스로 승격', 'In die Klasse hochstufen', 'Promuovi in classe', 'โปรโมตในชั้นเรียน', 'Promóció az osztályba', 'Promoot Class', 'Promovere Ad Paleonemertea Class', 'Promosikan ke Kelas', 'Sınıfı Tanıyalım', 'Προωθήστε στην κλάση', 'ارتقا به کلاس', 'Menggalakkan Ke Kelas', 'క్లాస్కి ప్రచారం చేయండి', 'வகுப்புக்கு ஊக்குவிக்கவும்', 'વર્ગ માટે પ્રોત્સાહન', 'Promuj do klasy', 'Реклама в класі', 'ਕਲਾਸ ਨੂੰ ਵਧਾਓ', 'Promovați la clasă', 'အတန်းအစားစေရန်မြှင့်တင်ရန်', 'Igbelaruge Lati Kilasi', 'Ƙaddamar da Ƙungiya'),
(197, 'next_roll_no', 'Next Roll No', 'পরবর্তী রোল', 'Siguiente rollo No', 'التالي لفة لا', 'अगला रोल नंबर', 'اگلے رول نمبر', '下一卷No', '次のロール番号', 'Next Roll No', 'Следующий ролл Нет', 'Prochain rouleau No', '다음 롤 없음', 'Nächste Rolle Nr', 'Next Roll No', 'ฉบับต่อไป No', 'Következő Roll No.', 'Volgende rol Nee', 'Next Roll No', 'Gulungan Berikutnya No', 'Sonraki Rulo Hayır', 'Επόμενος αριθμός ρόλου', 'بعدی رول نه', 'Rol seterusnya No', 'తదుపరి రోల్ సంఖ్య', 'அடுத்த ரோல் இல்லை', 'આગામી રોલ નં', 'Następna rolka nr', 'Наступний рулон немає', 'ਅਗਲਾ ਰੋਲ ਕੋਈ ਨਹੀਂ', 'Următorul Roll Nu', 'Next ကို Roll အဘယ်သူမျှမ', 'Eerun Oke No', 'Nemi na gaba Babu'),
(198, 'promote', 'Promote', 'উন্নীত করা', 'Promover', 'تروج \\ يشجع \\ يعزز \\ ينمى \\ يطور', 'को बढ़ावा देना', 'فروغ دیں', '促进', 'プロモーション', 'Promover', 'содействовать', 'Promouvoir', '홍보', 'Fördern', 'Promuovere', 'ส่งเสริม', 'Népszerűsít', 'Promoten', 'Promovere', 'Memajukan', 'Desteklemek', 'Προάγω', 'ترویج', 'Menggalakkan', 'ప్రమోట్', 'ஊக்குவிக்க', 'પ્રમોટ કરો', 'Promować', 'Рекламувати', 'ਵਧਾਓ', 'Promova', 'မြှင့်တင်ရန်', 'Igbelaruge', 'Ƙara'),
(199, 'book_id', 'Book ID', 'বই আইডি', 'ID de libro', 'معرف الكتاب', 'बुक आईडी', 'کتاب کی شناخت', '图书ID', '書籍ID', 'ID do livro', 'Книжный идентификатор', 'ID de livre', '도서 ID', 'Buch-ID', 'ID del libro', 'รหัสหนังสือ', 'Könyvazonosító', 'Boek-ID', 'id libri', 'ID buku', 'Kitap kimliği', 'Αναγνωριστικό βιβλίου', 'شناسه کتاب', 'ID Buku', 'బుక్ ID', 'புத்தக ஐடி', 'બુક ID', 'Identyfikator książki', 'Ідентифікатор книги', 'ਬੁੱਕ ID', 'Carte de identitate', 'စာအုပ် ID ကို', 'Iwe iD', 'ID ID'),
(200, 'isbn_no', 'ISBN No', 'আইএসবিএন নম্বর', 'ISBN No', 'رقم إيسبن لا', 'आईएसबीएन नहीं', 'ISBN نمبر', '书号', 'ISBNいいえ', 'Número ISBN', 'ISBN Нет', 'ISBN Non', 'ISBN 아니오', 'ISBN Nr', 'ISBN n', 'เลข ISBN', 'ISBN szám', 'ISBN nr', 'ISBN No', 'ISBN No', 'ISBN Hayır', 'Αριθμός ISBN', 'ISBN شماره', 'ISBN No', 'ISBN సంఖ్య', 'ISBN இல்லை', 'આઇએસબીએન નં', 'Numer ISBN', 'Номер ISBN', 'ISBN ਨਹੀਂ', 'ISBN nr', 'ISBN အဘယ်သူမျှမ', 'ISBN Bẹẹkọ', 'ISBN Babu'),
(201, 'book_cover', 'Book Cover', 'বইয়ের কভার', 'Tapa del libro', 'غلاف الكتاب', 'पुस्तक आवरण', 'کتاب کاپوشش، کتاب کی جلد', '封面', 'ブックカバー', 'Capa de livro', 'Книжная обложка', 'Couverture de livre', '책 표지', 'Buchumschlag', 'Copertina del libro', 'ปกหนังสือ', 'Könyvborító', 'Boekomslag', 'Libro Cover', 'Sampul buku', 'Kitap kapağı', 'Εξώφυλλο βιβλίου', 'جلد کتاب', 'Kulit buku', 'పుస్తకపు అట్ట', 'புத்தக உறை', 'પુસ્તક કવર', 'Okładka książki', 'Обкладинка книги', 'ਬੁੱਕ ਕਵਰ', 'Coperta cărții', 'စာအုပ်အဖုံး', 'Iwe Ideri iwe', 'Rufin Shafin'),
(202, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'मूल्य', 'قیمت', '价钱', '価格', 'Preço', 'Цена', 'Prix', '가격', 'Preis', 'Prezzo', 'ราคา', 'Ár', 'Prijs', 'pretium', 'Harga', 'Fiyat', 'Τιμή', 'قیمت', 'Harga', 'ధర', 'விலை', 'કિંમત', 'Cena £', 'Ціна', 'ਕੀਮਤ', 'Preț', 'စျေးနှုန်း', 'Iye owo', 'Farashin'),
(203, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'मात्रा', 'مقدار', '数量', '量', 'Quantidade', 'Количество', 'Quantité', '수량', 'Menge', 'Quantità', 'ปริมาณ', 'Mennyiség', 'Aantal stuks', 'quantitas', 'Kuantitas', 'miktar', 'Ποσότητα', 'مقدار', 'Kuantiti', 'మొత్తము', 'அளவு', 'જથ્થો', 'Ilość', 'Кількість', 'ਗਿਣਤੀ', 'Cantitate', 'အရေအတွက်', 'Opolopo', 'Yawan'),
(204, 'availble', 'Available', 'সহজলভ্য', 'Disponible', 'متاح', 'उपलब्ध', 'دستیاب', '可得到', '利用可能', 'acessível', 'Доступный', 'Disponible', '유효한', 'Verfügbar', 'A disposizione', 'ที่มีจำหน่าย', 'Elérhető', 'Beschikbaar', 'available', 'Tersedia', 'Mevcut', 'Διαθέσιμος', 'در دسترس', 'Tersedia', 'అందుబాటులో', 'கிடைக்கும்', 'ઉપલબ્ધ', 'Dostępny', 'Доступно', 'ਉਪਲੱਬਧ', 'Disponibil', 'ရရှိနိုင်', 'Wa', 'Akwai'),
(205, 'edition', 'Edition', 'সংস্করণ', 'Edición', 'الإصدار', 'संस्करण', 'ایڈیشن', '版', '版', 'Edição', 'Издание', 'Édition', '판', 'Auflage', 'Edizione', 'ฉบับ', 'Kiadás', 'Editie', 'edition', 'Edisi', 'Baskı', 'Εκδοση', 'نسخه', 'Edisi', 'ఎడిషన్', 'பதிப்பு', 'આવૃત્તિ', 'Wydanie', 'Видання', 'ਐਡੀਸ਼ਨ', 'Ediție', 'Edition ကို', 'Itọsọna', 'Edition'),
(206, 'almira_rack', 'Almira No', 'আলমারি নম্বর', 'Almira No', 'ألميرا نو', 'अलमिरा नो', 'الامرا نمبر', 'Almira No', 'Almira No', 'Almira Não', 'Альмира Нет', 'Almira Non', 'Almira No', 'Almira Nein', 'Almira no', 'Almira No', 'Almira No', 'Almira Nee', 'Non Almira', 'Almira No', 'Almira Hayır', 'Αλμίρα Όχι', 'آلمیرا نه', 'Almira No', 'అల్మిరా నం', 'அல்மிரா இல்லை', 'અલમરા ના', 'Almira Nie', 'Альміра №', 'ਅਲਮਾਮਾ ਨੰ', 'Almira nr', 'Almira အဘယ်သူမျှမ', 'Almira Bẹẹkọ', 'Almira Babu'),
(207, 'yes', 'Yes', 'হাঁ', 'Sí', 'نعم فعلا', 'हाँ', 'جی ہاں', '是', 'はい', 'sim', 'да', 'Oui', '예', 'Ja', 'sì', 'ใช่', 'Igen', 'Ja', 'Ita', 'iya nih', 'Evet', 'Ναί', 'بله', 'Ya', 'అవును', 'ஆம்', 'હા', 'tak', 'Так', 'ਹਾਂ', 'da', 'ဟုတ်ကဲ့', 'Bẹẹni', 'Ee');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(208, 'no', 'No', 'না', 'No', 'لا', 'नहीं', 'نہیں', '没有', 'いいえ', 'Não', 'нет', 'Non', '아니', 'Nein', 'No', 'ไม่', 'Nem', 'Nee', 'nullum', 'Tidak', 'Yok hayır', 'Οχι', 'نه', 'Tidak', 'తోబుట్టువుల', 'இல்லை', 'ના', 'Nie', 'Немає', 'ਨਹੀਂ', 'Nu', 'အဘယ်သူမျှမ', 'Rara', 'A''a'),
(209, 'library_id', 'Library ID', 'গ্রন্থাগার আইডি', 'ID de biblioteca', 'معرف المكتبة', 'लाइब्रेरी आईडी', 'لائبریری کی شناخت', '库ID', 'ライブラリID', 'ID da biblioteca', 'ИД библиотеки', 'ID de la bibliothèque', '도서관 ID', 'Bibliotheks-ID', 'ID della biblioteca', 'ID ห้องสมุด', 'Könyvtár azonosítója', 'Bibliotheek-ID', 'id bibliothecam', 'ID Perpustakaan', 'Kütüphane kimliği', 'Αναγνωριστικό βιβλιοθήκης', 'شناسه کتابخانه', 'ID Perpustakaan', 'లైబ్రరీ ID', 'நூலக ஐடி', 'લાઇબ્રેરી ID', 'Identyfikator biblioteki', 'Ідентифікатор бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਆਈਡੀ', 'ID-ul bibliotecii', 'စာကြည့်တိုက် ID ကို', 'ID ibi ipamọ', 'ID ID'),
(210, 'return_this', 'Return This', 'রিটার্ন করুন', 'Devuelve esto', 'عودة هذا', 'यह वापसी करें', 'واپس لو', '返回这个', 'これを返す', 'Retornar isso', 'Возвращение', 'Retournez ceci', '반환이', 'Gib das zurück', 'Restituire questo', 'กลับนี้', 'Vissza', 'Keer dit terug', 'return haec', 'Kembalikan ini', 'Geri dön', 'Επιστρέψτε αυτό', 'بازگشت این', 'Pulangkan ini', 'ఈ రిటర్న్', 'இந்த திரும்பு', 'આ આવો', 'Wróć to', 'Поверніть це', 'ਇਸ ਨੂੰ ਵਾਪਸ ਕਰੋ', 'Întoarce-te', 'ဤသည်ပြန်သွားသည်', 'Da eyi pada', 'Koma wannan'),
(211, 'vehicle_model', 'Vehicle Model', 'গাড়ী মডেল', 'Modelo de vehículo', 'نموذج المركبة', 'वाहन मॉडल', 'گاڑی کا ماڈل', '车辆模型', '車両モデル', 'Modelo do veículo', 'Модель транспортного средства', 'Modèle de véhicule', '차량 모델', 'Fahrzeugmodell', 'Modello di veicolo', 'โมเดลรถ', 'Járműmodell', 'Voertuigmodel', 'vehiculum Model', 'Model Kendaraan', 'Araç modeli', 'Μοντέλο οχήματος', 'مدل خودرو', 'Model Kenderaan', 'వాహన నమూనా', 'வாகன மாதிரி', 'વાહન મોડેલ', 'model maszyny', 'Модель автомобіля', 'ਵਾਹਨ ਮਾਡਲ', 'Modelul vehiculului', 'ယာဉ်မော်ဒယ်', 'Apẹẹrẹ ọkọ ayọkẹlẹ', 'Vehicle Model'),
(212, 'driver', 'Driver', 'চালক', 'Conductor', 'سائق', 'चालक', 'ڈرائیور', '司机', 'ドライバ', 'Motorista', 'Водитель', 'Chauffeur', '운전사', 'Treiber', 'autista', 'คนขับรถ', 'Sofőr', 'Bestuurder', 'agitator', 'Sopir', 'sürücü', 'Οδηγός', 'راننده', 'Pemandu', 'డ్రైవర్', 'இயக்கி', 'ડ્રાઈવર', 'Kierowca', 'Водій', 'ਡਰਾਇਵਰ', 'Conducător auto', 'မောင်းသူ', 'Awako', 'Driver'),
(213, 'vehicle_license', 'Vehicle License', 'গাড়ী লাইসেন্স', 'Licencia del vehículo', 'رخصة السيارة', 'वाहन लाइसेंस', 'گاڑیاں لائسنس', '车辆牌照', '車両ライセンス', 'Licença de veículo', 'Лицензия на автомобиль', 'Licence de véhicule', '차량 면허', 'Fahrzeuglizenz', 'Licenza del veicolo', 'ใบขับขี่', 'Gépjármű-engedély', 'Voertuig licentie', 'vehiculum License', 'Lisensi Kendaraan', 'Araç Lisansı', 'Άδεια οχήματος', 'مجوز خودرو', 'Lesen Kenderaan', 'వాహన లైసెన్సు', 'வாகன உரிமம்', 'વાહન લાઇસન્સ', 'Licencja pojazdu', 'Ліцензія на автомобіль', 'ਵਾਹਨ ਲਾਇਸੈਂਸ', 'Licența vehiculului', 'ယာဉ်လိုင်စင်', 'Iwe-aṣẹ ọkọ ayọkẹlẹ', 'Takardar Lasin Jirgin'),
(214, 'vehicle_contact', 'Vehicle Contact', 'গাড়ী যোগাযোগ', 'Contacto del vehículo', 'الاتصال مركبة', 'वाहन संपर्क', 'گاڑی سے رابطہ', '车辆接触', '車両の連絡先', 'Contato com o veículo', 'Контакт с автомобилем', 'Contact du véhicule', '차량 연락처', 'Fahrzeugkontakt', 'Contatto del veicolo', 'ติดต่อยานพาหนะ', 'Jármű kapcsolattartó', 'Contactpersoon voor voertuigen', 'Contact vehiculum', 'Kontak Kendaraan', 'Araç Teması', 'Επικοινωνία με το όχημα', 'تماس با خودرو', 'Kenalan Kenderaan', 'వాహన సంప్రదించండి', 'வாகன தொடர்பு', 'વાહન સંપર્ક', 'Kontakt z pojazdem', 'Контакт з транспортним засобом', 'ਵਾਹਨ ਸੰਪਰਕ', 'Contactul vehiculului', 'ယာဉ်ဆက်သွယ်ပါ', 'Ọkọ ọkọ ayọkẹlẹ', 'Sadarwar mota'),
(215, 'route_start', 'Route Start', 'রাস্তা শুরু', 'Ruta de inicio', 'بداية الطريق', 'रूट प्रारंभ करें', 'روٹ شروع', '路线开始', 'ルートスタート', 'Começo da rota', 'Начало маршрута', 'Début de l''itinéraire', '경로 시작', 'Route starten', 'Route Start', 'เริ่มต้นเส้นทาง', 'Útvonal indítása', 'Route Start', 'Satus route', 'Mulai rute', 'Yol Başlat', 'Έναρξη διαδρομής', 'شروع مسیر', 'Jalankan Permulaan', 'రూట్ ప్రారంభం', 'வழி தொடக்கம்', 'રૂટ પ્રારંભ', 'Rozpocznij trasę', 'Початок маршруту', 'ਰੂਟ ਸਟਾਰਟ', 'Urmați traseul', 'လမ်းကြောင်း Start ကို', 'Ibẹrẹ ọna', 'Fara hanya'),
(216, 'route_end', 'Route End', 'রাস্তা শেষ', 'Ruta final', 'نهاية الطريق', 'मार्ग समाप्ति', 'روٹ اختتام', '路线结束', 'ルートエンド', 'Fim da rota', 'Маршрутный конец', 'Fin de la route', '국도 끝', 'Routenende', 'Route End', 'Route End', 'Útvonal vége', 'Route einde', 'iter itineris finis', 'Akhir rute', 'Güzergah sonu', 'Διαδρομή διαδρομής', 'پایان مسیر', 'Laluan Akhir', 'మార్గం ఎండ్', 'முடிவடையும்', 'રૂટ એન્ડ', 'Koniec trasy', 'Кінець маршруту', 'ਰੂਟ ਐਂਡ', 'Traseul final', 'လမ်းကြောင်းအဆုံး', 'Ipari Ipa', 'Ƙare Ƙare'),
(217, 'route_fare', 'Route Fare', 'রাস্তা ভাড়া', 'Ruta de la ruta', 'الطريق الأجرة', 'रूट किराया', 'راستے کی قسم', '路线结束', 'ルート運賃', 'Tarifa de rota', 'Маршрутная плата', 'Route Fare', '노선 요금', 'Route Tarif', 'Itinerario', 'ค่าโดยสารเส้นทาง', 'Útvonali vásárlás', 'Route tarief', 'Bene route', 'Tarif rute', 'Yol Ücreti', 'Διαδρομή διαδρομής', 'کرایه تاکسی', 'Tambang Laluan', 'రూట్ ఫేర్', 'வழி கட்டணம்', 'રૂટ ફેર', 'Opłata za przejazd', 'Вартість маршруту', 'ਰੂਟ ਕਿਰਾਇਆ', 'Route Fare', 'လမ်းကြောင်းလက်မှတ်ခများ', 'Ipa itọsọna', 'Route Fare'),
(218, 'assign_vehicle', 'Assign Vehicle', 'গাড়ি নিযুক্ত করুন', 'Asignar vehículo', 'تعيين السيارة', 'वाहन असाइन करें', 'گاڑیاں تفویض کریں', '分配车辆', '車両を割り当てる', 'Atribuir veículo', 'Назначить автомобиль', 'Assigner un véhicule', '차량 지정', 'Fahrzeug zuweisen', 'Assegna veicolo', 'กำหนดยานพาหนะ', 'Jármű hozzárendelése', 'Voertuig toewijzen', 'vehiculum assignato', 'Tentukan Kendaraan', 'Aracı Ata', 'Αναθέστε το όχημα', 'تخصیص وسیله نقلیه', 'Berikan Kenderaan', 'వాహనాన్ని కేటాయించండి', 'வாகனத்தை ஒதுக்கவும்', 'વાહન સોંપો', 'Przydziel pojazd', 'Призначити автомобіль', 'ਵਾਹਨ ਨਿਯਤ ਕਰੋ', 'Alocați vehiculului', 'ယာဉ် assign', 'Fi irin-ọkọ fun', 'Sanya kayan motar'),
(219, 'hostel_type', 'Hostel Type', 'ছাত্রাবাস ধরন', 'Tipo de Hostal', 'نوع نزل', 'छात्रावास का प्रकार', 'ہاسٹل کی قسم', '旅馆类型', 'ホステルタイプ', 'Tipo de albergue', 'Тип хостела', 'Type d''auberge', '호스텔 유형', 'Herbergsart', 'Tipo di ostello', 'ประเภท Hostel', 'Szálló típusa', 'Hostel type', 'Type Hostel', 'Tipe asrama', 'Pansiyon Türü', 'Τύπος Hostel', 'نوع خوابگاه', 'Jenis Hostel', 'హాస్టల్ పద్ధతి', 'விடுதி வகை', 'છાત્રાલયનો પ્રકાર', 'Typ hostelu', 'Тип хостелу', 'ਹੋਸਟਲ ਦੀ ਕਿਸਮ', 'Tipul de hostel', 'ဘော်ဒါဆောင်အမျိုးအစား', 'Agbegbe Iru', 'Dakunan kwanan dalibai'),
(220, 'seat_total', 'Seat Total', 'আসন মোট', 'Asiento total', 'المقعد الكلي', 'सीट कुल', 'سیٹ کل', '座位总数', 'シート合計', 'Total do assento', 'Общее количество сидячих мест', 'Siège Total', '좌석 합계', 'Sitzplatz gesamt', 'Totale del sedile', 'ที่นั่งรวม', 'Seat Total', 'Seat Total', 'sede Summa', 'Kursi Total', 'Koltuk Toplam', 'Θέση Σύνολο', 'صندلی مجموع', 'Jumlah tempat duduk', 'సీట్ మొత్తం', 'மொத்த எண்ணிக்கை', 'બેઠક કુલ', 'Seat Total', 'Загальна кількість сидінь', 'ਸੀਟ ਕੁੱਲ', 'Seat Total', 'ထိုင်ခုံစုစုပေါင်း', 'Okun apapọ', 'Tsawon kuɗi'),
(221, 'cost_per_seat', 'Cost per Seat', 'আসন প্রতি খরচ', 'Costo por asiento', 'التكلفة لكل مقعد', 'सीट प्रति सीट', 'فی سیٹ لاگت', '每个座位的成本', '1シートあたりのコスト', 'Custo por assento', 'Стоимость за место', 'Coût par siège', '좌석 당 비용', 'Kosten pro Sitzplatz', 'Costo per posto', 'ต้นทุนต่อที่นั่ง', 'Tartózkodási költség', 'Kosten per stoel', 'Sumptus per propitiatorium,', 'Biaya per Kursi', 'Koltuk Başına Maliyet', 'Κόστος ανά Θέση', 'هزینه هر صندلی', 'Kos setiap Tempat Duduk', 'సీట్కు ఖర్చు', 'உட்கட்டமைப்புக்கான செலவு', 'સીટ દીઠ ખર્ચ', 'Koszt za miejsce', 'Вартість за місце', 'ਪ੍ਰਤੀ ਸੀਟ ਦੀ ਲਾਗਤ', 'Cost pe scaun', 'ထိုင်ခုံနှုန်းကုန်ကျစရိတ်', 'Iye owo fun ijoko', 'Kudin da Seat'),
(222, 'compose', 'Compose', 'লিখা', 'Componer', 'مؤلف موسيقى', 'लिखना', 'تحریر کریں', '撰写', '作成する', 'Compor', 'компоновать', 'Composer', '짓다', 'Komponieren', 'Comporre', 'แต่ง', 'Összeállít', 'Componeren', 'Componere epistolas', 'Menyusun', 'oluşturmak', 'Συνθέτω', 'ساختن', 'Tuliskan', 'కంపోజ్', 'எழுது', 'લખો', 'Komponować', 'Скласти', 'ਲਿਖੋ', 'Compune', 'compose', 'Ṣajọ', 'Shirya'),
(223, 'folder', 'Folder', 'ফোল্ডার', 'Carpeta', 'مجلد', 'फ़ोल्डर', 'فولڈر', '夹', 'フォルダ', 'Pasta', 'скоросшиватель', 'Dossier', '폴더', 'Mappe', 'Cartella', 'โฟลเดอร์', 'Folder', 'Map', 'folder', 'Map', 'Klasör', 'Ντοσιέ', 'پوشه', 'Folder', 'ఫోల్డర్', 'அடைவு', 'ફોલ્ડર', 'Teczka', 'Папка', 'ਫੋਲਡਰ', 'Pliant', 'ဖိုငျတှဲ', 'Folda', 'Jaka'),
(224, 'inbox', 'Inbox', 'ইনবক্স', 'Bandeja de entrada', 'صندوق الوارد', 'इनबॉक्स', 'ان باکس', '收件箱', '受信トレイ', 'Caixa de entrada', 'входящие', 'Boîte de réception', '받은 편지함', 'Posteingang', 'Posta in arrivo', 'กล่องขาเข้า', 'Bejövő', 'Postvak IN', 'inbuxo', 'Kotak masuk', 'Gelen kutusu', 'Inbox', 'صندوق ورودی', 'Peti masuk', 'ఇన్బాక్స్', 'உட்பெட்டி', 'ઇનબૉક્સ', 'W pudełku', 'Вхідні', 'ਇਨਬਾਕਸ', 'Inbox', 'inbox ထဲမှာ', 'Apo-iwọle', 'Inbox'),
(225, 'draft', 'Draft', 'ড্রাফ্ট্', 'Borrador', 'مشروع', 'प्रारूप', 'ڈرافٹ', '草案', 'ドラフト', 'Esboço, projeto', 'Проект', 'Brouillon', '초안', 'Entwurf', 'Bozza', 'ร่าง', 'vázlat', 'Droogte', 'capturam', 'Konsep', 'taslak', 'Προσχέδιο', 'پیش نویس', 'Draf', 'డ్రాఫ్ట్', 'வரைவு', 'ડ્રાફ્ટ', 'Wersja robocza', 'Чернетка', 'ਡਰਾਫਟ', 'Proiect', 'မူကြမ်း', 'Ifaworanhan', 'Shafin'),
(226, 'trash', 'Trash', 'ট্র্যাশ', 'Basura', 'قمامة، يدمر، يهدم', 'कचरा', 'ردی کی ٹوکری', '垃圾', 'ごみ', 'Lixo', 'дрянь', 'Poubelle', '폐물', 'Müll', 'Spazzatura', 'ขยะ', 'Szemét', 'uitschot', 'quisquiliae', 'Sampah', 'Çöp', 'Σκουπίδια', 'زباله ها', 'Sampah', 'ట్రాష్', 'குப்பைக்கு', 'ટ્રૅશ', 'Śmieci', 'Сміття', 'ਟ੍ਰੈਸ਼', 'Gunoi', 'အသုံးမရသောအရာ', 'Idọti', 'Shara'),
(227, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo'),
(228, 'discard', 'Discard', 'বাতিল', 'Descarte', 'تجاهل', 'छोड़ना', 'رکھو', '丢弃', '破棄', 'Descartar', 'отбрасывать', 'Jeter', '포기', 'Verwerfen', 'Scartare', 'ทิ้ง', 'Dobja', 'afdanken', 'Relinquere', 'Membuang', 'ıskarta', 'Απορρίπτω', 'نادیده گرفتن', 'Buang', 'విస్మరించు', 'நிராகரி', 'કાઢી નાખો', 'Odrzucać', 'Відхилити', 'ਬਰਖਾਸਤ ਕਰੋ', 'decarta', 'စွန့်ပစ်', 'Ṣabọ', 'Zubar da'),
(229, 'receiver_type', 'Receiver Type', 'প্রাপক প্রকার', 'Tipo de receptor', 'نوع جهاز الاستقبال', 'प्राप्तकर्ता प्रकार', 'رسیور کی قسم', '接收器类型', '受信機タイプ', 'Tipo de receptor', 'Тип приемника', 'Type de récepteur', '수신기 유형', 'Empfängertyp', 'Tipo di ricevitore', 'ประเภทตัวรับสัญญาณ', 'Vevőtípus', 'Ontvanger Type', 'Type receptorem', 'Jenis Penerima', 'Alıcı Türü', 'Τύπος δέκτη', 'نوع گیرنده', 'Jenis Penerima', 'స్వీకర్త పద్ధతి', 'பெறுநர் வகை', 'રીસીવર પ્રકાર', 'Typ odbiornika', 'Тип приймача', 'ਪ੍ਰਾਪਤਕਰਤਾ ਕਿਸਮ', 'Tip receptor', 'receiver အမျိုးအစား', 'Gbigba Iru', 'Mai karɓa iri'),
(230, 'receiver', 'Receiver', 'প্রাপক', 'Receptor', 'المتلقي', 'रिसीवर', 'وصول کنندہ', '接收器', '受信機', 'Receptor', 'Получатель', 'Destinataire', '리시버', 'Empfänger', 'Ricevitore', 'ผู้รับ', 'Receiver', 'Ontvanger', 'receptor', 'Penerima', 'Alıcı', 'Δέκτης', 'گیرنده', 'Penerima', 'స్వీకర్త', 'ரிசீவர்', 'રીસીવર', 'Odbiorca', 'Приймач', 'ਪ੍ਰਾਪਤਕਰਤਾ', 'Receptor', 'လက်ခံ', 'olugba', 'Mai karɓar'),
(231, 'time', 'Time', 'সময়', 'Hora', 'زمن', 'पहर', 'وقت', '时间', '時間', 'Tempo', 'Время', 'Temps', '시각', 'Zeit', 'Tempo', 'เวลา', 'Idő', 'Tijd', 'Tempus', 'Waktu', 'Zaman', 'χρόνος', 'زمان', 'Masa', 'సమయం', 'நேரம்', 'સમય', 'Czas', 'Час', 'ਸਮਾਂ', 'Timp', 'အချိန်', 'Aago', 'Lokaci'),
(232, 'read_message', 'Read Message', 'বার্তা পড়ুন', 'Leer el mensaje', 'اقرأ الرساله', 'संदेश पढ़ना', 'پیغام پڑھیں', '阅读消息', 'メッセージを読む', 'Leia a mensagem', 'Читать сообщение', 'Lire le message', '메시지 읽기', 'Lies die Nachricht', 'Leggi il messaggio', 'อ่านข้อความ', 'Üzenet olvasása', 'Lees bericht', 'Read Nuntius', 'Baca pesan', 'Mesajı oku', 'Διαβάστε το μήνυμα', 'خواندن پیام', 'Baca Mesej', 'సందేశం చదవండి', 'செய்தி வாசிக்கவும்', 'સંદેશ વાંચો', 'Czytać wiadomość', 'Читати повідомлення', 'ਸੁਨੇਹਾ ਪੜ੍ਹੋ', 'Citiți mesajul', 'ကို Message ကိုဖတ်ပါ', 'Ka Ifiranṣẹ', 'Karanta Saƙo'),
(233, 'reply', 'Reply', 'উত্তর', 'Respuesta', 'الرد', 'जवाब दे दो', 'جواب دیں', '回复', '応答', 'Resposta', 'Ответить', 'Répondre', '댓글', 'Antworten', 'rispondere', 'ตอบ', 'Válasz', 'Antwoord', 'Respondeo', 'Balasan', 'cevap', 'Απάντηση', 'پاسخ', 'Balas', 'ప్రత్యుత్తరం', 'பதில்', 'જવાબ આપો', 'Odpowiadać', 'Відповідь', 'ਜਵਾਬ ਦਿਉ', 'Răspuns', 'ပြန်ကြားချက်', 'Idahun', 'Amsa'),
(234, 'attachment', 'Attachment', 'সংযুক্তি', 'Adjunto archivo', 'المرفق', 'आसक्ति', 'منسلکہ', '附件', 'アタッチメント', 'Anexo', 'прикрепление', 'Attachement', '부착', 'Befestigung', 'attaccamento', 'ความผูกพัน', 'Attachment', 'gehechtheid', 'affectum', 'Lampiran', 'Ek dosya', 'Συνημμένο', 'ضمیمه', 'Lampiran', 'జోడింపు', 'இணைப்பு', 'જોડાણ', 'Załącznik', 'Вкладення', 'ਅਟੈਚਮੈਂਟ', 'Atașament', 'ပူးတွဲမှု', 'Asopọ', 'Abin haɗi'),
(235, 'dynamic_tag', 'Dynamic Tag', 'ডায়নামিক ট্যাগ', 'Etiqueta dinámica', 'علامة ديناميكية', 'डायनेमिक टैग', 'متحرک ٹیگ', '动态标签', '動的タグ', 'Tag dinâmico', 'Динамический тег', 'Balise dynamique', '동적 태그', 'Dynamische Markierung', 'Tag dinamico', 'แท็กแบบไดนามิก', 'Dinamikus címke', 'Dynamische tag', 'dynamic Omega', 'Tag Dinamis', 'Dinamik Etiket', 'Δυναμική ετικέτα', 'برچسب پویا', 'Tag Dinamik', 'డైనమిక్ ట్యాగ్', 'டைனமிக் டேக்', 'ડાયનેમિક ટૅગ', 'Tag dynamiczny', 'Динамічний тег', 'ਡਾਇਨਾਮਿਕ ਟੈਗ', 'Etichetă dinamică', 'dynamic Tag ကို', 'Atilẹyin Ayika', 'Dynamic Tag'),
(236, 'gateway', 'Gateway', 'গেটওয়ে', 'Puerta', 'بوابة', 'द्वार', 'گیٹ وے', '网关', 'ゲートウェイ', 'Gateway', 'шлюз', 'passerelle', '게이트웨이', 'Tor', 'porta', 'ประตู', 'Gateway', 'poort', 'porta', 'pintu gerbang', 'geçit', 'πύλη', 'دروازه', 'Gateway', 'గేట్వే', 'நுழைவாயில்', 'ગેટવે', 'Przejście', 'Шлюз', 'ਗੇਟਵੇ', 'portal', 'တံခါးပေါက်', 'Ẹnu-ọna', 'Ƙofar waje'),
(237, 'email_body', 'Email Body', 'ইমেইল বডি', 'Cuerpo del correo electronico', 'هيئة البريد الإلكتروني', 'ईमेल बॉडी', 'ای میل جسم', '电子邮件正文', 'メール本文', 'Corpo do e-mail', 'Тело письма', 'Corps de l''e-mail', '이메일 본문', 'Nachrichtentext', 'Email Corpo', 'Email Body', 'Email Body', 'E-mail body', 'Email Corpus', 'Email Tubuh', 'E-posta Gövdesi', 'Σώμα ηλεκτρονικού ταχυδρομείου', 'بدن ایمیل', 'Badan E-mel', 'ఇమెయిల్ బాడీ', 'மின்னஞ்சல் உடல்', 'ઇમેઇલ શારીરિક', 'Treść e-maila', 'Email Body', 'ਈਮੇਲ ਬਾਡੀ', 'Organismul de e-mail', 'အီးမေးလ်ပို့ရန်ခန္ဓာကိုယ်', 'Imeeli Ara', 'Jikin Jiki'),
(238, 'notice_for', 'Notice for', 'নোটিশ ফর', 'Aviso para', 'إشعار ل', 'के लिए सूचना', 'نوٹس', '通知', 'お知らせ', 'Aviso para', 'Уведомление для', 'Avis pour', '공지 사항', 'Hinweis für', 'Avviso per', 'แจ้งให้ทราบ', 'Figyelmeztetés', 'Kennisgeving voor', 'notitia est', 'Pemberitahuan untuk', 'Için bildirim', 'Ειδοποίηση για', 'برای', 'Notis untuk', 'గమనించండి', 'கவனிக்கவும்', 'માટે નોટિસ', 'Powiadomienie dla', 'Зверніть увагу на', 'ਲਈ ਨੋਟਿਸ', 'Notă pentru', 'မှုအတွက်အသိပေးစာ', 'Akiyesi fun', 'Lura don'),
(239, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'तारीख', 'تاریخ', '日期', '日付', 'Encontro', 'Дата', 'Rendez-vous amoureux', '날짜', 'Datum', 'Data', 'วันที่', 'Dátum', 'Datum', 'Date', 'Tanggal', 'tarih', 'Ημερομηνία', 'تاریخ', 'Tarikh', 'తేదీ', 'தேதி', 'તારીખ', 'Data', 'Дата', 'ਤਾਰੀਖ', 'Data', 'နေ့စှဲ', 'Ọjọ', 'Kwanan wata'),
(240, 'from_date', 'From Date', 'তারিখ হইতে', 'Partir de la fecha', 'من التاريخ', 'तारीख से', 'اس تاریخ سے', '从日期', '日付から', 'Da data', 'С даты', 'Partir de la date', '날짜부터', 'Ab Datum', 'Dalla data', 'จากวันที่', 'Dátumtól', 'Van datum', 'Ex Date', 'Dari tanggal', 'İtibaren', 'Από την ημερομηνία', 'از تاریخ', 'Dari tarikh', 'తేదీ నుంచి', 'தேதி முதல்', 'તારીખથી', 'Od daty', 'Від дати', 'ਮਿਤੀ ਤੋਂ', 'Din data', 'နေ့စွဲကနေ', 'Lati Ọjọ', 'Daga Kwanan wata'),
(241, 'to_date', 'To Date', 'তারিখ পর্যন্ত', 'Hasta la fecha', 'ان يذهب في موعد', 'तारीख तक', 'تاریخ تک', '至今', '現在まで', 'Até a presente data', 'Встретиться1', 'À ce jour', '오늘까지', 'Miteinander ausgehen', 'Ad oggi', 'ถึงวันที่', 'Randizni', 'Daten', 'Ad Date', 'Saat ini', 'Bugüne kadar', 'Μέχρι σήμερα', 'به روز', 'Untuk Tarikh', 'తేదీ వరకు', 'தேதி', 'આજ સુધી', 'Spotykać się z kimś', 'До дати', 'ਮਿਤੀ ਤੱਕ', 'La zi', 'ယနေ့အထိ', 'Titi di akoko yi', 'Don Kwanan wata'),
(242, 'image', 'Image', 'ইমেজ', 'Imagen', 'صورة', 'छवि', 'تصویر', '图片', '画像', 'Imagem', 'Образ', 'Image', '영상', 'Bild', 'Immagine', 'ภาพ', 'Kép', 'Beeld', 'Image', 'Gambar', 'görüntü', 'Εικόνα', 'تصویر', 'Gambar', 'చిత్రం', 'பட', 'છબી', 'Obraz', 'Зображення', 'ਚਿੱਤਰ', 'Imagine', 'image ကို', 'Aworan', 'Hoton hoto'),
(243, 'event_for', 'Event for', 'ইভেন্ট ফর', 'Evento para', 'حدث ل', 'के लिए घटना', 'کے لئے واقعہ', '事件', 'イベント', 'Evento para', 'Событие для', 'Événement pour', '이벤트', 'Ereignis für', 'Evento per', 'กิจกรรมสำหรับ', 'Esemény', 'Evenement voor', 'res enim', 'Acara untuk', 'Için Etkinlik', 'Εκδήλωση για', 'رویداد برای', 'Acara untuk', 'ఈవెంట్ కోసం', 'நிகழ்வு', 'માટે ઇવેન્ટ', 'Wydarzenie dla', 'Подія для', 'ਲਈ ਇਵੈਂਟ', 'Eveniment pentru', 'များအတွက်အဖြစ်အပျက်', 'Iṣẹlẹ fun', 'Aukuwa don'),
(244, 'event_place', 'Event Place', 'ইভেন্ট স্থান', 'Lugar del evento', 'مكان الحدث', 'इवेंट प्लेस', 'واقعہ کی جگہ', '活动地点', 'イベント会場', 'Lugar do Evento', 'Место проведения мероприятия', 'Lieu de l''événement', '행사 장소', 'Veranstaltungsort', 'Luogo dell''evento', 'สถานที่จัดงาน', 'Rendezvényhelyszín', 'Evenementplaats', 'res Locus Iste', 'Tempat acara', 'Etkinlik Yeri', 'Τόπος εκδήλωσης', 'محل برگزاری', 'Tempat Acara', 'ఈవెంట్ ప్లేస్', 'நிகழ்வு இடம்', 'ઇવેન્ટ પ્લેસ', 'Miejsce zdarzenia', 'Місце проведення', 'ਇਵੈਂਟ ਸਥਾਨ', 'Locul evenimentului', 'အဖြစ်အပျက်နေရာ', 'Ibi ti o ṣe', 'Tarihin Lura'),
(245, 'coming_from', 'Coming From', 'যেখান থেকে আসছে', 'Procedente de', 'القادمة من', 'से आ रही', 'سے آنے والے', '来自（哪里', 'から来る', 'Vindo de', 'Приходящий из', 'Provenir de', '에서 오는', 'Kommen von', 'Proveniente da', 'มาจาก', 'Jön valahonnan', 'Afkomstig uit', 'Ex', 'Berasal dari', 'Gelen', 'Που προέρχονται από', 'داره میاد از', 'Yang datang dari', 'వస్తున్నది', 'வரவிருக்கிறது', 'આવતા', 'Pochodzi z', 'Виходячи з', 'ਤੋਂ ਆ ਰਿਹਾ ਹੈ', 'Provin de la', 'မှစ. လာမယ့်', 'Wiwa Lati', 'Zuwan Daga'),
(246, 'to_meet', 'To Meet', 'যার সাথে দেখা করবে', 'Conocer', 'لكي نلتقي', 'मीलऩा', 'ملنے کے لئے', '见面', '会う', 'Encontrar', 'Встречаться', 'Rencontrer', '만나다', 'Treffen', 'Incontrare', 'พบ', 'Találkozni', 'Ontmoeten', 'Convenire', 'Bertemu', 'Tanışmak', 'Να συναντησω', 'برای دیدار با', 'Berjumpa', 'కలవడం', 'சந்திக்க', 'મળવા', 'Spotkać', 'Зустріти', 'ਮਿਲਣ ਲਈ', 'A întâlni', 'တွေ့ဖို့', 'Lati pade', 'Don saduwa'),
(247, 'reason_to_meet', 'Reason to Meet', 'দেখা করার কারণ', 'Motivo para reunirse', 'سبب الاجتماع', 'मिलने का कारण', 'ملاقات کرنے کی وجہ', '满足的理由', '会う理由', 'Razão para conhecer', 'Причина встречи', 'Raison de rencontrer', '만나는 이유', 'Grund zu treffen', 'Motivo per incontrarsi', 'เหตุผลที่จะพบ', 'A találkozás oka', 'Reden om te ontmoeten', 'Ratio ut meet', 'Alasan untuk bertemu', 'Tanışma Nedeni', 'Λόγος για να συναντήσω', 'دلیل برای دیدار', 'Sebab untuk Bertemu', 'కలుసుకోవడానికి కారణం', 'சந்திக்க காரணம்', 'મળવા કારણ', 'Powód do spotkania', 'Привід зустрітися', 'ਮਿਲਣ ਦਾ ਕਾਰਨ', 'Motivul pentru a satisface', 'တွေ့ဆုံဖို့အကြောင်းရင်း', 'Idi lati pade', 'Dalili na Saduwa'),
(248, 'check_in', 'Check In', 'চেক ইন', 'Registrarse', 'تحقق في', 'चेक इन', 'چیک کریں', '报到', 'チェックイン', 'Check-in', 'Регистрироваться', 'Enregistrement', '체크인', 'Check-In', 'Registrare', 'เช็คอิน', 'Becsekkolás', 'Check in', 'Reprehendo in', 'Mendaftar', 'Giriş', 'Παραδίδω αποσκευές', 'چک کردن', 'Daftar masuk', 'చెక్ ఇన్ చేయండి', 'சரிபார்க்கவும்', 'ચેક ઇન કરો', 'Zameldować się', 'Перевірь', 'ਚੈੱਕ ਇਨ ਕਰੋ', 'Verifica', 'ရောက်ရှိကြောင်းစာရင်းသွင်းခြင်း', 'Wole sinu', 'Rajistan shiga'),
(249, 'check_out', 'Check Out', 'চেক আউট', 'Revisa', 'الدفع', 'चेक आउट', 'اس کو دیکھو', '查看', 'チェックアウト', 'Confira', 'Проверять, выписываться', 'Check-out', '체크 아웃', 'Auschecken', 'Check-out', 'เช็คเอาท์', 'Kijelentkezés', 'Uitchecken', 'reprehendo de', 'Periksa', 'Çıkış yapmak', 'Ολοκλήρωση αγοράς', 'وارسی', 'Semak Keluar', 'తనిఖీ చేయండి', 'பாருங்கள்', 'તપાસો', 'Sprawdzić', 'Перевірити', 'ਕਮਰਾ ਛੱਡ ਦਿਓ', 'Verifică', 'ထွက်ခွာသည်', 'Ṣayẹwo', 'Duba Out'),
(250, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'रकम', 'رقم', '量', '量', 'Montante', 'Количество', 'Montant', '양', 'Menge', 'Quantità', 'จำนวน', 'Összeg', 'Bedrag', 'tantum', 'Jumlah', 'Miktar', 'Ποσό', 'میزان', 'Jumlah', 'మొత్తం', 'தொகை', 'રકમ', 'Ilość', 'Сума', 'ਦੀ ਰਕਮ', 'Cantitate', 'ငွေပမာဏ', 'Iye', 'Adadin'),
(251, 'discount', 'Discount', 'ছাড়', 'Descuento', 'خصم', 'छूट', 'ڈسکاؤنٹ', '折扣', 'ディスカウント', 'Desconto', 'скидка', 'Discount', '할인', 'Rabatt', 'Sconto', 'ส่วนลด', 'Kedvezmény', 'Korting', 'Buy', 'Diskon', 'İndirim', 'Εκπτωση', 'تخفیف', 'Diskaun', 'డిస్కౌంట్', 'தள்ளுபடி', 'ડિસ્કાઉન્ટ', 'Zniżka', 'Знижка', 'ਛੂਟ', 'Reducere', 'လျှော့စျေး', 'iye owo', 'Dama'),
(253, 'print', 'Print', 'প্রিন্ট', 'Impresión', 'طباعة', 'छाप', 'پرنٹ کریں', '打印', '印刷', 'Impressão', 'Распечатать', 'Impression', '인쇄', 'Drucken', 'Stampare', 'พิมพ์', 'Nyomtatás', 'Afdrukken', 'Print', 'Mencetak', 'baskı', 'Τυπώνω', 'چاپ', 'Cetak', 'ప్రింట్', 'அச்சு', 'છાપો', 'Wydrukować', 'Друк', 'ਛਾਪੋ', 'Imprimare', 'ပုံနှိပ်', 'Tẹjade', 'Buga'),
(254, 'paid', 'Paid', 'পরিশোদ', 'Pagado', 'دفع', 'भुगतान किया है', 'ادا کیا', '付费', '有料', 'Pago', 'оплаченный', 'Payé', '유료', 'Bezahlt', 'Pagato', 'ต้องจ่าย', 'Fizetett', 'Betaald', 'pretium', 'Dibayar', 'ödenmiş', 'επί πληρωμή', 'پرداخت شده', 'Dibayar', 'చెల్లింపు', 'பணம்', 'ચૂકવેલ', 'Płatny', 'Оплачений', 'ਦਾ ਭੁਗਤਾਨ', 'Plătit', 'paid', 'San', 'An biya'),
(255, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'उप-योग', 'ذیلی کل', '小计', '小計', 'Subtotal', 'Промежуточный итог', 'Total', '소계', 'Zwischensumme', 'totale parziale', 'ไม่ทั้งหมด', 'Részösszeg', 'Subtotaal', 'Subtotal', 'Subtotal', 'ara toplam', 'ΜΕΡΙΚΟ ΣΥΝΟΛΟ', 'کل حجم', 'jumlah kecil', 'పూర్తికాని', 'கூட்டுத்தொகை', 'પેટાસરવાળો', 'Suma częściowa', 'Сумарно', 'ਉਪ-ਕੁੱਲ', 'Subtotal', 'စုစုပေါင်း', 'Atokun', 'Subtotal'),
(256, 'method', 'Method', 'পদ্ধতি', 'Método', 'طريقة', 'तरीका', 'طریقہ', '方法', '方法', 'Método', 'метод', 'Méthode', '방법', 'Methode', 'Metodo', 'วิธี', 'Módszer', 'Methode', 'modum', 'metode', 'Yöntem', 'Μέθοδος', 'روش', 'Kaedah', 'విధానం', 'செய்முறை', 'પદ્ધતિ', 'metoda', 'Метод', 'ਵਿਧੀ', 'Metodă', 'နည်းလမ်း', 'Ọna', 'Hanyar'),
(257, 'payment_via', 'Payment Via', 'পেমেন্ট মাধ্যমে', 'Pago a través de', 'الدفع عن طريق', 'भुगतान के माध्यम से', 'ادائیگی کے ذریعے', '付款通过', '支払い方法', 'Pagamento através', 'Оплата через', 'Paiement Via', '지불 비아', 'Zahlung über', 'Pagamento Via', 'ชำระเงินผ่านทาง', 'Fizetés Via', 'Betaling Via', 'Payment Via', 'Pembayaran melalui', 'Ödeme Via', 'Πληρωμή μέσω Via', 'پرداخت از طریق', 'Pembayaran Melalui', 'చెల్లింపు ద్వారా', 'செலுத்தும் வழியாக', 'ચુકવણી વાયા', 'Płatność przez', 'Оплата Via', 'ਦੁਆਰਾ ਭੁਗਤਾਨ ਭੁਗਤਾਨ', 'Plata prin', 'ငွေပေးချေမှုရမည့်မှတစ်ဆင့်', 'Isanwo Nipasẹ', 'Biyan kuɗi ta hanyar'),
(259, 'yearly', 'Yearly', 'বার্ষিক', 'Anual', 'سنوي', 'सालाना', 'سالانہ', '每年', '毎年', 'Anual', 'каждый год', 'Annuel', '매년', 'Jährlich', 'Annuale', 'รายปี', 'Évi', 'jaar-', 'quot annis', 'Tahunan', 'Yıllık', 'Ετήσια', 'سالانه', 'Setiap tahun', 'ప్రతిసంవత్సరం', 'வருடாந்திரம்', 'વાર્ષિક', 'Rocznie', 'Щорічно', 'ਸਲਾਨਾ', 'Anual', 'နှစ်အလိုက်', 'Ọdún', 'Shekara shekara'),
(260, 'tabular', 'Tabular', 'ট্যাবুলার ডেটা', 'Tabular', 'مجدول', 'तालिका का', 'ٹیبلولر', '表格式的', '表形式', 'Tabular', 'табличный', 'Tabulaire', '표의', 'Tabellarisch', 'di tabella', 'แบน', 'Táblázatos', 'tabellarisch', 'Expositio canonica', 'Datar', 'yassı', 'Πινακοειδής', 'جدولی', 'Tabular', 'పట్టిక', 'சீரமைப்புப்', 'કોષ્ટક', 'Tabelaryczny', 'Табличний', 'ਤਾਲੂਲਰ', 'Tabular', 'tabular', 'Tabular', 'Tabula'),
(261, 'graphical', 'Graphical', 'গ্রাফিক', 'Gráfico', 'بياني', 'चित्रात्मक', 'گرافیکل', '图形', 'グラフィカルな', 'Gráfico', 'графический', 'Graphique', '그래픽', 'Grafisch', 'grafico', 'กราฟิก', 'Grafikus', 'grafisch', 'graphical', 'Grafis', 'Grafiksel', 'Γραφικός', 'گرافیکی', 'Grafik', 'గ్రాఫికల్', 'வரைவியல்', 'ગ્રાફિકલ', 'Graficzny', 'Графічний', 'ਗਰਾਫਿਕਲ', 'Grafic', 'graphical', 'Ti iwọn', 'Zane-zane'),
(262, 'remain', 'Remain', 'অবশিষ্ট', 'Permanecer', 'يبقى', 'रहना', 'رہنا', '留', '残っている', 'Permanecer', 'оставаться', 'Rester', '남아있는', 'Bleiben übrig', 'rimanere', 'ยังคง', 'Marad', 'Blijven', 'manent', 'Tetap', 'Kalmak', 'Παραμένει', 'ماندن', 'Kekal', 'ఉంటాయి', 'இருக்கும்', 'રહો', 'Pozostawać', 'Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Rămâne', 'ကျန်ရစ်', 'Duro', 'Ku tsaya'),
(263, 'month', 'Month', 'মাস', 'Mes', 'شهر', 'महीना', 'مہینہ', '月', '月', 'Mês', 'Месяц', 'Mois', '달', 'Monat', 'Mese', 'เดือน', 'Hónap', 'Maand', 'mense', 'Bulan', 'Ay', 'Μήνας', 'ماه', 'Bulan', 'నెల', 'மாதம்', 'માસ', 'Miesiąc', 'Місяць', 'ਮਹੀਨਾ', 'Lună', 'လ', 'Oṣu', 'Watan'),
(264, 'a_positive', 'A+', 'এ পজিটিভ', 'A +', 'A +', 'A+', 'A+', 'A+', 'A+', 'A+', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +'),
(265, 'a_negative', 'A-', 'এ নেগেটিভ', 'UN-', 'ا-', 'ए-', 'A-', '一个-', 'A-', 'UMA-', 'A-', 'A-', '에이-', 'EIN-', 'UN-', 'A-', 'A-', 'EEN-', 'A-', 'SEBUAH-', 'A-', 'ΕΝΑ-', 'A-', 'A-', 'ఒక-', 'ஏ', 'એ-', 'ZA-', 'A-', 'ਏ-', 'A-', 'A-', 'A-', 'A-'),
(266, 'b_positive', 'B+', 'বি পজিটিভ', 'B +', 'B +', 'बी +', 'B+', 'B+', 'B+', 'B+', 'B +', 'B+', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'பி', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +'),
(267, 'b_negative', 'B-', 'বি নেগেটিভ', 'SEGUNDO-', 'ب-', 'बी', 'B-', 'B-', 'B-', 'B-', 'B-', 'B-', '비-', 'B-', 'B-', 'B-', 'B-', 'B-', 'Sed placerat scelerisque', 'B-', 'B-', 'ΣΙ-', 'B-', 'B-', 'B-', 'பி-', 'બી-', 'B-', 'B-', 'ਬੀ-', 'B-', 'ပါဘူးရှငျ', 'B-', 'B-'),
(268, 'o_positive', 'O+', 'ও পজিটিভ', 'O +', 'O +', 'O+', 'اے +', 'O+', 'O+', 'O+', 'O +', 'O+', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'Domine +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'အို +', 'O +', 'O +'),
(269, 'o_negative', 'O-', 'ও নেগেটিভ', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', '영형-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'HAI-', 'O-', 'Ο-', 'O-', 'O-', 'O-', 'O-', 'ઓ-', 'O-', 'O-', 'ਓ-', 'O-', 'O-', 'O-', 'O-'),
(270, 'ab_positive', 'AB+', 'এবি পজিটিভ', 'AB +', 'AB +', 'एबी +', 'AB+', 'AB+', 'AB+', 'AB+', 'AB +', 'AB+', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'એબી +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +'),
(271, 'ab_negative', 'AB-', 'এবি নেগেটিভ', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB', 'AB-', 'AB-', 'ΑΒ-', 'AB-', 'AB-', 'AB-', 'மோலின்', 'એબી-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-'),
(272, 'vendor', 'Vendor', 'বিক্রেতা', 'Vendedor', 'بائع', 'विक्रेता', 'وینڈر', 'AB-', 'ベンダー', 'Fornecedor', 'продавец', 'Vendeur', '공급 업체', 'Verkäufer', 'venditore', 'ผู้ขาย', 'Eladó', 'Verkoper', 'vendor', 'Penjaja', 'satıcı', 'Προμηθευτή', 'فروشنده', 'Penjual', 'Vendor', 'விற்பனையாளர்', 'વેન્ડર', 'Sprzedawca', 'Постачальник', 'ਵਿਕਰੇਤਾ', 'Vânzător', 'ရောင်းချသူ', 'Oluwo', 'Mai sayarwa'),
(273, 'relative', 'Relative', 'আত্মীয়', 'Relativo', 'نسبيا', 'सापेक्ष', 'رشتہ دار', '相对的', '相対', 'Relativo', 'Относительный', 'Relatif', '상대적인', 'Relativ', 'Parente', 'ญาติ', 'Relatív', 'Familielid', 'relativum', 'Relatif', 'bağıl', 'Συγγενής', 'نسبت فامیلی', 'Relatif', 'సంబంధిత', 'உறவினர்', 'સંબંધી', 'Krewny', 'Відносний', 'ਿਰਸ਼ਤੇਦਾਰ', 'Relativ', 'ဆွေမျိုး', 'ojulumo', 'Aboki'),
(274, 'friend', 'Friend', 'বন্ধু', 'Amigo', 'صديق', 'दोस्त', 'دوست', '朋友', '友人', 'Amigos', 'Друг', 'Ami', '친구', 'Freund', 'Amico', 'เพื่อน', 'Barát', 'Vriend', 'amica', 'Teman', 'Arkadaş', 'Φίλος', 'دوست', 'Kawan', 'స్నేహితుని', 'நண்பன்', 'મિત્ર', 'Przyjaciel', 'Друг', 'ਦੋਸਤ', 'Prieten', 'မိတျဆှေ', 'Ọrẹ', 'Aboki'),
(275, 'family', 'Family', 'পরিবার', 'Familia', 'أسرة', 'परिवार', 'خاندان', '家庭', '家族', 'Família', 'семья', 'Famille', '가족', 'Familie', 'Famiglia', 'ครอบครัว', 'Család', 'Familie', 'familia', 'Keluarga', 'Aile', 'Οικογένεια', 'خانواده', 'Keluarga', 'కుటుంబ', 'குடும்ப', 'કૌટુંબિક', 'Rodzina', 'Сім''я', 'ਪਰਿਵਾਰ', 'Familie', 'မိသားစု', 'Ìdílé', 'Iyali'),
(276, 'interview', 'Interview', 'সাক্ষাত্কার', 'Entrevista', 'مقابلة', 'साक्षात्कार', 'انٹرویو', '访问', 'インタビュー', 'Entrevista', 'Интервью', 'Entretien', '회견', 'Interview', 'Colloquio', 'สัมภาษณ์', 'Interjú', 'Interview', 'colloquium', 'Wawancara', 'Röportaj', 'Συνέντευξη', 'مصاحبه', 'Temu bual', 'ఇంటర్వ్యూ', 'பேட்டி', 'મુલાકાત', 'Wywiad', 'Інтерв''ю', 'ਇੰਟਰਵਿਊ', 'Interviu', 'အင်တာဗျူး', 'Ibarawe', 'Tambayar'),
(277, 'meeting', 'Meeting', 'সাক্ষাৎ', 'Reunión', 'لقاء', 'मुलाकात', 'اجلاس', '会议', '会議', 'encontro', 'Встреча', 'Réunion', '모임', 'Treffen', 'Incontro', 'การประชุม', 'Találkozó', 'Vergadering', 'occurrens', 'Pertemuan', 'Toplantı', 'Συνάντηση', 'ملاقات', 'Mesyuarat', 'సమావేశం', 'சந்தித்தல்', 'બેઠક', 'Spotkanie', 'Зустріч', 'ਮੀਟਿੰਗ', 'Întâlnire', 'အစည်းအဝေး', 'Ipade', 'Haduwa'),
(278, 'mandatory', 'Mandatory', 'বাধ্যতামূলক', 'Obligatorio', 'إلزامي', 'अनिवार्य', 'لازمی', '强制性', '必須', 'Obrigatório', 'Обязательное', 'Obligatoire', '필수', 'Verpflichtend', 'Obbligatorio', 'จำเป็น', 'Kötelező', 'Verplicht', 'amet', 'Wajib', 'Zorunlu', 'Επιτακτικός', 'اجباری', 'Mandatori', 'తప్పనిసరి', 'கட்டாயமாகும்', 'ફરજિયાત', 'Obowiązkowy', 'Обов''язковий', 'ਲਾਜ਼ਮੀ', 'Obligatoriu', 'အတင်းအကျပ်ဖြစ်သော', 'Dandan', 'M'),
(279, 'optional', 'Optional', 'ঐচ্ছিক', 'Opcional', 'اختياري', 'ऐच्छिक', 'اختیاری', '可选的', 'オプション', 'Opcional', 'Необязательный', 'Optionnel', '선택 과목', 'Wahlweise', 'Opzionale', 'ไม่จำเป็น', 'Választható', 'facultatief', 'libitum', 'Pilihan', 'İsteğe bağlı', 'Προαιρετικός', 'اختیاری', 'Pilihan', 'ఐచ్ఛికము', 'விருப்ப', 'વૈકલ્પિક', 'Opcjonalny', 'Необов''язково', 'ਵਿਕਲਪਿਕ', 'facultativ', 'optional', 'Aṣayan', 'Zabin'),
(280, 'science', 'Science', 'বিজ্ঞান', 'Ciencia', 'علم', 'विज्ञान', 'سائنس', '科学', '科学', 'Ciência', 'Наука', 'Science', '과학', 'Wissenschaft', 'Scienza', 'วิทยาศาสตร์', 'Tudomány', 'Wetenschap', 'scientia', 'Ilmu', 'Bilim', 'Επιστήμη', 'علوم پایه', 'Sains', 'సైన్స్', 'அறிவியல்', 'વિજ્ઞાન', 'Nauka', 'Наука', 'ਵਿਗਿਆਨ', 'Ştiinţă', 'သိပ္ပံ', 'Imọ', 'Kimiyya'),
(281, 'arts', 'Arts', 'কলা', 'Letras', 'فنون', 'कला', 'آرٹس', '艺术', '芸術', 'Artes', 'искусства', 'Arts', '기예', 'Kunst', 'Arts', 'ศิลปะ', 'Arts', 'Arts', 'artium', 'Seni', 'Sanat', 'Τέχνες', 'هنرها', 'Seni', 'ఆర్ట్స్', 'கலை', 'આર્ટસ', 'Sztuka', 'Мистецтво', 'ਆਰਟਸ', 'Arte', 'ဝိဇ္ဇာ', 'Ọgbọn', 'Arts'),
(282, 'commerce', 'Commerce', 'বাণিজ্য', 'Comercio', 'تجارة', 'व्यापार', 'کامرس', '商业', 'コマース', 'Comércio', 'коммерция', 'Commerce', '상업', 'Handel', 'Commercio', 'พาณิชย์', 'kereskedelem', 'Handel', 'Commerce', 'Perdagangan', 'Ticaret', 'Εμπόριο', 'بازرگانی', 'Perdagangan', 'కామర్స్', 'வர்த்தக', 'વાણિજ્ય', 'Handel', 'Торгівля', 'ਵਣਜ', 'Comerţ', 'ရောင်းဝယ်ဖေါက်ကားခြင်း', 'Okoowo', 'Kasuwanci'),
(283, 'saturday', 'Saturday', 'শনিবার', 'sábado', 'يوم السبت', 'शनिवार', 'ہفتہ', '星期六', '土曜日', 'sábado', 'суббота', 'samedi', '토요일', 'Samstag', 'Sabato', 'วันเสาร์', 'szombat', 'zaterdag', 'Saturni', 'Sabtu', 'Cumartesi', 'Σάββατο', 'شنبه', 'Sabtu', 'శనివారం', 'சனிக்கிழமை', 'શનિવાર', 'sobota', 'Субота', 'ਸ਼ਨੀਵਾਰ', 'sâmbătă', 'စနေနေ့', 'Ọjọ Satidee', 'Asabar'),
(284, 'sunday', 'Sunday', 'রবিবার', 'domingo', 'الأحد', 'रविवार', 'اتوار', '星期日', '日曜日', 'domingo', 'Воскресенье', 'dimanche', '일요일', 'Sonntag', 'Domenica', 'วันอาทิตย์', 'vasárnap', 'zondag', 'Solis', 'Minggu', 'Pazar', 'Κυριακή', 'یکشنبه', 'Ahad', 'ఆదివారం', 'ஞாயிறு', 'રવિવાર', 'niedziela', 'Неділя', 'ਐਤਵਾਰ', 'duminică', 'တနင်္ဂနွေ', 'Sunday', 'Lahadi'),
(285, 'monday', 'Monday', 'সোমবার', 'lunes', 'الإثنين', 'सोमवार', 'سوموار', '星期一', '月曜', 'Segunda-feira', 'понедельник', 'Lundi', '월요일', 'Montag', 'Lunedi', 'วันจันทร์', 'hétfő', 'maandag', 'dies Lunae', 'Senin', 'Pazartesi', 'Δευτέρα', 'دوشنبه', 'Isnin', 'సోమవారం', 'திங்கட்கிழமை', 'સોમવાર', 'poniedziałek', 'Понеділок', 'ਸੋਮਵਾਰ', 'luni', 'တနင်္လာနေ့', 'Awọn aarọ', 'Litinin'),
(286, 'tuesday', 'Tuesday', 'মঙ্গলবার', 'martes', 'الثلاثاء', 'मंगलवार', 'منگل', '星期二', '火曜日', 'terça', 'вторник', 'Mardi', '화요일', 'Dienstag', 'martedì', 'วันอังคาร', 'kedd', 'dinsdag', 'Martis', 'Selasa', 'Salı', 'Τρίτη', 'سهشنبه', 'Selasa', 'మంగళవారం', 'செவ்வாய்க்கிழமை', 'મંગળવારે', 'wtorek', 'Вівторок', 'ਮੰਗਲਵਾਰ', 'marţi', 'အင်္ဂါနေ့', 'Ojoba', 'Talata'),
(287, 'wednesday', 'Wednesday', 'বুধবার', 'miércoles', 'الأربعاء', 'बुधवार', 'بدھ', '星期三', '水曜日', 'Quarta-feira', 'среда', 'Mercredi', '수요일', 'Mittwoch', 'mercoledì', 'วันพุธ', 'szerda', 'woensdag', 'Mercurii', 'Rabu', 'Çarşamba', 'Τετάρτη', 'چهار شنبه', 'Rabu', 'బుధవారం', 'புதன்கிழமை', 'બુધવાર', 'środa', 'Середа', 'ਬੁੱਧਵਾਰ', 'miercuri', 'ဗုဒ္ဓဟူးနေ့', 'Ọjọrú', 'Laraba'),
(288, 'thursday', 'Thursday', 'বৃহস্পতিবার', 'jueves', 'الخميس', 'गुरूवार', 'جمعرات', '星期四', '木曜日', 'Quinta-feira', 'Четверг', 'Jeudi', '목요일', 'Donnerstag', 'giovedi', 'วันพฤหัสบดี', 'csütörtök', 'donderdag', 'Iovis', 'Kamis', 'Perşembe', 'Πέμπτη', 'پنج شنبه', 'Khamis', 'గురువారం', 'வியாழக்கிழமை', 'ગુરુવાર', 'czwartek', 'Четвер', 'ਵੀਰਵਾਰ', 'joi', 'ကြာသပတေးနေ့', 'Ojobo', 'Alhamis'),
(289, 'friday', 'Friday', 'শুক্রবার', 'viernes', 'يوم الجمعة', 'शुक्रवार', 'جمعہ', '星期五', '金曜日', 'Sexta-feira', 'пятница', 'Vendredi', '금요일', 'Freitag', 'Venerdì', 'วันศุกร์', 'péntek', 'vrijdag', 'Veneris', 'Jumat', 'Cuma', 'Παρασκευή', 'جمعه', 'Jumaat', 'శుక్రవారం', 'வெள்ளி', 'શુક્રવાર', 'piątek', 'П''ятниця', 'ਸ਼ੁੱਕਰਵਾਰ', 'vineri', 'သောကြာနေ့', 'Ọjọ Ẹtì', 'Jumma''a'),
(290, 'january', 'January', 'জানুয়ারী', 'enero', 'كانون الثاني', 'जनवरी', 'جنوری', '一月', '1月', 'janeiro', 'январь', 'janvier', '일월', 'Januar', 'gennaio', 'มกราคม', 'január', 'januari-', 'Ianuarii', 'Januari', 'Ocak', 'Ιανουάριος', 'ژانویه', 'Januari', 'జనవరి', 'ஜனவரி', 'જાન્યુઆરી', 'styczeń', 'Січень', 'ਜਨਵਰੀ', 'ianuarie', 'ဇန္နဝါရီလ', 'Oṣù', 'Janairu'),
(291, 'february', 'February', 'ফেব্রুয়ারি', 'febrero', 'شهر فبراير', 'फरवरी', 'فروری', '二月', '2月', 'fevereiro', 'февраль', 'février', '이월', 'Februar', 'febbraio', 'กุมภาพันธ์', 'február', 'februari', 'Februarius', 'Februari', 'Şubat', 'Φεβρουάριος', 'فوریه', 'Februari', 'ఫిబ్రవరి', 'பிப்ரவரி', 'ફેબ્રુઆરી', 'luty', 'Лютий', 'ਫਰਵਰੀ', 'februarie', 'ဖေဖေါ်ဝါရီလ', 'Kínní', 'Fabrairu'),
(292, 'march', 'March', 'মার্চ', 'marzo', 'مارس', 'मार्च', 'مارچ', '游行', '行進', 'marcha', 'Март', 'Mars', '행진', 'März', 'marzo', 'มีนาคม', 'március', 'maart', 'Martii', 'Maret', 'Mart', 'Μάρτιος', 'مارس', 'Mac', 'మార్చి', 'மார்ச்', 'કુચ', 'Marsz', 'Березень', 'ਮਾਰਚ', 'Martie', 'မတ်လ', 'Oṣù', 'Maris'),
(293, 'april', 'April', 'এপ্রিল', 'abril', 'أبريل', 'अप्रैल', 'اپریل', '四月', '4月', 'abril', 'апрель', 'avril', '4 월', 'April', 'aprile', 'เมษายน', 'április', 'april', 'Aprilis', 'April', 'Nisan', 'Απρίλιος', 'آوریل', 'April', 'ఏప్రిల్', 'ஏப்ரல்', 'એપ્રિલ', 'kwiecień', 'Квітень', 'ਅਪ੍ਰੈਲ', 'Aprilie', 'ဧပြီလ', 'Kẹrin', 'Afrilu'),
(294, 'may', 'May', 'মে', 'Mayo', 'قد', 'मई', 'مئی', '可能', '5月', 'Pode', 'май', 'mai', '할 수있다', 'Kann', 'potrebbe', 'อาจ', 'Lehet', 'mei', 'May', 'Mungkin', 'Mayıs ayı', 'Ενδέχεται', 'ممکن است', 'Mungkin', 'మే', 'மே', 'મે', 'Może', 'Може', 'ਮਈ', 'Mai', 'မေ', 'Ṣe', 'Mayu'),
(295, 'june', 'June', 'জুন', 'junio', 'يونيو', 'जून', 'جون', '六月', '六月', 'Junho', 'июнь', 'juin', '유월', 'Juni', 'giugno', 'มิถุนายน', 'június', 'juni-', 'June', 'Juni', 'Haziran', 'Ιούνιος', 'ژوئن', 'Jun', 'జూన్', 'ஜூன்', 'જૂન', 'czerwiec', 'Червень', 'ਜੂਨ', 'iunie', 'ဇွန်လ', 'Okudu', 'Yuni'),
(296, 'july', 'July', 'জুলাই', 'julio', 'يوليو', 'जुलाई', 'جولائی', '七月', '7月', 'Julho', 'июль', 'juillet', '칠월', 'Juli', 'luglio', 'กรกฎาคม', 'július', 'juli-', 'Iulii', 'Juli', 'Temmuz', 'Ιούλιος', 'جولای', 'Julai', 'జూలై', 'ஜூலை', 'જુલાઈ', 'lipiec', 'Липень', 'ਜੁਲਾਈ', 'iulie', 'ဇူလိုင်လ', 'Keje', 'Yuli'),
(297, 'august', 'August', 'অগাস্ট', 'agosto', 'أغسطس', 'अगस्त', 'اگست', '八月', '8月', 'agosto', 'августейший', 'août', '팔월', 'August', 'agosto', 'สิงหาคม', 'augusztus', 'augustus', 'August', 'Agustus', 'Ağustos', 'Αύγουστος', 'آگوست', 'Ogos', 'ఆగస్టు', 'ஆகஸ்ட்', 'ઓગસ્ટ', 'sierpień', 'Серпень', 'ਅਗਸਤ', 'August', 'သြဂုတ်လ', 'Oṣù Kẹjọ', 'Agusta'),
(298, 'september', 'September', 'সেপ্টেম্বর', 'septiembre', 'سبتمبر', 'सितंबर', 'ستمبر', '九月', '9月', 'setembro', 'сентябрь', 'septembre', '구월', 'September', 'settembre', 'กันยายน', 'szeptember', 'september', 'September', 'September', 'Eylül', 'Σεπτέμβριος', 'سپتامبر', 'September', 'సెప్టెంబర్', 'செப்டம்பர்', 'સપ્ટેમ્બર', 'wrzesień', 'Вересень', 'ਸਿਤੰਬਰ', 'Septembrie', 'စက်တင်ဘာလ', 'Oṣu Kẹsan', 'Satumba'),
(299, 'october', 'October', 'অক্টোবর', 'octubre', 'شهر اكتوبر', 'अक्टूबर', 'اکتوبر', '十月', '10月', 'Outubro', 'октября', 'octobre', '십월', 'Oktober', 'ottobre', 'ตุลาคม', 'október', 'oktober', 'Octobris', 'Oktober', 'Ekim', 'Οκτώβριος', 'اکتبر', 'Oktober', 'అక్టోబర్', 'அக்டோபர்', 'ઓક્ટોબર', 'październik', 'Жовтень', 'ਅਕਤੂਬਰ', 'octombrie', 'အောက်တိုဘာလ', 'Oṣu Kẹwa', 'Oktoba'),
(300, 'november', 'November', 'নভেম্বর', 'noviembre', 'شهر نوفمبر', 'नवंबर', 'نومبر', '十一月', '11月', 'novembro', 'ноябрь', 'novembre', '십일월', 'November', 'novembre', 'พฤศจิกายน', 'november', 'november', 'November', 'November', 'Kasım', 'Νοέμβριος', 'نوامبر', 'November', 'నవంబర్', 'நவம்பர்', 'નવેમ્બર', 'listopad', 'Листопад', 'ਨਵੰਬਰ', 'noiembrie', 'နိုဝင်ဘာလ', 'Kọkànlá Oṣù', 'Nuwamba'),
(301, 'december', 'December', 'ডিসেম্বর', 'diciembre', 'ديسمبر', 'दिसंबर', 'دسمبر', '十二月', '12月', 'dezembro', 'Декабрь', 'décembre', '12 월', 'Dezember', 'dicembre', 'ธันวาคม', 'december', 'december', 'December', 'Desember', 'Aralık', 'Δεκέμβριος', 'دسامبر', 'Disember', 'డిసెంబర్', 'டிசம்பர்', 'ડિસેમ્બર', 'grudzień', 'Грудень', 'ਦਸੰਬਰ', 'decembrie', 'ဒီဇင်ဘာလ', 'Oṣù Kejìlá', 'Disamba'),
(302, 'boys', 'Boy', 'ছেলে', 'Chico', 'صبي', 'लड़का', 'لڑکا', '男孩', '男の子', 'Garoto', 'мальчик', 'Garçon', '소년', 'Junge', 'Ragazzo', 'เด็กผู้ชาย', 'Fiú', 'Jongen', 'Puer', 'Anak laki-laki', 'Oğlan', 'Αγόρι', 'پسر', 'Budak lelaki', 'బాయ్', 'சிறுவன்', 'બોય', 'Chłopak', 'Хлопчик', 'ਮੁੰਡਾ', 'Băiat', 'ယောက်ျားလေး', 'Ọmọkunrin', 'Yaro'),
(303, 'girls', 'Girl', 'মেয়ে', 'Niña', 'فتاة', 'लड़की', 'لڑکی', '女孩', '女の子', 'Menina', 'девушка', 'Fille', '소녀', 'Mädchen', 'Ragazza', 'สาว', 'Lány', 'Meisje', 'puella', 'Gadis', 'Kız', 'Κορίτσι', 'دختر', 'Gadis', 'గర్ల్', 'பெண்', 'ગર્લ', 'Dziewczyna', 'Дівчина', 'ਕੁੜੀ', 'Fată', 'မိန်းကလေး', 'Ọdọmọbìnrin', 'Yarinya '),
(304, 'combine', 'Combine', 'যৌথ', 'Combinar', 'دمج', 'जोड़ना', 'یکجا', '结合', '結合する', 'Combinar', 'скомбинировать', 'Combiner', '콤바인', 'Kombinieren', 'combinare', 'รวมกัน', 'Kombájn', 'Combineren', 'miscere', 'Menggabungkan', 'birleştirmek', 'Συνδυασμός', 'ترکیب کردن', 'Gabung', 'మిళితం', 'இணைக்க', 'ભેગું કરો', 'Połączyć', 'Комбінувати', 'ਜੁੜੋ', 'Combina', 'ပေါင်းစပ်', 'Darapọ', 'Haɗa'),
(305, 'ac', 'AC', 'এসি', 'C.A.', 'AC', 'एसी', 'AC', 'AC', '交流', 'AC', 'переменный ток', 'AC', '교류', 'Wechselstrom', 'AC', 'ไฟฟ้ากระแสสลับ', 'AC', 'AC', 'n:', 'AC', 'AC', 'ΜΕΤΑ ΧΡΙΣΤΟΝ', 'AC', 'AC', 'AC', 'ஏசி', 'એસી', 'AC', 'AC', 'AC', 'AC', 'AC အ', 'AC', 'AC'),
(306, 'non_ac', 'Non AC', 'নন এসি', 'No AC', 'غير أس', 'गैर एसी', 'غیر AC', '非交流', '非AC', 'Não AC', 'Non AC', 'Pas ca', '비 AC', 'Nicht Wechselstrom', 'Non AC', 'ไม่ใช่ AC', 'Nem AC', 'Niet AC', 'non Passage', 'Non AC', 'AC olmayan', 'Μη AC', 'غیر AC', 'Bukan AC', 'నాన్ AC', 'அல்லாத ஏசி', 'બિન એસી', 'Bez klimatyzacji', 'Не AC', 'ਗੈਰ ਏਸੀ', 'Non AC', 'non AC အ', 'Ko si AC', 'Ba AC'),
(307, 'male', 'Male', 'পুরুষ', 'Masculino', 'الذكر', 'नर', 'مرد', '男', '男性', 'Masculino', 'мужчина', 'Mâle', '남성', 'Männlich', 'Maschio', 'ชาย', 'Férfi', 'Mannetje', 'Masculum', 'Pria', 'Erkek', 'Αρσενικός', 'نر', 'Lelaki', 'మగ', 'ஆண்', 'પુરૂષ', 'Męski', 'Чоловік', 'ਮਰਦ', 'Masculin', 'အထီး', 'Okunrin', 'Namiji'),
(308, 'female', 'Female', 'মহিলা', 'Hembra', 'إناثا', 'महिला', 'عورت', '女', '女性', 'Fêmea', 'женский', 'Femelle', '여자', 'Weiblich', 'Femmina', 'หญิง', 'Női', 'Vrouw', 'feminam', 'Wanita', 'Kadın', 'Θηλυκός', 'زن', 'Perempuan', 'మహిళ', 'பெண்', 'સ્ત્રી', 'Płeć żeńska', 'Жінка', 'ਔਰਤ', 'Femeie', 'အမြိုးသမီး', 'Obinrin', 'Mace'),
(309, 'unpaid', 'Unpaid', 'অপরিশোধিত', 'No pagado', 'غير مدفوع', 'अवैतनिक', 'نام نہاد', '未付', '未払い', 'Não remunerado', 'неоплаченный', 'Non payé', '지불되지 않은', 'Unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'Kifizetetlen', 'onbetaald', 'insolutis', 'Tidak dibayar', 'ödenmemiş', 'Απλήρωτος', 'بدون پرداخت هزینه', 'Tidak dibayar', 'చెల్లించని', 'செலுத்தப்படாத', 'અવેતન', 'Nie zapłacony', 'Несплачені', 'ਅਵੇਤਨਕ', 'neplătit', 'မရတဲ့', 'Aisanwo', 'Ba a biya'),
(310, 'partial', 'Partial', 'আংশিক', 'Parcial', 'جزئي', 'आंशिक', 'جزوی', '局部', '部分', 'Parcial', 'частичный', 'Partiel', '부분', 'Teilweise', 'Parziale', 'เป็นบางส่วน', 'Részleges', 'partieel', 'sive partiales', 'Sebagian', 'Kısmi', 'Μερικός', 'جزئي', 'Separa', 'పాక్షికం', 'பகுதி', 'આંશિક', 'Częściowy', 'Частково', 'ਅਧੂਰਾ', 'Parțial', 'တစိတ်တဒေသဖြစ်သော', 'Apa kan', 'M'),
(311, 'father', 'Father', 'পিতা', 'Padre', 'الآب', 'पिता', 'باپ', '父亲', 'お父さん', 'Pai', 'Отец', 'Père', '아버지', 'Father', 'Padre', 'พ่อ', 'Apa', 'Vader', 'Pater', 'Ayah', 'baba', 'Πατέρας', 'پدر', 'Bapa', 'తండ్రి', 'அப்பா', 'પિતા', 'Ojciec', 'Батько', 'ਪਿਤਾ ਜੀ', 'Tată', 'ဖခင်', 'Baba', 'Uba'),
(312, 'mother', 'Mother', 'মাতা', 'Madre', 'أم', 'मां', 'ماں', '母亲', '母', 'Mãe', 'Мама', 'Mère', '어머니', 'Mutter', 'Madre', 'แม่', 'Anya', 'Moeder', 'Mater', 'Ibu', 'anne', 'Μητέρα', 'مادر', 'Ibu', 'తల్లి', 'தாய்', 'મધર', 'Mama', 'Мама', 'ਮਾਤਾ ਜੀ', 'Mamă', 'မိခင်', 'Iya', 'Uwar'),
(313, 'sister', 'Sister', 'বোন', 'Hermana', 'أخت', 'बहन', 'دیدی', '妹妹', 'シスター', 'Irmã', 'Сестра', 'sœur', '여자 형제', 'Schwester', 'Sorella', 'น้องสาว', 'lánytestvér', 'Zus', 'Soror', 'Saudara', 'Kız kardeş', 'Αδελφή', 'خواهر', 'Kakak', 'సోదరి', 'சகோதரி', 'બહેન', 'Siostra', 'Сестра', 'ਭੈਣ', 'soră', 'အစ်မ', 'Arabinrin', '''''yar''uwa'),
(314, 'brother', 'Brother', 'ভাই', 'Hermano', 'شقيق', 'भाई', 'بھائی', '哥哥', '兄', 'Irmão', 'Брат', 'frère', '동료', 'Bruder', 'Fratello', 'พี่ชาย', 'fiú testvér', 'Broer', 'Frater', 'Saudara', 'Erkek kardeş', 'Αδελφός', 'برادر', 'adik', 'బ్రదర్', 'சகோதரன்', 'ભાઈ', 'Brat', 'Брат', 'ਭਰਾ', 'Frate', 'အစ်ကို', 'Arakunrin', 'ɗan''uwana'),
(315, 'uncle', 'Uncle', 'চাচা', 'Tío', 'اخو الام', 'चाचा', 'چاچا', '叔叔', '叔父', 'Tio', 'Дядя', 'Oncle', '삼촌', 'Onkel', 'Zio', 'ลุง', 'Nagybácsi', 'Oom', 'avunculus', 'Paman', 'Amca dayı', 'Θείος', 'دایی', 'Paman', 'అంకుల్', 'மாமா', 'અંકલ', 'Wujek', 'Дядько', 'ਅੰਕਲ', 'unchi', 'ဘကြီး', 'aburo', 'kawuna'),
(316, 'maternal_uncle', 'Maternal Uncle', 'মামা', 'Tío materno', 'الخال', 'मा मा', 'ماموں', '舅', '母方の叔父', 'Tio materno', 'Дядя по матери', 'Oncle maternel', '임산부 삼촌', 'Onkel mütterlicherseits', 'Zio materno', 'คุณแม่ลุง', 'Anyai nagybátyja', 'Moeder oom', 'AVONCULUS', 'Paman ibu', 'Annelik Amca', 'Ο μητρικός θείος', 'دایی', 'Bapa saudara', 'మేనమామ', 'தாய் மாமா', 'માતૃત્વ અંકલ', 'Wujek od strony matki', 'Материнський дядько', 'ਮਾਵਾਂ ਦਾ ਅੰਕਲ', 'Unchiul matern', 'မိခင်ဦးလေး', 'obi aburo', 'Mahaifiyar uwa'),
(317, 'other_relative', 'Other Relative', 'অন্যান্য আত্মীয়', 'Otro pariente', 'قريب اخر', 'अन्य रिश्तेदार', 'دوسرے رشتے دار', '其他亲属', 'その他の相対', 'Outro parente', 'Другой родственник', 'Autre Relatif', '다른 친척', 'Anderer Verwandter', 'Altro parente', 'ญาติอื่น ๆ', 'Másik rokon', 'Ander familielid', 'aliud Relativum', 'Relatif lainnya', 'Diğer akraba', 'Αλλος συγγενης', 'خویشاوند دیگر', 'Saudara lain', 'మరొక బంధువు', 'மற்ற உறவினர்', 'અન્ય સંબંધી', 'Inne względne', 'Інший родич', 'ਹੋਰ ਰਿਸ਼ਤੇਦਾਰ', 'Altă rudă', 'ဆွေမျိုးကတခြား', 'Ebi miiran', 'Wasu dangi'),
(318, 'cash', 'Cash', 'নগদ', 'Efectivo', 'السيولة النقدية', 'कैश', 'نقد', '现金', '現金', 'Dinheiro', 'Денежные средства', 'En espèces', '현금', 'Kasse', 'Contanti', 'เงินสด', 'Készpénz', 'Contant geld', 'Cash', 'Kas', 'Nakit', 'Μετρητά', 'نقدی', 'Tunai', 'క్యాష్', 'பணம்', 'કેશ', 'Gotówka', 'Готівка', 'ਨਕਦ', 'Bani gheata', 'ငွေသား', 'Owo owo', 'tsabar kudi'),
(319, 'cheque', 'Cheque', 'চেক', 'Comprobar', 'التحقق من', 'चेक', 'چیک کریں', '检查', 'チェック', 'Verifica', 'Проверить', 'Vérifier', '검사', 'Prüfen', 'Dai un''occhiata', 'ตรวจสอบ', 'Jelölje be', 'Controleren', 'represserat', 'Memeriksa', 'Kontrol', 'Ελεγχος', 'بررسی', 'Semak', 'తనిఖీ', 'சரிபார்க்கவும்', 'તપાસો', 'Czek', 'Перевірте', 'ਚੈਕ', 'Verifica', 'စစ်ဆေးခြင်း', 'Ṣayẹwo', 'Duba'),
(320, 'paypal', 'Paypal', 'পেপ্যাল', 'Paypal', 'باي بال', 'Paypal', 'پے پال', '贝宝', 'Paypal', 'Paypal', 'Paypal', 'Pay Pal', '페이팔', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Coin Paypal', 'Paypal', 'Paypal', 'Paypal', 'پی پال', 'Paypal', 'Paypal', 'பேபால்', 'પેપલ', 'Paypal', 'Paypal', 'ਪੇਪਾਲ', 'Paypal', 'paypal', 'PayPal', 'Paypal'),
(321, 'stripe', 'Stripe', 'এস্ট্রিপ', 'Raya', 'شريط', 'पट्टी', 'پٹی', '条纹', 'ストライプ', 'Listra', 'нашивка', 'Bande', '줄무늬', 'Streifen', 'Banda', 'ริ้ว', 'Csík', 'Streep', 'clavo', 'Garis', 'Şerit', 'Ταινία', 'خط خطی', 'Stripe', 'గీత', 'கோடுகள்', 'ગેરુનો', 'Naszywka', 'Смуга', 'ਧੱਬਾ', 'Dunga', 'အစင်း', 'adikala', 'Stripe'),
(322, 'payumoney', 'PayUMoney', 'পে ইউ মানি', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'પેયમની', 'PayUMoney', 'PayUMoney', 'ਪੈਰਾਮਮਨੀ', 'PayUMoney', 'PayUMoney', 'PayIMEMB', 'PayPony'),
(323, 'clicktell', 'Clicktell', 'ক্লিকটেল', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', '클릭', 'Klicken', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'کلیک کنید', 'Clicktell', 'Clicktell', 'Clicktell', 'ક્લિકટેલ', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'TẹTẹ', 'Clicktell'),
(324, 'twilio', 'Twilio', 'টুইলিও', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'ટ્વીલો', 'Twilio', 'Твіліо', 'ਟਵਿਲੀਓ', 'Twilio', 'Twilio', 'Twilio', 'Twilio'),
(325, 'bulk', 'Bulk', 'বাল্ক', 'Abultar', 'حجم', 'थोक', 'بلک', '块', 'バルク', 'Massa', 'насыпной', 'masse', '대부분', 'Bulk', 'Massa', 'ขนาดใหญ่', 'tömeg', 'massa', 'mole', 'Jumlah besar', 'yığın', 'Ογκος', 'فله', 'Pukal', 'బల్క్', 'மொத்த', 'બલ્ક', 'Objętość', 'Масова частка', 'ਬਲਕ', 'masă', 'ထုထည်', 'olopobobo', 'Girma'),
(326, 'msg91', 'MSG91', 'এমএসজি 91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91'),
(327, 'plivo', 'Plivo', 'প্লিবও', 'Plivo', 'Plivo', 'Plivo', 'پلیو', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Pliva', '플라 보', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Πλίβο', 'پلویو', 'Plivo', 'Plivo', 'Plivo', 'પ્લિવો', 'Plivo', 'Пліво', 'ਪਲਵਾ', 'Plivo', 'Plivo', 'Plivo', 'Plivo'),
(328, 'second', 'Second', 'সেকেন্ড', 'Segundo', 'ثانيا', 'दूसरा', 'دوسرا', '第二', '二番目', 'Segundo', 'второй', 'Seconde', '둘째', 'Zweite', 'Secondo', 'ที่สอง', 'Második', 'Tweede', 'secundi', 'Kedua', 'İkinci', 'Δεύτερος', 'دومین', 'Kedua', 'రెండవ', 'இரண்டாவது', 'બીજું', 'druga', 'Другий', 'ਦੂਜਾ', 'Al doilea', 'ဒုတိယ', 'Keji', 'Na biyu'),
(329, 'minute', 'Minute', 'মিনিট', 'Minuto', 'اللحظة', 'मिनट', 'منٹ', '分钟', '分', 'Minuto', 'минут', 'Minute', '분', 'Minute', 'minuto', 'นาที', 'Perc', 'Minuut', 'minute', 'Menit', 'Dakika', 'Λεπτό', 'دقیقه', 'Minit', 'నిమిషం', 'மினிட்', 'મિનિટ', 'Minuta', 'Хвилина', 'ਮਿੰਟ', 'Minut', 'မိနစ်', 'Iṣẹju', 'Minti'),
(330, 'hour', 'Hour', 'ঘন্টা', 'Hora', 'ساعة', 'घंटा', 'قیامت', '小时', '時間', 'Hora', 'Час', 'Heure', '시간', 'Stunde', 'Ora', 'ชั่วโมง', 'Óra', 'Uur', 'hora', 'Jam', 'Saat', 'Ωρα', 'ساعت', 'Jam', 'అవర్', 'ஹவர்', 'કલાક', 'Godzina', 'Година', 'ਘੰਟੇ', 'Ora', 'နာရီ', 'Wakati', 'Sa''a'),
(331, 'week', 'Week', 'সপ্তাহ', 'Semana', 'أسبوع', 'सप्ताह', 'ہفتہ', '周', '週間', 'Semana', 'Неделю', 'La semaine', '주', 'Woche', 'Settimana', 'สัปดาห์', 'Hét', 'Week', 'week', 'Minggu', 'Hafta', 'Εβδομάδα', 'هفته', 'Minggu', 'వారం', 'வீக்', 'અઠવાડિયું', 'Tydzień', 'Тиждень', 'ਹਫਤਾ', 'Săptămână', 'ရက်သတ္တပတ်', 'Osu', 'mako'),
(332, 'decade', 'Decade', 'দশক', 'Década', 'عقد', 'दशक', 'دہائی', '十', '10年', 'Década', 'десятилетие', 'Décennie', '로사리오 염주', 'Dekade', 'Decennio', 'ทศวรรษ', 'Évtized', 'Decennium', 'decennium', 'Dasawarsa', 'Onyıl', 'Δεκαετία', 'دهه', 'Dekad', 'దశాబ్దం', 'பத்தாண்டின்', 'દાયકા', 'Dekada', 'Десятиліття', 'ਦਹਾਕੇ', 'Deceniu', 'ဆယ်နှစ်', 'Ọdun mẹwa', 'Shekaru goma'),
(333, 'ago', 'Ago', 'পূর্বে', 'Hace', 'منذ', 'पूर्व', 'پہلے', '前', '前', 'Atrás', 'Тому назад', 'Depuis', '전에', 'Vor', 'Fa', 'มาแล้ว', 'Ezelőtt', 'Geleden', 'ante', 'Ago', 'Önce', 'Πριν', 'پیش', 'Ago', 'క్రితం', 'முன்பு', 'પહેલાં', 'Temu', 'Нарешті', 'ਪਹਿਲਾਂ', 'În urmă', 'လွန်ခဲ့တဲ့', 'Aago', 'da suka wuce'),
(334, 'from_now', 'From Now', 'এখন থেকে', 'Desde ahora', 'من الان', 'अब से', 'ابھی سے', '现在起', '今から', 'A partir de agora', 'Отныне', 'À partir de maintenant', '지금부터', 'In', 'Da adesso', 'จากนี้', 'Mostantól', 'Vanaf nu', 'Nunc', 'Mulai sekarang', 'Şu andan itibaren', 'Από τώρα', 'از حالا', 'Dari sekarang', 'ఇప్పటి నుండి', 'இப்போது இருந்து', 'હવેથી', 'Od teraz', 'Від тепер', 'ਹੁਣ ਤੋ', 'De acum', 'ယခုကနေ', 'Lati Bayi', 'Daga Yanzu');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(335, 'bill_to', 'Bill To', 'বিল টু', 'Cobrar a', 'فاتورة الى', 'बिल प्राप्तकर्ता', 'کا بل', '记账到', '請求書送付先', 'Projeto de lei para', 'Плательщик', 'Facturer', '청구서 수신', 'Gesetzesentwurf für', 'Fatturare a', 'ส่งเบิกไปที่', 'Bill To', 'Rekening naar', 'Ad Bill', 'Pembayaran kepada', 'Ya fatura edilecek', 'Bill To', 'بیل تا', 'Bill To', 'బిల్ టు', 'பில் செய்ய', 'માટે બિલ', 'rachunek do', 'Білл Тод', 'ਬਿਲ ਕਰੋ', 'Proiect de lege pentru', 'ထံငွေတောင်းခံသည်', 'Isanowo fun', 'Lissafta zuwa'),
(336, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمه السر', 'पारण शब्द', 'پاس ورڈ', '密码', 'パスワード', 'Senha', 'пароль', 'Mot de passe', '암호', 'Passwort', 'Parola d''ordine', 'รหัสผ่าน', 'Jelszó', 'Wachtwoord', 'Password', 'Kata sandi', 'Parola', 'Κωδικός πρόσβασης', 'کلمه عبور', 'Kata laluan', 'పాస్వర్డ్', 'கடவுச்சொல்', 'પાસવર્ડ', 'Hasło', 'Пароль', 'ਪਾਸਵਰਡ', 'Parola', 'Password ကို', 'Ọrọigbaniwọle', 'Kalmar sirri'),
(337, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'థీమ్ను నిర్వహించండి', 'தீம் நிர்வகி', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'အဓိကအကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Akori', 'Sarrafa Jigo'),
(338, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা করুন', 'Administrar el lenguaje', 'إدارة اللغة', 'भाषा प्रबंधित करें', 'زبان کا نظم کریں', '管理语言', '言語の管理', 'Gerenciar Idioma', 'Управление языком', 'Gérer la langue', '언어 관리', 'Sprache verwalten', 'Gestisci la lingua', 'จัดการภาษา', 'A nyelv kezelése', 'Taal beheren', 'Lingua curo', 'Kelola Bahasa', 'Dili Yönet', 'Διαχείριση γλώσσας', 'مدیریت زبان', 'Uruskan Bahasa', 'భాషను నిర్వహించండి', 'மொழி நிர்வகி', 'ભાષા મેનેજ કરો', 'Zarządzaj językiem', 'Управління мовою', 'ਭਾਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați limba', 'ဘာသာစကားများကိုစီမံခန့်ခွဲ', 'Ṣakoso Ede', 'Sarrafa Harshe'),
(339, 'manage_academic_year', 'Manage Academic Year', 'একাডেমিক বছর পরিচালনা করুন', 'Administrar el año académico', 'إدارة السنة الدراسية', 'अकादमिक वर्ष का प्रबंधन करें', 'تعلیمی سال کا نظم کریں', '管理学年', 'アカデミックイヤーを管理する', 'Gerenciar o Ano Acadêmico', 'Управление учебным годом', 'Gérer l''année académique', '학습 연도 관리', 'Akademisches Jahr verwalten', 'Gestisci l''anno accademico', 'จัดการปีการศึกษา', 'Tanulmányi év kezelése', 'Academisch jaar beheren', 'Curo Academic Year', 'Mengelola Tahun Akademik', 'Akademik Yılı Yönet', 'Διαχειριστείτε το ακαδημαϊκό έτος', 'مدیریت سال تحصیلی', 'Urus Tahun Akademik', 'విద్యా సంవత్సరం నిర్వహించండి', 'கல்வி ஆண்டு நிர்வகி', 'શૈક્ષણિક વર્ષનું સંચાલન કરો', 'Zarządzaj Rokiem akademickim', 'Управління навчальним року', 'ਅਕਾਦਮਿਕ ਸਾਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați anul academic', 'ပညာရေးဆိုင်ရာတစ်နှစ်တာစီမံခန့်ခွဲရန်', 'Ṣakoso ọdun ẹkọ', 'Sarrafa Shekarar Kwalejin'),
(340, 'manage_role', 'Manage Role', 'রোল পরিচালনা করুন', 'Administrar rol', 'إدارة الدور', 'रोल प्रबंधित करें', 'رول کا نظم کریں', '管理角色', '役割の管理', 'Gerenciar o papel', 'Управление ролью', 'Manage Role', '역할 관리', 'Rolle verwalten', 'Gestisci il ruolo', 'จัดการบทบาท', 'A szerep kezelése', 'Rol beheren', 'Partes quas curo', 'Kelola Peran', 'Rolü Yönet', 'Διαχείριση ρόλου', 'مدیریت نقش', 'Mengurus Peranan', 'పాత్రను నిర్వహించండి', 'ரோல் நிர்வகி', 'રોલ મેનેજ કરો', 'Zarządzaj rolą', 'Управління роллю', 'ਭੂਮਿਕਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rolul', 'အခန်းက္ပကိုစီမံခန့်ခွဲ', 'Ṣakoso Ipa', 'Sarrafa Matsayi'),
(341, 'manage_user', 'Manage User', 'ব্যবহারকারী পরিচালনা করুন', 'Administrar usuario', 'إدارة المستخدم', 'उपयोगकर्ता को प्रबंधित करें', 'صارف کا نظم کریں', '管理用户', 'ユーザーを管理する', 'Gerenciar Usuário', 'Управление пользователями', 'Manage User', '사용자 관리', 'Benutzer verwalten', 'Gestisci utente', 'จัดการผู้ใช้', 'Felhasználó kezelése', 'Beheer gebruiker', 'usorum regere', 'Kelola Pengguna', 'Kullanıcıyı Yönet', 'Διαχείριση χρήστη', 'مدیریت کاربر', 'Urus Pengguna', 'వినియోగదారుని నిర్వహించండి', 'பயனர் நிர்வகி', 'વપરાશકર્તાને મેનેજ કરો', 'Zarządzaj Użytkownikiem', 'Керувати користувачем', 'ਯੂਜ਼ਰ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați utilizatorul', 'အသုံးပြုသူကိုစီမံခန့်ခွဲ', 'Ṣakoso olumulo', 'Sarrafa Mai amfani'),
(342, 'manage_designation', 'Manage Designation', 'পদবী পরিচালনা করুন', 'Administrar Designación', 'إدارة التعيين', 'पदनाम प्रबंधित करें', 'عہدہ کا انتظام کریں', '管理指定', '指定管理', 'Gerenciar Designação', 'Управление обозначением', 'Gérer la désignation', '지정 관리', 'Benennung verwalten', 'Gestire la designazione', 'จัดการการกำหนด', 'A kijelölés kezelése', 'Aanwijzing beheren', 'curo VOCABULUM', 'Kelola Penunjukan', 'Tanımlamayı Yönetin', 'Διαχείριση ονομασίας', 'مدیریت تعیین', 'Urus Jawatan', 'హోదాను నిర్వహించండి', 'நிர்வகித்தலை நிர்வகி', 'હોદ્દો મેનેજ કરો', 'Zarządzaj oznaczeniem', 'Керування позначенням', 'ਡਿਜ਼ਾਈਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați desemnarea', 'သတ်မှတ်ပေးထားခြင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Apẹrẹ', 'Sarrafa Zama'),
(343, 'manage_employee', 'Manage Employee', 'কর্মচারী পরিচালনা করুন', 'Administrar Empleado', 'إدارة الموظف', 'कर्मचारी को प्रबंधित करें', 'ملازم کا انتظام کریں', '管理员工', '従業員を管理する', 'Gerenciar Empregado', 'Управление сотрудниками', 'Gérer l''employé', '직원 관리', 'Mitarbeiter verwalten', 'Gestisci dipendente', 'จัดการพนักงาน', 'Alkalmazottak kezelése', 'Beheer werknemer', 'Aliquam curo', 'Mengelola Karyawan', 'Çalışanı Yönet', 'Διαχειριστείτε τον υπάλληλο', 'مدیریت کارمند', 'Urus Pekerja', 'ఉద్యోగిని నిర్వహించండి', 'பணியாளரை நிர்வகி', 'કર્મચારીનું સંચાલન કરો', 'Zarządzaj pracownikiem', 'Управління працівником', 'ਕਰਮਚਾਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați angajatul', 'ထမ်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Abáni', 'Sarrafa Ma''aikata'),
(344, 'manage_teacher', 'Manage Teacher', 'শিক্ষক পরিচালনা করুন', 'Administra al maestro', 'إدارة المعلم', 'शिक्षक का प्रबंधन करें', 'ٹیچر کا نظم کریں', '管理教师', '教師を管理する', 'Gerenciar professor', 'Управление учителем', 'Gérer l''enseignant', '교사 관리', 'Lehrer verwalten', 'Gestisci insegnante', 'จัดการครู', 'Tanár kezelése', 'Beheer de docent', 'curo Teacher', 'Kelola Guru', 'Öğretmen Yönet', 'Διαχειριστείτε τον Δάσκαλο', 'مدیریت معلم', 'Menguruskan Guru', 'టీచర్ని నిర్వహించండి ', 'ஆசிரியர் நிர்வகி', 'શિક્ષકનું સંચાલન કરો', 'Zarządzaj nauczycielem', 'Управління вчителем', 'ਅਧਿਆਪਕ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați învățătorul', 'အရှင်ဘုရားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Olukọni', 'Sarrafa Malam'),
(345, 'manage_class', 'Manage Class', 'ক্লাস পরিচালনা করুন', 'Administrar clase', 'إدارة الفئة', 'क्लास को प्रबंधित करें', 'کلاس کا نظم کریں', '管理班级', 'クラスを管理する', 'Gerenciar Classe', 'Управление классом', 'Gérer la classe', '수업 관리', 'Klasse verwalten', 'Gestisci classe', 'จัดการ Class', 'Osztály kezelése', 'Beheer klasse', 'curo Paleonemertea Class', 'Kelola Kelas', 'Sınıfı Yönet', 'Διαχείριση της κλάσης', 'مدیریت کلاس', 'Urus Kelas', 'క్లాస్ని నిర్వహించండి', 'வகுப்பை நிர்வகி', 'ક્લાસ મેનેજ કરો', 'Zarządzaj klasą', 'Управління класом', 'ਕਲਾਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați clasa', 'Class ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso Kilasi', 'Sarrafa Kundin'),
(346, 'manage_section', 'Manage Section', 'শাখা পরিচালনা করুন', 'Administrar la Sección', 'إدارة القسم', 'अनुभाग प्रबंधित करें', 'سیکشن کا نظم کریں', '管理部分', 'セクションを管理する', 'Gerenciar Seção', 'Управление разделами', 'Gérer la section', '섹션 관리', 'Abschnitt verwalten', 'Gestisci sezione', 'จัดการส่วน', 'Szekció kezelése', 'Beheer sectie', 'curo sect', 'Kelola Bagian', 'Bölümü Yönet', 'Διαχείριση της ενότητας', 'مدیریت بخش', 'Urus Seksyen', 'విభాగం నిర్వహించండి', 'பிரிவு நிர்வகி', 'વિભાગ મેનેજ કરો', 'Zarządzaj sekcją', 'Управління розділом', 'ਸੈਕਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați secțiunea', 'ပုဒ်မစီမံခန့်ခွဲရန်', 'Ṣakoso Apakan', 'Sarrafa Sashe'),
(347, 'manage_subject', 'Manage Subject', 'বিষয় পরিচালনা করুন', 'Administrar Asunto', 'إدارة الموضوع', 'विषय प्रबंधित करें', 'موضوع کا نظم کریں', '管理主题', '件名を管理する', 'Gerenciar Assunto', 'Управление предметами', 'Gérer le sujet', '주제 관리', 'Betreff verwalten', 'Gestisci soggetto', 'จัดการหัวเรื่อง', 'Subject kezelése', 'Beheer het onderwerp', 'curo Subject', 'Kelola Subjek', 'Konuyu Yönet', 'Διαχείριση θέματος', 'مدیریت موضوع', 'Uruskan Subjek', 'విషయాన్ని నిర్వహించండి', 'தலைப்பு நிர்வகி', 'વિષય સંચાલિત કરો', 'Zarządzaj tematem', 'Керувати темою', 'ਵਿਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați subiectul', 'အကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Koko-ọrọ', 'Sarrafa Takardar'),
(348, 'manage_syllabus', 'Manage Syllabus', 'সিলেবাস পরিচালনা করুন', 'Administrar plan de estudios', 'إدارة المنهج', 'विषय प्रबंधित करें', 'Syllabus کو منظم کریں', '管理教学大纲', 'シラバスを管理する', 'Gerenciar o Syllabus', 'Управлять программой', 'Gérer le syllabus', '강의 계획서 관리', 'Syllabus verwalten', 'Gestisci il Sillabo', 'จัดการ Syllabus', 'A tanterv kezelése', 'Syllabus beheren', 'curo Syllabus', 'Mengelola Silabus', 'Ders Planını Yönet', 'Διαχείριση της διδακτέας ύλης', 'مدیریت برنامه درسی', 'Uruskan Sukatan pelajaran', 'సిలబస్ని నిర్వహించండి', 'பாடத்திட்டத்தை நிர்வகி', 'અભ્યાસક્રમ મેનેજ કરો', 'Zarządzaj programem Syllabus', 'Управління навчальним планом', 'ਸਿਲੇਬਸ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programa', 'သင်ရိုးမာတိကာများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Syllabus', 'Sarrafa Syllabus'),
(349, 'manage_routine', 'Manage Routine', 'রূটিন পরিচালনা করুন', 'Administrar la rutina', 'إدارة الروتينية', 'नियमित रूप से प्रबंधित करें', 'روٹین کا نظم کریں', '管理例程', 'ルーチンを管理する', 'Gerenciar rotina', 'Управление регулярностью', 'Gérer les routines', '루틴 관리', 'Routine verwalten', 'Gestisci routine', 'จัดการประจำ', 'Rutinkezelés', 'Beheer routine', 'curo DEFUNCTORIUS', 'Kelola Rutin', 'Rutini Yönet', 'Διαχείριση της ρουτίνας', 'مدیریت معمول', 'Urus Rutin', 'రొటీన్ నిర్వహించండి', 'வழக்கமான நிர்வகி', 'નિયમિત રૂપે મેનેજ કરો', 'Zarządzaj procedurą', 'Управління звичайним', 'ਰੁਟੀਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rutina', 'ပုံမှန်စီမံခန့်ခွဲရန်', 'Ṣakoso Iṣakoso', 'Sarrafa Gyara'),
(350, 'manage_guardian', 'Manage Guardian', 'অভিভাবক পরিচালনা করুন', 'Administrar Guardian', 'إدارة الجارديان', 'संरक्षक प्रबंधन करें', 'گارڈین کا انتظام کریں', '管理监护人', 'Guardianを管理する', 'Manage Guardian', 'Управление опекуном', 'Manage Guardian', 'Guardian 관리', 'Wächter verwalten', 'Gestisci il guardiano', 'จัดการ Guardian', 'Guardian kezelése', 'Beheer Guardian', 'curo Custodes', 'Mengelola wali', 'Koruyucuyu yönet', 'Διαχειριστείτε τον Κηδεμόνα', 'مدیریت نگهبان', 'Urus Guardian', 'గార్డియన్ను నిర్వహించండి', 'கார்டியன் நிர்வகி', 'ગાર્ડિયન મેનેજ કરો', 'Zarządzaj opiekunem', 'Управління охоронцем', 'ਗਾਰਡੀਅਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Gardianul', 'ဂါးဒီးယန်းသတင်းစာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iṣakoso', 'Sarrafa Guardian'),
(351, 'manage_student', 'Manage Student', 'ছাত্র পরিচালনা করুন', 'Administrar estudiante', 'دارة الطالب', 'छात्र को प्रबंधित करें', 'طالب علم کا انتظام کریں', '管理学生', '学生を管理する', 'Gerenciar aluno', 'Управление Студентом', 'Gérer l''étudiant', '학생 관리', 'Schüler verwalten', 'Gestisci studente', 'จัดการนักเรียน', 'Diák kezelése', 'Beheer de student', 'Discipulus curo', 'Kelola Siswa', 'Öğrenciyi Yönet', 'Διαχείριση Φοιτητών', 'مدیریت دانش آموز', 'Uruskan Pelajar', 'విద్యార్థిని నిర్వహించండి', 'மாணவர் நிர்வகி', 'વિદ્યાર્થીનું સંચાલન કરો', 'Zarządzaj uczniem', 'Управління студентом', 'ਵਿਦਿਆਰਥੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați elevul', 'ကျောင်းသားစီမံခန့်ခွဲရန်', 'Ṣakoso awọn ọmọ-iwe', 'Sarrafa dalibi'),
(352, 'manage_assignment', 'Manage Assignment', 'অ্যাসাইনমেন্ট পরিচালনা করুন', 'Administrar la asignación', 'إدارة التعيين', 'असाइनमेंट प्रबंधित करें', 'اہتمام کا نظم کریں', '管理作业', '割り当てを管理する', 'Gerenciar Atribuição', 'Управление назначением', 'Gérer l''affectation', '배정 관리', 'Zuordnung verwalten', 'Gestire l''incarico', 'จัดการการมอบหมาย', 'Hozzárendelés kezelése', 'Toewijzing beheren', 'curo adsignatione', 'Kelola Penugasan', 'Ödev Yönetimi', 'Διαχείριση της εκχώρησης', 'تخصیص مدیریت', 'Urus Tugasan', 'అప్పగింతని నిర్వహించండి', 'பணியை நிர்வகி', 'સોંપણીનું સંચાલન કરો', 'Zarządzaj przypisaniem', 'Управління завданням', 'ਨਿਰਧਾਰਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați asignarea', 'တာဝန်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn iṣẹ', 'Sarrafa Ayyukan'),
(353, 'manage_submission', 'Manage Submission', 'সাবমিশন পরিচালনা করুন', 'Administrar presentación', 'إدارة الإرسال', 'सबमिशन प्रबंधित करें', 'جمع کرانے کا انتظام کریں', '管理提交', '提出を管理する', 'Gerenciar Envio', 'Управление представлением', 'Gérer la soumission', '제출 관리', 'Einreichung verwalten', 'Gestisci invio', 'จัดการการส่ง', 'Feladat kezelése', 'Inzending beheren', 'curo Submission', 'Mengelola Pengiriman', 'Göndermeyi Yönet', 'Διαχείριση υποβολής', 'مدیریت ارسال', 'Urus Penyerahan', 'సమర్పణను నిర్వహించండి', 'சமர்ப்பிப்பு நிர்வகி', 'સબમિશન મેનેજ કરો', 'Zarządzaj przesłaniem', 'Управління поданням', 'ਸਬਮਿ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați depunerea', 'တင်ပြမှုကိုစီမံခန့်ခွဲရန်', 'Ṣakoso awọn Gbigbanilaaye', 'Sarrafa Yarjejeniya'),
(354, 'manage_grade', 'Manage Grade', 'গ্রেড পরিচালনা করুন', 'Administrar Grado', 'إدارة الصف', 'ग्रेड प्रबंधित करें', 'گریڈ کا انتظام کریں', '管理成绩', 'グレード管理', 'Gerenciar classificação', 'Управление классом', 'Gérer la note', '학년 관리', 'Klasse verwalten', 'Gestisci Grado', 'จัดการระดับ', 'Kezelje a fokozatot', 'Beheer Grade', 'curo Romani', 'Kelola Grade', 'Sınıfı Yönet', 'Διαχείριση βαθμού', 'مدیریت درجه', 'Urus Gred', 'గ్రేడ్ నిర్వహించండి', 'தரம் நிர்வகி', 'ગ્રેડ મેનેજ કરો', 'Zarządzaj oceną', 'Управління оцінкою', 'ਗਰੇਡ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați gradul', 'အဆင့်စီမံခန့်ခွဲရန်', 'Ṣakoso Iwọn', 'Sarrafa sauti'),
(355, 'manage_exam_term', 'Manage Exam Term', 'পরীক্ষার টার্ম পরিচালনা করুন', 'Administrar el término del examen', 'إدارة مدة الامتحان', 'परीक्षा अवधि का प्रबंधन करें', 'امتحان کی اصطلاح کا انتظام کریں', '管理考试期限', '試験期間を管理する', 'Termo de gerenciamento de exames', 'Управление сроком рассмотрения', 'Gérer le terme d''examen', '시험 기간 관리', 'Prüfungsbedingung verwalten', 'Gestisci il termine dell''esame', 'จัดการระยะสอบ', 'Vizsgaidőszak kezelése', 'Beheer examenperiode', 'Curo termino IV', 'Mengelola Ujian Term', 'Sınav Süresini Yönet', 'Διαχειριστείτε τον όρο εξέτασης', 'مدیریت دوره امتحان', 'Mengurus Terma Ujian', 'పరీక్షా టర్మ్ నిర్వహించండి', 'தேர்வு கால நிர்வகி', 'પરીક્ષા મુદતની વ્યવસ્થા કરો', 'Zarządzaj egzaminem', 'Управління терміном іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați termenul de examinare', 'စာမေးပွဲကာလစီမံခန့်ခွဲရန်', 'Ṣakoso akoko Aawo', 'Sarrafa Jarrabawa'),
(356, 'manage_exam_schedule', 'Manage Exam Schedule', 'পরীক্ষার শিডিউল পরিচালনা করুন', 'Administrar el horario del examen', 'إدارة جدول الامتحانات', 'परीक्षा अनुसूची का प्रबंधन करें', 'امتحان شیڈول کا نظم کریں', '管理考试时间表', '試験スケジュールを管理する', 'Manejar o horário do Exame', 'Управление расписанием экзаменов', 'Gérer le calendrier des examens', '시험 일정 관리', 'Prüfungsablauf verwalten', 'Gestisci il calendario degli esami', 'จัดการกำหนดการสอบ', 'A vizsgaütemezés kezelése', 'Beheer examenschema', 'Curo Test Morbi rhoncus', 'Kelola Jadwal Ujian', 'Sınav Takvimini Yönet', 'Διαχειριστείτε το πρόγραμμα εξετάσεων', 'مدیریت برنامه امتحانات', 'Mengurus Jadual Peperiksaan', 'పరీక్షా షెడ్యూల్ నిర్వహించండి', 'தேர்வு அட்டவணை நிர்வகி', 'પરીક્ષાનું શેડ્યૂલ મેનેજ કરો', 'Zarządzaj harmonogramem egzaminu', 'Управління розкладом іспитів', 'ਪ੍ਰੀਖਿਆ ਅਨੁਸੂਚੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programul de examen', 'စီမံခန့်ခွဲရန်စာမေးပွဲအချိန်ဇယား', 'Ṣakoso Akadii Akadọ', 'Sarrafa Jirgin Nazarin'),
(357, 'manage_suggestion', 'Manage Suggestion', 'সাজেশন পরিচালনা করুন', 'Administrar sugerencia', 'إدارة الاقتراح', 'सुझाव प्रबंधित करें', 'تجویز کا انتظام کریں', '管理建议', '提案を管理する', 'Gerenciar sugestão', 'Управление предложением', 'Gérer la suggestion', '제안 관리', 'Vorschläge verwalten', 'Gestire suggerimenti', 'จัดการคำแนะนำ', 'Javaslat kezelése', 'Suggestie beheren', 'curo Suggestion', 'Kelola Saran', 'Öneriyi Yönet', 'Διαχείριση της πρότασης', 'مدیریت پیشنهادی', 'Uruskan Cadangan', 'సూచన నిర్వహించండి', 'பரிந்துரை நிர்வகி', 'સૂચન મેનેજ કરો', 'Zarządzaj sugestią', 'Керувати пропозицією', 'ਸੁਝਾਅ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați sugestiile', 'အကြံပြုချက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ọrọ', 'Sarrafa Bayani'),
(358, 'manage_exam_attendance', 'Manage Exam Attendance', 'পরীক্ষার উপস্থিতি পরিচালনা করুন', 'Administrar la asistencia al examen', 'إدارة امتحان الحضور', 'परीक्षा उपस्थिति का प्रबंधन करें', 'امتحان کی حاضری کا نظم کریں', '管理考试考勤', '試験出席を管理する', 'Gerenciar atendimento ao exame', 'Управление экзаменом', 'Gérer la présence aux examens', '시험 출석 관리', 'Prüfungsbesuch verwalten', 'Gestisci la frequenza degli esami', 'จัดการการเข้าร่วมการสอบ', 'Vizsgálati részvétel kezelése', 'Beheer examen aanwezigheid', 'Curo IV Attendance', 'Mengelola Kehadiran Ujian', 'Sınav Katılımını Yönet', 'Διαχείριση συμμετοχής στις εξετάσεις', 'مدیریت حضور در آزمون', 'Menguruskan Kehadiran Peperiksaan', 'పరీక్షా హాజరు నిర్వహించండి', 'தேர்வுப் பணிகளை நிர்வகி', 'પરીક્ષા એટેન્ડન્સ મેનેજ કરો', 'Zarządzaj uczestnictwem w egzaminie', 'Керування відвідуванням іспитів', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați participarea la examene', 'စာမေးပွဲတက်ရောက်စီမံခန့်ခွဲရန်', 'Ṣakoso akoko isinwo', 'Sarrafa Harkokin Binciken'),
(359, 'manage_mark', 'Manage Mark', 'মার্ক পরিচালনা করুন', 'Administrar marca', 'إدارة مارك', 'मार्क को प्रबंधित करें', 'مارک کا نظم کریں', '管理标记', 'マークを管理する', 'Gerenciar marca', 'Управление меткой', 'Gérer la marque', '마크 관리', 'Mark verwalten', 'Gestisci Marco', 'จัดการ Mark', 'Mark kezelése', 'Beheer Mark', 'Mark curo', 'Kelola Mark', 'Mark''ı Yönet', 'Διαχείριση σήματος', 'مدیریت علامت گذاری', 'Urus Mark', 'మార్క్ని నిర్వహించండి', 'மார்க் நிர்வகி', 'માર્ક મેનેજ કરો', 'Zarządzaj Markem', 'Керувати знаком', 'ਮਾਰਕ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați marca', 'မာကုကိုစီမံခန့်ခွဲ', 'Ṣakoso Samisi', 'Sarrafa Alama'),
(360, 'manage_mark_sheet', 'Manage Mark Sheet', 'মার্ক শীট পরিচালনা করুন', 'Administrar la hoja de marca', 'إدارة علامة ورقة', 'मार्क शीट को प्रबंधित करें', 'مارک شیٹ کا انتظام کریں', '管理标记表', 'マークシートを管理する', 'Manage Mark Sheet', 'Управление меткой', 'Gérer la feuille de marque', '마크 시트 관리', 'Mark Sheet verwalten', 'Gestisci Mark Sheet', 'จัดการแผ่นมาร์ค', 'Márkajelzés kezelése', 'Markeringsblad beheren', 'Curo Mark Sheet', 'Kelola Lembar Mark', 'Marka Sayfasını Yönet', 'Διαχείριση φύλλου σημείων', 'مدیریت برگه علامت گذاری', 'Urus Mark Sheet', 'మార్క్ షీట్ని నిర్వహించండి', 'மார்க் தாளை நிர்வகி', 'માર્કશીટ મેનેજ કરો', 'Zarządzaj arkuszem markerów', 'Керування таблицею маркування', 'ਮਾਰਕ ਸ਼ੀਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați foaia de marcă', 'မာကုစာရွက်စီမံခန့်ခွဲရန်', 'Ṣakoso Ṣiṣisi Marisi', 'Sarrafa Takardar Market'),
(361, 'manage_exam_result', 'Manage Exam Result', 'পরীক্ষার ফলাফল পরিচালনা করুন', 'Administrar el resultado del examen', 'إدارة نتيجة الامتحان', 'परीक्षा परिणाम प्रबंधित करें', 'امتحان کے نتائج کا نظم کریں', '管理考试结果', '試験結果を管理する', 'Gerenciar Resultado do Exame', 'Управлять результатом экзамена', 'Gérer le résultat d''examen', '시험 결과 관리', 'Prüfungsergebnis verwalten', 'Gestisci risultato esame', 'จัดการผลลัพธ์การสอบ', 'Vizsgálati eredmény kezelése', 'Beheer examenresultaat', 'Curo Test Result', 'Mengelola Hasil Ujian', 'Sınav Sonuçlarını Yönet', 'Διαχείριση Αποτέλεσμα Εξετάσεων', 'مدیریت نتیجه آزمون', 'Urus Keputusan Peperiksaan', 'పరీక్ష ఫలితం నిర్వహించండి', 'தேர்வு முடிவு நிர்வகி', 'પરીક્ષાનું પરિણામ મેનેજ કરો', 'Zarządzaj wynikami egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul examenului', 'စာမေးပွဲရလဒ်စီမံခန့်ခွဲရန်', 'Ṣakoso abajade abajade', 'Sarrafa sakamakon binciken'),
(362, 'manage_promotion', 'Manage Promotion', 'পদোন্নতি পরিচালনা করুন', 'Administrar promoción', 'إدارة الترويج', 'पदोन्नति प्रबंधित करें', 'فروغ کا انتظام کریں', '管理推广', 'プロモーションの管理', 'Gerenciar Promoção', 'Управление продвижением', 'Gérer la promotion', '프로모션 관리', 'Werbung verwalten', 'Gestisci la promozione', 'จัดการโปรโมชัน', 'A promóció kezelése', 'Promotie beheren', 'curo Promotio', 'Kelola Promosi', 'Promosyonu Yönetin', 'Διαχείριση προώθησης', 'مدیریت تبلیغ', 'Uruskan Promosi', 'ప్రచారం నిర్వహించండి', 'விளம்பரத்தை நிர்வகி', 'પ્રમોશન મેનેજ કરો', 'Zarządzaj promocją', 'Керування просуванням', 'ਤਰੱਕੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați promovarea', 'မြှင့်တင်ရေးစီမံခန့်ခွဲရန်', 'Ṣakoso Ipolowo', 'Sarrafa gabatarwa'),
(363, 'manage_book', 'Manage Book', 'বই পরিচালনা করুন', 'Administrar libro', 'إدارة الكتاب', 'पुस्तक को प्रबंधित करें', 'کتاب کا نظم کریں', '管理书籍', '書籍を管理する', 'Manage Book', 'Управление книгой', 'Gérer le livre', '도서 관리', 'Buch verwalten', 'Gestisci il libro', 'จัดการหนังสือ', 'Könyv kezelése', 'Beheer het boek', 'curo Books', 'Kelola Buku', 'Kitabı Yönet', 'Διαχείριση Βιβλίου', 'مدیریت کتاب', 'Urus Buku', 'బుక్ని నిర్వహించండి', 'புத்தகத்தை நிர்வகி', 'બુક મેનેજ કરો', 'Zarządzaj książką', 'Керувати книгою', 'ਬੁੱਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cartea', 'စာအုပ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Iwe', 'Sarrafa Littafin'),
(364, 'manage_library_member', 'Manage Library Member', 'লাইব্রেরি সদস্য পরিচালনা করুন', 'Administrar miembro de la biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य को प्रबंधित करें', 'لائبریری اراکین کو منظم کریں', '管理图书馆成员', '図書館員を管理する', 'Gerenciar Membro da Biblioteca', 'Управление членом библиотеки', 'Gérer un membre de bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'จัดการสมาชิกห้องสมุด', 'A könyvtári tagok kezelése', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους μέλους βιβλιοθήκης', 'مدیریت عضو کتابخانه', 'Urus Ahli Perpustakaan', 'లైబ్రరీ సభ్యుడిని నిర్వహించండి', 'நூலக உறுப்பினர் நிர்வகி', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Керування членом бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați membrul bibliotecii', 'စာကြည့်တိုက်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ìkàwé Ẹgbẹ', 'Sarrafa Library Member'),
(365, 'manage_issue_and_return', 'Manage Issue & Return', 'ইস্যু এবং রিটার্ন পরিচালনা করুন', 'Administrar problema y devolución', 'إدارة المشكلة والعودة', 'अंक और वापसी का प्रबंधन करें', 'مسئلہ اور واپسی کا انتظام کریں', '管理问题和退货', '問題とリターンを管理する', 'Gerenciar Problema e Retorno', 'Управление выпуском и возвратом', 'Gérer le problème et le retour', '문제 및 반환 관리', 'Problem und Rückgabe verwalten', 'Gestisci problema e ritorno', 'จัดการปัญหาและการส่งคืน', 'A kibocsátás és a visszatérés kezelése', 'Beheer kwestie en terugkeer', 'Curo Part et Redi', 'Kelola Masalah dan Kembali', 'Sayı ve İade''yi Yönetin', 'Διαχείριση της έκδοσης και της επιστροφής', 'مدیریت مسئله و بازگشت', 'Menguruskan Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్ని నిర్వహించండి', 'Issue & Return ஐ நிர்வகி', 'અંક અને રીટર્ન મેનેજ કરો', 'Zarządzaj problemem i zwrotem', 'Управління проблемою та поверненням', 'ਸਮੱਸਿਆ ਅਤੇ ਵਾਪਸੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați emisiunea și returnarea', 'စီမံခန့်ခွဲ Issue & ပြန်သွား', 'Ṣakoso oro & Pada', 'Sarrafa Fitawa & Komawa'),
(366, 'manage_vehicle', 'Manage Vehicle', 'যানবাহন পরিচালনা করুন', 'Administrar vehículo', 'إدارة المركبات', 'वाहन को प्रबंधित करें', 'گاڑی کا نظم کریں', '管理车辆', '車両を管理する', 'Gerenciar veículo', 'Управление транспортным средством', 'Gérer le véhicule', '차량 관리', 'Fahrzeug verwalten', 'Gestisci veicolo', 'จัดการยานพาหนะ', 'Jármű kezelése', 'Beheer voertuig', 'curo vehiculum', 'Kelola Kendaraan', 'Aracı Yönet', 'Διαχειριστείτε το όχημα', 'مدیریت خودرو', 'Menguruskan Kenderaan', 'వాహనాన్ని నిర్వహించండి', 'வாகனத்தை நிர்வகி', 'વાહનનું સંચાલન કરો', 'Zarządzaj pojazdem', 'Управління транспортним засобом', 'ਵਾਹਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vehiculul', 'ယာဉ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso ọkọ', 'Sarrafa abin hawa'),
(367, 'manage_route', 'Manage Route', 'রুট পরিচালনা করুন', 'Administrar ruta', 'إدارة الطريق', 'रूट प्रबंधित करें', 'روٹ کا نظم کریں', '管理路线', 'ルートを管理する', 'Gerencie a rota', 'Управление маршрутом', 'Gérer la route', '경로 관리', 'Route verwalten', 'Gestisci percorso', 'จัดการเส้นทาง', 'Útvonal kezelése', 'Beheer route', 'curo itineris', 'Kelola Rute', 'Güzergahı Yönet', 'Διαχείριση διαδρομής', 'مدیریت مسیر', 'Urus Laluan', 'మార్గాన్ని నిర్వహించండి', 'வழி நிர்வகி', 'રૂટનું સંચાલન કરો', 'Zarządzaj trasą', 'Керувати маршрутом', 'ਰੂਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați rută', 'လမ်းကြောင်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso Itọsọna', 'Sarrafa Hanya'),
(368, 'manage_transport_member', 'Manage Transport Member', 'পরিবহন সদস্য পরিচালনা করুন', 'Administrar miembro de transporte', 'إدارة عضو النقل', 'परिवहन सदस्य को प्रबंधित करें', 'ٹرانسپورٹ اراکین کا انتظام کریں', '管理交通会员', '移送メンバーの管理', 'Gerenciar o Membro do Transporte', 'Управление транспортом', 'Manage Transport Member', '전송 구성원 관리', 'Transportmitglied verwalten', 'Gestisci membro di trasporto', 'จัดการสมาชิกการขนส่ง', 'A közlekedési képviselő kezelése', 'Beheer transportlid', 'Curo onerariam Member', 'Kelola Anggota Transport', 'Taşıyıcı Üyeyi Yönet', 'Διαχειριστείτε το μέλος μεταφοράς', 'مدیریت حمل و نقل', 'Urus Ahli Pengangkutan', 'రవాణా సభ్యునిని నిర్వహించండి', 'போக்குவரத்து உறுப்பினர் நிர்வகி', 'પરિવહન સભ્યને મેનેજ કરો', 'Zarządzaj członkiem transportu', 'Керувати членом транспорту', 'ਟਰਾਂਸਪੋਰਟ ਮੈਂਬਰ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați transportul membru', 'ပို့ဆောင်ရေးအဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ọkọ-ajo', 'Sarrafa Sanya Manyan'),
(369, 'manage_hostel', 'Manage Hostel', 'ছাত্রাবাস পরিচালনা করুন', 'Administrar Hostel', 'إدارة نزل', 'होस्टल को प्रबंधित करें', 'ہالینڈ کا نظم کریں', '管理旅馆', 'ホステルを管理する', 'Manage Hostel', 'Управление хостелом', 'Gérer l''auberge', '호스텔 관리', 'Hostel verwalten', 'Gestisci l''ostello', 'จัดการ Hostel', 'Kezelheti a Hostelet', 'Beheer Hostel', 'curo Hostel', 'Kelola Hostel', 'Pansiyon Yönet', 'Διαχειριστείτε τον ξενώνα', 'مدیریت خوابگاه', 'Urus Asrama', 'హాస్టల్ను నిర్వహించండి', 'Hostel நிர்வகி', 'છાત્રાલયનું સંચાલન કરો', 'Zarządzaj Hostelem', 'Управління хостел', 'ਹੋਸਟਲ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Pensiune', 'ဘော်ဒါဆောင်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn ile ayagbe', 'Sarrafa dakunan kwanan dalibai'),
(370, 'manage_room', 'Manage Room', 'কক্ষ পরিচালনা করুন', 'Administrar habitación', 'إدارة الغرفة', 'कक्ष को प्रबंधित करें', 'کمرے کا نظم کریں', '管理室', '部屋を管理する', 'Manage Room', 'Управление комнатой', 'Gérer la pièce', '방 관리', 'Raum verwalten', 'Gestisci stanza', 'จัดการห้อง', 'A szoba kezelése', 'Beheer kamer', 'curo volutpat', 'Kelola Ruang', 'Oda Yönet', 'Διαχείριση δωματίου', 'مدیریت اتاق', 'Urus Bilik', 'గదిని నిర్వహించండి', 'அறை நிர்வகி', 'રૂમ મેનેજ કરો', 'Zarządzaj pokojem', 'Управління кімнатою', 'ਕਮਰਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați camera', 'အခန်းကိုစီမံခန့်ခွဲ', 'Ṣakoso yara', 'Sarrafa dakin'),
(371, 'manage_hostel_member', 'Manage Hostel Member', 'ছাত্রাবাস  সদস্য পরিচালনা করুন', 'Manage Hostel Member', 'إدارة عضو في هوستيل', 'छात्रावास का सदस्य प्रबंधित करें', 'ہالینڈ کے رکن کا انتظام کریں', '管理旅馆会员', 'ホステルメンバーの管理', 'Manage Hostel Member', 'Управление хостелом', 'Gérer le membre d''auberge', '호스텔 회원 관리', 'Hostel-Mitglied verwalten', 'Gestisci membro dell''ostello', 'จัดการสมาชิก Hostel', 'Kezelőtagok kezelése', 'Beheer Hostel Lid', 'Curo Member Hostel', 'Kelola anggota asrama', 'Yönetici Hostel Üyeliği', 'Διαχειριστείτε το μέλος του ξενώνα', 'مدیریت اشتراکی', 'Menguruskan Ahli Asrama', 'హాస్టల్ సభ్యునిని నిర్వహించండి', 'Hostel உறுப்பினர் நிர்வகி', 'છાત્રાલય સભ્યને મેનેજ કરો', 'Zarządzaj Hostelem', 'Керувати членом гуртом', 'ਹੋਸਟਲ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați un membru al căminului', 'ဘော်ဒါဆောင်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn ọmọ ẹgbẹ ile-ogun', 'Sarrafa Dakunan kwanan dalibai Member'),
(372, 'manage_message', 'Manage Message', 'বার্তা পরিচালনা করুন', 'Administrar mensaje', 'إدارة الرسالة', 'संदेश प्रबंधित करें', 'پیغام کا نظم کریں', '管理消息', 'メッセージを管理する', 'Gerenciar Mensagem', 'Управление сообщением', 'Gérer le message', '메시지 관리', 'Nachricht verwalten', 'Gestisci il messaggio', 'จัดการข้อความ', 'Üzenet kezelése', 'Beheer bericht', 'curo Nuntius', 'Kelola pesan', 'İletiyi Yönet', 'Διαχείριση μηνυμάτων', 'مدیریت پیام', 'Uruskan Mesej', 'సందేశాన్ని నిర్వహించండి', 'செய்தியை நிர்வகிக்கவும்', 'સંદેશ મેનેજ કરો', 'Zarządzaj wiadomością', 'Управління повідомленням', 'ਸੁਨੇਹਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați mesajul', 'ကို Message များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ifiranṣẹ', 'Sarrafa Saƙo'),
(373, 'manage_email', 'Manage Email', 'ইমেল পরিচালনা করুন', 'Administrar correo electrónico', 'إدارة البريد الإلكتروني', 'ईमेल प्रबंधित करें', 'ای میل کا انتظام کریں', '管理邮件', 'メールを管理する', 'Gerenciar Email', 'Управление электронной почтой', 'Gérer l''email', '이메일 관리', 'E-Mail verwalten', 'Gestisci email', 'จัดการอีเมล', 'E-mail kezelése', 'Beheer e-mail', 'curo Email', 'Kelola Email', 'E-postayı Yönet', 'Διαχείριση μηνυμάτων ηλεκτρονικού ταχυδρομείου', 'مدیریت ایمیل', 'Urus E-mel', 'ఇమెయిల్ను నిర్వహించండి', 'மின்னஞ்சல் நிர்வகி', 'ઇમેઇલ સંચાલિત કરો', 'Zarządzaj pocztą e-mail', 'Керувати електронною поштою', 'ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul', 'အီးမေးလ်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Imeeli', 'Sarrafa Imel'),
(374, 'manage_sms', 'Manage SMS', 'এসএমএস পরিচালনা করুন', 'Administrar SMS', 'إدارة سمز', 'एसएमएस प्रबंधित करें', 'ایس ایم ایس کا نظم کریں', '管理短信', 'SMSの管理', 'Gerenciar SMS', 'Управление SMS', 'Gérer les SMS', 'SMS 관리', 'SMS verwalten', 'Gestisci SMS', 'จัดการ SMS', 'SMS kezelése', 'Beheer SMS', 'curo SMS', 'Kelola SMS', 'SMS''i Yönet', 'Διαχείριση SMS', 'مدیریت اس ام اس', 'Uruskan SMS', 'SMS ను నిర్వహించండి', 'SMS ஐ நிர்வகி', 'એસએમએસ મેનેજ કરો', 'Zarządzaj SMS-em', 'Управління SMS', 'SMS ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați SMS-ul', 'SMS ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso SMS', 'Sarrafa SMS'),
(375, 'manage_notice', 'Manage Notice', 'বিজ্ঞপ্তি পরিচালনা করুন', 'Administrar aviso', 'إدارة الإشعار', 'नोटिस प्रबंधित करें', 'نوٹس کا نظم کریں', '管理通知', '通知の管理', 'Gerenciar Aviso', 'Управление уведомлением', 'Gérer l''avis', '공지 관리', 'Benachrichtigung verwalten', 'Gestisci avviso', 'จัดการประกาศ', 'Értesítés kezelése', 'Beheer Kennisgeving', 'curo Notitia', 'Mengelola Pemberitahuan', 'Bildirimi Yönet', 'Διαχειριστείτε την ειδοποίηση', 'مدیریت اطلاعیه', 'Urus Notis', 'నోటీసుని నిర్వహించండి', 'அறிவிப்பை நிர்வகி', 'નોટિસ મેનેજ કરો', 'Zarządzaj zawiadomieniem', 'Керувати повідомленням', 'ਨੋਟਿਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați notificarea', 'သတိပြုပါစီမံခန့်ခွဲရန်', 'Ṣakoso Akiyesi', 'Sarrafa sanarwa'),
(376, 'manage_news', 'Manage News', 'সংবাদ পরিচালনা করুন', 'Administrar noticias', 'إدارة الأخبار', 'समाचार प्रबंधित करें', 'خبریں انتظام کریں', '管理新闻', 'ニュースを管理する', 'Gerenciar Notícias', 'Управление новостями', 'Gérer les actualités', '뉴스 관리', 'Nachrichten verwalten', 'Gestisci notizie', 'จัดการข่าวสาร', 'Hírek kezelése', 'Beheer nieuws', 'curo News', 'Kelola Berita', 'Haberleri Yönet', 'Διαχείριση ειδήσεων', 'مدیریت اخبار', 'Urus Berita', 'వార్తలను నిర్వహించండి', 'செய்திகள் நிர்வகி', 'સમાચાર મેનેજ કરો', 'Zarządzaj wiadomościami', 'Керувати новинами', 'ਖ਼ਬਰਾਂ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați știrile', 'သတင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Iroyin', 'Sarrafa labarai'),
(377, 'manage_holiday', 'Manage Holiday', 'ছুটি পরিচালনা করুন', 'Administrar vacaciones', 'إدارة عطلة', 'छुट्टी का प्रबंधन करें', 'چھٹیوں کا نظم کریں', '管理假期', '休日を管理する', 'Gerenciar férias', 'Управление отдыхом', 'Gérer les vacances', '휴일 관리', 'Feiertage verwalten', 'Gestisci le vacanze', 'จัดการวันหยุด', 'Nyaralás kezelése', 'Vakantie beheren', 'curo Holiday', 'Kelola Liburan', 'Tatili Yönet', 'Διαχείριση Διακοπών', 'مدیریت تعطیلات', 'Urus Percutian', 'హాలిడే నిర్వహించండి', 'விடுமுறை நிர்வகி', 'હોલિડે મેનેજ કરો', 'Zarządzaj wakacjami', 'Управління відпочинком', 'ਹਾਲੀਆ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați sărbătorile', 'အားလပ်ရက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Isinmi', 'Sarrafa hutu'),
(378, 'manage_event', 'Manage Event', 'ইভেন্ট পরিচালনা করুন', 'Administrar evento', 'إدارة الحدث', 'ईवेंट प्रबंधित करें', 'ایونٹ کا نظم کریں', '管理事件', 'イベントを管理する', 'Gerenciar Evento', 'Управление событием', 'Gérer l''événement', '이벤트 관리', 'Ereignis verwalten', 'Gestisci evento', 'จัดการกิจกรรม', 'Esemény kezelése', 'Beheer evenement', 'curo Vicis', 'Kelola Acara', 'Etkinliği Yönet', 'Διαχείριση του συμβάντος', 'مدیریت رویداد', 'Uruskan Acara', 'ఈవెంట్ను నిర్వహించండి', 'நிகழ்வு நிர்வகி', 'ઇવેન્ટ મેનેજ કરો', 'Zarządzaj wydarzeniem', 'Управління подією', 'ਇਵੈਂਟ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați evenimentul', 'Event ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ti oyan', 'Sarrafa Ayyukan'),
(379, 'manage_visitor', 'Manage Visitor', 'আগন্তুক তথ্য পরিচালনা করুন', 'Administrar visitante', 'إدارة الزائر', 'विज़िटर को प्रबंधित करें', 'وزیٹر کا نظم کریں', '管理访问者', '訪問者を管理する', 'Gerenciar visitantes', 'Управление посетителем', 'Gérer le visiteur', '방문자 관리', 'Besucher verwalten', 'Gestisci visitatore', 'จัดการผู้เข้าชม', 'A látogató kezelése', 'Beheer bezoeker', 'curo Visitor', 'Kelola Pengunjung', 'Ziyaretçi''yi Yönet', 'Διαχείριση επισκεπτών', 'مدیریت بازدید کننده', 'Urus Pelawat', 'సందర్శకులని నిర్వహించండి', 'பார்வையாளர் நிர்வகி', 'મુલાકાતીને મેનેજ કરો', 'Zarządzaj odwiedzającym', 'Керувати відвідувачем', 'ਵਿਜ਼ਿਟਰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vizitatorul', 'ဧည့်သည်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Alejo', 'Sarrafa baƙo'),
(380, 'manage_fee_type', 'Manage Fee Type', 'ফি টাইপ পরিচালনা করুন', 'Administrar tipo de tarifa', 'إدارة نوع الرسوم', 'शुल्क प्रकार का प्रबंधन करें', 'فیس قسم کا انتظام کریں', '管理费用类型', '手数料タイプの管理', 'Gerenciar Tipo de Taxa', 'Управление платежом', 'Gérer le type de frais', '수수료 유형 관리', 'Gebührenart verwalten', 'Gestisci tipo di tariffa', 'จัดการประเภทค่าธรรมเนียม', 'Kezelési díj kezelése', 'Beheer Fee Type', 'Curo Save Type', 'Mengelola Jenis Biaya', 'Ücret Tipini Yönetin', 'Διαχείριση τύπου αμοιβής', 'مدیریت نوع هزینه', 'Urus Jenis Bayaran', 'ఫీజు రకం నిర్వహించండి', 'கட்டணம் வகை நிர்வகி', 'ફી પ્રકારનું સંચાલન કરો', 'Zarządzaj typem opłaty', 'Управління формами оплати', 'ਫੀਸ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de taxă', 'ကြေးအမျိုးအစားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn iru owo sisan', 'Sarrafa Nau''in Farashin'),
(381, 'manage_invoice', 'Manage Invoice', 'চালান পরিচালনা করুন', 'Administrar Factura', 'إدارة الفاتورة', 'चालान प्रबंधित करें', 'انوائس کا انتظام کریں', '管理发票', '請求書の管理', 'Gerenciar Fatura', 'Управление счетом', 'Gérer la facture', '송장 관리', 'Rechnung verwalten', 'Gestisci la fattura', 'จัดการใบแจ้งหนี้', 'Számla kezelése', 'Factuur beheren', 'curo cautionem', 'Kelola Faktur', 'Fatura Yönetimi', 'Διαχείριση τιμολογίου', 'مدیریت فاکتور', 'Urus Invois', 'వాయిస్ని నిర్వహించండి', 'விலைப்பட்டியல் நிர்வகி', 'ઇન્વૉઇસ મેનેજ કરો', 'Zarządzaj fakturą', 'Керувати рахунком-фактурою', 'ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura', 'ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo', 'Sarrafa daftari'),
(382, 'manage_due_invoice', 'Manage Due Invoice', 'বাকি চালান পরিচালনা করুন', 'Administrar la factura adeudada', 'إدارة الفاتورة المستحقة', 'नियत चालान प्रबंधित करें', 'ذمہ داری انوائس کا نظم کریں', '管理到期发票', '支払請求の管理', '`Gerenciar a Fatura devida', 'Управление счет-фактурой', 'Gérer la facture due', '송장 처리', 'Fällige Rechnung verwalten', 'Gestire la dovuta fattura', 'จัดการใบแจ้งหนี้ที่ครบกำหนด', 'Betöltési számla kezelése', 'Beheer de verschuldigde factuur', 'Ob cautionem Curo', 'Kelola Tagihan Karena', 'Ödenen Fatura Yönetimi', 'Διαχείριση του οφειλόμενου τιμολογίου', 'مدیریت حساب فوری', 'Urus Invois yang Dikehendaki', 'వాయిస్ వాయిస్ని నిర్వహించండి', 'காரணமாக விலைப்பட்டியல் நிர்வகி', 'કારણે ભરતિયું મેનેજ કરો', 'Zarządzaj niezobowiązującą fakturą', 'Керувати належним рахунком-фактурою', 'ਬਾਹਰੀ ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura datorată', 'ကြောင့်ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo Ibẹrẹ', 'Sarrafa Ƙari Bayarwa'),
(383, 'manage_expenditure_head', 'Manage Expenditure Head', 'ব্যয় হেড পরিচালনা করুন', 'Administrar Jefe de Gastos', 'إدارة النفقات رئيس', 'व्यय प्रमुख का प्रबंधन करें', 'اخراجات کا انتظام کریں', '管理支出主管', '支出頭を管理する', 'Gerenciar Cabeça de Despesas', 'Управление руководителем расходов', 'Gérer le chef des dépenses', '지출 헤드 관리', 'Ausgabenleiter verwalten', 'Gestisci il capo delle spese', 'จัดการหัวหน้าค่าใช้จ่าย', 'Kezelési költség kezelése', 'Beheer uitgavenhoofd', 'Curo capite sis crustum', 'Mengelola Kepala Biaya', 'Harcama Kafasını Yönet', 'Διαχείριση επικεφαλής δαπανών', 'مدیریت سر هزینه', 'Menguruskan Ketua Perbelanjaan', 'వ్యయ హెడ్ని నిర్వహించండి', 'செலவுத் தலைப்பை நிர்வகி', 'ખર્ચ હેડનું સંચાલન કરો', 'Zarządzaj głową wydatków', 'Управління витратами голови', 'ਖ਼ਰਚੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați șeful cheltuielilor', 'အသုံးစရိတ်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso ori oṣuwọn', 'Sarrafa Shugaban Kuɗi'),
(384, 'manage_expenditure', 'Manage Expenditure', 'ব্যয় পরিচালনা করুন', 'Administrar el gasto', 'إدارة النفقات', 'व्यय प्रबंधित करें', 'اخراجات کا انتظام کریں', '管理支出', '支出の管理', 'Gerenciar Despesas', 'Управление расходами', 'Gérer les dépenses', '지출 관리', 'Ausgaben verwalten', 'Gestisci le spese', 'จัดการค่าใช้จ่าย', 'A kiadások kezelése', 'Uitgaven beheren', 'curo Custus', 'Mengelola Pengeluaran', 'Harcamaları Yönetin', 'Διαχείριση των δαπανών', 'مدیریت هزینه ها', 'Urus Perbelanjaan', 'వ్యయాలను నిర్వహించండి', 'செலவுகளை நிர்வகி', 'ખર્ચ મેનેજ કરો', 'Zarządzaj wydatkami', 'Управління витратами', 'ਖਰਚ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cheltuielile', 'အသုံးစရိတ်စီမံခန့်ခွဲရန်', 'Ṣakoso owo sisan', 'Sarrafa Kuɗi'),
(385, 'manage_income_head', 'Manage Income Head', 'আয় হেড পরিচালনা করুন', 'Administrar cabeza de ingresos', 'إدارة رأس الدخل', 'आय हेड प्रबंधन करें', 'انکم سر کا انتظام کریں', '管理收入负责人', '所得管理をする', 'Gerencie o Chefe de Renda', 'Управление доходом', 'Gérer le revenu', '소득 헤드 관리', 'Einkommenskopf verwalten', 'Gestisci il reddito', 'จัดการหัวหน้ารายได้', 'A jövedelemfej kezelése', 'Beheer inkomstenstroom', 'Reditus in caput Curo', 'Mengelola Kepala Pendapatan', 'Gelir Kafasını Yönetin', 'Διαχείριση κεφαλής εισοδήματος', 'مدیریت درآمد سر', 'Urus Ketua Pendapatan', 'ఆదాయం హెడ్ని నిర్వహించండి', 'வருமானத் தலைப்பை நிர்வகி', 'ઇન્કમ હેડ મેનેજ કરો', 'Zarządzaj głową przychodów', 'Управління головою доходів', 'ਇਨਕਮ ਹੈਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați capul venitului', 'ဝင်ငွေခွန်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso Ori-ori Owo Oya', 'Sarrafa Shugaban Asusun'),
(386, 'manage_income', 'Manage Income', 'আয় পরিচালনা করুন', 'Administrar ingresos', 'إدارة الدخل', 'आय प्रबंधित करें', 'آمدنی کا انتظام کریں', '管理收入', '収入を管理する', 'Gerar Renda', 'Управление доходом', 'Gérer le revenu', '소득 관리', 'Einkommen verwalten', 'Gestire il reddito', 'จัดการรายได้', 'Kezelje a jövedelmet', 'Beheer het inkomen', 'curo Reditus', 'Mengelola Penghasilan', 'Geliri Yönet', 'Διαχείριση εσόδων', 'مدیریت درآمد', 'Urus Pendapatan', 'ఆదాయాన్ని నిర్వహించండి', 'வருமானத்தை நிர்வகி', 'આવકનું સંચાલન કરો', 'Zarządzaj dochodem', 'Управління доходом', 'ਆਮਦਨੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Venitul', 'ဝင်ငွေခွန်များကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Owo-ori', 'Sarrafa samun kudin shiga'),
(387, 'responsibility', 'Responsibility', 'দায়িত্ব', 'Responsabilidad', 'المسئولية', 'ज़िम्मेदारी', 'ذمہ داری', '责任', '責任', 'Responsabilidade', 'Обязанность', 'Responsabilité', '책임', 'Verantwortung', 'Responsabilità', 'ความรับผิดชอบ', 'Felelősség', 'Verantwoordelijkheid', 'responsibility', 'Tanggung jawab', 'sorumluluk', 'Ευθύνη', 'مسئوليت', 'Tanggungjawab', 'బాధ్యత', 'பொறுப்பு', 'જવાબદારી', 'Odpowiedzialność', 'Відповідальність', 'ਜ਼ਿੰਮੇਵਾਰੀ', 'Responsabilitate', 'တာဝန်', 'Ojúṣe', 'alhakin'),
(388, 'new', 'New', 'নতুন', 'Nuevo', 'الجديد', 'नया', 'نئی', '新', '新しい', 'Novo', 'новый', 'Nouveau', '새로운', 'Neu', 'Nuovo', 'ใหม่', 'Új', 'nieuwe', 'novus', 'Baru', 'Yeni', 'Νέος', 'جدید', 'Baru', 'న్యూ', 'புதிய', 'નવું', 'Nowy', 'Новий', 'ਨਵਾਂ', 'Nou', 'နယူး', 'Titun', 'sabon'),
(389, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত বার্তা', 'Mensajería privada', 'الرسائل الخاصة', 'निजी मेसेजिंग', 'ذاتی پیغام رسانی', '私人消息', 'プライベートメッセージング', 'Mensagens privadas', 'Частные сообщения', 'Messagerie privée', '비공개 메시지', 'Private Nachrichten', 'Messaggistica privata', 'ข้อความส่วนตัว', 'Privát üzenetküldés', 'Privéberichten', 'Secretum Nuntius', 'Pesan Pribadi', 'Özel Mesajlaşma', 'Ιδιωτικά μηνύματα', 'پیام خصوصی', 'Mesej Persendirian', 'ప్రైవేట్ సందేశం', 'தனியார் செய்தி', 'ખાનગી મેસેજિંગ', 'Prywatne wiadomości', 'Приватні повідомлення', 'ਪ੍ਰਾਈਵੇਟ ਸੁਨੇਹਾ', 'Mesageria privată', 'ပုဂ္ဂလိက Messaging ကို', 'Fifiranṣẹ Aladani', 'Private Saƙo'),
(390, 'activate_now', 'Activate Now', 'সক্রিয় করুন', 'Activar ahora', 'نشط الآن', 'अब सक्रिय करें', 'ابھی چالو کریں', '立即激活', '今すぐアクティブにする', 'Ative agora', 'Активировать сейчас', 'Activer maintenant', '지금 실행 시켜라', 'Jetzt aktivieren', 'Attivare ora', 'เปิดใช้งานเดี๋ยวนี้', 'Aktiváld most', 'Activeer nu', 'Nunc strenuus', 'Sekarang aktif', 'Şimdi aktifleştir', 'Ενεργοποίηση τώρα', 'هم اکنون فعال کن', 'Aktifkan sekarang', 'ఇప్పుడు సక్రియం చేయండి', 'இப்போது செயல்படுத்தவும்', 'હમણાં સક્રિય કરો', 'Aktywuj teraz', 'Активувати зараз', 'ਹੁਣ ਸਰਗਰਮ ਕਰੋ', 'Activeaza acum', 'အခုတော့ကိုသက်ဝင်', 'Muu Nisisiyi ṣiṣẹ', 'Kunna Yanzu'),
(391, 'in_activate_now', 'Inactivate Now', 'নিষ্ক্রিয় করুন', 'Inactivate ahora', 'تعطيل الآن', 'अब निष्क्रिय करें', 'اب غیر فعال', '立即停用', '今すぐ非アクティブ化する', 'Inactive agora', 'Инактивировать сейчас', 'Désactiver maintenant', '지금 비활성화', 'Inaktivieren Sie jetzt', 'Inactivate Now', 'ยกเลิกการใช้งานเดี๋ยวนี้', 'Inaktiválás most', 'Inactiveren nu', 'Nunc inactivate', 'Nonaktifkan Sekarang', 'Şimdi devre dışı bırak', 'Απενεργοποιήστε τώρα', 'غیرفعال کن', 'Tidak aktif sekarang', 'ఇప్పుడే నిష్క్రియం చేయండి', 'இப்போது முடக்கு', 'હવે નિષ્ક્રિય કરો', 'Dezaktywuj teraz', 'Інактивувати зараз', 'ਹੁਣ ਅਯੋਗ ਕਰੋ', 'Dezactivați acum', 'အခုတော့ Inactivate', 'Inactivate Bayi', 'Ƙasashe Yanzu'),
(392, 'non_member', 'Non Member', 'সদস্য নয়', 'No es miembro', 'غير الأعضاء', 'गैर - सदस्य', 'غیر رکن', '非会员', '非会員', 'Não membro', 'Не участник', 'Non membre', '비 멤버', 'Nicht-Mitglied', 'Non membro', 'ไม่ใช่สมาชิก', 'Nem tag', 'Geen lid', 'non Member', 'Bukan anggota', 'Üye olmayan', 'Μη μέλος', 'غیرعضو', 'Bukan Ahli', 'సభ్యుడు కాదు', 'உறுப்பினர் இல்லை', 'બિન સભ્ય', 'bez członka', 'Не учасник', 'ਗੈਰ ਮੈਂਬਰ', 'Nu e membru', 'non အဖွဲ့ဝင်', 'Ko omo', 'Ba Memba'),
(393, 'sender', 'Sender', 'প্রেরক', 'Remitente', 'مرسل', 'प्रेषक', 'مرسل', '所有', '送信者', 'Remetente', 'отправитель', 'Expéditeur', '보내는 사람', 'Absender', 'Mittente', 'ผู้ส่ง', 'Feladó', 'Afzender', 'mittens', 'Pengirim', 'Gönderen', 'Αποστολέας', 'فرستنده', 'Pengirim', 'పంపినవారు', 'அனுப்புநர்', 'પ્રેષક', 'Nadawca', 'Відправник', 'ਭੇਜਣ ਵਾਲਾ', 'Expeditor', 'ပေးပို့သူ', 'Oluṣẹ', 'Mai aikawa'),
(394, 'all', 'All', 'সকল', 'Todas', 'الكل', 'सब', 'سب', '所有', 'すべて', 'Todos', 'Все', 'Tout', '모든', 'Alle', 'Tutti', 'ทั้งหมด', 'Minden', 'Alle', 'Omnis', 'Semua', 'Herşey', 'Ολα', 'همه', 'Semua', 'అన్ని', 'அனைத்து', 'બધા', 'Wszystko', 'Все', 'ਸਭ', 'Toate', 'အားလုံး', 'Gbogbo', 'Duk'),
(395, 'bank', 'Bank', 'ব্যাংক', 'Banco', 'بنك', 'बैंक', 'بینک', 'Bank', 'バンク', 'Banco', 'Банка', 'Banque', '은행', 'Bank', 'Banca', 'ธนาคาร', 'Bank', 'Bank', 'Bank', 'Bank', 'Banka', 'Τράπεζα', 'بانک', 'Bank', 'బ్యాంక్', 'வங்கி', 'બેન્ક', 'Bank', 'Банк', 'ਬੈਂਕ', 'bancă', 'ကမ်း', 'ifowo pamo', 'Bank'),
(396, 'first_name', 'First Name', 'নামের প্রথম অংশ', 'Nombre de pila', 'الاسم الاول', 'पहला नाम', 'پہلا نام', '名字', 'ファーストネーム', 'Primeiro nome', 'Имя', 'Prénom', '이름', 'Vorname', 'Nome di battesimo', 'ชื่อจริง', 'Keresztnév', 'Voornaam', 'Praenomen', 'Nama depan', 'İsim', 'Ονομα', 'نام کوچک', 'Nama pertama', 'మొదటి పేరు', 'முதல் பெயர்', 'પ્રથમ નામ', 'Imię', 'Ім''я', 'ਪਹਿਲਾ ਨਾਂ', 'Nume', 'နာမည်', 'Orukọ kini', 'Sunan rana'),
(397, 'expire', 'Expire', 'মেয়াদোত্তীর্ণ', 'Expirar', 'تنقضي', 'समय सीमा समाप्त', 'میعاد ختم', '到期', '失効', 'Expirar', 'истекать', 'Expirer', '내쉬다', 'Verfallen', 'scadere', 'หมดอายุ', 'Lejár', 'vervallen', 'exspirare', 'Berakhir', 'sona ermek', 'Εκπνέω', 'Expire', 'Tamat tempoh', 'గడువు', 'காலாவதி', 'સમાપ્તિ', 'Wygasać', 'Закінчується', 'ਮਿਆਦ ਖਤਮ', 'Expira', 'ထွက်သက်ရှူ', 'Ti pari', 'ya ƙare'),
(398, 'card', 'Card', 'কার্ড', 'Tarjeta', 'بطاقة', 'कार्ड', 'کارڈ', '卡', 'カード', 'Cartão', 'Карта', 'Carte', '카드', 'Karte', 'Carta', 'บัตร', 'Kártya', 'Kaart', 'Card', 'Kartu', 'kart', 'Κάρτα', 'کارت', 'Kad', 'కార్డ్', 'அட்டை', 'કાર્ડ', 'Karta', 'Карта', 'ਕਾਰਡ', 'Card', 'ကဒ်', 'Kaadi', 'Katin'),
(399, 'cvv', 'CVV', 'সিভিভি', 'CVV', 'CVV', 'सीवीवी', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'સીવીવી', 'CVV', 'CVV', 'ਸੀਵੀਵੀ', 'CVV', 'CVV', 'CVV', 'CVV'),
(400, 'year', 'Year', 'বছর', 'Año', 'عام', 'साल', 'سال', '年', '年', 'Ano', 'Год', 'An', '년', 'Jahr', 'Anno', 'ปี', 'Év', 'Jaar', 'annos singulos', 'Tahun', 'Yıl', 'Ετος', 'سال', 'Tahun', 'ఇయర్', 'ஆண்டு', 'વર્ષ', 'Rok', 'Рік', 'ਸਾਲ', 'An', 'ခုနှစ်', 'Odun', 'Shekara'),
(401, 'quick', 'Quick', 'সরাসরি', 'Rápido', 'بسرعة', 'शीघ्र', 'فوری', '快', 'クイック', 'Rápido', 'Быстро', 'Rapide', '빨리', 'Schnell', 'Presto', 'รวดเร็ว', 'Gyors', 'Snel', 'Velox', 'Cepat', 'Hızlı', 'Γρήγορα', 'سریع', 'Cepat', 'శీఘ్ర', 'விரைவு', 'ઝડપી', 'Szybki', 'Швидкий', 'ਤੇਜ਼', 'Rapid', 'လျင်မြန်သော', 'Awọn ọna', 'Da sauri'),
(402, 'daily', 'Daily', 'দৈনিক', 'Diario', 'اليومي', 'रोज', 'روزانہ', '日常', '毎日', 'Diariamente', 'Ежедневно', 'du quotidien', '매일', 'Täglich', 'Quotidiano', 'ประจำวัน', 'Napi', 'Dagelijks', 'Daily', 'Harian', 'Günlük', 'Καθημερινά', 'روزانه', 'Harian', 'డైలీ', 'டெய்லி', 'દૈનિક', 'Codziennie', 'Щодня', 'ਰੋਜ਼ਾਨਾ', 'Zilnic', 'နေ့စဉ်', 'Lojoojumọ', 'kowace rana'),
(403, 'monthly', 'Monthly', 'মাসিক', 'Mensual', 'شهريا', 'महीने के', 'ماہانہ', '每月一次', '毎月', 'Por mês', 'ежемесячно', 'Mensuel', '월간 간행물', 'Monatlich', 'Mensile', 'รายเดือน', 'Havi', 'Maandelijks', 'Vestibulum', 'Bulanan', 'Aylık', 'Μηνιαίος', 'ماهانه', 'Bulanan', 'మంత్లీ', 'மாதாந்திர', 'માસિક', 'Miesięczny', 'Щомісяця', 'ਮਹੀਨਾਵਾਰ', 'Lunar', 'လစဉ်', 'Oṣooṣu', 'Kwanan wata'),
(404, 'group_by_data', 'Group by Data', 'গ্রুপ বাই ডাটা', 'Agrupar por datos', 'المجموعة حسب البيانات', 'समूह द्वारा डेटा', 'ڈیٹا کی طرف سے گروپ', '按数据分组', 'データでグループ化する', 'Agrupar por Dados', 'Группа по данным', 'Grouper par données', '데이터로 그룹화', 'Nach Daten gruppieren', 'Raggruppa per dati', 'จัดกลุ่มตามข้อมูล', 'Csoport adatok szerint', 'Groeperen op gegevens', 'Ordina Data', 'Kelompokkan menurut Data', 'Veri Gruplama', 'Ομαδοποιήστε με Δεδομένα', 'گروه با داده ها', 'Kumpulan mengikut Data', 'డేటా ద్వారా సమూహం', 'தரவு மூலம் குழு', 'ડેટા દ્વારા ગ્રુપ', 'Grupuj według danych', 'Групувати за даними', 'ਡੈਟਾ ਦੁਆਰਾ ਸਮੂਹ', 'Grup după date', 'ဒေတာများသဖြင့် Group မှ', 'Agbegbe nipasẹ Data', 'Ƙungiya ta hanyar Data'),
(405, 'resign_date', 'Resign Date', 'পদত্যাগ তারিখ', 'Fecha de renuncia', 'استقالة التاريخ', 'इस्तीफा तारीख', 'استعفی کی تاریخ', '辞职日期', '辞職日', 'Data de rescisão', 'Дата списания', 'Date de démission', '사임 날짜', 'Datum zurückgeben', 'Data di dimettersi', 'ลาออกวันที่', 'Lemondás dátuma', 'Ontslagdatum', 'Date abdicare', 'Tanggal pengunduran diri', 'Ayrılış Tarihi', 'Ημερομηνία παραίτησης', 'تاریخ استعفا', 'Tarikh Mengundurkan', 'తేదీని రాజీనామా చేయండి', 'தேதி விலக்கு', 'રાજીનામું તારીખ', 'Data rezygnacji', 'Дата відставки', 'ਦਾਨ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data renunțării', 'နေ့စွဲနုတ်ထွက်', 'Fi ọjọ silẹ', 'murabus Kwanan wata'),
(406, 'invalid_login', 'Invalid Email OR password.', 'ভুল ইমেল বা পাসওয়ার্ড', 'Correo electrónico o contraseña inválidos', 'البريد الإلكتروني أو كلمة السر خاطئة.', 'अमान्य ईमेल या पासवर्ड।', 'غلط ای میل یا پاس ورڈ.', '无效的电子邮件或密码。', '無効なメールアドレスまたはパスワード。', 'Email ou senha inválida.', 'Неправильный адрес электронной почты или пароль.', 'Email ou mot de passe invalide.', '이메일 또는 비밀번호가 잘못되었습니다.', 'Ungültige E-Mail oder Passwort.', 'E-mail o password non validi.', 'อีเมลหรือรหัสผ่านไม่ถูกต้อง', 'Rossz email cím vagy jelszó.', 'Ongeldig e-mailadres of wachtwoord.', 'Aliquam-mailem scribeant vel tessera fuit.', 'Email atau kata sandi tidak valid', 'Geçersiz e-posta veya şifre.', 'Λάθος διεύθυνση ηλεκτρονικού ταχυδρομείου ή κωδικός πρόσβασης.', 'ایمیل یا کلمه عبور نامعتبر است', 'Email atau kata laluan tidak sah.', 'చెల్లని ఇమెయిల్ లేదా పాస్వర్డ్.', 'தவறான மின்னஞ்சல் அல்லது கடவுச்சொல்.', 'ઈ મેઈલ અથવા પાસવર્ડ ખોટો છે.', 'Nieprawidłowy e-mail lub hasło.', 'Невірна адреса електронної пошти або пароль.', 'ਗਲਤ ਈਮੇਲ ਜਾਂ ਪਾਸਵਰਡ.', 'E-mail nevalidă sau parola.', 'မှားနေသောအီးမေးလ်သို့မဟုတ်စကားဝှက်ကို။', 'Imeeli Invalid TABI ọrọigbaniwọle.', 'Imel mara inganci ko kalmar sirri.'),
(407, 'remember_me', 'Remember Me', 'আমাকে মনে রাখুন', 'Recuérdame', 'تذكرنى', 'मुझे याद रखना', 'مجھے پہچانتے ہو', '记住我', '私を覚えてますか', 'Lembre de mim', 'Запомни меня', 'Souviens-toi de moi', '날 기억해', 'Erinnere dich an mich', 'Ricordati di me', 'จดจำฉัน', 'Emlékezz rám', 'Onthoud me', 'memento mihi', 'Ingat saya', 'Beni hatırla', 'Θυμήσου με', 'مرا به خاطر بسپار', 'Ingat saya', 'నన్ను గుర్తు పెట్టుకో', 'என்னை நினைவில் கொள்ளுங்கள்', 'મને યાદ', 'Zapamiętaj mnie', 'Пам''ятай мене', 'ਮੇਰੀ ਯਾਦ ਹੈ', 'Amintește-ți de mine', 'ငါ့ကိုသတိရပါ', 'Ranti mi', 'Ka tuna da ni'),
(408, 'lost_your_password', 'Lost your password?', 'আপনার পাসওয়ার্ড হারিয়েছেন?', '¿Perdiste tu contraseña?', 'فقدت كلمة المرور الخاصة بك؟', 'आपका पासवर्ड खो गया है?', 'اپنا پاس ورڈ بھول گئے؟', '忘记密码？', 'パスワードを忘れましたか？', 'Perdeu sua senha?', 'Забыли пароль?', 'Mot de passe perdu?', '비밀번호를 잊어 버렸습니까?', 'Passwort vergessen?', 'Hai perso la password?', 'ลืมรหัสผ่าน?', 'Elvesztetted a jelszavadat?', 'Wachtwoord vergeten?', 'Perdidit vestri password?', 'Kehilangan password?', 'Şifreni mi unuttun?', 'Έχασες τον κωδικό σου?', 'رمز عبور خود را فراموش کرده اید؟', 'Lupa kata kunci?', 'మీ పాస్వర్డ్ను కోల్పోయారా?', 'உங்கள் கடவுச்சொல்லை இழந்தீர்களா?', 'તમારો પાસવર્ડ ખોવાઈ ગયો?', 'Zgubiłeś hasło?', 'Забули свій пароль?', 'ਤੁਹਾਡਾ ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ ਹੋ?', 'Ti-ai pierdut parola?', 'သင့်ရဲ့စကားဝှက်ကိုဆုံးရှုံးခဲ့ရ?', 'Ti padanu ọrọ igbaniwọle rẹ?', 'Ka manta kalmarka ta sirri?');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(409, 'back_to_login', 'Back to Login', 'ব্যাক টু লগইন', 'Atrás para iniciar sesión', 'العودة إلى تسجيل الدخول', 'लॉगिन पर वापस जाएं', 'لاگ ان پر واپس', '回到登入', 'ログインに戻る', 'Volte ao login', 'Вернуться на страницу входа', 'Retour connexion', '로그인으로 돌아 가기', 'Zurück zur Anmeldung', 'Torna al login', 'กลับไปที่ล็อกอิน', 'Vissza a bejelentkezéshez', 'Terug naar Inloggen', 'Back to Login', 'Kembali untuk masuk', 'Giriş sayfasına dön', 'Επιστροφή στην σελίδα εισόδου', 'بازگشت به صفحه ورود', 'Kembali ke Log masuk', 'తిరిగి లాగిన్ అవ్వండి', 'மீண்டும் உள்நுழையவும்', 'લૉગિન પર પાછા જાઓ', 'Powrót do logowania', 'Повернутися до Login', 'ਲੌਗਿਨ ਤੇ ਵਾਪਸ', 'Înapoi la autentificare', 'နောက်ကျောဝင်မည်မှ', 'Pada si Wiwọle', 'Komawa zuwa shiga'),
(410, 'instruction', 'Instruction', 'নির্দেশাবলী', 'Instrucción', 'تعليمات', 'अनुदेश', 'ہدایات', '指令', '命令', 'Instrução', 'инструкция', 'Instruction', '교수', 'Anweisung', 'istruzione', 'คำแนะนำ', 'Utasítás', 'Instructie', 'Disciplinam', 'Petunjuk', 'Talimat', 'Εντολή', 'دستورالعمل', 'Arahan', 'ఇన్స్ట్రక్షన్', 'வழிமுறை', 'સૂચના', 'Instrukcja', 'Інструкція', 'ਨਿਰਦੇਸ਼', 'instrucție', 'ညွှန်ကြားချက်', 'Ilana', 'Umarni'),
(411, 'manage_user_instruction', 'Please add Teacher, Employee, Student and Guardian before manage users.', 'ব্যবহারকারীদের পরিচালনা করার আগে শিক্ষক, কর্মচারী, ছাত্র এবং অভিভাবক যোগ করুন।', 'Agregue Maestro, Empleado, Estudiante y Tutor antes de administrar usuarios.', 'يرجى إضافة المعلم والموظف والطالب والجارديان قبل إدارة المستخدمين.', 'उपयोगकर्ताओं को प्रबंधित करने से पहले कृपया शिक्षक, कर्मचारी, छात्र और संरक्षक जोड़ें।', 'براہ کرم صارفین کو منظم کرنے سے قبل استاد، ملازم، طالب علم اور گارڈین شامل کریں.', '在管理用户之前，请添加教师，员工，学生和监护人。', 'ユーザーを管理する前に教師、従業員、学生、保護者を追加してください。', 'Por favor, adicione Professor, Empregado, Estudante e Guardião antes de administrar usuários.', 'Перед тем, как управлять пользователями, добавьте Учителя, Работника, Студента и Хранителя.', 'Veuillez ajouter un enseignant, un employé', '사용자를 관리하기 전에 교사, 직원, 학생 및 보호자를 추가하십시오.', 'Bitte fügen Sie Teacher, Employee, Student und Guardian hinzu, bevor Sie Benutzer verwalten.', 'Prima di gestire gli utenti, aggiungi Insegnante, Dipendente, Studente e Guardiano.', 'โปรดเพิ่ม Teacher, Employee, Student และ Guardian ก่อนที่จะจัดการผู้ใช้', 'Kérjük, add hozzá tanár, alkalmazott, tanuló és gondnok, mielőtt kezelné a felhasználókat.', 'Voeg docent, medewerker, student en bewaker toe voordat u gebruikers beheert.', 'Placere addere: Magister bone, Aliquam, antequam student et episcopum administrare users.', 'Tolong tambahkan Guru, Karyawan, Pelajar dan Wali sebelum mengelola pengguna.', 'Kullanıcıları yönetmeden önce lütfen Öğretmen, Çalışan, Öğrenci ve Koruyucu''yu ekleyin.', 'Προσθέστε δάσκαλο, υπάλληλο, φοιτητή και φύλακα πριν διαχειριστείτε τους χρήστες.', 'قبل از مدیریت کاربران، لطفا معلم، کارمند، دانشجو و نگهبان را اضافه کنید.', 'Sila tambah Guru, Pekerja, Pelajar dan Penjaga sebelum mengurus pengguna.', 'దయచేసి వినియోగదారులను నిర్వహించడానికి ముందు Teacher, ఉద్యోగి, స్టూడెంట్ మరియు గార్డియన్లను జోడించండి.', 'பயனர்களை நிர்வகிக்க முன் ஆசிரியர், பணியாளர், மாணவர் மற்றும் கார்டியன் ஆகியோரைச் சேர்க்கவும்.', 'વપરાશકર્તાઓ મેનેજ કરો તે પહેલાં શિક્ષક, કર્મચારી, વિદ્યાર્થી અને વાલીઓ ઉમેરો.', 'Przed zarządzaniem użytkownikami dodaj Nauczyciela, Pracownika, Studenta i Opiekuna.', 'До того, як керувати користувачами, додайте ', 'ਉਪਭੋਗਤਾਵਾਂ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ, ਕਰਮਚਾਰੀ, ਵਿਦਿਆਰਥੀ ਅਤੇ ਗਾਰਡੀਅਨ ਜੋੜੋ', 'Adăugați profesor, angajat, student și gardian înainte de a administra utilizatorii.', 'အရှင်ဘုရား, ထမ်း, ကျောင်းသားနှင့်ဂါးဒီးယန်းမတိုင်မီအသုံးပြုသူများကိုစီမံခန့်ခွဲ add ပေးပါ။', 'Jọwọ fi Olukọ, Olukọni, Akeko ati Olutọju ṣaju Ṣakoso awọn olumulo.', 'Da fatan a ƙara malami, ma''aikaci, dalibi da kuma tsare kafin gudanar da masu amfani.'),
(413, 'add_employee_instruction', 'Please add Designation before add Employee.', 'কর্মচারী যোগ করার আগে অনুগ্রহপূর্বক পদবী যোগ করুন', 'Agregue Designación antes de agregar Empleado.', 'يرجى إضافة تعيين قبل إضافة موظف.', 'कृपया कर्मचारी जोड़ें जोड़ने से पहले पदनाम जोड़ें।', 'ملازمت کو شامل کرنے سے قبل عہدہ شامل کریں.', '请在添加员工之前添加指定。', '従業員を追加する前に指定を追加してください。', 'Por favor, adicione Designação antes de adicionar Empregado.', 'Пожалуйста, добавьте Обозначение, прежде чем добавить Сотрудника.', 'Veuillez ajouter la désignation avant d''ajouter un employé.', 'Employee를 추가하기 전에 지정을 추가하십시오.', 'Bitte fügen Sie die Bezeichnung hinzu, bevor Sie Mitarbeiter hinzufügen.', 'Aggiungi la designazione prima di aggiungere un dipendente.', 'โปรดเพิ่มการกำหนดก่อนเพิ่ม Employee', 'Kérjük, add hozzá a jelölést, mielőtt hozzáadja a Munkavállalót.', 'Voeg een aanwijzing toe voordat u werknemer toevoegt.', 'Aliquam VOCABULUM addere placet in conspectu add.', 'Harap tambahkan Penunjukan sebelum menambahkan Karyawan.', 'Lütfen Çalışan eklemeden önce Adlandırma ekleyin.', 'Προσθέστε Προσδιορισμός πριν προσθέσετε Υπάλληλο.', 'قبل از افزودن کارمند لطفا نامگذاری را اضافه کنید.', 'Sila tambah Jawatan sebelum menambah Pekerja.', 'ఉద్యోగిని చేర్చడానికి ముందు హోదాను జత చేయండి.', 'பணியாளரை சேர்க்க முன் நியமனத்தைச் சேர்க்கவும்.', 'એમ્પ્લોયી ઉમેરો પહેલાં કૃપા કરીને હોદ્દો ઉમેરો.', 'Dodaj Oznaczenie przed dodaniem pracownika.', 'Будь ласка, додайте позначення, перш ніж додати співробітника.', 'ਕਰਮਚਾਰੀ ਨੂੰ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਸ਼ੰਸਾ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați o denumire înainte de a adăuga un angajat.', 'သတ်မှတ်ပေးထားခြင်းမတိုင်မီန်ထမ်းပေါင်းထည့်ပေါင်းထည့်ပေးပါ။', 'Jowo fi Ami silẹ ṣaaju ki o to fi Abáni ṣiṣẹ.', 'Da fatan a kara Zabin kafin ƙara ma''aikaci.'),
(414, 'add_class_instruction', 'Please add Teacher before add Class.', 'ক্লাস যোগ করার আগে শিক্ষক যোগ করুন', 'Por favor agregue Maestro antes de agregar Clase.', 'الرجاء إضافة معلم قبل إضافة الفصل الدراسي.', 'कृपया कक्षा जोड़ें से पहले शिक्षक जोड़ें।', 'کلاس شامل کرنے سے قبل ٹیچر شامل کریں.', '请在添加课程之前添加教师', 'クラスを追加する前に教師を追加してください。', 'Adicione o professor antes de adicionar a classe.', 'Пожалуйста, добавьте Учителя перед добавлением класса.', 'Veuillez ajouter un enseignant avant d''ajouter une classe.', '수업을 추가하기 전에 선생님을 추가하십시오.', 'Bitte fügen Sie den Lehrer hinzu, bevor Sie die Klasse hinzufügen.', 'Aggiungi l''insegnante prima di aggiungere la lezione.', 'โปรดเพิ่มครูก่อนเพิ่มระดับ', 'Add hozzá a Tanárt, mielőtt hozzáadná az osztályt.', 'Voeg docent toe voordat u lesgroep toevoegt.', 'Magister add addere placet in conspectu Ps.', 'Tolong tambahkan Guru sebelum menambahkan Kelas.', 'Sınıfı eklemeden önce lütfen Öğretmen ekleyin.', 'Παρακαλούμε προσθέστε Δάσκαλο πριν προσθέσετε την κατηγορία.', 'قبل از افزودن کلاس، لطفا معلم را اضافه کنید.', 'Sila tambahkan Guru sebelum menambah Kelas.', 'క్లాస్ ను జోడించుటకు ముందుగా టీచర్ని చేర్చుము.', 'வர்க்கம் சேர்க்க முன் ஆசிரியர் சேர்க்க.', 'ઍડ ક્લાસ પહેલાં શિક્ષક ઉમેરો.', 'Dodaj Nauczyciela przed dodaniem klasy.', 'Будь ласка, додайте Учителя перед додаванням Класу.', 'ਕਿਰਪਾ ਕਰਕੇ ਐਡ ਕਲਾਸ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați profesor înainte de a adăuga Clasa.', 'Class ကို add မတိုင်မီဆရာ add ပေးပါ။', 'Jọwọ fi Olukọ ṣaaju ki o to fi Kilasi sii.', 'Da fatan a kara Malam kafin ƙara Class.'),
(427, 'add_section_instruction', 'Please add Teacher & Class before add Section.', 'বিভাগ যোগ করার আগে শিক্ষক ও শ্রেণী যোগ করুন', 'Por favor agregue Maestro y Clase antes de agregar la Sección.', 'يرجى إضافة معلم وفئة قبل إضافة قسم.', 'अनुभाग जोड़ने से पहले शिक्षक और कक्षा जोड़ें', 'سیکشن میں شامل کرنے سے قبل ٹیچر اور کلاس شامل کریں.', '在添加部分之前，请添加教师和班级。', 'セクションを追加する前に教師とクラスを追加してください。', 'Por favor, adicione professor e classe antes de adicionar seção.', 'Пожалуйста, добавьте Teacher & Class перед добавлением раздела.', 'Veuillez ajouter l''enseignant et la classe avant d''ajouter la section.', '섹션을 추가하기 전에 교사와 수업을 추가하십시오.', 'Bitte fügen Sie Lehrer und Klasse hinzu, bevor Sie Abschnitt hinzufügen.', 'Aggiungi insegnante e classe prima di aggiungere la sezione.', 'โปรดเพิ่ม Teacher & Class ก่อนเพิ่มส่วน', 'Add add Teacher & Class hozzáadása előtt szekció.', 'Voeg docent en klas toe voordat u sectie toevoegt.', 'Genus: Magister add & sectionem addere velit ante.', 'Tolong tambahkan Guru & Kelas sebelum menambahkan Bagian.', 'Bölüm eklemeden önce lütfen Öğretmen ve Sınıf ekleyin.', 'Παρακαλούμε προσθέστε το δάσκαλο και την τάξη πριν προσθέσετε ενότητα.', 'لطفا قبل از افزودن بخش معلم و کلاس اضافه کنید', 'Sila tambah Guru & Kelas sebelum menambah Seksyen.', 'దయచేసి విభాగాన్ని జోడించే ముందు Teacher & Class జోడించండి.', 'பிரிவு சேர்வதற்கு முன்னர் ஆசிரியர் மற்றும் வகுப்பைச் சேர்க்கவும்.', 'વિભાગ ઉમેરો પહેલાં શિક્ષક અને વર્ગ ઉમેરો.', 'Dodaj nauczyciela i zajęcia, zanim dodasz sekcję.', 'Додайте розділ ', 'ਕਿਰਪਾ ਕਰਕੇ ਸੈਕਸ਼ਨ ਜੋੜਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਅਤੇ ਕਲਾਸ ਸ਼ਾਮਲ ਕਰੋ.', 'Vă rugăm să adăugați un profesor și o clasă înainte de a adăuga secțiunea.', 'add ပုဒ်မမတိုင်မီအရှင်ဘုရား & Class ကို add ပေးပါ။', 'Jọwọ fi Olukọ ati Kilasi ṣaaju ki o to fi Abala kan kun.', 'Da fatan a ƙara Malami da Class kafin ƙara Sashe.'),
(428, 'class_add_alert', 'Please add Class', 'ক্লাস যোগ করুন', 'Por favor agrega Clase', 'يرجى إضافة فئة', 'कृपया कक्षा जोड़ें', 'براہ مہربانی کلاس شامل کریں', '请添加Class', 'クラスを追加してください', 'Por favor, adicione Classe', 'Пожалуйста, добавьте класс', 'Veuillez ajouter une classe', '수업을 추가하십시오.', 'Bitte fügen Sie Klasse hinzu', 'Per favore aggiungi Class', 'โปรดเพิ่ม Class', 'Add osztály', 'Voeg alstublieft Klasse toe', 'Placere addere Paleonemertea Class', 'Tolong tambahkan Kelas', 'Lütfen Sınıf ekle', 'Προσθέστε την κλάση', 'لطفا کلاس را اضافه کنید', 'Sila tambah Kelas', 'దయచేసి క్లాస్ను జోడించు', 'வகுப்பு சேர்க்கவும்', 'કૃપા કરીને વર્ગ ઉમેરો', 'Dodaj klasę', 'Будь ласка, додайте клас', 'ਕਲਾਸ ਸ਼ਾਮਿਲ ਕਰੋ ਜੀ', 'Adăugați Clasa', 'Class ကို add ပေးပါ', 'Jọwọ fi Kilasi sii', 'Da fatan a kara Class'),
(429, 'add_student_instruction', 'Please add Guardian, Class & Section before add Student.', 'ছাত্র যোগ করার আগে অভিভাবক, ক্লাস এবং বিভাগ যোগ করুন', 'Agregue Guardián, Clase y Sección antes de agregar Estudiante.', 'يرجى إضافة الجارديان، فئة وقسم قبل إضافة طالب.', 'कृपया छात्र जोड़ने से पहले अभिभावक, कक्षा और अनुभाग जोड़ें।', 'برائے مہربانی طالب علم کو شامل کرنے سے پہلے گارڈین، کلاس اور سیکشن شامل کریں.', '添加学生前请添加监护人，课程和科室。', '生徒を追加する前にGuardian、Class＆Sectionを追加してください。', 'Por favor, adicione Guardian, Class & Section antes de adicionar Student.', 'Пожалуйста, добавьте Guardian, Class & Section перед добавлением Студента.', 'Veuillez ajouter Guardian, Class & Section avant d''ajouter Student.', '학생을 추가하기 전에 Guardian, Class & Section을 추가하십시오.', 'Bitte fügen Sie Guardian, Class & Section hinzu, bevor Sie Student hinzufügen.', 'Aggiungi Guardian, Class & Section prima di aggiungere Student.', 'กรุณาเพิ่ม Guardian, Class & Section ก่อนเพิ่ม Student', 'Add hozzá Guardian, Class & Section hozzáadása előtt Add Student.', 'Voeg Guardian, Class & Section toe voordat je Student toevoegt.', 'Adde sis custos, adde prius Discipulus Class sect.', 'Tolong tambahkan Guardian, Class & Section sebelum menambahkan Student.', 'Öğrenci eklemeden önce lütfen Guardian, Class & Section''u ekleyin.', 'Παρακαλούμε προσθέστε Guardian, Class & Section πριν προσθέσετε Student.', 'قبل از افزودن دانش آموز، لطفا Guardian، Class & Section را اضافه کنید.', 'Sila tambah Guardian, Kelas & Seksyen sebelum menambah Pelajar.', 'దయచేసి విద్యార్థిని జోడించే ముందు గార్డియన్, క్లాస్ & సెక్షన్ని జోడించండి.', 'மாணவர் சேர்க்கும் முன்பு கார்டியன், வகுப்பு & பகுதி சேர்க்கவும்.', 'ઉમેરો વિદ્યાર્થી પહેલાં ગાર્ડિયન, વર્ગ અને વિભાગ ઉમેરો.', 'Przed dodaniem ucznia dodaj opiekuna, klasę i sekcję.', 'Перш ніж додати Студент, додайте Guardian, Class & Section.', 'ਕਿਰਪਾ ਕਰਕੇ ਵਿਦਿਆਰਥੀ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਗਾਰਡੀਅਨ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ ਸ਼ਾਮਿਲ ਕਰੋ.', 'Vă rugăm să adăugați Guardian, Class & Section înainte de a adăuga Student.', 'ဂါးဒီးယန်း, အတန်းအစား & ပုဒ်မမတိုင်မီကျောင်းသား add add ပေးပါ။', 'Jowo fi Olutọju, Kilasi & Abala šaaju ki o to fi ọmọ-iwe kun.', 'Da fatan a kara Guardian, Class & Sashe kafin ƙara Student.'),
(430, 'add_assignment_instruction', 'Please add Class & Subject before add Assignment.', 'যোগদান যোগ করার আগে ক্লাস এবং বিষয় যোগ করুন', 'Agregue Clase y Asunto antes de agregar Asignación.', 'الرجاء إضافة الفئة والموضوع قبل إضافة التعيين.', 'कृपया असाइनमेंट जोड़ने से पहले कक्षा और विषय जोड़ें।', 'تفویض شامل کرنے سے پہلے کلاس اور مضمون شامل کریں.', '请在添加作业之前添加课程和主题。', '割り当てを追加する前にクラスと件名を追加してください。', 'Por favor, adicione Class & Subject antes de adicionar Atribuição.', 'Пожалуйста, добавьте Class & Subject перед добавлением Assignment.', 'Veuillez ajouter la classe et le sujet avant d''ajouter une affectation.', '과제를 추가하기 전에 수업 및 과제를 추가하십시오.', 'Bitte fügen Sie Klasse und Betreff hinzu, bevor Sie die Zuweisung hinzufügen.', 'Per favore aggiungi Class & Subject prima di aggiungere Assignment.', 'โปรดเพิ่ม Class & Subject ก่อนที่จะเพิ่ม Assignment', 'Add hozzá az Osztályt és a témát, mielőtt hozzárendelheti.', 'Voeg Klasse en Onderwerp toe voordat u Toewijzing toevoegt.', 'Class placet, adde prius adsignatione add.', 'Harap tambahkan Kelas & Subjek sebelum menambahkan Penugasan.', 'Ödev eklemek için lütfen Sınıf ve Konuyu ekleyin.', 'Προσθέστε την κλάση και το θέμα πριν προσθέσετε την επιλογή Αντιστοίχιση.', 'لطفا کلاس و موضوع را قبل از اضافه شدن اضافه کنید.', 'Sila tambah Kelas & Subjek sebelum menambah Tugasan.', 'దయచేసి అసైన్మెంట్ను జోడించే ముందు క్లాస్ & సబ్జెక్ట్ జోడించండి.', 'ஒதுக்கீட்டைச் சேர்க்கும் முன்பு வகுப்பு & தலைப்பு சேர்க்கவும்.', 'મહેરબાની કરીને ઉમેરતા પહેલા સભા અને વિષય ઉમેરો.', 'Przed dodaniem zadania dodaj klasę i temat.', 'Будь ласка, додайте клас і тему, перш ніж додати асигнування.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਸਾਈਨਮੈਂਟ ਤੋਂ ਪਹਿਲਾਂ ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Adăugați Clasă și Subiect înainte de a adăuga Atribuire.', 'add တာဝန်မတိုင်မီအတန်းအစား & အကြောင်းအရာ add ပေးပါ။', 'Jọwọ fi Kilasi & Koko ṣaaju ki o to fi iṣẹ-ṣiṣe kun.', 'Da fatan a kara Class & Rubutun kafin ƙara Matsayi.'),
(431, 'add_exam_schedule_instruction', 'Please add Exam, Class & Subject before add Exm Schedule.', 'পরীক্ষার সময়সূচী যোগ করার আগে পরীক্ষা, শ্রেণী ও বস্তু যুক্ত করুন।', 'Agregue Examen, Clase y Objeto antes de agregar el Horario del Examen.', 'الرجاء إضافة امتحان، فئة & كائن قبل إضافة جدول الامتحان.', 'परीक्षा परीक्षा अनुसूची जोड़ें से पहले परीक्षा, कक्षा और वस्तु जोड़ें', 'امتحان شیڈول میں شامل کرنے سے پہلے، امتحان، کلاس اور آبجیکٹ شامل کریں.', '在添加考试时间表之前，请添加考试，课程和对象。', 'Exam Scheduleを追加する前に、Exam、Class＆Objectを追加してください。', 'Por favor, adicione o Exame, Classe e Objeto antes de adicionar o Programa de Exames.', 'Пожалуйста, добавьте Экзамен, Класс и Объект, прежде чем добавить График экзамена.', 'Veuillez ajouter l''examen, la classe et l''objet avant d''ajouter l''horaire d''examen.', 'Exam Schedule을 추가하기 전에 Exam, Class & Object를 추가하십시오.', 'Bitte fügen Sie Prüfung, Klasse und Objekt hinzu, bevor Sie den Prüfungsplan hinzufügen.', 'Aggiungi esame, classe e oggetto prima di aggiungere la pianificazione degli esami.', 'โปรดเพิ่มการสอบวิชา & วัตถุก่อนเพิ่มตารางการสอบ', 'Add Exam, Class & Object hozzáadása az Exam Schedule hozzáadásához.', 'Voeg Examen, Klasse & Object toe voordat u het Exam Schedule toevoegt.', 'Placere addere IV, addere IV Class Object coram arcu.', 'Harap tambahkan Ujian, Kelas & Objek sebelum menambahkan Jadwal Ujian.', 'Sınav Takvimi eklemeden önce lütfen Sınav, Sınıf ve Nesneyi ekleyin.', 'Παρακαλούμε προσθέστε Εξετάσεις, Τάξη & Αντικείμενο πριν προσθέσετε το Πρόγραμμα Εξετάσεων.', 'قبل از افزودن برنامه آزمون، لطفا امتحان، کلاس و شیء را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Objek sebelum menambah Jadual Peperiksaan.', 'పరీక్షా షెడ్యూల్ను జోడించే ముందు పరీక్ష, క్లాస్ & ఆబ్జెక్ట్ చేర్చండి.', 'தேர்வு அட்டவணை சேர்க்க முன் முன், வகுப்பு & பொருள் சேர்க்க தயவு செய்து.', 'પરીક્ષા શેડ્યૂલ ઉમેરો પહેલાં પરીક્ષાની, વર્ગ અને ઑબ્જેક્ટ ઉમેરો', 'Dodaj egzamin, klasę i obiekt przed dodaniem harmonogramu egzaminu.', 'Додайте іспит, клас і об''єкт перед додаванням графіка іспиту.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ ਅਤੇ ਔਬਜੈਕਟ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați examen, clasă și obiect înainte de a adăuga programul de examinare.', 'အတန်းအစား & အရာဝတ္ထုမတိုင်မီစာမေးပွဲအချိန်ဇယားကိုထည့်သွင်း, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Ohun ṣaaju ki o to ṣayẹwo Akẹkọ Idaduro.', 'Da fatan a kara gwadawa, Class & Object kafin ƙara Nazarin Jarrabawa.'),
(432, 'add_exam_suggestion_instruction', 'Please add Exam, Class & Subject before add Exam Suggestion.', 'পরীক্ষা পরামর্শ যোগ করার আগে পরীক্ষা, শ্রেণী এবং বিষয় যুক্ত করুন।', 'Agregue Examen, Clase y Asunto antes de agregar Exm Sugerencia.', 'يرجى إضافة امتحان، فئة & الموضوع قبل إضافة اقتراح إكسم.', 'Exm सुझाव जोड़ने से पहले परीक्षा, कक्षा और विषय जोड़ें।', 'اے ایم ایم تجاویز کو شامل کرنے سے قبل امتحان، کلاس اور مضمون شامل کریں.', '在添加Exm建议之前，请添加考试，课程和主题。', 'Exm提案を追加する前に、Exam、Class＆Subjectを追加してください。', 'Por favor, adicione Exame, Classe e Assunto antes de adicionar Exm Sugestão.', 'Пожалуйста, добавьте Экзамен, Класс и Тема, прежде чем добавить предложение Exm.', 'S''il vous plaît ajouter l''examen, la classe et le sujet avant d''ajouter la suggestion d''Exm.', 'Exm 제안을 추가하기 전에 Exam, Class & Subject를 추가하십시오.', 'Bitte fügen Sie Exam, Class & Subject hinzu, bevor Sie Exm Suggestion hinzufügen.', 'Aggiungi Exam, Class e Subject prima di aggiungere Exm Suggestion.', 'โปรดเพิ่มการสอบวิชา & หัวเรื่องก่อนเพิ่มคำแนะนำ Exm', 'Add Exam, Class & Subject hozzáadása az Exm Suggestion hozzáadásához', 'Voeg examen, klasse en onderwerp toe voordat u Exm-suggestie toevoegt.', 'IV addere placet, adde prius Class Exm Suggestion.', 'Harap tambahkan Ujian, Kelas & Subjek sebelum menambahkan Saran Muka.', 'Exm Öneri eklemeden önce lütfen Sınav, Sınıf ve Konuyu ekleyin.', 'Παρακαλούμε προσθέστε την εξέταση, την κλάση και το θέμα πριν προσθέσετε την πρόταση Exm.', 'لطفا قبل از افزودن پیشنهاد Exm، امتحان، کلاس و موضوع را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Subjek sebelum menambah Cadangan Exm.', 'దయచేసి Exm సూచనను జోడించే ముందు పరీక్ష, క్లాస్ & విషయం జోడించండి.', 'Exm பரிந்துரைகளை சேர்க்கும் முன் தேர், வகுப்பு & தலைப்பு சேர்க்கவும்.', 'Exm સૂચન ઉમેરતા પહેલાં પરીક્ષા, વર્ગ અને વિષય ઉમેરો.', 'Dodaj Exam, Class & Subject, zanim dodasz Exm Suggestion.', 'Додайте Exm Suggestion, додайте іспит, клас і тему.', 'ਐਕਸਮ ਸੁਝਾਅ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਐਗਜ਼ੁਖ, ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Vă rugăm să adăugați Exam, Class & Subject înainte de a adăuga Sugestie Exm.', 'အတန်းအစား & အကြောင်းအရာမတိုင်မီ Exm အကြံပြုချက်ထပ်ထည့်, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Koko ṣaaju ki o to fi Alaye pataki sii.', 'Da fatan a sake gwada jarrabawa, Class & Subject kafin ƙara Exm Shawarwari.'),
(433, 'login_success', 'You have successfully logged In.', 'আপনি সফলভাবে লগ ইন করেছেন.', 'Has iniciado sesión correctamente.', 'لقد قمت بتسجيل الدخول بنجاح.', 'आप सफलता पूर्वक प्रवेश कर चुके हैं।', 'آپ نے کامیابی سے ان میں لاگ ان کیا ہے.', '您已成功登录。', 'あなたは正常にログインしました。', 'Você fez login com sucesso.', 'Вы успешно вошли в.', 'Vous avez réussi à vous connecter', '로그인했습니다.', 'Sie haben sich erfolgreich angemeldet.', 'Hai effettuato il log in con successo.', 'คุณเข้าสู่ระบบเรียบร้อยแล้ว', 'Sikeresen bejelentkezett.', 'Je bent succesvol ingelogd.', 'Et tu bene initium.', 'Anda berhasil masuk', 'Başarıyla giriş yaptınız.', 'Έχετε επιτυχώς συνδεθεί.', 'شما با موفقیت وارد شدید.', 'Anda berjaya melog masuk.', 'మీరు విజయవంతంగా లాగిన్ చేసారు.', 'நீங்கள் உள்நுழைந்துள்ளீர்கள்.', 'તમે સફળતાપૂર્વક લોગ ઇન કર્યું છે.', 'Logowanie zakończone powodzeniem.', 'Ви успішно ввійшли в систему.', 'ਤੁਸੀਂ ਸਫਲਤਾਪੂਰਵਕ ਲਾਗ ਇਨ ਕੀਤਾ ਹੈ.', 'Ați fost conectat (ă) cu succes.', 'သင့်အလယ်၌အောင်မြင်စွာ logged ပါပြီ။', 'O ti wọle Wole ni ilọsiwaju.', 'An samu nasarar shiga cikin.'),
(434, 'wrong_email', 'You have entered wrong email address', 'আপনি ভুল ইমেল ঠিকানা প্রবেশ করেছেন', 'Ingresó una dirección de correo electrónico incorrecta', 'لقد أدخلت عنوان بريد إلكتروني خاطئا', 'आपने गलत ईमेल पता दर्ज किया है', 'آپ نے غلط ای میل پتہ درج کیا ہے', '您输入了错误的电子邮件地址', 'あなたは間違った電子メールアドレスを入力しました', 'Você digitou um endereço de e-mail incorreto', 'Вы ввели неправильный адрес электронной почты', 'Vous avez entré une adresse e-mail incorrecte', '잘못된 이메일 주소를 입력했습니다.', 'Sie haben eine falsche E-Mail-Adresse eingegeben', 'Hai inserito un indirizzo email errato', 'คุณป้อนที่อยู่อีเมลผิด', 'Rossz e-mail címet adott meg', 'U hebt een verkeerd e-mailadres ingevoerd', 'Et ingressi sunt nefas inscriptio', 'Anda telah memasukkan alamat email salah', 'Yanlış e-posta adresini girdiniz', 'Έχετε εισάγει λάθος διεύθυνση ηλεκτρονικού ταχυδρομείου', 'شما آدرس ایمیل اشتباه وارد کرده اید', 'Anda telah memasukkan alamat e-mel yang salah', 'మీరు తప్పు ఇమెయిల్ చిరునామాను నమోదు చేసారు', 'நீங்கள் தவறான மின்னஞ்சல் முகவரியை உள்ளிட்டுள்ளீர்கள்', 'તમે ખોટો ઇમેઇલ સરનામું દાખલ કર્યું છે', 'Podałeś zły adres e-mail', 'Ви ввели неправильну адресу електронної пошти', 'ਤੁਸੀਂ ਗਲਤ ਈਮੇਲ ਪਤਾ ਦਾਖਲ ਕੀਤਾ ਹੈ', 'Ați introdus o adresă de e-mail greșită', 'သငျသညျမှားယွင်းတဲ့အီးမေးလ်လိပ်စာထဲသို့ဝင်ခဲ့ကြ', 'O ti tẹ adirẹsi imeeli ti ko tọ', 'An shigar da adireshin email bata daidai'),
(435, 'reset_email_success', 'Password reset email sent successfully. Please check you email', ' 62/5000 পাসওয়ার্ড রিসেট ইমেল সফলভাবে পাঠানো হয়েছে আপনি ইমেল চেক করুন', 'El correo electrónico de restablecimiento de contraseña se envió correctamente. Por favor revisa tu correo electrónico', 'تم إرسال البريد الإلكتروني لإعادة تعيين كلمة المرور بنجاح. يرجى التحقق من بريدك الإلكتروني', 'पासवर्ड रीसेट ईमेल सफलतापूर्वक भेजा गया कृपया आपको ईमेल जांचें', 'پاس ورڈ دوبارہ ترتیب ای میل کامیابی سے بھیجا گیا. براہ کرم آپ کو ای میل چیک کریں', '密码重置邮件发送成功。 请检查你的电子邮件', 'パスワードリセットメールが正常に送信されました。 メールをチェックしてください', 'Senha de redefinição de senha enviada com sucesso. Verifique seu e-mail', 'Сброс пароля был успешно отправлен. Пожалуйста, проверьте электронную почту', 'Password reset email sent successfully. Please check you email', '비밀번호 재설정 이메일이 성공적으로 전송되었습니다. 이메일을 확인하십시오.', 'E-Mail zur Zurücksetzung des Kennworts erfolgreich gesendet Bitte überprüfen Sie Ihre E-Mail', 'Email di reimpostazione della password inviata correttamente. Per favore controlla la tua email', 'อีเมลรีเซ็ตรหัสผ่านถูกส่งเรียบร้อยแล้ว โปรดตรวจสอบอีเมลของคุณ', 'A jelszó-visszaállító e-mail sikeresen elküldve. Kérjük, ellenőrizze az e-mailt', 'Wachtwoord reset e-mail succesvol verzonden. Controleer je e-mail', 'Reddere email password misit tincidunt. Placere reprehendo vestri email', 'Email reset password berhasil dikirim Silahkan cek email anda', 'Şifre sıfırlama e-postası başarıyla gönderildi. Lütfen e-postayı kontrol et', 'Το μήνυμα ηλεκτρονικού ταχυδρομείου επαναφοράς κωδικού πρόσβασης έγινε με επιτυχία Παρακαλώ ελέγξτε το email σας', 'ایمیل ارسالی با موفقیت ارسال شد. لطفا ایمیل را بررسی کنید', 'E-mel tetapan semula kata laluan berjaya dihantar. Sila semak e-mel anda', 'పాస్వర్డ్ రీసెట్ ఇమెయిల్ విజయవంతంగా పంపబడింది. దయచేసి మీకు ఇమెయిల్ తనిఖీ చేయండి', 'கடவுச்சொல் மீட்டமைப்பு மின்னஞ்சல் வெற்றிகரமாக அனுப்பப்பட்டது. தயவுசெய்து மின்னஞ்சலை சரிபார்க்கவும்', 'પાસવર્ડ રીસેટ ઇમેઇલ સફળતાપૂર્વક મોકલ્યો કૃપા કરીને તમને ઇમેઇલ તપાસો', 'E-mail z resetem hasła został wysłany pomyślnie. Proszę sprawdzić e-mail', 'Електронна адреса для відновлення пароля успішно відправлено. Будь-ласка, перевірте, чи є вам електронною поштою', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ ਕਿਰਪਾ ਕਰਕੇ ਤੁਹਾਨੂੰ ਈਮੇਲ ਦੀ ਜਾਂਚ ਕਰੋ', 'Emailul de resetare a parolei a fost trimis cu succes Vă rugăm să verificați prin e-mail', 'စကားဝှက်ပြန်ညှိအီးမေးလ်ကိုအောင်မြင်စွာစေလွှတ်ခဲ့သည်။ သငျသညျကိုအီးမေးလ်စစ်ဆေးပါ', 'Ọrọigbaniwọle atunto imeeli ti firanṣẹ ni ifijišẹ Jowo ṣayẹwo o imeeli', 'Sake saitin imel kalmar sirri da aka aika. Da fatan a duba ku email'),
(436, 'unexpected_error', 'Unexpected error occured', 'অপ্রত্যাশিত ত্রুটি ঘটেছে', 'Ocurrió un error inesperado', 'حدث خطأ غير متوقع', 'अनपेक्षित त्रुटि हुई', 'غیر متوقع غلطی ہوئی', '意外的错误发生', '予期しないエラーが発生しました', 'Ocorreu um erro inesperado', 'Произошла непредвиденная ошибка', 'Une erreur inattendue s''est produite', '예기치 않은 오류가 발생했습니다.', 'Unerwarteter Fehler ist aufgetreten', 'Si è verificato un errore imprevisto', 'เกิดข้อผิดพลาดที่ไม่คาดคิด', 'Váratlan hiba történt', 'Er is een onverwachte fout opgetreden', 'Error occurrit inopinatum', 'Terjadi kesalahan tak terduga', 'Beklenmedik bir hata oluştu', 'Παρουσιάστηκε μη αναμενόμενο σφάλμα', 'خطای غیرمنتظره رخ داده است', 'Ralat tidak dijangka berlaku', 'ఊహించని లోపం సంభవించింది', 'எதிர்பாராத பிழை ஏற்பட்டது', 'અનપેક્ષિત ભૂલ આવી', 'Pojawił się nieoczekiwany błąd', 'Несподівана помилка', 'ਅਚਾਨਕ ਤਰੁੱਟੀ ਉਤਪੰਨ ਹੋਈ', 'A apărut o eroare neașteptată', 'မမျှော်လင့်ဘဲအမှားဖြစ်ပွားခဲ့သည်', 'Aṣiṣe airotẹlẹ kan ṣẹlẹ', 'An sami kuskure marar kuskure'),
(437, 'password_reset_error', 'Password length must be 6-12 Character and match with Confirm password', 'পাসওয়ার্ডের দৈর্ঘ্য 6-12 অক্ষর এবং নিশ্চিত পাসওয়ার্ডের সাথে মেলে', 'La longitud de la contraseña debe ser de 6-12 caracteres y coincide con Confirmar contraseña', 'يجب أن يكون طول كلمة المرور 6-12 حرف وتطابق مع تأكيد كلمة المرور', 'पासवर्ड की लंबाई 6-12 वर्ण और पासवर्ड की पुष्टि के साथ मैच होना चाहिए', 'پاس ورڈ کی لمبائی 6-12 ہونا ضروری ہے اور اس کی تصدیق کی پاس ورڈ کے ساتھ میچ ہونا چاہیے', '密码长度必须是6-12个字符并且与确认密码相匹配', 'パスワードの長さは6〜12文字で、パスワードの確認と一致する必要があります', 'O comprimento da senha deve ser de 6 a 12 caracteres e combinar com Confirmar senha', 'Длина пароля должна быть 6-12 символов и соответствовать паролю подтверждения.', 'la longueur du mot de passe doit être comprise entre 6 et 12 caractères et correspondre avec Confirmer le mot de passe', '비밀번호 길이는 6-12 자 여야하며 비밀번호 확인과 일치해야합니다.', 'Die Passwortlänge muss 6-12 Zeichen lang sein und mit Passwort bestätigen übereinstimmen', 'La lunghezza della password deve essere di 6-12 caratteri e corrisponde a Conferma password', 'รหัสผ่านต้องยาว 6-12 ตัวอักษรและตรงกับรหัสยืนยัน', 'A jelszó hosszúságának 6-12 karakterből kell állnia, és meg kell egyeznie a Jelszó megerősítésével', 'Wachtwoordlengte moet 6-12 tekens zijn en overeenkomen met Wachtwoord bevestigen', '6-12 longitudinem esse pares ignoro Character Confirm ignoro', 'Panjang kata sandi harus 6-12 Karakter dan cocok dengan Confirm password', 'Şifre uzunluğu 6-12 karakter olmalıdır ve Parolayı onayla ile eşleşmelidir.', 'Το μήκος του κωδικού πρόσβασης πρέπει να είναι 6-12 χαρακτήρες και να ταιριάζει με τον κωδικό επιβεβαίωσης', 'طول رمز عبور باید 6 تا 12 حرف باشد و با تایید رمز عبور مطابقت دارد', 'Panjang kata laluan mesti 6-12 Watak dan padan dengan Sahkan kata laluan', 'పాస్ వర్డ్ పొడవు 6-12 ఉండాలి', 'கடவுச்சொல் நீளம் இருக்க வேண்டும் 6-12 எழுத்து மற்றும் கடவுச்சொல்லை உறுதிப்படுத்தல் பொருந்தவில்லை', 'પાસવર્ડની લંબાઈ 6-12 અક્ષર હોવા જોઈએ અને પાસવર્ડની પુષ્ટિ કરો', 'Długość hasła musi wynosić 6-12 Znak i dopasowanie z Potwierdź hasło', 'Довжина пароля повинна бути 6-12 символів і відповідати з підтвердженням пароля', 'ਪਾਸਵਰਡ ਦੀ ਲੰਬਾਈ 6-12 ਅੱਖਰ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ ਅਤੇ ਪਾਸਵਰਡ ਨਾਲ ਪੁਸ਼ਟੀ ਕਰੋ', 'Lungimea parolei trebuie să fie 6-12 Caracter și să se potrivească cu Confirmare parolă', 'Password ကိုအရှည် Confirm password ကိုအတူ 6-12 အက္ခရာနှင့်ပွဲစဉ်ဖြစ်ရပါမည်', 'Ipari ipari ọrọigbaniwọle gbọdọ jẹ 6-12 Ti ohun kikọ ati baramu pẹlu Jẹrisi ọrọigbaniwọle', 'Dole ne kalmar wucewa ta kasance ta 6-12 Haɗi da wasa tare da Tabbatar da kalmar sirri'),
(438, 'in_active', 'Inactive', 'নিষ্ক্রিয়', 'Inactivo', 'غير نشط', 'निष्क्रिय', 'غیر فعال', '待用', '非アクティブ', 'Inativo', 'Неактивный', 'Inactif', '비활성', 'Inaktiv', 'Inattivo', 'เฉื่อยชา', 'tétlen', 'Inactief', 'Ut ultrices vestibulum', 'Tidak aktif', 'etkisiz', 'Αδρανής', 'غیر فعال', 'Tidak aktif', 'క్రియారహిత', 'செயல்படா', 'નિષ્ક્રિય', 'Nieaktywny', 'Неактивний', 'ਨਿਸ਼ਕਿਰਿਆ', 'Inactiv', 'မလှုပ်ရှားတတ်သော', 'Inactive', 'Mai aiki'),
(440, 'fill_out_all_data', 'Please fill up all field data', 'সমস্ত ক্ষেত্রের তথ্য পূরণ করুন দয়া করে', 'Complete todos los datos de campo', 'يرجى ملء جميع البيانات الميدانية', 'कृपया सभी फ़ील्ड डेटा भरें', 'براہ کرم تمام فیلڈ ڈیٹا کو بھریں', '请填写所有的现场数据', 'すべてのフィールドデータを入力してください', 'Complete todos os dados de campo', 'Пожалуйста, заполните все полевые данные', 'S''il vous plaît remplir toutes les données de terrain', '모든 필드 데이터를 입력하십시오.', 'Bitte füllen Sie alle Felddaten aus', 'Si prega di compilare tutti i dati del campo', 'โปรดกรอกข้อมูลฟิลด์ทั้งหมด', 'Kérjük, töltse ki az összes mezőadatot', 'Vul alle veldgegevens in', 'Obsecro, universi agri data fillup', 'Silahkan isi semua data lapangan', 'Lütfen tüm alan verilerini doldurun', 'Παρακαλούμε συμπληρώστε όλα τα δεδομένα πεδίου', 'لطفا تمام اطلاعات فیلد را پر کنید', 'Sila mengisi semua data medan', 'దయచేసి అన్ని క్షేత్ర డేటాను పూరించండి', 'அனைத்து புல தரவு நிரப்பவும்', 'કૃપા કરીને તમામ ફીલ્ડ ડેટા ભરો', 'Proszę odflukować wszystkie dane pola', 'Будь ласка, заповніть всі дані поля', 'ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਫੀਲਡ ਡਾਟਾ ਭਰ ਦਿਓ', 'Completați toate datele câmpului', 'အားလုံးလယ်ကွင်းဒေတာ fillup ကျေးဇူးပြု.', 'Jowo fi gbogbo data aaye kun', 'Da fatan a cika dukkan bayanan filin'),
(441, 'email_send_failed', 'Email sent failed. Please try again.', 'ইমেল পাঠানো ব্যর্থ হয়েছে। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'El correo electrónico enviado falló. Inténtalo de nuevo.', 'أخفق إرسال البريد الإلكتروني. حاول مرة اخرى.', 'ईमेल भेजा विफल रहा। कृपया पुन: प्रयास करें।', 'ای میل بھیجا گیا. دوبارہ کوشش کریں.', '电子邮件发送失败 请再试一次。', '送信されたメールは失敗しました もう一度お試しください。', 'E-mail enviado falhou. Por favor, tente novamente.', 'Не удалось отправить сообщение по электронной почте. Пожалуйста, попробуйте еще раз.', 'Email envoyé a échoué. Veuillez réessayer.', '전송 된 이메일이 실패했습니다. 다시 시도하십시오.', 'E-Mail sendet fehlgeschlagen. Bitte versuchen Sie es.', 'Email inviata fallita. Per favore riprova.', 'อีเมลที่ส่งล้มเหลว กรุณาลองอีกครั้ง.', 'Az elküldött e-mail nem sikerült. Kérlek próbáld újra.', 'E-mail verzonden mislukt. Probeer het opnieuw.', 'Misimus defecit. Quaero, iterum conare.', 'Email terkirim gagal Silahkan coba lagi', 'E-posta gönderilemedi. Lütfen tekrar deneyin.', 'Το ηλεκτρονικό ταχυδρομείο που στάλθηκε απέτυχε ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'ایمیل ارسال نشد. لطفا دوباره تلاش کنید.', 'E-mel dihantar gagal. Sila cuba lagi.', 'ఇమెయిల్ పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'மின்னஞ்சல் அனுப்பப்பட்டது தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ઇમેઇલ મોકલવામાં નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Nie udało się wysłać e-maila. Proszę spróbuj ponownie.', 'Не вдалося надіслати електронне повідомлення. Будь ласка спробуйте ще раз.', 'ਭੇਜੀ ਗਈ ਈਮੇਲ ਫੇਲ੍ਹ ਹੋਈ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Emailul trimis a eșuat. Vă rugăm să încercați din nou.', 'အီးမေးလ်ပို့ရန်မအောင်မြင်စေလွှတ်ခဲ့သည်။ ထပ်ကြိုးစားပါ။', 'Ifiranṣẹ imeeli ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'An aika imel da aka aika ya kasa. Da fatan a sake gwadawa.'),
(442, 'email_send_success', 'Email sent successfully', 'ইমেল সফলভাবে পাঠানো হয়েছে', 'Correo electrónico enviado con éxito', 'تم إرسال البريد الإلكتروني بنجاح', 'सफलतापूर्वक भेजा गया ईमेल', 'ای میل کامیابی سے بھیجا گیا', '电子邮件发送成功', '電子メールを正常に送信', 'E-mail enviado com sucesso', 'письмо успешно отправлено', 'E-mail envoyé avec succès', '이메일이 전송되었습니다.', 'Email wurde erfolgreich Versendet', 'email inviata correttamente', 'ส่งอีเมลเรียบร้อยแล้ว', 'Az e-mail sikeresen elküldve', 'E-mail met succes verzonden', 'Email ad bene', 'Email berhasil dikirim', 'e-posta başarıyla gönderildi', 'Το email στάλθηκε με επιτυχία', 'ایمیل با موفقیت ارسال شد', 'E-mel berjaya dihantar', 'ఇమెయిల్ విజయవంతంగా పంపబడింది', 'மின்னஞ்சல் வெற்றிகரமாக அனுப்பப்பட்டது', 'ઇમેઇલ સફળતાપૂર્વક મોકલ્યો', 'E-mail wysłany pomyślnie', 'Електронна пошта надійшла успішно', 'ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Email-ul a fost trimis cu succes', 'အောင်မြင်စွာကိုစလှေတျအီးမေးလ်ပို့ရန်', 'Imeeli firanṣẹ ni ifijišẹ', 'Imel da aka aika da nasarar'),
(443, 'sms_send_failed', 'Sms send failed. Please try again', 'এসএমএস পাঠানো ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'SMS enviado fallido. Inténtalo de nuevo', 'أرسل الرسائل القصيرة سمز. حاول مرة اخرى', 'एसएमएस भेजना विफल हुआ कृपया पुन: प्रयास करें', 'ایس ایم ایس ناکام ہوگئے. دوبارہ کوشش کریں', '短信发送失败。 请再试一次', 'SMS送信に失敗しました。 もう一度お試しください', 'Sms send falhou. Por favor, tente novamente', 'Ошибка отправки sms не удалась. Пожалуйста, попробуйте еще раз', 'L''envoi de sms a échoué. Veuillez réessayer', 'SMS 전송에 실패했습니다. 다시 시도하십시오.', 'SMS senden fehlgeschlagen. Bitte versuche es erneut', 'Invio SMS fallito. Per favore riprova', 'ส่ง sms ล้มเหลว กรุณาลองอีกครั้ง', 'A sms küldés nem sikerült. Kérlek próbáld újra', 'Sms verzenden mislukt. Probeer het opnieuw', 'Mittere SMS defecit. Quaero, iterum conare', 'Sms send gagal Silahkan coba lagi', 'SMS göndermek başarısız oldu. Lütfen tekrar deneyin', 'Η αποστολή SMS απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'پیامک ارسال نشد لطفا دوباره تلاش کنید', 'Hantar sms gagal. Sila cuba lagi', 'SMS పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'Sms அனுப்ப முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'એસએમએસ મોકલવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wysłać SMS-a. Proszę spróbuj ponownie', 'Не вдалося надіслати SMS-повідомлення. Будь ласка спробуйте ще раз', 'ਐਸਐਮਐਸ ਭੇਜਣਾ ਅਸਫਲ ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Sms-ul trimite nu a reușit. Vă rugăm să încercați din nou', 'sms ပျက်ကွက်ပေးပို့ပါ။ ထပ်ကြိုးစားပါ', 'Ifiranṣẹ Sms ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Sms aika ya kasa. Da fatan a sake gwadawa'),
(444, 'sms_send_success', 'Sms sent successfully', 'এসএমএস সফলভাবে পাঠানো হয়েছে', 'SMS enviado satisfactoriamente', 'تم إرسال الرسائل القصيرة بنجاح', 'एसएमएस सफलतापूर्वक भेजा गया', 'ایس ایم ایس کامیابی سے بھیجے گئے', '短信发送成功', 'SMSが正常に送信されました', 'SMS enviado com êxito', 'Sms успешно отправлен', 'SMS envoyé avec succès', 'SMS가 성공적으로 보냈습니다.', 'SMS erfolgreich versendet', 'SMS inviato correttamente', 'ส่ง sms เรียบร้อยแล้ว', 'A sms sikeresen elküldve', 'SMS succesvol verzonden', 'SMS misit feliciter', 'Sms berhasil dikirim', 'SMS başarıyla gönderildi', 'Τα SMS αποστέλλονται με επιτυχία', 'اس ام اس با موفقیت ارسال شد', 'Sms dihantar berjaya', 'Sms విజయవంతంగా పంపబడింది', 'Sms வெற்றிகரமாக அனுப்பப்பட்டது', 'એસએમએસ સફળતાપૂર્વક મોકલ્યો છે', 'SMS wysłany z powodzeniem', 'СМС успішно відправлено', 'SMS ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Sms-urile au fost trimise cu succes', 'အောင်မြင်စွာကိုစလှေတျ sms', 'Sms rán ni ifijišẹ', 'Sms ya aika da nasarar'),
(445, 'clickatell_mo_no', 'Mo Number', 'MO সংখ্যা', 'Número Mo', 'مو عدد', 'मो नंबर', 'مو نمبر', '莫数', 'Mo番号', 'Número Mo', 'Номер Mo', 'Mo Number', '모 번호', 'Mo Nummer', 'Numero Mo', 'จำนวนโม', 'Mo szám', 'Mo-nummer', 'Mo Number', 'Nomor Mo', 'Mo Numarası', 'Αριθμός Mo', 'شماره م', 'Nombor Mo', 'మో సంఖ్య', 'மோ எண்', 'મો સંખ્યા', 'Numer Mo', 'Номер Мо', 'ਮੋ ਨੰਬਰ', 'Numărul Mo', 'mo အရေအတွက်', 'Mo Number', 'Mo Number'),
(446, 'setup_your_sms_gateway', 'Please set up your expected sms gateway correctly ', 'অনুগ্রহ করে আপনার প্রত্যাশিত এসএমএস গেটওয়ে সঠিকভাবে সেট আপ করুন', 'Configure su puerta de enlace de SMS esperado correctamente', 'يرجى إعداد بوابة الرسائل القصيرة المتوقعة بشكل صحيح', 'कृपया अपना अपेक्षित एसएमएस गेटवे सही ढंग से सेट करें', 'براہ مہربانی اپنے متوقع ایس ایم ایس گیٹ وے کو صحیح طریقے سے مقرر کریں', '请正确设置您的预期的短信网关', '予想されるSMSゲートウェイを正しく設定してください', 'Configure o seu esperado sms gateway corretamente', 'Правильно настройте свой ожидаемый sms-шлюз', 'Veuillez configurer votre passerelle SMS attendue correctement', '예상되는 SMS 게이트웨이를 올바르게 설정하십시오.', 'Bitte richten Sie Ihr erwartetes SMS-Gateway korrekt ein', 'Si prega di configurare il vostro gateway sms previsto correttamente', 'โปรดตั้งค่าเกตเวย์ sms ที่คุณต้องการโดยถูกต้อง', 'Kérjük, helyesen állítsa be az elvárt sms-átjárót', 'Stel uw verwachte sms-gateway correct in', 'SMS porta quaeso erigas bene sperandum', 'Harap siapkan gateway sms yang Anda harapkan dengan benar', 'Lütfen beklenen sms ağ geçidi''nizi doğru bir şekilde ayarlayın.', 'Ρυθμίστε σωστά την αναμενόμενη πύλη sms', 'لطفا دروازه مورد انتظار اس ام اس مورد نظر را درست تنظیم کنید', 'Sila buat gerbang sms yang diharapkan', 'దయచేసి మీ ఆశించిన SMS గేట్ సరిగ్గా అమర్చండి', 'உங்கள் எதிர்பார்க்கப்படும் எஸ்எம்எஸ் நுழைவாயை சரியாக அமைக்கவும்', 'કૃપા કરીને તમારા અપેક્ષિત એસએમએસ ગેટવેને યોગ્ય રીતે સેટ કરો', 'Proszę poprawnie skonfigurować oczekiwaną bramę sms', 'Будь ласка, правильно налаштуйте очікуваний шлюз sms', 'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਉਮੀਦਵਾਰ SMS ਗੇਟਵੇ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਸੈਟ ਅਪ ਕਰੋ', 'Vă rugăm să configurați corect poarta de așteptare pentru sms', 'မှန်မှန်ကန်ကန်သင့်ရဲ့မျှော်မှန်း sms ကိုတံခါးပေါက်ကို set up ကို ကျေးဇူးပြု.', 'Jowo gbe ọna ẹnu sms ti o ti ṣe yẹ rẹ silẹ tọ', 'Don Allah a kafa hanyar ƙoƙarin sms da ake tsammani a daidai'),
(447, 'already_exist', 'This data already exists in database. Please try another one.', 'এই ডেটা ডাটাবেসে ইতিমধ্যে বিদ্যমান। অন্য একটি চেষ্টা করুন।', 'Esta información ya existe en la base de datos. Por favor prueba con otro.', 'هذه البيانات موجودة بالفعل في قاعدة البيانات. الرجاء محاولة تجربة أخرى.', 'डेटाबेस में यह डेटा पहले से मौजूद है कृपया कोई दूसरा प्रयास करें', 'ڈیٹا بیس میں یہ ڈیٹا پہلے ہی موجود ہے. براہ کرم ایک اور کوشش کریں.', '这个数据已经存在于数据库中。 请尝试另一个。', 'このデータはすでにデータベースに存在します。 別のものをお試しください。', 'Estes dados já existem no banco de dados. Por favor, tente outro.', 'Эти данные уже существуют в базе данных. Попробуйте еще один.', 'Ces données existent déjà dans la base de données. S''il vous plaît essayer un autre.', '이 데이터는 이미 데이터베이스에 있습니다. 다른 것을 시도하십시오.', 'Diese Daten existieren bereits in der Datenbank. Bitte versuchen Sie es mit einem anderen.', 'Questi dati esistono già nel database. Si prega di provare un altro.', 'ข้อมูลนี้มีอยู่แล้วในฐานข้อมูล โปรดลองอีกอันหนึ่ง', 'Ez az adat már létezik az adatbázisban. Próbálj ki egyet.', 'Deze gegevens bestaan al in de database. Probeer een andere.', 'Hoc etiam existit in database notitia. Aliquam alia.', 'Data ini sudah ada di database. Silakan coba yang lain.', 'Bu veriler zaten veritabanında mevcut. Lütfen başka bir tane deneyin.', 'Αυτά τα δεδομένα υπάρχουν ήδη στη βάση δεδομένων. Δοκιμάστε άλλο.', 'این اطلاعات قبلا در پایگاه داده وجود دارد. لطفا یکی دیگر را امتحان کنید', 'Data ini sudah wujud dalam pangkalan data. Sila cuba yang lain.', 'ఈ డేటా ఇప్పటికే డేటాబేస్లో ఉంది. దయచేసి మరొకదాన్ని ప్రయత్నించండి.', 'தரவு ஏற்கனவே தரவுத்தளத்தில் உள்ளது. தயவுசெய்து வேறொரு ஒன்றை முயற்சிக்கவும்.', 'ડેટા ડેટાબેઝમાં આ ડેટા પહેલેથી હાજર છે. કૃપા કરી બીજી કોઈનો પ્રયાસ કરો.', 'Te dane już istnieją w bazie danych. Proszę spróbować innego.', 'Ці дані вже існують у базі даних. Будь ласка, спробуйте інший.', 'ਇਹ ਡੇਟਾ ਡੇਟਾਬੇਸ ਵਿੱਚ ਮੌਜੂਦ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਹੋਰ ਕੋਈ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Aceste date există deja în baza de date. Încearcă altul.', 'ဒီ data ပြီးသားဒေတာဘေ့စရှိ။ အခြားတဦးတည်းကြိုးစားပါ။', 'Data yi tẹlẹ wa ni ibi ipamọ data. Jọwọ ṣe idanwo miiran.', 'Wannan bayanai sun riga sun kasance a cikin bayanai. Da fatan a gwada wani.'),
(448, 'valid_file_format_doc', 'Document file format: pdf, .doc, .docx or .txt', 'ডকুমেন্ট ফাইল ফরমেট: পিডিএফ, .ডক, .ডোসিস ওর .টেক্সট', 'Formato de archivo de documento: pdf, .doc, .docx o .txt', 'تنسيق ملف المستند: بدف أو .doc أو .docx أو .txt', 'दस्तावेज़ फ़ाइल प्रारूप: पीडीएफ, .doc, .docx या .txt', 'دستاویز فائل کی شکل: پی ڈی ایف، .doc، .docx یا .txt', '文档文件格式：pdf，.doc，.docx或.txt', 'ドキュメントファイル形式：pdf、.doc、.docx、または.txt', 'Formato do arquivo de documento: pdf, .doc, .docx ou .txt', 'Формат файла документа: pdf, .doc, .docx или .txt', 'Format de fichier de document: pdf, .doc, .docx ou .txt', '문서 파일 형식 : pdf, .doc, .docx 또는 .txt', 'Dokumentdateiformat: pdf, .doc, .docx oder .txt', 'Formato del documento: pdf, .doc, .docx o .txt', 'รูปแบบไฟล์เอกสาร: pdf, .doc, .docx หรือ. txt', 'Dokumentum fájlformátum: pdf, .doc, .docx vagy .txt', 'Document bestandsformaat: pdf, .doc, .docx of .txt', 'Documentum formae q.e.: pdf, .doc, aut .docx .txt', 'Format file dokumen: pdf, .doc, .docx, atau .txt', 'Belge dosyası biçimi: pdf, .doc, .docx veya .txt', 'Μορφή αρχείου εγγράφου: pdf, .doc, .docx ή .txt', 'فرمت فایل اسناد: pdf، .doc، .docx یا .txt', 'Format fail dokumen: pdf, .doc, .docx atau .txt', 'డాక్యుమెంట్ ఫైల్ ఫార్మాట్: pdf, .doc, .docx లేదా .txt', 'ஆவண கோப்பு வடிவம்: pdf, .doc, .docx அல்லது .txt', 'દસ્તાવેજ ફાઇલ ફોર્મેટ: પીડીએફ, .ડોક, ..docx અથવા .txt', 'Format pliku dokumentu: pdf, .doc, .docx lub .txt', 'Формат файлу документа: pdf, .doc, .docx або .txt', 'ਦਸਤਾਵੇਜ਼ ਫਾਈਲ ਫਾਰਮੈਟ: ਪੀ ਡੀ ਐਫ, .ਡੌਕ, .ਡੌਕਸ ਜਾਂ .txt', 'Formatul fișierului documentului: pdf, .doc, .docx sau .txt', 'စာရွက်စာတမ်းဖိုင်ကို format နဲ့: pdf, .doc, .docx သို့မဟုတ် .txt', 'Faili faili faili: pdf, .doc, .docx or .txt', 'Tsarin fayil na fayil: pdf, .doc, .docx ko .txt'),
(453, 'valid_file_format_img', 'Image file format: .jpg, .jpeg, .png or .gif', 'ইমেজ ফাইল ফরমেট: .জেপিজি, .জেপেগ, .পং ওর .গিফ।', 'Formato de archivo de imagen: .jpg, .jpeg, .png o .gif', 'تنسيق ملف الصورة: .jpg أو .jpeg أو ينغ أو .gif', 'छवि फ़ाइल प्रारूप: .jpg, .jpeg, .png या .gif', 'تصویری فائل کی شکل: .jpg، .jpeg، .png یا .gif', '图像文件格式：.jpg，.jpeg，.png或.gif', '画像ファイル形式：.jpg、.jpeg、.png、.gif', 'Formato do arquivo de imagem: .jpg, .jpeg, .png ou .gif', 'Формат файла изображения: .jpg, .jpeg, .png или .gif', 'Format de fichier image: .jpg, .jpeg, .png ou .gif', '이미지 파일 형식 : .jpg, .jpeg, .png 또는 .gif', 'Bilddateiformat: .jpg, .jpeg, .png oder .gif', 'Formato file immagine: .jpg, .jpeg, .png o .gif', 'รูปแบบไฟล์รูปภาพ: .jpg, .jpeg, .png หรือ. gif', 'Képfájl formátuma: .jpg, .jpeg, .png vagy .gif', 'Afbeeldingsbestandsindeling: .jpg, .jpeg, .png of .gif', 'Image formae q.e.: .jpg, .jpeg, aut png .gif', 'Format file gambar: .jpg, .jpeg, .png, atau .gif', 'Resim dosyası biçimi: .jpg, .jpeg, .png veya .gif', 'Μορφή αρχείου εικόνας: .jpg, .jpeg, .png ή .gif', 'فرمت فایل تصویری: .jpg، .jpeg، .png یا .gif', 'Format fail imej: .jpg, .jpeg, .png atau .gif', 'ఇమేజ్ ఫైల్ ఫార్మాట్: .jpg, .jpeg, .png లేదా .gif', 'பட கோப்பு வடிவமைப்பு: .jpg, .jpeg, .png அல்லது. Gif', 'છબી ફાઇલ ફોર્મેટ: .jpg, .jpeg, .png અથવા .gif', 'Format pliku obrazu: .jpg, .jpeg, .png lub .gif', 'Формат файлу зображень: .jpg, .jpeg, .png або .gif', 'ਚਿੱਤਰ ਫਾਇਲ ਫਾਰਮੈਟ: .jpg, .jpeg, .png ਜਾਂ .gif', 'Formatul fișierului imagine: .jpg, .jpeg, .png sau .gif', 'image file format နဲ့: .jpg, တွေဖြစ်တဲ့ JPEG, .png သို့မဟုတ် .gif', 'Aworan faili kika: .jpg, .jpeg, .png tabi .gif', 'Tsarin fayil na hotuna: .jpg, .jpeg, .png ko .gif'),
(455, 'select_valid_file_format', 'Please select a valid file format.', 'একটি ভ্যালিড ফাইল ফরমেট নির্বাচন করুন।', 'Seleccione un formato de archivo válido.', 'الرجاء تحديد تنسيق ملف صالح.', 'कृपया एक वैध फ़ाइल प्रारूप का चयन करें।', 'براہ کرم ایک درست فائل کی شکل منتخب کریں.', '请选择一个有效的文件格式。', '有効なファイル形式を選択してください。', 'Selecione um formato de arquivo válido.', 'Выберите допустимый формат файла.', 'Veuillez sélectionner un format de fichier valide', '유효한 파일 형식을 선택하십시오.', 'Bitte wählen Sie ein gültiges Dateiformat.', 'Si prega di selezionare un formato di file valido.', 'โปรดเลือกรูปแบบไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlformátumot.', 'Selecteer alstublieft een geldig bestandsformaat.', 'Placere eligere formae q.e. valet.', 'Silahkan pilih format file yang valid.', 'Lütfen geçerli bir dosya biçimi seçin.', 'Επιλέξτε μια έγκυρη μορφή αρχείου.', 'لطفا یک فرمت فایل معتبر را انتخاب کنید', 'Sila pilih format fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ ఆకృతిని ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பு வடிவத்தை தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ ફોર્મેટ પસંદ કરો.', 'Wybierz prawidłowy format pliku.', 'Будь ласка, виберіть правильний формат файлу.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਫਾਰਮੈਟ ਚੁਣੋ.', 'Selectați un format de fișier valid.', 'ခိုင်လုံသောဖိုင် format ကိုရွေးချယ်ပါ။', 'Jọwọ yan ọna kika faili ti o wulo.', 'Da fatan za a zaɓi tsarin fayil mai aiki.'),
(467, 'select_a_file', 'Please select a valid file.', 'দয়া করে একটি ভ্যালিড ফাইল নির্বাচন করুন।', 'Seleccione un archivo válido.', 'الرجاء تحديد ملف صالح.', 'कृपया एक मान्य फ़ाइल चुनें', 'براہ کرم ایک درست فائل منتخب کریں.', '请选择一个有效的文件。', '有効なファイルを選択してください。', 'Selecione um arquivo válido.', 'Выберите действительный файл.', 'Veuillez sélectionner un fichier valide', '올바른 파일을 선택하십시오.', 'Bitte wählen Sie eine gültige Datei.', 'Si prega di selezionare un file valido.', 'โปรดเลือกไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlt.', 'Selecteer alstublieft een geldig bestand.', 'Placere eligere file valet.', 'Silahkan pilih file yang valid.', 'Lütfen geçerli bir dosya seçin.', 'Επιλέξτε ένα έγκυρο αρχείο.', 'لطفا یک فایل معتبر را انتخاب کنید', 'Sila pilih fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ను ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பைத் தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ પસંદ કરો.', 'Proszę wybrać poprawny plik.', 'Будь ласка, виберіть дійсний файл.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਚੁਣੋ.', 'Selectați un fișier valid.', 'ခိုင်လုံသောဖိုင်ကိုရွေးပေးပါ။', 'Jọwọ yan faili ti o wulo.', 'Da fatan a zaɓi fayil mai aiki.'),
(477, 'input_valid_amount', 'Please input valid amount.', 'দয়া করে ভ্যালিড পরিমাণ ইনপুট করুন।', 'Por favor ingrese un monto válido.', 'الرجاء إدخال مبلغ صالح.', 'कृपया वैध राशि इनपुट करें', 'براہ کرم ان پٹ درست رقم.', '请输入有效金额。', '有効な金額を入力してください。', 'Digite o valor válido.', 'Введите действительную сумму.', 'Veuillez entrer un montant valide', '유효한 금액을 입력하십시오.', 'Bitte geben Sie den gültigen Betrag ein.', 'Si prega di inserire un importo valido.', 'โปรดป้อนจำนวนที่ถูกต้อง', 'Kérem adja meg az érvényes összeget.', 'Voer een geldig bedrag in.', 'Initus placere ratum tantum.', 'Mohon masukan jumlah yang benar.', 'Lütfen geçerli tutarı giriniz.', 'Καταχωρίστε έγκυρο ποσό.', 'لطفا مقدار معتبر وارد کنید', 'Sila masukkan jumlah yang sah.', 'దయచేసి చెల్లని మొత్తం ఇన్పుట్ చేయండి.', 'தயவுசெய்து உள்ளீடு செல்லுபடியான தொகை.', 'કૃપા કરીને માન્ય રકમ ઇનપુટ કરો.', 'Wprowadź prawidłową kwotę.', 'Будь ласка, введіть дійсну суму.', 'ਕਿਰਪਾ ਕਰਕੇ ਯੋਗ ਰਕਮ ਇੰਪੁੱਟ ਕਰੋ.', 'Introduceți suma validă.', 'input ကိုတရားဝင်ငွေပမာဏပါ။', 'Jọwọ iye owo titẹ sii.', 'Da fatan shigar da adadin shigarwa.'),
(552, 'input_valid_payment_setting', 'Please input correct payment setting.', 'প্লিজ ইনপুট কারেক্ট পেমেন্ট সেটিং।', 'Ingrese la configuración de pago correcta.', 'الرجاء إدخال إعداد الدفع الصحيح.', 'कृपया सही भुगतान सेटिंग इनपुट करें।', 'برائے مہربانی درست ادائیگی کی ترتیب میں ان پٹ', '请输入正确的付款设置。', '正しい支払い設定を入力してください。', 'Por favor, insira a configuração de pagamento correta.', 'Введите правильную настройку платежа.', 'Veuillez entrer le paramètre de paiement correct.', '올바른 지불 설정을 입력하십시오.', 'Bitte geben Sie die richtige Zahlungseinstellung ein.', 'Si prega di inserire le impostazioni di pagamento corrette.', 'โปรดป้อนการตั้งค่าการชำระเงินที่ถูกต้อง', 'Kérjük, adja meg a helyes fizetési beállítást.', 'Voer de juiste betalingsinstelling in.', 'Initus bene placent mercedem occasum.', 'Harap masukan pengaturan pembayaran yang benar.', 'Lütfen doğru ödeme ayarını giriniz.', 'Εισαγάγετε τη σωστή ρύθμιση πληρωμής.', 'لطفا تنظیم پرداخت درست را وارد کنید.', 'Sila masukkan tetapan pembayaran yang betul.', 'దయచేసి సరైన చెల్లింపు సెట్టింగ్ను ఇన్పుట్ చేయండి.', 'சரியான கட்டண அமைப்பை உள்ளிடுக.', 'કૃપા કરીને યોગ્ય ચુકવણી સેટિંગ ઇનપુટ કરો.', 'Wprowadź poprawne ustawienie płatności.', 'Будь ласка, введіть правильний параметр оплати.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਹੀ ਭੁਗਤਾਨ ਸੈਟਿੰਗ ਇਨਪੁਟ ਕਰੋ.', 'Introduceți setarea de plată corectă.', 'input ကိုမှန်ကန်ငွေပေးချေမှု setting ကိုပါ။', 'Jọwọ ṣe ipinnu eto sisan ti o tọ.', 'Da fatan a shigar da saitin biya daidai.'),
(556, 'in_demo_db_backup', 'In demo database backp is disabled.', 'ডেমো ডেটাবেস ব্যাকআপে বন্ধ করা আছে।', 'En la copia de seguridad de la base de datos demo está desactivado', 'في النسخ الاحتياطي قاعدة البيانات التجريبي معطل.', 'डेमो डेटाबेस बैकअप में अक्षम है', 'ڈیمو ڈیٹا بیس کا بیک اپ غیر فعال ہے.', '在演示数据库中，备份被禁用。', 'デモでは、データベースのバックアップが無効になっています。', 'No backup do banco de dados demo está desativado.', 'В демонстрационной базе данных резервное копирование отключено.', 'Dans la sauvegarde de base de données démo est désactivé.', '데모에서 데이터베이스 백업이 비활성화되었습니다.', 'In der Demo ist die Datenbanksicherung deaktiviert.', 'Nel backup del database demo è disabilitato.', 'ในการสำรองฐานข้อมูลตัวอย่างถูกปิดใช้งาน', 'A demo adatbázis-mentés le van tiltva.', 'In demo-database is back-up uitgeschakeld.', 'In demo database tergum is disabled.', 'Dalam backup database demo dinonaktifkan.', 'Demo veritabanında yedekleme devre dışı bırakıldı.', 'Στην εφεδρική βάση δεδομένων επίδειξης είναι απενεργοποιημένη.', 'در نسخه پشتیبان تهیه نسخه ی نمایشی غیر فعال شده است.', 'Dalam sandaran pangkalan data demo dilumpuhkan.', 'డెమో డేటాబేస్ బ్యాకప్ డిసేబుల్.', 'டெமோ தரவுத்தள காப்பு உள்ள முடக்கப்பட்டுள்ளது.', 'ડેમો ડેટાબેસ બેકઅપ માં અક્ષમ છે.', 'W kopii zapasowej bazy danych demo jest wyłączone.', 'У демо-базі даних резервне копіювання вимкнено.', 'ਡੈਮੋ ਡਾਟਾਬੇਸ ਬੈਕਅੱਪ ਅਯੋਗ ਹੈ.', 'În baza de date demonstrativă, copia de rezervă este dezactivată.', 'သရုပ်ပြဒေတာဘေ့စမှာတော့ backup လုပ်ထားကိုပိတ်ထားသည်။', 'Ni ipamọ afẹyinti ipamọ jẹ alaabo.', 'A cikin dimbin bayanan bayanan yanar gizo an kashe.');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(557, 'this_room_already_allocated', 'This room already allocated at this time.', 'এই রুমে ইতিমধ্যে এই সময়ে বরাদ্দ করা আছে।', 'Esta habitación ya está asignada en este momento.', 'هذه الغرفة المخصصة بالفعل في هذا الوقت.', 'इस कमरे में पहले से ही इस समय आवंटित किया गया है।', 'اس کمرے کو اس وقت پہلے مختص کردیا گیا ہے.', '这个房间已经在这个时候分配了。', 'この部屋はこの時点ですでに割り当てられています。', 'Este quarto já foi alocado neste momento.', 'Эта комната уже выделена в это время.', 'Cette pièce est déjà allouée à ce moment.', '이 방은 이미이 시간에 할당되었습니다.', 'Dieses Zimmer ist zu dieser Zeit bereits vergeben.', 'Questa stanza è già stata assegnata in questo momento.', 'ห้องนี้มีการจัดสรรไว้แล้วในขณะนี้', 'Ez a szoba már kiosztott ebben az időben.', 'Deze kamer is al toegewezen op dit moment.', 'Hic locus iam ante hoc tempus partita imperia.', 'Kamar ini sudah dialokasikan saat ini.', 'Bu oda zaten bu saatte tahsis edilmiş.', 'Αυτό το δωμάτιο έχει ήδη διατεθεί αυτή τη στιγμή.', 'این اتاق در حال حاضر اختصاص داده شده است.', 'Bilik ini sudah diperuntukkan pada masa ini.', 'ఈ గది ఇప్పటికే ఈ సమయంలో కేటాయించబడింది.', 'இந்த அறை ஏற்கனவே இந்த நேரத்தில் ஒதுக்கப்பட்டுள்ளது.', 'આ ખંડ પહેલેથી જ આ સમયે ફાળવવામાં આવ્યો છે.', 'Ten pokój został już przydzielony w tym momencie.', 'Цей номер уже виділений в цей час.', 'ਇਹ ਕਮਰਾ ਪਹਿਲਾਂ ਹੀ ਇਸ ਸਮੇਂ ਨਿਰਧਾਰਤ ਕੀਤਾ ਗਿਆ ਹੈ.', 'Această cameră deja alocată în acest moment.', 'ဒီအခန်းကပြီးသားဤအချိန်တွင်ခွဲဝေ။', 'Yara yii ti ṣetoto ni akoko yii.', 'Wannan dakin da aka riga aka ba shi a wannan lokaci.'),
(558, 'only_student_can_submit', 'Only student can submit assignment.', 'শুধুমাত্র ছাত্র  এসাইনমেন্ট জমা দিতে পারেন।', 'Solo el alumno puede enviar una tarea.', 'يمكن للطالب فقط تقديم المهمة.', 'केवल छात्र असाइनमेंट सबमिट कर सकते हैं', 'صرف طالب علم تفویض جمع کر سکتا ہے.', '只有学生可以提交作业。', '学生だけが課題を提出できます。', 'Somente o aluno pode enviar a atribuição.', 'Только ученик может подать задание.', 'Seul l''étudiant peut soumettre une affectation.', '학생 만 과제를 제출할 수 있습니다.', 'Nur der Student kann eine Aufgabe einreichen.', 'Solo lo studente può presentare un incarico.', 'เฉพาะนักเรียนเท่านั้นที่สามารถส่งงานได้', 'Csak a hallgató küldhet megbízást.', 'Alleen studenten kunnen een opdracht indienen.', 'Tantum submittere potest studiosus carminibus Marcianis.', 'Hanya siswa yang bisa menyerahkan tugas.', 'Sadece öğrenci ödevi gönderebilir.', 'Μόνο ο φοιτητής μπορεί να υποβάλει εργασία.', 'فقط دانش آموز می تواند تسلط را ارسال کند', 'Hanya pelajar sahaja yang boleh menghantar tugasan.', 'మాత్రమే విద్యార్థి అప్పగించిన సమర్పించవచ్చు.', 'மாணவர் மட்டுமே நியமிக்க முடியும்.', 'માત્ર વિદ્યાર્થી સોંપણી સબમિટ કરી શકે છે', 'Tylko uczeń może przesłać zadanie.', 'Тільки студент може подати завдання.', 'ਸਿਰਫ਼ ਵਿਦਿਆਰਥੀ ਹੀ ਕੰਮ ਸੌਂਪ ਸਕਦੇ ਹਨ.', 'Numai elevul poate trimite o sarcină.', 'သာကျောင်းသားတာဝန်ကျရာတင်ပြနိုင်ပါတယ်။', 'Ọmọde nikan le fi iṣẹ ranṣẹ.', 'Makarantar kawai za ta iya aikawa da aiki.'),
(559, 'exam_final_result', 'Exam final result', 'পরীক্ষার চূড়ান্ত ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان حتمی نتیجہ', '考试最终结果', '試験の最終結果', 'Resultado final do exame', 'Окончательный результат экзамена', 'Résultat final de l''examen', '시험 최종 결과', 'Prüfung Endergebnis', 'Esame finale', 'ผลสอบสุดท้าย', 'Vizsga végeredmény', 'Eindresultaat examen', 'Effectus finalis nito', 'Hasil akhir ujian', 'Sınav nihai sonucu', 'Εξέταση τελικού αποτελέσματος', 'نتیجه نهایی آزمون', 'Keputusan akhir peperiksaan', 'తుది ఫలితం పరీక్ష', 'இறுதி முடிவு தேர்வு', 'પરીક્ષાની અંતિમ પરિણામ', 'Egzamin końcowy egzaminu', 'Останній результат іспиту', 'ਇਮਤਿਹਾਨ ਦੇ ਆਖਰੀ ਨਤੀਜੇ', 'Exam final final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ikẹhin ipari', 'Binciken ƙarshe na binciken'),
(560, 'required_field', 'This field is required.', 'ফিল্ড টি  অবশ্যই পূরণ করতে হবে।', 'Este campo es requerido.', 'هذه الخانة مطلوبه.', 'यह फ़ील्ड आवश्यक है.', 'اس کو پر کرنا ضروری ہے.', '这是必填栏。', 'この項目は必須です。', 'Este campo é obrigatório.', 'Это поле обязательно к заполнению.', 'Ce champ est requis.', '이 입력란은 필수 항목입니다.', 'Dieses Feld wird benötigt.', 'Questo campo è obbligatorio.', 'ต้องระบุข้อมูลนี้', 'Ez a mező kötelező.', 'Dit veld is verplicht.', 'Hic ager requiritur.', 'Bagian ini diperlukan.', 'Bu alan gereklidir.', 'Αυτό το πεδίο απαιτείται.', 'این فیلد مورد نیاز است', 'Bidang ini diperlukan.', 'ఈ ఖాళీని తప్పనిసరిగా పూరించవలెను.', 'இந்த புலம் தேவை.', 'આ ક્ષેત્ર જરૂરી છે.', 'To pole jest wymagane.', 'Це поле є обов''язковим.', 'ਇਸ ਫੀਲਡ ਦੀ ਲੋੜ ਹੈ.', 'Acest câmp este obligatoriu.', 'ဤစာကွက်လပ်မှာဖြည့်ရန်လိုအပ်ပါသည်။', 'E ni lati se nkan si aye yi.', 'Wannan fillin ana bukatansa.'),
(561, 'enter_valid_email', 'Please enter a valid email address.', 'একটি ভ্যালিড ইমেইল ঠিকানা লিখুন।', 'Por favor, introduce una dirección de correo electrónico válida.', 'رجاء قم بإدخال بريد الكتروني صحيح.', 'कृपया एक वैध ई - मेल एड्रेस डालें।', 'برائے مہربانی قابل قبول ای میل ایڈریس لکھیں.', '请输入有效的电子邮件地址。', '有効なメールアドレスを入力してください。', 'Por favor insira um endereço de e-mail válido.', 'Пожалуйста, введите действительный адрес электронной почты.', 'S''il vous plaît, mettez une adresse email valide.', '유효한 이메일 주소를 입력하세요.', 'Bitte geben Sie eine gültige E-Mail-Adresse ein.', 'Si prega di inserire un indirizzo email valido.', 'กรุณาใส่อีเมล์ที่ถูกต้อง.', 'Kérjük valós e-mail címet adjon meg!', 'Gelieve een geldig e-mailadres in te geven.', 'Please enter inscriptio electronica valida.', 'Silakan isi alamat email.', 'Geçerli bir e.', 'Παρακαλώ εισάγετε μια έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομείου.', 'لطفا یک آدرس ایمیل معتبر وارد کنید.', 'Sila masukkan alamat emel yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్ చిరునామాను నమోదు చేయండి.', 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்.', 'કૃપા કરી કોઈ માન્ય ઇમેઇલ સરનામું દાખલ કરો.', 'Proszę wpisać aktualny adres e-mail.', 'Будь ласка, введіть дійсну адресу електронної пошти.', 'ਇੱਕ ਜਾਇਜ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ.', 'Te rog introdu o adresa de email valida.', 'ကျေးဇူးပြ။ မှန်ကန်သောအီးမေးလ်လိပ်စာကိုထည့်သွင်းပါ။', 'Jowo fun fun wa ni imeli re to je otito.', 'Don Allah shigar da adireshin i-mel mai inganci.'),
(562, 'enter_valid_url', 'Please enter a valid URL.', 'একটি ভ্যালিড ইউআরএল প্রবেশ করুন।', 'Por favor introduzca un URL válido.', 'أدخل رابط صحيح من فضلك.', 'कृपया एक मान्य यूआरएल दर्ज कीजिए।', 'براہ کرم ایک درست URL درج کریں.', '请输入有效网址。', '有効なURLを入力してください。', 'Por favor, insira um URL válido.', 'Пожалуйста, введите корректный адрес.', 'Veuillez entrer une URL valide', '유효한 URL을 입력 해주세요.', 'Bitte geben Sie eine gültige URL ein.', 'Per favore, inserisci un URL valido.', 'โปรดป้อน URL ที่ถูกต้อง.', 'Kérem, írjon be egy érvényes url-t.', 'Voer een geldige URL in.', 'Please enter validum URL.', 'Masukkan URL yang valid', 'Lütfen geçerli bir adres girin.', 'Εισαγάγετε μια έγκυρη διεύθυνση URL.', 'لطفا یک نشانی وب معتبر وارد کنید.', 'Sila masukkan URL yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే URL ను నమోదు చేయండి.', 'சரியான இணைய முகவரியினை பதிவு செய்யவும்.', 'કૃપા કરી માન્ય URL દાખલ કરો', 'Proszę podać poprawny adres URL.', 'Будь ласка, введіть дійсну URL-адресу.', 'ਇੱਕ ਵੈਧ URL ਦਾਖਲ ਕਰੋ.', 'Introduceți o adresă URL validă.', 'ခိုင်လုံသော URL ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ URL ti o wulo.', 'Da fatan a shigar da adireshin mai amfani.'),
(563, 'enter_valid_date', 'Please enter a valid date.', 'একটি ভ্যালিড তারিখ লিখুন দয়া করে।', 'Por favor introduzca una fecha valida.', 'ارجوك ادخل تاريخ صحيح.', 'कृपया एक मान्य तिथि प्रविष्ट करें।', 'براہ کرم ایک درست تاریخ درج کریں.', '请输入一个有效的日期。', '有効な日付を入力してください。', 'Por favor insira uma data válida.', 'Пожалуйста, введите правильную дату.', 'Veuillez entrer une date valide.', '유효한 날짜를 입력하십시오.', 'Bitte gib ein korrektes Datum an.', 'Per favore, inserisci una data valida.', 'โปรดป้อนวันที่ที่ถูกต้อง', 'Kérjük, adjon meg egy érvényes dátumot.', 'Vul alstublieft een geldige datum in.', 'Please enter validum diem.', 'Harap masukkan tanggal yang valid.', 'Lütfen geçerli bir tarih giriniz.', 'Παρακαλώ εισάγετε μία έγκυρη ημερομηνία.', 'لطفا یک تاریخ معتبر وارد کنید.', 'Sila masukkan tarikh yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే తేదీని నమోదు చేయండి.', 'செல்லுபடியாகும் தேதி உள்ளிடுக.', 'કૃપા કરી માન્ય તારીખ દાખલ કરો.', 'Proszę wprowadź poprawną datę.', 'Будь ласка, введіть дійсну дату.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਤਾਰੀਖ ਦਰਜ ਕਰੋ', 'Vă rugăm să introduceți o dată validă.', 'မှန်ကန်သောရက်စွဲတစ်ခုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ ọjọ ti o wulo.', 'Da fatan a shigar da kwanan wata mai aiki.'),
(564, 'enter_valid_number', 'Please enter a valid number.', 'দয়া করে একটি ভ্যালিড নম্বর লিখুন।', 'Por favor ingrese un número valido.', 'من فضلك أدخل رقما صالحا.', 'कृपया एक सही संख्या डालिये।', 'براہ مہربانی ایک درست نمبر درج کریں.', '请输入一个有效的号码。', '有効な数値を入力してください。', 'por favor insira um número válido.', 'Пожалуйста, введите корректное число.', 'S''il vous plait, entrez un nombre valide.', '올바른 번호를 입력하십시오.', 'Bitte geben Sie eine gültige Nummer ein.', 'Per favore, inserire un numero valido.', 'โปรดป้อนหมายเลขที่ถูกต้อง', 'Kérjük, adjon meg érvényes számot.', 'Voer alstublieft een geldig nummer in.', 'Please enter validum est numerus.', 'Masukkan nomor yang valid', 'Lütfen geçerli bir numara girin.', 'Παρακαλώ εισάγετε έναν έγκυρο αριθμό.', 'لطفا یک شماره تلفن معتبر وارد کنید.', 'Sila masukkan nombor yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే సంఖ్యను నమోదు చేయండి.', 'சரியான எண்ணை உள்ளிடுக.', 'કૃપા કરી કોઈ માન્ય નંબર દાખલ કરો.', 'Proszę wprowadzić poprawny numer.', 'Введіть дійсний номер.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਪ੍ਰਮਾਣਿਕ ਸੰਖਿਆ ਦਰਜ ਕਰੋ.', 'Introduceți un număr valid.', 'ခိုင်လုံသောအရေအတွက်ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ nọmba nọmba kan.', 'Da fatan a shigar da lambar mai aiki.'),
(565, 'enter_only_digit', 'Please enter only digits.', 'অনুগ্রহ করে শুধুমাত্র সংখ্যা প্রবেশ করান।', 'Por favor ingrese solo dígitos.', 'الرجاء إدخال أرقام فقط.', 'कृपया केवल अंक दर्ज करें।', 'صرف ہندسوں درج کریں.', '请只输入数字。', '数字のみ入力して下さい。', 'Digite apenas dígitos.', 'Пожалуйста, вводите только цифры.', 'Merci de n''entrer que des chiffres.', '숫자 만 입력하십시오.', 'Bitte gib nur Ziffern ein.', 'Per favore, inserisci solo cifre.', 'โปรดป้อนตัวเลขเท่านั้น', 'Kérem csak számjegyeket adjon meg.', 'Alleen cijfers invoeren a.u.b.', 'PDF nisi constet.', 'Harap masukkan angka saja.', 'Lütfen sadece rakam giriniz.', 'Παρακαλώ εισάγετε μόνο ψηφία.', 'لطفا فقط رقم را وارد کنید', 'Sila masukkan angka sahaja.', 'దయచేసి అంకెలు మాత్రమే నమోదు చేయండి.', 'இலக்கங்களை மட்டும் உள்ளிடுக.', 'કૃપા કરીને માત્ર અંકો દાખલ કરો', 'Wprowadź tylko cyfry.', 'Будь ласка, введіть лише цифри.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਰਫ ਅੰਕ ਭਰੋ.', 'Te rog introdu doar cifre.', 'သာဂဏန်းရိုက်ထည့်ပေးပါ။', 'Jọwọ tẹ awọn nọmba nikan sii.', 'Da fatan a shigar da lambobi kawai.'),
(566, 'enter_same_value_again', 'Please enter the same value again.', 'আবার একই ভ্যালু লিখুন দয়া করে।', 'Por favor, introduzca el mismo valor de nuevo.', 'من فظلك ادخل نفس القيمة مرة أخرى.', 'कृपया फिर से वही संख्या डालिये।', 'ایک بار پھر ایک ہی قیمت درج کریں.', '请再次填写同等数值。', 'もう一度同じ値を入力してください。', 'Por favor entre com o mesmo valor novamente.', 'Повторите одно и то же значение.', 'Entrez à nouveau la même valeur s''il vous plait.', '다시 동일한 값을 입력하십시오.', 'Bitte geben Sie den gleichen Wert erneut ein.', 'Si prega di inserire di nuovo lo stesso valore.', 'โปรดป้อนค่าเดิมอีกครั้ง', 'Kérem, írja be ugyanazt az értéket újra.', 'Voer dezelfde waarde opnieuw in.', 'PDF simile est.', 'Harap masukkan nilai yang sama lagi.', 'Lütfen aynı değeri tekrar giriniz.', 'Εισαγάγετε ξανά την ίδια τιμή.', 'لطفا مجددا همان مقدار را وارد کنید.', 'Sila masukkan nilai yang sama sekali lagi.', 'దయచేసి మళ్ళీ అదే విలువను నమోదు చేయండి.', 'மறுபடியும் அதே மதிப்பை அழுத்தவும்.', 'કૃપા કરીને ફરીથી સમાન મૂલ્ય દાખલ કરો.', 'Wprowadź ponownie tę samą wartość.', 'Будь ласка, введіть те саме значення знову.', 'ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਉਹੀ ਮੁੱਲ ਦਰਜ ਕਰੋ.', 'Introduceți din nou aceeași valoare.', 'ထပ်တူညီတဲ့တန်ဖိုးကိုထည့်ပေးပါ။', 'Jowo tẹ iye kanna naa lẹẹkansi.', 'Da fatan a sake shigar da wannan darajar.'),
(567, 'pls_fix_this', 'Please fix this field.', 'এইটা ঠিক করুন।', 'Por favor arregla este campo.', 'الرجاء إصلاح هذا الحقل.', 'कृपया यह फ़ील्ड ठीक करें।', 'براہ مہربانی اس فیلڈ کو ٹھیک کریں.', '请修复这一块。', 'このフィールドを直してください。', 'Por favor, corrija este campo.', 'Исправьте это поле.', 'Veuillez corriger ce champ.', '이 항목을 수정하여주십시오.', 'Bitte repariere dieses Feld.', 'Si prega di correggere questo campo.', 'โปรดแก้ไขฟิลด์นี้', 'Kérlek, javítsd ki ezt a mezőt.', 'Corrigeer dit veld.', 'Placere figere ipsa cellula compleatur.', 'Perbaiki bidang ini', 'Bu alanı düzeltin lütfen.', 'Παρακαλώ διορθώστε αυτό το πεδίο.', 'لطفا این فیلد را اصلاح کنید', 'Sila betulkan medan ini.', 'దయచేసి ఈ ఫీల్డ్ను పరిష్కరించండి.', 'தயவுசெய்து இந்த களத்தை சரிசெய்யவும்.', 'કૃપા કરી આ ફીલ્ડને ઠીક કરો.', 'Proszę poprawić to pole.', 'Виправте це поле.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਖੇਤਰ ਨੂੰ ਠੀਕ ਕਰੋ.', 'Vă rugăm să remediați acest câmp.', 'ဒီလယ်ကို fix ပေးပါ။', 'Jọwọ ṣatunkọ aaye yii.', 'Da fatan a gyara wannan filin.'),
(613, 'permission_denied', 'You have no permission to access this page.', 'আপনি এই পৃষ্ঠা অ্যাক্সেস করার অনুমতি নেই।', 'No tienes permiso para acceder a esta página.', 'ليس لديك إذن للدخول إلى هذه الصفحة.', 'आपको इस पृष्ठ को एक्सेस करने की अनुमति नहीं है।', 'آپ کو اس صفحہ تک رسائی حاصل کرنے کی اجازت نہیں ہے.', '您无权访问此页面。', 'このページにアクセスする権限はありません。', 'Você não tem permissão para acessar esta página.', 'У вас нет разрешения на доступ к этой странице.', 'Vous n''êtes pas autorisé à accéder à cette page.', '이 페이지에 액세스 할 수있는 권한이 없습니다.', 'Sie haben keine Berechtigung, auf diese Seite zuzugreifen.', 'Non hai il permesso di accedere a questa pagina.', 'คุณไม่มีสิทธิ์เข้าถึงหน้านี้', 'Nincs engedélye ennek az oldalnak az elérésére.', 'U hebt geen toestemming om deze pagina te openen.', 'Nullas tibi accessere hanc paginam permission.', 'Anda tidak memiliki izin untuk mengakses halaman ini.', 'Bu sayfaya erişmek için herhangi bir iznin yok.', 'Δεν έχετε καμία άδεια πρόσβασης σε αυτήν τη σελίδα.', 'شما اجازه دسترسی به این صفحه ندارید.', 'Anda tidak mempunyai kebenaran untuk mengakses halaman ini.', 'ఈ పేజీని ప్రాప్యత చేయడానికి మీకు అనుమతి లేదు.', 'இந்தப் பக்கத்தை அணுக உங்களுக்கு அனுமதி இல்லை.', 'આ પૃષ્ઠને ઍક્સેસ કરવાની તમારી પાસે કોઈ પરવાનગી નથી', 'Nie masz uprawnień dostępu do tej strony.', 'Ви не маєте дозволу на доступ до цієї сторінки.', 'ਤੁਹਾਨੂੰ ਇਸ ਪੇਜ ਨੂੰ ਐਕਸੈਸ ਕਰਨ ਦੀ ਕੋਈ ਅਨੁਮਤੀ ਨਹੀਂ ਹੈ.', 'Nu aveți permisiunea de a accesa această pagină.', 'သင်ဤစာမကျြနှာကိုဝင်ရောက်ဖို့မခွင့်ပြုချက်ရှိသည်။', 'O ko ni igbanilaaye lati wọle si oju-ewe yii.', 'Ba ku da izini don samun damar wannan shafin.'),
(614, 'invalid_transaction_pls_try_again', 'Invalid transaction please try again.', 'ইনভ্যালিড লেনদেন আবার চেষ্টা করুন।', 'Transacción inválida, inténtalo de nuevo.', 'المعاملة غير صالحة يرجى المحاولة مرة أخرى.', 'अमान्य लेनदेन कृपया फिर से प्रयास करें', 'غلط ٹرانزیکشن براہ کرم دوبارہ کوشش کریں.', '无效的交易请再试一次。', 'トランザクションが無効です。もう一度お試しください。', 'Transação inválida, tente novamente.', 'Недействительные транзакции повторите попытку.', 'Transaction non valide, veuillez réessayer.', '잘못된 거래입니다. 다시 시도하십시오.', 'Ungültige Transaktion. Bitte versuche es erneut.', 'Transazione non valida, riprova.', 'ธุรกรรมไม่ถูกต้องโปรดลองอีกครั้ง', 'Érvénytelen ügylet, próbáld újra.', 'Ongeldige transactie probeer het opnieuw.', 'Aliquam nulla re.', 'Transaksi tidak valid silahkan dicoba lagi.', 'Geçersiz işlem lütfen tekrar deneyin.', 'Μη έγκυρη συναλλαγή δοκιμάστε ξανά.', 'معامله نامعتبر لطفا دوباره امتحان کنید', 'Transaksi tidak sah sila cuba lagi.', 'చెల్లని లావాదేవీ దయచేసి మళ్ళీ ప్రయత్నించండి.', 'தவறான பரிவர்த்தனை மீண்டும் முயற்சிக்கவும்.', 'અમાન્ય વ્યવહાર ફરીથી પ્રયાસ કરો.', 'Nieprawidłowa transakcja, spróbuj ponownie.', 'Недійсна транзакція. Повторіть спробу.', 'ਗਲਤ ਟ੍ਰਾਂਜੈਕਸ਼ਨ ਫਿਰ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Tranzacție nevalidă încercați din nou.', 'မှားနေသောငွေပေးငွေယူထပ်ကြိုးစားကြည့်ပါ။', 'Iṣowo idaniloju ko tọ gbiyanju tun gbiyanju.', 'Kasuwanci mara inganci a sake gwadawa.'),
(615, 'payment_success', 'Payment has been successfully.', 'পেমেন্ট সফলভাবে হয়েছে।', 'El pago ha sido exitoso.', 'تم الدفع بنجاح.', 'भुगतान सफलतापूर्वक किया गया है', 'ادائیگی کامیاب ہوگئی ہے.', '付款已成功。', '支払いは正常に完了しました。', 'O pagamento foi feito com sucesso.', 'Оплата прошла успешно.', 'Le paiement a été effectué avec succès.', '지불이 완료되었습니다.', 'Die Zahlung wurde erfolgreich ausgeführt.', 'Il pagamento è andato a buon fine.', 'การชำระเงินสำเร็จแล้ว', 'A kifizetés sikeresen megtörtént.', 'De betaling is succesvol verlopen.', 'Solucionis fuerit feliciter.', 'Pembayaran sudah berhasil', 'Ödeme başarıyla yapıldı.', 'Η πληρωμή ολοκληρώθηκε με επιτυχία.', 'پرداخت با موفقیت انجام شده است', 'Pembayaran telah berjaya.', 'చెల్లింపు విజయవంతంగా ఉంది.', 'கட்டணம் வெற்றிகரமாக உள்ளது.', 'ચુકવણી સફળતાપૂર્વક કરવામાં આવી છે', 'Płatność została pomyślnie.', 'Оплата була успішною.', 'ਭੁਗਤਾਨ ਸਫਲਤਾਪੂਰਵਕ ਕੀਤਾ ਗਿਆ ਹੈ', 'Plata a fost efectuată cu succes.', 'ငွေပေးချေမှုရမည့်အောင်မြင်စွာဖြစ်ခဲ့သည်။', 'Isanwo ti wa ni ifijišẹ.', 'Biyan bashi ya samu nasarar.'),
(616, 'payment_failed', 'Payment failed. Please try again.', 'পেমেন্ট ব্যর্থ হয়েছে. অনুগ্রহপূর্বক আবার চেষ্টা করুন।', 'Pago fallido. Inténtalo de nuevo.', 'عملية الدفع فشلت. حاول مرة اخرى.', 'भुगतान असफल हुआ। कृपया पुन: प्रयास करें।', 'ادائیگی ناکام ہوگئی. دوبارہ کوشش کریں.', '支付失败。 请再试一次。', '支払いに失敗しました。 もう一度お試しください。', 'Pagamento falhou. Por favor, tente novamente.', 'Платеж не прошел. Пожалуйста, попробуйте еще раз.', 'Paiement échoué. Veuillez réessayer.', '결제 실패. 다시 시도하십시오.', 'Bezahlung fehlgeschlagen. Bitte versuche es erneut.', 'Pagamento fallito. Per favore riprova.', 'การชำระเงินล้มเหลว กรุณาลองอีกครั้ง.', 'Fizetés meghiúsult. Kérlek próbáld újra.', 'Betaling mislukt. Probeer het opnieuw.', 'Payment defecit. Quaero, iterum conare.', 'Pembayaran gagal. Silahkan coba lagi', 'Ödeme başarısız. Lütfen tekrar deneyin.', 'Η πληρωμή απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'پرداخت ناموفق. لطفا دوباره تلاش کنید.', 'Pembayaran gagal. Sila cuba lagi.', 'చెల్లింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'கட்டணம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ચૂકવણી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Płatność nie powiodła się. Proszę spróbuj ponownie.', 'Оплата не виконана. Будь ласка спробуйте ще раз.', 'ਭੁਗਤਾਨ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Plata esuata. Vă rugăm să încercați din nou.', 'ငွေပေးချေမှုရမည့်မအောင်မြင်ခဲ့ပါဘူး။ ထပ်ကြိုးစားပါ။', 'Isanwo ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Baya ya biya. Da fatan a sake gwadawa.'),
(617, 'you_have_remain_character', 'You have remain character/ letter ', 'আপনার অক্ষর বাকি আছে।', 'Has quedado personaje / carta', 'لديك حرف / حرف', 'आप चरित्र / पत्र रह गए हैं', 'آپ کا کردار / خط باقی ہے', '你保持字符/字母', 'あなたは文字/文字のままです', 'Você permaneceu caráter / carta', 'У вас есть символ / письмо', 'Vous avez reste caractère / lettre', '문자 / 문자로 남았습니다.', 'Du hast Charakter / Brief behalten', 'Hai carattere / lettera rimasti', 'คุณยังมีตัวอักษร / ตัวอักษร', 'Ön továbbra is karakter / betű marad', 'Je bent karakter / letter gebleven', 'Vos autem manent ingenii / litterae', 'Anda tetap memiliki karakter / huruf', 'Karakter / mektup kalmışsın', 'Έχετε παραμείνει χαρακτήρα / γράμμα', 'شما شخصیت / نامه را باقی میگذارید', 'Anda mempunyai watak / huruf tetap', 'మీరు అక్షరం / అక్షరం', 'நீங்கள் எழுத்து / கடிதமாகவே இருக்க வேண்டும்', 'તમે અક્ષર / અક્ષર રહેલા છે', 'Pozostałeś postacią / literą', 'Ви залишитеся символом / листом', 'ਤੁਸੀਂ ਅੱਖਰ / ਪੱਤਰ ਰਹੇ ਹੋ', 'Tu rămâi caracter / scrisoare', 'သငျသညျဇာတ်ကောင် / အက္ခရာဆက်လက်တည်ရှိကြပါပြီ', 'O ti wa ni iwa / lẹta', 'Ka kasance hali / wasika'),
(618, 'running_year_instructions', 'You have to set running session year from general setting.', 'আপনাকে সাধারণ সেটিং থেকে চলমান সেশন  সেট করতে হবে।', 'Debe configurar el año de la sesión en ejecución desde la configuración general.', 'لديك لتعيين دورة العام من الإعداد العام.', 'आपको सामान्य सेटिंग से चालू सत्र वर्ष सेट करना होगा।', 'آپ کو سیشن سال چل رہا ہے جنرل ترتیب سے.', '您必须从常规设置中设置运行会话年。', '実行中のセッションの年は一般設定から設定する必要があります。', 'Você deve definir o ano da sessão em execução a partir da configuração geral.', 'Вы должны установить текущий год сеанса из общей настройки.', 'Vous devez définir l''année de la session en cours à partir du paramètre général.', '일반 세션 설정에서 실행 세션 연도를 설정해야합니다.', 'Sie müssen das laufende Jahr aus der allgemeinen Einstellung auswählen.', 'È necessario impostare l''anno della sessione corrente dall''impostazione generale.', 'คุณต้องตั้งค่าปีที่ใช้งานจากการตั้งค่าทั่วไป', 'Be kell állítania a futó évfolyamot az általános beállításból.', 'U moet het lopende zittingsjaar van de algemene instelling instellen.', 'Vos have ut currit ab anno generalis sessioni occasum.', 'Anda harus mengatur running session year dari general setting.', 'Çalışan oturum yılını genel ayardan ayarlamanız gerekir.', 'Πρέπει να ρυθμίσετε το έτος λειτουργίας από τη γενική ρύθμιση.', 'شما باید سال اجرای سال را از تنظیم عمومی تنظیم کنید.', 'Anda perlu menetapkan tahun sesi berjalan dari tetapan umum.', 'మీరు సాధారణ సెట్టింగు నుండి సెషన్ సంవత్సరాన్ని అమర్చాలి.', 'பொது அமைப்பிலிருந்து அமர்வு ஆண்டு இயங்க வேண்டும்.', 'તમારે સામાન્ય સેટિંગથી ચાલુ સત્ર વર્ષ સેટ કરવું પડશે.', 'Musisz ustawić rok sesji na podstawie ustawień ogólnych.', 'Ви повинні встановити поточний рік сеансу за загальним налаштуванням.', 'ਤੁਹਾਨੂੰ ਸਧਾਰਣ ਸੈਟਿੰਗ ਤੋਂ ਚਾਲੂ ਸੈਸ਼ਨ ਵਰਜ਼ਨ ਸੈਟ ਕਰਨਾ ਹੋਵੇਗਾ.', 'Trebuie să setați anul de desfășurare a sesiunii din setarea generală.', 'သငျသညျယေဘုယျ setting ကိုမှ session တစ်နှစ် running တင်ထားရန်ရှိသည်။', 'O ni lati seto ọdun igbasẹ nṣiṣẹ lati ipo gbogbogbo.', 'Dole ne ku saita shekara ta gudu daga saiti na gaba.'),
(619, 'privilege_not_setting', 'The Role Permission for this user not yet set.', 'এই ব্যবহারকারীর জন্য ভূমিকা অনুমতি এখনও সেট করা হয়নি।', 'El permiso de función para este usuario aún no se ha establecido.', 'لم يتم تعيين إذن الدور لهذا المستخدم بعد.', 'इस उपयोगकर्ता के लिए भूमिका अनुमति अभी तक सेट नहीं है', 'اس صارف کیلئے ابھی تک کردار کی اجازت نہیں ہے.', '此用户的角色权限尚未设置。', 'このユーザーのロール権限はまだ設定されていません。', 'A Permissão de Função para este usuário ainda não está configurado.', 'Разрешение роли для этого пользователя еще не установлено.', 'L''autorisation de rôle pour cet utilisateur n''est pas encore définie.', '이 사용자에 대한 역할 권한이 아직 설정되지 않았습니다.', 'Die Rollenberechtigung für diesen Benutzer wurde noch nicht festgelegt.', 'Autorizzazione ruolo per questo utente non ancora impostato.', 'สิทธิ์การใช้งานบทบาทสำหรับผู้ใช้รายนี้ยังไม่ได้ตั้งค่า', 'A szerepkör engedélye erre a felhasználóra még nincs beállítva.', 'De rolmachtiging voor deze gebruiker is nog niet ingesteld.', 'De munere licentiam concedere quod nondum user set.', 'Izin Peran untuk pengguna ini belum ditetapkan.', 'Bu kullanıcı için Role Permission henüz ayarlanmadı.', 'Η άδεια ρόλου για αυτόν το χρήστη δεν έχει οριστεί ακόμα.', 'مجوز نقش برای این کاربر هنوز تعیین نشده است.', 'Kebenaran Peranan untuk pengguna ini belum ditetapkan.', 'ఈ వినియోగదారు కోసం రోల్ అనుమతి ఇంకా సెట్ చేయబడలేదు.', 'இந்த பயனருக்கான ரோல் அனுமதி இன்னும் அமைக்கப்படவில்லை.', 'આ વપરાશકર્તા માટે રોલ પરવાનગી હજુ સુધી સેટ નથી.', 'Uprawnienia roli dla tego użytkownika jeszcze nie zostały ustawione.', 'Рольовий дозвіл для цього користувача ще не встановлено.', 'ਇਸ ਉਪਭੋਗਤਾ ਲਈ ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ ਅਜੇ ਵੀ ਸੈਟ ਨਹੀਂ ਕੀਤੀ ਗਈ.', 'Permisiunea de rol pentru acest utilizator nu a fost încă setată.', 'သေးမသတ်မှတ်ဒီအသုံးပြုသူများအတွက်အခန်းက္ပခွင့်ပြုချက်။', 'Igbese Ilana fun olumulo yii ko sibẹsibẹ ṣeto.', 'Ƙungiyar izinin mai amfani ba tukuna an saita ba.'),
(620, 'add_syllabus_instruction', 'Please add academic year before create syllabus.', 'পাঠ্যসূচী তৈরি করার আগে অনুগ্রহপূর্বক  একাডেমিক বছর অ্যাড করুন।', 'Agregue el año académico antes de crear el plan de estudios.', 'يرجى إضافة العام الدراسي قبل إنشاء المنهج.', 'पाठ्यक्रम बनाने से पहले शैक्षणिक वर्ष जोड़ें।', 'نصاب کو تخلیق کرنے سے پہلے تعلیمی سال شامل کریں.', '请在创建教学大纲之前添加学年。', 'シラバスを作成する前に学年を追加してください。', 'Por favor, adicione ano acadêmico antes de criar programas.', 'Пожалуйста, добавьте учебный год до создания учебного плана.', 'Veuillez ajouter une année académique avant de créer un syllabus.', '교과를 만들기 전에 학년을 추가하십시오.', 'Bitte fügen Sie akademisches Jahr vor dem Erstellen des Lehrplans hinzu.', 'Per favore aggiungi l''anno accademico prima di creare il programma.', 'กรุณาเพิ่มปีการศึกษาก่อนที่จะสร้างหลักสูตร', 'Kérjük, add meg az egyetemi évet a tanterv létrehozása előtt.', 'Voeg academiejaar toe voordat u een syllabus maakt.', 'Anno ante partum aliter digerere velit academic add.', 'Harap tambahkan tahun akademik sebelum membuat silabus.', 'Müfredat oluşturmadan önce lütfen akademik yıl ekleyin.', 'Παρακαλείσθε να προσθέσετε ακαδημαϊκό έτος πριν δημιουργήσετε το αναλυτικό πρόγραμμα.', 'لطفا سال تحصیلی را قبل از ایجاد برنامه درسی اضافه کنید.', 'Sila tambah tahun akademik sebelum membuat sukatan pelajaran.', 'దయచేసి సిలబస్ సృష్టించడానికి ముందు విద్యాసంవత్సరం జోడించండి.', 'பாடத்திட்டத்தை உருவாக்க முன் கல்வி ஆண்டு சேர்க்கவும்.', 'અભ્યાસક્રમ બનાવવા પહેલાં શૈક્ષણિક વર્ષ ઉમેરો.', 'Dodaj rok akademicki przed utworzeniem sylabusa.', 'Будь ласка, додайте навчальний рік, перш ніж створювати навчальний план.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਲੇਬਸ ਬਣਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਅਕਾਦਮਿਕ ਸਾਲ ਜੋੜੋ', 'Vă rugăm să adăugați un an universitar înainte de a crea programa.', 'သင်ရိုးညွှန်းတမ်းဖန်တီးမတိုင်မီပညာသင်နှစ် add ပေးပါ။', 'Jowo fi ọjọ-ẹkọ ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-', 'Da fatan za a kara shekara ta ilimi kafin ƙirƙirar salo.'),
(621, 'academic_year_setting', 'Please setting academic year.', 'একাডেমিক বছর সেটিং করুন।', 'Por favor, ajuste el año académico.', 'يرجى تحديد السنة الدراسية.', 'कृपया शैक्षणिक वर्ष सेट करना', 'برائے مہربانی تعلیمی سال قائم کریں.', '请设置学年。', '学年を設定してください。', 'Por favor, marque o ano lectivo.', 'Укажите учебный год.', 'Veuillez définir l''année académique.', '학년을 정하십시오.', 'Bitte legen Sie das akademische Jahr fest.', 'Si prega di fissare l''anno accademico.', 'โปรดตั้งปีการศึกษา', 'Kérjük, állíts be a tanévre.', 'Gelieve het academiejaar in te stellen.', 'Academici ponere placuit.', 'Tolong atur tahun akademik.', 'Lütfen akademik yılı ayarlayın.', 'Παρακαλώ ορίστε ακαδημαϊκό έτος.', 'لطفا سال تحصیلی را تنظیم کنید.', 'Sila tentukan tahun akademik.', 'దయచేసి విద్యా సంవత్సరాన్ని ఏర్పాటు చేయండి.', 'கல்வி ஆண்டு அமைக்கவும்.', 'શૈક્ષણિક વર્ષ સેટ કરો.', 'Proszę ustawić rok akademicki.', 'Вкажіть навчальний рік.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਕਾਦਮਿਕ ਸਾਲ ਸੈੱਟ ਕਰੋ.', 'Vă rugăm să setați anul universitar.', 'ပညာသင်နှစ် setting ပါ။', 'Jọwọ ṣe eto eto ẹkọ.', 'Don Allah a kafa shekara ta ilimi.'),
(622, 'add_routine_instruction', 'Must be good combination (between room, time, teacher, day & subject) for routine.', 'রুটিনের জন্য ভালো সমন্বয় (রুম, সময়, শিক্ষক, দিন এবং বিষয় মধ্যে) হতে হবে।', 'Debe ser una buena combinación (entre la habitación, el tiempo, el maestro, el día y el tema) para la rutina.', 'يجب أن تكون تركيبة جيدة (بين الغرفة والوقت والمعلم واليوم والموضوع) للروتين.', 'दिनचर्या के लिए अच्छे संयोजन (कमरे, समय, शिक्षक, दिन और विषय के बीच) होना चाहिए।', 'معمول کے لئے اچھا مجموعہ (کمرے، وقت، استاد، دن اور موضوع کے درمیان) ہونا ضروری ہے.', '必须是常规的良好组合（房间，时间，老师，日期和主题）。', 'ルーチンのためには、（部屋、時間、教師、日、テーマの間の）良い組み合わせでなければなりません。', 'Deve ser uma boa combinação (entre sala, tempo, professor, dia e assunto) para a rotina.', 'Должна быть хорошая комбинация (между комнатой, временем, учителем, днем и субъектом) для рутины.', 'Doit être une bonne combinaison (entre la pièce, l''heure, l''enseignant, le jour et le sujet) pour la routine.', '평소에는 (방, 시간, 선생님, 낮 과목 사이에) 좋은 조합이어야합니다.', 'Muss eine gute Kombination sein (zwischen Raum, Zeit, Lehrer, Tag und Thema) für die Routine.', 'Deve essere una buona combinazione (tra stanza, orario, insegnante, giorno e materia) per la routine.', 'ต้องเป็นชุดที่ดี (ระหว่างห้องเวลาครูวันและเรื่อง) เป็นประจำ', 'Jó kombinációnak kell lennie (helyiség, idő, tanár, nap és téma között) a rutinhoz.', 'Moet een goede combinatie zijn (tussen kamer, tijd, docent, dag en onderwerp) voor routine.', 'Bonum est combination (inter locus, tempus, magister, & re die), pro exercitatione.', 'Harus kombinasi yang baik (antara ruang, waktu, guru, hari & subjek) untuk rutinitas.', 'Rutin için iyi bir kombinasyon (oda, zaman, öğretmen, gün ve konu arasında) olmalı.', 'Πρέπει να είναι καλός συνδυασμός (μεταξύ δωματίου, χρόνου, καθηγητή, μέρα & θέμα) για ρουτίνα.', 'ترکیب مناسب (بین اتاق، زمان، معلم، روز و موضوع) باید به صورت منظم باشد.', 'Harus menjadi kombinasi yang baik (antara bilik, masa, guru, hari & mata pelajaran) untuk rutin.', 'రొటీన్ కోసం మంచి కలయిక (గది, సమయం, గురువు, రోజు & విషయం మధ్య) ఉండాలి.', 'வழக்கமான கலவையாக இருக்க வேண்டும் (அறைக்கு, நேரம், ஆசிரியர், நாள் & பொருள்).', 'નિત્યક્રમ માટે સારા સંયોજન (ખંડ, સમય, શિક્ષક, દિવસ અને વિષય વચ્ચે) હોવો જોઈએ.', 'Musi to być dobra kombinacja (między pokojem, czasem, nauczycielem, dniem i tematem) dla rutyny.', 'Повинно бути гарною комбінацією (між кімнатою, часом, вчителем, днем та предметом) для звичайної роботи.', 'ਰੁਟੀਨ ਲਈ ਵਧੀਆ ਮਿਸ਼ਰਨ ਹੋਣਾ (ਕਮਰੇ, ਸਮੇਂ, ਅਧਿਆਪਕ, ਦਿਨ ਅਤੇ ਵਿਸ਼ੇ ਵਿਚਕਾਰ).', 'Trebuie să fie o combinație bună (între cameră, timp, profesor, zi și subiect) pentru rutină.', 'လုပ်ရိုးလုပ်စဉ်အဘို့ (အခန်းတစ်ခန်းအကြား, အချိန်, ဆရာ, နေ့ & ဘာသာရပ်) ကောင်းသောပေါင်းစပ်ဖြစ်ရမည်။', 'Gbọdọ jẹ apapo ti o dara (laarin yara, akoko, olukọ, ọjọ & akori) fun iṣiro.', 'Dole ne ya kasance haɗin hade (tsakanin ɗaki, lokaci, malami, rana da batun) don na yau da kullum.'),
(623, 'exam_attendance_instruction', 'Please create exam schedule for this Exam, Class, Section & Subject.', 'এই পরীক্ষা, ক্লাস, সেকশন ও বিষয়ের জন্য পরীক্ষার সময়সূচী তৈরি করুন।', 'Por favor, cree un cronograma de exámenes para este examen, clase, sección y tema.', 'يرجى إنشاء جدول الامتحانات لهذا الامتحان، فئة، قسم والموضوع.', 'कृपया इस परीक्षा, कक्षा, धारा और विषय के लिए परीक्षा कार्यक्रम बनाएं।', 'برائے مہربانی اس امتحان، کلاس، سیکشن اور موضوع کیلئے امتحان شیڈول بنائیں.', '请为此考试，班级，科目和科目创建考试时间表。', 'この試験、クラス、セクション＆サブジェクトの試験スケジュールを作成してください。', 'Crie um cronograma de exame para este Exame, Classe, Seção e Assunto.', 'Создайте расписание экзаменов для этого экзамена, класса, раздела и темы.', 'Veuillez créer un horaire d''examen pour cet examen, classe, section et sujet.', '이 시험, 클래스, 섹션 및 제목에 대한 시험 일정을 작성하십시오.', 'Bitte erstellen Sie einen Prüfungsplan für diese Prüfung, Klasse, Abschnitt und Thema.', 'Si prega di creare un programma d''esame per questo esame, classe, sezione e argomento.', 'โปรดสร้างกำหนดการสอบสำหรับการสอบวิชา Class, Section & Subject', 'Kérjük, hozzon létre vizsgaütemezést ehhez a vizsgahoz, osztályhoz, szekcióhoz és tárgyhoz.', 'Maak een examenrooster voor dit examen, de cursus, sectie en onderwerp.', 'Placere creare nito schedule hoc IV: I classis, & Art subiectum.', 'Tolong buat jadwal ujian untuk Ujian, Kelas, Seksi & Subjek ini.', 'Lütfen bu Sınav, Ders, Bölüm ve Konunun sınav takvimini oluşturun.', 'Δημιουργήστε το πρόγραμμα εξετάσεων για αυτήν την εξέταση, κλάση, ενότητα & θέμα.', 'لطفا برنامه آزمون برای این آزمون، کلاس، بخش و موضوع ایجاد کنید.', 'Sila buat jadual peperiksaan untuk Peperiksaan, Kelas, Bahagian & Subjek ini.', 'ఈ పరీక్ష, తరగతి, విభాగం & విషయం కోసం పరీక్ష షెడ్యూల్ సృష్టించండి.', 'இந்தப் பரீட்சை, வகுப்பு, பிரிவு மற்றும் பாடநெறிக்கான பரீட்சை அட்டவணையை உருவாக்கவும்.', 'આ પરીક્ષા, વર્ગ, વિભાગ અને વિષય માટે પરીક્ષા શેડ્યૂલ બનાવો.', 'Utwórz harmonogram egzaminów dla tego egzaminu, klasy, sekcji i przedmiotu.', 'Будь ласка, створіть графік іспитів для цього іспиту, класу, розділу та теми.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ, ਭਾਗ ਅਤੇ ਵਿਸ਼ੇ ਦੇ ਲਈ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਬਣਾਓ.', 'Vă rugăm să creați un program de examen pentru acest examen, clasă, secțiune și subiect.', ', အတန်းအစား, ပုဒ်မ & အကြောင်းအရာကဒီစာမေးပွဲအဘို့အစာမေးပွဲအချိန်ဇယားကိုဖန်တီးပေးပါ။', 'Jowo ṣẹda iṣeto ayẹwo fun Akọwo yii, Kilasi, Abala & Koko.', 'Don Allah a halicci jimillar jarrabawar wannan jarrabawar, Class, Sashe & Sashe.'),
(624, 'exam_mark_instruction', 'Please ensure Exam Schedule and Exam Attendance before Exam Mark Entry.', 'পরীক্ষা মার্ক এণ্ট্রি আগে পরীক্ষার সময়সূচী এবং পরীক্ষা উপস্থিতি নিশ্চিত করুন।', 'Por favor asegúrese de Horario de Examen y Asistencia al Examen antes de la Entrada de la Marca de Examen.', 'يرجى التأكد من جدول الامتحانات وحضور الامتحان قبل دخول علامة الامتحان.', 'परीक्षा मार्क एंट्री से पहले परीक्षा अनुसूची और परीक्षा उपस्थिति सुनिश्चित करें।', 'امتحان مارک انٹری سے پہلے امتحان شیڈول اور امتحان حاضری کو یقینی بنائیں.', '入学考试前，请确保考试时间表和考试出勤。', '試験のマーク入力の前に試験スケジュールと試験出席を確認してください。', 'Por favor, assegure o horário de exame e a participação no exame antes da entrada na marca do exame.', 'Пожалуйста, убедитесь, что экзаменационные экзамены и экзамен посещаемости до сдачи экзамена Марк.', 'Veuillez vous assurer de respecter le calendrier des examens et la participation aux examens avant l''entrée à l''examen.', '시험 마크 입력 전에 시험 일정과 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass der Prüfungsplan und die Anwesenheit der Prüfung vor der Eintragung der Prüfungsnote eingehalten werden.', 'Si prega di assicurare la pianificazione degli esami e la frequenza degli esami prima dell''iscrizione.', 'โปรดตรวจสอบตารางการสอบและการเข้าร่วมการสอบก่อนการสอบของ Mark Entry', 'Kérjük, győződjön meg arról, hogy az Exam Mark Entry és Exam Attendance Exam Mark Entry előtt van.', 'Zorg ervoor dat het examenrooster en het examen aanwezig zijn vóór de inzending van het examen.', 'Test Morbi rhoncus velit, ut et IV ante Attendance Mark Test Entry.', 'Harap pastikan Jadwal Ujian dan Ujian Kehadiran sebelum Entri Tanda Ujian.', 'Sınav işareti girmeden önce lütfen Sınav Takvimi ve Sınav Ekibinden emin olunuz.', 'Βεβαιωθείτε ότι έχετε προγραμματίσει τις εξετάσεις και την εξέταση πριν την εγγραφή.', 'لطفا قبل از امتحان علامت گذاری به عنوان خوانده شده تست برنامه آزمون و حضور در آزمون را تضمین کنید.', 'Sila pastikan Jadual Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Peperiksaan.', 'పరీక్షా పరీక్ష షెడ్యూల్ మరియు పరీక్షా హాజరు నిర్ధారించడానికి దయచేసి మార్క్ ఎంట్రీ పరీక్ష.', 'பரீட்சைக்கு முன் தேர்வுப் பரீட்சை மற்றும் பரீட்சை பெறுதல் ஆகியவற்றை உறுதிப்படுத்துக.', 'પરીક્ષા માર્ક એન્ટ્રી પહેલાં પરીક્ષાની સૂચિ અને પરીક્ષા હાજરી નક્કી કરો.', 'Należy upewnić się, że harmonogram egzaminów i udział w egzaminach poprzedzą wejście do egzaminu.', 'Будь ласка, вкажіть час іспиту і відвідуваність іспиту перед початком вступки до іспиту.', 'ਐਜੂਕੇਸ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că ați verificat programul de examen și examenul înainte de înscrierea în examen.', 'စာမေးပွဲမာကု Entry မတိုင်မီစာမေးပွဲအချိန်ဇယားနှင့်စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Akoko Idaduro ati Akokọ Ibẹwo ṣaaju titẹ Akọsilẹ Akọsilẹ.', 'Da fatan a tabbatar da Gwargwadon Binciken da Jarraba Tambaya kafin jarrabawar Mark Mark.'),
(625, 'mark_sheet_instruction', 'Please ensure Exam Attendance and Exam Mark to find Mark Sheet.', 'মার্ক শিট খুঁজে পেতে পরীক্ষার এ্যাটেনডেন্স এবং পরীক্ষা মার্ক নিশ্চিত করুন।', 'Asegúrate de que la Asistencia al examen y la Marca del examen encuentren la Hoja de calificaciones.', 'يرجى التأكد من امتحان الحضور وامتحان علامة لإيجاد علامة ورقة.', 'मार्क शीट को खोजने के लिए परीक्षा उपस्थिति और परीक्षा अंक को सुनिश्चित करें', 'براہ کرم مارک شیٹ کو تلاش کرنے کے لئے امتحان حاضری اور امتحان مارک کو یقینی بنائیں.', '请确保考试出席和考试标志找到标记表。', 'マークシートを見つけるには、試験出席と試験マークを確認してください。', 'Certifique-se da presença do exame e da marca do exame para encontrar a folha de marca.', 'Пожалуйста, убедитесь, что экзамен посещаемости и экзамен Марк, чтобы найти Mark Sheet.', 'Veuillez vous assurer de la présence à l''examen et de la note d''examen pour trouver la feuille de notes.', '마크 시트를 찾으려면 시험 출석과 시험 마크를 확인하십시오.', 'Bitte stellen Sie sicher, dass die Prüfungsteilnahme und die Prüfungsnote Mark-Sheet finden.', 'Si prega di assicurare la partecipazione agli esami e il marchio dell''esame per trovare il foglio dei voti.', 'โปรดตรวจสอบว่ามีผู้เข้าสอบและเครื่องหมายสอบเพื่อหา Mark Sheet', 'Kérjük, hogy az Exam Attendance és a Exam Mark-ot találja meg a Mark Sheet-et.', 'Zorg ervoor dat u een examenformulier en een examencertificaat aantreft om het beoordelingsformulier te vinden.', 'Placere operam ad inveniendum Mark Mark Chapter OMNIBUS June IV Sheet.', 'Harap pastikan Ujian Kehadiran dan Tanda Ujian untuk menemukan Lembar Tandai.', 'Marka Belgesi''ni bulmak için lütfen Sınav Devamını ve Sınav İşaretini sağlayın.', 'Βεβαιωθείτε ότι έχετε παρακολουθήσει την εξέταση και εξετάστε το για να βρείτε το φύλλο σημείωσης.', 'لطفا از بازدید کننده امتحان و علامت آزمون اطمینان حاصل کنید تا علامت ورق را پیدا کنید.', 'Sila pastikan Kehadiran Peperiksaan dan Ujian Peperiksaan untuk mencari Mark Sheet.', 'మార్క్ షీట్ను కనుగొనడానికి పరీక్షా హాజరు మరియు పరీక్షా మార్క్ ను నిర్ధారించుకోండి.', 'மார்க் தாள் கண்டுபிடிக்க தேர்ச்சி மற்றும் தேர்வு மார்க் உறுதி செய்யவும்.', 'માર્ક શીટ શોધવા માટે પરીક્ષાની હાજરી અને પરીક્ષા માર્ક કરો.', 'Prosimy o upewnienie się, że obecność na egzaminie i znak egzaminu jest zaznaczona.', 'Будь ласка, впевніться, що відвідувачі іспитів і екзаменаційні квитки знайдете листівки.', 'ਕਿਰਪਾ ਕਰਕੇ ਮਾਰਕ ਸ਼ੀਟ ਨੂੰ ਲੱਭਣ ਲਈ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਅਤੇ ਪ੍ਰੀਖਿਆ ਪੱਤਰ ਨੂੰ ਯਕੀਨੀ ਬਣਾਓ.', 'Asigurați-vă că ați participat la examen și la examen pentru a găsi o coală Mark.', 'မာကုစာရွက်ရှာတွေ့မှစာမေးပွဲတက်ရောက်ခြင်းနှင့်စာမေးပွဲမာကုသေချာပါစေ။', 'Jowo rii daju pe idaduro Ijadii ati Ṣayẹwo Marku lati wa Mark Sheet.', 'Da fatan a tabbatar da Hannun Binciken da Takaddun Mark don neman Mark Sheet.'),
(626, 'exam_result_instruction', 'Please ensure Exam Mark and Exam Attendance before Final Mark Entry.', 'চূড়ান্ত মার্ক এণ্ট্রি আগে পরীক্ষা মার্ক এবং পরীক্ষার উপস্থিতি নিশ্চিত করুন।', 'Por favor, asegúrese de la marca de examen y la asistencia al examen antes de la entrada de la marca final.', 'يرجى التأكد من امتحان علامة وامتحان الحضور قبل علامة النهائي الدخول.', 'अंतिम मार्क प्रविष्टि से पहले परीक्षा मार्क और परीक्षा उपस्थिति सुनिश्चित करें', 'فائن مارک انٹری سے پہلے امتحان کے نشان اور امتحان کی حاضری یقینی بنائیں.', '请在最终标记输入前确保考试标志和考试出勤。', '最終マーク記入前に試験マークと試験出席を確認してください。', 'Certifique-se de Exame da marca e da presença do exame antes da entrada na marca final.', 'Пожалуйста, убедитесь, что экзамен и участие в экзамене перед окончательной записью.', 'S''il vous plaît assurez-vous d''examen et de présence à l''examen avant l''entrée de la note finale.', '최종 점수 입력 전에 시험 점수와 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass Sie die Prüfung und die Teilnahme an der Prüfung vor der endgültigen Noteneingabe erhalten.', 'Si prega di assicurare la certificazione degli esami e la partecipazione agli esami prima della registrazione del voto finale.', 'โปรดตรวจสอบให้แน่ใจว่ามีผู้เข้าร่วมการสอบและการสอบเข้าร่วมการแข่งขันก่อนเข้าร่วมการแข่งขัน Final Mark Entry', 'Kérjük, győződjön meg az Exam Mark és Exam Attendance előtt a végső belépési bejegyzést.', 'Zorg ervoor dat het examen en het examen aanwezig zijn vóór de definitieve inschrijving.', 'Mark quaeso ensure nito et Finalis nito apud Attendance Mark Entry.', 'Harap pastikan Tanda Ujian dan Ujian Kehadiran sebelum Entri Mark Akhir.', 'Nihai İşaret Girişinden önce lütfen Sınav İmzası ve Sınav Ekibinden emin olun.', 'Παρακαλείσθε να βεβαιωθείτε για την εξέταση και την εξέταση πριν την τελική εγγραφή.', 'لطفا قبل از ورود به نشریه نهایی علامت گذاری آزمون و حضور آزمون را تضمین کنید.', 'Sila pastikan Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Akhir.', 'ఫైనల్ మార్క్ ఎంట్రీకి ముందు పరీక్ష మార్క్ మరియు పరీక్షా హాజరును నిర్ధారించుకోండి.', 'இறுதியாண்டு மார்க் நுழைவுமுறையில் தேர்வுப் பரீட்சை மற்றும் தேர்வுப் பணிகளை உறுதி செய்யுங்கள்.', 'અંતિમ માર્ક એન્ટ્રી પહેલાં પરીક્ષા માર્ક અને પરીક્ષાની હાજરી નિશ્ચિત કરો.', 'Prosimy o upewnienie się, że Egzamin i Egzaminacja Egzaminu odbywają się przed Ostatecznym Wpisem.', 'Ознайомтеся з учасниками іспитів та учасниками іспитів перед початком вступного запису.', 'ਕਿਰਪਾ ਕਰਕੇ ਅੰਤਮ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că examinați examenul și examenul înainte de înscrierea în marcajul final.', 'နောက်ဆုံးမာကု Entry မတိုင်မီစာမေးပွဲမာကုနဲ့စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Atilẹkọ Akọsilẹ ati isinwo Iwoye ṣaaju Ṣiṣe Akọsilẹ Titẹ.', 'Da fatan a tabbatar da Takaddun Mark da Takaddama na Aiki kafin shigarwa na karshe.'),
(627, 'promotion_instruction_1', 'Please choose carefully Running Session & Promote Session.', 'দয়া করে সাবধানে চলমান সেশন  এবং প্রমোট সেশন নির্বাচন করুন।', 'Elija cuidadosamente Ejecutar sesión y promover sesión.', 'الرجاء اختيار بعناية تشغيل جلسة وتعزيز الدورة.', 'कृपया सावधानी से चल रहे सत्र और सत्र को बढ़ावा दें चुनें।', 'براہ کرم رننگ سیشن اور سیشن کو فروغ دینے کے لۓ منتخب کریں.', '请谨慎选择运行会议和推广会议。', '慎重に実行セッションとプロモートセッションを選択してください。', 'Por favor, escolha cuidadosamente a Sessão de Sessão e Promoção.', 'Пожалуйста, тщательно выберите «Запуск сеанса» и «Содействие».', 'S''il vous plaît choisir soigneusement session en cours et promouvoir la session.', '신중하게 세션 및 프로모션 세션을 선택하십시오.', 'Bitte wählen Sie sorgfältig ', 'Si prega di scegliere attentamente Running Session & Promoting Session.', 'เลือกเซสชันและเซสชันส่งเสริมการขายอย่างรอบคอบ', 'Kérjük, gondosan válassza a Futtatás és a kampány előmozdítását.', 'Kies zorgvuldig Sessie uitvoeren en sessie promoten.', 'Placere eligere diligenter & Thronus Sessio Promovere Sessio.', 'Harap pilih Session & Promote Session dengan hati-hati.', 'Lütfen dikkatle Çalışmayı Seçin ve Oturumu Tanıtın.', 'Επιλέξτε προσεκτικά την εκτέλεση της συνόδου και την προώθηση της συνόδου.', 'لطفا با دقت در حال اجرا Session & Promote Session را انتخاب کنید.', 'Sila pilih Sesi Berjalan & Sesi Promosi dengan hati-hati.', 'దయచేసి సెషన్ రన్నింగ్ & ప్రచారం సెషన్ను జాగ్రత్తగా ఎంచుకోండి.', 'அமர்வு இயக்குதல் மற்றும் அமர்வு ஊக்குவிக்க கவனமாகத் தேர்ந்தெடுங்கள்.', 'કૃપા કરીને કાળજીપૂર્વક ચાલી રહેલ સત્ર અને પ્રમોશન સત્ર પસંદ કરો.', 'Proszę wybrać ostrożnie Running Session & Promote Session.', 'Будь ласка, обережно вибирайте запуск сеансу та просуньте сеанс.', 'ਕਿਰਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ ਨੂੰ ਚੁਣੋ ਅਤੇ ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ.', 'Alegeți cu atenție Rularea sesiunii și promovarea sesiunii.', 'တွေ့ဆုံဆွေးနွေးပွဲ & တွေ့ဆုံဆွေးနွေးပွဲမြှင့်တင်ကို run ဂရုတစိုက်ရွေးချယ်ပါ။', 'Jowo yan Ṣeto Nilẹ Ikẹkọ ati Igbimọ Ikẹkọ.', 'Da fatan za a zaɓa a zahiri a Gudun Zama da Tsarin Zama.'),
(628, 'promotion_instruction_2', 'Please choose carefully Current Class & Promote to Class.', 'দয়া করে সাবধানে বর্তমান ক্লাস  এবং প্রমোট ক্লাস নির্বাচন করুন।', 'Por favor, elija con cuidado la Clase actual y Promocione a la clase.', 'يرجى اختيار بعناية الفئة الحالية والترقية إلى فئة.', 'कृपया ध्यान दें वर्तमान कक्षा और श्रेणी में प्रचार करें।', 'براہ کرم احتیاط سے موجودہ کلاس کا انتخاب کریں اور کلاس میں فروغ دیں.', '请仔细选择当前课程并提升到课堂。', '慎重に選択してください現在のクラスとクラスへの昇格', 'Por favor, escolha cuidadosamente a classe atual e promova a classe.', 'Пожалуйста, выберите внимательно Текущий класс и продвигайте класс.', 'S''il vous plaît choisir soigneusement classe actuelle et promouvoir à la classe.', '주의 깊게 선택하십시오 Current Class & Class to Promote.', 'Bitte wählen Sie sorgfältig Aktuelle Klasse und Promote to Class.', 'Si prega di scegliere attentamente Classe corrente e promozione in classe.', 'โปรดเลือก Class ปัจจุบันและโปรโมต Class', 'Kérem, gondosan válassza az Aktuális osztály és az előadás osztályba.', 'Gelieve zorgvuldig te kiezen Huidige klasse en promotie naar klas.', 'Placere eligere diligenter Current Class Promovere in Ps.', 'Silakan pilih kelas yang sekarang dengan hati-hati & promosikan ke kelas.', 'Lütfen Geçerli Sınıfı Seçin ve Sınıfı Tanıtın.', 'Επιλέξτε προσεκτικά την τρέχουσα κλάση και την προώθηση στην κλάση.', 'لطفا دقت کلاس فعلی را ارتقا دهید و کلاس را ارتقا دهید.', 'Sila pilih Kelas Semasa & Menggalakkan Kelas dengan berhati-hati.', 'దయచేసి క్లాస్కు ప్రస్తుత క్లాస్ & ప్రమోట్ను జాగ్రత్తగా ఎంచుకోండి.', 'தற்போதைய வகுப்பு மற்றும் வகுப்புக்கு ஊக்குவிக்கவும்.', 'કૃપા કરી કાળજીપૂર્વક વર્તમાન વર્ગ પસંદ કરો અને વર્ગમાં પ્રમોટ કરો.', 'Wybierz ostrożnie Obecna klasa i promuj do klasy.', 'Будь ласка, обережно вибирайте поточний клас та рекламуйте до класу.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਵਰਤਮਾਨ ਕਲਾਸ ਅਤੇ ਪ੍ਰੋਮੋਟ ਤੋਂ ਕਲਾਸ ਚੁਣੋ.', 'Alegeți cu atenție Clasa curentă și promovați în clasă.', 'လက်ရှိအတန်းအစားဂရုတစိုက်ကိုရှေးခယျြ & Class ကိုမှမြှင့်တင်ပါ။', 'Jọwọ yan abojuto Kilasi lọwọlọwọ & Igbelaruge si Kilasi.', 'Da fatan za a zaɓa a hankali A halin yanzu Class & Yi Nasara zuwa Class.'),
(629, 'promotion_instruction_3', 'Please complete the process of Exam, Exam Schedule, Exam Attendance, Exam Mark & Final Result.', 'অনুগ্রহপূর্বক পরীক্ষার প্রক্রিয়া, পরীক্ষার সময়সূচী, পরীক্ষার উপস্থিতি, পরীক্ষার চিহ্ন এবং চূড়ান্ত ফলাফল সম্পন্ন করুন।', 'Complete el proceso de Examen, Programa de examen, Asistencia de examen, Marca de examen y Resultado final.', 'يرجى إكمال عملية الامتحان، جدول الامتحانات، امتحان الحضور، علامة الامتحان والنتيجة النهائية.', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم امتحان، امتحان شیڈول، امتحان حاضری، امتحان مارک اور حتمی نتائج کا عمل مکمل کریں.', '请完成考试，考试时间表，考试考勤，考试标志和最终结果的过程。', '試験、試験のスケジュール、試験の出席、試験のマークと最終結果のプロセスを完了してください。', 'Por favor, complete o processo de exame, horário de exames, atendimento ao exame, marca de exame e resultado final.', 'Завершите процесс экзамена, экзаменационного экзамена, экзаменационного экзамена, экзамена и итогового результата.', 'Veuillez compléter le processus d''examen, le programme d''examen, la présence aux examens, la note d''examen et le résultat final.', '시험, 시험 일정, 시험 참석, 시험 점수 및 최종 결과의 과정을 완료하십시오.', 'Bitte führen Sie den Prozess der Prüfung, des Prüfungsplans, der Prüfungsbesuch, der Prüfungsnote und des Abschlussergebnisses durch.', 'Si prega di completare il processo di esame, pianificazione dell''esame, partecipazione agli esami, voto dell''esame e risultato finale.', 'กรุณากรอกแบบฟอร์มการสอบ, กำหนดการสอบ, เข้าร่วมการสอบ, เครื่องหมายการสอบและผลการทดสอบขั้นสุดท้าย', 'Kérjük, töltse ki a vizsga, az érettségi vizsga, az érettségi, a vizsgajegy és a végeredmény folyamatát.', 'Voltooi het proces van examen, examenroosters, examen, examen en eindresultaat.', 'Placere perficere processus MACROCYTOSIS, Exam Schedule, OMNIBUS June IV: Mark Chapter & exitu rerum.', 'Selesaikan proses Ujian, Jadwal Ujian, Ujian Kehadiran, Tanda Ujian & Hasil Akhir.', 'Lütfen Sınav, Sınav Takvimi, Sınav Katılımı, Sınav Sonucu ve Final Sonuç sürecini tamamlayın.', 'Παρακαλούμε συμπληρώστε τη διαδικασία της εξέτασης, του προγράμματος εξετάσεων, της συμμετοχής στις εξετάσεις, του εξεταστικού σημειώματος και του τελικού αποτελέσματος.', 'لطفا روند امتحان، برنامه امتحان، حضور امتحان، معاینه آزمون و نتیجه نهایی را تکمیل کنید.', 'Sila lengkapkan proses Peperiksaan, Jadual Peperiksaan, Kehadiran Peperiksaan, Peperiksaan Ujian & Keputusan Akhir.', 'పరీక్షా ప్రక్రియ పూర్తి చేయండి, పరీక్షా షెడ్యూల్, పరీక్షా హాజరు, పరీక్ష మార్క్ & ఫైనల్ ఫలితం.', 'பரீட்சை செயல்முறை, தேர்வு அட்டவணை, தேர்வு கலந்துரையாடல், தேர்வு மார்க் & இறுதி முடிவு முடிக்க.', 'પરીક્ષા, પરીક્ષા શેડ્યૂલ, પરીક્ષા હાજરી, પરીક્ષા માર્ક અને અંતિમ પરિણામની પ્રક્રિયા પૂર્ણ કરો.', 'Prosimy o wypełnienie procesu egzaminu, egzaminu, egzaminu, egzaminu i końcowego wyniku.', 'Будь ласка, заповніть процедуру іспиту, графіку іспиту, відвідуваність іспиту, оцінку іспиту та остаточний результат.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ, ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ, ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ, ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਅੰਤਿਮ ਨਤੀਜੇ ਦੀ ਪ੍ਰਕਿਰਿਆ ਪੂਰੀ ਕਰੋ.', 'Completați procesul de examen, program de examen, examen, examen și rezultat final.', 'စာမေးပွဲ, စာမေးပွဲအချိန်ဇယား, စာမေးပွဲတက်ရောက်, စာမေးပွဲ, Mark & Final ရလဒ်များ၏လုပ်ငန်းစဉ်ကိုအပြီးသတ်ပေးပါ။', 'Jọwọ pari awọn ilana ti kẹhìn, Akokọwo Itanwo, Aṣọwo Iwoye, Aṣayẹwo ayẹwo ati Ipari ikẹhin.', 'Don Allah a kammala aikin nazarin, Nazarin Jirgin, Jirgin Tambaya, Alamar Duba & Sakamako na ƙarshe.');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(630, 'promotion_instruction_4', 'Please double check all Students Total Marks, Obtain Mark, Average Grade Point & Next Class Roll No.', 'দয়া করে সকল শিক্ষার্থীর মোট নম্বর, প্রাপ্ত নম্বর, গড় গ্রেড পয়েন্ট এবং পরবর্তী শ্রেণী রোল নম্বর চেক করুন।', 'Verifique por favor todas las marcas totales de estudiantes, obtenga la marca, el promedio de calificaciones y la siguiente clase.', 'يرجى التحقق مرة أخرى من جميع الطلاب مجموع العلامات، والحصول على علامة، متوسط درجة نقطة و التالي فئة لفة رقم', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم تمام طالب علموں کو کل مارکس چیک کریں، مارک حاصل کریں، اوسط گریڈ پوائنٹ اور اگلے کلاس رول نمبر', '请仔细检查所有学生的总分，获得分数，平均分和下一班的卷号', '生徒の合計標章、標章の取得、平均等級点および次のクラスのロール番号を再度確認してください', 'Por favor, verifique novamente todas as Marcas Total de Estudantes, Obter Marca, Ponto Médico e Próxima Classe Roll No.', 'Пожалуйста, дважды проверьте все учащиеся, общее количество баллов, получите оценку, среднюю оценку и следующий класс.', 'Veuillez vérifier toutes les notes totales des élèves, obtenir la note, la note moyenne et la prochaine classe', '모든 학생 수 표, 점수 획득, 평균 성적 점수 및 다음 등급 롤 수를 다시 확인하십시오.', 'Bitte überprüfen Sie alle Schüler-Gesamtpunkte, erhalten Sie Mark, Durchschnittspunkt und nächste Klasse Roll-Nr.', 'Si prega di ricontrollare tutti gli indicatori Total Marks, Obtain Mark, Average Grade Point e Next Class.', 'โปรดตรวจสอบเครื่องหมายคะแนนนักศึกษาทั้งหมด, ดูเครื่องหมาย, คะแนนเฉลี่ยและลำดับถัดไปเลขที่ม้วน', 'Kérem, ellenőrizze az összes diákok teljes pontszámát, szerezze meg a pontszámot, átlag pontot és a következő osztályú tekercset.', 'Controleer alsjeblieft alle studenten totaalcijfers, cijfer behalen, gemiddelde cijferpunt en volgende klasserol nr.', 'Velit gemino reprehendo omnes alumni Romanum marcas, Mark Alleluia, & mediocris gradus punctum Next Class Roll No.', 'Harap periksa kembali semua Siswa Total Marks, Dapatkan Mark, Rata-rata Nilai Kelas & Gulungan Kelas Berikutnya No.', 'Lütfen tüm Öğrencilerin Toplam İşaretlerini, İşaretle, Ortalama Puan Puanı ve Sonraki Sınıf Rulo Numarasını kontrol edin.', 'Παρακαλώ ελέγξτε διπλά όλους τους μαθητές Σύνολο σημείων, αποκτήστε το σήμα, το μέσο βαθμό βαθμού και το επόμενο κύκλο', 'لطفا تمام دانشجویان کل عالمت ها، علامت گذاری، رتبه متوسط و رول بعدی کلاس را بررسی کنید', 'Sila semak semula semua Markah Jumlah Pelajar, Dapatkan Tanda, Nilai Gred Purata & No.', 'దయచేసి మొత్తం స్టూడెంట్స్ మొత్తం మార్క్స్, మార్క్, సగటు గ్రేడ్ పాయింట్ & తదుపరి క్లాస్ రోల్ నెంబరుని తనిఖీ చేయండి.', 'மாணவர் மொத்த மார்க்ஸ், மார்க், சராசரி தர புள்ளி மற்றும் அடுத்த வகுப்பு ரோல் எண் ஆகியவற்றைப் பெறுக.', 'કૃપા કરીને બધાં વિદ્યાર્થીના કુલ ગુણની તપાસ કરો, માર્ક, સરેરાશ ગ્રેડ પોઇન્ટ અને આગળનો વર્ગ રોલ નંબર મેળવો.', 'Sprawdź dokładnie wszystkie oceny uczniów, zdobądź ocenę, średnią ocenę i numer następnej klasy', 'Будь ласка, подвійно перевірте всі студенти загальних знаків, отримайте знак, середню оцінку точки та наступний клас Roll No.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਸਾਰੇ ਵਿਦਿਆਰਥੀਆਂ ਦੇ ਕੁੱਲ ਅੰਕ ਪਤਾ ਕਰੋ, ਪ੍ਰਾਪਤ ਕਰੋ ਮਾਰਕ, ਔਸਤ ਗਰੇਡ ਪੁਆਇੰਟ ਅਤੇ ਅਗਲਾ ਕਲਾਸ ਰੋਲ ਨੰਬਰ', 'Verificați dublu toți studenții Mark Total, Obțineți marca, Punctul mediu și următoarea clasă Roll Nr.', 'အမှတ်ပျမ်းမျှအဆင့်ပွိုင့် & Next ကိုအတန်းအစား Roll, မာကုရယူပါအပေါင်းတို့, ကျောင်းသားများစုစုပေါင်း Marks စစ်ဆေးနှစ်ဆ ကျေးဇူးပြု.', 'Jọwọ ṣe ayẹwo lẹẹmeji gbogbo Awọn akẹkọ Awọn ami ni gbogbo, Gba Samisi, Oṣuwọn Ipele Apapọ & Eerun Kọọkan Ibẹkọ No.', 'Don Allah sau biyu duba duk daliban Ƙidaya Ƙididdiga Alamomi, Sami Mark, Matsakaicin Matsayi Bayyana & Kayan Kayan Kira.'),
(631, 'promotion_instruction_5', 'All things are 100% correct Then Promote Students to Next Class.', 'সবকিছুর 100% সঠিক তারপর শিক্ষার্থীদের পরবর্তী শ্রেণীতে উন্নীত করুন।', 'Todas las cosas son 100% correctas. Luego, promueva a los estudiantes a la siguiente clase.', 'جميع الأشياء صحيحة 100٪ ثم تعزيز الطلاب إلى الدرجة التالية.', 'सभी चीजें 100% सही हैं, फिर छात्रों को अगली कक्षा में बढ़ावा देना।', 'تمام چیزیں 100٪ درست ہیں، پھر طلباء کو اگلا کلاس میں فروغ دیں.', '所有的事情都是100％正确的，然后促进学生下一课。', 'すべてのものが100％正しいです。次に、学生を次のクラスに昇格させます。', 'Todas as coisas estão 100% corretas. Em seguida, promova alunos para a próxima classe.', 'Все вещи на 100% правильны. Затем продвигайте студентов в следующий класс.', 'Toutes les choses sont 100% correctes Puis promouvoir les étudiants à la prochaine classe.', '모든 것은 100 % 정확합니다. 그런 다음 학생들을 다음 학급으로 승급하십시오.', 'Alle Dinge sind zu 100% korrekt. Dann fördern Sie die Schüler zur nächsten Klasse.', 'Tutte le cose sono corrette al 100%, quindi promuovi gli studenti alla prossima lezione.', 'ทุกอย่างถูกต้อง 100% แล้วโปรโมตนักเรียนให้เข้าชั้นเรียนถัดไป', 'Minden dolog 100% -ban helyes, majd elősegíti a diákokat a következő osztályba.', 'Alle dingen zijn 100% correct. Promoot vervolgens studenten naar de volgende klas.', 'Et bene omnia sunt, C% Next Promovere studentibus ad generalia Ps.', 'Semua hal 100% benar Lalu Promosikan Siswa ke Kelas Selanjutnya.', 'Her şey% 100 doğrudur Sonra Öğrencileri Bir Sonraki Sınıfta Tanıtın.', 'Όλα τα πράγματα είναι 100% σωστά Στη συνέχεια προωθήστε τους μαθητές στην επόμενη τάξη.', 'همه چیز 100٪ درست است سپس دانش آموزان را به کلاس بعدی ارتقا دهید.', 'Semua perkara adalah 100% betul Kemudian Menggalakkan Pelajar ke Kelas Seterusnya.', 'అన్ని విషయాలు 100% సరైనవి, తరువాత స్టూడెంట్స్ స్టూడెంట్స్ టు క్లాస్ టు క్లాస్.', 'எல்லா விஷயங்களும் 100% சரியானவை, பின்னர் மாணவர்கள் அடுத்த வகுப்புக்கு ஊக்குவிக்கின்றன.', 'બધી વસ્તુઓ 100% સાચી છે પછી વિદ્યાર્થીઓને આગામી વર્ગમાં પ્રમોટ કરો.', 'Wszystkie rzeczy są w 100% poprawne Następnie promuj uczniów do następnej klasy.', 'Всі речі правильні на 100%. Потім просувайте студентів до наступного класу.', 'ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ 100% ਠੀਕ ਹਨ. ਫਿਰ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਅਗਲੀ ਕਲਾਸ ਵਿਚ ਉਤਸ਼ਾਹਿਤ ਕਰੋ.', 'Toate lucrurile sunt 100% corecte Apoi promovează elevii în clasa următoare.', 'ခပ်သိမ်းသောအရာတို့ကိုထိုအခါ Next ကိုအတန်းအစားမှကျောင်းသားများမြှင့်တင် 100% မှန်ကန်ဖြစ်ကြသည်။', 'Gbogbo ohun ni o wa 100% atunṣe Lẹhinna Ṣẹda Awọn Ile-iwe si Kilasi Oju.', 'Dukkanin abubuwa 100% daidai Sa''an nan kuma ƙaddara ɗaliban zuwa Kashi na gaba.'),
(632, 'average_grade_point', 'Average Grade Point', 'গড় গ্রেড পয়েন্ট', 'Promedio de Grado', 'متوسط نقطة الدرجة', 'औसत ग्रेड प्वाइंट', 'اوسط گریڈ پوائنٹ', '平均成绩点', '平均等級点', 'Ponto médio de classificação', 'Средняя оценка', 'Point moyen', '평균 학점', 'Durchschnittlicher Notenwert', 'Grado medio', 'เกรดเฉลี่ย', 'Átlag pont', 'Gemiddeld cijferpunt', 'Mediocris gradus punctum', 'Rata-rata Grade Point', 'Ortalama Not Puanı', 'Μέσος όρος βαθμού', 'میانگین درجه امتیاز', 'Purata Gred Point', 'సగటు గ్రేడ్ పాయింట్', 'சராசரி தரம் புள்ளி', 'સરેરાશ ગ્રેડ પોઇન્ટ', 'Średni punkt oceny', 'Середня оцінка точки', 'ਔਸਤ ਗਰੇਡ ਪੁਆਇੰਟ', 'Punct mediu de punctaj', 'ပျမ်းမျှအဆင့်ပွိုင့်', 'Ipele Apapọ Iwọn', 'Matsayi na Farko'),
(633, 'please_select_a_route', 'Please select a Route.', 'একটি রুট নির্বাচন করুন।', 'Seleccione una ruta.', 'الرجاء تحديد مسار.', 'कृपया एक रूट चुनें', 'براہ راست راستہ منتخب کریں.', '请选择路线。', 'ルートを選択してください。', 'Selecione uma Rota.', 'Выберите маршрут.', 'Veuillez sélectionner un itinéraire.', '경로를 선택하십시오.', 'Bitte wählen Sie eine Route.', 'Si prega di selezionare una rotta.', 'โปรดเลือกเส้นทาง', 'Kérjük, válasszon ki egy útvonalat.', 'Selecteer alstublieft een route.', 'Placere eligere Iter itineris.', 'Silakan pilih Rute.', 'Lütfen bir Güzergah seçin.', 'Επιλέξτε μια διαδρομή.', 'لطفا یک مسیر را انتخاب کنید', 'Sila pilih Laluan.', 'దయచేసి ఒక మార్గం ఎంచుకోండి.', 'தயவுசெய்து ஒரு பாதை தேர்ந்தெடுக்கவும்.', 'કૃપા કરીને એક રસ્તો પસંદ કરો', 'Wybierz trasę.', 'Будь ласка, виберіть маршрут.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਰੂਟ ਚੁਣੋ.', 'Selectați o rută.', 'တစ်လမ်းကြောင်းရွေးချယ်ပါ။', 'Jọwọ yan Itọsọna kan.', 'Da fatan a zaɓi hanyar.'),
(634, 'return_success', 'Book return successfully', 'বই সফলভাবে ফেরত হয়েছে।', 'Libro devuelto con éxito', 'عودة الكتاب بنجاح', 'बुक सफलतापूर्वक वापस', 'کتاب کامیابی سے واپسی', '预订成功', '書籍の返品に成功', 'Livro de retorno com sucesso', 'Успешное возвращение книги', 'Le retour du livre a réussi', '도서 반환 성공', 'Buchen Sie erfolgreich zurück', 'Prenota con successo', 'หนังสือคืนสำเร็จแล้ว', 'A könyv sikeres visszaadása', 'Boek teruggave succesvol', 'Revertetur libro prospere', 'Pesan berhasil kembali', 'Kitap iadesi başarıyla gerçekleştirildi', 'Επαναφορά βιβλίου με επιτυχία', 'بازگشت کتاب با موفقیت', 'Pulangan buku berjaya', 'పుస్తకం తిరిగి విజయవంతంగా', 'புத்தகம் வெற்றிகரமாக திரும்பியது', 'ચોપડે સફળતાપૂર્વક વળતર', 'Zwrot książki powodzeniem', 'Книга повертається успішно', 'ਕਿਤਾਬ ਸਫਲਤਾਪੂਰਵਕ ਵਾਪਸ ਆਉਂਦੀ ਹੈ', 'Revenirea la carte a reușit', 'စာအုပ်အောင်မြင်စွာပြန်လာ', 'Iwe pada ni ifijišẹ', 'Book dawo da nasara'),
(635, 'due_amount', 'Due Amount', 'বাকি টাকা', 'Cantidad debida', 'مبلغ مستحق', 'देय राशि', 'باقی رقم', '到期金额', '金額', 'Valor devedor', 'Надлежащей суммы', 'Montant dû', '만기 금액', 'Fälliger Betrag', 'Importo dovuto', 'จำนวนเงินที่ครบกำหนด', 'Teljes összeg', 'Te betalen bedrag', 'ob Aliquam', 'Jumlah kematian', 'Ödenecek meblağ', 'Οφειλόμενο ποσό', 'مقدار قابل توجه', 'Jumlah terhutang', 'మొత్తం పరిమాణం', 'நிலுவை தொகை', 'નિયત રકમ', 'Kwota należna', 'Належна сума', 'ਕਮਾਈ ਰਕਮ', 'Suma datorata', 'ကြောင့်ငွေပမာဏ', 'Fun iye', 'Saboda Adadin'),
(636, 'user_active_status', 'Your account is not active. Please contact with administrator.', 'আপনার অ্যাকাউন্ট সক্রিয় নয়। প্রশাসকের সঙ্গে যোগাযোগ করুন দয়া করে।', 'Su cuenta no está activa. Por favor, póngase en contacto con el administrador.', 'حسابك غير فعال. يرجى الاتصال بالمشرف.', 'आपका खाता सक्रिय नहीं है। कृपया व्यवस्थापक से संपर्क करें', 'آپ کا اکاؤنٹ فعال نہیں ہے. برائے مہربانی منتظم کے ساتھ رابطہ کریں.', '您的帐户不活跃。 请与管理员联系。', 'あなたのアカウントはアクティブではありません。 管理者に連絡してください。', 'Sua conta não está ativa. Entre em contato com o administrador.', 'Ваша учетная запись неактивна. Пожалуйста, свяжитесь с администратором.', 'Votre compte n''est pas actif. S''il vous plaît contacter avec l''administrateur.', '귀하의 계정이 활성화되어 있지 않습니다. 관리자에게 문의하십시오.', 'Dein Konto ist nicht aktiv. Bitte kontaktieren Sie den Administrator.', 'Il tuo account non è attivo. Si prega di contattare con l''amministratore.', 'บัญชีของคุณไม่ทำงาน โปรดติดต่อผู้ดูแลระบบ', 'Fiókod nem aktív. Kérjük, lépjen kapcsolatba a rendszergazdával.', 'Uw account is niet actief. Neem contact op met de beheerder.', 'Ratio tua est activae. Placere contactus administrator.', 'Akunmu tidak aktif. Silahkan kontak dengan administrator.', 'Hesabınız aktif değil. Lütfen yönetici ile iletişime geçin.', 'Ο λογαριασμός σας δεν είναι ενεργός. Επικοινωνήστε με τον διαχειριστή.', 'حساب شما فعال نیست لطفا با مدیر تماس بگیرید', 'Akaun anda tidak aktif. Sila hubungi dengan pentadbir.', 'మీ ఖాతా చురుకుగా లేదు. దయచేసి నిర్వాహకుడితో సంప్రదించండి.', 'உங்கள் கணக்கு செயலில் இல்லை. நிர்வாகியுடன் தொடர்பு கொள்ளவும்.', 'તમારું એકાઉન્ટ સક્રિય નથી. સંચાલક સાથે સંપર્ક કરો.', 'Twoje konto nie jest aktywne. Skontaktuj się z administratorem.', 'Ваш обліковий запис не активний. Будь ласка, зв''яжіться з адміністратором.', 'ਤੁਹਾਡਾ ਖਾਤਾ ਕਿਰਿਆਸ਼ੀਲ ਨਹੀਂ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਬੰਧਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contul dvs. nu este activ. Contactați administratorul.', 'သင့်အကောင့်တက်ကြွမဟုတ်ပါဘူး။ စီမံခန့်ခွဲသူနှင့်အတူကိုဆက်သွယ်ပါ။', 'Akoto rẹ ko ṣiṣẹ. Jọwọ kan si pẹlu alakoso.', 'Asusunku ba aiki ba ne. Da fatan a tuntuɓi mai gudanarwa.');

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE IF NOT EXISTS `library_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_mark` int(11) NOT NULL,
  `obtain_mark` int(11) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Table structure for table `mark_emails`
--

CREATE TABLE IF NOT EXISTS `mark_emails` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `receiver_role_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Table structure for table `mark_smses`
--

CREATE TABLE IF NOT EXISTS `mark_smses` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `receiver_role_id` int(11) NOT NULL,
  `sms_gateway` varchar(50) CHARACTER SET utf8 NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `message_relationships`
--

CREATE TABLE IF NOT EXISTS `message_relationships` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `is_draft` smallint(1) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `module_slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_slug`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Setting', 'setting', 1, '2017-11-13 22:55:19', '2017-11-13 22:57:10', 1, 1),
(2, 'Theme', 'theme', 1, '2017-12-12 13:34:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Language', 'language', 1, '2017-12-12 13:36:11', '0000-00-00 00:00:00', 1, 0),
(4, 'Administrator', 'administrator', 1, '2017-12-12 13:36:35', '0000-00-00 00:00:00', 1, 0),
(5, 'Human Resource', 'hrm', 1, '2017-12-12 13:38:30', '0000-00-00 00:00:00', 1, 0),
(6, 'Teacher', 'teacher', 1, '2017-12-12 13:39:01', '0000-00-00 00:00:00', 1, 0),
(7, 'Academic Activity', 'academic', 1, '2017-12-12 13:42:24', '0000-00-00 00:00:00', 1, 0),
(8, 'Guardian', 'guardian', 1, '2017-12-12 13:43:01', '0000-00-00 00:00:00', 1, 0),
(9, 'Student', 'student', 1, '2017-12-12 13:43:28', '0000-00-00 00:00:00', 1, 0),
(10, 'Attendance', 'attendance', 1, '2017-12-12 13:45:03', '0000-00-00 00:00:00', 1, 0),
(11, 'Assignment', 'assignment', 1, '2017-12-12 13:45:45', '0000-00-00 00:00:00', 1, 0),
(12, 'Exam', 'exam', 1, '2017-12-12 13:46:13', '0000-00-00 00:00:00', 1, 0),
(14, 'Library', 'library', 1, '2017-12-12 13:46:33', '0000-00-00 00:00:00', 1, 0),
(15, 'Transport', 'transport', 1, '2017-12-12 13:46:52', '0000-00-00 00:00:00', 1, 0),
(16, 'Hostel', 'hostel', 1, '2017-12-12 13:47:15', '0000-00-00 00:00:00', 1, 0),
(17, 'Message, Email & SMS', 'message', 1, '2017-12-12 13:47:48', '2017-12-14 08:48:49', 1, 1),
(18, 'Announcement', 'announcement', 1, '2017-12-12 13:48:23', '0000-00-00 00:00:00', 1, 0),
(19, 'Event', 'event', 1, '2017-12-12 13:48:36', '0000-00-00 00:00:00', 1, 0),
(20, 'Visitor Info', 'visitor', 1, '2017-12-12 13:49:05', '0000-00-00 00:00:00', 1, 0),
(21, 'Accounting', 'accounting', 1, '2017-12-12 13:49:32', '0000-00-00 00:00:00', 1, 0),
(22, 'Report', 'report', 1, '2017-12-12 13:51:09', '0000-00-00 00:00:00', 1, 0),
(13, 'Exam Mark', 'exam', 1, '2017-12-14 00:00:00', '2017-12-14 09:07:46', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `news` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `notice` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Table structure for table `operations`
--

CREATE TABLE IF NOT EXISTS `operations` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `operation_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `operation_slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `is_view_vissible` tinyint(1) NOT NULL,
  `is_add_vissible` tinyint(1) NOT NULL,
  `is_edit_vissible` tinyint(1) NOT NULL,
  `is_delete_vissible` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `module_id`, `operation_name`, `operation_slug`, `is_view_vissible`, `is_add_vissible`, `is_edit_vissible`, `is_delete_vissible`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'General Setting', 'setting', 1, 1, 1, 0, 1, '2017-12-12 16:06:25', '2018-02-09 01:24:50', 1, 1),
(2, 1, 'Payment Setting', 'payment', 1, 1, 1, 0, 1, '2017-12-12 16:06:55', '2018-02-09 01:24:40', 1, 1),
(3, 1, 'SMS Setting', 'sms', 1, 1, 1, 0, 1, '2017-12-12 16:07:07', '2018-02-09 01:05:32', 1, 1),
(4, 2, 'Theme', 'theme', 1, 0, 1, 0, 1, '2017-12-12 16:08:39', '2018-01-03 07:02:51', 1, 1),
(5, 3, 'Language', 'language', 1, 1, 1, 1, 1, '2017-12-12 16:09:22', '2018-01-03 07:03:03', 1, 1),
(6, 4, 'Academic Year', 'year', 1, 1, 1, 1, 1, '2017-12-12 16:10:34', '2018-01-03 07:03:18', 1, 1),
(7, 4, 'User Role', 'role', 1, 1, 1, 1, 1, '2017-12-12 16:10:55', '2018-01-03 07:03:31', 1, 1),
(8, 4, 'Role Permission', 'permission', 1, 0, 1, 0, 1, '2017-12-12 16:12:10', '2018-01-03 07:05:00', 1, 1),
(64, 4, 'Reset User Password', 'password', 0, 0, 1, 0, 1, '2017-12-13 20:14:23', '2018-01-03 07:05:11', 1, 1),
(10, 5, 'Designation', 'designation', 1, 1, 1, 1, 1, '2017-12-12 16:15:38', '2018-01-03 07:07:38', 1, 1),
(11, 5, 'Employee', 'employee', 1, 1, 1, 1, 1, '2017-12-12 16:15:55', '2018-01-03 07:19:54', 1, 1),
(12, 6, 'Teacher', 'teacher', 1, 1, 1, 1, 1, '2017-12-12 16:17:22', '2018-01-03 07:25:07', 1, 1),
(14, 7, 'Classes', 'classes', 1, 1, 1, 1, 1, '2017-12-12 16:19:01', '2018-01-03 07:25:17', 1, 1),
(15, 7, 'Section', 'section', 1, 1, 1, 1, 1, '2017-12-12 16:19:24', '2018-01-03 07:25:24', 1, 1),
(16, 7, 'Subject', 'subject', 1, 1, 1, 1, 1, '2017-12-12 16:19:48', '2018-01-03 07:25:33', 1, 1),
(17, 7, 'Syllabus', 'syllabus', 1, 1, 1, 1, 1, '2017-12-12 16:20:32', '2018-01-03 07:25:54', 1, 1),
(18, 7, 'Class Routine', 'routine', 1, 1, 1, 1, 1, '2017-12-12 16:20:56', '2018-01-03 07:26:13', 1, 1),
(19, 7, 'Promotion', 'promotion', 1, 1, 0, 0, 1, '2017-12-12 16:21:17', '2018-02-09 01:42:57', 1, 1),
(20, 8, 'Guardian', 'guardian', 1, 1, 1, 1, 1, '2017-12-12 16:23:32', '2018-01-03 07:29:06', 1, 1),
(21, 9, 'Student', 'student', 1, 1, 1, 1, 1, '2017-12-12 17:58:56', '2018-01-03 07:29:15', 1, 1),
(65, 4, 'Backup Database', 'backup', 1, 0, 0, 0, 1, '2017-12-13 20:14:39', '2018-02-09 01:29:33', 1, 1),
(23, 10, 'Employee Attendance', 'employee', 1, 1, 1, 0, 1, '2017-12-12 18:00:10', '2018-01-03 07:30:19', 1, 1),
(24, 10, 'Teacher Attendance', 'teacher', 1, 1, 1, 0, 1, '2017-12-12 18:00:51', '2018-01-03 07:29:52', 1, 1),
(25, 10, 'Student Attendance', 'student', 1, 1, 1, 0, 1, '2017-12-12 18:01:17', '2018-01-03 07:30:01', 1, 1),
(26, 11, 'Assignment', 'assignment', 1, 1, 1, 1, 1, '2017-12-12 18:02:08', '2018-01-03 07:30:40', 1, 1),
(28, 12, 'Exam Term', 'exam', 1, 1, 1, 1, 1, '2017-12-12 18:03:30', '2018-02-09 01:49:25', 1, 1),
(29, 12, 'Exam Grade', 'grade', 1, 1, 1, 1, 1, '2017-12-12 18:03:56', '2018-01-03 07:31:56', 1, 1),
(30, 12, 'Exam Schedule', 'schedule', 1, 1, 1, 1, 1, '2017-12-12 18:04:58', '2018-01-03 07:32:14', 1, 1),
(31, 12, 'Exam Suggestion', 'suggestion', 1, 1, 1, 1, 1, '2017-12-12 18:05:18', '2018-01-03 07:32:30', 1, 1),
(32, 12, 'Exam Attendance', 'attendance', 1, 1, 1, 0, 1, '2017-12-12 18:05:43', '2018-01-03 07:32:58', 1, 1),
(33, 13, 'Exam Mark', 'mark', 1, 1, 1, 0, 1, '2017-12-12 18:06:04', '2018-01-03 07:33:16', 1, 1),
(34, 13, 'Mark Sheet', 'marksheet', 1, 1, 1, 0, 1, '2017-12-12 18:06:24', '2018-01-03 07:34:08', 1, 1),
(35, 13, 'Exam Result', 'result', 1, 1, 1, 0, 1, '2017-12-12 18:06:41', '2018-01-03 07:34:20', 1, 1),
(37, 14, 'Library Book', 'book', 1, 1, 1, 1, 1, '2017-12-12 18:09:17', '2018-01-03 07:36:02', 1, 1),
(38, 14, 'Library Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:09:33', '2018-01-03 07:36:24', 1, 1),
(66, 14, 'Issue & Return', 'issue', 1, 1, 1, 0, 1, '2017-12-14 08:46:37', '2018-01-03 07:37:01', 1, 1),
(40, 15, 'Vehicle', 'vehicle', 1, 1, 1, 1, 1, '2017-12-12 18:10:49', '2018-01-03 07:37:11', 1, 1),
(41, 15, 'Transport Route', 'route', 1, 1, 1, 1, 1, '2017-12-12 18:11:17', '2018-01-03 07:41:27', 1, 1),
(42, 15, 'Transport Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:11:39', '2018-01-03 07:41:46', 1, 1),
(43, 16, 'Hostel', 'hostel', 1, 1, 1, 1, 1, '2017-12-12 18:12:16', '2018-01-03 07:41:55', 1, 1),
(44, 16, 'Hostel Room', 'room', 1, 1, 1, 1, 1, '2017-12-12 18:12:37', '2018-01-03 07:42:02', 1, 1),
(45, 16, 'Hostel Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:13:00', '2018-01-03 07:42:23', 1, 1),
(47, 17, 'Email', 'mail', 1, 1, 0, 1, 1, '2017-12-12 18:15:57', '2018-01-03 07:44:16', 1, 1),
(48, 17, 'Text SMS', 'text', 1, 1, 0, 1, 1, '2017-12-12 18:16:17', '2018-01-03 07:44:25', 1, 1),
(50, 18, 'Notice', 'notice', 1, 1, 1, 1, 1, '2017-12-12 18:20:38', '2018-01-03 07:47:39', 1, 1),
(51, 18, 'News', 'news', 1, 1, 1, 1, 1, '2017-12-12 18:20:54', '2018-01-03 07:47:46', 1, 1),
(52, 18, 'Holiday', 'holiday', 1, 1, 1, 1, 1, '2017-12-12 18:21:08', '2018-01-03 07:47:53', 1, 1),
(53, 19, 'Event', 'event', 1, 1, 1, 1, 1, '2017-12-12 18:21:35', '2018-01-03 07:48:00', 1, 1),
(54, 20, 'Visitor Info', 'visitor', 1, 1, 1, 1, 1, '2017-12-12 18:22:05', '2018-01-03 07:48:15', 1, 1),
(56, 21, 'Expenditure Head', 'exphead', 1, 1, 1, 1, 1, '2017-12-12 18:23:51', '2018-01-03 07:48:23', 1, 1),
(57, 21, 'Expenditure', 'expenditure', 1, 1, 1, 1, 1, '2017-12-12 18:24:14', '2018-01-03 07:48:32', 1, 1),
(58, 21, 'Income Head', 'incomehead', 1, 1, 1, 1, 1, '2017-12-12 18:24:42', '2018-01-03 07:48:39', 1, 1),
(59, 21, 'Income', 'income', 1, 1, 1, 1, 1, '2017-12-12 18:24:54', '2018-01-03 07:48:59', 1, 1),
(60, 21, 'Invoice', 'invoice', 1, 1, 1, 1, 1, '2017-12-12 18:25:16', '2018-01-03 07:49:12', 1, 1),
(61, 21, 'Payment', 'payment', 1, 1, 0, 0, 1, '2017-12-12 18:25:34', '2018-01-03 07:49:47', 1, 1),
(62, 22, 'Report', 'report', 1, 0, 0, 0, 1, '2017-12-12 18:26:16', '2018-01-03 07:50:00', 1, 1),
(63, 4, 'Manage User', 'user', 1, 0, 1, 0, 1, '2017-12-13 20:13:49', '2018-01-03 07:35:43', 1, 1),
(67, 13, 'Mark send by SMS', 'text', 1, 1, 0, 1, 1, '2017-12-14 09:09:58', '2018-01-03 07:34:45', 1, 1),
(68, 13, 'Mark send by Email', 'mail', 1, 1, 0, 1, 1, '2017-12-14 09:10:15', '2018-01-03 07:35:13', 1, 1),
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, '2018-01-13 08:53:53', '2018-01-13 09:06:22', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` int(11) NOT NULL,
  `paypal_api_username` varchar(100) DEFAULT NULL,
  `paypal_api_password` varchar(100) DEFAULT NULL,
  `paypal_api_signature` varchar(100) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `paypal_demo` tinyint(1) DEFAULT NULL,
  `paypal_status` tinyint(1) DEFAULT NULL,
  `stripe_secret` varchar(100) DEFAULT NULL,
  `stripe_demo` tinyint(1) DEFAULT NULL,
  `stripe_status` tinyint(1) DEFAULT NULL,
  `payumoney_key` varchar(100) DEFAULT NULL,
  `payumoney_salt` varchar(100) DEFAULT NULL,
  `payumoney_demo` tinyint(1) DEFAULT NULL,
  `payumoney_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payumoney_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, NULL, NULL, NULL, '', 0, 0, '', 0, 0, '', '', 0, 0, 0, '2017-08-24 10:58:24', '2018-01-13 04:15:18', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `is_add` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_view` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=609 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(3, 1, 3, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(4, 1, 4, 0, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(5, 1, 5, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(6, 1, 6, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(7, 1, 7, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(8, 1, 8, 0, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(9, 1, 64, 0, 1, 0, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(10, 1, 65, 0, 0, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(11, 1, 63, 0, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(12, 1, 10, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(13, 1, 11, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(14, 1, 12, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(15, 1, 14, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(16, 1, 15, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(17, 1, 16, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(18, 1, 17, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(19, 1, 18, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(20, 1, 19, 1, 0, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(21, 1, 20, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(22, 1, 21, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(23, 1, 23, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(24, 1, 24, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(25, 1, 25, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(26, 1, 26, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(27, 1, 27, 1, 1, 1, 1, 1, '2018-01-13 09:07:29', '0000-00-00 00:00:00', 2, 0),
(28, 1, 28, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(29, 1, 29, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(30, 1, 30, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(31, 1, 31, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(32, 1, 32, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(33, 1, 33, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(34, 1, 34, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(35, 1, 35, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(36, 1, 67, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(37, 1, 68, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(38, 1, 37, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(39, 1, 38, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(40, 1, 66, 1, 1, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(41, 1, 40, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(42, 1, 41, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(43, 1, 42, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(44, 1, 43, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(45, 1, 44, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(46, 1, 45, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(47, 1, 46, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(48, 1, 47, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(49, 1, 48, 1, 0, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(50, 1, 50, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(51, 1, 51, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(52, 1, 52, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(53, 1, 53, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(54, 1, 54, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(55, 1, 55, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(56, 1, 56, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(57, 1, 57, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(58, 1, 58, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(59, 1, 59, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(60, 1, 60, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(61, 1, 61, 1, 0, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(62, 1, 62, 0, 0, 1, 0, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(63, 3, 1, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(64, 3, 2, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(65, 3, 3, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(66, 3, 4, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(67, 3, 5, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(68, 3, 6, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(69, 3, 7, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(70, 3, 8, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(71, 3, 64, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(72, 3, 65, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(73, 3, 63, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(74, 3, 10, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(75, 3, 11, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(76, 3, 12, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(77, 3, 14, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(78, 3, 15, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(79, 3, 16, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(80, 3, 17, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(81, 3, 18, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(82, 3, 19, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(83, 3, 20, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(84, 3, 21, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(85, 3, 23, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(86, 3, 24, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(87, 3, 25, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(88, 3, 26, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(89, 3, 27, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(90, 3, 28, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(91, 3, 29, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(92, 3, 30, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(93, 3, 31, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(94, 3, 32, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(95, 3, 33, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(96, 3, 34, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(97, 3, 35, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(98, 3, 67, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(99, 3, 68, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(100, 3, 37, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(101, 3, 38, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(102, 3, 66, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(103, 3, 40, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(104, 3, 41, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(105, 3, 42, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(106, 3, 43, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(107, 3, 44, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(108, 3, 45, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(109, 3, 46, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(110, 3, 47, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(111, 3, 48, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(112, 3, 50, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(113, 3, 51, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(114, 3, 52, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(115, 3, 53, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(116, 3, 54, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(117, 3, 55, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(118, 3, 56, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(119, 3, 57, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(120, 3, 58, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(121, 3, 59, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(122, 3, 60, 0, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(123, 3, 61, 1, 0, 1, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(124, 3, 62, 0, 0, 0, 0, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(125, 1, 69, 1, 1, 1, 1, 1, '2018-02-09 02:56:09', '0000-00-00 00:00:00', 1, 0),
(126, 5, 1, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(127, 5, 2, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(128, 5, 3, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(129, 5, 4, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(130, 5, 5, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(131, 5, 6, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(132, 5, 7, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(133, 5, 8, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(134, 5, 64, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(135, 5, 65, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(136, 5, 63, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(137, 5, 10, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(138, 5, 11, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(139, 5, 12, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(140, 5, 14, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(141, 5, 15, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(142, 5, 16, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(143, 5, 17, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(144, 5, 18, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(145, 5, 19, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(146, 5, 20, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(147, 5, 21, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(148, 5, 23, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(149, 5, 24, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(150, 5, 25, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(151, 5, 26, 1, 1, 1, 1, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(152, 5, 27, 1, 1, 1, 0, 1, '2018-01-13 09:46:35', '0000-00-00 00:00:00', 1, 0),
(153, 5, 28, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(154, 5, 29, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(155, 5, 30, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(156, 5, 31, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(157, 5, 32, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(158, 5, 33, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(159, 5, 34, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(160, 5, 35, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(161, 5, 67, 1, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(162, 5, 68, 1, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(163, 5, 37, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(164, 5, 38, 1, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(165, 5, 66, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(166, 5, 40, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(167, 5, 41, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(168, 5, 42, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(169, 5, 43, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(170, 5, 44, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(171, 5, 45, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(172, 5, 47, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(173, 5, 48, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(174, 5, 69, 1, 1, 1, 1, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(175, 5, 50, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(176, 5, 51, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(177, 5, 52, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(178, 5, 53, 1, 1, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(179, 5, 54, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(180, 5, 56, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(181, 5, 57, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(182, 5, 58, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(183, 5, 59, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(184, 5, 60, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(185, 5, 61, 0, 0, 0, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(186, 5, 62, 0, 0, 1, 0, 1, '2018-02-09 03:07:30', '0000-00-00 00:00:00', 1, 0),
(187, 13, 1, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(188, 13, 2, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(189, 13, 3, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(190, 13, 4, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(191, 13, 5, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(192, 13, 6, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(193, 13, 7, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(194, 13, 8, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(195, 13, 64, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(196, 13, 65, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(197, 13, 63, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(198, 13, 10, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(199, 13, 11, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(200, 13, 12, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(201, 13, 14, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(202, 13, 15, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(203, 13, 16, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(204, 13, 17, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(205, 13, 18, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(206, 13, 19, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(207, 13, 20, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(208, 13, 21, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(209, 13, 23, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(210, 13, 24, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(211, 13, 25, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(212, 13, 26, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(213, 13, 27, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(214, 13, 28, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(215, 13, 29, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(216, 13, 30, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(217, 13, 31, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(218, 13, 32, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(219, 13, 33, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(220, 13, 34, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(221, 13, 35, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(222, 13, 67, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(223, 13, 68, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(224, 13, 37, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(225, 13, 38, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(226, 13, 66, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(227, 13, 40, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(228, 13, 41, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(229, 13, 42, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(230, 13, 43, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(231, 13, 44, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(232, 13, 45, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(233, 13, 47, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(234, 13, 48, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(235, 13, 69, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(236, 13, 50, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(237, 13, 51, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(238, 13, 52, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(239, 13, 53, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(240, 13, 54, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(241, 13, 56, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(242, 13, 57, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(243, 13, 58, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(244, 13, 59, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(245, 13, 60, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(246, 13, 61, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(247, 13, 62, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(248, 3, 69, 1, 1, 1, 1, 1, '2018-02-25 03:15:25', '0000-00-00 00:00:00', 1, 0),
(249, 2, 1, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(250, 2, 2, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(251, 2, 3, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(252, 2, 4, 0, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(253, 2, 5, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(254, 2, 6, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(255, 2, 7, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(256, 2, 8, 0, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(257, 2, 64, 0, 1, 0, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(258, 2, 65, 0, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(259, 2, 63, 0, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(260, 2, 10, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(261, 2, 11, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(262, 2, 12, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(263, 2, 14, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(264, 2, 15, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(265, 2, 16, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(266, 2, 17, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(267, 2, 18, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(268, 2, 19, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(269, 2, 20, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(270, 2, 21, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(271, 2, 23, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(272, 2, 24, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(273, 2, 25, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(274, 2, 26, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(275, 2, 28, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(276, 2, 29, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(277, 2, 30, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(278, 2, 31, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(279, 2, 32, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(280, 2, 33, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(281, 2, 34, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(282, 2, 35, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(283, 2, 67, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(284, 2, 68, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(285, 2, 37, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(286, 2, 38, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(287, 2, 66, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(288, 2, 40, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(289, 2, 41, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(290, 2, 42, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(291, 2, 43, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(292, 2, 44, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(293, 2, 45, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(294, 2, 47, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(295, 2, 48, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(296, 2, 69, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(297, 2, 50, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(298, 2, 51, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(299, 2, 52, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(300, 2, 53, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(301, 2, 54, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(302, 2, 56, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(303, 2, 57, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(304, 2, 58, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(305, 2, 59, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(306, 2, 60, 1, 1, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(307, 2, 61, 1, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(308, 2, 62, 0, 0, 1, 0, 1, '2018-02-09 02:56:37', '0000-00-00 00:00:00', 1, 0),
(309, 4, 1, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(310, 4, 2, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(311, 4, 3, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(312, 4, 4, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(313, 4, 5, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(314, 4, 6, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(315, 4, 7, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(316, 4, 8, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(317, 4, 64, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(318, 4, 65, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(319, 4, 63, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(320, 4, 10, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(321, 4, 11, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(322, 4, 12, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(323, 4, 14, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(324, 4, 15, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(325, 4, 16, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(326, 4, 17, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(327, 4, 18, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(328, 4, 19, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(329, 4, 20, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(330, 4, 21, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(331, 4, 23, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(332, 4, 24, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(333, 4, 25, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(334, 4, 26, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(335, 4, 28, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(336, 4, 29, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(337, 4, 30, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(338, 4, 31, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(339, 4, 32, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(340, 4, 33, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(341, 4, 34, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(342, 4, 35, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(343, 4, 67, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(344, 4, 68, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(345, 4, 37, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(346, 4, 38, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(347, 4, 66, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(348, 4, 40, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(349, 4, 41, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(350, 4, 42, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(351, 4, 43, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(352, 4, 44, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(353, 4, 45, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(354, 4, 47, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(355, 4, 48, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(356, 4, 69, 1, 1, 1, 1, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(357, 4, 50, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(358, 4, 51, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(359, 4, 52, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(360, 4, 53, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(361, 4, 54, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(362, 4, 56, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(363, 4, 57, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(364, 4, 58, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(365, 4, 59, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(366, 4, 60, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(367, 4, 61, 0, 0, 1, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(368, 4, 62, 0, 0, 0, 0, 1, '2018-02-09 03:04:15', '0000-00-00 00:00:00', 1, 0),
(369, 6, 1, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(370, 6, 2, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(371, 6, 3, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(372, 6, 4, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(373, 6, 5, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(374, 6, 6, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(375, 6, 7, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(376, 6, 8, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(377, 6, 64, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(378, 6, 65, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(379, 6, 63, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(380, 6, 10, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(381, 6, 11, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(382, 6, 12, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(383, 6, 14, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(384, 6, 15, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(385, 6, 16, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(386, 6, 17, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(387, 6, 18, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(388, 6, 19, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(389, 6, 20, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(390, 6, 21, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(391, 6, 23, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(392, 6, 24, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(393, 6, 25, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(394, 6, 26, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(395, 6, 28, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(396, 6, 29, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(397, 6, 30, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(398, 6, 31, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(399, 6, 32, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(400, 6, 33, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(401, 6, 34, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(402, 6, 35, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(403, 6, 67, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(404, 6, 68, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(405, 6, 37, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(406, 6, 38, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(407, 6, 66, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(408, 6, 40, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(409, 6, 41, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(410, 6, 42, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(411, 6, 43, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(412, 6, 44, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(413, 6, 45, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(414, 6, 47, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(415, 6, 48, 0, 0, 0, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(416, 6, 69, 1, 1, 1, 1, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(417, 6, 50, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(418, 6, 51, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(419, 6, 52, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(420, 6, 53, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(421, 6, 54, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(422, 6, 56, 1, 1, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(423, 6, 57, 1, 1, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(424, 6, 58, 1, 1, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(425, 6, 59, 1, 1, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(426, 6, 60, 1, 1, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(427, 6, 61, 1, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(428, 6, 62, 0, 0, 1, 0, 1, '2018-02-09 03:09:17', '0000-00-00 00:00:00', 1, 0),
(429, 7, 1, 0, 0, 0, 0, 1, '2018-02-09 03:11:18', '0000-00-00 00:00:00', 1, 0),
(430, 7, 2, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(431, 7, 3, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(432, 7, 4, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(433, 7, 5, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(434, 7, 6, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(435, 7, 7, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(436, 7, 8, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(437, 7, 64, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(438, 7, 65, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(439, 7, 63, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(440, 7, 10, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(441, 7, 11, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(442, 7, 12, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(443, 7, 14, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(444, 7, 15, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(445, 7, 16, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(446, 7, 17, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(447, 7, 18, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(448, 7, 19, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(449, 7, 20, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(450, 7, 21, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(451, 7, 23, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(452, 7, 24, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(453, 7, 25, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(454, 7, 26, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(455, 7, 28, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(456, 7, 29, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(457, 7, 30, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(458, 7, 31, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(459, 7, 32, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(460, 7, 33, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(461, 7, 34, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(462, 7, 35, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(463, 7, 67, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(464, 7, 68, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(465, 7, 37, 1, 1, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(466, 7, 38, 1, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(467, 7, 66, 1, 1, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(468, 7, 40, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(469, 7, 41, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(470, 7, 42, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(471, 7, 43, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(472, 7, 44, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(473, 7, 45, 0, 0, 1, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(474, 7, 47, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(475, 7, 48, 0, 0, 0, 0, 1, '2018-02-09 03:11:19', '0000-00-00 00:00:00', 1, 0),
(476, 7, 69, 1, 1, 1, 1, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(477, 7, 50, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(478, 7, 51, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(479, 7, 52, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(480, 7, 53, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(481, 7, 54, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(482, 7, 56, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(483, 7, 57, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(484, 7, 58, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(485, 7, 59, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(486, 7, 60, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(487, 7, 61, 0, 0, 0, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(488, 7, 62, 0, 0, 1, 0, 1, '2018-02-09 03:11:20', '0000-00-00 00:00:00', 1, 0),
(489, 8, 1, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(490, 8, 2, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(491, 8, 3, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(492, 8, 4, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(493, 8, 5, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(494, 8, 6, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(495, 8, 7, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(496, 8, 8, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(497, 8, 64, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(498, 8, 65, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(499, 8, 63, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(500, 8, 10, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(501, 8, 11, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(502, 8, 12, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(503, 8, 14, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(504, 8, 15, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(505, 8, 16, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(506, 8, 17, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(507, 8, 18, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(508, 8, 19, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(509, 8, 20, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(510, 8, 21, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(511, 8, 23, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(512, 8, 24, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(513, 8, 25, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(514, 8, 26, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(515, 8, 28, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(516, 8, 29, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(517, 8, 30, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(518, 8, 31, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(519, 8, 32, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(520, 8, 33, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(521, 8, 34, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(522, 8, 35, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(523, 8, 67, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(524, 8, 68, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(525, 8, 37, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(526, 8, 38, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(527, 8, 66, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(528, 8, 40, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(529, 8, 41, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(530, 8, 42, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(531, 8, 43, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(532, 8, 44, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(533, 8, 45, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(534, 8, 47, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(535, 8, 48, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(536, 8, 69, 1, 1, 1, 1, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(537, 8, 50, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(538, 8, 51, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(539, 8, 52, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(540, 8, 53, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(541, 8, 54, 0, 0, 1, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(542, 8, 56, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(543, 8, 57, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(544, 8, 58, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(545, 8, 59, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(546, 8, 60, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(547, 8, 61, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(548, 8, 62, 0, 0, 0, 0, 1, '2018-02-09 03:12:40', '0000-00-00 00:00:00', 1, 0),
(549, 9, 1, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(550, 9, 2, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(551, 9, 3, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(552, 9, 4, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(553, 9, 5, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(554, 9, 6, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(555, 9, 7, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(556, 9, 8, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(557, 9, 64, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(558, 9, 65, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(559, 9, 63, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(560, 9, 10, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(561, 9, 11, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(562, 9, 12, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(563, 9, 14, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(564, 9, 15, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(565, 9, 16, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(566, 9, 17, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(567, 9, 18, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(568, 9, 19, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(569, 9, 20, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(570, 9, 21, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(571, 9, 23, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(572, 9, 24, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(573, 9, 25, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(574, 9, 26, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(575, 9, 28, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(576, 9, 29, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(577, 9, 30, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(578, 9, 31, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(579, 9, 32, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(580, 9, 33, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(581, 9, 34, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(582, 9, 35, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(583, 9, 67, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(584, 9, 68, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(585, 9, 37, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(586, 9, 38, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(587, 9, 66, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(588, 9, 40, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(589, 9, 41, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(590, 9, 42, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(591, 9, 43, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(592, 9, 44, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(593, 9, 45, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(594, 9, 47, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(595, 9, 48, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(596, 9, 69, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(597, 9, 50, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(598, 9, 51, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(599, 9, 52, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(600, 9, 53, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(601, 9, 54, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(602, 9, 56, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(603, 9, 57, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(604, 9, 58, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(605, 9, 59, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(606, 9, 60, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(607, 9, 61, 0, 0, 0, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0),
(608, 9, 62, 0, 0, 1, 0, 1, '2018-02-25 03:22:56', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `exam_total_mark` int(11) NOT NULL,
  `obtain_total_mark` int(11) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `note`, `is_default`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', 1, 1, '2017-08-13 12:15:17', '2018-02-09 01:58:57', 0, 1),
(2, 'admin', 'Admin', 'Admin User', 1, 1, '2017-08-13 13:01:36', '0000-00-00 00:00:00', 0, 0),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', 1, 1, '2017-08-13 13:02:05', '2018-02-09 01:59:22', 0, 1),
(4, 'student', 'Student', 'Student User', 1, 1, '2017-08-13 13:02:24', '2018-02-09 01:59:34', 0, 1),
(5, 'teacher', 'Teacher', 'Teacher User', 1, 1, '2017-08-13 13:02:51', '2018-02-09 01:59:46', 0, 1),
(6, 'accountant', 'Accountant', 'Accountant User', 1, 1, '2017-08-13 13:04:00', '2018-02-09 02:00:07', 0, 1),
(7, 'librarian', 'Librarian', 'Librarian User', 1, 1, '2017-08-13 13:04:18', '2018-02-09 02:00:22', 0, 1),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', 1, 1, '2017-08-13 13:04:36', '2018-02-09 02:02:30', 0, 1),
(9, 'staff', 'Staff', 'General Staff User', 0, 1, '2017-08-13 13:05:01', '2018-02-09 02:02:48', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `room_type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `total_seat` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(11) NOT NULL,
  `vehicle_ids` varchar(150) CHARACTER SET utf8 NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `route_start` varchar(255) CHARACTER SET utf8 NOT NULL,
  `route_end` varchar(255) CHARACTER SET utf8 NOT NULL,
  `fare` decimal(10,2) NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `routines`
--

CREATE TABLE IF NOT EXISTS `routines` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `day` varchar(20) CHARACTER SET utf8 NOT NULL,
  `start_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `end_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `room_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8 NOT NULL,
  `currency_symbol` varchar(10) CHARACTER SET utf8 NOT NULL,
  `language` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` text CHARACTER SET utf8 NOT NULL,
  `logo` varchar(120) CHARACTER SET utf8 NOT NULL,
  `running_year` varchar(15) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `school_name`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `language`, `footer`, `logo`, `running_year`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Windsor Park High School', '10433 Wolverine Way  Bellevue, CA 98456', '0123456789', 'info@gsms.com', 'usd', '$', 'english', 'Copyright© SMS', 'school-logo.png', '2017 - 2018', 1, '2017-08-23 09:40:28', '2018-02-14 03:50:36', 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE IF NOT EXISTS `sms_settings` (
  `id` int(11) NOT NULL,
  `clickatell_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_api_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_from_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `clickatell_status` tinyint(1) DEFAULT NULL,
  `twilio_account_sid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twilio_auth_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twilio_from_number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_mo_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `twilio_status` tinyint(1) DEFAULT NULL,
  `bulk_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_status` tinyint(1) DEFAULT NULL,
  `msg91_auth_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `msg91_sender_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `msg91_status` tinyint(1) DEFAULT NULL,
  `plivo_auth_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plivo_auth_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plivo_from_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `plivo_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `clickatell_username`, `clickatell_password`, `clickatell_api_key`, `clickatell_from_number`, `clickatell_status`, `twilio_account_sid`, `twilio_auth_token`, `twilio_from_number`, `clickatell_mo_no`, `twilio_status`, `bulk_username`, `bulk_password`, `bulk_status`, `msg91_auth_key`, `msg91_sender_id`, `msg91_status`, `plivo_auth_id`, `plivo_auth_token`, `plivo_from_number`, `plivo_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', 0, 0, '', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `guardian_id` int(11) NOT NULL,
  `registration_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `group` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `is_library_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_hostel_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_transport_member` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Table structure for table `student_attendances`
--

CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `full_mark` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_estonian_ci,
  `suggestion` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `syllabuses`
--

CREATE TABLE IF NOT EXISTS `syllabuses` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `syllabus` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `responsibility` varchar(255) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `resume` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `teacher_attendances`
--

CREATE TABLE IF NOT EXISTS `teacher_attendances` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Table structure for table `text_messages`
--

CREATE TABLE IF NOT EXISTS `text_messages` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text,
  `academic_year_id` int(11) NOT NULL,
  `sms_gateway` varchar(20) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(120) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8 NOT NULL,
  `color_code` varchar(10) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT '1 = Active, 0 = Inactive',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `color_code`, `description`, `is_active`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'DodgerBlue ', 'dodger-blue', '#1E90FF', 'cbcvbced', 1, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(2, 'Black ', 'black', '#23282d', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(3, 'LightSeaGreen ', 'light-sea-green', '#20B2AA', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(4, 'MediumPurple ', 'medium-purple', '#9370DB', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(5, 'Orchid', 'orchid', '#DA70D6', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(6, 'RebeccaPurple ', 'rebecca-purple', '#663399', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(7, 'Red', 'red', '#e80000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(8, 'SlateGray', 'slate-gray', '#2A3F54', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(9, 'Maroon', 'maroon', '#800000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(10, 'DarkOrange', 'dark-orange', '#FF8C00', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(11, 'DeepPink', 'deep-pink', '#FF1493', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(12, 'LimeGreen', 'lime-green', '#32CD32', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cheque_no` varchar(100) CHARACTER SET utf8 NOT NULL,
  `transaction_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `payment_date` date NOT NULL,
  `pum_first_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pum_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pum_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `stripe_card_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Table structure for table `transport_members`
--

CREATE TABLE IF NOT EXISTS `transport_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `reset_key` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= Active, 0 = InActive',
  `last_logged_in` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `password`, `temp_password`, `email`, `reset_key`, `status`, `last_logged_in`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2Nw==', 'superadmin@gsms.com', '', 1, '2018-02-25 03:21:33', '2013-11-15 20:33:03', '2018-01-13 10:51:12', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 NOT NULL,
  `driver` varchar(100) CHARACTER SET utf8 NOT NULL,
  `license` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(20) CHARACTER SET utf8 NOT NULL,
  `is_allocated` tinyint(1) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `coming_from` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `reason` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_heads`
--
ALTER TABLE `income_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_emails`
--
ALTER TABLE `mark_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_smses`
--
ALTER TABLE `mark_smses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_relationships`
--
ALTER TABLE `message_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_messages`
--
ALTER TABLE `text_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hostel_members`
--
ALTER TABLE `hostel_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `income_heads`
--
ALTER TABLE `income_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=637;
--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mark_emails`
--
ALTER TABLE `mark_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mark_smses`
--
ALTER TABLE `mark_smses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `message_relationships`
--
ALTER TABLE `message_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `text_messages`
--
ALTER TABLE `text_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transport_members`
--
ALTER TABLE `transport_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

