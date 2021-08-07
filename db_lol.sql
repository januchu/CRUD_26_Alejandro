-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2021 a las 01:19:29
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_lol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_areas`
--

CREATE TABLE `tbl_areas` (
  `ID_AREA` int(11) NOT NULL,
  `AREA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_areas`
--

INSERT INTO `tbl_areas` (`ID_AREA`, `AREA`) VALUES
(1, 'Limpieza'),
(2, 'Papelería'),
(3, 'Tecnología'),
(4, 'Alimentos'),
(5, 'Deportivos'),
(6, 'Higiene');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_articulos`
--

CREATE TABLE `tbl_articulos` (
  `ID_ARTICULO` int(11) NOT NULL,
  `NOMBRE DE ARTICULO` varchar(30) NOT NULL,
  `PRECIO UNITARIO` int(11) NOT NULL,
  `ID_AREA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_articulos`
--

INSERT INTO `tbl_articulos` (`ID_ARTICULO`, `NOMBRE DE ARTICULO`, `PRECIO UNITARIO`, `ID_AREA`) VALUES
(1, 'Detergente ', 120, 1),
(3, 'Arroz', 35, 4),
(4, 'Bicicleta', 3750, 5),
(5, 'Atún Enlatado', 40, 4),
(6, 'Lápiz Tinta', 5, 2),
(7, 'Resma Papel Blanco', 350, 2),
(8, 'Ase', 60, 1),
(9, 'Jabón de Manos', 22, 6),
(10, 'Cepillo Dental', 50, 6),
(12, 'Botella', 70, 5),
(13, 'Tomates', 3, 4),
(14, 'Papas', 6, 4),
(15, 'Cuaderno', 15, 2),
(17, 'Leche', 14, 4),
(18, 'Casco', 180, 5),
(19, 'Pasta Dental', 45, 6),
(20, 'Trapeador', 140, 1),
(21, 'Chocolate en Polvo', 65, 4),
(22, 'Escoba', 88, 1),
(23, 'Libro', 175, 2),
(24, 'Regla', 20, 2),
(26, 'Lechuga', 25, 4),
(27, 'Champú', 80, 6),
(28, 'Lentes de Sol', 115, 5),
(29, 'Tobilleras', 40, 5),
(31, 'Acondicionador', 240, 6),
(32, 'Paste', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_envios`
--

CREATE TABLE `tbl_envios` (
  `ID_ENVIO` int(11) NOT NULL,
  `ID_ARTICULO` int(11) NOT NULL,
  `ID_SUCURSALES` int(11) NOT NULL,
  `ID_PROVEEDORES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_envios`
--

INSERT INTO `tbl_envios` (`ID_ENVIO`, `ID_ARTICULO`, `ID_SUCURSALES`, `ID_PROVEEDORES`) VALUES
(2, 4, 2, 1),
(3, 31, 7, 4),
(4, 12, 11, 7),
(5, 27, 10, 6),
(7, 17, 11, 9),
(9, 32, 5, 10),
(11, 21, 1, 7),
(12, 9, 9, 11),
(13, 18, 10, 6),
(14, 31, 11, 8),
(15, 29, 6, 10),
(16, 22, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_provedores`
--

CREATE TABLE `tbl_provedores` (
  `ID_PROVEEDORES` int(11) NOT NULL,
  `EMPRESA` varchar(50) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_provedores`
--

INSERT INTO `tbl_provedores` (`ID_PROVEEDORES`, `EMPRESA`, `NOMBRE`, `APELLIDO`, `ID_PAIS`) VALUES
(1, 'Exportadora Cielo Claro', 'Miguel', 'Alvarado', 7),
(2, 'Alimentos Calox', 'Juan', 'Portillo', 1),
(3, 'L&H Datica', 'Martha', 'Bradford', 4),
(4, 'Tech JAPAN', 'Ken', 'Morikawa', 6),
(5, 'Bodega Milagro', 'Camila', 'Rodriguez', 8),
(6, 'Exportadora Amsoft', 'Madisson ', 'Brown', 4),
(7, 'La Prairie', 'Ábelard', 'Bernard', 23),
(8, 'Aalberts Industries', 'Olivia', 'Bakker', 25),
(9, 'Exportadora Drokasa', 'Milagros', 'Flores', 17),
(10, 'Deutsche Post DHL Group', 'Alfons', 'Müller', 2),
(11, 'State Grid Corporation of China.', 'Mei', 'Liú', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sucursales`
--

CREATE TABLE `tbl_sucursales` (
  `ID_SUCURSAL` int(11) NOT NULL,
  `NOMBRE_SUCURSAL` varchar(100) NOT NULL,
  `ID_PAIS` int(11) NOT NULL,
  `ID_ESTADO` int(11) NOT NULL,
  `UBICACION` varchar(200) NOT NULL,
  `NOMBRE GERENTE` varchar(30) NOT NULL,
  `TELEFONO` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_sucursales`
--

INSERT INTO `tbl_sucursales` (`ID_SUCURSAL`, `NOMBRE_SUCURSAL`, `ID_PAIS`, `ID_ESTADO`, `UBICACION`, `NOMBRE GERENTE`, `TELEFONO`) VALUES
(1, 'Supermercado del Corral', 1, 2, 'Ciudad de Monterrey, Municipio de Monterrey', 'Juan Blanco', 78459784),
(2, 'Electrónicos PowerDesign', 1, 1, 'CDMX, D.F.', 'Mario Contreras', 98785648),
(3, 'Comercial Erdgeschoss', 2, 4, 'Ciudad de Munich, Bavier-Stadt', 'Wilhelm Kaiser', 99187878),
(4, 'Tekno-alles', 2, 6, 'Ciudad de Hamburgo, Municipio de Hamburgo', 'Otto von Bismarck', 99248759),
(5, 'Servicios de Limpieza Esmeralda', 3, 7, 'Ciudad de Tegucigalpa, M.D.C.', 'María Santos', 89927548),
(6, 'Comerial Marcos', 3, 8, 'Ciudad de San Lorenzo, Municipio de San Lorenzo', 'Marcial Romero', 98788746),
(7, 'TechStore One', 4, 10, 'El Álamo, San Antonio', 'Michael Enríquez', 8813154),
(8, 'PearStone', 4, 11, 'Manhattan, N.Y.C.', 'Sylvester Turner', 1884764),
(9, 'La Gran via', 4, 11, 'Maiden Lane', 'Charles Reyes', 15837298),
(10, 'Tokyo Station', 6, 17, '1-chome 9, Marunouchi, Chiyoda-ku, Tokyo 100-0005, Japón', 'Hiroto Yunko', 54679864),
(11, 'Plaza Martinéz', 1, 2, '1Avenida Adolfo Ruiz Cortines Poniente', 'Ricardo Sanchez', 387331770);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sucursales_estado`
--

CREATE TABLE `tbl_sucursales_estado` (
  `ID_ESTADO` int(11) NOT NULL,
  `ESTADO` varchar(80) NOT NULL,
  `ID_PAIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_sucursales_estado`
--

INSERT INTO `tbl_sucursales_estado` (`ID_ESTADO`, `ESTADO`, `ID_PAIS`) VALUES
(1, 'Ciudad de México', 1),
(2, 'Nuevo León', 1),
(3, 'Chiapas', 1),
(4, 'Bavaria', 2),
(5, 'Berlín', 2),
(6, 'Hamburgo', 2),
(7, 'Francisco Morazán', 3),
(8, 'Valle', 3),
(9, 'Cortés', 3),
(10, 'Texas', 4),
(11, 'Nueva York', 4),
(12, 'Maryland', 4),
(13, 'Pekín', 5),
(14, 'Jilin', 5),
(15, 'R.A. del Tíbet', 5),
(16, 'Hokkaido', 6),
(17, 'Tokyo', 6),
(18, 'Osaka', 6),
(19, 'Río de Janeiro', 7),
(20, 'Moto Grosso', 7),
(21, 'Sao Paulo', 7),
(22, 'Buenos Aires', 8),
(23, 'Santa Fe', 8),
(24, 'Santiago del Estero', 8),
(25, 'Quebec', 9),
(26, 'Ontario', 9),
(27, 'Alberta', 9),
(28, 'Madrid', 10),
(29, 'Cádiz', 10),
(30, 'Cataluña', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sucursales_pais`
--

CREATE TABLE `tbl_sucursales_pais` (
  `ID_PAIS` int(11) NOT NULL,
  `PAIS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_sucursales_pais`
--

INSERT INTO `tbl_sucursales_pais` (`ID_PAIS`, `PAIS`) VALUES
(1, 'México'),
(2, 'Alemania'),
(3, 'Honduras'),
(4, 'Estados Unidos'),
(5, 'China'),
(6, 'Japón'),
(7, 'Brasil'),
(8, 'Argentina'),
(9, 'Canadá'),
(10, 'España'),
(11, 'Rusia'),
(12, 'Venezuela'),
(13, 'Taiwán'),
(14, 'Uruguay'),
(15, 'Albania'),
(16, 'Reino Unido'),
(17, 'Perú'),
(18, 'Portugal'),
(19, 'Islandia'),
(20, 'Corea del Sur'),
(21, 'India'),
(22, 'Vietnam'),
(23, 'Francia'),
(24, 'Bélgica'),
(25, 'Paises Bajos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_areas`
--
ALTER TABLE `tbl_areas`
  ADD PRIMARY KEY (`ID_AREA`);

--
-- Indices de la tabla `tbl_articulos`
--
ALTER TABLE `tbl_articulos`
  ADD PRIMARY KEY (`ID_ARTICULO`),
  ADD KEY `FK_ARTICULOS_AREA` (`ID_AREA`) USING BTREE;

--
-- Indices de la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  ADD PRIMARY KEY (`ID_ENVIO`),
  ADD KEY `FK_ENVIOS_ARTICULOS` (`ID_ARTICULO`),
  ADD KEY `FK_ENVIOS_SUCURSALES` (`ID_SUCURSALES`),
  ADD KEY `FK_ENVIOS_PROVEEDORES` (`ID_PROVEEDORES`);

--
-- Indices de la tabla `tbl_provedores`
--
ALTER TABLE `tbl_provedores`
  ADD PRIMARY KEY (`ID_PROVEEDORES`),
  ADD KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `tbl_sucursales`
--
ALTER TABLE `tbl_sucursales`
  ADD PRIMARY KEY (`ID_SUCURSAL`),
  ADD KEY `FK_SUCURSALES_PAIS` (`ID_PAIS`),
  ADD KEY `FK_SUCURSALES_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tbl_sucursales_estado`
--
ALTER TABLE `tbl_sucursales_estado`
  ADD PRIMARY KEY (`ID_ESTADO`),
  ADD KEY `FK_ESTADO_PAIS` (`ID_PAIS`) USING BTREE;

--
-- Indices de la tabla `tbl_sucursales_pais`
--
ALTER TABLE `tbl_sucursales_pais`
  ADD PRIMARY KEY (`ID_PAIS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_areas`
--
ALTER TABLE `tbl_areas`
  MODIFY `ID_AREA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_articulos`
--
ALTER TABLE `tbl_articulos`
  MODIFY `ID_ARTICULO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  MODIFY `ID_ENVIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_provedores`
--
ALTER TABLE `tbl_provedores`
  MODIFY `ID_PROVEEDORES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_sucursales`
--
ALTER TABLE `tbl_sucursales`
  MODIFY `ID_SUCURSAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_sucursales_estado`
--
ALTER TABLE `tbl_sucursales_estado`
  MODIFY `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tbl_sucursales_pais`
--
ALTER TABLE `tbl_sucursales_pais`
  MODIFY `ID_PAIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_articulos`
--
ALTER TABLE `tbl_articulos`
  ADD CONSTRAINT `FK_ARTICULO_AREA` FOREIGN KEY (`ID_AREA`) REFERENCES `tbl_areas` (`ID_AREA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  ADD CONSTRAINT `FK_ENVIOS_ARTICULOS` FOREIGN KEY (`ID_ARTICULO`) REFERENCES `tbl_articulos` (`ID_ARTICULO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ENVIOS_PROVEEDORES` FOREIGN KEY (`ID_PROVEEDORES`) REFERENCES `tbl_provedores` (`ID_PROVEEDORES`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ENVIOS_SUCURSALES` FOREIGN KEY (`ID_SUCURSALES`) REFERENCES `tbl_sucursales` (`ID_SUCURSAL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_provedores`
--
ALTER TABLE `tbl_provedores`
  ADD CONSTRAINT `FK_PROVEEDOR_PAIS` FOREIGN KEY (`ID_PAIS`) REFERENCES `tbl_sucursales_pais` (`ID_PAIS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_sucursales`
--
ALTER TABLE `tbl_sucursales`
  ADD CONSTRAINT `FK_SUCURSALES_ESTADO` FOREIGN KEY (`ID_ESTADO`) REFERENCES `tbl_sucursales_estado` (`ID_ESTADO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_sucursales_estado`
--
ALTER TABLE `tbl_sucursales_estado`
  ADD CONSTRAINT `FK_ESTADO_PAIS` FOREIGN KEY (`ID_PAIS`) REFERENCES `tbl_sucursales_pais` (`ID_PAIS`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
