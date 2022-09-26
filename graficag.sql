-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2022 at 09:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graficag`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`ID_CATEGORIA`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 'Tipo producto 1', 'Tipo producto 1', '2022-07-16 19:31:57', NULL, '2022-08-31 17:58:35', 0),
(2, 'Tipo producto 2', 'Tipo producto 2', '2022-07-16 19:32:20', NULL, '2022-08-31 17:58:38', 0),
(3, 'Tipo producto 3', 'Tipo producto 3', '2022-07-16 19:32:20', NULL, '2022-08-31 17:58:40', 0),
(4, 'Tipo producto 4', 'Tipo producto 4', '2022-07-16 19:32:20', NULL, '2022-08-31 17:58:42', 0),
(5, 'Tipo producto 5', 'Tipo producto 5', '2022-07-16 19:32:20', NULL, '2022-08-31 17:58:45', 0),
(6, 'Categoria nuevaa', 'Descripcion de categoria nueva', '2022-07-18 21:44:12', '2022-08-31 17:56:38', '2022-08-31 17:58:32', 0),
(7, 'GRIFFITH DRILLING', NULL, '2022-08-29 18:04:39', NULL, NULL, 1),
(8, 'Acrilicos Separadores', NULL, '2022-08-31 17:59:03', NULL, NULL, 1),
(9, 'Telas PVC Impresa', NULL, '2022-08-31 17:59:13', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(10) UNSIGNED NOT NULL,
  `RUT` varchar(15) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CORREO` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_EMPRESA` int(11) DEFAULT NULL,
  `TIPO_CLIENTE` varchar(15) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CELULAR` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `TELEFONO` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `SITIO_WEB` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `OBSERVACION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `RUT`, `CORREO`, `ID_EMPRESA`, `TIPO_CLIENTE`, `NOMBRE`, `CELULAR`, `TELEFONO`, `DIRECCION`, `SITIO_WEB`, `OBSERVACION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, '99999999', 'correo@gmail.com', 1, 'persona', 'Cliente nro 1', '2222', '3333', 'avda siempre viva 1', 'www.paginaweb.cl', '1', '2022-08-17 19:23:57', '2022-07-18 21:14:04', NULL, 1),
(2, '9999999', 'correo@gmail.com', 2, 'empresa', 'Juanito Perez', '0', '0', 'avda siempre viva 2', 'www.paginaweb.cl', 'observacion, no aplica.', '2022-07-18 21:14:38', NULL, '2022-08-31 14:48:10', 0),
(3, '88888888', 'correo@gmail.com', 3, 'empresa', 'Pedro Urdemales', '1123', '3321', 'avda siempre viva 1', 'www.paginaweb.cl', '2231', '2022-07-18 21:15:32', NULL, NULL, 1),
(4, '888888882', 'correo@hotmail.com', 4, 'persona', 'Cliente nuevo', '1123', '3321', 'casa', 'www.paginaweb.cl', '2231', '2022-07-18 21:16:11', NULL, '2022-08-31 14:48:08', 0),
(5, ' ', 'pdina@clielqui.cl', 5, NULL, 'Patricio Dinamarca', '+56985412228', '512845784', NULL, NULL, 'Jefe de Adquisiciones', '2022-08-31 16:04:05', '2022-08-31 17:05:17', NULL, 1),
(6, ' ', 'ivo@abogados.cl', 0, NULL, 'Ivo Valdivia', '+56975412547', ' ', NULL, NULL, 'Abogado Penalista', '2022-08-31 16:09:47', '2022-08-31 17:05:10', NULL, 1),
(7, ' ', 'raul@griffithd.com', 6, NULL, 'Raul Bastia', '+56912045741', '512441511', NULL, NULL, 'Jefe de Adquisiciones', '2022-08-31 16:13:20', '2022-08-31 17:04:50', NULL, 1),
(8, ' ', 'paola@yahoo.com', 0, NULL, 'Paola Tapia', '+56921458744', '512556322', NULL, NULL, 'Jardin Infantil Girasoles', '2022-08-31 16:15:01', '2022-08-31 17:05:04', NULL, 1),
(9, ' ', 'asdasd', 0, NULL, ' ', '0', '0', NULL, NULL, ' ', '2022-08-31 16:42:56', NULL, '2022-08-31 16:42:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacto_cliente`
--

CREATE TABLE `contacto_cliente` (
  `ID_CONTACTO_CLIENTE` int(10) UNSIGNED NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CORREO` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `CELULAR` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CARGO` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `contacto_cliente`
--

INSERT INTO `contacto_cliente` (`ID_CONTACTO_CLIENTE`, `ID_CLIENTE`, `NOMBRE`, `CORREO`, `CELULAR`, `CARGO`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 5, '12312', '31231', '23123', '123123', '2022-08-30 18:59:07', NULL, '2022-08-30 20:23:17', 0),
(2, 5, '123123', '12312312', '3123123', '123', '2022-08-30 19:01:29', NULL, '2022-08-30 20:23:14', 0),
(3, 5, '74564567', '45674567', '456745', '674567', '2022-08-30 19:02:11', NULL, '2022-08-30 20:23:11', 0),
(4, 5, 'Martin', 'martin@martin.cl', '1234 1234', 'asdf', '2022-08-30 20:25:35', NULL, '2022-08-31 15:52:14', 0),
(5, 4, 'contacto', '1234 1234', '1234', '1234', '2022-08-30 21:53:37', NULL, '2022-08-30 21:54:39', 0),
(6, 4, '123123', '123123', '12312', '3123', '2022-08-30 21:54:47', NULL, NULL, 1),
(7, 4, '123123', '123', '123123', '123', '2022-08-30 21:56:11', NULL, NULL, 1),
(8, 5, 'Ximena Mena', 'xmena@clielqui.cl', 'null', 'Finanzas', '2022-08-31 16:01:39', NULL, NULL, 1),
(9, 5, 'Roberto Braum', 'robraum@clielqui.cl', 'null', 'Doctor Jefe', '2022-08-31 16:04:03', NULL, NULL, 1),
(10, 7, 'Pedro Aguilar', 'pedro@griffithd.com', '44147851', 'Finanzas', '2022-08-31 16:13:18', NULL, NULL, 1),
(11, 8, 'Jorge Mancilla', 'jorge@yahoo.com', 'null', 'Finanzas', '2022-08-31 16:14:35', NULL, NULL, 1),
(12, 8, 'Marisol Perez', 'marisol@yahoo.com', '22547332', 'Supervisora', '2022-08-31 16:14:58', NULL, NULL, 1),
(13, 8, ' ', 'prueba', ' ', ' ', '2022-08-31 16:37:41', NULL, '2022-08-31 16:37:50', 0),
(14, 8, ' ', 'asdasd', ' ', ' ', '2022-08-31 16:38:59', NULL, '2022-08-31 16:39:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion`
--

CREATE TABLE `cotizacion` (
  `ID_COTIZACION` int(10) UNSIGNED NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `OBSERVACION` varchar(600) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TIEMPO_ENTREGA` int(11) NOT NULL,
  `ID_PAGO_COTIZACION` int(11) NOT NULL,
  `ID_FORMA_PAGO` int(11) DEFAULT NULL,
  `ID_TIPO_IMPUESTO` int(11) DEFAULT NULL,
  `DESCUENTO` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ENVIADO_CORREO` int(11) DEFAULT NULL,
  `TOTAL_NETO` int(30) DEFAULT NULL,
  `TOTAL_IVA` int(30) DEFAULT NULL,
  `TOTAL` int(30) DEFAULT NULL,
  `FECHA_COTIZACION` datetime DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `cotizacion`
--

INSERT INTO `cotizacion` (`ID_COTIZACION`, `ID_CLIENTE`, `ID_USUARIO`, `OBSERVACION`, `ID_TIEMPO_ENTREGA`, `ID_PAGO_COTIZACION`, `ID_FORMA_PAGO`, `ID_TIPO_IMPUESTO`, `DESCUENTO`, `ENVIADO_CORREO`, `TOTAL_NETO`, `TOTAL_IVA`, `TOTAL`, `FECHA_COTIZACION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(20, 3, 1, ' Observacion', 4, 0, 1, 2, '0', 1, 23800, 4522, 28322, NULL, '2022-08-30 17:16:25', '2022-08-30 17:20:31', '2022-08-31 20:06:25', 0),
(21, 7, 1, 'todo bien', 3, 0, 1, 3, '2000000', 1, 6100000, 0, 6100000, NULL, '2022-08-31 20:53:34', '2022-08-31 21:01:44', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_cotizacion`
--

CREATE TABLE `detalle_cotizacion` (
  `ID_DETALLE_COTIZACION` int(11) NOT NULL,
  `ID_COTIZACION` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `ANCHO` float DEFAULT NULL,
  `ALTO` float DEFAULT NULL,
  `AREA` float DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TIPO_VALOR` int(11) DEFAULT NULL,
  `VALOR_M2` int(11) DEFAULT NULL,
  `VALOR_UNITARIO` int(11) DEFAULT NULL,
  `VALOR_ADICIONAL` int(11) NOT NULL,
  `VALOR_TOTAL` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `detalle_cotizacion`
--

INSERT INTO `detalle_cotizacion` (`ID_DETALLE_COTIZACION`, `ID_COTIZACION`, `ID_CATEGORIA`, `ID_PRODUCTO`, `CANTIDAD`, `ANCHO`, `ALTO`, `AREA`, `DESCRIPCION`, `ID_TIPO_VALOR`, `VALOR_M2`, `VALOR_UNITARIO`, `VALOR_ADICIONAL`, `VALOR_TOTAL`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(54, 21, 7, 31, 3, 150, 150, 6.75, ' Descripcion corta', 66, 1200000, 2700000, 0, 8100000, '2022-08-31 20:38:35', '2022-08-31 20:51:45', NULL, 1),
(55, 22, 7, 32, 1, 80, 10, 0.08, ' ', 62, 350000, 28000, 0, 28000, '2022-09-01 22:25:52', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_orden_trabajo`
--

CREATE TABLE `detalle_orden_trabajo` (
  `ID_DETALLE_ORDEN_TRABAJO` int(11) UNSIGNED NOT NULL,
  `ID_ORDEN_TRABAJO` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `ANCHO` float DEFAULT NULL,
  `ALTO` float DEFAULT NULL,
  `AREA` float DEFAULT NULL,
  `DESCRIPCION` varchar(800) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TIPO_VALOR` int(11) DEFAULT NULL,
  `VALOR_M2` int(11) DEFAULT NULL,
  `VALOR_UNITARIO` int(11) DEFAULT NULL,
  `VALOR_ADICIONAL` int(11) DEFAULT NULL,
  `VALOR_TOTAL` int(11) DEFAULT NULL,
  `ESTADO_SERVICIO` int(4) DEFAULT NULL,
  `ID_REPORTE_DETALLE` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `detalle_orden_trabajo`
--

INSERT INTO `detalle_orden_trabajo` (`ID_DETALLE_ORDEN_TRABAJO`, `ID_ORDEN_TRABAJO`, `ID_CATEGORIA`, `ID_PRODUCTO`, `CANTIDAD`, `ANCHO`, `ALTO`, `AREA`, `DESCRIPCION`, `ID_TIPO_VALOR`, `VALOR_M2`, `VALOR_UNITARIO`, `VALOR_ADICIONAL`, `VALOR_TOTAL`, `ESTADO_SERVICIO`, `ID_REPORTE_DETALLE`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 1, 7, 32, 3, 80, 140, 3.36, ' ', 61, 220000, 246400, 0, 739200, 4, NULL, '2022-09-03 12:47:19', '2022-09-19 11:35:17', NULL, 1),
(2, 1, 7, 31, 1, 80, 140, 1.12, ' ', 66, 1200000, 1344000, 0, 1344000, NULL, NULL, '2022-09-03 12:56:22', NULL, '2022-09-03 20:32:15', 0),
(3, 1, 9, 28, 1, 80, 300, 2.4, ' ', 51, 6000, 14400, 0, 14400, NULL, NULL, '2022-09-03 20:27:35', NULL, '2022-09-06 10:05:26', 0),
(4, 1, 7, 31, 1, 80, 600, 4.8, ' ', 59, 170000, 816000, 0, 816000, 4, NULL, '2022-09-05 16:22:30', '2022-09-16 12:08:00', NULL, 1),
(5, 2, 7, 32, 1, 80, 140, 1.12, ' ', 61, 220000, 246400, 40000, 286400, 1, NULL, '2022-09-06 21:59:17', '2022-09-17 19:26:42', NULL, 1),
(6, 4, 9, 28, 1, 80, 90, 0.72, '123123', 51, 6000, 4320, 0, 4320, 1, NULL, '2022-09-17 19:52:51', NULL, NULL, 1),
(7, 5, 9, 27, 1, 80, 120, 0.96, ' ', 48, 10000, 9600, 0, 9600, 1, NULL, '2022-09-17 21:40:35', NULL, NULL, 1),
(8, 6, 7, 32, 1, 80, 120, 0.96, ' ', 61, 220000, 211200, 0, 211200, 1, NULL, '2022-09-17 21:42:29', NULL, NULL, 1),
(9, 7, 9, 28, 1, 80, 120, 0.96, ' ', 51, 6000, 5760, 0, 5760, 1, NULL, '2022-09-17 21:43:27', NULL, NULL, 1),
(10, 8, 8, 24, 1, 100, 200, 2, ' ', 39, 135000, 270000, 0, 270000, NULL, NULL, '2022-09-17 21:44:09', NULL, '2022-09-17 21:45:20', 0),
(11, 8, 7, 31, 1, 20, 90, 0.18, ' ', 59, 170000, 30600, 0, 30600, NULL, NULL, '2022-09-17 21:44:55', NULL, '2022-09-17 21:45:23', 0),
(12, 9, 8, 24, 1, 180, 120, 2.16, ' ', 39, 135000, 291600, 0, 291600, 1, NULL, '2022-09-17 21:45:49', NULL, NULL, 1),
(13, 10, 9, 28, 1, 40, 240, 0.96, ' ', 52, 9000, 8640, 0, 8640, NULL, NULL, '2022-09-17 23:21:23', NULL, '2022-09-17 23:22:04', 0),
(14, 10, 7, 32, 1, 80, 700, 5.6, ' ', 61, 220000, 1232000, 0, 1232000, NULL, NULL, '2022-09-17 23:25:15', NULL, '2022-09-17 23:25:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deuda_cliente`
--

CREATE TABLE `deuda_cliente` (
  `ID_DEUDA_CLIENTE` int(11) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  `VALOR` int(11) DEFAULT NULL,
  `FECHA_INICIO_DEUDA` datetime DEFAULT NULL,
  `FECHA_PAGO_DEUDA` datetime DEFAULT NULL,
  `ESTADO_DEUDA` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `ID_EMPRESA` int(11) NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `RUT` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `GIRO` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DIRECCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CIUDAD` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `TELEFONO` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CELULAR` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CORREO` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`ID_EMPRESA`, `NOMBRE`, `RUT`, `GIRO`, `DIRECCION`, `CIUDAD`, `TELEFONO`, `CELULAR`, `CORREO`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 'Empresa de ejemplo 1 ', '99.999.999-9', 'Soluciones Informaticas', 'Avda. Siempre Viva', 'Springfield', '12 23 34', '569 1234 5678', 'correo@correo.cl', '2022-07-16 19:09:29', NULL, NULL, 1),
(2, 'Otra Empresa', '99.999.999-0', 'Administracion de Servidores', 'La Recova', 'La Serena', '44 33 22 ', '569 4321 8765', 'contacto@administracion.cl', '2022-07-16 19:09:29', NULL, NULL, 1),
(3, 'Empresa nro 3 ', '11111', 'Desarrollo de Software', '1111', '1111', '11111', '1111', 'correo3@gmail.com', '2022-07-19 11:20:40', '2022-07-19 11:22:48', NULL, 1),
(4, 'EMPRESA 4', '99.999.999-7', 'DESARROLLO DE SOFTWARE', '123123123', '123123123', '123123', '123 123 123', 'CORREO@GMAIL.COM', '2022-07-19 11:23:19', NULL, NULL, 1),
(5, 'Clinica Regional del Elqui SPA', '99.533.790-8', 'Servicios Medicos', 'Avda. El Santo 1475', 'La Serena', 'null', 'null', 'null', '2022-08-31 16:06:32', NULL, NULL, 1),
(6, 'HY-Tech Griffith Drilling Chile SPA', '77.498.478-k', 'Servicios de Ingenieria y AC', 'Peñuela PC 21 LT21 Vegas Sur', 'La Serena', ' ', ' ', ' ', '2022-08-31 16:07:31', '2022-08-31 17:18:27', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `forma_pago`
--

CREATE TABLE `forma_pago` (
  `ID_FORMA_PAGO` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `EMPRESA` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `forma_pago`
--

INSERT INTO `forma_pago` (`ID_FORMA_PAGO`, `NOMBRE`, `DESCRIPCION`, `EMPRESA`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 'Efectivo', 'Pago con efectivo', 'No aplica', '2022-07-16 19:12:14', NULL, NULL, 1),
(2, 'Transferencia', 'Pago con transferencia.', 'No aplica.', '2022-07-16 19:12:14', NULL, NULL, 1),
(3, 'Orden de compra', 'Pago con Orden de compra.', 'No aplica', '2022-07-16 19:13:08', NULL, NULL, 1),
(4, 'Cheque', 'Pago por Cheque.', 'No aplica.', '2022-07-16 19:13:08', '2022-07-19 12:10:56', NULL, 1),
(5, 'Tarjeta de Credito', 'Pago con Tarjeta de Credito.', 'No aplica.', '2022-08-08 17:27:14', NULL, NULL, 1),
(6, 'Tarjeta de Debito', 'Pago con Tarjeta de Debito.', 'No aplica', '2022-09-10 12:39:20', NULL, NULL, 1),
(7, 'Otro', 'Forma de pago alternativa.', 'No aplica.', '2022-09-10 12:39:20', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orden_trabajo`
--

CREATE TABLE `orden_trabajo` (
  `ID_ORDEN_TRABAJO` int(11) UNSIGNED NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `OBSERVACION` varchar(600) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TIEMPO_ENTREGA` int(11) DEFAULT NULL,
  `ID_PAGO_ORDEN_TRABAJO` int(11) DEFAULT NULL,
  `ID_FORMA_PAGO` int(11) DEFAULT NULL,
  `ID_TIPO_IMPUESTO` int(11) DEFAULT NULL,
  `DESCUENTO` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ENVIADO_CORREO` int(11) DEFAULT NULL,
  `TOTAL_NETO` int(30) NOT NULL,
  `TOTAL_IVA` int(30) DEFAULT NULL,
  `TOTAL` int(30) NOT NULL,
  `FECHA_ORDEN_TRABAJO` datetime NOT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `orden_trabajo`
--

INSERT INTO `orden_trabajo` (`ID_ORDEN_TRABAJO`, `ID_CLIENTE`, `ID_USUARIO`, `OBSERVACION`, `ID_TIEMPO_ENTREGA`, `ID_PAGO_ORDEN_TRABAJO`, `ID_FORMA_PAGO`, `ID_TIPO_IMPUESTO`, `DESCUENTO`, `ENVIADO_CORREO`, `TOTAL_NETO`, `TOTAL_IVA`, `TOTAL`, `FECHA_ORDEN_TRABAJO`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 7, 1, ' sdfsdf', 2, 0, 3, 2, '10000', 1, 1545200, 293588, 1838788, '2022-09-07 19:06:26', '2022-09-05 17:23:05', '2022-09-07 19:06:26', NULL, 1),
(2, 7, 2, '123', 5, NULL, 5, 2, '1000', 1, 285400, 54226, 339626, '2022-09-17 13:54:53', '2022-09-17 13:54:53', NULL, NULL, 1),
(4, 5, 1, '123', 3, NULL, 4, 2, '1000', 1, 3320, 631, 3951, '2022-09-17 19:53:12', '2022-09-17 19:53:12', NULL, NULL, 1),
(5, 5, 1, ' ', 1, NULL, 2, 3, ' ', 1, 9600, NULL, 9600, '2022-09-17 21:40:44', '2022-09-17 21:40:44', NULL, '2022-09-17 21:42:08', 0),
(6, 7, 1, ' ', 2, NULL, 6, 2, ' ', 1, 211200, 40128, 251328, '2022-09-17 21:42:34', '2022-09-17 21:42:34', NULL, '2022-09-17 21:43:09', 0),
(7, 7, 1, ' ', 2, NULL, 5, 2, ' ', 1, 5760, 1094, 6854, '2022-09-17 21:43:31', '2022-09-17 21:43:31', NULL, NULL, 1),
(8, 5, 1, ' ', 2, NULL, 5, 2, ' ', 1, 300600, 57114, 357714, '2022-09-17 21:45:13', '2022-09-17 21:45:13', NULL, '2022-09-17 21:45:27', 0),
(9, 7, 1, ' ', 2, 0, 5, 3, ' ', 1, 291600, 0, 291600, '2022-09-17 21:46:35', '2022-09-17 21:45:54', '2022-09-17 21:46:35', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pago`
--

CREATE TABLE `pago` (
  `ID_PAGO` int(11) NOT NULL,
  `ID_COTIZACION` int(11) DEFAULT NULL,
  `ID_ORDEN_TRABAJO` int(11) DEFAULT NULL,
  `ID_TIPO_PAGO` int(11) DEFAULT NULL,
  `MONTO` int(30) NOT NULL,
  `FECHA_PAGO` date DEFAULT NULL,
  `BANCO_ORIGEN` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NRO_ORDEN` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NOMBRE_EMITIDO_ORDEN` varchar(300) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_COBRO` date DEFAULT NULL,
  `NRO_CHEQUE` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NOMBRE_TITULAR_CHEQUE` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `TIPO_TARJETA` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NRO_OPERACION` int(100) DEFAULT NULL,
  `CODIGO_AUTORIZACION` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `OTROS` varchar(800) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `pago`
--

INSERT INTO `pago` (`ID_PAGO`, `ID_COTIZACION`, `ID_ORDEN_TRABAJO`, `ID_TIPO_PAGO`, `MONTO`, `FECHA_PAGO`, `BANCO_ORIGEN`, `NRO_ORDEN`, `NOMBRE_EMITIDO_ORDEN`, `FECHA_COBRO`, `NRO_CHEQUE`, `NOMBRE_TITULAR_CHEQUE`, `TIPO_TARJETA`, `NRO_OPERACION`, `CODIGO_AUTORIZACION`, `OTROS`, `ID_TRABAJADOR`, `FECHA`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, NULL, 1, 1, 20000, '2022-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 12:58:29', NULL, '2022-09-10 15:35:30', 0),
(2, NULL, 1, NULL, 20000, '2022-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 12:58:43', NULL, '2022-09-11 20:15:53', 0),
(3, NULL, 1, NULL, 20000, '2022-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 12:59:18', NULL, '2022-09-11 20:16:34', 0),
(4, NULL, 1, 4, 4000, NULL, 'BANCO BICE', NULL, NULL, '2022-09-07', '123123', '123123', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 15:06:15', NULL, '2022-09-11 20:16:31', 0),
(5, NULL, 1, 5, 20000, '2022-09-06', 'SCOTIABANK CHILE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 15:07:32', NULL, '2022-09-11 20:16:27', 0),
(6, NULL, 1, 3, 33000, '2022-09-14', NULL, '123123123', '123123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-10 15:07:48', NULL, '2022-09-11 20:16:23', 0),
(7, NULL, 1, 5, 20000, '2022-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11111, '11111', NULL, 1, NULL, '2022-09-10 15:08:06', NULL, '2022-09-11 20:16:18', 0),
(8, NULL, 1, 6, 10000, '2022-09-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111111, '1111111', NULL, 1, NULL, '2022-09-10 15:08:24', NULL, '2022-09-11 20:16:15', 0),
(9, NULL, 1, NULL, 1800000, '2022-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:32:16', NULL, '2022-09-17 12:39:34', 0),
(10, NULL, 1, NULL, 38788, '2022-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:32:39', NULL, '2022-09-17 12:39:31', 0),
(11, NULL, 1, 1, 1838788, '2022-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:39:49', NULL, '2022-09-17 12:40:38', 0),
(12, NULL, 1, 1, 100000, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:40:48', NULL, NULL, 1),
(13, NULL, 1, 2, 100000, '2022-09-14', 'SCOTIABANK CHILE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:41:57', NULL, NULL, 1),
(14, NULL, 1, 3, 100000, '2022-09-21', NULL, '111111', 'Martin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:42:31', NULL, NULL, 1),
(15, NULL, 1, 4, 100000, NULL, 'BANCO BCI', NULL, NULL, '2022-09-21', '111111', 'Martin Rios', NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 12:42:55', NULL, NULL, 1),
(16, NULL, 1, 5, 100000, '2022-09-29', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, 123123123, '321321321', NULL, 2, '2022-09-17', '2022-09-17 12:43:13', NULL, '2022-09-17 12:43:59', 0),
(17, NULL, 1, 6, 100000, '2022-09-30', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, 321321321, '123123123', NULL, 2, '2022-09-17', '2022-09-17 12:43:29', NULL, '2022-09-17 12:43:57', 0),
(18, NULL, 1, 5, 100000, '2022-09-22', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, 123123123, '321321321', NULL, 2, '2022-09-17', '2022-09-17 12:45:07', NULL, '2022-09-17 12:45:49', 0),
(19, NULL, 1, 5, 100000, '2022-09-30', 'BANCO SANTANDER', NULL, NULL, NULL, NULL, NULL, NULL, 123123123, '321321321', NULL, 2, '2022-09-17', '2022-09-17 12:46:07', NULL, NULL, 1),
(20, NULL, 1, 6, 100000, '2022-09-02', 'BANCO ITAU', NULL, NULL, NULL, NULL, NULL, NULL, 123123, '321321', NULL, 2, '2022-09-17', '2022-09-17 12:46:28', NULL, NULL, 1),
(21, NULL, 1, 1, 10000, '2022-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 13:08:29', NULL, NULL, 1),
(22, NULL, 1, 1, 1228788, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-09-17', '2022-09-17 13:23:40', NULL, NULL, 1),
(23, NULL, 9, 1, 91600, '2022-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-17', '2022-09-17 22:10:36', NULL, NULL, 1),
(24, NULL, 9, 1, 200000, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-17', '2022-09-17 22:10:55', NULL, NULL, 1),
(25, NULL, 7, 1, 5000, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-19', '2022-09-19 11:40:11', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `ID_PERFIL` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `RUT` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FOTO_PERFIL` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `BIOGRAFIA` varchar(1200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NRO_CONTACTO` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RESIDENCIA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CARGO` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `FECHA_INGRESO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`ID_PERFIL`, `ID_USUARIO`, `RUT`, `FOTO_PERFIL`, `BIOGRAFIA`, `NRO_CONTACTO`, `RESIDENCIA`, `NACIONALIDAD`, `CARGO`, `FECHA_NACIMIENTO`, `FECHA_INGRESO`) VALUES
(1, 2, '20.460.509-7', NULL, 'Mi nombre es Martín, tengo 22 años y soy el desarrollador de este software.', '+569 4889 4523', 'La Serena', 'Chileno', 'Desarrollador de Software', '2000-02-13', '2022-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) UNSIGNED DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `IMAGEN` varchar(2000) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`ID_PRODUCTO`, `ID_CATEGORIA`, `NOMBRE`, `DESCRIPCION`, `IMAGEN`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(23, 8, 'Acrilico Transparente', 'Separador de Area Sucia/Limpia con riel de aluminio', 'assets/images/productos/630fdd2ec1b35.jpg', '2022-08-31 18:14:06', '2022-08-31 18:18:02', NULL, 1),
(24, 8, 'Acrilico Transparente 3mm', 'Separador de Area Sucia/Limpia con riel de aluminio', 'assets/images/productos/630fde57bd4f9.jpg', '2022-08-31 18:19:03', '2022-08-31 18:23:37', NULL, 1),
(25, 8, 'Acrilico Blanco 3mm', 'Informativo de mesa', 'assets/images/productos/630fdfade6946.jpg', '2022-08-31 18:24:45', NULL, NULL, 1),
(26, 9, 'Telas PVC', 'Impresion de alta resolucion', 'assets/images/productos/630fdff0a7825.jpg', '2022-08-31 18:25:52', NULL, NULL, 1),
(27, 9, 'Pascalle', 'Impresion de alta resolucion', 'assets/images/productos/630fe032212cf.jpg', '2022-08-31 18:26:58', NULL, NULL, 1),
(28, 9, 'Gigantografia', 'Impresion de alta resolucion', 'assets/images/productos/630fe06947014.jpg', '2022-08-31 18:27:53', NULL, NULL, 1),
(29, 9, 'Pendon', 'Impresion de alta resolucion', 'assets/images/productos/630fe0a51e983.jpg', '2022-08-31 18:28:53', NULL, NULL, 1),
(30, 7, 'Grif-XL01 Acceso Restringido', 'Lata Galvanizada 1mm Adhesivo Reflectante', 'assets/images/productos/630fe0d62570f.jpg', '2022-08-31 18:29:42', NULL, NULL, 1),
(31, 7, 'Grif-XL02 Extintor', 'Lata Galvanizada 1mm Adhesivo Reflectante', 'assets/images/productos/630fe0ff23df1.jpg', '2022-08-31 18:30:23', '2022-08-31 20:50:28', NULL, 1),
(32, 7, 'Grif-XL03 Estacionar Aculatado', 'Lata Galvanizada 1mm Adhesivo Reflectante\r\n', 'assets/images/productos/630fe11fb6b6b.jpg', '2022-08-31 18:30:55', NULL, NULL, 1),
(33, 7, 'Adhesivo', 'Adhesivo Exterior con Lamina Protectora\r\n', 'assets/images/productos/630fe13adb006.jpg', '2022-08-31 18:31:22', '2022-08-31 18:31:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(180) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rubro` varchar(120) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(180) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `celular` varchar(15) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nombre_contacto` varchar(180) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `rut_empresa` varchar(15) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccion_sucursal` varchar(180) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ciudad_sucursal` varchar(120) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `descripcion`, `rubro`, `correo`, `celular`, `telefono`, `nombre_contacto`, `rut_empresa`, `direccion_sucursal`, `ciudad_sucursal`, `fecha_creacion`, `fecha_modificacion`, `fecha_baja`, `estado`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-06-10 12:43:56', NULL, NULL, 1),
(2, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2022-06-10 12:43:56', NULL, NULL, 1),
(3, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '2022-06-11 17:06:39', NULL, NULL, 1),
(4, '123', '321', '123', '123', '321', '321', '123', '123', '321', '321', '2022-06-11 17:07:55', NULL, '2022-06-11 17:49:39', 0),
(5, '111', '111', '11', '11', '1', '1', '1', '1', '1', '1', '2022-06-11 17:08:22', NULL, NULL, 1),
(6, '111', '111', '11', '11', '1', '1', '1', '1', '1', '11', '2022-06-11 17:14:42', '2022-07-18 13:20:29', NULL, 1),
(7, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2022-06-11 17:15:47', NULL, NULL, 1),
(8, '3333', '3', '3', '3', '3', '3', '3', '3', '3', '33', '2022-06-11 17:16:47', '2022-07-18 13:14:59', '2022-07-18 14:22:23', 0),
(9, 'proveedor editador', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asdd', '2022-06-11 18:20:30', '2022-07-18 13:29:31', NULL, 1),
(10, 'Proveedor', 'undefined', 'Proveedor', 'Proveedor', 'Proveedor', 'Proveedor', 'Proveedor', 'Proveedor', 'Proveedor', 'Proveedor', '2022-07-18 13:43:14', NULL, NULL, 1),
(11, 'Proveedor2', 'undefined', 'Proveedor2', 'Proveedor2', 'Proveedor2', 'Proveedor2', 'Proveedor2', 'Proveedor2', 'Proveedor2', 'Proveedor2', '2022-07-18 13:43:56', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reporte_detalle`
--

CREATE TABLE `reporte_detalle` (
  `ID_REPORTE_DETALLE` int(11) NOT NULL,
  `ID_DETALLE_ORDEN_TRABAJO` int(11) NOT NULL,
  `INSTALACION` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `CLIENTE_ENVIA_1` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR_1` int(1) DEFAULT NULL,
  `PROPUESTA_2` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR_2` int(11) DEFAULT NULL,
  `CLIENTE_APRUEBA_3` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR_3` int(11) DEFAULT NULL,
  `REALIZA_4` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR_4` int(11) DEFAULT NULL,
  `PROBLEMA_5` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_TRABAJADOR_5` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `reporte_detalle`
--

INSERT INTO `reporte_detalle` (`ID_REPORTE_DETALLE`, `ID_DETALLE_ORDEN_TRABAJO`, `INSTALACION`, `CLIENTE_ENVIA_1`, `ID_TRABAJADOR_1`, `PROPUESTA_2`, `ID_TRABAJADOR_2`, `CLIENTE_APRUEBA_3`, `ID_TRABAJADOR_3`, `REALIZA_4`, `ID_TRABAJADOR_4`, `PROBLEMA_5`, `ID_TRABAJADOR_5`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 4, 'SI: INSTALACION EJEMPLO', 'SI', 1, 'SI MODIFICADO', 2, 'PENDIENTE', 3, 'OTROS', 2, 'NULO', 2, '2022-09-12 17:53:34', NULL, NULL, 1),
(2, 1, 'NO', 'NO', 1, 'SI DESDE CERO', 1, 'SI', 1, 'GRAFICAG', 1, 'NO', 1, '2022-09-12 18:29:29', NULL, NULL, 1),
(3, 13, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0),
(4, 14, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-17 23:25:15', NULL, '2022-09-17 23:25:52', 0),
(5, 5, 'NO', 'PENDIENTE', 1, 'NULO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-18 04:37:38', NULL, NULL, 1),
(6, 6, 'NO', NULL, NULL, 'SI MODIFICADO', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-18 04:37:38', NULL, NULL, 1),
(7, 9, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-18 04:38:07', NULL, NULL, 1),
(8, 12, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-18 04:38:07', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `terminacion`
--

CREATE TABLE `terminacion` (
  `ID_TERMINACION` int(11) NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `terminacion`
--

INSERT INTO `terminacion` (`ID_TERMINACION`, `NOMBRE`, `DESCRIPCION`, `ID_CATEGORIA`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(8, 'Puntas Redondeadas', NULL, 8, '2022-08-31 19:09:40', NULL, NULL, 1),
(9, 'Pulido - Abrillantamiento', NULL, 8, '2022-08-31 19:12:27', NULL, NULL, 1),
(10, 'Dobles Segun Muestra', NULL, 8, '2022-08-31 19:12:40', NULL, NULL, 1),
(11, 'Topes', NULL, 8, '2022-08-31 19:12:46', NULL, NULL, 1),
(12, 'Corte', NULL, 8, '2022-08-31 19:12:50', NULL, NULL, 1),
(13, 'Uniones', NULL, 8, '2022-08-31 19:12:58', NULL, NULL, 1),
(14, 'Sellado Perimetral', NULL, 9, '2022-08-31 19:13:22', NULL, NULL, 1),
(15, 'Ojetillos Perimetral', NULL, 9, '2022-08-31 19:13:32', NULL, NULL, 1),
(16, 'Bolsillo Perimetral', NULL, 9, '2022-08-31 19:13:41', NULL, NULL, 1),
(17, 'Palos Arriba y Abajo', NULL, 9, '2022-08-31 19:13:50', NULL, NULL, 1),
(18, 'Palos Izq. y Der.', NULL, 9, '2022-08-31 19:14:00', NULL, NULL, 1),
(19, 'Excedente Perimetral', NULL, 9, '2022-08-31 19:14:11', NULL, NULL, 1),
(20, 'Ojetillo cada Punta', NULL, 9, '2022-08-31 19:14:22', NULL, NULL, 1),
(21, 'Ojetillo cada 50cm', NULL, 9, '2022-08-31 19:14:35', NULL, NULL, 1),
(22, 'Ojetillo cada 100cm', NULL, 9, '2022-08-31 19:14:46', NULL, NULL, 1),
(23, 'Cuerda en cada Punta', NULL, 9, '2022-08-31 19:14:52', NULL, NULL, 1),
(24, 'Bolsillo Arriba', NULL, 9, '2022-08-31 19:15:02', NULL, NULL, 1),
(25, 'Bolsillo Abajo', NULL, 9, '2022-08-31 19:15:08', NULL, NULL, 1),
(26, 'Pulido', NULL, 7, '2022-08-31 19:15:14', NULL, NULL, 1),
(27, 'Bordes Limados', NULL, 7, '2022-08-31 19:15:22', NULL, NULL, 1),
(28, 'Puntas Redondeadas', NULL, 7, '2022-08-31 19:15:29', NULL, NULL, 1),
(29, 'Colgantes', NULL, 7, '2022-08-31 19:15:35', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `terminacion_detalle`
--

CREATE TABLE `terminacion_detalle` (
  `ID_TERMINACION_DETALLE` int(11) NOT NULL,
  `ID_TERMINACION` int(11) NOT NULL,
  `ID_DETALLE` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `terminacion_detalle`
--

INSERT INTO `terminacion_detalle` (`ID_TERMINACION_DETALLE`, `ID_TERMINACION`, `ID_DETALLE`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 1, 16, '2022-08-16 03:39:23', NULL, NULL, 1),
(2, 3, 16, '2022-08-16 03:39:23', NULL, NULL, 1),
(3, 2, 16, '2022-08-16 14:53:42', NULL, '2022-08-16 16:21:26', 0),
(4, 4, 16, '2022-08-16 14:58:37', NULL, NULL, 1),
(5, 6, 16, '2022-08-16 15:05:49', NULL, '2022-08-16 16:21:40', 0),
(6, 6, 16, '2022-08-16 16:21:49', NULL, '2022-08-16 16:21:52', 0),
(7, 7, 16, '2022-08-16 16:21:56', NULL, '2022-08-16 16:22:00', 0),
(8, 2, 17, '2022-08-19 12:26:41', NULL, NULL, 1),
(9, 4, 17, '2022-08-19 12:26:42', NULL, NULL, 1),
(10, 6, 17, '2022-08-19 12:26:44', NULL, NULL, 1),
(11, 1, 18, '2022-08-19 12:30:51', NULL, NULL, 1),
(12, 2, 18, '2022-08-19 12:30:51', NULL, NULL, 1),
(13, 3, 18, '2022-08-19 12:30:51', NULL, NULL, 1),
(14, 7, 19, '2022-08-19 12:33:57', NULL, NULL, 1),
(15, 6, 19, '2022-08-19 12:33:57', NULL, NULL, 1),
(16, 5, 19, '2022-08-19 12:34:00', NULL, NULL, 1),
(17, 3, 20, '2022-08-21 18:47:23', NULL, NULL, 1),
(18, 5, 20, '2022-08-21 18:47:26', NULL, NULL, 1),
(19, 3, 21, '2022-08-22 14:26:48', NULL, NULL, 1),
(20, 5, 21, '2022-08-22 14:26:50', NULL, NULL, 1),
(21, 6, 21, '2022-08-22 14:26:52', NULL, NULL, 1),
(22, 1, 21, '2022-08-22 14:27:11', NULL, NULL, 1),
(23, 1, 22, '2022-08-22 14:27:51', NULL, NULL, 1),
(24, 3, 22, '2022-08-22 14:27:53', NULL, NULL, 1),
(25, 4, 22, '2022-08-22 14:27:54', NULL, NULL, 1),
(26, 2, 23, '2022-08-22 14:30:24', NULL, NULL, 1),
(27, 7, 24, '2022-08-22 15:14:32', NULL, NULL, 1),
(28, 6, 24, '2022-08-22 15:14:33', NULL, '2022-08-22 15:14:48', 0),
(29, 5, 24, '2022-08-22 15:14:34', NULL, NULL, 1),
(30, 2, 25, '2022-08-22 16:18:37', NULL, NULL, 1),
(31, 4, 25, '2022-08-22 16:18:40', NULL, NULL, 1),
(32, 6, 25, '2022-08-22 16:18:43', NULL, NULL, 1),
(33, 1, 26, '2022-08-22 16:23:09', NULL, NULL, 1),
(34, 6, 26, '2022-08-22 16:23:11', NULL, NULL, 1),
(35, 2, 28, '2022-08-22 20:16:23', NULL, NULL, 1),
(36, 3, 28, '2022-08-22 20:16:24', NULL, '2022-08-22 20:16:44', 0),
(37, 3, 29, '2022-08-22 20:58:09', NULL, NULL, 1),
(38, 2, 29, '2022-08-22 20:58:10', NULL, NULL, 1),
(39, 3, 30, '2022-08-22 21:03:16', NULL, NULL, 1),
(40, 4, 30, '2022-08-22 21:03:17', NULL, NULL, 1),
(41, 2, 31, '2022-08-22 21:04:45', NULL, NULL, 1),
(42, 3, 32, '2022-08-22 22:22:44', NULL, NULL, 1),
(43, 4, 33, '2022-08-22 22:48:22', NULL, NULL, 1),
(44, 4, 34, '2022-08-22 22:55:45', NULL, NULL, 1),
(45, 5, 34, '2022-08-22 22:55:46', NULL, NULL, 1),
(46, 1, 40, '2022-08-23 19:57:27', NULL, '2022-08-23 20:05:47', 0),
(47, 4, 40, '2022-08-23 19:57:29', NULL, NULL, 1),
(48, 2, 40, '2022-08-23 20:01:34', NULL, '2022-08-23 20:02:02', 0),
(49, 3, 40, '2022-08-23 20:01:35', NULL, '2022-08-23 20:02:03', 0),
(50, 5, 40, '2022-08-23 20:01:36', NULL, '2022-08-24 13:07:55', 0),
(51, 6, 40, '2022-08-23 20:01:37', NULL, NULL, 1),
(52, 3, 41, '2022-08-24 15:00:00', NULL, NULL, 1),
(53, 5, 41, '2022-08-24 15:00:02', NULL, NULL, 1),
(54, 2, 43, '2022-08-25 11:19:11', NULL, NULL, 1),
(55, 5, 43, '2022-08-25 11:21:52', NULL, NULL, 1),
(56, 1, 44, '2022-08-25 11:36:52', NULL, NULL, 1),
(57, 7, 44, '2022-08-25 11:36:54', NULL, '2022-08-25 11:37:02', 0),
(58, 7, 44, '2022-08-25 11:37:07', NULL, NULL, 1),
(59, 3, 28, '2022-08-25 14:41:31', NULL, NULL, 1),
(60, 4, 28, '2022-08-25 14:41:32', NULL, NULL, 1),
(61, 4, 28, '2022-08-25 14:41:34', NULL, NULL, 1),
(62, 1, 28, '2022-08-25 14:41:55', NULL, NULL, 1),
(63, 5, 28, '2022-08-25 14:41:57', NULL, NULL, 1),
(64, 6, 28, '2022-08-25 14:41:58', NULL, NULL, 1),
(65, 7, 28, '2022-08-25 14:41:59', NULL, NULL, 1),
(66, 1, 45, '2022-08-25 19:47:36', NULL, NULL, 1),
(67, 2, 45, '2022-08-25 19:47:37', NULL, NULL, 1),
(68, 1, 46, '2022-08-26 13:43:18', NULL, '2022-08-29 17:48:04', 0),
(69, 4, 46, '2022-08-29 17:48:38', NULL, NULL, 1),
(70, 1, 46, '2022-08-29 17:48:40', NULL, '2022-08-30 16:51:06', 0),
(71, 7, 46, '2022-08-29 17:48:42', NULL, NULL, 1),
(72, 1, 47, '2022-08-30 16:44:13', NULL, '2022-08-30 16:45:51', 0),
(73, 2, 47, '2022-08-30 16:44:15', NULL, '2022-08-30 16:45:52', 0),
(74, 3, 47, '2022-08-30 16:45:09', NULL, '2022-08-30 16:45:52', 0),
(75, 4, 47, '2022-08-30 16:45:09', NULL, '2022-08-30 16:45:53', 0),
(76, 5, 47, '2022-08-30 16:45:12', NULL, '2022-08-30 16:45:54', 0),
(77, 1, 47, '2022-08-30 16:46:03', NULL, '2022-08-30 16:50:58', 0),
(78, 2, 47, '2022-08-30 16:46:04', NULL, '2022-08-30 16:47:03', 0),
(79, 3, 47, '2022-08-30 16:46:05', NULL, NULL, 1),
(80, 4, 47, '2022-08-30 16:46:50', NULL, '2022-08-30 16:47:02', 0),
(81, 3, 46, '2022-08-30 16:51:10', NULL, NULL, 1),
(82, 4, 51, '2022-08-30 17:14:46', NULL, NULL, 1),
(83, 6, 52, '2022-08-30 17:16:16', NULL, NULL, 1),
(84, 1, 53, '2022-08-30 17:18:42', NULL, NULL, 1),
(85, 2, 53, '2022-08-30 17:18:43', NULL, NULL, 1),
(86, 3, 53, '2022-08-30 17:18:44', NULL, '2022-08-30 17:20:02', 0),
(87, 4, 53, '2022-08-30 17:18:44', NULL, '2022-08-30 17:18:50', 0),
(88, 4, 53, '2022-08-30 17:18:46', NULL, '2022-08-30 17:20:03', 0),
(89, 26, 54, '2022-08-31 20:38:10', NULL, NULL, 1),
(90, 28, 54, '2022-08-31 20:38:13', NULL, NULL, 1),
(91, 29, 55, '2022-09-05 16:20:13', NULL, '2022-09-05 16:20:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `terminacion_orden_trabajo`
--

CREATE TABLE `terminacion_orden_trabajo` (
  `ID_TERMINACION_OT` int(11) NOT NULL,
  `ID_TERMINACION` int(11) NOT NULL,
  `ID_DETALLE_ORDEN_TRABAJO` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `terminacion_orden_trabajo`
--

INSERT INTO `terminacion_orden_trabajo` (`ID_TERMINACION_OT`, `ID_TERMINACION`, `ID_DETALLE_ORDEN_TRABAJO`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 29, 1, '2022-09-03 12:41:18', NULL, NULL, 1),
(2, 27, 1, '2022-09-03 12:41:20', NULL, NULL, 1),
(3, 22, 3, '2022-09-03 20:27:31', NULL, NULL, 1),
(4, 23, 3, '2022-09-03 20:27:32', NULL, NULL, 1),
(5, 24, 3, '2022-09-03 20:27:32', NULL, NULL, 1),
(6, 27, 4, '2022-09-05 16:20:34', NULL, '2022-09-05 16:34:50', 0),
(7, 28, 4, '2022-09-05 16:22:26', NULL, '2022-09-05 16:31:28', 0),
(8, 29, 4, '2022-09-05 16:34:45', NULL, NULL, 1),
(9, 28, 4, '2022-09-05 16:34:54', NULL, '2022-09-05 16:35:01', 0),
(10, 27, 4, '2022-09-05 16:34:55', NULL, '2022-09-05 16:35:02', 0),
(11, 26, 4, '2022-09-05 16:34:56', NULL, NULL, 1),
(12, 28, 5, '2022-09-06 21:59:09', NULL, NULL, 1),
(13, 29, 5, '2022-09-06 21:59:10', NULL, NULL, 1),
(14, 27, 5, '2022-09-06 21:59:10', NULL, NULL, 1),
(15, 26, 5, '2022-09-06 21:59:11', NULL, NULL, 1),
(16, 21, 6, '2022-09-17 19:52:49', NULL, NULL, 1),
(17, 22, 6, '2022-09-17 19:52:49', NULL, NULL, 1),
(18, 22, 7, '2022-09-17 21:40:32', NULL, NULL, 1),
(19, 23, 7, '2022-09-17 21:40:33', NULL, NULL, 1),
(20, 28, 8, '2022-09-17 21:42:28', NULL, NULL, 1),
(21, 20, 9, '2022-09-17 21:43:25', NULL, NULL, 1),
(22, 11, 10, '2022-09-17 21:44:08', NULL, NULL, 1),
(23, 10, 10, '2022-09-17 21:44:08', NULL, NULL, 1),
(24, 27, 11, '2022-09-17 21:44:54', NULL, NULL, 1),
(25, 10, 12, '2022-09-17 21:45:46', NULL, NULL, 1),
(26, 12, 12, '2022-09-17 21:45:46', NULL, NULL, 1),
(27, 21, 13, '2022-09-17 23:21:22', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `terminacion_producto`
--

CREATE TABLE `terminacion_producto` (
  `ID_TERMINACION_PRODUCTO` int(11) NOT NULL,
  `ID_TERMINACION` int(11) DEFAULT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiempo_entrega`
--

CREATE TABLE `tiempo_entrega` (
  `ID_TIEMPO_ENTREGA` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `tiempo_entrega`
--

INSERT INTO `tiempo_entrega` (`ID_TIEMPO_ENTREGA`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, '1 Dia', 'Entrega en 1 dia habil', '2022-08-22 17:55:38', NULL, NULL, 1),
(2, '3 Dias', 'Entrega en 3 dias habiles', '2022-08-22 17:55:38', NULL, NULL, 1),
(3, '5 Dias', 'Entrega en 5 dias habiles', '2022-08-22 17:55:38', NULL, NULL, 1),
(4, '1 Semana', 'Entrega en 1 Semana', '2022-08-22 17:55:38', NULL, NULL, 1),
(5, '2 Semanas', 'Entrega en 2 Semanas', '2022-08-22 17:55:38', NULL, NULL, 1),
(6, '1 Mes', 'Entrega en 1 Mes', '2022-08-22 17:55:38', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_impuesto`
--

CREATE TABLE `tipo_impuesto` (
  `ID_TIPO_IMPUESTO` int(11) NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `tipo_impuesto`
--

INSERT INTO `tipo_impuesto` (`ID_TIPO_IMPUESTO`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(1, 'Factura', 'Factura', '2022-07-16 19:15:35', NULL, NULL, 1),
(2, 'Boleta', 'Boleta', '2022-07-16 19:20:09', NULL, NULL, 1),
(3, 'Sin impuesto', 'SIN IMPUESTO', '2022-07-16 19:15:35', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_valor`
--

CREATE TABLE `tipo_valor` (
  `ID_TIPO_VALOR` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `NOMBRE` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `VALOR` varchar(120) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT NULL,
  `FECHA_MODIFICACION` datetime DEFAULT NULL,
  `FECHA_BAJA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `tipo_valor`
--

INSERT INTO `tipo_valor` (`ID_TIPO_VALOR`, `ID_PRODUCTO`, `NOMBRE`, `DESCRIPCION`, `VALOR`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `FECHA_BAJA`, `ESTADO`) VALUES
(33, 0, 'MEDIO', NULL, '80000', '2022-08-31 18:07:06', NULL, NULL, 1),
(34, 0, 'URGENTE', NULL, '120000', '2022-08-31 18:07:19', NULL, NULL, 1),
(35, 23, 'MEDIO', NULL, '80000', '2022-08-31 18:13:49', NULL, NULL, 1),
(36, 1, 'GENERAL', NULL, '120000', '2022-08-31 18:13:55', NULL, '2022-08-31 18:14:02', 0),
(37, 23, 'URGENTE', NULL, '120000', '2022-08-31 18:14:04', NULL, NULL, 1),
(38, 24, 'MEDIO', NULL, '90000', '2022-08-31 18:18:58', NULL, NULL, 1),
(39, 24, 'URGENTE', NULL, '135000', '2022-08-31 18:23:35', NULL, NULL, 1),
(40, 25, 'MEDIO', NULL, '85000', '2022-08-31 18:24:16', NULL, NULL, 1),
(41, 25, 'GENERAL', NULL, '120000', '2022-08-31 18:24:25', NULL, NULL, 1),
(42, 25, 'URGENTE', NULL, '150000', '2022-08-31 18:24:30', NULL, NULL, 1),
(43, 26, 'ECONOMICO', NULL, '5000', '2022-08-31 18:25:28', NULL, NULL, 1),
(44, 26, 'MEDIO', NULL, '7000', '2022-08-31 18:25:33', NULL, NULL, 1),
(45, 26, 'GENERAL', NULL, '9000', '2022-08-31 18:25:44', NULL, NULL, 1),
(46, 26, 'URGENTE', NULL, '13000', '2022-08-31 18:25:51', NULL, NULL, 1),
(47, 27, 'MEDIO', NULL, '7500', '2022-08-31 18:26:47', NULL, NULL, 1),
(48, 27, 'GENERAL', NULL, '10000', '2022-08-31 18:26:52', NULL, NULL, 1),
(49, 27, 'URGENTE', NULL, '15000', '2022-08-31 18:26:56', NULL, NULL, 1),
(50, 28, 'ECONOMICO', NULL, '4500', '2022-08-31 18:27:33', NULL, NULL, 1),
(51, 28, 'MEDIO', NULL, '6000', '2022-08-31 18:27:39', NULL, NULL, 1),
(52, 28, 'GENERAL', NULL, '9000', '2022-08-31 18:27:43', NULL, NULL, 1),
(53, 28, 'URGENTE', NULL, '13500', '2022-08-31 18:27:51', NULL, NULL, 1),
(54, 29, 'MEDIO', NULL, '8600', '2022-08-31 18:28:29', NULL, NULL, 1),
(55, 29, 'GENERAL', NULL, '14200', '2022-08-31 18:28:46', NULL, NULL, 1),
(56, 29, 'URGENTE', NULL, '18000', '2022-08-31 18:28:52', NULL, NULL, 1),
(57, 30, 'MEDIO', NULL, '165000', '2022-08-31 18:29:33', NULL, NULL, 1),
(58, 30, 'URGENTE', NULL, '280000', '2022-08-31 18:29:40', NULL, NULL, 1),
(59, 31, 'MEDIO', NULL, '170000', '2022-08-31 18:30:14', NULL, NULL, 1),
(60, 31, 'URGENTE', NULL, '290000', '2022-08-31 18:30:21', NULL, '2022-08-31 20:49:40', 0),
(61, 32, 'MEDIO', NULL, '220000', '2022-08-31 18:30:49', NULL, NULL, 1),
(62, 32, 'URGENTE', NULL, '350000', '2022-08-31 18:30:54', NULL, NULL, 1),
(63, 33, 'MEDIO', NULL, '28000', '2022-08-31 18:31:15', NULL, NULL, 1),
(64, 33, 'GENERAL', NULL, '35000', '2022-08-31 18:31:44', NULL, NULL, 1),
(65, 33, 'URGENTE', NULL, '67000', '2022-08-31 18:31:50', NULL, NULL, 1),
(66, 31, 'URGENTE', NULL, '1200000', '2022-08-31 20:50:24', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$LAgmApg4HWYCT7IpFAJK/.o.z.2DvapBBeo.u4/Hg0112urfGo0yu', 'admin@admin.com', NULL, '', NULL, NULL, NULL, '32ad1a6d911333517687a34dbbe04607bc98746a', '$2y$10$CKokouRsojDmVgwpuQEgMeUu/YaZjcMqdpdDkCSGuea8VHAKUFKKm', 1268889823, 1664219422, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '127.0.0.1', 'martinrios', '$2y$10$AbbXPaXMo9h9ygrnyr//beQWrP0vH5GD6zq7w7aP6jVcsvAjpxga2', 'martinignacioriosc@gmail.com', NULL, NULL, NULL, NULL, NULL, '75f47b1a5d10a2aa5f8994b4b7ef78898c65a763', '$2y$10$PAcshSgw72mwERcBX4ocYOv05NMMvoc7Gg64iGvs0E8eB3vXhHfMe', 1663030489, 1663898576, 1, 'Martin', 'Rios', '', ''),
(3, '127.0.0.1', NULL, '$2y$10$wZxRrCDWo5KQ2ZBrltLH8uiiwJ4vZCtyL/gp6F25/WOSOHzmnaO9G', 'usuario@usuario.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1663030509, NULL, 1, 'Usuario', 'de ejemplo', '', ''),
(4, '::1', NULL, '$2y$10$T49A8DYmIjb3jm8EEsmLi.9sXqSCfSUZxVNVnrmtH8N/jK1WPCCnu', 'get(path) {\n    return _find(this, path, \'.\');\n  }', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1663602704, NULL, 1, NULL, NULL, NULL, NULL),
(5, '::1', NULL, '$2y$10$pS1NTs5atfxPCkRf09mtZ.FxCQohV0xFfbf.1EoQ5l8Wm4LtWEjaG', 'martin@aminformatica.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1663603225, NULL, 1, 'martin', 'ignacio', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(5, 2, 1),
(6, 3, 1),
(7, 4, 2),
(8, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`),
  ADD UNIQUE KEY `ID_TIPO_PRODUCTO_UNIQUE` (`ID_CATEGORIA`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indexes for table `contacto_cliente`
--
ALTER TABLE `contacto_cliente`
  ADD PRIMARY KEY (`ID_CONTACTO_CLIENTE`);

--
-- Indexes for table `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`ID_COTIZACION`);

--
-- Indexes for table `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD PRIMARY KEY (`ID_DETALLE_COTIZACION`),
  ADD UNIQUE KEY `ID_DETALLE_COTIZACION_UNIQUE` (`ID_DETALLE_COTIZACION`);

--
-- Indexes for table `detalle_orden_trabajo`
--
ALTER TABLE `detalle_orden_trabajo`
  ADD PRIMARY KEY (`ID_DETALLE_ORDEN_TRABAJO`);

--
-- Indexes for table `deuda_cliente`
--
ALTER TABLE `deuda_cliente`
  ADD PRIMARY KEY (`ID_DEUDA_CLIENTE`),
  ADD KEY `ID_DEUDA_CLIENTE_UNIQUE` (`ID_CLIENTE`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID_EMPRESA`),
  ADD UNIQUE KEY `idEMPRESA_UNIQUE` (`ID_EMPRESA`);

--
-- Indexes for table `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`ID_FORMA_PAGO`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD PRIMARY KEY (`ID_ORDEN_TRABAJO`);

--
-- Indexes for table `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_PAGO`);

--
-- Indexes for table `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`ID_PERFIL`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD UNIQUE KEY `ID_PRODUCTO_UNIQUE` (`ID_PRODUCTO`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indexes for table `reporte_detalle`
--
ALTER TABLE `reporte_detalle`
  ADD PRIMARY KEY (`ID_REPORTE_DETALLE`);

--
-- Indexes for table `terminacion`
--
ALTER TABLE `terminacion`
  ADD PRIMARY KEY (`ID_TERMINACION`),
  ADD UNIQUE KEY `ID_TERMINACION_UNIQUE` (`ID_TERMINACION`);

--
-- Indexes for table `terminacion_detalle`
--
ALTER TABLE `terminacion_detalle`
  ADD PRIMARY KEY (`ID_TERMINACION_DETALLE`);

--
-- Indexes for table `terminacion_orden_trabajo`
--
ALTER TABLE `terminacion_orden_trabajo`
  ADD PRIMARY KEY (`ID_TERMINACION_OT`);

--
-- Indexes for table `terminacion_producto`
--
ALTER TABLE `terminacion_producto`
  ADD PRIMARY KEY (`ID_TERMINACION_PRODUCTO`),
  ADD UNIQUE KEY `ID_TERMINACION_PRODUCTO_UNIQUE` (`ID_TERMINACION_PRODUCTO`);

--
-- Indexes for table `tiempo_entrega`
--
ALTER TABLE `tiempo_entrega`
  ADD PRIMARY KEY (`ID_TIEMPO_ENTREGA`);

--
-- Indexes for table `tipo_impuesto`
--
ALTER TABLE `tipo_impuesto`
  ADD PRIMARY KEY (`ID_TIPO_IMPUESTO`);

--
-- Indexes for table `tipo_valor`
--
ALTER TABLE `tipo_valor`
  ADD PRIMARY KEY (`ID_TIPO_VALOR`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLIENTE` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacto_cliente`
--
ALTER TABLE `contacto_cliente`
  MODIFY `ID_CONTACTO_CLIENTE` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `ID_COTIZACION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  MODIFY `ID_DETALLE_COTIZACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `detalle_orden_trabajo`
--
ALTER TABLE `detalle_orden_trabajo`
  MODIFY `ID_DETALLE_ORDEN_TRABAJO` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deuda_cliente`
--
ALTER TABLE `deuda_cliente`
  MODIFY `ID_DEUDA_CLIENTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ID_EMPRESA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `ID_FORMA_PAGO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  MODIFY `ID_ORDEN_TRABAJO` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `ID_PERFIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reporte_detalle`
--
ALTER TABLE `reporte_detalle`
  MODIFY `ID_REPORTE_DETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `terminacion`
--
ALTER TABLE `terminacion`
  MODIFY `ID_TERMINACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `terminacion_detalle`
--
ALTER TABLE `terminacion_detalle`
  MODIFY `ID_TERMINACION_DETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `terminacion_orden_trabajo`
--
ALTER TABLE `terminacion_orden_trabajo`
  MODIFY `ID_TERMINACION_OT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `terminacion_producto`
--
ALTER TABLE `terminacion_producto`
  MODIFY `ID_TERMINACION_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiempo_entrega`
--
ALTER TABLE `tiempo_entrega`
  MODIFY `ID_TIEMPO_ENTREGA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipo_impuesto`
--
ALTER TABLE `tipo_impuesto`
  MODIFY `ID_TIPO_IMPUESTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipo_valor`
--
ALTER TABLE `tipo_valor`
  MODIFY `ID_TIPO_VALOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
