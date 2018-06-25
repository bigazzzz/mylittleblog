-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2018 at 05:43 PM
-- Server version: 5.5.50
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
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `route_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro_text` text,
  `full_text` text,
  `preview_image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `intro_text`, `full_text`, `preview_image`, `user_id`, `created_at`, `modified_at`) VALUES
(1, 'Название1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(2, 'Ваш шедевр готов!', 'Повседневная практика показывает, что новая модель организационной деятельности требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Равным образом новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. Задача организации, в особенности же новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. С другой стороны укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Разнообразный и богатый опыт рамки и место обучения кадров требуют от нас анализа существенных финансовых и административных условий. Товарищи! реализация намеченных плановых заданий представляет собой интересный эксперимент проверки новых предложений.', 'Задача организации, в особенности же начало повседневной работы по формированию позиции способствует подготовки и реализации модели развития. Задача организации, в особенности же консультация с широким активом влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности требуют от нас анализа системы обучения кадров, соответствует насущным потребностям.\n\nПовседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Товарищи! новая модель организационной деятельности способствует подготовки и реализации дальнейших направлений развития.\n\nТоварищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание модели развития. Задача организации, в особенности же сложившаяся структура организации требуют от нас анализа дальнейших направлений развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития.\n\nИдейные соображения высшего порядка, а также укрепление и развитие структуры требуют от нас анализа соответствующий условий активизации. Повседневная практика показывает, что консультация с широким активом требуют от нас анализа новых предложений. Разнообразный и богатый опыт начало повседневной работы по формированию позиции в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки новых предложений. Равным образом рамки и место обучения кадров требуют определения и уточнения дальнейших направлений развития.', 'preview2.png', 1, NULL, '2017-03-02 16:36:37'),
(3, 'Название2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(4, 'Название3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 2, NULL, '2017-05-03 16:44:07'),
(5, 'Название4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(6, 'Название5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(7, 'Название6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(8, 'Название7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(9, 'Название8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(10, 'Название9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id orci elementum, euismod lacus vitae, pellentesque erat. Nulla tempor ligula orci, sed dictum turpis egestas et. Integer in lacus sollicitudin, luctus mauris vel, molestie nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam non nibh tortor. Pellentesque sit amet mauris sed elit vulputate suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eleifend augue, non faucibus massa. Maecenas hendrerit ex in nisi eleifend vehicula. Morbi sollicitudin, erat vel faucibus placerat, ligula dolor aliquet urna, sed semper turpis lacus id nisi. Aliquam accumsan porttitor elit, et molestie tortor dignissim ac. Aenean elementum massa quis massa sodales varius. Duis pulvinar, orci nec ultrices consectetur, turpis libero condimentum eros, in venenatis orci ligula sit amet velit. Ut lobortis sapien at justo tempor fringilla.\n\nSed sit amet elit sit amet massa ultricies fringilla eget feugiat ligula. Curabitur mauris augue, bibendum ac magna ut, lacinia aliquam nunc. Etiam libero felis, tincidunt sed convallis a, eleifend id justo. Nunc interdum sapien quis vestibulum fermentum. Morbi ornare quam at pulvinar interdum. Etiam vel congue dolor, a efficitur neque. Morbi at velit a mi consequat fringilla sed a sem. Nunc in dolor augue. Suspendisse finibus efficitur laoreet. Phasellus lacinia purus a orci cursus, accumsan volutpat diam bibendum.\n\nNam maximus hendrerit imperdiet. Aliquam erat volutpat. Proin a neque libero. Ut a quam iaculis, lobortis quam et, ullamcorper libero. Vestibulum non eleifend elit, sit amet commodo augue. Vestibulum auctor nunc et ipsum condimentum, in semper urna pulvinar. Morbi ut porttitor metus, non vestibulum mauris. Fusce consequat nibh ornare justo sagittis, vitae tempor nunc convallis. Nam eget ornare ipsum, eget facilisis dui. Nunc vel rutrum arcu. Ut vel magna lacinia tellus sagittis aliquam vel id lorem. Proin orci quam, ultrices nec placerat pharetra, ultricies eget turpis. Integer et arcu ipsum. In convallis, orci in placerat accumsan, ligula est eleifend justo, maximus sodales nulla augue non ante. Suspendisse potenti. Nunc vehicula nibh sed dolor lobortis ullamcorper.\n\nMorbi vitae purus tristique, pulvinar nisl et, accumsan augue. Donec nisi odio, iaculis ut turpis id, condimentum tincidunt nulla. Nulla commodo nisl convallis velit mattis, at viverra tellus sodales. Pellentesque blandit lacus ac egestas porta. Aliquam sed facilisis massa. Nunc sed hendrerit velit, nec condimentum urna. Sed nec rutrum augue. Proin sollicitudin sapien eu nibh tristique faucibus. Donec a lorem magna.\n\nNulla massa turpis, faucibus at interdum eget, porta eu lectus. Praesent consequat volutpat ipsum, non sollicitudin libero scelerisque et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc in viverra massa. In velit sapien, mattis ut diam at, ultrices sollicitudin nulla. Donec vel ullamcorper ipsum. Nullam nec elit vel risus tincidunt bibendum sed eu eros. Praesent nulla est, varius sit amet ex eu, egestas aliquet odio. Sed feugiat quam eu mi interdum, eget imperdiet quam pretium. Suspendisse rhoncus, turpis sit amet feugiat lobortis, lacus dui blandit libero, in porta leo velit in lacus.', 'preview.png', 1, NULL, '2017-03-02 16:36:37'),
(11, 'Снова! Ваш шедевр готов!', 'Повседневная практика показывает, что новая модель организационной деятельности требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Равным образом новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. Задача организации, в особенности же новая модель организационной деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. С другой стороны укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Разнообразный и богатый опыт рамки и место обучения кадров требуют от нас анализа существенных финансовых и административных условий. Товарищи! реализация намеченных плановых заданий представляет собой интересный эксперимент проверки новых предложений.', 'Задача организации, в особенности же начало повседневной работы по формированию позиции способствует подготовки и реализации модели развития. Задача организации, в особенности же консультация с широким активом влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности требуют от нас анализа системы обучения кадров, соответствует насущным потребностям.\n\nПовседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Товарищи! новая модель организационной деятельности способствует подготовки и реализации дальнейших направлений развития.\n\nТоварищи! постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание модели развития. Задача организации, в особенности же сложившаяся структура организации требуют от нас анализа дальнейших направлений развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития.\n\nИдейные соображения высшего порядка, а также укрепление и развитие структуры требуют от нас анализа соответствующий условий активизации. Повседневная практика показывает, что консультация с широким активом требуют от нас анализа новых предложений. Разнообразный и богатый опыт начало повседневной работы по формированию позиции в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки новых предложений. Равным образом рамки и место обучения кадров требуют определения и уточнения дальнейших направлений развития.', 'preview2.png', 1, NULL, '2017-03-02 16:36:37'),
(12, 'FuckYou', NULL, NULL, NULL, 1, NULL, '2017-03-02 17:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` bigint(20) unsigned NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `args` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `modified_at`) VALUES
(1, 'русский', NULL, '2017-08-07 11:38:28'),
(2, 'english', NULL, '2017-08-07 11:38:28'),
(3, 'all', NULL, '2017-08-07 11:38:28'),
(4, 'none', NULL, '2017-08-07 11:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `tags_to_posts`
--

CREATE TABLE IF NOT EXISTS `tags_to_posts` (
  `id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags_to_posts`
--

INSERT INTO `tags_to_posts` (`id`, `post_id`, `tag_id`, `created_at`, `modified_at`) VALUES
(1, 8, 2, NULL, '2017-08-07 11:39:50'),
(2, 8, 3, NULL, '2017-08-07 11:39:50'),
(3, 9, 3, NULL, '2017-08-07 11:39:50'),
(4, 9, 2, NULL, '2017-08-07 11:39:50'),
(5, 10, 2, NULL, '2017-08-07 11:39:50'),
(6, 10, 3, NULL, '2017-08-07 11:39:50'),
(7, 11, 1, NULL, '2017-08-07 11:39:50'),
(8, 11, 3, NULL, '2017-08-07 11:39:50'),
(9, 1, 2, NULL, '2017-08-07 11:39:50'),
(10, 1, 3, NULL, '2017-08-07 11:39:50'),
(11, 2, 1, NULL, '2017-08-07 11:39:50'),
(12, 2, 3, NULL, '2017-08-07 11:39:50'),
(13, 3, 2, NULL, '2017-08-07 11:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `password`, `created_at`, `modified_at`) VALUES
(1, 'admin', 'Антон Шатунов', '$2y$10$qCmNUAvkR1XixAOEmiSDP.z8M77qZb1K5lxSP1ffj9O.Vesh46.sy', NULL, '2017-06-24 13:22:16'),
(2, 'another', 'Другой Админ', 'йцуйцуйц', NULL, '2017-08-07 13:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE IF NOT EXISTS `user_sessions` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `hash` varchar(512) NOT NULL,
  `ua` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `hash`, `ua`, `ip`, `created_at`, `modified_at`) VALUES
(24, 1, 'b0044549920019a2fa6cab6fafaa172b8e3db30fb7c1d8313ea03d5d31b46c2c', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '127.0.0.1', '2017-08-07 18:20:15', '2017-08-07 18:20:15'),
(26, 1, '6f9ec0fce3651101994c5b6d8aac4ea2e3541af46222003095ec9f13dea5a86d', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '127.0.0.1', '2017-08-07 18:23:53', '2017-08-07 18:23:53'),
(28, 1, 'f99504fe6ab43dc0a8e1d32fcc99441ad83175f7aa0a5dabcb6f7fb7f99ed870', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '127.0.0.1', '2018-06-21 14:30:46', '2018-06-21 14:30:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_id_uindex` (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tags_to_posts`
--
ALTER TABLE `tags_to_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags_to_posts`
--
ALTER TABLE `tags_to_posts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
