-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2023 a las 05:35:01
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prevencion_riesgos`
--
CREATE DATABASE IF NOT EXISTS `prevencion_riesgos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prevencion_riesgos`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitacion`
--

CREATE TABLE `capacitacion` (
  `id` int(11) NOT NULL,
  `rut` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `comuna` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `dia` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `cantidadAsistentes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capacitacion`
--

INSERT INTO `capacitacion` (`id`, `rut`, `nombre`, `direccion`, `comuna`, `telefono`, `dia`, `hora`, `lugar`, `duracion`, `cantidadAsistentes`) VALUES
(1, '6521454-7', 'Capacitacion 1', 'carlos 232', 'coquimbo', '65465454', 'Lunes', '12:00', 'sede vecinal', '5 horas', 10),
(2, '6521454-7', 'Capacitacion 2', 'Colombia 1231', 'La serena', '65463155', 'Martes', '14:00', 'Domicilio', '3 horas', 20),
(3, '6521454-7', 'Capacitacion 3', 'manuel rodriguez 2322', 'La serena', '65486451323', 'Miercoles', '16:00', 'Plaza de armas', '4 horas', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `tipo` enum('Cliente','Administrativo','Profesional') NOT NULL,
  `run` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `tipo`, `run`, `clave`) VALUES
(1, 'Administrativo', '12211988-2', '12345'),
(2, 'Cliente', '5412145-3', '2'),
(3, 'Profesional', '6521454-7', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
