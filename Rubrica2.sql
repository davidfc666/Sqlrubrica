-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-02-2018 a las 13:08:00
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Rubrica2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Centro`
--

CREATE TABLE `Centro` (
  `ID_Centro` int(11) NOT NULL,
  `COD_Centro` varchar(10) NOT NULL,
  `DESC_Centro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Centro`
--

INSERT INTO `Centro` (`ID_Centro`, `COD_Centro`, `DESC_Centro`) VALUES
(1, '015110', 'CIFP Txurdinaga LHII'),
(2, '015111', 'CIFP Elorrieta'),
(4, '00000', 'SUPERCENTRO'),
(5, '22222', 'CENTROEJEM'),
(6, '33', 'ssss'),
(7, '33', 'ssss'),
(8, '33', 'ssss'),
(9, '787979', 'hjkhkhk'),
(10, '787979', 'hjkhkhk'),
(11, '678678', 'tyutyutu'),
(12, '678678', 'tyutyutu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ciclo`
--

CREATE TABLE `Ciclo` (
  `ID_Ciclo` int(11) NOT NULL,
  `ID_Centro` int(11) NOT NULL,
  `ID_Curso` int(11) NOT NULL,
  `COD_Ciclo` varchar(10) NOT NULL,
  `DESC_Ciclo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Ciclo`
--

INSERT INTO `Ciclo` (`ID_Ciclo`, `ID_Centro`, `ID_Curso`, `COD_Ciclo`, `DESC_Ciclo`) VALUES
(4, 1, 1, '2DW3', 'Desarrollo web'),
(5, 1, 4, '2DM3', 'Desarrollo Multiplataforma'),
(6, 2, 1, '2DW3', 'Desarrollo Web'),
(7, 2, 4, '2DM3', 'Desarrollo Multiplataforma'),
(8, 5, 6, '1XY3', 'xUY3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Competencia`
--

CREATE TABLE `Competencia` (
  `ID_Competencia` int(11) NOT NULL,
  `DESC_Competencia` varchar(50) NOT NULL,
  `Mal` varchar(250) NOT NULL,
  `Regular` varchar(250) NOT NULL,
  `Bien` varchar(250) NOT NULL,
  `Excelente` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Competencia`
--

INSERT INTO `Competencia` (`ID_Competencia`, `DESC_Competencia`, `Mal`, `Regular`, `Bien`, `Excelente`) VALUES
(1, 'TRABAJO CON LOS COMPAÑEROS', 'Raramente escucha, comparte y apoya el esfuerzo de otros. Frecuentemente no es un buen miembro del grupo.', 'A veces escucha, comparte y apoya el esfuerzo de otros, pero algunas veces no es un buen miembro del grupo.', 'Usualmente escucha, comparte y apoya el esfuerzo de otros. No causa \"problemas\" en el grupo.', 'Casi siempre escucha, comparte y apoya el esfuerzo de otros. Trata  de mantener la unión de los miembros.'),
(2, 'ACTITUD', 'Tiene una actitud negativa hacia el trabajo.', 'Algunas veces tiene una actitud positiva hacia el trabajo.', 'Casi siempre tiene una actitud positiva hacia el trabajo.', 'Siempre tiene una actitud positiva hacia el trabajo.'),
(3, 'RESOLUCIÓN DE PROBLEMAS', 'No trata de resolver problemas o ayudar a otros a resolverlos. Deja a otros hacer el trabajo.', 'No sugiere  soluciones, pero está dispuesto a tratar soluciones propuestas por otros.', 'Refina soluciones sugeridas por otros.', 'Busca y sugiere soluciones a los problemas.'),
(4, 'CLIMA DE TRABAJO', 'No ha habido intercambio de información y puesta en común en el grupo.', 'La puesta en común ha resultado significativamente insuficiente.', 'La puesta en común ha sido algo insuficiente. El clima de trabajo en el grupo ha sido adecuado.', 'El clima de trabajo dentro de los grupos y en las actividades comunes ha sido adecuado. Ha existido bastante intercambio de información en el grupo.'),
(5, 'SEGURIDAD EN LA EXPOSICION DE SU TRABAJO', 'Durante su puesta en común no expone con seguridad su trabajo', 'Durante su puesta encomún no siempre actúa con seguridad en la exposición de su trabajo', '', 'En su puesta en común actúa con seguridad en la exposición y presentación del trabajo'),
(6, 'VOCABULARIO', 'Utiliza un vocabulario limitado y repite palabras', 'Utiliza vocabulario limitado', '', 'Es capaz de utilizar un vocabulario amplio y sin repetir palabras.'),
(7, 'POSTURA', 'No logra mantenerse erguido. Tiende a apoyarse y moverse. No mira al curso durante su exposición.', 'Ocasionalmente logra mantenerse erguido.Tiende a apoyarse y moverse y/o a mirar a su curso.', '', 'Muestra una buena posición corporal,manteniéndose erguido durante su disertación, mirando permanentemente a su curso'),
(8, 'PRONUNCIACION Y MODULACION', 'Existe poca claridad en la pronunciación y modulación de palabras.', '', 'Pronuncia y modula correctamente, (se aceptan dos errores)', 'Es capaz de pronunciar y modular correctamente todas las palabras.'),
(9, 'ELABORACIÓN DE LAS TAREAS', ' Nulo o escaso trabajo de elaboración de las tareas.', 'Insuficiente grado de elaboración de las tareas.', 'Las tareas realizadas se han ajustado a lo solicitado. Escaso grado de originalidad.', 'Las tareas realizadas han sido  interesantes y originales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE `Curso` (
  `ID_Curso` int(11) NOT NULL,
  `COD_Curso` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Curso`
--

INSERT INTO `Curso` (`ID_Curso`, `COD_Curso`) VALUES
(1, '2017-2018'),
(4, '2018-2019'),
(5, '2019-2020'),
(6, '3019-3020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Equipo`
--

CREATE TABLE `Equipo` (
  `ID_Equipo` int(11) NOT NULL,
  `ID_Reto` int(11) NOT NULL,
  `COD_Equipo` varchar(10) NOT NULL,
  `DESC_Equipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Equipo`
--

INSERT INTO `Equipo` (`ID_Equipo`, `ID_Reto`, `COD_Equipo`, `DESC_Equipo`) VALUES
(1, 33, 'gg', 'gg'),
(2, 37, 'GRUPOADN', 'Grupo guay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Equipo_Usuario`
--

CREATE TABLE `Equipo_Usuario` (
  `ID_Equipo_Alumno` int(11) NOT NULL,
  `ID_Equipo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `COD_Rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Equipo_Usuario`
--

INSERT INTO `Equipo_Usuario` (`ID_Equipo_Alumno`, `ID_Equipo`, `ID_Usuario`, `COD_Rol`) VALUES
(1, 1, 2, 'Responsable comunicación'),
(2, 2, 20, 'Coordinador/ra'),
(3, 2, 19, 'Secretario/a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GrupoCompetencia`
--

CREATE TABLE `GrupoCompetencia` (
  `ID_Grupo_Competencia` int(11) NOT NULL,
  `DESC_Grupo_Competencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `GrupoCompetencia`
--

INSERT INTO `GrupoCompetencia` (`ID_Grupo_Competencia`, `DESC_Grupo_Competencia`) VALUES
(1, 'TRABAJO EN EQUIPO'),
(2, 'PRESENTACION Y COMUNICACION'),
(3, 'TRABAJO INDIVIDUAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicion`
--

CREATE TABLE `Medicion` (
  `ID_Medicion` int(11) NOT NULL,
  `ID_TUsuario` int(11) NOT NULL,
  `COD_Medicion` varchar(10) NOT NULL,
  `DESC_Medicion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Medicion`
--

INSERT INTO `Medicion` (`ID_Medicion`, `ID_TUsuario`, `COD_Medicion`, `DESC_Medicion`) VALUES
(1, 3, 'TRANS_ALU', 'Mediciones transversales de ALUMNO'),
(3, 2, 'TRANS_PROF', 'Mediciones transversales de PROFESOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicion_GrupoCompetencia_Competencia`
--

CREATE TABLE `Medicion_GrupoCompetencia_Competencia` (
  `ID_GrupoCompetencia_Competencia` int(11) NOT NULL,
  `ID_Medicion` int(11) NOT NULL,
  `ID_GrupoCompetencia` int(11) NOT NULL,
  `ID_Competencia` int(11) NOT NULL,
  `Porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Medicion_GrupoCompetencia_Competencia`
--

INSERT INTO `Medicion_GrupoCompetencia_Competencia` (`ID_GrupoCompetencia_Competencia`, `ID_Medicion`, `ID_GrupoCompetencia`, `ID_Competencia`, `Porcentaje`) VALUES
(1, 1, 1, 1, 15),
(2, 1, 1, 2, 15),
(3, 1, 1, 3, 10),
(4, 1, 1, 4, 20),
(5, 1, 3, 9, 40),
(6, 3, 1, 1, 20),
(7, 3, 1, 2, 10),
(8, 3, 1, 3, 5),
(9, 3, 1, 4, 10),
(10, 3, 2, 5, 5),
(11, 3, 2, 6, 5),
(12, 3, 2, 7, 3),
(13, 3, 2, 8, 2),
(14, 3, 3, 9, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modulo`
--

CREATE TABLE `Modulo` (
  `ID_Modulo` int(11) NOT NULL,
  `ID_Ciclo` int(11) NOT NULL,
  `COD_Modulo` varchar(10) NOT NULL,
  `DESC_Modulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Modulo`
--

INSERT INTO `Modulo` (`ID_Modulo`, `ID_Ciclo`, `COD_Modulo`, `DESC_Modulo`) VALUES
(1, 4, 'DWS', 'Desarrollo Web Servidor'),
(2, 4, 'DAW', 'Despliegue Aplicaciones Web'),
(3, 4, 'DIW', 'Diseño Interfaces Web'),
(4, 4, 'DWC', 'Desarrollo Web Cliente'),
(5, 8, '1XMod', 'modulo y3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Notas`
--

CREATE TABLE `Notas` (
  `ID_Nota` int(11) NOT NULL,
  `ID_Reto` int(11) NOT NULL,
  `ID_Medicion` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Competencia` int(11) NOT NULL,
  `Nota` double(5,3) NOT NULL,
  `ID_Evaluador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Notas`
--

INSERT INTO `Notas` (`ID_Nota`, `ID_Reto`, `ID_Medicion`, `ID_Usuario`, `ID_Competencia`, `Nota`, `ID_Evaluador`) VALUES
(1, 37, 1, 20, 1, 0.750, 20),
(2, 37, 1, 20, 2, 0.750, 20),
(3, 37, 1, 20, 3, 0.500, 20),
(4, 37, 1, 20, 9, 2.000, 20),
(5, 37, 1, 20, 4, 1.000, 20),
(6, 37, 3, 20, 1, 1.000, 19),
(7, 37, 3, 20, 2, 0.500, 19),
(8, 37, 3, 20, 6, 0.250, 19),
(9, 37, 3, 20, 4, 0.500, 19),
(10, 37, 3, 20, 3, 0.250, 19),
(11, 37, 3, 20, 8, 0.100, 19),
(12, 37, 3, 20, 7, 0.150, 19),
(13, 37, 3, 20, 9, 2.000, 19),
(14, 37, 3, 20, 5, 0.250, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reto`
--

CREATE TABLE `Reto` (
  `ID_Reto` int(11) NOT NULL,
  `COD_Reto` varchar(10) NOT NULL,
  `DESC_Reto` varchar(50) NOT NULL,
  `ID_Centro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Reto`
--

INSERT INTO `Reto` (`ID_Reto`, `COD_Reto`, `DESC_Reto`, `ID_Centro`) VALUES
(33, 'aaaa', 'kjhjkhukhuaaaa', 1),
(36, 'Dd', 'DDdddd', 2),
(37, 'Reto ejem', 'reto de 1xy3', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reto_Medicion`
--

CREATE TABLE `Reto_Medicion` (
  `ID_Reto_Medicion` int(11) NOT NULL,
  `ID_Reto` int(11) NOT NULL,
  `ID_Medicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reto_Modulo`
--

CREATE TABLE `Reto_Modulo` (
  `ID_Reto_modulo` int(11) NOT NULL,
  `ID_Reto` int(11) NOT NULL,
  `ID_Modulo` int(11) NOT NULL,
  `ID_UAdmin` int(11) NOT NULL,
  `IN_Extendido` tinyint(1) NOT NULL,
  `IN_EAbierta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Reto_Modulo`
--

INSERT INTO `Reto_Modulo` (`ID_Reto_modulo`, `ID_Reto`, `ID_Modulo`, `ID_UAdmin`, `IN_Extendido`, `IN_EAbierta`) VALUES
(12, 33, 2, 10, 0, 0),
(49, 33, 1, 4, 0, 0),
(87, 37, 5, 19, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TEvaluador`
--

CREATE TABLE `TEvaluador` (
  `ID_TEvaluador` int(11) NOT NULL,
  `DESC_TEvaluador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TNEvaluador`
--

CREATE TABLE `TNEvaluador` (
  `ID_TNEvaluador` int(11) NOT NULL,
  `DESC_TNEvaluador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TUsuario`
--

CREATE TABLE `TUsuario` (
  `ID_TUsuario` int(11) NOT NULL,
  `DESC_TUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `TUsuario`
--

INSERT INTO `TUsuario` (`ID_TUsuario`, `DESC_TUsuario`) VALUES
(1, 'Administrador'),
(2, 'Profesor'),
(3, 'Alumno'),
(4, 'Admin_Centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `ID_Centro` int(11) NOT NULL,
  `ID_TUsuario` int(11) NOT NULL,
  `User` varchar(15) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Dni` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`ID_Usuario`, `ID_Centro`, `ID_TUsuario`, `User`, `Password`, `Nombre`, `Apellidos`, `Email`, `Dni`) VALUES
(1, 1, 3, 'Alcasen', 'Alcasen', 'Alcasen', 'Kasraoui', 'Alcasen@gmail.com', 'Alcasen123'),
(2, 1, 3, 'Nerea', 'Nerea', 'Nerea', 'Lopez', 'Nerea@gmail.com', '77777777A'),
(3, 1, 3, 'David', 'David', 'David', 'Fernandez', 'David@gmail.com', 'David123'),
(4, 1, 2, 'Roman', '', 'Roman', 'Olea', 'Roman@gmail.com', 'Roman123'),
(5, 1, 4, 'Guillermo', 'Guillermo', 'Guillermo', 'Jefe', 'Guillermo@gmail.com', 'Guillermo123'),
(7, 1, 3, 'DavidIzc', 'DavidIzc', 'DavidIzc', 'Izcara', 'DavidIzc@gmail.com', 'DavidIzc123'),
(8, 1, 3, 'Izaskun', '', 'Izaskun', 'Boada', 'Izaskun@gmail.com', 'Izaskun123'),
(9, 1, 2, 'Insausti', '', 'Jose Manuel', 'Insausti', 'Insausti@gmail.com', 'Insausti123'),
(10, 1, 2, 'Carlos', 'Carlos', 'Carlos', 'Felipe', 'Carlos@gmail.com', 'Carlos123'),
(11, 1, 2, 'Esteban', 'Esteban', 'Esteban', 'Martin', 'Esteban@gmail.com', 'Esteban123'),
(12, 4, 1, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin'),
(18, 4, 1, 'David20', '7788994Z', 'David', 'Izcara', 'david.izkara@gmail.com', '7788994Z'),
(19, 5, 2, 'Felipe22', '123456', 'Felipe', 'APeFELOX', 'alcasenk@gmail.com', '123456'),
(20, 5, 3, 'alumno22', '77777777A', 'alumno', 'apellido', 'alcasenk@gmail.com', '77777777A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario_Modulo`
--

CREATE TABLE `Usuario_Modulo` (
  `ID_Usuario_Modulo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario_Modulo`
--

INSERT INTO `Usuario_Modulo` (`ID_Usuario_Modulo`, `ID_Usuario`, `ID_Modulo`) VALUES
(6, 2, 1),
(1, 2, 3),
(3, 4, 1),
(5, 9, 4),
(2, 10, 2),
(4, 11, 3),
(7, 19, 5),
(8, 20, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Centro`
--
ALTER TABLE `Centro`
  ADD PRIMARY KEY (`ID_Centro`);

--
-- Indices de la tabla `Ciclo`
--
ALTER TABLE `Ciclo`
  ADD PRIMARY KEY (`ID_Ciclo`),
  ADD KEY `ID_Curso` (`ID_Curso`),
  ADD KEY `ID_Centro` (`ID_Centro`,`ID_Curso`) USING BTREE;

--
-- Indices de la tabla `Competencia`
--
ALTER TABLE `Competencia`
  ADD PRIMARY KEY (`ID_Competencia`);

--
-- Indices de la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Indices de la tabla `Equipo`
--
ALTER TABLE `Equipo`
  ADD PRIMARY KEY (`ID_Equipo`),
  ADD KEY `ID_Reto` (`ID_Reto`),
  ADD KEY `ID_Reto_Modulo` (`ID_Reto`);

--
-- Indices de la tabla `Equipo_Usuario`
--
ALTER TABLE `Equipo_Usuario`
  ADD PRIMARY KEY (`ID_Equipo_Alumno`),
  ADD KEY `ID_Equipo` (`ID_Equipo`,`ID_Usuario`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `GrupoCompetencia`
--
ALTER TABLE `GrupoCompetencia`
  ADD PRIMARY KEY (`ID_Grupo_Competencia`);

--
-- Indices de la tabla `Medicion`
--
ALTER TABLE `Medicion`
  ADD PRIMARY KEY (`ID_Medicion`),
  ADD KEY `ID_TUsuario` (`ID_TUsuario`);

--
-- Indices de la tabla `Medicion_GrupoCompetencia_Competencia`
--
ALTER TABLE `Medicion_GrupoCompetencia_Competencia`
  ADD PRIMARY KEY (`ID_GrupoCompetencia_Competencia`),
  ADD KEY `ID_GrupoCompetencia` (`ID_GrupoCompetencia`,`ID_Competencia`),
  ADD KEY `ID_Competencia` (`ID_Competencia`),
  ADD KEY `ID_Medicion` (`ID_Medicion`);

--
-- Indices de la tabla `Modulo`
--
ALTER TABLE `Modulo`
  ADD PRIMARY KEY (`ID_Modulo`),
  ADD KEY `ID_Ciclo` (`ID_Ciclo`);

--
-- Indices de la tabla `Notas`
--
ALTER TABLE `Notas`
  ADD PRIMARY KEY (`ID_Nota`),
  ADD KEY `ID_Reto` (`ID_Reto`,`ID_Usuario`,`ID_Competencia`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_Competencia` (`ID_Competencia`),
  ADD KEY `ID_Medicion` (`ID_Medicion`),
  ADD KEY `ID_Evaluador` (`ID_Evaluador`);

--
-- Indices de la tabla `Reto`
--
ALTER TABLE `Reto`
  ADD PRIMARY KEY (`ID_Reto`),
  ADD KEY `ID_Centro` (`ID_Centro`);

--
-- Indices de la tabla `Reto_Medicion`
--
ALTER TABLE `Reto_Medicion`
  ADD PRIMARY KEY (`ID_Reto_Medicion`),
  ADD KEY `ID_Reto` (`ID_Reto`,`ID_Medicion`),
  ADD KEY `ID_Medicion` (`ID_Medicion`);

--
-- Indices de la tabla `Reto_Modulo`
--
ALTER TABLE `Reto_Modulo`
  ADD PRIMARY KEY (`ID_Reto_modulo`),
  ADD KEY `ID_Reto` (`ID_Reto`,`ID_Modulo`,`ID_UAdmin`),
  ADD KEY `ID_Modulo` (`ID_Modulo`),
  ADD KEY `ID_UAdmin` (`ID_UAdmin`);

--
-- Indices de la tabla `TEvaluador`
--
ALTER TABLE `TEvaluador`
  ADD PRIMARY KEY (`ID_TEvaluador`);

--
-- Indices de la tabla `TNEvaluador`
--
ALTER TABLE `TNEvaluador`
  ADD PRIMARY KEY (`ID_TNEvaluador`);

--
-- Indices de la tabla `TUsuario`
--
ALTER TABLE `TUsuario`
  ADD PRIMARY KEY (`ID_TUsuario`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Centro` (`ID_Centro`,`ID_TUsuario`),
  ADD KEY `ID_TUsuario` (`ID_TUsuario`);

--
-- Indices de la tabla `Usuario_Modulo`
--
ALTER TABLE `Usuario_Modulo`
  ADD PRIMARY KEY (`ID_Usuario_Modulo`),
  ADD KEY `ID_Usuario` (`ID_Usuario`,`ID_Modulo`),
  ADD KEY `ID_Modulo` (`ID_Modulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Centro`
--
ALTER TABLE `Centro`
  MODIFY `ID_Centro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Ciclo`
--
ALTER TABLE `Ciclo`
  MODIFY `ID_Ciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Competencia`
--
ALTER TABLE `Competencia`
  MODIFY `ID_Competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Curso`
--
ALTER TABLE `Curso`
  MODIFY `ID_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Equipo`
--
ALTER TABLE `Equipo`
  MODIFY `ID_Equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Equipo_Usuario`
--
ALTER TABLE `Equipo_Usuario`
  MODIFY `ID_Equipo_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `GrupoCompetencia`
--
ALTER TABLE `GrupoCompetencia`
  MODIFY `ID_Grupo_Competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Medicion`
--
ALTER TABLE `Medicion`
  MODIFY `ID_Medicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Medicion_GrupoCompetencia_Competencia`
--
ALTER TABLE `Medicion_GrupoCompetencia_Competencia`
  MODIFY `ID_GrupoCompetencia_Competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `Modulo`
--
ALTER TABLE `Modulo`
  MODIFY `ID_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Notas`
--
ALTER TABLE `Notas`
  MODIFY `ID_Nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `Reto`
--
ALTER TABLE `Reto`
  MODIFY `ID_Reto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `Reto_Medicion`
--
ALTER TABLE `Reto_Medicion`
  MODIFY `ID_Reto_Medicion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Reto_Modulo`
--
ALTER TABLE `Reto_Modulo`
  MODIFY `ID_Reto_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `TEvaluador`
--
ALTER TABLE `TEvaluador`
  MODIFY `ID_TEvaluador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TNEvaluador`
--
ALTER TABLE `TNEvaluador`
  MODIFY `ID_TNEvaluador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TUsuario`
--
ALTER TABLE `TUsuario`
  MODIFY `ID_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `Usuario_Modulo`
--
ALTER TABLE `Usuario_Modulo`
  MODIFY `ID_Usuario_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Ciclo`
--
ALTER TABLE `Ciclo`
  ADD CONSTRAINT `Ciclo_ibfk_2` FOREIGN KEY (`ID_Centro`) REFERENCES `Centro` (`ID_Centro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ciclo_ibfk_3` FOREIGN KEY (`ID_Curso`) REFERENCES `Curso` (`ID_Curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Equipo`
--
ALTER TABLE `Equipo`
  ADD CONSTRAINT `Equipo_ibfk_1` FOREIGN KEY (`ID_Reto`) REFERENCES `Reto` (`ID_Reto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Equipo_Usuario`
--
ALTER TABLE `Equipo_Usuario`
  ADD CONSTRAINT `Equipo_Usuario_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario` (`ID_Usuario`),
  ADD CONSTRAINT `Equipo_Usuario_ibfk_3` FOREIGN KEY (`ID_Equipo`) REFERENCES `Equipo` (`ID_Equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Medicion`
--
ALTER TABLE `Medicion`
  ADD CONSTRAINT `Medicion_ibfk_1` FOREIGN KEY (`ID_TUsuario`) REFERENCES `TUsuario` (`ID_TUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Medicion_GrupoCompetencia_Competencia`
--
ALTER TABLE `Medicion_GrupoCompetencia_Competencia`
  ADD CONSTRAINT `Medicion_GrupoCompetencia_Competencia_ibfk_4` FOREIGN KEY (`ID_Competencia`) REFERENCES `Competencia` (`ID_Competencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Medicion_GrupoCompetencia_Competencia_ibfk_5` FOREIGN KEY (`ID_GrupoCompetencia`) REFERENCES `GrupoCompetencia` (`ID_Grupo_Competencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Medicion_GrupoCompetencia_Competencia_ibfk_6` FOREIGN KEY (`ID_Medicion`) REFERENCES `Medicion` (`ID_Medicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Modulo`
--
ALTER TABLE `Modulo`
  ADD CONSTRAINT `Modulo_ibfk_1` FOREIGN KEY (`ID_Ciclo`) REFERENCES `Ciclo` (`ID_Ciclo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Notas`
--
ALTER TABLE `Notas`
  ADD CONSTRAINT `Notas_ibfk_10` FOREIGN KEY (`ID_Evaluador`) REFERENCES `Usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notas_ibfk_6` FOREIGN KEY (`ID_Competencia`) REFERENCES `Competencia` (`ID_Competencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notas_ibfk_7` FOREIGN KEY (`ID_Medicion`) REFERENCES `Medicion` (`ID_Medicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notas_ibfk_8` FOREIGN KEY (`ID_Reto`) REFERENCES `Reto` (`ID_Reto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notas_ibfk_9` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Reto`
--
ALTER TABLE `Reto`
  ADD CONSTRAINT `Reto_ibfk_1` FOREIGN KEY (`ID_Centro`) REFERENCES `Centro` (`ID_Centro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Reto_Medicion`
--
ALTER TABLE `Reto_Medicion`
  ADD CONSTRAINT `Reto_Medicion_ibfk_2` FOREIGN KEY (`ID_Medicion`) REFERENCES `Medicion` (`ID_Medicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reto_Medicion_ibfk_3` FOREIGN KEY (`ID_Reto`) REFERENCES `Reto` (`ID_Reto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Reto_Modulo`
--
ALTER TABLE `Reto_Modulo`
  ADD CONSTRAINT `Reto_Modulo_ibfk_5` FOREIGN KEY (`ID_Modulo`) REFERENCES `Modulo` (`ID_Modulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reto_Modulo_ibfk_6` FOREIGN KEY (`ID_Reto`) REFERENCES `Reto` (`ID_Reto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reto_Modulo_ibfk_7` FOREIGN KEY (`ID_UAdmin`) REFERENCES `Usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `Usuario_ibfk_2` FOREIGN KEY (`ID_Centro`) REFERENCES `Centro` (`ID_Centro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Usuario_ibfk_3` FOREIGN KEY (`ID_TUsuario`) REFERENCES `TUsuario` (`ID_TUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Usuario_Modulo`
--
ALTER TABLE `Usuario_Modulo`
  ADD CONSTRAINT `Usuario_Modulo_ibfk_2` FOREIGN KEY (`ID_Modulo`) REFERENCES `Modulo` (`ID_Modulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Usuario_Modulo_ibfk_3` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
