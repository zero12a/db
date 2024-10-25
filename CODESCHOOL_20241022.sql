-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.1:4306
-- 생성 시간: 24-10-21 13:01
-- 서버 버전: 10.7.3-MariaDB-1:10.7.3+maria~focal
-- PHP 버전: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `CODESCHOOL`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `CLASS`
--

CREATE TABLE `CLASS` (
  `CLASS_SEQ` int(11) NOT NULL,
  `CLASS_NM` varchar(100) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `CLASS_DEGREE`
--

CREATE TABLE `CLASS_DEGREE` (
  `DEGREE_SEQ` int(11) NOT NULL,
  `DEGREE_NM` varchar(100) NOT NULL,
  `CLASS_SEQ` int(11) NOT NULL,
  `DEGREE_DT` varchar(8) DEFAULT NULL,
  `DEGREE_TM` varchar(30) DEFAULT NULL,
  `MST_SANDBOX_SEQ` int(11) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `DEGREE_FILE`
--

CREATE TABLE `DEGREE_FILE` (
  `DFILE_SEQ` int(11) NOT NULL,
  `DEGREE_SEQ` int(11) NOT NULL,
  `PATH` varchar(100) NOT NULL,
  `FOLDER_YN` varchar(1) DEFAULT NULL,
  `NM` varchar(100) NOT NULL,
  `FILE_DATA` longblob NOT NULL,
  `FILE_HASH` varchar(100) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `ROOM`
--

CREATE TABLE `ROOM` (
  `ROOM_SEQ` int(11) NOT NULL,
  `ROOM_NM` varchar(100) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `CLASS_SEQ` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `ROOM_MEMBER`
--

CREATE TABLE `ROOM_MEMBER` (
  `ROOM_SEQ` int(11) NOT NULL,
  `STUDENT_SEQ` int(11) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `SANDBOX`
--

CREATE TABLE `SANDBOX` (
  `SANDBOX_SEQ` int(11) NOT NULL,
  `DOCKER_HOSTID` varchar(100) NOT NULL,
  `STUDENT_SEQ` int(11) NOT NULL,
  `DEGREE_SEQ` int(11) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `SANDBOX_FILE`
--

CREATE TABLE `SANDBOX_FILE` (
  `SFILE_SEQ` int(11) NOT NULL,
  `DEGREE_SEQ` int(11) NOT NULL,
  `SANDBOX_SEQ` int(11) DEFAULT NULL,
  `PATH` varchar(100) NOT NULL,
  `NM` varchar(100) DEFAULT NULL,
  `FOLDER_YN` varchar(1) NOT NULL,
  `FILE_HASH` varchar(100) DEFAULT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `STUDENT`
--

CREATE TABLE `STUDENT` (
  `STUDENT_SEQ` int(11) NOT NULL,
  `STUDENT_NM` varchar(100) NOT NULL,
  `STUDENT_ID` varchar(30) DEFAULT NULL,
  `STUDENT_PWD` varchar(100) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `CLASS`
--
ALTER TABLE `CLASS`
  ADD PRIMARY KEY (`CLASS_SEQ`);

--
-- 테이블의 인덱스 `CLASS_DEGREE`
--
ALTER TABLE `CLASS_DEGREE`
  ADD PRIMARY KEY (`DEGREE_SEQ`);

--
-- 테이블의 인덱스 `DEGREE_FILE`
--
ALTER TABLE `DEGREE_FILE`
  ADD PRIMARY KEY (`DFILE_SEQ`);

--
-- 테이블의 인덱스 `ROOM`
--
ALTER TABLE `ROOM`
  ADD PRIMARY KEY (`ROOM_SEQ`);

--
-- 테이블의 인덱스 `ROOM_MEMBER`
--
ALTER TABLE `ROOM_MEMBER`
  ADD UNIQUE KEY `ROOM_SEQ` (`ROOM_SEQ`,`STUDENT_SEQ`);

--
-- 테이블의 인덱스 `SANDBOX`
--
ALTER TABLE `SANDBOX`
  ADD PRIMARY KEY (`SANDBOX_SEQ`);

--
-- 테이블의 인덱스 `SANDBOX_FILE`
--
ALTER TABLE `SANDBOX_FILE`
  ADD PRIMARY KEY (`SFILE_SEQ`);

--
-- 테이블의 인덱스 `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`STUDENT_SEQ`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `CLASS`
--
ALTER TABLE `CLASS`
  MODIFY `CLASS_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CLASS_DEGREE`
--
ALTER TABLE `CLASS_DEGREE`
  MODIFY `DEGREE_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `DEGREE_FILE`
--
ALTER TABLE `DEGREE_FILE`
  MODIFY `DFILE_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `ROOM`
--
ALTER TABLE `ROOM`
  MODIFY `ROOM_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `SANDBOX`
--
ALTER TABLE `SANDBOX`
  MODIFY `SANDBOX_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `SANDBOX_FILE`
--
ALTER TABLE `SANDBOX_FILE`
  MODIFY `SFILE_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `STUDENT`
--
ALTER TABLE `STUDENT`
  MODIFY `STUDENT_SEQ` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
