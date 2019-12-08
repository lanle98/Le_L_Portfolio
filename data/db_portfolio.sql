-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2019 at 05:33 AM
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
  `paragraph_1` varchar(500) NOT NULL,
  `paragraph_2` varchar(500) NOT NULL,
  `paragraph_3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`ID`, `projects_id`, `name`, `thumbnail`, `image_2`, `image_3`, `header`, `link`, `promo_text`, `paragraph_1`, `paragraph_2`, `paragraph_3`) VALUES
(1, 1, 'Critter Spray Product', 'images/portfolio_piece/project_thumbnails/thumbnail_1.jpg', 'images/portfolio_piece/critterspraygun/img_2.jpg', 'images/portfolio_piece/critterspraygun/img_3.jpg', '<img src=\"images/portfolio_piece/critterspraygun/header.jpg\" alt=\"header\">', 'http://crittersprayproducts.ca/', 'The first real client website that I had a chance to work on after the first year studying at Fanshawe College. The goal was to redesign an old existing website about an online spray products business that was built 20 years ago into a more up-to-date content and more user-friendly one.\r\n<br>\r\nAfter looking through all the works that I have done during the first year in college, the client decided to hire me to make a new website for his business.\r\n\r\n\r\n', 'Since he wants to put new photos of his products on Amazon as well as his website, I recreated the logo and edited the images that he provided for the work using Photoshop and Illustrator. At the same time, I started working on the new design and new colour theme for his website. After few changes, we came up with the final design and I started coding using HTML, CSS and JavaScript. The whole process took 20 hours in total from the start to the end.\r\n', 'I finally experienced what working with real client is, to deal with their changes and to meet their requirements, it was not easy at all. However, I really appreciate this experience because I have learned new things  for my soft-skills and also gained some new knowledge about SEO and SSL certificate.', ''),
(2, 2, 'TRAA', 'images/portfolio_piece/project_thumbnails/thumbnail_2.jpg', 'images/portfolio_piece/traa/img_2.jpg', 'images/portfolio_piece/traa/img_3.jpg', '<img src=\"images/portfolio_piece/traa/header.jpg\" alt=\"header\">', '', '', '', '', ''),
(3, 3, 'The Terrestrial Planets', 'images/portfolio_piece/project_thumbnails/thumbnail_3.gif', 'images/portfolio_piece/terrestrial_planets/img_2.jpg', 'images/portfolio_piece/terrestrial_planets/img_3.jpg', '<img src=\"images/portfolio_piece/terrestrial_planets/header.jpg\" alt=\"header\">', '', '', '', '', ''),
(4, 4, 'Digital Lights', 'images/portfolio_piece/project_thumbnails/thumbnail_4.jpg', 'images/portfolio_piece/digital_lights/img_2.jpg', 'images/portfolio_piece/digital_lights/img_3.jpg', '<img src=\"images/portfolio_piece/digital_lights/header.jpg\" alt=\"header\">', 'https://github.com/lanle98/Le_Kandych_Chang_Romanko_Bootcamp,https://idpbootcamp.herokuapp.com/index.html', '', '', '', ''),
(5, 5, 'Weather App', 'images/portfolio_piece/project_thumbnails/thumbnail_5.jpg', '', '', '', '', '', '', '', ''),
(6, 6, 'Demo Reel', 'images/portfolio_piece/project_thumbnails/thumbnail_6.gif', 'images/portfolio_piece/demo_reel/img_2.jpg', 'images/portfolio_piece/demo_reel/img_3.jpg', '<video type=\"video/mp4\" controls src=\"images/portfolio_piece/project_thumbnails/thumbnail_6.mp4\" alt=\"header\">', '', '', '', '', ''),
(7, 7, 'DOF Bag', 'images/portfolio_piece/project_thumbnails/thumbnail_7.jpg', 'images/portfolio_piece/dofbag/img_2.jpg', 'images/portfolio_piece/dofbag/img_3.jpg', '<img src=\"images/portfolio_piece/dofbag/header.jpg\" alt=\"header\">', 'https://www.instagram.com/dof.bag/', '', '', '', '');

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
(1, 'HTML', 'fab-html'),
(2, 'CSS', 'fa-css3-alt'),
(3, 'JavaScript', 'fa-js');

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
  MODIFY `proj_tools_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `tools_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
