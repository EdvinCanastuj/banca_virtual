-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2023 a las 06:43:54
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bancavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infocliente`
--

CREATE TABLE `infocliente` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(245) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `DPI` int(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Ciudad` varchar(20) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `password` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `infocliente`
--

INSERT INTO `infocliente` (`id_usuario`, `usuario`, `Apellido`, `DPI`, `Email`, `Direccion`, `Ciudad`, `Telefono`, `password`) VALUES
(1, 'Ale', '', 0, '', '', '', 0, '$2y$10$j6OCv6HpVH9q9tEMQlQj4.QTao8XTsmuTFb7L4QiRfr4KLfPE.sue'),
(2, 'SS', '', 0, '', '', '', 0, '$2y$10$yO.ZJs5fI4ZkZKafBPzc6uY2QfTOQDMSm5RgcvHck9zHpwtWx/ZZG'),
(3, 'Pablo', '', 0, '', '', '', 0, '$2y$10$wVG1iD4lQBTE11tEV6mADuXSgr2/ciACdEgDU0CZTLJkN5tqTGoJi'),
(4, 'Lucia', 'Ochoa', 15258, 'luci@k.com', '1ra calle', 'Quetgo', 555, '$2y$10$BXCMachld4ZOp82aC3dNWODGvsCzXsFEmM5kFG4b.Xm8cIrPiEw8u'),
(5, 'Lulu', '', 0, '', '', '', 0, '$2y$10$iDDcRPCvvioaCr/feVCPCe8VaGw7lTsjU7c61cIA5WGTndn9sdyMm'),
(6, 'Ale', 'Lopez', 12345678, 'mochoao4@miumg', '1racafs', 'Quetgo', 547898, '$2y$10$hq.6PGJ8YM1o4UHFjv61OeTMk2hOieH1suN5us4NBwrLNx1l8Ukw2'),
(7, 'Ale', 'Lopez', 12345678, 'mochoao4@miumg', '1racafs', 'Quetgo', 547898, '$2y$10$br9tWH44nyvHlWsQKARdQupXzY0auZzw52mYhWMYgZcjkBod24qQy'),
(8, 'Paco', 'Ochoa', 51980659, 'paco@ochoa.com', '1ra calle zona 2', 'San Marcos', 12345678, '$2y$10$tY7fhyaUvRXkgqrQtt1Tc.FL8RZPHtxs.v7UNbyLFAaTJ5X4DW406'),
(9, 'Omar', 'Perez', 45678912, 'omar_pe@gmail.com', '2da calle acceso 5 zona 3', 'Huehuetenango', 13456789, '$2y$10$o5tZLnjER7z8/odSDBNs4OLrghPjC9vch8l6M2u.jbZ5I30ze7Lci'),
(10, 'Guillermo', 'Hernandez', 12345678, 'guille@gmail.com', '5ta av zona 4', 'Guatemala', 13456789, '$2y$10$NUIlNZfI1yKAMWUVmkQ6SueZ0mm9DaOEqVDoE6jSUC/YKH2oXoAn.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE `transferencias` (
  `id` int(11) NOT NULL,
  `remitente_id` int(15) NOT NULL,
  `destinatario_id` int(15) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `remitente_id`, `destinatario_id`, `cantidad`, `fecha`) VALUES
(1, 51980659, 77770459, '500.00', '2023-04-14 12:13:40'),
(2, 77770459, 51980659, '300.00', '2023-04-15 23:38:43'),
(3, 77770459, 51980659, '200.00', '2023-05-26 12:23:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `numero_cuenta` int(15) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `saldo` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `numero_cuenta`, `nombre_completo`, `correo_electronico`, `saldo`) VALUES
(0, 51980659, 'Ale Ochoa', 'mochoao4@miumg.du.gt', '2000.00'),
(0, 77770459, 'Paco Lopez', 'paquito@gmail.com', '500.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remitente_id` (`remitente_id`),
  ADD KEY `destinatario_id` (`destinatario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`numero_cuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transferencias`
--
ALTER TABLE `transferencias`
  ADD CONSTRAINT `transferencias_ibfk_1` FOREIGN KEY (`remitente_id`) REFERENCES `usuarios` (`numero_cuenta`),
  ADD CONSTRAINT `transferencias_ibfk_2` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`numero_cuenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
