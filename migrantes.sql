-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2018 a las 19:45:28
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `migrantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id_anuncio` int(11) NOT NULL COMMENT 'Identificador Anuncio',
  `titulo_anuncio` varchar(250) NOT NULL COMMENT 'Título del anuncio',
  `alter_titulo_anuncio` varchar(250) DEFAULT NULL COMMENT 'Título alternativo en otro idioma del anuncio',
  `detalle_anuncio` varchar(600) NOT NULL COMMENT 'Detalles del Anuncio',
  `alter_detalle_anuncio` varchar(600) DEFAULT NULL COMMENT 'Detalles Alternativos en otro idioma del anuncio',
  `fecha_anuncio` datetime NOT NULL COMMENT 'Fecha de publicación del anuncio',
  `duracion_anuncio` int(11) NOT NULL COMMENT 'Tiempo en días de duración del anuncio',
  `fecha_cierre_anuncio` datetime DEFAULT NULL COMMENT 'Fecha de cierre del anuncio',
  `estado_anuncio` tinyint(4) NOT NULL COMMENT 'Estado Actual del Anuncio',
  `id_usuario` int(11) NOT NULL COMMENT 'Identificador FK de usuario',
  `id_idioma_alter` int(11) DEFAULT NULL COMMENT 'Idioma de Anuncio Alternativo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Anuncios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL COMMENT 'Identificador de Ciudad',
  `desc_ciudad` varchar(45) NOT NULL COMMENT 'Descripción de la ciudad',
  `id_region` int(11) NOT NULL COMMENT 'Identificador FK de Región '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tablas de Ciudades';

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `desc_ciudad`, `id_region`) VALUES
(11, 'Iquique  ', 1),
(14, 'Tamarugal', 1),
(21, 'Antofagasta', 2),
(22, 'El Loa', 2),
(23, 'Tocopilla  ', 2),
(31, 'Copiapó  ', 3),
(32, 'Chañaral  ', 3),
(33, 'Huasco', 3),
(41, 'Elqui', 4),
(42, 'Choapa', 4),
(43, 'Limari', 4),
(51, 'Valparaíso  ', 5),
(52, 'Isla de Pascua  ', 5),
(53, 'Los Andes  ', 5),
(54, 'Petorca', 5),
(55, 'Quillota  ', 5),
(56, 'San Antonio  ', 5),
(57, 'San Felipe  ', 5),
(58, 'Marga Marga', 5),
(61, 'Cachapoal', 6),
(62, 'Cardenal Caro', 6),
(63, 'Colchagua', 6),
(71, 'Talca', 7),
(72, 'Cauquenes', 7),
(73, 'Curico', 7),
(74, 'Linares  ', 7),
(81, 'Concepción  ', 8),
(82, 'Arauco', 8),
(83, 'Bío- Bío', 8),
(84, 'Ñuble', 8),
(91, 'Cautín', 9),
(92, 'Malleco', 9),
(101, 'Llanquihue', 10),
(102, 'Chiloe', 10),
(103, 'Osorno  ', 10),
(104, 'Palena', 10),
(111, 'Coihaique  ', 11),
(112, 'Aisén  ', 11),
(113, 'Capitan Prat', 11),
(114, 'General Carrera', 11),
(121, 'Magallanes', 12),
(122, 'Antártica Chilena', 12),
(123, 'Tierra del Fuego', 12),
(124, 'Ultima Esperanza', 12),
(131, 'Santiago  ', 13),
(132, 'Cordillera', 13),
(133, 'Chacabuco', 13),
(134, 'Maipo', 13),
(135, 'Melipilla', 13),
(136, 'Talagante  ', 13),
(141, 'Valdivia  ', 14),
(142, 'Ranco', 14),
(151, 'Arica  ', 15),
(152, 'Parinacota', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int(11) NOT NULL COMMENT 'Identificador de Comuna',
  `desc_comuna` varchar(45) NOT NULL COMMENT 'Descripción de Comuna',
  `id_ciudad` int(11) NOT NULL COMMENT 'Identificador FK de Ciudad'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Comunas';

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id_comuna`, `desc_comuna`, `id_ciudad`) VALUES
(101, 'Arica', 151),
(1101, 'Iquique', 11),
(1107, 'Alto Hospicio', 11),
(1401, 'Pozo Almonte', 14),
(1402, 'Camiña', 14),
(1403, 'Colchane', 14),
(1404, 'Huara', 14),
(1405, 'Pica', 14),
(2101, 'Antofagasta', 21),
(2102, 'Mejillones', 21),
(2103, 'Sierra Gorda', 21),
(2104, 'Taltal', 21),
(2201, 'Calama', 22),
(2202, 'Ollagüe', 22),
(2203, 'San Pedro de Atacama', 22),
(2301, 'Tocopilla', 23),
(2302, 'María Elena', 23),
(3101, 'Copiapó', 31),
(3102, 'Caldera', 31),
(3103, 'Tierra Amarilla', 31),
(3201, 'Chañaral', 32),
(3202, 'Diego de Almagro', 32),
(3301, 'Vallenar', 33),
(3302, 'Alto del Carmen', 33),
(3303, 'Freirina', 33),
(3304, 'Huasco', 33),
(4101, 'La Serena', 41),
(4102, 'Coquimbo', 41),
(4103, 'Andacollo', 41),
(4104, 'La Higuera', 41),
(4105, 'Paiguano', 41),
(4106, 'Vicuña', 41),
(4201, 'Illapel', 42),
(4202, 'Canela', 42),
(4203, 'Los Vilos', 42),
(4204, 'Salamanca', 42),
(4301, 'Ovalle', 43),
(4302, 'Combarbalá', 43),
(4303, 'Monte Patria', 43),
(4304, 'Punitaqui', 43),
(4305, 'Río Hurtado', 43),
(5101, 'Valparaíso', 51),
(5102, 'Casablanca', 51),
(5103, 'Concón', 51),
(5104, 'Juan Fernández', 51),
(5105, 'Puchuncaví', 51),
(5107, 'Quintero', 51),
(5109, 'Viña del Mar', 51),
(5201, 'Isla  de Pascua', 52),
(5301, 'Los Andes', 53),
(5302, 'Calle Larga', 53),
(5303, 'Rinconada', 53),
(5304, 'San Esteban', 53),
(5401, 'La Ligua', 54),
(5402, 'Cabildo', 54),
(5403, 'Papudo', 54),
(5404, 'Petorca', 54),
(5405, 'Zapallar', 54),
(5501, 'Quillota', 55),
(5502, 'Calera', 55),
(5503, 'Hijuelas', 55),
(5504, 'La Cruz', 55),
(5506, 'Nogales', 55),
(5601, 'San Antonio', 56),
(5602, 'Algarrobo', 56),
(5603, 'Cartagena', 56),
(5604, 'El Quisco', 56),
(5605, 'El Tabo', 56),
(5606, 'Santo Domingo', 56),
(5701, 'San Felipe', 57),
(5702, 'Catemu', 57),
(5703, 'Llaillay', 57),
(5704, 'Panquehue', 57),
(5705, 'Putaendo', 57),
(5706, 'Santa María', 57),
(5801, 'Quilpué', 58),
(5802, 'Limache', 58),
(5803, 'Olmué', 58),
(5804, 'Villa Alemana', 58),
(6101, 'Rancagua', 61),
(6102, 'Codegua', 61),
(6103, 'Coinco', 61),
(6104, 'Coltauco', 61),
(6105, 'Doñihue', 61),
(6106, 'Graneros', 61),
(6107, 'Las Cabras', 61),
(6108, 'Machalí', 61),
(6109, 'Malloa', 61),
(6110, 'Mostazal', 61),
(6111, 'Olivar', 61),
(6112, 'Peumo', 61),
(6113, 'Pichidegua', 61),
(6114, 'Quinta de Tilcoco', 61),
(6115, 'Rengo', 61),
(6116, 'Requínoa', 61),
(6117, 'San Vicente', 61),
(6201, 'Pichilemu', 62),
(6202, 'La Estrella', 62),
(6203, 'Litueche', 62),
(6204, 'Marchihue', 62),
(6205, 'Navidad', 62),
(6206, 'Paredones', 62),
(6301, 'San Fernando', 63),
(6302, 'Chépica', 63),
(6303, 'Chimbarongo', 63),
(6304, 'Lolol', 63),
(6305, 'Nancagua', 63),
(6306, 'Palmilla', 63),
(6307, 'Peralillo', 63),
(6308, 'Placilla', 63),
(6309, 'Pumanque', 63),
(6310, 'Santa Cruz', 63),
(7101, 'Talca', 71),
(7102, 'Constitución', 71),
(7103, 'Curepto', 71),
(7104, 'Empedrado', 71),
(7105, 'Maule', 71),
(7106, 'Pelarco', 71),
(7107, 'Pencahue', 71),
(7108, 'Río Claro', 71),
(7109, 'San Clemente', 71),
(7110, 'San Rafael', 71),
(7201, 'Cauquenes', 72),
(7202, 'Chanco', 72),
(7203, 'Pelluhue', 72),
(7301, 'Curicó', 73),
(7302, 'Hualañé', 73),
(7303, 'Licantén', 73),
(7304, 'Molina', 73),
(7305, 'Rauco', 73),
(7306, 'Romeral', 73),
(7307, 'Sagrada Familia', 73),
(7308, 'Teno', 73),
(7309, 'Vichuquén', 73),
(7401, 'Linares', 74),
(7402, 'Colbún', 74),
(7403, 'Longaví', 74),
(7404, 'Parral', 74),
(7405, 'Retiro', 74),
(7406, 'San Javier', 74),
(7407, 'Villa Alegre', 74),
(7408, 'Yerbas Buenas', 74),
(8101, 'Concepción', 81),
(8102, 'Coronel', 81),
(8103, 'Chiguayante', 81),
(8104, 'Florida', 81),
(8105, 'Hualqui', 81),
(8106, 'Lota', 81),
(8107, 'Penco', 81),
(8108, 'San Pedro de la Paz', 81),
(8109, 'Santa Juana', 81),
(8110, 'Talcahuano', 81),
(8111, 'Tomé', 81),
(8112, 'Hualpén', 81),
(8201, 'Lebu', 82),
(8202, 'Arauco', 82),
(8203, 'Cañete', 82),
(8204, 'Contulmo', 82),
(8205, 'Curanilahue', 82),
(8206, 'Los Álamos', 82),
(8207, 'Tirúa', 82),
(8301, 'Los Ángeles', 83),
(8302, 'Antuco', 83),
(8303, 'Cabrero', 83),
(8304, 'Laja', 83),
(8305, 'Mulchén', 83),
(8306, 'Nacimiento', 83),
(8307, 'Negrete', 83),
(8308, 'Quilaco', 83),
(8309, 'Quilleco', 83),
(8310, 'San Rosendo', 83),
(8311, 'Santa Bárbara', 83),
(8312, 'Tucapel', 83),
(8313, 'Yumbel', 83),
(8314, 'Alto Biobío', 83),
(8401, 'Chillán', 84),
(8402, 'Bulnes', 84),
(8403, 'Cobquecura', 84),
(8404, 'Coelemu', 84),
(8405, 'Coihueco', 84),
(8406, 'Chillán Viejo', 84),
(8407, 'El Carmen', 84),
(8408, 'Ninhue', 84),
(8409, 'Ñiquén', 84),
(8410, 'Pemuco', 84),
(8411, 'Pinto', 84),
(8412, 'Portezuelo', 84),
(8413, 'Quillón', 84),
(8414, 'Quirihue', 84),
(8415, 'Ránquil', 84),
(8416, 'San Carlos', 84),
(8417, 'San Fabián', 84),
(8418, 'San Ignacio', 84),
(8419, 'San Nicolás', 84),
(8420, 'Treguaco', 84),
(8421, 'Yungay', 84),
(9101, 'Temuco', 91),
(9102, 'Carahue', 91),
(9103, 'Cunco', 91),
(9104, 'Curarrehue', 91),
(9105, 'Freire', 91),
(9106, 'Galvarino', 91),
(9107, 'Gorbea', 91),
(9108, 'Lautaro', 91),
(9109, 'Loncoche', 91),
(9110, 'Melipeuco', 91),
(9111, 'Nueva Imperial', 91),
(9112, 'Padre Las Casas', 91),
(9113, 'Perquenco', 91),
(9114, 'Pitrufquén', 91),
(9115, 'Pucón', 91),
(9116, 'Saavedra', 91),
(9117, 'Teodoro Schmidt', 91),
(9118, 'Toltén', 91),
(9119, 'Vilcún', 91),
(9120, 'Villarrica', 91),
(9121, 'Cholchol', 91),
(9201, 'Angol', 92),
(9202, 'Collipulli', 92),
(9203, 'Curacautín', 92),
(9204, 'Ercilla', 92),
(9205, 'Lonquimay', 92),
(9206, 'Los Sauces', 92),
(9207, 'Lumaco', 92),
(9208, 'Purén', 92),
(9209, 'Renaico', 92),
(9210, 'Traiguén', 92),
(9211, 'Victoria', 92),
(10101, 'Puerto Montt', 101),
(10102, 'Calbuco', 101),
(10103, 'Cochamó', 101),
(10104, 'Fresia', 101),
(10105, 'Frutillar', 101),
(10106, 'Los Muermos', 101),
(10107, 'Llanquihue', 101),
(10108, 'Maullín', 101),
(10109, 'Puerto Varas', 101),
(10201, 'Castro', 102),
(10202, 'Ancud', 102),
(10203, 'Chonchi', 102),
(10204, 'Curaco de Vélez', 102),
(10205, 'Dalcahue', 102),
(10206, 'Puqueldón', 102),
(10207, 'Queilén', 102),
(10208, 'Quellón', 102),
(10209, 'Quemchi', 102),
(10210, 'Quinchao', 102),
(10301, 'Osorno', 103),
(10302, 'Puerto Octay', 103),
(10303, 'Purranque', 103),
(10304, 'Puyehue', 103),
(10305, 'Río Negro', 103),
(10306, 'San Juan de la Costa', 103),
(10307, 'San Pablo', 103),
(10401, 'Chaitén', 104),
(10402, 'Futaleufú', 104),
(10403, 'Hualaihué', 104),
(10404, 'Palena', 104),
(11101, 'Coihaique', 111),
(11102, 'Lago Verde', 111),
(11201, 'Aisén', 112),
(11202, 'Cisnes', 112),
(11203, 'Guaitecas', 112),
(11301, 'Cochrane', 113),
(11302, 'O\'Higgins', 113),
(11303, 'Tortel', 113),
(11401, 'Chile Chico', 114),
(11402, 'Río Ibáñez', 114),
(12101, 'Punta Arenas', 121),
(12102, 'Laguna Blanca', 121),
(12103, 'Río Verde', 121),
(12104, 'San Gregorio', 121),
(12201, 'Cabo de Hornos', 122),
(12202, 'Antártica', 122),
(12301, 'Porvenir', 123),
(12302, 'Primavera', 123),
(12303, 'Timaukel', 123),
(12401, 'Natales', 124),
(12402, 'Torres del Paine', 124),
(13101, 'Santiago', 131),
(13102, 'Cerrillos', 131),
(13103, 'Cerro Navia', 131),
(13104, 'Conchalí', 131),
(13105, 'El Bosque', 131),
(13106, 'Estación Central', 131),
(13107, 'Huechuraba', 131),
(13108, 'Independencia', 131),
(13109, 'La Cisterna', 131),
(13110, 'La Florida', 131),
(13111, 'La Granja', 131),
(13112, 'La Pintana', 131),
(13113, 'La Reina', 131),
(13114, 'Las Condes', 131),
(13115, 'Lo Barnechea', 131),
(13116, 'Lo Espejo', 131),
(13117, 'Lo Prado', 131),
(13118, 'Macul', 131),
(13119, 'Maipú', 131),
(13120, 'Ñuñoa', 131),
(13121, 'Pedro Aguirre Cerda', 131),
(13122, 'Peñalolén', 131),
(13123, 'Providencia', 131),
(13124, 'Pudahuel', 131),
(13125, 'Quilicura', 131),
(13126, 'Quinta Normal', 131),
(13127, 'Recoleta', 131),
(13128, 'Renca', 131),
(13129, 'San Joaquín', 131),
(13130, 'San Miguel', 131),
(13131, 'San Ramón', 131),
(13132, 'Vitacura', 131),
(13201, 'Puente Alto', 132),
(13202, 'Pirque', 132),
(13203, 'San José de Maipo', 132),
(13301, 'Colina', 133),
(13302, 'Lampa', 133),
(13303, 'Tiltil', 133),
(13401, 'San Bernardo', 134),
(13402, 'Buin', 134),
(13403, 'Calera de Tango', 134),
(13404, 'Paine', 134),
(13501, 'Melipilla', 135),
(13502, 'Alhué', 135),
(13503, 'Curacaví', 135),
(13504, 'María Pinto', 135),
(13505, 'San Pedro', 135),
(13601, 'Talagante', 136),
(13602, 'El Monte', 136),
(13603, 'Isla de Maipo', 136),
(13604, 'Padre Hurtado', 136),
(13605, 'Peñaflor', 136),
(14101, 'Valdivia', 141),
(14102, 'Corral', 141),
(14103, 'Lanco', 141),
(14104, 'Los Lagos', 141),
(14105, 'Máfil', 141),
(14106, 'Mariquina', 141),
(14107, 'Paillaco', 141),
(14108, 'Panguipulli', 141),
(14201, 'La Unión', 142),
(14202, 'Futrono', 142),
(14203, 'Lago Ranco', 142),
(14204, 'Río Bueno', 142),
(15102, 'Camarones', 151),
(15201, 'Putre', 152),
(15202, 'General Lagos', 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE `curriculum` (
  `id_curriculum` int(11) NOT NULL COMMENT 'Identificador de Currículum',
  `path_curriculum` varchar(250) NOT NULL COMMENT 'Ubicación del Currículum en el servidor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Currículums';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id_documento` int(11) NOT NULL COMMENT 'Identificador de Documento',
  `desc_documento` varchar(250) NOT NULL COMMENT 'Descripción del Documento',
  `path_documento` varchar(250) NOT NULL COMMENT 'Ubicación del documento en el servidor',
  `id_tipo_documento` int(11) NOT NULL COMMENT 'Identificador FK del tipo de documento'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de documentos anexos de usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_link_usuarios`
--

CREATE TABLE `documentos_link_usuarios` (
  `id_doc_link_us` int(11) NOT NULL COMMENT 'Identificador Tabla Link de Documentos y Usuario',
  `id_documento` int(11) NOT NULL COMMENT 'Identificador FK tabla Documento',
  `id_usuario` int(11) NOT NULL COMMENT 'Identificador FK tabla Usuario',
  `desc_doc_link_us` varchar(45) NOT NULL COMMENT 'Detalles documento'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de link entre documento y usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_postulacion`
--

CREATE TABLE `estado_postulacion` (
  `id_estado_postulacion` int(11) NOT NULL COMMENT 'Identificador del Estado de Postulación',
  `desc_estado_postulacion` varchar(45) NOT NULL COMMENT 'Descripción dle estado de postulación'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con estados de postulaciones';

--
-- Volcado de datos para la tabla `estado_postulacion`
--

INSERT INTO `estado_postulacion` (`id_estado_postulacion`, `desc_estado_postulacion`) VALUES
(0, 'Inactiva'),
(1, 'Activa'),
(2, 'En Proceso'),
(3, 'Finalizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id_idioma` int(11) NOT NULL COMMENT 'Identificador de Idioma',
  `desc_idioma` varchar(45) NOT NULL COMMENT 'Descripción de Idioma'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de listado de idiomas';

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id_idioma`, `desc_idioma`) VALUES
(1, 'Afrikaans'),
(2, 'Albanés'),
(3, 'Alemán'),
(4, 'Amharico'),
(5, 'Arabe'),
(6, 'Armenio'),
(7, 'Bengali'),
(8, 'Bieloruso'),
(9, 'Birmanés'),
(10, 'Bulgaro'),
(11, 'Catalan'),
(12, 'Checo'),
(13, 'Chino'),
(14, 'Coreano'),
(15, 'Croata'),
(16, 'Danés'),
(17, 'Dari'),
(18, 'Dzongkha'),
(19, 'Escocés'),
(20, 'Eslovaco'),
(21, 'Esloveniano'),
(22, 'Español'),
(23, 'Esperanto'),
(24, 'Estoniano'),
(25, 'Faroese'),
(26, 'Farsi'),
(27, 'Finlandés'),
(28, 'Francés'),
(29, 'Gaelico'),
(30, 'Galese'),
(31, 'Gallego'),
(32, 'Griego'),
(33, 'Hebreo'),
(34, 'Hindi'),
(35, 'Holandés'),
(36, 'Hungaro'),
(37, 'Inglés'),
(38, 'Indonesio'),
(39, 'Inuktitut (Eskimo)'),
(40, 'Islandico'),
(41, 'Italiano'),
(42, 'Japonés'),
(43, 'Khmer'),
(44, 'Kurdo'),
(45, 'Lao'),
(46, 'Laponico'),
(47, 'Latviano'),
(48, 'Lituano'),
(49, 'Macedonio'),
(50, 'Malayés'),
(51, 'Maltés'),
(52, 'Nepali'),
(53, 'Noruego'),
(54, 'Pashto'),
(55, 'Polaco'),
(56, 'Portugués'),
(57, 'Rumano'),
(58, 'Ruso'),
(59, 'Serbio'),
(60, 'Somali'),
(61, 'Suahili'),
(62, 'Sueco'),
(63, 'Tagalog-Filipino'),
(64, 'Tajik'),
(65, 'Tamil'),
(66, 'Tailandés'),
(67, 'Tibetano'),
(68, 'Tigrinia'),
(69, 'Tonganés'),
(70, 'Turco'),
(71, 'Turkmenistano'),
(72, 'Ucraniano'),
(73, 'Urdu'),
(74, 'Uzbekistano'),
(75, 'Vasco'),
(76, 'Vietnamés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficios`
--

CREATE TABLE `oficios` (
  `id_oficios` int(11) NOT NULL COMMENT 'Identificador de Oficios',
  `desc_oficios` varchar(45) NOT NULL COMMENT 'Descripción de Oficios'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con listado de oficios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio_link_usuario`
--

CREATE TABLE `oficio_link_usuario` (
  `id_of_link_us` int(11) NOT NULL COMMENT 'Identificador de tabla',
  `id_oficios` int(11) NOT NULL COMMENT 'Identificador FK de Oficios',
  `id_usuario` int(11) NOT NULL COMMENT 'Identificador FK de Usuarios'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de link entre oficio y usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion`
--

CREATE TABLE `postulacion` (
  `id_postulacion` int(11) NOT NULL COMMENT 'Identificador de Postulación',
  `fecha_postulacion` datetime NOT NULL COMMENT 'Fecha de la postulación',
  `id_usuario_postulante` int(11) NOT NULL COMMENT 'Identificador FK del usuario postulante',
  `id_anuncio` int(11) NOT NULL COMMENT 'Identificador FK del Anuncio',
  `id_estado_postulacion` int(11) NOT NULL COMMENT 'Identificador FK del Estado de Postulación',
  `fecha_cambio_postulacion` datetime NOT NULL COMMENT 'Fecha de cambios en la postulación'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con postulaciones a empleos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `id_profesion` int(11) NOT NULL COMMENT 'Identificador de Profesión',
  `desc_profesion` varchar(45) NOT NULL COMMENT 'Descripción de profesión'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de Profesiones';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion_link_usuario`
--

CREATE TABLE `profesion_link_usuario` (
  `id_prof_link_us` int(11) NOT NULL COMMENT 'Identificador de tabla',
  `id_profesion` int(11) NOT NULL COMMENT 'Identificador FK de profesion',
  `id_usuario` int(11) NOT NULL COMMENT 'Identificador FK de Usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de link entre profesion y usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL COMMENT 'Identificador de Región',
  `desc_region` varchar(45) NOT NULL COMMENT 'Descripción de Region'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con listado de regiones';

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id_region`, `desc_region`) VALUES
(1, 'De Tarapacá'),
(2, 'De Antofagasta'),
(3, 'De Atacama'),
(4, 'De Coquimbo'),
(5, 'De Valparaíso'),
(6, 'Del Libertador B. O\'Higgins'),
(7, 'Del Maule'),
(8, 'Del Bíobío'),
(9, 'De La Araucanía'),
(10, 'De Los Lagos'),
(11, 'De Aisén del Gral. C. Ibáñez del Campo'),
(12, 'De Magallanes y de La Antártica Chilena'),
(13, 'Metropolitana de Santiago'),
(14, 'De Los Ríos'),
(15, 'De Arica y Parinacota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_anuncio`
--

CREATE TABLE `tipo_anuncio` (
  `id_tipo_anuncio` int(11) NOT NULL COMMENT 'Identificador del Tipo de Anuncio',
  `desc_tipo_anuncio` varchar(45) NOT NULL COMMENT 'Descripción del Tipo de Anuncio'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con tipos de anuncios publicados';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL COMMENT 'Identificador del tipo de documento',
  `desc_tipo_documento` varchar(50) NOT NULL COMMENT 'Descripción dle Tipo de Documento'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla con tipos de documentos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL COMMENT 'Identificador del Tipo de Usuario',
  `desc_tipo_usuario` varchar(45) NOT NULL COMMENT 'Descripción del Tipo de Usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tablas con tipos de usuarios';

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `desc_tipo_usuario`) VALUES
(1, 'Postulante'),
(2, 'Empresa'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL COMMENT 'Identificador de Usuario',
  `rut_usuario` varchar(10) NOT NULL COMMENT 'Rut del usuario',
  `status_usuario` tinyint(4) NOT NULL COMMENT 'Estado del usuario, Activo o Inactivo',
  `nombre_usuario` varchar(45) NOT NULL COMMENT 'Nombre del Usuario',
  `segnombre_usuario` varchar(45) DEFAULT NULL COMMENT 'Segundo Nombre del Usuario',
  `ape_paterno_usuario` varchar(45) NOT NULL COMMENT 'Apellido Paterno del Usuario',
  `ape_materno_usuario` varchar(45) DEFAULT NULL COMMENT 'Apellido Materno del Usuario',
  `sexo_usuario` tinyint(4) NOT NULL COMMENT 'Sexo del Usuario',
  `email_usuario` varchar(45) NOT NULL COMMENT 'Email del Usuario',
  `direccion_usario` varchar(45) NOT NULL COMMENT 'Dirección del Usuario',
  `id_comuna` int(11) NOT NULL COMMENT 'Identificador FK de Comuna',
  `fono_cel_usuario` varchar(45) NOT NULL COMMENT 'Teléfono celular del usuario',
  `fono_casa_usuario` varchar(45) DEFAULT NULL COMMENT 'Teléfono de casa del usuario',
  `id_tipo_usuario` int(11) NOT NULL COMMENT 'Identificador FK de Tipo de Usuario',
  `id_curriculum` int(11) DEFAULT NULL COMMENT 'Identificador FK de Currículum',
  `fecha_creacion_usuario` datetime NOT NULL COMMENT 'Fecha de Creación del Usuario',
  `fecha_modificacion_usuario` datetime NOT NULL COMMENT 'Fecha de Modificación del Usuario',
  `nick_usuario` varchar(45) NOT NULL COMMENT 'Username del sistema del usuario',
  `password_usuario` varchar(256) NOT NULL COMMENT 'Clave para usar en el sistema del usuario',
  `foto_path_usuario` varchar(45) DEFAULT NULL COMMENT 'Ubicación de la foto del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tablas con usuarios del sistemas';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `rut_usuario`, `status_usuario`, `nombre_usuario`, `segnombre_usuario`, `ape_paterno_usuario`, `ape_materno_usuario`, `sexo_usuario`, `email_usuario`, `direccion_usario`, `id_comuna`, `fono_cel_usuario`, `fono_casa_usuario`, `id_tipo_usuario`, `id_curriculum`, `fecha_creacion_usuario`, `fecha_modificacion_usuario`, `nick_usuario`, `password_usuario`, `foto_path_usuario`) VALUES
(1, '11111', 1, 'admin', NULL, 'admin', NULL, 1, 'alfredo.figueroa.torres@gmail.com', 'sadsda', 13101, '3', NULL, 3, NULL, '2018-09-06 00:00:00', '2018-09-06 00:00:00', 'admin', 'admin', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id_anuncio`),
  ADD KEY `id_usuario_idx` (`id_usuario`),
  ADD KEY `id_idioma_alter_idx` (`id_idioma_alter`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_region_idx` (`id_region`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `id_ciudad_idx` (`id_ciudad`);

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id_curriculum`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documento`),
  ADD KEY `id_tipo_documento_idx` (`id_tipo_documento`);

--
-- Indices de la tabla `documentos_link_usuarios`
--
ALTER TABLE `documentos_link_usuarios`
  ADD PRIMARY KEY (`id_doc_link_us`),
  ADD KEY `id_documento_link_idx` (`id_documento`),
  ADD KEY `id_usuario_link_idx` (`id_usuario`);

--
-- Indices de la tabla `estado_postulacion`
--
ALTER TABLE `estado_postulacion`
  ADD PRIMARY KEY (`id_estado_postulacion`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `oficios`
--
ALTER TABLE `oficios`
  ADD PRIMARY KEY (`id_oficios`);

--
-- Indices de la tabla `oficio_link_usuario`
--
ALTER TABLE `oficio_link_usuario`
  ADD PRIMARY KEY (`id_of_link_us`),
  ADD KEY `id_oficios_idx` (`id_oficios`),
  ADD KEY `id_usuarios_idx` (`id_usuario`);

--
-- Indices de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD PRIMARY KEY (`id_postulacion`),
  ADD KEY `id_usuario_postulante_idx` (`id_usuario_postulante`),
  ADD KEY `id_anuncio_idx` (`id_anuncio`),
  ADD KEY `id_estado_postulacion_idx` (`id_estado_postulacion`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`id_profesion`);

--
-- Indices de la tabla `profesion_link_usuario`
--
ALTER TABLE `profesion_link_usuario`
  ADD PRIMARY KEY (`id_prof_link_us`),
  ADD KEY `id_profesion_link_idx` (`id_profesion`),
  ADD KEY `id_usuario_link_idx` (`id_usuario`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `tipo_anuncio`
--
ALTER TABLE `tipo_anuncio`
  ADD PRIMARY KEY (`id_tipo_anuncio`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_comuna_idx` (`id_comuna`),
  ADD KEY `id_tipo_usuario_idx` (`id_tipo_usuario`),
  ADD KEY `id_curriculum_idx` (`id_curriculum`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Ciudad', AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id_comuna` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Comuna', AUTO_INCREMENT=15203;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Documento';

--
-- AUTO_INCREMENT de la tabla `documentos_link_usuarios`
--
ALTER TABLE `documentos_link_usuarios`
  MODIFY `id_doc_link_us` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador Tabla Link de Documentos y Usuario';

--
-- AUTO_INCREMENT de la tabla `estado_postulacion`
--
ALTER TABLE `estado_postulacion`
  MODIFY `id_estado_postulacion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del Estado de Postulación', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Idioma', AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `oficios`
--
ALTER TABLE `oficios`
  MODIFY `id_oficios` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Oficios';

--
-- AUTO_INCREMENT de la tabla `oficio_link_usuario`
--
ALTER TABLE `oficio_link_usuario`
  MODIFY `id_of_link_us` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de tabla';

--
-- AUTO_INCREMENT de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  MODIFY `id_postulacion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Postulación';

--
-- AUTO_INCREMENT de la tabla `profesion`
--
ALTER TABLE `profesion`
  MODIFY `id_profesion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Profesión';

--
-- AUTO_INCREMENT de la tabla `profesion_link_usuario`
--
ALTER TABLE `profesion_link_usuario`
  MODIFY `id_prof_link_us` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de tabla';

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del tipo de documento';

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Usuario', AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `id_idioma_alter` FOREIGN KEY (`id_idioma_alter`) REFERENCES `idioma` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `id_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `id_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `id_tipo_documento` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentos_link_usuarios`
--
ALTER TABLE `documentos_link_usuarios`
  ADD CONSTRAINT `id_documento_link` FOREIGN KEY (`id_documento`) REFERENCES `documentos` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_link` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficio_link_usuario`
--
ALTER TABLE `oficio_link_usuario`
  ADD CONSTRAINT `id_oficios_link` FOREIGN KEY (`id_oficios`) REFERENCES `oficios` (`id_oficios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuarios_link` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD CONSTRAINT `id_anuncio` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id_anuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_estado_postulacion` FOREIGN KEY (`id_estado_postulacion`) REFERENCES `estado_postulacion` (`id_estado_postulacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usuario_postulante` FOREIGN KEY (`id_usuario_postulante`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesion_link_usuario`
--
ALTER TABLE `profesion_link_usuario`
  ADD CONSTRAINT `id_profesion_link` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id_profesion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_usuario_link_prof` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_comuna` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id_comuna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_curriculum` FOREIGN KEY (`id_curriculum`) REFERENCES `curriculum` (`id_curriculum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
