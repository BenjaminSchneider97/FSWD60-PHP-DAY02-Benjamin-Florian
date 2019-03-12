-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Mrz 2019 um 09:36
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_benjamin_schneider_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `additional_charges`
--

CREATE TABLE `additional_charges` (
  `additional_charges_id` int(11) NOT NULL,
  `charge_type` varchar(55) DEFAULT NULL,
  `charage_price` float DEFAULT NULL,
  `fk_rent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `additional_charges`
--

INSERT INTO `additional_charges` (`additional_charges_id`, `charge_type`, `charage_price`, `fk_rent_id`) VALUES
(1, 'Damage', 300, 1),
(2, 'Fuel', 75, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `build`
--

CREATE TABLE `build` (
  `build_id` int(11) NOT NULL,
  `start_build_time` date DEFAULT NULL,
  `end_build_time` date DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `fk_manufacturer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `build`
--

INSERT INTO `build` (`build_id`, `start_build_time`, `end_build_time`, `fk_car_id`, `fk_manufacturer_id`) VALUES
(1, '2018-01-01', '2019-01-01', 1, 3),
(2, '2018-01-01', '2019-01-01', 2, 2),
(3, '2017-01-01', '2018-05-05', 3, 1),
(4, '2018-05-31', '2018-12-31', 4, 2),
(5, '2017-02-02', '2019-03-03', 5, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `insurance_price` float DEFAULT NULL,
  `pick_up_location` varchar(500) DEFAULT NULL,
  `return_location` varchar(500) DEFAULT NULL,
  `fk_car_dealer_id` int(11) DEFAULT NULL,
  `fk_online_dealer_id` int(11) DEFAULT NULL,
  `fk_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_id`, `insurance_price`, `pick_up_location`, `return_location`, `fk_car_dealer_id`, `fk_online_dealer_id`, `fk_type_id`) VALUES
(1, 500, 'Vienna', 'Vienna', 1, 1, 1),
(2, 350, 'Graz', 'Graz', 2, 1, 2),
(3, 350, 'Hamburg', 'Hamburg', 4, 1, 3),
(4, 150, 'Berlin', 'Berlin', 5, 2, 5),
(5, 650, 'Munich', 'Munich', 3, 1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_dealer`
--

CREATE TABLE `car_dealer` (
  `car_dealer_id` int(11) NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `car_dealer`
--

INSERT INTO `car_dealer` (`car_dealer_id`, `location`, `name`) VALUES
(1, 'Vienna', 'Car 4 You'),
(2, 'Graz', 'Get Your Car'),
(3, 'Munich', 'German Car'),
(4, 'Hamburg', 'Nice Cars For You'),
(5, 'Berlin', 'Best Cars In Germany');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `drivers_licence` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `drivers_licence`) VALUES
(1, 'Carl', 'Johnson', 'driver\'s licence'),
(2, 'Trevor', 'Philips', 'driver\'s licence'),
(3, 'Big', 'Smoke', 'driver\'s licence'),
(4, 'Michael', 'Townley', 'driver\'s licence'),
(5, 'Franklin', 'Clinton', 'driver\'s licence');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `emloyee`
--

CREATE TABLE `emloyee` (
  `emloyee_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `fk_car_dealer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `emloyee`
--

INSERT INTO `emloyee` (`emloyee_id`, `first_name`, `last_name`, `salary`, `fk_car_dealer_id`) VALUES
(1, 'Peter', 'Parker', 2500, 1),
(2, 'Tony', 'Stark', 5500, 1),
(3, 'Harry', 'Potter', 7500, 2),
(4, 'Ronald', 'Weasley', 1500, 2),
(5, 'Jack', 'Sparrow', 5000, 3),
(6, 'Will', 'Turner', 3500, 3),
(7, 'Bill', 'Gates', 12500, 4),
(8, 'Steve', 'Jobs', 11500, 4),
(9, 'Spongebob', 'Squarepants', 1500, 5),
(10, 'Patrick', 'Star', 1000, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `contact_data` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `location`, `contact_data`) VALUES
(1, 'Car Builder', 'Vienna', 'data'),
(2, 'Car Creator', 'Hamburg', 'data'),
(3, 'Car Wizard', 'Munich', 'data');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `online_dealer`
--

CREATE TABLE `online_dealer` (
  `online_dealer_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `online_dealer`
--

INSERT INTO `online_dealer` (`online_dealer_id`, `name`) VALUES
(1, 'Good Cars Online'),
(2, 'Best Cars Online');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `time_to_rent` date DEFAULT NULL,
  `rent_price` float DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `fk_car_dealer_id` int(11) DEFAULT NULL,
  `fk_online_dealer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `rent`
--

INSERT INTO `rent` (`rent_id`, `time_to_rent`, `rent_price`, `fk_customer_id`, `fk_car_dealer_id`, `fk_online_dealer_id`) VALUES
(1, '2019-05-10', 350, 3, 1, 1),
(2, '2019-03-08', 175, 1, 2, 1),
(3, '2019-06-25', 750, 4, 4, 1),
(4, '2019-04-01', 500, 2, 2, 2),
(5, '2019-03-08', 700, 5, 4, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `reservation_date` date DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `fk_online_dealer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `reservation_date`, `fk_customer_id`, `fk_online_dealer_id`) VALUES
(1, '2019-02-03', 1, 1),
(2, '2019-03-03', 5, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `marque` varchar(25) DEFAULT NULL,
  `horsepower` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `type`
--

INSERT INTO `type` (`type_id`, `marque`, `horsepower`) VALUES
(1, 'BMW', 150),
(2, 'Chrysler', 220),
(3, 'VW', 60),
(4, 'Ford', 90),
(5, 'Mazda', 160),
(6, 'Audi', 250);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `additional_charges`
--
ALTER TABLE `additional_charges`
  ADD PRIMARY KEY (`additional_charges_id`),
  ADD KEY `fk_rent_id` (`fk_rent_id`);

--
-- Indizes für die Tabelle `build`
--
ALTER TABLE `build`
  ADD PRIMARY KEY (`build_id`),
  ADD KEY `fk_manufacturer_id` (`fk_manufacturer_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_car_dealer_id` (`fk_car_dealer_id`),
  ADD KEY `fk_online_dealer_id` (`fk_online_dealer_id`),
  ADD KEY `fk_type_id` (`fk_type_id`);

--
-- Indizes für die Tabelle `car_dealer`
--
ALTER TABLE `car_dealer`
  ADD PRIMARY KEY (`car_dealer_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `emloyee`
--
ALTER TABLE `emloyee`
  ADD PRIMARY KEY (`emloyee_id`),
  ADD KEY `fk_car_dealer_id` (`fk_car_dealer_id`);

--
-- Indizes für die Tabelle `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indizes für die Tabelle `online_dealer`
--
ALTER TABLE `online_dealer`
  ADD PRIMARY KEY (`online_dealer_id`);

--
-- Indizes für die Tabelle `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_online_dealer_id` (`fk_online_dealer_id`),
  ADD KEY `fk_car_dealer_id` (`fk_car_dealer_id`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_online_dealer_id` (`fk_online_dealer_id`);

--
-- Indizes für die Tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `emloyee`
--
ALTER TABLE `emloyee`
  MODIFY `emloyee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `additional_charges`
--
ALTER TABLE `additional_charges`
  ADD CONSTRAINT `additional_charges_ibfk_1` FOREIGN KEY (`fk_rent_id`) REFERENCES `rent` (`rent_id`);

--
-- Constraints der Tabelle `build`
--
ALTER TABLE `build`
  ADD CONSTRAINT `build_ibfk_1` FOREIGN KEY (`fk_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  ADD CONSTRAINT `build_ibfk_2` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_car_dealer_id`) REFERENCES `car_dealer` (`car_dealer_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`fk_online_dealer_id`) REFERENCES `online_dealer` (`online_dealer_id`),
  ADD CONSTRAINT `car_ibfk_3` FOREIGN KEY (`fk_type_id`) REFERENCES `type` (`type_id`);

--
-- Constraints der Tabelle `emloyee`
--
ALTER TABLE `emloyee`
  ADD CONSTRAINT `emloyee_ibfk_1` FOREIGN KEY (`fk_car_dealer_id`) REFERENCES `car_dealer` (`car_dealer_id`);

--
-- Constraints der Tabelle `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`fk_online_dealer_id`) REFERENCES `online_dealer` (`online_dealer_id`),
  ADD CONSTRAINT `rent_ibfk_3` FOREIGN KEY (`fk_car_dealer_id`) REFERENCES `car_dealer` (`car_dealer_id`);

--
-- Constraints der Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_online_dealer_id`) REFERENCES `online_dealer` (`online_dealer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
