-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 11:18 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jakubfaruga2ct`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `ida` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` (`ida`, `name`) VALUES
(1, 'Arkadiusz'),
(2, 'Mariusz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `idk` int(11) NOT NULL,
  `ida` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`idk`, `ida`, `nazwa`) VALUES
(1, 1, 'php'),
(2, 1, 'c++'),
(3, 2, 'rozwoj planktonu w Pszczynie'),
(4, 2, 'wpływ księżyca na seksualny rozwój truskawek');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`ida`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`idk`),
  ADD KEY `ida` (`ida`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `ida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
