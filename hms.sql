-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2026 at 07:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_health`
--

CREATE TABLE `aadhar_health` (
  `id` int(11) NOT NULL,
  `person_aadhar` bigint(12) NOT NULL,
  `insurance_status` enum('SELF','PARENT','NONE') NOT NULL,
  `linked_aadhar` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aadhar_health`
--

INSERT INTO `aadhar_health` (`id`, `person_aadhar`, `insurance_status`, `linked_aadhar`) VALUES
(1, 974583805607, 'SELF', 974583805607),
(2, 185851601404, 'SELF', 185851601404),
(3, 879752120635, 'SELF', 879752120635),
(4, 599197825881, 'NONE', NULL),
(5, 889011017315, 'PARENT', 347193723308),
(6, 501683548839, 'NONE', NULL),
(7, 378440644478, 'PARENT', 662387653683),
(8, 507822861249, 'PARENT', 600224412046),
(9, 196352115269, 'NONE', NULL),
(10, 568903197877, 'SELF', 568903197877),
(11, 962771369667, 'SELF', 962771369667),
(12, 446639127979, 'SELF', 446639127979),
(13, 565154226556, 'SELF', 565154226556),
(14, 284110264371, 'SELF', 284110264371),
(15, 863749657629, 'SELF', 863749657629),
(16, 222320345996, 'SELF', 222320345996),
(17, 584919810373, 'NONE', NULL),
(18, 815303224524, 'PARENT', 119907108899),
(19, 681632879731, 'PARENT', 843906803562),
(20, 292019900113, 'SELF', 292019900113),
(21, 523614819462, 'NONE', NULL),
(22, 170247843740, 'SELF', 170247843740),
(23, 879099031238, 'NONE', NULL),
(24, 138141334092, 'SELF', 138141334092),
(25, 951719971141, 'SELF', 951719971141),
(26, 510905591966, 'PARENT', 864504730481),
(27, 102552686820, 'SELF', 102552686820),
(28, 642293257025, 'PARENT', 774861485486),
(29, 553620372389, 'PARENT', 356991640903),
(30, 813841841381, 'PARENT', 330168604412),
(31, 974079787519, 'PARENT', 773264436211),
(32, 529302376628, 'SELF', 529302376628),
(33, 179124492946, 'NONE', NULL),
(34, 971554745892, 'NONE', NULL),
(35, 636800745070, 'PARENT', 406952398928),
(36, 463749083469, 'SELF', 463749083469),
(37, 828708605959, 'SELF', 828708605959),
(38, 896711144033, 'SELF', 896711144033),
(39, 612816143699, 'PARENT', 886262012911),
(40, 921110053658, 'NONE', NULL),
(41, 666245161430, 'SELF', 666245161430),
(42, 494806041376, 'PARENT', 669697994244),
(43, 664770961519, 'PARENT', 889233594563),
(44, 402706792300, 'SELF', 402706792300),
(45, 517500094526, 'SELF', 517500094526),
(46, 694478957721, 'PARENT', 450730993738),
(47, 356322981283, 'PARENT', 408517794784),
(48, 961763330978, 'SELF', 961763330978),
(49, 641295699068, 'SELF', 641295699068),
(50, 261833142174, 'NONE', NULL),
(51, 134720516795, 'PARENT', 178612410629),
(52, 598265754894, 'SELF', 598265754894),
(53, 748670048870, 'SELF', 748670048870),
(54, 205699959868, 'SELF', 205699959868),
(55, 482998486219, 'SELF', 482998486219),
(56, 106435282441, 'NONE', NULL),
(57, 135422680559, 'SELF', 135422680559),
(58, 645245066606, 'SELF', 645245066606),
(59, 509733180803, 'PARENT', 635192108652),
(60, 617119057398, 'SELF', 617119057398),
(61, 301064077579, 'PARENT', 259796882848),
(62, 896902925331, 'SELF', 896902925331),
(63, 346009521322, 'NONE', NULL),
(64, 507199275313, 'SELF', 507199275313),
(65, 775179546023, 'SELF', 775179546023),
(66, 398885906765, 'SELF', 398885906765),
(67, 409414820195, 'SELF', 409414820195),
(68, 228021104659, 'SELF', 228021104659),
(69, 831270196875, 'PARENT', 163470602280),
(70, 361608461068, 'SELF', 361608461068),
(71, 471316933697, 'SELF', 471316933697),
(72, 148292071137, 'NONE', NULL),
(73, 225785638508, 'SELF', 225785638508),
(74, 670701846173, 'SELF', 670701846173),
(75, 566827633293, 'SELF', 566827633293),
(76, 271298140633, 'SELF', 271298140633),
(77, 722918345334, 'NONE', NULL),
(78, 579111649355, 'SELF', 579111649355),
(79, 807157616416, 'SELF', 807157616416),
(80, 942823567466, 'SELF', 942823567466),
(81, 505847532493, 'SELF', 505847532493),
(82, 679510192087, 'SELF', 679510192087),
(83, 414666961798, 'PARENT', 816791078556),
(84, 613894683414, 'PARENT', 554350068190),
(85, 965018111154, 'SELF', 965018111154),
(86, 716046998570, 'SELF', 716046998570),
(87, 794408203562, 'PARENT', 416477867789),
(88, 978623152037, 'SELF', 978623152037),
(89, 372697065186, 'SELF', 372697065186),
(90, 735111846899, 'SELF', 735111846899),
(91, 137106283881, 'SELF', 137106283881),
(92, 449925808002, 'PARENT', 337349253461),
(93, 631784719164, 'SELF', 631784719164),
(94, 150789314183, 'SELF', 150789314183),
(95, 768272952518, 'PARENT', 495288129891),
(96, 475765260006, 'PARENT', 623355766686),
(97, 696617228161, 'SELF', 696617228161),
(98, 644745265454, 'PARENT', 502877836769),
(99, 400232522375, 'SELF', 400232522375),
(100, 939978584404, 'SELF', 939978584404),
(101, 172434622768, 'NONE', NULL),
(102, 621911447421, 'SELF', 621911447421),
(103, 854823725348, 'SELF', 854823725348),
(104, 461644349863, 'SELF', 461644349863),
(105, 487084186250, 'NONE', NULL),
(106, 794181117688, 'SELF', 794181117688),
(107, 666325592497, 'NONE', NULL),
(108, 508761746723, 'NONE', NULL),
(109, 312224988184, 'PARENT', 220755453054),
(110, 131558805919, 'NONE', NULL),
(111, 846364613105, 'NONE', NULL),
(112, 445335913863, 'PARENT', 699039454011),
(113, 720480647328, 'NONE', NULL),
(114, 818472987057, 'SELF', 818472987057),
(115, 607657571795, 'SELF', 607657571795),
(116, 538888446649, 'NONE', NULL),
(117, 375448581646, 'NONE', NULL),
(118, 116291575800, 'SELF', 116291575800),
(119, 177935877887, 'NONE', NULL),
(120, 578950530736, 'NONE', NULL),
(121, 449619980854, 'PARENT', 668588133033),
(122, 351363249077, 'PARENT', 934256124993),
(123, 778248408881, 'SELF', 778248408881),
(124, 968253202240, 'NONE', NULL),
(125, 405927052447, 'SELF', 405927052447),
(126, 246874829611, 'PARENT', 661396009997),
(127, 490791445868, 'NONE', NULL),
(128, 283169601096, 'SELF', 283169601096),
(129, 807244165433, 'SELF', 807244165433),
(130, 304765724674, 'SELF', 304765724674),
(131, 471373415990, 'SELF', 471373415990),
(132, 581923216284, 'PARENT', 853842590053),
(133, 619859557523, 'PARENT', 353069679674),
(134, 352654722661, 'PARENT', 843354928160),
(135, 201195370034, 'SELF', 201195370034),
(136, 705891199694, 'NONE', NULL),
(137, 893795224924, 'NONE', NULL),
(138, 740501744244, 'PARENT', 406378337467),
(139, 832449105690, 'SELF', 832449105690),
(140, 880643872990, 'PARENT', 182399550622),
(141, 611773398901, 'SELF', 611773398901),
(142, 209541107816, 'NONE', NULL),
(143, 535827396563, 'NONE', NULL),
(144, 995620248554, 'NONE', NULL),
(145, 878964883906, 'PARENT', 417500538767),
(146, 411546017146, 'SELF', 411546017146),
(147, 379524246025, 'PARENT', 547795320998),
(148, 730355422785, 'SELF', 730355422785),
(149, 430746501433, 'PARENT', 893652007535),
(150, 170982038109, 'SELF', 170982038109),
(151, 410150178810, 'NONE', NULL),
(152, 217350329195, 'PARENT', 351795712533),
(153, 813903498661, 'PARENT', 573026038121),
(154, 824795043397, 'NONE', NULL),
(155, 243466346285, 'SELF', 243466346285),
(156, 790987612577, 'SELF', 790987612577),
(157, 911179613145, 'SELF', 911179613145),
(158, 299581604729, 'SELF', 299581604729),
(159, 534936104374, 'NONE', NULL),
(160, 763915309182, 'SELF', 763915309182),
(161, 350619635125, 'SELF', 350619635125),
(162, 733077322628, 'NONE', NULL),
(163, 813250097457, 'SELF', 813250097457),
(164, 486784668160, 'PARENT', 488062686275),
(165, 987955328344, 'PARENT', 303142317666),
(166, 983020895237, 'SELF', 983020895237),
(167, 627802259872, 'SELF', 627802259872),
(168, 570588078601, 'NONE', NULL),
(169, 182011562382, 'SELF', 182011562382),
(170, 515383396590, 'NONE', NULL),
(171, 370387434279, 'SELF', 370387434279),
(172, 801157465391, 'SELF', 801157465391),
(173, 979658800716, 'SELF', 979658800716),
(174, 983430740127, 'SELF', 983430740127),
(175, 412734415952, 'PARENT', 852131215810),
(176, 366129357894, 'NONE', NULL),
(177, 664660151921, 'SELF', 664660151921),
(178, 239522596299, 'SELF', 239522596299),
(179, 389790746373, 'SELF', 389790746373),
(180, 252311983287, 'SELF', 252311983287),
(181, 637251590040, 'SELF', 637251590040),
(182, 629529151533, 'PARENT', 952683537129),
(183, 609183893733, 'PARENT', 415438759061),
(184, 305133558628, 'SELF', 305133558628),
(185, 652259344096, 'SELF', 652259344096),
(186, 345226149489, 'PARENT', 112601347372),
(187, 332754991513, 'PARENT', 844545152544),
(188, 297258983549, 'PARENT', 566072997977),
(189, 226150485152, 'SELF', 226150485152);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '04-03-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2024-05-30', '9:15 AM', '2024-05-15 03:42:11', 1, 1, NULL),
(2, 'Endocrinologists', 2, 2, 800, '2024-05-31', '2:45 PM', '2024-05-16 09:08:54', 1, 1, NULL),
(3, 'Internal Medicine', 6, 3, 1500, '2025-11-21', '9:15 AM', '2025-11-24 05:32:47', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', 'Dr Arjun Reddy', 'Hyderabad', '800', 9123456701, 'arjun.ortho@gmail.com', 'pass123', NOW(), NULL),
(2, 'Internal Medicine', 'Dr Neha Sharma', 'Delhi', '900', 9123456702, 'neha.med@gmail.com', 'pass123', NOW(), NULL),
(3, 'Obstetrics and Gynecology', 'Dr Kavya Singh', 'Mumbai', '1000', 9123456703, 'kavya.gyn@gmail.com', 'pass123', NOW(), NULL),
(4, 'Dermatology', 'Dr Rahul Verma', 'Chennai', '700', 9123456704, 'rahul.derma@gmail.com', 'pass123', NOW(), NULL),
(5, 'Pediatrics', 'Dr Sneha Iyer', 'Bangalore', '800', 9123456705, 'sneha.pedia@gmail.com', 'pass123', NOW(), NULL),
(6, 'Radiology', 'Dr Aman Gupta', 'Pune', '1200', 9123456706, 'aman.radio@gmail.com', 'pass123', NOW(), NULL),
(7, 'General Surgery', 'Dr Vikram Rao', 'Hyderabad', '1500', 9123456707, 'vikram.surg@gmail.com', 'pass123', NOW(), NULL),
(8, 'Ophthalmology', 'Dr Meera Nair', 'Kochi', '850', 9123456708, 'meera.eye@gmail.com', 'pass123', NOW(), NULL),
(9, 'Anesthesia', 'Dr Kiran Das', 'Kolkata', '950', 9123456709, 'kiran.anes@gmail.com', 'pass123', NOW(), NULL),
(10, 'Pathology', 'Dr Ramesh Patel', 'Ahmedabad', '600', 9123456710, 'ramesh.path@gmail.com', 'pass123', NOW(), NULL),
(11, 'ENT', 'Dr Suresh Kumar', 'Delhi', '750', 9123456711, 'suresh.ent@gmail.com', 'pass123', NOW(), NULL),
(12, 'Dental Care', 'Dr Pooja Jain', 'Jaipur', '500', 9123456712, 'pooja.dent@gmail.com', 'pass123', NOW(), NULL),
(13, 'Endocrinologists', 'Dr Anil Mehta', 'Mumbai', '1100', 9123456713, 'anil.endo@gmail.com', 'pass123', NOW(), NULL),
(14, 'Neurologists', 'Dr Rohit Shah', 'Surat', '1300', 9123456714, 'rohit.neuro@gmail.com', 'pass123', NOW(), NULL),
(15, 'Cardiology', 'Dr Vivek Rathi', 'Delhi', '2000', 9123456715, 'vivek.cardio@gmail.com', 'pass123', NOW(), NULL),
(16, 'Pulmonology', 'Dr Ananya Bose', 'Kolkata', '1400', 9123456716, 'ananya.pulmo@gmail.com', 'pass123', NOW(), NULL),
(17, 'Gastroenterology', 'Dr Tarun Joshi', 'Indore', '1600', 9123456717, 'tarun.gastro@gmail.com', 'pass123', NOW(), NULL),
(18, 'Nephrology', 'Dr Deepak Saini', 'Chandigarh', '1500', 9123456718, 'deepak.nephro@gmail.com', 'pass123', NOW(), NULL),
(19, 'Urology', 'Dr Rajesh Bansal', 'Lucknow', '1400', 9123456719, 'rajesh.uro@gmail.com', 'pass123', NOW(), NULL),
(20, 'Oncology', 'Dr Priya Kapoor', 'Delhi', '2200', 9123456720, 'priya.onco@gmail.com', 'pass123', NOW(), NULL),
(21, 'Psychiatry', 'Dr Kunal Arora', 'Noida', '1000', 9123456721, 'kunal.psych@gmail.com', 'pass123', NOW(), NULL),
(22, 'Hematology', 'Dr Nitin Kulkarni', 'Pune', '1300', 9123456722, 'nitin.hema@gmail.com', 'pass123', NOW(), NULL),
(23, 'Rheumatology', 'Dr Swati Deshmukh', 'Nagpur', '1200', 9123456723, 'swati.rheuma@gmail.com', 'pass123', NOW(), NULL),
(24, 'Immunology', 'Dr Farhan Ali', 'Hyderabad', '1100', 9123456724, 'farhan.immuno@gmail.com', 'pass123', NOW(), NULL),
(25, 'Infectious Diseases', 'Dr Ayesha Khan', 'Bhopal', '1000', 9123456725, 'ayesha.infect@gmail.com', 'pass123', NOW(), NULL),
(26, 'Plastic Surgery', 'Dr Ritu Malhotra', 'Delhi', '2500', 9123456726, 'ritu.plastic@gmail.com', 'pass123', NOW(), NULL),
(27, 'Cardiothoracic Surgery', 'Dr Sanjay Pillai', 'Chennai', '3000', 9123456727, 'sanjay.cts@gmail.com', 'pass123', NOW(), NULL),
(28, 'Neurosurgery', 'Dr Ajay Menon', 'Bangalore', '2800', 9123456728, 'ajay.neuro@gmail.com', 'pass123', NOW(), NULL),
(29, 'Vascular Surgery', 'Dr Harish Shetty', 'Mangalore', '2000', 9123456729, 'harish.vascular@gmail.com', 'pass123', NOW(), NULL),
(30, 'Emergency Medicine', 'Dr Ravi Teja', 'Hyderabad', '1800', 9123456730, 'ravi.emergency@gmail.com', 'pass123', NOW(), NULL),
(31, 'Family Medicine', 'Dr Lakshmi Devi', 'Chennai', '900', 9123456731, 'lakshmi.family@gmail.com', 'pass123', NOW(), NULL),
(32, 'Geriatrics', 'Dr Mohan Rao', 'Vijayawada', '1000', 9123456732, 'mohan.geriatrics@gmail.com', 'pass123', NOW(), NULL),
(33, 'Sports Medicine', 'Dr Karthik R', 'Bangalore', '1200', 9123456733, 'karthik.sports@gmail.com', 'pass123', NOW(), NULL),
(34, 'Rehabilitation Medicine', 'Dr Sandeep Kumar', 'Delhi', '1100', 9123456734, 'sandeep.rehab@gmail.com', 'pass123', NOW(), NULL),
(35, 'Critical Care Medicine', 'Dr Pavan Kumar', 'Hyderabad', '2000', 9123456735, 'pavan.critical@gmail.com', 'pass123', NOW(), NULL),
(36, 'Pain Management', 'Dr Nisha Reddy', 'Warangal', '1300', 9123456736, 'nisha.pain@gmail.com', 'pass123', NOW(), NULL),
(37, 'Allergy and Asthma', 'Dr Imran Sheikh', 'Mumbai', '900', 9123456737, 'imran.allergy@gmail.com', 'pass123', NOW(), NULL),
(38, 'Nuclear Medicine', 'Dr Vinay Kulkarni', 'Pune', '1500', 9123456738, 'vinay.nuclear@gmail.com', 'pass123', NOW(), NULL),
(39, 'Sleep Medicine', 'Dr Shreya Das', 'Kolkata', '1000', 9123456739, 'shreya.sleep@gmail.com', 'pass123', NOW(), NULL);
-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 05:19:33', NULL, 1),
(2, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 09:01:03', '16-05-2024 02:37:32 PM', 1),
(3, 8, 'anishpaiccjdls@gmail.com', 0x3a3a3100000000000000000000000000, '2025-11-24 05:29:41', NULL, 1),
(4, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2025-11-24 05:31:01', NULL, 1),
(5, NULL, '	 bhawya12@tt.com', 0x3a3a3100000000000000000000000000, '2026-02-03 05:58:21', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-04-09 18:09:46', '2024-05-14 09:26:47'),
(2, 'Internal Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(3, 'Obstetrics and Gynecology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(4, 'Dermatology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(5, 'Pediatrics', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(6, 'Radiology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(7, 'General Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(8, 'Ophthalmology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(9, 'Anesthesia', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(10, 'Pathology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(11, 'ENT', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(12, 'Dental Care', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(13, 'Endocrinology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(14, 'Neurology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(15, 'Cardiology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(16, 'Pulmonology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(17, 'Gastroenterology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(18, 'Nephrology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(19, 'Urology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(20, 'Oncology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(21, 'Psychiatry', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(22, 'Hematology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(23, 'Rheumatology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(24, 'Immunology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(25, 'Infectious Diseases', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(26, 'Plastic Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(27, 'Cardiothoracic Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(28, 'Neurosurgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(29, 'Vascular Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(30, 'Emergency Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(31, 'Family Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(32, 'Geriatrics', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(33, 'Sports Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(34, 'Rehabilitation Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(35, 'Critical Care Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(36, 'Pain Management', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(37, 'Allergy and Asthma', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(38, 'Nuclear Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(39, 'Sleep Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2024-04-20 16:52:03', NULL, '2024-05-14 09:27:15', NULL),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2024-04-23 13:13:41', 'Contact the patient', '2024-04-27 13:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 2, '80/120', '110', '85', '97', 'Dolo,\r\nLevocit 5mg', '2024-05-16 09:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'D-204, Hole Town South West, Delhi-110096,India', 'info@gmail.com', 1122334455, '2020-05-20 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Rahul Singyh', 452463210, 'rahul12@gmail.com', 'male', 'NA', 32, 'Fever, Cold', '2024-05-16 05:23:35', NULL),
(2, 1, 'Amit', 4545454545, 'amitk@gmail.com', 'male', 'NA', 45, 'Fever', '2024-05-16 09:01:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-05-15 03:41:48', NULL, 1),
(2, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-16 09:08:06', '16-05-2024 02:41:06 PM', 1),
(3, NULL, 'anishpaila9696@gmail.com', 0x3a3a3100000000000000000000000000, '2025-11-24 05:32:06', NULL, 0),
(4, 3, 'anishpaila9696@gmail.com', 0x3a3a3100000000000000000000000000, '2025-11-24 05:32:14', '24-11-2025 11:03:12 AM', 1),
(5, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2025-11-24 05:33:59', NULL, 1),
(6, NULL, 'anishpaila9696@gmail.com', 0x3a3a3100000000000000000000000000, '2026-02-03 05:53:54', NULL, 0),
(7, NULL, '974583805607', 0x3a3a3100000000000000000000000000, '2026-02-17 09:16:53', NULL, 1),
(8, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:17:17', NULL, 1),
(9, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:17:31', NULL, 1),
(10, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:19:29', NULL, 1),
(11, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:19:33', NULL, 1),
(12, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:19:42', NULL, 1),
(13, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:19:48', NULL, 1),
(14, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:20:49', NULL, 1),
(15, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:20:52', NULL, 1),
(16, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:21:02', NULL, 1),
(17, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:21:08', NULL, 1),
(18, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:22:28', NULL, 1),
(19, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:22:33', NULL, 1),
(20, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:22:38', NULL, 1),
(21, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:22:46', NULL, 1),
(22, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:22:59', NULL, 1),
(23, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:23:31', NULL, 1),
(24, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:23:31', NULL, 1),
(25, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:30:58', NULL, 1),
(26, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:31:03', NULL, 1),
(27, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:31:36', NULL, 1),
(28, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:31:39', NULL, 1),
(29, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:32:31', NULL, 1),
(30, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:32:40', NULL, 1),
(31, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:32:44', NULL, 1),
(32, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:32:51', NULL, 1),
(33, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:32:55', NULL, 1),
(34, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:33:03', NULL, 1),
(35, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:33:36', NULL, 1),
(36, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 09:33:44', NULL, 1),
(37, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:52:56', NULL, 1),
(38, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 09:54:59', NULL, 1),
(39, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-17 10:38:33', NULL, 1),
(40, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 10:38:41', NULL, 1),
(41, NULL, '599197825881', 0x3a3a3100000000000000000000000000, '2026-02-17 10:38:44', NULL, 1),
(42, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-18 07:46:41', NULL, 1),
(43, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-18 08:59:23', NULL, 1),
(44, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-18 09:28:52', NULL, 1),
(45, NULL, '523614819462', 0x3a3a3100000000000000000000000000, '2026-02-18 10:25:53', NULL, 1),
(46, NULL, '222320345996', 0x3a3a3100000000000000000000000000, '2026-02-18 10:26:19', NULL, 1),
(47, NULL, '815303224524', 0x3a3a3100000000000000000000000000, '2026-02-18 10:26:43', NULL, 1),
(48, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-20 07:16:16', NULL, 1),
(49, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-20 08:33:08', NULL, 1),
(50, NULL, '889011017315', 0x3a3a3100000000000000000000000000, '2026-02-20 08:51:09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-20 12:13:56', '2024-05-14 09:28:15'),
(2, 'Amit kumar', 'new Delhi india', 'New Delhi', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-21 13:15:32', '2024-05-14 09:28:23'),
(3, 'BHUVA', 'gfhjbklm,', 'fchgbmn,', 'male', 'anishpaila9696@gmail.com', '38a1ffb5ccad9612d3d28d99488ca94b', '2025-11-24 05:31:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar_health`
--
ALTER TABLE `aadhar_health`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `person_aadhar` (`person_aadhar`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aadhar_health`
--
ALTER TABLE `aadhar_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
