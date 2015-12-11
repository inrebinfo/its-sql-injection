-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Dez 2015 um 15:49
-- Server-Version: 5.6.25
-- PHP-Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `its`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cid` int(33) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`cid`, `name`) VALUES
(1, 'metal'),
(2, 'pop');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(33) NOT NULL,
  `name` varchar(32) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `comments`
--

INSERT INTO `comments` (`cid`, `name`, `text`) VALUES
(1, 'test', 'test'),
(2, 'test', '5.6.25'),
(3, 'testâ€™,(select password from my', ''),
(4, 'test', ''),
(5, 'test', ''),
(6, 'test'', (SELECT @@VERSION)); -- -', ''),
(7, 'test'', (SELECT @@VERSION)); -- -', 'edgfsdgSAG'),
(8, 'test'', (SELECT table_name, null ', ''),
(9, 'gashgashd', 'asdhasdh'),
(10, '', ''),
(11, 'test', 'CHARACTER_SETS'),
(12, 'test', 'CHARACTER_SETS'),
(13, 'test', 'CHARACTER_SETS'),
(14, '0', ''),
(15, '0', ''),
(16, '0', ''),
(17, '<script>alert("xss");</script>', '<script>alert("xss");</script>'),
(18, '<script type="text/javascript">a', '<script type="text/javascript">alert("xss");</script>'),
(19, '<script type="text/javascript">a', '<script type="text/javascript">alert("xss");</script>'),
(20, 'sdfsdfsdf', '<script type="text/javascript">alert("xss");</script>'),
(21, 'sdfsdfsdf', '<script type="text/javascript">alert("xss");</script>'),
(22, 'wrgqrwgh', '<script type="text/javascript">alert("xss");</script>'),
(23, 'eqwtanfb', '<script type="text/javascript">alert("xss");</script>'),
(24, 'test', '5.6.25');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logos`
--

CREATE TABLE IF NOT EXISTS `logos` (
  `pid` int(33) NOT NULL,
  `name` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `category` int(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `logos`
--

INSERT INTO `logos` (`pid`, `name`, `filename`, `category`) VALUES
(1, 'Metallica', 'metallica.jpg', 1),
(2, 'Rammstein', 'rammstein.jpg', 1),
(3, 'Katy Perry', 'katyperry.jpg', 2),
(4, 'August Burns Red', 'augustburnsred.jpg', 1),
(5, 'Slipknot', 'slipknot.jpg', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `rid` int(33) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ranks`
--

INSERT INTO `ranks` (`rid`, `name`) VALUES
(1, 'User'),
(2, 'Moderator'),
(3, 'Administrator');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(33) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `rank` int(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `rank`) VALUES
(1, 'admin', 'adminpass', 3),
(2, 'moderator', 'moderatorpass', 2),
(3, 'user', 'userpass', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indizes für die Tabelle `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`pid`);

--
-- Indizes für die Tabelle `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`rid`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(33) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(33) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT für Tabelle `logos`
--
ALTER TABLE `logos`
  MODIFY `pid` int(33) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rid` int(33) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(33) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
