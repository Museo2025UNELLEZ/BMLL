-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2026 at 03:15 PM
-- Server version: 8.0.42
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c2771281_bmll`
--
CREATE DATABASE IF NOT EXISTS `c2771281_bmll` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`) VALUES
(1, 'Arte', '2025-12-17 18:55:25'),
(2, 'Cultura Venezolana', '2025-12-17 18:55:25'),
(3, 'Literatura', '2025-12-17 18:55:25'),
(4, 'Sociologia', '2025-12-17 18:55:25'),
(5, 'Biografía', '2025-12-17 18:55:25'),
(6, 'Política', '2025-12-17 18:55:25'),
(7, 'Psicologia', '2025-12-17 18:55:25'),
(9, 'Biografia literaria', '2025-12-17 18:55:25'),
(10, 'Enciclopedia', '2025-12-17 18:55:25'),
(11, 'Turismo', '2025-12-17 18:55:25'),
(12, 'Artes escenicas', '2025-12-17 18:55:25'),
(13, 'Economía', '2025-12-17 18:55:25'),
(14, 'Economía agraria', '2025-12-17 18:55:25'),
(15, 'Cuentos', '2025-12-17 18:55:25'),
(16, 'Pedagogía', '2025-12-17 18:55:25'),
(17, 'Historia', '2025-12-17 18:55:25'),
(18, 'Matemática', '2025-12-17 18:55:25'),
(19, 'Geografía', '2025-12-17 18:55:25'),
(20, 'Novela', '2025-12-17 18:55:25'),
(21, 'Poesía', '2025-12-17 18:55:25'),
(22, 'Ciencias naturales', '2025-12-17 18:55:25'),
(23, 'Física', '2025-12-17 18:55:25'),
(24, 'Educación', '2025-12-17 18:55:25'),
(25, 'Comunicación social', '2025-12-17 18:55:25'),
(26, 'Desarrollo personal', '2025-12-17 18:55:25'),
(27, 'Novelas', '2025-12-17 18:55:25'),
(28, 'Ensayos', '2025-12-17 18:55:25'),
(30, 'Relato', '2025-12-17 18:55:25'),
(37, 'Periodismo', '2025-12-17 18:55:25'),
(38, 'Novela lírica', '2025-12-17 18:55:25'),
(39, 'Filosofia', '2025-12-17 18:55:25'),
(40, 'Diccionario', '2025-12-17 18:55:25'),
(41, 'Epistolografia', '2025-12-17 18:55:25'),
(42, 'Folklore', '2025-12-17 18:55:25'),
(43, 'Cronica', '2025-12-17 18:55:25'),
(44, 'Documental', '2025-12-17 18:55:25'),
(45, 'Musica', '2025-12-17 18:55:25'),
(46, 'Religion', '2025-12-17 18:55:25'),
(47, 'Cultura', '2025-12-17 18:55:25'),
(48, 'Reportaje', '2025-12-17 18:55:25'),
(49, 'Arquitectura', '2025-12-17 18:55:25'),
(50, 'Drama', '2025-12-17 18:55:25'),
(51, 'Salud', '2025-12-17 18:55:25'),
(52, 'Agricultura', '2025-12-17 18:55:25'),
(53, 'Informes', '2025-12-17 18:55:25'),
(54, 'Derecho', '2025-12-17 18:55:25'),
(55, 'Humanidades', '2025-12-17 18:55:25'),
(56, 'Memorias', '2025-12-17 18:55:25'),
(57, 'Linguistica', '2025-12-17 18:55:25'),
(58, 'Biología', '2025-12-17 18:55:25'),
(59, 'Química', '2025-12-17 18:55:25'),
(60, 'Ciencias sociales', '2025-12-17 18:55:25'),
(61, 'Monografía', '2025-12-17 18:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `estanterias`
--

CREATE TABLE `estanterias` (
  `id` int NOT NULL,
  `codigo` varchar(3) NOT NULL,
  `n_filas` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estanterias`
--

INSERT INTO `estanterias` (`id`, `codigo`, `n_filas`, `created_at`) VALUES
(1, 'A', 7, '2025-12-17 15:54:34'),
(3, 'B', 7, '2025-12-17 15:54:34'),
(4, 'C', 7, '2025-12-17 15:54:34'),
(5, 'D', 7, '2025-12-17 15:54:34'),
(6, 'E', 7, '2025-12-17 15:54:34'),
(7, 'F', 7, '2025-12-17 15:54:34'),
(9, 'G', 7, '2025-12-17 15:54:34'),
(10, 'H', 7, '2025-12-17 15:54:34'),
(11, 'I', 7, '2025-12-17 15:54:34'),
(12, 'J', 7, '2025-12-17 15:54:34'),
(13, 'K', 7, '2025-12-17 15:54:34'),
(14, 'L', 7, '2025-12-17 15:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `id` int NOT NULL,
  `cod_identificador` varchar(6) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `categoria_id` int NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `n_copias` int NOT NULL DEFAULT '1',
  `estante_id` int NOT NULL,
  `fila` int NOT NULL,
  `posicion` int NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `editorial` varchar(150) DEFAULT NULL,
  `tomo` varchar(25) DEFAULT NULL,
  `edicion` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `libros`
--

INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`, `created_at`) VALUES
(1, 'AM04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Autana', 'Instituto del Patrimonio Cultural', 2, '980-397-026-7', 1, 1, 1, 1, '2007-01-16', 'Instituto del Patrimonio Cultural', '4', 'Primera', '2025-12-17 15:54:02'),
(2, 'B3', 'Encuentro y alternativas venezuela 1994', 'Universidad Catolica Andres Bello', 17, '980-244-081-7', 1, 3, 2, 0, '1994-06-08', 'Publicaciones UCAB', '1', '1', '2025-12-17 15:54:02'),
(3, 'AM03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Atures', 'Instituto del Patrimonio Cultural', 2, '980-6448-94-4', 2, 1, 1, 2, '2006-01-01', 'Instituto del Patrimonio Cultural', '3', 'Primera', '2025-12-17 15:54:02'),
(7, 'AR03-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Girardot Francisco Linares Alcántara', 'Instituto del Patrimonio Cultural', 2, '980-6448-80-4', 1, 1, 1, 3, '2007-06-14', 'Instituto del Patrimonio Cultural', '3-17', 'Primera', '2025-12-17 15:54:02'),
(8, '372782', 'Defensa del sentido común y otros ensayos', 'George Edward Moore', 28, '84-7530-432-X', 1, 13, 2, 3, '1983-01-10', 'Ediciones Orbis, S.A.', '1', 'Primera', '2025-12-17 15:54:02'),
(9, 'AR04-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Jose Ángel Lamas-Libertador', 'Instituto del Patrimonio Cultural', 2, '', 1, 1, 1, 2, '2007-05-08', 'Instituto del Patrimonio Cultural', '4-07', 'Primera', '2025-12-17 15:54:02'),
(16, 'AR16', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Zamora', 'Instituto del Patrimonio Cultural', 2, '980-397-034-8', 1, 1, 1, 0, '2007-01-30', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(19, 'AR0818', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Mario Briceño Iragory Ocumare de la Costa de Oro', 'Instituto del Patrimonio Cultural', 2, '980-6448-73-1', 1, 1, 1, 0, '2007-11-08', 'Instituto del Patrimonio Cultural', '8-18', 'Primera', '2025-12-17 15:54:02'),
(24, '372863', 'Cuatro ensayos sobre literatura venezolana', 'Osvaldo Larrazábal Henríquez', 28, '980-236-617-X', 1, 13, 2, 4, '2001-12-09', 'Universidad Nacional Abierta', '1', 'Primera', '2025-12-17 15:54:02'),
(25, 'C2', 'Sueños y Recuerdos de Simoncito', 'Juan Antonio Choyfu', 15, '980-376-126-9', 1, 4, 1, 2, '2006-11-14', 'El Perro y La Rana', NULL, '', '2025-12-17 15:54:02'),
(27, 'AR-15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolivar Jose Felix Ribas', 'Instituto del Patrimonio Cultural', 2, '980-6448-85-5', 1, 1, 1, 0, '2007-06-12', 'Instituto del Patrimonio Cultural', '1-5', 'Primera', '2025-12-17 15:54:02'),
(30, '545885', 'Lope D Agvirre', 'Casto Fulgencio López', 5, 'BLL353', 1, 13, 2, 1, '1947-12-09', 'Casto Fulgencio López', '1', 'Primera', '2025-12-17 15:54:02'),
(32, 'AR06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios José Rafael Revenga Santos Michelena', 'Instituto del Patrimonio Cultural', 2, '980-397-033-X', 1, 1, 1, 0, '2006-06-05', 'Instituto del Patrimonio Cultural', '6-12', 'Primera', '2025-12-17 15:54:02'),
(33, 'AR09-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios San Casimiro San Sebastián', 'Instituto del Patrimonio Cultural', 2, '980-397-001-1', 1, 1, 1, 0, '2006-06-06', 'Instituto del Patrimonio Cultural', '9-10', 'Primera', '2025-12-17 15:54:02'),
(36, 'AR-13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-397-036-4', 1, 1, 1, 0, '2006-06-13', 'Instituto del Patrimonio Cultural', '13', 'Primera', '2025-12-17 15:54:02'),
(37, 'E1-001', 'La cuestión radiante', 'Fernando Rendon', 21, '555-675-981-0', 1, 6, 1, 1, '2006-12-02', '', NULL, '', '2025-12-17 15:54:02'),
(38, 'BA0000', 'Mercedes Pardo', 'Mercedes Longobardi', 1, '978-980-7039-20-8', 1, 1, 2, 1, '2008-06-11', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(39, '378273', 'Antología Narrativa (Paula, Cambises, Muerte por Agua).', 'Antonio Pérez Carmona', 20, '980-12-1459-7', 1, 13, 2, 5, '2005-12-09', 'Lithopros', '1', 'Primera', '2025-12-17 15:54:02'),
(40, 'AR14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tovar', 'Instituto del Patrimonio Cultural', 2, '980-6448-61-8', 1, 1, 1, 0, '2006-06-14', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(41, 'AR11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Santiago Mariño', 'Instituto del Patrimonio Cultural', 2, '9980-6448-50-2', 1, 1, 1, 0, '2006-02-07', 'Instituto del Patrimonio Cultural', '11', 'Primera', '2025-12-17 15:54:02'),
(42, 'Ba0001', 'Alejandro Colina', 'Milagros González', 1, '978-980-7039-21-5', 2, 1, 1, 2, '2008-11-05', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(43, 'BO0611', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Piar Padre Pedro Chien', 'Instituto del Patrimonio Cultural', 2, '978-980-397-105-2', 1, 1, 1, 0, '2009-02-10', 'Instituto del Patrimonio Cultural', '06-11', 'Primera', '2025-12-17 15:54:02'),
(44, 'BO01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Caroní', 'Instituto del Patrimonio Cultural', 2, '978-980-397-064-2', 1, 1, 1, 0, '2007-02-14', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(45, 'BO05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Heres', 'Instituto del Patrimonio Cultural', 2, '980-6448-23-5', 1, 1, 1, 0, '2005-03-31', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(46, 'MI10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guaicaipuro', 'Instituto del Patrimonio Cultural', 2, '978-980-397-098-7', 1, 1, 1, 0, '2007-01-16', 'Instituto del Patrimonio Cultural', '10', 'Primera', '2025-12-17 15:54:02'),
(47, 'MI0205', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Andrés Bello Buroz', 'Instituto del Patrimonio Cultural', 2, '980-6448-90-1', 1, 1, 1, 0, '2006-01-18', 'Instituto del Patrimonio Cultural', '2-5', 'Primera', '2025-12-17 15:54:02'),
(48, 'MI03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Baruta', 'Instituto del Patrimonio Cultural', 2, '980-6448-6-X', 1, 1, 1, 0, '2005-06-07', 'Instituto del Patrimonio Cultural', '3', 'Primera', '2025-12-17 15:54:02'),
(49, 'E1-002', 'El viejo Gabaldón del tamaño del tiempo', 'Emigdio Cañizares Guedez', 5, '980-263-089-6', 1, 6, 1, 2, '1988-03-08', '', NULL, '', '2025-12-17 15:54:02'),
(50, 'MI01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Acevedo', 'Instituto del Patrimonio Cultural', 2, '980-6448-47-2', 1, 1, 1, 0, '2005-09-06', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(51, 'MI12-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Tomás Lander Simón Bolívar', 'Instituto del Patrimonio Cultural', 2, '980-6448-58-8', 1, 1, 1, 0, '2006-06-06', 'Instituto del Patrimonio Cultural', '12-18', 'Primera', '2025-12-17 15:54:02'),
(52, 'MI11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Independencia Paz Castillo', 'Instituto del Patrimonio Cultural', 2, '980-397-009-9', 1, 1, 1, 0, '2006-01-02', 'Instituto del Patrimonio Cultural', '11-15', 'Primera', '2025-12-17 15:54:02'),
(53, 'MI09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio El Hatillo', 'Instituto del Patrimonio Cultural', 2, '980-6448-77-8', 1, 1, 1, 0, '2005-05-09', 'Instituto del Patrimonio Cultural', '9', 'Primera', '2025-12-17 15:54:02'),
(54, 'E1-003', 'Ibis', 'J.M. Vargas Vila', 20, '980-230-342-9', 10, 6, 1, 3, '1990-07-11', 'Panapo', NULL, '', '2025-12-17 15:54:02'),
(56, 'C-1', 'Cartas a mi padre', 'Verónica Martínez', 30, '949292', 1, 4, 1, 1, '2006-12-19', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(57, 'MI07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Chacao', 'Instituto del Patrimonio Cultural', 2, '980-6448-25-1', 1, 1, 1, 0, '2005-06-06', 'Instituto del Patrimonio Cultural', '7', 'Primera', '2025-12-17 15:54:02'),
(58, 'MI04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Brión', 'Instituto del Patrimonio Cultural', 2, '980-6448-28-6', 1, 1, 1, 0, '2005-10-11', 'Instituto del Patrimonio Cultural', '4', 'Primera', '2025-12-17 15:54:02'),
(59, 'E1-004', 'Cómo a nuestro parecer', 'Carlos Felipe Cardot', 28, '101010', 1, 6, 1, 13, '1985-06-04', 'Academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(62, 'MI20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-6448-39-1', 1, 1, 1, 0, '2005-02-08', 'Instituto del Patrimonio Cultural', '20', 'Primera', '2025-12-17 15:54:02'),
(63, '271963', 'Literatura y sociedad', 'Roland Barthes', 4, '50454', 1, 13, 2, 6, '1971-12-10', 'Universidad libre de Bruselas', NULL, 'Segunda', '2025-12-17 15:54:02'),
(64, 'MI14-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Páez Pedro Gual', 'Instituto del Patrimonio Cultural', 2, '980-3970-37-2', 1, 1, 1, 0, '2007-10-17', 'Instituto del Patrimonio Cultural', '14-16', 'Primera', '2025-12-17 15:54:02'),
(65, 'MI17-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Ambrosio Plaza Zamora', 'Instituto del Patrimonio Cultural', 2, '980-397-035-6', 1, 1, 1, 0, '2009-06-09', 'Instituto del Patrimonio Cultural', '23', 'Primera', '2025-12-17 15:54:02'),
(66, 'MI06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Carrizal Los Salias', 'Instituto del Patrimonio Cultural', 2, '980-397-002-X', 1, 1, 1, 0, '2006-02-07', 'Instituto del Patrimonio Cultural', '6-13', 'Primera', '2025-12-17 15:54:02'),
(67, 'F1-001', 'Victor Roger Quijada Vargas Su vida contada por él', 'Alberto Rafael Alvarado Galiz', 5, '978-980-214-245-3', 1, 7, 1, 1, '2009-12-10', 'Casa nacional de las letras Andres Bello', NULL, '', '2025-12-17 15:54:02'),
(68, '379174', 'Cuando era feliz e indocumentado', 'Gabriel García Márquez', 37, '84-8280-019-1', 1, 13, 2, 7, '1973-12-10', 'Oveja negra', NULL, 'Sexta', '2025-12-17 15:54:02'),
(69, 'MI19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '978-980-397-085-7', 1, 1, 1, 0, '2008-06-10', 'Instituto del Patrimonio Cultural', '19', 'Primera', '2025-12-17 15:54:02'),
(70, 'E1-005', 'Las aventuras imaginarias', 'Julio E. Miranda', 28, '980-222-458-8', 1, 6, 1, 14, '1991-09-09', 'Academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(71, 'MI08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Cristóbal Rojas', 'Instituto del Patrimonio Cultural', 2, '980-6448-38-3', 1, 1, 1, 0, '2005-01-11', 'Instituto del Patrimonio Cultural', '8', 'Primera', '2025-12-17 15:54:02'),
(72, 'E1-006', 'Seis Escritores Larenses', 'Oscar Zambrano Urdaneta', 28, '980-222-039-6', 1, 6, 1, 15, '1986-04-09', 'Academia nacional de la historia', '90', '', '2025-12-17 15:54:02'),
(73, 'F1-002', 'Jardín', 'Dulce María Loynaz', 38, '959-10-0053-7', 1, 7, 1, 2, '0000-00-00', 'Letras Cubanas', NULL, '', '2025-12-17 15:54:02'),
(74, 'VA01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Vargas', 'Instituto del Patrimonio Cultural', 2, '980-6448-22-7', 1, 1, 1, 0, '2005-06-07', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(75, 'E1-007', 'El Paisaje Anterior', 'Barbara Piano', 28, '980-222-444-8', 1, 6, 1, 16, '1989-11-10', 'Academia nacional de la historia', '161', '', '2025-12-17 15:54:02'),
(76, '279273', 'Novelas antes de tiempo', 'Rosa Chacel', 20, '84-02-07701-3', 1, 13, 2, 8, '1981-12-10', 'Bruguera, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(77, 'F1-003', 'Temas arvelianos', 'Guillermo Jimenez Leal', 5, '00000', 1, 7, 1, 3, '2006-12-27', '', NULL, '', '2025-12-17 15:54:02'),
(78, 'E1-008', 'Notas Apocalipticas', 'Ennio Jiménez Eman', 28, '980-222-222-4', 1, 6, 1, 17, '1988-06-09', 'Academia nacional de la historia', '128', '', '2025-12-17 15:54:02'),
(79, 'BA0002', 'Mario Abreu', 'Néstor Balza', 1, '978-980-7039-22-2', 2, 1, 2, 3, '2008-11-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(80, 'E1-009', 'Simbolistas y Modernistas en Venezuela', 'Eduardo Arroyo Alvarez', 28, '980-222-225-9', 1, 6, 1, 18, '1988-06-16', 'Academia nacional de la historia', '129', '', '2025-12-17 15:54:02'),
(81, 'TR0208', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Boconó Juan Vicente Campo Elías', 'Instituto del Patrimonio Cultural', 2, '978-980-397-101-4', 1, 1, 1, 0, '2009-07-08', 'Instituto del Patrimonio Cultural', '2-8', 'Primera', '2025-12-17 15:54:02'),
(82, 'BA0003', 'Alejandro Otero', 'Nestor Balza', 1, '978-980-7039-23-9', 3, 1, 2, 4, '2008-12-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(83, 'TR19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 1, 1, 0, '2007-06-12', 'Instituto del Patrimonio Cultural', '19', 'Primera', '2025-12-17 15:54:02'),
(84, '368747', 'Prosas', 'Alberto Girri', 38, '3628738', 1, 13, 2, 9, '1977-12-10', 'Monte Ávila editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(85, 'F1-004', 'Eduardo Mariño: El brillo y las sombras de una escritura heteroclita', 'Julio Rafael Silva', 28, '980-376-134-X', 1, 7, 1, 4, '2005-06-01', 'Ministerio de la cultura', NULL, '1ª', '2025-12-17 15:54:02'),
(86, 'E1-010', 'El Poeta Del Fuego y Otras Escrituras', 'Mario Torrealba Lossi', 28, '101-101-101-1', 2, 6, 1, 20, '1984-08-03', 'Academia nacional de la historia', '54', '', '2025-12-17 15:54:02'),
(87, 'TR20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Atures', 'Instituto del Patrimonio Cultural', 2, '978-980-397-088-8', 1, 1, 1, 0, '2009-06-10', 'Instituto del Patrimonio Cultural', '20', 'Primera', '2025-12-17 15:54:02'),
(88, 'BA0004', 'Santiago Pol', 'José Ignacio Herrera', 1, '978-980-7039-24-6', 2, 1, 2, 5, '2009-11-04', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(89, 'Ba0005', 'Jacobo Borges', 'Adriana Meneses', 1, '978-980-7039-25-3', 2, 1, 2, 6, '2008-12-15', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(90, 'E1-011', 'El Estado Y Las Instituciones En Venezuela (1936-1945)', 'Luis Ricardo Davila', 28, '980-222-218-6', 1, 6, 1, 21, '1988-01-07', 'Academia nacional de la historia', '124', '', '2025-12-17 15:54:02'),
(91, 'FA18-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios Píritu - Tocópero', 'Instituto del Patrimonio Cultural', 2, '980-6448-53-7', 1, 1, 1, 0, '2005-06-15', 'Instituto del Patrimonio Cultural', '18-22', 'Primera', '2025-12-17 15:54:02'),
(92, '479373', 'Cartas Abisinias', 'Arthur Rimbaud', 3, '84-7223-547-5', 1, 13, 2, 10, '1974-12-10', 'Tusquets Editor', '15', 'No mencionada', '2025-12-17 15:54:02'),
(93, 'FA13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Mauroa', 'Instituto del Patrimonio Cultural', 2, '980-6448-52-9', 1, 1, 1, 0, '2005-07-06', 'Instituto del Patrimonio Cultural', '13', 'Primera', '2025-12-17 15:54:02'),
(94, 'E1-012', 'Orígenes De La Cultura Margariteña', 'Jesus Manuel Subero', 28, '980-222-217-88', 1, 6, 1, 22, '1987-12-04', 'Academia nacional de la historia', '122', '', '2025-12-17 15:54:02'),
(96, 'BA0006', 'Antonio José Fernández El hombre del anillo', 'Carlos Contramaestre', 1, '978-980-7039-26-0', 2, 1, 2, 7, '2008-12-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(98, 'GU-08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Francisco de Miranda | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-81-2', 2, 11, 1, 1, '2006-01-01', 'Instituto del Patrimonio Cultural', '8', 'primera', '2025-12-17 15:54:02'),
(99, 'FA02-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios Bolívar-Petit', 'Instituto del Patrimonio Cultural', 2, '980-6448-63-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '2-17', 'Primera', '2025-12-17 15:54:02'),
(100, 'GU-11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jose Felix Ribas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-37-5', 16, 11, 1, 2, '2005-01-01', 'Instituto del Patrimonio Cultural', '11', 'primera', '2025-12-17 15:54:02'),
(101, 'FA03-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Buchivacoa Dabajuro', 'Instituto del Patrimonio Cultural', 2, '978-980-397-061-1', 1, 1, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '3-7', 'Primera', '2025-12-17 15:54:02'),
(102, 'BA0007', 'Salvador Valero', 'Carlos Contramaestre', 1, '978-980-7039-27-7', 1, 1, 2, 8, '2008-12-03', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(103, 'GU-13', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio San Jose De Guaribe | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-043-7', 3, 11, 1, 3, '2007-01-01', 'Instituto del Patrimonio Cultural', '13', 'primera', '2025-12-17 15:54:02'),
(104, 'FA11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2010 | Municipios Jacura Monseñor Iturriza', 'Instituto del Patrimonio Cultural', 2, '978-980-397-134-2', 1, 1, 1, 0, '2010-12-12', 'Instituto del Patrimonio Cultural', '11-15', 'Primera', '2025-12-17 15:54:02'),
(105, '368163', 'Homero y su iliada', 'Guillermo Thiele', 28, 'BLL609', 1, 13, 2, 11, '1969-12-10', 'Monte Ávila Editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(106, 'BA0008', 'César Rengifo', 'Tarim Gois', 1, '978-980-7039-38-3', 2, 1, 2, 9, '2008-12-12', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(107, 'FA14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Miranda', 'Instituto del Patrimonio Cultural', 2, '980-6448-30-8', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(109, '372873', 'Las afueras', 'Luis Goytisolo', 3, '84 322 1814 6', 1, 13, 2, 12, '1976-12-10', 'Seix Barral, S.A.', NULL, 'Quinta', '2025-12-17 15:54:02'),
(120, 'Ba0009', 'Manuel de la fuente', 'José María Salvador', 1, '978-980-7039-93-2', 2, 1, 2, 10, '2009-11-09', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(121, 'FA10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Federación', 'Instituto del Patrimonio Cultural', 2, '980-6448-59-6', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera', '2025-12-17 15:54:02'),
(126, 'F1-006', 'Desde Calderas', 'Lindolfo Bastidas', 30, '980-376-222-2', 1, 7, 1, 6, '2006-03-15', 'Ministerio de la cultura', NULL, '1ª', '2025-12-17 15:54:02'),
(130, 'FA16-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Palma Sola Silva', 'Instituto del Patrimonio Cultural', 2, '978-980-397-116-8', 1, 1, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '16-20', 'Primera', '2025-12-17 15:54:02'),
(131, 'Ba0010', 'Rafael Vargas', 'Néstor Balza', 1, '978-980-7039-43-7', 3, 1, 2, 11, '2010-02-05', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(132, 'E1-014', 'El Mediodía De La Modernidad En Venezuela', 'Carmen Díaz Orosco', 28, '980-11-0125-3', 1, 6, 1, 24, '1997-08-05', '', NULL, '1°', '2025-12-17 15:54:02'),
(133, 'FA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Colina', 'Instituto del Patrimonio Cultural', 2, '980-6448-29-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera', '2025-12-17 15:54:02'),
(135, 'Ba0011', 'Jesús Soto', 'Gladys Yunes Yunes', 1, '978-980-7039-29-1', 3, 1, 2, 12, '2008-11-20', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(136, 'GU-12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Juan German Roscio | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-66-9', 1, 11, 1, 6, '2006-01-01', 'Instituto del Patrimonio Cultural', '12', 'primera', '2025-12-17 15:54:02'),
(138, '369177', 'Epístolas', 'León Colina Bracho', 3, '980-328-036-8', 1, 13, 2, 13, '1992-12-10', 'Ediciones del Gobierno de Carabobo', '14', 'Primera', '2025-12-17 15:54:02'),
(139, 'F1-007', 'Los poetas y la poesía insurgente de apure', 'Max Efrain Perez', 9, '978-980-6664-44-9', 1, 7, 1, 7, '2007-07-05', 'UBV', NULL, '', '2025-12-17 15:54:02'),
(140, 'FA08-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Democracia Urumaco', 'Instituto del Patrimonio Cultural', 2, '978-980-397-119-9', 1, 1, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '8-24', 'Primera', '2025-12-17 15:54:02'),
(141, 'BA0012', 'Luis Domínguez Salazar', 'Luis Emeterio González', 1, '978-980-7039-43-3', 3, 1, 2, 13, '2008-06-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(142, 'F1-008', 'Los poemas de venus garcia', 'Enrique Hernandez-D`Jesús', 21, '980-329-312-5', 1, 7, 1, 8, '2001-04-01', 'El Árbol Editores', NULL, '2ª', '2025-12-17 15:54:02'),
(143, 'Ba0013', 'Bárbaro Rivas', 'Zhelma  Portillo', 1, '978-980-7039-64-2', 2, 1, 2, 14, '2009-11-16', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(144, 'GU-06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Las Mercedes | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-41-3', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera', '2025-12-17 15:54:02'),
(145, 'E1-015', 'Las Dependencias Federales', 'Fernando Cervigon', 17, '980-222-729-3', 1, 6, 1, 25, '1995-03-08', 'Academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(146, '379273', 'Canción de la agonía, las cenizas y la muerte', 'José Joaquín Burgos', 15, '980-7549-10-8', 1, 13, 2, 0, '2000-12-10', 'Instituto Cultural del Estado Portuguesa', NULL, 'Segunda', '2025-12-17 15:54:02'),
(147, 'GU-09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jose Tadeo Monagas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-33-2', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera', '2025-12-17 15:54:02'),
(148, 'Ba0014', 'Francisco Narváez', 'Katherine Chacón', 1, '978-980-7240-41-3', 2, 1, 2, 15, '2010-03-15', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(149, 'F1-009', 'La casa del verbo', 'José Manuel Briceño Guerrero', 5, '978-980-6470-18-7', 1, 7, 1, 9, '2009-11-01', '', NULL, '', '2025-12-17 15:54:02'),
(150, 'GU-03-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio El Socorro Santa Maria De Ipire | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-042-9', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '3-14', 'primera', '2025-12-17 15:54:02'),
(151, 'C-65', 'Fermín Entrena: un venezolano del noventa y nueve', 'José Abel Montilla', 20, '9803003755', 1, 4, 2, 74, '1988-11-22', 'Buenos Aires: Imp. Printed', NULL, '2da', '2025-12-17 15:54:02'),
(152, 'Ba0019', 'Ramón Vázquez Brito', 'Lorena González', 1, '978-980-7240-38-3', 2, 1, 2, 16, '2009-11-13', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(153, 'GU-15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Pedro Zaraza | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-048-8', 2, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '14-15', 'primera', '2025-12-17 15:54:02'),
(154, '576467', 'Acarigua, escenario de espectros', 'Alberto Jiménez Ure', 15, '368273', 1, 13, 2, 0, '1976-12-10', 'Multicolor, C.A.', NULL, 'Punto de fuga', '2025-12-17 15:54:02'),
(155, 'Ba0015', 'Luis Moreno', 'Carlos Delgado Díaz', 1, '978-980-7240-44-4', 3, 1, 2, 17, '2010-02-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(156, 'GU-01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Camaguan | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-65-0', 3, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '1', 'primera', '2025-12-17 15:54:02'),
(157, 'E1-016', 'Caracas, Origen Y Trayectoria De Una Ciudad', 'J.A. de Armas Chitty', 17, '101-101-101-2', 1, 6, 1, 26, '1966-08-07', 'Fundación Creole', 'Tomo 2', '', '2025-12-17 15:54:02'),
(158, 'GU-04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio San Geronimo De Guayabal | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '978-980-397-079-6', 1, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera', '2025-12-17 15:54:02'),
(159, 'Ba0016', 'Cleto Rojas', 'Luis Emeterio González', 1, '978-980-7240-45-1', 3, 1, 2, 18, '2010-11-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(160, '372937', 'Restos del viaje', 'Márgara Russotto', 15, 'BPD437', 1, 13, 2, 0, '1969-12-10', 'Monte Ávila editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(161, 'C73', 'Estudios sobre Andres Bello', 'Oscar Sambrano Urdaneta', 3, '9802140228', 1, 4, 2, 0, '1987-12-10', 'La casa de Bello', NULL, '1', '2025-12-17 15:54:02'),
(162, 'AD2', 'LA LÍNEA Y LA MANCHA EN EL DIBUJO', 'IARTES - Instituto de las Artes de la Imagen y el Espacio', 1, '84-342-2729-0', 210, 3, 1, 0, '2004-12-12', 'Parramón', NULL, 'Primera', '2025-12-17 15:54:02'),
(163, 'BA0017', 'Luis Pedro Malavé', 'Luis Miguel Rodríguez', 1, '978-980-7240-39-0', 3, 1, 2, 19, '2010-02-16', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(164, 'GU-07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Julian Mellado | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-014-3', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera', '2025-12-17 15:54:02'),
(165, 'BA0018', 'Tomás Enrique Salazar', 'Luis Miguel Rodríguez', 1, '978-980-7240-40-6', 3, 1, 2, 20, '2010-11-13', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(166, 'C63', 'La Habana / Veracruz Las dos orillas', 'Bernardo Garcia Diaz - Segio Guerra Vilaboy', 17, '9688345354', 1, 4, 2, 0, '2022-12-10', 'Universidad Verecruzana', NULL, '1ra', '2025-12-17 15:54:02'),
(167, 'E1-017', 'Cien Preguntas Sobre El Nuevo Desorden', 'Carlos Taibo', 28, '987-980-396-976-9', 1, 6, 1, 27, '2007-11-09', 'El perro Y La Rana', NULL, '', '2025-12-17 15:54:02'),
(169, 'BA0020', 'Josefa Sulbarán', 'Carlos Cañizares', 1, '978-980-7240-46-8', 2, 1, 2, 21, '2010-03-09', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(170, 'AD', 'LAS BASES DEL DIBUJO', 'IARTES - Instituto de las Artes de la Imagen y el Espacio', 1, '84-342-2728-2', 335, 3, 1, 0, '2004-12-12', 'Parramón', NULL, 'Primera', '2025-12-17 15:54:02'),
(174, 'BA0021', 'Luiz Mendes', 'Carlos Delgado Díaz', 1, '978-980-7039-73-4', 3, 1, 2, 22, '2008-11-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(176, '382927', 'Los romanticos alemanes', 'Hoffmann Novalis', 15, '379384748', 1, 13, 2, 0, '1968-12-10', 'Centro Editor de América Latina', NULL, 'Primera', '2025-12-17 15:54:02'),
(177, 'GU-05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Leonardo Infante | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-044-5', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '5', 'primera', '2025-12-17 15:54:02'),
(178, 'BA0022', 'Rosa Vegas', 'Zhelma  Portillo', 1, '978-980-7039-74-1', 3, 1, 2, 23, '2008-11-26', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(180, 'E1-018', 'Los Miserables', 'Victor Hugo', 20, '980-6964-81-0', 1, 6, 1, 28, '2006-12-10', 'El Perro Y La Rana', NULL, '', '2025-12-17 15:54:02'),
(181, 'F1-010', 'Oda Maritima', 'Fernando Pessoa', 38, '000000', 1, 7, 1, 10, '1977-12-10', 'Monte Ávila Editores', NULL, '', '2025-12-17 15:54:02'),
(182, 'GU-02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Chaguaramas | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-32-4', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '2', 'primera', '2025-12-17 15:54:02'),
(183, 'C71', 'Ezequiel Zamora y la tierra de los hombres libres', 'J.A Calzadilla Arreaza', 5, '22882009900', 1, 4, 2, 0, '2009-12-10', 'Fundacion centro nacional de historia', NULL, '1', '2025-12-17 15:54:02'),
(184, 'GU-10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Juan German Roscio | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-6448-42-1', 1, 11, 1, 0, '2005-01-01', 'Instituto del Patrimonio Cultural', '10', 'primera', '2025-12-17 15:54:02'),
(185, 'E1-019', 'Vuelta A La Patria Y Otros Poemas', 'Juan Antonio Pérez Bonalde', 21, '980-6964-46-2', 1, 6, 1, 29, '2006-12-10', 'El Perro Y La Rana', NULL, '', '2025-12-17 15:54:02'),
(186, 'LA05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Morán', 'Instituto del Patrimonio Cultural', 2, '980-6448-36-7', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(187, 'BA0023', 'Cirilo Mendoza', 'Fran Morales', 1, '978-980-7240-47-5', 2, 1, 2, 24, '2010-03-17', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(189, 'LA07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Simón Planas', 'Instituto del Patrimonio Cultural', 2, '980-6448-48-0', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera', '2025-12-17 15:54:02'),
(190, 'E1-020', 'Fragmentos Para Una Memoria', 'José Javier Sanchez', 21, '978-980-396-914-1', 1, 6, 1, 30, '2007-10-03', 'El Perro Y La Rana', NULL, '', '2025-12-17 15:54:02'),
(191, 'BA0024', 'Antonia Azuaje', 'Hendrik Hidalgo', 1, '978-980-7240-48-2', 2, 1, 2, 25, '2010-02-10', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(192, '278273', 'Inventario de Silencios', 'Manuel Da Silva', 21, '978-980-396-943-1', 1, 13, 2, 0, '2008-12-10', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(193, 'C64', 'Bello y Chile tercer congreso del bicentenario', 'Fundación La casa de Bello', 9, '812660', 1, 4, 2, 70, '1981-12-10', 'La casa de Bello', NULL, '1ra', '2025-12-17 15:54:02'),
(194, 'AP-07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio San Fernando | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '980-6448-44-8', 2, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera', '2025-12-17 15:54:02'),
(195, 'BA0025', 'Elsa Morales', 'Hendrik Hidalgo', 1, '978-980-7240-49-9', 2, 1, 2, 26, '2010-11-23', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(196, 'LA09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-397-025-9', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '9', 'Primera', '2025-12-17 15:54:02'),
(197, 'E1-021', 'Taller Literario De Maracay', 'Pablo Acosta, Alberto Flores, Carmen I. Marcará, Ana María Oviedo, Cesar Paez, Miriam Riquezes', 21, '10101010', 1, 6, 1, 31, '1988-12-10', '', NULL, '', '2025-12-17 15:54:02'),
(198, 'LA01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Andrés Eloy Blanco', 'Instituto del Patrimonio Cultural', 2, '980-397-050-X', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(199, 'BA0026', 'Mara Vitanza', 'Nelly Barbieri', 1, '978-980-7039-28-4', 3, 1, 2, 27, '2008-11-25', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(200, 'AP-02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Biruaca y Pedro Camejo | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '978-980-397-072-7', 2, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '2-5', 'primera', '2025-12-17 15:54:02'),
(201, '368282', 'El caballero de la armadura oxidada', 'Robert Fisher', 20, '84-7720-405-5', 1, 13, 2, 0, '1987-12-10', 'Ediciones Obelisco', NULL, '25', '2025-12-17 15:54:02'),
(202, 'LA03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Iribarren', 'Instituto del Patrimonio Cultural', 2, '980-6448-34-01', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '3', 'Primera', '2025-12-17 15:54:02'),
(203, 'BA0027', 'Pepe García', 'Marisa Mena', 1, '978-980-7240-13-0', 3, 1, 2, 28, '2009-11-21', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(204, 'C69', 'El Andres Bello Universal', 'Oscar Sambrano Urdaneta', 17, '980214066', 1, 4, 2, 69, '1991-12-10', 'La casa de bello', NULL, '1', '2025-12-17 15:54:02'),
(205, 'AP-01-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Achaguas y Muñoz | Estado Apure', 'Instituto del Patrimonio Cultural', 2, '978-980-397-100-7', 1, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '7', 'primera', '2025-12-17 15:54:02'),
(206, 'LA04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Jiménez', 'Instituto del Patrimonio Cultural', 2, '980-6448-40-5', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera', '2025-12-17 15:54:02'),
(207, 'E1-022', 'Tiempo Transfigurado (Antología Poética)', 'Eugenio Montejo', 21, '980-233-301-8', 1, 6, 1, 32, '2001-05-30', '', NULL, '', '2025-12-17 15:54:02'),
(208, 'LA02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Crespo', 'Instituto del Patrimonio Cultural', 2, '980-397-066-2', 1, 1, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera', '2025-12-17 15:54:02'),
(209, 'LA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Palavecino', 'Instituto del Patrimonio Cultural', 2, '980-6448-46-4', 1, 1, 1, 0, '2005-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera', '2025-12-17 15:54:02'),
(210, 'BA0028', 'Antonieta Sosa', 'Félix Suazo', 1, '978-980-7039-59-8', 3, 1, 2, 29, '2008-11-18', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(211, 'CO-02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Falcon y Lima Blanco | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '980-6448-97-9', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '2-4', 'primera', '2025-12-17 15:54:02'),
(212, 'LA08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Torres', 'Instituto del Patrimonio Cultural', 2, '980-397-032-1', 1, 1, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera', '2025-12-17 15:54:02'),
(213, 'C61', 'Paez las Razones del heroe', 'Edgardo Mondolfi', 17, '9800103201', 1, 4, 2, 68, '1990-12-10', 'Monte Avila', NULL, '1ra', '2025-12-17 15:54:02'),
(214, 'CO-03-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Girardot y Pao De San Juan Bautista | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '978-980-397-129-8', 3, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '3-5', 'primera', '2025-12-17 15:54:02'),
(215, '748473', 'Las comarcas del Alba', 'Eduardo Ali Rangel', 21, '978-980-263-129-2', 1, 13, 2, 0, '1989-12-10', 'Ediciones Centauro', NULL, 'Primera', '2025-12-17 15:54:02'),
(216, 'E1-023', 'Tierra Aladym', 'Instituto Merideño de Cultura', 21, '01010101', 1, 6, 1, 33, '2002-12-10', '', NULL, '', '2025-12-17 15:54:02'),
(217, 'BA0029', 'Mateo Manaure', 'Zhelma  Portillo', 1, '978-980-7039-99-4', 2, 1, 2, 30, '2008-11-19', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(218, 'C67-66', 'Las dos vidas de Bolívar', 'Raul Valdez Vivo', 5, '9789801401087', 1, 4, 2, 0, '2008-12-10', 'El Perro y La Rana', '1-2', '1ra', '2025-12-17 15:54:02'),
(219, 'CO-09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tinaco | Estado Cojedes', 'Instituto del Patrimonio Cultural', 2, '978-980-397-096-3', 3, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera', '2025-12-17 15:54:02'),
(220, 'BA0030', 'Pedro Barreto', 'Ginett Alarcón F.', 1, '978-980-7240-14-8', 3, 1, 2, 31, '2009-11-20', 'COLECCIÓN ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(221, 'E1-024', 'Poemas De La Musa Libre', 'Ismael Urdaneta', 21, '11181919', 1, 6, 1, 34, '1990-12-10', '', NULL, '', '2025-12-17 15:54:02'),
(222, 'DA0102', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Antonio Díaz Casacoima Pedernales', 'Instituto del Patrimonio Cultural', 2, '978-980-397-066-6', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1-2-3', 'Primera', '2025-12-17 15:54:02'),
(223, 'DA04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tucupita', 'Instituto del Patrimonio Cultural', 2, '980-6448-98-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4', 'Primera', '2025-12-17 15:54:02'),
(224, '3682', 'Si te dicen que caí', 'Juan Marse', 20, '84-02-06712-3', 1, 13, 2, 0, '1973-12-10', 'Bruguera, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(225, 'CA0407', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Guacara Los Guayos', 'Instituto del Patrimonio Cultural', 2, '980-397-047-X', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(230, 'C-79', 'La violencia mediatica: el secuestro del conocimiento', 'Vicente Romano Garcia', 6, '9789807426190', 18, 4, 3, 0, '2012-02-16', 'Ediciones correo del Orinoco', NULL, 'primera', '2025-12-17 15:54:02'),
(231, 'C-101/', 'Simbiosis de los Simones: socialismo desde el alba', 'Armando Daniel Rojas', 39, '980429835', 100, 4, 3, 0, '2008-06-18', 'Fundacion Aldeas', NULL, '1', '2025-12-17 15:54:02'),
(232, '372882', 'En la bahía', 'Katherine Mansfield', 15, '84-02-08184-3', 1, 13, 2, 0, '1922-12-11', 'Editorial Losada, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(235, '5372', 'Los premios', 'Julio Cortázar', 20, '84-02-08156-8', 1, 13, 2, 0, '1960-12-11', 'Bruguera, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(236, 'F1-011', 'Indagación del día', 'Lucila Velasquez', 21, '0000', 1, 7, 1, 11, '1969-12-11', 'UCV', NULL, '', '2025-12-17 15:54:02'),
(237, 'E1-025', 'Historia De La Literatura Española 3', 'E.M Wilson y D.Moir', 17, '84-344-8306-8', 1, 6, 1, 35, '1971-09-06', 'Ariel', NULL, '', '2025-12-17 15:54:02'),
(238, '4728', 'Una plaza ocupando un espacio desconcertante', 'Antonia Palacios', 15, '978-980-7039-58-1', 1, 13, 2, 0, '1981-12-11', 'Monte Ávila editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(239, 'F1-012', 'Crecimiento y desarrollo', 'Pierre Vilar', 9, '84-344-6501-9', 1, 7, 1, 12, '1974-11-01', 'Ariel, S.A.', NULL, '', '2025-12-17 15:54:02'),
(240, 'SU14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-6448-83-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(241, 'ZU01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Almirante Padilla', 'Instituto del Patrimonio Cultural', 2, '980-3970-46-1', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(242, 'BA0031', 'Eduardo Bárcenas', 'Esperanza León', 1, 'ISBN 978-980-7039-62', 3, 1, 2, 32, '2008-11-12', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(243, 'C-75', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '9789806089525', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '1', 'PRIMERA', '2025-12-17 15:54:02'),
(245, 'F1-013', 'A contracorriente', 'Antonio E. Dagnino', 9, '980-6350-30-8', 1, 7, 1, 11, '1995-12-11', 'Fondo Editorial SOLAR', NULL, '1ª', '2025-12-17 15:54:02'),
(247, 'ZU03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Cabimas', 'Instituto del Patrimonio Cultural', 2, '980-6448-88-X', 1, 5, 1, 0, '2006-10-16', 'Instituto del Patrimonio Cultural', '3', 'Primera', '2025-12-17 15:54:02'),
(248, 'E1-026', 'Historia de España', 'Pierre Vilar', 17, '84-7423-054-3', 1, 6, 1, 36, '1978-12-11', 'Grupo editorial grijalbo', NULL, '', '2025-12-17 15:54:02'),
(249, 'C-76', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '978980608', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '2', 'PRIMERA', '2025-12-17 15:54:02'),
(250, '6382', 'Una vida violenta', 'Pier Paolo Pasolini', 20, '978-84-19320-25-4', 1, 13, 2, 0, '1969-12-11', 'Editorial Arte', NULL, 'Primera', '2025-12-17 15:54:02'),
(251, 'ZU07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Jesús Enrique Lossada', 'Instituto del Patrimonio Cultural', 2, '978-980-397-095-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera', '2025-12-17 15:54:02'),
(252, 'C-77', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '97898060', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '1', 'PRIMERA', '2025-12-17 15:54:02'),
(253, 'C-78', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '9789806037264', 1, 4, 3, 0, '2011-06-07', 'Editorial Arte', '3', 'PRIMERA', '2025-12-17 15:54:02'),
(254, 'ZU09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio La Cañada de Urdaneta', 'Instituto del Patrimonio Cultural', 2, '980-397-041-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '9', 'Primera', '2025-12-17 15:54:02'),
(255, 'BA0032', 'Ángel Peña', 'Lorena Gonzáles', 1, 'ISBN 978-980-7240-15', 2, 1, 2, 33, '2009-11-17', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(259, 'E1-027', 'El Terrorismo de Estado en Colombia', 'Hernando Calvo Ospina', 6, '978-980-396-905-9', 1, 6, 1, 37, '2007-09-04', 'El Perro y la Rana', NULL, '', '2025-12-17 15:54:02'),
(260, 'ZU14', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Miranda', 'Instituto del Patrimonio Cultural', 2, '980-6448-71-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(262, 'BA 02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Andres Eloy Blanco y Ezequiel Zamora | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9789803970697', 6, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '14', 'primera', '2025-12-17 15:54:02'),
(263, 'PO 02-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Araure y Paez | Estado Portuguesa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-128-1', 3, 11, 1, 0, '2009-01-01', 'Instituto del Patrimonio Cultural', '2-8', 'primera', '2025-12-17 15:54:02'),
(265, 'C-80', 'Cronologia Bicentenaria de la legislacion electoral Venezolana', 'Centro de investigacion IAEPE', 17, '97636262234', 1, 4, 3, 79, '2011-06-07', 'Editorial Arte', '4', 'PRIMERA', '2025-12-17 15:54:02'),
(266, 'ZU10-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Lagunillas Simón Bolivar', 'Instituto del Patrimonio Cultural', 2, '978-980-397-110-6', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '19-10', 'Primera', '2025-12-17 15:54:02'),
(267, '462873', 'Fuga de esclavos en el Cantón Victoria', 'Luis Ramón Mendoza', 17, '978-980-716369-9', 1, 13, 2, 0, '2008-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(270, 'BA0033', 'Seka', 'Ginett Alarcón F.', 1, 'ISBN 978-980-7240-16', 3, 1, 2, 34, '2009-02-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(271, 'E1-028', 'TAI-PAN', 'James Glavell', 20, '84-02-06656-9', 1, 6, 1, 38, '1980-11-04', 'Editorial Bruguera', NULL, '2°', '2025-12-17 15:54:02'),
(272, 'ZU18', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Santa Rita', 'Instituto del Patrimonio Cultural', 2, '978-980-397-092-5', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '18', 'Primera', '2025-12-17 15:54:02'),
(273, 'PO-04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guanare | Estado Portuguesa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-081-9', 2, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '4', 'primera', '2025-12-17 15:54:02'),
(275, 'BA 01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Alberto Arvelo Torrealba | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9806448359', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '1', 'primera', '2025-12-17 15:54:02'),
(276, '68668', 'Diario del ladrón', 'Jean Genet', 20, '84-320-3005-8', 1, 13, 2, 0, '1976-12-11', 'Planeta', NULL, 'Primera', '2025-12-17 15:54:02'),
(277, 'ZU02-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Baralt Valmore Rodríguez', 'Instituto del Patrimonio Cultural', 2, '978-980-397-132-8', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '02-21', 'Primera', '2025-12-17 15:54:02'),
(278, 'BA 09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Obispo| Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9803970232', 1, 11, 1, 0, '2007-01-01', 'Instituto del Patrimonio Cultural', '9', 'primera', '2025-12-17 15:54:02'),
(282, 'BA0034', 'Gladys Meneses', 'Milagros Gonzáles', 1, 'ISBN 978-980-7039-44', 2, 1, 2, 35, '2008-11-14', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(283, 'BA 06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Bolivar | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '980370208', 1, 11, 1, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '6', 'primera', '2025-12-17 15:54:02'),
(286, 'PO-05-', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Guanarito, Papelon y San Genaro De Boconoito | Estado Guarico', 'Instituto del Patrimonio Cultural', 2, '980-397-022-4', 3, 11, 1, 0, '2008-01-01', 'Instituto del Patrimonio Cultural', '5-9-10', 'primera', '2025-12-17 15:54:02'),
(287, 'BA 03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Antonio José de Sucre | Estado Barinas', 'Instituto del Patrimonio Cultural', 2, '9803970585', 1, 11, 0, 0, '2006-01-01', 'Instituto del Patrimonio Cultural', '3', 'primera', '2025-12-17 15:54:02'),
(288, 'SU08-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Cruz Salmerón Acosta Ribero', 'Instituto del Patrimonio Cultural', 2, '980-397-009-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '8-13', 'Primera', '2025-12-17 15:54:02'),
(289, 'BA0035', 'Gaudi Esté', 'Katherine Chacón', 1, '978-980-7039-54-4', 3, 1, 2, 36, '2009-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(291, 'SU10', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Mariño', 'Instituto del Patrimonio Cultural', 2, '980-6448-49-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera', '2025-12-17 15:54:02'),
(292, '738283', 'El disparo de argón', 'Juan Villoro', 20, '84-204-8093-2', 1, 13, 2, 0, '1994-12-11', 'Alfaguara', NULL, 'Tercera', '2025-12-17 15:54:02'),
(294, 'SU02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Andrés Mata', 'Instituto del Patrimonio Cultural', 2, '980-6448-60-X', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera', '2025-12-17 15:54:02'),
(295, 'E1-030', 'Comentarios Reales', 'Inca Garcilaso De La Vega', 17, '1234544321', 1, 6, 1, 40, '1991-12-11', 'Ariel', NULL, '', '2025-12-17 15:54:02'),
(296, 'BA0036', 'José Antinio  Dávila', 'Néstor Balza', 1, '970-980-7240-17-8', 3, 1, 2, 37, '2009-11-23', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(298, 'SU12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Montes', 'Instituto del Patrimonio Cultural', 2, '980-397-028-3', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera', '2025-12-17 15:54:02'),
(299, 'SU06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolívar Mejía', 'Instituto del Patrimonio Cultural', 2, '980-397-013-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6-11', 'Primera', '2025-12-17 15:54:02'),
(300, 'BA0037', 'Luisa Palacios', 'Milagros Gonzáles', 1, '978-980-7039-43-7', 2, 1, 2, 38, '2009-11-18', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(302, 'MO05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Cedeño', 'Instituto del Patrimonio Cultural', 2, '980-397-000-3', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(303, '3892', 'Medio siglo, la vida entera', 'Adhely Rivero', 21, 'BPD150', 1, 13, 2, 0, '2005-12-11', 'Ediciones POESÍA', NULL, 'Primera', '2025-12-17 15:54:02'),
(304, 'C-82', 'Aprendizaje Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-4', 1, 4, 3, 0, '2002-01-29', 'Oceano', '2', 'primera', '2025-12-17 15:54:02'),
(305, 'MO04', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Caripe', 'Instituto del Patrimonio Cultural', 2, '980-6448-723', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4', 'Primera', '2025-12-17 15:54:02'),
(306, 'E1-031', 'Diario Metafisico', 'Gabriel Marcel', 39, '111222333', 1, 6, 1, 41, '1968-08-01', '', NULL, '', '2025-12-17 15:54:02'),
(307, 'C-83', 'Lectura y Memorizacion Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '3', 'primera', '2025-12-17 15:54:02'),
(308, 'BA0038', 'Eugenio Espinoza', 'Zhelma Portillo', 1, '978-980-7240-18-5', 3, 1, 2, 39, '2009-11-04', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(309, 'E1-032', 'Groucho y Yo', 'Groucho Marx', 5, '10101010', 1, 6, 1, 42, '1959-12-11', 'Tusquets editor', NULL, '', '2025-12-17 15:54:02'),
(310, 'MO02-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Aguasay Ezequiel Zamora Santa Bárbara', 'Instituto del Patrimonio Cultural', 2, '980-397-010-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '2-6-11', 'Primera', '2025-12-17 15:54:02');
INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`, `created_at`) VALUES
(311, 'MO01-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Acosta Piar', 'Instituto del Patrimonio Cultural', 2, '980-397-056-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(312, '17 lir', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '17', 'primera', '2025-12-17 15:54:02'),
(313, '18 mat', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '18', 'primera', '2025-12-17 15:54:02'),
(314, 'C-84', 'Expresion Oral Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '4', 'primera', '2025-12-17 15:54:02'),
(315, 'SU05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Bermúdez', 'Instituto del Patrimonio Cultural', 2, '980-6448-92-8', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(316, '638272', 'Manuela', 'Luis Zuñiga', 20, '980-396-064-4', 1, 13, 2, 0, '2002-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Quinta', '2025-12-17 15:54:02'),
(317, 'SU07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipio Cajigal', 'Instituto del Patrimonio Cultural', 2, '980-6448-62-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera', '2025-12-17 15:54:02'),
(318, 'C-85', 'Expresion Oral Master biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-0', 1, 4, 3, 0, '2002-01-29', 'Oceano', '4', 'primera', '2025-12-17 15:54:02'),
(319, '19 mor', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1895-01-01', 'Salvat', '19', 'primera', '2025-12-17 15:54:02'),
(320, '20 O P', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '8434545322', 1, 11, 2, 0, '1985-01-01', 'Salvat', '20', 'primera', '2025-12-17 15:54:02'),
(321, 'BA0039', 'Elsa Gramcko', 'Milagros Gonzáles', 1, '978-980-7039-60-4', 2, 1, 2, 40, '2009-11-12', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(322, 'SU0104', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Andrés Eloy Blanco Benítez Libertador', 'Instituto del Patrimonio Cultural', 2, '980-980-397-080-2', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1-4-9', 'Primera', '2025-12-17 15:54:02'),
(323, '22 POL', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '8434545322', 1, 11, 2, 0, '1985-01-01', 'Salvat', '22', 'primera', '2025-12-17 15:54:02'),
(324, '21 par', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '21', 'primera', '2025-12-17 15:54:02'),
(325, '23 rem', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '23', 'primera', '2025-12-17 15:54:02'),
(326, 'SU15', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Valdéz', 'Instituto del Patrimonio Cultural', 2, '980-397-039-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '15', 'Primera', '2025-12-17 15:54:02'),
(328, 'E1-033', 'Cartas Escogidas', 'William Faulkners', 41, '84-322-0464-1', 1, 6, 1, 43, '1977-06-06', '', NULL, '', '2025-12-17 15:54:02'),
(329, '24 sam', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '24', 'primera', '2025-12-17 15:54:02'),
(330, 'BA0040', 'Carlos Cruz-Diez', 'Anny Bello', 1, '978-980-7039-92-5', 2, 1, 2, 41, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(331, 'MO08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Maturín', 'Instituto del Patrimonio Cultural', 2, '980-6448-78-2', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera', '2025-12-17 15:54:02'),
(332, 'C-87', 'Vocabulario practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-2', 1, 4, 3, 0, '2002-01-29', 'Oceano', '6', 'primera', '2025-12-17 15:54:02'),
(333, '56766', 'Pequeño relato nocturno', 'Pedro Berroeta', 20, '980-258-013-9', 1, 13, 2, 0, '1986-12-11', 'Publicaciones Seleven, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(334, 'MO0310', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Bolívar Punceres', 'Instituto del Patrimonio Cultural', 2, '980-6448-99-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '03-10', 'Primera', '2025-12-17 15:54:02'),
(335, '25 sue', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '25', 'primera', '2025-12-17 15:54:02'),
(336, 'C-88', 'Gramatica Biblioteca practica de Comunicacion', 'Grupo Oceano', 24, '84-494-2255-0', 1, 4, 3, 0, '2002-01-29', 'Oceano', '7', 'primera', '2025-12-17 15:54:02'),
(339, 'E1-034', 'Los topos', 'Eduardo Liendo', 20, '120981', 1, 6, 1, 44, '1975-12-11', 'Monte Avila', NULL, '', '2025-12-17 15:54:02'),
(340, 'MO0712', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Libertador Sotillo Uracoa', 'Instituto del Patrimonio Cultural', 2, '978-980-397-060-4', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '7-12-13', 'Primera', '2025-12-17 15:54:02'),
(341, 'TA12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Jáuregui', 'Instituto del Patrimonio Cultural', 2, '980-6448-87-1', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera', '2025-12-17 15:54:02'),
(342, '26 u', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '26', 'primera', '2025-12-17 15:54:02'),
(343, 'BA0042', 'Claudio Cedeño', 'Anny Bello', 1, '978-980-7039-46-8', 3, 1, 2, 43, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(344, 'E1-035', 'La tarde del dinosaurio', 'Cristina peri rossi', 15, '10923847', 1, 6, 1, 45, '1976-05-11', '', NULL, '', '2025-12-17 15:54:02'),
(345, 'TA06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Junín', 'Instituto del Patrimonio Cultural', 2, '978-980-397-097-0', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '14', 'Primera', '2025-12-17 15:54:02'),
(346, '1 a', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '1', 'primera', '2025-12-17 15:54:02'),
(347, 'BA0043', 'José Caldas', 'Katherine Chacón', 1, '978-980-7240-42-0', 3, 1, 2, 44, '2010-02-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(348, '2 alu ', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '2', 'primera', '2025-12-17 15:54:02'),
(349, 'TA11-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Independencia Libertad', 'Instituto del Patrimonio Cultural', 2, '978-980-397-102-1', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '11-15', 'Primera', '2025-12-17 15:54:02'),
(350, '3 ari', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '3', 'primera', '2025-12-17 15:54:02'),
(351, '73926', 'Percusión y tomate', 'Sol Linares', 20, '978-980-14-1339-4', 1, 13, 2, 0, '2010-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(352, '6 car', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '6', 'primera', '2025-12-17 15:54:02'),
(353, '4 bal', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '4', 'primera', '2025-12-17 15:54:02'),
(354, 'TA28', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Urbante', 'Instituto del Patrimonio Cultural', 2, '978-980-397-099-4', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '28', 'Primera', '2025-12-17 15:54:02'),
(355, '8 con', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '8', 'primera', '2025-12-17 15:54:02'),
(356, '7 chi', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '7', 'primera', '2025-12-17 15:54:02'),
(357, 'BA0044', 'Roberto Gonzáles', 'Alirimar Celis', 1, '978-980-7039-75-8', 3, 1, 2, 45, '2008-11-18', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(358, '10 eje', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '0195-01-01', 'Salvat', '10', 'primera', '2025-12-17 15:54:02'),
(359, '9 den', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '9', 'primera', '2025-12-17 15:54:02'),
(360, 'TA21', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Rafael Urdaneta', 'Instituto del Patrimonio Cultural', 2, '978-980-397-071-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '21', 'Primera', '2025-12-17 15:54:02'),
(361, '11 esp', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '11', 'primera', '2025-12-17 15:54:02'),
(363, '14 haf', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '14', 'primera', '2025-12-17 15:54:02'),
(364, '13 gei', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '13', 'primera', '2025-12-17 15:54:02'),
(365, 'TA0627', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Córdoba Torbes', 'Instituto del Patrimonio Cultural', 2, '980-397-040-2', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '6-27', 'Primera', '2025-12-17 15:54:02'),
(366, '472983', 'Los últimos días de Pompeya', 'Edward Bulwer Lytton', 20, '84-303-0490-8', 1, 13, 2, 0, '1983-12-11', 'Ramón Sopena, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(367, 'BA0045', 'Pedro Báez', 'Néstor Balza', 1, '978-980-7240-10-9', 3, 1, 2, 46, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(368, 'E1-036', 'Toma mi lanza bañada de plata', 'José Vicente Abreu', 20, '10102929', 1, 6, 1, 46, '1973-03-05', '', NULL, '', '2025-12-17 15:54:02'),
(369, '16 jor', 'Diccionario Enciclopedicos SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '16', 'primera', '2025-12-17 15:54:02'),
(370, '15 ima', 'Diccionario Enciclopedico SALVAT', 'Salvat Editores', 40, '84-345-4532-2', 1, 11, 2, 0, '1985-01-01', 'Salvat', '15', 'primera', '2025-12-17 15:54:02'),
(372, 'C-90', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '1', 'segunda', '2025-12-17 15:54:02'),
(373, 'E1-037', 'Relatos', 'Stwndhal', 15, '1818818181', 1, 6, 1, 47, '1970-02-10', '', NULL, '', '2025-12-17 15:54:02'),
(374, 'BA0046', 'Pájaro', 'Alicia Torres', 1, '978-980-7039-62-8', 3, 1, 2, 47, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(375, 'C-91', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-02-11', 'Andres Bello S.A', '2', 'segunda', '2025-12-17 15:54:02'),
(376, '63827', 'Ojos de perro azul', 'Gabriel García Márquez', 15, '978-84-397-0102-6', 1, 13, 2, 0, '1976-12-11', 'Sudamericana', NULL, 'Sexta', '2025-12-17 15:54:02'),
(377, 'C-92', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '3', 'segunda', '2025-12-17 15:54:02'),
(378, 'E1-038', 'Coronacion', 'José Donozo', 20, '00000', 1, 6, 1, 48, '1957-01-19', 'Salvat editores', NULL, '', '2025-12-17 15:54:02'),
(379, 'TA0510', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Cárdenas Guásimos', 'Instituto del Patrimonio Cultural', 2, '978-980-397-082-6', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '5-10', 'Primera', '2025-12-17 15:54:02'),
(380, 'BA0047', 'Carlos Quintana', 'Félix Suazo', 1, '978-980-7039-80-2', 3, 1, 2, 48, '2008-11-19', '', NULL, '', '2025-12-17 15:54:02'),
(381, 'Ccs 1', 'Archivo de Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '0000', 3, 11, 4, 0, '1822-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '2', 'primera', '2025-12-17 15:54:02'),
(382, 'NE02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Arismendi', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera', '2025-12-17 15:54:02'),
(386, 'E1-039', 'Werther', 'Goethe', 20, '00000', 1, 6, 1, 49, '1969-08-21', 'Salvat editores', NULL, '', '2025-12-17 15:54:02'),
(387, 'BA0048', 'Juan Calzadilla', 'Israel Ortega Oropeza', 1, '978-980-7039-62-8', 1, 1, 2, 49, '2008-11-15', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(388, 'NE01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2010 | Municipio Antolín del Campo', 'Instituto del Patrimonio Cultural', 2, '978-980-397-117-5', 1, 5, 1, 0, '2010-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(391, '63873', 'Mujeres y Escritores más un crimen', 'Eva Feld', 15, '980-07-5823-2', 1, 13, 2, 0, '1999-12-11', 'Warp Ediciones, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(392, 'NE0910', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Península de Macanao Tubores', 'Instituto del Patrimonio Cultural', 2, '980-397-029-1', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '9-10', 'Primera', '2025-12-17 15:54:02'),
(395, 'NE08', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Mariño', 'Instituto del Patrimonio Cultural', 2, '980-397-017-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '8', 'Primera', '2025-12-17 15:54:02'),
(403, 'NE05', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipio Gómez', 'Instituto del Patrimonio Cultural', 2, '978-980-397-111-3', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '5', 'Primera', '2025-12-17 15:54:02'),
(405, 'BA0049', 'Carlos Gonzáles Bogen', 'Zhelma Portillo', 1, '978-980-7039-98-7', 2, 1, 2, 50, '2008-11-06', '', NULL, '', '2025-12-17 15:54:02'),
(406, 'E1-040', 'Atapaima', 'José Antonio Escalona-Escalona', 21, '000000', 1, 6, 1, 50, '2000-12-11', '', NULL, '', '2025-12-17 15:54:02'),
(410, 'C-94', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '4', 'segunda', '2025-12-17 15:54:02'),
(411, 'NE0304', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Díaz García', 'Instituto del Patrimonio Cultural', 2, '978-980-397-112-0', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '4-3', 'Primera', '2025-12-17 15:54:02'),
(413, 'C-95', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '6', 'segunda', '2025-12-17 15:54:02'),
(415, 'C-96', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '11', 'segunda', '2025-12-17 15:54:02'),
(416, 'C-97', 'Enciclopedia de venezuela', 'Pascual Venegas Filardo', 10, '980', 1, 4, 3, 0, '1976-06-11', 'Andres Bello S.A', '12', 'segunda', '2025-12-17 15:54:02'),
(417, 'BA0050', 'Emerio Darío Lunar', 'Oscar Gonzáles Bogen', 1, '978-980-7039-42-0', 1, 1, 2, 52, '2008-11-27', '', NULL, '', '2025-12-17 15:54:02'),
(418, 'NE07', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Marcano', 'Instituto del Patrimonio Cultural', 2, '978-980-397-094-9', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '7', 'Primera', '2025-12-17 15:54:02'),
(422, 'NE06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Maneiro', 'Instituto del Patrimonio Cultural', 2, '980-6448-91-X', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera', '2025-12-17 15:54:02'),
(425, 'BA0051', 'Jorge Chacón', 'Alejandro Useche', 1, '978-980-7039-79-6', 3, 1, 2, 52, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(426, '367657', 'Urubuquaquá', 'João Guimarães Rosa', 20, '84-322-0455-2', 1, 13, 2, 0, '1982-12-11', 'Seix Barral, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(427, 'E1-041', 'El misterio de las catedrales', 'Fulcanelli', 28, '000000', 1, 6, 1, 51, '1926-12-01', '', NULL, '', '2025-12-17 15:54:02'),
(429, 'BA0052', 'Amarilis Hannot', 'Gabino matos', 1, '978-980-7240-19-2', 3, 1, 2, 53, '2009-11-21', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(430, 'BA0053', 'Ángel Hurtado', 'Zhelma Portillo', 1, '978-980-7039-69-7', 3, 1, 2, 54, '2008-11-24', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(431, 'C-3', 'mantis religiosa', 'Reina Ramona  Alvarez de Casas', 20, '03', 1, 4, 2, 0, '0000-00-00', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(432, 'E1-042', 'Memorias de Altagracia', 'Salvador Garmendia', 20, '980-01-0479-8', 1, 6, 1, 52, '1991-08-06', 'Monte Ávila Editores', NULL, '1°', '2025-12-17 15:54:02'),
(435, 'BA0054', 'Luisa Richter', 'Nydia Gutiérrez', 1, '978-980-7039-72-7', 3, 1, 2, 55, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(436, 'C-8', 'Un templo y un ausente', 'Blanca Isabel de Lima', 17, '08', 1, 4, 2, 0, '2006-07-11', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(437, 'BJ 1', 'Viajes de Gulliver', 'Jhonathan Swift', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '1', 'primera', '2025-12-17 15:54:02'),
(441, '638263', 'Tradición nacionalidad y americanidad', 'Mario Briceño Iragorry', 28, '9788000106694', 1, 13, 2, 0, '1955-12-11', 'Editorial Universitaria, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(444, 'E1-043', 'El Quiriminduña de los Ñereñeres', 'Cesar Chirinos', 20, '000000', 1, 6, 1, 53, '1980-03-15', 'Monte Ávila Editores', NULL, '', '2025-12-17 15:54:02'),
(445, 'C-9', 'El juego del garrote', 'Argimiro Gonzales', 17, '08', 1, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(446, 'BA0055', 'Harry Abend', 'Marisa Mena', 1, '978-980-7039-67-3', 3, 1, 2, 56, '2008-11-28', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(447, 'B2', 'Ivanhoe', 'Walter Scott', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '2', 'primera', '2025-12-17 15:54:02'),
(449, 'C-11', 'El morrocoy bajo la lluvia', 'Julio Jauregi', 15, '11', 2, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(450, '73927', 'Persistencia del desvelo', 'Hesnor Rivera', 21, 'BPO712', 1, 13, 2, 0, '1976-12-11', 'Monte Ávila editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(451, 'BA0056', 'Anna María Mazzei', 'Costanza de Rogatis', 1, '978-980-7039-85-7', 3, 1, 2, 57, '2008-06-12', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(452, 'E1-044', 'Folklore Venezolano', 'R. Olivares Figueroa', 42, '000000', 1, 6, 1, 54, '2025-12-11', '', NULL, '', '2025-12-17 15:54:02'),
(453, 'NE11', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Villalba', 'Instituto del Patrimonio Cultural', 2, '980-397-004-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '11', 'Primera', '2025-12-17 15:54:02'),
(455, 'ME02', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Andrés Bello', 'Instituto del Patrimonio Cultural', 2, '980-6448-75-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '2', 'Primera', '2025-12-17 15:54:02'),
(456, 'Juan X', 'Cartas a sus Familiares', 'Ediciones Paulinas', 20, '84-285-0257-9', 1, 11, 5, 0, '1978-01-01', 'Paulinas', '1', 'primera', '2025-12-17 15:54:02'),
(457, 'BA0057', 'Manasés', 'Zhelma Portillo', 1, '978-980-7039-97-0', 3, 1, 2, 58, '2008-11-23', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(458, 'E1-045', 'Mocedades de Bolivar', 'R. Blanco Fombona', 5, '000000', 1, 6, 1, 55, '1988-02-06', '', NULL, '', '2025-12-17 15:54:02'),
(459, '638273', 'Los verdes de mayo hasta el mar', 'Luis Goytisolo', 20, '84-322-0301-7', 1, 13, 2, 0, '1976-12-11', 'Seix Barral, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(460, 'ME19', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Santos Marquina', 'Instituto del Patrimonio Cultural', 2, '980-6448-89-8', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '19', 'Primera', '2025-12-17 15:54:02'),
(461, 'Ccs 2', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '0000', 2, 11, 4, 0, '1981-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '8', 'primera', '2025-12-17 15:54:02'),
(463, 'ME01', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipio Alberto Adriani', 'Instituto del Patrimonio Cultural', 2, '978-980-397-083-3', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '1', 'Primera', '2025-12-17 15:54:02'),
(464, 'Claudi', 'Claudio el Dios y su esposa Mesalina', 'Robert Graves', 20, '84-473-0666-6', 1, 11, 5, 0, '1994-01-01', 'Robert Graves', '1', 'primera', '2025-12-17 15:54:02'),
(465, 'Ccs 3', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco de Venezuela', 17, '000', 2, 11, 4, 0, '1985-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '9', 'primera', '2025-12-17 15:54:02'),
(466, 'BA0058', 'Pablo Antonio Millán', 'Marisa Mena', 1, '978-980-7240-50-5', 3, 1, 2, 59, '2010-02-16', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(467, 'E1-046', 'Borradores', 'Enrique Castellanos', 28, '000000', 1, 6, 1, 46, '1983-12-11', 'Academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(468, 'ME21', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Tovar', 'Instituto del Patrimonio Cultural', 2, '980-6448-77-4', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '21', 'Primera', '2025-12-17 15:54:02'),
(469, 'Litera', 'Premios Nacionales de Cultura', 'Carlos Noguera', 3, '980-376-118-8', 1, 11, 5, 0, '2005-01-01', 'Literatura 2002-2003', '1', 'primera', '2025-12-17 15:54:02'),
(470, 'ME17', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Rangel', 'Instituto del Patrimonio Cultural', 2, '980-6448-93-6', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '17', 'Primera', '2025-12-17 15:54:02'),
(471, 'Ccs 4', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 3, 11, 4, 0, '1986-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '10', 'primera', '2025-12-17 15:54:02'),
(472, 'C-13', 'San francisco de asis vitral de memorias', 'Jose Sanchez Arevalo', 43, '13', 1, 4, 2, 0, '2006-06-11', 'El perro y la rana', NULL, 'primera', '2025-12-17 15:54:02'),
(473, 'E1-047', 'Crónicas de las horas', 'Antonia Palacios', 15, '000000', 1, 6, 1, 57, '1980-12-11', 'Monte Ávila Editores', NULL, '', '2025-12-17 15:54:02'),
(474, 'Ccs 5', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '000', 1, 11, 4, 0, '1989-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '8', 'primera', '2025-12-17 15:54:02'),
(475, 'Hiroma', 'La Fuerza de la Afinidad', 'Hiroma', 21, '0000', 1, 11, 5, 0, '2011-01-01', 'Hiroma', '1', 'primera', '2025-12-17 15:54:02'),
(476, 'Ccs 6', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 1, 11, 4, 0, '1995-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '11-12-13', 'primera', '2025-12-17 15:54:02'),
(477, 'Ulises', 'Ulises y el Laberinto', 'Francisco Rivera', 20, '0000', 1, 11, 5, 0, '1983-01-01', 'Antares', '1', 'primera', '2025-12-17 15:54:02'),
(478, 'BA0059', 'José Faneite', 'Natalia Afanasiev', 1, '978-980-7039-83-3', 2, 1, 2, 60, '2008-11-28', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(479, 'Ccs 7', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 4, 11, 4, 0, '1996-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '15', 'primera', '2025-12-17 15:54:02'),
(480, 'C-12', 'un estilo muy especial', 'Briquette Rodriguez Barrios', 15, '12', 1, 4, 2, 0, '2006-06-11', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(481, 'BA0060', 'Nicasio Duno', 'Gabino matos', 1, '978-980-7039-48-2', 3, 1, 2, 61, '2008-11-21', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(482, 'La Ide', 'Poesia Popular y Nativista', 'José del Real Montilla', 21, '0000', 1, 11, 5, 0, '2006-01-01', 'Poesia Popular y Nativista', '1', 'primera', '2025-12-17 15:54:02'),
(483, '63836', 'Edad prohibida', 'Torcuato Luca de Tena', 20, '978-84-320-2233-3', 1, 13, 2, 0, '1958-12-11', 'Círculo de lectores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(484, 'ME23', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Zea', 'Instituto del Patrimonio Cultural', 2, '978-980-397-084-0', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '23', 'Primera', '2025-12-17 15:54:02'),
(485, 'C-14', 'Y la lluvia borro la sangre en carabobo', 'Igor Garcia Rodriguez', 15, '14', 1, 4, 2, 0, '2006-06-11', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(486, 'BA0061', 'Pepe López', 'Susana Benko', 1, '978-980-7240-11-6', 3, 1, 2, 62, '2008-11-30', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(487, 'ME06', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Campo Elías', 'Instituto del Patrimonio Cultural', 2, '980-6448-67-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '6', 'Primera', '2025-12-17 15:54:02'),
(488, 'BJ 2', 'Biblioteca Juvenil Ivanhoe', 'Walter Scott', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '2', 'primera', '2025-12-17 15:54:02'),
(489, 'ME12', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Libertador', 'Instituto del Patrimonio Cultural', 2, '978-980-397-062-8', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '12', 'Primera', '2025-12-17 15:54:02'),
(490, 'C-15', 'Cuentos cortos de vivos, muertos y aparecidos', 'Noelia Rodriguez', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(491, 'C-16', 'Chismaranga', 'Cruz Arnalado Jimenez Riera', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(492, 'Barthe', 'Ensayos Estructuralistas', 'Ronald Barthes', 28, '0000', 1, 11, 5, 0, '1971-01-01', 'Ensayos Estructuralistas', '1', 'primera', '2025-12-17 15:54:02'),
(493, 'ME0714', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Caracciolo Parra Olmedo Obispo Ramos de Lora', 'Instituto del Patrimonio Cultural', 2, '980-6448-21-9', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '7-14', 'Primera', '2025-12-17 15:54:02'),
(494, 'BJ 3', 'Biblioteca Juvenil Aventuras De Tom Sawyer', 'Mark Twain', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '3', 'primera', '2025-12-17 15:54:02'),
(495, 'BA0062', 'Mónica Chalbaud', 'Nelly Barbieri', 1, '978-980-7039-32-1', 3, 1, 2, 63, '2008-11-13', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(496, 'C-17', 'Casa de Difuntos y otros Cuentos', 'Cruz Arnalado Jimenez Riera', 15, '15', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(497, 'ME20', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Sucre', 'Instituto del Patrimonio Cultural', 2, '980-6448-84-7', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '20', 'Primera', '2025-12-17 15:54:02'),
(499, 'Colecc', 'Para Contribuir a la Confusion General', 'Aldo Pellegrini', 28, '0000', 1, 11, 5, 0, '1728-01-01', 'Nueva Vision', '1', 'primera', '2025-12-17 15:54:02'),
(500, 'BJ 4', 'Biblioteca Juvenil Cuentos', 'Anderson', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '4', 'primera', '2025-12-17 15:54:02'),
(501, 'C-18', 'URIMARE: REINA DEL GUACHARO', 'Felix Medina Bracho', 15, '16', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(502, 'ME06-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Arzobispo Chacón Guaraque', 'Instituto del Patrimonio Cultural', 2, '978-980-397-114-4', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '05-09', 'Primera', '2025-12-17 15:54:02'),
(503, 'El Poz', 'El Pozo Onetti', 'Juan Carlos Onetti', 20, '0000', 1, 11, 5, 0, '1969-01-01', 'El Pozo Onetti', '1', 'primera', '2025-12-17 15:54:02'),
(504, 'BA0063', 'Esteban Mendoza', 'Luis Velázquez', 1, '978-980-7240-42-0', 3, 1, 2, 64, '2008-02-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(505, '647377', 'Ramón Palomares: Habitando el reino', 'Pedro Ruiz', 21, '978-980-6743-40-3', 1, 13, 2, 0, '2008-12-11', 'Fondo Editorial Arturo Cardozo', NULL, 'Primera', '2025-12-17 15:54:02'),
(506, 'BJ 5', 'Biblioteca Juvenil la Isla Del Tesoro', 'Robert Louis Stevenson', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '5', 'primera', '2025-12-17 15:54:02'),
(508, 'YA09', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipio Nirgua', 'Instituto del Patrimonio Cultural', 2, '980-6448-68-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '10', 'Primera', '2025-12-17 15:54:02'),
(509, 'Cuento', 'Cuento de Color', 'Manuel Diaz Rodriguez', 15, '0000', 1, 11, 5, 0, '1972-01-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(511, 'C-19', 'cuentos de san garabato de la costa', 'Jorge jaber ferretis', 15, '18', 1, 4, 2, 0, '2006-05-03', 'El perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(512, 'BA0064', 'José Requena', 'Willy Arangure', 1, '978-980-7039-65-9', 3, 1, 2, 65, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(513, 'Las Ro', 'Las Rodriguerias De Samuel Robinson', 'Trino Borgez', 15, '0000', 1, 11, 5, 0, '2004-01-01', 'Mucuglifo', '1', 'primera', '2025-12-17 15:54:02'),
(514, 'BJ 6', 'Biblioteca Juvenil Viajes De Marco Polo', 'Olive Price', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '6', 'primera', '2025-12-17 15:54:02'),
(515, 'C-20', 'Vivir en marin', 'Rafael Augusto Quintero', 43, '20', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(516, 'YA03', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipio Bruzual', 'Instituto del Patrimonio Cultural', 2, '980-397-0240', 1, 5, 1, 0, '2007-12-12', 'Instituto del Patrimonio Cultural', '3', 'Primera', '2025-12-17 15:54:02'),
(517, '79389', 'Voces de medianoche', 'Antonio Betancor', 21, '978-980-396-886-1', 1, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(518, 'La Inu', 'Guasdualito Tragedia Heroísmo y Amor', 'Angel Sabril Nieves', 44, '0000', 1, 11, 5, 0, '2002-01-01', 'Guasdualito Tragedia Heroísmo y Amor', '1', 'primera', '2025-12-17 15:54:02'),
(519, 'C-21', 'GUATIRE: VISOS DE UNA HISTORIA GLORIOSA', 'Rafael Augusto Quintero', 43, '21', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(520, 'BJ 7', 'Biblioteca Juvenil Los Tres Mosqueteros', 'Alejandro Dumas', 20, '0000', 1, 11, 3, 0, '1972-01-01', 'Biblioteca Juvenil', '7', 'primera', '2025-12-17 15:54:02'),
(521, 'BA0065', 'Adonay Duque', 'Enrique Viloria Vera', 1, '978-980-7039-63-5', 3, 1, 2, 66, '2008-06-05', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(522, 'C-22', 'CAMONINA', 'Leon Moraria', 43, '22', 1, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(523, 'YA01-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Arístides Bastidas Sucre', 'Instituto del Patrimonio Cultural', 2, '978-980-397-103-8', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '1-20', 'Primera', '2025-12-17 15:54:02'),
(524, 'El Ind', 'El Indio', 'Humberto Febres Rodriguez', 15, '0000', 1, 11, 5, 0, '2001-01-01', 'Humberto Febres Rodriguez', '1', 'primera', '2025-12-17 15:54:02'),
(525, 'YA04-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2006 | Municipios Cocorote La Trinidad', 'Instituto del Patrimonio Cultural', 2, '980-397-027-5', 1, 5, 1, 0, '2006-12-12', 'Instituto del Patrimonio Cultural', '4-11', 'Primera', '2025-12-17 15:54:02'),
(526, 'BA0066', 'Rafaela Baroni', 'Zhelma Portillo', 1, '978-980-7240-20-8', 2, 1, 2, 67, '2009-11-29', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(527, 'BJ 8', 'Biblioteca Juvenil Robinson Crusoe', 'Daniel Defoe', 20, '0000', 1, 11, 3, 0, '1972-10-01', 'Biblioteca Juvenil', '8', 'primera', '2025-12-17 15:54:02'),
(528, 'C-23', 'Relatos de la IV', 'Tarik Souki', 30, '23', 2, 4, 2, 0, '2006-06-23', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(529, 'Guaric', 'Guarico, Aragua y sus lugares comunes', 'Jose Gregorio Correa y Argenis Ranuarez', 44, '0000', 6, 11, 5, 0, '2008-01-01', 'Guarico, Aragua y sus lugares comunes', '1', 'primera', '2025-12-17 15:54:02'),
(530, 'YA06-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios José Antonio Páez Urachiche', 'Instituto del Patrimonio Cultural', 2, '980-397-057-7', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '13-15', 'Primera', '2025-12-17 15:54:02'),
(531, 'YA05-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Independencia San Felipe', 'Instituto del Patrimonio Cultural', 2, '978-980-397-09-18', 1, 5, 1, 0, '0000-00-00', 'Instituto del Patrimonio Cultural', '5-11', 'Primera', '2025-12-17 15:54:02'),
(532, 'BA0067', 'Rubén Núñez', 'Fernando Rojas', 1, '978-980-7039-88-8', 3, 1, 2, 68, '2008-06-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(534, 'AN18-2', 'Catálogo del Patrimonio Cultural Venezolano 2004-2009 | Municipios Simón Bolívar Turístico Diego Bautista Urbaneja', 'Instituto del Patrimonio Cultural', 2, '978-980-397-107-6', 1, 5, 1, 0, '2009-12-12', 'Instituto del Patrimonio Cultural', '18-21', 'Primera', '2025-12-17 15:54:02'),
(535, 'C-24', 'La historia Popular de la rebelion popular de 1814', 'Juan Uslar Pietri', 17, '9789800117750', 2, 4, 2, 0, '2006-06-23', 'Monte Avila', NULL, 'primera', '2025-12-17 15:54:02'),
(536, 'BA0068', 'Demetrio Silva', 'William García', 1, '978-980-7240-53-6', 3, 1, 2, 69, '2010-03-18', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(537, 'AN06-0', 'Catálogo del Patrimonio Cultural Venezolano 2004-2008 | Municipios Guanta Juan Antonio Sotillo', 'Instituto del Patrimonio Cultural', 2, '980-397-053-4', 1, 5, 1, 0, '2008-12-12', 'Instituto del Patrimonio Cultural', '6-8', 'Primera', '2025-12-17 15:54:02'),
(538, 'caraca', 'Nuevos Narradores de Venezuela', 'Ince', 9, '0000', 1, 11, 5, 0, '1985-01-01', 'Ediciones Culturales', '1', 'primera', '2025-12-17 15:54:02'),
(539, 'AN15-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2005 | Municipios San José de Guanipa Simón Rodríguez', 'Instituto del Patrimonio Cultural', 2, '980-6448-50-2', 1, 5, 1, 0, '2005-02-22', 'Instituto del Patrimonio Cultural', '15-18', 'Primera', '2025-12-17 15:54:02'),
(540, '081919', 'Historias del Paraíso', 'Gustavo Pereira', 21, '978-980-396-987-5', 2, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', '2', 'Primera', '2025-12-17 15:54:02'),
(541, 'C-25', 'Memorias de la insurgencia', 'Fundacion centro nacional de historia', 40, '9789807053198', 1, 4, 2, 0, '2006-06-23', 'Fundacion centro nacional de historia', NULL, 'primera', '2025-12-17 15:54:02'),
(542, 'AN01-1', 'Catálogo del Patrimonio Cultural Venezolano 2004-2007 | Municipios Anaco Pedro María Freites', 'Instituto del Patrimonio Cultural', 2, '980-6448-50-2', 1, 5, 1, 0, '2007-02-22', 'Instituto del Patrimonio Cultural', '1-13', 'Primera', '2025-12-17 15:54:02'),
(543, 'MLU 1', 'Otras Literaturas', 'Maestros De La Literatura Universal', 3, '84-8280-685-8', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '15', 'primera', '2025-12-17 15:54:02'),
(544, 'BA0069', 'Jeús Guerrero', 'Nydia Gutiérrez', 1, '978-980-7039-71-0', 3, 1, 2, 70, '2008-11-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(545, '488867', 'Poesía', 'Raúl Hernández Novás', 21, '978-959-260-210-6', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Casa de las América', NULL, 'Primera', '2025-12-17 15:54:02'),
(546, 'MLU 2', 'Norteamerica', 'Maestros De La Literatura Universal', 3, '84-8280-670-7', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '10', 'Segunda', '2025-12-17 15:54:02'),
(547, 'El Mar', 'El Marques de Bocono 1', 'Virgilio Tosta', 9, '0000', 1, 11, 5, 0, '1974-01-01', 'Temas Barines', '1', 'primera', '2025-12-17 15:54:02'),
(548, 'C-26', 'Jose Antonio Paez visto por cinco historiadores', 'Cristobal L Mendoza', 17, '26', 1, 4, 2, 0, '1973-07-11', 'Academia nacional de la historia', NULL, 'primera', '2025-12-17 15:54:02'),
(549, 'BA0070', 'Lihie Talmor', 'Rafael Rondón Narváez', 1, '978-980-7039-82-6', 3, 1, 2, 71, '2008-06-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(550, 'E1-056', 'Caracter de Urgencia', 'José Miguel Casado', 21, '978-980-396-758-1', 1, 6, 1, 78, '2007-12-11', 'El Perro y La Rana', NULL, '', '2025-12-17 15:54:02'),
(551, '639928', 'Poemas para el olvido', 'Francisco Ardiles', 21, '980-396-198-5', 1, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(552, 'MLU 3', 'Francia', 'Maestros De La Literatura Universal', 3, '84-8280-684-x', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '14', 'primera', '2025-12-17 15:54:02'),
(554, 'BA0071', 'Diego Barboza', 'Marisa Mena', 1, '978-980-7039-66-6', 3, 1, 2, 72, '2008-06-23', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(555, 'C-27', 'El libro de los cronistas de venezuela', 'Cristobal L Mendoza', 2, '26', 1, 4, 2, 0, '2004-10-05', 'Gobernacion del estado aragua', '2', 'primera', '2025-12-17 15:54:02'),
(556, 'Poesia', 'Breve Antologia', 'Eldis Araque', 21, '980-6023-21-8', 1, 11, 5, 0, '1960-01-01', 'Breve Antologia', '1', 'primera', '2025-12-17 15:54:02'),
(557, 'MLU 4', 'Inglaterra', 'Maestros De La Literatura Universal', 3, '84-8280-683-1', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '13', 'Segunda', '2025-12-17 15:54:02'),
(558, 'E1-057', 'En sol de sed', 'Adhely rivero', 21, '000000', 1, 6, 1, 79, '1990-06-08', '', NULL, '', '2025-12-17 15:54:02'),
(559, '478569', 'Antípodas', 'Luis Alberto Angulo', 21, '980-328-100-3', 1, 13, 2, 0, '1998-12-11', 'Fondo Editorial Predios', NULL, 'Segunda', '2025-12-17 15:54:02'),
(560, 'UNA-1', 'Geometría - Guía Instruccional', 'Universidad Nacional Abierta', 24, '980-236-428-2', 1, 13, 1, 0, '1995-12-12', 'Universidad Nacional Abierta', NULL, 'Tercera', '2025-12-17 15:54:02'),
(561, 'MLU 5', 'Rusia', 'Maestros De La Literatura Universal', 3, '84-8280-674-2', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '4', 'primera', '2025-12-17 15:54:02'),
(562, 'BA0072', 'Grone Romepri', 'Perán Erminy (Rampe Nymire)', 1, '978-980-7240-55-0', 3, 1, 2, 73, '2010-02-04', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(563, 'C-28', 'Diarios una seleccion Francisco de miranda', 'Juan Carlos Chirinos', 17, '9789801402527', 1, 4, 2, 0, '2007-10-05', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(564, '468657', 'Baraja de fuego', 'Ulrike Sánchez', 21, '980-6911-03-2', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Teatro de Venezuela', NULL, 'Primera', '2025-12-17 15:54:02'),
(565, 'Hola P', 'Pompeyo Maria Moños', 'Levy Rossell', 45, '0000', 1, 11, 5, 0, '1994-02-22', 'Levy Rossell', '1', 'primera', '2025-12-17 15:54:02'),
(566, 'BA0073', 'Antonio Moya', 'José Omaña', 1, '978-980-7039-51-2', 3, 1, 2, 74, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(567, '46776', 'Sol decapitado', 'José Daniel Suárez Hermoso', 21, '980-6911-09-1', 1, 13, 2, 0, '2007-12-11', 'Fondo Editorial Teatro de Venezuela', NULL, 'Primera', '2025-12-17 15:54:02'),
(568, 'E1-058', 'Libro de memorias y Homilias', 'Lisimaco A. Gutierrez M.', 46, '980-302-126-5', 1, 6, 1, 80, '2025-12-11', '', NULL, '', '2025-12-17 15:54:02'),
(569, 'La Muj', 'La Mujer', 'Jules Michelet', 2, '968-16-1980-3', 1, 11, 5, 0, '1985-01-01', 'Fondo Cultural Economica', '1', 'primera', '2025-12-17 15:54:02'),
(570, 'MLU 1.', 'Norteamerica', 'Maestros De La Literatura Universal', 3, '84-8280-673-4', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '3', 'primera', '2025-12-17 15:54:02'),
(571, 'BA0074', 'Néstor Alí Quiñones', 'Zhelma Portillo', 1, '978-980-7039-96-3', 3, 1, 2, 75, '2008-11-17', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(572, 'C-29', '1er Certamen mayor de las artes y letras 2005 capitulo artes visuales', 'Editorial Artes', 1, '29', 2, 4, 2, 0, '2006-10-08', 'Editorial Arte', NULL, 'primera', '2025-12-17 15:54:02'),
(573, 'E1-059', 'Facia', 'Alberto Jiménez Ure', 20, '000000', 1, 6, 1, 81, '1984-12-11', 'Damocles Editores', NULL, '', '2025-12-17 15:54:02'),
(574, 'Concep', 'Conceptos de Ecologia', 'Edward J. Kormondy', 22, '84-206-2032-7', 1, 11, 5, 0, '1978-01-01', 'Alianza Universidad', '1', 'primera', '2025-12-17 15:54:02'),
(575, 'MLU 4.', 'Inglaterra', 'Maestros De La Literatura Universal', 3, '84-8280-670-0', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '5', 'primera', '2025-12-17 15:54:02'),
(576, '478668', 'Vigilia de los metales', 'Enrique Mujica', 21, '2004', 1, 13, 2, 0, '2004-12-11', 'Asociación de escritores del estado Barinas', NULL, 'Primera', '2025-12-17 15:54:02'),
(577, 'BA0075', 'José Basanta', 'José Basanta', 1, '978-980-7039-45-1', 3, 1, 2, 76, '2008-11-19', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(578, 'E1-060', 'Guzmán Blanco y el arte venezolano', 'Roldán Esteva Grillet', 28, '980-222-104', 1, 6, 1, 82, '1986-12-11', 'Academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(579, 'La Met', 'La Metamorfosis', 'Franz Kafka', 20, '84-206-1004-6', 1, 11, 5, 0, '1975-01-01', 'Alianza Editorial', '1', 'primera', '2025-12-17 15:54:02'),
(580, 'BA0076', 'Víctor Valera', 'Zhelma Portillo', 1, '978-980-7039-95-6', 2, 1, 2, 77, '2008-02-13', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(581, 'MLU 5.', 'Rusia', 'Maestros De La Literatura Universal', 3, '84-8280-679-3', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '9', 'Segunda', '2025-12-17 15:54:02'),
(583, 'K1-420', 'Geometría - Lecturas', 'Universidad Nacional Abierta', 24, '0000', 1, 13, 1, 0, '1996-11-11', 'Universidad Nacional Abierta', NULL, '', '2025-12-17 15:54:02'),
(584, 'C-30', 'Conversaciones con Uslar Piestri', 'Alfredo Peña', 48, '30', 1, 4, 2, 0, '1978-10-08', 'Ateneo de caracas', NULL, 'primera', '2025-12-17 15:54:02'),
(585, '628272', 'Sed de esta lluvia', 'Belkis Cartay Angulo', 21, 'BLL215', 1, 13, 2, 0, '1986-12-11', 'Fondo Editorial A.P.U.L.A', NULL, 'Primera', '2025-12-17 15:54:02'),
(586, 'BA0077', 'Sigfredo Chacón', 'Luis Velázquez', 1, '978-980-7240-21-5', 3, 1, 2, 78, '2009-11-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(587, 'MLU 6', 'Alemania', 'Maestros De La Literatura Universal', 3, '84-8280-681-5', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '11', 'primera', '2025-12-17 15:54:02'),
(588, 'Razone', 'Razones de la nueva critica', 'Serge Doubrovsky', 3, '0000', 1, 11, 5, 0, '1974-11-30', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(589, 'BA0078', 'Régulo Pérez', 'Tarim Gols', 1, '978-980-7039-31-4', 2, 1, 2, 79, '2008-11-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(590, 'MLU 7', 'España', 'Maestros De La Literatura Universal', 3, '84-8280-682-3', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '12', 'primera', '2025-12-17 15:54:02'),
(591, 'Pajaro', 'Pajaro de Remoto Plumaje', 'Orlando Urbina', 21, '0000', 1, 11, 5, 0, '1992-07-01', 'Consejo Nacional de Cultura', '1', 'primera', '2025-12-17 15:54:02'),
(592, 'E1-062', 'Caza - Relampago', 'Manuel Diario Gruber', 21, '980-292-0681', 1, 6, 1, 84, '2025-12-11', '', NULL, '', '2025-12-17 15:54:02'),
(593, 'C-31', 'Chavez Nuestro', 'Rosa Miriam Elizalde - Luis Baez', 5, '9592103313', 2, 4, 2, 0, '2004-10-08', 'Casa editora Abril', NULL, 'primera', '2025-12-17 15:54:02'),
(594, 'K1-002', 'Seminario Internacional Equidad de Género en Acción', 'Fundación Editorial El Perro y la Rana', 4, '978-980-14-0742-3', 1, 13, 1, 0, '2009-12-12', 'Fundación Editorial El Perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(595, 'MLU 8', 'Venezuela', 'Maestros De La Literatura Universal', 3, '84-8280-686-6', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '7', 'primera', '2025-12-17 15:54:02'),
(596, 'BA0079', 'María Centeno', 'Carmen Hernández', 1, '978-980-7039-40-6', 2, 1, 2, 80, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(597, 'El Pol', 'El Politico', 'Azorin', 5, '0000', 1, 11, 5, 0, '1968-01-01', 'Coleccion Austral', '1', 'tercera', '2025-12-17 15:54:02'),
(598, 'MLU 9', 'Italia', 'Maestros De La Literatura Universal', 3, '84-8280-678-5', 1, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '8', 'primera', '2025-12-17 15:54:02'),
(599, 'C-32', 'Escenarios del cuerpo', 'Entre el exceso y la represion', 7, '9789801402367', 1, 4, 2, 0, '2010-10-08', 'El perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(600, 'Peonia', 'Peonia', 'Manuel Vicente Romero Garcia', 20, '980-01-142-X', 1, 11, 5, 0, '1986-01-01', 'Monte Avila Editores', '1', 'primera', '2025-12-17 15:54:02'),
(601, 'K1-003', 'Me Too - English for the Ninth Grade', 'Olga Flores Blanco', 24, '980-6277-36-8', 1, 13, 1, 0, '1992-12-12', 'Obelisco', NULL, '', '2025-12-17 15:54:02'),
(602, 'MLU 10', 'Latinoamerica', 'Maestros De La Literatura Universal', 3, '84-8280-672-6', 2, 11, 3, 0, '1984-01-01', 'La Oveja Negra LTDA', '2', 'primera', '2025-12-17 15:54:02'),
(603, '729732', 'Omar Moreno Gil', 'Elvin Barreto', 5, '978-980-14-003-5', 3, 13, 2, 0, '2007-12-11', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(604, 'E1-063', 'Ideas positivistas en Gil Fortoul y su historia', 'Antonio Mieres', 28, '000000', 1, 6, 1, 85, '1981-12-11', '', NULL, '', '2025-12-17 15:54:02'),
(605, 'BA0080', 'Pancho Quilici', 'Gladys Yunes Yunes', 1, '978-980-7039-52-9', 1, 1, 2, 81, '2008-11-17', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(606, 'Americ', 'America Dada al Diablo', 'Benjamin Carrion Monte Avila', 44, '0000', 1, 11, 5, 0, '1994-02-03', 'Monte Avila Editores', '1', 'primera', '2025-12-17 15:54:02'),
(607, 'BA0081', 'Carlos Medina', 'Nany Goncalves', 1, '978-980-7039-41-3', 3, 1, 2, 82, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(609, 'C-33', 'Einstein', 'Banesh Hoffman', 5, '9788434581456', 1, 4, 2, 0, '1985-10-08', 'Salvat Editores', NULL, 'primera', '2025-12-17 15:54:02'),
(610, 'K1-004', 'Boletín del Centro de Investigaciones Históricas y Estéticas', 'Universidad Central de Venezuela - Facultad de Arquitectura y Urbanismo', 49, '80-0103', 1, 13, 1, 0, '1980-12-12', 'Universidad Central de Venezuela - Facultad de Arquitectura y Urbanismo', NULL, '', '2025-12-17 15:54:02'),
(611, 'AB', 'Poesias Andres Bello', 'Andres Bello', 21, '0000', 1, 11, 3, 0, '1952-01-01', 'Obras Completas De Andres Bello', '1', 'primera', '2025-12-17 15:54:02'),
(612, 'E1-065', 'Un millón de pájaros muertos', 'Chicho', 21, '000000', 1, 6, 1, 87, '2003-12-11', 'El árbol editores', NULL, '', '2025-12-17 15:54:02'),
(614, '698199', 'Apuntes para la Historia del Agua', 'Wilfredo Bolívar', 17, 'BH172', 1, 13, 2, 0, '2000-12-11', 'LITORAMA', NULL, 'Primera', '2025-12-17 15:54:02'),
(615, 'E2-001', 'Memorias de Carmelo Fernandez', 'Biblioteca de la academia nacional de historia', 5, '000000', 1, 6, 2, 1, '1973-07-02', '', NULL, '', '2025-12-17 15:54:02'),
(616, 'BA0082', 'Carlos Prada', 'María Eugenia Zambrano', 1, '978-980-7039-58-1', 2, 1, 2, 83, '2007-11-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(617, 'Arturo', 'Chuo Gil', 'Chuo Gil', 50, '0000', 1, 11, 5, 0, '1973-01-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(618, 'BA0083', 'Luis Chacón', 'José Gregorio Noroño', 1, '978-980-7240-08-6', 3, 1, 2, 84, '2008-11-13', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(619, 'E2-002', 'Las estadísticas de las provincias en la época de Paez', 'Biblioteca de la academia nacional de historia', 17, '000000', 1, 6, 2, 2, '1973-04-26', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(620, 'Rumbo', 'Rumbo Al Socialismo', 'Toby Valderrama - Alejandro Mena', 5, '980-6976-00-2', 2, 11, 5, 0, '2005-01-01', 'Fondo Editorial Fabricio Ojeda', '1', 'primera', '2025-12-17 15:54:02'),
(621, 'BA0084', 'Licia Salvatore', 'Néstor Balza', 1, '978-980-7240-09-3', 3, 1, 2, 85, '2008-06-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(622, 'E2-003', 'Las comadres de caracas', 'Leonardo Ruiz Tirado', 17, '000000', 1, 6, 2, 3, '1973-04-26', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(623, 'BA0085', 'Margot Romer', 'Fernando Rojas', 1, '978-980-7039-87-1', 3, 1, 2, 86, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(624, 'Los Cu', 'Los Cuadernos De Malte Laurids Brigge', 'Rainer Maria Rilke', 5, '0000', 1, 11, 5, 0, '1958-01-01', 'Losada S.A', '1', 'primera', '2025-12-17 15:54:02'),
(625, 'E2-004', 'La oposición liberal en oriente (1844-1846)', 'Manuel Pérez Vila', 17, '000000', 2, 6, 2, 5, '1981-11-03', 'Editoriales de \"El Republicano\"', NULL, '', '2025-12-17 15:54:02'),
(626, 'Politi', 'Politica Feminista o El Doctor Bebe', 'Jose Rafael Pocaterra', 5, '980-01-0307-4', 1, 11, 5, 0, '1990-01-01', 'Monte Avila Latinoamericana, C.A', '1', 'primera', '2025-12-17 15:54:02'),
(627, 'BA0086', 'Ender Cepeda', 'Alexis Fernández', 1, '978-980-7039-37-6', 2, 1, 2, 87, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02');
INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`, `created_at`) VALUES
(628, 'E2-005', 'Repertorio Historico-Biografico del general José Tadeo Monagas (1784-1868)', 'Juan Bautista Querales D.', 5, '000000', 2, 6, 2, 7, '1983-10-11', 'Biblioteca de la academia nacional de la historia', '1', '', '2025-12-17 15:54:02'),
(630, '739297', 'De la horca a la taberna', 'Elision Jiménez Sierra', 20, '980-6055-43-8', 1, 13, 2, 0, '1994-12-15', 'Ediciones La Oruga Luminosa', NULL, 'Primera', '2025-12-17 15:54:02'),
(631, 'F1-014', 'La rama del relámpago', 'Vicente Gerbasi', 21, '000000', 1, 7, 1, 14, '1984-10-20', 'La casa de bello', NULL, '', '2025-12-17 15:54:02'),
(632, 'C-34', 'Cuestiones de la organizacion social LA PARTICIPACION CIUDADANA', 'Andres mejias', 4, '9803760882', 1, 4, 2, 0, '2004-06-08', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(633, 'BA0087', 'Édgar Álvarez Estrada', 'Israel Ortega', 1, '978-980-7240-04-8', 2, 1, 2, 88, '2008-11-13', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(634, 'El Caz', 'El Cazador', 'Rohini Priya Dasa', 5, '0000', 1, 11, 5, 0, '1981-01-01', 'Bhaktivedanta', '1', 'primera', '2025-12-17 15:54:02'),
(635, 'E2-006', 'Repertorio Historico-Biografico del general José Tadeo Monagas (1784-1868)', 'Juan Bautista Querales D.', 5, '000000', 2, 6, 2, 9, '1983-10-06', 'Biblioteca de la academia nacional de la historia', '2', '', '2025-12-17 15:54:02'),
(637, 'E2-007', 'Repertorio Historico-Biografico del general José Tadeo Monagas (1784-1868)', 'Juan Bautista Querales D.', 5, '000000', 1, 6, 2, 10, '1983-10-05', 'Biblioteca de la academia nacional de la historia', '3', '', '2025-12-17 15:54:02'),
(638, 'BA0088', 'Saúl Huerta', 'Israel Centeno', 1, '978-980-7240-03-1', 2, 1, 2, 89, '2008-11-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(639, 'C-35', 'Cultura y Patrimonio', 'Armando Jose Sequera', 2, '9803760890', 1, 4, 2, 0, '2004-09-11', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(640, 'F1-015', 'Intemperie', 'Rafael Cadenas', 21, '000000', 1, 7, 1, 15, '1977-12-15', 'ULA', NULL, '', '2025-12-17 15:54:02'),
(641, 'K1-005', 'El Valor de la Ortografía', 'Editorial Romor', 24, '980-381-038-3', 1, 13, 1, 0, '2000-11-11', 'Editorial Romor', NULL, '', '2025-12-17 15:54:02'),
(642, 'C-36', 'Pensando en Salud', 'Hermes Vargas', 51, '9803761013', 2, 4, 2, 0, '2004-09-11', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(643, '739278', 'Historias que se cuentan a solas', 'Chevige Guayke', 15, '980-6145-63-1', 1, 13, 2, 0, '1974-12-15', 'Consejo Nacional de la Cultura', '1', 'Primera', '2025-12-17 15:54:02'),
(644, 'E2-008', 'El café y las ciudades en los andes venezolanos', 'Alicia Ardao', 28, '000000', 1, 6, 2, 11, '1984-08-09', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(645, 'F1-016', 'Telar', 'Jan G. Otterstrom', 21, '000000', 1, 7, 1, 16, '2007-01-01', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(646, 'Romulo', 'Lengua y Creacion En Las Obras De Romulo Gallegos', 'Orlando Araujo', 5, '0000', 1, 11, 5, 0, '1977-01-01', 'En La Raya', '1', 'primera', '2025-12-17 15:54:02'),
(647, 'BA0089', 'Manuel Quintana Castillo', 'Zhelma Portillo', 1, '978-980-7039-94-9', 3, 1, 2, 90, '2008-06-24', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(648, 'E2-009', 'Nuevas crónicas de historia de venezuela', 'Ildefonso Leal', 43, '000000', 1, 6, 2, 12, '1985-12-15', 'Biblioteca de la academia nacional de la historia', '1', '', '2025-12-17 15:54:02'),
(649, 'C-37', 'Para Comenzar y Querer a Venezuela', 'Luis Britto Garcia', 17, '98037610785', 2, 4, 2, 0, '2004-09-11', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(650, 'F1-017', 'Bestiario de los venados', 'Nemecio Urbano Diaz', 9, '000000', 1, 7, 1, 17, '2009-11-03', 'ICAM', NULL, '1ra', '2025-12-17 15:54:02'),
(651, 'BA0090', 'JJ Moros', 'Katherine Chacón', 1, '978-980-7039-81-9', 3, 1, 2, 91, '2008-06-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(652, 'Los Gr', 'Los Griegos H.D.F Kitto', 'Eudeba/Lectores', 5, '0000', 1, 11, 5, 0, '1962-01-01', 'Editorial Universitaria De Buenos Aires', '1', 'primera', '2025-12-17 15:54:02'),
(653, 'K1-006', 'Teoría y Práctica de Física', 'William A. Suarez, Ely Brett C.', 24, '93-41-75', 1, 13, 1, 0, '1990-11-11', 'Departamento de Arte de Ediciones Eneva, Editorial Logos', NULL, '', '2025-12-17 15:54:02'),
(654, 'C-38', 'Mas Adictor Sera Usted', 'Roberto Hernandez Montoya', 4, '98037610815', 1, 4, 2, 0, '2004-09-11', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(655, '527262', 'Sonetos', 'Florbela Espanca', 21, '978-980-14-0102-5', 1, 13, 2, 0, '2008-12-15', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(656, 'E2-010', 'El proceso de la inmigración en venezuela', 'Ermila Trocones de Veracochea', 28, '980-222-134-1', 1, 6, 2, 13, '1986-08-08', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(657, 'C-39', 'El Legado Indigena', 'Gustavo Pereira', 17, '9803760769', 1, 4, 2, 0, '2004-09-11', 'Consejo nacional cultural', NULL, 'primera', '2025-12-17 15:54:02'),
(658, 'F1-018', 'El don del Águila', 'Carlos Castaneda', 9, '968-13-1328-3', 1, 7, 1, 18, '1982-06-09', 'Edivision', NULL, '1ra', '2025-12-17 15:54:02'),
(659, 'BA0091', 'Lía Bermúdez', 'Israel Ortega', 1, '978-980-7039-76-5', 2, 1, 2, 92, '2008-12-19', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(660, 'Pio Gi', 'Beato De La Libertad', 'Andres Eloy Blanco/ Jose Rafael Pocaterra', 5, '0000', 1, 11, 5, 0, '1975-01-01', 'Homenaje del Senado de la Republica', '1', 'primera', '2025-12-17 15:54:02'),
(661, 'F1-019', 'De cómo yo, Gaspar Hernando...', 'Angel Felix Gomez', 9, '978-980-14-0609-9', 1, 7, 1, 19, '2011-11-01', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(662, 'BA0092', 'Ernesto León', 'Marisa Mena', 1, '978-980-7240-22-2', 2, 1, 2, 93, '2009-06-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(663, '56886', 'Clásicos de la literatura infantil-juvenil de América Latina y el Caribe', 'Velia Bosch', 15, '978-980-396-842-7', 1, 13, 2, 0, '2007-12-15', 'Fundación Editorial el perro y la rana', '1', 'Primera', '2025-12-17 15:54:02'),
(665, 'E2-011', 'Los mercados exteriores de Caracas a comienzos de la independencia', 'Manuel Lucena Salmoral', 28, '980-222-730-7', 1, 6, 2, 14, '1992-11-05', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(666, 'Un Dia', 'Un Dia En La Vida', 'Manlio Argueta', 20, '0000', 1, 11, 5, 0, '1990-01-01', 'Publicaciones El Pueblo', '1', 'primera', '2025-12-17 15:54:02'),
(668, 'k1-007', 'Índice de Enfermedades en Plantas de Venezuela y Cuba', 'Radamés Urtiaga', 52, '0000', 1, 13, 1, 0, '1986-11-11', 'Sympodiophora Venezuelensis Deihton y Pirozynski', NULL, 'Primera', '2025-12-17 15:54:02'),
(669, 'C-40', 'La odisea de Homero', 'Menfredo Summer', 21, 'c-40', 1, 4, 2, 0, '1976-05-11', 'Brugera S.A', NULL, 'primera', '2025-12-17 15:54:02'),
(670, 'BA0093', 'Claudio Perna', 'Zuleiva Vivas', 1, '978-980-7039-35-2', 2, 1, 2, 94, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(671, 'F1-020', 'Sombra antigua', 'Pablo Mora', 9, '980-12-1199-7', 1, 7, 1, 20, '2005-04-01', 'Nadie nos edita Editores', NULL, '1ra', '2025-12-17 15:54:02'),
(672, 'Biblio', 'Añoranzas De Venezuela', 'Pedro Grases', 5, '980-222-257-7', 1, 11, 5, 0, '1988-01-01', 'Italgrafica, SRL', '1', 'primera', '2025-12-17 15:54:02'),
(673, 'K1-008', 'Cátedra Bolivariana 9° Grado Educación Básica', 'Vinicio Romero Martinez', 24, '980-211-144-9', 1, 13, 1, 0, '1988-11-11', 'Editorial Larense', NULL, '', '2025-12-17 15:54:02'),
(674, '638277', 'La isla cubana de ensueño, vice de la isla de Pinos y de la juventud', 'Jane McManus', 17, '959-7135-38-8', 1, 13, 2, 0, '2005-12-15', 'La Memoria', NULL, 'Primera', '2025-12-17 15:54:02'),
(675, 'C-41', 'Expediciones a la Sierra nevada de Merida', 'Dr. Carlos Chalbaud Cardona', 17, 'c-41', 1, 4, 2, 0, '1959-06-11', 'Ediciones Paraguocha', NULL, 'primera', '2025-12-17 15:54:02'),
(676, 'Los Vo', 'Los Vocablos Se Amaron Por Ultima Vez', 'Eva Feld', 9, '980-07-6663-4', 1, 11, 5, 0, '2000-02-01', 'Ala de Cuervo', '1', 'primera', '2025-12-17 15:54:02'),
(677, 'E2-012', 'Archivos del general Carlos Soublette', 'Naibe Burgos', 17, '000000', 1, 6, 2, 15, '1992-12-15', 'Biblioteca de la academia nacional de la historia', '1', '', '2025-12-17 15:54:02'),
(678, 'BA0094', 'Ángel Foong', 'Alejandro Bruzual', 1, '978-980-7240-07-9', 2, 1, 2, 95, '2008-06-18', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(679, 'F1-021', 'Memorias del relámpago', 'Carlos Danez', 9, '000000', 1, 7, 1, 21, '2007-12-15', 'INMUCU', NULL, '', '2025-12-17 15:54:02'),
(680, 'K1-009', 'Historia de Venezuela - Educación Básica', 'Josefina Duarte', 24, '980-275-093-X', 1, 13, 1, 0, '1989-11-11', 'Teduca/Santillana', NULL, '', '2025-12-17 15:54:02'),
(681, 'E2-013', 'Archivos del general Carlos Soublette', 'Naibe Burgos', 17, '980-222-710-2', 1, 6, 2, 16, '1992-12-15', 'Biblioteca de la academia nacional de la historia', '2', '', '2025-12-17 15:54:02'),
(682, '728739', 'El ente de papel, un estudio del personaje en la narrativa latinoamericana', 'Carmen Bustillo', 3, '980-212-201-7', 1, 13, 2, 0, '1995-12-15', 'Vadell hermanos', NULL, 'Primera', '2025-12-17 15:54:02'),
(683, 'K1-010', 'II Etapa del Itinerario de Iniciación Cristiana | Iniciación a la Fe | Catequizando', 'Comunidad Marista de Apure', 46, '0000', 1, 13, 1, 0, '2002-11-11', 'San Pablo', NULL, '', '2025-12-17 15:54:02'),
(684, 'F1-022', 'El libertador de los pájaros y los milagros del violinista', 'Daniel Eduardo Garcia', 9, '978-980-7163-74-3', 1, 7, 1, 22, '2008-12-15', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(685, 'dedica', 'Amar Partir', 'Stephen Marsh Planchart', 44, '0000', 1, 11, 5, 0, '2000-01-01', 'Museo los Llanos', '1', 'primera', '2025-12-17 15:54:02'),
(686, 'BA0095', 'Argelia Bravo', 'Carmen Hernández', 1, '978-980-7240-06-2', 2, 1, 2, 96, '2008-06-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(688, 'E2-014', 'Los olvidados próceres de Aragua', 'Lucas G. Castillo Lara', 5, '980-222-749-8', 1, 6, 2, 17, '1993-07-08', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(689, 'F1-023', 'Oculta memoria del Angel', 'Orlando Chirinos', 9, '000000', 1, 7, 1, 23, '2025-12-15', 'FundArte', NULL, '', '2025-12-17 15:54:02'),
(690, 'C-42', 'Cuatro Lecturas de Caracas', 'Arturo Uslar Pietri', 3, '9802533556', 1, 4, 2, 0, '1999-06-11', 'FUNDARTE', NULL, 'primera', '2025-12-17 15:54:02'),
(691, 'Dictad', 'Dictadura Mediatica En Venezuela', 'Luis Britto Garcia', 25, '978-980-396-815-1', 1, 11, 5, 0, '2007-10-02', 'El Perro y La Rana', '1', 'primera', '2025-12-17 15:54:02'),
(692, 'BA0096', 'Alfredo Ramírez', 'Costanza de Rogatis', 1, '978-980-7039-86-4', 2, 1, 2, 97, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(693, 'K1-011', 'Informe al Congreso | 1981', 'Contraloría General de la República', 53, '0000', 1, 13, 1, 0, '1981-11-11', 'República Bolivariana de Venezuela | Contraloría General de la República', '1', '', '2025-12-17 15:54:02'),
(694, 'Sobre ', 'Sobre Heroes y Tumbas', 'Ernesto Sabato', 20, '84-226-0447-1', 1, 11, 5, 0, '1973-01-01', 'Circulos de Lectores, S.A', '1', 'primera', '2025-12-17 15:54:02'),
(695, 'F1-024', 'Mi tierra', 'Juan España', 9, '980-239-001-1', 1, 7, 1, 24, '1988-04-01', 'Ministerio de relaciones interiores.', NULL, '2da', '2025-12-17 15:54:02'),
(696, '55776', 'Contra silencio', 'Neybis Bracho', 21, '980-6542-01-0', 1, 13, 2, 0, '2002-12-15', 'Ediciones Gitanjali', NULL, 'Primera', '2025-12-17 15:54:02'),
(697, 'BA0098', 'Alirio Oramas', 'Fernando Rojas', 1, '978-980-7039-89-5', 1, 1, 2, 99, '2008-11-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(698, 'C-43', 'Manual de Folklore Venezolano', 'Isabel Aretz', 2, '844992023-x', 1, 4, 2, 0, '1978-07-11', 'Monte Avila', NULL, '5ta', '2025-12-17 15:54:02'),
(699, 'Mi Que', 'Mi Querido Pablo', 'Ayari de la C', 21, '980-01-1469-6', 1, 11, 5, 0, '2006-01-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(700, 'F1-025', 'Obras completas', 'Guillermo Meneses', 9, '980-214-075-9', 1, 7, 1, 15, '1994-09-01', 'La casa de bello', 'VII', '', '2025-12-17 15:54:02'),
(701, 'BA0097', 'Pascual Navarro', 'Luis Velázquez', 1, '978-980-7039-78-9', 1, 1, 2, 98, '2008-06-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(705, 'Neruda', 'Confieso Que He Vivido Memorias', 'Pablo Neruda', 20, '0000', 1, 11, 5, 0, '1974-01-01', 'Herederos De Pablo Neruda', '1', 'primera', '2025-12-17 15:54:02'),
(706, 'F1-026', 'OBRAS', 'Rafael Angel Insausti', 21, '980-214-001-5', 1, 7, 1, 26, '1984-01-01', 'La casa de bello', NULL, '', '2025-12-17 15:54:02'),
(707, 'E2-016', 'Historia de las cárceles en Venezuela (1600-1890)', 'Ermila Trocones de Veracochea', 28, '000000', 1, 6, 2, 19, '1983-03-09', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(708, 'K1-013', 'Días de Aluvión | Golpe Fascita contra la Revolución Bolivariana', 'PDVSA Gas Comunal | Federico Ruiz Tirado', 48, '978-980-259-943-1', 2, 13, 1, 0, '2012-11-11', 'PDVSA Gas Comunal | Federico Ruiz Tirado', NULL, 'Primera', '2025-12-17 15:54:02'),
(709, 'Nueva ', 'Nueva Antologia de Poetas Venezolanos', 'Jose Antonio Escalona', 21, '980-292-812-7', 1, 11, 5, 0, '2001-01-01', 'Solar-Coediciones', '1', 'primera', '2025-12-17 15:54:02'),
(710, 'C-45', 'Diccionario Basico Ilustrado de lengua española', 'Carlos eduardo Puentes', 40, '9589729452', 1, 4, 2, 0, '2004-09-11', 'Real Andina', NULL, 'primera', '2025-12-17 15:54:02'),
(711, 'E2-017', 'Biografía del almirante Luis Brion', 'Johan Hartog', 5, '000000', 1, 6, 2, 20, '1983-08-12', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(712, 'BA0099', 'Javier Level', 'Zuleiva Vivas', 1, '978-980-7039-34-5', 2, 1, 2, 100, '2008-06-11', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(713, 'Famili', 'Familias, Cabildo y Vecinos De La Antigua Barinas', 'Virgilio Tosta', 2, '0000', 1, 11, 5, 0, '1980-01-01', 'Academia Nacional De La Historia', '1', 'primera', '2025-12-17 15:54:02'),
(714, '628273', 'Las partículas elementales', 'Michel Houellebecq', 20, '84-339-6895-5', 1, 13, 2, 0, '1999-12-15', 'Anagrama', NULL, 'Primera', '2025-12-17 15:54:02'),
(715, 'F1-027', 'Fuentes documentales para el estudio de Andrés Eloy Blanco', 'Rafael Ángel Rivas Dugarte', 5, '980-214-040-6', 1, 7, 1, 27, '1988-11-16', 'Ediciones La Casa de Bello', NULL, '1ra', '2025-12-17 15:54:02'),
(716, 'E2-018', 'Caracas 1883 (Centenario del natalicio del libertador)', 'Rafael Ramón Castellanos', 17, '000000', 1, 6, 2, 21, '1983-08-09', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(717, 'C-46', 'Romulo Betancourt', 'Carlos eduardo Puentes', 5, 'c-47', 1, 4, 2, 0, '1977-06-11', 'Avila Arte', NULL, 'primera', '2025-12-17 15:54:02'),
(718, 'BA0100', 'José Luis Pietrini', 'Marisa Mena', 1, '978-980-7240-23-9', 1, 1, 2, 101, '2009-06-24', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(719, 'Un Reg', 'Un Regalo Para Julia y Otros Relatos', 'Francisco Massiani', 5, '980-01-1225-1', 1, 11, 5, 0, '2004-01-01', 'Biblioteca Basica De Autores Venezolanos', '1', 'primera', '2025-12-17 15:54:02'),
(720, 'F1-028', 'De las cosas más sencillas', 'Cécil Álvarez', 21, '000000', 1, 7, 1, 28, '2005-12-15', 'Fundación Teatro Alirio Díaz', NULL, '1ra', '2025-12-17 15:54:02'),
(721, 'C-47', 'ANDANTE con Apuro', 'Froncois Migeot', 21, '9803963848', 1, 4, 2, 0, '2008-09-11', 'El Perro y la Rana', NULL, 'primera', '2025-12-17 15:54:02'),
(722, 'E2-019', 'Hilachas de historia patria', 'Manuel Rafael Rivero', 28, '000000', 1, 6, 2, 22, '1983-11-25', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(723, 'BA0101', 'Arturo Michelena', 'Néstor Balza', 1, '978-980-7240-54-3', 1, 1, 2, 102, '2010-03-17', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(724, 'A Viva', 'A Viva Voz Cesar Rengifo', 'Jesus Mujica', 47, '978-980-253-537-8', 1, 11, 5, 0, '2013-01-01', 'Fundacion Para La Cultura y Las Artes', '1', 'primera', '2025-12-17 15:54:02'),
(725, 'E2-020', 'Zaraza Biografía de un pueblo', 'J.A. de Armas Chitty', 17, '000000', 2, 6, 2, 24, '1983-12-15', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(726, 'F1-029', 'Libertad y creatividad en la educación', 'Carl R. Rogers', 28, '8475090303', 1, 7, 1, 29, '1982-12-15', 'Ediciones Paidós Ibérica, S.A.', NULL, '2da', '2025-12-17 15:54:02'),
(727, 'BA0102', 'Reina Herrera', 'Nelly Barbieri', 1, '978-980-7039-39-0', 2, 1, 2, 103, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(728, '728277', 'Ensayos sobre la emancipación hispanoamericana', 'Federico Brito Figueroa', 28, '978-980-6087-75-0', 1, 13, 2, 0, '2008-12-15', 'OPSU', '1', 'Primera', '2025-12-17 15:54:02'),
(729, 'C-48', 'Bocono En el destino de Bolivar', 'Oscar Sambrano Urdaneta', 17, 'c-48', 1, 4, 2, 0, '1983-06-15', 'Arte', NULL, 'primera', '2025-12-17 15:54:02'),
(730, 'Nuestr', 'Nuestras Bodas', 'Dorit Rabinyan', 20, '84-264-1325-0', 1, 11, 5, 0, '2002-01-01', 'Lumen, S.A', '1', 'primera', '2025-12-17 15:54:02'),
(731, 'F1-030', 'Ecólogo de día feriado: Antología personal', 'Juan Calzadilla', 21, '9789803969943', 1, 7, 1, 30, '2007-09-11', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(732, 'BA0103', 'Asdrúbal Colmenárez', 'Marisa Mena', 1, '978-980-7039-70-3', 2, 1, 2, 104, '2008-06-21', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(733, 'E2-021', 'CHACAO: Un pueblo en la época de bolivar (1768-1880)', 'Antonio Gonzales Antias', 17, '000000', 1, 6, 2, 25, '1984-05-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(734, 'K1-015', 'Biología | 1° Año de Ciencias y Normal Ciclo Diversificado', 'Serafín Mazparrote', 24, '980-210-095-1', 1, 13, 1, 0, '1994-11-11', 'Editorial Biosfera', NULL, '', '2025-12-17 15:54:02'),
(735, 'Una Vi', 'Una Vida Gabriel Garcia Marquez', 'Gerald Martin', 5, '978-84-8306-816-8', 1, 11, 5, 0, '2009-01-01', 'Bloomsbury Publishing Plc.', '1', 'primera', '2025-12-17 15:54:02'),
(736, 'C-49', 'El Derecho a la Pereza', 'Paul Lafargue', 3, 'c-49', 1, 4, 2, 0, '1970-07-31', 'Grijalbo S.A', NULL, 'Primera', '2025-12-17 15:54:02'),
(737, 'BA0104', 'Consuelo Méndez', 'Lorena Gonzáles', 1, '978-980-7240-24-6', 3, 1, 2, 105, '2009-11-26', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(738, 'E2-022', 'La razón filosofico-juridica de la independencia', 'Pompeyo Ramis', 28, '000000', 1, 6, 2, 26, '1984-08-04', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(740, 'BA0105', 'José Ramón Valero', 'Tarim Gols', 1, '978-980-7240-25-3', 3, 1, 2, 106, '2009-11-28', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(741, 'C-50', 'Conversaciones con Luis Beltran Prieto', 'Alfredo Peña', 48, 'C-50', 1, 4, 2, 0, '1979-05-15', 'Ateneo de Caracas', NULL, '3ra', '2025-12-17 15:54:02'),
(742, 'E2-023', 'Los papeles de Francisco De Miranda', 'Gloria Henríquez Uzcategui', 41, '000000', 2, 6, 2, 28, '1984-08-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(745, '729822', 'Cobiri pequeño viajero sideral', 'José Ricardo Álvarez Yepez', 15, '980-302-036-6', 1, 13, 2, 0, '1994-12-15', 'Ediciones Casa de la Cultura de Carora', NULL, 'Primera', '2025-12-17 15:54:02'),
(746, 'K1-016', 'Lengua y Literatura', 'Raul Peña Hurtado, Luis Rafael Yepez', 24, '980-300-064-0', 1, 13, 1, 0, '1989-11-11', 'Distribuidora Escolar', NULL, '', '2025-12-17 15:54:02'),
(747, 'F1-031', 'La Aldea', 'Michel Bonnefoy', 28, '9789803969943', 1, 7, 1, 31, '2008-12-15', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(748, 'BA0106', 'Nan González', 'Zuleiva Vivas', 1, '978-980-7039-33-8', 3, 1, 2, 107, '2008-11-20', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(749, 'E2-024', 'La Guayana Esequiba', 'Marco A. Osorio Jimenez', 19, '000000', 1, 6, 2, 29, '1984-08-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(750, 'C-51', 'La arboleada Perdida', 'Rafael Alberti', 3, '8402076335', 1, 4, 2, 0, '1980-02-15', 'Bruguera S.A', NULL, '1ra', '2025-12-17 15:54:02'),
(751, 'BA0107', 'Francisco Luna Ostos', 'Luis Velázquez', 1, '978-980-7240-52-9', 3, 1, 2, 108, '2010-03-10', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(752, 'F1-032', 'Lascivia Brevis', 'Simón Alberto Consalvi', 9, '980-01-0705-3', 1, 7, 1, 32, '1993-12-15', 'Monte Avila Editores', NULL, '', '2025-12-17 15:54:02'),
(753, 'E2-025', 'Las eras imaginarias de Lezama Lima', 'Cesia Ziona Hirshbein', 28, '000000', 1, 6, 2, 30, '1984-08-04', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(754, 'Para t', 'Para Ti Me Cuento a China', 'Jonuel Brigue', 5, '980-7123-05-1', 1, 11, 5, 0, '2007-01-01', 'La Castalia', '1', 'primera', '2025-12-17 15:54:02'),
(755, 'BA0108', 'Henry Bermúdez', 'Luis Emeterio González', 1, '978-980-7039-49-9', 2, 1, 2, 109, '2009-11-23', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(756, 'K1-018', 'Libro del Año 1982', 'Editorial Cumbre', 47, '968-33-0120-7', 1, 13, 1, 0, '1982-11-11', 'Editorial Cumbre', NULL, '', '2025-12-17 15:54:02'),
(757, '271862', 'La Noche de mercedes', 'Maruja Canal Salazar', 20, '#0-9728617-0-X', 1, 13, 2, 0, '2003-12-15', 'Editorial Puerto Rico', NULL, 'Primera', '2025-12-17 15:54:02'),
(758, 'F1-033', 'Originales del Silencio', 'Jesús Enrique Barrios', 21, '000000', 1, 7, 1, 33, '2005-04-01', 'UCLA', NULL, '', '2025-12-17 15:54:02'),
(759, 'C-52', 'Jose Dolores y el Caballo de Bolivar', 'Jesus Martinez Gonzales', 21, 'c-52', 1, 4, 2, 0, '2006-05-15', 'RAMADAN', NULL, '1ra', '2025-12-17 15:54:02'),
(760, 'Canute', 'Canuteros De Plomo', 'Juan M. Negrete', 5, '970-07-4600-3', 1, 11, 5, 0, '2003-01-01', 'Porrua', '1', 'primera', '2025-12-17 15:54:02'),
(761, 'E2-026', 'Contribución al estudio del ensayo en hispanoamerica', 'Clara Rey de Guido', 28, '000000', 1, 6, 2, 31, '1985-02-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(762, 'Filoso', 'Filosofia De La Comunicacion', 'Fernando Buen Abad', 25, '978-980-396-972-1', 1, 11, 5, 0, '2007-01-01', 'El Perro y La Rana', '1', 'primera', '2025-12-17 15:54:02'),
(763, 'F1-034', 'El factor humano', 'Graham Greene', 20, '9788475090306', 1, 7, 1, 34, '1978-12-15', 'Argos Vergara', NULL, 'edición en español por Argos Vergara', '2025-12-17 15:54:02'),
(764, 'c-53', 'Yo morire como naci', 'Consejo Nacional de la Cultura', 3, '980-3760696', 1, 4, 2, 0, '2003-09-10', 'Consejo Nacional de la Cultura', NULL, '1ra', '2025-12-17 15:54:02'),
(765, 'E2-027', 'Aportes a la historia documental y critica', 'Manuel Pérez Vila', 17, '000000', 1, 6, 2, 32, '1986-09-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(766, 'F1-035', 'Pablo y Virginia', 'Jacques-Henri Bernardin de Saint-Pierre', 20, '000000', 1, 7, 1, 35, '1980-12-15', 'Espasa-Calpe, S.A.', NULL, '', '2025-12-17 15:54:02'),
(768, 'E2-028', 'El Enfoque Geohistorico', 'Ramón A. Tovar L.', 28, '000000', 1, 6, 2, 33, '1986-11-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(770, '728279', 'Cuatro cuentos', 'Rafael Zarraga', 15, '980-6055-42-X', 1, 13, 2, 0, '1994-12-15', 'La Oruga Luminosa', NULL, 'Primera', '2025-12-17 15:54:02'),
(771, 'El Bec', 'El Becerro De La Grita', 'Yariesa Lugo Marmignon', 9, '980-6263-76-6', 1, 11, 5, 0, '1997-01-01', 'Biblioteca de Autores y Temas Tachirenses', '1', 'primera', '2025-12-17 15:54:02'),
(772, 'K1-019', 'El Que Fue, Es y Será', 'Miguel García Mackle', 21, '000', 1, 13, 1, 0, '1960-11-11', 'Dirección de Cultura y Bellas Artes', NULL, '', '2025-12-17 15:54:02'),
(773, 'El Poe', 'El Poeta Perdido y Otros Textos', 'Leonardo Gustavo ruiz', 21, '978-980-01-1510-7', 1, 11, 5, 0, '2007-01-01', 'Monte Avila Latinoamericana, C.A', '1', 'primera', '2025-12-17 15:54:02'),
(774, 'F1-036', 'La risa de Pan', 'Carlos Aguilar Sánchez', 21, '978-607-98763-5-1', 1, 7, 1, 36, '2022-12-15', 'Ediciones El Humo (México)', NULL, '', '2025-12-17 15:54:02'),
(775, 'E2-029', 'Protagoras: Naturaleza y cultura', 'Angel J. Cappelletti', 28, '000000', 1, 6, 2, 34, '1987-08-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(778, 'K1-020', '1998 III Bienal Barro de América', 'Roberto Guevara', 1, '980-376-010-6', 1, 13, 1, 0, '1998-11-11', 'Consejo Nacional de la Cultura de Venezuela', NULL, '', '2025-12-17 15:54:02'),
(779, 'revisi', 'Caracas Revisited Unas Poetica de la Nocturnidad', 'Hector Seijas', 47, '978-980-14-1043-0', 1, 11, 5, 0, '2010-10-01', 'El Perro y La Rana', '1', 'primera', '2025-12-17 15:54:02'),
(780, 'C-56', 'La revolucion Bolivariana y la Enfermedad infatil del izquierdismo', 'Juan Miguel Diaz Ferrer', 2, 'c-56', 1, 4, 2, 0, '2005-06-07', 'Mision de la Cultura', NULL, '1era', '2025-12-17 15:54:02'),
(781, 'E2-030', 'El pedestal con grietas', 'Ivan Petrovzky', 20, '000000', 1, 6, 2, 35, '1987-12-15', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(782, 'K1-021', 'Henri Matisse', 'Ediciones Polígrafa', 1, '84-343-0758-8', 1, 13, 1, 0, '1994-11-11', 'Ediciones Polígrafa', NULL, '', '2025-12-17 15:54:02'),
(783, 'F1-037', 'Las crónicas del Sochantre', 'Álvaro Cunqueiro', 20, '000000', 1, 7, 1, 37, '1970-12-15', 'Salvat Editores, S.A.', NULL, '', '2025-12-17 15:54:02'),
(784, 'El Inq', 'El Inquieto Anacobero y Otros Relatos', 'Salvador Garmendia', 15, '980-01-1233-2', 1, 11, 5, 0, '2004-01-20', 'Biblioteca Basica De Autores Venezolanos', '1', 'primera', '2025-12-17 15:54:02'),
(785, 'Dias D', 'Dias De Espantos Cuentos Fantasticos Venezolanos del Siglo XIX', 'Carlos Sandoval', 47, '980-01-1268-5', 1, 11, 5, 0, '2004-01-01', 'Biblioteca Basica De Autores Venezolanos', '1', 'primera', '2025-12-17 15:54:02'),
(786, 'K1-022', 'La Guaira Siempre', 'Consejo Nacional de la Cultura', 1, '980-07-7934-5', 1, 13, 1, 0, '1990-11-11', 'Consejo Nacional de la Cultura', NULL, '', '2025-12-17 15:54:02'),
(787, 'Cartas', 'Cartas Sobre La Poesia', 'Stephane Mallarme', 21, '978-980-14-0421-7', 1, 11, 5, 0, '2008-01-01', 'El Perro y La Rana', '1', 'primera', '2025-12-17 15:54:02'),
(788, 'C-59', 'Que nos enseña la biblia', 'JW.ORG', 47, '978946133250', 1, 4, 2, 0, '2019-03-15', '', NULL, '1era', '2025-12-17 15:54:02'),
(789, 'F1-038', 'Víctor Roger Quijada Vargas: su vida contada por él', 'Alberto Rafael Alvarado Galiz', 5, '000000', 2, 7, 1, 38, '2022-09-01', 'Comunitaria', NULL, 'Edición comunitaria', '2025-12-17 15:54:02'),
(790, 'K1-023', 'Obras Maestras de Armando Reveron', 'Museo de Arte Contemporáneo de Caracas', 1, '0000', 1, 13, 1, 0, '1999-11-11', 'Museo de Arte Contemporáneo de Caracas', NULL, '', '2025-12-17 15:54:02'),
(791, '091091', 'El estudiante de Salamanca', 'José de Espronceda', 21, '84-95920-13-1', 1, 13, 2, 0, '2005-12-15', 'Corporación editorial', NULL, 'Primera', '2025-12-17 15:54:02'),
(792, 'E2-031', 'Crónicas medicas de la independencia venezolana', 'José Rafael Fortique', 17, '000000', 1, 6, 2, 36, '1989-02-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(793, '08129', 'Aroma de Manzanilla... Con picante', 'Rosalino Antonio Manzanilla', 3, '978-980-14-1793-4', 1, 13, 2, 0, '2011-12-16', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(794, 'C-60', 'Betancourt en la historia de venezuela del siglo XX', 'Ramon J. Velasquez / Jf.F Sucre Figarella', 17, '9789802634200', 1, 4, 2, 0, '1980-05-20', 'Centauro', NULL, '1era', '2025-12-17 15:54:02'),
(795, 'C-66', 'El mundo de Antonio Funesto Guzman', 'Gonzalo Ramírez Cubillán', 3, '9803968270', 2, 4, 2, 0, '2007-07-16', 'El perro y la Rana', NULL, '1ra', '2025-12-17 15:54:02'),
(796, 'C-121', 'Obras Completas XXII - Temas Educacionales', 'Andres Bello', 24, 'C-121', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '2', '1ra', '2025-12-17 15:54:02'),
(797, 'C-122', 'Obras Completas XXI - Temas Educacionales', 'Andres Bello', 24, 'C-121', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '1', '1ra', '2025-12-17 15:54:02'),
(798, 'C-123', 'Obras Completas III - Filosofia', 'Andres Bello', 39, 'C-123', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '1', '1ra', '2025-12-17 15:54:02'),
(799, 'C-124', 'Obras completas X - Derecho Internacional', 'Andres Bello', 54, 'C-124', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '1', '1ra', '2025-12-17 15:54:02'),
(800, 'C-125', 'Obras Completas XIV - Codigo civil', 'Andres Bello', 54, 'C-125', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '1', '1ra', '2025-12-17 15:54:02'),
(801, 'C-126', 'Obras Completas XV - Codigo Civil', 'Andres Bello', 54, 'C-126', 1, 4, 5, 0, '1979-06-16', 'La casa de Bello', '2', '1ra', '2025-12-17 15:54:02'),
(802, 'C-127', 'Anexo a las Obras Completas - 4', 'Andres Bello', 55, 'C-127', 1, 4, 5, 0, '1980-07-16', 'La casa de Bello', '4', '1ra', '2025-12-17 15:54:02'),
(803, 'C-128', 'Anexo a las Obras Completas - 5', 'Andres Bello', 55, 'C-127', 1, 4, 5, 0, '1980-07-16', 'La casa de Bello', '5', '1ra', '2025-12-17 15:54:02'),
(804, 'C-71', 'Anexo a las Obras Completas - 7', 'Andres Bello', 55, 'C-71', 1, 4, 5, 0, '1980-07-16', 'La casa de Bello', '7', '1ra', '2025-12-17 15:54:02'),
(805, 'C-129', 'Documentos Referentes a la creacion de Bolivia', 'Vicente Lecuna', 17, 'C-129', 1, 4, 5, 0, '1958-07-16', 'Fundacion Vicente Lecuna', '1', '1ra', '2025-12-17 15:54:02'),
(806, 'C-130', 'Documentos Referentes a la creacion de Bolivia', 'Vicente Lecuna', 17, 'C-130', 1, 4, 5, 0, '1958-06-16', 'Fundacion Vicente Lecuna', '2', '1ra', '2025-12-17 15:54:02'),
(807, 'C-131', 'Bello y Londres', 'Andres Bello', 5, 'C-131', 2, 4, 5, 0, '1980-06-16', 'La casa de Bello', '1', '1ra', '2025-12-17 15:54:02'),
(808, 'J140', 'Bolivar para todos', 'Luis Jose Acosta Rodriguez', 17, 'C-132', 1, 12, 5, 0, '1975-03-16', 'Monte Avila', '1', '1ra', '2025-12-17 15:54:02'),
(809, 'C-133', 'El golpe fascista contra venezuela', 'Ministerio de Comunicacion', 6, 'C-133', 1, 4, 5, 0, '2002-12-16', 'Ministerio de Comunicacion', '1', '1ra', '2025-12-17 15:54:02'),
(810, 'C-134', 'Por el camino de Chimiro', 'Edgar Gabriel Marquez', 3, 'C-134', 1, 4, 5, 0, '1990-05-16', 'Monte Avila', '1', '1ra', '2025-12-17 15:54:02'),
(811, 'C-135', 'Para Nosotros la patria es america', 'Simon Bolivar', 17, 'C-135', 1, 4, 5, 0, '1977-09-16', 'Biblioteca Ayacucho', '1', '1ra', '2025-12-17 15:54:02'),
(812, 'E2-032', 'Arte, Educación y Museologia. Estudios y polémicas 1948-1988', 'Miguel G. Arroyo C.', 28, '980-222-410-3', 1, 6, 2, 37, '1989-07-01', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(813, '82989', 'Taras Bulba', 'Nikolái Gógol', 3, 'BLL349', 1, 13, 2, 0, '1955-12-16', 'Ediciones en lengua extranjeras', NULL, 'Lenguas extranjeras', '2025-12-17 15:54:02'),
(814, 'BA0109', 'Bernardita Rakos', 'Anny Bello', 1, '978-980-7039-47-5', 3, 1, 2, 110, '2008-11-27', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(815, 'E2-033', 'La vida perdurable (ensayos dispersos) Volumen I', 'Efrain Subero', 28, '980-222-408-1', 1, 6, 2, 38, '1989-08-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(816, 'BA0110', 'Jaime Castro Oroztegui', 'Nany Goncalves', 1, '978-980-7039-90-1', 3, 1, 2, 111, '2008-07-21', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(817, 'E2-034', 'La vida perdurable (ensayos dispersos) Volumen II', 'Efrain Subero', 28, '980-222-480-1', 1, 6, 2, 39, '1989-08-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(818, '810918', 'El libro de Barinía', 'Alberto José Pérez', 21, '978-980-6499-15-7', 1, 13, 2, 0, '2008-12-16', 'La espada rota', NULL, 'Primera', '2025-12-17 15:54:02'),
(819, 'BA0111', 'Federico Osvalles-Ar', 'Lorena Gonzáles', 1, '978-980-7039-56-7', 3, 1, 2, 112, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(820, 'C-137', 'Sentir Bolivariano Escritos de un Rebelde', 'Adan Chavez', 6, 'C-137', 1, 4, 5, 0, '2012-06-16', 'Ministerio para la cultura', '1', '1ra', '2025-12-17 15:54:02'),
(821, 'E2-035', 'Reynaldo Hahn, Caraqueño. Contribución a la biografía caraqueña de Reynaldo Hahn Echenagucia', 'Mario Milanca Guzman', 5, '980-222-430-8', 1, 6, 2, 40, '1989-10-03', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(822, '719171', 'Ramón Palomares 1974, habitando el reino', 'Ramón Palomares', 21, '978-980-794-9', 1, 13, 2, 0, '2007-12-16', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(823, 'BA0112', 'Franco Contreras', 'Susana Benko', 1, '978-980-7240-00-0', 2, 1, 2, 113, '2008-06-24', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(824, 'E2-041', 'El régimen de tenencia de la tierra en upata. Una villa en la Guayana venezolana', 'Marcos Ramón Andrade Jaramillo', 28, '980-222-748', 1, 6, 2, 46, '1993-07-03', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(825, 'BA0113', 'Juan Carlos Rodríguez', 'Nydia Gutiérrez', 1, '978-980-7240-01-7', 3, 1, 2, 114, '2008-11-19', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(826, 'C-138', 'Nacionalismo, Soberania y Antiimperialismo', 'Eileen Bolivar Joselin Gomez', 6, '97898072480755', 1, 4, 5, 0, '2009-04-20', 'Ministerio para la cultura', '1', '1ra', '2025-12-17 15:54:02'),
(827, 'E2-042', 'La conferencia de París sobre la banda oriental', 'Victor Sanz Lopez', 28, '980-222-747-1', 1, 6, 2, 47, '1993-07-04', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(828, '271973', 'El libro de augur', 'Edgar Rubio', 15, '980-6359-59-3', 1, 13, 2, 0, '1996-12-16', 'Fondo Editorial Municipal', NULL, 'Primera', '2025-12-17 15:54:02'),
(829, 'F1-039', 'En torno al lenguaje', 'Rafael Cadenas', 28, '9789800109892', 1, 7, 1, 39, '1984-12-16', 'Monte Ávila Editores Latinoamericana', NULL, '2da', '2025-12-17 15:54:02'),
(830, 'BA0114', 'Francisco Bugallo', 'Luis Velázquez', 1, '978-980-7240-02-4', 1, 1, 2, 115, '2008-06-24', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(831, 'BA0115', 'Cornelis', 'Rafael Rondón Narváez', 1, '978-980-7240-26-0', 3, 1, 2, 116, '2008-11-29', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(832, 'Ccs', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 1, 11, 4, 0, '1973-01-01', 'Fundacion Vicente Lecuna Banco de Venezuela', '1', 'primera', '2025-12-17 15:54:02'),
(833, 'K1-024', 'Geografía General | Séptimo', 'Gerardo J. Siso Q., Pedro Cunill Grau', 19, '980-275-459-5', 1, 13, 1, 0, '2008-09-11', 'Santillana', NULL, 'Segunda', '2025-12-17 15:54:02'),
(834, 'Ccs 1.', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 2, 11, 4, 0, '1974-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '3', 'tercera', '2025-12-17 15:54:02'),
(835, 'BA0116', 'Gego', 'Lorena Gonzáles', 1, '978-980-7240-04-8', 2, 1, 2, 117, '2009-11-13', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(836, 'E2-043', 'Liceo \"Andrés Bello\" Un forjador de valores. Una tierna narración sobre la historia del primer liceo de Venezuela escrita por un antiguo alumno del instituto con motivo de su primer centenario', 'Guillermo Cabrera Dominguez', 56, '980-07-103-6', 1, 6, 2, 48, '1993-07-05', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(837, '729181', 'Don Juan Tenorio', 'José Zorrilla', 12, '950-13-2248-3', 1, 13, 2, 0, '1974-12-16', 'Kapelusz', NULL, 'Argentina', '2025-12-17 15:54:02'),
(838, 'K1-025', 'Formación Familiar y Ciudadana | Séptimo', 'María Luisa Muñoz de Araujo, Carmen María Correia Suárez', 24, '980-275-491-9', 1, 13, 1, 0, '2003-11-11', 'Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(839, 'BA0117', 'Hayfer Brea', 'Katherine Chacón', 1, '978-980-7039-55-0', 3, 1, 2, 118, '2008-06-11', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(840, 'F1-040', 'Cartas del destino y otras orfandades', 'César Vallejo', 41, '978-607-99384-4-8', 1, 7, 1, 40, '0000-00-00', 'Trazos Ediciones', NULL, '1ra', '2025-12-17 15:54:02'),
(841, 'K1-026', 'Historia de Venezuela | Séptimo', 'Guillermo Morón, Juan Carlos Reyes, Vinicio Romero, Luis Hernández', 17, '980-275-455-2', 1, 13, 1, 0, '2008-11-11', 'Santillana', NULL, 'Segunda', '2025-12-17 15:54:02'),
(842, 'BA0118', 'Carlos Sosa', 'Carmen Hernández', 1, '978-980-7039-91-8', 2, 1, 2, 119, '2009-11-22', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(843, 'C-139', 'Bello y Londres', 'Andres Bello', 9, 'C-131', 1, 4, 5, 0, '1980-06-16', 'La casa de Bello', '2', '1ra', '2025-12-17 15:54:02'),
(844, 'K1-027', 'Historia Universal | Octavo', 'Guillermo Morón, Juan Carlos Reyes, Vinicio Romero', 17, '980-275-457-9', 1, 13, 1, 0, '2006-11-11', 'Santillana', NULL, 'Segunda', '2025-12-17 15:54:02'),
(845, 'E2-044', 'El Paisaje del riel en trujillo (1880-1945)', 'José Angel Rodriguez', 28, '980-222-779', 1, 6, 2, 49, '1994-06-06', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(846, 'BA0119', 'Juvenal Ravelo', 'Luis Emeterio González', 1, '978-980-7039-53-6', 1, 1, 2, 120, '2008-11-25', 'COLECCION ARTE VENEZOLANO', NULL, '', '2025-12-17 15:54:02'),
(847, 'F1-041', 'Nuestros cuentos de Navidad: Antología de cuentos navideños venezolanos', 'María Elena Maggi', 15, '000000', 1, 7, 1, 41, '2004-12-16', 'Ediciones del Ministerio de Educación, Cultura y Deportes (Venezuela)', NULL, '', '2025-12-17 15:54:02'),
(848, 'K1-028', 'Matemática | Séptimo', 'Estrella Suárez Bracho, Darío Durán Cepeda', 18, '980-275-470-6', 1, 13, 1, 0, '2008-11-11', 'Santillana', NULL, 'Segunda', '2025-12-17 15:54:02'),
(849, '902839', 'Fausto', 'Goethe', 21, 'BAT042', 1, 13, 2, 0, '1969-12-16', 'Espasa-Calpe, S.A.', NULL, 'Novena', '2025-12-17 15:54:02'),
(850, 'F1-042', 'La paradoja de Ítaca: De ciudades y de viajes', 'Gustavo Valle', 43, '978-980-239-377-4', 1, 7, 1, 42, '2019-12-16', 'Editorial Equinoccio (Colección Coba)', NULL, '', '2025-12-17 15:54:02'),
(851, 'C-140', 'Historia del mundo Moderno - I El renacimiento', 'George Richard Potter', 17, '8430308113', 1, 4, 5, 0, '1980-06-16', 'Ramon Sopensa', '1', '1ra', '2025-12-17 15:54:02'),
(852, 'K1-029', 'Energía para la Vida | Cuarto Año', 'Ministerio del Poder Popular para la Educación', 22, '978-980-218-333-3', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', '2', 'Primera', '2025-12-17 15:54:02'),
(853, 'E2-045', 'De Nicaragua a Cuba', 'Angel San Juan', 28, '980-222-842-7', 1, 6, 2, 50, '1995-08-07', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(854, 'F1-043', 'Tan solo yo: Poemas, Versos Libres, Vivencias', 'Dr. Wilfredo Urquiola', 21, '979-8853567993', 1, 7, 1, 43, '2023-09-08', 'Fondo Editorial Napoleón Sebastián Arteaga', NULL, '', '2025-12-17 15:54:02'),
(855, 'K1-030', 'Construyamos el Futuro | Quinto Año', 'Ministerio del Poder Popular para la Educación', 22, '978-980-218-341-8', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', '2', 'Primera', '2025-12-17 15:54:02'),
(856, 'Corres', 'Correspondencia Del Libertador', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 3, 11, 4, 0, '1974-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '1', 'primera', '2025-12-17 15:54:02'),
(857, 'C-141', 'Historia del mundo Moderno - IV La decadencia española y la guerra de los treinta años', 'J. P Cooper', 17, '8430308148', 1, 4, 5, 0, '1980-06-16', 'Ramon Sopensa', '4', '1ra', '2025-12-17 15:54:02'),
(858, 'K1-031', 'Guía teórico-práctica Matemática 8', 'Grupo Editorial Girasol', 18, '0000', 1, 13, 1, 0, '2007-11-11', 'Terra Editores', NULL, 'Primera', '2025-12-17 15:54:02'),
(859, 'E2-036', 'Temas Lingüísticos y literarios', 'José María Navarro', 28, '980-222_459-6', 1, 6, 2, 41, '1990-11-08', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(860, '829172', 'Las preciosas ridículas', 'Molière', 12, '84-414-0482-8', 1, 13, 2, 0, '2005-12-16', 'EDAF', NULL, 'Segunda', '2025-12-17 15:54:02'),
(861, 'K1-032', 'La Tierra: nuestro dinámico hogar | Quinto Año', 'Ministerio del Poder Popular para la Educación', 22, '978-980-218-340-1', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', NULL, 'Primera', '2025-12-17 15:54:02'),
(862, 'E2-037', 'Voz de amante (Estudio sobre la poesía de Rafael Cadenas)', 'Luis Miguel Isava Briceño', 28, '980-222-519-3', 1, 6, 2, 42, '1990-12-08', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(863, 'histor', 'Temas De Historia y Geografia', 'Mariano Picon Salas', 17, '0000', 1, 11, 2, 0, '1957-01-01', 'Obras Completas De Andres Bello', '1', 'primera', '2025-12-17 15:54:02'),
(864, 'K1-033', 'Educación en Valores | Sexto', 'Santillana', 24, '980-275-624-5', 1, 13, 1, 0, '2006-11-11', 'Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(865, 'E2-038', 'Mariano Talavera y Garcés: Una vida paradigmatica', 'Francisco Cañizares Verde', 5, '980-222-523-1', 1, 6, 2, 43, '1990-12-09', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(866, 'BLL158', 'La Fuerza de la Afinidad', 'Hiroma', 28, '000-000-0000-00-0', 1, 1, 2, 121, '2011-02-15', 'Hiroma', NULL, '', '2025-12-17 15:54:02'),
(867, 'C-145', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, '8430308148', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '1', '1ra', '2025-12-17 15:54:02'),
(868, '729182', 'Entrevistas con Jorge Borges', 'Jean de Milleret', 37, 'BLL359', 1, 13, 2, 0, '1970-12-16', 'Monte Ávila editores, C.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(869, 'Ccs 8', 'Archivo De Sucre', 'Fundacion Vicente Lecuna Banco De Venezuela', 17, '0000', 1, 11, 4, 0, '1980-01-01', 'Fundacion Vicente Lecuna Banco De Venezuela', '1', 'primera', '2025-12-17 15:54:02'),
(870, 'E2-039', 'Venezuela es un invento', 'Homero Arellano', 28, '980-222-565-7', 1, 6, 2, 44, '1991-03-10', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(871, 'K1-034', 'Diario de la Gente Pájaro', 'Wilfredo Machado', 20, '978-980-14-0050-9', 1, 13, 1, 0, '2008-11-11', 'Fundación Editorial El Perro y la Rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(872, 'C-146', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, 'C-146', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '2', '1ra', '2025-12-17 15:54:02'),
(873, 'E2-040', 'Espejismos (Prosas dispersas)', 'Pastor Cortes V.', 28, '980-222-561-4', 1, 6, 2, 45, '1991-03-10', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(874, 'Histoi', 'Histoire de la Peinture', 'Gibert Jeune', 17, '0000', 1, 11, 2, 0, '1950-01-01', 'Hyperion', '1', 'primera', '2025-12-17 15:54:02'),
(875, 'C-147', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, 'C-147', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '3', '1ra', '2025-12-17 15:54:02'),
(876, 'K1-035', 'Mestizos y Mestizaje en la Ionografía Colonial Venezolana', 'William Parra', 17, '980-396-253-1', 1, 13, 1, 0, '2006-11-11', 'Fundación Editorial El Perro y la Rana', NULL, '', '2025-12-17 15:54:02'),
(877, 'E2-046', 'Ciencia, Educación y Positivismo en el siglo XXI Venezolano', 'Luis Antonio Bigott', 28, '980-222-871-0', 1, 6, 2, 51, '1995-11-11', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(878, '279282', 'El buscón', 'Francisco de Quevedo', 15, 'BLL535', 1, 13, 2, 0, '2001-12-16', 'Grupo Zeta', NULL, 'Primera', '2025-12-17 15:54:02'),
(879, 'C-148', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, 'C-148', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '4', '1ra', '2025-12-17 15:54:02'),
(880, 'E2-047', 'Introducción a Homero: Primer poeta de europa', 'Alfonso Ortega Carmona', 28, '980-222-874-5', 1, 6, 2, 52, '1995-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(881, 'C-149', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, 'C-149', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '7', '1ra', '2025-12-17 15:54:02'),
(882, 'K1-036', 'Serie Sol Obras Literarias', 'Griselda Navas', 15, '980-6284-47-X', 1, 13, 1, 0, '2000-11-11', 'Editorial Romor', NULL, '', '2025-12-17 15:54:02'),
(884, 'C-150', 'Enciclopedia Uthea para la juventud', 'Montaner y Simon S.A', 10, 'C-150', 1, 4, 6, 0, '1966-04-04', 'Montaner y Simon S.A', '8', '1ra', '2025-12-17 15:54:02'),
(885, 'Operet', 'Operette Morali', 'Giacomo Leopardi', 17, '0000', 1, 11, 2, 0, '1951-01-01', 'Biblioteca Universale Rizzoli', '1', 'primera', '2025-12-17 15:54:02'),
(886, 'E2-048', 'El conocimiento sensorial en Aristoteles', 'Angel J. Cappelletti', 28, '980-222-847-8', 1, 6, 2, 53, '1996-10-08', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(887, 'K1-037', 'Matemática 5', 'Santillana', 18, '980-275-527-3', 1, 13, 1, 0, '2004-11-11', 'Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(889, 'K1-038', 'Matemática 4', 'Santillana', 18, '980-275-526-5', 1, 13, 1, 0, '2004-11-11', 'Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(890, 'E2-049', 'Autobiografía en terceros trabados con apoyos y descansos en Don Luis de Gongora', 'Ana Enriqueta Teran', 5, '000000', 1, 6, 2, 54, '2025-12-16', '', NULL, '', '2025-12-17 15:54:02'),
(891, 'Obras ', 'Obras Estrellas', 'Sienkie Wicz', 3, '0000', 1, 11, 2, 0, '1951-01-01', 'Maucci, S.L', '1', 'primera', '2025-12-17 15:54:02'),
(892, '820829', 'Los mandarines', 'Wu Jingzi', 3, '84-322-0644-X', 1, 13, 3, 0, '1991-12-16', 'Seix Barral, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(893, 'El Dec', 'El Decameron', 'Giovanni Boccaccio', 5, '0000', 1, 11, 2, 0, '1972-01-01', 'Bruguera, S.A', '1', 'primera', '2025-12-17 15:54:02'),
(894, 'E3-001', 'Lecturas de Historia Regional y local', 'Arístides Medina Rubio', 28, '980-214-172-0', 24, 6, 3, 24, '2025-12-16', '', NULL, '', '2025-12-17 15:54:02'),
(895, 'Matar ', 'Matar Un Ruiseñor', 'Haper Lee', 17, '0000', 1, 11, 2, 0, '1966-01-01', 'Bruguera, S.A', '1', 'primera', '2025-12-17 15:54:02'),
(897, 'K1-039', 'Albo Rana', 'FUNDARTE', 47, '0000', 1, 13, 1, 0, '1983-11-11', 'FUNDARTE', NULL, '', '2025-12-17 15:54:02'),
(898, 'La Sex', 'La Sexta Direccion', 'Joseph Hone', 17, '84-286-0107-0', 1, 11, 1, 0, '1975-01-01', 'Pomaire', '1', 'primera', '2025-12-17 15:54:02'),
(899, 'K1-040', 'Tablaturas 001', 'Recopilación', 45, '0000', 1, 13, 1, 0, '2000-11-11', '', NULL, '', '2025-12-17 15:54:02'),
(900, 'BA0132', 'Mega Exposición II', 'Samantha Jiménez Ordóñez', 1, '980-376-370-9', 1, 1, 3, 1, '2006-07-12', 'ARTE VENEZOLANO DEL SIGLO XXI SEGUNDA MEGAEXPOSICIÓN', '1', '1', '2025-12-17 15:54:02'),
(902, 'El Ate', 'Obras Selectas', 'Stendhal', 17, '0000', 1, 11, 2, 0, '1961-09-01', 'El Ateneo Pedro Garcia', '1', 'primera', '2025-12-17 15:54:02'),
(903, 'BA0133', 'Mega Exposición II (Distrito Capital Parte I)', 'Samantha Jiménez Ordóñez', 1, '980-376-371-7', 1, 1, 3, 2, '2006-07-17', 'ARTE VENEZOLANO DEL SIGLO XXI SEGUNDA MEGAEXPOSICIÓN', '2', '2', '2025-12-17 15:54:02'),
(904, 'E3-002', 'Autobiografía del general José Antonio Paez', 'José Antonio Paez', 5, '000000', 1, 6, 3, 25, '2025-12-16', '', '1', '', '2025-12-17 15:54:02'),
(905, 'Los Es', 'Los Espectros De Kronstadt', 'Luis de Caralt', 3, '0000', 1, 11, 2, 0, '1960-01-01', 'Luis De Caralt', '1', 'primera', '2025-12-17 15:54:02'),
(906, 'BA0134', 'Mega Exposición II (Distrito Capital Parte II)', 'Samantha Jiménez Ordóñez', 1, '980-376-371-7', 1, 1, 3, 3, '2006-07-16', 'ARTE VENEZOLANO DEL SIGLO XXI SEGUNDA MEGAEXPOSICIÓN', '3', '3', '2025-12-17 15:54:02'),
(907, '467678', 'Papeles', 'Manuel Espinoza', 3, 'BLL062', 1, 13, 3, 0, '1972-12-16', 'Ateneo de Caracas', NULL, 'Primera', '2025-12-17 15:54:02'),
(909, 'C-153', 'El padre Las Casas Su doble Personalidad', 'Ramon Menedez Pidal', 17, 'C-153', 1, 4, 6, 0, '1963-06-04', 'ESPASA CALPE S.A', '8', '1ra', '2025-12-17 15:54:02'),
(910, 'Señora', 'Nuestra Selora De Las Sirenas', 'Luis de Caralt', 3, '0000', 1, 11, 2, 0, '1960-09-01', 'Luis De Caralt', '1', 'primera', '2025-12-17 15:54:02'),
(911, 'BA0135', 'Mega Exposición II', 'Samantha Jiménez Ordóñez', 1, '980-376-373-3', 1, 1, 3, 4, '2006-07-16', 'ARTE VENEZOLANO DEL SIGLO XXI SEGUNDA MEGAEXPOSICIÓN', '4', '4', '2025-12-17 15:54:02'),
(912, 'E3-003', 'Archivo del general José Antonio Paez (1818-1820) Tomo 1', 'Biblioteca de la academia nacional de historia', 44, '000000', 1, 6, 3, 26, '1973-06-06', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(913, 'BA0136', 'Mega Exposición II', 'Samantha Jiménez Ordóñez', 1, '980-376-374-1', 1, 1, 3, 5, '2006-07-16', 'ARTE VENEZOLANO DEL SIGLO XXI SEGUNDA MEGAEXPOSICIÓN', '5', '5', '2025-12-17 15:54:02'),
(914, 'Celest', 'La Celestina', 'Fernando Rojas', 5, '0000', 1, 11, 2, 0, '1951-05-19', 'Aguilar, S.A', '1', 'Segunda', '2025-12-17 15:54:02'),
(915, 'E3-004', 'Archivo del general José Antonio Paez (1821-1823) Tomo 2', 'Biblioteca de la academia nacional de historia', 44, '000000', 1, 6, 3, 28, '1973-12-16', 'Biblioteca de la academia nacional de la historia', '2', '', '2025-12-17 15:54:02'),
(916, '279182', 'Radicalidades', 'Pere Gimferrer', 28, '84-7162-729-9', 1, 13, 3, 0, '1978-12-16', 'Antoni Bosch', NULL, 'Primera', '2025-12-17 15:54:02'),
(917, 'E3-005', 'José Antonio Paez', 'R.B Cunninghame Graham', 5, '000000', 1, 6, 3, 29, '1973-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02');
INSERT INTO `libros` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `isbn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `tomo`, `edicion`, `created_at`) VALUES
(918, 'Mision', 'Acreditacion Del Activador Mariano Arismendi', 'Mision Cultura', 47, '0000', 1, 11, 2, 0, '2010-01-01', 'Mision Cultura', '1', 'primera', '2025-12-17 15:54:02'),
(919, 'K1-045', 'El Cardenalito | Lengua y Literatura | Sexto Grado', 'Ministerio del Poder Popular para la Educación', 3, '978-980-218-310-4', 1, 13, 1, 0, '2013-04-11', 'Ministerio del Poder Popular para la Educación', NULL, 'Tercera', '2025-12-17 15:54:02'),
(920, 'K1-046', 'Palabra de identidad | Primer año', 'Ministerio del Poder Popular para la Educación', 3, '978-980-218-324-1', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', NULL, 'Primera', '2025-12-17 15:54:02'),
(921, 'E3-006', 'Lenguas Indigenas E Indigenismos Italia E Iberoamerica (1492-1866)', 'Ana Cecilia Peña Vargas', 57, '980-222-095-7', 1, 6, 3, 30, '1987-11-04', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(922, 'C-156', 'Ezequiel Zamora Tierra y hombres libres', 'Alejandro Gonzales', 17, 'C-155', 1, 4, 6, 0, '2013-03-12', 'FEDUEZ', NULL, '1ra', '2025-12-17 15:54:02'),
(924, 'K1-047', 'Maestro Sojo', 'Guido Acuña', 43, '980-265-463-9', 1, 13, 1, 0, '1985-11-11', 'Guido Acuña', NULL, 'Primera', '2025-12-17 15:54:02'),
(925, '810191', 'Escritura en tiempo heroico', 'Alexis Vázquez-Chávez', 3, 'BLL081', 1, 13, 3, 0, '2003-12-16', 'Consejo Nacional de la Cultura', NULL, 'Primera', '2025-12-17 15:54:02'),
(926, 'C-158', 'Apuntes para el retrato de un Lider', 'Farruco sesto', 6, 'C-158', 1, 4, 6, 0, '2012-05-16', 'Gobierno bolivariano de venezuela', '1', '1ra', '2025-12-17 15:54:02'),
(927, 'E3-007', 'Fundadores, Primeros Moradores y Familias coloniales de Mérida (1558-1810)', 'Roberto Picon-Parra', 17, '980-222-164-3', 2, 6, 3, 32, '1988-10-11', 'Biblioteca de la academia nacional de la historia', 'Tomo 2: Los fundadores Ju', '', '2025-12-17 15:54:02'),
(928, 'IF-1', 'Fondo y Espuma', 'Enrique Mujica', 21, '80-2-147', 1, 11, 6, 0, '1980-01-01', 'Equinoccio', '1', 'primera', '2025-12-17 15:54:02'),
(929, 'K1-048', 'El Palacio Municipal de Caracas', '', 1, '', 1, 13, 1, 0, '1975-11-11', '', NULL, '', '2025-12-17 15:54:02'),
(931, 'K1-049', 'Diccionario General de la Literatura Venezolana', 'Mónte Ávila', 40, '978-980-01-1873-3', 1, 13, 1, 0, '2013-11-11', 'Mónte Ávila', NULL, 'Primera', '2025-12-17 15:54:02'),
(932, 'C-159', 'Ezequiel Zamora y la Tierra de los hombres libres', 'Juan Antonio Calzadilla Arreaza', 17, 'C-159', 1, 4, 6, 0, '2011-05-16', 'FUNDARTE', '1', '1ra', '2025-12-17 15:54:02'),
(933, 'E3-008', 'Las encomiendas de nueva Andalucía en el siglo XVII', 'Antoinette Da Prato-Perelli', 17, '980-222-406-5', 2, 6, 3, 34, '1990-09-05', 'Biblioteca de la academia nacional de la historia', 'Tomo 2', '', '2025-12-17 15:54:02'),
(934, 'IF-2', 'Me Parecio Que Saltaba Por El Espacio Como Una Hoja Muerta', 'Armando Jose Sequera', 25, '0000', 1, 11, 6, 0, '1953-01-01', 'Voces Nuevas Narrativas', '1', 'primera', '2025-12-17 15:54:02'),
(935, 'E3-009', 'El régimen de la encomienda en Barquisimeto colonial (1530-1810)', 'Reinaldo Rojas', 17, '980-222-522-3', 1, 6, 3, 35, '1992-08-12', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(936, 'IF-3', 'Peregrina', 'Manuel Diaz Rodriguez', 5, '0000', 1, 11, 6, 0, '1988-01-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(937, 'C-160', 'La desvelada espera de simon bolivar', 'Jose Ramon Luna', 6, 'C-160', 1, 4, 6, 0, '2012-07-16', 'FUNDARTE', '1', '1ra', '2025-12-17 15:54:02'),
(938, 'E3-010', 'Critica y descolonización: El sujeto colonial en la cultura latinoamericana', 'Beatriz Gonzales Stephan- Lucia Helena Costigan', 28, '980-222-721-8', 2, 6, 3, 36, '1992-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(939, '728282', 'Del ente y de la esencia', 'Tomas De Aquino', 9, 'BLL078', 1, 13, 3, 0, '1974-12-16', 'Universidad central de Venezuela', NULL, 'Primera', '2025-12-17 15:54:02'),
(940, 'C-161', 'Registrado socialista del proceso constituyente venezolano', 'Otto van der velde Q', 6, 'C-161', 1, 4, 6, 0, '2005-08-16', 'Consejo Nacional de la cultura', '1', '1ra', '2025-12-17 15:54:02'),
(941, 'IF-4', 'Casas Muertas', 'Miguel Otero Silva', 3, '0000', 1, 11, 6, 0, '1955-01-01', 'Monte Avila Latinoamericana, C.A', '1', 'primera', '2025-12-17 15:54:02'),
(942, 'E3-011', 'Fundadores, Primeros Moradores y Familias coloniales de Mérida (1558-1810) Tomo 3', 'Roberto Picon-Parra', 17, '980-222-772-2', 1, 6, 3, 37, '1993-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo 3: Los primeros Mora', '', '2025-12-17 15:54:02'),
(943, '73929', 'Chiquita', 'Antonio Orlando Rodríguez', 20, '978-603-4016-47-7', 1, 13, 3, 0, '2008-12-16', 'Santillana, S.A.', NULL, 'Primera', '2025-12-17 15:54:02'),
(944, 'C-162', 'Idea y sentencias del libertador', 'Anibal laydera villalobos', 3, 'C-162', 1, 4, 7, 0, '1981-02-16', 'Direccion de educacion y cultura de la gobernacion del estado miranda', '1', '1ra', '2025-12-17 15:54:02'),
(945, 'E3-012', 'Nacimiento de Venezuela intelectual Tomo 1', 'Gonzalo Picón Febres', 17, '000000', 1, 6, 3, 38, '1970-12-16', 'Universidad de los Andes', 'Tomo 1', '', '2025-12-17 15:54:02'),
(946, 'IF-5', 'Vercors Le silence De La Mer', 'Albin Michel', 17, '0000', 1, 11, 6, 0, '1985-02-01', 'Brodard', '1', 'primera', '2025-12-17 15:54:02'),
(947, 'IF-6', 'Aguila o Sol', 'Octavio Paz', 47, '0000', 1, 11, 6, 0, '1951-01-01', 'Fondo de Cultura Economica', '1', 'primera', '2025-12-17 15:54:02'),
(948, 'E3-013', 'Cartas del libertador Tomo 2', 'Banco de Venezuela - fundación Vicente Lecuna', 41, '000000', 1, 6, 3, 39, '1964-12-16', 'Banco de Venezuela- Fundación Vicente Lecuna', 'Tomo 2 (1818-1820)', '', '2025-12-17 15:54:02'),
(949, 'K1-052', 'Itinerario de la Caracas Vieja', 'Lucas Manzano', 30, '0000', 1, 13, 1, 0, '1975-11-11', '', NULL, '', '2025-12-17 15:54:02'),
(950, 'IF-7', 'Tiempo de Sequia', 'Manuel Mejia Vallejo', 9, '0000', 1, 11, 6, 0, '1960-01-01', 'Escritores Latinoamericanos', '1', 'primera', '2025-12-17 15:54:02'),
(951, 'E3-014', 'Cartas del libertador Tomo 3', 'Banco de Venezuela - fundación Vicente Lecuna', 41, '000000', 1, 6, 3, 40, '1965-12-16', 'Banco de Venezuela- Fundación Vicente Lecuna', 'Tomo 3 (1821-1823)', '', '2025-12-17 15:54:02'),
(952, 'E3-015', 'Cartas del libertador', 'Banco de Venezuela - fundación Vicente Lecuna', 41, '000000', 1, 6, 3, 41, '1966-12-16', 'Banco de Venezuela- Fundación Vicente Lecuna', 'Tomo 3: (1824-1825)', '', '2025-12-17 15:54:02'),
(953, 'K1-053', 'Educación para la Salud', 'Miguel Ángel Rodríguez, Carmen Rosa F. de Rodríguez', 24, '978-980-381-188-4', 1, 13, 1, 0, '2010-11-11', 'Editorial Romor', NULL, '', '2025-12-17 15:54:02'),
(954, '019209', 'Codazzi en Barinas', 'J. E. Ruiz-Guevara', 17, 'E.N. 01 R', 1, 13, 3, 0, '1985-12-16', 'Centro de estudios del estado Barinas', NULL, 'Primera', '2025-12-17 15:54:02'),
(955, 'C-163', 'Batalla de tonono', 'Valmore E Carrero Murillo', 17, '9789807240123', 1, 4, 7, 0, '2008-10-09', 'Gobierno Bolivariano de Venezuela', '1', '1ra', '2025-12-17 15:54:02'),
(956, 'F1-044', '¿Sonidos en extinción? Recital didáctico', 'Virgilio Fergusson', 28, '000000', 1, 7, 1, 44, '2009-12-16', 'Impresiones Regionales, Mérida – Fundación Editorial Eperoy Aldana', NULL, '', '2025-12-17 15:54:02'),
(957, 'K1-054', 'Educación Básica | Geografía de Venezuela 9', 'Freddy Díaz', 19, '980-275-097-2', 1, 12, 1, 0, '1993-11-11', 'Teduca/Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(958, 'IF-8', 'La Educacion En Veneuela', 'Angel Rosenblant', 3, '0000', 1, 11, 6, 0, '1981-11-10', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(959, 'F1-045', 'Poetas gallegos contemporáneos', 'Basilio Losada', 3, '000000', 1, 7, 1, 45, '1995-12-16', 'Ediciones del Serbal', NULL, '', '2025-12-17 15:54:02'),
(960, 'E3-016', 'La Doctrina Positivista Tomo II', 'Auguste Comte', 28, '000000', 1, 6, 3, 42, '1961-12-16', 'Ediciones conmemorativas del sesquicentenario de la independencia', 'Tomo II', '', '2025-12-17 15:54:02'),
(961, 'C-164', 'Batalla de tonono', 'Jose Antonio Escalona Escalona', 5, '9789802142651', 1, 4, 7, 0, '2011-06-09', 'Fundacion Casa De letras de Andres Bello', '1', '1ra', '2025-12-17 15:54:02'),
(962, 'E3-017', 'Exploraciones en análisis y en sintesis', 'Frank Bonilla y José .A. Silva Michilena', 28, '000000', 1, 6, 3, 43, '2025-12-16', '', NULL, '', '2025-12-17 15:54:02'),
(963, '819829', 'Entre una y otra República', 'Raúl López Guédez', 17, 'BLL000', 1, 13, 3, 0, '2003-12-16', 'Casa Blanca', NULL, 'Primera', '2025-12-17 15:54:02'),
(964, 'IF-9', 'Tagore Cuentos Elegidos', 'Delia Arrizabalaga', 15, '987-1102-52-6', 1, 11, 6, 0, '2003-01-01', 'Longseller', '1', 'primera', '2025-12-17 15:54:02'),
(965, 'F1-046', 'Poesías', 'Pablo Rojas Guardia', 21, '000000', 1, 7, 1, 46, '1999-12-16', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(966, 'K1-056', 'Historia de Venezuela | Octavo Grado', 'Alberto Arias Amaro', 17, '980-6010-65-5', 1, 13, 1, 0, '1999-11-11', 'Editorial Romor', NULL, '', '2025-12-17 15:54:02'),
(967, 'E3-018', 'Documentos del real consulado de caracas', 'Ildefonso Leal', 44, '000000', 1, 6, 3, 44, '1964-12-16', '', NULL, '', '2025-12-17 15:54:02'),
(968, 'E3-019', 'Viajeros por tierras de Carabobo siglos XVIII y XIX', 'Luis Augusto Nuñez', 43, '000000', 1, 6, 3, 45, '1971-12-16', '', NULL, '', '2025-12-17 15:54:02'),
(970, 'K1-057', 'Biología animal | Laboratorio', 'Roberta Bodini, Delia Rada', 58, '0000', 1, 13, 1, 0, '1980-11-11', 'Ateneo de Caracas', NULL, '', '2025-12-17 15:54:02'),
(971, 'E3-020', 'Los Leones se muerden', 'Eloy G. Gonzales', 28, '000000', 1, 6, 3, 46, '1975-12-16', 'Ediciones de la presidencia de la republica', NULL, '', '2025-12-17 15:54:02'),
(972, '018198', 'Discurso', 'Aldo Novellino', 17, 'BLL084', 1, 13, 3, 0, '1978-12-16', 'Ni idea', NULL, 'Primera', '2025-12-17 15:54:02'),
(973, 'K1-059', 'Historia de Venezuela | Octavo', 'Santillana', 17, '980-275-456-0', 1, 13, 1, 0, '2010-11-11', 'Santillana', NULL, 'Segunda', '2025-12-17 15:54:02'),
(974, 'K1-060', 'Biología | Prácticas de Laboratorio | Octavo', 'Fulgencio Proverbio, Reinaldo Marín', 58, '980-275-482-X', 1, 13, 1, 0, '2002-11-11', 'Santillana', NULL, 'Primera', '2025-12-17 15:54:02'),
(975, 'C-165', 'GLOSEMA Escritos Sobre Lenguaje', 'R. J Petit Castellano', 47, 'C-165', 1, 4, 7, 0, '2011-04-16', 'R. J Petit Castellano', '1', '1ra', '2025-12-17 15:54:02'),
(976, '619179', 'Seminario Nacional sobre el llano y los llaneros (memoria I)', 'Elio Vitrago Abreu', 56, '980-231-152-9', 1, 13, 3, 0, '1992-12-16', 'Congreso de la república', NULL, 'Primera', '2025-12-17 15:54:02'),
(977, 'K1-061', 'Goya: La Mirada Inconforme | Estampas de la Colección Fundación Museos Nacionales', 'Museo de Bellas Artes', 1, '', 1, 13, 1, 0, '2015-11-11', 'Museo de Bellas Artes', NULL, '', '2025-12-17 15:54:02'),
(978, 'C-167', 'Francisco de miranda Cronologia Minima', 'Lionel Muñoz Paz', 17, '', 1, 4, 7, 0, '2006-09-20', 'Casa Nacional de las Letras Andres Bello', '1', '1ra', '2025-12-17 15:54:02'),
(979, '729829', 'Fouché el genio tenebroso', 'Stefan Zweig', 9, '980-396-148-9', 1, 13, 3, 0, '2007-12-16', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(980, 'E4-001', 'Ensayo de historia americana Tomo I', 'Felipe Salvador Gilij', 28, '980-222-185-6', 1, 6, 4, 1, '1987-04-02', 'Academia nacional de la historia', 'Tomo 1', '', '2025-12-17 15:54:02'),
(981, 'F1-047', 'Todas íbamos a ser reinas', 'Gabriela Mistral', 21, '00000', 1, 7, 1, 47, '1957-12-16', 'Quimantú', NULL, '', '2025-12-17 15:54:02'),
(982, 'K1-062', 'Encuentro Interinstitucional Sobre el Financiamiento de las Organizaciones con Fines Políticos y de las Campañas Electorales CNE 2010', 'CNE', 6, '978-980-6089-51-8', 1, 13, 1, 0, '2012-11-11', 'CNE', NULL, '', '2025-12-17 15:54:02'),
(984, 'E4-002', 'Ensayo de historia americana Tomo III', 'Felipe Salvador Gilij', 28, '980-222-185-6', 1, 6, 4, 2, '1987-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo III', '2°', '2025-12-17 15:54:02'),
(985, 'K1-064', 'La Matemática y el Vivir Bien | Quinto Año', 'Ministerio del Poder Popular para la Educación', 18, '978-980-218-344-9', 1, 13, 1, 0, '2012-11-12', 'Ministerio del Poder Popular para la Educación', NULL, 'Primera', '2025-12-17 15:54:02'),
(986, 'E4-003', 'Protocolos del siglo XVI', 'Agustín millares Carlo', 44, '000000', 1, 6, 4, 3, '1966-06-11', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(987, 'C-168', 'Los niños del infortunio', 'Tarek william Saab', 17, 'C-168', 1, 4, 7, 0, '2006-05-16', 'Ediciones Plaza', '1', '1ra', '2025-12-17 15:54:02'),
(988, 'IF-10', 'La Edad De Cristal', 'Guillermo Enrique Hudson', 17, '0000', 1, 11, 6, 0, '1922-01-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(989, 'F1-048', 'Diálogos del conocimiento', 'Vicente Aleixandre', 28, '84-01-49157-X', 1, 7, 1, 48, '1985-12-16', 'Plaza & Janés', NULL, '', '2025-12-17 15:54:02'),
(990, 'K1-065', 'Construyamos el Futuro | Quinto Año', 'Ministerio del Poder Popular para la Educación', 22, '978-980-218-341-8', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', '1', 'Primera', '2025-12-17 15:54:02'),
(991, 'E4-004', 'Documentos para la historia de la educación en Venezuela (época colonial)', 'Ildefonso Leal', 44, '000000', 1, 6, 4, 4, '1968-09-02', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(992, 'BH216', 'Calendario Manual y Guía Universal de Forasteros en Venezuela Para el Año de 1810', 'Andres Bello', 17, '980-6536-02-9', 1, 1, 3, 16, '2003-04-28', 'La Liebre Libre Editores', '1', '1', '2025-12-17 15:54:02'),
(993, 'K1-066', 'Religión 5', 'Santillana', 46, '980-275-592-3', 1, 13, 1, 0, '2006-11-11', 'Santillana', NULL, '', '2025-12-17 15:54:02'),
(994, '819189', 'Facundo Quiroga aventura y leyenda', 'Jorge Newton', 9, 'BLL756', 1, 13, 3, 0, '1973-12-16', 'Plus Ultra', NULL, 'Segunda', '2025-12-17 15:54:02'),
(995, 'E4-005', 'Documentos relativos a su visita pastoral de la diócesis de caracas (1771-1784) Tomo I', 'Obispo Mariano Marti', 43, '000000', 1, 6, 4, 5, '1988-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo I', '', '2025-12-17 15:54:02'),
(996, 'F1-049', 'Juan Ramón Jiménez – Antología', 'Ángel González', 21, '000000', 1, 7, 1, 49, '1985-12-16', 'Ediciones Júcar', NULL, '', '2025-12-17 15:54:02'),
(997, 'E4-006', 'Documentos relativos a su visita pastoral de la diócesis de caracas (1771-1784) Tomo III', 'Obispo Mariano Marti', 43, '000000', 1, 6, 4, 6, '1988-09-12', 'Biblioteca de la academia nacional de la historia', 'Tomo III: Inventarios', '', '2025-12-17 15:54:02'),
(999, 'C-169', 'Bajo la piel del che', 'Alicia Elizundia', 17, '9597135515', 1, 4, 7, 0, '2005-07-16', 'Ediciones La Memoria', '1', '1ra', '2025-12-17 15:54:02'),
(1000, 'K1-068', 'Venezuela y su Gente Sexto', 'Ministerio del Poder Popular para la Educación', 60, '978-980-218-304-3', 1, 13, 1, 0, '2012-11-11', 'Ministerio del Poder Popular para la Educación', NULL, 'Primera', '2025-12-17 15:54:02'),
(1001, 'F1-050', 'Antología poética', 'Vicente Aleixandre', 21, '9788420635706', 1, 7, 1, 50, '1993-12-16', 'Alianza Editorial', NULL, '', '2025-12-17 15:54:02'),
(1002, 'E4-007', 'El real consulado de caracas (1793-1810)', 'Manuel Nunes Dias', 17, '000000', 1, 6, 4, 7, '1971-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(1003, '728178', 'Escritos del Doctor Rafael Villavicencio', 'Rafael Fernández Heres', 5, '980-222-309-3', 1, 13, 3, 0, '1989-12-16', 'Academia Nacional de Historia', '4', 'Primera', '2025-12-17 15:54:02'),
(1004, 'K1-069', 'Matemática Sexto Grado', 'Ministerio del Poder Popular para la Educación', 18, '978-980-218-308-1', 1, 13, 1, 0, '2013-11-11', 'Ministerio del Poder Popular para la Educación', NULL, 'Tercera', '2025-12-17 15:54:02'),
(1005, 'C-170', 'La Circuncisa', 'Sol Linares', 15, '9789800119174', 1, 4, 7, 0, '2013-09-16', 'Monte Avila', '1', '1ra', '2025-12-17 15:54:02'),
(1006, '729288', 'Materiales para la comprensión de la historia económica de Barinas', 'Nelson Montiel', 17, '980-6049-15-2', 1, 13, 3, 0, '1987-12-16', 'Reunellez', NULL, 'Primera', '2025-12-17 15:54:02'),
(1007, 'E4-008', 'El Mito del dorado: su génesis y su proceso', 'Demetrio Ramos Perez', 28, '000000', 2, 6, 4, 9, '1973-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(1008, 'K1-070', 'Educación Ambiental', 'Universidad Nacional Abierta', 24, '980-236-105-4', 1, 13, 1, 0, '1989-11-11', 'Universidad Nacional Abierta', NULL, 'Quinta', '2025-12-17 15:54:02'),
(1009, 'BLL893', 'Mozart', 'Rafael Pérez Sierra', 17, '84-206-4683-0', 1, 1, 3, 17, '1995-01-17', 'Alianza Editorial S. A.', '1', '1', '2025-12-17 15:54:02'),
(1010, 'F1-051', 'El grupo poético de los años 50', 'Ángel González', 3, '000000', 1, 7, 1, 51, '1968-12-16', 'Taurus', NULL, '', '2025-12-17 15:54:02'),
(1011, 'E4-009', 'Estudios de historia venezolana', 'Demetrio Ramos Perez', 28, '000000', 1, 6, 4, 9, '1988-08-15', 'Biblioteca de la academia nacional de la historia', NULL, '2°', '2025-12-17 15:54:02'),
(1012, 'E4-010', 'Fray Pedro de Aguado: Lengua y etnografia', 'María T. Vaquero de Ramirez', 57, '000000', 1, 6, 4, 11, '1981-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(1014, 'K1-071', 'Las Bibliotecas de Aula: El Nuevo Programa Escolar', 'María de Tocci, Francia Reina', 24, '000', 1, 14, 1, 0, '1998-11-11', '', NULL, '', '2025-12-17 15:54:02'),
(1015, 'F1-052', '¿Qué es el estructuralismo?', 'Tzvetan Todorov', 28, '9500300213', 1, 7, 1, 52, '1989-12-16', 'Losada', NULL, '', '2025-12-17 15:54:02'),
(1016, 'IF-11', 'Paginas Escondidas', 'Juan VIcente Gonzalez', 47, '980-01-0065-2', 1, 11, 6, 0, '1985-09-01', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(1017, 'C-171', 'Unificar las ideas y unificar las luchas', 'Norberto Bacher', 55, 'C-171', 1, 4, 7, 0, '2011-05-16', 'Fuego vivo', '1', '1era', '2025-12-17 15:54:02'),
(1018, 'E4-013', 'La ocupación alemana de Venezuela en el siglo XVII: Periodo de los Welser (1528-1556)', 'Jules Humbert', 17, '000000', 2, 6, 4, 15, '1983-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(1019, 'F1-053', 'Materia bruta', 'Alfredo Chacón', 21, '000000', 1, 7, 1, 53, '1996-12-16', 'Rectorado de la Universidad de los Andes', NULL, '', '2025-12-17 15:54:02'),
(1020, 'E4-011', 'Temas de Historia colonial Venezolana', 'Mario Briceño Perozo', 28, '000000', 1, 6, 4, 12, '1981-12-16', 'Biblioteca de la academia nacional de la historia', NULL, '', '2025-12-17 15:54:02'),
(1021, 'C-172', 'El Reportaje de la historia', 'Editorial Planeta', 17, 'C-172', 1, 4, 7, 0, '1967-05-16', 'Planeta', '1', '10ma', '2025-12-17 15:54:02'),
(1022, '378272', 'Campos elevados e historia cultural prehispánica en los llanos occidentales de Venezuela', 'Alberta Zucchini y William M. Denevan', 17, '80-0354', 1, 13, 3, 0, '1980-12-16', 'Arte', NULL, 'Primera', '2025-12-17 15:54:02'),
(1023, 'IF-12', 'Memoria Compartida', 'Oscar Collazos', 47, '0000', 1, 11, 6, 0, '1976-10-10', 'Monte Avila', '1', 'primera', '2025-12-17 15:54:02'),
(1024, 'C-173', 'El reportaje de la historia', 'Editorial Planeta', 17, 'C-173', 1, 4, 7, 0, '1967-05-16', 'Planeta', '2', '10ma', '2025-12-17 15:54:02'),
(1025, 'K1-073', 'Guía Ocupacional de la Industria de Alimentos', 'Ministerio del Trabajo', 61, '980-228-004-6', 1, 14, 1, 0, '1988-11-11', 'Ministerio del Trabajo', '1', '', '2025-12-17 15:54:02'),
(1026, 'C-174', 'El reportaje de la Historia', 'Editorial Planeta', 17, 'C-174', 1, 4, 7, 0, '1967-05-16', 'Planeta', '3', '10ma', '2025-12-17 15:54:02'),
(1027, 'F1-054', 'Poesía Popular Venezolana', 'Efraín Subero', 28, '000000', 1, 7, 1, 54, '1967-12-16', 'Fundación Shell', NULL, '', '2025-12-17 15:54:02'),
(1028, 'BAC003', 'Manual de Forklore', 'Isabel Arets', 2, '9789800101278', 1, 1, 3, 18, '1976-05-11', 'Monte Ávila Editores', '1', '4', '2025-12-17 15:54:02'),
(1029, 'E4-012', 'Los comuneros de Merida (Estudios) Tomo I', 'Universidad de los Andes', 44, '000000', 1, 6, 4, 13, '1981-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo 1', 'Edicion Conmemorativa del bicentenario del movimiento comunero', '2025-12-17 15:54:02'),
(1030, 'F1-055', 'Antología', 'Xavier Villaurrutia', 21, '968-16-0420-2', 1, 7, 1, 55, '1980-12-16', 'Fondo de Cultura Económica', NULL, '', '2025-12-17 15:54:02'),
(1031, '62827', 'Náufragos en la noche sin ribera', 'Francisco Lazo Martí', 21, '978-9807163880', 1, 13, 3, 0, '2008-12-16', 'Fundación Editorial el perro y la rana', NULL, 'Primera', '2025-12-17 15:54:02'),
(1032, 'K1-074', 'PULOWI', 'Grupo Cinco', 2, '', 1, 14, 1, 0, '2000-11-11', 'Grupo Cinco', NULL, '', '2025-12-17 15:54:02'),
(1033, 'F1-056', 'Tierras que me oyeron', 'Andrés Eloy Blanco', 21, '000000', 1, 7, 1, 56, '1957-12-16', 'Yocoima', NULL, '', '2025-12-17 15:54:02'),
(1034, 'IF-13', 'Introduccion Al Masoquismo', 'Leopold Von Sacher-Mosoch', 7, '0000', 1, 11, 6, 0, '1973-01-01', 'Carlos Castilla Del Pino', '1', 'primera', '2025-12-17 15:54:02'),
(1035, 'E4-014', 'Epistolario de la primera republica I', 'Biblioteca de la academia nacional de historia', 44, '000000', 1, 6, 4, 16, '2025-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo 1', '', '2025-12-17 15:54:02'),
(1036, 'IF-14', 'Cronica de Caracas', 'Aristides Rojas', 17, '0000', 1, 11, 6, 0, '1988-01-01', 'Biblioteca Popular Venezolana', '1', 'primera', '2025-12-17 15:54:02'),
(1038, 'F1-057', 'Flor nueva de romances viejos', 'Ramón Menéndez Pidal', 3, '8423904206', 1, 7, 1, 59, '1928-12-16', 'Espasa Calpe', NULL, '', '2025-12-17 15:54:02'),
(1039, '638278', 'Acto de inicio del año centenario del poeta Alberto Arvelo Torrealba', 'Guillermo Jiménez', 21, 'BLL050', 1, 13, 3, 0, '2005-12-16', 'Comisión centenaria', NULL, 'Primera', '2025-12-17 15:54:02'),
(1041, 'K1-075', 'Sistemas de Libertad | Vida y Obra de Luiz Mendes', 'Carlos Delgado Díaz', 1, '978-980-7039-11-6', 1, 14, 1, 0, '2008-11-11', 'Ministerio del Poder Popular para la Cultura', NULL, '', '2025-12-17 15:54:02'),
(1042, 'F1-058', 'Pájaros y otro poemas', 'Saint-John Perse', 21, '000000', 1, 7, 1, 58, '1975-12-16', 'Era', NULL, '', '2025-12-17 15:54:02'),
(1044, 'E4-015', 'Hombres y mujeres del siglo XVI Venezolano Tomo II', 'Ismael Silva Montañes', 17, '000000', 1, 6, 4, 17, '1983-12-16', 'Biblioteca de la academia nacional de la historia', 'Tomo II', '', '2025-12-17 15:54:02'),
(1045, 'IF-15', 'Tres Aproximaciones A La Literatura De Nuestro Tiempo', 'Ernesto Sabato', 3, '0000', 1, 11, 6, 0, '1974-07-19', 'Alfa Argentina', '1', 'primera', '2025-12-17 15:54:02'),
(1046, 'C-175', 'DEDICATORIA A LA MEMOERIA DEL LIBERTADOR Simon Bolivar', 'Daniel Antonio Chambon', 3, 'C-175', 1, 4, 7, 0, '1983-09-16', 'FUNDALICA', '1', '1ra', '2025-12-17 15:54:02'),
(1047, 'F1-059', 'Poemas Manzanas', 'James Joyce', 21, '978-84-7522-007-9', 1, 7, 1, 59, '0000-00-00', 'Visor Libros', NULL, '', '2025-12-17 15:54:02'),
(1048, 'F1-060', 'Canciones del alto valle del Aniene', 'Rafael Alberti', 21, '000000', 1, 7, 1, 60, '1972-12-17', 'Seix Barral', NULL, '', '2025-12-17 15:54:02'),
(1049, 'F1-061', 'La ciudad', 'Jesús Rosas Marcano', 21, '000000', 1, 7, 1, 61, '1978-12-17', 'Ediciones Poesía de Venezuela', NULL, '', '2025-12-17 15:54:02'),
(1050, 'F1-062', 'Las letras de tu nombre', 'Rodrigo Gonzalo Alomar', 21, '978-980-6499-08-9', 1, 7, 1, 62, '2007-12-17', 'La Espada Rota', NULL, '', '2025-12-17 15:54:02'),
(1051, 'F1-063', 'Veinte puntos de fuga: Poesía gallega contemporánea', 'Teresa Seara', 21, '978-980-396-667-6', 1, 7, 1, 63, '2007-09-11', 'El perro y la rana', NULL, '', '2025-12-17 15:54:02'),
(1052, 'F1-064', 'Saudades', 'Rosalía de Castro', 21, '9788495299615', 1, 7, 1, 64, '2000-12-17', 'Ediciones del Oriente y del Mediterráneo', NULL, '', '2025-12-17 15:54:02'),
(1053, 'F1-065', 'Cartas sobre la poesía', 'Stéphane Mallarmé', 28, '000000', 1, 7, 1, 65, '0000-00-00', 'Ediciones Era', NULL, '', '2025-12-17 15:54:02'),
(1054, 'F1-067', 'Poesías', 'Juan de Dios Peza', 21, '000000', 1, 7, 1, 67, '1880-12-17', 'Librería de la Vda.', NULL, '', '2025-12-17 15:57:22'),
(1055, 'E4-016', 'Juicios de residencia en la provincia de venezuela (1673-1677)', 'Letizia Vaccari S.M', 28, '000000', 1, 6, 4, 18, '1980-01-13', 'Biblioteca de la academia nacional de la historia', 'Tomo 2', '', '2026-01-13 12:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revistas`
--

CREATE TABLE `revistas` (
  `id` int NOT NULL,
  `cod_identificador` varchar(6) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `categoria_id` int NOT NULL,
  `issn` varchar(20) NOT NULL,
  `n_copias` int NOT NULL DEFAULT '1',
  `estante_id` int NOT NULL,
  `fila` int NOT NULL,
  `posicion` int NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `editorial` varchar(150) DEFAULT NULL,
  `volumen` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `periodicidad` enum('DIARIA','SEMANAL','MENSUAL','BIMESTRAL','TRIMESTRAL','ANUAL') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revistas`
--

INSERT INTO `revistas` (`id`, `cod_identificador`, `titulo`, `autor`, `categoria_id`, `issn`, `n_copias`, `estante_id`, `fila`, `posicion`, `fecha_publicacion`, `editorial`, `volumen`, `numero`, `periodicidad`, `created_at`) VALUES
(1, 'E1-048', 'Jóvenes chinos de hoy', 'Editorial Nueva Estrella', 44, '7-80148-588-2', 1, 6, 1, 58, '1999-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(2, 'E1-049', 'Los recursos naturales y la protección medioambiental china', 'Editorial Nueva Estrella', 44, '7-80148-598', 1, 6, 1, 59, '1999-12-11', '', NULL, NULL, '', '2025-12-17 15:53:25'),
(3, 'E1-050', 'Reservas naturales', 'Editorial Nueva Estrella', 44, '7-80225-140-0', 1, 6, 1, 60, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(4, 'E1-051', 'Acción contra la arena', 'Editorial Nueva Estrella', 44, '7-80225-141-9', 3, 6, 1, 63, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(5, 'E1-052', 'Nuestras Ciudades', 'Editorial Nueva Estrella', 11, '7-80148-950-0', 2, 6, 1, 65, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(6, 'E1-053', 'Sociedad del Ahorro', 'Editorial Nueva Estrella', 44, '7-80148-948-9', 3, 6, 1, 68, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(7, 'E1-054', 'Protección de la cultura tradicional en china', 'Editorial Nueva Estrella', 44, '7-80225-135-4', 4, 6, 1, 72, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(8, 'Calend', 'Calendario de Fiestas Religiosas', 'Aythaima Grupo Editor', 11, '0000', 1, 11, 5, 0, '2010-01-01', 'Aythaima Grupo Editor', NULL, NULL, '', '2025-12-17 15:53:25'),
(9, 'E1-055', 'Mujeres y niños', 'Editorial Nueva Estrella', 44, '7-80225-143-5', 5, 6, 1, 77, '2000-12-11', 'Editorial Nueva estrella', NULL, NULL, '', '2025-12-17 15:53:25'),
(11, 'K1-001', 'Passages', 'Pro Helvetia', 47, '0000', 1, 13, 1, 0, '2009-11-12', 'Pro Helvetia', NULL, 51, 'MENSUAL', '2025-12-17 15:53:25'),
(12, 'E1-061', 'Tierra Firme', 'LAGOVWN', 17, '0798-2194', 1, 6, 1, 83, '1991-05-08', '', 9, NULL, 'ANUAL', '2025-12-17 15:53:25'),
(13, 'K1-014', 'Venezuela: Crisis y Medios', 'Comunicación', 48, '0251-3153', 1, 13, 1, 0, '2002-08-11', 'Centro Gumilla', NULL, 119, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(14, 'K1-015', 'Enseñanza de la Matemática', 'ASOVEMAT | Revista Oficial de la Asociación Venezolana de Educación Matemática', 24, '0000', 1, 13, 1, 0, '1998-11-11', 'ASOVEMAT | Revista Oficial de la Asociación Venezolana de Educación Matemática', 7, 1, 'ANUAL', '2025-12-17 15:53:25'),
(15, 'K1-017', 'INIA Divulga', 'Revista de Difusión de Tecnología Agrícola, Pecuaria, Pesquera y Acuícola', 52, '1690-33-66', 1, 13, 1, 0, '2007-11-11', 'Revista de Difusión de Tecnología Agrícola, Pecuaria, Pesquera y Acuícola', NULL, 10, 'ANUAL', '2025-12-17 15:53:25'),
(16, 'K1-018', 'Memorias de Venezuela', 'Centro Nacional de Historia', 17, '0000', 1, 13, 1, 0, '2008-11-11', 'Centro Nacional de Historia', NULL, 1, 'ANUAL', '2025-12-17 15:53:25'),
(17, 'K1-041', 'Premio Nacional de Periodismo', 'Centro Gumilla', 25, '0000', 1, 13, 1, 0, '1987-12-11', 'Centro Gumilla', NULL, 500, 'MENSUAL', '2025-12-17 15:53:25'),
(18, 'K1-042', 'Zootecnia tropical', 'Instituto Nacional de Investigaciones Agrícolas', 52, '0798-7269', 1, 13, 1, 0, '2010-08-11', 'Instituto Nacional de Investigaciones Agrícolas', 28, 28, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(19, 'K1-043', 'Portafolio', 'Facultad de Arquitectura y Diseño de la Universidad del Zulia', 49, '1317-2085', 1, 13, 1, 0, '2001-11-11', 'Facultad de Arquitectura y Diseño de la Universidad del Zulia', 1, 3, 'ANUAL', '2025-12-17 15:53:25'),
(20, 'K1-044', 'Exposición Colectiva Rastro', 'Luis Castillo, Raúl Herrera, Ronald París', 1, '0000', 1, 13, 1, 0, '2000-11-11', '0', NULL, NULL, '', '2025-12-17 15:53:25'),
(21, 'C-160', 'Poder Popular: Alma de la democracia Revolucionaria', 'Gobierno Bolivariano de Venezuela', 17, 'c-155', 1, 4, 6, 0, '0000-00-00', 'Gobierno Bolivariano de Venezuela', 1, 1, 'ANUAL', '2025-12-17 15:53:25'),
(22, 'AR-01', 'Barinas Histórica, Turística y Cultural', 'Alberto Pérez Larrarte', 11, '0000000', 4, 1, 2, 6, '2005-07-16', 'IAMPAC', 2, 2, '', '2025-12-17 15:53:25'),
(23, 'AR-02', 'El Cumpleaños de Bolívar', '', 47, '0000000', 1, 1, 3, 7, '2009-08-25', 'Aythaima Grupo Editor', 1, 1, '', '2025-12-17 15:53:25'),
(24, 'K1-049', 'Imagen', 'Ministerio de Educación, Cultura y Deportes', 30, '0536-5503', 1, 13, 1, 0, '2004-11-11', 'Ministerio de Educación, Cultura y Deportes', NULL, 37, 'ANUAL', '2025-12-17 15:53:25'),
(27, 'K1-050', 'Corpovoz', 'CORPOVEN', 48, '79-0099', 1, 13, 1, 0, '1995-11-11', 'CORPOVEN', NULL, 82, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(28, 'AR-03', 'El Museo de Barinas', 'Alberto Pérez Larrarte', 11, '0000000', 5, 1, 3, 8, '2005-07-12', 'IAMPAC', 1, 1, '', '2025-12-17 15:53:25'),
(29, 'K1-051', 'CORPOVOZ', 'CORPOVEN', 48, '79-0099', 1, 13, 1, 0, '1994-11-11', 'CORPOVEN', NULL, 79, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(30, 'AR-04', 'El Socialismo', 'Michael A. Lebowitz', 6, '0000000', 1, 1, 3, 8, '2007-02-06', 'Gobierno Bolivariano de Venezuela', 1, 1, '', '2025-12-17 15:53:25'),
(31, 'K1-055', 'Comarca', 'Gobierno Bolivariano de Anzoátegui', 47, '200602', 2, 13, 1, 0, '2010-11-11', 'Fondo Editorial Eduardo Sífontes', 4, 4, 'ANUAL', '2025-12-17 15:53:25'),
(32, 'BH244', 'Continente Bolivia', 'VICTOR RAMIREZ', 6, '0000000', 1, 1, 3, 9, '2012-12-18', 'Gobierno Bolivariano de Venezuela', 2, 2, '', '2025-12-17 15:53:25'),
(33, 'BH245', 'Patria Grande I', 'VICTOR RAMIREZ', 6, '0000000', 1, 1, 3, 10, '2012-12-23', 'Gobierno Bolivariano de Venezuela', 2, 1, '', '2025-12-17 15:53:25'),
(34, 'BH246', 'La Cuestión Judía', 'Carlos Marx', 6, '0000000', 1, 1, 3, 11, '2009-06-16', 'Gobierno Bolivariano de Venezuela', 1, 1, '', '2025-12-17 15:53:25'),
(35, 'BH248', 'Marxismo y Pensamiento Bolivariano', 'VICTOR RAMIREZ', 6, '0000000', 1, 1, 3, 13, '2006-01-11', 'Gobierno Bolivariano de Venezuela', 1, 1, '', '2025-12-17 15:53:25'),
(36, 'AR-05', 'En Pos del Pensamiento Politico de Francisco de Miranda', 'VICTOR RAMIREZ', 6, '0000000', 1, 1, 3, 14, '2010-07-07', 'Gobierno Bolivariano de Venezuela', 1, 1, '', '2025-12-17 15:53:25'),
(37, 'BH250', 'Geohistoria y Evolucion del Estado Moderno', 'VICTOR RAMIREZ', 6, '0000000', 2, 1, 3, 15, '2010-07-08', 'Gobierno Bolivariano de Venezuela', 1, 1, '', '2025-12-17 15:53:25'),
(38, 'K1-063', 'Agronomía Tropical', 'Instituto Nacional de Investigaciones Agrícolas', 52, '0002-192X', 1, 13, 1, 0, '2009-11-11', 'Instituto Nacional de Investigaciones Agrícolas', 59, 4, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(39, 'K1-067', '¡Química... Y algo más!', 'CENAMEC', 59, '1316-4201', 1, 13, 1, 0, '2002-11-11', 'CENAMEC', NULL, 6, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(40, 'K1-072', 'Imagen', 'Consejo Nacional de la Cultura', 47, '0000', 1, 14, 1, 0, '1998-11-11', 'Consejo Nacional de la Cultura', NULL, 8, 'TRIMESTRAL', '2025-12-17 15:53:25'),
(41, 'F1-001', 'Órbita de pesca', 'Gregorio González Vivas', 3, 'BP0628', 1, 7, 1, 0, '0000-00-00', 'Sistema Nacional de Imprentas – Apure', NULL, NULL, '', '2025-12-17 15:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `rol` varchar(100) NOT NULL,
  `permisos` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `rol`, `permisos`, `created_at`) VALUES
(1, 'Admin', 'libros:todos', '2025-12-17 15:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol_id` int NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `usuario`, `password`, `rol_id`, `is_admin`, `created_at`) VALUES
(1, 'Sergio', 'Gutierrez', '28273564', 'sermagu', '123456789', 1, 1, '2025-12-17 16:03:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `estanterias`
--
ALTER TABLE `estanterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indexes for table `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_identificador` (`cod_identificador`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `estante_id` (`estante_id`),
  ADD KEY `isbn` (`isbn`) USING BTREE;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `revistas`
--
ALTER TABLE `revistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_identificador` (`cod_identificador`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `estante_id` (`estante_id`),
  ADD KEY `issn` (`issn`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `estanterias`
--
ALTER TABLE `estanterias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revistas`
--
ALTER TABLE `revistas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`estante_id`) REFERENCES `estanterias` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `revistas`
--
ALTER TABLE `revistas`
  ADD CONSTRAINT `revistas_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `revistas_ibfk_2` FOREIGN KEY (`estante_id`) REFERENCES `estanterias` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
