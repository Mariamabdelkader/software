-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2019 at 11:02 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softwareproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountingoption`
--

DROP TABLE IF EXISTS `accountingoption`;
CREATE TABLE IF NOT EXISTS `accountingoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `name` varchar(300) NOT NULL,
  `isdelete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accountingtype`
--

DROP TABLE IF EXISTS `accountingtype`;
CREATE TABLE IF NOT EXISTS `accountingtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accountingtypyeoption`
--

DROP TABLE IF EXISTS `accountingtypyeoption`;
CREATE TABLE IF NOT EXISTS `accountingtypyeoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionid` int(11) NOT NULL,
  `typyid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounting value`
--

DROP TABLE IF EXISTS `accounting value`;
CREATE TABLE IF NOT EXISTS `accounting value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL,
  `accountingtypy` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `AddressRefrenceID` int(11) DEFAULT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AddressRefrenceID` (`AddressRefrenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ID`, `Name`, `AddressRefrenceID`, `ISDelete`) VALUES
(2, 'country', NULL, 0),
(4, 'Egypt', 2, 0),
(14, 'cairo', 4, 0),
(15, 'Alex', 4, 0),
(16, 'germany', 2, 0),
(17, 'berlin', 16, 0),
(18, 'USA', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(300) NOT NULL,
  `Model` varchar(300) NOT NULL,
  `DateOFEntery` date NOT NULL,
  `Color` varchar(300) NOT NULL,
  `License` int(11) NOT NULL,
  `CarSpeedMeter` int(255) NOT NULL,
  `service` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OptionID` (`Model`),
  KEY `GarageID` (`Type`),
  KEY `service` (`service`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`ID`, `Type`, `Model`, `DateOFEntery`, `Color`, `License`, `CarSpeedMeter`, `service`, `ISDelete`) VALUES
(7, 'BYD', 'BYD', '2019-03-05', 'RED', 545454, 30, 1, 0),
(8, 'BYD', 'BYD', '2019-03-11', 'RED', 54954125, 30, 1, 0),
(9, 'BYD', 'BYD', '2019-03-05', 'RED', 154412154, 30, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cardriver`
--

DROP TABLE IF EXISTS `cardriver`;
CREATE TABLE IF NOT EXISTS `cardriver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DriverID` int(11) NOT NULL,
  `CarID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DriverID` (`DriverID`),
  KEY `CarID` (`CarID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParrentNumber` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`ID`, `ParrentNumber`, `ISDelete`) VALUES
(10, 1002591253, 0),
(11, 1150837472, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `Subject` varchar(300) NOT NULL,
  `Message` text NOT NULL,
  `UserTypeID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserTypeID` (`UserTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `Name`, `Email`, `Telephone`, `Subject`, `Message`, `UserTypeID`, `ISDelete`) VALUES
(1, 'Hadeer', 'hadeermedhat9@gmail.com', 1150837472, 'Events', 'They donot came on time', 1, 0),
(2, 'Ahmed', 'ahmedwaleed@yahoo.com', 1150837472, 'Events', 'They donot came on time', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
CREATE TABLE IF NOT EXISTS `donation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`ID`, `Name`, `ISDelete`) VALUES
(1, 'Hospital', 0),
(2, 'Money', 0),
(3, 'Money', 0),
(4, 'Money', 0),
(5, 'Money', 0),
(6, 'Money', 0),
(7, '', 0),
(8, '', 0),
(9, 'Color', 0),
(10, 'Color', 0),
(11, 'Color', 0),
(12, 'Blood', 0),
(13, 'Machines', 0),
(14, 'Money', 0),
(15, 'Blood', 0),
(16, 'blood', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donationoption`
--

DROP TABLE IF EXISTS `donationoption`;
CREATE TABLE IF NOT EXISTS `donationoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DonationID` int(11) NOT NULL,
  `OptionID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DonationID` (`DonationID`),
  KEY `OptionID` (`OptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donationoption`
--

INSERT INTO `donationoption` (`ID`, `DonationID`, `OptionID`, `ISDelete`) VALUES
(1, 3, 1, 0),
(2, 1, 1, 0),
(3, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donationoptionvalue`
--

DROP TABLE IF EXISTS `donationoptionvalue`;
CREATE TABLE IF NOT EXISTS `donationoptionvalue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DonationOptionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Value` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DonationOptionID` (`DonationOptionID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `LicenseType` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edit`
--

DROP TABLE IF EXISTS `edit`;
CREATE TABLE IF NOT EXISTS `edit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `DateUpdate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `EventType` int(11) NOT NULL,
  `UserType` int(11) NOT NULL,
  `NumberOfVolanteers` int(200) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EventType` (`EventType`),
  KEY `UserType` (`UserType`),
  KEY `AddressID` (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventstype`
--

DROP TABLE IF EXISTS `eventstype`;
CREATE TABLE IF NOT EXISTS `eventstype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventstype`
--

INSERT INTO `eventstype` (`ID`, `Name`) VALUES
(1, 'Clothes');

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
CREATE TABLE IF NOT EXISTS `garage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `Status` varchar(300) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garage`
--

INSERT INTO `garage` (`ID`, `Name`, `Status`, `Capacity`, `ISDelete`) VALUES
(1, 'Garage', 'ghhgdjshjf', 30, 0),
(2, 'Garage', 'ghhgdjshjf', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhysicalAddress` varchar(500) NOT NULL,
  `FriendAddress` varchar(300) NOT NULL,
  `Html` text NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mail` varchar(500) NOT NULL,
  `Userid` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nursery`
--

DROP TABLE IF EXISTS `nursery`;
CREATE TABLE IF NOT EXISTS `nursery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `NumberOfChildren` int(255) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AddressID` (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nursery`
--

INSERT INTO `nursery` (`ID`, `Name`, `AddressID`, `NumberOfChildren`, `ISDelete`) VALUES
(3, 'ChildrenNursary', 1, 80, 0),
(4, 'ChildrenNursary', 1, 80, 0),
(5, 'ChildrenNursary', 1, 80, 0),
(6, 'ChildrenNursary', 1, 80, 0),
(7, 'KidsPlayGarden', 1, 800, 0),
(8, 'KidsPlayGarden', 1, 800, 0),
(9, 'KidsArea', 1, 50, 0),
(10, 'PlayingGarden', 1, 100, 0),
(11, 'PlayingGarden', 1, 100, 0),
(13, 'Nursary', 1, 100, 0),
(14, 'Nursary', 1, 100, 0),
(15, 'NursaryGarden', 1, 80, 0),
(16, 'NursaryGarden', 1, 80, 0),
(17, 'Nursary', 1, 80, 0),
(18, 'Nursary', 1, 80, 0),
(19, 'Garden', 1, 80, 0),
(20, 'ChildrenNursary', 1, 80, 0),
(21, 'ChildrenNursary', 1, 80, 0),
(22, 'ChildrenNursary', 1, 80, 0),
(23, 'ChildrenNursary', 1, 80, 0),
(24, 'ChildrenNursary', 1, 80, 0),
(25, 'ChildrenNursary', 1, 80, 0),
(26, 'PlayingGarden', 1, 80, 0),
(27, 'KIDSGARDEN', 1, 80, 0),
(28, 'KIDSGARDEN', 1, 80, 0),
(29, 'PlayingGarden', 1, 80, 0),
(30, 'KidsArea', 1, 80, 0),
(31, 'KidsArea', 1, 80, 0),
(32, 'KidsArea', 1, 80, 0),
(33, 'KidsArea', 1, 80, 0),
(34, 'KidsArea', 1, 80, 0),
(35, 'KidsArea', 1, 80, 0),
(36, 'KidsArea', 1, 80, 0),
(37, 'KidsArea', 1, 80, 0),
(38, 'KidsArea', 1, 80, 0),
(39, 'KidsArea', 1, 80, 0),
(40, 'KidsArea', 1, 80, 0),
(41, 'KidsArea', 1, 80, 0),
(42, 'KidsArea', 1, 80, 0),
(43, 'ChildrenNursary', 1, 80, 0),
(44, 'Children', 1, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nurserychildren`
--

DROP TABLE IF EXISTS `nurserychildren`;
CREATE TABLE IF NOT EXISTS `nurserychildren` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ChildrenID` int(11) NOT NULL,
  `NurseryID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ChildrenID` (`ChildrenID`),
  KEY `NurseryID` (`NurseryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `optionsofdonation`
--

DROP TABLE IF EXISTS `optionsofdonation`;
CREATE TABLE IF NOT EXISTS `optionsofdonation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optionsofdonation`
--

INSERT INTO `optionsofdonation` (`ID`, `Name`, `Type`, `ISDelete`) VALUES
(1, 'Amount', 'Numbers', 0),
(2, 'TYPE', 'text', 0),
(3, 'size', 'text', 0),
(4, 'Color', 'text', 0),
(5, 'Color', 'text', 0),
(6, 'Color', 'text', 0),
(7, 'Blood', 'Character', 0),
(8, 'Machines', 'text', 0),
(9, 'Money', '', 0),
(11, 'blood', 'Character', 0),
(12, 'color', 'integer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `optionsofstore`
--

DROP TABLE IF EXISTS `optionsofstore`;
CREATE TABLE IF NOT EXISTS `optionsofstore` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodoptions`
--

DROP TABLE IF EXISTS `paymentmethodoptions`;
CREATE TABLE IF NOT EXISTS `paymentmethodoptions` (
  `ID` int(11) NOT NULL,
  `PaymentID` int(11) NOT NULL,
  `OptionID` int(11) NOT NULL,
  KEY `PaymentID` (`PaymentID`),
  KEY `OptionID` (`OptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentoption`
--

DROP TABLE IF EXISTS `paymentoption`;
CREATE TABLE IF NOT EXISTS `paymentoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentvalue`
--

DROP TABLE IF EXISTS `paymentvalue`;
CREATE TABLE IF NOT EXISTS `paymentvalue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentMethodID` int(11) NOT NULL,
  `Value` varchar(300) NOT NULL,
  `Userid` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PaymentMethodID` (`PaymentMethodID`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` text NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `report`, `value`) VALUES
(1, 'SDXFCGVHBJNKML,;.LKJHGFDSFCGVHBJNMK,LMNBVCX', 5);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storeoption`
--

DROP TABLE IF EXISTS `storeoption`;
CREATE TABLE IF NOT EXISTS `storeoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StoreID` int(11) NOT NULL,
  `OptionID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `StoreID` (`StoreID`),
  KEY `OptionID` (`OptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storeoptionvalue`
--

DROP TABLE IF EXISTS `storeoptionvalue`;
CREATE TABLE IF NOT EXISTS `storeoptionvalue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StoreOptionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Value` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `StoreOptionID` (`StoreOptionID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
CREATE TABLE IF NOT EXISTS `telephone` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Number` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(300) NOT NULL,
  `LastName` varchar(300) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `TypeID` int(11) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `Gender` varchar(300) NOT NULL,
  `Password` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `TypeID` (`TypeID`),
  KEY `AddressID` (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`ID`, `Name`, `ISDelete`) VALUES
(1, 'children', 0),
(2, 'Driver', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertypelink`
--

DROP TABLE IF EXISTS `usertypelink`;
CREATE TABLE IF NOT EXISTS `usertypelink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `LinkID` int(11) NOT NULL,
  `ISDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `LinkID` (`LinkID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`AddressRefrenceID`) REFERENCES `address` (`ID`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`id`);

--
-- Constraints for table `cardriver`
--
ALTER TABLE `cardriver`
  ADD CONSTRAINT `cardriver_ibfk_1` FOREIGN KEY (`DriverID`) REFERENCES `driver` (`ID`),
  ADD CONSTRAINT `cardriver_ibfk_2` FOREIGN KEY (`CarID`) REFERENCES `car` (`ID`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`UserTypeID`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `donationoption`
--
ALTER TABLE `donationoption`
  ADD CONSTRAINT `donationoption_ibfk_1` FOREIGN KEY (`DonationID`) REFERENCES `donation` (`ID`),
  ADD CONSTRAINT `donationoption_ibfk_2` FOREIGN KEY (`OptionID`) REFERENCES `optionsofdonation` (`ID`);

--
-- Constraints for table `donationoptionvalue`
--
ALTER TABLE `donationoptionvalue`
  ADD CONSTRAINT `donationoptionvalue_ibfk_1` FOREIGN KEY (`DonationOptionID`) REFERENCES `donationoption` (`ID`),
  ADD CONSTRAINT `donationoptionvalue_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `edit`
--
ALTER TABLE `edit`
  ADD CONSTRAINT `edit_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`EventType`) REFERENCES `eventstype` (`ID`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`UserType`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `user` (`ID`);

--
-- Constraints for table `nurserychildren`
--
ALTER TABLE `nurserychildren`
  ADD CONSTRAINT `nurserychildren_ibfk_1` FOREIGN KEY (`ChildrenID`) REFERENCES `children` (`ID`),
  ADD CONSTRAINT `nurserychildren_ibfk_2` FOREIGN KEY (`NurseryID`) REFERENCES `nursery` (`ID`);

--
-- Constraints for table `paymentmethodoptions`
--
ALTER TABLE `paymentmethodoptions`
  ADD CONSTRAINT `paymentmethodoptions_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`),
  ADD CONSTRAINT `paymentmethodoptions_ibfk_2` FOREIGN KEY (`OptionID`) REFERENCES `paymentoption` (`ID`);

--
-- Constraints for table `paymentvalue`
--
ALTER TABLE `paymentvalue`
  ADD CONSTRAINT `paymentvalue_ibfk_1` FOREIGN KEY (`PaymentMethodID`) REFERENCES `paymentoption` (`ID`),
  ADD CONSTRAINT `paymentvalue_ibfk_2` FOREIGN KEY (`Userid`) REFERENCES `user` (`ID`);

--
-- Constraints for table `storeoption`
--
ALTER TABLE `storeoption`
  ADD CONSTRAINT `storeoption_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `store` (`ID`),
  ADD CONSTRAINT `storeoption_ibfk_2` FOREIGN KEY (`OptionID`) REFERENCES `optionsofstore` (`ID`);

--
-- Constraints for table `storeoptionvalue`
--
ALTER TABLE `storeoptionvalue`
  ADD CONSTRAINT `storeoptionvalue_ibfk_1` FOREIGN KEY (`StoreOptionID`) REFERENCES `storeoption` (`ID`),
  ADD CONSTRAINT `storeoptionvalue_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `telephone`
--
ALTER TABLE `telephone`
  ADD CONSTRAINT `telephone_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `user` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `usertype` (`ID`);

--
-- Constraints for table `usertypelink`
--
ALTER TABLE `usertypelink`
  ADD CONSTRAINT `usertypelink_ibfk_1` FOREIGN KEY (`LinkID`) REFERENCES `links` (`ID`),
  ADD CONSTRAINT `usertypelink_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `usertype` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
