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
-- Indexes for dumped tables
--

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
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `title`, `deadline`, `note`, `assignment`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 0, 1, 2, 'Class Assignment', '2018-03-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'assignment-1518349834-sms.docx', 1, 1, 0, '2018-02-11 04:50:34', '0000-00-00 00:00:00'),
(2, 1, 0, 2, 2, 'Class Assignment', '2018-03-02', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'assignment-1518349990-sms.docx', 1, 1, 0, '2018-02-11 04:53:10', '0000-00-00 00:00:00'),
(3, 1, 0, 3, 2, 'Class Assignment', '2018-03-03', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.', 'assignment-1518351742-sms.docx', 1, 1, 0, '2018-02-11 05:22:22', '0000-00-00 00:00:00'),
(4, 1, 0, 8, 2, 'Class Assignment', '2019-03-04', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum.', 'assignment-1518351812-sms.docx', 1, 1, 1, '2018-02-11 05:23:32', '2018-02-11 05:37:03'),
(5, 2, 0, 11, 2, 'Class Assignment', '2019-03-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'assignment-1518351915-sms.docx', 1, 1, 0, '2018-02-11 05:25:15', '0000-00-00 00:00:00'),
(6, 2, 0, 12, 2, 'Class Assignment', '2019-03-02', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'assignment-1518351975-sms.docx', 1, 1, 0, '2018-02-11 05:26:15', '0000-00-00 00:00:00'),
(7, 2, 0, 13, 2, 'Class Assignment', '2019-03-03', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 'assignment-1518352055-sms.docx', 1, 1, 0, '2018-02-11 05:27:35', '0000-00-00 00:00:00'),
(8, 2, 0, 15, 2, 'Class Assignment', '2019-03-05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'assignment-1518352110-sms.docx', 1, 1, 0, '2018-02-11 05:28:30', '0000-00-00 00:00:00'),
(9, 2, 0, 16, 2, 'Class Assignment', '2019-03-06', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'assignment-1518353029-sms.docx', 1, 1, 1, '2018-02-11 05:29:18', '2018-02-11 05:43:49'),
(10, 1, 0, 7, 2, 'Class Assignment', '2019-03-05', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'assignment-1518352201-sms.docx', 1, 1, 1, '2018-02-11 05:30:01', '2018-02-11 05:45:17');

-- --------------------------------------------------------

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
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `custom_id`, `title`, `isbn_no`, `edition`, `author`, `language`, `price`, `qty`, `cover`, `rack_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'BK00001', 'English', '101', 'First Edition Januar', 'MS Aulakh', 'English', '20.00', 119, 'book-1518368417-sms.jpg', '001', 1, '2018-02-11 10:00:17', '2018-02-11 10:06:18', 1, 1),
(2, 'BK00002', 'Mathematics', '102', 'First Edition Januar', 'K Kamyuka', 'English', '20.00', 150, 'book-1518368891-sms.jpg', '002', 1, '2018-02-11 10:08:11', '0000-00-00 00:00:00', 1, 0),
(3, 'BK00003', 'General Science', '103', 'Second  Edition Janu', 'E Lewis', 'English', '25.00', 98, 'book-1518369199-sms.jpg', '003', 1, '2018-02-11 10:13:19', '2018-02-11 10:27:47', 1, 1),
(4, 'BK00004', 'Religion', '104', 'Second  Edition Janu', 'Fran Wilson', 'English', '15.00', 50, 'book-1518369340-sms.jpg', '004', 1, '2018-02-11 10:15:40', '0000-00-00 00:00:00', 1, 0),
(5, 'BK00005', 'History', '105', 'First Edition Januar', 'Nicole Bolton', 'English', '15.00', 150, 'book-1518369494-sms.jpg', '005', 1, '2018-02-11 10:18:14', '0000-00-00 00:00:00', 1, 0),
(6, 'BK00006', 'Literature', '106', 'First Edition Januar', 'VAB Tewarie', 'English', '20.00', 100, 'book-1518369645-sms.jpg', '006', 1, '2018-02-11 10:20:45', '0000-00-00 00:00:00', 1, 0),
(7, 'BK00007', 'Political Science', '107', 'Second  Edition Janu', 'TN de Grooth', 'English', '25.00', 98, 'book-1518369956-sms.jpg', '007', 1, '2018-02-11 10:25:56', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `academic_year_id`, `library_member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `is_returned`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 9, 1, '2018-02-11', '2018-02-10', '0000-00-00', 0, 1, '2018-02-11 10:39:48', '0000-00-00 00:00:00', 1, 0),
(2, 2, 8, 5, '2018-02-11', '2018-02-10', '2018-04-14', 1, 1, '2018-02-11 10:40:29', '0000-00-00 00:00:00', 1, 0),
(3, 2, 7, 3, '2018-02-11', '2018-02-10', '0000-00-00', 0, 1, '2018-02-11 10:41:01', '0000-00-00 00:00:00', 1, 0),
(4, 2, 6, 3, '2018-02-11', '2018-02-10', '0000-00-00', 0, 1, '2018-02-11 10:41:46', '0000-00-00 00:00:00', 1, 0),
(5, 2, 5, 7, '2018-02-11', '2018-02-10', '0000-00-00', 0, 1, '2018-02-11 10:42:18', '0000-00-00 00:00:00', 1, 0),
(6, 2, 10, 7, '2018-04-14', '2018-03-30', '0000-00-00', 0, 1, '2018-04-14 04:23:10', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `top_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_left` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_middle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_right` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `main_text` text CHARACTER SET utf8,
  `footer_left` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_middle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_right` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `theme`, `top_title`, `sub_title_left`, `sub_title_middle`, `sub_title_right`, `main_text`, `footer_left`, `footer_middle`, `footer_right`, `background`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 'Testimonial', NULL, 'Windsor Park High School', NULL, 'TESTIMONIAL', NULL, 'By the present, I certified that [name], of [dob] years old, who lives in [present_address], being her/his guardian [guardian] , is a active student for this institution since [created_at]', 'Principal', '', 'Date', 'certificate-1523263960-sms.jpg', 1, 1, 1, '2018-03-18 02:41:42', '2018-04-13 02:27:56'),
(4, 'Transfer Certificate', NULL, 'Windsor Park High School', NULL, 'TESTIMONIAL', NULL, 'By the present, I certified that [name], of [dob] years old, who lives in [present_address], being her/his guardian [guardian] , is a active student for this institution since [created_at]', 'School Authority', 'Office Clark', 'Date', 'certificate-1523263996-sms.jpg', 1, 1, 1, '2018-03-18 02:46:56', '2018-04-09 02:53:16'),
(5, 'Completion Certificate', NULL, 'Windsor Park High Schooly', NULL, 'TESTIMONIAL', NULL, 'By the present, I certified that [name], of [dob] years old, who lives in [present_address], being her/his guardian [guardian] , is a active student for this institution since [created_at]', 'Principal', '', 'Date', 'certificate-1523264056-sms.jpg', 1, 1, 1, '2018-03-18 02:48:29', '2018-04-09 02:54:16'),
(6, 'General Certificate', NULL, 'Windsor Park High School', NULL, NULL, NULL, 'By the present, I certified that [name], of [dob] years old, who lives in [present_address], being her/his guardian [guardian] , is a active student for this institution since [created_at]', 'Principal', 'Office Clark', 'Date', 'certificate-1523264093-sms.jpg', 1, 1, 1, '2018-03-19 08:04:45', '2018-04-09 02:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numeric_name` int(11) NOT NULL,
  `monthly_tution_fee` double(10,2) NOT NULL,
  `admission_fee` double(10,2) NOT NULL,
  `exam_fee` double(10,2) NOT NULL,
  `certificate_fee` double(10,2) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `teacher_id`, `name`, `numeric_name`, `monthly_tution_fee`, `admission_fee`, `exam_fee`, `certificate_fee`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'One', 1, 200.00, 500.00, 200.00, 600.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 08:44:23', '2018-04-09 04:32:10', 1, 1),
(2, 2, 'Two', 2, 200.00, 500.00, 200.00, 1000.00, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 08:45:11', '2018-04-09 04:32:35', 1, 1),
(3, 3, 'Three', 3, 200.00, 500.00, 300.00, 1000.00, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ', 1, '2018-02-09 08:46:13', '2018-04-09 04:25:09', 1, 1),
(4, 4, 'Four', 4, 300.00, 800.00, 500.00, 1000.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 08:50:50', '2018-04-09 04:25:50', 1, 1),
(5, 5, 'Five', 5, 300.00, 1000.00, 800.00, 1200.00, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 08:53:33', '2018-04-09 04:26:33', 1, 1),
(6, 6, 'six', 6, 500.00, 1000.00, 800.00, 1200.00, 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum.', 1, '2018-02-09 08:55:00', '2018-04-09 04:27:23', 1, 1),
(7, 7, 'Seven', 7, 600.00, 1000.00, 1000.00, 1200.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 09:42:50', '2018-04-09 04:28:24', 1, 1),
(8, 8, 'Eight', 8, 600.00, 1000.00, 1200.00, 1500.00, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 09:43:49', '2018-04-09 04:29:13', 1, 1),
(9, 9, 'Nine', 9, 800.00, 1200.00, 1200.00, 1800.00, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ', 1, '2018-02-09 09:46:08', '2018-04-09 04:30:22', 1, 1),
(10, 11, 'Ten', 10, 800.00, 1500.00, 1800.00, 2000.00, 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum.', 1, '2018-02-09 09:47:20', '2018-04-13 02:30:07', 1, 1);

-- --------------------------------------------------------

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
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Accountant', 'Lorem Ipsum there are many variations of passages of available', 1, '2017-08-18 12:59:25', '2018-02-08 05:49:13', 0, 1),
(3, 'Marketing', 'Lorem Ipsum comes from sections 1.10.32', 1, '2017-09-21 10:09:15', '2018-02-08 05:50:45', 1, 1),
(4, 'Clark', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2017-09-21 10:09:37', '2018-02-08 05:52:12', 1, 1),
(5, 'Pion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, '2017-09-21 10:09:52', '2018-02-08 05:53:00', 1, 1),
(6, 'Office Assistant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2017-09-21 10:10:19', '2018-02-08 05:53:59', 1, 1),
(7, 'Servent', 'Lorem Ipsum comes from sections', 1, '2017-09-21 10:11:02', '2018-02-08 05:54:51', 1, 1),
(8, 'Librarian', 'Lorem Ipsum is not simply random text.', 1, '2017-09-21 10:11:53', '2018-02-08 05:55:39', 1, 1),
(9, 'Office Management', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2017-09-21 10:12:40', '2018-02-08 05:56:04', 1, 1);

-- --------------------------------------------------------

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
  `salary_grade_id` int(11) DEFAULT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
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
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `google_plus_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `designation_id`, `salary_grade_id`, `salary_type`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `other_info`, `is_view_on_web`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 9, 1, 'monthly', 'Super Admin', '123485697', '', '', 'male', 'a_positive', '', '1969-12-31', '1969-12-31', NULL, NULL, NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 1, '0000-00-00 00:00:00', '2018-04-09 03:01:21', 0, 1),
(2, 41, 1, 1, 'monthly', 'AC Agar', '123456789', '2215 Academy St Autaugaville, AL 38003', '2215 Academy St Autaugaville, AL 38003', 'male', 'a_negative', '', '1980-09-01', '2018-01-01', NULL, 'photo-1518097124-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 1, '2018-02-08 06:38:44', '2018-04-09 03:03:45', 1, 1),
(3, 42, 3, 3, 'hourly', 'PJ Cummins', '123789456', '2316 Academy St Autaugaville, AL 46053', '2316 Academy St Autaugaville, AL 46053', 'male', 'a_positive', '', '1969-12-31', '2018-02-02', NULL, 'photo-1518102709-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, 1, '2018-02-08 06:48:27', '2018-04-09 03:14:29', 1, 1),
(4, 43, 5, 4, 'hourly', 'F Behardien', '123654789', '313 County Road 15 Autaugaville, AL 56873', '313 County Road 15 Autaugaville, AL 56873', 'male', 'o_positive', '', '1989-02-01', '2018-02-01', NULL, 'photo-1518098916-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, 1, '2018-02-08 07:08:16', '2018-04-09 03:17:33', 1, 1),
(5, 44, 6, 2, 'monthly', 'Meg Lanning', '123456789', '5541 Fulton Dr Autaugaville, AL 86203', '5541 Fulton Dr Autaugaville, AL 86203', 'female', 'a_positive', '', '1999-02-08', '2018-02-05', NULL, 'photo-1518100630-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2018-02-08 07:35:38', '2018-04-09 03:08:18', 1, 1),
(6, 45, 4, 5, 'hourly', 'JM Bairstow', '123654789', '210 County Road 11 Autaugaville, AL 96053', '210 County Road 11 Autaugaville, AL 96053', 'male', 'a_negative', '', '1992-01-28', '2018-02-04', NULL, 'photo-1518101760-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2018-02-08 07:56:00', '2018-04-09 03:09:38', 1, 1),
(7, 46, 8, 4, 'hourly', 'CR Woakes', '123546789', '9614 Fulton Dr Autaugaville, FL 37003', '9614 Fulton Dr Autaugaville, FL 37003', 'male', 'b_negative', '', '1993-03-04', '2018-02-01', NULL, 'photo-1518105053-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, 1, '2018-02-08 08:50:53', '2018-04-15 05:32:04', 1, 46),
(8, 47, 7, 5, 'hourly', 'Lauren Cheatle', '123546879', '4408 Fulton Dr Autaugaville, FL 16363', '4408 Fulton Dr Autaugaville, FL 16363', 'female', 'a_negative', '', '1899-09-30', '2018-02-02', NULL, 'photo-1518105773-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2018-02-08 09:02:53', '2018-04-09 03:11:46', 1, 1),
(9, 48, 3, 3, 'hourly', 'Debbie Bampton', '123789654', '5168 Prather Rd Autaugaville, CO 43003', '5168 Prather Rd Autaugaville, CO 43003', 'female', 'b_positive', '', '1989-01-29', '2018-02-01', NULL, 'photo-1518107596-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2018-02-08 09:33:16', '2018-04-09 03:14:05', 1, 1),
(10, 49, 8, 4, 'hourly', 'WD Parnell', '123456987', '4820 County Road 76 Autaugaville, FL 15003', '4820 County Road 76 Autaugaville, FL 15003', 'male', 'o_negative', '', '1993-07-06', '2018-02-02', NULL, 'photo-1518108425-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin_url.com/', 'https://www.twitter_url.com/', 'https://www.google_plus_url.com/', 'https://www.instagram_url.com/', 'https://www.pinterest_url.com/', 'https://www.youtube_url.com/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, 1, '2018-02-08 09:47:05', '2018-04-09 03:15:23', 1, 1);

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
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `academic_year_id`, `month`, `year`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(2, 3, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(3, 4, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(4, 5, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(5, 6, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(6, 7, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(7, 8, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(8, 9, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0),
(9, 10, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-14 02:03:43', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 2, 101, 1, '2018-02-10 22:39:53', '2018-04-14 00:56:51', 1, 1),
(2, 2, 1, 1, 2, 102, 1, '2018-02-10 22:44:43', '2018-02-10 23:00:03', 1, 1),
(3, 3, 1, 1, 2, 103, 1, '2018-02-10 22:59:26', '2018-04-14 00:57:23', 1, 1),
(4, 4, 1, 1, 2, 104, 1, '2018-02-10 23:16:10', '0000-00-00 00:00:00', 1, 0),
(5, 5, 1, 1, 2, 105, 1, '2018-02-10 23:19:53', '0000-00-00 00:00:00', 1, 0),
(6, 6, 1, 11, 2, 106, 1, '2018-02-10 23:24:02', '2018-04-14 00:57:58', 1, 1),
(7, 7, 1, 11, 2, 107, 1, '2018-02-10 23:28:14', '2018-04-14 00:58:12', 1, 1),
(8, 8, 1, 11, 2, 108, 1, '2018-02-11 02:48:59', '0000-00-00 00:00:00', 1, 0),
(9, 9, 1, 11, 2, 109, 1, '2018-02-11 02:53:50', '0000-00-00 00:00:00', 1, 0),
(10, 10, 1, 11, 2, 110, 1, '2018-02-11 03:00:55', '0000-00-00 00:00:00', 1, 0),
(12, 12, 2, 2, 2, 201, 1, '2018-02-11 04:03:27', '2018-04-14 00:59:32', 1, 1),
(13, 13, 2, 2, 2, 202, 1, '2018-02-11 04:07:37', '0000-00-00 00:00:00', 1, 0),
(14, 14, 2, 2, 2, 203, 1, '2018-02-11 04:11:10', '0000-00-00 00:00:00', 1, 0),
(15, 15, 2, 2, 2, 204, 1, '2018-02-11 04:14:38', '2018-04-14 01:00:01', 1, 1),
(16, 16, 2, 2, 2, 205, 1, '2018-02-11 04:16:26', '2018-04-14 01:00:38', 1, 1),
(17, 17, 3, 3, 2, 301, 1, '2018-02-15 12:00:11', '2018-04-14 01:01:26', 1, 1),
(18, 18, 3, 3, 2, 302, 1, '2018-02-15 12:03:04', '0000-00-00 00:00:00', 1, 0),
(19, 19, 3, 3, 2, 303, 1, '2018-02-15 13:28:53', '0000-00-00 00:00:00', 1, 0),
(20, 20, 3, 3, 2, 304, 1, '2018-02-15 13:39:19', '2018-04-14 01:01:43', 1, 1),
(21, 21, 3, 3, 2, 305, 1, '2018-02-15 13:43:34', '2018-04-14 01:02:07', 1, 1),
(22, 22, 3, 14, 2, 306, 1, '2018-02-17 13:00:25', '0000-00-00 00:00:00', 1, 0),
(23, 23, 3, 14, 2, 307, 1, '2018-02-17 13:07:33', '0000-00-00 00:00:00', 1, 0),
(24, 24, 4, 4, 2, 401, 1, '2018-02-17 13:16:59', '0000-00-00 00:00:00', 1, 0),
(25, 25, 4, 4, 2, 402, 1, '2018-02-18 07:11:18', '2018-04-14 01:04:25', 1, 1),
(26, 26, 4, 4, 2, 403, 1, '2018-02-18 07:18:36', '0000-00-00 00:00:00', 1, 0),
(27, 27, 4, 15, 2, 404, 1, '2018-02-18 09:14:32', '2018-04-14 01:03:52', 1, 1),
(28, 28, 4, 15, 2, 405, 1, '2018-02-18 09:20:26', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `role_id`, `title`, `event_place`, `event_from`, `event_to`, `image`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 4, 'Play Football', 'School Playground', '2018-03-01', '2018-03-10', 'event-1518629487-sms.jpg', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-14 10:27:45', '2018-04-13 07:34:59', 1, 1),
(2, 4, 'Cricket', 'School Playground', '2018-02-20', '2018-03-02', 'event-1518630000-sms.jpg', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-14 10:36:48', '2018-04-13 07:35:42', 1, 1),
(3, 0, 'School Picnic', 'Mystic Seaport', '2018-03-01', '2018-03-03', 'event-1518630610-sms.jpg', 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua, jotka ovat vasta aluillaan.', 1, '2018-02-14 10:50:10', '2018-04-13 07:40:56', 1, 1),
(4, 0, 'Study Tour', 'Nehantic State Forest', '2018-07-16', '2018-07-22', 'event-1518631935-sms.jpg', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-14 11:03:43', '2018-04-13 07:44:29', 1, 1),
(5, 4, 'Cultural Program', 'School Playground', '2018-03-06', '2018-03-08', 'event-1523282273-sms.jpg', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-14 12:01:58', '2018-04-13 07:45:10', 1, 1),
(6, 0, 'School Conference', 'School Playground', '2018-05-13', '2018-05-15', 'event-1523282168-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2018-04-09 07:56:08', '2018-04-13 07:33:28', 1, 1),
(7, 4, 'School Conference For Student', 'School Playground', '2018-04-12', '2018-04-12', 'event-1523282738-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2018-04-09 07:58:55', '2018-04-13 07:46:56', 1, 1),
(8, 5, 'School Conference For Teacher', 'School Playground', '2018-06-13', '2018-06-13', 'event-1523282686-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2018-04-09 08:04:13', '2018-04-13 07:46:32', 1, 1),
(9, 0, 'Car boot sale', 'Mystic Seaport', '2018-08-12', '2018-08-20', 'event-1523282852-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2018-04-09 08:07:32', '2018-04-13 07:49:26', 1, 1),
(10, 0, 'Consumer Show', 'Nehantic State Forest', '2018-09-19', '2018-09-23', 'event-1523282950-sms.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 1, '2018-04-09 08:09:10', '2018-04-13 07:50:38', 1, 1);

-- --------------------------------------------------------

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
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `academic_year_id`, `title`, `start_date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 'First Term', '2018-05-01', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 05:56:54', '0000-00-00 00:00:00', 1, 0),
(2, 2, 'Second Term', '2018-11-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 1, '2018-02-11 06:00:33', '0000-00-00 00:00:00', 1, 0),
(3, 2, 'Final Term', '2018-12-01', 'Lorem Ipsum has been the industry''s standard dummy', 1, '2018-02-11 06:02:50', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attendances`
--

INSERT INTO `exam_attendances` (`id`, `exam_id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `student_id`, `is_attend`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 2, 1, '1', 1, '2018-02-11 08:20:03', '2018-04-15 02:13:38', 1, 74),
(2, 1, 1, 1, 1, 2, 2, '1', 1, '2018-02-11 08:20:03', '2018-02-11 08:29:55', 1, 1),
(3, 1, 1, 1, 1, 2, 3, '1', 1, '2018-02-11 08:20:03', '2018-02-11 08:29:55', 1, 1),
(4, 1, 1, 1, 1, 2, 4, '1', 1, '2018-02-11 08:20:03', '2018-02-11 08:29:55', 1, 1),
(5, 1, 1, 1, 1, 2, 5, '1', 1, '2018-02-11 08:20:03', '2018-02-11 08:29:55', 1, 1),
(6, 1, 1, 11, 1, 2, 6, '0', 1, '2018-02-11 08:20:36', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 11, 1, 2, 7, '0', 1, '2018-02-11 08:20:36', '0000-00-00 00:00:00', 1, 0),
(8, 1, 1, 11, 1, 2, 8, '0', 1, '2018-02-11 08:20:36', '0000-00-00 00:00:00', 1, 0),
(9, 1, 1, 11, 1, 2, 9, '0', 1, '2018-02-11 08:20:36', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 11, 1, 2, 10, '0', 1, '2018-02-11 08:20:36', '0000-00-00 00:00:00', 1, 0),
(11, 1, 1, 11, 2, 2, 6, '0', 1, '2018-02-11 08:20:52', '2018-02-11 08:21:12', 1, 1),
(12, 1, 1, 11, 2, 2, 7, '0', 1, '2018-02-11 08:20:52', '2018-02-11 08:21:12', 1, 1),
(13, 1, 1, 11, 2, 2, 8, '0', 1, '2018-02-11 08:20:52', '2018-02-11 08:21:12', 1, 1),
(14, 1, 1, 11, 2, 2, 9, '0', 1, '2018-02-11 08:20:52', '2018-02-11 08:21:12', 1, 1),
(15, 1, 1, 11, 2, 2, 10, '0', 1, '2018-02-11 08:20:52', '2018-02-11 08:21:12', 1, 1),
(16, 1, 1, 1, 2, 2, 1, '1', 1, '2018-02-11 08:30:00', '2018-02-11 08:30:16', 1, 1),
(17, 1, 1, 1, 2, 2, 2, '1', 1, '2018-02-11 08:30:00', '2018-02-11 08:30:16', 1, 1),
(18, 1, 1, 1, 2, 2, 3, '1', 1, '2018-02-11 08:30:00', '2018-02-11 08:30:16', 1, 1),
(19, 1, 1, 1, 2, 2, 4, '1', 1, '2018-02-11 08:30:00', '2018-02-11 08:30:16', 1, 1),
(20, 1, 1, 1, 2, 2, 5, '1', 1, '2018-02-11 08:30:00', '2018-02-11 08:30:16', 1, 1),
(21, 1, 1, 1, 3, 2, 1, '0', 1, '2018-02-11 08:30:26', '2018-04-15 04:05:44', 1, 1),
(22, 1, 1, 1, 3, 2, 2, '0', 1, '2018-02-11 08:30:26', '2018-04-15 04:05:46', 1, 1),
(23, 1, 1, 1, 3, 2, 3, '0', 1, '2018-02-11 08:30:26', '0000-00-00 00:00:00', 1, 0),
(24, 1, 1, 1, 3, 2, 4, '0', 1, '2018-02-11 08:30:26', '2018-04-15 04:05:48', 1, 1),
(25, 1, 1, 1, 3, 2, 5, '0', 1, '2018-02-11 08:30:26', '0000-00-00 00:00:00', 1, 0),
(26, 1, 1, 1, 4, 2, 1, '0', 1, '2018-04-15 04:06:05', '0000-00-00 00:00:00', 1, 0),
(27, 1, 1, 1, 4, 2, 2, '0', 1, '2018-04-15 04:06:05', '0000-00-00 00:00:00', 1, 0),
(28, 1, 1, 1, 4, 2, 3, '0', 1, '2018-04-15 04:06:05', '0000-00-00 00:00:00', 1, 0),
(29, 1, 1, 1, 4, 2, 4, '0', 1, '2018-04-15 04:06:05', '0000-00-00 00:00:00', 1, 0),
(30, 1, 1, 1, 4, 2, 5, '0', 1, '2018-04-15 04:06:05', '0000-00-00 00:00:00', 1, 0),
(31, 1, 1, 1, 8, 2, 1, '0', 1, '2018-04-16 04:21:06', '0000-00-00 00:00:00', 50, 0),
(32, 1, 1, 1, 8, 2, 2, '0', 1, '2018-04-16 04:21:06', '0000-00-00 00:00:00', 50, 0),
(33, 1, 1, 1, 8, 2, 3, '0', 1, '2018-04-16 04:21:06', '0000-00-00 00:00:00', 50, 0),
(34, 1, 1, 1, 8, 2, 4, '0', 1, '2018-04-16 04:21:06', '0000-00-00 00:00:00', 50, 0),
(35, 1, 1, 1, 8, 2, 5, '0', 1, '2018-04-16 04:21:06', '0000-00-00 00:00:00', 50, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `exam_id`, `class_id`, `subject_id`, `academic_year_id`, `exam_date`, `start_time`, `end_time`, `room_no`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 2, '2018-05-03', '8:00 AM', '10:15 AM', '103', 'Lorem Ipsum has been the industry''s standard dummy', 1, '2018-02-11 06:06:46', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 2, 2, '2018-05-04', '8:00 AM', '10:15 AM', '103', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 06:09:49', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 3, 2, '2018-05-07', '8:00 AM', '10:15 AM', '103', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 06:11:16', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 5, 2, '2018-05-08', '8:00 AM', '10:15 AM', '103', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 06:13:14', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 6, 2, '2018-05-10', '8:00 AM', '10:15 AM', '104', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 06:15:07', '0000-00-00 00:00:00', 1, 0),
(6, 1, 1, 7, 2, '2018-05-12', '8:00 AM', '10:15 AM', '104', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-02-11 06:16:51', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 8, 2, '2018-05-14', '8:00 AM', '10:15 AM', '104', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 06:19:04', '0000-00-00 00:00:00', 1, 0),
(8, 1, 1, 9, 2, '2018-05-15', '8:00 AM', '10:15 AM', '104', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 06:21:23', '0000-00-00 00:00:00', 1, 0),
(9, 1, 1, 10, 2, '2018-05-17', '8:00 AM', '10:15 AM', '104', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 06:23:19', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 4, 2, '2018-05-21', '9:00 AM', '10:15 AM', '106', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-11 06:26:42', '0000-00-00 00:00:00', 1, 0),
(11, 1, 2, 11, 2, '2018-05-03', '8:00 AM', '10:15 AM', '101', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-11 06:31:23', '0000-00-00 00:00:00', 1, 0),
(12, 1, 2, 13, 2, '2018-05-04', '8:00 AM', '10:15 AM', '101', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 07:47:06', '0000-00-00 00:00:00', 1, 0),
(13, 1, 2, 15, 2, '2018-05-07', '8:00 AM', '10:15 AM', '101', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-11 07:48:19', '0000-00-00 00:00:00', 1, 0),
(14, 1, 2, 12, 2, '2018-05-09', '8:00 AM', '10:15 AM', '102', 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 07:50:23', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expenditures`
--

CREATE TABLE IF NOT EXISTS `expenditures` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_head_id` int(11) NOT NULL,
  `expenditure_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expenditure_via` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditures`
--

INSERT INTO `expenditures` (`id`, `academic_year_id`, `expenditure_head_id`, `expenditure_type`, `amount`, `expenditure_via`, `date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(2, 2, 5, NULL, '700.00', 'cash', '2018-02-28', 'Lorem Ipsum as their default model text', 1, '2018-02-14 00:43:07', '0000-00-00 00:00:00', 1, 0),
(3, 2, 4, NULL, '500.00', 'cheque', '2018-03-07', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2018-02-14 00:44:27', '0000-00-00 00:00:00', 1, 0),
(4, 2, 3, NULL, '800.00', 'paypal', '2018-03-13', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-14 00:44:52', '0000-00-00 00:00:00', 1, 0),
(10, 2, 2, NULL, '4000.00', 'cash', '0000-00-00', 'vvb', 0, '2018-03-29 02:13:42', '0000-00-00 00:00:00', 1, 0),
(21, 2, 1, 'salary', '8500.00', 'cash', '2018-03-30', 'cvcxvc', 1, '2018-03-30 06:05:42', '2018-03-30 06:07:57', 1, 1),
(24, 2, 1, 'salary', '30000.00', 'cheque', '2018-04-16', 'Yes', 1, '2018-04-16 04:37:34', '0000-00-00 00:00:00', 1, 0),
(19, 2, 1, 'salary', '7000.00', 'cash', '2018-03-30', 'cbcvbcv', 1, '2018-03-30 05:17:08', '0000-00-00 00:00:00', 1, 0),
(20, 2, 1, 'salary', '9000.00', 'cheque', '2018-03-30', 'cxbcbcvb', 1, '2018-03-30 05:21:13', '2018-03-30 05:38:52', 1, 1),
(22, 2, 1, 'salary', '30500.00', 'cash', '2018-04-13', 'test', 1, '2018-04-13 05:10:30', '0000-00-00 00:00:00', 1, 0),
(23, 2, 1, 'salary', '30000.00', 'cash', '2018-04-15', 'bmbgmbn', 1, '2018-04-15 08:44:06', '0000-00-00 00:00:00', 1, 0),
(25, 2, 1, 'salary', '32000.00', 'cheque', '2018-04-16', 'Yes', 1, '2018-04-16 04:56:15', '0000-00-00 00:00:00', 1, 0),
(29, 2, 1, 'salary', '33000.00', 'cheque', '2018-04-16', 'Yes', 1, '2018-04-16 05:07:42', '0000-00-00 00:00:00', 1, 0),
(27, 2, 1, 'salary', '30000.00', 'cheque', '2018-04-16', 'Yes', 1, '2018-04-16 05:03:48', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `expenditure_heads`
--

INSERT INTO `expenditure_heads` (`id`, `academic_year_id`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 0, 'Employee Salary', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-10 04:03:34', '2018-02-14 00:29:10', 1, 1),
(2, 0, 'Furnitures', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2018-02-14 00:28:53', '0000-00-00 00:00:00', 1, 0),
(3, 0, 'Electricity Charges', 'Lorem Ipsum as their default model text, and a search', 1, '2018-02-14 00:29:42', '2018-02-14 00:38:09', 1, 1),
(4, 0, 'Telephone Charges', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2018-02-14 00:37:57', '0000-00-00 00:00:00', 1, 0),
(5, 0, 'Office Expenses', 'Lorem Ipsum as their default model text', 1, '2018-02-14 00:38:36', '0000-00-00 00:00:00', 1, 0),
(6, 0, 'Supports Equipment', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-14 00:41:19', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `is_view_on_web` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `note`, `is_view_on_web`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'School Campus', 'gallery-cover-1523287119-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 1, '2018-03-22 07:18:39', '2018-04-09 09:18:39', 1, 1),
(2, 'Class Room', 'gallery-cover-1523287071-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 1, '2018-04-09 08:27:43', '2018-04-09 09:17:51', 1, 1),
(3, 'School Teacher And Student', 'gallery-cover-1523289487-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 1, '2018-04-09 09:58:07', '0000-00-00 00:00:00', 1, 0),
(4, 'School Courses', 'gallery-cover-1523290039-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 1, '2018-04-09 10:07:19', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `gallery_id`, `image`, `caption`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, '1-image-1523292930-sms.jpg', 'There are many variations of passages', 1, 1, 1, '2018-03-22 11:07:26', '2018-04-09 10:55:30'),
(2, 1, '1-image-1523292768-sms.jpg', 'Lorem Ipsum is simply dummy.', 1, 1, 1, '2018-04-09 10:34:28', '2018-04-09 10:52:48'),
(3, 1, '1-image-1523292839-sms.jpg', 'There are many variations of passages', 1, 1, 0, '2018-04-09 10:53:59', '0000-00-00 00:00:00'),
(4, 1, '1-image-1523292876-sms.jpg', 'Lorem Ipsum is simply dummy.', 1, 1, 0, '2018-04-09 10:54:36', '0000-00-00 00:00:00'),
(5, 3, '3-image-1523295000-sms.jpg', 'Lorem Ipsum as their default', 1, 1, 1, '2018-04-09 10:56:24', '2018-04-09 11:30:00'),
(6, 1, '1-image-1523293076-sms.jpg', 'Lorem Ipsum used since the 1500s', 1, 1, 0, '2018-04-09 10:57:56', '0000-00-00 00:00:00'),
(7, 1, '1-image-1523293157-sms.jpg', 'Lorem Ipsum is therefore always', 1, 1, 0, '2018-04-09 10:59:17', '0000-00-00 00:00:00'),
(8, 3, '3-image-1523295072-sms.jpg', 'Lorem Ipsum as their default', 1, 1, 1, '2018-04-09 11:03:03', '2018-04-09 11:31:12'),
(9, 2, '2-image-1523294514-sms.jpg', 'Lorem Ipsum is simply dummy.', 1, 1, 0, '2018-04-09 11:21:54', '0000-00-00 00:00:00'),
(10, 2, '2-image-1523294559-sms.jpg', 'Lorem Ipsum as their default', 1, 1, 0, '2018-04-09 11:22:39', '0000-00-00 00:00:00'),
(11, 2, '2-image-1523294614-sms.jpg', 'Lorem Ipsum used since the 1500s', 1, 1, 0, '2018-04-09 11:23:34', '0000-00-00 00:00:00'),
(12, 2, '2-image-1523294687-sms.jpg', 'There are many variations of passages', 1, 1, 0, '2018-04-09 11:24:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

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
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_to`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'A+', '5.00', 80, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 05:48:09', '0000-00-00 00:00:00', 1, 0),
(2, 'A', '4.00', 70, 79, 'Lorem Ipsum has been the industry''s standard dummy', 1, '2018-02-11 05:49:35', '0000-00-00 00:00:00', 1, 0),
(3, 'A-', '3.50', 60, 69, 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 05:50:38', '0000-00-00 00:00:00', 1, 0),
(4, 'B', '3.00', 50, 59, 'Lorem Ipsum is simply dummy text of the printing and typesetting .', 1, '2018-02-11 05:51:30', '0000-00-00 00:00:00', 1, 0),
(5, 'C', '2.50', 40, 49, 'Lorem Ipsum has been the industry''s standard dummy', 1, '2018-02-11 05:53:20', '0000-00-00 00:00:00', 1, 0),
(6, 'D', '2.00', 33, 39, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-11 05:54:06', '0000-00-00 00:00:00', 1, 0),
(7, 'F', '0.00', 0, 32, 'Lorem Ipsum is not simply random text.', 1, '2018-02-11 05:54:47', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `gsms_sessions`
--

INSERT INTO `gsms_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('g3ovj88djdk4o8qnl7np70450mng1ilr', '172.68.146.32', 1523880435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838303433333b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('hh2fkcpc0hl544je61m3hj55mcammi6e', '45.115.113.20', 1523884200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838333934373b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('omdq5jgnf678th6hqq9ktagimoassp9v', '45.115.113.20', 1523884608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838343431333b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('k1h823u6uc4t537h6eq0gmm6haens292', '172.68.146.32', 1523884459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838343435383b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('2clcs4ecr3ivj9lis23f047b37kujvvo', '45.115.113.20', 1523885110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838343835353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('fn672ogp078a74d1gbjer1vj41vkgi18', '45.115.113.20', 1523885410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838353135383b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('bqqpvj2pob7mrjrbr9f14ptvmrbk1vka', '172.68.146.32', 1523885345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838353334343b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('9humhbbqnh8h40lj0m3d6dpkf9sp4ft4', '172.68.146.32', 1523880240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333837393935373b69647c733a323a223634223b726f6c655f69647c733a313a2233223b656d61696c7c733a31373a22677561726469616e4067736d732e636f6d223b6e616d657c733a31323a22544b204d7573616b616e6461223b70686f6e657c733a393a22313233343536373839223b70686f746f7c733a32343a2270686f746f2d313531383238323432382d736d732e6a7067223b757365725f69647c733a323a223634223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('c4p13s5p2rkcdg5ldbpr7kvr3k6vjc6h', '172.68.146.32', 1523880083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838303038323b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('j8bfuh0fc0o0sjbordhe7e7tvav8bfq0', '172.68.146.32', 1523880625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838303334323b69647c733a323a223634223b726f6c655f69647c733a313a2233223b656d61696c7c733a31373a22677561726469616e4067736d732e636f6d223b6e616d657c733a31323a22544b204d7573616b616e6461223b70686f6e657c733a393a22313233343536373839223b70686f746f7c733a32343a2270686f746f2d313531383238323432382d736d732e6a7067223b757365725f69647c733a323a223634223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('eosf9husdvrt55r1an18vp8vh57jjt0q', '172.68.146.32', 1523880841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838303636313b69647c733a323a223634223b726f6c655f69647c733a313a2233223b656d61696c7c733a31373a22677561726469616e4067736d732e636f6d223b6e616d657c733a31323a22544b204d7573616b616e6461223b70686f6e657c733a393a22313233343536373839223b70686f746f7c733a32343a2270686f746f2d313531383238323432382d736d732e6a7067223b757365725f69647c733a323a223634223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('b0gupciqll2jfk5qdk3jnvtrj8qava4n', '172.68.146.32', 1523881157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838313135313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('ikipllqmno9a9l6l4cpth3hob89ois8k', '172.68.146.32', 1523881350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838313138383b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('15edhl1stvqupt0filbfpsgn6p775n01', '172.68.144.85', 1523879912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333837393634393b69647c733a323a223634223b726f6c655f69647c733a313a2233223b656d61696c7c733a31373a22677561726469616e4067736d732e636f6d223b6e616d657c733a31323a22544b204d7573616b616e6461223b70686f6e657c733a393a22313233343536373839223b70686f746f7c733a32343a2270686f746f2d313531383238323432382d736d732e6a7067223b757365725f69647c733a323a223634223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('jj7clp2m3k4maodu4j8up62ob1maru2f', '45.115.113.20', 1523883592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838333338393b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('s7db9u5be7cqucfmohnq2e493phdnbg5', '172.68.146.32', 1523883611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838333538353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('8d20h82bs1m1pebe7qck8qvh0pcprc4a', '172.68.144.85', 1523881738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838313638393b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('6a7vdrsksfqjj7050cp515fg8cn1rf4a', '172.68.146.32', 1523880079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333837383139313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('f4ma7j8ld1hkge0sqim8e9vbs3qv0qqf', '45.115.113.20', 1523886340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838363037323b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('9033qfp24of8c119569s8hgem7ke479n', '172.68.144.85', 1523886300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838363130353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('6aune1m3plc7v70be0n5vo0pguk95tbj', '45.115.113.20', 1523887424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838363337393b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('u2ragqui2q2o5ohcoleh7hfmdqsls7n5', '172.68.144.85', 1523886618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838363438353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('3uua53a16sr8i1r284tu56a1f3mjfhr8', '172.68.144.85', 1523887207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838373131333b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('bf0nbe2haujugi6gbjvgsgn5cpmsb7uj', '45.115.113.20', 1523887559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838373434313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('2domt0n4ho1tkpp4b1e0u0siq575is7d', '172.69.134.105', 1523888143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838383038313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('s3eecfg9q1dhjq3htk7gmfmr1ehen7bh', '172.69.134.105', 1523888735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838383635313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('0b7jautqh0citg37n4nsn2gntf1ubm07', '172.69.134.105', 1523888967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838383936353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('e0qa70pk1omronrdq2g4uaobu9h6f5au', '172.69.134.105', 1523889346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838393333333b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('pv6bd71jef9h1gf49evalcok4ab1june', '45.115.113.20', 1523896859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333839363835383b),
('4bs3sjut1v1acpu650m4571b0driui91', '172.68.146.32', 1523943551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333934333535313b),
('mfgcv4aq4qu2rt6b2racaclpvl30n157', '45.115.113.20', 1523886048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838353736303b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b),
('ps1570j69tvo7eksvtdhbnf4a2dkj1qh', '45.115.113.20', 1523885718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333838353435393b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a31393a22737570657261646d696e4067736d732e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32343a2257696e64736f72205061726b2048696768205363686f6f6c223b63757272656e63797c733a333a22757364223b63757272656e63795f73796d626f6c7c733a313a2224223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a31313a2232303137202d2032303138223b7363686f6f6c5f656d61696c7c733a31333a22696e666f4067736d732e636f6d223b7363686f6f6c5f70686f6e657c733a31303a2230313233343536373839223b);

-- --------------------------------------------------------

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
  `name_2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `relation_2` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phone_2` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `present_address_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `religion_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `photo_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info_2` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `user_id`, `name`, `relation`, `phone`, `profession`, `present_address`, `permanent_address`, `religion`, `photo`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 64, 'TK Musakanda', 'father', '123456789', 'Business', '3243 Hosea Ln Autaugaville, AL 63803', '3243 Hosea Ln Autaugaville, AL 63803', '', 'photo-1518282428-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 10:07:08', '0000-00-00 00:00:00', 1, 0),
(2, 65, 'DSK Madushanka', 'brother', '123654789', 'Employment', '21 E 207th St New York, NY 20329', '21 E 207th St New York, NY 20329', '', 'photo-1518282885-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-10 10:14:45', '0000-00-00 00:00:00', 1, 0),
(3, 66, 'Natalie Sciver', 'mother', '123589647', 'Housewife', '25801 E 31st Ave Watkins, CO 55137', '25801 E 31st Ave Watkins, CO 55137', '', 'photo-1518283300-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-10 10:21:40', '0000-00-00 00:00:00', 1, 0),
(4, 67, 'Carlos Ricardo Brathwaite', 'father', '123589647', 'Employment', '62 1st St Hamden, CT 8914', '62 1st St Hamden, CT 8914', '', 'photo-1518283751-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-02-10 10:29:11', '0000-00-00 00:00:00', 1, 0),
(5, 68, 'Nasir Javed', 'father', '123789654', 'Business', '47 1st St Hamden, CT 1516', '47 1st St Hamden, CT 1516', '', 'photo-1518284336-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 10:38:56', '0000-00-00 00:00:00', 1, 0),
(6, 69, 'Bismah Maroof', 'mother', '123478569', 'Employment', '91 1st St Hamden, CT 2814', '91 1st St Hamden, CT 2814', '', 'photo-1518285903-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, '2018-02-10 11:05:03', '0000-00-00 00:00:00', 1, 0),
(7, 70, 'Javeria Khan', 'sister', '123965478', 'Employment', '31 1st St Hamden, CT 9514', '31 1st St Hamden, CT 9514', '', 'photo-1518288573-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 11:49:33', '0000-00-00 00:00:00', 1, 0),
(8, 71, 'Mehmood Quaraishy', 'brother', '123987456', 'Farmer', '18 E 109th St New York, NY 32029', '18 E 109th St New York, NY 32029', '', 'photo-1518289057-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, '2018-02-10 11:57:37', '0000-00-00 00:00:00', 1, 0),
(9, 72, 'Zulfiqar Ali', 'uncle', '123587469', 'Business', '62 W 109th St New York, NY 21025', '62 W 109th St New York, NY 21025', '', 'photo-1518289311-sms.jpg', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum.', 1, '2018-02-10 12:01:51', '0000-00-00 00:00:00', 1, 0),
(10, 73, 'KC Brathwaite', 'father', '123587469', 'Farmer', '70 1st St Hamden, CT 6904', '70 1st St Hamden, CT 6904', '', 'photo-1518289563-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 12:06:03', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `title`, `date_from`, `date_to`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'The North Kingston Secondary & College Valentine''s Day', '2018-02-14', '2018-02-14', 'What is Lorem Ipsum\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-02-14 02:19:45', '2018-04-08 21:43:29', 1, 1),
(2, 'The Marco Polo Academy Spring Festival Eve', '2018-11-15', '2018-11-15', 'Why do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2018-02-14 02:20:36', '2018-04-13 08:59:00', 1, 1),
(3, 'The Heights Primary School Language Martyrs'' Day', '2018-02-21', '2018-02-25', 'What is Lorem Ipsum\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-02-14 02:21:46', '2018-04-08 21:49:49', 1, 1),
(4, 'The North Kingston Secondary & College Independence Day', '2018-03-26', '2018-03-26', 'Where can I get some\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '2018-02-14 02:25:45', '2018-04-08 21:45:52', 1, 1),
(5, 'The Marco Polo Academy National Day', '2018-03-10', '2018-03-15', 'Why do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2018-02-14 02:30:30', '2018-04-08 21:48:27', 1, 1),
(6, 'Martin Luther King Jr. Day', '2018-04-14', '2018-04-16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-04-09 05:14:33', '0000-00-00 00:00:00', 1, 0),
(7, 'Washington''s Birthday (Presidents'' Day)', '2018-02-18', '2018-02-21', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 1, '2018-04-09 05:16:01', '2018-04-13 08:57:12', 1, 1),
(8, 'Native American Heritage Day', '2018-04-18', '2018-04-26', 'Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, '2018-04-09 05:17:39', '0000-00-00 00:00:00', 1, 0),
(9, 'Indigenous People''s Day (aka Columbus Day)', '2018-10-11', '2018-10-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-04-09 05:21:25', '2018-04-13 08:58:02', 1, 1),
(10, 'District of Columbia Department of Human Resources Holidays', '2018-11-25', '2018-11-27', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form', 1, '2018-04-09 05:22:42', '2018-04-13 08:58:23', 1, 1);

-- --------------------------------------------------------

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
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `type`, `address`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Nibedika', 'girls', '8761 Dutch Island Cir  Autaugaville, AL 69003', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 10:09:15', '0000-00-00 00:00:00', 1, 0),
(2, 'Govt Pre Metric Boys Hostel', 'boys', '5763 Dutch Island Cir  Autaugaville, AL 26003', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 11:37:40', '0000-00-00 00:00:00', 1, 0),
(3, 'Nirmal Dham Hostel', 'boys', '2574 Dutch Island Cir  Autaugaville, AL 36633', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 11:43:50', '0000-00-00 00:00:00', 1, 0),
(4, 'Tejas Boys Hostel', 'boys', '9456 SW 136th Ave  Brooker, FL 25022', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum.', 1, '2018-02-13 11:46:44', '0000-00-00 00:00:00', 1, 0),
(5, 'Rokeya-Girls-Hostel', 'girls', '5656 SW 146th Ave Brooker, FL 78022', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 11:50:03', '0000-00-00 00:00:00', 1, 0),
(6, 'Sai Anjana', 'girls', '58900 SW 155th St  Brooker, FL 87922', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 11:55:52', '0000-00-00 00:00:00', 1, 0),
(7, 'Sathya Ladies Hostel', 'girls', '10302 SW 166th St  Brooker, FL 40522', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 11:59:10', '0000-00-00 00:00:00', 1, 0),
(8, 'Shree Balaji', 'boys', '10302 SW 166th St Brooker, FL 40522', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 12:01:32', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `hostel_members`
--

INSERT INTO `hostel_members` (`id`, `user_id`, `custom_member_id`, `hostel_id`, `room_id`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 74, 'HM00001', 2, 1, 1, '2018-02-14 01:09:24', '0000-00-00 00:00:00', 1, 0),
(2, 75, 'HM00002', 2, 2, 1, '2018-02-14 01:10:05', '0000-00-00 00:00:00', 1, 0),
(3, 77, 'HM00003', 1, 8, 1, '2018-02-14 01:11:05', '0000-00-00 00:00:00', 1, 0),
(4, 79, 'HM00004', 1, 7, 1, '2018-02-14 01:11:16', '0000-00-00 00:00:00', 1, 0),
(5, 76, 'HM00005', 3, 10, 1, '2018-02-14 01:25:06', '0000-00-00 00:00:00', 1, 0),
(6, 81, 'HM00006', 3, 11, 1, '2018-02-14 01:28:48', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `income_heads`
--

CREATE TABLE IF NOT EXISTS `income_heads` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_heads`
--

INSERT INTO `income_heads` (`id`, `academic_year_id`, `is_default`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 0, 1, 'admission_fee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 04:03:56', '0000-00-00 00:00:00', 1, 0),
(2, 0, 1, 'monthly_fee', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-02-10 04:04:38', '0000-00-00 00:00:00', 1, 0),
(3, 0, 1, 'exam_fee', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 1, '2018-02-10 04:05:17', '0000-00-00 00:00:00', 1, 0),
(4, 0, 1, 'certificate_fee', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested', 1, '2018-02-10 04:06:27', '0000-00-00 00:00:00', 1, 0),
(5, 0, 1, 'transport_fee', 'Lorem Ipsum comes from section', 1, '2018-02-10 04:08:09', '2018-02-10 04:14:05', 1, 1),
(6, 0, 1, 'hostel_fee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-04-01 03:59:10', '0000-00-00 00:00:00', 1, 0),
(7, 0, 0, 'Donation', 'The standard chunk of Lorem Ipsum used since the 1500', 1, '2018-04-01 04:11:37', '0000-00-00 00:00:00', 1, 0),
(8, 0, 0, 'Miscellanious', 'The standard chunk of Lorem Ipsum used since the 1500', 1, '2018-04-01 04:11:58', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL,
  `custom_invoice_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `invoice_type` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'academic, general',
  `is_applicable_discount` tinyint(1) DEFAULT '0',
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `gross_amount` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `paid_status` varchar(20) NOT NULL DEFAULT 'Unpaid',
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `custom_invoice_id`, `invoice_type`, `is_applicable_discount`, `academic_year_id`, `class_id`, `student_id`, `month`, `gross_amount`, `net_amount`, `discount`, `paid_status`, `date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(22, 'INV00022', 'general', 0, 2, 0, 0, NULL, 7000.00, 7000.00, '0.00', 'paid', '2018-04-01', 'New Test', 1, '2018-04-13 02:44:08', '0000-00-00 00:00:00', 1, 0),
(21, 'INV00021', 'general', 0, 2, 0, 0, NULL, 500.00, 500.00, '0.00', 'paid', '2018-04-02', 'Test', 1, '2018-04-13 02:43:25', '0000-00-00 00:00:00', 1, 0),
(24, 'INV00023', 'academic', 0, 2, 1, 8, NULL, 200.00, 200.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 04:36:59', '0000-00-00 00:00:00', 1, 0),
(28, 'INV00028', 'academic', 0, 2, 1, 7, NULL, 500.00, 500.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:45:47', '0000-00-00 00:00:00', 1, 0),
(29, 'INV00029', 'academic', 0, 2, 2, 12, NULL, 200.00, 200.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:47:03', '0000-00-00 00:00:00', 1, 0),
(17, 'INV00017', 'academic', 0, 2, 2, 14, NULL, 5700.00, 5700.00, '0.00', 'unpaid', '2018-04-05', '', 1, '2018-04-05 00:30:50', '0000-00-00 00:00:00', 1, 0),
(16, 'INV00016', 'academic', 0, 2, 2, 13, NULL, 3800.00, 3800.00, '0.00', 'unpaid', '2018-04-05', '', 1, '2018-04-05 00:30:50', '0000-00-00 00:00:00', 1, 0),
(15, 'INV00010', 'academic', 0, 2, 2, 12, NULL, 1900.00, 1900.00, '0.00', 'unpaid', '2018-04-05', '', 1, '2018-04-05 00:30:50', '0000-00-00 00:00:00', 1, 0),
(18, 'INV00018', 'academic', 0, 2, 2, 15, NULL, 7600.00, 7600.00, '0.00', 'unpaid', '2018-04-05', '', 1, '2018-04-05 00:30:50', '0000-00-00 00:00:00', 1, 0),
(19, 'INV00019', 'academic', 0, 2, 2, 16, NULL, 9500.00, 9500.00, '0.00', 'unpaid', '2018-04-05', '', 1, '2018-04-05 00:30:50', '0000-00-00 00:00:00', 1, 0),
(20, 'INV00020', 'general', 0, 2, 0, 0, NULL, 5000.00, 5000.00, '0.00', 'paid', '2018-03-02', 'xcbcbc', 1, '2018-04-05 02:33:57', '0000-00-00 00:00:00', 1, 0),
(25, 'INV00025', 'academic', 0, 2, 1, 6, NULL, 200.00, 200.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:42:00', '0000-00-00 00:00:00', 1, 0),
(26, 'INV00026', 'academic', 0, 2, 1, 5, NULL, 500.00, 500.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:43:31', '0000-00-00 00:00:00', 1, 0),
(27, 'INV00027', 'academic', 0, 2, 2, 13, NULL, 500.00, 500.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:44:45', '0000-00-00 00:00:00', 1, 0),
(30, 'INV00030', 'academic', 0, 2, 1, 10, NULL, 500.00, 500.00, '0.00', 'unpaid', '2018-04-13', '', 1, '2018-04-13 05:57:41', '0000-00-00 00:00:00', 1, 0),
(31, 'INV00031', 'academic', 0, 2, 1, 6, NULL, 500.00, 500.00, '0.00', 'paid', '2018-04-13', '', 1, '2018-04-13 05:59:12', '2018-04-13 06:12:56', 1, 0),
(32, 'INV00032', 'academic', 0, 2, 1, 1, NULL, 9300.00, 7440.00, '1860.00', 'partial', '2018-04-16', '', 1, '2018-04-16 04:33:32', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_logs`
--

CREATE TABLE IF NOT EXISTS `invoice_logs` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_logs`
--

INSERT INTO `invoice_logs` (`id`, `invoice_id`, `income_head_id`, `amount`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(40, 19, 1, 500.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(39, 19, 2, 300.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(38, 19, 3, 100.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(37, 19, 4, 1000.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(36, 18, 1, 500.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(35, 18, 2, 300.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(34, 18, 3, 100.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(33, 18, 4, 1000.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(32, 17, 1, 500.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(31, 17, 2, 300.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(30, 17, 3, 100.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(29, 17, 4, 1000.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(28, 16, 1, 500.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(27, 16, 2, 300.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(26, 16, 3, 100.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(25, 16, 4, 1000.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(24, 15, 1, 500.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(23, 15, 2, 300.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(22, 15, 3, 100.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(21, 15, 4, 1000.00, 1, 1, 0, '2018-04-05 00:30:50', '0000-00-00 00:00:00'),
(41, 20, 7, 5000.00, 1, 1, 0, '2018-04-05 02:33:57', '0000-00-00 00:00:00'),
(42, 21, 8, 500.00, 1, 1, 0, '2018-04-13 02:43:25', '0000-00-00 00:00:00'),
(43, 22, 8, 7000.00, 1, 1, 0, '2018-04-13 02:44:08', '0000-00-00 00:00:00'),
(44, 24, 3, 200.00, 1, 1, 0, '2018-04-13 04:36:59', '0000-00-00 00:00:00'),
(45, 25, 3, 200.00, 1, 1, 0, '2018-04-13 05:42:00', '0000-00-00 00:00:00'),
(46, 26, 1, 500.00, 1, 1, 0, '2018-04-13 05:43:31', '0000-00-00 00:00:00'),
(47, 27, 1, 500.00, 1, 1, 0, '2018-04-13 05:44:45', '0000-00-00 00:00:00'),
(48, 28, 1, 500.00, 1, 1, 0, '2018-04-13 05:45:47', '0000-00-00 00:00:00'),
(49, 29, 2, 200.00, 1, 1, 0, '2018-04-13 05:47:03', '0000-00-00 00:00:00'),
(50, 30, 1, 500.00, 1, 1, 0, '2018-04-13 05:57:41', '0000-00-00 00:00:00'),
(51, 31, 1, 500.00, 1, 1, 0, '2018-04-13 05:59:12', '0000-00-00 00:00:00'),
(52, 32, 6, 8000.00, 1, 1, 0, '2018-04-16 04:33:32', '0000-00-00 00:00:00'),
(53, 32, 4, 600.00, 1, 1, 0, '2018-04-16 04:33:32', '0000-00-00 00:00:00'),
(54, 32, 2, 200.00, 1, 1, 0, '2018-04-16 04:33:32', '0000-00-00 00:00:00'),
(55, 32, 1, 500.00, 1, 1, 0, '2018-04-16 04:33:32', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `user_id`, `custom_member_id`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(5, 81, 'LM00005', 1, '2018-02-11 10:35:31', '0000-00-00 00:00:00', 1, 0),
(2, 75, 'LM00002', 1, '2018-02-11 10:33:24', '0000-00-00 00:00:00', 1, 0),
(3, 76, 'LM00003', 1, '2018-02-11 10:33:28', '0000-00-00 00:00:00', 1, 0),
(4, 77, 'LM00004', 1, '2018-02-11 10:33:31', '0000-00-00 00:00:00', 1, 0),
(6, 79, 'LM00006', 1, '2018-02-11 10:35:43', '0000-00-00 00:00:00', 1, 0),
(7, 86, 'LM00007', 1, '2018-02-11 10:35:55', '0000-00-00 00:00:00', 1, 0),
(8, 88, 'LM00008', 1, '2018-02-11 10:36:02', '0000-00-00 00:00:00', 1, 0),
(9, 83, 'LM00009', 1, '2018-02-11 10:37:11', '0000-00-00 00:00:00', 1, 0),
(10, 74, 'LM00010', 1, '2018-04-14 04:22:24', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `exam_id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `student_id`, `grade_id`, `exam_mark`, `obtain_mark`, `remark`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 2, 1, 1, 100, 80, '', 1, '2018-04-15 04:23:23', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 1, 1, 2, 2, 1, 100, 90, '', 1, '2018-04-15 04:23:23', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 1, 1, 2, 3, 2, 100, 70, '', 1, '2018-04-15 04:23:23', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 1, 1, 2, 4, 3, 100, 60, '', 1, '2018-04-15 04:23:23', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 1, 1, 2, 5, 1, 100, 85, '', 1, '2018-04-15 04:23:23', '0000-00-00 00:00:00', 1, 0),
(6, 1, 1, 11, 1, 2, 6, 0, 0, 0, NULL, 1, '2018-02-11 08:27:30', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 11, 1, 2, 7, 0, 0, 0, NULL, 1, '2018-02-11 08:27:30', '0000-00-00 00:00:00', 1, 0),
(8, 1, 1, 11, 1, 2, 8, 0, 0, 0, NULL, 1, '2018-02-11 08:27:30', '0000-00-00 00:00:00', 1, 0),
(9, 1, 1, 11, 1, 2, 9, 0, 0, 0, NULL, 1, '2018-02-11 08:27:30', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 11, 1, 2, 10, 0, 0, 0, NULL, 1, '2018-02-11 08:27:30', '0000-00-00 00:00:00', 1, 0),
(11, 1, 1, 1, 2, 2, 1, 1, 100, 85, '', 1, '2018-04-14 03:15:47', '0000-00-00 00:00:00', 1, 0),
(12, 1, 1, 1, 2, 2, 2, 1, 100, 80, '', 1, '2018-04-14 03:15:47', '0000-00-00 00:00:00', 1, 0),
(13, 1, 1, 1, 2, 2, 3, 2, 100, 70, '', 1, '2018-04-14 03:15:47', '0000-00-00 00:00:00', 1, 0),
(14, 1, 1, 1, 2, 2, 4, 1, 100, 80, '', 1, '2018-04-14 03:15:47', '0000-00-00 00:00:00', 1, 0),
(15, 1, 1, 1, 2, 2, 5, 2, 100, 75, '', 1, '2018-04-14 03:15:47', '0000-00-00 00:00:00', 1, 0),
(16, 1, 1, 1, 3, 2, 1, 7, 100, 0, '', 1, '2018-04-15 03:55:14', '0000-00-00 00:00:00', 74, 0),
(17, 1, 1, 1, 3, 2, 2, 7, 100, 0, '', 1, '2018-04-15 03:55:14', '0000-00-00 00:00:00', 74, 0),
(18, 1, 1, 1, 3, 2, 3, 7, 100, 0, '', 1, '2018-04-15 03:55:14', '0000-00-00 00:00:00', 74, 0),
(19, 1, 1, 1, 3, 2, 4, 7, 100, 0, '', 1, '2018-04-15 03:55:14', '0000-00-00 00:00:00', 74, 0),
(20, 1, 1, 1, 3, 2, 5, 7, 100, 0, '', 1, '2018-04-15 03:55:14', '0000-00-00 00:00:00', 74, 0),
(21, 1, 1, 1, 4, 2, 1, 7, 100, 0, '', 1, '2018-04-15 03:56:01', '0000-00-00 00:00:00', 74, 0),
(22, 1, 1, 1, 4, 2, 2, 7, 100, 0, '', 1, '2018-04-15 03:56:01', '0000-00-00 00:00:00', 74, 0),
(23, 1, 1, 1, 4, 2, 3, 7, 100, 0, '', 1, '2018-04-15 03:56:01', '0000-00-00 00:00:00', 74, 0),
(24, 1, 1, 1, 4, 2, 4, 7, 100, 0, '', 1, '2018-04-15 03:56:01', '0000-00-00 00:00:00', 74, 0),
(25, 1, 1, 1, 4, 2, 5, 7, 100, 0, '', 1, '2018-04-15 03:56:01', '0000-00-00 00:00:00', 74, 0),
(26, 1, 1, 11, 2, 2, 6, 0, 0, 0, NULL, 1, '2018-04-15 03:15:08', '0000-00-00 00:00:00', 74, 0),
(27, 1, 1, 11, 2, 2, 7, 0, 0, 0, NULL, 1, '2018-04-15 03:15:08', '0000-00-00 00:00:00', 74, 0),
(28, 1, 1, 11, 2, 2, 8, 0, 0, 0, NULL, 1, '2018-04-15 03:15:08', '0000-00-00 00:00:00', 74, 0),
(29, 1, 1, 11, 2, 2, 9, 0, 0, 0, NULL, 1, '2018-04-15 03:15:08', '0000-00-00 00:00:00', 74, 0),
(30, 1, 1, 11, 2, 2, 10, 0, 0, 0, NULL, 1, '2018-04-15 03:15:08', '0000-00-00 00:00:00', 74, 0),
(31, 1, 1, 11, 4, 2, 6, 0, 0, 0, NULL, 1, '2018-04-15 03:43:20', '0000-00-00 00:00:00', 74, 0),
(32, 1, 1, 11, 4, 2, 7, 0, 0, 0, NULL, 1, '2018-04-15 03:43:20', '0000-00-00 00:00:00', 74, 0),
(33, 1, 1, 11, 4, 2, 8, 0, 0, 0, NULL, 1, '2018-04-15 03:43:20', '0000-00-00 00:00:00', 74, 0),
(34, 1, 1, 11, 4, 2, 9, 0, 0, 0, NULL, 1, '2018-04-15 03:43:20', '0000-00-00 00:00:00', 74, 0),
(35, 1, 1, 11, 4, 2, 10, 0, 0, 0, NULL, 1, '2018-04-15 03:43:20', '0000-00-00 00:00:00', 74, 0),
(36, 1, 1, 11, 3, 2, 6, 0, 0, 0, NULL, 1, '2018-04-15 03:44:48', '0000-00-00 00:00:00', 74, 0),
(37, 1, 1, 11, 3, 2, 7, 0, 0, 0, NULL, 1, '2018-04-15 03:44:48', '0000-00-00 00:00:00', 74, 0),
(38, 1, 1, 11, 3, 2, 8, 0, 0, 0, NULL, 1, '2018-04-15 03:44:48', '0000-00-00 00:00:00', 74, 0),
(39, 1, 1, 11, 3, 2, 9, 0, 0, 0, NULL, 1, '2018-04-15 03:44:48', '0000-00-00 00:00:00', 74, 0),
(40, 1, 1, 11, 3, 2, 10, 0, 0, 0, NULL, 1, '2018-04-15 03:44:48', '0000-00-00 00:00:00', 74, 0),
(41, 1, 1, 1, 5, 2, 1, 0, 0, 0, NULL, 1, '2018-04-15 04:02:40', '0000-00-00 00:00:00', 1, 0),
(42, 1, 1, 1, 5, 2, 2, 0, 0, 0, NULL, 1, '2018-04-15 04:02:40', '0000-00-00 00:00:00', 1, 0),
(43, 1, 1, 1, 5, 2, 3, 0, 0, 0, NULL, 1, '2018-04-15 04:02:40', '0000-00-00 00:00:00', 1, 0),
(44, 1, 1, 1, 5, 2, 4, 0, 0, 0, NULL, 1, '2018-04-15 04:02:40', '0000-00-00 00:00:00', 1, 0),
(45, 1, 1, 1, 5, 2, 5, 0, 0, 0, NULL, 1, '2018-04-15 04:02:40', '0000-00-00 00:00:00', 1, 0),
(46, 1, 1, 1, 6, 2, 1, 0, 0, 0, NULL, 1, '2018-04-15 04:30:30', '0000-00-00 00:00:00', 1, 0),
(47, 1, 1, 1, 6, 2, 2, 0, 0, 0, NULL, 1, '2018-04-15 04:30:30', '0000-00-00 00:00:00', 1, 0),
(48, 1, 1, 1, 6, 2, 3, 0, 0, 0, NULL, 1, '2018-04-15 04:30:30', '0000-00-00 00:00:00', 1, 0),
(49, 1, 1, 1, 6, 2, 4, 0, 0, 0, NULL, 1, '2018-04-15 04:30:30', '0000-00-00 00:00:00', 1, 0),
(50, 1, 1, 1, 6, 2, 5, 0, 0, 0, NULL, 1, '2018-04-15 04:30:30', '0000-00-00 00:00:00', 1, 0),
(51, 2, 1, 1, 1, 2, 1, 0, 0, 0, NULL, 1, '2018-04-15 04:47:00', '0000-00-00 00:00:00', 1, 0),
(52, 2, 1, 1, 1, 2, 2, 0, 0, 0, NULL, 1, '2018-04-15 04:47:00', '0000-00-00 00:00:00', 1, 0),
(53, 2, 1, 1, 1, 2, 3, 0, 0, 0, NULL, 1, '2018-04-15 04:47:00', '0000-00-00 00:00:00', 1, 0),
(54, 2, 1, 1, 1, 2, 4, 0, 0, 0, NULL, 1, '2018-04-15 04:47:00', '0000-00-00 00:00:00', 1, 0),
(55, 2, 1, 1, 1, 2, 5, 0, 0, 0, NULL, 1, '2018-04-15 04:47:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `mark_emails`
--

INSERT INTO `mark_emails` (`id`, `exam_id`, `class_id`, `receiver_role_id`, `academic_year_id`, `sender_role_id`, `subject`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 3, 2, 2, 'First Term Exam Marks', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-14 04:01:26', '0000-00-00 00:00:00', 44, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `mark_smses`
--

INSERT INTO `mark_smses` (`id`, `exam_id`, `class_id`, `receiver_role_id`, `sms_gateway`, `academic_year_id`, `sender_role_id`, `status`, `created_at`, `created_by`) VALUES
(1, 1, 1, 3, 'twilio', 2, 2, 1, '2018-02-14 04:04:03', 44);

-- --------------------------------------------------------

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
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `academic_year_id`, `subject`, `body`, `attachment`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', 1, '2018-02-14 01:13:19', '0000-00-00 00:00:00', 1, 0),
(2, 2, ' Lorem Ipsum has been the industry''s standard', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', 1, '2018-02-14 01:14:24', '0000-00-00 00:00:00', 1, 0),
(3, 2, 'There are many variations of passages of Lorem Ipsum', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.', '', 1, '2018-02-14 02:37:20', '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Contrary to popular belief, Lorem Ipsum', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.', '', 1, '2018-02-14 02:38:22', '0000-00-00 00:00:00', 1, 0),
(5, 2, 'Contrary to popular belief, Lorem Ipsum is not simply random', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage', '', 1, '2018-02-14 02:56:13', '0000-00-00 00:00:00', 44, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `message_relationships`
--

INSERT INTO `message_relationships` (`id`, `message_id`, `sender_id`, `receiver_id`, `owner_id`, `role_id`, `is_trash`, `is_draft`, `is_favorite`, `is_read`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 44, 1, 1, 0, 0, 0, 0, 1, '2018-02-14 01:13:19', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 44, 44, 2, 0, 0, 0, 0, 1, '2018-02-14 01:13:19', '0000-00-00 00:00:00', 1, 0),
(3, 2, 1, 64, 1, 1, 0, 0, 0, 0, 1, '2018-02-14 01:14:25', '0000-00-00 00:00:00', 1, 0),
(4, 2, 1, 64, 64, 3, 0, 0, 0, 0, 1, '2018-02-14 01:14:25', '0000-00-00 00:00:00', 1, 0),
(5, 3, 1, 43, 1, 9, 0, 1, 0, 0, 1, '2018-02-14 02:37:20', '0000-00-00 00:00:00', 1, 0),
(6, 4, 1, 49, 1, 1, 1, 0, 0, 0, 1, '2018-02-14 02:38:22', '0000-00-00 00:00:00', 1, 0),
(7, 4, 1, 49, 49, 7, 0, 0, 0, 0, 1, '2018-02-14 02:38:22', '0000-00-00 00:00:00', 1, 0),
(8, 5, 44, 1, 44, 2, 0, 0, 0, 0, 1, '2018-02-14 02:56:13', '0000-00-00 00:00:00', 44, 0),
(9, 5, 44, 1, 1, 1, 0, 0, 0, 0, 1, '2018-02-14 02:56:13', '0000-00-00 00:00:00', 44, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
(13, 'Exam Mark', 'exam', 1, '2017-12-14 00:00:00', '2017-12-14 09:07:46', 1, 1),
(23, 'Certificate', 'certificate', 1, '2018-03-17 16:27:14', '0000-00-00 00:00:00', 2, 0),
(24, 'Media Gallery', 'gallery', 1, '2018-03-22 06:46:46', '0000-00-00 00:00:00', 1, 0),
(25, 'Frontend', 'frontend', 1, '2018-03-23 03:40:22', '0000-00-00 00:00:00', 1, 0),
(26, 'Payroll', 'payroll', 1, '2018-03-25 02:07:46', '0000-00-00 00:00:00', 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `image`, `news`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'The North Kingston Secondary lSchool Magazine', '2018-03-01', 'news-1518603269-sms.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.\r\n\r\nThis book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2018-02-14 03:11:28', '2018-04-08 21:34:31', 1, 1),
(2, 'Govt. Primary School Admission', '2018-01-08', 'news-1518628816-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n\r\nLorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2018-02-14 03:17:20', '2018-04-08 21:36:32', 1, 1),
(3, 'The North Kingston Secondary School Daily Education', '2018-03-09', 'news-1518628922-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2018-02-14 06:39:00', '2018-04-08 21:31:56', 1, 1),
(4, 'WU Wins Exclusive Course of the Year Award', '2018-03-10', 'news-1523196726-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate \r\n\r\nLorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2018-02-14 06:58:00', '2018-04-08 08:12:06', 1, 1),
(5, 'MSc Chemical Engineering Class of 2017 graduation celebrations', '2018-03-08', 'news-1523196489-sms.jpg', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2018-02-14 08:32:36', '2018-04-08 08:08:09', 1, 1),
(6, 'Portrait of an school student recording audio in a studio of a radio', '2018-04-12', 'news-1523190135-sms.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2018-04-08 06:11:52', '2018-04-08 06:22:15', 1, 1),
(7, 'School children doing homework on grass on a sunny day', '2018-04-13', 'news-1523190552-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, '2018-04-08 06:29:12', '0000-00-00 00:00:00', 1, 0),
(8, 'Happy children with 3d printer at robotics school', '2018-04-14', 'news-1523197602-sms.jpg', 'Where does it come from\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '2018-04-08 08:23:33', '2018-04-08 08:26:42', 1, 1),
(9, 'Lawyers in the law library at the university', '2018-04-19', 'news-1523198615-sms.jpg', 'Why do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '2018-04-08 08:43:35', '0000-00-00 00:00:00', 1, 0),
(10, 'Students working on computer at university', '2018-04-13', 'news-1523198923-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, '2018-04-08 08:47:22', '2018-04-08 08:48:43', 1, 1);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `role_id`, `title`, `date`, `notice`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 4, 'Windsor Park High School All Class First Term Exam', '2018-04-05', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät. Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti, jolloin tuntematon tulostaja otti kaljuunan ja sekoitti sen tehdäkseen esimerkkikirjan. Se ei ole selvinnyt vain viittä vuosisataa, mutta myös loikan elektroniseen kirjoitukseen, jääden suurinpiirtein muuntamattomana. Se tuli kuuluisuuteen 1960-luvulla kun Letraset-paperiarkit, joissa oli Lorem Ipsum pätkiä, julkaistiin ja vielä myöhemmin tietokoneen julkistusohjelmissa, kuten Aldus PageMaker joissa oli versioita Lorem Ipsumista.\r\n\r\nWhy do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', 1, '2018-02-14 02:09:54', '2018-04-08 11:04:51', 1, 1),
(2, 5, 'Importance Of Teacher Meetings In Schools', '2018-02-14', 'Lorem Ipsum ei ole vain sattumanvarainen teksti. Sillä on pitkät juuret klassisesta latinalaisesta kirjallisuudesta vuonna 45 eKr alkaen, tehden siitä yli 2000 vuotta vanhan. Richard McClintock, latinalainen professori Hampden-Sydneyn yliopistossa Virginiassa, etsi yhden vaikeaselkoisimmista latinalaisista sanoista, consectetur, Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen. Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum":ksesta (The Extremes of Good and Evil), jonka teki Cicero vuonna 45 eKr. Tämä kirja on tutkielma etiikasta, joka oli hyvin yleistä Renesanssin aikana. Ensimmäinen Lorem Ipsumin rivi, "Lorem ipsum dolor sit amet..", tulee rivistä joka on osassa 1.10.32.', 1, '2018-02-14 02:14:14', '2018-04-08 11:15:53', 1, 1),
(3, 0, 'The Heights Primary School For All Holiday', '2018-03-01', 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua, jotka ovat vasta aluillaan. Useita versioita on muodostunut vuosien kuluessa, jotkut vahingossa ja jotkut tarkoituksella (lisätty huumoria ja niin edelleen).Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-02-14 02:20:05', '2018-04-08 11:15:03', 1, 1),
(4, 4, 'LIPA Free School & North Kingston Secondary School Sport', '2018-09-14', 'Lorem Ipsumin käytön tarkoitus on, että se omaa enemmän-tai-vähemmän normaalimpaa sanojen sijoitusta kuin ''Sisältöä tähän, sisältöä tähän''.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text.', 1, '2018-02-14 02:25:33', '2018-04-13 08:56:00', 1, 1),
(5, 4, 'LIPA Free School &Michael Gove School Sports Competition', '2018-03-07', 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua, jotka ovat vasta aluillaan. Useita versioita on muodostunut vuosien kuluessa, jotkut vahingossa ja jotkut tarkoituksella (lisätty huumoria ja niin edelleen).There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form,', 1, '2018-02-14 02:28:07', '2018-04-08 11:21:30', 1, 1),
(6, 0, 'Woodpecker Hall Primary Academy free school Celebration Party', '2018-06-09', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum":ksesta (The Extremes of Good and Evil), jonka teki Cicero vuonna 45 eKr. Tämä kirja on tutkielma etiikasta, joka oli hyvin yleistä Renesanssin aikana. Ensimmäinen Lorem Ipsumin rivi, "Lorem ipsum dolor sit amet..", tulee rivistä joka on osassa 1.10.32.', 1, '2018-02-14 02:33:02', '2018-04-08 11:23:56', 1, 1),
(7, 4, 'Dept. of Agronomy - PhD Viva-voce of Sri Ratikanta Mahunta', '2018-07-13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, '2018-04-08 11:01:00', '2018-04-13 08:51:09', 1, 1),
(8, 9, 'Importance Of Staff Meetings In Schools', '2018-04-16', 'What is Lorem Ipsum\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2018-04-08 11:08:20', '2018-04-08 11:16:42', 1, 1),
(9, 3, 'Notice - Academic Council will be held on 16th April, 2018 For Guardian', '2018-10-13', 'Where can I get some\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 1, '2018-04-08 11:28:30', '2018-04-13 08:52:00', 1, 1),
(10, 0, 'Approval For Award of DST-INSPIRE JRF On', '2018-01-16', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 1, '2018-04-08 11:31:38', '2018-04-13 08:54:10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE IF NOT EXISTS `operations` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `operation_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `operation_slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `is_view_vissible` tinyint(1) DEFAULT '0',
  `is_add_vissible` tinyint(1) DEFAULT '0',
  `is_edit_vissible` tinyint(1) DEFAULT '0',
  `is_delete_vissible` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

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
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, '2018-01-13 08:53:53', '2018-01-13 09:06:22', 2, 2),
(70, 23, 'CertificateType', 'type', 1, 1, 1, 1, 1, '2018-03-17 16:28:43', '0000-00-00 00:00:00', 2, 0),
(71, 23, 'Certificate', 'certificate', 1, NULL, NULL, NULL, 1, '2018-03-18 09:06:40', '0000-00-00 00:00:00', 1, 0),
(72, 24, 'Gallery', 'gallery', 1, 1, 1, 1, 1, '2018-03-22 06:47:27', '2018-03-22 06:48:03', 1, 1),
(73, 24, 'Image', 'image', 1, 1, 1, 1, 1, '2018-03-22 06:47:51', '0000-00-00 00:00:00', 1, 0),
(74, 25, 'Frontend', 'frontend', 1, 1, 1, 1, 1, '2018-03-23 05:06:49', '0000-00-00 00:00:00', 1, 0),
(75, 26, 'Salary Grade', 'grade', 1, 1, 1, 1, 1, '2018-03-25 02:08:21', '0000-00-00 00:00:00', 1, 0),
(76, 26, 'Payment', 'payment', 1, 1, 1, 1, 1, '2018-03-25 02:09:05', '0000-00-00 00:00:00', 1, 0),
(77, 25, 'Home Slider', 'slider', 1, 1, 1, 1, 1, '2018-03-27 18:04:48', '0000-00-00 00:00:00', 1, 0),
(78, 26, 'History', 'history', 1, NULL, NULL, NULL, 1, '2018-04-01 00:39:23', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page_slug` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `page_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `page_description` text CHARACTER SET utf8,
  `page_image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_slug`, `page_name`, `page_title`, `page_description`, `page_image`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'about-us', 'About Us', 'About Us', '<span style="color: rgb(0, 0, 0); font-family: "Open Sans", Arial, sans-serif; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span>', 'frontend-page-1523270297-sms.jpg', 1, '2018-03-23 10:25:58', '2018-04-09 04:38:17', 1, 1),
(2, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 1, '2018-04-08 06:00:17', '0000-00-00 00:00:00', 1, 0),
(3, 'terms-conditions', 'Terms & Conditions', 'Terms & Conditions', '<b style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</b><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><p><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;"><br></span></p><p><b style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem Ipsum</b><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;"><br></span></p>', NULL, 1, '2018-04-08 06:00:56', '0000-00-00 00:00:00', 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payumoney_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, NULL, NULL, NULL, 'yousuf361seller@gmail.com', 1, 1, '', 0, 0, '', '', 0, 0, 1, '2017-08-24 10:58:24', '2018-04-15 01:30:13', 1, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=768 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(3, 1, 3, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(4, 1, 4, 0, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(5, 1, 5, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(6, 1, 6, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(7, 1, 7, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(8, 1, 8, 0, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(9, 1, 64, 0, 1, 0, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(10, 1, 65, 0, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(11, 1, 63, 0, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(12, 1, 10, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(13, 1, 11, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(14, 1, 12, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(15, 1, 14, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(16, 1, 15, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(17, 1, 16, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(18, 1, 17, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(19, 1, 18, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(20, 1, 19, 1, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(21, 1, 20, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(22, 1, 21, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(23, 1, 23, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(24, 1, 24, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(25, 1, 25, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(26, 1, 26, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(27, 1, 27, 1, 1, 1, 1, 1, '2018-01-13 09:07:29', '0000-00-00 00:00:00', 2, 0),
(28, 1, 28, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(29, 1, 29, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(30, 1, 30, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(31, 1, 31, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(32, 1, 32, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(33, 1, 33, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(34, 1, 34, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(35, 1, 35, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(36, 1, 67, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(37, 1, 68, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(38, 1, 37, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(39, 1, 38, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(40, 1, 66, 1, 1, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(41, 1, 40, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(42, 1, 41, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(43, 1, 42, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(44, 1, 43, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(45, 1, 44, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(46, 1, 45, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(47, 1, 46, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(48, 1, 47, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(49, 1, 48, 1, 0, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(50, 1, 50, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(51, 1, 51, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(52, 1, 52, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(53, 1, 53, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(54, 1, 54, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(55, 1, 55, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(56, 1, 56, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(57, 1, 57, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(58, 1, 58, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(59, 1, 59, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(60, 1, 60, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(61, 1, 61, 1, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(62, 1, 62, 0, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(63, 3, 1, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(64, 3, 2, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(65, 3, 3, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(66, 3, 4, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(67, 3, 5, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(68, 3, 6, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(69, 3, 7, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(70, 3, 8, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(71, 3, 64, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(72, 3, 65, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(73, 3, 63, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(74, 3, 10, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(75, 3, 11, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(76, 3, 12, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(77, 3, 14, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(78, 3, 15, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(79, 3, 16, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(80, 3, 17, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(81, 3, 18, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(82, 3, 19, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(83, 3, 20, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(84, 3, 21, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(85, 3, 23, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(86, 3, 24, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(87, 3, 25, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(88, 3, 26, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(89, 3, 27, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(90, 3, 28, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(91, 3, 29, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(92, 3, 30, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(93, 3, 31, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(94, 3, 32, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(95, 3, 33, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(96, 3, 34, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(97, 3, 35, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(98, 3, 67, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(99, 3, 68, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(100, 3, 37, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(101, 3, 38, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(102, 3, 66, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(103, 3, 40, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(104, 3, 41, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(105, 3, 42, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(106, 3, 43, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(107, 3, 44, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(108, 3, 45, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(109, 3, 46, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(110, 3, 47, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(111, 3, 48, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(112, 3, 50, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(113, 3, 51, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(114, 3, 52, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(115, 3, 53, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(116, 3, 54, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(117, 3, 55, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(118, 3, 56, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(119, 3, 57, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(120, 3, 58, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(121, 3, 59, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(122, 3, 60, 0, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(123, 3, 61, 1, 0, 1, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(124, 3, 62, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(125, 1, 69, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(126, 5, 1, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(127, 5, 2, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(128, 5, 3, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(129, 5, 4, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(130, 5, 5, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(131, 5, 6, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(132, 5, 7, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(133, 5, 8, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(134, 5, 64, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(135, 5, 65, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(136, 5, 63, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(137, 5, 10, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(138, 5, 11, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(139, 5, 12, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(140, 5, 14, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(141, 5, 15, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(142, 5, 16, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(143, 5, 17, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(144, 5, 18, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(145, 5, 19, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(146, 5, 20, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(147, 5, 21, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(148, 5, 23, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(149, 5, 24, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(150, 5, 25, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(151, 5, 26, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(152, 5, 27, 1, 1, 1, 0, 1, '2018-01-13 09:46:35', '0000-00-00 00:00:00', 1, 0),
(153, 5, 28, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(154, 5, 29, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(155, 5, 30, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(156, 5, 31, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(157, 5, 32, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(158, 5, 33, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(159, 5, 34, 1, 1, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(160, 5, 35, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(161, 5, 67, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(162, 5, 68, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(163, 5, 37, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(164, 5, 38, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(165, 5, 66, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(166, 5, 40, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(167, 5, 41, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(168, 5, 42, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(169, 5, 43, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(170, 5, 44, 0, 0, 1, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(171, 5, 45, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(172, 5, 47, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(173, 5, 48, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(174, 5, 69, 1, 1, 1, 1, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(175, 5, 50, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(176, 5, 51, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(177, 5, 52, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(178, 5, 53, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(179, 5, 54, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(180, 5, 56, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(181, 5, 57, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(182, 5, 58, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(183, 5, 59, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(184, 5, 60, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(185, 5, 61, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(186, 5, 62, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(187, 13, 1, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(188, 13, 2, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(189, 13, 3, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(190, 13, 4, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(191, 13, 5, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(192, 13, 6, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(193, 13, 7, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(194, 13, 8, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(195, 13, 64, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(196, 13, 65, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(197, 13, 63, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(198, 13, 10, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(199, 13, 11, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(200, 13, 12, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(201, 13, 14, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(202, 13, 15, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(203, 13, 16, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(204, 13, 17, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(205, 13, 18, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(206, 13, 19, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(207, 13, 20, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(208, 13, 21, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(209, 13, 23, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(210, 13, 24, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(211, 13, 25, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(212, 13, 26, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(213, 13, 27, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(214, 13, 28, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(215, 13, 29, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(216, 13, 30, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(217, 13, 31, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(218, 13, 32, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(219, 13, 33, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(220, 13, 34, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(221, 13, 35, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(222, 13, 67, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(223, 13, 68, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(224, 13, 37, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(225, 13, 38, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(226, 13, 66, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(227, 13, 40, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(228, 13, 41, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(229, 13, 42, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(230, 13, 43, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(231, 13, 44, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(232, 13, 45, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(233, 13, 47, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(234, 13, 48, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(235, 13, 69, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(236, 13, 50, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(237, 13, 51, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(238, 13, 52, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(239, 13, 53, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(240, 13, 54, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(241, 13, 56, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(242, 13, 57, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(243, 13, 58, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(244, 13, 59, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(245, 13, 60, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(246, 13, 61, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(247, 13, 62, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(248, 3, 69, 1, 1, 1, 1, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(249, 2, 1, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(250, 2, 2, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(251, 2, 3, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(252, 2, 4, 0, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(253, 2, 5, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(254, 2, 6, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(255, 2, 7, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(256, 2, 8, 0, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(257, 2, 64, 0, 1, 0, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(258, 2, 65, 0, 0, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(259, 2, 63, 0, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(260, 2, 10, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(261, 2, 11, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(262, 2, 12, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(263, 2, 14, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(264, 2, 15, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(265, 2, 16, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(266, 2, 17, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(267, 2, 18, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(268, 2, 19, 1, 0, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(269, 2, 20, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(270, 2, 21, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(271, 2, 23, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(272, 2, 24, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(273, 2, 25, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(274, 2, 26, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(275, 2, 28, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(276, 2, 29, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(277, 2, 30, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(278, 2, 31, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(279, 2, 32, 1, 1, 1, 0, 1, '2018-04-15 06:04:59', '0000-00-00 00:00:00', 1, 0),
(280, 2, 33, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(281, 2, 34, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(282, 2, 35, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(283, 2, 67, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(284, 2, 68, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(285, 2, 37, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(286, 2, 38, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(287, 2, 66, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(288, 2, 40, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(289, 2, 41, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(290, 2, 42, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(291, 2, 43, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(292, 2, 44, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(293, 2, 45, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(294, 2, 47, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(295, 2, 48, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(296, 2, 69, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(297, 2, 50, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(298, 2, 51, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(299, 2, 52, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(300, 2, 53, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(301, 2, 54, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(302, 2, 56, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(303, 2, 57, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(304, 2, 58, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(305, 2, 59, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(306, 2, 60, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(307, 2, 61, 1, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(308, 2, 62, 0, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(309, 4, 1, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(310, 4, 2, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(311, 4, 3, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(312, 4, 4, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(313, 4, 5, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(314, 4, 6, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(315, 4, 7, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(316, 4, 8, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(317, 4, 64, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(318, 4, 65, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(319, 4, 63, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(320, 4, 10, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(321, 4, 11, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(322, 4, 12, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(323, 4, 14, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(324, 4, 15, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(325, 4, 16, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(326, 4, 17, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(327, 4, 18, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(328, 4, 19, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(329, 4, 20, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(330, 4, 21, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(331, 4, 23, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(332, 4, 24, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(333, 4, 25, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(334, 4, 26, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(335, 4, 28, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(336, 4, 29, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(337, 4, 30, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(338, 4, 31, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(339, 4, 32, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(340, 4, 33, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(341, 4, 34, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(342, 4, 35, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(343, 4, 67, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(344, 4, 68, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(345, 4, 37, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(346, 4, 38, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(347, 4, 66, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(348, 4, 40, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(349, 4, 41, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(350, 4, 42, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(351, 4, 43, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(352, 4, 44, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(353, 4, 45, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(354, 4, 47, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(355, 4, 48, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(356, 4, 69, 1, 1, 1, 1, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(357, 4, 50, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(358, 4, 51, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(359, 4, 52, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(360, 4, 53, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(361, 4, 54, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(362, 4, 56, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(363, 4, 57, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(364, 4, 58, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(365, 4, 59, 0, 0, 0, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(366, 4, 60, 0, 0, 1, 0, 1, '2018-04-16 07:59:16', '0000-00-00 00:00:00', 1, 0),
(367, 4, 61, 1, 0, 1, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(368, 4, 62, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(369, 6, 1, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(370, 6, 2, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(371, 6, 3, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(372, 6, 4, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(373, 6, 5, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(374, 6, 6, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(375, 6, 7, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(376, 6, 8, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(377, 6, 64, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(378, 6, 65, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(379, 6, 63, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(380, 6, 10, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(381, 6, 11, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(382, 6, 12, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(383, 6, 14, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(384, 6, 15, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(385, 6, 16, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(386, 6, 17, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(387, 6, 18, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(388, 6, 19, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(389, 6, 20, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(390, 6, 21, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(391, 6, 23, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(392, 6, 24, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(393, 6, 25, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(394, 6, 26, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(395, 6, 28, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(396, 6, 29, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(397, 6, 30, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(398, 6, 31, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(399, 6, 32, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(400, 6, 33, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(401, 6, 34, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(402, 6, 35, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(403, 6, 67, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(404, 6, 68, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(405, 6, 37, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(406, 6, 38, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(407, 6, 66, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(408, 6, 40, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(409, 6, 41, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(410, 6, 42, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(411, 6, 43, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(412, 6, 44, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(413, 6, 45, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(414, 6, 47, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(415, 6, 48, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(416, 6, 69, 1, 1, 1, 1, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(417, 6, 50, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(418, 6, 51, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(419, 6, 52, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(420, 6, 53, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(421, 6, 54, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(422, 6, 56, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(423, 6, 57, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(424, 6, 58, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(425, 6, 59, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(426, 6, 60, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(427, 6, 61, 1, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(428, 6, 62, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(429, 7, 1, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(430, 7, 2, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(431, 7, 3, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(432, 7, 4, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(433, 7, 5, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(434, 7, 6, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(435, 7, 7, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(436, 7, 8, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(437, 7, 64, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(438, 7, 65, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(439, 7, 63, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(440, 7, 10, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(441, 7, 11, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(442, 7, 12, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(443, 7, 14, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(444, 7, 15, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(445, 7, 16, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(446, 7, 17, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(447, 7, 18, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(448, 7, 19, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(449, 7, 20, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(450, 7, 21, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(451, 7, 23, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(452, 7, 24, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(453, 7, 25, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(454, 7, 26, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(455, 7, 28, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(456, 7, 29, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(457, 7, 30, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(458, 7, 31, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(459, 7, 32, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(460, 7, 33, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(461, 7, 34, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(462, 7, 35, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(463, 7, 67, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(464, 7, 68, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(465, 7, 37, 1, 1, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(466, 7, 38, 1, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(467, 7, 66, 1, 1, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(468, 7, 40, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(469, 7, 41, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(470, 7, 42, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(471, 7, 43, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(472, 7, 44, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(473, 7, 45, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(474, 7, 47, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(475, 7, 48, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(476, 7, 69, 1, 1, 1, 1, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(477, 7, 50, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(478, 7, 51, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(479, 7, 52, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(480, 7, 53, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(481, 7, 54, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(482, 7, 56, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(483, 7, 57, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(484, 7, 58, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(485, 7, 59, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(486, 7, 60, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(487, 7, 61, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(488, 7, 62, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(489, 8, 1, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(490, 8, 2, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(491, 8, 3, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(492, 8, 4, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(493, 8, 5, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(494, 8, 6, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(495, 8, 7, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(496, 8, 8, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(497, 8, 64, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(498, 8, 65, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(499, 8, 63, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(500, 8, 10, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(501, 8, 11, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(502, 8, 12, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(503, 8, 14, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(504, 8, 15, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(505, 8, 16, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(506, 8, 17, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(507, 8, 18, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(508, 8, 19, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(509, 8, 20, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(510, 8, 21, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(511, 8, 23, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(512, 8, 24, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(513, 8, 25, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(514, 8, 26, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(515, 8, 28, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(516, 8, 29, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(517, 8, 30, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(518, 8, 31, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(519, 8, 32, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(520, 8, 33, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(521, 8, 34, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(522, 8, 35, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(523, 8, 67, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(524, 8, 68, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(525, 8, 37, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(526, 8, 38, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(527, 8, 66, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(528, 8, 40, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(529, 8, 41, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(530, 8, 42, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(531, 8, 43, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(532, 8, 44, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(533, 8, 45, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(534, 8, 47, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(535, 8, 48, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(536, 8, 69, 1, 1, 1, 1, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(537, 8, 50, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(538, 8, 51, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(539, 8, 52, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(540, 8, 53, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(541, 8, 54, 1, 1, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(542, 8, 56, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(543, 8, 57, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(544, 8, 58, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(545, 8, 59, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(546, 8, 60, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(547, 8, 61, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(548, 8, 62, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(549, 9, 1, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(550, 9, 2, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(551, 9, 3, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(552, 9, 4, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(553, 9, 5, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(554, 9, 6, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(555, 9, 7, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(556, 9, 8, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(557, 9, 64, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(558, 9, 65, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(559, 9, 63, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(560, 9, 10, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(561, 9, 11, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(562, 9, 12, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(563, 9, 14, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(564, 9, 15, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(565, 9, 16, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(566, 9, 17, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(567, 9, 18, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(568, 9, 19, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(569, 9, 20, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(570, 9, 21, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(571, 9, 23, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(572, 9, 24, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(573, 9, 25, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(574, 9, 26, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(575, 9, 28, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(576, 9, 29, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(577, 9, 30, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(578, 9, 31, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(579, 9, 32, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(580, 9, 33, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(581, 9, 34, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(582, 9, 35, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(583, 9, 67, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(584, 9, 68, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(585, 9, 37, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(586, 9, 38, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(587, 9, 66, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(588, 9, 40, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(589, 9, 41, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(590, 9, 42, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(591, 9, 43, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(592, 9, 44, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(593, 9, 45, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(594, 9, 47, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(595, 9, 48, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(596, 9, 69, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(597, 9, 50, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(598, 9, 51, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(599, 9, 52, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(600, 9, 53, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(601, 9, 54, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(602, 9, 56, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(603, 9, 57, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(604, 9, 58, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(605, 9, 59, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(606, 9, 60, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(607, 9, 61, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(608, 9, 62, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(609, 1, 70, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(610, 1, 71, 0, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(611, 1, 72, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(612, 1, 73, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(613, 1, 74, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(614, 1, 75, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(615, 1, 76, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(616, 1, 77, 1, 1, 1, 1, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(617, 1, 78, 0, 0, 1, 0, 1, '2018-04-01 00:40:01', '0000-00-00 00:00:00', 1, 0),
(618, 4, 70, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(619, 4, 71, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(620, 4, 72, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(621, 4, 73, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(622, 4, 74, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(623, 4, 77, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(624, 4, 75, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(625, 4, 76, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(626, 4, 78, 0, 0, 0, 0, 1, '2018-04-16 07:59:17', '0000-00-00 00:00:00', 1, 0),
(627, 14, 1, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(628, 14, 2, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(629, 14, 3, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(630, 14, 4, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(631, 14, 5, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(632, 14, 6, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(633, 14, 7, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(634, 14, 8, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(635, 14, 64, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(636, 14, 65, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(637, 14, 63, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(638, 14, 10, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(639, 14, 11, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(640, 14, 12, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(641, 14, 14, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(642, 14, 15, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(643, 14, 16, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(644, 14, 17, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(645, 14, 18, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(646, 14, 19, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(647, 14, 20, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(648, 14, 21, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(649, 14, 23, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(650, 14, 24, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(651, 14, 25, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(652, 14, 26, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(653, 14, 28, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(654, 14, 29, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(655, 14, 30, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(656, 14, 31, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(657, 14, 32, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(658, 14, 33, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(659, 14, 34, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(660, 14, 35, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(661, 14, 67, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(662, 14, 68, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(663, 14, 37, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(664, 14, 38, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(665, 14, 66, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(666, 14, 40, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(667, 14, 41, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(668, 14, 42, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(669, 14, 43, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(670, 14, 44, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(671, 14, 45, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(672, 14, 47, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(673, 14, 48, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(674, 14, 69, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(675, 14, 50, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(676, 14, 51, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(677, 14, 52, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(678, 14, 53, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(679, 14, 54, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(680, 14, 56, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(681, 14, 57, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(682, 14, 58, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(683, 14, 59, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(684, 14, 60, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(685, 14, 61, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(686, 14, 62, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(687, 14, 70, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(688, 14, 71, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(689, 14, 72, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(690, 14, 73, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(691, 14, 74, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(692, 14, 77, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(693, 14, 75, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(694, 14, 76, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(695, 14, 78, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(696, 3, 70, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(697, 3, 71, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(698, 3, 72, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(699, 3, 73, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(700, 3, 74, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(701, 3, 77, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(702, 3, 75, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(703, 3, 76, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(704, 3, 78, 0, 0, 0, 0, 1, '2018-04-16 08:00:05', '0000-00-00 00:00:00', 1, 0),
(705, 9, 70, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(706, 9, 71, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(707, 9, 72, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(708, 9, 73, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(709, 9, 74, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(710, 9, 77, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(711, 9, 75, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(712, 9, 76, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(713, 9, 78, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(714, 8, 70, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(715, 8, 71, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(716, 8, 72, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(717, 8, 73, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(718, 8, 74, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(719, 8, 77, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(720, 8, 75, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(721, 8, 76, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(722, 8, 78, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(723, 7, 70, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(724, 7, 71, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(725, 7, 72, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(726, 7, 73, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(727, 7, 74, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(728, 7, 77, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(729, 7, 75, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(730, 7, 76, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(731, 7, 78, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(732, 6, 70, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(733, 6, 71, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(734, 6, 72, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(735, 6, 73, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(736, 6, 74, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(737, 6, 77, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(738, 6, 75, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(739, 6, 76, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(740, 6, 78, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(741, 2, 70, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(742, 2, 71, 0, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(743, 2, 72, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(744, 2, 73, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(745, 2, 74, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(746, 2, 77, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(747, 2, 75, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(748, 2, 76, 1, 1, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(749, 2, 78, 0, 0, 1, 0, 1, '2018-04-15 06:05:00', '0000-00-00 00:00:00', 1, 0),
(750, 13, 70, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(751, 13, 71, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(752, 13, 72, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(753, 13, 73, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(754, 13, 74, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(755, 13, 77, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(756, 13, 75, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(757, 13, 76, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(758, 13, 78, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(759, 5, 70, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(760, 5, 71, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(761, 5, 72, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(762, 5, 73, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(763, 5, 74, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(764, 5, 77, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(765, 5, 75, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(766, 5, 76, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0),
(767, 5, 78, 0, 0, 0, 0, 1, '2018-04-16 07:50:17', '0000-00-00 00:00:00', 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `exam_id`, `class_id`, `section_id`, `academic_year_id`, `student_id`, `avg_grade_point`, `exam_total_mark`, `obtain_total_mark`, `remark`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 2, 1, 0.00, 0, 0, NULL, 1, '2018-02-24 02:15:57', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 1, 2, 2, 0.00, 0, 0, NULL, 1, '2018-02-24 02:15:57', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 1, 2, 3, 0.00, 0, 0, NULL, 1, '2018-02-24 02:15:57', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 1, 2, 4, 0.00, 0, 0, NULL, 1, '2018-02-24 02:15:57', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 1, 2, 5, 0.00, 0, 0, NULL, 1, '2018-02-24 02:15:57', '0000-00-00 00:00:00', 1, 0),
(6, 1, 1, 11, 2, 6, 0.00, 0, 0, NULL, 1, '2018-04-14 03:25:21', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 11, 2, 7, 0.00, 0, 0, NULL, 1, '2018-04-14 03:25:21', '0000-00-00 00:00:00', 1, 0),
(8, 1, 1, 11, 2, 8, 0.00, 0, 0, NULL, 1, '2018-04-14 03:25:21', '0000-00-00 00:00:00', 1, 0),
(9, 1, 1, 11, 2, 9, 0.00, 0, 0, NULL, 1, '2018-04-14 03:25:21', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 11, 2, 10, 0.00, 0, 0, NULL, 1, '2018-04-14 03:25:21', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(9, 'staff', 'Staff', 'General Staff User', 0, 1, '2017-08-13 13:05:01', '2018-02-09 02:02:48', 0, 1),
(13, 'servent', 'Servent', 'Servant User', 0, 1, '2018-02-04 04:40:37', '2018-02-09 02:03:09', 1, 1);

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
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `hostel_id`, `room_no`, `room_type`, `total_seat`, `cost`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, '101', 'ac', '3', '8000.00', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 12:07:03', '0000-00-00 00:00:00', 1, 0),
(2, 2, '102', 'non_ac', '5', '4000.00', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 12:08:34', '0000-00-00 00:00:00', 1, 0),
(3, 2, '103', 'non_ac', '5', '4000.00', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 12:10:23', '0000-00-00 00:00:00', 1, 0),
(4, 2, '104', 'non_ac', '5', '4000.00', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 12:11:03', '0000-00-00 00:00:00', 1, 0),
(5, 2, '105', 'ac', '2', '10000.00', 'Lorem Ipsum on yksinkertaisesti testausteksti,', 1, '2018-02-13 20:41:42', '0000-00-00 00:00:00', 1, 0),
(6, 1, '101', 'non_ac', '6', '3000.00', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 20:53:25', '0000-00-00 00:00:00', 1, 0),
(7, 1, '102', 'non_ac', '5', '3500.00', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 21:34:52', '2018-02-13 21:39:11', 1, 1),
(8, 1, '103', 'ac', '3', '7000.00', 'Lorem Ipsumin käytön tarkoitus on, että se omaa enemmän-tai-vähemmän normaalimpaa sanojen sijoitusta kuin ''Sisältöä tähän.', 1, '2018-02-13 21:41:25', '0000-00-00 00:00:00', 1, 0),
(9, 1, '104', 'ac', '2', '8500.00', 'Lorem Ipsumin käytön tarkoitus on, että se omaa enemmän-tai-vähemmän normaalimpaa sanojen sijoitusta kuin ''Sisältöä tähän.', 1, '2018-02-13 21:42:29', '2018-02-13 21:43:52', 1, 1),
(10, 3, '101', 'non_ac', '6', '3500.00', 'Lorem Ipsum on yksinkertaisesti testausteksti,', 1, '2018-02-13 21:46:04', '0000-00-00 00:00:00', 1, 0),
(11, 3, '102', 'ac', '3', '8000.00', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-14 01:18:14', '0000-00-00 00:00:00', 1, 0),
(12, 3, '103', 'ac', '3', '8000.00', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-14 01:19:29', '0000-00-00 00:00:00', 1, 0),
(13, 3, '104', 'non_ac', '6', '3500.00', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-14 01:20:58', '0000-00-00 00:00:00', 1, 0),
(14, 3, '105', 'non_ac', '6', '3500.00', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum":ksesta.', 1, '2018-02-14 01:22:31', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `vehicle_ids`, `title`, `route_start`, `route_end`, `fare`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '1', 'Autaugaville', 'School Campus', '5213 Academy St  Autaugaville, AL 26003', '20.00', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 07:17:24', '2018-02-13 08:31:41', 1, 1),
(2, '2', 'New London', 'School Campus', '2761 Dutch Island Cir  Autaugaville, AL 36003', '30.00', 'Lorem Ipsumin käytön tarkoitus on,', 1, '2018-02-13 08:36:00', '0000-00-00 00:00:00', 1, 0),
(3, '3', 'New London, CT', 'School Campus', '31 Blinman St  New London, CT 2320', '25.00', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 08:37:39', '2018-02-13 08:39:47', 1, 1),
(4, '3', 'Evangeline', 'School Campus', '529 Macon Pl  Autaugaville, AL 87403', '20.00', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 08:46:15', '0000-00-00 00:00:00', 1, 0),
(5, '4', 'Unalaska', 'School Campus', '76 Airport Beach Rd  Unalaska, AK 96685', '40.00', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 08:50:09', '0000-00-00 00:00:00', 1, 0),
(6, '5', 'Anchorage', 'School Campus', '201 W 100th Ave  Anchorage, AK 10015', '35.00', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 08:52:24', '0000-00-00 00:00:00', 1, 0),
(7, '6', 'Chugiak', 'School Campus', '35427 Chapel Dr  Chugiak, AK 65467', '50.00', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum":ksesta.', 1, '2018-02-13 08:57:25', '0000-00-00 00:00:00', 1, 0),
(8, '7', 'Eagle River', 'School Campus', '36927 Baronoff Ave  Eagle River, AK 85577', '40.00', 'Lorem ipsum dolor sit amet..", tulee rivistä joka on osassa 1.10.32.', 1, '2018-02-13 09:00:17', '0000-00-00 00:00:00', 1, 0),
(9, '8', 'Indian', 'School Campus', '225 Indian Creek Way  Indian, AK 39940', '50.00', 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua, jotka ovat vasta aluillaan.', 1, '2018-02-13 09:03:42', '0000-00-00 00:00:00', 1, 0),
(10, '9', 'Jber', 'School Campus', '287 Fishwheel Ave  Jber, AK 99505', '20.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, '2018-02-13 09:08:22', '0000-00-00 00:00:00', 1, 0),
(11, '10', 'Kodiak', 'School Campus', '620 Bonaparte Cir  Kodiak, AK 91965', '30.00', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 09:22:38', '0000-00-00 00:00:00', 1, 0),
(12, '11', 'Anchorage', 'School Campus', '451 W 64th Ave  Anchorage, AK 91958', '60.00', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 09:29:19', '0000-00-00 00:00:00', 1, 0),
(13, '11', 'Verkin', 'School Campus', '161 W 280 N  La Verkin, UT 59745', '60.00', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 09:32:38', '2018-02-13 09:34:09', 1, 1),
(14, '12', 'Dammeron Valley', 'School Campus', '12 Dammeron Valley Farms Dr  Dammeron Valley, UT 84783', '60.00', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum', 1, '2018-02-13 09:35:28', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `class_id`, `section_id`, `subject_id`, `teacher_id`, `academic_year_id`, `day`, `start_time`, `end_time`, `room_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 3, 2, 'tuesday', '8:00 AM', '8:45 AM', 101, 1, '2018-02-09 21:17:26', '2018-02-10 07:05:34', 1, 1),
(30, 1, 1, 5, 11, 2, 'tuesday', '8:45 AM', '9:30 AM', 101, 1, '2018-02-10 08:52:43', '0000-00-00 00:00:00', 1, 0),
(31, 1, 1, 2, 4, 2, 'monday', '9:30 AM', '10:15 AM', 101, 1, '2018-02-10 08:56:23', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 1, 3, 2, 'monday', '8:00 AM', '8:45 AM', 101, 1, '2018-02-09 21:25:15', '2018-02-09 21:26:48', 1, 1),
(46, 1, 1, 1, 3, 2, 'thursday', '10:15 AM', '11:00 PM', 101, 1, '2018-02-10 09:48:35', '0000-00-00 00:00:00', 1, 0),
(27, 1, 1, 7, 8, 2, 'thursday', '8:00 AM', '8:45 AM', 101, 1, '2018-02-10 08:44:22', '0000-00-00 00:00:00', 1, 0),
(28, 1, 1, 7, 8, 2, 'friday', '8:00 AM', '8:45 AM', 101, 1, '2018-02-10 08:45:16', '0000-00-00 00:00:00', 1, 0),
(29, 1, 1, 5, 11, 2, 'monday', '8:45 AM', '9:30 AM', 101, 1, '2018-02-10 08:46:38', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 1, 3, 2, 'wednesday', '8:00 AM', '8:45 AM', 101, 1, '2018-02-10 07:08:40', '0000-00-00 00:00:00', 1, 0),
(32, 1, 1, 10, 14, 2, 'monday', '10:15 AM', '11:00 AM', 101, 1, '2018-02-10 08:57:25', '0000-00-00 00:00:00', 1, 0),
(33, 1, 1, 4, 10, 2, 'monday', '11:00 AM', '11:45 AM', 101, 1, '2018-02-10 08:59:24', '0000-00-00 00:00:00', 1, 0),
(34, 1, 1, 8, 1, 2, 'monday', '11:45 AM', '12:30 PM', 101, 1, '2018-02-10 09:01:03', '2018-04-15 07:03:56', 1, 1),
(35, 1, 1, 2, 4, 2, 'tuesday', '9:30 AM', '10:15 PM', 101, 1, '2018-02-10 09:27:01', '0000-00-00 00:00:00', 1, 0),
(36, 1, 1, 10, 14, 2, 'tuesday', '10:15 AM', '11:00 AM', 101, 1, '2018-02-10 09:28:13', '0000-00-00 00:00:00', 1, 0),
(37, 1, 1, 4, 10, 2, 'tuesday', '11:00 AM', '11:45 AM', 101, 1, '2018-02-10 09:29:35', '0000-00-00 00:00:00', 1, 0),
(38, 1, 1, 8, 1, 2, 'tuesday', '11:45 AM', '12:30 PM', 101, 1, '2018-02-10 09:30:59', '2018-04-15 07:04:11', 1, 1),
(39, 1, 1, 9, 12, 2, 'wednesday', '8:45 AM', '9:30 AM', 101, 1, '2018-02-10 09:33:36', '0000-00-00 00:00:00', 1, 0),
(40, 1, 1, 9, 12, 2, 'thursday', '8:45 AM', '9:30 AM', 101, 1, '2018-02-10 09:35:15', '0000-00-00 00:00:00', 1, 0),
(41, 1, 1, 9, 12, 2, 'friday', '8:45 AM', '9:30 AM', 101, 1, '2018-02-10 09:36:00', '0000-00-00 00:00:00', 1, 0),
(42, 1, 1, 2, 4, 2, 'wednesday', '9:30 AM', '10:15 AM', 101, 1, '2018-02-10 09:38:38', '0000-00-00 00:00:00', 1, 0),
(43, 1, 1, 6, 7, 2, 'thursday', '9:30 AM', '10:15 AM', 101, 1, '2018-02-10 09:43:18', '0000-00-00 00:00:00', 1, 0),
(44, 1, 1, 6, 7, 2, 'friday', '9:30 AM', '10:15 AM', 101, 1, '2018-02-10 09:44:11', '0000-00-00 00:00:00', 1, 0),
(45, 1, 1, 10, 14, 2, 'wednesday', '10:15 AM', '11:00 AM', 101, 1, '2018-02-10 09:46:06', '0000-00-00 00:00:00', 1, 0),
(47, 1, 1, 1, 4, 2, 'friday', '10:15 AM', '11:00 PM', 101, 1, '2018-02-10 09:49:39', '0000-00-00 00:00:00', 1, 0),
(48, 1, 1, 3, 1, 2, 'wednesday', '11:00 AM', '11:45 AM', 101, 1, '2018-02-10 09:51:25', '2018-04-15 07:04:30', 1, 1),
(49, 1, 1, 3, 1, 2, 'thursday', '11:00 AM', '11:45 AM', 101, 1, '2018-02-10 09:52:08', '2018-04-15 07:05:02', 1, 1),
(50, 1, 1, 3, 1, 2, 'friday', '11:00 AM', '11:45 AM', 101, 1, '2018-02-10 09:53:06', '2018-04-15 07:05:16', 1, 1),
(51, 1, 1, 8, 1, 2, 'wednesday', '11:45 AM', '12:30 PM', 101, 1, '2018-02-10 09:55:31', '2018-04-15 07:04:46', 1, 1),
(52, 1, 1, 2, 4, 2, 'thursday', '11:45 AM', '12:30 PM', 101, 1, '2018-02-10 09:57:04', '0000-00-00 00:00:00', 1, 0),
(53, 1, 1, 2, 4, 2, 'friday', '11:45 AM', '12:30 PM', 101, 1, '2018-02-10 09:57:49', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary_grades`
--

CREATE TABLE IF NOT EXISTS `salary_grades` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_grades`
--

INSERT INTO `salary_grades` (`id`, `grade_name`, `basic_salary`, `house_rent`, `transport`, `medical`, `over_time_hourly_rate`, `provident_fund`, `hourly_rate`, `total_allowance`, `total_deduction`, `gross_salary`, `net_salary`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Grade A', 25000.00, 5000.00, 5000.00, 5000.00, 500.00, 10000.00, 1000.00, 15000.00, 10000.00, 40000.00, 30000.00, 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-03-25 09:51:01', '2018-04-08 07:20:25', 1, 1),
(2, 'Grade B', 20000.00, 4000.00, 4000.00, 4000.00, 400.00, 8000.00, 800.00, 12000.00, 8000.00, 32000.00, 24000.00, 'Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-03-25 10:53:12', '2018-04-08 07:21:38', 1, 1),
(3, 'Grade C', 16000.00, 3000.00, 3000.00, 3000.00, 300.00, 6000.00, 600.00, 9000.00, 6000.00, 25000.00, 19000.00, 'Printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, '2018-04-08 07:24:12', '0000-00-00 00:00:00', 1, 0),
(4, 'Grade D', 12000.00, 2500.00, 2500.00, 2500.00, 250.00, 5000.00, 500.00, 7500.00, 5000.00, 19500.00, 14500.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, '2018-04-08 07:25:22', '0000-00-00 00:00:00', 1, 0),
(5, 'Grade E', 10000.00, 2000.00, 2000.00, 2000.00, 200.00, 4000.00, 400.00, 6000.00, 4000.00, 16000.00, 12000.00, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 1, '2018-04-08 07:26:12', '2018-04-16 08:35:45', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_payments`
--

CREATE TABLE IF NOT EXISTS `salary_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_id` int(11) NOT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `salary_month` varchar(100) CHARACTER SET utf8 NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `bonus` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `over_time_total_hour` double(10,2) NOT NULL,
  `over_time_amount` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `penalty` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) DEFAULT '0.00',
  `total_hour` double(10,2) DEFAULT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cheque_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `payment_to` varchar(20) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_payments`
--

INSERT INTO `salary_payments` (`id`, `user_id`, `salary_grade_id`, `academic_year_id`, `expenditure_id`, `salary_type`, `salary_month`, `basic_salary`, `house_rent`, `transport`, `medical`, `bonus`, `over_time_hourly_rate`, `over_time_total_hour`, `over_time_amount`, `provident_fund`, `penalty`, `hourly_rate`, `total_hour`, `gross_salary`, `total_allowance`, `total_deduction`, `net_salary`, `payment_method`, `cheque_no`, `bank_name`, `payment_to`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(13, 51, 1, 2, 24, 'Monthly', '01-2018', 25000.00, 5000.00, 5000.00, 5000.00, 0.00, 500.00, 0.00, 0.00, 10000.00, 0.00, 0.00, NULL, 40000.00, 15000.00, 10000.00, 30000.00, 'cheque', '123456', 'Bangladesh Bank', 'teacher', 'Yes', 1, '2018-04-16 04:37:34', '0000-00-00 00:00:00', 1, 0),
(8, 49, 1, 2, 19, 'Monthly', '02-2018', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 8000.00, 3000.00, 1000.00, 7000.00, 'cash', '', '', 'employee', 'cbcvbcv', 1, '2018-03-30 05:17:08', '0000-00-00 00:00:00', 1, 0),
(10, 49, 1, 2, 21, 'Monthly', '04-2018', 5000.00, 1000.00, 1000.00, 1000.00, 1000.00, 100.00, 10.00, 1000.00, 1000.00, 500.00, 0.00, NULL, 10000.00, 5000.00, 1500.00, 8500.00, 'cash', '', '', 'employee', 'cvcxvc', 1, '2018-03-30 06:05:42', '2018-03-30 06:07:57', 1, 1),
(9, 49, 1, 2, 20, 'Monthly', '03-2018', 5000.00, 1000.00, 1000.00, 1000.00, 1000.00, 100.00, 20.00, 2000.00, 1000.00, 1000.00, 0.00, NULL, 11000.00, 6000.00, 2000.00, 9000.00, 'cheque', '12546', 'DBBL', 'employee', 'cxbcbcvb', 1, '2018-03-30 05:21:13', '2018-03-30 05:38:52', 1, 1),
(11, 42, 3, 2, 22, 'Hourly', '03-2018', 0.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 500.00, 600.00, 50.00, 31000.00, 1000.00, 500.00, 30500.00, 'cash', '', '', 'employee', 'test', 1, '2018-04-13 05:10:30', '0000-00-00 00:00:00', 1, 0),
(12, 50, 1, 2, 23, 'Monthly', '01-2018', 25000.00, 5000.00, 5000.00, 5000.00, 0.00, 500.00, 0.00, 0.00, 10000.00, 0.00, 0.00, NULL, 40000.00, 15000.00, 10000.00, 30000.00, 'cash', '', '', 'teacher', 'bmbgmbn', 1, '2018-04-15 08:44:06', '0000-00-00 00:00:00', 1, 0),
(14, 51, 1, 2, 25, 'Monthly', '02-2018', 25000.00, 5000.00, 5000.00, 5000.00, 0.00, 500.00, 4.00, 2000.00, 10000.00, 0.00, 0.00, NULL, 42000.00, 17000.00, 10000.00, 32000.00, 'cheque', '123456', 'Bangladesh Bank', 'teacher', 'Yes', 1, '2018-04-16 04:56:15', '0000-00-00 00:00:00', 1, 0),
(18, 51, 1, 2, 29, 'Monthly', '04-2018', 25000.00, 5000.00, 5000.00, 5000.00, 2500.00, 500.00, 4.00, 2000.00, 10000.00, 1500.00, 0.00, NULL, 44500.00, 19500.00, 11500.00, 33000.00, 'cheque', '123546', 'Bangladesh Bank', 'teacher', 'Yes', 1, '2018-04-16 05:07:42', '0000-00-00 00:00:00', 1, 0),
(16, 51, 1, 2, 27, 'Monthly', '03-2018', 25000.00, 5000.00, 5000.00, 5000.00, 0.00, 500.00, 0.00, 0.00, 10000.00, 0.00, 0.00, NULL, 40000.00, 15000.00, 10000.00, 30000.00, 'cheque', '123654', 'Bangladesh Bank', 'teacher', 'Yes', 1, '2018-04-16 05:03:48', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `class_id`, `teacher_id`, `name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 'A', 'Default Section', 1, '2018-02-09 08:44:23', '0000-00-00 00:00:00', 1, 0),
(2, 2, 2, 'A', 'Default Section', 1, '2018-02-09 08:45:11', '0000-00-00 00:00:00', 1, 0),
(3, 3, 3, 'A', 'Default Section', 1, '2018-02-09 08:46:13', '0000-00-00 00:00:00', 1, 0),
(4, 4, 4, 'A', 'Default Section', 1, '2018-02-09 08:50:50', '0000-00-00 00:00:00', 1, 0),
(5, 5, 5, 'A', 'Default Section', 1, '2018-02-09 08:53:33', '0000-00-00 00:00:00', 1, 0),
(6, 6, 6, 'A', 'Default Section', 1, '2018-02-09 08:55:00', '0000-00-00 00:00:00', 1, 0),
(7, 7, 7, 'A', 'Default Section', 1, '2018-02-09 09:42:50', '0000-00-00 00:00:00', 1, 0),
(8, 8, 8, 'A', 'Default Section', 1, '2018-02-09 09:43:49', '0000-00-00 00:00:00', 1, 0),
(9, 9, 9, 'A', 'Default Section', 1, '2018-02-09 09:46:08', '0000-00-00 00:00:00', 1, 0),
(10, 10, 11, 'A', 'Default Section', 1, '2018-02-09 09:47:20', '0000-00-00 00:00:00', 1, 0),
(11, 1, 2, 'B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 09:52:27', '0000-00-00 00:00:00', 1, 0),
(13, 2, 3, 'B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 19:53:46', '0000-00-00 00:00:00', 1, 0),
(14, 3, 4, 'B', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 19:54:44', '0000-00-00 00:00:00', 1, 0),
(15, 4, 5, 'B', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"', 1, '2018-02-09 20:01:50', '0000-00-00 00:00:00', 1, 0),
(16, 5, 6, 'B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 20:03:35', '0000-00-00 00:00:00', 1, 0),
(17, 6, 7, 'B', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 20:07:42', '0000-00-00 00:00:00', 1, 0),
(18, 7, 8, 'B', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ', 1, '2018-02-09 20:09:58', '0000-00-00 00:00:00', 1, 0),
(19, 8, 9, 'B', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, '2018-02-09 20:29:07', '0000-00-00 00:00:00', 1, 0),
(20, 9, 10, 'B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 20:41:18', '0000-00-00 00:00:00', 1, 0),
(21, 10, 1, 'B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 03:06:31', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
  `school_fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `school_geocode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `google_plus_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `school_name`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `language`, `footer`, `logo`, `running_year`, `school_fax`, `school_geocode`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Windsor Park High School', '10433 Wolverine Way  Bellevue, CA 98456', '0123456789', 'info@gsms.com', 'usd', '$', 'english', 'Copyright © Windsor Park High School 2018', '1523268322-school-logo.png', '2017 - 2018', '', '23.923133, 90.385283', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2017-08-23 09:40:28', '2018-04-09 04:05:22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 'Windsor Park High School', 'home-slider-1523271646-sms.jpg', 1, 1, 1, '2018-03-27 18:07:31', '2018-04-09 05:00:46'),
(2, 'Windsor Park High School', 'home-slider-1523271679-sms.jpg', 1, 1, 0, '2018-04-09 05:01:19', '0000-00-00 00:00:00'),
(3, 'Windsor Park High School', 'home-slider-1523271702-sms.jpg', 1, 1, 0, '2018-04-09 05:01:42', '0000-00-00 00:00:00'),
(4, 'Windsor Park High School', 'home-slider-1523271723-sms.jpg', 1, 1, 0, '2018-04-09 05:02:03', '0000-00-00 00:00:00'),
(5, 'Windsor Park High School', 'home-slider-1523271745-sms.jpg', 1, 1, 0, '2018-04-09 05:02:25', '0000-00-00 00:00:00'),
(6, 'Windsor Park High School', 'home-slider-1523271782-sms.jpg', 1, 1, 0, '2018-04-09 05:03:02', '0000-00-00 00:00:00');

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
(1, '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', 0, 0, '2017-08-24 13:22:49', '2018-01-13 05:30:39', 1, 2);

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
  `discount` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `guardian_id`, `registration_no`, `group`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `photo`, `other_info`, `is_library_member`, `is_hostel_member`, `is_transport_member`, `discount`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 74, 1, '123456', '', 'SW Ambris', '123456789', '3243 Hosea Ln Autaugaville, AL 63803', '3243 Hosea Ln Autaugaville, AL 63803', 'male', 'a_positive', '', '2002-11-08', 'photo-1518327593-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 1, 20.00, 1, '2018-02-10 22:39:53', '2018-04-14 01:50:35', 1, 74),
(2, 75, 2, '123465', '', 'Jawahir Shah', '123654789', '21 E 207th St New York, NY 20329', '21 E 207th St New York, NY 20329', 'male', 'a_negative', '', '2002-01-29', 'photo-1518327883-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, 1, 1, 0.00, 1, '2018-02-10 22:44:43', '2018-02-10 23:00:03', 1, 1),
(3, 76, 3, '123654', '', 'Sikander Zulfiqar', '123589647', '25801 E 31st Ave Watkins, CO 55137', '25801 E 31st Ave Watkins, CO 55137', 'male', 'b_positive', '', '2001-02-01', 'photo-1518328766-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.', 1, 1, 0, 15.00, 1, '2018-02-10 22:59:26', '2018-04-14 00:57:23', 1, 1),
(4, 77, 4, '123546', '', 'Sidra Ameen', '123589647', '62 1st St Hamden, CT 8914', '62 1st St Hamden, CT 8914', 'female', 'b_negative', '', '2003-02-01', 'photo-1518329770-sms.jpg', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum.', 1, 1, 1, 0.00, 1, '2018-02-10 23:16:09', '0000-00-00 00:00:00', 1, 0),
(5, 78, 5, '123467', '', 'Mudassar Bukhari', '123789654', '47 1st St Hamden, CT 1516', '47 1st St Hamden, CT 1516', 'male', 'o_positive', '', '2002-01-30', 'photo-1518329993-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, 0, 0.00, 1, '2018-02-10 23:19:53', '0000-00-00 00:00:00', 1, 0),
(6, 79, 6, '124563', '', 'Sidra Nawaz', '123478569', '91 1st St Hamden, CT 2814', '91 1st St Hamden, CT 2814', 'female', 'o_negative', '', '2002-01-28', 'photo-1518330242-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, 1, 1, 5.00, 1, '2018-02-10 23:24:02', '2018-04-14 00:57:58', 1, 1),
(7, 80, 7, '132654', '', 'Rabiya Shah', '123965478', '31 1st St Hamden, CT 9514', '31 1st St Hamden, CT 9514', 'female', 'o_negative', '', '2002-01-30', 'photo-1518330494-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC', 0, 0, 0, 10.00, 1, '2018-02-10 23:28:14', '2018-04-14 00:58:12', 1, 1),
(8, 81, 8, '123789', '', 'Raza-ur-Rehman', '123987456', '18 E 109th St New York, NY 32029', '18 E 109th St New York, NY 32029', 'male', 'ab_positiv', '', '2003-01-30', 'photo-1518342539-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, 1, 1, 0.00, 1, '2018-02-11 02:48:59', '0000-00-00 00:00:00', 1, 0),
(9, 82, 9, '123745', '', 'Zahid Hussain', '123587469', '62 W 109th St New York, NY 21025', '62 W 109th St New York, NY 21025', 'male', 'ab_negativ', '', '2002-09-04', 'photo-1518342830-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, 0, 0.00, 1, '2018-02-11 02:53:50', '0000-00-00 00:00:00', 1, 0),
(10, 83, 5, '147852', '', 'Javeria Khan', '123789654', '47 1st St Hamden, CT 1516', '47 1st St Hamden, CT 1516', 'female', 'ab_negativ', '', '2001-12-01', 'photo-1518343255-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, 0, 1, 0.00, 1, '2018-02-11 03:00:55', '0000-00-00 00:00:00', 1, 0),
(12, 85, 1, '236547', '', 'Tammy Beaumont', '123456789', '3243 Hosea Ln Autaugaville, AL 63803', '3243 Hosea Ln Autaugaville, AL 63803', 'female', 'a_positive', '', '2001-01-28', 'photo-1518347007-sms.jpg', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 0, 0, 0, 5.00, 1, '2018-02-11 04:03:27', '2018-04-14 00:59:32', 1, 1),
(13, 86, 5, '365489', '', 'Junaid Siddiqui', '123789654', '47 1st St Hamden, CT 1516', '47 1st St Hamden, CT 1516', 'male', 'a_negative', '', '2001-01-30', 'photo-1518347257-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, 0, 0.00, 1, '2018-02-11 04:07:37', '0000-00-00 00:00:00', 1, 0),
(14, 87, 2, '236548', '', 'ML Cummins', '123654789', '21 E 207th St New York, NY 20329', '21 E 207th St New York, NY 20329', 'male', 'b_positive', '', '2001-02-04', 'photo-1518347470-sms.jpg', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 0, 0, 0, 0.00, 1, '2018-02-11 04:11:10', '0000-00-00 00:00:00', 1, 0),
(15, 88, 4, '236547', '', 'Alex Hartley', '123589647', '62 1st St Hamden, CT 8914', '62 1st St Hamden, CT 8914', 'female', 'b_negative', '', '2001-01-17', 'photo-1518347678-sms.jpg', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum', 1, 0, 1, 15.00, 1, '2018-02-11 04:14:38', '2018-04-14 01:00:01', 1, 1),
(16, 89, 6, '456987', '', 'K Kamyuka', '123478569', '91 1st St Hamden, CT 2814', '91 1st St Hamden, CT 2814', 'male', 'o_negative', '', '2002-02-20', 'photo-1518347786-sms.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, 1, 20.00, 1, '2018-02-11 04:16:26', '2018-04-14 01:00:38', 1, 1),
(17, 90, 1, '123587496', '', 'Neil Wagner', '123456789', '3243 Hosea Ln Autaugaville, AL 63803', '3243 Hosea Ln Autaugaville, AL 63803', 'male', 'a_negative', '', '2000-02-01', 'photo-1518721211-sms.jpg', 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 0, 0, 0, 5.00, 1, '2018-02-15 12:00:11', '2018-04-14 01:01:26', 1, 1),
(18, 91, 2, '123654879', '', 'Kraigg Clairmonte Brathwaite', '123654789', '21 E 207th St New York, NY 20329', '21 E 207th St New York, NY 20329', 'male', 'b_positive', '', '2000-01-29', 'photo-1518721384-sms.jpg', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 0, 0, 0, 0.00, 1, '2018-02-15 12:03:04', '0000-00-00 00:00:00', 1, 0),
(19, 92, 3, '123654897', '', 'Xan de Waard', '123589647', '25801 E 31st Ave Watkins, CO 55137', '25801 E 31st Ave Watkins, CO 55137', 'female', 'o_positive', '', '2000-01-01', 'photo-1518726533-sms.jpg', 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 0, 0, 0, 0.00, 1, '2018-02-15 13:28:53', '0000-00-00 00:00:00', 1, 0),
(20, 93, 6, '123698745', '', 'AR Nurse', '123478569', '91 1st St Hamden, CT 2814', '91 1st St Hamden, CT 2814', 'male', 'o_positive', '', '1999-12-26', 'photo-1518727159-sms.jpg', 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 0, 0, 0, 15.00, 1, '2018-02-15 13:39:19', '2018-04-14 01:01:43', 1, 1),
(21, 94, 8, '123689547', '', 'Kitty van Male', '123987456', '18 E 109th St New York, NY 32029', '18 E 109th St New York, NY 32029', 'female', '', '', '1999-11-28', 'photo-1518727414-sms.jpg', 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum":ksesta', 0, 0, 0, 15.00, 1, '2018-02-15 13:43:33', '2018-04-14 01:02:07', 1, 1),
(22, 95, 10, '123564789', '', 'Marloes Keetels', '123587469', '70 1st St Hamden, CT 6904', '70 1st St Hamden, CT 6904', 'female', 'ab_positiv', '', '2001-01-01', 'photo-1518897625-sms.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, 0, 0, 0.00, 1, '2018-02-17 13:00:25', '0000-00-00 00:00:00', 1, 0),
(23, 96, 7, '123658974', '', 'KS Williamson', '123965478', '31 1st St Hamden, CT 9514', '31 1st St Hamden, CT 9514', 'male', 'o_negative', '', '2000-12-29', 'photo-1518898053-sms.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 0, 0, 0, 0.00, 1, '2018-02-17 13:07:33', '0000-00-00 00:00:00', 1, 0),
(24, 97, 4, '123589674', '', 'TL Seifert', '123589647', '62 1st St Hamden, CT 8914', '62 1st St Hamden, CT 8914', 'male', 'b_negative', '', '1999-11-06', 'photo-1518898619-sms.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in vulputate tellus.', 0, 0, 0, 0.00, 1, '2018-02-17 13:16:59', '0000-00-00 00:00:00', 1, 0),
(25, 98, 4, '125463987', '', 'HM Nicholls', '123589647', '62 1st St Hamden, CT 8914', '62 1st St Hamden, CT 8914', 'male', 'b_negative', '', '1999-08-31', 'photo-1518963078-sms.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 0, 0, 0, 20.00, 1, '2018-02-18 07:11:18', '2018-04-14 01:04:25', 1, 1),
(26, 99, 3, '123859674', '', 'Margot van Geffen', '123589647', '25801 E 31st Ave Watkins, CO 55137', '25801 E 31st Ave Watkins, CO 55137', 'female', 'o_negative', '', '1999-09-30', 'photo-1518963516-sms.jpg', 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 0, 0, 0, 0.00, 1, '2018-02-18 07:18:36', '0000-00-00 00:00:00', 1, 0),
(27, 100, 3, '123478569', '', 'Lidewij Welten', '123589647', '25801 E 31st Ave Watkins, CO 55137', '25801 E 31st Ave Watkins, CO 55137', 'female', 'a_positive', '', '1999-11-29', 'photo-1518970472-sms.jpg', 'Lorem Ipsum pätkiä, julkaistiin ja vielä myöhemmin tietokoneen julkistusohjelmissa,', 0, 0, 0, 15.00, 1, '2018-02-18 09:14:32', '2018-04-14 01:03:52', 1, 1),
(28, 101, 7, '123948657', '', 'Gijs van Heumen', '123965478', '31 1st St Hamden, CT 9514', '31 1st St Hamden, CT 9514', 'male', 'b_negative', '', '1999-09-28', 'photo-1518970826-sms.jpg', 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua,', 0, 0, 0, 0.00, 1, '2018-02-18 09:20:26', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_id`, `academic_year_id`, `class_id`, `section_id`, `month`, `year`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, 1, 1, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-12 03:02:16', '0000-00-00 00:00:00', 1, 0),
(2, 2, 2, 1, 1, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-12 03:02:16', '0000-00-00 00:00:00', 1, 0),
(3, 3, 2, 1, 1, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-12 03:02:16', '0000-00-00 00:00:00', 1, 0),
(4, 4, 2, 1, 1, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-12 03:02:16', '0000-00-00 00:00:00', 1, 0),
(5, 5, 2, 1, 1, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'L', NULL, NULL, NULL, 1, '2018-02-12 03:02:16', '0000-00-00 00:00:00', 1, 0),
(6, 1, 2, 1, 1, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 01:04:57', '0000-00-00 00:00:00', 1, 0),
(7, 2, 2, 1, 1, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 01:04:57', '0000-00-00 00:00:00', 1, 0),
(8, 3, 2, 1, 1, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 01:04:57', '0000-00-00 00:00:00', 1, 0),
(9, 4, 2, 1, 1, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 01:04:57', '0000-00-00 00:00:00', 1, 0),
(10, 5, 2, 1, 1, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 01:04:57', '0000-00-00 00:00:00', 1, 0),
(11, 1, 2, 1, 1, '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 07:46:18', '0000-00-00 00:00:00', 74, 0),
(12, 2, 2, 1, 1, '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 07:46:18', '0000-00-00 00:00:00', 74, 0),
(13, 3, 2, 1, 1, '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 07:46:18', '0000-00-00 00:00:00', 74, 0),
(14, 4, 2, 1, 1, '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 07:46:18', '0000-00-00 00:00:00', 74, 0),
(15, 5, 2, 1, 1, '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-14 07:46:18', '0000-00-00 00:00:00', 74, 0),
(16, 17, 2, 3, 3, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-15 03:49:19', '0000-00-00 00:00:00', 1, 0),
(17, 18, 2, 3, 3, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-15 03:49:19', '0000-00-00 00:00:00', 1, 0),
(18, 19, 2, 3, 3, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-15 03:49:19', '0000-00-00 00:00:00', 1, 0),
(19, 20, 2, 3, 3, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-15 03:49:19', '0000-00-00 00:00:00', 1, 0),
(20, 21, 2, 3, 3, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-15 03:49:19', '0000-00-00 00:00:00', 1, 0),
(21, 6, 2, 1, 11, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 04:22:49', '0000-00-00 00:00:00', 50, 0),
(22, 7, 2, 1, 11, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 04:22:49', '0000-00-00 00:00:00', 50, 0),
(23, 8, 2, 1, 11, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 04:22:49', '0000-00-00 00:00:00', 50, 0),
(24, 9, 2, 1, 11, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 04:22:49', '0000-00-00 00:00:00', 50, 0),
(25, 10, 2, 1, 11, '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-04-16 04:22:49', '0000-00-00 00:00:00', 50, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `teacher_id`, `type`, `name`, `code`, `author`, `pass_mark`, `full_mark`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 3, 'mandatory', 'English', '101', '', 40, 100, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 10:10:28', '2018-02-09 10:13:45', 1, 1),
(2, 1, 2, 'mandatory', 'Mathematics', '102', '', 40, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 10:17:19', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 'mandatory', 'General Science', '103', '', 40, 100, 'Lorem Ipsum is not simply random text.', 1, '2018-02-09 10:20:10', '2018-04-15 06:21:24', 1, 1),
(4, 1, 10, 'optional', 'Drawing', '105', '', 20, 50, 'Lorem Ipsum is not simply random text.', 1, '2018-02-09 21:02:34', '2018-02-09 22:49:49', 1, 1),
(5, 1, 11, '', 'Religion', '104', '', 40, 100, 'Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, '2018-02-09 21:05:20', '0000-00-00 00:00:00', 1, 0),
(6, 1, 7, 'mandatory', 'History', '106', '', 40, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 22:49:28', '2018-02-09 22:54:05', 1, 1),
(7, 1, 8, 'mandatory', 'Literature', '107', '', 40, 100, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 22:53:14', '2018-02-09 22:54:42', 1, 1),
(8, 1, 1, 'mandatory', 'Political Science', '108', '', 40, 100, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-09 23:01:29', '2018-04-15 06:21:50', 1, 1),
(9, 1, 12, 'mandatory', 'Agriculture', '109', '', 40, 100, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-09 23:30:20', '0000-00-00 00:00:00', 1, 0),
(10, 1, 14, 'mandatory', 'Computer', '110', '', 40, 100, 'Lorem Ipsum as their default model text,', 1, '2018-02-10 03:23:14', '2018-02-10 03:24:03', 1, 1),
(11, 2, 4, 'mandatory', 'Mathematics', '202', '', 40, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 03:28:46', '0000-00-00 00:00:00', 1, 0),
(12, 2, 3, 'mandatory', 'English', '201', '', 40, 100, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-10 03:31:52', '0000-00-00 00:00:00', 1, 0),
(13, 2, 1, 'mandatory', 'General Science', '203', '', 40, 100, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-10 03:34:01', '2018-04-15 06:22:22', 1, 1),
(14, 2, 10, 'mandatory', 'Drawing', '205', '', 20, 50, 'Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, '2018-02-10 03:37:06', '2018-02-10 03:37:36', 1, 1),
(15, 2, 11, 'mandatory', 'Religion', '204', '', 40, 100, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-10 03:39:54', '0000-00-00 00:00:00', 1, 0),
(16, 2, 7, 'mandatory', 'History', '206', '', 40, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 03:44:17', '0000-00-00 00:00:00', 1, 0),
(17, 2, 8, 'mandatory', 'Literature', '207', '', 40, 100, 'Lorem Ipsum is therefore always free from repetition, injected humour,', 1, '2018-02-10 03:46:49', '0000-00-00 00:00:00', 1, 0),
(18, 2, 9, 'mandatory', 'Political Science', '208', '', 40, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-10 03:49:53', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `exam_id`, `class_id`, `subject_id`, `academic_year_id`, `title`, `note`, `suggestion`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 2, 'First Term Suggestion', 'Lorem Ipsum is not simply random text.', 'suggestion-1518360846-sms.docx', 1, '2018-02-11 07:54:06', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 2, 2, 'first Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518360926-sms.docx', 1, '2018-02-11 07:55:26', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 3, 2, 'First Term Suggestion', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'suggestion-1518360998-sms.docx', 1, '2018-02-11 07:56:38', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 5, 2, 'First Term Suggestion', 'Lorem Ipsum is not simply random text.', 'suggestion-1518361104-sms.docx', 1, '2018-02-11 07:58:24', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 4, 2, 'First Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518361171-sms.docx', 1, '2018-02-11 07:59:31', '0000-00-00 00:00:00', 1, 0),
(6, 1, 1, 6, 2, 'First Term Suggestion', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 'suggestion-1518361244-sms.docx', 1, '2018-02-11 08:00:44', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 7, 2, 'First Term Suggestion', 'Lorem Ipsum is not simply random text.', 'suggestion-1518361357-sms.docx', 1, '2018-02-11 08:02:37', '0000-00-00 00:00:00', 1, 0),
(8, 1, 1, 8, 2, 'First Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518361946-sms.docx', 1, '2018-02-11 08:12:26', '0000-00-00 00:00:00', 1, 0),
(9, 1, 1, 9, 2, 'First Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518361978-sms.docx', 1, '2018-02-11 08:12:58', '0000-00-00 00:00:00', 1, 0),
(10, 1, 1, 10, 2, 'First Term Suggestion', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'suggestion-1518362029-sms.docx', 1, '2018-02-11 08:13:49', '0000-00-00 00:00:00', 1, 0),
(11, 1, 2, 11, 2, 'First Term Suggestion', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'suggestion-1518362112-sms.docx', 1, '2018-02-11 08:15:12', '0000-00-00 00:00:00', 1, 0),
(12, 1, 2, 13, 2, 'First Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518362169-sms.docx', 1, '2018-02-11 08:16:09', '0000-00-00 00:00:00', 1, 0),
(13, 1, 2, 18, 2, 'First Term Suggestion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'suggestion-1518362281-sms.docx', 1, '2018-02-11 08:18:01', '0000-00-00 00:00:00', 1, 0),
(14, 1, 2, 12, 2, 'First Term Suggestion', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 'suggestion-1518362342-sms.docx', 1, '2018-02-11 08:19:02', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`id`, `class_id`, `subject_id`, `academic_year_id`, `title`, `syllabus`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 1, 2, 'Academic Syllabus', 'syllabus-1518260192-sms.docx', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 0, '2018-02-10 03:56:32', '0000-00-00 00:00:00'),
(2, 1, 2, 2, 'Academic Syllabus', 'syllabus-1518262511-sms.docx', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, 1, 0, '2018-02-10 04:35:11', '0000-00-00 00:00:00'),
(3, 1, 3, 2, 'Academic Syllabus', 'syllabus-1518262738-sms.docx', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, 1, 0, '2018-02-10 04:38:58', '0000-00-00 00:00:00'),
(4, 1, 4, 2, 'Academic Syllabus', 'syllabus-1518262838-sms.docx', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, 1, 0, '2018-02-10 04:40:38', '0000-00-00 00:00:00'),
(5, 1, 5, 2, 'Academic Syllabus', 'syllabus-1518262848-sms.docx', 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, 1, 1, '2018-02-10 04:40:48', '2018-02-10 04:41:22'),
(6, 1, 6, 2, 'Academic Syllabus', 'syllabus-1518262999-sms.docx', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 0, '2018-02-10 04:43:19', '0000-00-00 00:00:00'),
(7, 1, 7, 2, 'Academic Syllabus', 'syllabus-1518264002-sms.docx', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 0, '2018-02-10 05:00:02', '0000-00-00 00:00:00'),
(8, 2, 11, 2, 'Academic Syllabus', 'syllabus-1518265621-sms.docx', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 1, '2018-02-10 05:27:01', '2018-02-10 05:33:30'),
(9, 2, 9, 2, 'Academic Syllabus', 'syllabus-1518265683-sms.docx', 'Lorem Ipsum available, but the majority have suffered alteration in some form,', 1, 1, 1, '2018-02-10 05:28:03', '2018-02-10 05:45:41'),
(10, 2, 12, 2, 'Academic Syllabus', 'syllabus-1518265720-sms.docx', 'Lorem Ipsum available, but the majority have suffered alteration in some form,', 1, 1, 1, '2018-02-10 05:28:40', '2018-02-10 05:33:51'),
(11, 2, 13, 2, 'Academic Syllabus', 'syllabus-1518266161-sms.docx', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, 1, 0, '2018-02-10 05:36:01', '0000-00-00 00:00:00'),
(12, 2, 15, 2, 'Academic Syllabus', 'syllabus-1518266651-sms.docx', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', 1, 1, 0, '2018-02-10 05:44:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 NOT NULL,
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
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `google_plus_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `salary_grade_id`, `salary_type`, `responsibility`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `youtube_url`, `pinterest_url`, `is_view_on_web`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 50, 1, 'monthly', 'English', 'SW Ambris', '123456789', '3153 Hosea Ln Autaugaville, AL 63003', '3153 Hosea Ln Autaugaville, AL 63003', 'male', 'a_positive', '', '1987-02-14', '2018-02-01', NULL, 'photo-1518108990-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-08 09:56:30', '2018-04-09 03:47:29', 1, 1),
(2, 51, 1, 'monthly', 'Mathematics', 'KOK Williams', '123654789', '6261 Hosea Ln Autaugaville, FL 48003', '6261 Hosea Ln Autaugaville, FL 48003', 'male', 'ab_positiv', '', '1987-08-22', '2018-02-06', NULL, 'photo-1518109597-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is not simply random text.', 1, '2018-02-08 10:06:37', '2018-04-09 03:46:02', 1, 1),
(3, 52, 2, 'hourly', 'English', 'Tahlia McGrath', '123456987', '3167 Hosea Ln Autaugaville, FL 21003', '3167 Hosea Ln Autaugaville, FL 21003', 'female', 'o_negative', '', '1988-03-01', '2018-02-01', NULL, 'photo-1518171795-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 0, 'Lorem ipsum dolor sit amet', 1, '2018-02-09 03:23:15', '2018-04-09 03:28:05', 1, 1),
(4, 53, 2, 'hourly', 'Mathematics', 'Belinda Vakarewa', '123478569', '6185 Hosea Ln Autaugaville, AL83303', '6185 Hosea Ln Autaugaville, AL83303', 'female', 'b_positive', '', '1989-03-08', '2018-02-02', NULL, 'photo-1518172607-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 03:36:47', '2018-04-09 03:28:46', 1, 1),
(5, 54, 3, 'hourly', 'General Science', 'Amanda Wellington', '123698547', '5213 Hosea Ln Autaugaville, AL 60303', '5213 Hosea Ln Autaugaville, AL 60303', 'female', 'a_positive', '', '1986-02-28', '2018-02-01', NULL, 'photo-1518173266-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is not simply random text.', 1, '2018-02-09 03:47:46', '2018-04-09 03:29:59', 1, 1),
(6, 55, 1, 'monthly', 'Accounting', 'KS Williamson', '123589647', '3543 Hosea Ln Autaugaville, AL 65403', '3543 Hosea Ln Autaugaville, AL 65403', 'male', 'b_negative', '', '1985-03-08', '2018-02-01', NULL, 'photo-1518174690-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 04:11:30', '2018-04-09 03:33:01', 1, 1),
(7, 56, 3, 'hourly', 'History', 'DAJ Bracewell', '123546879', '5440 1 Ave New York, NY 22065', '5440 1 Ave New York, NY 22065', 'male', 'b_positive', '', '1985-02-22', '2018-02-01', NULL, 'photo-1518176497-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 0, 'Lorem ipsum dolor sit amet.', 1, '2018-02-09 04:41:37', '2018-04-09 03:34:31', 1, 1),
(8, 57, 4, 'hourly', 'Literature', 'Washington Sundar', '123456987', '510 W 153rd St New York, NY 20409', '510 W 153rd St New York, NY 20409', 'male', 'o_positive', '', '1899-07-10', '2018-02-03', NULL, 'photo-1518176894-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 04:48:14', '2018-04-09 03:43:03', 1, 1),
(9, 58, 2, 'monthly', 'Political Science', 'Mohammed Shami', '123654789', '320 W 153rd St New York, NY 21039', '320 W 153rd St New York, NY 21039', 'male', 'a_positive', '', '1987-03-06', '2018-02-08', NULL, 'photo-1518179739-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is not simply random text.', 1, '2018-02-09 05:32:48', '2018-04-09 03:37:53', 1, 1),
(10, 59, 5, 'hourly', 'Drawing', 'Jessica Jonassen', '123698547', '30 Henderson Rd New London, CT 3520', '30 Henderson Rd New London, CT 3520', 'female', 'a_negative', '', '1992-02-09', '2018-02-04', NULL, 'photo-1518180397-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 05:46:37', '2018-04-09 03:38:58', 1, 1),
(11, 60, 4, 'hourly', 'Religion', 'Mohammad Nawaz', '123785469', '10 Henderson Rd New London, CT 1350', '10 Henderson Rd New London, CT 1350', 'male', 'o_positive', '', '1988-02-25', '2018-02-09', NULL, 'photo-1518190682-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-09 08:38:02', '2018-04-09 03:39:52', 1, 1),
(12, 61, 4, 'hourly', 'Agriculture', 'MD Gunathilaka', '123546897', '72 Henderson Rd New London, CT 7220', '72 Henderson Rd New London, CT 7220', 'male', 'o_negative', '', '1988-03-09', '2018-02-10', NULL, 'photo-1518242976-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-09 23:09:36', '2018-04-09 03:40:32', 1, 1),
(13, 62, 3, 'hourly', 'Initiative in business', 'Tammy Beaumont', '123589674', '13560 38th Ave Watkins, CO 92137', '13560 38th Ave Watkins, CO 92137', 'female', 'b_positive', '', '1992-02-16', '2018-02-01', NULL, 'photo-1518244018-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 1, '2018-02-09 23:26:58', '2018-04-09 03:41:28', 1, 1),
(14, 63, 3, 'hourly', 'Computer', 'HDRL Thirimanne', '123587469', '67801 E 51st Ave Watkins, CO 20107', '67801 E 51st Ave Watkins, CO 20107', 'male', 'ab_negativ', '', '1989-03-04', '2018-02-19', NULL, 'photo-1518258046-sms.jpg', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 1, 'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,', 1, '2018-02-10 03:20:46', '2018-04-09 03:57:01', 1, 1);

-- --------------------------------------------------------

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
-- Dumping data for table `teacher_attendances`
--

INSERT INTO `teacher_attendances` (`id`, `teacher_id`, `academic_year_id`, `month`, `year`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(2, 2, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(3, 3, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(4, 4, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(5, 5, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(6, 6, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(7, 7, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(8, 8, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(9, 9, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(10, 10, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(11, 11, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(12, 12, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(13, 13, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0),
(14, 14, 2, '02', '2018', 'P', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'P', NULL, NULL, NULL, 1, '2018-02-14 02:00:23', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `academic_year_id`, `invoice_id`, `amount`, `payment_method`, `bank_name`, `cheque_no`, `transaction_id`, `payment_date`, `pum_first_name`, `pum_email`, `pum_phone`, `stripe_card_number`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 1, '100.00', 'cash', '', '', '', '2018-02-20', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2018-02-13 23:30:20', '2018-04-13 02:36:17', 1, 1),
(2, 2, 2, '300.00', 'cash', '', '', '', '2018-02-25', '', '', '', '', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-13 23:31:21', '0000-00-00 00:00:00', 1, 0),
(3, 2, 3, '700.00', 'cash', '', '', '', '2018-02-28', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2018-02-13 23:35:01', '0000-00-00 00:00:00', 1, 0),
(4, 2, 4, '1000.00', 'cheque', 'Switch Bank', '123456987', '', '2018-02-22', '', '', '', '', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-13 23:36:01', '0000-00-00 00:00:00', 1, 0),
(5, 2, 20, '5000.00', 'cash', '', '', '', '2018-03-02', '', '', '', '', 'xcbcbc', 1, '2018-04-05 02:33:57', '0000-00-00 00:00:00', 1, 0),
(6, 2, 21, '500.00', 'cash', '', '', '', '2018-04-02', '', '', '', '', 'Test', 1, '2018-04-13 02:43:25', '0000-00-00 00:00:00', 1, 0),
(7, 2, 22, '7000.00', 'cheque', 'DBBL', '12546', '', '2018-04-01', '', '', '', '', 'New Test', 1, '2018-04-13 02:44:08', '0000-00-00 00:00:00', 1, 0),
(8, 2, 31, '500.00', 'cash', '', '', '', '2018-04-13', '', '', '', '', 'Paid', 1, '2018-04-13 06:12:56', '0000-00-00 00:00:00', 1, 0),
(9, 2, 32, '100.00', 'cash', '', '', '', '2018-04-16', '', '', '', '', 'Test', 1, '2018-04-16 04:47:57', '0000-00-00 00:00:00', 1, 0),
(10, 2, 32, '7240.00', 'cash', '', '', '', '2018-04-16', '', '', '', '', 'Test', 1, '2018-04-16 04:53:04', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `transport_members`
--

INSERT INTO `transport_members` (`id`, `user_id`, `route_id`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 89, 5, 1, '2018-02-13 09:39:36', '0000-00-00 00:00:00', 1, 0),
(2, 83, 4, 1, '2018-02-13 09:39:40', '0000-00-00 00:00:00', 1, 0),
(3, 81, 8, 1, '2018-02-13 09:39:43', '0000-00-00 00:00:00', 1, 0),
(4, 79, 10, 1, '2018-02-13 09:39:46', '0000-00-00 00:00:00', 1, 0),
(5, 77, 14, 1, '2018-02-13 09:39:51', '0000-00-00 00:00:00', 1, 0),
(6, 75, 13, 1, '2018-02-13 09:39:53', '0000-00-00 00:00:00', 1, 0),
(7, 74, 14, 1, '2018-02-13 09:39:56', '0000-00-00 00:00:00', 1, 0),
(8, 88, 7, 1, '2018-02-13 09:39:59', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
(1, 1, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2Nw==', 'superadmin@gsms.com', '', 1, '2018-04-16 06:19:53', '2013-11-15 20:33:03', '2018-01-13 10:51:12', 0, 1),
(2, 1, 'fcea920f7412b5da7be0cf42b8c93759', 'MTIzNDU2', 'yousuf361@gmail.com', NULL, 1, '2018-03-17 15:10:55', '2017-10-15 09:50:22', '2018-01-18 06:03:25', 0, 1),
(59, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'jonassen@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 05:46:37', '0000-00-00 00:00:00', 1, 0),
(58, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'shami@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 05:32:48', '0000-00-00 00:00:00', 1, 0),
(57, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'washington@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 04:48:14', '0000-00-00 00:00:00', 1, 0),
(56, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'bracewell@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 04:41:37', '0000-00-00 00:00:00', 1, 0),
(55, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'williamson@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 04:11:30', '0000-00-00 00:00:00', 1, 0),
(54, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'wellington@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-09 03:47:46', '0000-00-00 00:00:00', 1, 0),
(53, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'vakarewa@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-09 03:36:47', '0000-00-00 00:00:00', 1, 0),
(52, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'mcgrath@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-09 03:23:15', '0000-00-00 00:00:00', 1, 0),
(51, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'williams@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-08 10:06:37', '0000-00-00 00:00:00', 1, 0),
(50, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'teacher@gsms.com', NULL, 1, '2018-04-16 04:04:32', '2018-02-08 09:56:30', '0000-00-00 00:00:00', 1, 0),
(49, 7, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'wdparnell@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-08 09:47:05', '0000-00-00 00:00:00', 1, 0),
(48, 9, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'bampton@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-08 09:33:16', '0000-00-00 00:00:00', 1, 0),
(47, 13, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'cheatle@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-08 09:02:53', '0000-00-00 00:00:00', 1, 0),
(46, 7, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'librarian@gsms.com', NULL, 1, '2018-04-15 06:03:54', '2018-02-08 08:50:53', '0000-00-00 00:00:00', 1, 0),
(45, 8, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'receptionist@gsms.com', NULL, 1, '2018-04-15 05:18:58', '2018-02-08 07:56:00', '0000-00-00 00:00:00', 1, 0),
(44, 2, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'admin@gsms.com', NULL, 1, '2018-04-15 06:04:17', '2018-02-08 07:35:38', '0000-00-00 00:00:00', 1, 0),
(43, 9, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'behardien@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-08 07:08:16', '0000-00-00 00:00:00', 1, 0),
(41, 6, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'accountant@gsms.com', NULL, 1, '2018-04-15 05:33:11', '2018-02-08 06:38:44', '0000-00-00 00:00:00', 1, 0),
(42, 9, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'staff@gsms.com', NULL, 1, '2018-04-15 05:24:49', '2018-02-08 06:48:27', '0000-00-00 00:00:00', 1, 0),
(60, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'nawaz@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 08:38:02', '0000-00-00 00:00:00', 1, 0),
(61, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'gunathilaka@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 23:09:36', '0000-00-00 00:00:00', 1, 0),
(62, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'beaumont@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-09 23:26:58', '0000-00-00 00:00:00', 1, 0),
(63, 5, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'thirimanne@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 03:20:46', '0000-00-00 00:00:00', 1, 0),
(64, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'guardian@gsms.com', NULL, 1, '2018-04-16 05:02:29', '2018-02-10 10:07:08', '0000-00-00 00:00:00', 1, 0),
(65, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'madushanka@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 10:14:45', '0000-00-00 00:00:00', 1, 0),
(66, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'nataliesciver@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-10 10:21:40', '0000-00-00 00:00:00', 1, 0),
(67, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'carlosricardo@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-10 10:29:11', '0000-00-00 00:00:00', 1, 0),
(68, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'nasirjaved@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-10 10:38:56', '0000-00-00 00:00:00', 1, 0),
(69, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'bismahmaroof@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 11:05:03', '0000-00-00 00:00:00', 1, 0),
(70, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'javeriakhan@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 11:49:33', '0000-00-00 00:00:00', 1, 0),
(71, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'quaraishy@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 11:57:37', '0000-00-00 00:00:00', 1, 0),
(72, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'zulfiqar@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 12:01:51', '0000-00-00 00:00:00', 1, 0),
(73, 3, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'brathwaite@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 12:06:03', '0000-00-00 00:00:00', 1, 0),
(74, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'student@gsms.com', NULL, 1, '2018-04-16 04:24:41', '2018-02-10 22:39:53', '0000-00-00 00:00:00', 1, 0),
(75, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'jawahirshah@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-10 22:44:43', '0000-00-00 00:00:00', 1, 0),
(76, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'sikander@gsms.com', NULL, 1, '0000-00-00 00:00:00', '2018-02-10 22:59:26', '0000-00-00 00:00:00', 1, 0),
(77, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'sidraameen@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 23:16:09', '0000-00-00 00:00:00', 1, 0),
(78, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'mudassar@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 23:19:53', '0000-00-00 00:00:00', 1, 0),
(79, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'sidranawaz@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 23:24:02', '0000-00-00 00:00:00', 1, 0),
(80, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'rabiyashah@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-10 23:28:14', '0000-00-00 00:00:00', 1, 0),
(81, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'raza-ur-rehman@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 02:48:59', '0000-00-00 00:00:00', 1, 0),
(82, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'zahid.hussain@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 02:53:50', '0000-00-00 00:00:00', 1, 0),
(83, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'javeria.khan@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 03:00:55', '0000-00-00 00:00:00', 1, 0),
(85, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'beaumont.120@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 04:03:27', '0000-00-00 00:00:00', 1, 0),
(86, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'junaid.siddiqui@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 04:07:37', '0000-00-00 00:00:00', 1, 0),
(87, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'cummins.24@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 04:11:10', '0000-00-00 00:00:00', 1, 0),
(88, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'alex.hartley@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 04:14:38', '0000-00-00 00:00:00', 1, 0),
(89, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'k.kamyuka@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-11 04:16:26', '0000-00-00 00:00:00', 1, 0),
(90, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'neil.wagner@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-15 12:00:11', '0000-00-00 00:00:00', 1, 0),
(91, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'clairmonte.brathwaite@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-15 12:03:04', '0000-00-00 00:00:00', 1, 0),
(92, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'xan.de.waard@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-15 13:28:53', '0000-00-00 00:00:00', 1, 0),
(93, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'ar.nurse@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-15 13:39:19', '0000-00-00 00:00:00', 1, 0),
(94, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'kitty.van.male@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-15 13:43:33', '0000-00-00 00:00:00', 1, 0),
(95, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'marloes.keetels@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-17 13:00:25', '0000-00-00 00:00:00', 1, 0),
(96, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'ks.williamson@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-17 13:07:33', '0000-00-00 00:00:00', 1, 0),
(97, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'tl.seifert@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-17 13:16:59', '0000-00-00 00:00:00', 1, 0),
(98, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'hm.micholls@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-18 07:11:18', '0000-00-00 00:00:00', 1, 0),
(99, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'margot.van.geffen@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-18 07:18:36', '0000-00-00 00:00:00', 1, 0),
(100, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'lidewij.welten@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-18 09:14:32', '0000-00-00 00:00:00', 1, 0),
(101, 4, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'gijs.van.heumen@gsms.com', NULL, 0, '0000-00-00 00:00:00', '2018-02-18 09:20:26', '0000-00-00 00:00:00', 1, 0);

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
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `number`, `model`, `driver`, `license`, `contact`, `is_allocated`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'AKW 2', 'Volvo', 'Moeen Munir Ali', 'A 1956 UK tax disc', '123456789', 1, 'Lorem Ipsum on yksinkertaisesti testausteksti,', 1, '2018-02-13 06:16:02', '0000-00-00 00:00:00', 1, 0),
(2, 'BPG 1', 'Toyota', 'BA Stokes', 'A377B7', '01587789', 1, 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 06:27:14', '0000-00-00 00:00:00', 1, 0),
(3, 'VAM 3', 'Subaru', 'JP Behrendorff', 'B271PO', '123654789', 1, 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua,', 1, '2018-02-13 06:30:11', '0000-00-00 00:00:00', 1, 0),
(4, 'VBD 4', 'Lamborghini', 'SE Marsh', 'A752PO', '123654789', 1, 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 06:32:20', '0000-00-00 00:00:00', 1, 0),
(5, 'BPE 5', 'BMW', 'M Mosehle', 'V752RO', '123456879', 1, 'Lorem ipsum dolor sit amet..", tulee rivistä joka on osassa 1.10.32.', 1, '2018-02-13 06:35:51', '0000-00-00 00:00:00', 1, 0),
(6, 'AKW 6', 'Lotus', 'VD Philander', '372RTB', '123547896', 1, 'Lorem Ipsum on yksinkertaisesti testausteksti, jota tulostus- ja ladontateollisuudet käyttävät.', 1, '2018-02-13 06:38:36', '0000-00-00 00:00:00', 1, 0),
(7, 'VE 6', 'Honda', 'J Blackwood', 'CD2358', '123587496', 1, 'Lorem Ipsum on ollut teollisuuden normaali testausteksti jo 1500-luvulta asti,', 1, '2018-02-13 06:41:17', '0000-00-00 00:00:00', 1, 0),
(8, 'BPJ 7', 'Lotus', 'RL Chase', '885JAG', '123658749', 1, 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 06:45:59', '0000-00-00 00:00:00', 1, 0),
(9, 'RT 7', 'Haval', 'SO Hetmyer', '013035EA', '123589647', 1, 'Lorem Ipsum tulee osista 1.10.32 ja 1.10.33 "de Finibus Bonorum et Malorum.', 1, '2018-02-13 06:48:31', '0000-00-00 00:00:00', 1, 0),
(10, 'VBD 9', 'Kia', 'TWM Latham', '47EKV', '123587496', 1, 'Lorem Ipsumia'' etsittäessä löytyy monen monta nettisivua, jotka ovat vasta aluillaan.', 1, '2018-02-13 06:51:06', '0000-00-00 00:00:00', 1, 0),
(11, 'NBOS 10', 'Ssangyong', 'MS Chapman', 'ISO 50166', '123698745', 1, 'Lorem Ipsum ei ole vain sattumanvarainen teksti.', 1, '2018-02-13 06:56:54', '0000-00-00 00:00:00', 1, 0),
(12, 'VAQ 22', 'McLaren', 'LRPL Taylor', 'ElL-679', '125893647', 1, 'Lorem Ipsumin kappaleesta ja etsi lainauksia sanasta klassisessa kirjallisuudessa löytäen varman lähteen.', 1, '2018-02-13 07:03:35', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

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
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `academic_year_id`, `role_id`, `user_id`, `name`, `phone`, `coming_from`, `reason`, `check_in`, `check_out`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 2, 4, 74, 'Gholam Nousher', '123456789', 'Academy St', 'friend', '2018-02-14 02:08:59', '2018-02-14 02:17:02', 'Lorem Ipsum has been the industry''s standard dummy text', 1, '2018-02-14 02:08:59', '2018-02-14 02:17:02', 1, 1),
(2, 2, 4, 85, 'Tapash Baisya', '123456789', 'County Road 15', 'friend', '2018-02-14 02:12:12', NULL, 'Lorem Ipsum as their default model text', 1, '2018-02-14 02:12:12', '0000-00-00 00:00:00', 1, 0),
(3, 2, 5, 50, 'Subashis Roy', '963258741', 'Dutch Island Cir', 'meeting', '2018-02-14 02:14:10', '2018-02-14 02:17:08', 'Lorem Ipsum comes from sections', 1, '2018-02-14 02:14:10', '2018-02-14 02:17:08', 1, 1),
(5, 2, 3, 64, 'Fahim Muntasir', '0123654789', 'Pickett Mill Rd', 'family', '2018-02-14 02:15:43', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-02-14 02:15:43', '0000-00-00 00:00:00', 1, 0),
(6, 2, 9, 42, 'Jahangir Alam', '01236547890', 'Riverview Rd', 'meeting', '2018-02-14 02:16:56', NULL, 'Lorem Ipsum available, but the majority have suffered', 1, '2018-02-14 02:16:56', '0000-00-00 00:00:00', 1, 0);

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
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
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
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
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
-- Indexes for table `invoice_logs`
--
ALTER TABLE `invoice_logs`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `page_slug` (`page_slug`);

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
-- Indexes for table `salary_grades`
--
ALTER TABLE `salary_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_payments`
--
ALTER TABLE `salary_payments`
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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `invoice_logs`
--
ALTER TABLE `invoice_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=768;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
-- AUTO_INCREMENT for table `salary_grades`
--
ALTER TABLE `salary_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `salary_payments`
--
ALTER TABLE `salary_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
