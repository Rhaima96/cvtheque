-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 12 avr. 2020 à 09:40
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cvtheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `competences_cv_id_foreign` (`cv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cvs`
--

DROP TABLE IF EXISTS `cvs`;
CREATE TABLE IF NOT EXISTS `cvs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cvs_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cvs`
--

INSERT INTO `cvs` (`id`, `user_id`, `titre`, `presentation`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 2, 'CV Développeur WEB', 'CV Développeur WEB', 'image/VormVg67Vmp6Ohhve4tKo1ns6CgBjdwBPnNvQzld.jpeg', '2020-03-31 21:13:25', '2020-03-31 21:15:47', '2020-03-31 22:15:47'),
(24, 2, 'Mon 3éme CV', 'Mon 3éme CV', 'image/qQFmC5TuDn4bhFxjYxHK3LZ0C9GBjUiXlKoCfnXp.png', '2020-03-31 18:23:24', '2020-03-31 18:23:24', NULL),
(23, 2, 'Mon Premier CV', 'Mon Premier CV', 'image/BeoVxExVwMOROflpBbywxKDMDWYiybFBNAxpC70b.png', '2020-03-31 18:18:31', '2020-03-31 18:18:31', NULL),
(22, 2, 'Mon Deuxiéme CV', 'Mon Deuxiéme CV', 'image/O6DKCU5XsgNAcMMLizjHzt3NyLspDSeOSZ8zif7d.jpeg', '2020-03-31 18:01:50', '2020-03-31 18:01:50', NULL),
(21, 2, 'Mon Premier CV', 'Mon Premier CV', 'image/j8rA0b4aelJrJzf6QraYkNEkK4SfBMOMSbJ8YgbU.jpeg', '2020-03-31 11:57:42', '2020-03-31 18:17:27', '2020-03-31 19:17:27'),
(26, 2, 'CV Développeur WEB 1', 'CV Développeur WEB 1', 'image/LCBUVHnCPMKvYbdfYlkA1Q3JhOMBCS3FW034FiNH.jpeg', '2020-03-31 21:14:08', '2020-03-31 21:16:33', NULL),
(27, 2, 'CV Développeur WEB 2', 'CV Développeur WEB 2', 'image/FNgwY4EioVtEtrmqMLd22MrtfPPM0kStDN1v0OTg.jpeg', '2020-03-31 21:15:34', '2020-03-31 22:23:05', '2020-03-31 23:23:05'),
(28, 2, 'CV Développeur WEB 3', 'CV Développeur WEB 3', 'image/cptzjOVZ5ZCMs6pjQwcrnVBPium4mfI4pHHPW4TW.jpeg', '2020-03-31 21:18:00', '2020-03-31 22:04:38', '2020-03-31 23:04:38'),
(29, 1, 'Mon Premier CV', 'Mon Premier CV', 'image/tDV6MiDJqW6uvJK3E9zYQEFkkRKY9IBUOiBIsaWg.jpeg', '2020-03-31 21:20:07', '2020-03-31 22:04:51', '2020-03-31 23:04:51'),
(30, 1, 'Mon Premier CV', 'Mon Premier CV', 'image/jtFJSZi4wl8aeslBi9wIYhvzK99D6mr1PPxiP8q5.jpeg', '2020-03-31 22:06:39', '2020-03-31 22:07:35', '2020-03-31 23:07:35'),
(31, 1, 'Mon Premier CV', 'Mon Premier CV', 'image/M8ivDaqwfH9cVvc6D1LZdbTmnHPNNULW5roxpWhQ.jpeg', '2020-03-31 22:10:34', '2020-03-31 22:10:57', '2020-03-31 23:10:57'),
(32, 1, 'Mon Premier CV', 'Mon Premier CV', 'image/eLCooN7ZW7iA7RIRWUoRjbGagR4LCVGCOrE3NNfo.jpeg', '2020-03-31 22:11:46', '2020-03-31 22:12:16', '2020-03-31 23:12:16'),
(33, 1, 'Mon Premier CV', 'Mon Premier CV', 'image/8Hmq8RWo37moOPsUNXRfKGt3sTecnl8olM7rdCXi.jpeg', '2020-03-31 22:21:22', '2020-03-31 22:21:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `cv_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experiences_cv_id_foreign` (`cv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `cv_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `formations_cv_id_foreign` (`cv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2020_03_21_211155_create_cvs_table', 2),
(5, '2020_03_23_111658_add_column_deleted_at_cvs', 3),
(6, '2020_03_29_191821_add_column_user_id', 4),
(7, '2020_03_31_114215_add_column_photo_cvs', 5),
(8, '2020_03_31_224846_add_column_is_admin_users', 6),
(9, '2020_04_01_095628_create_experiences_table', 7),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(13, '2016_06_01_000004_create_oauth_clients_table', 8),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
(15, '2020_04_02_193640_create_formations_table', 9),
(16, '2020_04_02_194118_create_competences_table', 10),
(17, '2020_04_02_194506_create_projets_table', 11);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3ljB8i7lz9zCOy483D9pk5rfSRztojoZm6hRpIfN', 'http://localhost', 1, 0, 0, '2020-04-01 13:14:29', '2020-04-01 13:14:29'),
(2, NULL, 'Laravel Password Grant Client', 'm9jp85npngz0sswz6g07onEe5o7SRZQVLP7eBeO9', 'http://localhost', 0, 1, 0, '2020-04-01 13:14:29', '2020-04-01 13:14:29'),
(3, NULL, 'Laravel Personal Access Client', 'pEMtYLGANl2uZN9FzdHOWn7DxUdnNHdABnkgfgEk', 'http://localhost', 1, 0, 0, '2020-04-01 14:20:15', '2020-04-01 14:20:15'),
(4, NULL, 'Laravel Password Grant Client', 'PnTjxKehicPAI0iaz1I9Cjo8SU3mKwYEz4fstiSz', 'http://localhost', 0, 1, 0, '2020-04-01 14:20:15', '2020-04-01 14:20:15');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-01 13:14:29', '2020-04-01 13:14:29'),
(2, 3, '2020-04-01 14:20:15', '2020-04-01 14:20:15');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

DROP TABLE IF EXISTS `projets`;
CREATE TABLE IF NOT EXISTS `projets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projets_cv_id_foreign` (`cv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Mohamed Rhaima', 'mohamed.rhaima963@gmail.com', NULL, '$2y$10$JW6WHy6WaOkjZoZp5w4q1OCqYdRqjRFuozQl0xaMk0rkOmRJb9wgm', 'xBliYQO5johyQ68Dpl7a0SYjcc8uQumcilVE3iA5YWf9YqBxAZbRCLMvXTP1', '2020-03-21 14:25:33', '2020-03-21 14:25:33', 0),
(2, 'Mohamed ', 'mohamed.rhaima96@gmail.com', NULL, '$2y$10$IEDkVwyIdgGJQk/GJpaQ6ODzTjDI4.GppDU6z.O3s38ymSaKPZQva', 'QJ7EhhgLwJl3OT6Ju8nluJWNTj3YHZoYaw5f8DmjKWWZG8PN1mTv3X8rCfc3', '2020-03-29 18:10:57', '2020-03-29 18:10:57', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
