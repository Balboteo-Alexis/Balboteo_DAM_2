-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-11-2023 a las 12:03:43
-- Versión del servidor: 10.1.44-MariaDB-0+deb9u1
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_radfpd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_asistentes`
--

CREATE TABLE `sgi_asistentes` (
  `id_asistente` int(11) NOT NULL,
  `id_reunion` int(11) NOT NULL,
  `id_contacto` int(11) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_ciclos`
--

CREATE TABLE `sgi_ciclos` (
  `id_ciclo` int(11) NOT NULL,
  `ciclo` varchar(150) NOT NULL,
  `cod_ciclo` varchar(10) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_familia` int(11) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_ciclos`
--

INSERT INTO `sgi_ciclos` (`id_ciclo`, `ciclo`, `cod_ciclo`, `id_nivel`, `id_familia`, `observaciones`) VALUES
(1, 'Informática de Oficina', 'IO', 1, 16, NULL),
(2, 'Informática y Comunicaciones', 'IC', 1, 16, NULL),
(3, 'Sistemas Microinformáticos y Redes', 'SMR', 2, 16, NULL),
(4, 'Administración de Sistemas Informáticos en Red', 'ASIR', 3, 16, NULL),
(5, 'Desarrollo de Aplicaciones Multiplataforma', 'DAM', 3, 16, NULL),
(6, 'Desarrollo de Aplicaciones Web', 'DAW', 3, 16, NULL),
(7, 'Inteligencia Artificial y Big Data', 'IABD', 4, 16, NULL),
(8, 'Ciberseguridad en Entornos de las Tecnologías de la Información', 'CETI', 4, 16, NULL),
(9, 'Desarrollo de Videojuegos y Realidad Virtual', 'DVRV', 4, 16, NULL),
(10, 'Acceso y Conservación en Instalaciones Deportivas', 'ACID', 1, 1, NULL),
(11, 'Actividades Ecuestres', 'AE', 2, 1, NULL),
(12, 'Guía en el Medio Natural y de Tiempo Libre', 'GMNTL', 2, 1, NULL),
(13, 'Acondicionamiento Físico', 'AF', 3, 1, NULL),
(14, 'Enseñanza y Animación Sociodeportiva', 'EAS', 3, 1, NULL),
(17, 'Servicios Administrativos', 'SA', 1, 2, NULL),
(18, 'Gestión Administrativa', 'GA', 2, 2, NULL),
(19, 'Administración y Finanzas', 'AF', 3, 2, NULL),
(20, 'Asistencia a la Dirección', 'AD', 3, 2, NULL),
(21, 'Actividades Agropecuarias', 'AA', 1, 3, NULL),
(22, 'Agro-jardinería y Composiciones Florales ', 'ACF', 1, 3, NULL),
(23, 'Aprovechamientos Forestales', 'AF', 1, 3, NULL),
(26, 'Actividades Ecuestres 2', 'AE 2', 2, 3, NULL),
(27, 'Aprovechamiento y Conservación del Medio Natural', 'ACMN', 2, 3, NULL),
(28, 'Jardinería y Floristería', 'JF', 2, 3, NULL),
(29, 'Producción Agroecológica', 'PA', 2, 3, NULL),
(30, 'Producción Agropecuaria', 'PA', 2, 3, NULL),
(31, 'Ganadería y Asistencia en Sanidad Animal', 'GASA', 3, 3, NULL),
(32, 'Gestión Forestal y del Medio Natural', 'GFMN', 3, 3, NULL),
(33, 'Paisajismo y Medio Rural', 'PMR', 3, 3, NULL),
(34, 'Informática de Oficina 2', 'IO 2', 1, 2, NULL),
(35, 'Artes Gráficas', 'AG', 1, 4, NULL),
(36, 'Impresión Gráfica', 'IG', 2, 4, NULL),
(37, 'Postimpresión y Acabados Gráficos', 'PAG', 2, 4, NULL),
(38, 'Preimpresión Digital', 'PD', 2, 4, NULL),
(39, 'Diseño y Edición de Publicaciones Impresas y Multimedia', 'DEPIM', 3, 4, NULL),
(40, 'Diseño y Gestión de la Producción Gráfica', 'DGPG', 3, 4, NULL),
(41, 'Artista Fallero y Construcción de Escenografías', 'AFCE', 3, 5, NULL),
(42, 'Servicios Comerciales', 'SC', 1, 6, NULL),
(43, 'Actividades Comerciales', 'AC', 2, 6, NULL),
(44, 'Comercialización de Productos Alimentarios', 'CPA', 2, 6, NULL),
(45, 'Comercio Internacional', 'CI', 3, 6, NULL),
(46, 'Gestión de Ventas y Espacios Comerciales', 'GVEC', 3, 6, NULL),
(47, 'Marketing y Publicidad', 'MP', 3, 6, NULL),
(48, 'Transporte y Logística', 'TL', 3, 6, NULL),
(49, 'Reforma y Mantenimiento de Edificios', 'RME', 1, 7, NULL),
(50, 'Construcción', 'C', 2, 7, NULL),
(51, 'Obras de Interior, Decoración y Rehabilitación', 'OIDR', 2, 7, NULL),
(52, 'Organización y Control de Obras de Construcción', 'OCOC', 3, 7, NULL),
(53, 'Proyectos de Edificación', 'PE', 3, 7, NULL),
(54, 'Proyectos de Obra Civil', 'POC', 3, 7, NULL),
(55, 'Electricidad y Electrónica', 'EE', 1, 8, NULL),
(56, 'Fabricación de Elementos Metálicos ', 'FEM', 1, 8, NULL),
(57, 'Instalaciones Electrotécnicas y Mecánica', 'IEM', 1, 8, NULL),
(58, 'Instalaciones Eléctricas y Automáticas', 'IEA', 2, 8, NULL),
(59, 'Instalaciones de Telecomunicaciones', 'IT', 2, 8, NULL),
(60, 'Automatización y Robótica Industrial', 'ARI', 3, 8, NULL),
(61, 'Electromedicina Clínica', 'EC', 3, 8, NULL),
(62, 'Mantenimiento Electrónico', 'ME', 3, 8, NULL),
(63, 'Sistemas Electrotécnicos y Automatizados', 'SEA', 3, 8, NULL),
(64, 'Sistemas de Telecomunicaciones e Informáticos', 'STI', 3, 8, NULL),
(65, 'Ciberseguridad en Entornos de las Tecnologías de Operación', 'CETO', 4, 8, NULL),
(66, 'Implementación de redes 5G', 'IR5', 4, 8, NULL),
(67, 'Instalación y mantenimiento de sistemas conectados a internet (IoT)', 'IMSCI', 4, 8, NULL),
(68, 'Robótica Colaborativa', 'RC', 4, 8, NULL),
(69, 'Sistemas de señalización y telecomunicaciones ferroviarias', 'SSTF', 4, 8, NULL),
(70, 'Redes y Estaciones de Tratamiento de Aguas', 'RETA', 2, 9, NULL),
(71, 'Centrales Eléctricas', 'CE', 3, 9, NULL),
(72, 'Eficiencia Energética y Energía Solar Térmica', 'EEEST', 3, 9, NULL),
(73, 'Energías Renovables', 'ER', 3, 9, NULL),
(74, 'Gestión del Agua', 'GA', 3, 9, NULL),
(75, 'Auditoría energética', 'AE', 4, 9, NULL),
(77, 'Fabricación de Elementos Metálicos 2', 'FEM 2', 1, 10, NULL),
(78, 'Fabricación y Montaje', 'FM', 1, 10, NULL),
(81, 'Instalaciones Electrotécnicas y Mecánica 2', 'IEM 2', 1, 10, NULL),
(82, 'Conformado por Moldeo de Metales y Polímeros', 'CMMP', 2, 10, NULL),
(83, 'Mecanizado', 'M', 2, 10, NULL),
(84, 'Montaje de Estructuras e Instalación de Sistemas Aeronáuticos', 'MEISA', 2, 10, NULL),
(85, 'Soldadura y Calderería', 'SC', 2, 10, NULL),
(86, 'Construcciones Metálicas', 'CM', 3, 10, NULL),
(87, 'Diseño en Fabricación Mecánica', 'DFM', 3, 10, NULL),
(88, 'Programación de la Producción en Fabricación Mecánica', 'PPFM', 3, 10, NULL),
(89, 'Programación de la Producción en Moldeo de Metales y Polímeros', 'PPMMP', 3, 10, NULL),
(90, 'Fabricación Aditiva', 'FA', 4, 10, NULL),
(91, 'Materiales compuestos en la industria aeroespacial', 'MCIA', 4, 10, NULL),
(92, 'Actividades de Panadería y Pastelería', 'APP', 1, 11, NULL),
(93, 'Alojamiento y Lavandería', 'AL', 1, 11, NULL),
(94, 'Cocina y Restauración', 'CR', 1, 11, NULL),
(95, 'Cocina y Gastronomía', 'CG', 2, 11, NULL),
(97, 'Comercialización de Productos Alimentarios 2', 'CPA 2', 2, 11, NULL),
(98, 'Servicios en Restauración', 'SR', 2, 11, NULL),
(99, 'Agencias de Viajes y Gestión de Eventos', 'AVGE', 3, 11, NULL),
(100, 'Dirección de Cocina', 'DC', 3, 11, NULL),
(101, 'Dirección de Servicios de Restauración', 'DSR', 3, 11, NULL),
(102, 'Gestión de Alojamientos Turísticos', 'GAT', 3, 11, NULL),
(103, 'Guía, Información y Asistencias Turísticas', 'GIAT', 3, 11, NULL),
(104, 'Panadería y Bollería Artesanales', 'PBA', 4, 11, NULL),
(105, 'Peluquería y Estética', 'PE', 1, 12, NULL),
(106, 'Estética y Belleza', 'EB', 2, 12, NULL),
(107, 'Peluquería y Cosmética Capilar', 'PCC', 2, 12, NULL),
(108, 'Asesoría de Imagen Personal y Corporativa', 'AIPC', 3, 12, NULL),
(109, 'Caracterización y Maquillaje Profesional ', 'CMP', 3, 12, NULL),
(110, 'Estilismo y Dirección de Peluquería', 'EDP', 3, 12, NULL),
(111, 'Estética Integral y Bienestar', 'EIB', 3, 12, NULL),
(112, 'Termalismo y Bienestar', 'TB', 3, 12, NULL),
(113, 'Vídeo Disc-Jockey y Sonido', 'VDJS', 2, 13, NULL),
(114, 'Animaciones 3D, Juegos y Entornos Interactivos', 'A3JEI', 3, 13, NULL),
(115, 'Iluminación, Captación y Tratamiento de Imagen', 'ICTI', 3, 13, NULL),
(116, 'Producción de Audiovisuales y Espectáculos', 'PAE', 3, 13, NULL),
(117, 'Realización de Proyectos Audiovisuales y Espectáculos', 'RPAE', 3, 13, NULL),
(118, 'Sonido para Audiovisuales y Espectáculos', 'SAE', 3, 13, NULL),
(119, 'Audiodescripción y Subtitulación', 'AS', 4, 13, NULL),
(121, 'Actividades de Panadería y Pastelería 2', 'APP 2', 1, 14, NULL),
(122, 'Industrias Alimentarias', 'IA', 1, 14, NULL),
(123, 'Aceites de Oliva y Vinos', 'AOV', 2, 14, NULL),
(124, 'Elaboración de Productos Alimenticios', 'EPA', 2, 14, NULL),
(125, 'Panadería, Repostería y Confitería', 'PRC', 2, 14, NULL),
(126, 'Procesos y Calidad en la Industria Alimentaria', 'PCIA', 4, 14, NULL),
(127, 'Vitivinicultura', 'V', 4, 14, NULL),
(128, 'Excavaciones y Sondeos', 'ES', 2, 15, NULL),
(129, 'Piedra Natural', 'PN', 2, 15, NULL),
(131, 'Fabricación y Montaje 2', 'FM 2', 1, 17, NULL),
(132, 'Mantenimiento de Viviendas', 'MV', 1, 17, NULL),
(133, 'Instalaciones Frigoríficas y de Climatización', 'IFC', 2, 17, NULL),
(134, 'Instalaciones de Producción de Calor', 'IPC', 2, 17, NULL),
(135, 'Mantenimiento Electromecánico', 'ME', 2, 17, NULL),
(136, 'Desarrollo de Proyectos de Instalaciones Térmicas y de Fluidos', 'DPITF', 3, 17, NULL),
(137, 'Mantenimiento de Instalaciones Térmicas y de Fluidos', 'MITF', 3, 17, NULL),
(138, 'Mecatrónica Industrial', 'MI', 3, 17, NULL),
(139, 'Digitalización del Mantenimiento Industrial', 'DMI', 4, 17, NULL),
(140, 'Fabricación Inteligente', 'FI', 4, 17, NULL),
(141, 'Modelado de la información en la construcción (BIM)', 'MIC', 4, 17, NULL),
(142, 'Carpintería y Mueble', 'CM', 1, 18, NULL),
(144, 'Carpintería y Mueble 2', 'CM 2', 2, 18, NULL),
(145, 'Instalación y Amueblamiento', 'IA', 2, 18, NULL),
(146, 'Procesado y Transformación de la Madera', 'PTM', 2, 18, NULL),
(147, 'Diseño y Amueblamiento', 'DA', 3, 18, NULL),
(148, 'Actividades Marítimo-Pesqueras', 'AMP', 1, 19, NULL),
(149, 'Mantenimiento de Embarcaciones Deportivas y de Recreo', 'MEDR', 1, 19, NULL),
(150, 'Cultivos Acuícolas', 'CA', 2, 19, NULL),
(151, 'Mantenimiento y Control de la Maquinaria de Buques y Embarcaciones', 'MCMBE', 2, 19, NULL),
(152, 'Navegación y Pesca de Litoral', 'NPL', 2, 19, NULL),
(153, 'Operaciones Subacuáticas e Hiperbáricas', 'OSH', 2, 19, NULL),
(154, 'Acuicultura', 'A', 3, 19, NULL),
(155, 'Organización del Mantenimiento de Maquinaria de Buques y Embarcaciones ', 'OMMBE', 3, 19, NULL),
(156, 'Transporte Marítimo y Pesca de Altura', 'TMPA', 3, 19, NULL),
(157, 'Operaciones de Laboratorio', 'OL', 2, 20, NULL),
(158, 'Planta Química', 'PE', 2, 20, NULL),
(159, 'Fabricación de Productos Farmacéuticos, Biotecnológicos y Afines', 'FPFBA', 3, 20, NULL),
(160, 'Laboratorio de Análisis y de Control de Calidad', 'LACC', 3, 20, NULL),
(161, 'Química Industrial', 'QI', 4, 20, NULL),
(162, 'Cultivos Celulares', 'CC', 3, 20, NULL),
(163, 'Emergencias Sanitarias ', 'ES', 2, 21, NULL),
(164, 'Farmacia y Parafarmacia', 'FP', 2, 21, NULL),
(165, 'Anatomía Patológica y Citodiagnóstico', 'APC', 3, 21, NULL),
(166, 'Audiología Protésica', 'AP', 3, 21, NULL),
(167, 'Documentación y Administración Sanitarias', 'DAS', 3, 21, NULL),
(168, 'Higiene Bucodental', 'HB', 3, 21, NULL),
(169, 'Imagen para el Diagnóstico y Medicina Nuclear', 'IDMN', 3, 21, NULL),
(170, 'Laboratorio Clínico y Biomédico', 'LCB', 3, 21, NULL),
(171, 'Ortoprótesis y Productos de Apoyo', 'OPA', 3, 21, NULL),
(172, 'Prótesis Dentales', 'PD', 3, 21, NULL),
(173, 'Radioterapia y Dosimetría', 'RD', 3, 21, NULL),
(174, 'Emergencias y Protección Civil', 'EPC', 2, 22, NULL),
(175, 'Coordinación de Emergencias y Protección Civil', 'CEPC', 3, 22, NULL),
(176, 'Educación y Control Ambiental', 'ECA', 3, 22, NULL),
(177, 'Química y Salud Ambiental', 'QSA', 3, 22, NULL),
(178, 'Actividades Domésticas y Limpieza de Edificios', 'ADLE', 1, 23, NULL),
(179, 'Atención a Personas en Situación de Dependencia', 'APSD', 2, 23, NULL),
(180, 'Animación Sociocultural y Turística', 'AST', 3, 23, NULL),
(181, 'Educación Infantil', 'EI', 3, 23, NULL),
(182, 'Formación para la Movilidad Segura y Sostenible', 'FMSS', 3, 23, NULL),
(183, 'Integración Social', 'IS', 3, 23, NULL),
(184, 'Mediación Comunicativa', 'MC', 3, 23, NULL),
(185, 'Promoción de Igualdad de Género', 'PSG', 3, 23, NULL),
(186, 'Arreglo y Reparación de Artículos Textiles y de Piel', 'ARATP', 1, 24, NULL),
(187, 'Tapicería y Cortinaje', 'TC', 1, 24, NULL),
(188, 'Calzado y Complementos de Moda', 'CCM', 2, 24, NULL),
(189, 'Confección y Moda', 'CM', 2, 24, NULL),
(190, 'Fabricación y Ennoblecimiento de Productos Textiles', 'FEPT', 2, 24, NULL),
(191, 'Diseño Técnico en Textil y Piel', 'DTTP', 3, 24, NULL),
(192, 'Diseño y Producción de Calzado y Complementos', 'DPCC', 3, 24, NULL),
(193, 'Patronaje y Moda', 'PM', 3, 24, NULL),
(194, 'Vestuario a Medida y de Espectáculos', 'VME', 3, 24, NULL),
(196, 'Mantenimiento de Embarcaciones Deportivas y de Recreo 2', 'MEDR 2', 1, 25, NULL),
(197, 'Mantenimiento de Vehículos', 'MV', 1, 25, NULL),
(198, 'Carrocería', 'C', 2, 25, NULL),
(199, 'Conducción de Vehículos de Transporte por Carretera', 'CVTC', 2, 25, NULL),
(200, 'Electromecánica de Maquinaria', 'EM', 2, 25, NULL),
(201, 'Electromecánica de Vehículos Automóviles', 'EVA', 2, 25, NULL),
(202, 'Mantenimiento de Embarcaciones de Recreo', 'MER', 2, 25, NULL),
(203, 'Mantenimiento de Estructuras de Madera y Mobiliario de Embarcaciones de Recreo', 'MEMMER', 2, 25, NULL),
(204, 'Mantenimiento de Material Rodante Ferroviario', 'MMRF', 2, 25, NULL),
(206, 'Montaje de Estructuras e Instalación de Sistemas Aeronáuticos 2', 'MEISA 2', 2, 25, NULL),
(207, 'Automoción', 'A', 3, 25, NULL),
(208, 'Mantenimiento Aeromecánico de Aviones con Motor de Pistón', 'MAAMP', 3, 25, NULL),
(209, 'Mantenimiento Aeromecánico de Aviones con Motor de Turbina', 'MAAMT', 3, 25, NULL),
(210, 'Mantenimiento Aeromecánico de Helicópteros con Motor de Pistón', 'MAHMP', 3, 25, NULL),
(211, 'Mantenimiento Aeromecánico de Helicópteros con Motor de Turbina', 'MAHMT', 3, 25, NULL),
(212, 'Mantenimiento de Sistemas Electrónicos y Aviónicos de Aeronaves', 'MSEAA', 3, 25, NULL),
(213, 'Mantenimiento de Vehículos Híbridos y Eléctricos', 'MVHE', 4, 25, NULL),
(214, 'Aeronaves pilotadas de forma remota-Drones', 'APFR', 4, 25, NULL),
(215, 'Mantenimiento avanzado de material rodante ferroviario', 'MAMRF', 4, 25, NULL),
(216, 'Mantenimiento y seguridad en sistemas de vehículos híbridos y eléctricos', 'MSSVHE', 4, 25, NULL),
(217, 'Vidriería y Alfarería', 'VA', 1, 26, NULL),
(218, 'Fabricación de Productos Cerámicos', 'FPC', 2, 26, NULL),
(219, 'Desarrollo y Fabricación de Productos Cerámicos', 'DFPC', 3, 26, NULL),
(220, 'Dietética', 'D', 3, 21, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_config`
--

CREATE TABLE `sgi_config` (
  `id_config` int(11) NOT NULL,
  `dato` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_config`
--

INSERT INTO `sgi_config` (`id_config`, `dato`, `valor`) VALUES
(1, 'Superadmin', 'publicacion'),
(2, 'Usuario', 'inicio'),
(3, 'data_email_passwd', '{    \"email\": \"editorial@monsalvez.com\",    \"passwd\": \"%AupaAtleti2017\",    \"host\": \"smtp.gmail.com\",    \"port\": 587,    \"sender\": \"Editorial Monsálvez\"}'),
(4, 'Editorial', 'publicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_contactos`
--

CREATE TABLE `sgi_contactos` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `corporativo_largo` varchar(15) DEFAULT NULL,
  `corporativo_corto` varchar(15) DEFAULT NULL,
  `telefono_personal` varchar(15) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL,
  `id_entidad` int(11) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `id_familia` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_entidades`
--

CREATE TABLE `sgi_entidades` (
  `id_entidad` int(11) NOT NULL,
  `entidad` varchar(50) NOT NULL,
  `id_zona` int(11) NOT NULL,
  `id_contacto` int(11) DEFAULT NULL,
  `id_tipo_entidad` int(11) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_familias`
--

CREATE TABLE `sgi_familias` (
  `id_familia` int(11) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_familias`
--

INSERT INTO `sgi_familias` (`id_familia`, `familia`, `observaciones`) VALUES
(1, 'Actividades Físicas y Deportivas', ''),
(2, 'Administración y Gestión', NULL),
(3, 'Agraria', NULL),
(4, 'Artes Gráficas', NULL),
(5, 'Artes y Artesanía', NULL),
(6, 'Comercio y Marketing', NULL),
(7, 'Edificación y Obra Civil', NULL),
(8, 'Electricidad y Electrónica', NULL),
(9, 'Energía y Agua', NULL),
(10, 'Fabricación Mecánica', NULL),
(11, 'Hostelería y Turismo', NULL),
(12, 'Imagen Personal', NULL),
(13, 'Imagen y Sonido', NULL),
(14, 'Industrias Alimentarias', NULL),
(15, 'Industtrias Extractivas', NULL),
(16, 'Informática y Comunicaciones', NULL),
(17, 'Instalación y Mantenimiento', NULL),
(18, 'Madera, Mueble y Corcho', NULL),
(19, 'Marítimo Pesquera', NULL),
(20, 'Química', NULL),
(21, 'Sanidad', NULL),
(22, 'Seguridad y Medio Ambiente', NULL),
(23, 'Servicios Socioculturales y a la Comunidad', NULL),
(24, 'Textil, Confección y Piel', NULL),
(25, 'Transporte y Mantenimiento de Vehículos', NULL),
(26, 'Vidrio y Cerámica', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_grupos_menu`
--

CREATE TABLE `sgi_grupos_menu` (
  `id_grupo_menu` int(11) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_grupos_menu`
--

INSERT INTO `sgi_grupos_menu` (`id_grupo_menu`, `grupo`, `orden`, `observaciones`) VALUES
(1, 'Menú', 3, ''),
(5, 'Inicio', 1, ''),
(6, 'Configuración', 4, ''),
(10, 'Mantenimiento', 5, ''),
(19, 'FP Dual', 2, ''),
(20, 'Títulos FP', 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_historico_opciones`
--

CREATE TABLE `sgi_historico_opciones` (
  `id_historial` int(11) NOT NULL,
  `id_opcion_menu` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_logs`
--

CREATE TABLE `sgi_logs` (
  `id_log` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(255) DEFAULT NULL,
  `id_tipo_log` int(11) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_modos_reunion`
--

CREATE TABLE `sgi_modos_reunion` (
  `id_modo_reunion` int(11) NOT NULL,
  `modo_reunion` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_modos_reunion`
--

INSERT INTO `sgi_modos_reunion` (`id_modo_reunion`, `modo_reunion`, `observaciones`) VALUES
(1, 'Presencial', NULL),
(2, 'Telemática', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_motivos_nodual`
--

CREATE TABLE `sgi_motivos_nodual` (
  `id_motivo_nodual` int(11) NOT NULL,
  `id_tipo_entidad` int(11) NOT NULL,
  `motivo_nodual` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_motivos_nodual`
--

INSERT INTO `sgi_motivos_nodual` (`id_motivo_nodual`, `id_tipo_entidad`, `motivo_nodual`, `observaciones`) VALUES
(1, 1, 'Alta rotación profesorado', NULL),
(2, 2, 'No quiere becar', NULL),
(3, 1, 'Negativa del equipo educativo', NULL),
(4, 1, 'Negativa del equipo directivo', NULL),
(5, 1, 'Sin plazas en empresas', NULL),
(6, 2, 'Tareas demasiado especializadas', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_motivos_reunion`
--

CREATE TABLE `sgi_motivos_reunion` (
  `id_motivo_reunion` int(11) NOT NULL,
  `motivo_reunion` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_motivos_reunion`
--

INSERT INTO `sgi_motivos_reunion` (`id_motivo_reunion`, `motivo_reunion`, `observaciones`) VALUES
(1, 'Prospección', NULL),
(2, 'Organización', NULL),
(3, 'Formación', ''),
(4, 'Promoción FP Dual', ''),
(5, 'Difusion', NULL),
(6, 'Ferias y Eventos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_niveles`
--

CREATE TABLE `sgi_niveles` (
  `id_nivel` int(11) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `cod_nivel` varchar(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_niveles`
--

INSERT INTO `sgi_niveles` (`id_nivel`, `nivel`, `cod_nivel`, `titulo`, `observaciones`) VALUES
(1, 'Grado Básico', 'GB', 'Titulo Profesional Básico en', NULL),
(2, 'Grado Medio', 'GM', 'Técnico en', NULL),
(3, 'Grado Superior', 'GS', 'Técnico Superior en', NULL),
(4, 'Curso de Especialización', 'CE', 'Curso de Especialización en', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_opciones_menu`
--

CREATE TABLE `sgi_opciones_menu` (
  `id_opcion_menu` int(11) NOT NULL,
  `opcion` varchar(100) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `texto_tooltip` varchar(255) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_opciones_menu`
--

INSERT INTO `sgi_opciones_menu` (`id_opcion_menu`, `opcion`, `accion`, `texto_tooltip`, `observaciones`) VALUES
(1, 'Grupos', 'grupos', 'Categorías superiores del menú', NULL),
(2, 'Opciones', 'opciones', 'Opciones desplegadas de cada grupo', NULL),
(3, 'Roles', 'roles', 'Administrador, usuario...', NULL),
(4, 'Roles de menú', 'roles-menu', 'Configuración de menú para cada rol', NULL),
(7, 'Usuarios', 'usuarios', 'Listar usuarios', ''),
(8, 'Registros', 'logs', 'Ver las cosas que pasan', ''),
(9, 'Inicio', 'inicio', 'veo inicio', ''),
(10, 'Perfil', 'perfil', 'Ver perfil de usuario', ''),
(39, 'Zonas', 'zonas', 'Zonas CEP y añadidas', ''),
(40, 'Tipos de entidad', 'tipos-entidad', 'Empresas, Centros educativos, etc', ''),
(41, 'Modos de reunión', 'modos-reunion', 'Presencial, telemática, etc', 'a'),
(42, 'Motivos de reunión', 'motivos-reunion', 'Captación de puestos, formación, etc', ''),
(43, 'Entidades', 'entidades', 'Empresas, Centros educativos, etc', ''),
(44, 'Contactos/Direcciones', 'contactos', 'Direcciones y contactos', ''),
(45, 'Reuniones/Agenda', 'reuniones', 'Reuniones, asistentes, resultados, etc', ''),
(46, 'Familias Profesionales', 'familias', '', ''),
(47, 'Niveles', 'niveles', 'Niveles de los títulos de FP', NULL),
(48, 'Unidades Dual', 'unidades-dual', 'Indica el estado Dual de la unidad', NULL),
(49, 'Títulos de CF y CE', 'ciclos', 'Títulos de Ciclos Formativos y Cursos de especialización', NULL),
(50, 'Motivo Nodual', 'motivos-nodual', 'Indica porqué un ciclo no se ha dualizado', NULL),
(51, 'Unidades CF', 'unidades', 'Relación de Unidades de CF en Entidades y Empresas', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_provincias`
--

CREATE TABLE `sgi_provincias` (
  `id_provincia` int(11) NOT NULL,
  `ine_provincia` int(11) NOT NULL DEFAULT '0',
  `siglas_provincia` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sgi_provincias`
--

INSERT INTO `sgi_provincias` (`id_provincia`, `ine_provincia`, `siglas_provincia`, `provincia`, `observaciones`) VALUES
(33, 3, 'A', 'Alicante/Alacant', NULL),
(34, 4, 'AL', 'Almería', NULL),
(35, 1, 'VI', 'Araba/Álava', NULL),
(36, 33, 'O', 'Asturias', NULL),
(37, 5, 'AV', 'Ávila', NULL),
(38, 6, 'BA', 'Badajoz', NULL),
(39, 7, 'IB', 'Balears, Illes', NULL),
(40, 8, 'B', 'Barcelona', NULL),
(41, 48, 'BI', 'Bizkaia', NULL),
(42, 9, 'BU', 'Burgos', NULL),
(43, 10, 'CC', 'Cáceres', NULL),
(44, 11, 'CA', 'Cádiz', NULL),
(45, 39, 'S', 'Cantabria', NULL),
(46, 12, 'CS', 'Castellón/Castelló', NULL),
(47, 13, 'CR', 'Ciudad Real', NULL),
(48, 14, 'CO', 'Córdoba', NULL),
(49, 15, 'C', 'Coruña, A', NULL),
(50, 16, 'CU', 'Cuenca', NULL),
(51, 20, 'SS', 'Gipuzkoa', NULL),
(52, 17, 'GI', 'Girona', NULL),
(53, 18, 'GR', 'Granada', NULL),
(54, 19, 'GU', 'Guadalajara', NULL),
(55, 21, 'H', 'Huelva', NULL),
(56, 22, 'HU', 'Huesca', NULL),
(57, 23, 'J', 'Jaén', NULL),
(58, 24, 'LE', 'León', NULL),
(59, 25, 'L', 'Lleida', NULL),
(60, 27, 'LU', 'Lugo', NULL),
(61, 28, 'M', 'Madrid', NULL),
(62, 29, 'MA', 'Málaga', NULL),
(63, 30, 'MU', 'Murcia', NULL),
(64, 31, 'NA', 'Navarra', NULL),
(65, 32, 'OU', 'Ourense', NULL),
(66, 34, 'P', 'Palencia', NULL),
(67, 35, 'GC', 'Palmas, Las', NULL),
(68, 36, 'PO', 'Pontevedra', NULL),
(69, 26, 'LO', 'Rioja, La', NULL),
(70, 37, 'SA', 'Salamanca', NULL),
(71, 38, 'TF', 'Santa Cruz de Tenerife', NULL),
(72, 40, 'SG', 'Segovia', NULL),
(73, 41, 'SE', 'Sevilla', NULL),
(74, 42, 'SO', 'Soria', NULL),
(75, 43, 'T', 'Tarragona', NULL),
(76, 44, 'TE', 'Teruel', NULL),
(77, 45, 'TO', 'Toledo', NULL),
(78, 46, 'V', 'Valencia/València', NULL),
(79, 47, 'VA', 'Valladolid', NULL),
(80, 49, 'ZA', 'Zamora', NULL),
(81, 50, 'Z', 'Zaragoza', NULL),
(82, 51, 'CE', 'Ceuta', NULL),
(83, 52, 'ML', 'Melilla', NULL),
(84, 2, 'AB', 'Albacete', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_reuniones`
--

CREATE TABLE `sgi_reuniones` (
  `id_reunion` int(11) NOT NULL,
  `id_contacto` int(11) DEFAULT NULL,
  `id_modo_reunion` int(11) NOT NULL COMMENT 'telemática, presencial..',
  `id_motivo_reunion` int(11) NOT NULL,
  `id_entidad_target` int(11) DEFAULT NULL,
  `id_zona` int(11) NOT NULL,
  `objetivo` text,
  `resultado` text,
  `observaciones` text,
  `reunion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `ubicacion` varchar(250) DEFAULT NULL COMMENT 'url, nombre del sitio, direccion completa, etc',
  `localidad` varchar(50) NOT NULL DEFAULT 'Málaga'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_roles`
--

CREATE TABLE `sgi_roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `id_opcion_menu` int(11) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_roles`
--

INSERT INTO `sgi_roles` (`id_rol`, `rol`, `id_opcion_menu`, `observaciones`) VALUES
(1, 'Superadmin', 9, NULL),
(2, 'Usuario', 9, 'test'),
(13, 'Dinamizadoress', 9, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_rol_menu`
--

CREATE TABLE `sgi_rol_menu` (
  `id_rol_menu` int(11) NOT NULL,
  `id_opcion_menu` int(11) DEFAULT NULL,
  `id_grupo_menu` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `permiso_post` tinyint(1) NOT NULL DEFAULT '0',
  `permiso_put` tinyint(1) NOT NULL DEFAULT '0',
  `permiso_delete` tinyint(1) NOT NULL DEFAULT '0',
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_rol_menu`
--

INSERT INTO `sgi_rol_menu` (`id_rol_menu`, `id_opcion_menu`, `id_grupo_menu`, `id_rol`, `permiso_post`, `permiso_put`, `permiso_delete`, `observaciones`) VALUES
(1, 1, 1, 1, 0, 0, 0, 'test'),
(2, 2, 1, 1, 0, 0, 0, NULL),
(3, 3, 1, 1, 0, 0, 0, NULL),
(4, 4, 1, 1, 0, 0, 0, NULL),
(8, 9, 5, 1, 0, 0, 0, ''),
(15, 10, 6, 1, 0, 0, 0, ''),
(20, 10, 6, 2, 0, 0, 0, ''),
(48, 7, 6, 1, 1, 1, 1, ''),
(49, 8, 6, 1, 1, 1, 1, ''),
(60, 41, 10, 1, 1, 1, 1, ''),
(61, 42, 10, 1, 1, 1, 1, ''),
(62, 40, 10, 1, 1, 1, 1, ''),
(63, 39, 10, 1, 1, 1, 1, ''),
(64, 43, 19, 1, 1, 1, 1, ''),
(65, 44, 19, 1, 1, 1, 1, ''),
(66, 45, 19, 1, 1, 1, 1, ''),
(68, 9, 5, 2, 0, 0, 0, NULL),
(69, 43, 19, 2, 0, 0, 0, NULL),
(70, 44, 19, 2, 0, 0, 0, NULL),
(71, 45, 19, 2, 0, 0, 0, NULL),
(72, 46, 20, 1, 1, 1, 1, NULL),
(73, 47, 20, 1, 1, 1, 1, NULL),
(74, 48, 20, 1, 1, 1, 1, NULL),
(75, 49, 20, 1, 1, 1, 1, NULL),
(76, 51, 19, 2, 1, 1, 1, NULL),
(77, 51, 19, 1, 1, 1, 1, NULL),
(78, 50, 20, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_tipos_entidad`
--

CREATE TABLE `sgi_tipos_entidad` (
  `id_tipo_entidad` int(11) NOT NULL,
  `tipo_entidad` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_tipos_entidad`
--

INSERT INTO `sgi_tipos_entidad` (`id_tipo_entidad`, `tipo_entidad`, `observaciones`) VALUES
(1, 'Centro Educativo', ''),
(2, 'Empresa Privada', ''),
(3, 'Administración Pública', ''),
(4, 'Organización', ''),
(5, 'Empresa Pública', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_tipos_log`
--

CREATE TABLE `sgi_tipos_log` (
  `id_tipo_log` int(11) NOT NULL,
  `tipo_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_tipos_log`
--

INSERT INTO `sgi_tipos_log` (`id_tipo_log`, `tipo_log`) VALUES
(1, 'Acceso'),
(2, 'Error'),
(3, 'Aplicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_unidades`
--

CREATE TABLE `sgi_unidades` (
  `id_unidad` int(11) NOT NULL,
  `id_entidad` int(11) NOT NULL,
  `id_ciclo` int(11) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `plazas` int(11) NOT NULL DEFAULT '0',
  `id_unidad_dual` int(11) NOT NULL,
  `id_motivo_nodual` int(11) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_unidades`
--

INSERT INTO `sgi_unidades` (`id_unidad`, `id_entidad`, `id_ciclo`, `unidad`, `plazas`, `id_unidad_dual`, `id_motivo_nodual`, `observaciones`) VALUES
(12, 5, 5, 'Dev', 50, 3, NULL, NULL),
(18, 5, 6, 'Dev', 50, 3, NULL, NULL),
(19, 5, 4, 'Sys admin', 20, 3, NULL, NULL),
(20, 21, 5, 'Dev', 30, 3, NULL, NULL),
(21, 21, 6, 'Dev', 30, 3, NULL, NULL),
(22, 21, 4, 'Sys admin', 20, 3, NULL, NULL),
(23, 6, 5, 'A', 0, 1, 3, NULL),
(24, 6, 6, 'A', 0, 1, 3, NULL),
(25, 6, 3, 'A', 0, 1, 3, NULL),
(26, 6, 2, 'A', 0, 1, 3, NULL),
(27, 6, 201, 'A', 10, 2, NULL, NULL),
(28, 6, 207, 'A', 20, 3, NULL, NULL),
(29, 6, 213, 'A', 20, 3, NULL, NULL),
(30, 11, 3, 'A', 30, 4, NULL, NULL),
(31, 11, 4, 'A', 20, 2, NULL, NULL),
(32, 80, 8, 'Ciber', 20, 3, NULL, NULL),
(33, 80, 65, 'Ciber', 10, 3, NULL, NULL),
(34, 80, 5, 'Dev', 20, 3, NULL, NULL),
(35, 80, 6, 'Dev', 20, 3, NULL, NULL),
(36, 80, 4, 'IT', 35, 3, NULL, NULL),
(37, 96, 19, 'Administración', 1, 2, NULL, NULL),
(38, 96, 62, 'Planta', 2, 2, NULL, NULL),
(39, 125, 43, '1', 30, 1, 1, 'Falta de estabilidad plantilla. Personal fijo próximo a jubilación'),
(40, 125, 17, '1', 15, 1, 1, NULL),
(41, 78, 18, '2', 60, 1, NULL, NULL),
(42, 78, 19, '1', 30, 1, NULL, NULL),
(43, 78, 6, '1', 30, 1, NULL, NULL),
(44, 78, 51, '1', 30, 2, NULL, NULL),
(45, 78, 22, '1', 15, 1, NULL, NULL),
(46, 78, 55, '1', 15, 1, NULL, NULL),
(47, 78, 58, '1', 30, 1, NULL, NULL),
(48, 79, 27, '1', 30, 2, NULL, NULL),
(49, 79, 29, '1', 30, 1, NULL, 'Ciclo \'Bianual\'. Un curso se oferta 1º y al siguiente sólo 2º'),
(50, 126, 49, '1', 15, 1, NULL, NULL),
(51, 129, 169, '1', 30, 1, NULL, 'Se pretende dualizar curso próximo'),
(52, 129, 170, '1', 30, 1, NULL, 'Se pretende dualizar curso próximo'),
(53, 132, 178, '1', 15, 2, NULL, NULL),
(54, 132, 179, '2', 60, 2, NULL, '1 grupo dual mixto'),
(55, 132, 124, '1', 30, 2, NULL, NULL),
(56, 132, 174, '1', 30, 2, NULL, NULL),
(57, 132, 127, '1', 30, 2, NULL, NULL),
(58, 132, 126, '1', 30, 2, NULL, NULL),
(59, 132, 180, '1', 30, 2, NULL, NULL),
(60, 132, 181, '2', 60, 1, NULL, NULL),
(61, 132, 183, '1', 30, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_unidades_dual`
--

CREATE TABLE `sgi_unidades_dual` (
  `id_unidad_dual` int(11) NOT NULL,
  `unidad_dual` varchar(50) NOT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_unidades_dual`
--

INSERT INTO `sgi_unidades_dual` (`id_unidad_dual`, `unidad_dual`, `observaciones`) VALUES
(1, 'No', NULL),
(2, 'Mixto', NULL),
(3, '100%', NULL),
(4, 'Incubación', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_usuarios`
--

CREATE TABLE `sgi_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `nombre_publico` varchar(255) DEFAULT NULL,
  `pass_user` varchar(100) NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  `token_sesion` varchar(250) DEFAULT NULL,
  `token_passwd` varchar(255) DEFAULT NULL,
  `token_passwd_expira` datetime DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sgi_usuarios`
--

INSERT INTO `sgi_usuarios` (`id_usuario`, `usuario`, `nombre_publico`, `pass_user`, `id_rol`, `habilitado`, `token_sesion`, `token_passwd`, `token_passwd_expira`, `observaciones`) VALUES
(61, 'dam2@iesplayamar.es', NULL, 'b9266f26d51e509ffc0ade6f28472843', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `sgi_vista_logs`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `sgi_vista_logs` (
`id_log` int(11)
,`fecha` datetime
,`usuario` varchar(255)
,`id_tipo_log` int(11)
,`contenido` text
,`tipo_log` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `sgi_vista_rol_menu`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `sgi_vista_rol_menu` (
`id_rol_menu` int(11)
,`id_opcion_menu` int(11)
,`id_grupo_menu` int(11)
,`id_rol` int(11)
,`observaciones` text
,`opcion` varchar(100)
,`accion` varchar(100)
,`texto_tooltip` varchar(255)
,`grupo` varchar(50)
,`rol` varchar(50)
,`orden` int(11)
,`permiso_post` int(4)
,`permiso_put` int(4)
,`permiso_delete` int(4)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_zonas`
--

CREATE TABLE `sgi_zonas` (
  `id_zona` int(11) NOT NULL,
  `zona` varchar(100) NOT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_zonas`
--

INSERT INTO `sgi_zonas` (`id_zona`, `zona`, `id_provincia`, `observaciones`) VALUES
(1, 'CEP Málaga', NULL, ''),
(4, 'CEP Antequera', NULL, ''),
(5, 'Andalucía', NULL, ''),
(6, 'Provincia Málaga', NULL, ''),
(7, 'CEP Marbella-Coín', NULL, ''),
(8, 'CEP Ronda', NULL, ''),
(9, 'CEP Axarquía', NULL, '');

-- --------------------------------------------------------

--
-- Estructura para la vista `sgi_vista_logs`
--
DROP TABLE IF EXISTS `sgi_vista_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sgi_vista_logs`  AS  select `l`.`id_log` AS `id_log`,`l`.`fecha` AS `fecha`,`l`.`usuario` AS `usuario`,`l`.`id_tipo_log` AS `id_tipo_log`,`l`.`contenido` AS `contenido`,`tl`.`tipo_log` AS `tipo_log` from (`sgi_logs` `l` join `sgi_tipos_log` `tl` on((`l`.`id_tipo_log` = `tl`.`id_tipo_log`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `sgi_vista_rol_menu`
--
DROP TABLE IF EXISTS `sgi_vista_rol_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sgi_vista_rol_menu`  AS  select `rm`.`id_rol_menu` AS `id_rol_menu`,`rm`.`id_opcion_menu` AS `id_opcion_menu`,`rm`.`id_grupo_menu` AS `id_grupo_menu`,`rm`.`id_rol` AS `id_rol`,`rm`.`observaciones` AS `observaciones`,`op`.`opcion` AS `opcion`,`op`.`accion` AS `accion`,`op`.`texto_tooltip` AS `texto_tooltip`,`gp`.`grupo` AS `grupo`,`pr`.`rol` AS `rol`,`gp`.`orden` AS `orden`,if((`rm`.`id_rol` = (select `sgi_roles`.`id_rol` from `sgi_roles` where (`sgi_roles`.`rol` = 'Superadmin'))),1,`rm`.`permiso_post`) AS `permiso_post`,if((`rm`.`id_rol` = (select `sgi_roles`.`id_rol` from `sgi_roles` where (`sgi_roles`.`rol` = 'Superadmin'))),1,`rm`.`permiso_put`) AS `permiso_put`,if((`rm`.`id_rol` = (select `sgi_roles`.`id_rol` from `sgi_roles` where (`sgi_roles`.`rol` = 'Superadmin'))),1,`rm`.`permiso_delete`) AS `permiso_delete` from (((`sgi_rol_menu` `rm` join `sgi_opciones_menu` `op`) join `sgi_grupos_menu` `gp`) join `sgi_roles` `pr`) where ((1 = 1) and (`rm`.`id_opcion_menu` = `op`.`id_opcion_menu`) and (`rm`.`id_grupo_menu` = `gp`.`id_grupo_menu`) and (`rm`.`id_rol` = `pr`.`id_rol`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sgi_asistentes`
--
ALTER TABLE `sgi_asistentes`
  ADD PRIMARY KEY (`id_asistente`),
  ADD UNIQUE KEY `contactoXreunion_unico` (`id_reunion`,`id_contacto`),
  ADD KEY `id_reunion` (`id_reunion`),
  ADD KEY `id_contacto` (`id_contacto`);

--
-- Indices de la tabla `sgi_ciclos`
--
ALTER TABLE `sgi_ciclos`
  ADD PRIMARY KEY (`id_ciclo`),
  ADD UNIQUE KEY `ciclo_unico` (`ciclo`),
  ADD KEY `id_familia` (`id_familia`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `sgi_config`
--
ALTER TABLE `sgi_config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indices de la tabla `sgi_contactos`
--
ALTER TABLE `sgi_contactos`
  ADD PRIMARY KEY (`id_contacto`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_provincia` (`id_provincia`),
  ADD KEY `sgi_contactos_ibfk_2` (`id_entidad`),
  ADD KEY `id_familia` (`id_familia`);

--
-- Indices de la tabla `sgi_entidades`
--
ALTER TABLE `sgi_entidades`
  ADD PRIMARY KEY (`id_entidad`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_tipo_entidad` (`id_tipo_entidad`),
  ADD KEY `id_provincia` (`id_provincia`),
  ADD KEY `id_contacto` (`id_contacto`);

--
-- Indices de la tabla `sgi_familias`
--
ALTER TABLE `sgi_familias`
  ADD PRIMARY KEY (`id_familia`);

--
-- Indices de la tabla `sgi_grupos_menu`
--
ALTER TABLE `sgi_grupos_menu`
  ADD PRIMARY KEY (`id_grupo_menu`),
  ADD UNIQUE KEY `grupo` (`grupo`);

--
-- Indices de la tabla `sgi_historico_opciones`
--
ALTER TABLE `sgi_historico_opciones`
  ADD PRIMARY KEY (`id_historial`),
  ADD UNIQUE KEY `id_opcion_menu` (`id_opcion_menu`,`id_usuario`,`fecha`),
  ADD KEY `sgi_historico_opciones_ibfk_2` (`id_usuario`);

--
-- Indices de la tabla `sgi_logs`
--
ALTER TABLE `sgi_logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_tipo_log` (`id_tipo_log`);

--
-- Indices de la tabla `sgi_modos_reunion`
--
ALTER TABLE `sgi_modos_reunion`
  ADD PRIMARY KEY (`id_modo_reunion`);

--
-- Indices de la tabla `sgi_motivos_nodual`
--
ALTER TABLE `sgi_motivos_nodual`
  ADD PRIMARY KEY (`id_motivo_nodual`),
  ADD UNIQUE KEY `motivo_unico_tipo_entidad` (`motivo_nodual`,`id_tipo_entidad`),
  ADD KEY `id_tipo_entidad` (`id_tipo_entidad`);

--
-- Indices de la tabla `sgi_motivos_reunion`
--
ALTER TABLE `sgi_motivos_reunion`
  ADD PRIMARY KEY (`id_motivo_reunion`);

--
-- Indices de la tabla `sgi_niveles`
--
ALTER TABLE `sgi_niveles`
  ADD PRIMARY KEY (`id_nivel`),
  ADD UNIQUE KEY `nivel_unico` (`nivel`),
  ADD UNIQUE KEY `cod_nivel_unico` (`cod_nivel`),
  ADD UNIQUE KEY `titulo_unico` (`titulo`);

--
-- Indices de la tabla `sgi_opciones_menu`
--
ALTER TABLE `sgi_opciones_menu`
  ADD PRIMARY KEY (`id_opcion_menu`);

--
-- Indices de la tabla `sgi_provincias`
--
ALTER TABLE `sgi_provincias`
  ADD PRIMARY KEY (`id_provincia`),
  ADD UNIQUE KEY `provincia` (`provincia`),
  ADD UNIQUE KEY `cod_provincia` (`ine_provincia`);

--
-- Indices de la tabla `sgi_reuniones`
--
ALTER TABLE `sgi_reuniones`
  ADD PRIMARY KEY (`id_reunion`),
  ADD KEY `id_modo_reunion` (`id_modo_reunion`),
  ADD KEY `id_motivo_reunion` (`id_motivo_reunion`),
  ADD KEY `id_entidad_target` (`id_entidad_target`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_contacto` (`id_contacto`);

--
-- Indices de la tabla `sgi_roles`
--
ALTER TABLE `sgi_roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_opcion_menu` (`id_opcion_menu`);

--
-- Indices de la tabla `sgi_rol_menu`
--
ALTER TABLE `sgi_rol_menu`
  ADD PRIMARY KEY (`id_rol_menu`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_grupo_menu` (`id_grupo_menu`),
  ADD KEY `id_opcion_menu` (`id_opcion_menu`);

--
-- Indices de la tabla `sgi_tipos_entidad`
--
ALTER TABLE `sgi_tipos_entidad`
  ADD PRIMARY KEY (`id_tipo_entidad`);

--
-- Indices de la tabla `sgi_tipos_log`
--
ALTER TABLE `sgi_tipos_log`
  ADD PRIMARY KEY (`id_tipo_log`);

--
-- Indices de la tabla `sgi_unidades`
--
ALTER TABLE `sgi_unidades`
  ADD PRIMARY KEY (`id_unidad`),
  ADD UNIQUE KEY `unidad_unica` (`id_entidad`,`id_ciclo`,`unidad`),
  ADD KEY `id_entidad` (`id_entidad`),
  ADD KEY `id_ciclo` (`id_ciclo`),
  ADD KEY `id_unidad_dual` (`id_unidad_dual`),
  ADD KEY `id_motivo_nodual` (`id_motivo_nodual`);

--
-- Indices de la tabla `sgi_unidades_dual`
--
ALTER TABLE `sgi_unidades_dual`
  ADD PRIMARY KEY (`id_unidad_dual`),
  ADD UNIQUE KEY `unidad_dual_unica` (`unidad_dual`);

--
-- Indices de la tabla `sgi_usuarios`
--
ALTER TABLE `sgi_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `token_sesion` (`token_sesion`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `sgi_zonas`
--
ALTER TABLE `sgi_zonas`
  ADD PRIMARY KEY (`id_zona`),
  ADD UNIQUE KEY `zona_unica` (`zona`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sgi_asistentes`
--
ALTER TABLE `sgi_asistentes`
  MODIFY `id_asistente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_ciclos`
--
ALTER TABLE `sgi_ciclos`
  MODIFY `id_ciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `sgi_config`
--
ALTER TABLE `sgi_config`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sgi_contactos`
--
ALTER TABLE `sgi_contactos`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_entidades`
--
ALTER TABLE `sgi_entidades`
  MODIFY `id_entidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_familias`
--
ALTER TABLE `sgi_familias`
  MODIFY `id_familia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `sgi_grupos_menu`
--
ALTER TABLE `sgi_grupos_menu`
  MODIFY `id_grupo_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sgi_historico_opciones`
--
ALTER TABLE `sgi_historico_opciones`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_logs`
--
ALTER TABLE `sgi_logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_modos_reunion`
--
ALTER TABLE `sgi_modos_reunion`
  MODIFY `id_modo_reunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sgi_motivos_nodual`
--
ALTER TABLE `sgi_motivos_nodual`
  MODIFY `id_motivo_nodual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sgi_motivos_reunion`
--
ALTER TABLE `sgi_motivos_reunion`
  MODIFY `id_motivo_reunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sgi_niveles`
--
ALTER TABLE `sgi_niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sgi_opciones_menu`
--
ALTER TABLE `sgi_opciones_menu`
  MODIFY `id_opcion_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `sgi_provincias`
--
ALTER TABLE `sgi_provincias`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `sgi_reuniones`
--
ALTER TABLE `sgi_reuniones`
  MODIFY `id_reunion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgi_roles`
--
ALTER TABLE `sgi_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `sgi_rol_menu`
--
ALTER TABLE `sgi_rol_menu`
  MODIFY `id_rol_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `sgi_tipos_entidad`
--
ALTER TABLE `sgi_tipos_entidad`
  MODIFY `id_tipo_entidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sgi_tipos_log`
--
ALTER TABLE `sgi_tipos_log`
  MODIFY `id_tipo_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sgi_unidades`
--
ALTER TABLE `sgi_unidades`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `sgi_unidades_dual`
--
ALTER TABLE `sgi_unidades_dual`
  MODIFY `id_unidad_dual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sgi_usuarios`
--
ALTER TABLE `sgi_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `sgi_zonas`
--
ALTER TABLE `sgi_zonas`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sgi_asistentes`
--
ALTER TABLE `sgi_asistentes`
  ADD CONSTRAINT `sgi_asistentes_ibfk_1` FOREIGN KEY (`id_reunion`) REFERENCES `sgi_reuniones` (`id_reunion`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_asistentes_ibfk_2` FOREIGN KEY (`id_contacto`) REFERENCES `sgi_contactos` (`id_contacto`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_ciclos`
--
ALTER TABLE `sgi_ciclos`
  ADD CONSTRAINT `sgi_ciclos_ibfk_1` FOREIGN KEY (`id_familia`) REFERENCES `sgi_familias` (`id_familia`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_ciclos_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `sgi_niveles` (`id_nivel`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_contactos`
--
ALTER TABLE `sgi_contactos`
  ADD CONSTRAINT `sgi_contactos_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `sgi_zonas` (`id_zona`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_contactos_ibfk_2` FOREIGN KEY (`id_entidad`) REFERENCES `sgi_entidades` (`id_entidad`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_contactos_ibfk_3` FOREIGN KEY (`id_provincia`) REFERENCES `sgi_provincias` (`id_provincia`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_contactos_ibfk_4` FOREIGN KEY (`id_familia`) REFERENCES `sgi_familias` (`id_familia`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_entidades`
--
ALTER TABLE `sgi_entidades`
  ADD CONSTRAINT `sgi_entidades_ibfk_1` FOREIGN KEY (`id_tipo_entidad`) REFERENCES `sgi_tipos_entidad` (`id_tipo_entidad`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_entidades_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `sgi_zonas` (`id_zona`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_entidades_ibfk_3` FOREIGN KEY (`id_provincia`) REFERENCES `sgi_provincias` (`id_provincia`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_entidades_ibfk_4` FOREIGN KEY (`id_contacto`) REFERENCES `sgi_contactos` (`id_contacto`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_historico_opciones`
--
ALTER TABLE `sgi_historico_opciones`
  ADD CONSTRAINT `FK_DCD3693FFCF8192D` FOREIGN KEY (`id_usuario`) REFERENCES `sgi_usuarios` (`id_usuario`),
  ADD CONSTRAINT `sgi_historico_opciones_ibfk_1` FOREIGN KEY (`id_opcion_menu`) REFERENCES `sgi_opciones_menu` (`id_opcion_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_logs`
--
ALTER TABLE `sgi_logs`
  ADD CONSTRAINT `sgi_logs_ibfk_2` FOREIGN KEY (`id_tipo_log`) REFERENCES `sgi_tipos_log` (`id_tipo_log`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_motivos_nodual`
--
ALTER TABLE `sgi_motivos_nodual`
  ADD CONSTRAINT `sgi_motivos_nodual_ibfk_1` FOREIGN KEY (`id_tipo_entidad`) REFERENCES `sgi_tipos_entidad` (`id_tipo_entidad`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_reuniones`
--
ALTER TABLE `sgi_reuniones`
  ADD CONSTRAINT `sgi_reuniones_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `sgi_zonas` (`id_zona`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_reuniones_ibfk_2` FOREIGN KEY (`id_motivo_reunion`) REFERENCES `sgi_motivos_reunion` (`id_motivo_reunion`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_reuniones_ibfk_3` FOREIGN KEY (`id_modo_reunion`) REFERENCES `sgi_modos_reunion` (`id_modo_reunion`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_reuniones_ibfk_5` FOREIGN KEY (`id_entidad_target`) REFERENCES `sgi_entidades` (`id_entidad`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_reuniones_ibfk_6` FOREIGN KEY (`id_contacto`) REFERENCES `sgi_contactos` (`id_contacto`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_roles`
--
ALTER TABLE `sgi_roles`
  ADD CONSTRAINT `sgi_roles_ibfk_1` FOREIGN KEY (`id_opcion_menu`) REFERENCES `sgi_opciones_menu` (`id_opcion_menu`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_rol_menu`
--
ALTER TABLE `sgi_rol_menu`
  ADD CONSTRAINT `sgi_rol_menu_ibfk_1` FOREIGN KEY (`id_opcion_menu`) REFERENCES `sgi_opciones_menu` (`id_opcion_menu`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_rol_menu_ibfk_2` FOREIGN KEY (`id_grupo_menu`) REFERENCES `sgi_grupos_menu` (`id_grupo_menu`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_rol_menu_ibfk_3` FOREIGN KEY (`id_rol`) REFERENCES `sgi_roles` (`id_rol`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_unidades`
--
ALTER TABLE `sgi_unidades`
  ADD CONSTRAINT `sgi_unidades_ibfk_1` FOREIGN KEY (`id_entidad`) REFERENCES `sgi_entidades` (`id_entidad`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_unidades_ibfk_2` FOREIGN KEY (`id_ciclo`) REFERENCES `sgi_ciclos` (`id_ciclo`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_unidades_ibfk_3` FOREIGN KEY (`id_unidad_dual`) REFERENCES `sgi_unidades_dual` (`id_unidad_dual`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `sgi_unidades_ibfk_4` FOREIGN KEY (`id_motivo_nodual`) REFERENCES `sgi_motivos_nodual` (`id_motivo_nodual`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_usuarios`
--
ALTER TABLE `sgi_usuarios`
  ADD CONSTRAINT `sgi_usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `sgi_roles` (`id_rol`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sgi_zonas`
--
ALTER TABLE `sgi_zonas`
  ADD CONSTRAINT `sgi_zonas_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `sgi_provincias` (`id_provincia`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
