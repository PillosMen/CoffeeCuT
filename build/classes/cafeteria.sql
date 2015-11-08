-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2015 a las 23:38:39
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comidas`
--

CREATE TABLE IF NOT EXISTS `comidas` (
  `Codigo` int(4) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Fecha` varchar(10) NOT NULL,
  `Precio` int(10) NOT NULL,
  `Cantidad` int(5) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `comidas`
--

INSERT INTO `comidas` (`Codigo`, `Nombre`, `Descripcion`, `Tipo`, `Fecha`, `Precio`, `Cantidad`) VALUES
(1, 'Hamburguesa papas', '', 'Hamburguesa', '', 30, 0),
(2, 'Lonche frijol con queso', '', 'Lonche', '', 16, 0),
(3, 'Chilaquiles guisado', '', 'Chilaquiles', '', 34, 0),
(4, 'Mollete mixto ', '', 'Mollete', '', 18, 0),
(5, 'Taco harina carne', '', 'Taco', '', 13, 0),
(6, 'Mollete dulce', '', 'Mollete', '', 0, 9),
(7, 'Orden chilaquiles', '', 'Chilaquiles', '', 25, 0),
(8, 'Cafe americano', '', 'Bebida', '', 0, 10),
(9, 'Mollete carne', '', 'Mollete', '', 16, 0),
(10, 'Baguette queso jamon', '', 'Baguette', '', 30, 0),
(11, 'Gringa', '', 'Comida', '', 20, 0),
(12, 'Lonche panela', '', 'Lonche', '', 18, 0),
(13, 'Lonche pierna', '', 'Lonche', '', 24, 0),
(14, 'Mollete frijoles queso', '', 'Mollete', '', 12, 0),
(15, 'Licuado de agua', '', 'Bebida', '', 12, 0),
(16, 'Licuado de leche', '', 'Bebida', '', 15, 0),
(17, 'Jugo naranja', '', 'Bebida', '', 10, 0),
(18, 'Vaso de leche', '', 'Bebida', '', 8, 0),
(19, 'Chocomilk', '', 'Bebida', '', 10, 0),
(20, 'Baguette salami', '', 'Baguette', '', 32, 0),
(21, 'Pay de queso', '', 'Postre', '', 28, 0),
(22, 'Pastel de chocolate', '', 'Postre', '', 30, 0),
(23, 'Gelatina sin azucar', '', 'Postre', '', 8, 0),
(24, 'Muffin', '', 'Postre', '', 12, 0),
(25, 'Gallete de chocolate', '', 'Postre', '', 10, 0),
(26, 'Agua fresca', '', 'Bebida', '', 12, 0),
(27, 'Fruta con yogurt', '', 'Postre', '', 15, 0),
(28, 'Flan casero', '', 'Postre', '', 10, 0),
(29, 'Baguette de pollo', '', 'Baguette', '', 35, 0),
(30, 'Verduras cocidas sal', '', 'Comida', '', 15, 0),
(31, 'Verduras cocidas crema', '', 'Comida', '', 18, 0),
(32, 'Ensalada', '', 'Comida', '', 35, 0),
(33, 'Jugo verde', '', 'Bebida', '', 10, 0),
(34, 'Orden de papas', '', 'Comida', '', 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Usuario`, `Contraseña`) VALUES
(5, 'brenda', 'root');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(30) NOT NULL,
  `Fecha` date NOT NULL,
  `Cobro` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
