-- --------------------------------------------------------
-- Host:                         192.168.0.10
-- Server Version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für emp_sql
CREATE DATABASE IF NOT EXISTS `emp_sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci */;
USE `emp_sql`;

-- Exportiere Struktur von Tabelle emp_sql.emp
CREATE TABLE IF NOT EXISTS `emp` (
  `id` int(4) NOT NULL,
  `realname` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `surname` varchar(60) NOT NULL,
  `personnel_number` int(8) NOT NULL,
  `date_of_birth` varchar(60) NOT NULL,
  `address` varchar(90) NOT NULL,
  `unit` varchar(60) NOT NULL,
  `phone_number` varchar(60) NOT NULL,
  `employment_relationship` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `drivers_license` varchar(60) NOT NULL,
  `religion` varchar(60) NOT NULL,
  `health_insurance` varchar(60) NOT NULL,
  `marital_status` varchar(60) NOT NULL,
  `salary` int(10) NOT NULL,
  `email_address` varchar(120) NOT NULL,
  `supervisor` varchar(60) NOT NULL,
  `entry_date` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle emp_sql.emp: ~20 rows (ungefähr)
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` (`id`, `realname`, `first_name`, `surname`, `personnel_number`, `date_of_birth`, `address`, `unit`, `phone_number`, `employment_relationship`, `gender`, `drivers_license`, `religion`, `health_insurance`, `marital_status`, `salary`, `email_address`, `supervisor`, `entry_date`) VALUES
	(1, 'Dieter Mehrbach', 'Dieter', 'Mehrbach', 187187, '18.07.1978', 'Bremer Straße 33', 'Marketing', '0178 887778', 'unbefristet', 'd', 'B', 'Evangelisch', 'TKK', 'Ledig', 6, 'mehrbach@spezialsoftware.de', 'Horst Hopst', '18.07.2001'),
	(2, 'Friedhelm Meis', 'Friedhelm', 'Meis', 13124, '18.07.1967', 'Blumenstraße 13', 'Vetrieb', '0160 63398', 'Angestellter', 'm', 'L', 'Evangelisch', 'HkK', 'Verheiratet', 7, 'Friedhelm@yahoo.de', 'Horst Hopst', '18.07.1989'),
	(3, 'Jürgen Werner', 'Jürgen', 'Werner', 16666, '17.03.1953', 'Jürgensstraße 66', 'Verlag', '0179 668934', 'Angestellter', 'd', 'Nein', 'k/A', 'BKK', 'Ledig', 7, 'Jürgen.Werner21@gmail.com', 'Horst Hopst', '13.02.1973'),
	(4, 'Dietmar Jung', 'Dietmar', 'Jung', 26486, '13.07.1971', 'Koppelweg 22', 'HR Payroll', '0172 4673599', 'Angestellter', 'd', 'BE|C', 'k/A', 'BarmerGEK', 'Verheiratet', 8, 'dietmar.jung@hotmail.de', 'Horst Hopst', '01.06.1990'),
	(5, 'Hans Werner', 'Hans', 'Werner', 1337, '20.04.1989', 'Musterweg 32', 'Politik', '0174 184646', 'CEO', 'd', 'BE', 'Atheist', 'AKO', 'Verheiratet', 100000, 'Hans.Werner@BRDGmbH.de', 'Hans Werner', '01.06.1999'),
	(6, 'Rainer Zufall', 'Rainer', 'Zufall', 42133742, '13.03.1977', 'Ligusterweg 12', 'IT', '0176 45900631', 'Praktikant', 'd', 'BE', 'Mystischer Christ', 'HKK', 'Ledig', 1, 'lol@familienfreundlicher.de', 'Klaus Peter', '01.10.2020'),
	(7, 'James Dean', 'James', 'Dean', 18473, '04.02.1955', 'Königsstraße 34', 'IT', '0170 92830291', 'Vorstandsvorsitzender', 'm', 'B', 'k/A', 'Die Techniker ', 'Verwitwet', 100, 'jamesdean@deanmangment.com', 'Obama', '09.09.2020'),
	(8, 'Charles Darwin', 'Charles', 'Darwin', 1882, '12.02.1909', 'Rankenfußkrebs Straße 2', 'Systemanalyse', '0172 5151850', 'Unbefristet', 'm', 'T|DE', 'Atheist', 'Evolution', 'Verheiratet', 1, 'CharlsDarwin@Evolotionäre.com', 'Optimus Prime', '01.08.1945'),
	(9, 'Wilhelm Neu', 'Wilhelmn', 'Neu', 1836, '04.08.1936', 'Bremer Herrstraße 69', 'Vertrieb', '0164 9759375', 'Angestellter', 'm', 'Nein', 'Katholisch', 'AOK', 'Ledig', 1500, 'W.Skrim@powerfulmininggmbhincorporated.co.uk', 'Horst Hopst', '06.09.1937'),
	(10, 'Karl Friedrich', 'Karl', 'Friedrich', 20203, '25.01.1973', 'Hauptstrasse 149', 'HR', '0174 56789', 'Angestellter', 'm', 'CE', 'Kath.', 'AOK', 'Ledig', 7, 'kar.a@gm.de', 'Horst Hopst', '01.09.2020'),
	(11, 'Horst Hopst', 'Horst', 'Hopst', 20986, '27.05.1926', 'Johan Evan Straße 2', 'IT', '0142 9875935', 'Abteilungsleiter IT', 'm', 'B', 'k/A', 'IHK', 'Ledig', 3400, 'HH@powerfulmininggmbhincorporated.co.uk', 'Hans Werner', '05.09.1937'),
	(12, 'Klaus Dieter', 'Klaus', 'Dieter', 192310, '28.02.1984', 'Verdener Straße 475', 'Facility Management', '0421 252535', 'unbefristet', 'm', 'CE', 'Katholisch', 'IKK', 'Verheiratet', 2, 'klaus.dieter@uni-eldorado.de', 'Werner Meier', '01.01.2000'),
	(13, 'Markus Markward', 'Markus', 'Markward', 75464, '14.08.1996', 'Marienweg 4', 'IT', '0432 342342', 'unbefristet', 'm', 'B', 'Evangelisch', 'AOK', 'Ledig', 4, 'markus@powerfulmininggmbh.co.uk', 'Dieter Hausmann', '01.02.2018'),
	(14, 'Thorsten Holz', 'Thorsten', 'Holz', 90843, '01.01.1999', 'Am Stern 3 ', 'Geschäftsführer', '1522 175678', 'befristet', 'm', 'B', 'Evangelisch', 'HKKK', 'Ledig', 10, 'T.H.@gmail.com', 'Horst Hopst', '01.02.2020'),
	(15, 'Ali Memanadi', 'Ali', 'Memanadi', 1234567, '23.08.1986', 'Bremer Straße 21', 'IT', '1631 234567', 'unbefristet', 'm', 'B', 'Evangelisch', 'AOK', 'Verheiratet', 3, 'ali.m8@gmail.com', 'Horst Hopst', '01.04.1997'),
	(16, 'Manfred Bohles', 'Manfred', 'Bohles', 39576, '12.06.1999', 'Bremer Heerstraße 31', 'IT', '0179 5483254', 'unbefristet', 'm', 'BE', 'Evangelisch', 'AOK', 'Ledig', 2, 'manfred.homburg@gmail.com', 'Horst Hopst', '30.06.2005'),
	(17, 'Insa Hailbrog', 'Insa', 'Hailbrog', 18674, '01.09.1997', 'Bremer Heerstraße 31', 'Marketing', '0179 5418384', 'unbefristet', 'w', 'Nein', 'Katholisch', 'HKKK', 'Ledig', 4, 'insa.homburg@ewetel.net', 'Horst Hopst', '30.06.2005'),
	(18, 'Heinrich Marsen', 'Heinrich', 'Marsen', 5940, '01.01.1990', 'Mohnblumenweg 7', 'Vertrieb', '0423 16780', 'Angestellter', 'm', 'N', 'Evangelisch', 'HKKK', 'Verheiratet', 3, 'h.stock@deine.firma.de', 'T.Reichelt', '01.08.2008'),
	(19, 'Timo Makler', 'Timo', 'Makler', 123456789, '02.10.1996', 'Teststraße 1', 'IT', '0363 123456789', 'Angestellter', 'm', 'B', 'Evangelisch', 'HKK', 'Ledig', 9, 'test@testemail.de', 'Heinz', '10.09.2020'),
	(20, 'Alexander Dunkel', 'Alexander', 'Dunkel', 69, '24.01.1998', 'Mohnblummenweg 7', 'IT', '666', 'Angestellter', 'm', 'B', 'Evangelisch', 'AOK', 'Ledig', 12, 'Dunkel@Schwarz.de', 'Heinz', '10.09.2020');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
