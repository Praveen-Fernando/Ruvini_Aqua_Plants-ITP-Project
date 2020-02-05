-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2019 at 11:26 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruvinidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `NO` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`NO`, `Name`, `Value`) VALUES
(78, 'Short-Term Investments', 100000),
(105, 'Long-Term Investments', 67777),
(107, 'Intangible Assets', 800);

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `attID` int(11) NOT NULL,
  `empID` int(11) DEFAULT NULL,
  `totalOtHours` int(11) DEFAULT NULL,
  `totalLeavs` int(11) DEFAULT NULL,
  `totalShortLeavs` int(11) DEFAULT NULL,
  `totalAttendence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`attID`, `empID`, `totalOtHours`, `totalLeavs`, `totalShortLeavs`, `totalAttendence`) VALUES
(32, 35, 10, 1, 2, 29),
(33, 36, 11, 0, 3, 30),
(34, 37, 9, 2, 4, 28),
(35, 38, 5, 3, 3, 27),
(36, 39, 10, 3, 1, 27),
(37, 40, 5, 3, 2, 27),
(38, 41, 8, 2, 1, 28),
(39, 42, 8, 3, 2, 27),
(40, 43, 10, 3, 0, 27),
(41, 44, 12, 4, 1, 26),
(42, 45, 9, 2, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `chemicalstock`
--

CREATE TABLE `chemicalstock` (
  `chemicalcode` int(5) NOT NULL,
  `chemicaltype` varchar(50) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemicalstock`
--

INSERT INTO `chemicalstock` (`chemicalcode`, `chemicaltype`, `weight`, `price`, `date`) VALUES
(34, 'Anubias Batery Board leaf', '40', 1000, '2019-09-20'),
(50, 'sodium liquid', '56', 67000, '2019-09-28'),
(90, 'Ammonia soil', '300', 4000, '2019-09-19'),
(100, ' P Soil', '100g', 50000, '2019-09-11'),
(101, 'wolffia spp', '10000g', 90000, '2019-09-26'),
(102, 'pistia stratiotes', '3000', 59000, '2019-09-16'),
(103, 'Sodium Hydroxide lequid', '20000L', 68000, '2019-09-10'),
(104, 'level 2 soil', '10000g', 20000, '2019-09-05'),
(105, 'Level 5 soil', '4500g', 19000, '2019-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(100) NOT NULL,
  `fname` char(50) NOT NULL,
  `lname` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `address` char(100) NOT NULL,
  `pcode` char(10) NOT NULL,
  `co_no` char(20) NOT NULL,
  `nic` char(20) NOT NULL,
  `password` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `fname`, `lname`, `email`, `address`, `pcode`, `co_no`, `nic`, `password`) VALUES
(126, 'andrewq', 'soyza', 'andrewperies@icloud.com', '70,christuraja mawatha,nayakakanda,hendala,wattala', '10600', '0774992044', 'regthrjy', '123'),
(127, 'kamala', 'soyza', 'andrewperies@icloud.com', '70,christuraja mawatha,nayakakanda,hendala,wattala', '10200', '0774992044', 'regthrjy', '123456'),
(130, 'shan', 'soyza', 'andrewperies@icloud.com', '70,christuraja mawatha,nayakakanda,hendala,wattala', '11300', '0112937274', '981960459v', '123'),
(131, 'mohamad', 'perera', 'mohammadperera@yahoo.com', '90,sarikkamulla,panadura', '12345', '0775674532', '982022762v', '121'),
(132, 'sanali', 'perera', 'sana123@gmail.com', '611,station rd,wattala', '11300', '0716253849', '987865432v', '123'),
(134, 'sunil', 'perera', 'praveen.fernando1998@gmail.com', 'No-25,4th,lane,rawatawatta,', '10400', '0775399042', '981960459v', '123');

-- --------------------------------------------------------

--
-- Table structure for table `del`
--

CREATE TABLE `del` (
  `DeliveryID` int(4) NOT NULL,
  `OrderNumber` varchar(90) NOT NULL,
  `ReceiverName` varchar(150) NOT NULL,
  `ReceiverAddress` varchar(200) NOT NULL,
  `TelephoneNumber` varchar(10) NOT NULL,
  `PostalCode` varchar(50) NOT NULL,
  `Remark` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `del`
--

INSERT INTO `del` (`DeliveryID`, `OrderNumber`, `ReceiverName`, `ReceiverAddress`, `TelephoneNumber`, `PostalCode`, `Remark`) VALUES
(39, '01', 'Shalini', 'colombo', '0776756456', '34', 'Best quality plants'),
(40, '02', 'Nilukshi', 'ngmbo', '0786756456', '09', 'Decorative addition plants'),
(50, 'perera', 'lakshan', 'nawalakanda,kalawana', '0767804166', '11400', 'send the order to the above mention address!'),
(51, 'perera', 'mohamad', '90,sarikkamulla,panadura', '0775674532', '12345', 'aswerq'),
(54, 'perera', 'sunil', '89,', '0775399042', '10400', '');

-- --------------------------------------------------------

--
-- Table structure for table `empfinance`
--

CREATE TABLE `empfinance` (
  `empID` int(11) NOT NULL,
  `jobType` varchar(10) NOT NULL,
  `salary` double NOT NULL,
  `totalOtHours` int(11) NOT NULL,
  `totalLeavs` int(11) NOT NULL,
  `totalShortLeavs` int(11) NOT NULL,
  `totalAttendence` int(11) NOT NULL,
  `bonus` varchar(10) NOT NULL,
  `gSal` double NOT NULL,
  `netSal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empfinance`
--

INSERT INTO `empfinance` (`empID`, `jobType`, `salary`, `totalOtHours`, `totalLeavs`, `totalShortLeavs`, `totalAttendence`, `bonus`, `gSal`, `netSal`) VALUES
(41, 'cutter', 25000, 8, 2, 1, 28, 'Yes', 25480, 46883.2),
(42, 'deliver', 15000, 8, 3, 2, 27, 'No', 15480, 14241.6),
(43, 'other', 10000, 10, 3, 0, 27, 'Yes', 10600, 19504);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(3) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(220) NOT NULL,
  `phone` int(10) NOT NULL,
  `salary` float DEFAULT NULL,
  `jobType` varchar(10) NOT NULL,
  `registerDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `NIC`, `name`, `birthday`, `gender`, `email`, `phone`, `salary`, `jobType`, `registerDate`) VALUES
(39, '123485613V', 'Shalini', '1998-08-11', 'female', 'Shalini@gmail.com', 778965821, 10000, 'other', '2019-09-29'),
(40, '980202408v', 'Praveen', '1998-04-06', 'male', 'praveen.fernando1998@gmail.com', 771820365, 15000, 'deliver', '2019-09-29'),
(41, '199845632185', 'Venuri', '1998-12-04', 'female', 'venuri@gmail.com', 716532589, 25000, 'cutter', '2019-09-29'),
(42, '199745632165', 'Lakshan', '1996-10-01', 'male', 'lakshan@gmail.com', 758046532, 15000, 'deliver', '2019-09-29'),
(43, '199721654832', 'Raveen', '1997-09-29', 'male', 'raveen@gmail.com', 763216549, 10000, 'other', '2019-09-29'),
(45, '199818903492', 'sudana', '1996-10-08', 'male', 'sudana@gmail.com', 717615491, 10000, 'other', '2019-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `equipmentstock`
--

CREATE TABLE `equipmentstock` (
  `equipmentcode` int(6) NOT NULL,
  `equipmenttype` varchar(50) NOT NULL,
  `quantity` int(12) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipmentstock`
--

INSERT INTO `equipmentstock` (`equipmentcode`, `equipmenttype`, `quantity`, `price`, `date`) VALUES
(10, 'Heat Exchanger', 2, 37000, '2019-09-06'),
(20, 'centrifugal machine', 4, 100000, '2019-08-08'),
(30, 'Bubble cap tray column', 2, 10000, '2019-09-11'),
(40, 'Hot air generator', 1, 75000, '2019-09-11'),
(50, 'chemical process equipment', 1, 50000, '2019-09-18'),
(60, 'type C Glue', 8, 10000, '2019-09-06'),
(70, 'mixers type 2', 3, 60000, '2019-08-13'),
(80, 'pressure vessels', 4, 80000, '2019-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `equityliab`
--

CREATE TABLE `equityliab` (
  `no` int(11) NOT NULL,
  `equity` varchar(200) NOT NULL,
  `liabilities` varchar(200) NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equityliab`
--

INSERT INTO `equityliab` (`no`, `equity`, `liabilities`, `value`) VALUES
(65, '', 'Short-Term Loans', 35702),
(66, 'Owner\'s Investment', '', 861743),
(67, 'Owner\'s Investment', '', 4000),
(68, 'Retained Earnings', '', 231132);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `cname` varchar(100) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`cname`, `feedback`) VALUES
('dfghj', 'dfgfjhjttdffhtydj'),
('ertu', '23456'),
('kasun', 'etruhnbfg'),
('shane', 'sadalu thale oba ');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`name`, `email`, `subject`, `message`) VALUES
('hashmi', 'maduranga@gmail.com', 'diliver', 'qwert'),
('kasun', 'kasunsampath@ymail.com', 'deliver', 'qwewq'),
('praveen', 'praveen.fernando84@yahoo.com', 'plants', 'how can i buy plants???'),
('sanali', 'andrewperies@icloud.com', 'order', 'do you have cash on delivery??'),
('shalini', 'shalinip437@gmail.com', 'plants', 'how can i buy plants???'),
('shane', 'assd@xcxc.com', 'deliver', 'c x cd');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(100) NOT NULL,
  `plantName` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(200) NOT NULL,
  `total_price` int(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `cusname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `plantName`, `qty`, `price`, `total_price`, `date`, `cusname`) VALUES
(31, 'Ammaniya_Bonsai', 18, 200, 800, '2019/09/29', 'kamal'),
(32, 'Ammaniya_Bonsai', 5, 200, 1000, '2019/09/29', 'kamal'),
(33, 'Cryptocoryne_Lutea', 9, 125, 500, '2019/09/29', 'kamal'),
(35, 'Ammaniya_Bonsai', 1, 200, 200, '2019/09/29', 'kamal'),
(36, 'Ammaniya_Bonsai', 4, 200, 800, '2019/09/29', 'null'),
(37, 'Ammaniya_Bonsai', 3, 200, 600, '2019/09/29', 'null'),
(38, 'Ammaniya_Bonsai', 2, 200, 400, '2019/09/29', 'shan'),
(39, 'Ammaniya_Bonsai', 4, 200, 800, '2019/09/29', 'shalini'),
(40, 'Ammaniya_Bonsai', 3, 200, 600, '2019/09/29', 'shan'),
(41, 'Ammaniya_Bonsai', 1, 200, 200, '2019/09/29', 'shan'),
(42, 'Ammaniya_Bonsai', 8, 200, 200, '2019/09/30', 'mohamad'),
(43, 'Ammaniya_Bonsai', 4, 200, 1000, '2019/09/30', 'mohamad'),
(44, 'Ammaniya_Bonsai', 4, 200, 800, '2019/09/30', 'mohamad'),
(45, 'Alternanthera_Reneckii', 6, 1000, 5000, '2019/09/30', 'shan'),
(46, 'Ammaniya_Bonsai', 8, 200, 1000, '2019/09/30', 'sanali'),
(47, 'Cryptocoryne_Parva', 6, 90, 540, '2019/09/30', 'sanali'),
(48, 'Cryptocoryne_Parva', 2, 90, 180, '2019/09/30', 'sanali'),
(49, 'Ammaniya_Bonsai', 3, 200, 600, '2019/09/30', 'sunil');

-- --------------------------------------------------------

--
-- Table structure for table `plantstock`
--

CREATE TABLE `plantstock` (
  `plantcode` int(10) NOT NULL,
  `plantname` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plantstock`
--

INSERT INTO `plantstock` (`plantcode`, `plantname`, `quantity`, `price`, `date`) VALUES
(19, 'Little Anthurium', 56, 7000, '2019-09-04'),
(28, 'Anubias Hastifolia', 40, 55000, '2019-09-11'),
(32, 'Ammaniya_Bonsai', 50, 30000, '2019-09-02'),
(45, 'Cryptocoryne_Lutea', 57, 20000, '2019-09-02'),
(50, 'Little orchid', 67, 10000, '2019-09-20'),
(70, 'Anubias Batery', 38, 19000, '2019-09-18'),
(100, 'corco nucifera', 20, 45000, '2019-09-19'),
(145, 'Anthurium ', 50, 17000, '2019-09-21'),
(150, 'Anubias Board', 12, 13000, '2019-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `pstock`
--

CREATE TABLE `pstock` (
  `Number` int(11) NOT NULL,
  `Plant_Name` varchar(200) NOT NULL,
  `Plant_code` int(11) NOT NULL,
  `Price` double NOT NULL,
  `quantity` int(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pstock`
--

INSERT INTO `pstock` (`Number`, `Plant_Name`, `Plant_code`, `Price`, `quantity`, `img`) VALUES
(1, 'Alternanthera_Reneckii', 11, 1000, 100, ''),
(2, 'Ammaniya_Bonsai', 12, 200, 100, ''),
(3, 'Anubias_Barteri', 13, 150, 200, 'img/Tissue-culture/alternanthera_reneckii.jpg'),
(4, 'Anubias_Barteri_Broad_Leaf', 14, 120, 50, ''),
(5, 'Anubias_Hasitifolia', 15, 100, 250, ''),
(6, 'Cryptocoryne_Becketi_Brown', 16, 130, 200, ''),
(7, 'Cryptocoryne_Lutea', 17, 125, 350, ''),
(8, 'Cryptocoryne_Parva', 18, 90, 200, ''),
(9, 'Cryptocoryne_Pygmea', 19, 80, 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `reorder`
--

CREATE TABLE `reorder` (
  `code` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(5) NOT NULL,
  `requestdate` date NOT NULL,
  `requireddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reorder`
--

INSERT INTO `reorder` (`code`, `name`, `quantity`, `requestdate`, `requireddate`) VALUES
(43, 'bonsai', 565, '2019-09-01', '2019-09-24'),
(69, 'orchid ', 45, '2019-09-25', '2019-09-21'),
(43, 'bonsai', 888, '2019-09-27', '2019-09-24'),
(69, 'anthurium', 16, '2019-09-13', '2019-09-27'),
(30, 'animal', 44456, '2019-09-07', '2019-09-27'),
(30, 'animal', 77, '2019-09-13', '2019-09-24'),
(30, 'animal', 77, '2019-09-13', '2019-09-24'),
(43, 'bonsai', 0, '2019-09-12', '2019-09-26'),
(69, 'anthurium', 6767, '2019-09-05', '2019-09-28'),
(30, 'animal', 444, '2019-09-13', '2019-09-27'),
(30, 'animal', 66, '2019-09-14', '2019-09-25'),
(46, 'zzzzzzz', 1189, '2019-09-17', '2019-09-09'),
(12, 'victoria amazonica', 80, '2019-09-13', '2019-10-04'),
(19, 'Little Anthurium', 17, '2019-09-12', '2019-09-14'),
(19, 'Little Anthurium', 56, '2019-09-13', '2019-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `payble` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `company`, `address`, `mobile`, `payble`) VALUES
(1, 'sudana', 'Atlas', 'Ragama', '077342342', 20000),
(6, 'praveen', 'Atlas', 'Ragama', '077342342', 20000),
(11, 'eeeee', 'dscsd', 'dscdsc', 'dsc', 1000),
(13, 'dscds', 'sdsdf', 'sdfsdf', '4444', 1000),
(15, 'supplier12', 'sup', 'colombo', '0768315080', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`NO`),
  ADD UNIQUE KEY `NO` (`NO`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`attID`),
  ADD KEY `empID` (`empID`);

--
-- Indexes for table `chemicalstock`
--
ALTER TABLE `chemicalstock`
  ADD PRIMARY KEY (`chemicalcode`),
  ADD UNIQUE KEY `chemicalcode` (`chemicalcode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_id` (`c_id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `del`
--
ALTER TABLE `del`
  ADD PRIMARY KEY (`DeliveryID`);

--
-- Indexes for table `empfinance`
--
ALTER TABLE `empfinance`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipmentstock`
--
ALTER TABLE `equipmentstock`
  ADD PRIMARY KEY (`equipmentcode`),
  ADD UNIQUE KEY `equipmentcode` (`equipmentcode`);

--
-- Indexes for table `equityliab`
--
ALTER TABLE `equityliab`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `plantstock`
--
ALTER TABLE `plantstock`
  ADD PRIMARY KEY (`plantcode`),
  ADD UNIQUE KEY `plantcode` (`plantcode`),
  ADD UNIQUE KEY `plantname` (`plantname`);

--
-- Indexes for table `pstock`
--
ALTER TABLE `pstock`
  ADD PRIMARY KEY (`Number`),
  ADD UNIQUE KEY `Plant_code` (`Plant_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `attID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `chemicalstock`
--
ALTER TABLE `chemicalstock`
  MODIFY `chemicalcode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777779;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `del`
--
ALTER TABLE `del`
  MODIFY `DeliveryID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `equipmentstock`
--
ALTER TABLE `equipmentstock`
  MODIFY `equipmentcode` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `equityliab`
--
ALTER TABLE `equityliab`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `plantstock`
--
ALTER TABLE `plantstock`
  MODIFY `plantcode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345679;

--
-- AUTO_INCREMENT for table `pstock`
--
ALTER TABLE `pstock`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
