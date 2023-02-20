-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 20. 14:58
-- Kiszolgáló verziója: 10.4.13-MariaDB
-- PHP verzió: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `stats`
--
CREATE DATABASE IF NOT EXISTS `stats` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `stats`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kep`
--

CREATE TABLE `kep` (
  `kid` int(11) NOT NULL,
  `knev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `keredetinev` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `udatum` datetime NOT NULL,
  `kuserid` int(11) NOT NULL,
  `kprofkep` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `kmeret` int(11) NOT NULL,
  `kstat` varchar(1) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kep`
--

INSERT INTO `kep` (`kid`, `knev`, `keredetinev`, `udatum`, `kuserid`, `kprofkep`, `kmeret`, `kstat`) VALUES
(3, '230215150216_4_hojlxaxg.jpg', 'ora.jpg', '0000-00-00 00:00:00', 4, '', 41952, 'F'),
(4, '230220124745_4_xnduqysx.jpg', 'dog german.jfif', '0000-00-00 00:00:00', 4, '', 8826, 'F'),
(7, '230220125929_4_cvddnylg.jpg', 'ciganybaro.jpg', '0000-00-00 00:00:00', 4, '', 10409, 'F'),
(8, '230220130108_4_dgemijkl.jpg', 'nacnigg.jpg', '0000-00-00 00:00:00', 4, '', 8372, 'F'),
(9, '230220130203_4_gykymeaq.jpg', 'olaszherceg.jpg', '0000-00-00 00:00:00', 4, '', 9225, 'F'),
(10, '230220131900_4_xcwpdfvi.jpg', 'romasag.jpg', '0000-00-00 00:00:00', 4, '', 6015, 'F'),
(12, '230220132317_4_gkhcbosc.jpg', 'myvipkardoscigo.jpg', '0000-00-00 00:00:00', 4, '', 8661, 'F');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `latogatok`
--

CREATE TABLE `latogatok` (
  `id` int(11) NOT NULL,
  `idopont` datetime NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `ip` varchar(48) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `latogatok`
--

INSERT INTO `latogatok` (`id`, `idopont`, `url`, `ip`) VALUES
(1, '2022-09-26 14:45:41', '/gergoszkcs/PHP.Naptar-main/?p=Datum', '::1'),
(2, '2022-09-26 14:45:42', '/gergoszkcs/PHP.Naptar-main/?p=Szolgaltatasok', '::1'),
(3, '2022-09-26 14:45:43', '/gergoszkcs/PHP.Naptar-main/?p=GYIK', '::1'),
(4, '2022-09-26 14:45:43', '/gergoszkcs/PHP.Naptar-main/?p=Naptar', '::1'),
(5, '2022-09-26 14:49:08', '/gergoszkcs/PHP.Naptar-main/?p=Naptar', '::1'),
(6, '2022-09-26 14:49:13', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(7, '2022-09-26 14:49:22', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(8, '2022-09-26 14:53:11', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(9, '2022-09-26 14:53:12', '/gergoszkcs/PHP.Naptar-main/?p=Tablazat', '::1'),
(10, '2022-09-26 14:53:12', '/gergoszkcs/PHP.Naptar-main/?p=Szolgaltatasok', '::1'),
(11, '2022-09-26 14:55:16', '/gergoszkcs/PHP.Naptar-main/?p=Szolgaltatasok', '::1'),
(12, '2022-09-26 14:55:23', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(13, '2022-09-26 14:55:31', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(14, '2022-09-26 14:55:50', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(15, '2022-09-26 14:55:50', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(16, '2022-09-26 14:55:50', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(17, '2022-09-26 14:57:25', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(18, '2022-09-26 14:57:26', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(19, '2022-09-26 14:57:28', '/gergoszkcs/PHP.Naptar-main/', '::1'),
(20, '2022-09-26 14:57:54', '/gergoszkcs/PHP.Naptar-main/', '::1');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `login`
--

CREATE TABLE `login` (
  `lid` int(11) NOT NULL,
  `luserid` int(11) NOT NULL,
  `ludatum` datetime NOT NULL,
  `lip` varchar(32) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `login`
--

INSERT INTO `login` (`lid`, `luserid`, `ludatum`, `lip`) VALUES
(1, 0, '0000-00-00 00:00:00', ''),
(2, 1, '2022-10-12 13:48:27', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `userarchive`
--

CREATE TABLE `userarchive` (
  `uaid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `usn` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `upd` varchar(12) COLLATE utf8_hungarian_ci NOT NULL,
  `uip` varchar(16) COLLATE utf8_hungarian_ci NOT NULL,
  `udatum` datetime NOT NULL,
  `ustatus` varchar(1) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `userarchive`
--

INSERT INTO `userarchive` (`uaid`, `userid`, `usn`, `mail`, `upd`, `uip`, `udatum`, `ustatus`) VALUES
(1, 0, '', '', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `upd` varchar(12) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `udatum` datetime NOT NULL,
  `ustatus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`userid`, `usn`, `mail`, `upd`, `uip`, `udatum`, `ustatus`) VALUES
(2, 'GT', 'LocalHolo@gmail.com', 'Biggerid', '::1', '2022-10-05 14:48:02', 'A'),
(3, '', 'Imean@gmail.com', 'Bigger', '::1', '2022-10-05 15:04:17', 'A'),
(4, 'GT', 'Imean@gmail.com', 'valami', '::1', '2023-01-16 13:58:20', 'A'),
(5, '', '', '', '', '0000-00-00 00:00:00', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kep`
--
ALTER TABLE `kep`
  ADD PRIMARY KEY (`kid`);

--
-- A tábla indexei `latogatok`
--
ALTER TABLE `latogatok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`lid`);

--
-- A tábla indexei `userarchive`
--
ALTER TABLE `userarchive`
  ADD PRIMARY KEY (`uaid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kep`
--
ALTER TABLE `kep`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `latogatok`
--
ALTER TABLE `latogatok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `login`
--
ALTER TABLE `login`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `userarchive`
--
ALTER TABLE `userarchive`
  MODIFY `uaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
