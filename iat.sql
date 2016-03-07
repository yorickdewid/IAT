-- Host: localhost
-- Generation Time: Mar 07, 2016 at 05:36 PM
-- Server version: 10.0.23-MariaDB-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iat`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
`CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(45) DEFAULT NULL,
  `DataLabel` varchar(45) DEFAULT NULL,
  `ItemType` varchar(45) DEFAULT NULL,
  `Label` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Category_has_item`
--

CREATE TABLE IF NOT EXISTS `Category_has_item` (
  `Category_CategoryId` int(11) NOT NULL,
  `Item_ItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE IF NOT EXISTS `Item` (
`ItemId` int(11) NOT NULL,
  `Items` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Result`
--

CREATE TABLE IF NOT EXISTS `Result` (
`ResultId` int(11) NOT NULL,
  `TemplateId` int(11) NOT NULL,
  `TemplateName` text,
  `Blocki` int(11) DEFAULT NULL,
  `Trialj` int(11) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `ItemIndex` varchar(45) DEFAULT NULL,
  `Errors` varchar(45) DEFAULT NULL,
  `MSeconds` varchar(45) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Template`
--

CREATE TABLE IF NOT EXISTS `Template` (
`TemplateId` int(11) NOT NULL,
  `TemplateName` text,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ShowResult` varchar(45) DEFAULT NULL,
  `IATtype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Template_has_category`
--

CREATE TABLE IF NOT EXISTS `Template_has_category` (
  `Template_TemplateId` int(11) NOT NULL,
  `Category_CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
 ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `Category_has_item`
--
ALTER TABLE `Category_has_item`
 ADD PRIMARY KEY (`Category_CategoryId`,`Item_ItemId`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
 ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `Result`
--
ALTER TABLE `Result`
 ADD PRIMARY KEY (`ResultId`);

--
-- Indexes for table `Template`
--
ALTER TABLE `Template`
 ADD PRIMARY KEY (`TemplateId`);

--
-- Indexes for table `Template_has_category`
--
ALTER TABLE `Template_has_category`
 ADD PRIMARY KEY (`Template_TemplateId`,`Category_CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Item`
--
ALTER TABLE `Item`
MODIFY `ItemId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Result`
--
ALTER TABLE `Result`
MODIFY `ResultId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Template`
--
ALTER TABLE `Template`
MODIFY `TemplateId` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
