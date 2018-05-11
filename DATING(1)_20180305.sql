-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.210.1
-- 생성 시간: 18-03-05 12:14
-- 서버 버전: 5.7.20
-- PHP 버전: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `DATING`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `APP_API`
--

CREATE TABLE `APP_API` (
  `API_SEQ` int(11) NOT NULL,
  `API_NM` varchar(50) DEFAULT NULL,
  `PGM_ID` varchar(30) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `REQ_BODY` varchar(2000) DEFAULT NULL,
  `REQ_DATATYPE` varchar(50) DEFAULT NULL,
  `REQ_ENCTYPE` varchar(100) NOT NULL,
  `RES_BODY` varchar(2000) DEFAULT NULL,
  `RES_BODY_FAIL` varchar(2000) DEFAULT NULL,
  `RES_BODY_EMPTY` varchar(2000) DEFAULT NULL,
  `MYFILE` varchar(100) DEFAULT NULL,
  `MYFILESVRNM` varchar(100) DEFAULT NULL,
  `DEL_YN` varchar(1) NOT NULL DEFAULT 'N',
  `ADD_DT` varchar(14) DEFAULT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `APP_API`
--

INSERT INTO `APP_API` (`API_SEQ`, `API_NM`, `PGM_ID`, `URL`, `REQ_BODY`, `REQ_DATATYPE`, `REQ_ENCTYPE`, `RES_BODY`, `RES_BODY_FAIL`, `RES_BODY_EMPTY`, `MYFILE`, `MYFILESVRNM`, `DEL_YN`, `ADD_DT`, `MOD_DT`) VALUES
(4, '1', '1', '2', NULL, '4', 'STRING', NULL, NULL, NULL, '', '', 'Y', '20171207222840', NULL),
(5, '1', '1', '1', NULL, '1', '', NULL, NULL, NULL, '', '', 'Y', '20171207222847', NULL),
(6, '1', '1', '1', NULL, '1', '', NULL, NULL, NULL, '', '', 'Y', '20171208104053', '20171211122327'),
(7, '1', '1', '1', NULL, '1', '', NULL, NULL, NULL, '', '', 'Y', '20171208104104', NULL),
(8, '22222', '1', '1', NULL, '1', '', NULL, NULL, NULL, '', '', 'Y', '20171211122327', '20171211122343'),
(9, '22222', '1', '1', NULL, '1', '', NULL, NULL, NULL, '', '', 'Y', '20171211122343', '20171212231422'),
(10, '2', '3', '4', NULL, '6', '', NULL, NULL, NULL, '', '', 'Y', '20171211232933', NULL),
(18, '22', '22', '22', NULL, 'json', 'POSTURLENCODE', NULL, NULL, NULL, '1', '', 'Y', '20171219233254', NULL),
(19, '33', '33', '33', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '33', '', 'Y', '20171219233400', NULL),
(20, '33', '33', '33', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '33', '', 'Y', '20171219233602', NULL),
(21, '44', '44', '44', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '44', '', 'Y', '20171219233718', NULL),
(22, '44', '44', '44', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '44', '', 'Y', '20171219233728', NULL),
(23, '44', '44', '44', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '44', '', 'Y', '20171219233741', NULL),
(24, '5', '5', '55', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '5', '', 'Y', '20171220221458', NULL),
(25, '6', '6', '6', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '6', '', 'Y', '20171220222137', NULL),
(26, '7', '7', '7', NULL, 'html', 'POSTURLENCODE', NULL, NULL, NULL, '7', '', 'Y', '20171220222301', NULL),
(27, '8', '8', '8', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '8', '8', 'Y', '20171220222628', NULL),
(28, '8', '8', '8', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '8', '8', 'Y', '20171220223528', NULL),
(29, '9', '9', '9', NULL, 'html', 'POSTURLENCODE', NULL, NULL, NULL, '9', '', 'Y', '20171220223901', NULL),
(30, 'A', 'A', 'A', NULL, 'html', 'POSTURLENCODE', NULL, NULL, NULL, 'A', 'A', 'Y', '20171220224312', NULL),
(31, 'C', 'C', 'C', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'C', 'C', 'Y', '20171220224646', NULL),
(32, 'C', 'C', 'C', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'C', 'C', 'Y', '20171220224711', NULL),
(33, 'C', 'C', 'C', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'C', 'C', 'Y', '20171220225106', NULL),
(34, 'D', 'D', 'D', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220225106', NULL),
(38, 'FF', 'F', 'F', NULL, 'html', 'POSTURLENCODE', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220231442', NULL),
(39, 'G', 'G', 'G', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'G', '', 'Y', '20171220231520', NULL),
(40, 'H', 'H', 'H', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220231520', NULL),
(41, 'i', 'i', 'i', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'i', '', 'Y', '20171220231852', NULL),
(42, 'j', 'j', 'j', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220231852', NULL),
(43, 'k', 'k', 'k', NULL, 'html', 'POSTURLENCODE', NULL, NULL, NULL, 'k', '', 'Y', '20171220232024', NULL),
(44, 'l', 'l', 'l', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220232024', NULL),
(45, 'G', 'G', 'G', NULL, 'json', 'MULTIPART', NULL, NULL, NULL, 'G', '', 'Y', '20171220232739', NULL),
(46, 'H', 'H', 'H', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171220232739', '20171220233430'),
(47, '1a', '1a', '1a', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, '', NULL, 'Y', '20171220233257', '20171220233610'),
(54, 'ㄱㄱ', 'ㄱㄱ', 'ㄱ', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, 'ㄱ', '', 'Y', '20171221231926', NULL),
(55, 'ㄷㄷ', 'ㄷㄷ', 'ㄷㄷ', NULL, 'html', 'MULTIPART', NULL, NULL, NULL, NULL, NULL, 'Y', '20171221231926', NULL),
(74, '', '', '', NULL, '', '', NULL, NULL, NULL, '', '', 'Y', '20180103131112', NULL),
(80, '', '', '', NULL, '', '', NULL, NULL, NULL, '', '', 'Y', '20180104233740', NULL),
(81, '1', '', '', NULL, '', '', NULL, NULL, NULL, '', '', 'Y', '20180107120116', '20180107120204'),
(89, 'ff', 'ff', 'ff', NULL, 'json', 'MULTIPART', NULL, NULL, NULL, '', '', 'N', '20180115130728', NULL),
(90, 'aa', 'aa', 'dd', 'r6jh93Zo+M41Yf1gUCgCmiz652dHnCo9UDOXQ44bmlTcukjHuFQa9MPhujWuT+h/emNCXiqpo93EB3mjdQVuQp7hXdiLi1m66UBWJapxTPjYj7VO4QF35VCDKgiousPYK6Rw/wsFX1xHKqcbRkHH1HJwccADAXAeGRrDj5KoIvPAtvx3SwiEuPFaLzhvQ74Q9ICexHz0wrYJUrgjnNic2w==', 'html', 'MULTIPART', 'XGXFSpc7geoARHx31zkjNwZmKJagz9WQCXYLB1lrLM7F+ZtFMBAw6YMg3h0pblBPxl35hyexibd50lo1H/F8Nvbcn5AzexnT6yy3EPzUPgYd6p7R7Z6FfGmozkVrm5+z', NULL, NULL, '', '', 'N', '20180115130923', '20180118103215'),
(97, 'AA', 'AA', 'AA', '3aKOz6CA3WUwfgDohxLyVQ4KCjBmtPlpk5FakLTC8V20T4zExcNYRH7i9KcmfHP9VeO4K89mAquC9HUXMu0U2A==', 'html', 'POSTURLENCODE', 'kLBV9RDElhIHOykFgvhhzHMBjCWFk8uLuGE2XYvOQJehBMUT7AwMzThUALsLwOo2lCPDqcug0voRfid0B5kgWQ==', NULL, NULL, '', '', 'N', '20180115230707', NULL),
(98, 'aa', 'aa', 'aa', 'Ajc64nhN/cLkJATjbRUv53elmsIQb/GgLWl6Rmdw9dvUttDk4D7jBQUhKSM2vneQvX+cE6f9VAFx0Sw+TId52Q==', 'html', 'MULTIPART', 'idlJfJiLU0YEqwWauPMbfDmMaIN5+urB84pgSMgAzOnGXLcVtHu+FJPxMP7+dTA/VE3aPhM38FotUXnV8xMrKA==', NULL, NULL, '', '', 'N', '20180117223311', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_AUTH`
--

CREATE TABLE `CMN_AUTH` (
  `AUTH_SEQ` int(11) NOT NULL,
  `PGMID` varchar(30) NOT NULL,
  `AUTH_ID` varchar(100) NOT NULL,
  `AUTH_NM` varchar(200) NOT NULL,
  `USE_YN` varchar(1) NOT NULL DEFAULT 'Y',
  `ADD_DT` varchar(14) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_FOLDER`
--

CREATE TABLE `CMN_FOLDER` (
  `FOLDER_SEQ` int(11) NOT NULL,
  `FOLDER_NM` varchar(200) NOT NULL,
  `USE_YN` varchar(1) NOT NULL DEFAULT 'Y',
  `FOLDER_ORD` int(11) NOT NULL DEFAULT '10',
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_FOLDER`
--

INSERT INTO `CMN_FOLDER` (`FOLDER_SEQ`, `FOLDER_NM`, `USE_YN`, `FOLDER_ORD`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, 'C.G', 'Y', 10, '20171201080000', 1, NULL, NULL),
(2, 'R.D', 'Y', 10, '20171201080000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_GRP`
--

CREATE TABLE `CMN_GRP` (
  `GRP_SEQ` int(11) NOT NULL,
  `GRP_NM` varchar(200) NOT NULL,
  `USE_YN` varchar(1) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_GRP`
--

INSERT INTO `CMN_GRP` (`GRP_SEQ`, `GRP_NM`, `USE_YN`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, '관리자그룹', 'Y', '20180303025226', 0, NULL, NULL),
(2, '알바그룹', 'Y', '20180303025323', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_GRP_AUTH`
--

CREATE TABLE `CMN_GRP_AUTH` (
  `GRP_SEQ` int(11) NOT NULL,
  `AUTH_SEQ` int(11) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_GRP_AUTH`
--

INSERT INTO `CMN_GRP_AUTH` (`GRP_SEQ`, `AUTH_SEQ`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, 2, '20180303062803', 0, NULL, NULL),
(1, 3, '20180303062803', 0, NULL, NULL),
(2, 3, '20180303063248', 0, NULL, NULL),
(2, 4, '20180303063248', 0, NULL, NULL),
(2, 5, '20180303063248', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_GRP_USR`
--

CREATE TABLE `CMN_GRP_USR` (
  `GRP_SEQ` int(11) NOT NULL,
  `USR_SEQ` int(11) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_GRP_USR`
--

INSERT INTO `CMN_GRP_USR` (`GRP_SEQ`, `USR_SEQ`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, 1, '20180303064720', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_LOGIN`
--

CREATE TABLE `CMN_LOG_LOGIN` (
  `USR_ID` varchar(30) NOT NULL,
  `SUCCESS_YN` int(1) NOT NULL,
  `USR_SEQ` int(11) NOT NULL,
  `SERVER_NAME` varchar(20) NOT NULL,
  `REMOTE_ADDR` varchar(20) NOT NULL,
  `USER_AGENT` varchar(500) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `LOGIN_SEQ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_MNU`
--

CREATE TABLE `CMN_MNU` (
  `MNU_SEQ` int(11) NOT NULL,
  `MNU_NM` varchar(100) NOT NULL,
  `PGMID` varchar(30) DEFAULT NULL,
  `URL` varchar(200) NOT NULL,
  `MNU_ORD` int(11) NOT NULL DEFAULT '10',
  `FOLDER_SEQ` int(11) NOT NULL,
  `USE_YN` varchar(1) NOT NULL DEFAULT 'Y',
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_MNU`
--

INSERT INTO `CMN_MNU` (`MNU_SEQ`, `MNU_NM`, `PGMID`, `URL`, `MNU_ORD`, `FOLDER_SEQ`, `USE_YN`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, 'APP API', NULL, '/c.g/rst/app_apiView.php', 10, 2, 'Y', '20171201080000', 1, '20171201080000', 1),
(2, 'PJTINFO', NULL, '/c.g/rst/pgmmngView.php', 10, 1, 'Y', '20171201080000', 1, NULL, NULL),
(3, 'CODE', NULL, '/c.g/cg_code.php', 10, 1, 'Y', '20171201080000', 1, NULL, NULL),
(4, 'OBJIFO', NULL, '/c.g/cg_objinfo3.php', 10, 1, 'Y', '20171201080000', 1, NULL, NULL),
(5, 'PGMINFO', NULL, '/c.g/cg_pgminfo3.php', 10, 1, 'Y', '20171201080000', 1, NULL, NULL),
(6, 'LAYOUT', NULL, '/c.g/cg_layout.php', 10, 1, 'Y', '20171201080000', 1, NULL, NULL),
(7, '입력값검증', 'VALIDMNG', 'validmngView.php', 10, 2, 'Y', '20180221234559', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_USR`
--

CREATE TABLE `CMN_USR` (
  `USR_SEQ` int(11) NOT NULL,
  `USR_ID` varchar(20) NOT NULL,
  `USR_NM` varchar(50) NOT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `USE_YN` varchar(1) NOT NULL DEFAULT 'Y',
  `USR_PWD` varchar(500) NOT NULL,
  `PW_ERR_CNT` int(11) NOT NULL DEFAULT '0',
  `LAST_STATUS` varchar(2) DEFAULT NULL COMMENT '최종 상태',
  `LOCK_LIMIT_DT` varchar(14) DEFAULT NULL,
  `EXPIRE_DT` varchar(14) DEFAULT NULL,
  `PW_CHG_DT` varchar(14) DEFAULT NULL,
  `PW_CHG_ID` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `CMN_USR`
--

INSERT INTO `CMN_USR` (`USR_SEQ`, `USR_ID`, `USR_NM`, `PHONE`, `USE_YN`, `USR_PWD`, `PW_ERR_CNT`, `LAST_STATUS`, `LOCK_LIMIT_DT`, `EXPIRE_DT`, `PW_CHG_DT`, `PW_CHG_ID`, `ADD_DT`, `ADD_ID`, `MOD_DT`, `MOD_ID`) VALUES
(1, 'zero12a', '김영일', NULL, 'Y', 'e83dcc8a28d5d4bc742ad9d337adc97992b6d628be8b1f621abbd6e05efe4b5586790f8f92655de512ab87aa0b5415531259fa2bf3cd6334d0ba5950007c096d', 0, NULL, NULL, NULL, '20180228114200', NULL, '20180228113634', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `TEST`
--

CREATE TABLE `TEST` (
  `AA` int(11) NOT NULL,
  `BB` varchar(11) NOT NULL,
  `CC` varchar(22) NOT NULL,
  `DD` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `TEST`
--

INSERT INTO `TEST` (`AA`, `BB`, `CC`, `DD`) VALUES
(1, '한글', '한글임', '한글임1'),
(1, '한글', '한글임', '한글임1'),
(1, '한글', '한글임', '한글임1'),
(1, '한글', '한글임', '한글임1'),
(1, '한글', '한글임', '한글임1');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `APP_API`
--
ALTER TABLE `APP_API`
  ADD PRIMARY KEY (`API_SEQ`);

--
-- 테이블의 인덱스 `CMN_AUTH`
--
ALTER TABLE `CMN_AUTH`
  ADD PRIMARY KEY (`AUTH_SEQ`),
  ADD UNIQUE KEY `PGMID` (`PGMID`,`AUTH_ID`);

--
-- 테이블의 인덱스 `CMN_FOLDER`
--
ALTER TABLE `CMN_FOLDER`
  ADD PRIMARY KEY (`FOLDER_SEQ`);

--
-- 테이블의 인덱스 `CMN_GRP`
--
ALTER TABLE `CMN_GRP`
  ADD PRIMARY KEY (`GRP_SEQ`);

--
-- 테이블의 인덱스 `CMN_GRP_AUTH`
--
ALTER TABLE `CMN_GRP_AUTH`
  ADD PRIMARY KEY (`GRP_SEQ`,`AUTH_SEQ`);

--
-- 테이블의 인덱스 `CMN_GRP_USR`
--
ALTER TABLE `CMN_GRP_USR`
  ADD PRIMARY KEY (`GRP_SEQ`,`USR_SEQ`);

--
-- 테이블의 인덱스 `CMN_LOG_LOGIN`
--
ALTER TABLE `CMN_LOG_LOGIN`
  ADD PRIMARY KEY (`LOGIN_SEQ`);

--
-- 테이블의 인덱스 `CMN_MNU`
--
ALTER TABLE `CMN_MNU`
  ADD PRIMARY KEY (`MNU_SEQ`),
  ADD UNIQUE KEY `PGMID` (`PGMID`);

--
-- 테이블의 인덱스 `CMN_USR`
--
ALTER TABLE `CMN_USR`
  ADD PRIMARY KEY (`USR_SEQ`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `APP_API`
--
ALTER TABLE `APP_API`
  MODIFY `API_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- 테이블의 AUTO_INCREMENT `CMN_AUTH`
--
ALTER TABLE `CMN_AUTH`
  MODIFY `AUTH_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `CMN_FOLDER`
--
ALTER TABLE `CMN_FOLDER`
  MODIFY `FOLDER_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `CMN_GRP`
--
ALTER TABLE `CMN_GRP`
  MODIFY `GRP_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_LOGIN`
--
ALTER TABLE `CMN_LOG_LOGIN`
  MODIFY `LOGIN_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_MNU`
--
ALTER TABLE `CMN_MNU`
  MODIFY `MNU_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `CMN_USR`
--
ALTER TABLE `CMN_USR`
  MODIFY `USR_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
