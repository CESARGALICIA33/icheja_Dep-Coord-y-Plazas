-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2023 a las 19:59:33
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `icheja`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinaciones`
--

CREATE TABLE `coordinaciones` (
  `IdCoord` int(15) NOT NULL,
  `N_C` varchar(10) DEFAULT NULL,
  `Clave1` varchar(10) NOT NULL,
  `Clave2` varchar(10) DEFAULT NULL,
  `Ubicacion` varchar(15) NOT NULL,
  `Inmueble` varchar(10) NOT NULL,
  `Nombre_Coord` varchar(60) NOT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Localizacion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coordinaciones`
--

INSERT INTO `coordinaciones` (`IdCoord`, `N_C`, `Clave1`, `Clave2`, `Ubicacion`, `Inmueble`, `Nombre_Coord`, `Direccion`, `Localizacion`) VALUES
(1, '1', '0200', '003', '3', '0001', 'fggb', 'prueba de inser coord', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `IdDeptos` int(15) NOT NULL,
  `N_C` varchar(10) DEFAULT NULL,
  `Clave1` varchar(10) NOT NULL,
  `Clave2` varchar(10) DEFAULT NULL,
  `Ubicacion` varchar(15) NOT NULL,
  `Inmueble` varchar(10) NOT NULL,
  `Nombre_Depto` varchar(60) NOT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Localizacion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`IdDeptos`, `N_C`, `Clave1`, `Clave2`, `Ubicacion`, `Inmueble`, `Nombre_Depto`, `Direccion`, `Localizacion`) VALUES
(1, '0003', '234', '132', '13213', '132321', 'tipopruebasezarblue', '413123', 'dqqdw'),
(2, '0003', '123', '132', '13213', '132321', 'tipopruebasezarblue', '413123', 'dqqdw'),
(3, '', '', '', '', '', '', '', ''),
(4, '4563', '234234', '2342', 'av prueba para ', '1231', 'prueba para paginacion', '3e2e32ed', 'dwdw23d3'),
(6, '312', '13', '16', 'kyukuk', 'yukyukuku', 'ykukyk', 'nfngfn', 'tyjtjngn'),
(8, '5674', '645', '564', 'sfsfde345', '675hfghf', 'ryty54y', 'bggtgr', 'e44t3t3t3'),
(9, '5155', '321688', '9845', 'kjbibini', '', 'ykukyk', '8498ffeffe', 'erfefr56'),
(10, '7', '777777', '7777', 'kk7.k7', '7777', 'vacas', '43535efr', 'frefr345'),
(11, '0003', '324', '872', '78277', '228', '2', '827', '782'),
(12, '782', '78278', '78272', '782782', '78', '787', '7282', '2222'),
(13, '572525478', '825425', '424420', '04552', '424252', '5875', '7585', '5978'),
(14, '7', '55', '454', '456456', '5464657', '5678678', '6867', '46546');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coordinaciones`
--
ALTER TABLE `coordinaciones`
  ADD PRIMARY KEY (`IdCoord`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`IdDeptos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coordinaciones`
--
ALTER TABLE `coordinaciones`
  MODIFY `IdCoord` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `IdDeptos` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
