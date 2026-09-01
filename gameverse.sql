-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2026 a las 21:35:00
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
-- Base de datos: `gameverse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre_equipo` varchar(100) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `nombre_equipo`, `fecha_creacion`, `pais`) VALUES
(1, 'Alpha Squad', '2024-12-01', 'Colombia'),
(2, 'Team Brasil Esports', '2025-02-15', 'Brasil'),
(3, 'Aztecas Gaming', '2025-03-10', 'México'),
(4, 'Euro Elite', '2024-10-05', 'España'),
(5, 'Global Masters', '2024-06-01', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre`, `descripcion`) VALUES
(1, 'RPG', 'Juegos de rol y aventura con progresión de personajes'),
(2, 'Shooter', 'Acción en primera o tercera persona enfocada en disparos'),
(3, 'Estrategia', 'Planificación táctica y gestión de recursos en tiempo real'),
(4, 'Deportes', 'Simuladores de disciplinas deportivas reales'),
(5, 'Carreras', 'Competencias automovilísticas de velocidad y simulación'),
(6, 'Lucha', 'Combates cuerpo a cuerpo en arenas cerradas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `nivel` int(11) DEFAULT 1,
  `fecha_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `nombre_usuario`, `nombre`, `pais`, `nivel`, `fecha_registro`) VALUES
(1, 'X_Gamer', 'Carlos Mendoza', 'Colombia', 45, '2025-01-15'),
(2, 'Valkiria', 'Ana Silva', 'Brasil', 62, '2025-02-10'),
(3, 'Shadow99', 'Luis Gómez', 'México', 12, '2025-03-01'),
(4, 'CyberPro', 'David Jones', 'Estados Unidos', 88, '2024-11-20'),
(5, 'Sakura_Ux', 'Yuki Tanaka', 'Japón', 50, '2025-01-22'),
(6, 'El_Capi', 'Jorge Pérez', 'Argentina', 34, '2025-04-05'),
(7, 'GamerChilensis', 'Sofía Reyes', 'Chile', 27, '2025-02-18'),
(8, 'PixelArt', 'Mateo López', 'España', 19, '2025-05-12'),
(9, 'GhostRider', 'Jean Pierre', 'Francia', 73, '2024-09-14'),
(10, 'Alpha_01', 'William Smith', 'Canadá', 99, '2024-05-01'),
(11, 'Beta_Tester', 'Elena Rossi', 'Italia', 5, '2026-01-10'),
(12, 'Speedy', 'Diego Torres', 'Perú', 41, '2025-06-30'),
(13, 'Kratos_Col', 'Andrés Llanos', 'Colombia', 55, '2024-08-15'),
(14, 'NeonLight', 'Emma Watson', 'Reino Unido', 31, '2025-07-04'),
(15, 'Zeus_Striker', 'Lucas Diaz', 'Uruguay', 23, '2025-08-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador_equipo`
--

CREATE TABLE `jugador_equipo` (
  `id_jugador_equipo` int(11) NOT NULL,
  `id_jugador` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador_equipo`
--

INSERT INTO `jugador_equipo` (`id_jugador_equipo`, `id_jugador`, `id_equipo`, `fecha_ingreso`, `rol`) VALUES
(1, 1, 1, '2025-01-15', 'Capitán'),
(2, 13, 1, '2024-12-05', 'Miembro'),
(3, 3, 1, '2025-03-01', 'Líder Táctico'),
(4, 2, 2, '2025-02-15', 'Capitán'),
(5, 5, 2, '2025-02-20', 'Miembro'),
(6, 12, 2, '2025-06-30', 'Suplente'),
(7, 6, 3, '2025-04-05', 'Capitán'),
(8, 7, 3, '2025-04-10', 'Estratega'),
(9, 15, 3, '2025-08-20', 'Miembro'),
(10, 8, 4, '2025-05-12', 'Miembro'),
(11, 11, 4, '2026-01-10', 'Capitán'),
(12, 14, 4, '2025-07-04', 'Analista'),
(13, 4, 5, '2024-11-20', 'Capitán'),
(14, 9, 5, '2024-11-25', 'Francotirador'),
(15, 10, 5, '2024-11-22', 'Soporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador_logro`
--

CREATE TABLE `jugador_logro` (
  `id_jugador_logro` int(11) NOT NULL,
  `id_jugador` int(11) NOT NULL,
  `id_logro` int(11) NOT NULL,
  `fecha_obtencion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador_logro`
--

INSERT INTO `jugador_logro` (`id_jugador_logro`, `id_jugador`, `id_logro`, `fecha_obtencion`) VALUES
(1, 1, 1, '2025-05-01'),
(2, 1, 17, '2025-05-21'),
(3, 1, 4, '2025-05-02'),
(4, 2, 4, '2025-05-03'),
(5, 2, 5, '2025-05-10'),
(6, 2, 1, '2025-05-04'),
(7, 4, 6, '2025-05-06'),
(8, 4, 19, '2025-05-07'),
(9, 5, 7, '2025-05-08'),
(10, 7, 9, '2025-05-10'),
(11, 7, 16, '2025-05-24'),
(12, 8, 10, '2025-05-11'),
(13, 9, 11, '2025-05-12'),
(14, 9, 6, '2025-05-25'),
(15, 10, 12, '2025-05-14'),
(16, 10, 13, '2025-05-20'),
(17, 11, 14, '2025-05-15'),
(18, 12, 15, '2025-05-16'),
(19, 13, 1, '2025-05-17'),
(20, 13, 14, '2025-05-27'),
(21, 14, 7, '2025-05-19'),
(22, 14, 20, '2025-05-19'),
(23, 15, 10, '2025-05-20'),
(24, 2, 12, '2025-05-22'),
(25, 8, 11, '2025-05-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logros`
--

CREATE TABLE `logros` (
  `id_logro` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `dificultad` varchar(30) DEFAULT NULL,
  `id_videojuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `logros`
--

INSERT INTO `logros` (`id_logro`, `nombre`, `descripcion`, `dificultad`, `id_videojuego`) VALUES
(1, 'Primeros Pasos', 'Completa el tutorial básico', 'Fácil', 1),
(2, 'Héroe Legendario', 'Derrota al jefe final en modo difícil', 'Difícil', 1),
(3, 'Coleccionista', 'Encuentra todos los cofres ocultos', 'Medio', 1),
(4, 'Primera Sangre', 'Consigue la primera baja en multijugador', 'Fácil', 2),
(5, 'Imbatible', 'Gana 10 partidas seguidas sin morir', 'Difícil', 2),
(6, 'Estratega Supremo', 'Gana una partida sin perder unidades', 'Difícil', 3),
(7, 'Rey de la Cancha', 'Anota 5 goles en un solo partido', 'Medio', 4),
(8, 'Campeón de la Copa', 'Gana el torneo mundial', 'Difícil', 4),
(9, 'Vuelta Rápida', 'Rompe el récord de tiempo en pista 1', 'Medio', 5),
(10, 'Perfecto', 'Gana un combate sin recibir daño', 'Difícil', 6),
(11, 'Despertar del Dragón', 'Sube un personaje al nivel máximo', 'Medio', 7),
(12, 'Infiltrado', 'Completa la misión sin ser detectado', 'Medio', 8),
(13, 'General de Oro', 'Alcanza el rango máximo militar', 'Difícil', 8),
(14, 'Constructor', 'Edifica tu primera fortaleza', 'Fácil', 9),
(15, 'As del Volante', 'Gana 50 carreras online', 'Difícil', 10),
(16, 'Derrapador', 'Consigue 5000 puntos en un solo derrape', 'Fácil', 5),
(17, 'Fin del Camino', 'Termina el modo historia', 'Medio', 1),
(18, 'Tirador Preciso', '10 tiros a la cabeza seguidos', 'Difícil', 2),
(19, 'Alianza Global', 'Únete a un clan online', 'Fácil', 3),
(20, 'Novato del Año', 'Juega tu primer partido oficial', 'Fácil', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id_partida` int(11) NOT NULL,
  `fecha_partida` date DEFAULT NULL,
  `duracion_minutos` int(11) DEFAULT NULL,
  `resultado` varchar(30) DEFAULT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  `id_jugador` int(11) NOT NULL,
  `id_videojuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`id_partida`, `fecha_partida`, `duracion_minutos`, `resultado`, `puntuacion`, `id_jugador`, `id_videojuego`) VALUES
(1, '2025-05-01', 45, 'Victoria', 1500, 1, 1),
(2, '2025-05-02', 30, 'Derrota', 400, 1, 2),
(3, '2025-05-03', 20, 'Victoria', 850, 2, 2),
(4, '2025-05-04', 60, 'Victoria', 3000, 2, 1),
(5, '2025-05-05', 15, 'Derrota', 150, 3, 2),
(6, '2025-05-06', 40, 'Victoria', 1200, 4, 3),
(7, '2025-05-07', 90, 'Victoria', 5000, 4, 3),
(8, '2025-05-08', 12, 'Victoria', 600, 5, 4),
(9, '2025-05-09', 25, 'Derrota', 300, 6, 4),
(10, '2025-05-10', 35, 'Victoria', 1100, 7, 5),
(11, '2025-05-11', 18, 'Victoria', 950, 8, 6),
(12, '2025-05-12', 50, 'Victoria', 2200, 9, 7),
(13, '2025-05-13', 30, 'Derrota', 500, 10, 8),
(14, '2025-05-14', 45, 'Victoria', 1800, 10, 8),
(15, '2025-05-15', 55, 'Victoria', 2500, 11, 9),
(16, '2025-05-16', 22, 'Victoria', 800, 12, 10),
(17, '2025-05-17', 40, 'Victoria', 1400, 13, 1),
(18, '2025-05-18', 35, 'Derrota', 450, 13, 2),
(19, '2025-05-19', 15, 'Victoria', 700, 14, 4),
(20, '2025-05-20', 28, 'Victoria', 1050, 15, 6),
(21, '2025-05-21', 65, 'Victoria', 3200, 1, 7),
(22, '2025-05-22', 42, 'Victoria', 1600, 2, 8),
(23, '2025-05-23', 20, 'Derrota', 200, 5, 2),
(24, '2025-05-24', 38, 'Victoria', 1250, 7, 10),
(25, '2025-05-25', 47, 'Victoria', 1900, 9, 3),
(26, '2025-05-26', 14, 'Derrota', 100, 11, 4),
(27, '2025-05-27', 52, 'Victoria', 2100, 13, 9),
(28, '2025-05-28', 33, 'Victoria', 1150, 4, 1),
(29, '2025-05-29', 27, 'Victoria', 900, 6, 5),
(30, '2025-05-30', 61, 'Victoria', 2800, 8, 7),
(31, '2025-05-01', 45, 'Victoria', 1500, 1, 1),
(32, '2025-05-02', 30, 'Derrota', 400, 1, 2),
(33, '2025-05-03', 20, 'Victoria', 850, 2, 2),
(34, '2025-05-04', 60, 'Victoria', 3000, 2, 1),
(35, '2025-05-05', 15, 'Derrota', 150, 3, 2),
(36, '2025-05-06', 40, 'Victoria', 1200, 4, 3),
(37, '2025-05-07', 90, 'Victoria', 5000, 4, 3),
(38, '2025-05-08', 12, 'Victoria', 600, 5, 4),
(39, '2025-05-09', 25, 'Derrota', 300, 6, 4),
(40, '2025-05-10', 35, 'Victoria', 1100, 7, 5),
(41, '2025-05-11', 18, 'Victoria', 950, 8, 6),
(42, '2025-05-12', 50, 'Victoria', 2200, 9, 7),
(43, '2025-05-13', 30, 'Derrota', 500, 10, 8),
(44, '2025-05-14', 45, 'Victoria', 1800, 10, 8),
(45, '2025-05-15', 55, 'Victoria', 2500, 11, 9),
(46, '2025-05-16', 22, 'Victoria', 800, 12, 10),
(47, '2025-05-17', 40, 'Victoria', 1400, 13, 1),
(48, '2025-05-18', 35, 'Derrota', 450, 13, 2),
(49, '2025-05-19', 15, 'Victoria', 700, 14, 4),
(50, '2025-05-20', 28, 'Victoria', 1050, 15, 6),
(51, '2025-05-21', 65, 'Victoria', 3200, 1, 7),
(52, '2025-05-22', 42, 'Victoria', 1600, 2, 8),
(53, '2025-05-23', 20, 'Derrota', 200, 5, 2),
(54, '2025-05-24', 38, 'Victoria', 1250, 7, 10),
(55, '2025-05-25', 47, 'Victoria', 1900, 9, 3),
(56, '2025-05-26', 14, 'Derrota', 100, 11, 4),
(57, '2025-05-27', 52, 'Victoria', 2100, 13, 9),
(58, '2025-05-28', 33, 'Victoria', 1150, 4, 1),
(59, '2025-05-29', 27, 'Victoria', 900, 6, 5),
(60, '2025-05-30', 61, 'Victoria', 2800, 8, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id_videojuego` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `lanzamiento` year(4) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  `clasificacion` varchar(20) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id_videojuego`, `titulo`, `lanzamiento`, `plataforma`, `clasificacion`, `id_genero`) VALUES
(1, 'Mythic Odyssey', '2023', 'PC', 'RPG', 1),
(2, 'Frontline Combat', '2024', 'PS5', 'Mature', 2),
(3, 'Galactic Conquest', '2022', 'PC', 'Everyone', 3),
(4, 'Super Goal 2025', '2025', 'Xbox Series X', 'Everyone', 4),
(5, 'Turbo Asphalt', '2023', 'PS5', 'Everyone', 5),
(6, 'Iron Fist Tournament', '2024', 'PC', 'Teen', 6),
(7, 'Dragon Legends', '2021', 'Nintendo Switch', 'Teen', 1),
(8, 'Shadow Ops', '2025', 'Xbox Series X', 'Mature', 2),
(9, 'Empires at War', '2023', 'PC', 'Teen', 3),
(10, 'Apex Racing', '2024', 'PC', 'Everyone', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD UNIQUE KEY `nombre_equipo` (`nombre_equipo`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `jugador_equipo`
--
ALTER TABLE `jugador_equipo`
  ADD PRIMARY KEY (`id_jugador_equipo`),
  ADD KEY `FK_je_jugadores` (`id_jugador`),
  ADD KEY `FK_je_equipos` (`id_equipo`);

--
-- Indices de la tabla `jugador_logro`
--
ALTER TABLE `jugador_logro`
  ADD PRIMARY KEY (`id_jugador_logro`),
  ADD KEY `FK_jl_jugadores` (`id_jugador`),
  ADD KEY `FK_jl_logros` (`id_logro`);

--
-- Indices de la tabla `logros`
--
ALTER TABLE `logros`
  ADD PRIMARY KEY (`id_logro`),
  ADD KEY `FK_logros_videojuegos` (`id_videojuego`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id_partida`),
  ADD KEY `FK_partidas_jugadores` (`id_jugador`),
  ADD KEY `FK_partidas_videojuegos` (`id_videojuego`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id_videojuego`),
  ADD KEY `FK_videojuegos_generos` (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `jugador_equipo`
--
ALTER TABLE `jugador_equipo`
  MODIFY `id_jugador_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `jugador_logro`
--
ALTER TABLE `jugador_logro`
  MODIFY `id_jugador_logro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `logros`
--
ALTER TABLE `logros`
  MODIFY `id_logro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id_videojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugador_equipo`
--
ALTER TABLE `jugador_equipo`
  ADD CONSTRAINT `FK_je_equipos` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_je_jugadores` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jugador_logro`
--
ALTER TABLE `jugador_logro`
  ADD CONSTRAINT `FK_jl_jugadores` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_jl_logros` FOREIGN KEY (`id_logro`) REFERENCES `logros` (`id_logro`) ON DELETE CASCADE;

--
-- Filtros para la tabla `logros`
--
ALTER TABLE `logros`
  ADD CONSTRAINT `FK_logros_videojuegos` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuegos` (`id_videojuego`) ON DELETE CASCADE;

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `FK_partidas_jugadores` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_partidas_videojuegos` FOREIGN KEY (`id_videojuego`) REFERENCES `videojuegos` (`id_videojuego`) ON DELETE CASCADE;

--
-- Filtros para la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD CONSTRAINT `FK_videojuegos_generos` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
