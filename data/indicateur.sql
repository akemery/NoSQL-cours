-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2015 at 10:21 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sit`
--

--
-- Dumping data for table `indicateur`
--

INSERT INTO `indicateur` (`id`, `creationdate`, `lastmodificationdate`, `name`, `secteur_id`) VALUES
(1, '2014-10-22 22:34:16', '2014-10-22 21:34:16', 'dodo', 12),
(14, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'population', 5),
(15, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Taux brut de scolarisation', 7),
(16, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Centre de santé darrondissement', 11),
(17, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Infrastructure sanitaire', 11),
(18, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Equipement sanitaire', 11),
(19, NULL, '2013-12-18 13:32:10', 'Ressources humaines de la santé', 11),
(20, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Epidémiologie', 11),
(21, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Couverture vaccinale', 11),
(22, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Couverture en moustiquaires imprègnées', 11),
(23, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Activités de médecine et soins de santé maternel et infantile', 11),
(24, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Production végétale', 3),
(25, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Production animale', 3),
(26, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Production halieutique', 3),
(27, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Vulnérabilité', 10),
(28, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Etat civil', 2),
(29, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Fonctionnement du conseil communal', 8),
(30, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Accidents de circulation', 12),
(31, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Couverture en point deau', 6),
(32, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Statistiques liés à lalphabétisation', 4),
(33, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Taux de réussite par rapport aux tests alpha', 4),
(34, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Infrastructures scolaires', 7),
(35, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Enseignement maternel', 7),
(37, '2014-08-01 15:06:35', '2014-08-01 14:06:35', 'culture du riz onasa', 3),
(41, '2014-08-01 15:24:25', '2014-08-01 14:24:25', 'Production végétaluous', 3),
(42, '2014-08-01 15:24:25', '2014-08-01 14:24:25', 'Production animaleous', 3),
(43, '2014-08-01 15:24:25', '2014-08-01 14:24:25', 'Production halieutiqueous', 3),
(44, '2014-08-01 15:24:25', '2014-08-01 14:24:25', 'culture du riz onasaous', 3),
(103, '2014-10-05 01:19:33', '2014-10-05 00:19:33', 'Manger c''est bon', 11),
(360, '2013-12-18 14:20:30', '2013-12-18 13:20:30', 'Effectif du personnel de la mairie', 2),
(370, '2013-12-18 14:21:50', '2013-12-18 13:21:50', 'Densité démographique en fonction des infrastructures équipement et personnel de santé', 11),
(380, NULL, '2014-08-01 13:49:14', 'Ressources humaines de l''administration communale', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
