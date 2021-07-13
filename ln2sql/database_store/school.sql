-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 29 Mars 2013 à 13:31
-- Version du serveur: 5.1.41
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `class` (
  `idClass` int(11) NOT NULL AUTO_INCREMENT,
  `classroom` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idClass`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;


INSERT INTO `class` (`idClass`, `classroom`) VALUES
(1, 'TPR1'),
(2, 'TPR2');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `student` (
  `idStudent` int(11) NOT NULL AUTO_INCREMENT,
  `idClass` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`idStudent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;


INSERT INTO `student` (`idStudent`, `idClass`, `name`, `firstname`, `age`) VALUES
(1, 1, 'DI', 'Alain', 23),
(2, 1, 'EMMAR', 'Jean', 21),
(3, 2, 'TENRIEN', 'Jean', 20),
(4, 1, 'VEUPLU', 'John', 23),
(5, 1, 'EDEPRE', 'Rose', 22),
(6, 2, 'KILO', 'Sandy', 24);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `teaching` (
  `idProf` int(11) NOT NULL,
  `idClass` int(11) NOT NULL,
  `field` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `teaching` (`idProf`, `idClass`, `field`) VALUES
(1, 1, 'Algorithm'),
(2, 1, 'Database');

-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `professor` (
  `idProf` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idProf`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;


INSERT INTO `professor` (`idProf`, `name`, `firstname`) VALUES
(1, 'CEPTION', 'Alex'),
(2, 'KEND', 'Bowie'),
(3, 'EHA', 'Aline'),
(4, 'TOMI', 'Anna');


CREATE TABLE IF NOT EXISTS `all_star` (
    `player_id` TEXT,
    `year` INTEGER,
    `game_num` INTEGER,
    `game_id` TEXT,
    `team_id` TEXT,
    `league_id` TEXT,
    `gp` NUMERIC,
    `starting_pos` NUMERIC,
    foreign key (player_id) references player(player_id)
);
INSERT INTO "all_star" VALUES('gomezle01',1933,0,'ALS193307060','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('ferreri01',1933,0,'ALS193307060','BOS','AL',1,2);
INSERT INTO "all_star" VALUES('gehrilo01',1933,0,'ALS193307060','NYA','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1933,0,'ALS193307060','DET','AL',1,4);
INSERT INTO "all_star" VALUES('dykesji01',1933,0,'ALS193307060','CHA','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1933,0,'ALS193307060','WS1','AL',1,6);
INSERT INTO "all_star" VALUES('chapmbe01',1933,0,'ALS193307060','NYA','AL',1,7);
INSERT INTO "all_star" VALUES('simmoal01',1933,0,'ALS193307060','CHA','AL',1,8);
INSERT INTO "all_star" VALUES('ruthba01',1933,0,'ALS193307060','NYA','AL',1,9);
INSERT INTO "all_star" VALUES('averiea01',1933,0,'ALS193307060','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('crowdal01',1933,0,'ALS193307060','WS1','AL',1,'');
INSERT INTO "all_star" VALUES('dickebi01',1933,0,'ALS193307060','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('ferrewe01',1933,0,'ALS193307060','CLE','AL',0,'');
INSERT INTO "all_star" VALUES('foxxji01',1933,0,'ALS193307060','PHA','AL',0,'');
INSERT INTO "all_star" VALUES('grovele01',1933,0,'ALS193307060','PHA','AL',1,'');
INSERT INTO "all_star" VALUES('hildeor01',1933,0,'ALS193307060','CLE','AL',0,'');
INSERT INTO "all_star" VALUES('lazzeto01',1933,0,'ALS193307060','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('westsa01',1933,0,'ALS193307060','SLA','AL',1,'');
INSERT INTO "all_star" VALUES('hallabi01',1933,0,'ALS193307060','SLN','NL',1,1);
INSERT INTO "all_star" VALUES('wilsoji01',1933,0,'ALS193307060','SLN','NL',1,2);
INSERT INTO "all_star" VALUES('terrybi01',1933,0,'ALS193307060','NY1','NL',1,3);
INSERT INTO "all_star" VALUES('friscfr01',1933,0,'ALS193307060','SLN','NL',1,4);
INSERT INTO "all_star" VALUES('martipe01',1933,0,'ALS193307060','SLN','NL',1,5);
INSERT INTO "all_star" VALUES('bartedi01',1933,0,'ALS193307060','PHI','NL',1,6);
INSERT INTO "all_star" VALUES('hafeych01',1933,0,'ALS193307060','CIN','NL',1,7);
INSERT INTO "all_star" VALUES('bergewa01',1933,0,'ALS193307060','BSN','NL',1,8);
INSERT INTO "all_star" VALUES('kleinch01',1933,0,'ALS193307060','PHI','NL',1,9);
INSERT INTO "all_star" VALUES('cuccito01',1933,0,'ALS193307060','BRO','NL',1,'');
INSERT INTO "all_star" VALUES('engliwo01',1933,0,'ALS193307060','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('hartnga01',1933,0,'ALS193307060','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('hubbeca01',1933,0,'ALS193307060','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('odoulle01',1933,0,'ALS193307060','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('schumha02',1933,0,'ALS193307060','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('traynpi01',1933,0,'ALS193307060','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('wanerpa01',1933,0,'ALS193307060','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('warnelo01',1933,0,'ALS193307060','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('gomezle01',1934,0,'NLS193407100','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('dickebi01',1934,0,'NLS193407100','NYA','AL',1,2);
INSERT INTO "all_star" VALUES('gehrilo01',1934,0,'NLS193407100','NYA','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1934,0,'NLS193407100','DET','AL',1,4);
INSERT INTO "all_star" VALUES('foxxji01',1934,0,'NLS193407100','PHA','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1934,0,'NLS193407100','WS1','AL',1,6);
INSERT INTO "all_star" VALUES('manushe01',1934,0,'NLS193407100','WS1','AL',1,7);
INSERT INTO "all_star" VALUES('simmoal01',1934,0,'NLS193407100','CHA','AL',1,8);
INSERT INTO "all_star" VALUES('ruthba01',1934,0,'NLS193407100','NYA','AL',1,9);
INSERT INTO "all_star" VALUES('averiea01',1934,0,'NLS193407100','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('bridgto01',1934,0,'NLS193407100','DET','AL',0,'');
INSERT INTO "all_star" VALUES('chapmbe01',1934,0,'NLS193407100','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('cochrmi01',1934,0,'NLS193407100','DET','AL',1,'');
INSERT INTO "all_star" VALUES('dykesji01',1934,0,'NLS193407100','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('ferreri01',1934,0,'NLS193407100','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('hardeme01',1934,0,'NLS193407100','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('higgipi01',1934,0,'NLS193407100','PHA','AL',0,'');
INSERT INTO "all_star" VALUES('ruffire01',1934,0,'NLS193407100','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('russeja01',1934,0,'NLS193407100','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('westsa01',1934,0,'NLS193407100','SLA','AL',1,'');
INSERT INTO "all_star" VALUES('hubbeca01',1934,0,'NLS193407100','NY1','NL',1,1);
INSERT INTO "all_star" VALUES('hartnga01',1934,0,'NLS193407100','CHN','NL',1,2);
INSERT INTO "all_star" VALUES('terrybi01',1934,0,'NLS193407100','NY1','NL',1,3);
INSERT INTO "all_star" VALUES('friscfr01',1934,0,'NLS193407100','SLN','NL',1,4);
INSERT INTO "all_star" VALUES('traynpi01',1934,0,'NLS193407100','PIT','NL',1,5);
INSERT INTO "all_star" VALUES('jackstr01',1934,0,'NLS193407100','NY1','NL',1,6);
INSERT INTO "all_star" VALUES('medwijo01',1934,0,'NLS193407100','SLN','NL',1,7);
INSERT INTO "all_star" VALUES('bergewa01',1934,0,'NLS193407100','BSN','NL',1,8);
INSERT INTO "all_star" VALUES('cuyleki01',1934,0,'NLS193407100','CHN','NL',1,9);
INSERT INTO "all_star" VALUES('deandi01',1934,0,'NLS193407100','SLN','NL',1,'');
INSERT INTO "all_star" VALUES('frankfr02',1934,0,'NLS193407100','BSN','NL',1,'');
INSERT INTO "all_star" VALUES('hermabi01',1934,0,'NLS193407100','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('kleinch01',1934,0,'NLS193407100','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('lopezal01',1934,0,'NLS193407100','BRO','NL',1,'');
INSERT INTO "all_star" VALUES('martipe01',1934,0,'NLS193407100','SLN','NL',1,'');
INSERT INTO "all_star" VALUES('moorejo02',1934,0,'NLS193407100','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('mungova01',1934,0,'NLS193407100','BRO','NL',1,'');
INSERT INTO "all_star" VALUES('ottme01',1934,0,'NLS193407100','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('vaughar01',1934,0,'NLS193407100','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('wanerpa01',1934,0,'NLS193407100','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('warnelo01',1934,0,'NLS193407100','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('gomezle01',1935,0,'ALS193507080','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('hemslro01',1935,0,'ALS193507080','SLA','AL',1,2);
INSERT INTO "all_star" VALUES('gehrilo01',1935,0,'ALS193507080','NYA','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1935,0,'ALS193507080','DET','AL',1,4);
INSERT INTO "all_star" VALUES('foxxji01',1935,0,'ALS193507080','PHA','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1935,0,'ALS193507080','BOS','AL',1,6);
INSERT INTO "all_star" VALUES('johnsbo01',1935,0,'ALS193507080','PHA','AL',1,7);
INSERT INTO "all_star" VALUES('simmoal01',1935,0,'ALS193507080','CHA','AL',1,8);
INSERT INTO "all_star" VALUES('vosmijo01',1935,0,'ALS193507080','CLE','AL',1,9);
INSERT INTO "all_star" VALUES('averiea01',1935,0,'ALS193507080','CLE','AL',0,'');
INSERT INTO "all_star" VALUES('bluegos01',1935,0,'ALS193507080','WS1','AL',1,'');
INSERT INTO "all_star" VALUES('bridgto01',1935,0,'ALS193507080','DET','AL',0,'');
INSERT INTO "all_star" VALUES('chapmbe01',1935,0,'ALS193507080','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('cochrmi01',1935,0,'ALS193507080','DET','AL',0,'');
INSERT INTO "all_star" VALUES('cramedo01',1935,0,'ALS193507080','PHA','AL',1,'');
INSERT INTO "all_star" VALUES('ferreri01',1935,0,'ALS193507080','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('grovele01',1935,0,'ALS193507080','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('hardeme01',1935,0,'ALS193507080','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('myerbu01',1935,0,'ALS193507080','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('rowesc01',1935,0,'ALS193507080','DET','AL',0,'');
INSERT INTO "all_star" VALUES('westsa01',1935,0,'ALS193507080','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('walkebi01',1935,0,'ALS193507080','SLN','NL',1,1);
INSERT INTO "all_star" VALUES('wilsoji01',1935,0,'ALS193507080','PHI','NL',1,2);
INSERT INTO "all_star" VALUES('terrybi01',1935,0,'ALS193507080','NY1','NL',1,3);
INSERT INTO "all_star" VALUES('hermabi01',1935,0,'ALS193507080','CHN','NL',1,4);
INSERT INTO "all_star" VALUES('martipe01',1935,0,'ALS193507080','SLN','NL',1,5);
INSERT INTO "all_star" VALUES('vaughar01',1935,0,'ALS193507080','PIT','NL',1,6);
INSERT INTO "all_star" VALUES('medwijo01',1935,0,'ALS193507080','SLN','NL',1,7);
INSERT INTO "all_star" VALUES('bergewa01',1935,0,'ALS193507080','BSN','NL',1,8);
INSERT INTO "all_star" VALUES('ottme01',1935,0,'ALS193507080','NY1','NL',1,9);
INSERT INTO "all_star" VALUES('colliri02',1935,0,'ALS193507080','SLN','NL',1,'');
INSERT INTO "all_star" VALUES('deandi01',1935,0,'ALS193507080','SLN','NL',1,'');
INSERT INTO "all_star" VALUES('derripa01',1935,0,'ALS193507080','CIN','NL',1,'');
INSERT INTO "all_star" VALUES('friscfr01',1935,0,'ALS193507080','SLN','NL',0,'');
INSERT INTO "all_star" VALUES('hartnga01',1935,0,'ALS193507080','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('hubbeca01',1935,0,'ALS193507080','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('mancugu01',1935,0,'ALS193507080','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('moorejo02',1935,0,'ALS193507080','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('schumha02',1935,0,'ALS193507080','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('wanerpa01',1935,0,'ALS193507080','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('whitebu01',1935,0,'ALS193507080','SLN','NL',1,'');
INSERT INTO "all_star" VALUES('grovele01',1936,0,'NLS193607070','BOS','AL',1,1);
INSERT INTO "all_star" VALUES('ferreri01',1936,0,'NLS193607070','BOS','AL',1,2);
INSERT INTO "all_star" VALUES('gehrilo01',1936,0,'NLS193607070','NYA','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1936,0,'NLS193607070','DET','AL',1,4);
INSERT INTO "all_star" VALUES('higgipi01',1936,0,'NLS193607070','PHA','AL',1,5);
INSERT INTO "all_star" VALUES('applilu01',1936,0,'NLS193607070','CHA','AL',1,6);
INSERT INTO "all_star" VALUES('radclri01',1936,0,'NLS193607070','CHA','AL',1,7);
INSERT INTO "all_star" VALUES('averiea01',1936,0,'NLS193607070','CLE','AL',1,8);
INSERT INTO "all_star" VALUES('dimagjo01',1936,0,'NLS193607070','NYA','AL',1,9);
INSERT INTO "all_star" VALUES('bridgto01',1936,0,'NLS193607070','DET','AL',0,'');
INSERT INTO "all_star" VALUES('chapmbe01',1936,0,'NLS193607070','WS1','AL',1,'');
INSERT INTO "all_star" VALUES('crosefr01',1936,0,'NLS193607070','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('dickebi01',1936,0,'NLS193607070','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('foxxji01',1936,0,'NLS193607070','BOS','AL',1,'');
INSERT INTO "all_star" VALUES('gomezle01',1936,0,'NLS193607070','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('gosligo01',1936,0,'NLS193607070','DET','AL',1,'');
INSERT INTO "all_star" VALUES('hardeme01',1936,0,'NLS193607070','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('hemslro01',1936,0,'NLS193607070','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('kenneve01',1936,0,'NLS193607070','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('pearsmo01',1936,0,'NLS193607070','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('rowesc01',1936,0,'NLS193607070','DET','AL',1,'');
INSERT INTO "all_star" VALUES('selkige01',1936,0,'NLS193607070','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('deandi01',1936,0,'NLS193607070','SLN','NL',1,1);
INSERT INTO "all_star" VALUES('hartnga01',1936,0,'NLS193607070','CHN','NL',1,2);
INSERT INTO "all_star" VALUES('colliri02',1936,0,'NLS193607070','SLN','NL',1,3);
INSERT INTO "all_star" VALUES('hermabi01',1936,0,'NLS193607070','CHN','NL',1,4);
INSERT INTO "all_star" VALUES('whitnpi01',1936,0,'NLS193607070','PHI','NL',1,5);
INSERT INTO "all_star" VALUES('durocle01',1936,0,'NLS193607070','SLN','NL',1,6);
INSERT INTO "all_star" VALUES('medwijo01',1936,0,'NLS193607070','SLN','NL',1,7);
INSERT INTO "all_star" VALUES('galanau01',1936,0,'NLS193607070','CHN','NL',1,8);
INSERT INTO "all_star" VALUES('demarfr02',1936,0,'NLS193607070','CHN','NL',1,9);
INSERT INTO "all_star" VALUES('bergewa01',1936,0,'NLS193607070','BSN','NL',0,'');
INSERT INTO "all_star" VALUES('daviscu01',1936,0,'NLS193607070','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('hubbeca01',1936,0,'NLS193607070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('lombaer01',1936,0,'NLS193607070','CIN','NL',0,'');
INSERT INTO "all_star" VALUES('martist01',1936,0,'NLS193607070','SLN','NL',0,'');
INSERT INTO "all_star" VALUES('moorejo02',1936,0,'NLS193607070','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('mungova01',1936,0,'NLS193607070','BRO','NL',0,'');
INSERT INTO "all_star" VALUES('ottme01',1936,0,'NLS193607070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('riggsle01',1936,0,'NLS193607070','CIN','NL',1,'');
INSERT INTO "all_star" VALUES('suhrgu01',1936,0,'NLS193607070','PIT','NL',0,'');
INSERT INTO "all_star" VALUES('vaughar01',1936,0,'NLS193607070','PIT','NL',0,'');
INSERT INTO "all_star" VALUES('warnelo01',1936,0,'NLS193607070','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('gomezle01',1937,0,'ALS193707070','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('dickebi01',1937,0,'ALS193707070','NYA','AL',1,2);
INSERT INTO "all_star" VALUES('gehrilo01',1937,0,'ALS193707070','NYA','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1937,0,'ALS193707070','DET','AL',1,4);
INSERT INTO "all_star" VALUES('rolfere01',1937,0,'ALS193707070','NYA','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1937,0,'ALS193707070','BOS','AL',1,6);
INSERT INTO "all_star" VALUES('westsa01',1937,0,'ALS193707070','SLA','AL',1,7);
INSERT INTO "all_star" VALUES('averiea01',1937,0,'ALS193707070','CLE','AL',1,8);
INSERT INTO "all_star" VALUES('dimagjo01',1937,0,'ALS193707070','NYA','AL',1,9);
INSERT INTO "all_star" VALUES('bellbe01',1937,0,'ALS193707070','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('bridgto01',1937,0,'ALS193707070','DET','AL',1,'');
INSERT INTO "all_star" VALUES('cliftha01',1937,0,'ALS193707070','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('cramedo01',1937,0,'ALS193707070','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('ferreri01',1937,0,'ALS193707070','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('ferrewe01',1937,0,'ALS193707070','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('foxxji01',1937,0,'ALS193707070','BOS','AL',1,'');
INSERT INTO "all_star" VALUES('greenha01',1937,0,'ALS193707070','DET','AL',0,'');
INSERT INTO "all_star" VALUES('grovele01',1937,0,'ALS193707070','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('hardeme01',1937,0,'ALS193707070','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('moseswa01',1937,0,'ALS193707070','PHA','AL',0,'');
INSERT INTO "all_star" VALUES('murphjo04',1937,0,'ALS193707070','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('myerbu01',1937,0,'ALS193707070','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('sewellu01',1937,0,'ALS193707070','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('stratmo01',1937,0,'ALS193707070','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('walkege02',1937,0,'ALS193707070','DET','AL',0,'');
INSERT INTO "all_star" VALUES('deandi01',1937,0,'ALS193707070','SLN','NL',1,1);
INSERT INTO "all_star" VALUES('hartnga01',1937,0,'ALS193707070','CHN','NL',1,2);
INSERT INTO "all_star" VALUES('mizejo01',1937,0,'ALS193707070','SLN','NL',1,3);
INSERT INTO "all_star" VALUES('hermabi01',1937,0,'ALS193707070','CHN','NL',1,4);
INSERT INTO "all_star" VALUES('vaughar01',1937,0,'ALS193707070','PIT','NL',1,5);
INSERT INTO "all_star" VALUES('bartedi01',1937,0,'ALS193707070','NY1','NL',1,6);
INSERT INTO "all_star" VALUES('medwijo01',1937,0,'ALS193707070','SLN','NL',1,7);
INSERT INTO "all_star" VALUES('demarfr02',1937,0,'ALS193707070','CHN','NL',1,8);
INSERT INTO "all_star" VALUES('wanerpa01',1937,0,'ALS193707070','PIT','NL',1,9);
INSERT INTO "all_star" VALUES('blantcy01',1937,0,'ALS193707070','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('colliri02',1937,0,'ALS193707070','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('grissle01',1937,0,'ALS193707070','CIN','NL',1,'');
INSERT INTO "all_star" VALUES('hubbeca01',1937,0,'ALS193707070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('jurgebi01',1937,0,'ALS193707070','CHN','NL',0,'');
INSERT INTO "all_star" VALUES('lombaer01',1937,0,'ALS193707070','CIN','NL',0,'');
INSERT INTO "all_star" VALUES('mancugu01',1937,0,'ALS193707070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('martipe01',1937,0,'ALS193707070','SLN','NL',0,'');
INSERT INTO "all_star" VALUES('moorege03',1937,0,'ALS193707070','BSN','NL',0,'');
INSERT INTO "all_star" VALUES('moorejo02',1937,0,'ALS193707070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('mungova01',1937,0,'ALS193707070','BRO','NL',1,'');
INSERT INTO "all_star" VALUES('ottme01',1937,0,'ALS193707070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('waltebu01',1937,0,'ALS193707070','PHI','NL',1,'');
INSERT INTO "all_star" VALUES('whitebu01',1937,0,'ALS193707070','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('gomezle01',1938,0,'NLS193807060','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('dickebi01',1938,0,'NLS193807060','NYA','AL',1,2);
INSERT INTO "all_star" VALUES('foxxji01',1938,0,'NLS193807060','BOS','AL',1,3);
INSERT INTO "all_star" VALUES('gehrich01',1938,0,'NLS193807060','DET','AL',1,4);
INSERT INTO "all_star" VALUES('lewisbu01',1938,0,'NLS193807060','WS1','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1938,0,'NLS193807060','BOS','AL',1,6);
INSERT INTO "all_star" VALUES('kreevmi01',1938,0,'NLS193807060','CHA','AL',1,7);
INSERT INTO "all_star" VALUES('averiea01',1938,0,'NLS193807060','CLE','AL',1,8);
INSERT INTO "all_star" VALUES('dimagjo01',1938,0,'NLS193807060','NYA','AL',1,9);
INSERT INTO "all_star" VALUES('allenjo02',1938,0,'NLS193807060','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('cramedo01',1938,0,'NLS193807060','BOS','AL',1,'');
INSERT INTO "all_star" VALUES('fellebo01',1938,0,'NLS193807060','CLE','AL',0,'');
INSERT INTO "all_star" VALUES('ferreri01',1938,0,'NLS193807060','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('gehrilo01',1938,0,'NLS193807060','NYA','AL',1,'');
INSERT INTO "all_star" VALUES('greenha01',1938,0,'NLS193807060','DET','AL',0,'');
INSERT INTO "all_star" VALUES('grovele01',1938,0,'NLS193807060','BOS','AL',1,'');
INSERT INTO "all_star" VALUES('johnsbo01',1938,0,'NLS193807060','PHA','AL',1,'');
INSERT INTO "all_star" VALUES('kenneve01',1938,0,'NLS193807060','DET','AL',0,'');
INSERT INTO "all_star" VALUES('murphjo04',1938,0,'NLS193807060','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('newsobo01',1938,0,'NLS193807060','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('rolfere01',1938,0,'NLS193807060','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('ruffire01',1938,0,'NLS193807060','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('travice01',1938,0,'NLS193807060','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('yorkru01',1938,0,'NLS193807060','DET','AL',1,'');
INSERT INTO "all_star" VALUES('vandejo01',1938,0,'NLS193807060','CIN','NL',1,1);
INSERT INTO "all_star" VALUES('lombaer01',1938,0,'NLS193807060','CIN','NL',1,2);
INSERT INTO "all_star" VALUES('mccorfr01',1938,0,'NLS193807060','CIN','NL',1,3);
INSERT INTO "all_star" VALUES('hermabi01',1938,0,'NLS193807060','CHN','NL',1,4);
INSERT INTO "all_star" VALUES('hackst01',1938,0,'NLS193807060','CHN','NL',1,5);
INSERT INTO "all_star" VALUES('durocle01',1938,0,'NLS193807060','BRO','NL',1,6);
INSERT INTO "all_star" VALUES('medwijo01',1938,0,'NLS193807060','SLN','NL',1,7);
INSERT INTO "all_star" VALUES('ottme01',1938,0,'NLS193807060','NY1','NL',1,8);
INSERT INTO "all_star" VALUES('goodmiv01',1938,0,'NLS193807060','CIN','NL',1,9);
INSERT INTO "all_star" VALUES('brownma01',1938,0,'NLS193807060','PIT','NL',1,'');
INSERT INTO "all_star" VALUES('cuccito01',1938,0,'NLS193807060','BSN','NL',0,'');
INSERT INTO "all_star" VALUES('danniha01',1938,0,'NLS193807060','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('derripa01',1938,0,'NLS193807060','CIN','NL',0,'');
INSERT INTO "all_star" VALUES('hartnga01',1938,0,'NLS193807060','CHN','NL',0,'');
INSERT INTO "all_star" VALUES('hubbeca01',1938,0,'NLS193807060','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('lavagco01',1938,0,'NLS193807060','BRO','NL',0,'');
INSERT INTO "all_star" VALUES('leebi02',1938,0,'NLS193807060','CHN','NL',1,'');
INSERT INTO "all_star" VALUES('leibeha01',1938,0,'NLS193807060','NY1','NL',1,'');
INSERT INTO "all_star" VALUES('martihe01',1938,0,'NLS193807060','PHI','NL',0,'');
INSERT INTO "all_star" VALUES('moorejo02',1938,0,'NLS193807060','NY1','NL',0,'');
INSERT INTO "all_star" VALUES('phelpba01',1938,0,'NLS193807060','BRO','NL',0,'');
INSERT INTO "all_star" VALUES('turneji01',1938,0,'NLS193807060','BSN','NL',0,'');
INSERT INTO "all_star" VALUES('vaughar01',1938,0,'NLS193807060','PIT','NL',0,'');
INSERT INTO "all_star" VALUES('wanerll01',1938,0,'NLS193807060','PIT','NL',0,'');
INSERT INTO "all_star" VALUES('ruffire01',1939,0,'ALS193907110','NYA','AL',1,1);
INSERT INTO "all_star" VALUES('dickebi01',1939,0,'ALS193907110','NYA','AL',1,2);
INSERT INTO "all_star" VALUES('greenha01',1939,0,'ALS193907110','DET','AL',1,3);
INSERT INTO "all_star" VALUES('gordojo01',1939,0,'ALS193907110','NYA','AL',1,4);
INSERT INTO "all_star" VALUES('rolfere01',1939,0,'ALS193907110','NYA','AL',1,5);
INSERT INTO "all_star" VALUES('cronijo01',1939,0,'ALS193907110','BOS','AL',1,6);
INSERT INTO "all_star" VALUES('selkige01',1939,0,'ALS193907110','NYA','AL',1,7);
INSERT INTO "all_star" VALUES('dimagjo01',1939,0,'ALS193907110','NYA','AL',1,8);
INSERT INTO "all_star" VALUES('cramedo01',1939,0,'ALS193907110','BOS','AL',1,9);
INSERT INTO "all_star" VALUES('applilu01',1939,0,'ALS193907110','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('bridgto01',1939,0,'ALS193907110','DET','AL',1,'');
INSERT INTO "all_star" VALUES('casege01',1939,0,'ALS193907110','WS1','AL',0,'');
INSERT INTO "all_star" VALUES('crosefr01',1939,0,'ALS193907110','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('fellebo01',1939,0,'ALS193907110','CLE','AL',1,'');
INSERT INTO "all_star" VALUES('foxxji01',1939,0,'ALS193907110','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('gehrilo01',1939,0,'ALS193907110','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('gomezle01',1939,0,'ALS193907110','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('grovele01',1939,0,'ALS193907110','BOS','AL',0,'');
INSERT INTO "all_star" VALUES('hayesfr01',1939,0,'ALS193907110','PHA','AL',0,'');
INSERT INTO "all_star" VALUES('hemslro01',1939,0,'ALS193907110','CLE','AL',0,'');
INSERT INTO "all_star" VALUES('hoagmy01',1939,0,'ALS193907110','SLA','AL',1,'');
INSERT INTO "all_star" VALUES('johnsbo01',1939,0,'ALS193907110','PHA','AL',0,'');
INSERT INTO "all_star" VALUES('lyonste01',1939,0,'ALS193907110','CHA','AL',0,'');
INSERT INTO "all_star" VALUES('mcquige02',1939,0,'ALS193907110','SLA','AL',0,'');
INSERT INTO "all_star" VALUES('murphjo04',1939,0,'ALS193907110','NYA','AL',0,'');
INSERT INTO "all_star" VALUES('newsobo01',1939,0,'ALS193907110','DET','AL',0,'');
INSERT INTO "all_star" VALUES('derripa01',1939,0,'ALS193907110','CIN','NL',1,1);
INSERT INTO "all_star" VALUES('lombaer01',1939,0,'ALS193907110','CIN','NL',1,2);
INSERT INTO "all_star" VALUES('mccorfr01',1939,0,'ALS193907110','CIN','NL',1,3);
INSERT INTO "all_star" VALUES('freylo01',1939,0,'ALS193907110','CIN','NL',1,4);
INSERT INTO "all_star" VALUES('hackst01',1939,0,'ALS193907110','CHN','NL',1,5);
INSERT INTO "all_star" VALUES('vaughar01',1939,0,'ALS193907110','PIT','NL',1,6);
