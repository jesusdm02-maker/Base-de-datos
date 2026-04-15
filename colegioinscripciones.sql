-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2026 a las 02:25:39
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
-- Base de datos: `colegioinscripciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `nombre_cargo`) VALUES
(1, 'Director'),
(2, 'Coordinador'),
(3, 'Docente de Aula'),
(4, 'Administrador'),
(5, 'Secretario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_direccion` int(11) NOT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `avenida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id_direccion`, `calle`, `avenida`) VALUES
(1, 'Calle 1', 'Av. A'),
(2, 'Calle 2', 'Av. B'),
(3, 'Calle 3', 'Av. C'),
(4, 'Calle 4', 'Av. D'),
(5, 'Calle 5', 'Av. E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `nombre`, `cedula`, `titulo`, `id_cargo`) VALUES
(1, 'Carlos Diaz', '15689238', 'Lic. Educación', 1),
(2, 'Elena Mora', '23748908', 'Magister', 2),
(3, 'Jose Cana', '19798435', 'Licenciado', 3),
(4, 'Rosa Lind', '23098764', 'Doctorado', 4),
(5, 'Luis Paz', '26987456', 'Licenciado', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevistas`
--

CREATE TABLE `entrevistas` (
  `id_entrevista` int(11) NOT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `entrevistador` varchar(100) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_representante_inscripcion` int(11) DEFAULT NULL,
  `resultado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrevistas`
--

INSERT INTO `entrevistas` (`id_entrevista`, `fecha`, `entrevistador`, `id_docente`, `id_representante_inscripcion`, `resultado`) VALUES
(1, '2026-05-01', 'Carlos Diaz', 1, 1, 'Exitoso'),
(2, '2026-05-02', 'Elena Mora', 2, 2, 'Exitoso'),
(3, '2026-05-03', 'Jose Cana', 3, 3, 'No Admitido'),
(4, '2026-05-04', 'Rosa Lind', 4, 4, 'Pendiente'),
(5, '2026-05-05', 'Luis Paz', 5, 5, 'Exitoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `id_representante` int(11) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `alergias_condiciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `id_representante`, `nombres`, `apellidos`, `fecha_nacimiento`, `alergias_condiciones`) VALUES
(1, 1, 'Carlitos', 'Perez', '2015-05-10', 'Ninguna'),
(2, 2, 'Mariita', 'Lopez', '2016-06-15', 'Asma'),
(3, 3, 'Luisito', 'Gomez', '2017-07-20', 'Alergico al polvo'),
(4, 4, 'Anita', 'Silva', '2014-08-25', 'Ninguna'),
(5, 5, 'Pedrito', 'Ruiz', '2013-09-30', 'Alérgico al maní');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(50) NOT NULL,
  `cupos_disponibles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre_grado`, `cupos_disponibles`) VALUES
(1, '1er Grado', 30),
(2, '2do Grado', 25),
(3, '3er Grado', 20),
(4, '4to Grado', 15),
(5, '5to Grado', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(50) DEFAULT NULL,
  `codigo_interno` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id_modulo`, `nombre_modulo`, `codigo_interno`, `orden`) VALUES
(1, 'Inscripciones', 'MOD-01', 1),
(2, 'RRHH', 'MOD-02', 2),
(3, 'Finanzas', 'MOD-03', 3),
(4, 'Reportes', 'MOD-04', 4),
(5, 'Seguridad', 'MOD-05', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `id_paginas` int(11) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `nombre_pagina` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paginas`
--

INSERT INTO `paginas` (`id_paginas`, `url`, `nombre_pagina`) VALUES
(1, '/registro', 'Registro Estudiante'),
(2, '/nomina', 'Gestión Nómina'),
(3, '/pagos', 'Control Pagos'),
(4, '/graficas', 'Estadísticas'),
(5, '/usuarios', 'Gestión Usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `accion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `accion`) VALUES
(1, 'Crear'),
(2, 'Leer'),
(3, 'Actualizar'),
(4, 'Eliminar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripciones`
--

CREATE TABLE `preinscripciones` (
  `id_preinscripcion` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_grado_solicitado` int(11) DEFAULT NULL,
  `fecha_solicitud` varchar(50) DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  `promedio_anterior` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preinscripciones`
--

INSERT INTO `preinscripciones` (`id_preinscripcion`, `id_estudiante`, `id_grado_solicitado`, `fecha_solicitud`, `estatus`, `promedio_anterior`) VALUES
(1, 1, 1, '2026-04-01', 'Pendiente', 18.50),
(2, 2, 2, '2026-04-02', 'Aprobado', 19.00),
(3, 3, 3, '2026-04-03', 'Rechazado', 10.00),
(4, 4, 4, '2026-04-04', 'Pendiente', 15.00),
(5, 5, 5, '2026-04-05', 'Aprobado', 17.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes`
--

CREATE TABLE `representantes` (
  `id_representante` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre_completo` varchar(150) NOT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `telefono_principal` varchar(20) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `id_ubicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `representantes`
--

INSERT INTO `representantes` (`id_representante`, `cedula`, `nombre_completo`, `parentesco`, `telefono_principal`, `correo`, `id_ubicacion`) VALUES
(1, '10789987', 'Juan Perez', 'Padre', '0414-111', 'juan@mail.com', 1),
(2, '20678432', 'Maria Lopez', 'Madre', '0424-222', 'maria@mail.com', 2),
(3, '15673899', 'Luis Gomez', 'Abuelo', '0412-333', 'luis@mail.com', 3),
(4, '22748930', 'Ana Silva', 'Madre', '0416-444', 'ana@mail.com', 4),
(5, '17894757', 'Pedro Ruiz', 'Tío', '0414-555', 'pedro@mail.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `cargo`) VALUES
(1, 'Administrador'),
(2, 'Editor'),
(3, 'Visualizador'),
(4, 'Auditor'),
(5, 'Superusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_mp_per`
--

CREATE TABLE `r_mp_per` (
  `id_r_mp_per` int(11) NOT NULL,
  `id_permisos` int(11) DEFAULT NULL,
  `id_modulo_pagina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `r_mp_per`
--

INSERT INTO `r_mp_per` (`id_r_mp_per`, `id_permisos`, `id_modulo_pagina`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_m_p`
--

CREATE TABLE `r_m_p` (
  `id_r_m_p` int(11) NOT NULL,
  `id_usuario_rol` int(11) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `id_paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `r_m_p`
--

INSERT INTO `r_m_p` (`id_r_m_p`, `id_usuario_rol`, `id_modulo`, `id_paginas`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_r_p`
--

CREATE TABLE `r_r_p` (
  `id_r_r_p` int(11) NOT NULL,
  `id_representante` int(11) DEFAULT NULL,
  `id_preinscripcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `r_r_p`
--

INSERT INTO `r_r_p` (`id_r_r_p`, `id_representante`, `id_preinscripcion`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_u_r`
--

CREATE TABLE `r_u_r` (
  `id_r_u_r` int(11) NOT NULL,
  `id_usuarios` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `r_u_r`
--

INSERT INTO `r_u_r` (`id_r_u_r`, `id_usuarios`, `id_rol`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `avenida` varchar(50) DEFAULT NULL,
  `num_casa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_ubicacion`, `municipio`, `calle`, `avenida`, `num_casa`) VALUES
(1, 'Maracaibo', 'Calle 72', 'Av. 15', '51-777'),
(2, 'San Francisco', 'Calle 70', 'Av. 5', '21-333'),
(3, 'Maracaibo', 'Calle 74', 'Av. 168', '01-03'),
(4, 'Maracaibo', 'Calle 15', 'Av. 124', '145-95'),
(5, 'San Francisco', 'Calle 87', 'Av. 148', '124-85');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_direccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `id_direccion`) VALUES
(1, 'Admin1', 1),
(2, 'User2', 2),
(3, 'User3', 3),
(4, 'User4', 4),
(5, 'User5', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id_direccion`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD PRIMARY KEY (`id_entrevista`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_representante_inscripcion` (`id_representante_inscripcion`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_representante` (`id_representante`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id_paginas`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`);

--
-- Indices de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD PRIMARY KEY (`id_preinscripcion`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grado_solicitado` (`id_grado_solicitado`);

--
-- Indices de la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD PRIMARY KEY (`id_representante`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `id_ubicacion` (`id_ubicacion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `r_mp_per`
--
ALTER TABLE `r_mp_per`
  ADD PRIMARY KEY (`id_r_mp_per`),
  ADD KEY `id_permisos` (`id_permisos`),
  ADD KEY `id_modulo_pagina` (`id_modulo_pagina`);

--
-- Indices de la tabla `r_m_p`
--
ALTER TABLE `r_m_p`
  ADD PRIMARY KEY (`id_r_m_p`),
  ADD KEY `id_modulo` (`id_modulo`),
  ADD KEY `id_paginas` (`id_paginas`),
  ADD KEY `id_usuario_rol` (`id_usuario_rol`);

--
-- Indices de la tabla `r_r_p`
--
ALTER TABLE `r_r_p`
  ADD PRIMARY KEY (`id_r_r_p`),
  ADD KEY `id_representante` (`id_representante`),
  ADD KEY `id_preinscripcion` (`id_preinscripcion`);

--
-- Indices de la tabla `r_u_r`
--
ALTER TABLE `r_u_r`
  ADD PRIMARY KEY (`id_r_u_r`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_direccion` (`id_direccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  MODIFY `id_entrevista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id_paginas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  MODIFY `id_preinscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `representantes`
--
ALTER TABLE `representantes`
  MODIFY `id_representante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `r_mp_per`
--
ALTER TABLE `r_mp_per`
  MODIFY `id_r_mp_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `r_m_p`
--
ALTER TABLE `r_m_p`
  MODIFY `id_r_m_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `r_r_p`
--
ALTER TABLE `r_r_p`
  MODIFY `id_r_r_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `r_u_r`
--
ALTER TABLE `r_u_r`
  MODIFY `id_r_u_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`);

--
-- Filtros para la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD CONSTRAINT `entrevistas_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`),
  ADD CONSTRAINT `entrevistas_ibfk_2` FOREIGN KEY (`id_representante_inscripcion`) REFERENCES `r_r_p` (`id_r_r_p`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_representante`) REFERENCES `representantes` (`id_representante`);

--
-- Filtros para la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD CONSTRAINT `preinscripciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `preinscripciones_ibfk_2` FOREIGN KEY (`id_grado_solicitado`) REFERENCES `grados` (`id_grado`);

--
-- Filtros para la tabla `representantes`
--
ALTER TABLE `representantes`
  ADD CONSTRAINT `representantes_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `r_mp_per`
--
ALTER TABLE `r_mp_per`
  ADD CONSTRAINT `r_mp_per_ibfk_1` FOREIGN KEY (`id_permisos`) REFERENCES `permisos` (`id_permisos`),
  ADD CONSTRAINT `r_mp_per_ibfk_2` FOREIGN KEY (`id_modulo_pagina`) REFERENCES `r_m_p` (`id_r_m_p`);

--
-- Filtros para la tabla `r_m_p`
--
ALTER TABLE `r_m_p`
  ADD CONSTRAINT `r_m_p_ibfk_1` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`),
  ADD CONSTRAINT `r_m_p_ibfk_2` FOREIGN KEY (`id_paginas`) REFERENCES `paginas` (`id_paginas`),
  ADD CONSTRAINT `r_m_p_ibfk_3` FOREIGN KEY (`id_usuario_rol`) REFERENCES `r_u_r` (`id_r_u_r`);

--
-- Filtros para la tabla `r_r_p`
--
ALTER TABLE `r_r_p`
  ADD CONSTRAINT `r_r_p_ibfk_1` FOREIGN KEY (`id_representante`) REFERENCES `representantes` (`id_representante`),
  ADD CONSTRAINT `r_r_p_ibfk_2` FOREIGN KEY (`id_preinscripcion`) REFERENCES `preinscripciones` (`id_preinscripcion`);

--
-- Filtros para la tabla `r_u_r`
--
ALTER TABLE `r_u_r`
  ADD CONSTRAINT `r_u_r_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `r_u_r_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id_direccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
