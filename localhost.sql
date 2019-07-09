-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-07-2019 a las 17:14:43
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
-- Estructura de tabla para la tabla `About`
--

CREATE TABLE `About` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contenido` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `About`
--

INSERT INTO `About` (`id`, `tittle`, `Contenido`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sobre Check-Case', '<h3 style=\"text-align: left;\"><strong>Check-Case<br /></strong></h3>\r\n<h4 class=\"wppb-addon-title\" style=\"text-align: left;\">es una aplicacion web la cual ayudara a gestionar y organizar mejor su agencia, por medio de una agenda de eventos que le alertaran sobre cualquier evento registrado con anterioridad en el sistema, un foro donde puede conversar en tiempo real con sus clientes, y una pagina principal completamente modificable a su antojo.</h4>\r\n<p>&nbsp;</p>', 'about/July2019/jltsKNL5C1VhHCxdvZ6n.jpg', '2019-07-04 09:47:00', '2019-07-08 05:32:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `About_Card`
--

CREATE TABLE `About_Card` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `About_Card`
--

INSERT INTO `About_Card` (`id`, `card_tittle`, `card_content`, `card_icon`, `created_at`, `updated_at`) VALUES
(1, 'Agenda', 'Una agenda de eventos para una buena organización', 'fa fa-calendar', '2019-07-08 05:37:14', '2019-07-08 05:37:14'),
(2, 'Bajo costo', 'Tiene un costo mensual de $$$', 'fa fa-dollar', '2019-07-08 05:37:56', '2019-07-08 05:37:56');

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
-- Estructura de tabla para la tabla `Contacto`
--

CREATE TABLE `Contacto` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Contacto`
--

INSERT INTO `Contacto` (`id`, `tittle`, `subtittle`, `direccion`, `correo`, `telefono`, `twitter`, `facebook`, `instagram`, `google_plus`, `linkedin`, `created_at`, `updated_at`, `Ciudad`) VALUES
(1, 'Contactanos', 'puedes contactarnos directamente o enviando un correo electronico', 'Av. Francia 330', 'contacto@itempusltda.cl', '+569 67378056', NULL, NULL, NULL, NULL, NULL, '2019-07-07 05:23:37', '2019-07-07 05:34:05', 'Chillan');

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
(31, 4, 'origin', 'hidden', 'Origen', 0, 1, 1, 0, 1, 0, '{}', 9),
(32, 4, 'for_whom_it_is', 'select_dropdown', 'Para quien es', 0, 1, 1, 1, 1, 0, '{}', 10),
(34, 5, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
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
(143, 5, 'leido', 'hidden', 'Leido', 0, 1, 1, 1, 1, 1, '{\"default\":0}', 6),
(152, 4, 'diary_belongsto_user_relationship_1', 'relationship', 'Para quien es', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"for_whom_it_is\",\"key\":\"id\",\"label\":\"name1\",\"pivot_table\":\"Bufete\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(153, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(154, 20, 'image', 'image', 'Fondo', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":\"1280\"}}', 2),
(155, 20, 'tittle', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(156, 20, 'subtittle', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 5),
(157, 20, 'button', 'text', 'Boton', 0, 1, 1, 1, 1, 1, '{}', 7),
(158, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(159, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(160, 20, 'color_tittle', 'color', 'Color del titulo', 1, 1, 1, 1, 1, 1, '{}', 4),
(161, 20, 'color_subtittle', 'color', 'Color del subtitulo', 1, 1, 1, 1, 1, 1, '{}', 6),
(162, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(163, 21, 'tittle', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 2),
(164, 21, 'Contenido', 'rich_text_box', 'Contenido', 1, 1, 1, 1, 1, 1, '{}', 3),
(165, 21, 'image', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"550\",\"height\":\"600\"}}', 4),
(166, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(167, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(168, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 22, 'tittle', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 2),
(170, 22, 'subtittle', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(174, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(175, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(176, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(177, 23, 'card_tittle', 'text', 'Titulo de la tarjeta', 0, 1, 1, 1, 1, 1, '{}', 2),
(178, 23, 'card_content', 'rich_text_box', 'Contenido de la tarjeta', 0, 1, 1, 1, 1, 1, '{}', 3),
(179, 23, 'card_icon', 'select_dropdown', 'Icono de la tarjeta', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"selecione un icono\",\"fa fa-desktop\":\"pantalla\",\"fa fa-bar-chart\":\"diagrama de barra\",\"fa fa-paper-plane\":\"avion de papel\",\"fa fa-photo\":\"foto\",\"fa fa-road\":\"camino\",\"fa fa-shopping-bag\":\"bolsa de compras\",\"fa fa-dollar\":\"simbolo peso\",\"fa fa-gavel\":\"mazo\",\"fa fa-book\":\"libro\",\"fa fa-comments\":\"globo de dialogo\",\"fa fa-calendar\":\"calendario\",\"fa fa-group\":\"personas\",\"fa fa-code\":\"codigo\",\"fa fa-graduation-cap\":\"graduacion\"}}', 4),
(180, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(181, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(182, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(183, 24, 'tittle', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 2),
(184, 24, 'subtittle', 'text', 'Subtitulo', 1, 1, 1, 1, 1, 1, '{}', 3),
(185, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(186, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(187, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(188, 25, 'user_name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(189, 25, 'user_surname', 'text', 'Apellido', 1, 1, 1, 1, 1, 1, '{}', 3),
(190, 25, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(191, 25, 'role', 'text', 'Rol', 1, 1, 1, 1, 1, 1, '{}', 5),
(192, 25, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 6),
(193, 25, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 7),
(194, 25, 'google_plus', 'text', 'Google Plus', 0, 1, 1, 1, 1, 1, '{}', 8),
(195, 25, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 9),
(196, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(197, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(198, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(199, 26, 'tittle', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 2),
(200, 26, 'subtittle', 'text', 'Subtitulo', 1, 1, 1, 1, 1, 1, '{}', 3),
(201, 26, 'direccion', 'text', 'Direccion', 1, 1, 1, 1, 1, 1, '{}', 5),
(202, 26, 'correo', 'text', 'Correo', 1, 1, 1, 1, 1, 1, '{}', 6),
(203, 26, 'telefono', 'text', 'Telefono', 1, 1, 1, 1, 1, 1, '{}', 7),
(204, 26, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 8),
(205, 26, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 9),
(206, 26, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 10),
(207, 26, 'google_plus', 'text', 'Google Plus', 0, 1, 1, 1, 1, 1, '{}', 11),
(208, 26, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 12),
(209, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(210, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(211, 26, 'Ciudad', 'text', 'Ciudad', 1, 1, 1, 1, 1, 1, '{}', 4),
(212, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(213, 27, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(214, 27, 'correo', 'text', 'Correo', 1, 1, 1, 1, 1, 1, '{}', 3),
(215, 27, 'asunto', 'text', 'Asunto', 0, 1, 1, 1, 1, 1, '{}', 4),
(216, 27, 'mensaje', 'text', 'Mensaje', 1, 1, 1, 1, 1, 1, '{}', 5),
(217, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(218, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(219, 27, 'estado', 'hidden', 'Estado', 0, 1, 1, 0, 1, 0, '{\"default\":\"no leido\"}', 6),
(220, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(221, 28, 'card_tittle', 'text', 'Card Tittle', 1, 1, 1, 1, 1, 1, '{}', 2),
(222, 28, 'card_content', 'text', 'Card Content', 1, 1, 1, 1, 1, 1, '{}', 3),
(223, 28, 'card_icon', 'select_dropdown', 'Card Icon', 1, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"selecione un icono\",\"fa fa-desktop\":\"pantalla\",\"fa fa-bar-chart\":\"diagrama de barra\",\"fa fa-paper-plane\":\"avion de papel\",\"fa fa-photo\":\"foto\",\"fa fa-road\":\"camino\",\"fa fa-shopping-bag\":\"bolsa de compras\",\"fa fa-dollar\":\"simbolo peso\",\"fa fa-gavel\":\"mazo\",\"fa fa-book\":\"libro\",\"fa fa-comments\":\"globo de dialogo\",\"fa fa-calendar\":\"calendario\",\"fa fa-group\":\"personas\",\"fa fa-code\":\"codigo\",\"fa fa-graduation-cap\":\"graduacion\"}}', 4),
(224, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(225, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-13 07:00:22', '2019-06-27 13:42:11'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-13 07:00:22', '2019-06-09 12:14:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-13 07:00:22', '2019-05-13 07:00:22'),
(4, 'Diary', 'diary', 'Agenda', 'Agenda', 'voyager-calendar', 'App\\Diary', NULL, '\\App\\Http\\Controllers\\Voyager\\DiariesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-05-14 04:36:42', '2019-07-08 04:29:23'),
(5, 'Foro', 'foro', 'Foro', 'Foro', NULL, 'App\\Foro', NULL, '\\App\\Http\\Controllers\\Voyager\\ForoController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-09 08:22:46', '2019-06-26 10:15:07'),
(7, 'Respuestas', 'respuestas', 'Respuesta', 'Respuestas', NULL, 'App\\Respuesta', NULL, '\\App\\Http\\Controllers\\Voyager\\RespuestasController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-09 12:14:38', '2019-06-23 01:55:43'),
(8, 'Causas', 'causas', 'Causa', 'Causas', 'voyager-file-text', 'App\\Causa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-11 09:54:49', '2019-06-11 09:58:52'),
(13, 'Bufete', 'bufete', 'Bufete', 'Bufetes', 'voyager-bread', 'App\\Bufete', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-11 10:36:25', '2019-06-13 20:14:30'),
(15, 'Juzgado', 'juzgado', 'Juzgado', 'Juzgados', 'voyager-company', 'App\\Juzgado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-11 10:49:15', '2019-06-11 10:49:15'),
(17, 'Tipo_Juzgado', 'tipo-juzgado', 'Tipo Juzgado', 'Tipo Juzgados', NULL, 'App\\TipoJuzgado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-11 10:55:11', '2019-06-11 10:55:11'),
(20, 'index', 'index', 'Index', 'Indices', NULL, 'App\\Index', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 04:24:03', '2019-07-04 07:30:31'),
(21, 'About', 'about', 'About', 'Abouts', 'voyager-sound', 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 09:36:44', '2019-07-05 04:46:49'),
(22, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, '\\App\\Http\\Controllers\\Voyager\\ServicesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 21:04:16', '2019-07-05 06:04:18'),
(23, 'services_cards', 'services-cards', 'Services Card', 'Services Cards', NULL, 'App\\ServicesCard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 06:00:30', '2019-07-05 08:26:46'),
(24, 'team', 'team', 'Team', 'Teams', NULL, 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 17:22:51', '2019-07-05 19:05:34'),
(25, 'team_cards', 'team-cards', 'Team Card', 'Team Cards', NULL, 'App\\TeamCard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 17:23:05', '2019-07-08 04:29:10'),
(26, 'Contacto', 'contacto', 'Contacto', 'Contactos', NULL, 'App\\Contacto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-07 05:20:46', '2019-07-07 05:33:51'),
(27, 'Email', 'email', 'Email', 'Emails', NULL, 'App\\Email', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-07 05:50:06', '2019-07-08 04:55:33'),
(28, 'About_Card', 'about-card', 'About Card', 'About Cards', NULL, 'App\\AboutCard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-08 05:35:39', '2019-07-08 05:35:39');

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
  `for_whom_it_is` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Diary`
--

INSERT INTO `Diary` (`id`, `title_task`, `date_task_start`, `status_task`, `color`, `created_at`, `updated_at`, `date_task_end`, `origin`, `for_whom_it_is`) VALUES
(21, 'Juico con el profe Igor', '2019-06-25 14:30:00', 'option2', '#000000', '2019-06-25 10:45:53', '2019-06-25 10:45:53', '2019-06-25 16:55:00', 'Cristian', '3'),
(22, 'Juicio Atrasao', '2019-06-24 15:00:00', 'option2', '#fc0000', '2019-06-25 23:01:19', '2019-06-25 23:01:34', '2019-06-24 16:01:00', 'Cristian', '3'),
(23, 'Juicio de Sebastian Rivera', '2019-06-26 16:41:00', 'option2', '#3800e7', '2019-06-26 00:42:13', '2019-06-26 00:42:13', '2019-06-25 16:42:00', 'Cristian', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Email`
--

CREATE TABLE `Email` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Email`
--

INSERT INTO `Email` (`id`, `nombre`, `correo`, `asunto`, `mensaje`, `created_at`, `updated_at`, `estado`) VALUES
(1, 'CRISTIAN ALEJANDRO RODRIGUEZ ROCHA', 'kriss@gmail.com', 'Duda', 'mi duda es saber si esta wea esta funcionando como se debe o no', '2019-07-08 05:00:43', '2019-07-08 05:00:43', 'no leido');

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
(25, '2019-06-28 10:35:46', '2019-06-28 10:36:01', 'Tengo una duda', '<p>Hola, buenas tardes me fui preso porque usted solo sabe aplastarse las weas en la silla y nunca hace nada</p>', 3, 1),
(26, '2019-06-30 02:33:48', '2019-06-30 02:34:04', 'test de chat', '<p>test de chat</p>', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `index`
--

CREATE TABLE `index` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_subtittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `index`
--

INSERT INTO `index` (`id`, `image`, `tittle`, `subtittle`, `button`, `created_at`, `updated_at`, `color_tittle`, `color_subtittle`) VALUES
(1, 'index/July2019/mqaDvD9BFZSswpgtd8nG.jpg', 'Check-Case', 'Bienvenido a Check-Case, nuestra aplicacion web para gestion de agencias de abogados', 'ver mas', '2019-07-04 07:03:00', '2019-07-08 04:30:37', '#ffffff', '#ffffff');

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
(26, 1, 'Editar pagina principal', '', '_self', 'voyager-tools', '#000000', NULL, 8, '2019-06-25 05:32:46', '2019-07-04 09:42:51', NULL, ''),
(27, 1, 'Inicio', '', '_self', 'voyager-browser', '#000000', 26, 1, '2019-07-04 04:24:03', '2019-07-04 09:42:27', 'voyager.index.index', 'null'),
(29, 1, 'Servicios', '', '_self', 'voyager-folder', '#000000', 26, 4, '2019-07-04 21:04:16', '2019-07-08 05:35:57', 'voyager.services.index', 'null'),
(30, 1, 'Sobre Nosotros', '', '_self', 'voyager-info-circled', '#000000', 26, 2, '2019-07-05 04:47:25', '2019-07-05 22:00:36', 'voyager.about.index', 'null'),
(32, 1, 'Cartas de servicio', '', '_self', 'voyager-photos', '#000000', 26, 5, '2019-07-05 06:00:30', '2019-07-08 05:35:57', 'voyager.services-cards.index', 'null'),
(33, 1, 'Equipo', '', '_self', 'voyager-group', '#000000', 26, 6, '2019-07-05 17:22:51', '2019-07-08 05:35:57', 'voyager.team.index', 'null'),
(34, 1, 'Cartas de equipo', '', '_self', 'voyager-file-text', '#000000', 26, 7, '2019-07-05 17:23:05', '2019-07-08 05:35:57', 'voyager.team-cards.index', 'null'),
(35, 1, 'Contactos', '', '_self', 'voyager-telephone', '#000000', 26, 8, '2019-07-07 05:20:46', '2019-07-08 05:35:57', 'voyager.contacto.index', 'null'),
(36, 1, 'Emails', '', '_self', 'voyager-mail', '#000000', 13, 6, '2019-07-07 05:50:06', '2019-07-08 04:36:11', 'voyager.email.index', 'null'),
(37, 1, 'Sobre Nosotros cartas', '', '_self', 'voyager-window-list', '#000000', 26, 3, '2019-07-08 05:35:39', '2019-07-08 05:36:25', 'voyager.about-card.index', 'null');

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
(97, 'browse_index', 'index', '2019-07-04 04:24:03', '2019-07-04 04:24:03'),
(98, 'read_index', 'index', '2019-07-04 04:24:03', '2019-07-04 04:24:03'),
(99, 'edit_index', 'index', '2019-07-04 04:24:03', '2019-07-04 04:24:03'),
(100, 'add_index', 'index', '2019-07-04 04:24:03', '2019-07-04 04:24:03'),
(101, 'delete_index', 'index', '2019-07-04 04:24:03', '2019-07-04 04:24:03'),
(102, 'browse_About', 'About', '2019-07-04 09:36:44', '2019-07-04 09:36:44'),
(103, 'read_About', 'About', '2019-07-04 09:36:44', '2019-07-04 09:36:44'),
(104, 'edit_About', 'About', '2019-07-04 09:36:44', '2019-07-04 09:36:44'),
(105, 'add_About', 'About', '2019-07-04 09:36:44', '2019-07-04 09:36:44'),
(106, 'delete_About', 'About', '2019-07-04 09:36:44', '2019-07-04 09:36:44'),
(107, 'browse_services', 'services', '2019-07-04 21:04:16', '2019-07-04 21:04:16'),
(108, 'read_services', 'services', '2019-07-04 21:04:16', '2019-07-04 21:04:16'),
(109, 'edit_services', 'services', '2019-07-04 21:04:16', '2019-07-04 21:04:16'),
(110, 'add_services', 'services', '2019-07-04 21:04:16', '2019-07-04 21:04:16'),
(111, 'delete_services', 'services', '2019-07-04 21:04:16', '2019-07-04 21:04:16'),
(112, 'browse_services_cards', 'services_cards', '2019-07-05 06:00:30', '2019-07-05 06:00:30'),
(113, 'read_services_cards', 'services_cards', '2019-07-05 06:00:30', '2019-07-05 06:00:30'),
(114, 'edit_services_cards', 'services_cards', '2019-07-05 06:00:30', '2019-07-05 06:00:30'),
(115, 'add_services_cards', 'services_cards', '2019-07-05 06:00:30', '2019-07-05 06:00:30'),
(116, 'delete_services_cards', 'services_cards', '2019-07-05 06:00:30', '2019-07-05 06:00:30'),
(117, 'browse_team', 'team', '2019-07-05 17:22:51', '2019-07-05 17:22:51'),
(118, 'read_team', 'team', '2019-07-05 17:22:51', '2019-07-05 17:22:51'),
(119, 'edit_team', 'team', '2019-07-05 17:22:51', '2019-07-05 17:22:51'),
(120, 'add_team', 'team', '2019-07-05 17:22:51', '2019-07-05 17:22:51'),
(121, 'delete_team', 'team', '2019-07-05 17:22:51', '2019-07-05 17:22:51'),
(122, 'browse_team_cards', 'team_cards', '2019-07-05 17:23:05', '2019-07-05 17:23:05'),
(123, 'read_team_cards', 'team_cards', '2019-07-05 17:23:05', '2019-07-05 17:23:05'),
(124, 'edit_team_cards', 'team_cards', '2019-07-05 17:23:05', '2019-07-05 17:23:05'),
(125, 'add_team_cards', 'team_cards', '2019-07-05 17:23:05', '2019-07-05 17:23:05'),
(126, 'delete_team_cards', 'team_cards', '2019-07-05 17:23:05', '2019-07-05 17:23:05'),
(127, 'browse_Contacto', 'Contacto', '2019-07-07 05:20:46', '2019-07-07 05:20:46'),
(128, 'read_Contacto', 'Contacto', '2019-07-07 05:20:46', '2019-07-07 05:20:46'),
(129, 'edit_Contacto', 'Contacto', '2019-07-07 05:20:46', '2019-07-07 05:20:46'),
(130, 'add_Contacto', 'Contacto', '2019-07-07 05:20:46', '2019-07-07 05:20:46'),
(131, 'delete_Contacto', 'Contacto', '2019-07-07 05:20:46', '2019-07-07 05:20:46'),
(132, 'browse_Email', 'Email', '2019-07-07 05:50:06', '2019-07-07 05:50:06'),
(133, 'read_Email', 'Email', '2019-07-07 05:50:06', '2019-07-07 05:50:06'),
(134, 'edit_Email', 'Email', '2019-07-07 05:50:06', '2019-07-07 05:50:06'),
(135, 'add_Email', 'Email', '2019-07-07 05:50:06', '2019-07-07 05:50:06'),
(136, 'delete_Email', 'Email', '2019-07-07 05:50:06', '2019-07-07 05:50:06'),
(137, 'browse_About_Card', 'About_Card', '2019-07-08 05:35:39', '2019-07-08 05:35:39'),
(138, 'read_About_Card', 'About_Card', '2019-07-08 05:35:39', '2019-07-08 05:35:39'),
(139, 'edit_About_Card', 'About_Card', '2019-07-08 05:35:39', '2019-07-08 05:35:39'),
(140, 'add_About_Card', 'About_Card', '2019-07-08 05:35:39', '2019-07-08 05:35:39'),
(141, 'delete_About_Card', 'About_Card', '2019-07-08 05:35:39', '2019-07-08 05:35:39');

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
(1, 5),
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
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1);

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

--
-- Volcado de datos para la tabla `Respuestas`
--

INSERT INTO `Respuestas` (`id`, `texto`, `created_at`, `updated_at`, `user_id`, `foro_id`) VALUES
(8, 'me importa una puta mierda', '2019-06-28 10:38:29', '2019-06-28 10:38:29', '1', '25'),
(9, ':c', '2019-06-28 10:38:57', '2019-06-28 10:38:57', '3', '25'),
(10, 'pero no me trate asi :c', '2019-06-28 10:46:12', '2019-06-28 10:46:12', '3', '25'),
(12, 'bueno bueno, lo perdono', '2019-06-28 10:48:43', '2019-06-28 10:48:43', '1', '25'),
(13, 'pero se quedara en la carcel', '2019-06-28 10:49:21', '2019-06-28 10:49:21', '1', '25'),
(16, 'puta la wea', '2019-06-29 02:43:24', '2019-06-29 02:43:24', '3', '25'),
(53, 'oye po qlo', '2019-06-29 15:08:04', '2019-06-29 15:08:04', '3', '25'),
(54, 'que wea queri', '2019-06-29 15:09:05', '2019-06-29 15:09:05', '1', '25'),
(55, 'no me hables en ese tono wn', '2019-06-29 15:09:37', '2019-06-29 15:09:37', '3', '25'),
(56, 'puta la wea', '2019-06-29 15:09:52', '2019-06-29 15:09:52', '1', '25'),
(57, 'ya wn', '2019-06-29 15:10:46', '2019-06-29 15:10:46', '3', '25'),
(58, 'oe', '2019-06-29 15:17:22', '2019-06-29 15:17:22', '1', '25'),
(59, 'hola hola', '2019-06-29 15:18:28', '2019-06-29 15:18:28', '3', '25'),
(60, 'wena', '2019-06-29 15:19:26', '2019-06-29 15:19:26', '1', '25'),
(61, 'como estas?', '2019-06-29 15:25:26', '2019-06-29 15:25:26', '3', '25'),
(62, 'bien y tu ?', '2019-06-29 15:25:35', '2019-06-29 15:25:35', '1', '25'),
(63, 'bien', '2019-06-29 15:25:46', '2019-06-29 15:25:46', '3', '25'),
(64, 'wena, que bueno', '2019-06-29 15:25:56', '2019-06-29 15:25:56', '1', '25'),
(65, 'cual es su duda?', '2019-06-30 02:37:31', '2019-06-30 02:37:31', '1', '26'),
(66, 'eh? ah, si mi duda', '2019-06-30 02:37:48', '2019-06-30 02:37:48', '4', '26'),
(67, 'cuando podre comprar droga legalmente', '2019-06-30 02:38:29', '2019-06-30 02:38:29', '4', '26'),
(68, 'uff, esta complicado realmente', '2019-06-30 02:39:20', '2019-06-30 02:39:20', '1', '26'),
(69, 'wena', '2019-06-30 02:44:09', '2019-06-30 02:44:09', '1', '26'),
(70, 'wena', '2019-06-30 02:46:17', '2019-06-30 02:46:17', '4', '26'),
(71, 'wena', '2019-06-30 02:47:15', '2019-06-30 02:47:15', '4', '26'),
(72, 'wena', '2019-06-30 02:47:57', '2019-06-30 02:47:57', '4', '26'),
(73, 'wena', '2019-06-30 08:03:18', '2019-06-30 08:03:18', '1', '26'),
(74, 'wena', '2019-06-30 08:03:30', '2019-06-30 08:03:30', '1', '26'),
(75, 'pruebas', '2019-06-30 08:03:56', '2019-06-30 08:03:56', '1', '26'),
(76, 'wena', '2019-06-30 08:06:30', '2019-06-30 08:06:30', '1', '26'),
(77, 'probando', '2019-06-30 08:09:53', '2019-06-30 08:09:53', '1', '26'),
(78, 'probando2', '2019-06-30 08:10:26', '2019-06-30 08:10:26', '1', '26'),
(79, 'probando3', '2019-06-30 08:11:36', '2019-06-30 08:11:36', '1', '26'),
(80, 'probando4', '2019-06-30 08:12:37', '2019-06-30 08:12:37', '1', '26'),
(81, 'probando5', '2019-06-30 08:16:17', '2019-06-30 08:16:17', '1', '26'),
(82, 'y que me cuentas ?', '2019-06-30 08:18:02', '2019-06-30 08:18:02', '1', '25'),
(83, 'responde', '2019-06-30 08:18:31', '2019-06-30 08:18:31', '1', '25'),
(84, 'oeee', '2019-06-30 08:18:44', '2019-06-30 08:18:44', '1', '26'),
(85, 'yapo wn', '2019-06-30 10:16:55', '2019-06-30 10:16:55', '1', '25'),
(86, 'yapo wn', '2019-06-30 10:17:09', '2019-06-30 10:17:09', '1', '25'),
(87, 'yapo wn', '2019-06-30 10:17:57', '2019-06-30 10:17:57', '1', '25'),
(88, 'yapo wn', '2019-06-30 10:18:08', '2019-06-30 10:18:08', '1', '25'),
(89, 'hola, buenos dias', '2019-07-02 22:56:52', '2019-07-02 22:56:52', '4', '26'),
(90, 'como esta?', '2019-07-02 22:58:24', '2019-07-02 22:58:24', '4', '26'),
(91, 'bien y vo ?', '2019-07-02 23:01:34', '2019-07-02 23:01:34', '1', '26'),
(92, 'qlo', '2019-07-02 23:03:10', '2019-07-02 23:03:10', '1', '26'),
(93, 'wena', '2019-07-02 23:08:55', '2019-07-02 23:08:55', '4', '26'),
(94, 'que pasa wn', '2019-07-02 23:25:32', '2019-07-02 23:25:32', '1', '26'),
(95, 'nada wn nada', '2019-07-02 23:36:35', '2019-07-02 23:36:35', '4', '26'),
(96, 'ya', '2019-07-03 01:29:53', '2019-07-03 01:29:53', '4', '26'),
(97, 'wena', '2019-07-03 01:30:05', '2019-07-03 01:30:05', '1', '26'),
(98, 'xd', '2019-07-03 01:30:33', '2019-07-03 01:30:33', '1', '26'),
(99, 'oiga', '2019-07-05 20:49:35', '2019-07-05 20:49:35', '4', '26'),
(100, 'ayudaa', '2019-07-05 20:49:50', '2019-07-05 20:49:50', '4', '26'),
(101, 'que pasa wn?', '2019-07-05 20:50:05', '2019-07-05 20:50:05', '1', '26'),
(102, 'hola', '2019-07-05 20:50:30', '2019-07-05 20:50:30', '4', '26'),
(103, 'wena wena', '2019-07-05 20:50:51', '2019-07-05 20:50:51', '1', '26');

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
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtittle` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `tittle`, `subtittle`, `created_at`, `updated_at`) VALUES
(6, 'Nuestros Servicios y beneficios', 'Estos son los servicios y beneficios ofrecidos por Itempus', '2019-07-05 06:11:00', '2019-07-05 08:31:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_cards`
--

CREATE TABLE `services_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_tittle` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_content` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services_cards`
--

INSERT INTO `services_cards` (`id`, `card_tittle`, `card_content`, `card_icon`, `created_at`, `updated_at`) VALUES
(5, 'Diseños', '<p>Traemos los mejores dise&ntilde;os y mejor experiencia de usuario</p>', 'fa fa-desktop', '2019-07-05 08:27:10', '2019-07-05 08:27:10'),
(6, 'Codigo', '<p>Somos unos profesionales de la programacion y el desarrollo</p>', 'fa fa-code', '2019-07-05 08:28:08', '2019-07-05 08:28:08'),
(7, 'Puntualidad', '<p>Siempre puntuales a la hora de la entrega de un proyecto</p>', 'fa fa-calendar', '2019-07-05 08:28:39', '2019-07-05 08:28:39'),
(8, 'Comunicación', '<p>Siempre estamos en constante comunicacion con el cliente para desarrollar soluciones a medida</p>', 'fa fa-comments', '2019-07-05 08:29:20', '2019-07-05 08:29:20'),
(9, 'Precio', '<p>Los precios mas baratos en cuanto a software solo la encuentras en itempusLTDA</p>', 'fa fa-dollar', '2019-07-05 08:30:14', '2019-07-05 08:30:14'),
(10, 'Compañerismo', '<p>Somos una familia al momento de desarrollar y bucsar soluciones a un problema</p>', 'fa fa-group', '2019-07-05 08:30:49', '2019-07-05 08:30:49');

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
(5, 'admin.bg_image', 'Admin Background Image', 'settings/July2019/HqJB7ROCs9rIfV1jlCDj.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Check-Case', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenido a panel de administración de Check-Case, por favor inicie sesión y empecemos a trabajar', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/July2019/ZYVHOToV10M9jUc6iNMv.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/July2019/pwBTkZFrxv9yEDxDi4Y7.jpeg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id`, `tittle`, `subtittle`, `created_at`, `updated_at`) VALUES
(1, 'Nuestros equipo', 'Este es el personal que compone el proyecto', '2019-07-05 19:24:57', '2019-07-05 19:24:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_cards`
--

CREATE TABLE `team_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `team_cards`
--

INSERT INTO `team_cards` (`id`, `user_name`, `user_surname`, `image`, `role`, `twitter`, `facebook`, `google_plus`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'Cárdenas', 'team-cards/July2019/jJ6LQxXhaGeu4w4IdCCc.jpg', 'DIrector de desarrollo e implementación', NULL, NULL, NULL, NULL, '2019-07-05 22:18:00', '2019-07-08 04:42:14'),
(2, 'Daniel', 'Navarrete', 'team-cards/July2019/CKLJAPWlYc8itEhZnAoT.jpg', 'DIrector de analisis y diseño', NULL, NULL, NULL, NULL, '2019-07-07 04:59:53', '2019-07-08 04:42:06'),
(3, 'Gregorio', 'Orellana', 'team-cards/July2019/Nig86BBuyKvybL4wvn8n.jpg', 'Desarrollador', NULL, NULL, NULL, NULL, '2019-07-07 05:04:40', '2019-07-08 04:41:59'),
(4, 'Sebastian', 'Rivera', 'team-cards/July2019/uNRmyLnfTJlFzQ20QAQc.jpg', 'Desarrollador', NULL, NULL, NULL, NULL, '2019-07-07 05:05:00', '2019-07-08 04:41:47'),
(5, 'Cristian', 'Arias', 'team-cards/July2019/iDLBwdI91tHhaUU48xwK.png', 'Desarrollador', NULL, NULL, NULL, NULL, '2019-07-07 05:05:30', '2019-07-08 04:41:38');

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
(1, 1, 'Cristian', 'kriss@gmail.com', 'users/July2019/ueWRmJjDABXUhlKQ0c4I.png', NULL, '$2y$10$2pYthsx/wYzyyyBGoOwYDOfJa1Mn954N4PqyF1TU.YXpB8u5OrZJG', 'EIQjA3BJhiit6bDaNd5av8ckl3AyY63aDbhX3aIJFN0V7mXs6Fedudy7BrEn', '{\"locale\":\"es\"}', '2019-05-13 07:03:50', '2019-07-08 05:26:06', 'Esteban', 'Arias', 'Vallejos', '19823029-4', 'Francia 330', 'Chillan', NULL, '991518060'),
(4, 5, 'Ronald', 'Ronald@gmail.com', 'users/July2019/8EiWJWal18zIdSPgRJp8.jpg', NULL, '$2y$10$cSXMCQMRAhqPvAEaF8cbzu22lm3esKQbRjxTCnuKpg4Lx5DM1t2uy', NULL, NULL, '2019-06-25 10:51:23', '2019-07-05 20:48:50', 'Mandril', 'Quesillo', 'Panecillo', '20135723-3', 'calle falsa 123', 'Chillan', '112233445566', '112233445566');

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
-- Indices de la tabla `About`
--
ALTER TABLE `About`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `About_Card`
--
ALTER TABLE `About_Card`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `Contacto`
--
ALTER TABLE `Contacto`
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
-- Indices de la tabla `Email`
--
ALTER TABLE `Email`
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
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services_cards`
--
ALTER TABLE `services_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team_cards`
--
ALTER TABLE `team_cards`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `About`
--
ALTER TABLE `About`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `About_Card`
--
ALTER TABLE `About_Card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT de la tabla `Contacto`
--
ALTER TABLE `Contacto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `Diary`
--
ALTER TABLE `Diary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `Email`
--
ALTER TABLE `Email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Foro`
--
ALTER TABLE `Foro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `Respuestas`
--
ALTER TABLE `Respuestas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `services_cards`
--
ALTER TABLE `services_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `team_cards`
--
ALTER TABLE `team_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
