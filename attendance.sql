

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------



CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2025-05-01', 3),
(2, 8, 'Present', '2025-05-01', 3),
(3, 9, 'Absent', '2025-05-01', 3),
(4, 10, 'Present', '2025-05-01', 3),
(5, 11, 'Present', '2025-05-01', 3),
(6, 7, 'Absent', '2025-05-02', 3),
(7, 8, 'Present', '2025-05-02', 3),
(8, 9, 'Present', '2025-05-02', 3),
(9, 10, 'Present', '2025-05-02', 3),
(10, 11, 'Absent', '2025-05-02', 3),
(11, 1, 'Present', '2025-05-01', 2),
(12, 3, 'Present', '2025-05-01', 2),
(13, 4, 'Present', '2025-05-01', 2),
(14, 5, 'Present', '2025-05-01', 2),
(15, 6, 'Present', '2025-05-01', 2),
(16, 1, 'Present', '2025-05-02', 2),
(17, 3, 'Absent', '2025-05-02', 2),
(18, 4, 'Present', '2025-05-02', 2),
(19, 5, 'Absent', '2025-05-02', 2),
(20, 6, 'Present', '2025-05-02', 2),
(21, 1, 'Present', '2025-05-03', 2),
(22, 3, 'Present', '2025-05-03', 2),
(23, 4, 'Absent', '2025-05-03', 2),
(24, 5, 'Present', '2025-05-03', 2),
(25, 6, 'Present', '2025-05-03', 2),
(26, 1, 'Absent', '2025-05-04', 2),
(27, 3, 'Present', '2025-05-04', 2),
(28, 4, 'Present', '2025-05-04', 2),
(29, 5, 'Present', '2025-05-04', 2),
(30, 6, 'Present', '2025-05-04', 2),
(31, 1, 'Present', '2025-05-06', 2),
(32, 3, 'Present', '2025-05-06', 2),
(33, 4, 'Present', '2025-05-06', 2),
(34, 5, 'Present', '2025-05-06', 2),
(35, 6, 'Present', '2025-05-06', 2),
(36, 1, 'Present', '2025-05-07', 2),
(37, 3, 'Present', '2025-05-07', 2),
(38, 4, 'Present', '2025-05-07', 2),
(39, 5, 'Present', '2025-05-07', 2),
(40, 6, 'Absent', '2025-05-07', 2),
(41, 1, 'Present', '2025-05-08', 2),
(42, 3, 'Present', '2025-05-08', 2),
(43, 4, 'Present', '2025-05-08', 2),
(44, 5, 'Absent', '2025-05-08', 2),
(45, 6, 'Present', '2025-05-08', 2),
(46, 1, 'Present', '2025-05-09', 2),
(47, 3, 'Present', '2025-05-09', 2),
(48, 4, 'Present', '2025-05-09', 2),
(49, 5, 'Present', '2025-05-09', 2),
(50, 6, 'Present', '2025-05-09', 2),
(51, 1, 'Present', '2025-05-10', 2),
(52, 3, 'Absent', '2025-05-10', 2),
(53, 4, 'Absent', '2025-05-10', 2),
(54, 5, 'Present', '2025-05-10', 2),
(55, 6, 'Absent', '2025-05-10', 2),
(56, 1, 'Present', '2025-05-11', 2),
(57, 3, 'Present', '2025-05-11', 2),
(58, 4, 'Absent', '2025-05-11', 2),
(59, 5, 'Present', '2025-05-11', 2),
(60, 6, 'Absent', '2025-05-11', 2),
(61, 7, 'Present', '2025-05-03', 3),
(62, 8, 'Present', '2025-05-03', 3),
(63, 9, 'Present', '2025-05-03', 3),
(64, 10, 'Present', '2025-05-03', 3),
(65, 11, 'Present', '2025-05-03', 3),
(66, 7, 'Absent', '2025-05-04', 3),
(67, 8, 'Present', '2025-05-04', 3),
(68, 9, 'Absent', '2025-05-04', 3),
(69, 10, 'Present', '2025-05-04', 3),
(70, 11, 'Absent', '2025-05-04', 3),
(71, 7, 'Present', '2025-05-06', 3),
(72, 8, 'Present', '2025-05-06', 3),
(73, 9, 'Absent', '2025-05-06', 3),
(74, 10, 'Present', '2025-05-06', 3),
(75, 11, 'Present', '2025-05-06', 3),
(76, 7, 'Present', '2025-05-07', 3),
(77, 8, 'Present', '2025-05-07', 3),
(78, 9, 'Present', '2025-05-07', 3),
(79, 10, 'Present', '2025-05-07', 3),
(80, 11, 'Present', '2025-05-07', 3),
(81, 7, 'Present', '2025-05-08', 3),
(82, 8, 'Present', '2025-05-08', 3),
(83, 9, 'Present', '2025-05-08', 3),
(84, 10, 'Absent', '2025-05-08', 3),
(85, 11, 'Absent', '2025-05-08', 3),
(86, 7, 'Present', '2025-05-09', 3),
(87, 8, 'Present', '2025-05-09', 3),
(88, 9, 'Absent', '2025-05-09', 3),
(89, 10, 'Present', '2025-05-09', 3),
(90, 11, 'Present', '2025-05-09', 3),
(91, 7, 'Absent', '2025-05-10', 3),
(92, 8, 'Present', '2025-05-10', 3),
(93, 9, 'Present', '2025-05-10', 3),
(94, 10, 'Present', '2025-05-10', 3),
(95, 11, 'Absent', '2025-05-10', 3),
(96, 7, 'Present', '2025-05-11', 3),
(97, 8, 'Present', '2025-05-11', 3),
(98, 9, 'Present', '2025-05-11', 3),
(99, 10, 'Absent', '2025-05-11', 3),
(100, 11, 'Present', '2025-05-11', 3),
(101, 12, 'Present', '2025-05-01', 4),
(102, 13, 'Present', '2025-05-01', 4),
(103, 14, 'Present', '2025-05-01', 4),
(104, 15, 'Present', '2025-05-01', 4),
(105, 16, 'Present', '2025-05-01', 4),
(106, 12, 'Present', '2025-05-02', 4),
(107, 13, 'Absent', '2025-05-02', 4),
(108, 14, 'Present', '2025-05-02', 4),
(109, 15, 'Absent', '2025-05-02', 4),
(110, 16, 'Present', '2025-05-02', 4),
(111, 12, 'Present', '2025-05-03', 4),
(112, 13, 'Present', '2025-05-03', 4),
(113, 14, 'Present', '2025-05-03', 4),
(114, 15, 'Absent', '2025-05-03', 4),
(115, 16, 'Present', '2025-05-03', 4),
(116, 12, 'Present', '2025-05-04', 4),
(117, 13, 'Present', '2025-05-04', 4),
(118, 14, 'Present', '2025-05-04', 4),
(119, 15, 'Present', '2025-05-04', 4),
(120, 16, 'Present', '2025-05-04', 4),
(121, 12, 'Present', '2025-05-06', 4),
(122, 13, 'Absent', '2025-05-06', 4),
(123, 14, 'Absent', '2025-05-06', 4),
(124, 15, 'Present', '2025-05-06', 4),
(125, 16, 'Present', '2025-05-06', 4),
(126, 12, 'Absent', '2025-05-07', 4),
(127, 13, 'Present', '2025-05-07', 4),
(128, 14, 'Present', '2025-05-07', 4),
(129, 15, 'Present', '2025-05-07', 4),
(130, 16, 'Absent', '2025-05-07', 4),
(131, 12, 'Present', '2025-05-08', 4),
(132, 13, 'Absent', '2025-05-08', 4),
(133, 14, 'Present', '2025-05-08', 4),
(134, 15, 'Present', '2025-05-08', 4),
(135, 16, 'Present', '2025-05-08', 4),
(136, 12, 'Present', '2025-05-09', 4),
(137, 13, 'Present', '2025-05-09', 4),
(138, 14, 'Present', '2025-05-09', 4),
(139, 15, 'Present', '2025-05-09', 4),
(140, 16, 'Absent', '2025-05-09', 4),
(141, 12, 'Present', '2025-05-10', 4),
(142, 13, 'Absent', '2025-05-10', 4),
(143, 14, 'Present', '2025-05-10', 4),
(144, 15, 'Present', '2025-05-10', 4),
(145, 16, 'Absent', '2025-05-10', 4),
(146, 12, 'Present', '2025-05-11', 4),
(147, 13, 'Present', '2025-05-11', 4),
(148, 14, 'Present', '2025-05-11', 4),
(149, 15, 'Present', '2025-05-11', 4),
(150, 16, 'Present', '2025-05-11', 4),
(151, 17, 'Present', '2025-05-01', 5),
(152, 18, 'Present', '2025-05-01', 5),
(153, 19, 'Present', '2025-05-01', 5),
(154, 20, 'Absent', '2025-05-01', 5),
(155, 21, 'Absent', '2025-05-01', 5),
(156, 17, 'Present', '2025-05-02', 5),
(157, 18, 'Present', '2025-05-02', 5),
(158, 19, 'Present', '2025-05-02', 5),
(159, 20, 'Present', '2025-05-02', 5),
(160, 21, 'Present', '2025-05-02', 5),
(161, 17, 'Present', '2025-05-03', 5),
(162, 18, 'Present', '2025-05-03', 5),
(163, 19, 'Present', '2025-05-03', 5),
(164, 20, 'Present', '2025-05-03', 5),
(165, 21, 'Absent', '2025-05-03', 5),
(166, 17, 'Present', '2025-05-04', 5),
(167, 18, 'Present', '2025-05-04', 5),
(168, 19, 'Absent', '2025-05-04', 5),
(169, 20, 'Present', '2025-05-04', 5),
(170, 21, 'Present', '2025-05-04', 5),
(171, 17, 'Present', '2025-05-06', 5),
(172, 18, 'Present', '2025-05-06', 5),
(173, 19, 'Present', '2025-05-06', 5),
(174, 20, 'Present', '2025-05-06', 5),
(175, 21, 'Present', '2025-05-06', 5),
(176, 17, 'Present', '2025-05-07', 5),
(177, 18, 'Present', '2025-05-07', 5),
(178, 19, 'Present', '2025-05-07', 5),
(179, 20, 'Present', '2025-05-07', 5),
(180, 21, 'Absent', '2025-05-07', 5),
(181, 17, 'Present', '2025-05-08', 5),
(182, 18, 'Present', '2025-05-08', 5),
(183, 19, 'Present', '2025-05-08', 5),
(184, 20, 'Absent', '2025-05-08', 5),
(185, 21, 'Present', '2025-05-08', 5),
(186, 17, 'Present', '2025-05-09', 5),
(187, 18, 'Present', '2025-05-09', 5),
(188, 19, 'Absent', '2025-05-09', 5),
(189, 20, 'Absent', '2025-05-09', 5),
(190, 21, 'Present', '2025-05-09', 5),
(191, 17, 'Absent', '2025-05-10', 5),
(192, 18, 'Present', '2025-05-10', 5),
(193, 19, 'Present', '2025-05-10', 5),
(194, 20, 'Present', '2025-05-10', 5),
(195, 21, 'Present', '2025-05-10', 5),
(196, 17, 'Present', '2025-05-11', 5),
(197, 18, 'Present', '2025-05-11', 5),
(198, 19, 'Present', '2025-05-11', 5),
(199, 20, 'Absent', '2025-05-11', 5),
(200, 21, 'Present', '2025-05-11', 5),
(201, 7, 'Present', '2025-05-13', 3),
(202, 8, 'Present', '2025-05-13', 3),
(203, 9, 'Present', '2025-05-13', 3),
(204, 10, 'Absent', '2025-05-13', 3),
(205, 11, 'Present', '2025-05-13', 3),
(206, 7, 'Present', '2025-05-14', 3),
(207, 8, 'Present', '2025-05-14', 3),
(208, 9, 'Absent', '2025-05-14', 3),
(209, 10, 'Present', '2025-05-14', 3),
(210, 11, 'Present', '2025-05-14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, 'FYBCA-A'),
(2, 'FYBCA-B'),
(3, 'SYBCA'),
(4, 'TYBCA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'SHRI. ANISH ROHIDAS NAIK MAHLEKAR', 1, '2003-03-04', 1),
(3, 'MISS. TANMAYI ALIAS SWATI NIKHIL DESAI', 2, '2003-04-19', 1),
(4, 'SHRI. MOHAMMED PARIS KHAN', 3, '2004-01-15', 1),
(5, 'SHRI. KETAN GURUDAS NAIK', 4, '2003-12-14', 1),
(6, 'MISS. SIYA NARESH NAIK', 5, '2003-07-12', 1),
(7, 'MISS. ESHAN SHARMA', 1, '2003-12-19', 2),
(8, 'SHRI. NEHAL SANTOSH PHADTE', 2, '2002-12-19', 2),
(9, 'MISS. PRASHILA SARVESH GAUDE', 3, '2003-04-01', 2),
(10, 'MISS. SUNAKSHI SONU KARANZALKAR', 4, '2003-08-15', 2),
(11, 'SHRI. VEDHANT VIRRANT PHADTE', 5, '2003-06-18', 2),
(12, 'SHRI. GAURANG BHUSHAN GAUDE', 1, '2002-05-01', 3),
(13, 'SHRI. VISHWAM VINOD SAWANT', 2, '2002-04-12', 3),
(14, 'SHRI. AJAYSINGH RATHORE', 3, '2002-10-12', 3),
(15, 'SHRI. KARAN KASHINATH NAIK', 4, '2002-02-27', 3),
(16, 'SHRI. AAYUSH SUNIL NAIK', 5, '2002-06-12', 3),
(17, 'MISS. ANNA MUZAVOR', 1, '2002-08-17', 4),
(18, 'SHRI. ANISH ASHOK PARTY', 2, '2002-09-18', 4),
(19, 'SHRI. AMIT PALKKISINA MOHITE', 3, '2002-07-15', 4),
(20, 'MISS. SANYA KOTI', 4, '2002-01-14', 4),
(21, 'SHRI. AJAY PRAKASH NAIK', 5, '2002-12-05', 4),
(22, 'SHRI. AKSHAT ANKUSH TARI', 1, '2002-04-11', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(2, 'Amey Gaonkar', 'Ponda, Goa', 'amey.gaonkar@gmail.com', '$2y$10$8fZ5z7wQ9vX6rK3yLm1Z0uJc4dE5fG6hI7jK8lM9nO0pA1qB2rC3sD4tE', 'B.Sc, B.Ed', '2025-02-01', 'Male.webp', 1),
(3, 'Swapnil Naik', 'Borim, Goa', 'swapnil.naik@gmail.com', '$2y$10$9gH6i8kL2mN1oP3qR4sT5uV6wX7yZ8aB9cC0dE1fG2hI3jK4lM5nO', 'M.Sc, B. Ed', '2025-01-01', 'Male.webp', 2),
(4, 'Supriya Desai', 'Margao, Goa', 'supriya.desai@gmail.com', '$2y$10$7eF4g5hI6jK8lM9nO0pA1qB2rC3sD4tE5fG6hI7jK8lM9nO0pA1qB2rC', 'B.Sc', '2024-12-12', 'female.png', 3),
(5, 'Priya Negvenkar', 'Shiroda, Goa', 'priya.negvenkar@gmail.com', '$2y$10$6dE5fG6hI7jK8lM9nO0pA1qB2rC3sD4tE5fG6hI7jK8lM9nO0pA1qB2rC', 'M.Sc', '2024-05-01', 'female.png', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `idx_teacher_emailid` (`teacher_emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

