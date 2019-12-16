-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2019 at 06:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fields`
--

CREATE TABLE `tbl_fields` (
  `field_id` int(2) NOT NULL,
  `field_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fields`
--

INSERT INTO `tbl_fields` (`field_id`, `field_name`) VALUES
(1, 'development-categories'),
(2, 'design-categories'),
(3, 'both-categories');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_link_fields`
--

CREATE TABLE `tbl_link_fields` (
  `proj_fields_id` int(2) NOT NULL,
  `proj_id` int(2) NOT NULL,
  `fields_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_link_fields`
--

INSERT INTO `tbl_link_fields` (`proj_fields_id`, `proj_id`, `fields_id`) VALUES
(1, 1, 3),
(3, 2, 3),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_link_tools`
--

CREATE TABLE `tbl_link_tools` (
  `proj_tools_id` int(2) NOT NULL,
  `proj_id` int(2) NOT NULL,
  `tools_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_link_tools`
--

INSERT INTO `tbl_link_tools` (`proj_tools_id`, `proj_id`, `tools_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 6),
(5, 1, 7),
(6, 1, 9),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(10, 2, 9),
(11, 3, 1),
(12, 3, 2),
(13, 3, 3),
(14, 3, 5),
(15, 3, 7),
(16, 3, 4),
(17, 4, 1),
(18, 4, 2),
(19, 4, 3),
(20, 5, 1),
(21, 5, 2),
(22, 5, 3),
(23, 5, 4),
(24, 6, 10),
(25, 6, 11),
(26, 6, 12),
(27, 7, 6),
(28, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `ID` int(2) NOT NULL,
  `projects_id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `image_2` varchar(200) NOT NULL,
  `image_3` varchar(200) NOT NULL,
  `header` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `promo_text` varchar(500) NOT NULL,
  `paragraph_1` varchar(1000) NOT NULL,
  `paragraph_2` varchar(500) NOT NULL,
  `paragraph_3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`ID`, `projects_id`, `name`, `thumbnail`, `image_2`, `image_3`, `header`, `link`, `promo_text`, `paragraph_1`, `paragraph_2`, `paragraph_3`) VALUES
(1, 1, 'Critter Spray Product', 'images/portfolio_piece/project_thumbnails/thumbnail_1.jpg', 'images/portfolio_piece/critterspraygun/img_2.jpg', 'images/portfolio_piece/critterspraygun/img_3.jpg', '<img src=\"images/portfolio_piece/critterspraygun/header.jpg\" alt=\"header\">', 'http://crittersprayproducts.ca/,https://github.com/lanle98/Critter_Spraygun', 'Critter Spray Product is a spray gun business which provide an easy and economical way to spray.\r\n\r\n\r\n', 'The first real client website that I had a chance to work on after my first year of college. The goal was to redesign an old existing website into a more up-to-date content and a more user-friendly one.\r\n<br>\r\nSince the owner wants to put new photos of the products on Amazon as well as on the website, I recreated the logo and edited the images that the owner provided for the work using Photoshop and Illustrator. At the same time, I started working on the new design and new colour theme for the website using Sketch. After a few changes, we came up with the final design and I started coding using HTML, CSS, and JavaScript.', 'The whole process took 20 hours in total from the start to the end. I finally experienced what working with a real client is, to deal with their changes and to meet their requirements, it was not easy at all. However, I really appreciate this experience because I have learned new things for my soft-skills and also gained some new knowledge about SEO and SSL certificate.', ''),
(2, 2, 'The TRAA', 'images/portfolio_piece/project_thumbnails/thumbnail_2.jpg', 'images/portfolio_piece/traa/img_2.jpg', 'images/portfolio_piece/traa/img_3.jpg', '<img src=\"images/portfolio_piece/traa/header.jpg\" alt=\"header\">', 'https://github.com/lanle98/Le_Kandych_Final_Integrated', 'Thames River Anglers Association is an angler club and also a \"hands on\" environmental group who likes to work at a grass roots level.\r\n\r\n', '\r\nThe project was aimed to redesign the old website of this group using HTML, CSS, JavaScript and designed by Sketch and Photoshop.\r\n<br>\r\nIn a group of two, I was responsible for the development parts of the site. Besides, I also did some of the design parts such as the colour theme and the wireframe for the home page.\r\n', '\r\n', ''),
(3, 3, 'Terrestrial Planets', 'images/portfolio_piece/project_thumbnails/thumbnail_3.gif', 'images/portfolio_piece/terrestrial_planets/img_2.jpg', 'images/portfolio_piece/terrestrial_planets/img_3.jpg', '<img src=\"images/portfolio_piece/terrestrial_planets/header.jpg\" alt=\"header\">', 'https://github.com/lanle98/Le_Lan_InteractivePoster', 'Terrestrial Planets is an interactive poster providing information of four terrestrial planets: Mercury, Venus, Earth, Mars.', 'The poster was created in Illustrator and exported as SVG image to have interactions with Javascript and GSAP for its animation.', 'It was also an experience working with database where I store the information of the planets.', ''),
(4, 4, 'Digital Lights', 'images/portfolio_piece/project_thumbnails/thumbnail_4.jpg', 'images/portfolio_piece/digital_lights/img_2.jpg', 'images/portfolio_piece/digital_lights/img_3.jpg', '<img src=\"images/portfolio_piece/digital_lights/header.jpg\" alt=\"header\">', 'https://github.com/lanle98/Le_Kandych_Chang_Romanko_Bootcamp,https://idpbootcamp.herokuapp.com/index.html', 'Digital Lights is a group of passionate creatives who are committed to bringing a special shine to all of their work.', 'As a bootcamp project, we had 2 weeks in total to create a brand new marketing business from scratch.\r\n<br>\r\nIn a group of 4, we work together to   come up with the name, colour theme, target clients and a website for the business. I was responsible for the development part of the project. \r\n', '', ''),
(5, 5, 'Weather App', 'images/portfolio_piece/project_thumbnails/thumbnail_5.jpg', 'images/portfolio_piece/weather_app/img_2.jpg', 'images/portfolio_piece/weather_app/img_3.jpg', '<img src=\"images/portfolio_piece/weather_app/header.jpg\" alt=\"header\">', 'https://github.com/lanle98/Le_Lan_Weatherapp', 'Weather app is a project using AJAX technology and open API from Open Weather Map to build a real-time weather app', '', '', ''),
(6, 6, 'Demo Reel', 'images/portfolio_piece/project_thumbnails/thumbnail_6.gif', 'images/portfolio_piece/demo_reel/img_2.jpg', 'images/portfolio_piece/demo_reel/img_3.jpg', '<video type=\"video/mp4\" controls src=\"images/portfolio_piece/project_thumbnails/thumbnail_6.mp4\" alt=\"header\">', '', 'Lan Le Demo Reel includes the projects that I have accomplished during school, highlighting the usages of Cinema 4D, After Effects and Premiere Pro.', '', '', ''),
(7, 7, 'DOF Bag', 'images/portfolio_piece/project_thumbnails/thumbnail_7.jpg', 'images/portfolio_piece/dofbag/img_2.jpg', 'images/portfolio_piece/dofbag/img_3.jpg', '<img src=\"images/portfolio_piece/dofbag/header.jpg\" alt=\"header\">', 'https://www.instagram.com/dof.bag/', 'DOF Bag is an online Vietnamese store selling purse bags with teen girls who go to high school are the main target of the business.', 'The logo is a combination of the 3 letters \"D\", \"O\", \"F\" in which create a handbag shape for the general look of the logo. The colour theme are pink and brown that was required by the owner of the business.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools`
--

CREATE TABLE `tbl_tools` (
  `tools_id` int(2) NOT NULL,
  `tools_name` varchar(20) NOT NULL,
  `tools_icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tools`
--

INSERT INTO `tbl_tools` (`tools_id`, `tools_name`, `tools_icon`) VALUES
(1, 'HTML', 'html.svg'),
(2, 'CSS', 'css.svg'),
(3, 'JavaScript', 'js.svg'),
(4, 'NodeJS', 'nodejs.svg'),
(5, 'Greensock Animation', 'gsap.svg'),
(6, 'Photoshop', 'photoshop.svg'),
(7, 'Illustrator', 'illustrator.svg'),
(8, 'Sketch', 'sketch.svg'),
(9, 'Adobe XD', 'adobexd.svg'),
(10, 'After Effects', 'after_effects.svg'),
(11, 'Premiere Pro', 'premiere_pro.svg'),
(12, 'Cinema 4D', 'cinema4d.png'),
(13, 'PHP', 'php.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_fields`
--
ALTER TABLE `tbl_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `tbl_link_fields`
--
ALTER TABLE `tbl_link_fields`
  ADD PRIMARY KEY (`proj_fields_id`);

--
-- Indexes for table `tbl_link_tools`
--
ALTER TABLE `tbl_link_tools`
  ADD PRIMARY KEY (`proj_tools_id`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  ADD PRIMARY KEY (`tools_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_fields`
--
ALTER TABLE `tbl_fields`
  MODIFY `field_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_link_fields`
--
ALTER TABLE `tbl_link_fields`
  MODIFY `proj_fields_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_link_tools`
--
ALTER TABLE `tbl_link_tools`
  MODIFY `proj_tools_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `tools_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
