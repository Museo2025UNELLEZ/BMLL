-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-01-2026 a las 22:07:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c2771281_bmll`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(49, 'Arquitectura'),
(1, 'Arte'),
(12, 'Artes escenicas'),
(5, 'Biografía'),
(9, 'Biografia literaria'),
(22, 'Ciencias naturales'),
(25, 'Comunicación social'),
(43, 'Cronica'),
(15, 'Cuentos'),
(47, 'Cultura'),
(2, 'Cultura Venezolana'),
(26, 'Desarrollo personal'),
(40, 'Diccionario'),
(44, 'Documental'),
(13, 'Economía'),
(14, 'Economía agraria'),
(24, 'Educación'),
(10, 'Enciclopedia'),
(28, 'Ensayos'),
(41, 'Epistolografia'),
(39, 'Filosofia'),
(23, 'Física'),
(42, 'Folklore'),
(19, 'Geografía'),
(17, 'Historia'),
(3, 'Literatura'),
(18, 'Matemática'),
(45, 'Musica'),
(20, 'Novela'),
(38, 'Novela lírica'),
(27, 'Novelas'),
(16, 'Pedagogía'),
(37, 'Periodismo'),
(21, 'Poesía'),
(6, 'Política'),
(7, 'Psicologia'),
(30, 'Relato'),
(46, 'Religion'),
(48, 'Reportaje'),
(4, 'Sociologia'),
(11, 'Turismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estanterias`
--

CREATE TABLE `estanterias` (
  `id` int(11) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  `n_filas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estanterias`
--

INSERT INTO `estanterias` (`id`, `codigo`, `n_filas`) VALUES
(1, 'A', 7),
(3, 'B', 7),
(4, 'C', 7),
(5, 'D', 7),
(6, 'E', 7),
(7, 'F', 7),
(9, 'G', 7),
(10, 'H', 7),
(11, 'I', 7),
(12, 'J', 7),
(13, 'K', 7),
(14, 'L', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `cod_identificador` varchar(6) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `n_copias` int(11) NOT NULL DEFAULT 1,
  `estante_id` int(11) NOT NULL,
  `fila` int(11) NOT NULL,
  `posicion` int(11) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `editorial` varchar(150) DEFAULT NULL,
  `tomo` varchar(25) DEFAULT NULL,
  `edicion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`) VALUES
(1, 'AM04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Autana', 'Instituto del Patrimonio Cultural', 2, '980-397-026-7', 1, 1, 1, 1, '2007-01-16', 'Instituto del Patrimonio Cultural', '4', 'Primera'),
(2, 'B3', 'Encuentro y alternativas venezuela 1994', 'Universidad Catolica Andres Bello', 17, '980-244-081-7', 1, 3, 2, 0, '1994-06-08', 'Publicaciones UCAB', '1', '1'),
(3, 'AM03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Atures', 'Instituto del Patrimonio Cultural', 2, '980-6448-94-4', 2, 1, 1, 2, '2006-01-01', 'Instituto del Patrimonio Cultural', '3', 'Primera'),
(7, 'AR03-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Girardot Francisco Linares Alcántara', 'Instituto del Patrimonio Cultural', 2, '980-6448-80-4', 1, 1, 1, 3, '2007-06-14', 'Instituto del Patrimonio Cultural', '3-17', 'Primera'),
(8, '372782', 'Defensa del sentido común y otros ensayos', 'George Edward Moore', 28, '84-7530-432-X', 1, 13, 2, 3, '1983-01-10', 'Ediciones Orbis, S.A.', '1', 'Primera'),
(9, 'AR04-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Jose Ángel Lamas-Libertador', 'Instituto del Patrimonio Cultural', 2, '', 1, 1, 1, 2, '2007-05-08', 'Instituto del Patrimonio Cultural', '4-07', 'Primera'),
(16, 'AR16', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Zamora', 'Instituto del Patrimonio Cultural', 2, '980-397-034-8', 1, 1, 1, 0, '2007-01-30', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(18, '837418', 'Las afueras', 'Luis Goytisolo', 3, '738272', 1, 13, 2, 2, '1971-12-09', 'Seix Barral, S.A.', NULL, 'No abreviada'),
(19, 'AR0818', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Mario Briceño Iragory Ocumare de la Costa de Oro', 'Instituto del Patrimonio Cultural', 2, '980-6448-73-1', 1, 1, 1, 0, '2007-11-08', 'Instituto del Patrimonio Cultural', '8-18', 'Primera'),
(21, 'AR0215', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Camatagua Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-6448-79-0', 1, 1, 1, 0, '2007-02-06', 'Instituto del Patrimonio Cultural', '2-15', 'Primera'),
(24, '372863', 'Cuatro ensayos sobre literatura venezolana', 'Osvaldo Larrazábal Henríquez', 28, '980-236-617-X', 1, 13, 2, 4, '2001-12-09', 'Universidad Nacional Abierta', '1', 'Primera'),
(25, 'C2', 'Sueños y Recuerdos de Simoncito', 'Juan Antonio Choyfu', 15, '980-376-126-9', 1, 4, 1, 2, '2006-11-14', 'El Perro y La Rana', NULL, ''),
(27, 'AR-15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolivar Jose Felix Ribas', 'Instituto del Patrimonio Cultural', 2, '980-6448-85-5', 1, 1, 1, 0, '2007-06-12', 'Instituto del Patrimonio Cultural', '1-5', 'Primera'),
(30, '545885', 'Lope D Agvirre', 'Casto Fulgencio López', 5, 'BLL353', 1, 13, 2, 1, '1947-12-09', 'Casto Fulgencio López', '1', 'Primera'),
(32, 'AR06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios José Rafael Revenga Santos Michelena', 'Instituto del Patrimonio Cultural', 2, '980-397-033-X', 1, 1, 1, 0, '2006-06-05', 'Instituto del Patrimonio Cultural', '6-12', 'Primera'),
(33, 'AR09-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios San Casimiro San Sebastián', 'Instituto del Patrimonio Cultural', 2, '980-397-001-1', 1, 1, 1, 0, '2006-06-06', 'Instituto del Patrimonio Cultural', '9-10', 'Primera'),
(36, 'AR-13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-397-036-4', 1, 1, 1, 0, '2006-06-13', 'Instituto del Patrimonio Cultural', '13', 'Primera'),
(37, 'E1-001', 'La cuestión radiante', 'Fernando Rendon', 21, '555-675-981-0', 1, 6, 1, 1, '2006-12-02', '', NULL, ''),
(38, 'BA0000', 'Mercedes Pardo', 'Mercedes Longobardi', 1, '978-980-7039-20-8', 1, 1, 2, 1, '2008-06-11', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(39, '378273', 'Antología Narrativa (Paula, Cambises, Muerte por Agua).', 'Antonio Pérez Carmona', 20, '980-12-1459-7', 1, 13, 2, 5, '2005-12-09', 'Lithopros', '1', 'Primera'),
(40, 'AR14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tovar', 'Instituto del Patrimonio Cultural', 2, '980-6448-61-8', 1, 1, 1, 0, '2006-06-14', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(41, 'AR11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Santiago Mariño', 'Instituto del Patrimonio Cultural', 2, '9980-6448-50-2', 1, 1, 1, 0, '2006-02-07', 'Instituto del Patrimonio Cultural', '11', 'Primera'),
(42, 'Ba0001', 'Alejandro Colina', 'Milagros González', 1, '978-980-7039-21-5', 2, 1, 1, 2, '2008-11-05', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(43, 'BO0611', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Piar Padre Pedro Chien', 'Instituto del Patrimonio Cultural', 2, '978-980-397-105-2', 1, 1, 1, 0, '2009-02-10', 'Instituto del Patrimonio Cultural', '06-11', 'Primera'),
(44, 'BO01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Caroní', 'Instituto del Patrimonio Cultural', 2, '978-980-397-064-2', 1, 1, 1, 0, '2007-02-14', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(45, 'BO05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Heres', 'Instituto del Patrimonio Cultural', 2, '980-6448-23-5', 1, 1, 1, 0, '2005-03-31', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(46, 'MI10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guaicaipuro', 'Instituto del Patrimonio Cultural', 2, '978-980-397-098-7', 1, 1, 1, 0, '2007-01-16', 'Instituto del Patrimonio Cultural', '10', 'Primera'),
(47, 'MI0205', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Andrés Bello Buroz', 'Instituto del Patrimonio Cultural', 2, '980-6448-90-1', 1, 1, 1, 0, '2006-01-18', 'Instituto del Patrimonio Cultural', '2-5', 'Primera'),
(48, 'MI03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Baruta', 'Instituto del Patrimonio Cultural', 2, '980-6448-6-X', 1, 1, 1, 0, '2005-06-07', 'Instituto del Patrimonio Cultural', '3', 'Primera'),
(49, 'E1-002', 'El viejo Gabaldón del tamaño del tiempo', 'Emigdio Cañizares Guedez', 5, '980-263-089-6', 1, 6, 1, 2, '1988-03-08', '', NULL, ''),
(50, 'MI01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Acevedo', 'Instituto del Patrimonio Cultural', 2, '980-6448-47-2', 1, 1, 1, 0, '2005-09-06', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(51, 'MI12-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Tomás Lander Simón Bolívar', 'Instituto del Patrimonio Cultural', 2, '980-6448-58-8', 1, 1, 1, 0, '2006-06-06', 'Instituto del Patrimonio Cultural', '12-18', 'Primera'),
(52, 'MI11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Independencia Paz Castillo', 'Instituto del Patrimonio Cultural', 2, '980-397-009-9', 1, 1, 1, 0, '2006-01-02', 'Instituto del Patrimonio Cultural', '11-15', 'Primera'),
(53, 'MI09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio El Hatillo', 'Instituto del Patrimonio Cultural', 2, '980-6448-77-8', 1, 1, 1, 0, '2005-05-09', 'Instituto del Patrimonio Cultural', '9', 'Primera'),
(54, 'E1-003', 'Ibis', 'J.M. Vargas Vila', 20, '980-230-342-9', 10, 6, 1, 3, '1990-07-11', 'Panapo', NULL, ''),
(56, 'C-1', 'Cartas a mi padre', 'Verónica Martínez', 30, '949292', 1, 4, 1, 1, '2006-12-19', 'El perro y la rana', NULL, 'primera'),
(57, 'MI07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Chacao', 'Instituto del Patrimonio Cultural', 2, '980-6448-25-1', 1, 1, 1, 0, '2005-06-06', 'Instituto del Patrimonio Cultural', '7', 'Primera'),
(58, 'MI04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Brión', 'Instituto del Patrimonio Cultural', 2, '980-6448-28-6', 1, 1, 1, 0, '2005-10-11', 'Instituto del Patrimonio Cultural', '4', 'Primera'),
(59, 'E1-004', 'Cómo a nuestro parecer', 'Carlos Felipe Cardot', 28, '101010', 1, 6, 1, 13, '1985-06-04', 'Academia nacional de la historia', NULL, ''),
(62, 'MI20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-6448-39-1', 1, 1, 1, 0, '2005-02-08', 'Instituto del Patrimonio Cultural', '20', 'Primera'),
(63, '271963', 'Literatura y sociedad', 'Roland Barthes', 4, '50454', 1, 13, 2, 6, '1971-12-10', 'Universidad libre de Bruselas', NULL, 'Segunda'),
(64, 'MI14-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Páez Pedro Gual', 'Instituto del Patrimonio Cultural', 2, '980-3970-37-2', 1, 1, 1, 0, '2007-10-17', 'Instituto del Patrimonio Cultural', '14-16', 'Primera'),
(65, 'MI17-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Ambrosio Plaza Zamora', 'Instituto del Patrimonio Cultural', 2, '980-397-035-6', 1, 1, 1, 0, '2009-06-09', 'Instituto del Patrimonio Cultural', '23', 'Primera'),
(66, 'MI06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Carrizal Los Salias', 'Instituto del Patrimonio Cultural', 2, '980-397-002-X', 1, 1, 1, 0, '2006-02-07', 'Instituto del Patrimonio Cultural', '6-13', 'Primera'),
(67, 'F1-001', 'Victor Roger Quijada Vargas Su vida contada por él', 'Alberto Rafael Alvarado Galiz', 5, '978-980-214-245-3', 1, 7, 1, 1, '2009-12-10', 'Casa nacional de las letras Andres Bello', NULL, ''),
(68, '379174', 'Cuando era feliz e indocumentado', 'Gabriel García Márquez', 37, '84-8280-019-1', 1, 13, 2, 7, '1973-12-10', 'Oveja negra', NULL, 'Sexta'),
(69, 'MI19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '978-980-397-085-7', 1, 1, 1, 0, '2008-06-10', 'Instituto del Patrimonio Cultural', '19', 'Primera'),
(70, 'E1-005', 'Las aventuras imaginarias', 'Julio E. Miranda', 28, '980-222-458-8', 1, 6, 1, 14, '1991-09-09', 'Academia nacional de la historia', NULL, ''),
(71, 'MI08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Cristóbal Rojas', 'Instituto del Patrimonio Cultural', 2, '980-6448-38-3', 1, 1, 1, 0, '2005-01-11', 'Instituto del Patrimonio Cultural', '8', 'Primera'),
(72, 'E1-006', 'Seis Escritores Larenses', 'Oscar Zambrano Urdaneta', 28, '980-222-039-6', 1, 6, 1, 15, '1986-04-09', 'Academia nacional de la historia', '90', ''),
(73, 'F1-002', 'Jardín', 'Dulce María Loynaz', 38, '959-10-0053-7', 1, 7, 1, 2, '0000-00-00', 'Letras Cubanas', NULL, ''),
(74, 'VA01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Vargas', 'Instituto del Patrimonio Cultural', 2, '980-6448-22-7', 1, 1, 1, 0, '2005-06-07', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(75, 'E1-007', 'El Paisaje Anterior', 'Barbara Piano', 28, '980-222-444-8', 1, 6, 1, 16, '1989-11-10', 'Academia nacional de la historia', '161', ''),
(76, '279273', 'Novelas antes de tiempo', 'Rosa Chacel', 20, '84-02-07701-3', 1, 13, 2, 8, '1981-12-10', 'Bruguera, S.A.', NULL, 'Primera'),
(77, 'F1-003', 'Temas arvelianos', 'Guillermo Jimenez Leal', 5, '00000', 1, 7, 1, 3, '2006-12-27', '', NULL, ''),
(78, 'E1-008', 'Notas Apocalipticas', 'Ennio Jiménez Eman', 28, '980-222-222-4', 1, 6, 1, 17, '1988-06-09', 'Academia nacional de la historia', '128', ''),
(79, 'BA0002', 'Mario Abreu', 'Néstor Balza', 1, '978-980-7039-22-2', 2, 1, 2, 3, '2008-11-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(80, 'E1-009', 'Simbolistas y Modernistas en Venezuela', 'Eduardo Arroyo Alvarez', 28, '980-222-225-9', 1, 6, 1, 18, '1988-06-16', 'Academia nacional de la historia', '129', ''),
(81, 'TR0208', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Boconó Juan Vicente Campo Elías', 'Instituto del Patrimonio Cultural', 2, '978-980-397-101-4', 1, 1, 1, 0, '2009-07-08', 'Instituto del Patrimonio Cultural', '2-8', 'Primera'),
(82, 'BA0003', 'Alejandro Otero', 'Nestor Balza', 1, '978-980-7039-23-9', 3, 1, 2, 4, '2008-12-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(83, 'TR19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 1, 1, 0, '2007-06-12', 'Instituto del Patrimonio Cultural', '19', 'Primera'),
(84, '368747', 'Prosas', 'Alberto Girri', 38, '3628738', 1, 13, 2, 9, '1977-12-10', 'Monte Ávila editores, C.A.', NULL, 'Primera'),
(85, 'F1-004', 'Eduardo Mariño: El brillo y las sombras de una escritura heteroclita', 'Julio Rafael Silva', 28, '980-376-134-X', 1, 7, 1, 4, '2005-06-01', 'Ministerio de la cultura', NULL, '1ª'),
(86, 'E1-010', 'El Poeta Del Fuego y Otras Escrituras', 'Mario Torrealba Lossi', 28, '101-101-101-1', 2, 6, 1, 20, '1984-08-03', 'Academia nacional de la historia', '54', ''),
(87, 'TR20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Atures', 'Instituto del Patrimonio Cultural', 2, '978-980-397-088-8', 1, 1, 1, 0, '2009-06-10', 'Instituto del Patrimonio Cultural', '20', 'Primera'),
(88, 'BA0004', 'Santiago Pol', 'José Ignacio Herrera', 1, '978-980-7039-24-6', 2, 1, 2, 5, '2009-11-04', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(89, 'Ba0005', 'Jacobo Borges', 'Adriana Meneses', 1, '978-980-7039-25-3', 2, 1, 2, 6, '2008-12-15', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(90, 'E1-011', 'El Estado Y Las Instituciones En Venezuela (1936-1945)', 'Luis Ricardo Davila', 28, '980-222-218-6', 1, 6, 1, 21, '1988-01-07', 'Academia nacional de la historia', '124', ''),
(91, 'FA18-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios Píritu - Tocópero', 'Instituto del Patrimonio Cultural', 2, '980-6448-53-7', 1, 1, 1, 0, '2005-06-15', 'Instituto del Patrimonio Cultural', '18-22', 'Primera'),
(92, '479373', 'Cartas Abisinias', 'Arthur Rimbaud', 3, '84-7223-547-5', 1, 13, 2, 10, '1974-12-10', 'Tusquets Editor', '15', 'No mencionada'),
(93, 'FA13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Mauroa', 'Instituto del Patrimonio Cultural', 2, '980-6448-52-9', 1, 1, 1, 0, '2005-07-06', 'Instituto del Patrimonio Cultural', '13', 'Primera'),
(94, 'E1-012', 'Orígenes De La Cultura Margariteña', 'Jesus Manuel Subero', 28, '980-222-217-88', 1, 6, 1, 22, '1987-12-04', 'Academia nacional de la historia', '122', ''),
(96, 'BA0006', 'Antonio José Fernández El hombre del anillo', 'Carlos Contramaestre', 1, '978-980-7039-26-0', 2, 1, 2, 7, '2008-12-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(98, 'GU-08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Francisco de Miranda | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-81-2', 2, 11, 1, 1, '2006-01-01', 'Instituto del Patrimonio Cultural', '8', 'primera'),
(99, 'FA02-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios Bolívar-Petit', 'Instituto del Patrimonio Cultural', 2, '980-6448-63-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '2-17', 'Primera'),
(100, 'GU-11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jose Felix Ribas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-37-5', 16, 11, 1, 2, '2005-01-01', 'Instituto del Patrimonio Cultural', '11', 'primera'),
(101, 'FA03-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Buchivacoa Dabajuro', 'Instituto del Patrimonio Cultural', 2, '978-980-397-061-1', 1, 1, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '3-7', 'Primera'),
(102, 'BA0007', 'Salvador Valero', 'Carlos Contramaestre', 1, '978-980-7039-27-7', 1, 1, 2, 8, '2008-12-03', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(103, 'GU-13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio San Jose De Guaribe | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-043-7', 3, 11, 1, 3, '2007-01-01', 'Instituto del Patrimonio Cultural', '13', 'primera'),
(104, 'FA11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2010 | Municipios Jacura Monseñor Iturriza', 'Instituto del Patrimonio Cultural', 2, '978-980-397-134-2', 1, 1, 1, 0, '2010-12-12', 'Instituto del Patrimonio Cultural', '11-15', 'Primera'),
(105, '368163', 'Homero y su iliada', 'Guillermo Thiele', 28, 'BLL609', 1, 13, 2, 11, '1969-12-10', 'Monte Ávila Editores, C.A.', NULL, 'Primera'),
(106, 'BA0008', 'César Rengifo', 'Tarim Gois', 1, '978-980-7039-38-3', 2, 1, 2, 9, '2008-12-12', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(107, 'FA14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Miranda', 'Instituto del Patrimonio Cultural', 2, '980-6448-30-8', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(108, 'E1-013', 'La Lucha Social Y La Lucha Armada En Venezuela', 'Elia Oliveros Espinoza', 17, '978-980-14-1917-4', 1, 6, 1, 23, '2012-08-10', 'El Perro Y La Rana', NULL, ''),
(109, '372873', 'Las afueras', 'Luis Goytisolo', 3, '84 322 1814 6', 1, 13, 2, 12, '1976-12-10', 'Seix Barral, S.A.', NULL, 'Quinta'),
(111, 'FA25', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Zamora', 'Instituto del Patrimonio Cultural', 2, '980-6448-31-6', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '25', 'Primera'),
(120, 'Ba0009', 'Manuel de la fuente', 'José María Salvador', 1, '978-980-7039-93-2', 2, 1, 2, 10, '2009-11-09', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(121, 'FA10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Federación', 'Instituto del Patrimonio Cultural', 2, '980-6448-59-6', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera'),
(126, 'F1-006', 'Desde Calderas', 'Lindolfo Bastidas', 30, '980-376-222-2', 1, 7, 1, 6, '2006-03-15', 'Ministerio de la cultura', NULL, '1ª'),
(130, 'FA16-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Palma Sola Silva', 'Instituto del Patrimonio Cultural', 2, '978-980-397-116-8', 1, 1, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '16-20', 'Primera'),
(131, 'Ba0010', 'Rafael Vargas', 'Néstor Balza', 1, '978-980-7039-43-7', 3, 1, 2, 11, '2010-02-05', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(132, 'E1-014', 'El Mediodía De La Modernidad En Venezuela', 'Carmen Díaz Orosco', 28, '980-11-0125-3', 1, 6, 1, 24, '1997-08-05', '', NULL, '1°'),
(133, 'FA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Colina', 'Instituto del Patrimonio Cultural', 2, '980-6448-29-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera'),
(135, 'Ba0011', 'Jesús Soto', 'Gladys Yunes Yunes', 1, '978-980-7039-29-1', 3, 1, 2, 12, '2008-11-20', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(136, 'GU-12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Juan German Roscio | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-66-9', 1, 11, 1, 6, '2006-01-01', 'Instituto del Patrimonio Cultural', '12', 'primera'),
(137, 'FA21-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Sucre Unión', 'Instituto del Patrimonio Cultural', 2, '980-6448-70-7', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '21-23', 'Primera'),
(138, '369177', 'Epístolas', 'León Colina Bracho', 3, '980-328-036-8', 1, 13, 2, 13, '1992-12-10', 'Ediciones del Gobierno de Carabobo', '14', 'Primera'),
(139, 'F1-007', 'Los poetas y la poesía insurgente de apure', 'Max Efrain Perez', 9, '978-980-6664-44-9', 1, 7, 1, 7, '2007-07-05', 'UBV', NULL, ''),
(140, 'FA08-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Democracia Urumaco', 'Instituto del Patrimonio Cultural', 2, '978-980-397-119-9', 1, 1, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '8-24', 'Primera'),
(141, 'BA0012', 'Luis Domínguez Salazar', 'Luis Emeterio González', 1, '978-980-7039-43-3', 3, 1, 2, 13, '2008-06-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(142, 'F1-008', 'Los poemas de venus garcia', 'Enrique Hernandez-D`Jesús', 21, '980-329-312-5', 1, 7, 1, 8, '2001-04-01', 'El Árbol Editores', NULL, '2ª'),
(143, 'Ba0013', 'Bárbaro Rivas', 'Zhelma  Portillo', 1, '978-980-7039-64-2', 2, 1, 2, 14, '2009-11-16', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(144, 'GU-06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Las Mercedes | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-41-3', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera'),
(145, 'E1-015', 'Las Dependencias Federales', 'Fernando Cervigon', 17, '980-222-729-3', 1, 6, 1, 25, '1995-03-08', 'Academia nacional de la historia', NULL, ''),
(146, '379273', 'Canción de la agonía, las cenizas y la muerte', 'José Joaquín Burgos', 15, '980-7549-10-8', 1, 13, 2, 0, '2000-12-10', 'Instituto Cultural del Estado Portuguesa', NULL, 'Segunda'),
(147, 'GU-09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jose Tadeo Monagas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-33-2', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera'),
(148, 'Ba0014', 'Francisco Narváez', 'Katherine Chacón', 1, '978-980-7240-41-3', 2, 1, 2, 15, '2010-03-15', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(149, 'F1-009', 'La casa del verbo', 'José Manuel Briceño Guerrero', 5, '978-980-6470-18-7', 1, 7, 1, 9, '2009-11-01', '', NULL, ''),
(150, 'GU-03-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio El Socorro Santa Maria De Ipire | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-042-9', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '3-14', 'primera'),
(151, 'C74', 'Fermín Entrena: un venezolano del noventa y nueve', 'José Abel Montilla', 20, '9803003755', 1, 4, 2, 74, '1988-11-22', 'Buenos Aires: Imp. Printed', NULL, '2'),
(152, 'Ba0019', 'Ramón Vázquez Brito', 'Lorena González', 1, '978-980-7240-38-3', 2, 1, 2, 16, '2009-11-13', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(153, 'GU-15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Pedro Zaraza | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-048-8', 2, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '14-15', 'primera'),
(154, '576467', 'Acarigua, escenario de espectros', 'Alberto Jiménez Ure', 15, '368273', 1, 13, 2, 0, '1976-12-10', 'Multicolor, C.A.', NULL, 'Punto de fuga'),
(155, 'Ba0015', 'Luis Moreno', 'Carlos Delgado Díaz', 1, '978-980-7240-44-4', 3, 1, 2, 17, '2010-02-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(156, 'GU-01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Camaguan | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-65-0', 3, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '1', 'primera'),
(157, 'E1-016', 'Caracas, Origen Y Trayectoria De Una Ciudad', 'J.A. de Armas Chitty', 17, '101-101-101-2', 1, 6, 1, 26, '1966-08-07', 'Fundación Creole', 'Tomo 2', ''),
(158, 'GU-04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio San Geronimo De Guayabal | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '978-980-397-079-6', 1, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera'),
(159, 'Ba0016', 'Cleto Rojas', 'Luis Emeterio González', 1, '978-980-7240-45-1', 3, 1, 2, 18, '2010-11-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(160, '372937', 'Restos del viaje', 'Márgara Russotto', 15, 'BPD437', 1, 13, 2, 0, '1969-12-10', 'Monte Ávila editores, C.A.', NULL, 'Primera'),
(161, 'C73', 'Estudios sobre Andres Bello', 'Oscar Sambrano Urdaneta', 3, '9802140228', 1, 4, 2, 0, '1987-12-10', 'La casa de Bello', NULL, '1'),
(162, 'AD2', 'LA LÍNEA Y LA MANCHA EN EL DIBUJO', 'IARTES - Instituto de las Artes de la Imagen y el Espacio', 1, '84-342-2729-0', 210, 3, 1, 0, '2004-12-12', 'Parramón', NULL, 'Primera'),
(163, 'BA0017', 'Luis Pedro Malavé', 'Luis Miguel Rodríguez', 1, '978-980-7240-39-0', 3, 1, 2, 19, '2010-02-16', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(164, 'GU-07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Julian Mellado | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-014-3', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera'),
(165, 'BA0018', 'Tomás Enrique Salazar', 'Luis Miguel Rodríguez', 1, '978-980-7240-40-6', 3, 1, 2, 20, '2010-11-13', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(166, 'C72', 'La Habana / Veracruz Las dos orillas', 'Bernardo Garcia Diaz - Segio Guerra Vilaboy', 17, '9688345354', 1, 4, 2, 1, '2022-12-10', 'Universidad Verecruzana', NULL, '1'),
(167, 'E1-017', 'Cien Preguntas Sobre El Nuevo Desorden', 'Carlos Taibo', 28, '987-980-396-976-9', 1, 6, 1, 27, '2007-11-09', 'El perro Y La Rana', NULL, ''),
(169, 'BA0020', 'Josefa Sulbarán', 'Carlos Cañizares', 1, '978-980-7240-46-8', 2, 1, 2, 21, '2010-03-09', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(170, 'AD', 'LAS BASES DEL DIBUJO', 'IARTES - Instituto de las Artes de la Imagen y el Espacio', 1, '84-342-2728-2', 335, 3, 1, 0, '2004-12-12', 'Parramón', NULL, 'Primera'),
(174, 'BA0021', 'Luiz Mendes', 'Carlos Delgado Díaz', 1, '978-980-7039-73-4', 3, 1, 2, 22, '2008-11-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(176, '382927', 'Los romanticos alemanes', 'Hoffmann Novalis', 15, '379384748', 1, 13, 2, 0, '1968-12-10', 'Centro Editor de América Latina', NULL, 'Primera'),
(177, 'GU-05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Leonardo Infante | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-044-5', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '5', 'primera'),
(178, 'BA0022', 'Rosa Vegas', 'Zhelma  Portillo', 1, '978-980-7039-74-1', 3, 1, 2, 23, '2008-11-26', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(180, 'E1-018', 'Los Miserables', 'Victor Hugo', 20, '980-6964-81-0', 1, 6, 1, 28, '2006-12-10', 'El Perro Y La Rana', NULL, ''),
(181, 'F1-010', 'Oda Maritima', 'Fernando Pessoa', 38, '000000', 1, 7, 1, 10, '1977-12-10', 'Monte Ávila Editores', NULL, ''),
(182, 'GU-02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Chaguaramas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-32-4', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '2', 'primera'),
(183, 'C71', 'Ezequiel Zamora y la tierra de los hombres libres', 'J.A Calzadilla Arreaza', 5, '22882009900', 1, 4, 2, 0, '2009-12-10', 'Fundacion centro nacional de historia', NULL, '1'),
(184, 'GU-10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Juan German Roscio | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-42-1', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '10', 'primera'),
(185, 'E1-019', 'Vuelta A La Patria Y Otros Poemas', 'Juan Antonio Pérez Bonalde', 21, '980-6964-46-2', 1, 6, 1, 29, '2006-12-10', 'El Perro Y La Rana', NULL, ''),
(186, 'LA05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Morán', 'Instituto del Patrimonio Cultural', 2, '980-6448-36-7', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(187, 'BA0023', 'Cirilo Mendoza', 'Fran Morales', 1, '978-980-7240-47-5', 2, 1, 2, 24, '2010-03-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(189, 'LA07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Simón Planas', 'Instituto del Patrimonio Cultural', 2, '980-6448-48-0', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera'),
(190, 'E1-020', 'Fragmentos Para Una Memoria', 'José Javier Sanchez', 21, '978-980-396-914-1', 1, 6, 1, 30, '2007-10-03', 'El Perro Y La Rana', NULL, ''),
(191, 'BA0024', 'Antonia Azuaje', 'Hendrik Hidalgo', 1, '978-980-7240-48-2', 2, 1, 2, 25, '2010-02-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(192, '278273', 'Inventario de Silencios', 'Manuel Da Silva', 21, '978-980-396-943-1', 1, 13, 2, 0, '2008-12-10', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(193, 'C70', 'Bello y Chile tecer congreso del bicentario', 'Fundación La casa de Bello', 9, '812660', 1, 4, 2, 70, '1981-12-10', 'La casa de Bello', NULL, '1'),
(194, 'AP-07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio San Fernando | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '980-6448-44-8', 2, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera'),
(195, 'BA0025', 'Elsa Morales', 'Hendrik Hidalgo', 1, '978-980-7240-49-9', 2, 1, 2, 26, '2010-11-23', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(196, 'LA09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-397-025-9', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '9', 'Primera'),
(197, 'E1-021', 'Taller Literario De Maracay', 'Pablo Acosta, Alberto Flores, Carmen I. Marcará, Ana María Oviedo, Cesar Paez, Miriam Riquezes', 21, '10101010', 1, 6, 1, 31, '1988-12-10', '', NULL, ''),
(198, 'LA01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Andrés Eloy Blanco', 'Instituto del Patrimonio Cultural', 2, '980-397-050-X', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(199, 'BA0026', 'Mara Vitanza', 'Nelly Barbieri', 1, '978-980-7039-28-4', 3, 1, 2, 27, '2008-11-25', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(200, 'AP-02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Biruaca y Pedro Camejo | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '978-980-397-072-7', 2, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '2-5', 'primera'),
(201, '368282', 'El caballero de la armadura oxidada', 'Robert Fisher', 20, '84-7720-405-5', 1, 13, 2, 0, '1987-12-10', 'Ediciones Obelisco', NULL, '25'),
(202, 'LA03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Iribarren', 'Instituto del Patrimonio Cultural', 2, '980-6448-34-01', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '3', 'Primera'),
(203, 'BA0027', 'Pepe García', 'Marisa Mena', 1, '978-980-7240-13-0', 3, 1, 2, 28, '2009-11-21', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(204, 'C69', 'El Andres Bello Universal', 'Oscar Sambrano Urdaneta', 17, '980214066', 1, 4, 2, 69, '1991-12-10', 'La casa de bello', NULL, '1'),
(205, 'AP-01-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Achaguas y Muñoz | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '978-980-397-100-7', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera'),
(206, 'LA04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jiménez', 'Instituto del Patrimonio Cultural', 2, '980-6448-40-5', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera'),
(207, 'E1-022', 'Tiempo Transfigurado (Antología Poética)', 'Eugenio Montejo', 21, '980-233-301-8', 1, 6, 1, 32, '2001-05-30', '', NULL, ''),
(208, 'LA02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Crespo', 'Instituto del Patrimonio Cultural', 2, '980-397-066-2', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera'),
(209, 'LA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Palavecino', 'Instituto del Patrimonio Cultural', 2, '980-6448-46-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera'),
(210, 'BA0028', 'Antonieta Sosa', 'Félix Suazo', 1, '978-980-7039-59-8', 3, 1, 2, 29, '2008-11-18', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(211, 'CO-02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Falcon y Lima Blanco | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '980-6448-97-9', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '2-4', 'primera'),
(212, 'LA08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Torres', 'Instituto del Patrimonio Cultural', 2, '980-397-032-1', 1, 1, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera'),
(213, 'C68', 'Paez las Razones del heroe', 'Edgardo Mondolfi', 17, '9800103201', 1, 4, 2, 68, '1990-12-10', 'Monte Avila', NULL, '1'),
(214, 'CO-03-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Girardot y Pao De San Juan Bautista | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '978-980-397-129-8', 3, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '3-5', 'primera'),
(215, '748473', 'Las comarcas del Alba', 'Eduardo Ali Rangel', 21, '978-980-263-129-2', 1, 13, 2, 0, '1989-12-10', 'Ediciones Centauro', NULL, 'Primera'),
(216, 'E1-023', 'Tierra Aladym', 'Instituto Merideño de Cultura', 21, '01010101', 1, 6, 1, 33, '2002-12-10', '', NULL, ''),
(217, 'BA0029', 'Mateo Manaure', 'Zhelma  Portillo', 1, '978-980-7039-99-4', 2, 1, 2, 30, '2008-11-19', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(218, 'C67-66', 'Las dos vidas de Bolívar', 'Raul Valdez Vivo', 5, '9789801401087', 1, 4, 2, 68, '2008-12-10', 'El Perro y La Rana', '1', '1'),
(219, 'CO-09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tinaco | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '978-980-397-096-3', 3, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera'),
(220, 'BA0030', 'Pedro Barreto', 'Ginett Alarcón F.', 1, '978-980-7240-14-8', 3, 1, 2, 31, '2009-11-20', 'COLECCIÓN ARTE VENEZOLANO', NULL, ''),
(221, 'E1-024', 'Poemas De La Musa Libre', 'Ismael Urdaneta', 21, '11181919', 1, 6, 1, 34, '1990-12-10', '', NULL, ''),
(222, 'DA0102', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Antonio Díaz Casacoima Pedernales', 'Instituto del Patrimonio Cultural', 2, '978-980-397-066-6', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1-2-3', 'Primera'),
(223, 'DA04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tucupita', 'Instituto del Patrimonio Cultural', 2, '980-6448-98-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4', 'Primera'),
(224, '3682', 'Si te dicen que caí', 'Juan Marse', 20, '84-02-06712-3', 1, 13, 2, 0, '1973-12-10', 'Bruguera, S.A.', NULL, 'Primera'),
(225, 'CA0407', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Guacara Los Guayos', 'Instituto del Patrimonio Cultural', 2, '980-397-047-X', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(230, 'C-79', 'La violencia mediatica: el secuestro del conocimiento', 'Vicente Romano Garcia', 6, '9789807426190', 18, 4, 3, 0, '2012-02-16', 'Ediciones correo del Orinoco', NULL, 'primera'),
(231, 'C-101/', 'Simbiosis de los Simones: socialismo desde el alba', 'Armando Daniel Rojas', 39, '980429835', 100, 4, 3, 0, '2008-06-18', 'Fundacion Aldeas', NULL, '1'),
(232, '372882', 'En la bahía', 'Katherine Mansfield', 15, '84-02-08184-3', 1, 13, 2, 0, '1922-12-11', 'Editorial Losada, S.A.', NULL, 'Primera'),
(235, '5372', 'Los premios', 'Julio Cortázar', 20, '84-02-08156-8', 1, 13, 2, 0, '1960-12-11', 'Bruguera, S.A.', NULL, 'Primera'),
(236, 'F1-011', 'Indagación del día', 'Lucila Velasquez', 21, '0000', 1, 7, 1, 11, '1969-12-11', 'UCV', NULL, ''),
(237, 'E1-025', 'Historia De La Literatura Española 3', 'E.M Wilson y D.Moir', 17, '84-344-8306-8', 1, 6, 1, 35, '1971-09-06', 'Ariel', NULL, ''),
(238, '4728', 'Una plaza ocupando un espacio desconcertante', 'Antonia Palacios', 15, '978-980-7039-58-1', 1, 13, 2, 0, '1981-12-11', 'Monte Ávila editores, C.A.', NULL, 'Primera'),
(239, 'F1-012', 'Crecimiento y desarrollo', 'Pierre Vilar', 9, '84-344-6501-9', 1, 7, 1, 12, '1974-11-01', 'Ariel, S.A.', NULL, ''),
(240, 'SU14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-6448-83-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(241, 'ZU01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Almirante Padilla', 'Instituto del Patrimonio Cultural', 2, '980-3970-46-1', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(242, 'BA0031', 'Eduardo Bárcenas', 'Esperanza León', 1, 'ISBN 978-980-7039-62', 3, 1, 2, 32, '2008-11-12', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(243, 'C-75', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '9789806089525', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '1', 'PRIMERA'),
(245, 'F1-013', 'A contracorriente', 'Antonio E. Dagnino', 9, '980-6350-30-8', 1, 7, 1, 11, '1995-12-11', 'Fondo Editorial SOLAR', NULL, '1ª'),
(247, 'ZU03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Cabimas', 'Instituto del Patrimonio Cultural', 2, '980-6448-88-X', 1, 5, 1, 0, '2006-10-16', 'Instituto del Patrimonio Cultural', '3', 'Primera'),
(248, 'E1-026', 'Historia de España', 'Pierre Vilar', 17, '84-7423-054-3', 1, 6, 1, 36, '1978-12-11', 'Grupo editorial grijalbo', NULL, ''),
(249, 'C-76', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '978980608', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '2', 'PRIMERA'),
(250, '6382', 'Una vida violenta', 'Pier Paolo Pasolini', 20, '978-84-19320-25-4', 1, 13, 2, 0, '1969-12-11', 'Editorial Arte', NULL, 'Primera'),
(251, 'ZU07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Jesús Enrique Lossada', 'Instituto del Patrimonio Cultural', 2, '978-980-397-095-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera'),
(252, 'C-77', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '97898060', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '1', 'PRIMERA'),
(253, 'C-78', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '9789806037264', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '3', 'PRIMERA'),
(254, 'ZU09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio La Cañada de Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-397-041-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '9', 'Primera'),
(255, 'BA0032', 'Ángel Peña', 'Lorena Gonzáles', 1, 'ISBN 978-980-7240-15', 2, 1, 2, 33, '2009-11-17', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(259, 'E1-027', 'El Terrorismo de Estado en Colombia', 'Hernando Calvo Ospina', 6, '978-980-396-905-9', 1, 6, 1, 37, '2007-09-04', 'El Perro y la Rana', NULL, ''),
(260, 'ZU14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Miranda', 'Instituto del Patrimonio Cultural', 2, '980-6448-71-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(262, 'BA 02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Andres Eloy Blanco y Ezequiel Zamora | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9789803970697', 6, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '14', 'primera'),
(263, 'PO 02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Araure y Paez | Estado Portuguesa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-128-1', 3, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '2-8', 'primera'),
(265, 'C-80', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '97636262234', 1, 4, 3, 79, '2011-06-07', 'Editorial Arte', '4', 'PRIMERA'),
(266, 'ZU10-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Lagunillas Simón Bolivar', 'Instituto del Patrimonio Cultural', 2, '978-980-397-110-6', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '19-10', 'Primera'),
(267, '462873', 'Fuga de esclavos en el Cantón Victoria', 'Luis Ramón Mendoza', 17, '978-980-716369-9', 1, 13, 2, 0, '2008-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(270, 'BA0033', 'Seka', 'Ginett Alarcón F.', 1, 'ISBN 978-980-7240-16', 3, 1, 2, 34, '2009-02-25', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(271, 'E1-028', 'TAI-PAN', 'James Glavell', 20, '84-02-06656-9', 1, 6, 1, 38, '1980-11-04', 'Editorial Bruguera', NULL, '2°'),
(272, 'ZU18', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Santa Rita', 'Instituto del Patrimonio Cultural', 2, '978-980-397-092-5', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '18', 'Primera'),
(273, 'PO-04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guanare | Estado Portuguesa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-081-9', 2, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera'),
(275, 'BA 01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Alberto Arvelo Torrealba | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9806448359', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '1', 'primera'),
(276, '68668', 'Diario del ladrón', 'Jean Genet', 20, '84-320-3005-8', 1, 13, 2, 0, '1976-12-11', 'Planeta', NULL, 'Primera'),
(277, 'ZU02-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Baralt Valmore Rodríguez', 'Instituto del Patrimonio Cultural', 2, '978-980-397-132-8', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '02-21', 'Primera'),
(278, 'BA 09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Obispo| Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9803970232', 1, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera'),
(282, 'BA0034', 'Gladys Meneses', 'Milagros Gonzáles', 1, 'ISBN 978-980-7039-44', 2, 1, 2, 35, '2008-11-14', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(283, 'BA 06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Bolivar | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '980370208', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '6', 'primera'),
(284, 'E1-29', 'Atala y Rene', 'F.R Chateaubriand', 20, '123321123', 1, 6, 1, 39, '1971-01-11', 'Instituto nacional de cultura y bellas artes', NULL, ''),
(286, 'PO-05-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guanarito, Papelon y San Genaro De Boconoito | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-022-4', 3, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '5-9-10', 'primera'),
(287, 'BA 03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Antonio José de Sucre | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9803970585', 1, 11, 0, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '3', 'primera'),
(288, 'SU08-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Cruz Salmerón Acosta Ribero', 'Instituto del Patrimonio Cultural', 2, '980-397-009-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '8-13', 'Primera'),
(289, 'BA0035', 'Gaudi Esté', 'Katherine Chacón', 1, '978-980-7039-54-4', 3, 1, 2, 36, '2009-11-25', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(291, 'SU10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Mariño', 'Instituto del Patrimonio Cultural', 2, '980-6448-49-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera'),
(292, '738283', 'El disparo de argón', 'Juan Villoro', 20, '84-204-8093-2', 1, 13, 2, 0, '1994-12-11', 'Alfaguara', NULL, 'Tercera'),
(293, 'DF 01 ', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Dependencia Federales | Dependencias Federales', 'Instituto del Patrimonio Cultural', 2, '9803970038', 1, 11, 0, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '3', 'primera'),
(294, 'SU02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Andrés Mata', 'Instituto del Patrimonio Cultural', 2, '980-6448-60-X', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera'),
(295, 'E1-030', 'Comentarios Reales', 'Inca Garcilaso De La Vega', 17, '1234544321', 1, 6, 1, 40, '1991-12-11', 'Ariel', NULL, ''),
(296, 'BA0036', 'José Antinio  Dávila', 'Néstor Balza', 1, '970-980-7240-17-8', 3, 1, 2, 37, '2009-11-23', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(297, 'C-81', 'Autodominio Master biblioteca practica de Comunicacion', 'Grupo Oceano', 26, '84-494-2255-6', 1, 4, 3, 0, '2002-01-29', 'Oceano', '1', 'primera'),
(298, 'SU12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Montes', 'Instituto del Patrimonio Cultural', 2, '980-397-028-3', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera'),
(299, 'SU06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolívar Mejía', 'Instituto del Patrimonio Cultural', 2, '980-397-013-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6-11', 'Primera'),
(300, 'BA0037', 'Luisa Palacios', 'Milagros Gonzáles', 1, '978-980-7039-43-7', 2, 1, 2, 38, '2009-11-18', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(302, 'MO05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Cedeño', 'Instituto del Patrimonio Cultural', 2, '980-397-000-3', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(303, '3892', 'Medio siglo, la vida entera', 'Adhely Rivero', 21, 'BPD150', 1, 13, 2, 0, '2005-12-11', 'Ediciones POESÍA', NULL, 'Primera'),
(304, 'C-82', 'Aprendizaje Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-4', 1, 4, 3, 0, '2002-01-29', 'Oceano', '2', 'primera'),
(305, 'MO04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Caripe', 'Instituto del Patrimonio Cultural', 2, '980-6448-723', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4', 'Primera'),
(306, 'E1-031', 'Diario Metafisico', 'Gabriel Marcel', 39, '111222333', 1, 6, 1, 41, '1968-08-01', '', NULL, ''),
(307, 'C-83', 'Lectura y Memorizacion Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '3', 'primera'),
(308, 'BA0038', 'Eugenio Espinoza', 'Zhelma Portillo', 1, '978-980-7240-18-5', 3, 1, 2, 39, '2009-11-04', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(309, 'E1-032', 'Groucho y Yo', 'Groucho Marx', 5, '10101010', 1, 6, 1, 42, '1959-12-11', 'Tusquets editor', NULL, ''),
(310, 'MO02-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Aguasay Ezequiel Zamora Santa Bárbara', 'Instituto del Patrimonio Cultural', 2, '980-397-010-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '2-6-11', 'Primera'),
(311, 'MO01-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Acosta Piar', 'Instituto del Patrimonio Cultural', 2, '980-397-056-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(312, '17 lir', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '17', 'primera'),
(313, '18 mat', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '18', 'primera'),
(314, 'C-84', 'Expresion Oral Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '4', 'primera'),
(315, 'SU05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Bermúdez', 'Instituto del Patrimonio Cultural', 2, '980-6448-92-8', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(316, '638272', 'Manuela', 'Luis Zuñiga', 20, '980-396-064-4', 1, 13, 2, 0, '2002-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Quinta'),
(317, 'SU07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Cajigal', 'Instituto del Patrimonio Cultural', 2, '980-6448-62-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera'),
(318, 'C-85', 'Expresion Oral Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-0', 1, 4, 3, 0, '2002-01-29', 'Oceano', '4', 'primera'),
(319, '19 mor', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1895-01-01', 'Salvat', '19', 'primera'),
(320, '20 O P', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '8434545322', 1, 11, 2, 0, '1985-01-01', 'Salvat', '20', 'primera'),
(321, 'BA0039', 'Elsa Gramcko', 'Milagros Gonzáles', 1, '978-980-7039-60-4', 2, 1, 2, 40, '2009-11-12', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(322, 'SU0104', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Andrés Eloy Blanco Benítez Libertador', 'Instituto del Patrimonio Cultural', 2, '980-980-397-080-2', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1-4-9', 'Primera'),
(323, '22 POL', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '8434545322', 1, 11, 2, 0, '1985-01-01', 'Salvat', '22', 'primera'),
(324, '21 par', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '21', 'primera'),
(325, '23 rem', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '23', 'primera'),
(326, 'SU15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Valdéz', 'Instituto del Patrimonio Cultural', 2, '980-397-039-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '15', 'Primera'),
(327, 'C-86', 'Expresion Escritura practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-0', 1, 4, 3, 0, '2002-01-29', 'Oceano', '5', 'primera'),
(328, 'E1-033', 'Cartas Escogidas', 'William Faulkners', 41, '84-322-0464-1', 1, 6, 1, 43, '1977-06-06', '', NULL, ''),
(329, '24 sam', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '24', 'primera'),
(330, 'BA0040', 'Carlos Cruz-Diez', 'Anny Bello', 1, '978-980-7039-92-5', 2, 1, 2, 41, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(331, 'MO08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Maturín', 'Instituto del Patrimonio Cultural', 2, '980-6448-78-2', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera'),
(332, 'C-87', 'Vocabulario practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '6', 'primera'),
(333, '56766', 'Pequeño relato nocturno', 'Pedro Berroeta', 20, '980-258-013-9', 1, 13, 2, 0, '1986-12-11', 'Publicaciones Seleven, C.A.', NULL, 'Primera');
INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`) VALUES
(334, 'MO0310', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolívar Punceres', 'Instituto del Patrimonio Cultural', 2, '980-6448-99-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '03-10', 'Primera'),
(335, '25 sue', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '25', 'primera'),
(336, 'C-88', 'Gramatica Biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-0', 1, 4, 3, 0, '2002-01-29', 'Oceano', '7', 'primera'),
(337, 'BA0041', 'Marietta Berman', 'Anny Bello', 1, '978-980-7039-30-7', 3, 1, 2, 42, '2008-11-06', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(338, 'C-89', 'Ortografia Biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-9', 1, 4, 3, 0, '2002-01-29', 'Oceano', '8', 'primera'),
(339, 'E1-034', 'Los topos', 'Eduardo Liendo', 20, '120981', 1, 6, 1, 44, '1975-12-11', 'Monte Avila', NULL, ''),
(340, 'MO0712', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Libertador Sotillo Uracoa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-060-4', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '7-12-13', 'Primera'),
(341, 'TA12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Jáuregui', 'Instituto del Patrimonio Cultural', 2, '980-6448-87-1', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera'),
(342, '26 u', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '26', 'primera'),
(343, 'BA0042', 'Claudio Cedeño', 'Anny Bello', 1, '978-980-7039-46-8', 3, 1, 2, 43, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(344, 'E1-035', 'La tarde del dinosaurio', 'Cristina peri rossi', 15, '10923847', 1, 6, 1, 45, '1976-05-11', '', NULL, ''),
(345, 'TA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Junín', 'Instituto del Patrimonio Cultural', 2, '978-980-397-097-0', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera'),
(346, '1 a', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '1', 'primera'),
(347, 'BA0043', 'José Caldas', 'Katherine Chacón', 1, '978-980-7240-42-0', 3, 1, 2, 44, '2010-02-10', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(348, '2 alu ', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '2', 'primera'),
(349, 'TA11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Independencia Libertad', 'Instituto del Patrimonio Cultural', 2, '978-980-397-102-1', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '11-15', 'Primera'),
(350, '3 ari', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '3', 'primera'),
(351, '73926', 'Percusión y tomate', 'Sol Linares', 20, '978-980-14-1339-4', 1, 13, 2, 0, '2010-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(352, '6 car', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '6', 'primera'),
(353, '4 bal', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '4', 'primera'),
(354, 'TA28', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Urbante', 'Instituto del Patrimonio Cultural', 2, '978-980-397-099-4', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '28', 'Primera'),
(355, '8 con', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '8', 'primera'),
(356, '7 chi', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '7', 'primera'),
(357, 'BA0044', 'Roberto Gonzáles', 'Alirimar Celis', 1, '978-980-7039-75-8', 3, 1, 2, 45, '2008-11-18', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(358, '10 eje', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '0195-01-01', 'Salvat', '10', 'primera'),
(359, '9 den', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '9', 'primera'),
(360, 'TA21', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Rafael Urdaneta', 'Instituto del Patrimonio Cultural', 2, '978-980-397-071-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '21', 'Primera'),
(361, '11 esp', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '11', 'primera'),
(362, '12 fib', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '12', 'primera'),
(363, '14 haf', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '14', 'primera'),
(364, '13 gei', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '13', 'primera'),
(365, 'TA0627', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Córdoba Torbes', 'Instituto del Patrimonio Cultural', 2, '980-397-040-2', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '6-27', 'Primera'),
(366, '472983', 'Los últimos días de Pompeya', 'Edward Bulwer Lytton', 20, '84-303-0490-8', 1, 13, 2, 0, '1983-12-11', 'Ramón Sopena, S.A.', NULL, 'Primera'),
(367, 'BA0045', 'Pedro Báez', 'Néstor Balza', 1, '978-980-7240-10-9', 3, 1, 2, 46, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(368, 'E1-036', 'Toma mi lanza bañada de plata', 'José Vicente Abreu', 20, '10102929', 1, 6, 1, 46, '1973-03-05', '', NULL, ''),
(369, '16 jor', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '16', 'primera'),
(370, '15 ima', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '15', 'primera'),
(372, 'C-90', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '1', 'segunda'),
(373, 'E1-037', 'Relatos', 'Stwndhal', 15, '1818818181', 1, 6, 1, 47, '1970-02-10', '', NULL, ''),
(374, 'BA0046', 'Pájaro', 'Alicia Torres', 1, '978-980-7039-62-8', 3, 1, 2, 47, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(375, 'C-91', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-02-11', 'Andres Bello S.A', '2', 'segunda'),
(376, '63827', 'Ojos de perro azul', 'Gabriel García Márquez', 15, '978-84-397-0102-6', 1, 13, 2, 0, '1976-12-11', 'Sudamericana', NULL, 'Sexta'),
(377, 'C-92', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '3', 'segunda'),
(378, 'E1-038', 'Coronacion', 'José Donozo', 20, '00000', 1, 6, 1, 48, '1957-01-19', 'Salvat editores', NULL, ''),
(379, 'TA0510', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Cárdenas Guásimos', 'Instituto del Patrimonio Cultural', 2, '978-980-397-082-6', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '5-10', 'Primera'),
(380, 'BA0047', 'Carlos Quintana', 'Félix Suazo', 1, '978-980-7039-80-2', 3, 1, 2, 48, '2008-11-19', '', NULL, ''),
(381, 'Ccs 1', 'Archivo de Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '0000', 2, 11, 2, 0, '1822-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '2', 'primera'),
(382, 'NE02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Arismendi', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera'),
(386, 'E1-039', 'Werther', 'Goethe', 20, '00000', 1, 6, 1, 49, '1969-08-21', 'Salvat editores', NULL, ''),
(387, 'BA0048', 'Juan Calzadilla', 'Israel Ortega Oropeza', 1, '978-980-7039-62-8', 1, 1, 2, 49, '2008-11-15', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(388, 'NE01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2010 | Municipio Antolín del Campo', 'Instituto del Patrimonio Cultural', 2, '978-980-397-117-5', 1, 5, 1, 0, '2010-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(391, '63873', 'Mujeres y Escritores más un crimen', 'Eva Feld', 15, '980-07-5823-2', 1, 13, 2, 0, '1999-12-11', 'Warp Ediciones, S.A.', NULL, 'Primera'),
(392, 'NE0910', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Península de Macanao Tubores', 'Instituto del Patrimonio Cultural', 2, '980-397-029-1', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '9-10', 'Primera'),
(395, 'NE08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Mariño', 'Instituto del Patrimonio Cultural', 2, '980-397-017-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera'),
(403, 'NE05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Gómez', 'Instituto del Patrimonio Cultural', 2, '978-980-397-111-3', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera'),
(405, 'BA0049', 'Carlos Gonzáles Bogen', 'Zhelma Portillo', 1, '978-980-7039-98-7', 2, 1, 2, 50, '2008-11-06', '', NULL, ''),
(406, 'E1-040', 'Atapaima', 'José Antonio Escalona-Escalona', 21, '000000', 1, 6, 1, 50, '2000-12-11', '', NULL, ''),
(410, 'C-94', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '4', 'segunda'),
(411, 'NE0304', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Díaz García', 'Instituto del Patrimonio Cultural', 2, '978-980-397-112-0', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '4-3', 'Primera'),
(413, 'C-95', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '6', 'segunda'),
(415, 'C-96', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '11', 'segunda'),
(416, 'C-97', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '12', 'segunda'),
(417, 'BA0050', 'Emerio Darío Lunar', 'Oscar Gonzáles Bogen', 1, '978-980-7039-42-0', 1, 1, 2, 52, '2008-11-27', '', NULL, ''),
(418, 'NE07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Marcano', 'Instituto del Patrimonio Cultural', 2, '978-980-397-094-9', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera'),
(422, 'NE06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Maneiro', 'Instituto del Patrimonio Cultural', 2, '980-6448-91-X', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera'),
(425, 'BA0051', 'Jorge Chacón', 'Alejandro Useche', 1, '978-980-7039-79-6', 3, 1, 2, 52, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(426, '367657', 'Urubuquaquá', 'João Guimarães Rosa', 20, '84-322-0455-2', 1, 13, 2, 0, '1982-12-11', 'Seix Barral, S.A.', NULL, 'Primera'),
(427, 'E1-041', 'El misterio de las catedrales', 'Fulcanelli', 28, '000000', 1, 6, 1, 51, '1926-12-01', '', NULL, ''),
(429, 'BA0052', 'Amarilis Hannot', 'Gabino matos', 1, '978-980-7240-19-2', 3, 1, 2, 53, '2009-11-21', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(430, 'BA0053', 'Ángel Hurtado', 'Zhelma Portillo', 1, '978-980-7039-69-7', 3, 1, 2, 54, '2008-11-24', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(431, 'C-3', 'mantis religiosa', 'Reina Ramona  Alvarez de Casas', 20, '03', 1, 4, 2, 0, '0000-00-00', 'El perro y la rana', NULL, 'primera'),
(432, 'E1-042', 'Memorias de Altagracia', 'Salvador Garmendia', 20, '980-01-0479-8', 1, 6, 1, 52, '1991-08-06', 'Monte Ávila Editores', NULL, '1°'),
(435, 'BA0054', 'Luisa Richter', 'Nydia Gutiérrez', 1, '978-980-7039-72-7', 3, 1, 2, 55, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(436, 'C-8', 'Un templo y un ausente', 'Blanca Isabel de Lima', 17, '08', 1, 4, 2, 0, '2006-07-11', 'El perro y la rana', NULL, 'primera'),
(437, 'BJ 1', 'Viajes de Gulliver', 'Jhonathan Swift', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '1', 'primera'),
(441, '638263', 'Tradición nacionalidad y americanidad', 'Mario Briceño Iragorry', 28, '9788000106694', 1, 13, 2, 0, '1955-12-11', 'Editorial Universitaria, S.A.', NULL, 'Primera'),
(444, 'E1-043', 'El Quiriminduña de los Ñereñeres', 'Cesar Chirinos', 20, '000000', 1, 6, 1, 53, '1980-03-15', 'Monte Ávila Editores', NULL, ''),
(445, 'C-9', 'El juego del garrote', 'Argimiro Gonzales', 17, '08', 1, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera'),
(446, 'BA0055', 'Harry Abend', 'Marisa Mena', 1, '978-980-7039-67-3', 3, 1, 2, 56, '2008-11-28', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(447, 'B2', 'Ivanhoe', 'Walter Scott', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '2', 'primera'),
(449, 'C-11', 'El morrocoy bajo la lluvia', 'Julio Jauregi', 15, '11', 2, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera'),
(450, '73927', 'Persistencia del desvelo', 'Hesnor Rivera', 21, 'BPO712', 1, 13, 2, 0, '1976-12-11', 'Monte Ávila editores, C.A.', NULL, 'Primera'),
(451, 'BA0056', 'Anna María Mazzei', 'Costanza de Rogatis', 1, '978-980-7039-85-7', 3, 1, 2, 57, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(452, 'E1-044', 'Folklore Venezolano', 'R. Olivares Figueroa', 42, '000000', 1, 6, 1, 54, '2025-12-11', '', NULL, ''),
(453, 'NE11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Villalba', 'Instituto del Patrimonio Cultural', 2, '980-397-004-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '11', 'Primera'),
(455, 'ME02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Andrés Bello', 'Instituto del Patrimonio Cultural', 2, '980-6448-75-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera'),
(456, 'Juan X', 'Cartas a sus Familiares', 'Ediciones Paulinas', 20, '84-285-0257-9', 1, 11, 5, 0, '1978-01-01', 'Paulinas', '1', 'primera'),
(457, 'BA0057', 'Manasés', 'Zhelma Portillo', 1, '978-980-7039-97-0', 3, 1, 2, 58, '2008-11-23', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(458, 'E1-045', 'Mocedades de Bolivar', 'R. Blanco Fombona', 5, '000000', 1, 6, 1, 55, '1988-02-06', '', NULL, ''),
(459, '638273', 'Los verdes de mayo hasta el mar', 'Luis Goytisolo', 20, '84-322-0301-7', 1, 13, 2, 0, '1976-12-11', 'Seix Barral, S.A.', NULL, 'Primera'),
(460, 'ME19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Santos Marquina', 'Instituto del Patrimonio Cultural', 2, '980-6448-89-8', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '19', 'Primera'),
(461, 'Ccs 2', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '0000', 1, 11, 2, 0, '1981-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '8', 'primera'),
(463, 'ME01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Alberto Adriani', 'Instituto del Patrimonio Cultural', 2, '978-980-397-083-3', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera'),
(464, 'Claudi', 'Claudio el Dios y su esposa Mesalina', 'Robert Graves', 20, '84-473-0666-6', 1, 11, 5, 0, '1994-01-01', 'Robert Graves', '1', 'primera'),
(465, 'Ccs 3', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '000', 1, 11, 2, 0, '1985-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '9', 'primera'),
(466, 'BA0058', 'Pablo Antonio Millán', 'Marisa Mena', 1, '978-980-7240-50-5', 3, 1, 2, 59, '2010-02-16', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(467, 'E1-046', 'Borradores', 'Enrique Castellanos', 28, '000000', 1, 6, 1, 46, '1983-12-11', 'Academia nacional de la historia', NULL, ''),
(468, 'ME21', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tovar', 'Instituto del Patrimonio Cultural', 2, '980-6448-77-4', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '21', 'Primera'),
(469, 'Litera', 'Premios Nacionales de Cultura', 'Carlos Noguera', 3, '980-376-118-8', 1, 11, 5, 0, '2005-01-01', 'Literatura 2002-2003', '1', 'primera'),
(470, 'ME17', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Rangel', 'Instituto del Patrimonio Cultural', 2, '980-6448-93-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '17', 'Primera'),
(471, 'Ccs 4', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 2, 11, 2, 0, '1986-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '10', 'primera'),
(472, 'C-13', 'San francisco de asis vitral de memorias', 'Jose Sanchez Arevalo', 43, '13', 1, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera'),
(473, 'E1-047', 'Crónicas de las horas', 'Antonia Palacios', 15, '000000', 1, 6, 1, 57, '1980-12-11', 'Monte Ávila Editores', NULL, ''),
(474, 'Ccs 5', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '000', 1, 11, 2, 0, '1989-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '8', 'primera'),
(475, 'Hiroma', 'La Fuerza de la Afinidad', 'Hiroma', 21, '0000', 1, 11, 5, 0, '2011-01-01', 'Hiroma', '1', 'primera'),
(476, 'Ccs 6', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 1, 11, 2, 0, '1995-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '11-12-13', 'primera'),
(477, 'Ulises', 'Ulises y el Laberinto', 'Francisco Rivera', 20, '0000', 1, 11, 5, 0, '1983-01-01', 'Antares', '1', 'primera'),
(478, 'BA0059', 'José Faneite', 'Natalia Afanasiev', 1, '978-980-7039-83-3', 2, 1, 2, 60, '2008-11-28', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(479, 'Ccs 7', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 2, 11, 2, 0, '1996-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '15', 'primera'),
(480, 'C-12', 'un estilo muy especial', 'Briquette Rodriguez Barrios', 15, '12', 1, 4, 2, 0, '2006-06-11', 'El perro y la Rana', NULL, 'primera'),
(481, 'BA0060', 'Nicasio Duno', 'Gabino matos', 1, '978-980-7039-48-2', 3, 1, 2, 61, '2008-11-21', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(482, 'La Ide', 'Poesia Popular y Nativista', 'José del Real Montilla', 21, '0000', 1, 11, 5, 0, '2006-01-01', 'Poesia Popular y Nativista', '1', 'primera'),
(483, '63836', 'Edad prohibida', 'Torcuato Luca de Tena', 20, '978-84-320-2233-3', 1, 13, 2, 0, '1958-12-11', 'Círculo de lectores, C.A.', NULL, 'Primera'),
(484, 'ME23', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Zea', 'Instituto del Patrimonio Cultural', 2, '978-980-397-084-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '23', 'Primera'),
(485, 'C-14', 'Y la lluvia borro la sangre en carabobo', 'Igor Garcia Rodriguez', 15, '14', 1, 4, 2, 0, '2006-06-11', 'El perro y la Rana', NULL, 'primera'),
(486, 'BA0061', 'Pepe López', 'Susana Benko', 1, '978-980-7240-11-6', 3, 1, 2, 62, '2008-11-30', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(487, 'ME06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Campo Elías', 'Instituto del Patrimonio Cultural', 2, '980-6448-67-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera'),
(488, 'BJ 2', 'Biblioteca Juvenil Ivanhoe', 'Walter Scott', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '2', 'primera'),
(489, 'ME12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Libertador', 'Instituto del Patrimonio Cultural', 2, '978-980-397-062-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera'),
(490, 'C-15', 'Cuentos cortos de vivos, muertos y aparecidos', 'Noelia Rodriguez', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera'),
(491, 'C-16', 'Chismaranga', 'Cruz Arnalado Jimenez Riera', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera'),
(492, 'Barthe', 'Ensayos Estructuralistas', 'Ronald Barthes', 28, '0000', 1, 11, 5, 0, '1971-01-01', 'Ensayos Estructuralistas', '1', 'primera'),
(493, 'ME0714', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Caracciolo Parra Olmedo Obispo Ramos de Lora', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '7-14', 'Primera'),
(494, 'BJ 3', 'Biblioteca Juvenil Aventuras De Tom Sawyer', 'Mark Twain', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '3', 'primera'),
(495, 'BA0062', 'Mónica Chalbaud', 'Nelly Barbieri', 1, '978-980-7039-32-1', 3, 1, 2, 63, '2008-11-13', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(496, 'C-17', 'Casa de Difuntos y otros Cuentos', 'Cruz Arnalado Jimenez Riera', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera'),
(497, 'ME20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-6448-84-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '20', 'Primera'),
(499, 'Colecc', 'Para Contribuir a la Confusion General', 'Aldo Pellegrini', 28, '0000', 1, 11, 5, 0, '1728-01-01', 'Nueva Vision', '1', 'primera'),
(500, 'BJ 4', 'Biblioteca Juvenil Cuentos', 'Anderson', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '4', 'primera'),
(501, 'C-18', 'URIMARE: REINA DEL GUACHARO', 'Felix Medina Bracho', 15, '16', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera'),
(502, 'ME06-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Arzobispo Chacón Guaraque', 'Instituto del Patrimonio Cultural', 2, '978-980-397-114-4', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '05-09', 'Primera'),
(503, 'El Poz', 'El Pozo Onetti', 'Juan Carlos Onetti', 20, '0000', 1, 11, 5, 0, '1969-01-01', 'El Pozo Onetti', '1', 'primera'),
(504, 'BA0063', 'Esteban Mendoza', 'Luis Velázquez', 1, '978-980-7240-42-0', 3, 1, 2, 64, '2008-02-20', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(505, '647377', 'Ramón Palomares: Habitando el reino', 'Pedro Ruiz', 21, '978-980-6743-40-3', 1, 13, 2, 0, '2008-12-11', 'Fondo Editorial Arturo Cardozo', NULL, 'Primera'),
(506, 'BJ 5', 'Biblioteca Juvenil la Isla Del Tesoro', 'Robert Louis Stevenson', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '5', 'primera'),
(508, 'YA09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Nirgua', 'Instituto del Patrimonio Cultural', 2, '980-6448-68-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera'),
(509, 'Cuento', 'Cuento de Color', 'Manuel Diaz Rodriguez', 15, '0000', 1, 11, 5, 0, '1972-01-01', 'Monte Avila', '1', 'primera'),
(511, 'C-19', 'cuentos de san garabato de la costa', 'Jorge jaber ferretis', 15, '18', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera'),
(512, 'BA0064', 'José Requena', 'Willy Arangure', 1, '978-980-7039-65-9', 3, 1, 2, 65, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(513, 'Las Ro', 'Las Rodriguerias De Samuel Robinson', 'Trino Borgez', 15, '0000', 1, 11, 5, 0, '2004-01-01', 'Mucuglifo', '1', 'primera'),
(514, 'BJ 6', 'Biblioteca Juvenil Viajes De Marco Polo', 'Olive Price', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '6', 'primera'),
(515, 'C-20', 'Vivir en marin', 'Rafael Augusto Quintero', 43, '20', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera'),
(516, 'YA03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Bruzual', 'Instituto del Patrimonio Cultural', 2, '980-397-0240', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '3', 'Primera'),
(517, '79389', 'Voces de medianoche', 'Antonio Betancor', 21, '978-980-396-886-1', 1, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(518, 'La Inu', 'Guasdualito Tragedia Heroísmo y Amor', 'Angel Sabril Nieves', 44, '0000', 1, 11, 5, 0, '2002-01-01', 'Guasdualito Tragedia Heroísmo y Amor', '1', 'primera'),
(519, 'C-21', 'GUATIRE: VISOS DE UNA HISTORIA GLORIOSA', 'Rafael Augusto Quintero', 43, '21', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera'),
(520, 'BJ 7', 'Biblioteca Juvenil Los Tres Mosqueteros', 'Alejandro Dumas', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '7', 'primera'),
(521, 'BA0065', 'Adonay Duque', 'Enrique Viloria Vera', 1, '978-980-7039-63-5', 3, 1, 2, 66, '2008-06-05', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(522, 'C-22', 'CAMONINA', 'Leon Moraria', 43, '22', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera'),
(523, 'YA01-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Arístides Bastidas Sucre', 'Instituto del Patrimonio Cultural', 2, '978-980-397-103-8', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '1-20', 'Primera'),
(524, 'El Ind', 'El Indio', 'Humberto Febres Rodriguez', 15, '0000', 1, 11, 5, 0, '2001-01-01', 'Humberto Febres Rodriguez', '1', 'primera'),
(525, 'YA04-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Cocorote La Trinidad', 'Instituto del Patrimonio Cultural', 2, '980-397-027-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4-11', 'Primera'),
(526, 'BA0066', 'Rafaela Baroni', 'Zhelma Portillo', 1, '978-980-7240-20-8', 2, 1, 2, 67, '2009-11-29', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(527, 'BJ 8', 'Biblioteca Juvenil Robinson Crusoe', 'Daniel Defoe', 20, '0000', 1, 11, 3, 0, '1972-10-01', 'Biblioteca Juvenil', '8', 'primera'),
(528, 'C-23', 'Relatos de la IV', 'Tarik Souki', 30, '23', 2, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera'),
(529, 'Guaric', 'Guarico, Aragua y sus lugares comunes', 'Jose Gregorio Correa y Argenis Ranuarez', 44, '0000', 6, 11, 5, 0, '2008-01-01', 'Guarico, Aragua y sus lugares comunes', '1', 'primera'),
(530, 'YA06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios José Antonio Páez Urachiche', 'Instituto del Patrimonio Cultural', 2, '980-397-057-7', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '13-15', 'Primera'),
(531, 'YA05-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Independencia San Felipe', 'Instituto del Patrimonio Cultural', 2, '978-980-397-09-18', 1, 5, 1, 0, '0000-00-00', 'Instituto del Patrimonio Cultural', '5-11', 'Primera'),
(532, 'BA0067', 'Rubén Núñez', 'Fernando Rojas', 1, '978-980-7039-88-8', 3, 1, 2, 68, '2008-06-25', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(533, 'Antolo', 'Antología Mínima', 'Adriano Gonzáles León', 44, '0000', 2, 11, 5, 0, '1931-01-01', 'Fondo Editorial Arturo Cardozo', '1', 'primera'),
(534, 'AN18-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Simón Bolívar Turístico Diego Bautista Urbaneja', 'Instituto del Patrimonio Cultural', 2, '978-980-397-107-6', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '18-21', 'Primera'),
(535, 'C-24', 'La historia Popular de la rebelion popular de 1814', 'Juan Uslar Pietri', 17, '9789800117750', 2, 4, 2, 0, '2006-06-23', 'Monte Avila', NULL, 'primera'),
(536, 'BA0068', 'Demetrio Silva', 'William García', 1, '978-980-7240-53-6', 3, 1, 2, 69, '2010-03-18', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(537, 'AN06-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Guanta Juan Antonio Sotillo', 'Instituto del Patrimonio Cultural', 2, '980-397-053-4', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '6-8', 'Primera'),
(538, 'caraca', 'Nuevos Narradores de Venezuela', 'Ince', 9, '0000', 1, 11, 5, 0, '1985-01-01', 'Ediciones Culturales', '1', 'primera'),
(539, 'AN15-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios San José de Guanipa Simón Rodríguez', 'Instituto del Patrimonio Cultural', 2, '980-6448-50-2', 1, 5, 1, 0, '2005-02-22', 'Instituto del Patrimonio Cultural', '15-18', 'Primera'),
(540, '081919', 'Historias del Paraíso', 'Gustavo Pereira', 21, '978-980-396-987-5', 2, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', '2', 'Primera'),
(541, 'C-25', 'Memorias de la insurgencia', 'Fundacion centro nacional de historia', 40, '9789807053198', 1, 4, 2, 0, '2006-06-23', 'Fundacion centro nacional de historia', NULL, 'primera'),
(542, 'AN01-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Anaco Pedro María Freites', 'Instituto del Patrimonio Cultural', 2, '980-6448-50-2', 1, 5, 1, 0, '2007-02-22', 'Instituto del Patrimonio Cultural', '1-13', 'Primera'),
(543, 'MLU 1', 'Otras Literaturas', 'Maestros De La Literatura Universal', 3, '84-8280-685-8', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '15', 'primera'),
(544, 'BA0069', 'Jeús Guerrero', 'Nydia Gutiérrez', 1, '978-980-7039-71-0', 3, 1, 2, 70, '2008-11-26', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(545, '488867', 'Poesía', 'Raúl Hernández Novás', 21, '978-959-260-210-6', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Casa de las América', NULL, 'Primera'),
(546, 'MLU 2', 'Norteamerica', 'Maestros De La Literatura Universal', 3, '84-8280-670-7', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '10', 'Segunda'),
(547, 'El Mar', 'El Marques de Bocono 1', 'Virgilio Tosta', 9, '0000', 1, 11, 5, 0, '1974-01-01', 'Temas Barines', '1', 'primera'),
(548, 'C-26', 'Jose Antonio Paez visto por cinco historiadores', 'Cristobal L Mendoza', 17, '26', 1, 4, 2, 0, '1973-07-11', 'Academia nacional de la historia', NULL, 'primera'),
(549, 'BA0070', 'Lihie Talmor', 'Rafael Rondón Narváez', 1, '978-980-7039-82-6', 3, 1, 2, 71, '2008-06-10', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(550, 'E1-056', 'Caracter de Urgencia', 'José Miguel Casado', 21, '978-980-396-758-1', 1, 6, 1, 78, '2007-12-11', 'El Perro y La Rana', NULL, ''),
(551, '639928', 'Poemas para el olvido', 'Francisco Ardiles', 21, '980-396-198-5', 1, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(552, 'MLU 3', 'Francia', 'Maestros De La Literatura Universal', 3, '84-8280-684-x', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '14', 'primera'),
(554, 'BA0071', 'Diego Barboza', 'Marisa Mena', 1, '978-980-7039-66-6', 3, 1, 2, 72, '2008-06-23', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(555, 'C-27', 'El libro de los cronistas de venezuela', 'Cristobal L Mendoza', 2, '26', 1, 4, 2, 0, '2004-10-05', 'Gobernacion del estado aragua', '2', 'primera'),
(556, 'Poesia', 'Breve Antologia', 'Eldis Araque', 21, '980-6023-21-8', 1, 11, 5, 0, '1960-01-01', 'Breve Antologia', '1', 'primera'),
(557, 'MLU 4', 'Inglaterra', 'Maestros De La Literatura Universal', 3, '84-8280-683-1', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '13', 'Segunda'),
(558, 'E1-057', 'En sol de sed', 'Adhely rivero', 21, '000000', 1, 6, 1, 79, '1990-06-08', '', NULL, ''),
(559, '478569', 'Antípodas', 'Luis Alberto Angulo', 21, '980-328-100-3', 1, 13, 2, 0, '1998-12-11', 'Fondo Editorial Predios', NULL, 'Segunda'),
(560, 'UNA-1', 'Geometría - Guía Instruccional', 'Universidad Nacional Abierta', 24, '980-236-428-2', 1, 13, 1, 0, '1995-12-12', 'Universidad Nacional Abierta', NULL, 'Tercera'),
(561, 'MLU 5', 'Rusia', 'Maestros De La Literatura Universal', 3, '84-8280-674-2', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '4', 'primera'),
(562, 'BA0072', 'Grone Romepri', 'Perán Erminy (Rampe Nymire)', 1, '978-980-7240-55-0', 3, 1, 2, 73, '2010-02-04', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(563, 'C-28', 'Diarios una seleccion Francisco de miranda', 'Juan Carlos Chirinos', 17, '9789801402527', 1, 4, 2, 0, '2007-10-05', 'El perro y la Rana', NULL, 'primera'),
(564, '468657', 'Baraja de fuego', 'Ulrike Sánchez', 21, '980-6911-03-2', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Teatro de Venezuela', NULL, 'Primera'),
(565, 'Hola P', 'Pompeyo Maria Moños', 'Levy Rossell', 45, '0000', 1, 11, 5, 0, '1994-02-22', 'Levy Rossell', '1', 'primera'),
(566, 'BA0073', 'Antonio Moya', 'José Omaña', 1, '978-980-7039-51-2', 3, 1, 2, 74, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(567, '46776', 'Sol decapitado', 'José Daniel Suárez Hermoso', 21, '980-6911-09-1', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Teatro de Venezuela', NULL, 'Primera'),
(568, 'E1-058', 'Libro de memorias y Homilias', 'Lisimaco A. Gutierrez M.', 46, '980-302-126-5', 1, 6, 1, 80, '2025-12-11', '', NULL, ''),
(569, 'La Muj', 'La Mujer', 'Jules Michelet', 2, '968-16-1980-3', 1, 11, 5, 0, '1985-01-01', 'Fondo Cultural Economica', '1', 'primera'),
(570, 'MLU 1.', 'Norteamerica', 'Maestros De La Literatura Universal', 3, '84-8280-673-4', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '3', 'primera'),
(571, 'BA0074', 'Néstor Alí Quiñones', 'Zhelma Portillo', 1, '978-980-7039-96-3', 3, 1, 2, 75, '2008-11-17', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(572, 'C-29', '1er Certamen mayor de las artes y letras 2005 capitulo artes visuales', 'Editorial Artes', 1, '29', 2, 4, 2, 0, '2006-10-08', 'Editorial Arte', NULL, 'primera'),
(573, 'E1-059', 'Facia', 'Alberto Jiménez Ure', 20, '000000', 1, 6, 1, 81, '1984-12-11', 'Damocles Editores', NULL, ''),
(574, 'Concep', 'Conceptos de Ecologia', 'Edward J. Kormondy', 22, '84-206-2032-7', 1, 11, 5, 0, '1978-01-01', 'Alianza Universidad', '1', 'primera'),
(575, 'MLU 4.', 'Inglaterra', 'Maestros De La Literatura Universal', 3, '84-8280-670-0', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '5', 'primera'),
(576, '478668', 'Vigilia de los metales', 'Enrique Mujica', 21, '2004', 1, 13, 2, 0, '2004-12-11', 'Asociación de escritores del estado Barinas', NULL, 'Primera'),
(577, 'BA0075', 'José Basanta', 'José Basanta', 1, '978-980-7039-45-1', 3, 1, 2, 76, '2008-11-19', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(578, 'E1-060', 'Guzmán Blanco y el arte venezolano', 'Roldán Esteva Grillet', 28, '980-222-104', 1, 6, 1, 82, '1986-12-11', 'Academia nacional de la historia', NULL, ''),
(579, 'La Met', 'La Metamorfosis', 'Franz Kafka', 20, '84-206-1004-6', 1, 11, 5, 0, '1975-01-01', 'Alianza Editorial', '1', 'primera'),
(580, 'BA0076', 'Víctor Valera', 'Zhelma Portillo', 1, '978-980-7039-95-6', 2, 1, 2, 77, '2008-02-13', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(581, 'MLU 5.', 'Rusia', 'Maestros De La Literatura Universal', 3, '84-8280-679-3', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '9', 'Segunda'),
(583, 'K1-420', 'Geometría - Lecturas', 'Universidad Nacional Abierta', 24, '0000', 1, 13, 1, 0, '1996-11-11', 'Universidad Nacional Abierta', NULL, ''),
(584, 'C-30', 'Conversaciones con Uslar Piestri', 'Alfredo Peña', 48, '30', 1, 4, 2, 0, '1978-10-08', 'Ateneo de caracas', NULL, 'primera'),
(585, '628272', 'Sed de esta lluvia', 'Belkis Cartay Angulo', 21, 'BLL215', 1, 13, 2, 0, '1986-12-11', 'Fondo Editorial A.P.U.L.A', NULL, 'Primera'),
(586, 'BA0077', 'Sigfredo Chacón', 'Luis Velázquez', 1, '978-980-7240-21-5', 3, 1, 2, 78, '2009-11-26', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(587, 'MLU 6', 'Alemania', 'Maestros De La Literatura Universal', 3, '84-8280-681-5', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '11', 'primera'),
(588, 'Razone', 'Razones de la nueva critica', 'Serge Doubrovsky', 3, '0000', 1, 11, 5, 0, '1974-11-30', 'Monte Avila', '1', 'primera'),
(589, 'BA0078', 'Régulo Pérez', 'Tarim Gols', 1, '978-980-7039-31-4', 2, 1, 2, 79, '2008-11-26', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(590, 'MLU 7', 'España', 'Maestros De La Literatura Universal', 3, '84-8280-682-3', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '12', 'primera'),
(591, 'Pajaro', 'Pajaro de Remoto Plumaje', 'Orlando Urbina', 21, '0000', 1, 11, 5, 0, '1992-07-01', 'Consejo Nacional de Cultura', '1', 'primera'),
(592, 'E1-062', 'Caza - Relampago', 'Manuel Diario Gruber', 21, '980-292-0681', 1, 6, 1, 84, '2025-12-11', '', NULL, ''),
(593, 'C-31', 'Chavez Nuestro', 'Rosa Miriam Elizalde - Luis Baez', 5, '9592103313', 2, 4, 2, 0, '2004-10-08', 'Casa editora Abril', NULL, 'primera'),
(594, 'K1-002', 'Seminario Internacional Equidad de Género en Acción', 'Fundación Editorial El Perro y la Rana', 4, '978-980-14-0742-3', 1, 13, 1, 0, '2009-12-12', 'Fundación Editorial El Perro y la Rana', NULL, 'Primera'),
(595, 'MLU 8', 'Venezuela', 'Maestros De La Literatura Universal', 3, '84-8280-686-6', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '7', 'primera'),
(596, 'BA0079', 'María Centeno', 'Carmen Hernández', 1, '978-980-7039-40-6', 2, 1, 2, 80, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(597, 'El Pol', 'El Politico', 'Azorin', 5, '0000', 1, 11, 5, 0, '1968-01-01', 'Coleccion Austral', '1', 'tercera'),
(598, 'MLU 9', 'Italia', 'Maestros De La Literatura Universal', 3, '84-8280-678-5', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '8', 'primera'),
(599, 'C-32', 'Escenarios del cuerpo', 'Entre el exceso y la represion', 7, '9789801402367', 1, 4, 2, 0, '2010-10-08', 'El perro y la Rana', NULL, 'primera'),
(600, 'Peonia', 'Peonia', 'Manuel Vicente Romero Garcia', 20, '980-01-142-X', 1, 11, 5, 0, '1986-01-01', 'Monte Avila Editores', '1', 'primera'),
(601, 'K1-003', 'Me Too - English for the Ninth Grade', 'Olga Flores Blanco', 24, '980-6277-36-8', 1, 13, 1, 0, '1992-12-12', 'Obelisco', NULL, ''),
(602, 'MLU 10', 'Latinoamerica', 'Maestros De La Literatura Universal', 3, '84-8280-672-6', 2, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '2', 'primera'),
(603, '729732', 'Omar Moreno Gil', 'Elvin Barreto', 5, '978-980-14-003-5', 3, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera'),
(604, 'E1-063', 'Ideas positivistas en Gil Fortoul y su historia', 'Antonio Mieres', 28, '000000', 1, 6, 1, 85, '1981-12-11', '', NULL, ''),
(605, 'BA0080', 'Pancho Quilici', 'Gladys Yunes Yunes', 1, '978-980-7039-52-9', 1, 1, 2, 81, '2008-11-17', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(606, 'Americ', 'America Dada al Diablo', 'Benjamin Carrion Monte Avila', 44, '0000', 1, 11, 5, 0, '1994-02-03', 'Monte Avila Editores', '1', 'primera'),
(607, 'BA0081', 'Carlos Medina', 'Nany Goncalves', 1, '978-980-7039-41-3', 3, 1, 2, 82, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(608, 'E1-064', 'Guasina - Así ocurrio', 'Juvenil Romero', 30, '000000', 1, 6, 1, 86, '1987-12-11', '', NULL, ''),
(609, 'C-33', 'Einstein', 'Banesh Hoffman', 5, '9788434581456', 1, 4, 2, 0, '1985-10-08', 'Salvat Editores', NULL, 'primera'),
(610, 'K1-004', 'Boletín del Centro de Investigaciones Históricas y Estéticas', 'Universidad Central de Venezuela - Facultad de Arquitectura y Urbanismo', 49, '80-0103', 1, 13, 1, 0, '1980-12-12', 'Universidad Central de Venezuela - Facultad de Arquitectura y Urbanismo', NULL, ''),
(611, 'AB', 'Poesias Andres Bello', 'Andres Bello', 21, '0000', 1, 11, 3, 0, '1952-01-01', 'Obras Completas De Andres Bello', '1', 'primera'),
(612, 'E1-065', 'Un millón de pájaros muertos', 'Chicho', 21, '000000', 1, 6, 1, 87, '2003-12-11', 'El árbol editores', NULL, ''),
(613, 'BA0082', 'Carlos Prada', 'María Eugenia Zambrano', 1, '978-980-7039-58-1', 2, 1, 2, 83, '2008-11-22', 'COLECCION ARTE VENEZOLANO', NULL, ''),
(614, '698199', 'Apuntes para la Historia del Agua', 'Wilfredo Bolívar', 17, 'BH172', 1, 13, 2, 0, '2000-12-11', 'LITORAMA', NULL, 'Primera'),
(619, 'c-1001', 'prueba3', 'luis', 13, '4357892759', 10, 4, 4, 5, '2025-12-09', 'eriberto', '5', '2da');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revistas`
--

CREATE TABLE `revistas` (
  `id` int(11) NOT NULL,
  `cod_identificador` varchar(6) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL,
  `issn` varchar(20) NOT NULL,
  `n_copias` int(11) NOT NULL DEFAULT 1,
  `estante_id` int(11) NOT NULL,
  `fila` int(11) NOT NULL,
  `posicion` int(11) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `editorial` varchar(150) DEFAULT NULL,
  `volumen` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `periodicidad` enum('DIARIA','SEMANAL','MENSUAL','BIMESTRAL','TRIMESTRAL','ANUAL') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revistas`
--

INSERT INTO `revistas` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `issn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `volumen`, `numero`, `periodicidad`) VALUES
(1, 'E1-048', 'Jóvenes chinos de hoy', 'Editorial Nueva Estrella', 44, '7-80148-588-2', 1, 6, 1, 58, '1999-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(2, 'E1-049', 'Los recursos naturales y la protección medioambiental china', 'Editorial Nueva Estrella', 44, '7-80148-598', 1, 6, 1, 59, '1999-12-11', '', NULL, NULL, ''),
(3, 'E1-050', 'Reservas naturales', 'Editorial Nueva Estrella', 44, '7-80225-140-0', 1, 6, 1, 60, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(4, 'E1-051', 'Acción contra la arena', 'Editorial Nueva Estrella', 44, '7-80225-141-9', 3, 6, 1, 63, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(5, 'E1-052', 'Nuestras Ciudades', 'Editorial Nueva Estrella', 11, '7-80148-950-0', 2, 6, 1, 65, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(6, 'E1-053', 'Sociedad del Ahorro', 'Editorial Nueva Estrella', 44, '7-80148-948-9', 3, 6, 1, 68, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(7, 'E1-054', 'Protección de la cultura tradicional en china', 'Editorial Nueva Estrella', 44, '7-80225-135-4', 4, 6, 1, 72, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(8, 'Calend', 'Calendario de Fiestas Religiosas', 'Aythaima Grupo Editor', 11, '0000', 1, 11, 5, 0, '2010-01-01', 'Aythaima Grupo Editor', NULL, NULL, ''),
(9, 'E1-055', 'Mujeres y niños', 'Editorial Nueva Estrella', 44, '7-80225-143-5', 5, 6, 1, 77, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, ''),
(11, 'K1-001', 'Passages', 'Pro Helvetia', 47, '0000', 1, 13, 1, 0, '2009-11-12', 'Pro Helvetia', NULL, 51, 'MENSUAL'),
(12, 'E1-061', 'Tierra Firme', 'LAGOVWN', 17, '0798-2194', 1, 6, 1, 83, '1991-05-08', '', 9, NULL, 'ANUAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `permisos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`permisos`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `permisos`) VALUES
(1, 'Administrador', '[\"crear\",\"editar\",\"eliminar\"]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `usuario`, `password`, `rol_id`, `is_admin`) VALUES
(3, 'luis', 'rojas', '28068018', 'burrx23', '1234', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `estanterias`
--
ALTER TABLE `estanterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_identificador` (`cod_identificador`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `estante_id` (`estante_id`),
  ADD KEY `isbn` (`isbn`) USING BTREE;

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `revistas`
--
ALTER TABLE `revistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_identificador` (`cod_identificador`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `estante_id` (`estante_id`),
  ADD KEY `issn` (`issn`) USING BTREE;

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `estanterias`
--
ALTER TABLE `estanterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `revistas`
--
ALTER TABLE `revistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`estante_id`) REFERENCES `estanterias` (`id`);

--
-- Filtros para la tabla `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `revistas`
--
ALTER TABLE `revistas`
  ADD CONSTRAINT `revistas_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `revistas_ibfk_2` FOREIGN KEY (`estante_id`) REFERENCES `estanterias` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
