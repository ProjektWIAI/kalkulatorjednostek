-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 27, 2023 at 10:36 AM
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
-- Database: `kalkulator`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ciśnienie`
--

CREATE TABLE `ciśnienie` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(35) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ciśnienie`
--

INSERT INTO `ciśnienie` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'pascal', 'Pa', 100000.0000000000000000000000),
(2, 'bar', 'bar', 1.0000000000000000000000),
(3, 'kilopascal', 'kPa', 100.0000000000000000000000),
(4, 'megapascal', 'MPa', 0.1000000000000000000000),
(5, 'funt na cal kwadratowy', 'psi', 14.5000000000000000000000),
(6, 'kilogram na centymetr kwadratowy', 'kg/cm^2', 1.0200000000000000000000),
(7, 'Inch of mercury', 'inHg', 29.5300000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czas`
--

CREATE TABLE `czas` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(11) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `czas`
--

INSERT INTO `czas` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'pikosekunda', 'ps', 1000000000000.0000000000000000000000),
(2, 'mikrosekunda', 'μs', 1000000.0000000000000000000000),
(3, 'milisekunda', 'ms', 1000.0000000000000000000000),
(4, 'sekunda', 's', 1.0000000000000000000000),
(5, 'minuta', 'min', 0.0166666666666666666667),
(6, 'godzina', 'h', 0.0002777777777777777778),
(7, 'dzień', 'd', 0.0000015740741000000000),
(8, 'tydzień', 'wk', 0.0000001653439150000000),
(9, 'rok', 'y', 0.0000000031709792000000),
(10, 'dekada', 'dekada', 0.0000000003170979200000),
(11, 'wiek', 'w', 0.0000000000317097920000),
(12, 'tysiąclecie', 'tysiąclecie', 0.0000000000031709792000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dane`
--

INSERT INTO `dane` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'bajt', 'B', 1.0000000000000000000000),
(2, 'kilobajt', 'KB', 1024.0000000000000000000000),
(3, 'megabajt', 'MB', 1048576.0000000000000000000000),
(4, 'gigabajt', 'GB', 1073741824.0000000000000000000000),
(5, 'terabajt', 'TB', 1099511627776.0000000000000000000000),
(6, 'petabajt', 'PB', 1125899906842624.0000000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `długość`
--

CREATE TABLE `długość` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(50,28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `długość`
--

INSERT INTO `długość` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'kilometr', 'km', 1000.0000000000000000000000000000),
(2, 'metr', 'm', 1.0000000000000000000000000000),
(3, 'decymetr', 'dm', 0.1000000000000000000000000000),
(4, 'centymetr', 'cm', 0.0100000000000000000000000000),
(5, 'milimetr', 'mm', 0.0010000000000000000000000000),
(6, 'mikrometr', 'μm', 0.0000010000000000000000000000),
(7, 'nanometr', 'nm', 0.0000000010000000000000000000),
(8, 'pikometr', 'pm', 0.0000000000010000000000000000),
(9, 'mila morska', 'nmi', 1852.0000000000000000000000000000),
(10, 'mila', 'mi', 1609.3440000000000000000000000000),
(11, 'furlong', 'fur', 201.1680000000000000000000000000),
(12, 'fantom', 'ftm', 1.8288000000000000000000000000),
(13, 'jard', 'yd', 0.9144000000000000000000000000),
(14, 'stopa', 'ft', 0.3048000000000000000000000000),
(15, 'cal', 'in', 0.0254000000000000000000000000),
(16, 'gongli', 'gongli', 1000.0000000000000000000000000000),
(17, 'li', 'li', 500.0000000000000000000000000000),
(18, 'zhang', 'zhang', 3.3333333333333333333333000000),
(19, 'chi', 'chi', 0.3333333333333333333333000000),
(20, 'cun', 'cun', 0.0333333333333333333333000000),
(21, 'fen', 'fen', 0.0033333333333333333333000000),
(22, 'lii', 'lii', 0.0003333333333333333333000000),
(23, 'hao', 'hao', 0.0000333333333333333333000000),
(24, 'parsek', 'pc', 0.0000000000000003085677580000),
(25, 'odl. od ksiezyca', 'ld', 384401000.0000000000000000000000000000),
(26, 'jednostka astronomiczna', 'au', 149597870700.0000000000000000000000000000),
(27, 'rok swietlny', 'ly', 9460730470000000.0000000000000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `masa`
--

CREATE TABLE `masa` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masa`
--

INSERT INTO `masa` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'tona', 't', 1000000.0000000000000000000000),
(2, 'kilogram', 'kg', 1000.0000000000000000000000),
(3, 'dekagram', 'dag', 10.0000000000000000000000),
(4, 'gram', 'g', 1.0000000000000000000000),
(5, 'miligram', 'mg', 0.0010000000000000000000),
(6, 'mikrogram', 'µg', 0.0000010000000000000000),
(7, 'kwintal', 'q', 100000.0000000000000000000000),
(8, 'funt', 'lb', 453.5923700000000000000000),
(9, 'uncja', 'oz', 28.3495231000000000000000),
(10, 'karat', 'ct', 0.2000000000000000000000),
(11, 'ziarno', 'gr', 0.0647989100000000000000),
(12, 'uk cetnar', 'cwt', 50802.3454000000000000000000),
(13, 'us cetnar', 'cwt', 45359.2370000000000000000000),
(14, 'kamien', 'st', 6350.2931800000000000000000),
(15, 'dram', 'dr', 1.7718452000000000000000),
(16, 'dan', 'dan', 50000.0000000000000000000000),
(17, 'jin', 'jin', 500.0000000000000000000000),
(18, 'qian', 'qian', 5.0000000000000000000000),
(19, 'liang', 'liang', 50.0000000000000000000000),
(20, 'jin (tajwan)', 'jin(tw)', 600.0000000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `objetość`
--

CREATE TABLE `objetość` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(30) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `objetość`
--

INSERT INTO `objetość` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'metr sześcienny', 'm[3]', 1000.0000000000000000000000),
(2, 'decymetr sześcienny', 'dm[3]', 1.0000000000000000000000),
(3, 'centymetr sześcienny', 'cm[3]', 0.0010000000000000000000),
(4, 'milimetr sześcienny', 'mm[3]', 0.0000010000000000000000),
(5, 'hektolitr', 'hl', 100.0000000000000000000000),
(6, 'litr', 'l', 1.0000000000000000000000),
(7, 'decylitr', 'dl', 0.1000000000000000000000),
(8, 'centylitr', 'cl', 0.0100000000000000000000),
(9, 'mililitr', 'ml', 0.0010000000000000000000),
(10, 'stopa sześcienna', 'ft[3]', 28.3168466000000000000000),
(11, 'cal sześcienny', 'in[3]', 0.0163870640000000000000),
(12, 'jard sześcienny', 'yd[3]', 764.5548580000000000000000),
(13, 'stopa na akrze', 'af[3]', 1234000.0000000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `powierzchnia`
--

CREATE TABLE `powierzchnia` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powierzchnia`
--

INSERT INTO `powierzchnia` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'kilometr kwadratowy', 'km[2]', 0.0000010000000000000000),
(2, 'hektar', 'ha', 0.0001000000000000000000),
(3, 'ar', 'a', 0.0100000000000000000000),
(4, 'metr kwadratowy', 'm[2]', 1.0000000000000000000000),
(5, 'decymetr kwadratowy', 'dm[2]', 100.0000000000000000000000),
(6, 'centymetr kwadratowy', 'cm[2]', 10000.0000000000000000000000),
(7, 'milimetr kwadratowy', 'mm[2]', 1000000.0000000000000000000000),
(8, 'mikron kwadratowy', 'μm[2]', 1000000000000.0000000000000000000000),
(9, 'akr', 'ac', 0.0002471054070000000000),
(10, 'mila kwadratowa', 'mile[2]', 0.0000038610215855000000),
(11, 'jard kwadratowy', 'yd[2]', 1.1959900500000000000000),
(12, 'stopa kwadratowa', 'ft[2]', 10.7639104000000000000000),
(13, 'cal kwadratowy', 'in[2]', 1550.0031000000000000000000),
(14, 'pręt kwadratowy', 'rd[2]', 0.0395368610000000000000),
(15, 'qing', 'qing', 0.0000150000000000000000),
(16, 'mu', 'mu', 0.0015000000000000000000),
(17, 'chi kwadratowe', 'chi[2]', 9.0000000000000000000000),
(18, 'cun kwadratowe', 'cun[2]', 900.0000000000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prędkość`
--

CREATE TABLE `prędkość` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `wartosc` decimal(44,22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prędkość`
--

INSERT INTO `prędkość` (`id`, `jednostka`, `symbol`, `wartosc`) VALUES
(1, 'prędkość światła', 'c', 107925285.0000000000000000000000),
(2, 'mach', 'ma', 1225.0800000000000000000000),
(3, 'metr na sekundę', 'm/s', 3.6000000000000000000000),
(4, 'kilometr na sekundę', 'km/h', 1.0000000000000000000000),
(5, 'kilometr na sekundę', 'km/s', 3600.0000000000000000000000),
(6, 'węzeł', 'kn', 1.8520000000000000000000),
(7, 'mila na godzinę', 'mph', 1.6093440000000000000000),
(8, 'cal na sekundę', 'ips', 0.0914400000000000000000),
(9, 'stopa na sekundę', 'fps', 1.0972800000000000000000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(11) NOT NULL,
  `jednostka` varchar(25) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temperatura`
--

INSERT INTO `temperatura` (`id`, `jednostka`, `symbol`) VALUES
(1, 'Celcjusz', '°C'),
(2, 'Faranheit', '°F'),
(3, 'Kelwin', 'K'),
(4, 'Rankina', '°R'),
(5, 'Réaumur', '°Re');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(11) NOT NULL,
  `tabela` varchar(15) NOT NULL,
  `zdjecie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `tabela`, `zdjecie`) VALUES
(1, 'ciśnienie', 'cisnienie.png'),
(2, 'czas', 'czas.png'),
(3, 'dane', 'dane.png'),
(4, 'długość', 'dlugosc.png'),
(5, 'masa', 'masa.png'),
(6, 'objętość', 'objetosc.png'),
(7, 'powierzchnia', 'powierzchnia.png'),
(8, 'prędkość', 'predkosc.png'),
(9, 'temperatura', 'temperatura.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ciśnienie`
--
ALTER TABLE `ciśnienie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czas`
--
ALTER TABLE `czas`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `długość`
--
ALTER TABLE `długość`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `masa`
--
ALTER TABLE `masa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `objetość`
--
ALTER TABLE `objetość`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `powierzchnia`
--
ALTER TABLE `powierzchnia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `prędkość`
--
ALTER TABLE `prędkość`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciśnienie`
--
ALTER TABLE `ciśnienie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `czas`
--
ALTER TABLE `czas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `długość`
--
ALTER TABLE `długość`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `masa`
--
ALTER TABLE `masa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `objetość`
--
ALTER TABLE `objetość`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `powierzchnia`
--
ALTER TABLE `powierzchnia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `prędkość`
--
ALTER TABLE `prędkość`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
