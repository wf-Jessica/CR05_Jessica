-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Jan 2020 um 09:17
-- Server-Version: 10.4.10-MariaDB
-- PHP-Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr05_jessica_triltsch_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_ID` int(11) NOT NULL,
  `car_name` varchar(30) NOT NULL,
  `car_type` varchar(30) NOT NULL,
  `car_km` int(20) DEFAULT NULL,
  `company_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_ID`, `car_name`, `car_type`, `car_km`, `company_ID`) VALUES
(1, 'Mazda', 'PKW', 140000, 1),
(2, 'Suzuki', 'PKW', 23000, 1),
(3, 'Porsche', 'PKW', 120000, 1),
(4, 'Iveco', 'LKW', 230000, 1),
(5, 'Opel', 'PKW', 150000, 1),
(6, 'Rolls-Royce', 'Limousine', 180000, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carend`
--

CREATE TABLE `carend` (
  `carsend_ID` int(11) NOT NULL,
  `carsend_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_ID` int(11) DEFAULT NULL,
  `car_ID` int(11) DEFAULT NULL,
  `location_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `carend`
--

INSERT INTO `carend` (`carsend_ID`, `carsend_time`, `customer_ID`, `car_ID`, `location_ID`) VALUES
(1, '2020-01-22 07:48:55', 1, 6, 1),
(2, '2020-01-22 07:48:55', 7, 4, 1),
(3, '2020-01-22 07:48:55', 5, 1, 2),
(4, '2020-01-22 07:48:55', 2, 3, 3),
(5, '2020-01-22 07:48:55', 6, 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carstart`
--

CREATE TABLE `carstart` (
  `carstart_ID` int(11) NOT NULL,
  `carstart_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_ID` int(11) DEFAULT NULL,
  `car_ID` int(11) DEFAULT NULL,
  `location_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `carstart`
--

INSERT INTO `carstart` (`carstart_ID`, `carstart_time`, `customer_ID`, `car_ID`, `location_ID`) VALUES
(1, '2019-09-15 02:00:00', 1, 6, 1),
(2, '2019-11-13 15:30:00', 7, 4, 5),
(3, '2020-01-21 06:00:00', 5, 1, 4),
(4, '2019-12-24 10:00:00', 2, 3, 3),
(5, '2020-01-05 09:27:00', 6, 2, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `charges`
--

CREATE TABLE `charges` (
  `charges_ID` int(11) NOT NULL,
  `charges_damage` varchar(30) DEFAULT NULL,
  `charges_costs` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `charges`
--

INSERT INTO `charges` (`charges_ID`, `charges_damage`, `charges_costs`) VALUES
(1, 'Nothing', 0),
(2, 'paint Damage', 50),
(3, 'inner space dirty', 40),
(4, 'Big Damage', 150);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company`
--

CREATE TABLE `company` (
  `company_ID` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_adress` varchar(30) NOT NULL,
  `company_email` varchar(50) DEFAULT NULL,
  `company_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `company`
--

INSERT INTO `company` (`company_ID`, `company_name`, `company_adress`, `company_email`, `company_number`) VALUES
(1, 'JessicasRent', 'Oswald_redlich_str.36/5/5', 'rentacar@jessica.com', '02634786238');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_adress` varchar(30) NOT NULL,
  `customer_email` varchar(30) DEFAULT NULL,
  `customer_number` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_ID`, `customer_name`, `customer_adress`, `customer_email`, `customer_number`) VALUES
(1, 'Jessica Triltsch', 'Oswald-redlich-str.5', 'triltsch.jessica@hotmail.com', 386217846),
(2, 'Rudi Rudolf', 'Rudolfplatz 3', 'Rudilein@gmx.at', 6273864),
(3, 'Ludwig Lustig', 'Lustigggasse 123', 'lustig@hahah.com', 738245),
(4, 'Isabella Triltsch', 'Jerusalemg,11', 'isi@hotmail,com', 473683),
(5, 'Melanie Bauer', 'Hopfengasse 9', 'bauer.melanie@gmx.at', 63786381),
(6, 'Kürschner Leonie', 'Kürschnergasse 87', 'melanie@hotmail.com', 2183612),
(7, 'Bauer Sandra', 'Am Hof 67', 'sandreaaa@gmx.at', 736283628),
(8, 'Niko Ilic', 'Oswald-Redlich-str.232', 'nikola@hotmail.com', 78368923),
(9, 'Beate Maier', 'Mayerhofstr.8', 'maier.mayer@gmx.at', 7823783),
(10, 'Gruber Melanie', 'Am Graben 14', 'gruber@hotmail.com', 637682);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `invoice_ID` int(11) NOT NULL,
  `company_ID` int(11) NOT NULL,
  `customer_ID` int(11) DEFAULT NULL,
  `car_ID` int(11) DEFAULT NULL,
  `charges_ID` int(11) DEFAULT NULL,
  `carstart_ID` int(11) DEFAULT NULL,
  `carsend_ID` int(11) DEFAULT NULL,
  `invoice_total` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `invoice`
--

INSERT INTO `invoice` (`invoice_ID`, `company_ID`, `customer_ID`, `car_ID`, `charges_ID`, `carstart_ID`, `carsend_ID`, `invoice_total`) VALUES
(1, 1, 1, 6, 3, 1, 1, '1400'),
(2, 1, 7, 4, 1, 5, 5, '1200'),
(3, 1, 5, 1, 3, 4, 4, '375'),
(4, 1, 2, 3, 4, 3, 3, '2500'),
(5, 1, 6, 2, 2, 2, 2, '750');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `location_ID` int(11) NOT NULL,
  `location_adress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`location_ID`, `location_adress`) VALUES
(1, 'Praterstr.23'),
(2, 'Am Spitz 899'),
(3, 'Wagramer Str.89'),
(4, 'Favoritenstr.56'),
(5, 'Handelskai 138');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_ID`),
  ADD KEY `company_ID` (`company_ID`);

--
-- Indizes für die Tabelle `carend`
--
ALTER TABLE `carend`
  ADD PRIMARY KEY (`carsend_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `car_ID` (`car_ID`),
  ADD KEY `location_ID` (`location_ID`);

--
-- Indizes für die Tabelle `carstart`
--
ALTER TABLE `carstart`
  ADD PRIMARY KEY (`carstart_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `car_ID` (`car_ID`),
  ADD KEY `location_ID` (`location_ID`);

--
-- Indizes für die Tabelle `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`charges_ID`);

--
-- Indizes für die Tabelle `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_ID`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_ID`),
  ADD KEY `company_ID` (`company_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `car_ID` (`car_ID`),
  ADD KEY `charges_ID` (`charges_ID`),
  ADD KEY `carstart_ID` (`carstart_ID`),
  ADD KEY `carsend_ID` (`carsend_ID`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `car`
--
ALTER TABLE `car`
  MODIFY `car_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `carend`
--
ALTER TABLE `carend`
  MODIFY `carsend_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `carstart`
--
ALTER TABLE `carstart`
  MODIFY `carstart_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `charges`
--
ALTER TABLE `charges`
  MODIFY `charges_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `company`
--
ALTER TABLE `company`
  MODIFY `company_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `location_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`company_ID`) REFERENCES `company` (`company_ID`);

--
-- Constraints der Tabelle `carend`
--
ALTER TABLE `carend`
  ADD CONSTRAINT `carend_ibfk_1` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `carend_ibfk_2` FOREIGN KEY (`location_ID`) REFERENCES `location` (`location_ID`),
  ADD CONSTRAINT `carend_ibfk_3` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints der Tabelle `carstart`
--
ALTER TABLE `carstart`
  ADD CONSTRAINT `carstart_ibfk_1` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `carstart_ibfk_2` FOREIGN KEY (`location_ID`) REFERENCES `location` (`location_ID`),
  ADD CONSTRAINT `carstart_ibfk_3` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints der Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`company_ID`) REFERENCES `company` (`company_ID`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`car_ID`) REFERENCES `car` (`car_ID`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`carstart_ID`) REFERENCES `carstart` (`carstart_ID`),
  ADD CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`carsend_ID`) REFERENCES `carend` (`carsend_ID`),
  ADD CONSTRAINT `invoice_ibfk_5` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`),
  ADD CONSTRAINT `invoice_ibfk_6` FOREIGN KEY (`charges_ID`) REFERENCES `charges` (`charges_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
