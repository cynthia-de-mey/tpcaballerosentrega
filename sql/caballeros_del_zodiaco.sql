-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2026 a las 19:18:38
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
-- Base de datos: `caballeros_del_zodiaco`
--
CREATE DATABASE IF NOT EXISTS `caballeros_del_zodiaco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `caballeros_del_zodiaco`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Bronce'),
(2, 'Plata'),
(3, 'Oro'),
(4, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id_personaje` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `lugar_nacimiento` varchar(40) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `genero` varchar(40) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `altura` decimal(10,2) DEFAULT NULL,
  `maestro` varchar(40) DEFAULT NULL,
  `constelacion` varchar(40) DEFAULT NULL,
  `armadura` varchar(40) DEFAULT NULL,
  `imagen` varchar(150) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id_personaje`, `nombre`, `fecha_nacimiento`, `lugar_nacimiento`, `descripcion`, `genero`, `edad`, `peso`, `altura`, `maestro`, `constelacion`, `armadura`, `imagen`, `id_categoria`) VALUES
(1, 'Seiya de Pegaso', '1 de diciembre', 'Japón', 'El caballero de bronce principal, conocido por su tenacidad, valor y lealtad inquebrantable a Atenea.', 'Masculino', 13, 53.00, 1.65, 'Marin de Águila', 'Pegaso', 'Armadura de Pegaso', 'seiya_pegaso.jpg', 1),
(2, 'Shiryu de Dragón', '4 de octubre', 'Japón', 'Un caballero sabio y maduro, capaz de sacrificar su propia vida o vista para proteger a sus amigos.', 'Masculino', 14, 53.00, 1.72, 'Dohko de Libra', 'Dragón', 'Armadura de Dragón', 'shiryu_dragon.jpg', 1),
(3, 'Hyoga de Cisne', '23 de enero', 'Rusia', 'Caballero que domina las técnicas del hielo, marcado por el recuerdo de su difunta madre.', 'Masculino', 14, 56.00, 1.73, 'Camus de Acuario', 'Cisne', 'Armadura de Cisne', 'hyoga_cisne.jpg', 1),
(4, 'Shun de Andrómeda', '9 de septiembre', 'Japón', 'De alma pacífica y pura, prefiere evitar el combate, pero posee un cosmos destructivo cuando es necesario.', 'Masculino', 13, 51.00, 1.65, 'Albiore de Cefeo', 'Andrómeda', 'Armadura de Andrómeda', 'shun_andromeda.jpg', 1),
(5, 'Ikki de Fénix', '15 de agosto', 'Japón', 'El hermano mayor de Shun. Un guerrero solitario y extremadamente poderoso que regresa de las cenizas.', 'Masculino', 15, 62.00, 1.75, 'Guilty', 'Fénix', 'Armadura de Fénix', 'ikki_fenix.jpg', 1),
(6, 'Jabu de Unicornio', '3 de noviembre', 'Japón', 'Caballero de bronce que inicialmente rivalizaba con Seiya por demostrar su total devoción a Saori Kido.', 'Masculino', 13, 55.00, 1.65, 'Desconocido', 'Unicornio', 'Armadura de Unicornio', 'jabu_unicornio.jpg', 1),
(7, 'Geki de Oso', '15 de mayo', 'Japón', 'Destaca por su inmensa fuerza física, entrenado en Canadá estrangulando osos salvajes con sus manos.', 'Masculino', 15, 102.00, 1.88, 'Desconocido', 'Osa Mayor', 'Armadura de Oso', 'geki_oso.jpg', 1),
(8, 'Ichi de Hidra', '10 de febrero', 'Japón', 'Utiliza garras venenosas que se regeneran infinitamente desde su armadura para desgastar a sus rivales.', 'Masculino', 14, 56.00, 1.70, 'Desconocido', 'Hidra', 'Armadura de Hidra', 'ichi_hidra.jpg', 1),
(9, 'Nachi de Lobo', '20 de julio', 'Japón', 'Líder interino de los caballeros de bronce secundarios, entrenado en los paisajes de Liberia.', 'Masculino', 14, 57.00, 1.71, 'Desconocido', 'Lobo', 'Armadura de Lobo', 'nachi_lobo.jpg', 1),
(10, 'Marin de Águila', '23 de diciembre', 'Japón', 'Maestra de Seiya en el Santuario. Una guerrera enigmática, estricta pero profundamente protectora.', 'Femenino', 16, 51.00, 1.67, 'Desconocido', 'Águila', 'Armadura de Águila', 'marin_aguila.jpg', 2),
(11, 'Shaina de Ofiuco', '24 de marzo', 'Italia', 'Una de las guerreras más fuertes del Santuario. Inicialmente enemiga jurada de Seiya, luego aliada clave.', 'Femenino', 16, 49.00, 1.66, 'Desconocido', 'Ofiuco', 'Armadura de Ofiuco', 'shaina_ofiuco.jpg', 2),
(12, 'Misty de Lagarto', '11 de octubre', 'Francia', 'El primer caballero de plata enviado a eliminar a los de bronce. Extremadamente narcisista y orgulloso.', 'Masculino', 16, 68.00, 1.80, 'Desconocido', 'Lagarto', 'Armadura de Lagarto', 'misty_lagarto.jpg', 2),
(13, 'Algol de Perseo', '11 de noviembre', 'Arabia Saudita', 'Posee el temible Escudo de Medusa, capaz de petrificar a cualquiera que lo mire directamente.', 'Masculino', 17, 83.00, 1.83, 'Desconocido', 'Perseo', 'Armadura de Perseo', 'algol_perseo.jpg', 2),
(14, 'Jamian de Cuervo', '27 de julio', 'Reino Unido', 'Controla bandadas de cuervos para atacar y secuestrar. Fue el encargado de raptar a Saori Kido.', 'Masculino', 17, 56.00, 1.66, 'Desconocido', 'Cuervo', 'Armadura de Cuervo', 'jamian_cuervo.jpg', 2),
(15, 'Dante de Cerbero', '29 de marzo', 'Italia', 'Guerrero despiadado que utiliza pesadas cadenas con bolas de picos de acero para destrozar a sus enemigos.', 'Masculino', 17, 93.00, 1.85, 'Desconocido', 'Cerbero', 'Armadura de Cerbero', 'dante_cerbero.jpg', 2),
(16, 'Capella de Auriga', '21 de agosto', 'Grecia', 'Combate lanzando los discos afilados de su armadura como bumeranes letales guiados por su cosmos.', 'Masculino', 17, 80.00, 1.83, 'Desconocido', 'Auriga', 'Armadura de Auriga', 'capella_auriga.jpg', 2),
(17, 'Moisés de Ballena', '2 de agosto', 'Nueva Zelanda', 'Un caballero de inmenso tamaño físico que utiliza la fuerza bruta y corrientes de aire devastadoras.', 'Masculino', 17, 130.00, 2.05, 'Desconocido', 'Ballena', 'Armadura de Ballena', 'moises_ballena.jpg', 2),
(18, 'Asterion de Perros de Caza', '20 de febrero', 'Dinamarca', 'Posee la habilidad mental de leer los pensamientos y las estrategias de sus oponentes en combate.', 'Masculino', 16, 75.00, 1.83, 'Desconocido', 'Perros de Caza', 'Armadura de Perros de Caza', 'asterion_perros_caza.jpg', 2),
(19, 'Babel de Centauro', '20 de febrero', 'Irak', 'Capaz de generar y manipular llamas ardientes gracias a la fricción de su cosmos y su armadura.', 'Masculino', 17, 80.00, 1.85, 'Desconocido', 'Centauro', 'Armadura de Centauro', 'babel_centauro.jpg', 2),
(20, 'Ptolemy de Flecha', '16 de junio', 'Libia', 'El caballero que inició la batalla de las doce casas al clavarle una flecha dorada fantasma en el pecho a Saori.', 'Masculino', 16, 74.00, 1.80, 'Desconocido', 'Flecha', 'Armadura de Flecha', 'ptolemy_flecha.jpg', 2),
(21, 'Albiore de Cefeo', '2 de octubre', 'Argentina', 'Maestro de Shun. Un caballero de plata con un poder y rectitud comparables a los de un caballero de oro.', 'Masculino', 19, 89.00, 1.87, 'Desconocido', 'Cefeo', 'Armadura de Cefeo', 'albiore_cefeo.jpg', 2),
(22, 'Mu de Aries', '27 de marzo', 'Tíbet', 'Caballero pacífico y sabio, único con la habilidad de reparar las armaduras dañadas gracias a las técnicas de su maestro.', 'Masculino', 20, 75.00, 1.82, 'Shion de Aries', 'Aries', 'Armadura de Oro de Aries', 'mu_de_aries.jpg', 3),
(23, 'Aldebarán de Tauro', '8 de mayo', 'Brasil', 'Posee una fuerza física colosal y un gran sentido del honor; defiende su casa adoptando una postura de combate inquebrantable.', 'Masculino', 20, 130.00, 2.10, 'Desconocido', 'Tauro', 'Armadura de Oro de Tauro', 'aldebaran_de_tauro.jpg', 3),
(24, 'Saga de Géminis', '30 de mayo', 'Grecia', 'Un guerrero de poder devastador atormentado por una doble personalidad: un ángel de justicia y un demonio ambicioso.', 'Masculino', 28, 87.00, 1.88, 'Desconocido', 'Géminis', 'Armadura de Oro de Géminis', 'saga_de_geminis.jpg', 3),
(25, 'Deathmask de Cáncer', '24 de junio', 'Italia', 'Cruel y despiadado, adorna las paredes de su templo con los rostros de sus víctimas y cree firmemente que el poder define la justicia.', 'Masculino', 23, 82.00, 1.84, 'Desconocido', 'Cáncer', 'Armadura de Oro de Cáncer', 'deathmask_cancer.jpg', 3),
(26, 'Aioria de Leo', '16 de agosto', 'Grecia', 'Hermano menor de Aioros. Impulsivo, noble y de un corazón puro, ataca a la velocidad de la luz para limpiar el honor de su sangre.', 'Masculino', 20, 85.00, 1.85, 'Aioros de Sagitario', 'Leo', 'Armadura de Oro de Leo', 'aioria_de_leo.jpg', 3),
(27, 'Shaka de Virgo', '19 de septiembre', 'India', 'Considerado el hombre más cercano a Dios. Mantiene sus ojos cerrados para acumular un cosmos infinito y juzgar con absoluta frialdad.', 'Masculino', 20, 68.00, 1.82, 'Desconocido', 'Virgo', 'Armadura de Oro de Virgo', 'shaka_de_virgo.jpg', 3),
(28, 'Dohko de Libra', '20 de octubre', 'China', 'Sobreviviente de la anterior guerra santa. Custodia el sello de Hades en los cinco picos mientras vigila el equilibrio del mundo.', 'Masculino', 261, 79.00, 1.70, 'Desconocido', 'Libra', 'Armadura de Oro de Libra', 'dohko_de_libra.jpg', 3),
(29, 'Milo de Escorpio', '8 de noviembre', 'Grecia', 'Un guerrero orgulloso, sumamente leal al Santuario, que otorga a sus rivales la oportunidad de rendirse antes de aplicar la Aguja Escarlata.', 'Masculino', 20, 84.00, 1.85, 'Desconocido', 'Escorpio', 'Armadura de Oro de Escorpio', 'milo_de_escorpio.jpg', 3),
(30, 'Aioros de Sagitario', '13 de mayo', 'Grecia', 'El héroe legendario que sacrificó su vida para rescatar a la bebé Atenea, dejando sus ideales grabados en las paredes de su templo.', 'Masculino', 14, 85.00, 1.87, 'Desconocido', 'Sagitario', 'Armadura de Oro de Sagitario', 'aioros_de_sagitario.jpg', 3),
(31, 'Shura de Capricornio', '12 de enero', 'España', 'Poseedor de la espada sagrada Excalibur en sus extremidades. Su rectitud y devoción lo llevan a ser el brazo armado de la justicia.', 'Masculino', 23, 83.00, 1.86, 'Desconocido', 'Capricornio', 'Armadura de Oro de Capricornio', 'shura_de_capricornio.jpg', 3),
(32, 'Camus de Acuario', '7 de febrero', 'Francia', 'Maestro del cero absoluto. Oculta sus emociones bajo una fachada de hielo para enseñar a sus alumnos a combatir con fría racionalidad.', 'Masculino', 20, 76.00, 1.84, 'Desconocido', 'Acuario', 'Armadura de Oro de Acuario', 'camus_de_acuario.jpg', 3),
(33, 'Afrodita de Piscis', '10 de marzo', 'Suecia', 'El caballero cuya belleza brilla entre el cielo y la tierra. Utiliza rosas envenenadas y letales para custodiar el último templo.', 'Masculino', 22, 72.00, 1.83, 'Desconocido', 'Piscis', 'Armadura de Oro de Piscis', 'afrodita_de_piscis.jpg', 3),
(34, 'Saori Kido (Atena)', '1 de septiembre', 'Santuario, Grecia', 'La reencarnación de la diosa de la sabiduría y la guerra justa. Gobierna la Tierra y guía a sus caballeros con un amor infinito hacia la humanidad.', 'Femenino', 13, 44.00, 1.55, 'Ninguno', 'Ninguna', 'Armadura Divina de Atena', 'athena2.jpg', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id_personaje`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id_personaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
