-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 10:25 AM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmathur01`
--

-- --------------------------------------------------------

--
-- Table structure for table `Companies`
--

CREATE TABLE `Companies` (
  `CompanyID` int(11) NOT NULL,
  `CompanyName` varchar(175) NOT NULL,
  `CompanyPhone` varchar(175) DEFAULT NULL,
  `CompanyEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Companies`
--

INSERT INTO `Companies` (`CompanyID`, `CompanyName`, `CompanyPhone`, `CompanyEmail`) VALUES
(1, 'HomeBuying', '442030123', 'HomeBuying@gmail.com'),
(2, 'TheWayPoint', '4420301230', 'TheWayPoint@hotmail.com'),
(3, 'SoftwareDevelopment', '4428392123', 'Softwares@gmail.com'),
(4, 'TheNetwork', '44203231230', 'Network@gmail.com'),
(5, 'TheBrewing', '4420231230', 'BrewingAgency@gmail.com'),
(6, 'TheCloud', '4432301230', 'TheCloud@gmail.com'),
(7, 'TheAIMotive', '4453301230', 'TheMotive@gmail.com'),
(8, 'CyberDefense', '442230421', 'TheCyber@gmail.com'),
(9, 'TheDistribution', '44902301230', 'TheDistributor@gmail.com'),
(10, 'ResourceCreation', '44530301242', 'Creation@outlook.com'),
(11, 'MedicineSafety', '4423123132', 'MedicationNeeds@hotmail.com'),
(12, 'FoodSafety', '4402321232', 'TheFoodAccociation@gmail.com'),
(13, 'TheNewModern', '4459203012', 'TheModern@gmail.com'),
(14, 'AdvertismentBlock', '97192302123', 'TheBlock@gmail.com'),
(15, 'ChemicalProduction', '449202312', 'TheChemicals@gmail.com'),
(16, 'TheJam', '449203121', 'TheJam@gmail.com'),
(17, 'TutorStars', '443231231', 'Thetutors@gmail.com'),
(18, 'MovieProduction', '442312312', 'Moviess@outlook.com'),
(19, 'AnimationStudio', '231231213', 'Animation@hotmail.com'),
(20, 'The Gamers', '442302131', 'TheGamersAtWork@outlook.com'),
(21, 'The Era', '4442302312', 'TheEra@gmail.com'),
(22, 'ThePlasticBottle', '442312312', 'Bottle@hotmail.com'),
(23, 'The Cutlery', '44923923', 'TheCutlery@gmail.com'),
(24, 'The Clothes Creation', '4484937234', 'TheClothes@gmail.com'),
(25, 'The HealthInstitution', '44412312', 'TheInstitution@gmail.com'),
(26, 'The Data Manager', '44231213', 'TheManager@gmail.com'),
(27, 'The Software Engineers', '44231232', 'TheEngineersForComputers@gmail.com'),
(28, 'The Game Constructor', '444323293', 'TheConstructor@gmail.com'),
(29, 'Mechanical Production', '440231232', 'Themechanics@gmail.com'),
(30, 'Electrical works', '4403921294', 'Electrical@gmail.com'),
(31, 'Computer Creation', '4422031232', 'Computers@hotmail.com'),
(32, 'Hardware Initialization', '4493382303', 'Hardware@outlook.com'),
(33, 'The Distributors', '4473820283', 'Distributors@gmail.com'),
(34, 'The work documents', '4439203232', 'Documents@gmail.com'),
(35, 'The cleaners', '4462839230', 'Cleaners@gmail.com'),
(36, 'TheChefs', '4492301230', 'Chefs@gmail.com'),
(37, 'Nourishment', '4487635231', 'Nourishment@gmail.com'),
(38, 'Company X', '44928380', 'CompanyX@hotmail.com'),
(39, 'TheMusicIndus', '4492931232', 'TheMusicIndustry@gmail.com'),
(40, 'The Administrators', '4402932103', 'Theadministrators@hotmail.com'),
(41, 'The Headphone creations', '4473892032', 'TheHeadphones@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `CompaniesRelation`
-- (See below for the actual view)
-- (Used within another view) 
CREATE TABLE `CompaniesRelation` (
`Sector` varchar(155)
,`NumberOfCompanies` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `EmployeeAnalysisForSector`
-- (See below for the actual view)
-- (Main View)
CREATE TABLE `EmployeeAnalysisForSector` (
`JobSeekerIdentifier` int(11)
,`FirstName` varchar(175)
,`LastName` varchar(255)
,`Age` decimal(10,0)
,`NumberOfJobsMatched` bigint(21)
,`NumberOfQualifcationsObtained` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE `Job` (
  `JobID` int(11) NOT NULL,
  `Name` varchar(175) NOT NULL,
  `OpenDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `Salary` double NOT NULL,
  `Street` varchar(255) NOT NULL,
  `City` varchar(155) NOT NULL,
  `PostCode` varchar(150) NOT NULL,
  `Permanent` tinyint(1) NOT NULL,
  `Sector` varchar(155) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `WorkEnvironment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job`
--

INSERT INTO `Job` (`JobID`, `Name`, `OpenDate`, `ExpiryDate`, `Salary`, `Street`, `City`, `PostCode`, `Permanent`, `Sector`, `CompanyID`, `WorkEnvironment`) VALUES
(1, 'Real Estate Agent', '2024-02-27', '2024-03-27', 45000, 'Dublin Road', 'Belfast', 'BT7 5IW', 1, 'Real Estate', 2, 'In Person'),
(2, 'System Design Engineer', '2024-02-25', '2024-04-08', 23000, 'Oxford Street', 'London', 'W1D', 0, 'Technology', 9, 'Hybrid'),
(3, 'HR Assistant', '2024-04-25', '2024-05-08', 15000, 'Brick Lane', 'London', 'E16RU', 1, 'Human Resources', 17, 'In Person'),
(4, 'Accountant', '2024-03-23', '2024-04-16', 12000, 'Malone Road', 'Belfast', 'BT9 5BW', 1, 'Finance', 18, 'Remote'),
(5, 'Delivery Driver', '2024-06-24', '2024-07-23', 1000, 'Abbey Road', 'London', 'NW8 OAE', 1, 'Courier Services', 19, 'In Person'),
(6, 'Cloud Engineer', '2024-05-24', '2024-06-25', 15000, 'Northumerland Road', 'Newcastle', 'NE1 8SG', 1, 'Technology', 20, 'Hybrid'),
(7, 'Financial Advisor', '2024-03-23', '2024-04-23', 20000, 'Edmund Street', 'Liverpool', 'L3 9NG', 1, 'Finance', 16, 'In Person'),
(8, 'Database Administrator', '2024-03-23', '2024-05-23', 15000, 'Blake Street', 'York', 'B74 4EX', 1, 'Technology', 13, 'Hybrid'),
(9, 'Marketing Strategist', '2024-05-23', '2024-05-23', 16000, 'King Street', 'Manchester', 'M2 4AH', 0, 'Business', 10, 'In Person'),
(10, 'Game Developer', '2024-02-24', '2024-03-24', 9000, 'Oxford Street', 'London', 'W1', 0, 'Technology', 1, 'Hybrid'),
(11, 'Admin Assistant', '2024-03-01', '2024-03-31', 45000, 'Malone Road', 'Belfast', 'BT9 5BW', 1, 'Technology', 39, 'In Person'),
(12, 'Bilingual Secretary', '2024-03-02', '2024-05-03', 35000, 'Malone Road', 'Belfast', 'BT8 THW', 1, 'Business', 41, 'Hybrid'),
(13, 'Car Rental Agent', '2024-04-03', '2024-04-29', 29000, 'Dublin Road', 'Belfast', 'BT7 8WEO', 1, 'Business', 35, 'In Person'),
(14, 'Audio Visual Technician', '2024-03-24', '2024-05-21', 11000, 'Malone Road', 'Belfast', 'BT67 BSDS', 0, 'Engineer', 30, 'Remote'),
(15, 'Broadcast Engineer', '2024-03-21', '2024-06-28', 9000, 'Malone Road', 'Belfast', 'BT8 W923', 0, 'Engineer', 29, 'Hybrid'),
(16, 'App Developer', '2024-03-16', '2024-05-29', 49000, 'Random Street', 'London', 'OW 2932', 0, 'Technology', 21, 'Hybrid'),
(17, 'Cyber Intelligent Officer', '2024-03-18', '2024-06-29', 79000, 'Great Victoria Street', 'Belfast', 'BT7 T72', 1, 'Technology', 19, 'Remote'),
(18, 'Data Entry Clerk', '2024-03-01', '2024-07-03', 15000, 'FlitroyStreet', 'Belfast', 'BT89 2932', 0, 'Technology', 17, 'Hybrid'),
(19, 'Geospatial Technician', '2024-03-02', '2024-08-02', 19000, 'Malone Road', 'Belfast', 'BT9 5BW', 1, 'Technology', 15, 'Remote'),
(20, 'Cartographer', '2024-05-03', '2024-09-03', 18000, 'The Bake Street', 'London', 'WI 920', 0, 'Geography', 13, 'Hybrid'),
(21, 'Data Analyst', '2024-03-21', '2024-09-02', 17000, 'Oxford Street', 'London', 'OX KCS', 1, 'Technology', 37, 'Hybrid'),
(22, 'Agricultural Inspector', '2024-03-01', '2024-05-01', 19000, 'Oxford Street', 'London', 'OI 2932', 0, 'Environmental', 26, 'In Person'),
(23, 'CAD Technician', '2024-03-01', '2024-05-01', 16000, 'Malone Road', 'Belfast', 'BT9 5BW', 1, 'Construction', 17, 'In Person'),
(24, 'Commercial Energy Assitant', '2024-03-01', '2024-05-02', 18930, 'Malone Runway', 'Belfast', 'BT78 232', 1, 'Construction', 32, 'Remote'),
(25, 'Dry Liner', '2024-03-02', '2024-09-21', 14560, 'The Winslow Street', 'Newcastle', 'NI IEUW', 0, 'Construction', 11, 'In Person'),
(26, 'Bailiff', '2024-03-22', '2024-10-22', 26000, 'The Liverpool Street', 'Liverpool', 'LI9230', 1, 'Legal', 8, 'In Person'),
(27, 'Barrister', '2024-05-23', '2024-11-09', 20000, 'The Cardiff Street', 'Cardiff', 'CA9230', 0, 'Legal', 39, 'In Person'),
(28, 'Media Researcher', '2024-03-21', '2024-05-02', 21000, 'The Malone Runway', 'Belfast', 'BT8 232', 1, 'Technology', 31, 'Hybrid'),
(29, 'User Researcher', '2024-03-01', '2024-04-01', 45000, 'The South Street', 'Belfast', 'BT8 3H2', 1, 'Technology', 30, 'Remote'),
(30, 'Web Developer', '2024-03-13', '2024-04-02', 13000, 'The Beach Street', 'Southhampton', 'SO 920', 1, 'Technology', 23, 'Remote'),
(31, 'CNC Machinst', '2024-03-05', '2024-05-03', 45000, 'Winslow Street', 'London', 'WI 32', 1, 'Manufacturing', 18, 'In Person'),
(32, 'Engineering Operative', '2024-03-09', '2024-08-03', 25000, 'Malone Runway', 'Belfast', 'BT9 02A', 1, 'Manufacturing', 19, 'In Person'),
(33, 'Countryside Officer', '2024-04-02', '2024-09-02', 15000, 'Swansea street', 'Swansea', 'SI9 ISD', 0, 'Manufacturing', 10, 'In Person'),
(34, 'Energy Engineer', '2024-05-03', '2024-08-03', 13000, 'Bournemouth Street', 'Bournemouth', 'BO0 OSD', 0, 'Engineer', 11, 'Hybrid'),
(35, 'Geoscientist', '2024-03-21', '2024-09-29', 15000, 'Malone Road', 'Belfast', 'BT9 5BW', 0, 'Geography', 36, 'Hybrid'),
(36, 'Hydrologist', '2024-04-01', '2024-05-02', 34000, 'Brighton Road', 'Brighton', 'BRI 923', 1, 'Geography', 32, 'Remote'),
(37, 'Company Secretary', '2024-03-01', '2024-04-03', 11000, 'Malone Runway', 'Belfast', 'BT9 TB2', 1, 'Business', 36, 'Hybrid'),
(38, 'Finance Officer', '2024-06-03', '2024-02-27', 15000, 'Derry Street', 'Derry', 'DIO WN', 1, 'Business', 29, 'Remote'),
(39, 'Insurance Broker', '2024-09-02', '2024-03-18', 14500, 'Downpatrick street', 'Downpatrick', 'D0 293', 1, 'Buisness', 21, 'In Person'),
(40, 'Investment Analyst', '2024-03-20', '2024-11-28', 13000, 'Malone Runway', 'Belfsat', 'BT9 5BW', 1, 'Business', 35, 'In Person');

-- --------------------------------------------------------

--
-- Stand-in structure for view `JobsClosestToLocation`
-- (See below for the actual view)
-- (Main View)
CREATE TABLE `JobsClosestToLocation` (
`companyName` varchar(175)
,`Name` varchar(175)
,`Street` varchar(255)
,`PostCode` varchar(150)
,`City` varchar(155)
,`AlreadyPottentialCandidates` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `JobSeeker`
--

CREATE TABLE `JobSeeker` (
  `JobSeekerID` int(11) NOT NULL,
  `FirstName` varchar(175) NOT NULL,
  `MiddleName` varchar(175) DEFAULT NULL,
  `LastName` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Street` varchar(175) NOT NULL,
  `PostCode` varchar(50) NOT NULL,
  `City` varchar(135) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(175) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobSeeker`
--

INSERT INTO `JobSeeker` (`JobSeekerID`, `FirstName`, `MiddleName`, `LastName`, `DateOfBirth`, `Street`, `PostCode`, `City`, `Email`, `Phone`) VALUES
(21, 'Tom', NULL, 'Hardy', '1972-09-20', 'Dublin Road', 'BT7892', 'Belfast', 'TomHardy@gmail.com', '4429302123'),
(22, 'Micheal', NULL, 'Smith', '1971-11-21', 'Malone Road', 'BT9 5BW', 'Belfast', 'MichealSmith@gmail.com', '440230123'),
(23, 'Tyler', NULL, 'Brown', '1974-02-01', 'Lisburn Road', 'BT9 923', 'Belfast', 'Tylerbrown@gmail.com', '44042124'),
(24, 'Tom', NULL, 'Baker', '1967-01-01', 'Great Victoria Street', 'BT2 7BG', 'Belfast', 'TomBaker1967@gmail.com', '440420123'),
(25, 'Callum', NULL, 'Evans', '1992-12-30', 'Brick Lane', 'E1 6QL', 'London', 'CallumEvans@gmail.com', '440422123'),
(26, 'Aryan', NULL, 'Patel', '2000-01-27', 'Downing Street', 'SWLA 2AA', 'London', 'AryanWorks@gmail.com', '44023122'),
(27, 'Sam', NULL, 'Walker', '2001-02-28', 'TheStreet', 'G1', 'Glasgow', 'SamWalker@gmai.com', '44323222'),
(28, 'Tommy', NULL, 'Robinson', '1976-05-15', 'BakerStreet', 'W1U', 'London', 'TommyRobinsionWorks@gmail.com', '44025922'),
(29, 'Davy', NULL, 'Carter', '1999-04-23', 'Bond Street', 'W1S', 'London', 'CarterBuisness@gmail.com', '44088731'),
(30, 'Chris', NULL, 'Armstrong', '1998-08-27', 'Bond Street', 'W1S 1SP', 'London', 'ArmstrongChris@gmail.com', '440992122'),
(31, 'Nikhil', NULL, 'Mathur', '2004-10-30', 'Malone Road', 'BT9 5BW', 'Belfast', 'nikhilmathur@gmail.com', '4498232'),
(32, 'Jay', NULL, 'Singh', '2005-02-21', 'Malone Road', 'BT9 5BW', 'Belfast', 'jaySingh@gmail.com', '44094122'),
(33, 'Jack', NULL, 'Wright', '1997-01-27', 'Downing Street', 'SWLA 2AA', 'London', 'jackW@gmail.com', '44043122'),
(34, 'Mark', NULL, 'Harrison', '1996-07-03', 'Oxford Street', 'W1D', 'London', 'MarkHarrision@gmail.com', '49823422'),
(35, 'Mark', NULL, 'Wright', '1987-08-04', 'Jermyn Street', 'SW1Y', 'London', 'MarkW@gmail.com', '44983122'),
(36, 'Brian', NULL, 'Burton', '1995-01-12', 'Jermyn Street', 'SW1Y 6JE', 'London', 'BrianBB@gmail.com', '44538689'),
(37, 'Bruce', NULL, 'Wayne', '1993-02-27', 'Lisburn Road', 'BT9 7AG', 'Belfast', 'bruceWayne@gmail.com', '44433122'),
(38, 'Brucle', NULL, 'Lewis', '1991-10-10', 'Abbey Road', 'NW8 OLY', 'Westminister', 'Lewis@gmail.com', '44956122'),
(39, 'Tyler', NULL, 'Jarnc', '1989-03-03', 'Regent Street', 'W1B 3HH', 'London', 'TylerJarnc@gmail.com', '44029312'),
(40, 'Jack', NULL, 'Smith', '1991-02-05', 'Lisbutrn Road', 'BT9 7AG', 'Belfast', 'jackSmith@gmail.com', '44043122'),
(41, 'James', NULL, 'Smith', '1972-03-04', 'Oxford Street', 'OI90WESD', 'London', 'Jamessmith@gmail.com', '449232123'),
(42, 'Micheal', NULL, 'Smith', '1982-09-30', 'Winslow Street', 'WI JSDLK', 'London', 'MichealSmith@gmail.com', '44930232'),
(43, 'Robert', NULL, 'Smith', '1990-10-30', 'Southhampton street', 'SO 203L', 'Southhampton', 'Robertsmith@gmail.com', '44789302'),
(44, 'Maria', NULL, 'Garcia', '1991-11-09', 'Newcastle Street', 'NI 9203', 'Newcastle', 'MariaGarcia@gmail.com', '449303823'),
(45, 'David', NULL, 'Smith', '2000-01-01', 'Malone Road', 'BT9 5BW', 'Belfast', 'Davidsmith@gmail.com', '44930232'),
(46, 'Maria', NULL, 'Rodriquez', '2001-02-03', 'Derry Stret', 'DIAS9', 'Derry', 'Mariarodriquez@gmail.com', '44230223'),
(47, 'Mary', NULL, 'Smith', '1981-03-21', 'Bournemouth Street', 'BIOWJDO', 'Bournemouth', 'Marysmith@gmail.com', '445367239'),
(48, 'Maria', NULL, 'Hernandez', '1980-04-03', 'Netwon road', 'NIO 90', 'Newtonabbey', 'Mariahernandez@gmailcom', '449302323'),
(49, 'James', NULL, 'Johnson', '1991-03-02', 'Nottingham road', 'NO OR23', 'Nottingham', 'JamesJohnson@gmail.com', '44737723'),
(50, 'William', NULL, 'Smith', '1992-03-04', 'Manchester Street', 'MI OSD90', 'Manchester', 'Williamsmith@gmail.com', '44030239'),
(51, 'Sophie', NULL, 'Tracy', '1991-03-22', 'Cambridge Street', 'CA KAS023', 'Cambridge', 'Sophietracy@gmail.com', '44262739'),
(52, 'Emma', NULL, 'Stacy', '1992-03-30', 'Norwich Road', 'NOW9203', 'Norwich', 'Emmastacy@gmail.com', '44492032'),
(53, 'Ava', NULL, 'Linda', '1990-09-10', 'Leeds Street', 'LI 2290', 'Leeds', 'Avalinda@gmail.com', '440239212'),
(54, 'Jake', NULL, 'Matthews', '1989-10-31', 'Chester street', 'CI HJ9', 'Chester', 'Jakematthews@gmail.com', '449302312'),
(55, 'Reece', NULL, 'Smith', '1980-03-03', 'Cholchester Town', 'CHO 90', 'Cholchester', 'ReeceSmith@gmail.com', '442902302'),
(56, 'Damian', NULL, 'Maia', '1991-02-27', 'Lancaster street', 'LAN 9023', 'Lancaster', 'DamianMaia@gmail.com', '448283923'),
(57, 'Richard', NULL, 'Price', '1990-01-01', 'Preston Road', 'PO 9E0WE', 'Preston', 'Richardprice@gmail.com', '444923923'),
(58, 'Oscar', NULL, 'Matthews', '1992-12-02', 'Sunderland road', 'SUN 923', 'Sunderland', 'Oscarmatthews@gmail.com', '442302322'),
(59, 'Jacob', NULL, 'Price', '1969-12-01', 'Salisbury Road', 'SA 23', 'Salisbury', 'Jacobprice@gmail.com', '449230212'),
(60, 'Isabella', NULL, 'Linda', '1990-10-31', 'Exeter District', 'EX9203', 'Exeter', 'Isabellalinda@gmail.com', '449293212');

-- --------------------------------------------------------

--
-- Stand-in structure for view `JobSeekerJobMatch`
-- (See below for the actual view)
-- (Used within another view)
CREATE TABLE `JobSeekerJobMatch` (
`JobSeekerID` int(11)
,`NumberOfJobsPerJobSeeker` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `JobSeeker_Job`
--

CREATE TABLE `JobSeeker_Job` (
  `JobID` int(11) NOT NULL,
  `JobSeekerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `JobSeeker_Job`
--

INSERT INTO `JobSeeker_Job` (`JobID`, `JobSeekerID`) VALUES
(39, 48),
(9, 56),
(38, 24),
(12, 38),
(38, 32),
(3, 43),
(28, 29),
(1, 45),
(36, 53),
(30, 23),
(23, 23),
(27, 32),
(23, 51),
(37, 21),
(6, 25),
(29, 24),
(5, 36),
(1, 43),
(18, 48),
(38, 52),
(8, 49),
(24, 51),
(16, 49),
(29, 23),
(20, 40),
(21, 44),
(17, 40),
(8, 57),
(17, 26),
(6, 32),
(17, 32),
(9, 27),
(12, 46),
(31, 36),
(15, 42),
(11, 52),
(34, 32),
(20, 31),
(15, 57),
(8, 48),
(7, 31),
(19, 56),
(25, 49),
(6, 33),
(12, 29),
(20, 24),
(26, 38),
(23, 40),
(24, 28),
(32, 49),
(36, 22),
(6, 27),
(14, 28),
(5, 23),
(19, 31),
(9, 37),
(7, 35),
(15, 33),
(14, 39),
(17, 53);

-- --------------------------------------------------------

--
-- Stand-in structure for view `JobsOpenInMarch`
-- (See below for the actual view)
-- (Main View)
CREATE TABLE `JobsOpenInMarch` (
`CompanyName` varchar(175)
,`Name` varchar(175)
,`Sector` varchar(155)
,`Salary` double
,`MinimumQualificationLevelAchieved` int(11)
,`MaximumQualificationLevelAchieved` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `NumberOfCandidates`
-- (See below for the actual view)
-- (Used within another view)
CREATE TABLE `NumberOfCandidates` (
`JobID` int(11)
,`NumberOfJobSeekers` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `Qualification`
--

CREATE TABLE `Qualification` (
  `QualificationID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Provider` varchar(255) NOT NULL,
  `QualificationLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Qualification`
--

INSERT INTO `Qualification` (`QualificationID`, `Name`, `Provider`, `QualificationLevel`) VALUES
(1, 'GSCE Maths', 'Pearson', 2),
(2, 'A level Qualificaiton', 'AQA', 3),
(3, 'A level Qualification', 'Edexcel', 3),
(4, 'International Baccalaureate', 'IB', 3),
(5, 'T level', 'T level Organization', 3),
(6, 'BTEC', 'Pearson', 3),
(7, 'Higher Apprenticeship', 'Business', 4),
(8, 'Higher National Certificate', 'University/Work', 4),
(9, 'Diploma of Higher education', 'School', 5),
(10, 'Foundation Degree', 'University', 5),
(11, 'Honours', 'University', 6),
(12, 'Masters', 'University', 7),
(13, 'PHD', 'University', 8),
(14, 'DPhil', 'University', 8),
(15, 'Integrated Masters', 'University', 7),
(16, 'MOOC', 'Online', NULL),
(18, 'NewQualification', 'QualificationProvider', 2),
(19, 'OnlineQualification', 'OnlineProvider', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `QualificationsPerJobSeeker`
-- (See below for the actual view)
-- (Used within another view)
CREATE TABLE `QualificationsPerJobSeeker` (
`JobSeeker` int(11)
,`NumberOfQualificationsObtained` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `Qualification_JobSeeker`
--

CREATE TABLE `Qualification_JobSeeker` (
  `QualificationID` int(11) NOT NULL,
  `JobSeekerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Qualification_JobSeeker`
--

INSERT INTO `Qualification_JobSeeker` (`QualificationID`, `JobSeekerID`) VALUES
(12, 58),
(7, 34),
(6, 47),
(8, 21),
(11, 30),
(1, 45),
(4, 43),
(13, 49),
(2, 40),
(8, 50),
(7, 29),
(10, 52),
(14, 49),
(12, 44),
(8, 41),
(7, 27),
(6, 53),
(14, 40),
(15, 53),
(5, 27),
(3, 42),
(1, 25),
(4, 49),
(14, 25),
(11, 32),
(4, 35),
(9, 54),
(15, 56),
(6, 42),
(15, 31),
(14, 38),
(15, 27),
(7, 55),
(9, 56),
(15, 48),
(2, 36),
(10, 42),
(5, 21),
(5, 43),
(11, 33),
(6, 32),
(4, 21),
(1, 26),
(9, 51),
(8, 54),
(15, 59),
(8, 26),
(9, 49),
(12, 54),
(10, 50),
(9, 44),
(9, 27),
(10, 55),
(4, 29),
(15, 55),
(1, 30),
(4, 38),
(1, 22),
(1, 59),
(4, 47);

-- --------------------------------------------------------

--
-- Stand-in structure for view `SectorAnalysis`
-- (See below for the actual view)
-- (Main View)
CREATE TABLE `SectorAnalysis` (
`Sector` varchar(155)
,`NumberOfJobs` bigint(21)
,`NumberOfCandidates` bigint(21)
,`NumberOfCompaniesWithinSector` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `SectorInfo`
-- (See below for the actual view)
-- (Used within another view)
CREATE TABLE `SectorInfo` (
`Sector` varchar(155)
,`NumberOfJobs` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `SectorNumJobs`
-- (See below for the actual view)
-- (Used within another view )
CREATE TABLE `SectorNumJobs` (
`Sector` varchar(155)
,`NumberOfJobs` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `CompaniesRelation`
--
DROP TABLE IF EXISTS `CompaniesRelation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `CompaniesRelation`  AS SELECT `Job`.`Sector` AS `Sector`, count(`Job`.`CompanyID`) AS `NumberOfCompanies` FROM `Job` GROUP BY `Job`.`Sector` ;

-- --------------------------------------------------------

--
-- Structure for view `EmployeeAnalysisForSector`
--
DROP TABLE IF EXISTS `EmployeeAnalysisForSector`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `EmployeeAnalysisForSector`  AS SELECT `JobSeeker`.`JobSeekerID` AS `JobSeekerIdentifier`, `JobSeeker`.`FirstName` AS `FirstName`, `JobSeeker`.`LastName` AS `LastName`, round((curdate() - `JobSeeker`.`DateOfBirth`) / 10000,0) AS `Age`, (select `JobSeekerJobMatch`.`NumberOfJobsPerJobSeeker` from `JobSeekerJobMatch` where `JobSeekerJobMatch`.`JobSeekerID` = `JobSeeker`.`JobSeekerID`) AS `NumberOfJobsMatched`, (select `QualificationsPerJobSeeker`.`NumberOfQualificationsObtained` from `QualificationsPerJobSeeker` where `QualificationsPerJobSeeker`.`JobSeeker` = `JobSeeker`.`JobSeekerID`) AS `NumberOfQualifcationsObtained` FROM (((`JobSeeker` join `JobSeeker_Job` on(`JobSeeker`.`JobSeekerID` = `JobSeeker_Job`.`JobSeekerID`)) join `Job` on(`JobSeeker_Job`.`JobID` = `Job`.`JobID`)) join `Qualification_JobSeeker` on(`JobSeeker`.`JobSeekerID` = `Qualification_JobSeeker`.`JobSeekerID`)) WHERE `Job`.`Sector` = 'Technology' GROUP BY `JobSeeker`.`JobSeekerID` ;

-- --------------------------------------------------------

--
-- Structure for view `JobsClosestToLocation`
--
DROP TABLE IF EXISTS `JobsClosestToLocation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `JobsClosestToLocation`  AS SELECT `Companies`.`CompanyName` AS `companyName`, `Job`.`Name` AS `Name`, `Job`.`Street` AS `Street`, `Job`.`PostCode` AS `PostCode`, `Job`.`City` AS `City`, count(`JobSeeker_Job`.`JobID`) AS `AlreadyPottentialCandidates` FROM ((`Companies` join `Job` on(`Companies`.`CompanyID` = `Job`.`CompanyID`)) left join `JobSeeker_Job` on(`Job`.`JobID` = `JobSeeker_Job`.`JobID`)) WHERE `Job`.`Street` like '%Malone%' AND `Job`.`City` = 'Belfast' AND `Job`.`PostCode` like 'BT%' GROUP BY `Job`.`Name` ORDER BY `JobSeeker_Job`.`JobID` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `JobSeekerJobMatch`
--
DROP TABLE IF EXISTS `JobSeekerJobMatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `JobSeekerJobMatch`  AS SELECT `JobSeeker_Job`.`JobSeekerID` AS `JobSeekerID`, count(`JobSeeker_Job`.`JobID`) AS `NumberOfJobsPerJobSeeker` FROM `JobSeeker_Job` GROUP BY `JobSeeker_Job`.`JobSeekerID` ;

-- --------------------------------------------------------

--
-- Structure for view `JobsOpenInMarch`
--
DROP TABLE IF EXISTS `JobsOpenInMarch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `JobsOpenInMarch`  AS SELECT `Companies`.`CompanyName` AS `CompanyName`, `Job`.`Name` AS `Name`, `Job`.`Sector` AS `Sector`, `Job`.`Salary` AS `Salary`, min(`Qualification`.`QualificationLevel`) AS `MinimumQualificationLevelAchieved`, max(`Qualification`.`QualificationLevel`) AS `MaximumQualificationLevelAchieved` FROM ((((`Companies` join `Job` on(`Companies`.`CompanyID` = `Job`.`CompanyID`)) left join `JobSeeker_Job` on(`Job`.`JobID` = `JobSeeker_Job`.`JobID`)) left join `Qualification_JobSeeker` on(`JobSeeker_Job`.`JobSeekerID` = `Qualification_JobSeeker`.`JobSeekerID`)) left join `Qualification` on(`Qualification_JobSeeker`.`QualificationID` = `Qualification`.`QualificationID`)) WHERE year(`Job`.`OpenDate`) = 2024 AND month(`Job`.`OpenDate`) = 3 AND dayofmonth(`Job`.`OpenDate`) between 0 and 31 GROUP BY `Companies`.`CompanyName` ORDER BY `Job`.`Salary` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `NumberOfCandidates`
--
DROP TABLE IF EXISTS `NumberOfCandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `NumberOfCandidates`  AS SELECT `JobSeeker_Job`.`JobID` AS `JobID`, count(`JobSeeker_Job`.`JobSeekerID`) AS `NumberOfJobSeekers` FROM `JobSeeker_Job` GROUP BY `JobSeeker_Job`.`JobID` ;

-- --------------------------------------------------------

--
-- Structure for view `QualificationsPerJobSeeker`
--
DROP TABLE IF EXISTS `QualificationsPerJobSeeker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `QualificationsPerJobSeeker`  AS SELECT `Qualification_JobSeeker`.`JobSeekerID` AS `JobSeeker`, count(`Qualification_JobSeeker`.`QualificationID`) AS `NumberOfQualificationsObtained` FROM `Qualification_JobSeeker` GROUP BY `Qualification_JobSeeker`.`JobSeekerID` ;

-- --------------------------------------------------------

--
-- Structure for view `SectorAnalysis`
--
DROP TABLE IF EXISTS `SectorAnalysis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `SectorAnalysis`  AS SELECT `Job`.`Sector` AS `Sector`, (select `SectorInfo`.`NumberOfJobs` from `SectorInfo` where `SectorInfo`.`Sector` = `Job`.`Sector`) AS `NumberOfJobs`, count(`JobSeeker_Job`.`JobSeekerID`) AS `NumberOfCandidates`, (select `SectorNumJobs`.`NumberOfJobs` from `SectorNumJobs` where `SectorNumJobs`.`Sector` = `Job`.`Sector`) AS `NumberOfCompaniesWithinSector` FROM (`Job` join `JobSeeker_Job` on(`Job`.`JobID` = `JobSeeker_Job`.`JobID`)) GROUP BY `Job`.`Sector` ;

-- --------------------------------------------------------

--
-- Structure for view `SectorInfo`
--
DROP TABLE IF EXISTS `SectorInfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `SectorInfo`  AS SELECT `Job`.`Sector` AS `Sector`, count(`Job`.`JobID`) AS `NumberOfJobs` FROM `Job` GROUP BY `Job`.`Sector` ;

-- --------------------------------------------------------

--
-- Structure for view `SectorNumJobs`
--
DROP TABLE IF EXISTS `SectorNumJobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nmathur01`@`localhost` SQL SECURITY DEFINER VIEW `SectorNumJobs`  AS SELECT `Job`.`Sector` AS `Sector`, count(distinct `Companies`.`CompanyID`) AS `NumberOfJobs` FROM (`Job` join `Companies` on(`Job`.`CompanyID` = `Companies`.`CompanyID`)) GROUP BY `Job`.`Sector` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Companies`
--
ALTER TABLE `Companies`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `JobSeeker`
--
ALTER TABLE `JobSeeker`
  ADD PRIMARY KEY (`JobSeekerID`);

--
-- Indexes for table `JobSeeker_Job`
--
ALTER TABLE `JobSeeker_Job`
  ADD KEY `JobSeeker_Job_ibfk_1` (`JobID`),
  ADD KEY `JobSeeker_Job_ibfk_2` (`JobSeekerID`);

--
-- Indexes for table `Qualification`
--
ALTER TABLE `Qualification`
  ADD PRIMARY KEY (`QualificationID`);

--
-- Indexes for table `Qualification_JobSeeker`
--
ALTER TABLE `Qualification_JobSeeker`
  ADD KEY `QualificationID` (`QualificationID`),
  ADD KEY `JobSeekerID` (`JobSeekerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Companies`
--
ALTER TABLE `Companies`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `Job`
--
ALTER TABLE `Job`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `JobSeeker`
--
ALTER TABLE `JobSeeker`
  MODIFY `JobSeekerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `Qualification`
--
ALTER TABLE `Qualification`
  MODIFY `QualificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Job`
--
ALTER TABLE `Job`
  ADD CONSTRAINT `Job_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `Companies` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `JobSeeker_Job`
--
ALTER TABLE `JobSeeker_Job`
  ADD CONSTRAINT `JobSeeker_Job_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `Job` (`JobID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `JobSeeker_Job_ibfk_2` FOREIGN KEY (`JobSeekerID`) REFERENCES `JobSeeker` (`JobSeekerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Qualification_JobSeeker`
--
ALTER TABLE `Qualification_JobSeeker`
  ADD CONSTRAINT `Qualification_JobSeeker_ibfk_1` FOREIGN KEY (`QualificationID`) REFERENCES `Qualification` (`QualificationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Qualification_JobSeeker_ibfk_2` FOREIGN KEY (`JobSeekerID`) REFERENCES `JobSeeker` (`JobSeekerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
