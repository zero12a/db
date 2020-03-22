-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.1:3306
-- 생성 시간: 20-03-22 12:03
-- 서버 버전: 5.7.20
-- PHP 버전: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `OS`
--

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
-- 테이블 구조 `CMN_CFG_HISTORY`
--

CREATE TABLE `CMN_CFG_HISTORY` (
  `CFG_SEQ` int(11) NOT NULL,
  `ACT_PGMID` varchar(30) NOT NULL,
  `OLD_CFG` text NOT NULL,
  `NEW_CFG` text,
  `HOST_NM` varchar(100) NOT NULL,
  `RESULT_YN` varchar(1) NOT NULL,
  `RESULT_MSG` varchar(100) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_DEPLOY_FILE`
--

CREATE TABLE `CMN_DEPLOY_FILE` (
  `DEPLOY_SEQ` int(11) NOT NULL,
  `PGMID` varchar(30) NOT NULL,
  `FILENM` varchar(60) NOT NULL,
  `FILESEQ` int(11) NOT NULL,
  `FILETYPE` varchar(20) NOT NULL,
  `PGMSEQ` int(11) NOT NULL,
  `FILEHASH` varchar(32) NOT NULL,
  `FILESIZE` int(11) DEFAULT NULL,
  `DEPLOY_DT` varchar(14) DEFAULT NULL,
  `DEPLOY_ID` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
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

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_GRP`
--

CREATE TABLE `CMN_GRP` (
  `GRP_SEQ` int(11) NOT NULL,
  `GRP_NM` varchar(200) NOT NULL,
  `INTRO_PGMID` varchar(30) NOT NULL,
  `USE_YN` varchar(1) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_GRP_AUTH`
--

CREATE TABLE `CMN_GRP_AUTH` (
  `GA_SEQ` int(11) NOT NULL,
  `GRP_SEQ` int(11) NOT NULL,
  `PGMID` varchar(30) NOT NULL,
  `AUTH_ID` varchar(100) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL DEFAULT '0',
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_IP`
--

CREATE TABLE `CMN_IP` (
  `IP_SEQ` int(11) NOT NULL,
  `PGMTYPE` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ALLOW_IP` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'allow ip (all=0.0.0.0)',
  `IP_DESC` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_AUTH`
--

CREATE TABLE `CMN_LOG_AUTH` (
  `LAUTH_SEQ` int(11) NOT NULL,
  `USR_SEQ` int(11) NOT NULL,
  `USR_ID` varchar(100) NOT NULL,
  `PGMID` varchar(100) NOT NULL,
  `REQ_TOKEN` varchar(50) DEFAULT NULL,
  `RES_TOKEN` varchar(30) DEFAULT NULL,
  `AUTH_ID` varchar(100) NOT NULL,
  `SUCCESS_YN` varchar(1) NOT NULL,
  `ADD_DT` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_AUTHD`
--

CREATE TABLE `CMN_LOG_AUTHD` (
  `LAUTHD_SEQ` int(11) NOT NULL,
  `LAUTH_SEQ` int(11) DEFAULT NULL,
  `PREPARE_SQL` varchar(2000) NOT NULL,
  `FULL_SQL` varchar(3000) NOT NULL,
  `REQ_TOKEN` varchar(50) DEFAULT NULL,
  `RES_TOKEN` varchar(30) DEFAULT NULL,
  `PARAM_COLIDS` varchar(400) DEFAULT NULL,
  `DD_COLIDS` varchar(200) DEFAULT NULL,
  `PI_IN_COLIDS` varchar(100) DEFAULT NULL,
  `PI_OUT_COLIDS` varchar(100) DEFAULT NULL,
  `ROW_CNT` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_CFM`
--

CREATE TABLE `CMN_LOG_CFM` (
  `CFM_SEQ` int(11) NOT NULL,
  `FROM_DT` varchar(24) NOT NULL,
  `TO_DT` varchar(24) NOT NULL,
  `CFM_DESC` varchar(1500) NOT NULL,
  `ADD_DT` varchar(42) NOT NULL,
  `ADD_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_DEPLOY`
--

CREATE TABLE `CMN_LOG_DEPLOY` (
  `LDEPLOY_SEQ` int(11) NOT NULL,
  `PGMID` varchar(30) NOT NULL,
  `FILENM` varchar(60) NOT NULL,
  `FILEHASH` varchar(32) NOT NULL,
  `FILESEQ` int(11) NOT NULL,
  `FILETYPE` int(11) NOT NULL,
  `DEPLOY_DT` int(11) DEFAULT NULL,
  `DEPLOY_ID` int(11) DEFAULT NULL,
  `DEPLOY_SEQ` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `CMN_LOG_LOGIN`
--

CREATE TABLE `CMN_LOG_LOGIN` (
  `LOGIN_SEQ` int(11) NOT NULL,
  `USR_ID` varchar(30) NOT NULL,
  `SESSION_ID` varchar(200) NOT NULL,
  `SUCCESS_YN` varchar(1) NOT NULL,
  `USR_SEQ` int(11) NOT NULL,
  `SERVER_NAME` varchar(20) NOT NULL,
  `REMOTE_ADDR` varchar(20) NOT NULL,
  `USER_AGENT` varchar(500) NOT NULL,
  `RESPONSE_MSG` varchar(50) DEFAULT NULL,
  `PW_ERR_CNT` int(11) DEFAULT NULL,
  `LOCK_LIMIT_DT` varchar(14) DEFAULT NULL,
  `LOCKCD` varchar(10) DEFAULT NULL,
  `AUTH_JSON` text,
  `CLIENT_ID` varchar(100) DEFAULT NULL COMMENT 'oauth_clients 에서 받은 client_id',
  `ADD_DT` varchar(14) NOT NULL
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
  `PGMTYPE` varchar(20) NOT NULL,
  `MNU_ORD` int(11) NOT NULL DEFAULT '10',
  `FOLDER_SEQ` int(11) NOT NULL,
  `USE_YN` varchar(1) NOT NULL DEFAULT 'Y',
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `LOCK_LAST_DT` varchar(14) DEFAULT NULL,
  `EXPIRE_DT` varchar(14) DEFAULT NULL,
  `PW_CHG_DT` varchar(14) DEFAULT NULL,
  `PW_CHG_ID` int(11) DEFAULT NULL,
  `ADD_DT` varchar(14) NOT NULL,
  `ADD_ID` int(11) NOT NULL,
  `MOD_DT` varchar(14) DEFAULT NULL,
  `MOD_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `atoken_seq` int(11) NOT NULL,
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_seq` int(11) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `rtoken_seq` int(11) NOT NULL,
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_seq` int(11) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `oauth_users`
--

CREATE TABLE `oauth_users` (
  `user_seq` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `CMN_AUTH`
--
ALTER TABLE `CMN_AUTH`
  ADD PRIMARY KEY (`AUTH_SEQ`),
  ADD UNIQUE KEY `PGMID` (`PGMID`,`AUTH_ID`);

--
-- 테이블의 인덱스 `CMN_CFG_HISTORY`
--
ALTER TABLE `CMN_CFG_HISTORY`
  ADD PRIMARY KEY (`CFG_SEQ`);

--
-- 테이블의 인덱스 `CMN_DEPLOY_FILE`
--
ALTER TABLE `CMN_DEPLOY_FILE`
  ADD PRIMARY KEY (`DEPLOY_SEQ`),
  ADD UNIQUE KEY `PGMID` (`PGMID`,`FILENM`),
  ADD UNIQUE KEY `PGMID_2` (`PGMID`,`FILENM`);

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
  ADD PRIMARY KEY (`GRP_SEQ`,`PGMID`,`AUTH_ID`),
  ADD UNIQUE KEY `UIDX_GASEQ` (`GA_SEQ`);

--
-- 테이블의 인덱스 `CMN_GRP_USR`
--
ALTER TABLE `CMN_GRP_USR`
  ADD PRIMARY KEY (`GRP_SEQ`,`USR_SEQ`);

--
-- 테이블의 인덱스 `CMN_IP`
--
ALTER TABLE `CMN_IP`
  ADD PRIMARY KEY (`IP_SEQ`);

--
-- 테이블의 인덱스 `CMN_LOG_AUTH`
--
ALTER TABLE `CMN_LOG_AUTH`
  ADD PRIMARY KEY (`LAUTH_SEQ`);

--
-- 테이블의 인덱스 `CMN_LOG_AUTHD`
--
ALTER TABLE `CMN_LOG_AUTHD`
  ADD PRIMARY KEY (`LAUTHD_SEQ`);

--
-- 테이블의 인덱스 `CMN_LOG_CFM`
--
ALTER TABLE `CMN_LOG_CFM`
  ADD PRIMARY KEY (`CFM_SEQ`);

--
-- 테이블의 인덱스 `CMN_LOG_DEPLOY`
--
ALTER TABLE `CMN_LOG_DEPLOY`
  ADD PRIMARY KEY (`LDEPLOY_SEQ`);

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
-- 테이블의 인덱스 `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`atoken_seq`),
  ADD UNIQUE KEY `access_token` (`access_token`);

--
-- 테이블의 인덱스 `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- 테이블의 인덱스 `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- 테이블의 인덱스 `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`rtoken_seq`),
  ADD UNIQUE KEY `refresh_token` (`refresh_token`);

--
-- 테이블의 인덱스 `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- 테이블의 인덱스 `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`user_seq`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `CMN_AUTH`
--
ALTER TABLE `CMN_AUTH`
  MODIFY `AUTH_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_CFG_HISTORY`
--
ALTER TABLE `CMN_CFG_HISTORY`
  MODIFY `CFG_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_DEPLOY_FILE`
--
ALTER TABLE `CMN_DEPLOY_FILE`
  MODIFY `DEPLOY_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_FOLDER`
--
ALTER TABLE `CMN_FOLDER`
  MODIFY `FOLDER_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_GRP`
--
ALTER TABLE `CMN_GRP`
  MODIFY `GRP_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_GRP_AUTH`
--
ALTER TABLE `CMN_GRP_AUTH`
  MODIFY `GA_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_IP`
--
ALTER TABLE `CMN_IP`
  MODIFY `IP_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_AUTH`
--
ALTER TABLE `CMN_LOG_AUTH`
  MODIFY `LAUTH_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_AUTHD`
--
ALTER TABLE `CMN_LOG_AUTHD`
  MODIFY `LAUTHD_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_CFM`
--
ALTER TABLE `CMN_LOG_CFM`
  MODIFY `CFM_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_DEPLOY`
--
ALTER TABLE `CMN_LOG_DEPLOY`
  MODIFY `LDEPLOY_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_LOG_LOGIN`
--
ALTER TABLE `CMN_LOG_LOGIN`
  MODIFY `LOGIN_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_MNU`
--
ALTER TABLE `CMN_MNU`
  MODIFY `MNU_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `CMN_USR`
--
ALTER TABLE `CMN_USR`
  MODIFY `USR_SEQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  MODIFY `atoken_seq` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  MODIFY `rtoken_seq` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `oauth_users`
--
ALTER TABLE `oauth_users`
  MODIFY `user_seq` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
