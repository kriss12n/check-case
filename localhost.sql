-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-06-2019 a las 00:40:05
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `check-case`
--
CREATE DATABASE IF NOT EXISTS `check-case` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `check-case`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bufete`
--

CREATE TABLE `Bufete` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono2` varchar(252) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fono3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen1` int(11) NOT NULL,
  `imagen2` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Causas`
--

CREATE TABLE `Causas` (
  `id` int(10) UNSIGNED NOT NULL,
  `abogado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `honorarios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(251) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juzgado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_causa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etapa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resultado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 11),
(4, 1, 'password', 'password', 'Contraseña', 1, 0, 0, 1, 1, 0, '{\"description\":\"Contrase\\u00f1a con la que podran ingresar a la pagina sus trabajadores o clientes\"}', 12),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 13),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 15),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{\"description\":\"imagen con la que podra identificar a sus trabajadores o clientes en el sistema(es opcional subir imagen)\"}', 17),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 20),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 21),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 18),
(22, 4, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(23, 4, 'title_task', 'text', 'Nombre de actividad', 1, 1, 1, 1, 1, 0, '{}', 2),
(25, 4, 'status_task', 'select_dropdown', 'estado de actividad', 1, 1, 1, 1, 1, 0, '{\"default\":\"option1\",\"options\":{\"option1\":\"Pendiente\",\"option2\":\"Atrasada\",\"option3\":\"Realizada\"}}', 5),
(26, 4, 'color', 'color', 'Color', 1, 1, 1, 1, 1, 0, '{}', 6),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 4, 'date_task_start', 'timestamp', 'fecha y hora de inicio', 1, 1, 1, 1, 1, 0, '{}', 3),
(30, 4, 'date_task_end', 'timestamp', 'fecha y hora de finalización', 0, 1, 1, 1, 1, 0, '{}', 4),
(31, 4, 'origin', 'text', 'Origen', 1, 1, 1, 0, 0, 0, '{}', 9),
(32, 4, 'for_whom_it_is', 'select_dropdown', 'Para quien es', 1, 1, 1, 1, 1, 0, '{}', 10),
(33, 4, 'done', 'checkbox', '¿Realizada?', 1, 1, 1, 1, 1, 0, '{\"on\":\"Realizada\",\"off\":\"No realizada\",\"checked\":false}', 11),
(34, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(37, 5, 'title', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 4),
(38, 5, 'content', 'rich_text_box', 'Contenido', 1, 1, 1, 1, 1, 1, '{}', 5),
(41, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 14),
(47, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 7, 'texto', 'rich_text_box', 'Texto', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(50, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(51, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(52, 7, 'respuesta_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"Diary\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(53, 7, 'respuesta_belongsto_foro_relationship', 'relationship', 'Foro', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Foro\",\"table\":\"Foro\",\"type\":\"belongsTo\",\"column\":\"foro_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"Diary\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(54, 7, 'foro_id', 'text', 'Foro Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(55, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 8, 'abogado', 'text', 'Abogado', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 8, 'cliente', 'text', 'Cliente', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 8, 'honorarios', 'text', 'Honorarios', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 8, 'rol', 'text', 'Rol', 1, 1, 1, 1, 1, 1, '{}', 5),
(60, 8, 'juzgado', 'text', 'Juzgado', 1, 1, 1, 1, 1, 1, '{}', 6),
(61, 8, 'tipo_causa', 'text', 'Tipo Causa', 1, 1, 1, 1, 1, 1, '{}', 7),
(62, 8, 'etapa', 'text', 'Etapa', 1, 1, 1, 1, 1, 1, '{}', 8),
(63, 8, 'rit', 'text', 'Rit', 1, 1, 1, 1, 1, 1, '{}', 9),
(64, 8, 'resultado', 'text', 'Resultado', 1, 1, 1, 1, 1, 1, '{}', 10),
(65, 8, 'created_at', 'timestamp', 'Creada el', 0, 1, 1, 0, 0, 0, '{\"format\":\"%Y-%m-%d\"}', 11),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(109, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 13, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 13, 'direccion', 'text', 'Direccion', 1, 1, 1, 1, 1, 1, '{}', 3),
(112, 13, 'ciudad', 'text', 'Ciudad', 1, 1, 1, 1, 1, 1, '{}', 4),
(113, 13, 'fono1', 'text', 'Fono1', 1, 1, 1, 1, 1, 1, '{}', 5),
(114, 13, 'fono2', 'text', 'Fono2', 0, 1, 1, 1, 1, 1, '{}', 6),
(115, 13, 'fono3', 'text', 'Fono3', 0, 1, 1, 1, 1, 1, '{}', 7),
(116, 13, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 8),
(117, 13, 'fecha_contratacion', 'text', 'Fecha Contratacion', 1, 1, 1, 1, 1, 1, '{\"format\":\"%Y-%m-%d\"}', 9),
(118, 13, 'color', 'color', 'Color', 1, 1, 1, 1, 1, 1, '{}', 10),
(119, 13, 'imagen1', 'image', 'Imagen1', 1, 1, 1, 1, 1, 1, '{}', 11),
(120, 13, 'imagen2', 'image', 'Imagen2', 0, 1, 1, 1, 1, 1, '{}', 12),
(121, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(122, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(124, 5, 'usuario_id', 'hidden', 'Usuario Id', 0, 0, 0, 0, 1, 0, '{}', 7),
(126, 1, 'name2', 'text', 'Segundo Nombre', 1, 1, 1, 1, 1, 1, '{}', 3),
(127, 1, 'surname1', 'text', 'Apellido Paterno', 1, 1, 1, 1, 1, 1, '{}', 4),
(128, 1, 'surname2', 'text', 'Apellido Materno', 1, 1, 1, 1, 1, 1, '{}', 5),
(129, 1, 'rut', 'text', 'Rut', 1, 1, 1, 1, 1, 1, '{}', 6),
(130, 1, 'direccion', 'text', 'Direccion', 1, 1, 1, 1, 1, 1, '{}', 8),
(131, 1, 'ciudad', 'text', 'Ciudad', 1, 1, 1, 1, 1, 1, '{}', 7),
(132, 1, 'fono', 'text', 'Fono', 0, 1, 1, 1, 1, 1, '{}', 9),
(133, 1, 'fono_movil', 'text', 'Fono Movil', 0, 1, 1, 1, 1, 1, '{}', 10),
(135, 1, 'name1', 'text', 'Primer Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(136, 5, 'foro_belongsto_user_relationship', 'relationship', 'users', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"usuario_id\",\"key\":\"id\",\"label\":\"name1\",\"pivot_table\":\"Bufete\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(137, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 18, 'image_slider', 'multiple_images', 'Imagen del carousel', 0, 1, 1, 1, 1, 1, '{}', 2),
(139, 18, 'history_body', 'text', 'Historia de la empresa', 0, 1, 1, 1, 1, 1, '{}', 4),
(140, 18, 'elements_body', 'text', 'Elementos del cuerpo', 0, 1, 1, 1, 1, 1, '{}', 5),
(141, 18, 'header_slider', 'text', 'Texto en carousel', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 18, 'services_body', 'text', 'Servicios', 0, 1, 1, 1, 1, 1, '{}', 6),
(143, 5, 'leido', 'hidden', 'Leido', 0, 1, 1, 1, 1, 1, '{\"default\":0}', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-13 07:00:22', '2019-06-16 14:20:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-13 07:00:22', '2019-06-09 12:14:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(4, 'Diary', 'diary', 'Agenda', 'Agenda', 'voyager-calendar', 'App\\Diary', NULL, '\\App\\Http\\Controllers\\Voyager\\DiariesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-14 04:36:42', '2019-06-09 04:56:03'),
(5, 'Foro', 'foro', 'Foro', 'Foro', NULL, 'App\\Foro', NULL, '\\App\\Http\\Controllers\\Voyager\\ForoController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-09 08:22:46', '2019-06-23 08:37:39'),
(7, 'Respuestas', 'respuestas', 'Respuesta', 'Respuestas', NULL, 'App\\Respuesta', NULL, '\\App\\Http\\Controllers\\Voyager\\RespuestasController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-09 12:14:38', '2019-06-23 01:55:43'),
(8, 'Causas', 'causas', 'Causa', 'Causas', 'voyager-file-text', 'App\\Causa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-11 09:54:49', '2019-06-11 09:58:52'),
(13, 'Bufete', 'bufete', 'Bufete', 'Bufetes', 'voyager-bread', 'App\\Bufete', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-11 10:36:25', '2019-06-13 20:14:30'),
(15, 'Juzgado', 'juzgado', 'Juzgado', 'Juzgados', 'voyager-company', 'App\\Juzgado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(17, 'Tipo_Juzgado', 'tipo-juzgado', 'Tipo Juzgado', 'Tipo Juzgados', NULL, 'App\\TipoJuzgado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(18, 'index', 'index', 'Index', 'Indices', 'voyager-hammer', 'App\\Index', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-18 21:04:04', '2019-06-18 21:07:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Diary`
--

CREATE TABLE `Diary` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_task` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_task_start` datetime NOT NULL,
  `status_task` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_task_end` datetime DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_whom_it_is` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `done` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Diary`
--

INSERT INTO `Diary` (`id`, `title_task`, `date_task_start`, `status_task`, `color`, `created_at`, `updated_at`, `date_task_end`, `origin`, `for_whom_it_is`, `done`) VALUES
(17, 'Juicio de Herman', '2019-06-08 05:55:00', 'option2', '#ff0000', '2019-06-09 13:55:14', '2019-06-09 13:55:14', '2019-06-08 05:55:00', NULL, NULL, '0'),
(18, 'Prueba', '2019-06-10 05:55:00', 'option2', '#ff3030', '2019-06-09 13:56:00', '2019-06-19 08:34:27', '2019-06-10 05:55:00', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Foro`
--

CREATE TABLE `Foro` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` int(10) DEFAULT NULL,
  `leido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Foro`
--

INSERT INTO `Foro` (`id`, `created_at`, `updated_at`, `title`, `content`, `usuario_id`, `leido`) VALUES
(8, '2019-06-16 12:12:04', '2019-06-16 12:12:04', 'test1', '<p>un texto de prueba muy bonito</p>', 1, 0),
(9, '2019-06-16 12:30:33', '2019-06-16 12:30:33', 'test2', '<p>asdasd</p>', 1, 1),
(10, '2019-06-16 14:10:32', '2019-06-16 14:10:32', 'test3', '<p>asdasd</p>', 1, 1),
(13, '2019-06-18 19:27:12', '2019-06-18 19:27:12', 'sdasd', '<p>asdasd</p>', 1, 0),
(15, '2019-06-18 19:29:45', '2019-06-18 19:29:45', 'asdasd', '<p>asdasd</p>', 1, 1),
(16, '2019-06-19 08:10:21', '2019-06-19 08:10:21', 'sdadsasd', '<p>dasdadsasd</p>', 1, 0),
(17, '2019-06-23 08:37:15', '2019-06-23 08:37:15', 'test para notificaciones', '<p>lorem ipsum</p>', 1, 0),
(18, '2019-06-23 08:37:57', '2019-06-23 08:37:57', 'test 6', '<p>lorem inpus</p>', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `index`
--

CREATE TABLE `index` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elements_body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_body` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `index`
--

INSERT INTO `index` (`id`, `image_slider`, `history_body`, `elements_body`, `header_slider`, `services_body`, `created_at`, `updated_at`) VALUES
(1, '[\"index\\/June2019\\/q3EOzIa2qiLZPoQ8xzji.jpg\",\"index\\/June2019\\/Qr1VmVtipGoSzzJcAjO9.jpeg\",\"index\\/June2019\\/SFrytI8v1MLYWCktX6a4.jpg\"]', NULL, NULL, 'prueba', NULL, '2019-06-18 21:43:18', '2019-06-18 21:43:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Juzgado`
--

CREATE TABLE `Juzgado` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-05-13 07:00:22', '2019-05-13 07:00:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-05-13 07:00:22', '2019-05-13 07:00:22', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-13 07:00:22', '2019-05-13 07:00:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-13 07:00:22', '2019-05-13 07:00:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-05-13 07:00:22', '2019-05-14 04:37:09', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-05-13 07:00:22', '2019-05-14 04:37:09', 'voyager.hooks', NULL),
(12, 1, 'Agenda', '', '_self', 'voyager-calendar', '#000000', 13, 1, '2019-05-14 04:36:42', '2019-06-08 15:28:17', 'voyager.diary.index', 'null'),
(13, 1, 'Administración', '', '_self', 'voyager-laptop', '#000000', NULL, 7, '2019-05-14 04:37:06', '2019-05-14 04:37:09', NULL, ''),
(14, 1, 'Foro', '', '_self', 'voyager-chat', '#000000', 13, 2, '2019-06-09 08:22:46', '2019-06-09 08:25:11', 'voyager.foro.index', 'null'),
(15, 1, 'Causas', '', '_self', 'voyager-file-text', NULL, 13, 3, '2019-06-11 09:54:49', '2019-06-11 10:38:11', 'voyager.causas.index', NULL),
(19, 1, 'Bufetes', '', '_self', 'voyager-bread', '#000000', 13, 4, '2019-06-11 10:36:25', '2019-06-16 08:51:16', 'voyager.bufete.index', 'null'),
(21, 1, 'Juzgados', '', '_self', 'voyager-company', NULL, 13, 5, '2019-06-11 10:49:15', '2019-06-16 08:51:16', 'voyager.juzgado.index', NULL),
(23, 1, 'respuesta', '/admin/respuestas', '_self', NULL, '#000000', NULL, 8, '2019-06-11 11:33:30', '2019-06-11 11:35:31', NULL, ''),
(24, 1, 'Indices', '', '_self', NULL, NULL, NULL, 9, '2019-06-18 21:04:04', '2019-06-18 21:04:04', 'voyager.index.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_05_19_204731_create_notifications_table', 2),
(24, '2019_05_24_045027_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(2, 'browse_bread', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(3, 'browse_database', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(4, 'browse_media', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(5, 'browse_compass', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(6, 'browse_menus', 'menus', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(7, 'read_menus', 'menus', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(8, 'edit_menus', 'menus', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(9, 'add_menus', 'menus', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(10, 'delete_menus', 'menus', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(11, 'browse_roles', 'roles', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(12, 'read_roles', 'roles', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(13, 'edit_roles', 'roles', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(14, 'add_roles', 'roles', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(15, 'delete_roles', 'roles', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(16, 'browse_users', 'users', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(17, 'read_users', 'users', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(18, 'edit_users', 'users', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(19, 'add_users', 'users', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(20, 'delete_users', 'users', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(21, 'browse_settings', 'settings', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(22, 'read_settings', 'settings', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(23, 'edit_settings', 'settings', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(24, 'add_settings', 'settings', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(25, 'delete_settings', 'settings', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(26, 'browse_hooks', NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(27, 'browse_Diary', 'Diary', '2019-05-14 04:36:42', '2019-05-14 04:36:42'),
(28, 'read_Diary', 'Diary', '2019-05-14 04:36:42', '2019-05-14 04:36:42'),
(29, 'edit_Diary', 'Diary', '2019-05-14 04:36:42', '2019-05-14 04:36:42'),
(30, 'add_Diary', 'Diary', '2019-05-14 04:36:42', '2019-05-14 04:36:42'),
(31, 'delete_Diary', 'Diary', '2019-05-14 04:36:42', '2019-05-14 04:36:42'),
(32, 'browse_Foro', 'Foro', '2019-06-09 08:22:46', '2019-06-09 08:22:46'),
(33, 'read_Foro', 'Foro', '2019-06-09 08:22:46', '2019-06-09 08:22:46'),
(34, 'edit_Foro', 'Foro', '2019-06-09 08:22:46', '2019-06-09 08:22:46'),
(35, 'add_Foro', 'Foro', '2019-06-09 08:22:46', '2019-06-09 08:22:46'),
(36, 'delete_Foro', 'Foro', '2019-06-09 08:22:46', '2019-06-09 08:22:46'),
(42, 'browse_Respuestas', 'Respuestas', '2019-06-09 12:14:38', '2019-06-09 12:14:38'),
(43, 'read_Respuestas', 'Respuestas', '2019-06-09 12:14:38', '2019-06-09 12:14:38'),
(44, 'edit_Respuestas', 'Respuestas', '2019-06-09 12:14:38', '2019-06-09 12:14:38'),
(45, 'add_Respuestas', 'Respuestas', '2019-06-09 12:14:38', '2019-06-09 12:14:38'),
(46, 'delete_Respuestas', 'Respuestas', '2019-06-09 12:14:38', '2019-06-09 12:14:38'),
(47, 'browse_Causas', 'Causas', '2019-06-11 09:54:49', '2019-06-11 09:54:49'),
(48, 'read_Causas', 'Causas', '2019-06-11 09:54:49', '2019-06-11 09:54:49'),
(49, 'edit_Causas', 'Causas', '2019-06-11 09:54:49', '2019-06-11 09:54:49'),
(50, 'add_Causas', 'Causas', '2019-06-11 09:54:49', '2019-06-11 09:54:49'),
(51, 'delete_Causas', 'Causas', '2019-06-11 09:54:49', '2019-06-11 09:54:49'),
(67, 'browse_Bufete', 'Bufete', '2019-06-11 10:36:25', '2019-06-11 10:36:25'),
(68, 'read_Bufete', 'Bufete', '2019-06-11 10:36:25', '2019-06-11 10:36:25'),
(69, 'edit_Bufete', 'Bufete', '2019-06-11 10:36:25', '2019-06-11 10:36:25'),
(70, 'add_Bufete', 'Bufete', '2019-06-11 10:36:25', '2019-06-11 10:36:25'),
(71, 'delete_Bufete', 'Bufete', '2019-06-11 10:36:25', '2019-06-11 10:36:25'),
(77, 'browse_Juzgado', 'Juzgado', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(78, 'read_Juzgado', 'Juzgado', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(79, 'edit_Juzgado', 'Juzgado', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(80, 'add_Juzgado', 'Juzgado', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(81, 'delete_Juzgado', 'Juzgado', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(82, 'browse_Tipo_Juzgado', 'Tipo_Juzgado', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(83, 'read_Tipo_Juzgado', 'Tipo_Juzgado', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(84, 'edit_Tipo_Juzgado', 'Tipo_Juzgado', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(85, 'add_Tipo_Juzgado', 'Tipo_Juzgado', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(86, 'delete_Tipo_Juzgado', 'Tipo_Juzgado', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(87, 'browse_index', 'index', '2019-06-18 21:04:04', '2019-06-18 21:04:04'),
(88, 'read_index', 'index', '2019-06-18 21:04:04', '2019-06-18 21:04:04'),
(89, 'edit_index', 'index', '2019-06-18 21:04:04', '2019-06-18 21:04:04'),
(90, 'add_index', 'index', '2019-06-18 21:04:04', '2019-06-18 21:04:04'),
(91, 'delete_index', 'index', '2019-06-18 21:04:04', '2019-06-18 21:04:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(3, 4),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 4),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(11, 4),
(12, 1),
(12, 3),
(12, 4),
(13, 1),
(13, 3),
(13, 4),
(14, 1),
(14, 3),
(14, 4),
(15, 1),
(15, 3),
(15, 4),
(16, 1),
(16, 3),
(16, 4),
(17, 1),
(17, 3),
(17, 4),
(18, 1),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 4),
(27, 1),
(27, 3),
(27, 4),
(27, 6),
(28, 1),
(28, 3),
(28, 4),
(28, 6),
(29, 1),
(29, 3),
(29, 4),
(29, 6),
(30, 1),
(30, 3),
(30, 4),
(30, 6),
(31, 1),
(31, 3),
(31, 4),
(31, 6),
(32, 1),
(32, 4),
(32, 5),
(33, 1),
(33, 4),
(33, 5),
(34, 1),
(35, 1),
(35, 4),
(35, 5),
(36, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Respuestas`
--

CREATE TABLE `Respuestas` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foro_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(3, 'administrador', 'administrador', '2019-06-09 04:57:22', '2019-06-09 04:57:22'),
(4, 'abogado', 'Abogado', '2019-06-09 04:58:03', '2019-06-09 04:58:03'),
(5, 'Cliente', 'Cliente', '2019-06-09 04:58:15', '2019-06-09 04:58:15'),
(6, 'Secretaria', 'Secretaria', '2019-06-09 04:58:29', '2019-06-09 04:58:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/June2019/5tZGU9eigPPYk3CXL5hD.jpeg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Check-Case', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenido a panel de administración de Check-Case, por favor inicie sesión y empecemos a trabajar', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/June2019/w1hO3mF2WUo4jyyF8q4S.jpeg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Juzgado`
--

CREATE TABLE `Tipo_Juzgado` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_juzgado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fono_movil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name1`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `name2`, `surname1`, `surname2`, `rut`, `direccion`, `ciudad`, `fono`, `fono_movil`) VALUES
(1, 1, 'Cristian', 'kriss@gmail.com', 'users/June2019/T9bKksDPfT2qbZF4CoQV.jpg', NULL, '$2y$10$2pYthsx/wYzyyyBGoOwYDOfJa1Mn954N4PqyF1TU.YXpB8u5OrZJG', '38bj2BejKF2h2IenzYD81ktaUvfGwDqFhpl8j3iP6htseT3nKAz1OMMPwvSs', '{\"locale\":\"es\"}', '2019-05-13 07:03:50', '2019-06-23 01:23:29', 'Esteban', 'Arias', 'Vallejos', '19823029-4', 'Francia 330', 'Chillan', NULL, '991518060'),
(3, 4, 'Andres', 'andres@gmail.com', 'users/June2019/ZKFP52fAghTiM8nsSaoR.jpg', NULL, '$2y$10$9wGqDVlq8O2skKcftK0ss.bGBLLmWNTeDKNL4TdWTCJhaLfKevXk6', NULL, NULL, '2019-06-16 14:21:50', '2019-06-16 14:21:50', 'Leandro', 'Lopez', 'Ramirez', '19823029-4', 'Calle falsa 123', 'Yungay', '998877665', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Bufete`
--
ALTER TABLE `Bufete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Causas`
--
ALTER TABLE `Causas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `Diary`
--
ALTER TABLE `Diary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Foro`
--
ALTER TABLE `Foro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `index`
--
ALTER TABLE `index`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Juzgado`
--
ALTER TABLE `Juzgado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `Respuestas`
--
ALTER TABLE `Respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `Tipo_Juzgado`
--
ALTER TABLE `Tipo_Juzgado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Bufete`
--
ALTER TABLE `Bufete`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Causas`
--
ALTER TABLE `Causas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `Diary`
--
ALTER TABLE `Diary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `Foro`
--
ALTER TABLE `Foro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `index`
--
ALTER TABLE `index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Juzgado`
--
ALTER TABLE `Juzgado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `Respuestas`
--
ALTER TABLE `Respuestas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Tipo_Juzgado`
--
ALTER TABLE `Tipo_Juzgado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
