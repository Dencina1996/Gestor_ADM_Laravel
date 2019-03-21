-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2019 a las 12:22:55
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_admin_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `ID_Archivo` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Venta` int(11) DEFAULT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Ruta_Archivo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`ID_Archivo`, `ID_Cliente`, `ID_Venta`, `Tipo`, `Ruta_Archivo`) VALUES
(10, 1, 3, 'Factura', 'Factura_21032019105242.pdf'),
(11, 1, 3, 'Albarán', 'Albarán_21032019105249.pdf'),
(12, 1, 3, 'Presupuesto', 'Presupuesto_21032019105255.pdf'),
(13, 1, 3, 'Documento X', 'Documento X_21032019105309.pdf'),
(14, 1, 3, 'Documento Y', 'Documento Y_21032019105318.pdf'),
(15, 2, 4, 'Factura', 'Factura_21032019105449.pdf'),
(16, 2, 4, 'Albarán', 'Albarán_21032019105453.pdf'),
(17, 2, 4, 'Presupuesto', 'Presupuesto_21032019105457.pdf'),
(18, 2, 4, 'Documento X', 'Documento X_21032019105504.pdf'),
(19, 2, 4, 'Documento Y', 'Documento Y_21032019105514.pdf'),
(20, 3, 1, 'Factura', 'Factura_21032019105543.pdf'),
(21, 3, 1, 'Albarán', 'Albarán_21032019105548.pdf'),
(22, 3, 1, 'Presupuesto', 'Presupuesto_21032019105552.pdf'),
(23, 3, 1, 'Documento X', 'Documento X_21032019105557.pdf'),
(24, 3, 1, 'Documento Y', 'Documento Y_21032019105602.pdf'),
(25, 3, 2, 'Factura', 'Factura_21032019105618.pdf'),
(26, 3, 2, 'Albarán', 'Albarán_21032019105623.pdf'),
(27, 3, 2, 'Presupuesto', 'Presupuesto_21032019105628.pdf'),
(28, 3, 2, 'Documento X', 'Documento X_21032019105632.pdf'),
(29, 3, 2, 'Documento Y', 'Documento Y_21032019105637.pdf'),
(30, 7, 5, 'Factura', 'Factura_21032019105839.pdf'),
(31, 7, 5, 'Albarán', 'Albarán_21032019105846.pdf'),
(32, 7, 5, 'Presupuesto', 'Presupuesto_21032019105855.pdf'),
(33, 7, 5, 'Documento X', 'Documento X_21032019105901.pdf'),
(34, 7, 5, 'Documento Y', 'Documento Y_21032019105906.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` int(9) DEFAULT NULL,
  `CIF_NIF` varchar(9) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `CP` int(5) NOT NULL,
  `Fecha_Modificacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre`, `Email`, `Telefono`, `CIF_NIF`, `Direccion`, `Provincia`, `Localidad`, `CP`, `Fecha_Modificacion`) VALUES
(1, 'Santiago Insegura Rodríguez', 'sinsegurar@gmail.com', 655443322, '47771234J', 'Paseo de los Pinos Verdes, 6', 'Madrid', 'Aranjuez', 28300, '2019-02-19'),
(2, 'Enrique Martinez Garrido', 'enrique@yahoo.com', 932224532, '47889237S', 'Calle Pino Verde 43', 'Cadiz', 'Gibraltar', 99888, '2019-02-26'),
(3, 'Kevin Sedano', 'kevinsedanosmx@gmail.com', 617183420, '47939006Z', 'C/ Lluis G. Rius 6', 'Barcelona', 'Sant Feliu de Llobregat', 8980, '2019-03-06'),
(7, 'Irene Casas Cano', 'irenecc@hotmail.com', 662465678, '47983350K', 'Calle Figueras 33', 'Barcelona', 'Sant Feliu de Llobregat', 8980, '2019-03-20'),
(9, 'David Encina', 'dencina@gmail.com', 788663221, '48772298E', 'Calle Saboya 21', 'Barcelona', 'Esplugues', 8967, '2019-03-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_Venta` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `ID_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_Venta`, `Descripcion`, `Estado`, `ID_Cliente`) VALUES
(1, 'Venta de Melocotones', 'Activa', 3),
(2, 'Venta de Platanos', 'Activa', 3),
(3, 'Venta de Almendras', 'Activa', 1),
(4, 'Venta de Pistachos', 'Activa', 2),
(5, 'Venta de Castañas', 'Activa', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`ID_Archivo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_Venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `ID_Archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_Venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
