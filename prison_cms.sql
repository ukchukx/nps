-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2018 at 08:23 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prison_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `recruit`
--

CREATE TABLE IF NOT EXISTS `recruit` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `fname` tinytext NOT NULL,
  `sname` tinytext NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `filled` tinyint(1) DEFAULT 0
);

CREATE TABLE IF NOT EXISTS `personal_details` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `recruit_id` int(11) UNSIGNED UNIQUE NOT NULL,
  `title` varchar(3),
  `mname` tinytext,
  `gender` varchar(6),
  `nationality` tinytext,
  `dob` varchar(20),
  `height` varchar(20),
  `nin` varchar(20),
  `phone` varchar(100),
  `permAddress` tinytext,
  `permStreet` tinytext,
  `permLga` tinytext,
  `permState` tinytext,
  `curAddress` tinytext,
  `curStreet` tinytext,
  `curLga` tinytext,
  `curState` tinytext,
  `prefAddress` tinytext
);

CREATE TABLE IF NOT EXISTS `educational_qualifications` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `recruit_id` int(11) UNSIGNED NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `qualification` tinytext NOT NULL,
  `institution` tinytext NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `professional_qualifications` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `recruit_id` int(11) UNSIGNED NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `qualification` tinytext,
  `institution` tinytext NOT NULL,
  `city` varchar(50),
  `country` varchar(50),
  `reg_no` varchar(50),
  `level` varchar(50),
  `grade` varchar(50),
  `fos` tinytext,
  `highest_qual` tinytext
);

CREATE TABLE IF NOT EXISTS `work_experience` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `recruit_id` int(11) UNSIGNED NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `role` tinytext,
  `organization` tinytext NOT NULL
);

CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `recruit_id` int(11) UNSIGNED NOT NULL,
  `title` tinytext NOT NULL,
  `path` tinytext NOT NULL
);

CREATE TABLE IF NOT EXISTS `attachments_list` (
`id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `degree` tinytext NOT NULL,
  `status` int(11) NOT NULL
);

INSERT INTO `attachments_list` (`id`, `degree`, `status`) VALUES
(1, 'MPhil/Phd', 1),
(2, 'MBA/Msc', 1),
(3, 'MBBS', 1),
(4, 'BSc', 1),
(5, 'HND', 1),
(6, 'OND', 1),
(7, 'N.C.E', 1),
(8, 'Diploma', 1),
(9, 'SSCE(WAEC)', 1),
(10, 'SSCE(NECO)', 1),
(11, 'Vocational', 1),
(12, 'Others', 1),
(13, 'Birth Certificate/Age Declaration', 0),
(14, 'Passport Photograph', 0);

CREATE TABLE IF NOT EXISTS `countries` (
`id` int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) UNIQUE NOT NULL
);

INSERT INTO `countries` (`name`) VALUES
("Afghanistan"),
("Åland Islands"),
("Albania"),
("Algeria"),
("American Samoa"),
("Andorra"),
("Angola"),
("Anguilla"),
("Antarctica"),
("Antigua and Barbuda"),
("Argentina"),
("Armenia"),
("Aruba"),
("Australia"),
("Austria"),
("Azerbaijan"),
("Bahamas"),
("Bahrain"),
("Bangladesh"),
("Barbados"),
("Belarus"),
("Belgium"),
("Belize"),
("Benin"),
("Bermuda"),
("Bhutan"),
("Bolivia"),
("Bonaire, Sint Eustatius and Saba"),
("Bosnia and Herzegovina"),
("Botswana"),
("Bouvet Island"),
("Brazil"),
("British Indian Ocean Territory"),
("United States Minor Outlying Islands"),
("Virgin Islands (British)"),
("Virgin Islands (U.S.)"),
("Brunei"),
("Bulgaria"),
("Burkina Faso"),
("Burundi"),
("Cambodia"),
("Cameroon"),
("Canada"),
("Cabo Verde"),
("Cayman Islands"),
("Central African Republic"),
("Chad"),
("Chile"),
("China"),
("Christmas Island"),
("Cocos (Keeling) Islands"),
("Colombia"),
("Comoros"),
("Congo"),
("Congo Democratic Republic"),
("Cook Islands"),
("Costa Rica"),
("Croatia"),
("Cuba"),
("Curaçao"),
("Cyprus"),
("Czech Republic"),
("Denmark"),
("Djibouti"),
("Dominica"),
("Dominican Republic"),
("Ecuador"),
("Egypt"),
("El Salvador"),
("Equatorial Guinea"),
("Eritrea"),
("Estonia"),
("Ethiopia"),
("Falkland Islands"),
("Faroe Islands"),
("Fiji"),
("Finland"),
("France"),
("French Guiana"),
("French Polynesia"),
("French Southern Territories"),
("Gabon"),
("Gambia"),
("Georgia"),
("Germany"),
("Ghana"),
("Gibraltar"),
("Greece"),
("Greenland"),
("Grenada"),
("Guadeloupe"),
("Guam"),
("Guatemala"),
("Guernsey"),
("Guinea"),
("Guinea-Bissau"),
("Guyana"),
("Haiti"),
("Heard Island and McDonald Islands"),
("Holy See"),
("Honduras"),
("Hong Kong"),
("Hungary"),
("Iceland"),
("India"),
("Indonesia"),
("Côte d'Ivoire"),
("Islamic Republic of Iran"),
("Iraq"),
("Ireland"),
("Isle of Man"),
("Israel"),
("Italy"),
("Jamaica"),
("Japan"),
("Jersey"),
("Jordan"),
("Kazakhstan"),
("Kenya"),
("Kiribati"),
("Kuwait"),
("Kyrgyzstan"),
("Lao People's Democratic Republic"),
("Latvia"),
("Lebanon"),
("Lesotho"),
("Liberia"),
("Libya"),
("Liechtenstein"),
("Lithuania"),
("Luxembourg"),
("Macao"),
("Macedonia"),
("Madagascar"),
("Malawi"),
("Malaysia"),
("Maldives"),
("Mali"),
("Malta"),
("Marshall Islands"),
("Martinique"),
("Mauritania"),
("Mauritius"),
("Mayotte"),
("Mexico"),
("Micronesia"),
("Moldova"),
("Monaco"),
("Mongolia"),
("Montenegro"),
("Montserrat"),
("Morocco"),
("Mozambique"),
("Myanmar"),
("Namibia"),
("Nauru"),
("Nepal"),
("Netherlands"),
("New Caledonia"),
("New Zealand"),
("Nicaragua"),
("Niger"),
("Nigeria"),
("Niue"),
("Norfolk Island"),
("Democratic People's Republic of Korea"),
("Northern Mariana Islands"),
("Norway"),
("Oman"),
("Pakistan"),
("Palau"),
("Palestine"),
("Panama"),
("Papua New Guinea"),
("Paraguay"),
("Peru"),
("Philippines"),
("Pitcairn"),
("Poland"),
("Portugal"),
("Puerto Rico"),
("Qatar"),
("Republic of Kosovo"),
("Réunion"),
("Romania"),
("Russian Federation"),
("Rwanda"),
("Saint Barthélemy"),
("Saint Helena, Ascension and Tristan da Cunha"),
("Saint Kitts and Nevis"),
("Saint Lucia"),
("Saint Martin (French part)"),
("Saint Pierre and Miquelon"),
("Saint Vincent and the Grenadines"),
("Samoa"),
("San Marino"),
("Sao Tome and Principe"),
("Saudi Arabia"),
("Senegal"),
("Serbia"),
("Seychelles"),
("Sierra Leone"),
("Singapore"),
("Sint Maarten (Dutch part)"),
("Slovakia"),
("Slovenia"),
("Solomon Islands"),
("Somalia"),
("South Africa"),
("South Georgia and the South Sandwich Islands"),
("Republic of Korea"),
("South Sudan"),
("Spain"),
("Sri Lanka"),
("Sudan"),
("Suriname"),
("Svalbard and Jan Mayen"),
("Swaziland"),
("Sweden"),
("Switzerland"),
("Syrian Arab Republic"),
("Taiwan"),
("Tajikistan"),
("Tanzania, United Republic of"),
("Thailand"),
("Timor-Leste"),
("Togo"),
("Tokelau"),
("Tonga"),
("Trinidad and Tobago"),
("Tunisia"),
("Turkey"),
("Turkmenistan"),
("Turks and Caicos Islands"),
("Tuvalu"),
("Uganda"),
("Ukraine"),
("United Arab Emirates"),
("United Kingdom of Great Britain and Northern Ireland"),
("United States of America"),
("Uruguay"),
("Uzbekistan"),
("Vanuatu"),
("Venezuela"),
("Vietnam"),
("Wallis and Futuna"),
("Western Sahara"),
("Yemen"),
("Zambia"),
("Zimbabwe");
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
