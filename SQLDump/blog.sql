-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2017 at 05:34 PM
-- Server version: 5.7.13
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `modified_at`, `created_at`) VALUES
(1, 'biga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Антон', '2017-03-02 15:16:38', '2017-03-02 15:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro_text` text,
  `full_text` text,
  `preview_image` varchar(255) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `intro_text`, `full_text`, `preview_image`, `author_id`, `modified_at`, `created_at`) VALUES
(8, 'Название7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', '---- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, '2017-03-21 07:58:00', '0000-00-00 00:00:00'),
(9, 'Название8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, '2017-02-14 15:13:00', '0000-00-00 00:00:00'),
(10, 'Название9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, '2017-02-28 21:00:00', '0000-00-00 00:00:00'),
(11, 'Снова!Ваш шедевр готов!', 'Повседневная практика показывает, что новая модель организационной деятельности требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Равным образом новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. Задача организации, в особенности же новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. С другой стороны укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Разнообразный и богатый опыт рамки и место обучения кадров требуют от нас анализа существенных финансовых и административных условий. Товарищи! реализация намеченных плановых заданий представляет собой интересный эксперимент проверки новых предложений.', 'Задача организации, в особенности же начало повседневной работы по формированию позиции способствует подготовки и реализации модели развития. Задача организации, в особенности же консультация с широким активом влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности требуют от нас анализа системы обучения кадров, соответствует насущным потребностям.\n\nПовседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Товарищи! новая модель организационной деятельности способствует подготовки и реализации дальнейших направлений развития.\n\nТоварищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание модели развития. Задача организации, в особенности же сложившаяся структура организации требуют от нас анализа дальнейших направлений развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития.\n\nИдейные соображения высшего порядка, а также укрепление и развитие структуры требуют от нас анализа соответствующий условий активизации. Повседневная практика показывает, что консультация с широким активом требуют от нас анализа новых предложений. Разнообразный и богатый опыт начало повседневной работы по формированию позиции в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки новых предложений. Равным образом рамки и место обучения кадров требуют определения и уточнения дальнейших направлений развития.', 'preview2.png', 1, '2017-03-14 21:00:00', '0000-00-00 00:00:00'),
(12, 'Тут без тегов', 'Тут без тегов интро', 'Тут без тегов full', NULL, 1, '2017-06-19 14:24:50', '2017-06-18 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'русский'),
(2, 'english'),
(3, 'all'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tags2posts`
--

CREATE TABLE IF NOT EXISTS `tags2posts` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags2posts`
--

INSERT INTO `tags2posts` (`post_id`, `tag_id`) VALUES
(8, 2),
(8, 3),
(9, 3),
(9, 2),
(10, 2),
(10, 3),
(11, 1),
(11, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_id_uindex` (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_id_uindex` (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
