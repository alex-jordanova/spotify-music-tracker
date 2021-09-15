-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  6 юли 2019 в 21:16
-- Версия на сървъра: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_statistics`
--

-- --------------------------------------------------------

--
-- Структура на таблица `listening_history`
--

CREATE TABLE `listening_history` (
  `id` varchar(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `cover` varchar(1026) NOT NULL,
  `duration` int(11) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `listening_history`
--

INSERT INTO `listening_history` (`id`, `username`, `title`, `artist`, `album`, `cover`, `duration`, `dateTime`) VALUES
('5d1a5f65d6d', 'breakxes', 'Trust My Dream', 'Ittoki Otoya', 'I Am Here', 'https://i.scdn.co/image/5cba1f032901c54506d1021926f89c0bc20cf845', 256640, '2019-07-01 21:30:45'),
('5d1b4b5ae90', 'breakxes', 'シャイン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 276720, '2019-07-02 14:17:30'),
('5d1b52d2ccc', 'breakxes', 'Trust My Dream', 'Ittoki Otoya', 'I Am Here', 'https://i.scdn.co/image/5cba1f032901c54506d1021926f89c0bc20cf845', 256640, '2019-07-02 14:49:22'),
('5d1b5eb667b', 'breakxes', 'カノン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 260720, '2019-07-02 15:40:06'),
('5d1b5ed5ad0', 'breakxes', 'シャイン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 276720, '2019-07-02 15:40:37'),
('5d1b6326c57', 'breakxes', 'シャイン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 276720, '2019-07-02 15:59:02'),
('5d1b66c4320', 'breakxes', 'Give Me Your Heart - Mayoeru Kohitsuji-', 'Balder Hringhorni, Loki Laevatein, CV: Hiroshi Kamiya, CV: Yoshimasa Hosoya', 'Kamigami No Asobi InFinite - Balder and Loki (Character Song Volume 5)', 'https://i.scdn.co/image/9a95faf1b1bd5132f1c6c4a897f122b7668e7928', 206466, '2019-07-02 16:14:28'),
('5d1b67080fc', 'breakxes', 'Give Me Your Heart - Mayoeru Kohitsuji-', 'Balder Hringhorni, Loki Laevatein, CV: Hiroshi Kamiya, CV: Yoshimasa Hosoya', 'Kamigami No Asobi InFinite - Balder and Loki (Character Song Volume 5)', 'https://i.scdn.co/image/9a95faf1b1bd5132f1c6c4a897f122b7668e7928', 206466, '2019-07-02 16:15:36'),
('5d1b674315f', 'breakxes', 'Give Me Your Heart - Mayoeru Kohitsuji-', 'Balder Hringhorni, Loki Laevatein, CV: Hiroshi Kamiya, CV: Yoshimasa Hosoya', 'Kamigami No Asobi InFinite - Balder and Loki (Character Song Volume 5)', 'https://i.scdn.co/image/9a95faf1b1bd5132f1c6c4a897f122b7668e7928', 206466, '2019-07-02 16:16:35'),
('5d1b674665e', 'breakxes', 'Give Me Your Heart - Mayoeru Kohitsuji-', 'Balder Hringhorni, Loki Laevatein, CV: Hiroshi Kamiya, CV: Yoshimasa Hosoya', 'Kamigami No Asobi InFinite - Balder and Loki (Character Song Volume 5)', 'https://i.scdn.co/image/9a95faf1b1bd5132f1c6c4a897f122b7668e7928', 206466, '2019-07-02 16:16:38'),
('5d1b6830b60', 'breakxes', 'Shinshi Doumei-Who Need You?-', 'Apollon Agana Belea, Hades Aidoneus, CV: Miyu Irino, CV: Ono Daisuke', 'Kamigami No Asobi InFinite - Apollon and Hades (Character Song, Vol. 3)', 'https://i.scdn.co/image/be328be98623c9bf5501ca1ab8cc70aae7ff069c', 242173, '2019-07-02 16:20:32'),
('5d1b6885048', 'breakxes', 'God\'s S.T.A.R.', 'Reiji Kotobuki, Ranmaru Kurosaki, Ai Mikaze, Camus, Showtaro Morikubo, Tatsuhisa Suzuki, Shouta Aoi, Tomoaki Maeno', 'Uta No Prince-Sama: Quartet Night - God\'s S.T.A.R', 'https://i.scdn.co/image/94c432875a45d9ee695b4f1dd21f1496537d95f4', 266933, '2019-07-02 16:21:57'),
('5d1b72f9ef2', 'breakxes', 'DOWN BY LAW', 'THE RAMPAGE from EXILE TRIBE', 'THROW YA FIST', 'https://i.scdn.co/image/0a8233e1c618d4458ecc87daf645fac93534cd78', 201733, '2019-07-02 17:06:05'),
('5d1ca05331b', 'breakxes', 'Polish Girl', 'Neon Indian', 'Era Extraña', 'https://i.scdn.co/image/120736db7a02dbb29ef06cb568ec7b4a3e7a2ed1', 264000, '2019-07-03 14:23:08'),
('5d1ca130210', 'breakxes', 'Jiyuu No Tsubasa', 'Linked Horizon', 'Jiyuu E No Shingeki', 'https://i.scdn.co/image/63d65c2991b4f30a9b7febae2c1fb2eb8db64c94', 328400, '2019-07-03 14:35:45'),
('5d1ca23d0f0', 'breakxes', 'Uragirimonono Requiem (From Jo Jo\'s Bizarre Adventure - Golden Wind) - English Version', 'Daisuke Hasegawa', 'Uragirimonono Requiem (From Jo Jo\'s Bizarre Adventure - Golden Wind) [English Version]', 'https://i.scdn.co/image/f6ac1f5d1b2f441a1adfdf5597458dc366c26524', 211092, '2019-07-03 14:40:13'),
('5d1ca24ddaa', 'breakxes', 'Supatto! Spy & Spice', 'Tsukikage', 'Supatto! Spy & Spice / Hide & Seek', 'https://i.scdn.co/image/0a2a9c60c241edec5a0cea0bd5ce9d61809cd4cb', 236080, '2019-07-03 14:40:30'),
('5d1ca2a2d3c', 'breakxes', 'FAITH', 'MADKID', 'FAITH', 'https://i.scdn.co/image/a99bd374474eed04a5db27c0a07be4d1067c1f8f', 203506, '2019-07-03 14:41:55'),
('5d1ca36fc2d', 'breakxes', 'The Perfect World', 'Marty Friedman, Jean-Ken Johnny, KenKen', 'B: The Beginning THE IMAGE ALBUM', 'https://i.scdn.co/image/1cfbddf5a34c373e1d555f8f2a442be51a3804de', 296724, '2019-07-03 14:45:20'),
('5d1ca392c12', 'breakxes', 'Make My Story', 'Lenny code fiction', 'Make my story', 'https://i.scdn.co/image/3df89396b254b0542e5e7662fee0c5b3b641fc41', 268626, '2019-07-03 14:45:55'),
('5d1ca3f4dba', 'breakxes', 'Crazy Noisy Bizarre Town (From \"Jojo\'s Bizarre Adventure: Diamond Is Unbreakable\") [feat. Skully Tun]', 'Chipmusic Heroes, Skully Tun', 'Primetime Adventures', 'https://i.scdn.co/image/8e35177bb65dd08c5ca6313554d435aad658959c', 182693, '2019-07-03 14:47:33'),
('5d1ca408c38', 'breakxes', 'Bloody Stream', 'Coda', 'Bloody Stream', 'https://i.scdn.co/image/55259fe5ffb0ee37606d26fdf2bc38d7ae647e35', 261920, '2019-07-03 14:47:53'),
('5d1ca41ccd1', 'breakxes', 'Four Out Of Five', 'Arctic Monkeys', 'Tranquility Base Hotel & Casino', 'https://i.scdn.co/image/47b1fe9ae4c4240aaf4ba038a8d99b4b177bd437', 312346, '2019-07-03 14:48:13'),
('5d1ca471c82', 'breakxes', 'I Bet You Look Good On The Dancefloor', 'Arctic Monkeys', 'Whatever People Say I Am, That\'s What I\'m Not', 'https://i.scdn.co/image/da1b4af018f2e77751c060a4f120528a9999f52d', 173680, '2019-07-03 14:49:38'),
('5d1cb58027f', 'breakxes', 'No Buses', 'Arctic Monkeys', 'Who The F*** Are Arctic Monkeys?', 'https://i.scdn.co/image/409c98ef063476d4e851c0d770fb504c02b16339', 197320, '2019-07-03 14:51:23'),
('5d1cb5a8172', 'breakxes', '505', 'Arctic Monkeys', 'Favourite Worst Nightmare', 'https://i.scdn.co/image/637c657bc3053d9f5fecad1c9ae68e20d8ab2eb6', 253586, '2019-07-03 16:03:05'),
('5d1cb6a7d11', 'breakxes', 'Black Treacle', 'Arctic Monkeys', 'Suck It and See', 'https://i.scdn.co/image/21f47724c01accce3466eced2967ddefdf27c7b4', 217440, '2019-07-03 16:07:20'),
('5d1cb6e7e74', 'breakxes', 'Leave Before The Lights Come On', 'Arctic Monkeys', 'Leave Before The Lights Come On', 'https://i.scdn.co/image/b6655f6d0f36425a7f82ea03443a0c58b7f8fc51', 233946, '2019-07-03 16:08:24'),
('5d1cb719e6f', 'breakxes', 'Perhaps Vampires Is A Bit Strong But…', 'Arctic Monkeys', 'Whatever People Say I Am, That\'s What I\'m Not', 'https://i.scdn.co/image/da1b4af018f2e77751c060a4f120528a9999f52d', 268626, '2019-07-03 16:09:14'),
('5d1cb80a0d2', 'breakxes', 'Golden Trunks', 'Arctic Monkeys', 'Tranquility Base Hotel & Casino', 'https://i.scdn.co/image/47b1fe9ae4c4240aaf4ba038a8d99b4b177bd437', 173626, '2019-07-03 16:09:39'),
('5d1cb81e1d8', 'breakxes', 'Brianstorm', 'Arctic Monkeys', 'Favourite Worst Nightmare', 'https://i.scdn.co/image/637c657bc3053d9f5fecad1c9ae68e20d8ab2eb6', 172866, '2019-07-03 16:13:34'),
('5d1cb8d9d50', 'breakxes', 'The View From The Afternoon', 'Arctic Monkeys', 'Who The F*** Are Arctic Monkeys?', 'https://i.scdn.co/image/409c98ef063476d4e851c0d770fb504c02b16339', 222946, '2019-07-03 16:16:42'),
('5d1cb991dfa', 'breakxes', 'Snap Out Of It', 'Arctic Monkeys', 'AM', 'https://i.scdn.co/image/f513ae2d610d9255913795d4bc28ca33c827b232', 193030, '2019-07-03 16:19:46'),
('5d1cba57d44', 'breakxes', 'Piledriver Waltz', 'Arctic Monkeys', 'Suck It and See', 'https://i.scdn.co/image/21f47724c01accce3466eced2967ddefdf27c7b4', 203880, '2019-07-03 16:23:00'),
('5d1cbae5dd5', 'breakxes', 'Crying Lightning', 'Arctic Monkeys', 'Humbug', 'https://i.scdn.co/image/3a2805cfc2d55367865b572cd536bfddf66fe267', 224826, '2019-07-03 16:25:26'),
('5d1cbbd6384', 'breakxes', 'Arabella', 'Arctic Monkeys', 'AM', 'https://i.scdn.co/image/f513ae2d610d9255913795d4bc28ca33c827b232', 207356, '2019-07-03 16:29:27'),
('5d1cbca73dd', 'breakxes', 'Teddy Picker', 'Arctic Monkeys', 'Favourite Worst Nightmare', 'https://i.scdn.co/image/637c657bc3053d9f5fecad1c9ae68e20d8ab2eb6', 165000, '2019-07-03 16:32:55'),
('5d1cbd506da', 'breakxes', 'Suck It and See', 'Arctic Monkeys', 'Suck It and See', 'https://i.scdn.co/image/21f47724c01accce3466eced2967ddefdf27c7b4', 225986, '2019-07-03 16:35:41'),
('5d1cbd6f21a', 'breakxes', 'Why Do You Do It To Me?', 'Kaiser Chiefs', 'Stay Together', 'https://i.scdn.co/image/cbe0e17f7fab54da4d84f129ce241e16905acece', 266053, '2019-07-03 16:36:15'),
('5d1cbdf7d6f', 'breakxes', 'Oh My God', 'Kaiser Chiefs', 'Employment', 'https://i.scdn.co/image/0aae0f9036ea9ec615e8245ebb9f0a99803fd5bf', 214880, '2019-07-03 16:38:32'),
('5d1cbecbd49', 'breakxes', 'Ruffians On Parade', 'Kaiser Chiefs', 'Education, Education, Education & War', 'https://i.scdn.co/image/2a194304045508536deacc4aad64ba577d0f2fa4', 215133, '2019-07-03 16:42:03'),
('5d1cbf1bd53', 'breakxes', 'FAITH', 'MADKID', 'FAITH', 'https://i.scdn.co/image/a99bd374474eed04a5db27c0a07be4d1067c1f8f', 203506, '2019-07-03 16:43:23'),
('5d1cc19a110', 'breakxes', 'S級パラダイス', 'B-PROJECT(キタコレ、THRIVE、MooNs、KiLLER KiNG)', 'B-PROJECT「S級パラダイス WHITE」', 'https://i.scdn.co/image/aa23782e462ce7bdb2f20bf6abd2d52c8e11a072', 318133, '2019-07-03 16:54:01'),
('5d1cc2d9e58', 'breakxes', '時空の螺旋', 'キタコレ(cv.小野大輔、岸尾だいすけ)', 'B-PROJECT「S級パラダイス WHITE」', 'https://i.scdn.co/image/aa23782e462ce7bdb2f20bf6abd2d52c8e11a072', 241466, '2019-07-03 16:59:22'),
('5d1cc31eee4', 'breakxes', 'PRAY FOR...', 'MooNs(cv.上村祐翔､柿原徹也､森久保祥太郎､大河元気､増田俊樹)', 'B-PROJECT「S級パラダイス WHITE」', 'https://i.scdn.co/image/aa23782e462ce7bdb2f20bf6abd2d52c8e11a072', 247800, '2019-07-03 17:00:31'),
('5d1cc418e36', 'breakxes', 'キラキラスマイル', 'KiLLER KiNG(cv.西山宏太朗､八代 拓､千葉翔也､江口拓也)', 'B-PROJECT「S級パラダイス WHITE」', 'https://i.scdn.co/image/aa23782e462ce7bdb2f20bf6abd2d52c8e11a072', 253933, '2019-07-03 17:04:41'),
('5d1cc4774f4', 'breakxes', 'Fumetsu no Inferno', 'Ootori Eiichi, Sumeragi Kira, Mikado Nagi, Ootori Eiji, Kiryuuin Van, Hyuuga Yamato, Shion Amakusa, Hikaru Midorikawa, Daisuke Ono, Yonaga Tsubasa, Yuuma Uchida, Hidenori Takahashi, Ryouhei Kimura, DAIKI', 'Uta no Prince-sama Maji LOVE Legend Star: Fumetsu no Inferno', 'https://i.scdn.co/image/9c453d6e1eef397227da31ae5180d08308d3e5fb', 242322, '2019-07-03 17:06:16'),
('5d1cc56af21', 'breakxes', 'Lasting Oneness', 'Masato Hijirikawa, Sumeragi Kira, CV: Suzumura Kenichi, CV: Daisuke Ono', 'Uta No Prince Sama-Maji Love Legend Star Duet Idol Song 6', 'https://i.scdn.co/image/71a937be8d6d3ad1576db223ca12f1f22dcf432d', 253773, '2019-07-03 17:10:19'),
('5d1cc66daa0', 'breakxes', 'Dazzling darling', 'Sumeragi Kira, CV: Daisuke Ono', 'Uta No Prince Sama-Maji Love Legend Star Duet Idol Song 6', 'https://i.scdn.co/image/71a937be8d6d3ad1576db223ca12f1f22dcf432d', 212893, '2019-07-03 17:14:35'),
('5d1cc7430aa', 'breakxes', 'I swear...', 'Masato Hijirikawa, CV: Suzumura Kenichi', 'Uta No Prince Sama-Maji Love Legend Star Duet Idol Song 6', 'https://i.scdn.co/image/71a937be8d6d3ad1576db223ca12f1f22dcf432d', 323613, '2019-07-03 17:18:07'),
('5d1cc88648c', 'breakxes', 'HE★VENLY PARADE', 'Ootori Eiichi, Sumeragi Kira, Mikado Nagi, Ootori Eiji, Kiryuuin Van, Hyuuga Yamato, Shion Amakusa, Hikaru Midorikawa, Daisuke Ono, Yonaga Tsubasa, Yuuma Uchida, Hidenori Takahashi, Ryouhei Kimura, DAIKI', 'Uta no Prince-sama Maji LOVE Legend Star: Fumetsu no Inferno', 'https://i.scdn.co/image/9c453d6e1eef397227da31ae5180d08308d3e5fb', 267615, '2019-07-03 17:23:32'),
('5d1ccc485e0', 'breakxes', 'Maji LOVE Legend Star', 'STARISH', 'Uta No Prince Sama- Maji LOVE Legend Star', 'https://i.scdn.co/image/d715595d2f12a0da86184de4bb1e1454c9ba03be', 259908, '2019-07-03 17:39:37'),
('5d1ccc82a8d', 'breakxes', 'Pirates of the Frontier (Main Theme)', 'Elements Garden, Kurosaki Ranmaru, Camus, Ittoki Otoya', 'Uta No Prince-Sama Theater Shining: Pirates of the Frontier - Single', 'https://i.scdn.co/image/7ec314d721c83af659638d8b4ad85174af5fb636', 264306, '2019-07-03 17:40:31'),
('5d1ccd9099c', 'breakxes', 'Trust My Dream', 'Ittoki Otoya', 'I Am Here', 'https://i.scdn.co/image/5cba1f032901c54506d1021926f89c0bc20cf845', 256640, '2019-07-03 17:45:05'),
('5d1ccdc2ec0', 'breakxes', 'BE PROUD', 'Ranmaru Kurosaki, Tatsuhisa Suzuki', 'Uta No Prince-Sama Idol Song Ranmaru & Ai', 'https://i.scdn.co/image/dea415380e62c156eea3dee5266f4cd005c372b6', 322760, '2019-07-03 17:45:51'),
('5d1ccdd6a64', 'breakxes', 'Dreamer', 'Eiji Otori, Yuma Uchida', 'Uta No Prince Sama-Maji Love Legend Star Duet Idol Song 1', 'https://i.scdn.co/image/882f27a362ac21d3f8885c6dfdf390da8b18ffab', 276493, '2019-07-03 17:46:15'),
('5d1ccdf4bca', 'breakxes', 'FAITH', 'MADKID', 'FAITH', 'https://i.scdn.co/image/a99bd374474eed04a5db27c0a07be4d1067c1f8f', 203506, '2019-07-03 17:46:45'),
('5d1cce12967', 'breakxes', 'RISE', 'MADKID', 'CIRCUS', 'https://i.scdn.co/image/a6e5dd665bff39fe9e70fd0042525081b883a205', 209226, '2019-07-03 17:47:15'),
('5d1cd9ee486', 'breakxes', 'Zenzenzense - Movie Version', 'RADWIMPS', 'Your Name.', 'https://i.scdn.co/image/c0a8647096df45344cf2a3fce61747c7428590aa', 284240, '2019-07-03 18:37:51'),
('5d1cda1b3b2', 'breakxes', 'Killer Queen - Remastered 2011', 'Queen', 'Sheer Heart Attack (Deluxe Remastered Version)', 'https://i.scdn.co/image/23febcfad6d12001a0df5a5f4c33e9ff78f8b2f1', 179600, '2019-07-03 18:38:36'),
('5d1cdaf2418', 'breakxes', 'When It Started', 'The Strokes', 'Is This It', 'https://i.scdn.co/image/36ad5132eee494bb519cd43e70fafe427cab95de', 175200, '2019-07-03 18:42:11'),
('5d1cdb6a549', 'breakxes', 'Fever!', 'Alphaville', 'Strange Attractor', 'https://i.scdn.co/image/481e756c0dc20df6024b73325efcf5c323ae83db', 225986, '2019-07-03 18:44:10'),
('5d1cdc4b56b', 'breakxes', 'Rock & Roll Queen', 'The Subways', 'Young For Eternity', 'https://i.scdn.co/image/a1df5ef28542629261f960211429edc0d7c80785', 172533, '2019-07-03 18:47:56'),
('5d1cdca949a', 'breakxes', 'Fear & Delight', 'The Correspondents', 'Puppet Loosely Strung', 'https://i.scdn.co/image/6705d00646fbe98b2e3eb938ec64e7970c5d1443', 193800, '2019-07-03 18:49:30'),
('5d1cde00e35', 'breakxes', 'Are We Ready? (Wreck)', 'Two Door Cinema Club', 'Gameshow (Deluxe Edition)', 'https://i.scdn.co/image/a03a01673e60e173e06afb9f47552ef22466eb01', 230853, '2019-07-03 18:55:13'),
('5d1cde888d2', 'breakxes', 'Song for Bob Dylan - 2015 Remaster', 'David Bowie', 'Hunky Dory (2015 Remastered Version)', 'https://i.scdn.co/image/a0bf968e76d470c4ac57958e132dafcea3f42666', 253093, '2019-07-03 18:57:29'),
('5d1cdea19ae', 'breakxes', 'Knock Away', 'Attractions', 'Knock Away', 'https://i.scdn.co/image/6e348a0a4b9f796cc1642aaad1bf410de1ea85d3', 244815, '2019-07-03 18:57:54'),
('5d1cdf96374', 'breakxes', 'Deal with the devil', 'Tia', 'Deal with the devil', 'https://i.scdn.co/image/253ed5006ff9a9da2c93a59b12cd7dfedd0f6fa9', 282546, '2019-07-03 19:01:59'),
('5d1cdfd2412', 'breakxes', 'We Don\'t Need Money to Have a Good Time', 'The Subways', 'Money and Celebrity', 'https://i.scdn.co/image/3c6656fb100a1a6bdb35967a49cde8134fb0e314', 192840, '2019-07-03 19:02:58'),
('5d1cdffecc3', 'breakxes', 'Memento Mori', 'Young Guns', 'Ones And Zeros', 'https://i.scdn.co/image/83f2ba386a095a047f599e4ca0ffc5ba695ca8c6', 290026, '2019-07-03 19:03:39'),
('5d1ce0bd03f', 'breakxes', 'You are the only one', 'Sergey Lazarev', 'THE ONE', 'https://i.scdn.co/image/b37c854f20a4b49516315a2970f870b5ca649e52', 186000, '2019-07-03 19:06:49'),
('5d1ce175e44', 'breakxes', 'Fushidara Flamingo', 'frederic', 'Frederhythm', 'https://i.scdn.co/image/ccc384bce2765b38ae4ee087f0b45e7c38b3adcf', 253346, '2019-07-03 19:09:54'),
('5d1ce5672f8', 'breakxes', 'FAITH', 'MADKID', 'CIRCUS', 'https://i.scdn.co/image/a6e5dd665bff39fe9e70fd0042525081b883a205', 203160, '2019-07-03 19:26:47'),
('5d1ce5bca2b', 'breakxes', 'Stuck on U', 'MADKID', 'Never going back', 'https://i.scdn.co/image/68dcf3e3491678bb94ae2b2e2330ecef49cdc48d', 261506, '2019-07-03 19:28:13'),
('5d1ce6c9e5b', 'breakxes', 'i don\'t CARE \"MADKID\"', 'MADKID', 'i don\'t CARE \"MADKID\"', 'https://i.scdn.co/image/30586f88ceb8275b55083da4e90aa54e624c4165', 256934, '2019-07-03 19:32:38'),
('5d1ce6fc4d9', 'breakxes', 'To the Beginning', 'Kalafina', 'Kalafina All Time Best 2008-2018', 'https://i.scdn.co/image/355b77c3e44ceb89462944a53091b2bfa066efd2', 257560, '2019-07-03 19:33:33'),
('5d1ce76ee65', 'breakxes', 'ふ・れ・ん・ど・し・た・い', '学園生活部', 'ふ・れ・ん・ど・し・た・い', 'https://i.scdn.co/image/4ffcdf338e5b6fadf668d301a78133b840512b6b', 218666, '2019-07-03 19:35:27'),
('5d1ce845e37', 'breakxes', 'Go!!!', 'FLOW', 'FLOW the Best: Single Collection', 'https://i.scdn.co/image/fbca085f518a233fc0a0573fb29a0fbc9bf0769d', 239333, '2019-07-03 19:39:02'),
('5d1ce8cd45a', 'breakxes', 'アンコール', 'Mamoru Miyano', 'アンコール', 'https://i.scdn.co/image/d99c1489677e8d6f779522d27ed2776354e0587c', 321604, '2019-07-03 19:41:18'),
('5d1ce8feeca', 'breakxes', 'オルフェ', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 270906, '2019-07-03 19:42:07'),
('5d1cea0ed36', 'breakxes', 'カノン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 260720, '2019-07-03 19:46:39'),
('5d1ceb154a6', 'breakxes', 'シャイン', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 276720, '2019-07-03 19:51:02'),
('5d1dfa86c40', 'breakxes', 'Stolen Time', 'Gemini Club', 'End of Your Life', 'https://i.scdn.co/image/850ca894294c86541caff45eaf439f75a74b30da', 227961, '2019-07-04 15:09:08'),
('5d1dfb1fbd9', 'breakxes', 'Polish Girl', 'Neon Indian', 'Era Extraña', 'https://i.scdn.co/image/120736db7a02dbb29ef06cb568ec7b4a3e7a2ed1', 264000, '2019-07-04 15:11:43'),
('5d1dfc2ad94', 'breakxes', 'THANK YOU', 'Mamoru Miyano', 'MAMORU MIYANO presents M&M THE BEST', 'https://i.scdn.co/image/85ee29ff95064245095955a111be4f003901c0e6', 251066, '2019-07-04 15:16:11'),
('5d1dfc485da', 'breakxes', 'Time Difference', 'OKAMOTO\'S', 'No More Music', 'https://i.scdn.co/image/27b5c29d06fb85b059354c4a3ca39773c375e3da', 311160, '2019-07-04 15:16:37'),
('5d1dfc7be3a', 'breakxes', 'Painkiller', 'DREAMERS', 'This Album Does Not Exist', 'https://i.scdn.co/image/512c1841f5152dda23b03b04cfdccc22d8e79246', 202626, '2019-07-04 15:17:32'),
('5d1dfd4851d', 'breakxes', 'Fiction', 'Reiji Kotobuki, Ai Mikaze', 'Uta No Prince-Sama Duet \"Fiction\" Reiji & Ai', 'https://i.scdn.co/image/ed52f14767d8d8946c9692b6e5b238ec5e9b9445', 306786, '2019-07-04 15:20:57'),
('5d1dfe7f668', 'breakxes', 'Americanarama', 'Hollerado', 'Record In A Bag', 'https://i.scdn.co/image/4e8378d4527b2883ffbd63bdfa8e9ce4798367f3', 201720, '2019-07-04 15:26:07'),
('5d1dfed4c9a', 'breakxes', 'Glimpse Of Love - Version', 'Franz Ferdinand', 'Glimpse Of Love (Version)', 'https://i.scdn.co/image/35e7b568b06aa43176e0dc19b7b8c567644e76d6', 180039, '2019-07-04 15:27:33'),
('5d1dff880df', 'breakxes', 'Popstar', 'Youth Killed It', 'Welcome to the Sad Boy\'s Club', 'https://i.scdn.co/image/181854e712d35dcc3050fc61ecd2344dd56aeec3', 176822, '2019-07-04 15:30:33'),
('5d1e0050d58', 'breakxes', 'Fun, Fun, Fun (Mono)', 'The Beach Boys', 'Shut Down', 'https://i.scdn.co/image/17296ac53ca154cd487c3baeadda853bfe1324a9', 138906, '2019-07-04 15:33:52'),
('5d1e00fee7d', 'breakxes', 'Run For Cover', 'The Killers', 'Run For Cover', 'https://i.scdn.co/image/49d01f27dcf8f6bec2ba4f16038bd22e309ae2d0', 223066, '2019-07-04 15:36:47'),
('5d1f1c95d9b', 'breakxes', 'Kishi no Kiss wa Yuki yori Yasashiku', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 336746, '2019-07-05 11:46:46'),
('5d1f1ee9c3b', 'breakxes', 'Knocking on the Mind', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 236760, '2019-07-05 11:56:42'),
('5d1f1f02c41', 'breakxes', 'Sanctuary', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 272666, '2019-07-05 11:57:03'),
('5d1f2011532', 'breakxes', 'Seien Brave Heart', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 281840, '2019-07-05 12:01:35'),
('5d1f212c3f6', 'breakxes', 'I swear…', 'Masato Hijirikawa', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 322880, '2019-07-05 12:06:21'),
('5d1f226c1b2', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 12:11:41'),
('5d1f2856c8d', 'breakxes', 'HOLY KNIGHT', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 220186, '2019-07-05 12:36:55'),
('5d1f2937e0c', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau - off vocal', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 12:40:36'),
('5d1f2964ce1', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 12:41:25'),
('5d1f2a63e47', 'breakxes', 'HOLY KNIGHT', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 220186, '2019-07-05 12:45:40'),
('5d1f2abdccd', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 12:47:10'),
('5d1f397d399', 'breakxes', 'Kishi no Kiss wa Yuki yori Yasashiku', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 336746, '2019-07-05 13:50:06'),
('5d1f3b56c40', 'breakxes', 'Koizakura', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 240946, '2019-07-05 13:57:56'),
('5d1f3c42a98', 'breakxes', 'HOLY KNIGHT', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 220186, '2019-07-05 14:01:55'),
('5d1f3d20ec2', 'breakxes', 'BLUE×PRISM HEART', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 256053, '2019-07-05 14:05:37'),
('5d1f3e1ff06', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 14:09:52'),
('5d1f3f1fe07', 'breakxes', 'Seien Brave Heart', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 281840, '2019-07-05 14:14:04'),
('5d1f41778b5', 'breakxes', 'GIRA*2 SEVEN', 'HE★VENS', 'Ai wo Sasageyo ~The Secret Shangri-La~', 'https://i.scdn.co/image/b91c14a4e734f25b767196e4e7f611421fe854c4', 313682, '2019-07-05 14:24:08'),
('5d1f41ef881', 'breakxes', 'Supatto! Spy & Spice', 'Tsukikage', 'Supatto! Spy & Spice / Hide & Seek', 'https://i.scdn.co/image/0a2a9c60c241edec5a0cea0bd5ce9d61809cd4cb', 236080, '2019-07-05 14:26:08'),
('5d1f4280781', 'breakxes', 'FAITH', 'MADKID', 'FAITH', 'https://i.scdn.co/image/a99bd374474eed04a5db27c0a07be4d1067c1f8f', 203506, '2019-07-05 14:28:33'),
('5d1f4842ef6', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 14:53:03'),
('5d1f487020f', 'breakxes', 'Most Fortissimo', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 233040, '2019-07-05 14:53:53'),
('5d1f491262f', 'breakxes', 'HOLY KNIGHT', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 220186, '2019-07-05 14:56:33'),
('5d1f49ee52f', 'breakxes', 'Sanctuary', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 272666, '2019-07-05 15:00:15'),
('5d1f4b01440', 'breakxes', 'Knocking on the Mind', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 236760, '2019-07-05 15:04:50'),
('5d1f4bef6b3', 'breakxes', 'Kishi no Kiss wa Yuki yori Yasashiku', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 336746, '2019-07-05 15:08:45'),
('5d1f4cac9eb', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 15:11:57'),
('5d1f5ef0742', 'breakxes', 'Koizakura', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 240946, '2019-07-05 16:29:52'),
('5d1f653530f', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau - off vocal', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 16:56:38'),
('5d1f65622fe', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 16:57:23'),
('5d1f665bec7', 'breakxes', 'Sanctuary', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 272666, '2019-07-05 17:01:32'),
('5d1f6ccc4a6', 'breakxes', 'Koizakura', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 240946, '2019-07-05 17:29:01'),
('5d1f6d0a852', 'breakxes', 'Most Fortissimo', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 233040, '2019-07-05 17:30:00'),
('5d1f6decc3a', 'breakxes', 'Shinnaru Senritsu wa Saiai wo Utau', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 250000, '2019-07-05 17:33:49'),
('5d1f6eef8dd', 'breakxes', 'HOLY KNIGHT - off vocal', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 217520, '2019-07-05 17:38:04'),
('5d1f6f659af', 'breakxes', 'Sanctuary', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 272666, '2019-07-05 17:40:06'),
('5d1f70785ce', 'breakxes', 'Seien Brave Heart', 'Hijirikawa Masato', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 281840, '2019-07-05 17:44:41'),
('5d1f71953c4', 'breakxes', 'I swear…', 'Masato Hijirikawa', 'Holy Knight', 'https://i.scdn.co/image/b82daadcb10b9fa9f74d6239f2caae326755058d', 322880, '2019-07-05 17:49:26'),
('5d1f72f94db', 'breakxes', 'Talk - Single Edit', 'Two Door Cinema Club', 'False Alarm', 'https://i.scdn.co/image/4c6f89ed5fae051368abda19c6ab1328b4f01ece', 216503, '2019-07-05 17:55:22'),
('5d1f758d480', 'breakxes', 'All I Want', 'Gemini Club', 'End of Your Life', 'https://i.scdn.co/image/850ca894294c86541caff45eaf439f75a74b30da', 199617, '2019-07-05 18:06:22'),
('5d20dbe9c58', 'breakxes', 'Can\'t Stop', 'Red Hot Chili Peppers', 'By the Way (Deluxe Edition)', 'https://i.scdn.co/image/b14027718a46fb43d8c6d8c88092fba9f75d9d21', 269000, '2019-07-06 19:29:32'),
('5d20df3faa6', 'Alexandra', 'Talk - Single Edit', 'Two Door Cinema Club', 'False Alarm', 'https://i.scdn.co/image/4c6f89ed5fae051368abda19c6ab1328b4f01ece', 216503, '2019-07-06 19:49:34'),
('5d20df8da56', 'breakxes', 'Always Where I Need To Be', 'The Kooks', 'Konk', 'https://i.scdn.co/image/78aeb89036f5998b4cf9590201e88cc34d8078a8', 161720, '2019-07-06 19:50:54'),
('5d20dfe2c07', 'breakxes', 'Bite Hard', 'Franz Ferdinand', 'Tonight', 'https://i.scdn.co/image/df713a297ee7ca3516e6ddffc776361abafc9167', 206413, '2019-07-06 19:52:19'),
('5d20e0267fb', 'breakxes', 'DERBY〜栄光の道しるべ〜', 'H ZETTRIO', 'DERBY〜栄光の道しるべ〜', 'https://i.scdn.co/image/6d857513bfa75f171a2c62dd9e5208272491e291', 282760, '2019-07-06 19:53:27'),
('5d20e05876a', 'breakxes', 'No Good', 'KALEO, Vinyl on HBO', 'No Good', 'https://i.scdn.co/image/0af863cb3757c429eb7bd0fb820124d881c636a6', 234240, '2019-07-06 19:54:17'),
('5d20e0a885b', 'breakxes', 'Flash Light Baby', 'BRADIO', 'POWER OF LIFE', 'https://i.scdn.co/image/f080416d5a2ba8a5cb7b44e66e686be79d56e793', 219686, '2019-07-06 19:55:37'),
('5d20e184842', 'breakxes', 'Rendezvoyeur', 'Alphaville', 'Strange Attractor', 'https://i.scdn.co/image/481e756c0dc20df6024b73325efcf5c323ae83db', 254986, '2019-07-06 19:59:17'),
('5d20e283a30', 'breakxes', 'Jungen Mädchen', 'Hund am Strand', 'Adieu Sweet Bahnhof', 'https://i.scdn.co/image/b6dbbe461aadae82de2131ca7d9a829671d7ef17', 181506, '2019-07-06 20:03:32'),
('5d20e29c813', 'breakxes', '∞ループ', 'heidi.', '回奏-heidi. the best 2006-2016-', 'https://i.scdn.co/image/ffe3f2e76f9583678b24b331eefb770de3aab686', 207133, '2019-07-06 20:03:57'),
('5d20e36e7b1', 'breakxes', 'Love Will Tear Us Apart', 'Joy Division', 'The Best Of', 'https://i.scdn.co/image/0acebc13e7e7d4a1ce7c6cbe6cac9b88cd9ec6ba', 206866, '2019-07-06 20:07:27'),
('5d20e387b0a', 'breakxes', 'Run For Cover', 'The Killers', 'Run For Cover', 'https://i.scdn.co/image/49d01f27dcf8f6bec2ba4f16038bd22e309ae2d0', 223066, '2019-07-06 20:07:52'),
('5d20e3fa81b', 'breakxes', 'The Law', 'Museum', 'traces of', 'https://i.scdn.co/image/0f350ba140203d01a5c66328f55473d28a5b0e5a', 280106, '2019-07-06 20:09:47'),
('5d20f28fdd6', 'breakxes', 'A Weak Ago', 'letlive.', 'If I\'m The Devil...', 'https://i.scdn.co/image/d285f92e299b65e209ed08f3e7a10f7cc079b098', 191137, '2019-07-06 21:11:15'),
('5d20f2d5d2e', 'breakxes', 'Kind of Light', 'Dofhei Project', 'Samsara Sex', 'https://i.scdn.co/image/4369b2576aaf8291997707bbadd38e2340695c97', 261851, '2019-07-06 21:13:10');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2056) NOT NULL,
  `spotify_refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`username`, `password`, `spotify_refresh_token`) VALUES
('alex', '$2y$10$DC/z6bX7NWynBSqcrFrlH.ZdA68frYb0Pz.N6.nWQaVvoXjM3vHsC', NULL),
('Alexandra', '$2y$10$wcJG0Whr0JPBZYM8A5Ws7efyntc2lM6nscp.2VW.lDldJdczjT9uS', 'AQARwSbaDPIPENPchZFi-LN9Cs0nd--sbUkUyw_iFZtFxkb2beEfaR6-jjiS8ND3tI-0P7WM8H9YERIiRt4rGNndSjjO-IYUSJkNmdrzbcOJoGDd6LaOgPjwDSwG5msSojp7nQ'),
('breakxes', '$2y$10$Jiyd/0T3fFNTzvGHMEUJWOlyQkXarfUGtpkoRw1npZcm.KFTov7O2', 'AQAAk__boyzmVx2f55-iHErui24bo9f9XrpcJKZi3wvZ_XTurZn6mSZBWqogFgDAGaQBaV4zvr8HxRuw52PqXWzUlcXS4saskVd5tPPRmc6NysqQ8yaUtPaH3su1hyzW5eHOdw'),
('Lala', '$2y$10$R3xpSCJm6Ba5USD/c0vNduZlEaUl/3C1hAyANyNysvsu4wZZ1PtD2', NULL),
('orion', '$2y$10$JQGE/Zta5GSOp6i5n7S0k.BC9aQfJTe/zNi1Dx/8zpfxmyOrrCxda', NULL),
('Raoden', '$2y$10$cKIA0urUZM8UGC9s6Y3WcOT.LvVBh6uuWu5jpdK/2aEpKAYOtVfp.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listening_history`
--
ALTER TABLE `listening_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
