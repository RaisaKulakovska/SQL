-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лют 25 2020 р., 20:16
-- Версія сервера: 10.1.38-MariaDB
-- Версія PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `loginsystem`
--

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `surname` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pasw` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `age`, `email`, `pasw`) VALUES
(1, 'Bob', 'Damd', 34, 'nick@gmail.com', ''),
(2, 'Nick', 'Kolins', 22, 'look@ukr.net', ''),
(3, 'Bob', 'Smitt', 48, 'kook@ukr.net', ''),
(4, 'Bob', 'Damd', 34, 'jook@ukr.net', ''),
(5, 'Nick', 'Kolins', 22, 'book@ukr.net', ''),
(7, 'Bob', 'Damd', 34, 'nook@ukr.net', ''),
(14, 'Jack', 'Jackens', 25, 'jack@gmail.com', '');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
