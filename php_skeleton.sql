-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Eki 2024, 10:56:46
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `php_skeleton`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `notes`
--

INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(1, 'PHP for beginners is the best!', 1),
(3, 'Note note note note...', 1),
(4, 'Note note note note...', 5),
(5, 'Note note note note... uid5', 5),
(18, 'deneme', 1),
(19, 'deneme23', 1),
(20, 'deneme231', 1),
(21, 'deneme2312', 1),
(22, 'deneme23121', 1),
(23, 'deneme23121a', 1),
(25, 'has been updated!', 1),
(26, 'Test', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`) VALUES
(1, 'Birkan Oruç', 'birkanoruc@gmail.com', 'b963b4dd7fc5cce2b4cf595e4777b886', 1),
(2, 'John Doe', 'johndoe@gmail.com', 'johndoepassword', 0),
(5, 'Jane Doe', 'janedoe@gmail.com', 'janedoepassword', 0),
(6, 'birkan', 'birkanoruc2@gmail.com', 'test123', 0),
(7, 'Birkan', 'admin@mail.com', '1234567', 0),
(8, 'Birkan', 'admi2n@mail.com', 'password', 0),
(9, 'Birkan', 'adwmin@mail.com', '$2y$10$SqMkyOjaD2g9e0wkizQi3.CNq9aOXxxxaIhT4glPnL6W2SETlahnW', 0),
(10, 'Birkan', 'brk@gmail.com', '$2y$10$hFsKrcydhdw3Y7Dhv5DqjuKyaH7p4GkXV7IP53NWhLSxg9lLBrg.y', 0),
(11, 'Birkan Oruç', 'brkn123@gmail.com', '$2y$10$XB99yxZlhFM6fSDb0GAl4OdvoWwukp2T18dXsZAKExZes5y7EHrBq', 0),
(12, 'test232', 'test232@test.com', '$2y$10$PIhx2Sn8zJ9l9nO.pziS4.R9vHSh2Y2oYNYWNEGOEVLvvtW3B7p/q', 0),
(13, 'test454', 'test454@gmail.com', '$2y$10$j3W.R8ID4rNAs/0b5b2zlu5nexqUyj9DZ5aTzKvPHg4zscMygZQ9W', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_ibfk_1` (`user_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
