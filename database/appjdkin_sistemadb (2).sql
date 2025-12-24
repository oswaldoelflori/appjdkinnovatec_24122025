-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-12-2025 a las 11:52:06
-- Versión del servidor: 5.7.44-48
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appjdkin_sistemadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `unidadmedidaid` int(11) NOT NULL,
  `imagen` varchar(77) COLLATE utf8_spanish_ci DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL,
  `idtipoarticulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `unidadmedidaid`, `imagen`, `condicion`, `idtipoarticulo`) VALUES
(1, 15, 'M1120', 'CABEZAL EPSON M2118, M1108, M1128, M1100, M2100, M2120, M1120 ORIGINAL', 90, 'ORIGINAL', 3, '', 1, 1),
(2, 15, 'CL355', 'CABEZAL EPSON 210 / L 220 / L 350 / L 355 / L 365 / L380/ L 395 / L 455 / L 475 / L 555 / L 3110 / L 3150 / L 3160 / L 3260 /L4150 / L 4160 / L 4260 / L 5190 / L 5290 GENERICO', 15, 'GENERICO', 3, '1749941724.jpg', 1, 1),
(3, 15, 'CL6171', 'Cabezal Epson L6171, L6270, L14150 L5590 F170 GENERICO', 999, 'GENERICO', 3, '1749941737.jpg', 1, 1),
(4, 16, 'KITG3100', 'PACK CABEZAL CANON BH 1 + CH 1 G2100 G2110 G3100 G3110 G4100 G4110', 6, 'PACK CABEZAL', 3, '1753731049.jpg', 1, 1),
(5, 21, 'COLOR G3100', 'CABEZAL CANON CH 1 G2100 G2110 G3100 G3110 G4100 G4110', 60, 'Tricolor CH-1 P G3100 G3110 G3101 G3100 G4100 G2110 G2100', 3, '1753467457.jpg', 1, 1),
(6, 15, 'M2170', 'Cabezal Epson M2140, M2170, M3140, M3170  Generico', 10, 'GENERICO', 3, '1749944170.jpg', 1, 1),
(7, 15, 'CL355 O', 'CABEZAL EPSON FA04061/FA04060/FA04040/FA04000/FA04010. L110/210/220/310/350/355/365/ L111/L120/210/220/310/350/355/365/455/555/565 Original', 100, 'ORIGINAL', 3, '1763826940.jpeg', 1, 1),
(8, 16, 'caja L15150', 'CAJA DE MANTENIMIENTO EPSON  C9345-PXMB9 / L15150/ L15160/ M15140/ L8160/ L8180 Original', 100, 'ORIGINAL', 3, '1752687148.jpg', 1, 1),
(9, 19, 'NOD32', 'ANTIVIRUS NOD32 ANTIVIRUS1 PC - FISICO', 99, 'ORIGINAL', 3, '', 1, 1),
(10, 16, 'T4500', 'Almohadilla BROTHER T4500 J6730', 100, 'NUEVO', 3, '1750199639.jpg', 1, 1),
(11, 16, 'ALMHOHADILLA T500', 'Almohadilla BROTHER, DCP J100/J105/J132W, J152W/J172W/T300/T500W/T700W/MFC/J200/J245/T800W Generico', 1, '', 3, '', 1, 1),
(12, 16, 'ALMOHADILLA T520', 'Almohadilla BROTHER, DCP T310 T220 T420W T510W T520W T710W T720DW MFC T810W T910DW T420 T510 T520 T710 T720 Generico', 1, '', 3, '', 1, 1),
(13, 16, 'ALMOHADILLA G03', 'Almohadilla Canon  G03, esponja para Canon MAXIFY GX3010, GX4010, GX3020, GX4020, GX4030, GX3040, GX4040, GX3050 Generico', 2, '', 3, '1750201724.jpg', 1, 1),
(14, 16, 'AL555', 'Almohadilla EPSON A L555 L565 L575 M100 M105 M200 M205', 90, 'NUEVO', 3, '1754349927.jpg', 1, 1),
(15, 16, 'AG02', 'Almohadilla Canon G02 G2160 G3160 G3620 G3060 G2460 G3660 G1220 Generico', 100, 'almohadillas', 3, '1750201948.jpg', 1, 1),
(16, 16, 'ALMOHADILLA G04', 'Almohadilla Canon G04 G1230, G1330, G1430, G1530, G1730, G1737, G2270, G2470, G2570, G2730, G2770, G3270, G3470, G3471 Generico', 2, '', 3, '1750202017.jpg', 1, 1),
(17, 16, 'ALMOHADILLA G3100', 'Almohadilla Canon G1100/G2000/G3100 G3110, G4100 G4110, G1100 G1110, G2100 G2110, G4110. Generico', 5, '', 3, '1750202254.jpg', 1, 1),
(18, 16, 'ALMOHADILLAS M1120', 'Almohadilla EPSON M1100 M1120 M2120 M1108 M1128 M1129 Generico', -8, '', 3, '1750202501.jpg', 1, 1),
(19, 16, 'ALMOHADILLA  C5710', 'Almohadilla EPSON WF C5210 C5290 C5710 C5790 M5298 M5299 M5799 C529 C579 Generico', 1, '', 3, '1750202734.jpg', 1, 1),
(20, 16, 'ALMOHADILLA C9345', 'Almohadilla Epson  C9345 L8050 L8180 L8160 L15150 Generico', 2, '', 3, '1750202865.jpg', 1, 1),
(21, 16, 'ALMOHADILLA L355', 'Almohadilla Epson L110 L120 L210 L220 L300 L310 L350 L355 L365 L375 L380 L395 L396 L455 L475 L495 Generico', 3, '', 3, '1750202944.jpg', 1, 1),
(22, 16, 'L5190', 'Almohadilla Epson L1110/L1210/L3110/L3210/L3150/L3250/3160/ L3260/L5190/L5290 Generico', 190, 'NUEVO', 3, '1750203032.jpg', 1, 1),
(23, 16, 'Almohadilla L1455', 'Almohadilla Epson L1455 ET-16500 WF-3540 WF-3520 Generico', 1, '', 3, '1750204006.jpg', 1, 1),
(24, 16, 'Almohadilla L6171', 'Almohadilla Epson L4150/L4160/L4260/L6171/L6270/14150/F170 Generico', -15, '', 3, '1750204387.jpg', 1, 1),
(26, 17, 'SERV', 'cambio de escaner L3250', 100, '', 3, '', 1, 1),
(27, 17, ' E62555', 'Kit de mantenimiento HP Laser Jet Managed MFP E62555', 1, '', 3, '', 1, 1),
(30, 15, '6171', 'Cabezal Epson FA35011/FA35001- L6171, L6270, L14150 L5590 F170 ORIGINAL', 100, 'ORIGINAL', 3, '1763828550.jpeg', 1, 1),
(31, 17, 'RL6171', 'Reseteador Epson T04D1 L6171 L6270 L14150 F170 C5710 WF-C5210 C5290 M2170 M3170 C5790 L6270', 7, '', 3, '1753737864.jpg', 1, 1),
(32, 17, 'RL15150', 'Reseteador Epson C9345 -L15150 L8180 L8160 WF-7820 WF-7830 WF-7840 SC-C8000', 7, '', 3, '1753737827.jpg', 1, 1),
(33, 17, 'RL1455', 'Reseteador Epson L1455 - T6711', 10, '', 3, '1753737853.jpg', 1, 1),
(34, 17, 'RL5590', 'Reseteador Epson C9344 L5590 / L3560', 4, '', 3, '1753737874.jpg', 1, 1),
(35, 17, 'RC9382', 'Reseteador Epson C9382-PX4MB WF-C5810, WF-C5890, WF-C5891', 9, '', 3, '1753737881.jpg', 1, 1),
(36, 16, 'F570', 'Reseteador Epson SC13MB SureColor SC-T3100x, SC-T3170x, SC-F570, SC-F571, SC- F530, SC- F531', 9, '', 3, '1753737902.jpg', 1, 1),
(37, 17, 'R G02', 'Reseteador Canon MC-G02 G2160 G3160', 9, '', 3, '1753737915.jpg', 1, 1),
(38, 17, 'R Gx6010', 'Reseteador Canon Mc-g01 Gx6010 Gx7010', 10, '', 3, '1753737924.jpg', 1, 1),
(39, 16, 'MC-32', 'Reseteador CANON mc-32 5200 TC-5200M Tc-20', 10, 'NUEVO', 3, '1753737934.jpg', 1, 1),
(40, 15, 'CL355 O', 'CABEZAL EPSON ORIGINAL  210 / L 220 / L 350 / L 355 / L 365 / L 395 / L 455 / L 475 / L 555 / L 3110 / L 3150 / L 3160 / L 3260 / L 4160 / L 4260 / L 5190 / L 5290', 9, '', 3, '1751149713.jpg', 1, 1),
(41, 21, 'CG2160', 'Pack Cabezal Canon BH-10 + CH-10 G5010, G6010, G7010, G2160, G3160', 5, '', 3, '1751149873.jpg', 1, 1),
(42, 21, 'CG510', 'PACK CABEZAL CANON CH-11R CH-11L PARA 510 610', 4, '', 3, '1753730838.jpg', 1, 1),
(43, 24, 'GT52 M', 'Tinta HP GT52 Magenta Original 70ml', 24, '', 3, '1751153862.jpg', 1, 1),
(44, 24, 'GT52 C', 'Tinta HP GT52 CYAN Original 70ml', 24, '', 3, '1751154110.jpg', 1, 1),
(45, 24, 'GT52 Y', 'Tinta HP GT52 YELLOW Original 70ml', 24, '', 3, '1751154255.jpg', 1, 1),
(46, 24, 'GT53 BK', 'Tinta HP GT53 BLACK Original 70ml', 25, '', 3, '', 1, 1),
(47, 24, 'T504 BK', 'TINTA EPSON T504, NEGRO,  127ML, PARA EPSON L4150 L4160 L4260 L9171 L6270 L14150', 28, '', 3, '', 1, 1),
(48, 24, 'T504C', 'TINTA EPSON T504,  CYAN. 127ML  PARA EPSON L4150 L4160 L4260 L9171 L6270 L14150', 8, '', 3, '1751156140.jpg', 1, 1),
(49, 24, 'T664Bk', 'Tinta Original EPSON 664 - Color Negro 70ml L110, L120, L200, L210, L220, L300, L310, L350, L355, L365, L375, L380, L395, L455, L475, L495, L555, L565, L575, L606, L655, L656, L1300, L1455', 4, '', 3, '1751562989.jpg', 1, 1),
(50, 24, 'T664C', 'Tinta Original EPSON 664 - Color Cian 70ml L110, L120, L200, L210, L220, L300, L310, L350, L355, L365, L375, L380, L395, L455, L475, L495, L555, L565, L575, L606, L655, L656, L1300, L1455', 6, '', 3, '1751563064.jpg', 1, 1),
(51, 24, 'T664M', 'Tinta Original EPSON 664 - Color Magenta 70ml L110, L120, L200, L210, L220, L300, L310, L350, L355, L365, L375, L380, L395, L455, L475, L495, L555, L565, L575, L606, L655, L656, L1300, L1455', 7, '', 3, '1751563129.jpg', 1, 1),
(52, 24, 'T664Y', 'Tinta Original EPSON 664 - Color Yellow 70ml L110, L120, L200, L210, L220, L300, L310, L350, L355, L365, L375, L380, L395, L455, L475, L495, L555, L565, L575, L606, L655, L656, L1300, L1455', 7, '', 3, '1751563212.jpg', 1, 1),
(53, 24, 'T544Bk', 'TINTA EPSON T544 BLACK L1110/L1210/ L3110/L3210 L3150/L3250/L3160/L3260/L5190/L5290', 2, '', 3, '1751563470.jpg', 1, 1),
(54, 24, 'T544C', 'TINTA EPSON T544 Cian L1110/L1210/ L3110/L3210 L3150/L3250/L3160/L3260/L5190/L5290', 3, '', 3, '', 1, 1),
(55, 24, 'T544Y', 'TINTA EPSON T544 Yellow L1110/L1210/ L3110/L3210 L3150/L3250/L3160/L3260/L5190/L5290', 4, '', 3, '1751564484.png', 1, 1),
(56, 24, 'T544M', 'TINTA EPSON T544 Magenta L1110/L1210/ L3110/L3210 L3150/L3250/L3160/L3260/L5190/L5290', 3, '', 3, '1751564557.png', 1, 1),
(57, 24, 'T534BK', 'TINTA EPSON T534 Black  M1100/ 1120/ 1180/ 2140/ 2170/ 3170/ 3180 BLACK', 6, '', 3, '1751567651.jpg', 1, 1),
(58, 24, 'T774Bk', 'Tinta Epson T774 Negro para M105 / M205 Original', 2, '', 3, '', 1, 1),
(59, 24, 'T574Bk', 'TINTA EPSON T574 BLACK  L8050/ L18050', 2, '', 3, '', 1, 1),
(60, 24, 'T574Y', 'TINTA EPSON T574 Yellow L8050/ L18050', 2, '', 3, '', 1, 1),
(61, 24, 'T574Ml', 'TINTA EPSON T574 Magenta Light L8050/ L18050', 2, '', 3, '1751569022.jpeg', 1, 1),
(62, 24, 'T524BK', 'TINTA EPSON T524 BLACK L6580/ L15150/ L15160', 0, '', 3, '1751569796.jpeg', 1, 1),
(63, 24, 'T555M', 'TINTA EPSON T555 MAGENTA T555 70ML', 3, '', 3, '', 1, 1),
(64, 24, 'T524M', 'TINTA EPSON T524 Magenta L6580/ L15150/ L15160', 8, '', 3, '1751571144.jpeg', 1, 1),
(65, 24, 'T524C', 'TINTA EPSON T524 Cyan L6580/ L15150/ L15160', 0, '', 3, '1751571176.jpeg', 1, 1),
(66, 24, 'T555Y', 'TINTA EPSON T555 YELLOW  70ML', 4, '', 3, '1751571509.jpeg', 1, 1),
(67, 24, 'T555C', 'TINTA EPSON T555 Cian 70ML', 0, '', 3, '1751571602.jpeg', 1, 1),
(68, 24, 'T555BK', 'TINTA EPSON T555 Black 70ML', 0, '', 3, '', 1, 1),
(69, 24, 'T555G', 'TINTA EPSON T555 Gris 70ML', 0, '', 3, '', 1, 1),
(70, 16, 'D2504', 'Rodillos de Arrastre pad separador', -2, '', 3, '', 1, 1),
(71, 24, 'T190BK', 'Tinta Canon GI-190  BLACK G2100/G2110/G3100/G3110/G4100/G4110', 0, '', 3, '1752619248.jpg', 1, 1),
(72, 24, 'T190Y', 'Tinta Canon GI-190 YELLOW G2100/G2110/G3100/G3110/G4100/G4110', 2, '', 3, '', 1, 1),
(73, 24, 'T190C', 'Tinta Canon GI-190  CYAN G2100/G2110/G3100/G3110/G4100/G4110', 2, '', 3, '', 1, 1),
(74, 24, 'T190M', 'Tinta Canon GI-190  MAGENTA G2100/G2110/G3100/G3110/G4100/G4110', 2, '', 3, '', 1, 1),
(75, 24, 'T11BK', 'Tinta Canon GI-11 Black G2160/G3160 135ml', 2, '', 3, '', 1, 1),
(76, 24, 'T11Y', 'Tinta Canon GI-11 YELLOW G2160/G3160 70ml', 2, '', 3, '', 1, 1),
(77, 24, 'T11C', 'Tinta Canon GI-11 CYAN G2160/G3160 70ml', 2, '', 3, '', 1, 1),
(78, 24, 'T11M', 'Tinta Canon GI-11 MAGENTA G2160/G3160 70ML', 2, '', 3, '', 1, 1),
(79, 24, 'T10BK', 'TINTA CANON GI-10PGBK BLACK G510/G5011/G6010/G6011/G5010/G6010 /G7010', 2, '', 3, '', 1, 1),
(80, 24, 'T10M', 'TINTA CANON GI-10PG MAGENTA G510/G5011/G6010/G6011/G5010/G6010 /G7010', 2, '', 3, '', 1, 1),
(81, 24, 'T10C', 'TINTA CANON GI-10PG CYAN G510/G5011/G6010/G6011/G5010/G6010 /G7010', 2, '', 3, '', 1, 1),
(82, 24, 'T10Y', 'TINTA CANON GI-10PG YELLOW G510/G5011/G6010/G6011/G5010/G6010 /G7010', 2, '', 3, '', 1, 1),
(83, 24, 'TJFM', 'Tinta Jet life Super Premium Ink For Ciss - 1000 ML YELLOW', 2, '', 3, '', 1, 1),
(84, 24, 'TJFM', 'Tinta Jet life Super Premium Ink For Ciss - 1000 ML MAGENTA', 1, '', 3, '', 1, 1),
(85, 24, 'TJFC', 'Tinta Jet life Super Premium Ink For Ciss - 1000 ML CYAN', 2, '', 3, '', 1, 1),
(86, 24, 'TJFBK', 'Tinta Jet life Super Premium Ink For Ciss - 1000 ML BLACK', 1, '', 3, '', 1, 1),
(87, 24, 'TJF100', 'Tinta Jet life Super Premium Ink For Ciss - 100 ml YELLOW', -6, '', 3, '', 1, 1),
(88, 24, 'TJF100', 'Tinta Jet life Super Premium Ink For Ciss - 100 ML CYAN', -6, '', 3, '', 1, 1),
(89, 24, 'TJF100M', 'Tinta Jet life Super Premium Ink For Ciss - 100 ml MAGENTA', -6, '', 3, '', 1, 1),
(90, 24, 'TJF100BK', 'Tinta Jet life Super Premium Ink For Ciss - 100 ml BLACK', -7, '', 3, '', 1, 1),
(91, 24, 'TJL250', 'Tinta Jet life Super Premium Ink For Ciss - 250 ML YELLOW', 0, '', 3, '', 1, 1),
(92, 24, 'TJFM250', 'Tinta Jet life Super Premium Ink For Ciss - 250 ML Cyan', 0, '', 3, '', 1, 1),
(93, 24, 'TJFM250M', 'Tinta Jet life Super Premium Ink For Ciss - 250 ML MAGENTA', 0, '', 3, '', 1, 1),
(94, 24, 'TJFM250BK', 'Tinta Jet life Super Premium Ink For Ciss - 250 ML BLACK', -1, '', 3, '', 1, 1),
(95, 16, 'CL15150', 'CAJA DE MANTENIMIENTO EPSON C9345-PXMB9 / L15150/ L15160/ M15140/ L8160/ L8180 /L8150 Generico', 4, '', 3, '1752687102.jpg', 1, 1),
(96, 16, 'CL6270', 'Caja de Mantenimiento Epson T04D1 L6171/L6270/L6191/L6180/L14150/M2170/M3170 Original', -1, '', 3, '', 1, 1),
(97, 16, 'T04D1', 'Caja de Mantenimiento Epson T04D1 Generico L6171/L6270/L6191/L6180/L14150/L4150/ 4160/4260/M2170/M3170 GENERICO', 99, 'GENERICO', 3, '', 1, 1),
(98, 16, 'CL5590', 'CAJA DE MANTENIMIENTO EPSON C9344-EWMB3 L3560/ L5590 Original', -3, '', 3, '', 1, 1),
(99, 16, 'CL5590', 'CAJA DE MANTENIMIENTO EPSON C9344-EWMB3 L3560/ L5590 Generico', 0, '', 3, '', 1, 1),
(100, 16, 'chipf170', 'CHIP Para Impresoras Epson  sc23mb sc-f170 chip sc-f170 chip sc23b', 99, '', 3, '1753477702.jpg', 1, 1),
(101, 16, 'TF1020', 'TEFLON HP LaserJet 1000, 1010, 1012, 1015, 1018,1020, 1050, 1022, GENERICO', 16, '', 3, '1753473146.jpg', 1, 1),
(102, 16, 'RM1-6274', 'TEFLON HP LaserJet P3015 M525 M521 M527 M506 M501 (TEFLON ORIGINAL)', 4, 'TIPO ORIGINAL RM1-LJ P3015', 3, '', 1, 1),
(103, 16, 'RM1-6405', 'TEFLON HP 1200/1000/1020/1022/1300/P1005/3050/M1319/P2014/P2015/P2035/M1522/M1319/M1005/P1102/3020/3030/ 3033/3055/3080/3300/3310/3380/3390/3392/P1006 Tipo Original', 3, 'LJ P2035/P2055', 3, '1753472792.jpg', 1, 1),
(104, 16, 'N/A425/426', 'TEFLON HP M425/M426 /M125/M226/M227/M400/P1008/3050/M2727/P1566/P1606/P1005/P1006/P1008 TIPO ORIGINAL', 4, '425/426 TIPO ORIGINAL', 3, '', 1, 1),
(105, 16, 'F570', 'CHIP Para Impresoras Epson F570 F571 sc-3170X sc-T3100X T3170X 3170X T2170 T3170', 98, 'Chip de caja de Mantenimiento', 3, '1753473962.jpg', 1, 1),
(106, 16, 'T04D100', 'CHIP Para Impresoras Epson L6171 L6191 L6270 L14150', 97, 'CHIP Caja De Mantenimiento Chip L6171 L6191 L6270 T04D100 T04D1 de Reemplazo', 3, '1753473934.jpg', 1, 1),
(107, 16, 'C9345', 'CHIP Para Impresoras Epson C9345/PXMB9 L15150 / L8160 / L8180/ L8150', 99, 'CHIP DE CAJA DE Mantenimiento  L15150 / L15160 / L15168 / M15140 / L8160 / L8180', 3, '1753477676.jpg', 1, 1),
(108, 16, 'C9344', 'CHIP Para Impresoras Epson C9344 EcoTank L3560 / L5590', 97, 'CHIP L3550 / L3556 / L3560 / L5590 / WorkForce WF-2810 / WF-2830 / WF-2850 / WF-2851 / WF-2930 / WF-2950', 3, '1753477664.jpg', 1, 1),
(109, 16, 'CT6711', 'CHIP Para Impresoras Epson T6711 WF-3011/ 3520/ 3620/ 3621/ 3640/ 3641/ WF-7111/7610/ 7620/ 7621/ L1455/ PX-M5040F/ M5041F/ M740F/ M741F', 100, 'CHIP T6711 WF-3011/ 3520/ 3620/ 3621/ 3640/ 3641/ WF-7111/7610/ 7620/ 7621/ L1455/ PX-M5040F/ M5041F/ M740F/ M741F', 3, '1753477645.jpg', 1, 1),
(110, 16, 'C9382', 'CHIP Para Impresoras Epson C5810 C5310 C5390 C5890 C9382', 100, 'Chip Caja Mantenimiento C5810 C5310 C5390 C5890 CHIP C9382 c12c938211 CHIP EPSON C5810', 3, '1753477958.jpg', 1, 1),
(111, 16, 'MC-32', 'CHIP CANON Mc-32 Tc-20 tc-5200 TC-5200M mc32 plotter', 98, 'CHIP CANON Tc-20 tc-5200 TC-5200M Mc-32 mc32 plotter', 3, '1753478722.jpg', 1, 1),
(112, 16, 'MC-G02', 'CHIP CANON MC-G02 Pixma G2160 / G3160', 100, 'CHIP CANON G2160 / G3160 / G1220 / G2260 / G3260 / G3360 / G1420 / G2420 / G2460 / G3420 G3460 / G3620', 3, '', 1, 1),
(113, 16, 'MC-G01', 'CHIP Canon MC-G01 GX6010 GX7010', 98, 'Chip MAXIFY GX7010, GX7020, GX7030, GX7040, GX7050, GX7060, GX7070, GX7080, GX7090, GX7091, GX7092', 3, '1753479505.jpg', 1, 1),
(114, 16, 'MC-G03', 'Chip canon MC-G03 Canon GX3090, GX3091, GX3092, GX4090, GX4091, GX4092, GX3060, GX4060', 100, 'Chip Canon Mc-G03, Gx2010 Gx3010 Gx4010', 3, '', 1, 1),
(115, 24, '1LT', 'Liquido Limpiador De Cabezales Epson / Canon / Hp / Brother  Y DTF - 1 Litro', 6, 'strong Washing', 3, '', 1, 1),
(116, 15, 'LW125ML', 'Liquido Limpiador De Cabezales Epson / Canon / Hp / Brother  Y DTF - 125 ML', 10, 'LIQUIDO WASHING 125ml', 3, '', 1, 1),
(117, 21, 'CBT4500W', 'Cabezal De Impresión Brother MFC-T4500DW 100% Original', 5, 'Cabezal Brother', 3, '', 1, 1),
(118, 21, 'CBT45OOG', 'Cabezal De Impresión Brother MFC-T4500DW GENERICA', 10, 'CABEZAL BROTHER T4500W', 3, '', 1, 1),
(119, 22, '345', 'MANEMIETO GENERAL', 100, 'Servicio tecnico', 3, '', 1, 1),
(120, 22, 'SERV 1', 'Servicio y reparacion', 500, 'descripción', 3, '1753903201.jpg', 1, 2),
(121, 23, 'SERVI', 'Servicio Nuevo.119', 0, 'descripcion', 3, '', 1, 2),
(122, 23, 'SERVI', 'limpieza de cabezal de epson l355', 0, 'descripcion', 3, '', 1, 2),
(123, 23, 'SERVI', 'Servicio Nuevo.121', 0, 'descripcion', 3, '', 1, 2),
(124, 23, 'SERVI', 'mantenimiento general', 0, 'descripcion', 3, '', 1, 2),
(125, 23, 'SERVI', 'Servicio Nuevo.123', 0, 'descripcion', 3, '', 1, 2),
(126, 21, 'C051A', 'CABEZAL HP M0H51A NEGRO GT5820 GT5810 110/115/116/118/119/300/310/315/400 / 410 / 415', -7, 'Impresora HP Ink Tank', 3, '1753728017.jpg', 1, 1),
(127, 21, 'CH50A', 'CABEZAL HP Tricolor M0H50A GT5820 GT5810 110/115/116/118/119/300/310/315/400/410 /415/515/530/580/615/650', -11, 'HP Ink Tank', 3, '1753728583.jpg', 1, 1),
(128, 21, 'CH17AL', 'CABEZAL HP 3YP17AL TRICOLOR P/ SMART TANK 660, 670, 700, 720 750 790  660, 670, 700,  720,  725, 750,  755, 790,  795', 37, 'SMART TANK 660, 670, 700,  720,  725, 750,  755, 790,  795, 6000 series,  7000 series,  7300 series,  7600', 3, '1753729168.jpg', 1, 1),
(129, 21, 'CH75AL', 'CABEZAL HP X4E75AL BLACK SMART TANK 500/510/515/530/550/570/580/610/615/650/720', 2, 'Smart 500/510/530/610/550/570/650', 3, '1753729923.jpg', 1, 1),
(130, 16, 'RP1020', 'RODILLO DE PRESION HP M1005/1010/1015/1018/1020/1022', 9, 'Rodillo De Presión Hp 1010 1015 1018 1020 1022', 3, '1753730744.jpg', 1, 1),
(131, 16, 'CG3100', 'CABEZAL CANON BH-1 G1100/1110/G2100 G2110 G3100 G3110 G4100 G4110', 10, 'G1100/G1110/2100/2101/G2110/2111/3100/3101/3110/3111/4100/4102/4110/4111', 3, '1753731617.jpg', 1, 1),
(132, 16, 'COLORG3100', 'CABEZAL CANON CH-1 G1100/1110/G2100 G2110 G3100 G3110 G4100 G4110', 63, 'Tricolor CH-1 P G3100 G3110 G3101 G3100 G4100 G4110 G2110 G2100', 3, '1753733358.jpg', 1, 1),
(133, 21, 'CA92COLOR', 'CABEZAL CANON CA92 COLOR G1100 G2100 G3100 G4100 G4110', 9, 'CAJA Canon Pixma G1000 , Canon Pixma G1010 , Canon Pixma G2000 , Canon Pixma G2002 , Canon Pixma G2010 , Canon Pixma G2012 , Canon Pixma G3000 , Canon Pixma G3010 , Canon Pixma G3012 , Canon Pixma G4000 , Canon Pixma G4010', 3, '1753733981.jpg', 1, 1),
(134, 21, 'CH-10TRICOLOR', 'Cabezal Canon CH-10 G5010, G6010, G7010, G2160, G3160 TRICOLOR', 10, 'Canon Pixma G5010, G6010,G7010,G2160, G3160 TRICOLOR', 3, '1753734391.jpg', 1, 1),
(135, 21, 'BH-10BLACK', 'Cabezal Canon BLACK BH-10 G5010, G6010, G7010, G2160, G3160', 3, 'Canon Pixma G5010, G6010,G7010,G2160, G3160.', 3, '1753734542.jpg', 1, 1),
(136, 21, 'HP', 'Grasa original HP. FUSOR G300-GREASE MADE IN JAPAN 50g', 3, 'grasa para teflón', 3, '1753734880.jpg', 1, 1),
(137, 24, 'MOLYKOTE', 'Grasa MOLYKOTE Original para impresora HP-500, G-300, G-8005, G-8010, 500g, 20g película de fusor, aceite, lubricantes de silicona para copiadora/IMPRESORAS', 1, 'GRASA MOLYKOTE 20G', 3, '1753735929.png', 1, 1),
(138, 24, 'G20G', 'GRASA PARA ENGRANAJE 20G PARA IMPRESORAS EPSON/CANON/HP Y BROTHER', 0, 'GRASA DE ENGRANAJE', 3, '1753737038.jpg', 1, 1),
(139, 24, 'grasa', 'Grasa para impresora de gran formato Epson/canon/Hp/Brother  G-26', 1, 'Grasa de engranaje', 3, '1753737584.jpg', 1, 1),
(140, 24, 'PMX-4', 'Pasta Termica MX-4 Artic 4g Silicona Refrigerante para CPU/LAPTOP', 1, 'pasta', 3, '1753737765.jpg', 1, 1),
(141, 17, 'T700W', 'Cabezal Brother J100 J200 T300 T500 T700 T800 Original Nuevo', 2, 'CABEZAL PARA IMPRESORA BROTHER T700', 3, '1753738580.png', 1, 1),
(142, 17, 'T700G', 'Cabezal Brother J100 J200 T300 T500 T700 T800 GENERICO', 2, 'CABEZAL T700G', 3, '', 1, 1),
(143, 17, 'T710W', 'Cabezal Brother DCP-T710W / DCP-T720DW / DCP-T820DW / MFC-T910DW / MFC-T920DW Original  Nuevo', 1, 'Cabezal Brother DCP-T710W', 3, '1753739120.png', 1, 1),
(144, 17, 'T710G', 'Cabezal Brother DCP-T710W / DCP-T720DW / DCP-T820DW / MFC-T910DW / MFC-T920DW Generico', 1, 'Cabezal Brother T710', 3, '1753739175.png', 1, 1),
(145, 17, 'T510W', 'abezal Brother T510 Original', 1, 'Brother DCP-T310,T510, T520, T420, T220', 3, '1753739375.jpg', 1, 1),
(146, 17, 'T510G', 'CABEZAL Brother DCP-T310,T510, T520, T420, T220 GENERICO', 1, 'T510W', 3, '1753739491.jpg', 1, 1),
(147, 24, 'T574', 'TINTA EPSON T574 CYAN Light L8050/ L18050', 3, 'TINTA', 3, '', 1, 1),
(148, 23, 'SERVI', 'SERVICO DE REPARACION DE PLACA L4260, MANT DE CABEZAL, Y CAMBIO DE ALMOHADILLAS', 0, 'descripcion', 3, '', 1, 2),
(149, 23, 'SERVI', 'GF', 0, 'descripcion', 3, '', 1, 2),
(150, 23, 'SERVI', 'reparacion de placa y mantenimiento general', 0, 'descripcion', 3, '', 1, 2),
(151, 23, 'SERVI', 'Servicio Nuevo.148', -1, 'descripcion', 3, '', 1, 2),
(152, 17, 'IlEPSON 5590', 'IMPRESORA EPSON L5590 MULTIFUNCIONAL  WIFI ETHERNET FAX- ADF.', 19, 'ipr', 3, '', 1, 1),
(153, 17, 'IL4260', 'IMPRESORA Epson L4260MULTIFUNCIONAL EPSON ECOTANK WIFI DUPLEX', 99, 'L4260', 3, '', 1, 1),
(154, 17, 'M428LJ', 'IMPRESORA LASER MULTIFUNCIONAL HP NEGRO LASERJET PRO M428FDW', 100, 'LASER', 3, '', 1, 1),
(155, 23, 'SERVI', 'Servicio Nuevo.152', 0, 'descripcion', 3, '', 1, 2),
(156, 23, 'SERVI', 'instalacion y mantenimeinto general', -1, 'descripcion', 3, '', 1, 2),
(157, 23, 'SERVI', 'limpieza de cabezal, lavado de tanque y cambio de tintas epson l5590', -1, 'descripcion', 3, '', 1, 2),
(158, 24, 'T12AO', 'TONER HP Q2612A LJ1020/3052/3055/1005/3050', 100, 'toner original', 3, '', 1, 1),
(159, 24, 'T12AG', 'TONER HP Q2612A LJ1020/3052/3055/1005/3050 Generico', 200, 'TONER GENERIA', 3, '', 1, 1),
(160, 15, 'T105A', 'TONER HP 105A BLACK (W1105A) LASERJET 107/135/137 1000 PAG.', 100, 'toner original', 3, '', 1, 1),
(161, 15, '103A', 'TONER HP 103A NEGRO (W1103A) LASER NEVERSTOP 1000/1200 2500 PAG', 100, 'toner original', 3, '', 1, 1),
(162, 24, '58A', 'TONER HP 58A NEGRO (CF258A) LASERJET M404/M428 3000 PAG.', 100, 'toner original', 3, '', 1, 1),
(163, 24, '48A', 'TONER HP 48A NEGRO (CF248A) LASERJET M15/M15W/M28/M28W 1000 PAG.', 100, 'toner original', 3, '', 1, 1),
(164, 24, '414A BK', 'TONER HP 414A BLACK (W2020A) LASERJET M454/M479 2400 PAG.', 100, 'toner original', 3, '', 1, 1),
(165, 24, '26A', 'TONER HP 26A BLACK (CF226A) LASERJET M402/M426 3100 PAG.', 100, 'toner original', 3, '', 1, 1),
(166, 24, '414AC', 'TONER HP 414A CYAN (W2021A) LASERJET M454/M479 2100 PAG.', 100, 'toner original', 3, '', 1, 1),
(167, 24, '414M', 'TONER HP 414A MAGENTA  (W2021A) LASERJET M454/M479 2100 PAG.', 100, 'toner original', 3, '', 1, 1),
(168, 24, '414AY', 'TONER HP 414A YELLOW (W2021A) LASERJET M454/M479 2100 PAG.', 100, 'toner original', 3, '', 1, 1),
(169, 24, '58X', 'TONER HP 58X NEGRO (CF258X) LASERJET M404/M428 10.000 PG', 100, 'toner original', 3, '', 1, 1),
(170, 24, '30X', 'TONER HP 30X NEGRO (CF230X) LASERJET M203/M227 3500 PAG.', 100, 'toner original', 3, '', 1, 1),
(171, 24, '30X', 'TONER HP 30X NEGRO (CF230X) LASERJET M203/M227 GENERICO', 100, 'TONER GENERICO', 3, '', 1, 1),
(172, 24, '12A', 'TONER HP Q2612A LJ1020/3052/3055/1005/3050 GENERCO', 200, 'TONER GENERICO', 3, '', 1, 1),
(173, 24, '58A', 'TONER HP 58A NEGRO (CF258A) LASERJET M404/M428 GENERICO', 200, 'TONER GENERICO', 3, '', 1, 1),
(174, 24, '58X', 'TONER HP 58X NEGRO (CF258X) LASERJET M404/M428 GENERICO', 200, 'TONER GENERICO', 3, '', 1, 1),
(175, 24, '26A', 'TONER HP 26A BLACK (CF226A) LASERJET M402/M426 GENERICO', 200, 'TONER GENERICO', 3, '', 1, 1),
(176, 24, '202A', 'TONER HP 202A NEGRO (CF500A) LASERJET M254/M281 1400 PAG.', 10, 'toner original', 3, '', 1, 1),
(177, 24, '204AY', 'TONER HP 204A YELLOW (CF512A) LASERJET M154/M180/M181 900 PAG.', 10, 'toner original', 3, '', 1, 1),
(178, 24, '103ABK', 'PACK X2 KIT TONER HP 103A NEGRO (W1103AD) NEVERSTOP 1000/1200 2500 PAG C/U', 10, 'toner original', 3, '', 1, 1),
(179, 24, '19A', 'TONER DRUM IMAGING HP 19A (CF219A) LASERJET M102W/M130FW/M134A', 10, 'toner original', 3, '', 1, 1),
(180, 24, '26X', 'TONER HP 26X NEGRO (CF226X) LASERJET M402/M426 9000 PAG.', 10, 'toner original', 3, '', 1, 1),
(181, 24, '202A C', 'TONER HP 202A CIAN (CF501A) LASERJET M254/M281 1300 PAG.', 10, 'toner original', 3, '', 1, 1),
(182, 24, '17A', 'TONER HP 17A NEGRO (CF217A) LASERJET P1005/M102/M130 1600 PAG.', 10, 'toner original', 3, '', 1, 1),
(183, 24, '85A', 'TONER HP 85A NEGRO (CE285A) LASERJET P1102/M1212/M1132 1600 PAG.', 10, 'toner original', 3, '', 1, 1),
(184, 24, '83A', 'TONER HP 83A NEGRO (CF283A) LASERJET M201/M225/M215/M127 1500 PAG.', 10, 'toner original', 3, '', 1, 1),
(185, 24, '130A C', 'TONER HP 130A CYAN (CF351A) LASERJET M176/M177 1000 PAG.', 10, 'toner original', 3, '', 1, 1),
(186, 24, '201A', 'TONER HP 201A NEGRO (CF400A) LASERJET M277DW/M252DW 1500 PAG.', 10, 'toner original', 3, '', 1, 1),
(187, 24, '201A C', 'TONER HP 201A CYAN (CF401A) LASERJET M277DW/M252DW 1400 PAG.', 10, 'toner original', 3, '', 1, 1),
(188, 24, '410A', 'TONER HP 410A NEGRO (CF410A) LASERJET M477/M478/M452 2300 PAG.', 10, 'toner original', 3, '', 1, 1),
(189, 24, '410A M', 'TONER HP 410A MAGENTA (CF413A) LASERJET M477/M478/M452 2300 PAG.', 10, 'toner original', 3, '', 1, 1),
(190, 24, '206A', 'TONER HP 206A NEGRO (W2110A) LASERJET M255/M283 1350 PAG.', 10, 'toner original', 3, '', 1, 1),
(191, 24, '215A', 'TONER HP 215A NEGRO (W2310A) LASERJET M155/M155/M182/M183 1050 PAG.', 10, 'toner original', 3, '', 1, 1),
(192, 24, '131A C', 'TONER HP CF211A P/LJ 131A M276NW CYAN (131A)', 10, 'toner original', 3, '', 1, 1),
(193, 24, '154A', 'TONER HP W1540A (154A) P/LJ 1502/2502/MFP 1602W/2602SDW/2500 PAG. BLACK', 10, 'toner original', 3, '', 1, 1),
(194, 24, '83A', 'TONER HP CF283AD P/ L.J. MFP M127F BLACK PACK X2', 10, 'toner original', 3, '', 1, 1),
(195, 24, '83A', 'TONER HP CF283AD P/ L.J. MFP M127F BLACK PACK GENERICO', 10, 'TONER GENERICO', 3, '', 1, 1),
(198, 24, '78A', 'TONER HP CE278A P/LASER 1606DN', 10, 'toner original', 3, '', 1, 1),
(199, 24, '78A', 'TONER HP CE278A P/LASER 1606DN GENERICO', 100, 'TONER GENERICO', 3, '', 1, 1),
(200, 16, 'CM32', 'Caja De Mantenimiento Canon MC-32 ImagePROGRAF TC-20 / TC-5200 Original', 10, 'CAJA M. ORIGINAL', 3, '', 1, 1),
(201, 16, 'CM32', 'Caja De Mantenimiento Canon MC-32 ImagePROGRAF TC-20 / TC-5200 GENERICO', 19, 'CAJA GENERICO', 3, '', 1, 1),
(202, 16, 'MCG02', 'Caja de Mantenimiento Canon MC-G02 Pixma G2160, G3160 ORIGINAL', 7, 'CAJA ORIGINAL', 3, '', 1, 1),
(203, 16, 'CMG02', 'Caja de Mantenimiento Canon MC-G02 Pixma G2160, G3160 Generico', 99, 'CAJA  M', 3, '', 1, 1),
(204, 16, 'G-01', 'CAJA DE MANTENIMIENTO CANON MC-G01 GX6010/ GX7010/ 6020/ 6030 ORIGINAL', 10, 'CAJA MANTENIMIENTO', 3, '', 1, 1),
(205, 16, 'CMG01', 'CAJA DE MANTENIMIENTO CANON MC-G01 GX6010/ GX7010/ 6020/ 6030 GENERICO', 99, 'GENERICO', 3, '', 1, 1),
(206, 16, 'CT5820', 'Caja de mantenimiento T5820 ICMT1 EPSON D700 P800 SC-PX3V D800 D880', 20, 'CAJA GENERICO', 3, '', 1, 1),
(207, 16, 'MC-20', 'Caja De Mantenimiento Canon MC-20 imagePROGRAF PRO-500 / PRO-1000 / PRO-1100', 10, 'ORIGINAL', 3, '', 1, 1),
(208, 16, 'MC MC20', 'Caja De Mantenimiento Canon MC-20 imagePROGRAF PRO-500 / PRO-1000 / PRO-1100 GENERICO', 50, 'CAJA GENERICO', 3, '', 1, 1),
(209, 16, 'CM T6710', 'CAJA DE MANTENIMIENTO EPSON T671600 WF-52905710/ 5790/ 5299/ 5799 ORIGINAL', 100, 'CAJA ORIGINAL', 3, '', 1, 1),
(210, 16, 'MCT6710', 'CAJA DE MANTENIMIENTO EPSON T671600 WF-52905710/ 5790/ 5299/ 5799 GENERICO', 100, 'CAJA GENERICO', 3, '', 1, 1),
(211, 16, 'CMT6711', 'CAJA DE MANTENIMIENTO EPSON T671100 WORKFORCE P/L1455 ORIGINAL', 10, 'CAJA ORIGINAL', 3, '', 1, 1),
(212, 16, 'CMT6711', 'CAJA DE MANTENIMIENTO EPSON T671100 P/WORKFORCE P/L1455 GENERICO', 100, 'CAJA GENERICO', 3, '', 1, 1),
(213, 16, 'CMT6712', 'CAJA DE MANTENIMIENTO EPSON T671200 WF-R8590/ 6590 ORIGINAL', 10, 'CAJA ORIGINAL', 3, '', 1, 1),
(214, 16, 'CMT6712', 'CAJA DE MANTENIMIENTO EPSON T671200 WF-R8590/ 6590 GENERICO', 99, 'CAJA GENERICO', 3, '', 1, 1),
(215, 16, 'CMT6713', 'Caja De Mantenimiento Epson T671300 WorkForce Enterprise WF-C21000 / WF-C20600 / WF-C20750 / WF-M20590 / WF-C17590 / WF-C17590 ORIGINAL', 10, 'CAJA ORIGINAL', 3, '', 1, 1),
(216, 16, 'CMT6713', 'Caja De Mantenimiento Epson T671300 WorkForce Enterprise WF-C21000 / WF-C20600 / WF-C20750 / WF-M20590 / WF-C17590 / WF-C17590 GENERICO', 500, 'CAJA GENERICO', 3, '', 1, 1),
(217, 16, 'CMT6714', 'Caja De Mantenimiento Epson T671400/PXMB6 WF-C878R / WF-C879R Original', 10, 'CAJA ORIGINAL', 3, '', 1, 1),
(218, 16, 'CMT6714', 'Caja De Mantenimiento Epson T671400/PXMB6 WF-C878R / WF-C879R GENERICO', 100, 'CAJA GENERICO', 3, '', 1, 1),
(221, 16, 'MC G04', 'Caja De Mantenimiento Canon MC-G04 Pixma G2170 / G3170 / G1230 / G2270 Original', 9, 'CAJA ORIGINAL', 3, '', 1, 1),
(222, 16, 'CM G04', 'Caja De Mantenimiento Canon MC-G04 Pixma G2170 / G3170 / G1230 / G2270 GENERICO', 100, 'CAJA GENERICO', 3, '', 1, 1),
(223, 16, 'CM G05', 'Caja de mantenimiento Canon Mc-G05 Original Canon Gx1010 Gx2010', 100, 'CAJA GENERICO', 3, '', 1, 1),
(224, 16, 'CM G05', 'Caja de mantenimiento Canon Mc-G05 Original Canon Gx1010 Gx2010 ORIGINAL', 10, 'CAJA ORIGINAL', 3, '', 1, 1),
(225, 16, 'CMF170', 'CAJA DE MANTENIMIENTO EPSON SC23MB P/SC-F170 ORIGINAL', 20, 'CAJA ORIGINAL', 3, '', 1, 1),
(226, 16, 'CMF170', 'CAJA DE MANTENIMIENTO EPSON SC23MB P/SC-F170 GENERICO', 98, 'CAJA GENERICO', 3, '', 1, 1),
(227, 24, 'TS125C', 'Tintas SUBLIMACIÓN para EPSON 125ML CYAN', 10, 'SUBLIMACION', 3, '', 1, 1),
(228, 24, 'TS125M', 'Tintas SUBLIMACIÓN para EPSON 125ML MAGENTA', 10, 'TINTA SUBLIMACION', 3, '', 1, 1),
(229, 24, 'TS125Y', 'Tintas SUBLIMACIÓN para EPSON 125ML YELLOW', 10, 'TINTA SUBLIMACION', 3, '', 1, 1),
(230, 24, 'TS125BK', 'Tintas SUBLIMACIÓN para EPSON 125ML BLACK', 10, 'TINTA SUBLIMACION', 3, '', 1, 1),
(231, 24, 'T5001 3PK', 'TINTA BROTHER TRI-PACK BTD100CL 3PK COLOR P/ T430DW/ T530DW/ T730DW/ T830DW/ T930DW', 10, 'TINTA ORIGINAL', 3, '', 1, 1),
(232, 24, 'TD60BK', 'TINTA BROTHER BTD60BK P/T310/T510/T710 BLACK', 10, 'TINTA ORIGINAL', 3, '', 1, 1),
(233, 24, 'L3110', 'CAJA DE MANTENIMIENTO EPSON L5190 L5290 L1210 L1250 L3110 L3210 L3150 L3250 L3160 L3260 GENERICO', 98, 'GENERICO', 3, '', 1, 1),
(234, 24, 'CML355', 'Caja De Mantenimiento Epson L110 / L210 / L220 / L300 / L310 / L350 / L355 / L365 / L395 / L455 / L475 / L495 Nuevo', 98, 'CAJA GENERICO', 3, '', 1, 1),
(235, 16, 'L555', 'Caja de mantenimiento Epson L551, L550, L558, L451, L555, L565, M101, M105, M201, M205 GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(236, 17, 'L14150', 'IMPRESORA MULTIFUNCIONAL EPSON ECOTANK L14150 A3 + WIFI', 10, 'IMP', 3, '', 1, 1),
(237, 16, 'KL355', 'KIT RODILLO INFERIOR + CAUCHO/GOMA ARRASTRE DE PAPEL EPSON L210 L220 L355 L375 L380 L495 L575', 97, 'KIT RODILLO', 3, '', 1, 1),
(238, 16, 'RL3110', 'Rodillo Arrastre Papel Impresora Epson L1110 L1210 L1250, L3110, L3210 L3150, L3250 L3160 L3260 L5190 L5290', 91, 'R', 3, '', 1, 1),
(239, 16, 'BL4160', 'BOMBA DE SUCCION EPSON L4150 L4160 L4260 L4261', 8, 'ORIGINAL', 3, '', 1, 1),
(240, 16, 'BL6171', 'BOMBA DE SUCCION EPSON L6270 L6190 L6171 L6170', 8, 'ORIGINAL', 3, '', 1, 1),
(241, 16, 'BL3110', 'BOMBA DE SUCCION EPSON L3110 L3150 L3160 L3210 L3250 L5190 L5191 L5290', 9, 'ORIGINAL', 3, '', 1, 1),
(242, 16, 'BL5590', 'BOMBA DE SUCCION EPSON L5590', 10, 'ORIGINAL', 3, '', 1, 1),
(243, 16, 'BL1800', 'Bomba de Succión  EPSON L1800', 10, 'ORIGINAL', 3, '', 1, 1),
(244, 16, 'BL800', 'Bomba de Succión EPSON L800,L805,L810,L850,T50', 10, 'ORIGINAL', 3, '', 1, 1),
(245, 16, 'BL555', 'Bomba DE SUCCION EPSON L555,L575,M100,M200', 10, 'ORIGINAL', 3, '', 1, 1),
(246, 16, 'BL8150', 'BOMBA DE SUCCION EPSON L8180, L8160, L8050, ET-8500, ET-8550, L18050, ET-18100', 10, 'ORIGINAL', 3, '', 1, 1),
(247, 16, 'BM2170', 'BOMBA DE SUCCION EPOSON M2140, M3140, M2170, M3170, M3180', 10, 'ORIGINAL', 3, '', 1, 1),
(248, 16, 'T544', 'Pack de 4 botellas de tinta Epson T544 Negro/Cyan/Magenta/Amarillo, rinde hasta 4500 página negro/ 7500 páginas color, 4x 65 ml', 19, 'ORIGINAL', 3, '', 1, 1),
(249, 23, 'SERVI', 'cambio de cabezal', 0, 'descripcion', 3, '', 1, 2),
(250, 16, 'AL1800', 'Almohadilla EPSON L1800 NUEVO GENERICO', 10, 'NUEVO', 3, '', 1, 1),
(251, 16, 'AL800', 'Almohadilla EPSON L800 L805 T50 R290 P50', 100, 'NUEVO', 3, '', 1, 1),
(252, 16, 'AL850', 'Almohadilla Epson L850/L810', 100, 'NUEVO', 3, '', 1, 1),
(253, 16, 'AG01', 'Almohadilla CANON MC-G01 G01 GX6010 GX7010', 99, 'NUEVO', 3, '', 1, 1),
(254, 24, 'T673C', 'TINTA EPSON T673 CYAN LIGH L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(255, 24, 'T673M', 'TINTA EPSON T673 MAGENTA LIGH L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(256, 24, 'T673Y', 'TINTA EPSON T673 YELLOW L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(257, 24, 'T673CL', 'TINTA EPSON T673 CYAN L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(258, 24, 'T673ML', 'TINTA EPSON T673 MAGENTA L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(259, 24, 'T673BK', 'TINTA EPSON T673 BLACK L800 / L805 / L850 / L1800', 100, 'ORIGINAL', 3, '', 1, 1),
(260, 23, 'SERVI', 'instalacion de cabezal epson l4160', -1, 'descripcion', 3, '', 1, 2),
(261, 23, 'SERVI', 'Servicio Nuevo.254', -1, 'descripcion', 3, '', 1, 2),
(262, 23, 'SERVI', 'reparacion de placa de epson l210', -1, 'descripcion', 3, '', 1, 2),
(263, 23, 'SERVI', 'Servicio Nuevo.256', -1, 'descripcion', 3, '', 1, 2),
(264, 17, '', 'IMPRESORA', 10, 'MULTIFUNCIONAL', 3, '', 1, 1),
(265, 23, 'SERVI', 'Servicio Nuevo.258', 0, 'descripcion', 3, '', 1, 2),
(266, 23, 'SERVI', 'impresoraepson l210 mutifuncional', -1, 'descripcion', 3, '', 1, 2),
(267, 16, 'T4015', 'TEFLÓN METÁLICO FILM P4014/4015/4515/M4555/M6XX M630 MFP', 10, 'TEFLÓN METÁLICO FILM P4014/4015/4515/M4555/M6XX', 3, '', 1, 1),
(268, 16, 'TRM1-4554', 'TEFLON M400/P1008/3050/M2727/1022/M1102/M125/M126/M226 ORIGINAL', 9, 'JAPAN LJ 4515/M605/630', 3, '', 1, 1),
(269, 16, 'P1005', 'RODILLO DE PRESIÓN HP P1005/P1006/M1212/M1210/M1132', 10, 'LPR-P1005', 3, '', 1, 1),
(272, 16, 'LPR-P1102', 'rodillo de presión HP P1566 1606 1102 1106 1108 1536 M1136 M126 127 MF4410 4450 4452 4550', 10, 'GENERICOLPR-M1536', 3, '', 1, 1),
(273, 16, 'LPR-402', 'Rodillo de Presión Hp Laserjet Pro M402 M403 MFP M426 M427', 10, 'Laserjet Pro M402 M403 Mfp M426 GENERICO', 3, '', 1, 1),
(274, 16, 'LPR-M401', 'Rodillo de presión HP 2055, 2035, P2035, P2055 Pro, 400, M401, M401N, M425dn, M425, M401dn, LPR-P2035', 10, 'LaserJet P2035, P2055, P2030, P2050 Pro 400, M401, M425, M401n, M401dn, M425dn, LBP 6300, 6650,', 3, '', 1, 1),
(275, 16, 'LPR-M527', 'Rodillo Presión HP LaserJet Pro M501 M506 M507 M528 M527 M501dn M501n M506dn M506n M506x', 10, 'HP LaserJet Pro  M527', 3, '', 1, 1),
(276, 16, 'RP1005', 'RODILLO DE PRESIÓN HPM1212/M1210/M1132  P1005, P1006, P1505, M1120, M1522NF, 1007, 1008,', 10, 'Laserjet P1005', 3, '', 1, 1),
(277, 16, 'LPR-107', 'Rodillo de Presión Hp Laserjet Pro 103a 107a 107w 108 108w 110a 131a 133pn 135a 136a 136nw 137fnw 138p', 10, 'RODILLO PRESION HP 107W / 107A', 3, '', 1, 1),
(278, 16, 'LPR-3015', 'RODILLO DE PRESIÓN HP LaserJet Enterprise P3015 P3015d P3015dn P3015x M521 M525', 10, 'LASERJET 3015', 3, '', 1, 1),
(279, 16, 'LPR-M15', 'RODILLO DE PRESION HP LaserJet Pro, M12a, M14, M15a, M15w, M16a, M17a, M17w, M28a, M28w, M29a, M29w, M30a, M30w, M31a, M31w', 10, 'LASERJET M15', 3, '', 1, 1),
(280, 16, 'LJCM452/477', 'Rodillo de presión HP Color LaserJet Pro M377 M477 M452 377 477 452', 10, 'ORIGINAL LJ M452/477', 3, '', 1, 1),
(281, 16, 'LPR-426', 'RODILLO DE PRESION HP M402 M403 M426 M427 M402n M402dn M403n M403d M426dw M426fdn M427dw M427fdn', 10, 'LASERJET LPR-426', 3, '', 1, 1),
(282, 16, 'KIT', 'Kit de limpieza de impresora para Epson L210 220 L300 L350 L380 L475 L555 L650 L3150 L3110 L3160 L4150 L4160 L4260 L5190 L5290  L6171 6270 L5590 L14150 F170', 100, 'NUEVO', 3, '', 1, 1),
(283, 16, 'KITHP', 'Kit de limpieza de impresora para HP 310 315 400 410 415', 100, 'NUEVO', 3, '', 1, 1),
(284, 23, 'SERVI', 'MANTENIMEITJO Y CAÑLOBRACION', -1, 'descripcion', 3, '', 1, 2),
(285, 23, 'SERVI', 'Servicio Nuevo.276', 0, 'descripcion', 3, '', 1, 2),
(286, 23, 'SERVI', 'calibtacion d e impreosra canon  g3110', 0, 'descripcion', 3, '', 1, 2),
(287, 23, 'SERVI', 'cslibracion d emecanismo g3110', -1, 'descripcion', 3, '', 1, 2),
(288, 24, 'TN217C', 'TONER BROTHER TN-217C CYAN L3270/L3551/L3750  Generico', 100, 'NUEVO', 3, '', 1, 1),
(289, 24, 'TN217M', 'TONER BROTHER TN-217M Magenta L3270/L3551/L3750  Generico', 100, 'NUEVO', 3, '', 1, 1),
(290, 24, 'TN217Y', 'TONER BROTHER TN-217Y Yellow L3270/L3551/L3750  Generico', 100, 'NUEVO', 3, '', 1, 1),
(291, 24, 'TN217BK', 'TONER BROTHER TN-217Bk Black L3270/L3551/L3750  Generico', 100, 'NUEVO', 3, '', 1, 1),
(292, 24, 'TN217M', 'TONER BROTHER TN-217M MAGENTA L3270/L3551/L3750', 100, 'ORIGINAL', 3, '', 1, 1),
(293, 24, 'TN217C', 'TONER BROTHER TN-217M CYAN L3270/L3551/L3750', 100, 'ORIGINAL', 3, '', 1, 1),
(294, 24, 'TN217Y', 'TONER BROTHER TN-217Y YELLOW L3270/L3551/L3750', 100, 'ORIGINAL', 3, '', 1, 1),
(295, 24, 'TN217BK', 'TONER BROTHER TN-217BK BLACK L3270/L3551/L3750', 100, 'ORIGINAL', 3, '', 1, 1),
(296, 24, 'L', 'ENCODE LINEAL L800 L850 T50', 10, '', 3, '', 1, 1),
(297, 16, 'XP211', 'Chip XP-211, XP-212, XP-213, XP-214, XP-216, PX-046A XP-230, XP-231, XP-235, XP-235A XP-240, XP-241, XP-243 XP-245, XP-247, XP-255, XP-257 PX-049A, PX-048A XP-340, XP-342, XP-343, XP-345, XP-352, XP-355 XP-430, XP-431, XP-434, XP-440, XP-441, XP', 99, 'NUEVO', 3, '', 1, 1),
(298, 23, 'SERVI', 'SERIE: 3A29B7EQOC LM2', 0, 'descripcion', 3, '', 1, 2),
(299, 23, 'SERVI', 'SERIE. 3A29B7EQOC LM2', -1, 'descripcion', 3, '', 1, 2),
(300, 23, 'SERVI', 'serie: 3848270r0d 1g1 - 3A9AO7EPQR LM1', -1, 'descripcion', 3, '', 1, 2),
(301, 17, 'L15150', 'Impresora Epson multifuncional L15150 A3+ Wifi/Ethernet, inyección de tinta, con tanques recargables', 100, 'NUEVO', 3, '', 1, 1),
(302, 17, 'L14150', 'IMPRESORA EPSON MULTIFUNCIONAL ECOTANK L14150 A3 + WIFI', 100, 'NUEVO', 3, '', 1, 1),
(303, 23, 'SERVI', 'Servicio Nuevo.294', 0, 'descripcion', 3, '', 1, 2),
(304, 23, 'SERVI', 'LIMPIEZA DE TANQUE + CABIO DE TINTAS', 0, 'descripcion', 3, '', 1, 2),
(305, 23, 'SERVI', 'Servicio Nuevo.296', 0, 'descripcion', 3, '', 1, 2),
(306, 23, 'SERVI', 'Servicio Nuevo.297', 0, 'descripcion', 3, '', 1, 2),
(307, 23, 'SERVI', 'Servicio Nuevo.298', 0, 'descripcion', 3, '', 1, 2),
(308, 23, 'SERVI', 'Servicio Nuevo.299', 0, 'descripcion', 3, '', 1, 2),
(309, 23, 'SERVI', 'Servicio Nuevo.300', 0, 'descripcion', 3, '', 1, 2),
(310, 23, 'SERVI', 'Servicio Nuevo.301', 0, 'descripcion', 3, '', 1, 2),
(311, 23, 'SERVI', 'Servicio Nuevo.302', 0, 'descripcion', 3, '', 1, 2),
(312, 23, 'SERVI', 'Servicio Nuevo.303', 0, 'descripcion', 3, '', 1, 2),
(313, 23, 'SERVI', 'Servicio Nuevo.304', 0, 'descripcion', 3, '', 1, 2),
(314, 23, 'SERVI', 'Servicio Nuevo.305', 0, 'descripcion', 3, '', 1, 2),
(315, 23, 'SERVI', 'Servicio Nuevo.306', 0, 'descripcion', 3, '', 1, 2),
(316, 23, 'SERVI', 'Servicio Nuevo.307', 0, 'descripcion', 3, '', 1, 2),
(317, 23, 'SERVI', 'Servicio Nuevo.308', 0, 'descripcion', 3, '', 1, 2),
(318, 23, 'SERVI', 'Servicio Nuevo.309', 0, 'descripcion', 3, '', 1, 2),
(319, 23, 'SERVI', 'Servicio Nuevo.310', 0, 'descripcion', 3, '', 1, 2),
(320, 23, 'SERVI', 'Servicio Nuevo.311', 0, 'descripcion', 3, '', 1, 2),
(321, 23, 'SERVI', 'Servicio Nuevo.312', 0, 'descripcion', 3, '', 1, 2),
(322, 23, 'SERVI', 'Servicio Nuevo.313', -1, 'descripcion', 3, '', 1, 2),
(323, 24, 't728', 'TINTA HP 3WX25A 728A 130ML MATTE BLACK', 100, 'ORIGINAL', 3, '', 1, 1),
(324, 24, 't728', 'TINTA HP F9J65A (728A) 130ML YELLOW', 100, 'ORIGINAL', 3, '', 1, 1),
(325, 24, 't728', 'TINTA HP F9J67A (728A) 130ML CYAN', 100, 'ORIGINAL', 3, '', 1, 1),
(326, 24, 't728', 'TINTA HP F9J66A (728A 130ML MAGENTA', 100, 'ORIGINAL', 3, '', 1, 1),
(327, 16, 'AC9344', 'Almohadilla Epson C9344L5590 2850 2830 WF-2850 WF-2830 XP-4105 XP-3100 4105 3100', 92, 'NUEVO', 3, '', 1, 1),
(328, 16, 'M612', 'TEFLON - FUSER FILM M607/M608/M609/M631/M632/M633/M634/M635/M636/M637/M612', 9, 'ORIGINAL', 3, '', 1, 1),
(329, 16, 'WF6590', 'CORREA DE CABEZAL WF6590', 99, 'NUEVO', 3, '', 1, 1),
(330, 15, 't504m', 'TINTA EPSON T504, Magenta  127ML PARA EPSON L4150 L4160 L4260 L9171 L6270 L14150', 99, 'ORIGINAL', 3, '', 1, 1),
(331, 16, 't504Y', 'TINTA EPSON T504, Yellow. 127ML PARA EPSON L4150 L4160 L4260 L9171 L6270 L14150', 99, 'ORIGINAL', 3, '', 1, 1),
(332, 16, 'g05', 'Caja de mantenimiento Canon Mc-G05 Gx1010 Gx2010 Genérica', 100, 'GENERICO', 3, '', 1, 1),
(333, 16, 'CABLE WF 6590', 'CORREA BANDA DENTA EPSON WF6590 6090 6093 9593 C8690a C8190a C869Ra M7070F S7110P', 99, 'GENERICO', 3, '', 1, 1),
(334, 16, 'BL1455', 'Bomba De Succión Epson L1455, Wf-7110, Wf-7120', 100, 'ORIGINAL', 3, '', 1, 1),
(335, 16, 'FX890', 'MASCARA DE CINTA FX890/FX2190', 9, 'ORIGINAL', 3, '1756773965.jpg', 1, 1),
(336, 24, 'ANTIVIRUS', 'Antivirus digital Kaspersky Standard, 1 dispositivo, 1 año', 20, 'ORIGINAL', 3, '', 1, 1),
(337, 16, 'KIT', 'KIT SEPARATION PAD ROLL L110/210/220/310/350/355/365', 100, 'NUEVO', 3, '', 1, 1),
(338, 16, 'PAD', 'SEPARATION PAD RETARD ROLLER  MOD. T1100, B1100 EPSON STYLUS L1300, 1410, 1390, 1900, L1800, 1400, 1430, ME1100, R1800, 2000', 100, 'ORIGINAL', 3, '', 1, 1),
(339, 16, 'JEBE', 'ROLLER PICKUP RUBBER EPSON 1292555/1635690 PARA IMPRESORAS EPSON L1300/L1800/T1100/B1100', 100, 'EPSON ECOTANK L1300/L1800, STYLUS OFFICE T1100/B1100', 3, '', 1, 1),
(340, 16, 'KIT', 'ROLLER PICKUP HOLDER RETURN  L110 / L130 / L210 / L220 /L300 / L350 /L355 / L360 / L365 / L380 Epson L405 / L455 / L465 / L555 / L565', 97, 'Roller Pickup Para Impresoras Epson Ecotank Epson L110 / L220 /L300 / L350 /L355 / L360 / L365 / L380 Epson L405 / L455 / L465 / L555 / L565', 3, '', 1, 1),
(341, 16, 'RODILLO', 'RODILLO ALIMENTADOR L110/210/220/310/350/355/365', 100, 'NUEVO', 3, '', 1, 1),
(342, 23, 'SERVI', 'placa de epson l210', -1, 'descripcion', 3, '', 1, 2),
(343, 16, 'ROLLER', 'ROLLER PICKUP MP P2035/P2055/M400/M421/M425', 100, 'NUEVO', 3, '1756774228.jpg', 1, 1),
(344, 16, 'SEPARADOR', 'SEPARATION PAD TRAY 2 P2035/P2055/M421/M425', 100, 'P2035/P2055 LASERJET', 3, '1756774385.jpg', 1, 1),
(345, 23, 'SERVI', 'reset g04', -1, 'descripcion', 3, '', 1, 2),
(346, 23, 'SERVI', 'reset  de caja de mantenimientp g04', 0, 'descripcion', 3, '', 1, 2),
(347, 23, 'SERVI', 'Servicio Nuevo.338', 0, 'descripcion', 3, '', 1, 2),
(348, 23, 'SERVI', 'cambio de funete brother t510', 0, 'descripcion', 3, '', 1, 2),
(349, 23, 'SERVI', 'instalcuion de faja, adf y atasco  epson 6590', 0, 'descripcion', 3, '', 1, 2),
(350, 16, 'roller', 'ROLLER PICKUP  P2035/2030/P2055/P2050/M400/M421/M425', 9, 'ORIGINAL', 3, '', 1, 1),
(351, 23, 'SERVI', 'cambio de fuente brother t510', -1, 'descripcion', 3, '', 1, 2),
(352, 23, 'SERVI', 'instalacion de faja, adf y calibracion 6590', -1, 'descripcion', 3, '', 1, 2),
(353, 23, 'SERVI', 'Servicio Nuevo.344', -1, 'descripcion', 3, '', 1, 2),
(354, 23, 'SERVI', 'reset g01', -1, 'descripcion', 3, '', 1, 2),
(355, 23, 'SERVI', 'disco solido de 240gb', -2, 'descripcion', 3, '', 1, 2),
(356, 16, 'kitm400', 'ROLLER PICKUP TRAY 2&amp;3 M421/425MFP LJ PRO M400 401', 9, 'ORIGINAL', 3, '', 1, 1),
(357, 16, 'LX350', 'Guía de papel  LX 350 PLATINA', 9, 'ORIGINAL', 3, '', 1, 1),
(358, 16, '667', 'CARTUCHO DE TINTA HP 667 TRICOLOR (3YM78AL) 1275/2374/2375/2376/2775/2776', 9, 'ORIGINAL', 3, '', 1, 1),
(359, 23, 'SERVI', 'cabezal hp original mas instalacion', -1, 'descripcion', 3, '', 1, 2),
(360, 23, 'SERVI', 'CALIBRACION DE CANON MG 2410', -1, 'descripcion', 3, '', 1, 2),
(361, 23, 'SERVI', 'INSTALACION DE RODILLOS Y DE SENSOR DE PAPEL DE EPSON L555', -1, 'descripcion', 3, '', 1, 2),
(362, 23, 'SERVI', 'IMPRESORA EPOSN L3110', -1, 'descripcion', 3, '', 1, 2),
(363, 23, 'SERVI', 'CABLE USB ORIGINAL', 0, 'descripcion', 3, '', 1, 2),
(364, 23, 'SERVI', 'MOTOR DE EPSON L1455', -1, 'descripcion', 3, '', 1, 2),
(365, 23, 'SERVI', 'tiene 3 mese de garantia solo usando sus tintas originales', -1, 'descripcion', 3, '', 1, 2),
(366, 21, 'pf-06', 'Cabezal Canon PF-06 Cabezal Original Negro y Color', 10, 'ORIGINAL', 3, '', 1, 1),
(367, 16, 'mc31', 'Caja De Mantenimiento Canon MC-31 imagePROGRAF TM-200 / TM-205 / TM-300 / TM-305 generico', 99, 'NUEVO', 3, '', 1, 1),
(368, 23, 'SERVI', 'mantenimiento de cabezal y purgado de sistema epson l350', -1, 'descripcion', 3, '', 1, 2),
(369, 24, '1515', 'TONER HP 125A yellow PARA CP1215 1515 1518 1312 generico', 10, 'NUEVO', 3, '', 1, 1),
(370, 23, 'SERVI', 'Servicio de instalación y configuración hp LaserJet P3015', -1, 'descripcion', 3, '', 1, 2),
(371, 24, '330A', 'TONER HP W1330A  L.J 408DN BLACK 5000PG ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(372, 24, '330A', 'TONER HP W1330A  L.J 408DN BLACK 5000PG GENERICO', 10, 'NUEVO', 3, '', 1, 1),
(373, 24, '330X', 'TONER HP W1330X L.J 408DN BLACK 15000PG', 10, 'NUEVO', 3, '', 1, 1),
(374, 24, '330X', 'TONER HP W1330X L.J 408DN BLACK 15000PG ORIGINAL', 10, 'ORIGINAL', 3, '', 1, 1),
(375, 24, 'CANON', 'TONER CANON GPR-22 (IR1018/1022/1024) GENERICO', 9, 'NUEVO', 3, '', 1, 1),
(376, 16, '', 'almohadillas  l3250 más reseteador', 10, 'NUEVO', 3, '', 1, 1),
(377, 16, 'G04', 'Reseteador Canon MC-G04 Pixma G2170 / G3170 / G1230 / G2270', 99, 'NUEVO', 3, '', 1, 1),
(378, 16, 'c230', 'rodillo para escner de rueda de cambio DR-C230, DR-C240, DR-M160', 10, 'ORIGINAL', 3, '', 1, 1),
(379, 16, 'L6171', 'Rodillos De Recogida Epson EcoTank L6171 / L6270 / L8160 / L8180 / L14150 / L15150 Roller Pickup Assy', 97, 'NUEVO', 3, '1757951627.jpg', 1, 1),
(380, 16, 'faja c5710', 'Correa o faja de distribución para EPSON C5210, C5290, C5299, C5710, C5790, C579, M5299, M5799, ET-8700, WF-3540', 8, 'ORIGINAL', 3, '', 1, 1),
(381, 18, 'lapto', 'Laptop Hp Core 7-150u Envy X360 14-es1023 2-in-1 (9r8r3ua#aba) Pantalla 14&quot; Fhd, Ram 16gb, Ssd 512gb', 10, 'NUEVO', 3, '', 1, 1),
(382, 23, 'SERVI', 'SERVICIO LLENADO DE TINTAS', 0, 'descripcion', 3, '', 1, 2),
(383, 16, 'TERMAL', 'TERMAL PAD 0.50MM 100*100', 9, '', 3, '', 1, 1),
(384, 16, 'pc', 'procesador CORE i5 13400 LGA1700, mainboard GIGABYTE H610M-K DDR4, disco duro mecánico 1TB WESTERN DIGITAL, Kingston nv3 m2 500gb, kit mouse y teclado LOGITECH, monitor LG 22MR410-B,  case ANTRYX de 500 watts', 10, 'pc', 3, '', 1, 1),
(385, 23, 'SERVI', 'Servicio Nuevo.376', 0, 'descripcion', 3, '', 1, 2),
(386, 16, 'M612', 'RODILLO DE PRESION M607/M608/M609/M63X/E62555/E62565/E62575 Num.  Parte : LPR-M609/LPR-M608 M612', 99, 'ORIGINAL', 3, '', 1, 1),
(387, 16, 'RIDILLOS', 'PRESSURE ROLLER  M607/M608/M609/M63X Num.  Parte : LPR-M609/LPR-M608', 100, 'NUEVO', 3, '', 1, 1),
(388, 16, 'M612', 'CHIP RESET KIT DE MANTENIMIENTO IMPRESORA HP M612', 10, 'NUEVO', 3, '', 1, 1),
(389, 15, 'M203', 'Teflon HP LASERJET PRO M227 M203d M104 M132 M106 M134 M104 M130 M105 M106', 100, 'NUEVO', 3, '', 1, 1),
(390, 16, 'M203', 'RODILLO DE PRESION HP LJET PRO M227 M203d M104 M132 M106 M134 M104 M130 M105 M106', 99, 'NUEVO', 3, '', 1, 1),
(391, 16, 'P1102', 'RODILLO PRESION HP P1102 / P1566 /P1606 /M1132 / M1536 / M1212 / M1214 / M1217 / CP1525 / M125 / M127 / M128 / M201 / M225', 100, 'NUEVO', 3, '', 1, 1),
(392, 16, 'LPR-1200', 'RODILLO DE PRESIÓN HP LJ 1200 /1000/3300/1300 (RF0-1002) 1220, 1300, 3300, 3310, 3320, 3330, 3380 D320 D340 510', 100, 'NUEVO', 3, '', 1, 1),
(393, 16, 'LPR-1200', 'RODILLO DE PRESIÓN LJ 1200/1000/3300/1300 1220, 1300, 3300, 3310, 3320, 3330, 3380 D320 D340 510', 100, 'NUEVO', 3, '', 1, 1),
(394, 16, 'LPR-1200', 'RODILLO DE PRESIÓN LJ 1200/1000/3300/1300 1000, 1200, 1220, 1300, 3300, 3310, 3320, 3330, 3380 D320 D340 510', 10, 'NUEVO', 3, '', 1, 1),
(395, 15, 'T544', 'TINTA COMPATIBLE JETLIFE T544  CIAN 70ML', 999, 'NUEVO', 3, '', 1, 1),
(396, 15, 'T544BK', 'TINTA COMPATIBLE JETLIFE T544  BLACK 70ML', 99, 'NUEVO', 3, '', 1, 1),
(397, 16, 'T544M', 'TINTA COMPATIBLE JETLIFE T544  MAGENTA 70ML', 100, 'NUEVO', 3, '', 1, 1),
(398, 16, 'T544Y', 'TINTA COMPATIBLE JETLIFE T544  YELLOW 70ML', 100, 'NUEVO', 3, '', 1, 1),
(399, 16, 'FUSOR', 'FUSOR HP COLOR LJ M377/M452/M454/M477 220V (FOR DUPLEX MODEL ONLY)  M479,M480,M377,M452,M454,477,Part N. RM26461/ RM26435', 10, 'ORIGINAL', 3, '', 1, 1),
(400, 16, 'L3110C', 'Damper de tinta L1110 L1250 L3110 L3210 L3150 3250 L3160 L3260 L5190 L5290 COLOR- ORIGINAL', 100, 'ORIGINAL', 3, '1760049454.jpg', 1, 1),
(401, 16, 'L4160BK', 'DAMPER DE TINTA EPSON L4150 L4160 L4260 L6171 6270 L14150 F170 ORIGINAL', 98, 'ORIGINAL', 3, '1760049337.jpg', 1, 1),
(402, 16, 'L4160BKG', 'DAMPER DE TINTA EPSON L4150 L4160 L4260 L6171 6270 L14150 F170 GENERICO', 10, 'NUEVO', 3, '', 1, 1),
(403, 16, 'L3110C', 'Damper de tinta L1110 L1250 L3110 L3210 L3150 3250 L3160 L3260 L5190 L5290 COLOR GENERICO', 100, 'NUEVO', 3, '1760049563.jpg', 1, 1),
(404, 16, 'L210/800/1800', 'DAMPER IMPRESORA EPSON L800, L805, L355, L210, M105, M200, L1800, L110, L380, L365, L220, L222, L360, L366, L310, L111, L120, L130 GENERICO', 99, 'NUEVO', 3, '1760049675.jpg', 1, 1),
(405, 16, 'L210/800/1800 ORIG', 'DAMPER IMPRESORA EPSON L800, L805, L355, L210, M105, M200, L1800, L110, L380, L365, L220, L222, L360, L366, L310, L111, L120, L130 ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(406, 16, '1120', 'PickUp Roler HP P1005 P1006 1008 1009 P1102w M1132 M1136 M1212 M1214 M125 M126 M127 M128 M477 M227 M203 M130FW', 100, 'NUEVO', 3, '1760049209.jpg', 1, 1),
(407, 16, '1120', 'PickUp Roler HP P1005 P1006 1008 1009 P1102w M1132 M1136 M1212 M1214 M125 M126 M127 M128 M477 M227 M203 M130FW ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(408, 16, '88C/M', 'CABEZAL HP 88 BICOLOR CYAN/MAGENTA Compatible: OfficeJet Pro K550, K5400N, K5400DTN, L7580, L7680, L7780, L7500, L7480, L7590, K8600, K8600DN, K5400, L7000, L7880', 10, 'GENERICO', 3, '1760051272.jpg', 1, 1),
(409, 16, '88N/A', 'CABEZAL HP 88 BICOLOR Negro y Amarillo Compatible: OfficeJet Pro K550, K5400N, K5400DTN, L7580, L7680, L7780, L7500, L7480, L7590, K8600, K8600DN, K5400, L7000, L7880', 10, 'NUEVO', 3, '1760051761.jpg', 1, 1),
(410, 21, '11BK', 'CABEZAL HP 11 C4810A BLACK P/500/800/2200 GENERICO', 10, 'GENERICO', 3, '1760051925.jpg', 1, 1),
(411, 21, '11A', 'CABEZAL HP 11 C4813A Amarillo 500/800/2200 GENERICO', 10, 'GENERICO', 3, '', 1, 1),
(412, 21, '11C', 'CABEZAL HP 11 C4811A CIAN 500/800/2200 GENERICO', 10, 'GENERICO', 3, '', 1, 1),
(413, 21, '11M', 'CABEZAL HP 11 C4812A Magenta 500/800/2200 GENERICO', 10, 'GENERICO', 3, '', 1, 1),
(414, 16, 'MC-20', 'RESETEADOR CANON MC-20 imagePROGRAF PRO-500 / PRO-1000 / PRO-1100', 10, 'NUEVO', 3, '', 1, 1),
(415, 16, 'MC-03', 'RESETEADOR CANON MC-G03 GX4030 GX3040 GX4040 GX3050 GX4050 GX3070 GX4070 GX3090 GX3091 GX3092 3060', 10, 'NUEVO', 3, '', 1, 1),
(416, 16, 'MC-04', 'RESTEADOR CANON MC-G04, G1430, G2470, G3470, G3471, G3472, G4470, G1530, G2570, G3570, G3571, G1330, G3370 G2170 G3170', 10, 'NUEVO', 3, '', 1, 1),
(417, 17, 'T500G', 'CABEZAL Brother DCP-T500 J100, J105, J200, J152W, J132W, J152, J205, T300, T700 y T800GENERICO', 10, 'GENERICO', 3, '', 1, 1),
(418, 24, 'L3110O', 'CAJA DE MANTENIMIENTO EPSON L5190 L5290 L1210 L1250 L3110 L3210 L3150 L3250 L3160 L3260 ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(419, 16, 'T504BK', 'TINTA JETLIFE T504 EPSON NEGRO 127ML L4150 L4160 L4260 L6171 L6270 L14150 UV', 100, 'NUEVO', 3, '', 1, 1),
(420, 16, 'T504C', 'TINTA JETLIFE T504 EPSON CIAN 70ML L4150 L4160 L4260 L6171 L6270 L14150 UV', 99, 'NUEVO', 3, '', 1, 1),
(421, 16, 'T504M', 'TINTA JETLIFE T504 EPSON MAGENTA 70ML L4150 L4160 L4260 L6171 L6270 L14150 UV', 100, 'NUEVO', 3, '', 1, 1),
(424, 16, 'T504Y', 'TINTA JETLIFE T504 EPSON YELLOW 70ML L4150 L4160 L4260 L6171 L6270 L14150 UV', 100, 'NUEVO', 3, '', 1, 1);
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `unidadmedidaid`, `imagen`, `condicion`, `idtipoarticulo`) VALUES
(425, 16, '100ML', 'LIQUIDO CLEANING SOLUTION 100ml. solución de limpieza de DTF potente limpiador', 10, 'NUEVO', 3, '', 1, 1),
(426, 16, 'BOLSA', 'Insumo Para Toner HP X 1 kilo Negro MOD. UNIVERSAL', 10, 'NUEVO', 3, '', 1, 1),
(427, 24, 'M90', 'MOUSE LOGITECH M90 OPTICO / CONECTOR USB / 1000DPI / NEGRO', 1000, 'NUEVO', 3, '', 1, 1),
(428, 24, '', 'Kit Teclado y Mouse Logitech MK120, USB, Negro.', 100, '', 3, '', 1, 1),
(429, 24, 'M120', 'Teclado y Mouse Logitech MK120, USB, Negro. KIT', 100, 'NUEVO', 3, '', 1, 1),
(430, 15, 'BOTELLA', 'Insumo Para Toner HP X 1 kilo Negro UNIVERSAL', 100, 'GENERICO', 3, '', 1, 1),
(431, 23, 'SERVI', 'N/S 1989271 P%', -1, 'descripcion', 3, '', 1, 2),
(432, 23, 'SERVI', 'instalacion de cabezal y reset', 0, 'descripcion', 3, '', 1, 2),
(433, 23, 'SERVI', 'servicio de instalacion de cabezalepson l3110', -1, 'descripcion', 3, '', 1, 2),
(434, 23, 'SERVI', 'Servicio Nuevo.423', -1, 'descripcion', 3, '', 1, 2),
(435, 23, 'SERVI', 'N/S 1989271 P%.', -1, 'descripcion', 3, '', 1, 2),
(436, 18, 'SSD512', 'DISCO SOLIDO SSD KINGSPEC 512GB M.2 2242 SATA', 98, 'NUEVO', 3, '', 1, 1),
(437, 16, 'DR 225', 'KIT ROLLER Canon DR-C125 DR-C225 DR C125 C125W C225 C225W', 10, 'NUEVO', 3, '', 1, 1),
(438, 16, 'C9382', 'CAJA DE MANTENIMIENTO EPSON C9382 WF-C5810/ 5890/ C5390', 100, 'ORIGINAL', 3, '1760648628.jpg', 1, 1),
(439, 16, 'kit adf', 'kit ADF - Rodillo pad separador compatible con HP Color Laserjet Pro MFP M277 M278 M280 M281 M283 M377 M477 M479 M429 M428fdn M426 M427 M452dn M452nw', 100, 'GENERICO', 3, '1760648490.jpg', 1, 1),
(440, 16, 'kit adf', 'KIT ADF ROLLER M521/M425/M476/M570 nuevo', 100, 'GENERICO', 3, '1760648452.jpg', 1, 1),
(441, 16, 'C9382G', 'CAJA DE MANTENIMIENTO EPSON C9382 WF-C5810/ 5890/ C5390 GENERICO', 100, 'NUEVO', 3, '1760648664.jpg', 1, 1),
(442, 16, 'M1120', 'Almohadilla para Epson M1100 M1120 M1140 M1170 M1180 M2120', 100, 'NUEVO', 3, '1760648778.jpg', 1, 1),
(443, 15, 'L1800', 'Cabezal EPSON L1800', 100, 'NUEVO', 3, '', 1, 1),
(444, 15, 'L1800', 'Cabezal para EPSON serie L801, L800, L805, L850, T50, T60 y R290', 99, 'GENERICO', 3, '', 1, 1),
(445, 23, 'SERVI', 'mantenimiento genral l355', -1, 'descripcion', 3, '', 1, 2),
(446, 23, 'SERVI', 'Servicio Nuevo.435', -1, 'descripcion', 3, '', 1, 2),
(447, 23, 'SERVI', 'Servicio Nuevo.436', -1, 'descripcion', 3, '', 1, 2),
(448, 23, 'SERVI', 'INSTALACION DE ALMOHADILLA Y MANTENIMIENTO DE CABEZAL L4260', -1, 'descripcion', 3, '', 1, 2),
(449, 23, 'SERVI', 'Servicio Nuevo.438', 0, 'descripcion', 3, '', 1, 2),
(450, 23, 'SERVI', 'Servicio Nuevo.439', 0, 'descripcion', 3, '', 1, 2),
(451, 23, 'SERVI', 'Servicio Nuevo.440', 0, 'descripcion', 3, '', 1, 2),
(452, 23, 'SERVI', 'Servicio Nuevo.441', 0, 'descripcion', 3, '', 1, 2),
(453, 23, 'SERVI', 'mantenimeibto geeral de laotp gamer', -1, 'descripcion', 3, '', 1, 2),
(454, 23, 'SERVI', 'manyenimeit o generla laptop gamer', -1, 'descripcion', 3, '', 1, 2),
(455, 23, 'SERVI', 'Servicio Nuevo.444', 0, 'descripcion', 3, '', 1, 2),
(456, 23, 'SERVI', 'Servicio Nuevo.445', 0, 'descripcion', 3, '', 1, 2),
(457, 23, 'SERVI', 'WIIEWU', 0, 'descripcion', 3, '', 1, 2),
(458, 23, 'SERVI', 'LIUEWHFOIUREHIERGTRSH', 0, 'descripcion', 3, '', 1, 2),
(459, 23, 'SERVI', 'calibracion de macanismo hp515', -1, 'descripcion', 3, '', 1, 2),
(460, 23, 'SERVI', 'ACTIVACION, SISTEMA XP Y LIMPIEZA DE CABEZAL', -1, 'descripcion', 3, '', 1, 2),
(461, 23, 'SERVI', 'LIMPIEZA DE CABEZAL Y TINTA BK', -1, 'descripcion', 3, '', 1, 2),
(462, 23, 'SERVI', 'TINTA BK', -1, 'descripcion', 3, '', 1, 2),
(463, 23, 'SERVI', 'RESET EPSON', -1, 'descripcion', 3, '', 1, 2),
(464, 23, 'SERVI', 'RESETEADOR', -1, 'descripcion', 3, '', 1, 2),
(465, 23, 'SERVI', 'TRANSFORMADOR TICKETERA', -1, 'descripcion', 3, '', 1, 2),
(466, 23, 'SERVI', 'SISTEMA BROTHER J6730', -1, 'descripcion', 3, '', 1, 2),
(467, 23, 'SERVI', 'CABLE FLATT DE CARRUAJE L3110', -1, 'descripcion', 3, '', 1, 2),
(468, 23, 'SERVI', 'TANQUE DE TINTA L4160 BK NUEVO', -1, 'descripcion', 3, '', 1, 2),
(469, 23, 'SERVI', 'reset epson ep', -1, 'descripcion', 3, '', 1, 2),
(470, 23, 'SERVI', 'cambio de fusor, mantenimeinto general, y bandeja de impresora hp m428', -1, 'descripcion', 3, '', 1, 2),
(471, 23, 'SERVI', 'reparacion de impresora epson', -1, 'descripcion', 3, '', 1, 2),
(472, 23, 'SERVI', 'Servicio Nuevo.461', 0, 'descripcion', 3, '', 1, 2),
(473, 23, 'SERVI', 'reparacion de impresora epson 2', -1, 'descripcion', 3, '', 1, 2),
(474, 23, 'SERVI', 'reparacion de placa de ticktera', -1, 'descripcion', 3, '', 1, 2),
(475, 23, 'SERVI', 'reparacion de l4160', -1, 'descripcion', 3, '', 1, 2),
(476, 23, 'SERVI', 'reoaracion de epson l575', -1, 'descripcion', 3, '', 1, 2),
(477, 23, 'SERVI', 'carruaje hp 720', -1, 'descripcion', 3, '', 1, 2),
(478, 23, 'SERVI', 'limpieza de cabezal y purgado de sistema epson l3260', -1, 'descripcion', 3, '', 1, 2),
(479, 23, 'SERVI', 'Servicio Nuevo.468', 0, 'descripcion', 3, '', 1, 2),
(480, 23, 'SERVI', 'manternimiento y cambio de rosilklo de ppsopj l14150', -1, 'descripcion', 3, '', 1, 2),
(481, 16, 'KIT', 'KIT ROLER JEBE L3150 L3250 L5190', 98, 'KIT DE ROLLER', 3, '', 1, 1),
(482, 23, 'SERVI', 'impresora epson l395 multifuncional', -1, 'descripcion', 3, '', 1, 2),
(483, 23, 'SERVI', 'mantenimiento cabezal epson l355', -1, 'descripcion', 3, '', 1, 2),
(484, 15, 'L8180', 'Cabezal de Epson  original FA96001 para impresora Epson L8050 L8058 L18500 L18508 L18050', 100, 'ORIGINAL', 3, '', 1, 1),
(485, 15, 'WF6590', 'CABEZAL EPSON WF-6090;WF-6590;WF-8010;WF-8090;WF-8510;WF-8590', 100, 'ORIGINAL', 3, '', 1, 1),
(487, 16, 'M225', 'ROLLER PICKUP 3642 M201/M202/M225/M226MFP', 100, 'NUEVO', 3, '1761866558.jpg', 1, 1),
(488, 16, 'M225', 'SEPARATION PAD MP HP (RL2-0657) PARA HP LJ PRO M501/M506/M527/M402/M403/M426/M427 MFP', 100, 'NUEVO', 3, '1761867020.jpg', 1, 1),
(489, 16, 'kitM631', 'Kit De Rodillos ADF Hp J8J95A MFP M631 / M632 / M633 / E62555 / E62565 / E62575 ADF Roller Maintenance Kit 150,000 Páginas', 99, 'ORIGINAL', 3, '1761944583.jpeg', 1, 1),
(490, 16, 'KITM527', 'KIT ADF ROLLER  Replacement Kit for M501/M527/M577', 100, 'NUEVO', 3, '1761945376.jpg', 1, 1),
(491, 16, 'KIT M525', 'ROLLER KIT ADF HP M525/M575/M712/M775/M725/M680/M630', 100, 'NUEVO', 3, '', 1, 1),
(492, 16, 'KITM521/P3015', 'Rodillo Arrastre Papel HP LJ P3005 RM1-3763-000 PICKUP ROLLER HP LJ P3005/P3015/M3027/M3035/M521/M525 (TRAY 2)', 100, 'NUEVO', 3, '1761949353.png', 1, 1),
(493, 16, 'KITC5710/C5290/C5790', 'Kit de neumáticos de rodillo de alimentación para camioneta EPSON WF C5710 C5790 C5210 C5290', 100, 'ORIGINAL', 3, '1761950006.png', 1, 1),
(494, 16, 'KITM477/426', 'KIT separación de rodillo de recogida ADF,HP Color LaserJet Pro MFP M377 M477 M426 M427 / 377 477 426 427 D2504', 100, 'NUEVO  B3Q10-60105', 3, '1761953396.png', 1, 1),
(495, 16, 'KITM521/476', 'KIT ROLLER ADF M521/M425/M476/M570 A8P79-65001, A8P79-65010, M521, M525Brand:  NOMBRE: ROLLER KIT ADF M521 M425 M476 M570 P/N: A8P79-65001 / A8P79-65010 MD.M521 M425 M476 M570', 100, 'ORIGINAL', 3, '1761953808.jpg', 1, 1),
(496, 16, 'FX890', 'CINTAS EPSON (S015329) FX-890', 100, 'ORIGINAL', 3, '1762033770.jpg', 1, 1),
(497, 16, 'FAJA', 'FAJA DE CARRO L15150', 100, 'NUEVO', 17, '', 1, 1),
(498, 23, 'SERVI', 'RESETEO Y CAMBIO DE ALMOHADILLAS IMPRESORA EPSON L3150', -1, 'descripcion', 3, '', 1, 2),
(499, 23, 'SERVI', 'reset  y almohadilla e´psop l4150', -1, 'descripcion', 3, '', 1, 2),
(500, 17, 'tm200', 'IMPRESORAS CANON TM 200.  con disco duro integrado de 500 GB, impresión directa desde unidades flash USB , Compatibilidad con PDF (TM-205) • Tintas pigmentadas en 5 colores (MBK/BK/C/M/Y) para disfrutar de una calidad excelente, Productividad', 100, 'Impresoras de 24 pulgadas,  impresión directa desde unidades flash USB, Compatibilidad con PDF (TM-205), Tintas pigmentadas en 5 colores (MBK/BK/C/M/Y) para disfrutar de una calidad excelente', 3, '', 1, 1),
(501, 23, 'SERVI', 'reset de epson l4260', -1, 'descripcion', 3, '', 1, 2),
(502, 22, 'servicio', 'Cambio de teflón y servicio de instalación', 100, 'serv', 17, '', 1, 1),
(503, 16, '11', 'Tinta Compatible HP 11 Pack x4 Designjet', 100, 'NUEVO', 3, '', 1, 1),
(504, 15, 't11', 'Tinta Compatible HP 11 Pack x3 Designjet', 99, 'NUEVO', 3, '', 1, 1),
(505, 23, 'SERVI', 'CAJA DE MANTENIMIENTO T6190', -1, 'descripcion', 3, '', 1, 2),
(506, 23, 'SERVI', 'Servicio Nuevo.494', 0, 'descripcion', 3, '', 1, 2),
(507, 18, 'I3', 'LAPTOP HP 255 G10, AMD RYZEN 3 7320U, 8GB DDR5, SSD 256GB,15.6&quot; HD', 100, 'NUEVO', 3, '', 1, 1),
(508, 18, 'ATLON', 'LAPTOP HP 255 G10, ATHLON SILVER 7120U, 8GB DDR5, SSD 256GB, 15.6&quot; HD', 100, '', 3, '', 1, 1),
(509, 18, 'I3', 'LAPTOP LENOVO IdeaPad Slim 3 15IAN8, Intel i3-N305, 8GB DDR5, SSD 512GB, 15.6&quot; FHD', 100, 'NUEVO', 3, '', 1, 1),
(510, 18, 'I3', 'LAPTOP LENOVO V15 G4 AMN, AMD RYZEN 3 7320U, 8GB DDR5, SSD 256GB, 15.6&quot; FHD', 100, 'NUEVO', 3, '', 1, 1),
(511, 23, 'SERVI', 'ENGRANAJE DE BOMBA DE L3110', -1, 'descripcion', 3, '', 1, 2),
(512, 23, 'SERVI', 'ALMOHADILLA EPSOPN L4160 Y L3110', -1, 'descripcion', 3, '', 1, 2),
(513, 23, 'SERVI', 'ENGRANAJE DE BONMMBA L3110', -1, 'descripcion', 3, '', 1, 2),
(514, 23, 'SERVI', 'MANTERNIMIENTO DE PC', -1, 'descripcion', 3, '', 1, 2),
(515, 23, 'SERVI', 'ALMOHADILLA L606', -1, 'descripcion', 3, '', 1, 2),
(516, 23, 'SERVI', 'SERVICIO DE CALIBRACION DE MECANUISMNO  HP 580', -1, 'descripcion', 3, '', 1, 2),
(517, 23, 'SERVI', 'REPARACION DE LAPTOP', -1, 'descripcion', 3, '', 1, 2),
(518, 23, 'SERVI', 'Servicio Nuevo.506', -1, 'descripcion', 3, '', 1, 2),
(519, 23, 'SERVI', 'servicio de impresora', -1, 'descripcion', 3, '', 1, 2),
(520, 23, 'SERVI', 'servicio de impresoras', -1, 'descripcion', 3, '', 1, 2),
(521, 23, 'SERVI', 'cambio de carruaje hp  415', -1, 'descripcion', 3, '', 1, 2),
(522, 23, 'SERVI', 'CARRUAJE HP 415', -1, 'descripcion', 3, '', 1, 2),
(523, 23, 'SERVI', 'RODILLOS DE BROTHER T710', -1, 'descripcion', 3, '', 1, 2),
(524, 23, 'SERVI', 'Servicio Nuevo.512', -1, 'descripcion', 3, '', 1, 2),
(525, 23, 'SERVI', 'EPSON L1300 ORIGINAL', 0, 'descripcion', 3, '', 1, 2),
(526, 23, 'SERVI', 'Servicio Nuevo.514', -1, 'descripcion', 3, '', 1, 2),
(527, 23, 'SERVI', 'SERVICIO DE INSTLACION Y TINTAS DE DE BROTHER T820', -1, 'descripcion', 3, '', 1, 2),
(528, 23, 'SERVI', 'CALIBRACION D EMANTENIMIENTO GENERAL EPSON L555', 0, 'descripcion', 3, '', 1, 2),
(529, 23, 'SERVI', 'RODILLO EPSON L6171', 0, 'descripcion', 3, '', 1, 2),
(530, 23, 'SERVI', 'RODILLO L6171', -1, 'descripcion', 3, '', 1, 2),
(531, 23, 'SERVI', 'CALIBRACION DE CANON G3110', -1, 'descripcion', 3, '', 1, 2),
(532, 23, 'SERVI', 'SERVIVIO DE LIMPIEZA', -1, 'descripcion', 3, '', 1, 2),
(533, 23, 'SERVI', 'MASCARILLA Y BASE DE L6171', -1, 'descripcion', 3, '', 1, 2),
(534, 24, '14X', 'TONER HP 14X NEGRO (CF214X) 700/M750/M712', 100, 'NUEVO', 3, '', 1, 1),
(535, 23, 'SERVI', 'FOTMATEO', -1, 'descripcion', 3, '', 1, 2),
(536, 23, 'SERVI', 'CAMBIO DE ESCANER DE CANON G4100', -1, 'descripcion', 3, '', 1, 2),
(537, 23, 'SERVI', 'Servicio Nuevo.525', 0, 'descripcion', 3, '', 1, 2),
(538, 23, 'SERVI', 'reset epson l3110', 0, 'descripcion', 3, '', 1, 2),
(539, 23, 'SERVI', 'Servicio Nuevo.527', 0, 'descripcion', 3, '', 1, 2),
(540, 23, 'SERVI', 'reset epson l3120', -1, 'descripcion', 3, '', 1, 2),
(541, 23, 'SERVI', 'calibracion l5590', -1, 'descripcion', 3, '', 1, 2),
(542, 23, 'SERVI', 'reparacion de epson l5590', -1, 'descripcion', 3, '', 1, 2),
(543, 23, 'SERVI', 'carruaje hp 720 y 790', -1, 'descripcion', 3, '', 1, 2),
(544, 23, 'SERVI', 'Servicio Nuevo.532', -5, 'descripcion', 3, '', 1, 2),
(545, 23, 'SERVI', 'imresora epson l350 multifuncional', -1, 'descripcion', 3, '', 1, 2),
(546, 23, 'SERVI', 'reset l5590', -1, 'descripcion', 3, '', 1, 2),
(547, 23, 'SERVI', 'reset l355', -1, 'descripcion', 3, '', 1, 2),
(548, 23, 'SERVI', 'cabezal l1300', -1, 'descripcion', 3, '', 1, 2),
(549, 23, 'SERVI', 'reset l3110', -1, 'descripcion', 3, '', 1, 2),
(550, 23, 'SERVI', 'Servicio Nuevo.538', -1, 'descripcion', 3, '', 1, 2),
(551, 23, 'SERVI', 'toner hp 14x', -1, 'descripcion', 3, '', 1, 2),
(552, 16, 'FLEX', 'CABLE FLEX DE CABEZAL L1110 L1210 L1250 L3110 L3210 L3150 L3160 L3260 L5190 L5290', 100, 'NUEVO', 3, '', 1, 1),
(553, 16, 'flex L3110', 'Cable Flex de panel Epson L3110 L3210', 100, 'NUEVO', 3, '', 1, 1),
(554, 16, 'SENSOR', 'CABLE FLEX DE SENSOR  L1110 L1210 L1250 L3110 L3210 L3150 L3160 L3260 L5190 L5290', 100, 'NUEVO', 3, '', 1, 1),
(555, 16, 'PANEL', 'CABLE FLEX DE PANEL 13 PINES PARA IMPRESORA EPSON L5190 L5290', 100, 'NUEVO', 3, '', 1, 1),
(556, 16, 'hp', 'Cable de cabezal de impresión para HP 515 615 670, 720, 750, 798, 755, 672, 675, 678, 728, 790, 6000, 7000, 7300, 7600', 100, 'ORIGINAL', 3, '', 1, 1),
(557, 16, 'M631', 'ROLLER Y PAD SEPARADOR DE ADF IMPRESOR  HP M631 ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(558, 16, 'M421', 'ENGRANAJE HP RC32511/RU70374/RU70375/RC3251 M421/425MFP LJ PRO M400 401 GEAR FUSER 29T ARM SWING M401 M425 M425dn M425dw M401a M401d', 100, 'ORIGINAL', 3, '1763767291.jpg', 1, 1),
(559, 16, 'M400', 'RODILLO DE TRANFER N/P RM19175 M421/425MFP LJ PRO M400 401', 100, 'NUEVO', 3, '1763767723.jpg', 1, 1),
(560, 16, 'L1455', 'CABEZAL EPSON L1455, WF7620 7610 7210 7721 7725 7280 7100 Num. Parte : FA13031/FA13021', 100, 'ORIGINAL', 3, '1763769977.jpg', 1, 1),
(561, 16, 'M203', 'RODILLO DE PRESION M203/M206/M227FDW LPR-M106/CET7787U', 100, 'NUEVO', 3, '1763768265.jpg', 1, 1),
(562, 16, 'T20III', 'CABEZAL TM-T20 III  N/P 2214669/2199353 (THERMAL PRINT HEAD ASS´Y) ORIGINAL', 100, 'ORIGINAL', 3, '1763769763.jpg', 1, 1),
(563, 16, 'T20III', 'TM-T20 III AUTO CUTTER  N/P 1691548/1622270 ORIGINAL', 100, 'ORIGINAL', 3, '1763769879.jpg', 1, 1),
(564, 15, 'M100', 'CABEZAL Epson MONOCROMATICAS FA11011/FA11010/FA11000 M100/M105/M200/M205 ORIGINAL', 100, 'ORIGINAL', 3, '1763770235.jpg', 1, 1),
(565, 16, 'C5710', 'ROLLER SEPARATION RETARD  WORKFORCE PRO C5790, C5710, C5290, C5210  WF-C579R, WF-C5710, WF-C5790, WF-M5799 WF-C529R, Pro WF-C5210, Pro WF-C5290 ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(566, 16, 'C5710', 'ROLLER PICKUP FEED WORKFORCE PRO C5790, C5710, C5290, C5210, C529R, C579R, C5210, C5290, C5299, C5710, C5790, M5298  ORIGINAL', 100, 'ORIGINAL', 3, '1763770759.jpg', 1, 1),
(567, 16, 'L15150', 'CABEZAL EPSON L15150, L15158 L15168 L15150 L15160 L6558 L6578  L15158, L15150, WF 7845, 7840, 7848, 7318, 7310 ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(568, 16, 'M225', 'PAD SEPARATION RM14227/RM14207 M201/M202/M225/M226MFP, M201, M202, M225, M226 ORIGINAL', 100, 'ORIGINAL', 3, '1763771219.jpg', 1, 1),
(569, 15, 'WF6590', 'CABEZAL EPSON WORKFORCE N/P FA16271/FA16231 6090/6590 WF-6090 6590 8510 ORIGINAL', 100, 'ORIGINAL', 3, '1763771384.jpg', 1, 1),
(570, 15, 'T20II', 'CABEZAL TM-T20 II (THERMAL PRINT HEAD ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(571, 15, 'L8180', 'CABEZAL EPSON L8180/L8188 /8160 /8160 ECOTANK', 100, '', 3, '1763771763.jpg', 1, 1),
(572, 16, 'LQ2090', 'kit CARRUAJE DE CABEZAL LQ-2090 1237005 (Inc.Slider)', 100, 'ORIGINAL', 3, '1763827108.jpeg', 1, 1),
(573, 16, 'LQ2090', 'EJE DE CARRUAJE GUIA LQ-2090 N/P 1677340/1265406/1677112', 100, 'ORIGINAL', 3, '1763828449.jpeg', 1, 1),
(574, 24, 'TN1060', 'TONER BROTHER COMPATIBLE TN-1060 HL-1202 / 1212W / 1602 / 1617NW', 100, 'GENERICO', 3, '', 1, 1),
(575, 24, '45A', 'Toner Hp L.J. 4345 Negro 500 series,4345, 4345mfp, 4345x mfp, 4345xm mfp, 4345xs mfp, M4345 MFP, M4345x MFP, M4345xm MFP, M4345xs MFP GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(576, 23, 'SERVI', 'Servicio Nuevo.564', 0, 'descripcion', 3, '', 1, 2),
(577, 23, 'SERVI', 'Servicio Nuevo.565', 0, 'descripcion', 3, '', 1, 2),
(578, 23, 'SERVI', 'Servicio Nuevo.566', 0, 'descripcion', 3, '', 1, 2),
(579, 23, 'SERVI', 'CALIBRACION Y MANTENIMIENTO L4160', -1, 'descripcion', 3, '', 1, 2),
(580, 17, 'L4360', 'IMPRESORA EPSON L4360  Impresora Multifuncional a color Wi-Fi y Duplex . Imprime - Copia - Escanea', 100, 'NUEVO', 3, '', 1, 1),
(581, 23, 'SERVI', 'puerto usb para ticketera', -1, 'descripcion', 3, '', 1, 2),
(582, 23, 'SERVI', 'cambio de rodillos y mantenimiento general l4160', -1, 'descripcion', 3, '', 1, 2),
(583, 23, 'SERVI', 'repuesto de impresoras', -1, 'descripcion', 3, '', 1, 2),
(584, 23, 'SERVI', 'diagnostico de laptop', -1, 'descripcion', 3, '', 1, 2),
(585, 23, 'SERVI', 'cambio de cable flat de epson l555', -1, 'descripcion', 3, '', 1, 2),
(586, 23, 'SERVI', 'servicio de instalacion y tinta', -1, 'descripcion', 3, '', 1, 2),
(587, 23, 'SERVI', 'Servicio Nuevo.575', -1, 'descripcion', 3, '', 1, 2),
(588, 23, 'SERVI', 'repuestos x', -1, 'descripcion', 3, '', 1, 2),
(589, 16, 'DL8180', 'Damper de tinta para impresora Epson L8050, L18050 L8160 L8180 ET8550 L7160 L7180 original', 100, 'ORIGINAL', 3, '1764172016.jpg', 1, 1),
(590, 16, 'M425', 'Engranaje HP LJ PRO M421/425MFP M400 401 GEAR FUSER 29T ARM SWING M401 M421 M425dn M425dw M401a M401d ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(591, 18, '480gb', 'DISCO SOLIDO SSD 480GB SATA 2.5&quot; KINGSPEC', 99, 'NUEVO', 3, '', 1, 1),
(592, 18, '240gb', 'DISCO SOLIDO SSD 240GB SATA 2.5&quot; KINGSPEC', 98, 'NUEVO', 3, '', 1, 1),
(593, 18, '960gb', 'DISCO SOLIDO SSD 960GB SATA 2.5&quot; KINGSPEC', 100, 'NUEVO', 3, '', 1, 1),
(594, 16, '215A', 'TONER HP 215A NEGRO (W2310A) LASERJET M155/M155/M182/M183 1050 PAG ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(595, 16, '230A', 'TONER HP W2300A (230A) L.J.4303FDW BLACK 2000 PAGS ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(596, 16, '230A', 'TONER HP W2300A (230A) L.J.4303FDW BLACK 2000 PAGS GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(597, 16, '215A', 'TONER HP 215A NEGRO (W2310A) LASERJET M155/M155/M182/M183 1050 PAG. GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(598, 16, '230M', 'TONER HP W2303A (230A) L.J.4303FDW MAGENTA 1,800 PAGS ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(599, 16, '230AC', 'TONER HP W2303A (230A) L.J.4303FDW CIAN 1,800 PAGS ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(600, 16, '230AY', 'TONER HP W2303A (230A) L.J.4303FDW YELLOW 1,800 PAGS ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(601, 16, '230A', 'TONER HP W2303A (230A) L.J.4303FDW MAGENTA 1,800 PAGS GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(602, 16, '230A', 'TONER HP W2303A (230A) L.J.4303FDW CIAN 1,800 PAGS GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(603, 16, '230A', 'TONER HP W2303A (230A) L.J.4303FDW YELLOW 1,800 PAGS GENERICO', 100, 'GENERICO', 3, '', 1, 1),
(604, 16, 'DR- C240', 'Kit Rodillo Arrastre Papel Escáner Canon DR-C240 DR-M160 DR-M160II 0697C003AA 5607B001- TIPO ORIGINAL', 100, 'TIPO ORIGINAL', 3, '1764865807.jpeg', 1, 1),
(605, 17, 'zebra', 'Impresora Zebra ZD220 de Etiquetas Transferencia Térmica – 203 dpi – 104mm – USB Zebra ST01G00EZ Marca: Zebra', 100, 'NUEVO', 3, '', 1, 1),
(606, 17, 'zebra2', 'IMPRESORA CODIGO BARRAS ZEBRA ZD230T LAN, USB Marca: Zebra', 100, 'NUEVO', 3, '', 1, 1),
(607, 17, 'zebra3', 'Impresora Industrial de etiquetas ZEBRA ZT231 Termica y Termica directa, 203 DPI, Serial/Ethernet/USB /Bluetooth Zebra', 100, 'NUEVO', 3, '', 1, 1),
(608, 24, 'KIT', 'Kit tintas Epson T544 L1110 /L1210 /L1250/ L3110 /L3210/L3150/ L3250 L3160 / L3260 /L5190 /L5290', 99, 'ORIGINAL', 3, '', 1, 1),
(609, 16, 'L1300', 'Kit de rodillos de recogida de papel para EPSON L1300 L1800 ME1100 R1390 R1400 R2400 R1800 R1900 R1500W ORIGINAL', 99, 'ORIGINAL', 3, '', 1, 1),
(610, 16, '', 'carruaaje hp 670', 99, '', 3, '', 1, 1),
(611, 15, 'lq590II', 'Cabezal Epson LQ-590II, LQ-2090II Original degunda', 100, 'ORIGINAL', 3, '', 1, 1),
(612, 24, 'T49H2', 'TINTA EPSON T49H2 CYAN INK BOTTLE 140ML SC-T3100X/ T3170X ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(613, 24, 'T49H1', 'TINTA EPSON T49H1 BLACK INK BOTTLE 140ML SC-T3100X/ T3170X ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(614, 24, 'T49H3', 'TINTA EPSON T49H3 MAGENTA INK BOTTLE 140ML SC-T3100X/T3170X ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1),
(615, 24, 'T49H4', 'TINTA EPSON T49H4 YELLOW INK BOTTLE 140ML SC-T3100X/T3170X ORIGINAL', 100, 'ORIGINAL', 3, '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(55) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`) VALUES
(15, 'Cabezal Epson', 'Cabezal Epson', 1),
(16, 'REPUESTO', '', 1),
(17, 'IMPRESORAS', '', 1),
(18, 'LaPTOP', '', 1),
(19, 'PCs', '', 1),
(20, 'monitor', '', 1),
(21, 'CABEZAL', '', 1),
(22, 'SERVICIO', '', 1),
(23, 'Servicio tecnico', '', 0),
(24, 'INSUMO', '', 1),
(27, 'PRODUCTO', 'P', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcontacto` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `whatsapp` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`idcontacto`, `nombre`, `apellido`, `dni`, `email`, `celular`, `whatsapp`, `tipo`) VALUES
(3, 'EDUARDO', 'CASTAÑEDA', '12345678', 'aldosantiniss@gmail.com', '+51 938 280 ', '996537112', 2),
(4, 'SUSAN', NULL, '48127291', 'andreasantinisa@gmail.com', '938280351', '938280351', 2),
(9, '', '', '', '', '', '', 1),
(10, 'Zulema', 'Susan', '46897502', 'susanli1322@gmail.com', '938280351', '938280351', 2),
(11, 'EMPLEADO', '01', '456789121', 'empleado@gmail.com', '456789121', '456789121', 2),
(12, 'EMPLEADO', '2', '74125895', 'empleado2@gmail.com', '74125895', '74125895', 2),
(13, 'EMPLEADO', '2', '10178267545', 'empleado2@gmail.com', '74125895', '74125895', 2),
(14, 'Pedro', 'Perez', '85214758', 'empleado3@gmail.com', '85214758', '85214758', 2),
(15, 'NORDICO', '', '12345678', '', '', '', 2),
(16, 'rodrigo', '', '12345678', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(17, 'rodrigo', '', '12345678', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(18, 'rodrigo', '', '12345678', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(19, 'rodrigo', '', '12345678', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(20, 'CESAR', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(21, 'EMPLEADO3', '', '24514574', '', '', '', 2),
(22, 'CESAR', 'CASTAÑEDA', '98765432', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(23, 'ABEL', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(24, 'ANDREW', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(25, 'ENZO', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(26, 'LEO', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(27, 'JUAN', 'CARLOS', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(28, 'PEDRITO', '', '9876', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(29, 'JHON', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(30, 'ALAN', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(31, 'KEVIN', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(32, 'ISAC', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2),
(33, 'OTROS', '', '85214758', 'jdkinnovatec@outlook.com', '996537112', '996537112', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `idcotizacion` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `serie_comprobante` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_comprobante` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `igv` decimal(11,2) NOT NULL,
  `total_cotizacion` decimal(11,2) NOT NULL,
  `estado` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tipomoneda` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcontacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`idcotizacion`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `subtotal`, `igv`, `total_cotizacion`, `estado`, `tipomoneda`, `idcontacto`) VALUES
(1, 410, 14, 'COTIZACION', '1', '0001', '2025-06-14 00:00:00', 18.00, 497.46, 89.54, 587.00, 'Aceptado', 'SOLES', 4),
(2, 410, 14, 'COTIZACION', '1', '0002', '2025-06-16 00:00:00', 18.00, 76.27, 13.73, 90.00, 'Aceptado', 'SOLES', 4),
(3, 410, 14, 'COTIZACION', '1', '0003', '2025-06-18 00:00:00', 18.00, 169.49, 30.51, 200.00, 'Aceptado', 'SOLES', 3),
(4, 418, 14, 'COTIZACION', '1', '0004', '2025-06-19 00:00:00', 18.00, 161.02, 28.98, 190.00, 'Aceptado', 'SOLES', 3),
(5, 419, 14, 'COTIZACION', '1', '0005', '2025-06-19 00:00:00', 18.00, 1974.58, 355.42, 2330.00, 'Aceptado', 'SOLES', 3),
(6, 410, 14, 'COTIZACION', '1', '0006', '2025-06-24 00:00:00', 18.00, 254.24, 45.76, 300.00, 'Aceptado', 'SOLES', 3),
(7, 420, 14, 'COTIZACION', '1', '0007', '2025-06-26 00:00:00', 18.00, 805.08, 144.92, 950.00, 'Aceptado', 'SOLES', 4),
(8, 421, 14, 'COTIZACION', '1', '0008', '2025-06-26 00:00:00', 18.00, 466.10, 83.90, 550.00, 'Aceptado', 'SOLES', 4),
(9, 422, 14, 'COTIZACION', '1', '0009', '2025-06-27 00:00:00', 18.00, 127.12, 22.88, 150.00, 'Aceptado', 'SOLES', 4),
(10, 410, 14, 'COTIZACION', '1', '00010', '2025-06-28 00:00:00', 18.00, 272.03, 48.97, 321.00, 'Aceptado', 'SOLES', 3),
(11, 424, 19, 'COTIZACION', '1', '00011', '2025-07-15 00:00:00', 18.00, 211.86, 38.14, 250.00, 'Aceptado', 'SOLES', 4),
(12, 425, 19, 'COTIZACION', '1', '00012', '2025-07-23 00:00:00', 18.00, 771.19, 138.81, 910.00, 'Aceptado', 'SOLES', 4),
(13, 426, 19, 'COTIZACION', '1', '00013', '2025-07-24 00:00:00', 18.00, 275.42, 49.58, 325.00, 'Aceptado', 'SOLES', 4),
(14, 410, 19, 'COTIZACION', '1', '00014', '2025-07-25 00:00:00', 18.00, 50.85, 9.15, 60.00, 'Aceptado', 'SOLES', 4),
(15, 427, 19, 'COTIZACION', '1', '00015', '2025-07-26 00:00:00', 18.00, 30.51, 5.49, 36.00, 'Aceptado', 'SOLES', 10),
(16, 428, 19, 'COTIZACION', '1', '00016', '2025-07-26 00:00:00', 18.00, 50.85, 9.15, 60.00, 'Aceptado', 'SOLES', 10),
(17, 431, 19, 'COTIZACION', '1', '00017', '2025-07-30 00:00:00', 18.00, 3644.07, 655.93, 4300.00, 'Aceptado', 'SOLES', 10),
(18, 434, 19, '', '1', '00018', '2025-08-01 00:00:00', 0.00, 109.32, 19.68, 129.00, 'Aceptado', 'SOLES', 3),
(19, 437, 19, 'COTIZACION', '1', '00019', '2025-08-02 00:00:00', 18.00, 2058.47, 370.53, 2429.00, 'Aceptado', 'SOLES', 10),
(20, 414, 14, 'COTIZACION', '1', '00020', '2025-08-06 00:00:00', 18.00, 423.73, 76.27, 500.00, 'Aceptado', 'SOLES', 3),
(21, 451, 19, 'COTIZACION', '1', '00021', '2025-08-13 00:00:00', 18.00, 245.76, 44.24, 290.00, 'Aceptado', 'SOLES', 3),
(22, 453, 19, 'COTIZACION', '1', '00022', '2025-08-14 00:00:00', 18.00, 881.36, 158.64, 1040.00, 'Aceptado', 'SOLES', 3),
(23, 456, 19, 'COTIZACION', '1', '00023', '2025-08-15 00:00:00', 18.00, 804.24, 144.76, 949.00, 'Aceptado', 'SOLES', 10),
(24, 461, 19, 'COTIZACION', '1', '00024', '2025-08-20 00:00:00', 18.00, 5226.27, 940.73, 6167.00, 'Aceptado', 'SOLES', 10),
(25, 465, 19, 'COTIZACION', '1', '00025', '2025-08-26 00:00:00', 18.00, 1623.73, 292.27, 1916.00, 'Aceptado', 'SOLES', 10),
(26, 496, 19, 'COTIZACION', '1', '00026', '2025-09-04 00:00:00', 18.00, 127.12, 22.88, 150.00, 'Aceptado', 'SOLES', 10),
(27, 498, 19, 'COTIZACION', '1', '00027', '2025-09-04 00:00:00', 18.00, 1635.59, 294.41, 1930.00, 'Aceptado', 'SOLES', 10),
(28, 502, 19, 'COTIZACION', '1', '00028', '2025-09-05 00:00:00', 18.00, 80.51, 14.49, 95.00, 'Aceptado', 'SOLES', 3),
(29, 514, 19, 'COTIZACION', '1', '00029', '2025-09-10 00:00:00', 18.00, 75.42, 13.58, 89.00, 'Aceptado', 'SOLES', 3),
(30, 517, 19, '', '1', '00030', '2025-09-15 00:00:00', 0.00, 186.44, 33.56, 220.00, 'Aceptado', 'SOLES', 10),
(31, 519, 19, 'COTIZACION', '1', '00031', '2025-09-19 00:00:00', 18.00, 2838.98, 511.02, 3350.00, 'Aceptado', 'SOLES', 3),
(32, 525, 19, 'COTIZACION', '1', '00032', '2025-09-25 00:00:00', 18.00, 1753.39, 315.61, 2069.00, 'Aceptado', 'SOLES', 3),
(33, 514, 19, 'COTIZACION', '1', '00033', '2025-09-25 00:00:00', 18.00, 75.42, 13.58, 89.00, 'Aceptado', 'SOLES', 3),
(34, 526, 19, 'COTIZACION', '1', '00034', '2025-09-27 00:00:00', 18.00, 355.93, 64.07, 420.00, 'Aceptado', 'SOLES', 10),
(35, 526, 19, 'COTIZACION', '1', '00035', '2025-09-27 00:00:00', 18.00, 516.10, 92.90, 609.00, 'Aceptado', 'SOLES', 10),
(37, 530, 19, 'COTIZACION', '1', '00037', '2025-10-01 00:00:00', 18.00, 220.34, 39.66, 260.00, 'Aceptado', 'SOLES', 10),
(39, 539, 19, 'COTIZACION', '1', '00039', '2025-10-09 00:00:00', 18.00, 1262.71, 227.29, 1490.00, 'Aceptado', 'SOLES', 10),
(40, 558, 19, 'COTIZACION', '1', '00040', '2025-10-22 00:00:00', 18.00, 118.64, 21.36, 140.00, 'Aceptado', 'SOLES', 10),
(41, 561, 19, 'COTIZACION', '1', '00041', '2025-10-23 00:00:00', 18.00, 161.02, 28.98, 190.00, 'Aceptado', 'SOLES', 10),
(42, 561, 19, 'COTIZACION', '1', '00042', '2025-10-28 00:00:00', 18.00, 59.32, 10.68, 70.00, 'Aceptado', 'SOLES', 10),
(43, 581, 14, 'COTIZACION', '1', '00043', '2025-11-03 00:00:00', 18.00, 127.12, 22.88, 150.00, 'Aceptado', 'SOLES', 3),
(44, 410, 14, 'COTIZACION', '1', '00044', '2025-11-06 00:00:00', 18.00, 4237.29, 762.71, 5000.00, 'Aceptado', 'SOLES', 3),
(45, 410, 14, 'COTIZACION', '1', '00045', '2025-11-06 00:00:00', 18.00, 4237.29, 762.71, 5000.00, 'Aceptado', 'SOLES', 3),
(46, 585, 14, 'COTIZACION', '1', '00046', '2025-11-07 00:00:00', 18.00, 152.54, 27.46, 180.00, 'Aceptado', 'SOLES', 3),
(47, 589, 14, 'COTIZACION', '1', '00047', '2025-11-11 00:00:00', 18.00, 237.29, 42.71, 280.00, 'Aceptado', 'SOLES', 10),
(48, 593, 14, 'COTIZACION', '1', '00048', '2025-11-12 00:00:00', 18.00, 6333.90, 1140.10, 7474.00, 'Aceptado', 'SOLES', 3),
(49, 594, 14, 'COTIZACION', '1', '00049', '2025-11-12 00:00:00', 18.00, 3813.56, 686.44, 4500.00, 'Aceptado', 'SOLES', 3),
(50, 606, 14, 'COTIZACION', '1', '00050', '2025-11-17 00:00:00', 18.00, 220.34, 39.66, 260.00, 'Aceptado', 'SOLES', 3),
(51, 410, 14, 'COTIZACION', '1', '00051', '2025-11-21 00:00:00', 18.00, 211.86, 38.14, 250.00, 'Aceptado', 'SOLES', 10),
(52, 615, 14, 'COTIZACION', '1', '00052', '2025-11-22 00:00:00', 18.00, 779.66, 140.34, 920.00, 'Aceptado', 'SOLES', 3),
(53, 581, 14, 'COTIZACION', '1', '00053', '2025-11-26 00:00:00', 18.00, 76.27, 13.73, 90.00, 'Aceptado', 'SOLES', 3),
(54, 622, 14, 'COTIZACION', '1', '00054', '2025-11-26 00:00:00', 18.00, 3694.92, 665.08, 4360.00, 'Aceptado', 'SOLES', 10),
(55, 627, 14, 'COTIZACION', '1', '00055', '2025-12-04 00:00:00', 18.00, 182.20, 32.80, 215.00, 'Aceptado', 'SOLES', 10),
(56, 410, 14, 'COTIZACION', '1', '00056', '2025-12-05 00:00:00', 18.00, 5663.47, 1019.43, 6682.90, 'Aceptado', 'SOLES', 10),
(57, 638, 14, 'COTIZACION', '1', '00057', '2025-12-23 00:00:00', 18.00, 237.29, 42.71, 280.00, 'Aceptado', 'SOLES', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion`
--

CREATE TABLE `detalle_cotizacion` (
  `iddetalle_cotizacion` int(11) NOT NULL,
  `idcotizacion` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `unidadmedida` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_cotizacion` decimal(11,3) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_cotizacion`
--

INSERT INTO `detalle_cotizacion` (`iddetalle_cotizacion`, `idcotizacion`, `idarticulo`, `unidadmedida`, `cantidad`, `precio_cotizacion`, `descuento`) VALUES
(1, 1, 2, 'UNID', 3, 199.000, 10.00),
(2, 2, 5, 'UNID', 1, 90.000, 0.00),
(3, 3, 4, 'UNID', 1, 200.000, 0.00),
(4, 4, 26, 'UNID', 1, 190.000, 0.00),
(6, 5, 27, 'UNID', 1, 1750.000, 0.00),
(7, 5, 28, 'UNID', 1, 580.000, 0.00),
(8, 6, 4, 'UNID', 1, 200.000, 0.00),
(12, 7, 30, 'UNID', 1, 600.000, 0.00),
(13, 7, 3, 'UNID', 1, 350.000, 0.00),
(16, 8, 30, 'UNID', 1, 550.000, 0.00),
(19, 10, 2, 'UNID', 1, 199.000, 30.00),
(20, 10, 3, 'UNID', 1, 52.000, 0.00),
(21, 10, 4, 'UNID', 1, 100.000, 0.00),
(23, 9, 31, 'UNID', 1, 150.000, 0.00),
(24, 11, 70, 'UNID', 1, 250.000, 0.00),
(25, 12, 30, 'UNID', 1, 580.000, 0.00),
(26, 12, 3, 'UNID', 1, 330.000, 0.00),
(27, 13, 100, 'UNID', 25, 13.000, 0.00),
(28, 14, 17, 'UNID', 3, 15.000, 0.00),
(29, 14, 24, 'UNID', 1, 15.000, 0.00),
(30, 15, 115, 'UNID', 1, 36.000, 0.00),
(31, 16, 98, 'UNID', 1, 60.000, 0.00),
(32, 17, 153, 'UNID', 1, 900.000, 0.00),
(33, 17, 152, 'UNID', 1, 1100.000, 0.00),
(34, 17, 154, 'UNID', 1, 2300.000, 0.00),
(35, 18, 96, 'UNID', 1, 129.000, 0.00),
(36, 19, 236, 'UNID', 1, 2429.000, 0.00),
(37, 20, 2, 'UNID', 1, 300.000, 0.00),
(38, 20, 119, 'UNID', 1, 200.000, 0.00),
(39, 21, 174, 'UNID', 1, 290.000, 0.00),
(40, 22, 288, 'UNID', 2, 130.000, 0.00),
(41, 22, 289, 'UNID', 2, 130.000, 0.00),
(42, 22, 290, 'UNID', 2, 130.000, 0.00),
(43, 22, 291, 'UNID', 2, 130.000, 0.00),
(46, 23, 2, 'UNID', 1, 199.000, 0.00),
(47, 23, 98, 'UNID', 15, 50.000, 0.00),
(48, 24, 302, 'UNID', 1, 2449.000, 0.00),
(49, 24, 301, 'UNID', 1, 3718.000, 0.00),
(50, 25, 323, 'UNID', 1, 479.000, 0.00),
(51, 25, 324, 'UNID', 1, 479.000, 0.00),
(52, 25, 325, 'UNID', 1, 479.000, 0.00),
(53, 25, 326, 'UNID', 1, 479.000, 0.00),
(54, 26, 34, 'UNID', 1, 150.000, 0.00),
(55, 27, 366, 'UNID', 1, 1930.000, 0.00),
(56, 28, 369, 'UNID', 1, 95.000, 0.00),
(57, 29, 376, 'UNID', 1, 89.000, 0.00),
(58, 30, 378, 'UNID', 1, 220.000, 0.00),
(59, 31, 381, 'UNID', 1, 3350.000, 0.00),
(61, 32, 384, 'UNID', 1, 2069.000, 0.00),
(62, 33, 376, 'UNID', 1, 89.000, 0.00),
(63, 34, 328, 'UNID', 1, 200.000, 0.00),
(64, 34, 386, 'UNID', 1, 220.000, 0.00),
(65, 35, 328, 'UNID', 1, 200.000, 0.00),
(66, 35, 386, 'UNID', 1, 220.000, 0.00),
(67, 35, 388, 'UNID', 1, 189.000, 0.00),
(70, 37, 96, 'UNID', 2, 80.000, 0.00),
(71, 37, 97, 'UNID', 2, 50.000, 0.00),
(73, 39, 399, 'UNID', 1, 1490.000, 0.00),
(74, 40, 31, 'UNID', 1, 140.000, 0.00),
(75, 41, 83, 'UNID', 1, 47.500, 0.00),
(76, 41, 84, 'UNID', 1, 47.500, 0.00),
(77, 41, 85, 'UNID', 1, 47.500, 0.00),
(78, 41, 86, 'UNID', 1, 47.500, 0.00),
(79, 42, 49, 'UNID', 1, 40.000, 0.00),
(80, 42, 123, 'UNID', 1, 30.000, 0.00),
(81, 43, 497, 'CIENTO', 1, 150.000, 0.00),
(82, 44, 500, 'UNID', 1, 5000.000, 0.00),
(83, 45, 500, 'UNID', 1, 5000.000, 0.00),
(84, 46, 502, 'CIENTO', 1, 180.000, 0.00),
(85, 47, 31, 'UNID', 1, 150.000, 0.00),
(86, 47, 31, 'UNID', 1, 130.000, 0.00),
(87, 48, 509, 'UNID', 3, 1269.000, 10.00),
(88, 48, 510, 'UNID', 3, 1229.000, 10.00),
(93, 49, 301, 'UNID', 1, 4530.000, 30.00),
(94, 50, 534, 'UNID', 1, 260.000, 0.00),
(95, 51, 489, 'UNID', 1, 250.000, 0.00),
(96, 52, 580, 'UNID', 1, 920.000, 0.00),
(98, 53, 96, 'UNID', 1, 90.000, 0.00),
(99, 54, 117, 'UNID', 4, 820.000, 15.00),
(100, 54, 7, 'UNID', 2, 310.000, 15.00),
(101, 54, 246, 'UNID', 1, 220.000, 15.00),
(102, 54, 589, 'UNID', 6, 50.000, 15.00),
(103, 55, 604, 'UNID', 1, 220.000, 5.00),
(104, 56, 605, 'UNID', 1, 1299.000, 5.00),
(105, 56, 606, 'UNID', 1, 1699.000, 5.00),
(106, 56, 607, 'UNID', 1, 3699.900, 5.00),
(107, 57, 611, 'UNID', 1, 280.000, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `cantidad`, `precio_compra`, `precio_venta`) VALUES
(1, 1, 2, 50, 160.00, 199.00);

--
-- Disparadores `detalle_ingreso`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_ingreso` FOR EACH ROW BEGIN
UPDATE articulo SET stock = stock + NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(20) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idarticulo`, `cantidad`, `precio_venta`, `descuento`) VALUES
(1, 1, 2, 3, 199.00, 10.00),
(2, 2, 2, 3, 199.00, 10.00),
(3, 3, 30, 1, 550.00, 0.00),
(4, 6, 2, 1, 199.00, 30.00),
(5, 7, 70, 1, 250.00, 0.00),
(6, 8, 100, 25, 13.00, 0.00),
(7, 11, 17, 3, 15.00, 0.00),
(8, 11, 24, 1, 15.00, 0.00),
(9, 12, 115, 1, 36.00, 0.00),
(10, 13, 98, 1, 60.00, 0.00),
(11, 14, 2, 1, 199.00, 0.00),
(12, 14, 120, 1, 250.00, 0.00),
(13, 15, 120, 1, 130.00, 0.00),
(14, 15, 2, 1, 199.00, 0.00),
(15, 16, 1, 1, 60.00, 0.00),
(16, 17, 2, 1, 100.00, 0.00),
(17, 18, 147, 2, 53.00, 0.00),
(19, 0, 3, 1, 300.00, 0.00),
(21, 0, 9, 1, 100.00, 0.00),
(27, 0, 1, 1, 0.00, 0.00),
(35, 34, 34, 1, 150.00, 0.00),
(36, 35, 153, 1, 900.00, 0.00),
(37, 35, 152, 1, 1100.00, 0.00),
(40, 37, 6, 1, 350.00, 0.00),
(41, 37, 156, 1, 300.00, 0.00),
(42, 0, 18, 10, 10.00, 0.00),
(43, 39, 10, 5, 30.00, 0.00),
(44, 40, 2, 1, 200.00, 0.00),
(45, 41, 157, 1, 120.00, 0.00),
(46, 42, 2, 1, 200.00, 0.00),
(47, 42, 87, 1, 12.50, 0.00),
(48, 42, 88, 1, 12.50, 0.00),
(49, 42, 89, 1, 12.50, 0.00),
(50, 42, 90, 1, 12.50, 0.00),
(51, 0, 87, 1, 12.50, 0.00),
(52, 0, 88, 1, 12.50, 0.00),
(53, 0, 89, 1, 12.50, 0.00),
(54, 0, 90, 1, 12.50, 0.00),
(55, 44, 53, 1, 27.50, 0.00),
(56, 44, 54, 1, 27.50, 0.00),
(57, 44, 55, 1, 27.50, 0.00),
(58, 44, 56, 1, 27.50, 0.00),
(59, 45, 151, 1, 40.00, 0.00),
(60, 45, 2, 1, 210.00, 0.00),
(61, 46, 96, 1, 69.00, 0.00),
(62, 47, 34, 1, 140.00, 0.00),
(63, 48, 3, 1, 300.00, 0.00),
(64, 0, 2, 1, 240.00, 0.00),
(65, 0, 260, 1, 40.00, 0.00),
(66, 50, 2, 1, 240.00, 0.00),
(67, 50, 261, 1, 40.00, 0.00),
(68, 51, 262, 1, 50.00, 0.00),
(69, 52, 5, 1, 200.00, 0.00),
(70, 52, 263, 1, 30.00, 0.00),
(71, 53, 6, 1, 300.00, 0.00),
(72, 54, 14, 1, 15.00, 0.00),
(73, 55, 2, 1, 200.00, 0.00),
(74, 56, 8, 1, 100.00, 0.00),
(75, 57, 2, 5, 200.00, 0.00),
(76, 58, 266, 1, 300.00, 0.00),
(77, 59, 127, 1, 80.00, 0.00),
(78, 60, 139, 1, 50.00, 0.00),
(79, 61, 43, 1, 35.00, 0.00),
(80, 61, 44, 1, 35.00, 0.00),
(81, 61, 45, 1, 35.00, 0.00),
(82, 62, 98, 1, 65.00, 0.00),
(83, 63, 1, 1, 200.00, 0.00),
(84, 63, 284, 1, 100.00, 0.00),
(85, 64, 1, 1, 100.00, 0.00),
(86, 65, 1, 1, 200.00, 0.00),
(87, 66, 1, 2, 500.00, 0.00),
(88, 66, 2, 3, 199.00, 0.00),
(89, 67, 1, 1, 200.00, 0.00),
(91, 69, 287, 1, 500.00, 0.00),
(92, 70, 129, 1, 90.00, 0.00),
(93, 71, 1, 1, 100.00, 0.00),
(94, 72, 90, 1, 12.50, 0.00),
(95, 72, 89, 1, 12.50, 0.00),
(96, 72, 88, 1, 12.50, 0.00),
(97, 72, 87, 1, 12.50, 0.00),
(98, 72, 297, 1, 30.00, 0.00),
(99, 73, 299, 1, 0.00, 0.00),
(100, 73, 7, 1, 300.00, 0.00),
(101, 74, 7, 2, 300.00, 0.00),
(102, 74, 233, 2, 35.00, 0.00),
(103, 74, 300, 1, 0.00, 0.00),
(104, 75, 1, 1, 200.00, 0.00),
(105, 76, 88, 1, 13.00, 0.00),
(106, 76, 89, 1, 13.00, 0.00),
(107, 76, 87, 1, 13.00, 0.00),
(108, 76, 94, 1, 25.00, 0.00),
(109, 0, 140, 1, 25.00, 0.00),
(110, 78, 140, 1, 25.00, 0.00),
(111, 0, 2, 1, 55.00, 0.00),
(112, 80, 1, 1, 100.00, 0.00),
(113, 81, 1, 1, 300.00, 0.00),
(114, 0, 1, 1, 200.00, 0.00),
(115, 0, 1, 1, 200.00, 0.00),
(116, 84, 7, 1, 300.00, 0.00),
(117, 84, 49, 1, 30.00, 0.00),
(118, 84, 50, 1, 30.00, 0.00),
(119, 84, 51, 1, 30.00, 0.00),
(120, 84, 52, 1, 30.00, 0.00),
(121, 84, 322, 1, 70.00, 0.00),
(122, 85, 90, 1, 12.50, 0.00),
(123, 85, 89, 1, 12.50, 0.00),
(124, 85, 88, 1, 12.50, 0.00),
(125, 85, 87, 1, 12.50, 0.00),
(126, 86, 53, 1, 33.00, 0.00),
(127, 86, 54, 1, 33.00, 0.00),
(128, 86, 56, 1, 33.00, 0.00),
(129, 87, 34, 1, 140.00, 0.00),
(130, 88, 108, 1, 15.00, 0.00),
(131, 88, 327, 1, 10.00, 0.00),
(132, 89, 101, 1, 15.00, 0.00),
(133, 90, 115, 1, 30.00, 0.00),
(134, 90, 24, 1, 12.00, 0.00),
(135, 91, 329, 1, 120.00, 0.00),
(136, 92, 248, 1, 110.00, 0.00),
(137, 93, 126, 1, 75.00, 0.00),
(138, 94, 90, 1, 12.50, 0.00),
(139, 94, 89, 1, 12.50, 0.00),
(140, 94, 88, 1, 12.50, 0.00),
(141, 94, 87, 1, 12.50, 0.00),
(142, 95, 92, 1, 20.00, 0.00),
(143, 95, 91, 1, 20.00, 0.00),
(144, 95, 93, 1, 20.00, 0.00),
(145, 95, 94, 1, 20.00, 0.00),
(146, 96, 31, 1, 150.00, 0.00),
(147, 97, 98, 1, 65.00, 0.00),
(148, 98, 21, 1, 15.00, 0.00),
(149, 0, 234, 1, 40.00, 0.00),
(150, 0, 240, 1, 130.00, 0.00),
(151, 101, 240, 1, 130.00, 0.00),
(152, 102, 47, 1, 30.00, 0.00),
(153, 102, 48, 1, 30.00, 0.00),
(154, 102, 330, 1, 30.00, 0.00),
(155, 102, 331, 1, 30.00, 0.00),
(156, 102, 96, 1, 60.00, 0.00),
(169, 115, 202, 1, 90.00, 0.00),
(170, 116, 342, 1, 80.00, 0.00),
(175, 120, 127, 1, 80.00, 0.00),
(176, 120, 129, 1, 90.00, 0.00),
(177, 121, 345, 1, 10.00, 0.00),
(183, 126, 351, 1, 100.00, 0.00),
(184, 127, 352, 1, 350.00, 0.00),
(185, 128, 353, 1, 10.00, 0.00),
(186, 129, 21, 1, 10.00, 0.00),
(187, 129, 354, 1, 10.00, 0.00),
(188, 130, 126, 1, 75.00, 0.00),
(189, 130, 127, 1, 75.00, 0.00),
(190, 131, 340, 2, 20.00, 0.00),
(191, 132, 355, 2, 70.00, 0.00),
(192, 133, 95, 2, 45.00, 5.00),
(193, 134, 356, 1, 59.00, 0.00),
(194, 134, 102, 1, 40.00, 0.00),
(195, 134, 104, 1, 40.00, 0.00),
(196, 135, 226, 1, 55.00, 0.00),
(197, 135, 8, 1, 99.00, 0.00),
(198, 136, 357, 1, 45.00, 0.00),
(199, 137, 111, 2, 20.00, 0.00),
(200, 137, 201, 1, 80.00, 0.00),
(201, 138, 333, 1, 145.00, 0.00),
(202, 139, 358, 1, 70.00, 0.00),
(203, 139, 34, 1, 150.00, 0.00),
(204, 139, 327, 1, 15.00, 0.00),
(205, 140, 359, 1, 120.00, 0.00),
(206, 141, 238, 3, 25.00, 0.00),
(207, 142, 14, 2, 20.00, 2.00),
(208, 142, 24, 2, 15.00, 0.00),
(209, 143, 126, 1, 75.00, 0.00),
(210, 143, 127, 1, 75.00, 0.00),
(211, 144, 360, 1, 40.00, 0.00),
(212, 145, 340, 1, 80.00, 0.00),
(213, 145, 361, 1, 60.00, 0.00),
(214, 146, 362, 1, 490.00, 0.00),
(215, 147, 126, 1, 105.00, 0.00),
(216, 147, 127, 1, 105.00, 0.00),
(217, 148, 126, 1, 80.00, 0.00),
(218, 149, 364, 1, 120.00, 0.00),
(219, 0, 14, 1, 15.00, 0.00),
(220, 151, 14, 1, 15.00, 0.00),
(221, 152, 106, 1, 15.00, 0.00),
(222, 152, 107, 1, 15.00, 0.00),
(223, 153, 3, 1, 300.00, 0.00),
(224, 153, 365, 1, 0.00, 0.00),
(225, 154, 34, 1, 150.00, 0.00),
(226, 155, 367, 1, 190.00, 0.00),
(227, 155, 116, 1, 10.00, 0.00),
(228, 156, 368, 1, 90.00, 0.00),
(229, 156, 2, 1, 280.00, 0.00),
(230, 156, 2, 1, 400.00, 0.00),
(231, 157, 234, 1, 30.00, 0.00),
(232, 0, 202, 1, 0.00, 0.00),
(233, 159, 202, 1, 68.00, 0.00),
(234, 160, 102, 1, 250.00, 0.00),
(235, 160, 370, 1, 180.00, 0.00),
(236, 161, 90, 1, 15.00, 0.00),
(237, 162, 127, 2, 80.00, 0.00),
(238, 162, 129, 1, 90.00, 0.00),
(239, 163, 49, 2, 28.00, 0.00),
(240, 163, 50, 1, 28.00, 0.00),
(241, 163, 51, 1, 28.00, 0.00),
(242, 163, 52, 1, 28.00, 0.00),
(243, 164, 2, 1, 200.00, 0.00),
(244, 165, 14, 1, 15.00, 0.00),
(245, 165, 21, 2, 10.00, 0.00),
(246, 166, 116, 1, 10.00, 0.00),
(247, 167, 2, 1, 200.00, 0.00),
(248, 168, 126, 1, 75.00, 0.00),
(249, 168, 127, 1, 75.00, 0.00),
(250, 169, 70, 1, 240.00, 0.00),
(251, 170, 139, 1, 50.00, 0.00),
(252, 171, 70, 2, 20.00, 0.00),
(253, 172, 21, 1, 10.00, 0.00),
(254, 173, 14, 1, 10.00, 0.00),
(255, 174, 2, 2, 190.00, 0.00),
(256, 175, 375, 1, 80.00, 0.00),
(257, 176, 350, 1, 30.00, 0.00),
(258, 177, 377, 1, 140.00, 0.00),
(259, 177, 87, 1, 15.00, 0.00),
(260, 177, 88, 1, 15.00, 0.00),
(261, 177, 89, 1, 15.00, 0.00),
(262, 177, 90, 1, 15.00, 0.00),
(268, 179, 97, 3, 45.00, 0.00),
(269, 179, 99, 2, 40.00, 0.00),
(270, 179, 22, 3, 13.00, 0.00),
(271, 179, 24, 4, 13.00, 0.00),
(272, 179, 327, 3, 13.00, 0.00),
(273, 180, 379, 1, 35.00, 0.00),
(274, 181, 380, 1, 150.00, 0.00),
(275, 182, 41, 1, 200.00, 0.00),
(276, 183, 4, 1, 250.00, 0.00),
(277, 183, 382, 0, 0.00, 0.00),
(278, 184, 383, 1, 25.00, 0.00),
(279, 185, 95, 1, 50.00, 0.00),
(280, 186, 24, 1, 14.99, 0.00),
(282, 188, 328, 1, 200.00, 0.00),
(283, 188, 386, 1, 220.00, 0.00),
(284, 0, 99, 1, 45.00, 0.00),
(285, 190, 99, 1, 45.00, 0.00),
(287, 192, 2, 1, 230.00, 0.00),
(288, 193, 84, 1, 60.00, 0.00),
(289, 194, 116, 1, 10.00, 0.00),
(290, 195, 8, 2, 80.00, 0.00),
(291, 195, 95, 2, 50.00, 0.00),
(292, 196, 129, 1, 90.00, 0.00),
(293, 196, 127, 1, 85.00, 0.00),
(294, 197, 390, 1, 70.00, 0.00),
(295, 198, 396, 1, 12.00, 0.00),
(296, 198, 395, 1, 12.00, 0.00),
(297, 199, 53, 1, 37.00, 0.00),
(298, 200, 22, 1, 15.00, 0.00),
(299, 201, 237, 1, 25.00, 0.00),
(300, 202, 86, 1, 35.00, 0.00),
(301, 203, 203, 1, 40.00, 0.00),
(302, 204, 400, 1, 25.00, 0.00),
(303, 204, 88, 1, 15.00, 1.00),
(304, 204, 87, 1, 15.00, 1.00),
(305, 204, 89, 1, 15.00, 1.00),
(306, 204, 90, 1, 15.00, 1.00),
(307, 205, 116, 1, 12.00, 0.00),
(308, 206, 115, 1, 35.00, 0.00),
(309, 207, 96, 1, 60.00, 0.00),
(310, 208, 1, 1, 290.00, 0.00),
(311, 208, 431, 1, 0.00, 0.00),
(312, 0, 1, 1, 200.00, 0.00),
(313, 210, 1, 1, 200.00, 0.00),
(314, 211, 1, 1, 240.00, 0.00),
(315, 211, 433, 1, 40.00, 0.00),
(316, 212, 7, 1, 290.00, 0.00),
(317, 212, 434, 1, 0.00, 0.00),
(318, 213, 435, 1, 0.00, 0.00),
(319, 213, 7, 1, 290.00, 0.00),
(320, 214, 105, 2, 20.00, 0.00),
(321, 214, 36, 1, 180.00, 0.00),
(322, 215, 436, 1, 145.00, 0.00),
(323, 216, 116, 1, 13.00, 0.00),
(324, 217, 40, 1, 290.00, 0.00),
(325, 218, 49, 1, 28.00, 0.00),
(326, 0, 2, 1, 199.00, 0.00),
(327, 220, 2, 1, 199.00, 0.00),
(328, 221, 2, 1, 200.00, 0.00),
(329, 222, 1, 1, 250.00, 0.00),
(330, 223, 5, 1, 150.00, 0.00),
(331, 224, 3, 1, 230.00, 0.00),
(332, 225, 7, 1, 300.00, 0.00),
(333, 226, 9, 1, 400.00, 0.00),
(334, 227, 101, 1, 15.00, 0.00),
(335, 227, 130, 1, 70.00, 0.00),
(336, 228, 445, 1, 150.00, 0.00),
(337, 0, 446, 1, 300.00, 0.00),
(338, 230, 447, 1, 300.00, 0.00),
(339, 231, 1, 1, 300.00, 0.00),
(340, 232, 127, 1, 80.00, 0.00),
(341, 233, 268, 1, 40.00, 0.00),
(342, 234, 221, 1, 65.00, 0.00),
(343, 235, 24, 1, 30.00, 0.00),
(344, 235, 448, 1, 57.00, 0.00),
(345, 236, 115, 1, 35.00, 0.00),
(346, 0, 1, 1, 200.00, 0.00),
(347, 238, 1, 1, 300.00, 0.00),
(348, 0, 453, 1, 300.00, 0.00),
(349, 240, 454, 1, 300.00, 0.00),
(350, 241, 459, 1, 50.00, 0.00),
(351, 242, 460, 1, 240.00, 0.00),
(352, 243, 461, 1, 80.00, 0.00),
(353, 244, 462, 1, 30.00, 0.00),
(354, 245, 463, 1, 10.00, 0.00),
(355, 246, 464, 1, 140.00, 0.00),
(356, 247, 465, 1, 55.00, 0.00),
(357, 248, 466, 1, 180.00, 0.00),
(358, 249, 467, 1, 20.00, 0.00),
(359, 250, 238, 2, 20.00, 0.00),
(360, 251, 101, 1, 15.00, 0.00),
(361, 252, 468, 1, 50.00, 0.00),
(362, 253, 469, 1, 10.00, 0.00),
(363, 254, 470, 1, 800.00, 0.00),
(364, 0, 471, 1, 80.00, 0.00),
(365, 256, 473, 1, 80.00, 0.00),
(366, 257, 14, 1, 15.00, 0.00),
(367, 257, 474, 1, 80.00, 0.00),
(368, 258, 475, 1, 60.00, 0.00),
(369, 258, 476, 1, 100.00, 0.00),
(370, 259, 477, 1, 100.00, 0.00),
(371, 0, 106, 1, 20.00, 0.00),
(372, 261, 106, 1, 20.00, 0.00),
(373, 262, 478, 1, 80.00, 0.00),
(374, 263, 480, 1, 170.00, 0.00),
(375, 264, 127, 1, 75.00, 0.00),
(376, 264, 126, 1, 75.00, 0.00),
(379, 266, 126, 1, 80.00, 0.00),
(380, 266, 127, 1, 80.00, 0.00),
(381, 267, 380, 1, 120.00, 0.00),
(382, 268, 2, 1, 200.00, 0.00),
(383, 269, 108, 1, 15.00, 0.00),
(384, 270, 108, 1, 15.00, 0.00),
(385, 271, 113, 2, 15.00, 0.00),
(386, 272, 102, 1, 50.00, 0.00),
(387, 273, 481, 1, 20.00, 0.00),
(388, 274, 482, 1, 550.00, 0.00),
(389, 275, 98, 1, 80.00, 0.00),
(390, 276, 483, 1, 50.00, 0.00),
(391, 277, 17, 1, 15.00, 0.00),
(392, 278, 327, 3, 10.00, 0.00),
(393, 279, 50, 1, 33.00, 0.00),
(394, 279, 49, 1, 33.00, 0.00),
(395, 279, 420, 1, 33.00, 0.00),
(396, 280, 335, 1, 40.00, 0.00),
(397, 281, 127, 1, 75.00, 0.00),
(398, 281, 126, 1, 75.00, 0.00),
(399, 282, 498, 1, 60.00, 0.00),
(400, 283, 48, 1, 15.00, 0.00),
(401, 283, 499, 1, 70.00, 0.00),
(402, 284, 96, 2, 70.00, 0.00),
(403, 285, 253, 1, 20.00, 0.00),
(404, 286, 30, 1, 500.00, 0.00),
(405, 286, 2, 1, 190.00, 0.00),
(406, 287, 444, 1, 450.00, 0.00),
(407, 288, 24, 1, 30.00, 0.00),
(408, 288, 501, 1, 40.00, 0.00),
(409, 289, 504, 1, 280.00, 0.00),
(410, 289, 91, 1, 25.00, 0.00),
(411, 289, 92, 1, 25.00, 0.00),
(412, 289, 93, 1, 25.00, 0.00),
(413, 289, 94, 1, 25.00, 0.00),
(414, 290, 17, 1, 20.00, 0.00),
(415, 291, 21, 1, 10.00, 0.00),
(416, 292, 505, 1, 80.00, 0.00),
(417, 293, 22, 1, 10.00, 0.00),
(418, 294, 103, 1, 100.00, 0.00),
(419, 295, 481, 1, 20.00, 0.00),
(420, 296, 205, 1, 50.00, 0.00),
(421, 297, 511, 1, 20.00, 0.00),
(422, 298, 214, 1, 50.00, 0.00),
(423, 299, 512, 1, 22.00, 0.00),
(424, 300, 132, 1, 70.00, 0.00),
(425, 301, 513, 1, 20.00, 0.00),
(426, 302, 514, 1, 70.00, 0.00),
(427, 303, 515, 1, 20.00, 0.00),
(428, 304, 35, 1, 130.00, 0.00),
(429, 305, 32, 1, 130.00, 0.00),
(430, 306, 127, 1, 130.00, 0.00),
(431, 306, 516, 1, 40.00, 0.00),
(432, 307, 517, 1, 50.00, 0.00),
(433, 308, 518, 1, 85.00, 0.00),
(434, 309, 126, 1, 80.00, 0.00),
(435, 310, 519, 1, 30.00, 0.00),
(436, 311, 520, 1, 170.00, 0.00),
(437, 312, 32, 1, 120.00, 0.00),
(438, 313, 238, 1, 20.00, 0.00),
(439, 313, 22, 1, 10.00, 0.00),
(440, 314, 96, 6, 25.00, 0.00),
(441, 314, 95, 1, 25.00, 0.00),
(442, 315, 238, 1, 20.00, 0.00),
(443, 316, 24, 1, 12.00, 0.00),
(444, 317, 31, 1, 150.00, 0.00),
(445, 318, 126, 1, 100.00, 0.00),
(446, 318, 521, 1, 40.00, 0.00),
(447, 319, 32, 1, 130.00, 0.00),
(448, 320, 522, 1, 50.00, 0.00),
(449, 0, 523, 1, 30.00, 0.00),
(450, 322, 524, 1, 30.00, 0.00),
(451, 323, 98, 1, 55.00, 0.00),
(452, 324, 31, 1, 110.00, 0.00),
(453, 325, 126, 1, 80.00, 0.00),
(454, 326, 526, 1, 40.00, 0.00),
(455, 327, 143, 1, 300.00, 0.00),
(456, 327, 527, 1, 50.00, 0.00),
(457, 328, 241, 1, 90.00, 0.00),
(458, 328, 22, 1, 35.00, 0.00),
(459, 329, 100, 1, 10.00, 0.00),
(460, 330, 5, 1, 70.00, 0.00),
(461, 331, 127, 1, 80.00, 0.00),
(462, 332, 2, 1, 200.00, 0.00),
(463, 333, 22, 1, 10.00, 0.00),
(464, 334, 530, 1, 30.00, 0.00),
(465, 335, 531, 1, 50.00, 0.00),
(466, 336, 532, 1, 100.00, 0.00),
(467, 336, 71, 1, 15.00, 0.00),
(468, 337, 533, 1, 30.00, 0.00),
(469, 338, 239, 1, 110.00, 0.00),
(470, 339, 436, 1, 70.00, 0.00),
(471, 339, 535, 1, 30.00, 0.00),
(472, 340, 536, 1, 90.00, 0.00),
(473, 341, 126, 1, 75.00, 0.00),
(474, 341, 127, 1, 75.00, 0.00),
(475, 342, 540, 1, 10.00, 0.00),
(476, 343, 401, 2, 15.00, 0.00),
(477, 343, 138, 1, 15.00, 0.00),
(478, 344, 238, 1, 20.00, 0.00),
(479, 345, 541, 1, 40.00, 0.00),
(480, 346, 129, 1, 90.00, 0.00),
(481, 347, 22, 1, 10.00, 0.00),
(482, 348, 542, 1, 130.00, 0.00),
(483, 349, 543, 1, 80.00, 0.00),
(484, 350, 544, 5, 10.00, 0.00),
(485, 351, 545, 1, 300.00, 0.00),
(486, 352, 24, 3, 12.00, 0.00),
(487, 352, 22, 1, 10.00, 0.00),
(488, 353, 546, 1, 10.00, 0.00),
(489, 354, 547, 1, 10.00, 0.00),
(490, 355, 404, 1, 15.00, 0.00),
(491, 356, 239, 1, 110.00, 0.00),
(492, 357, 548, 1, 480.00, 0.00),
(493, 358, 22, 1, 10.00, 0.00),
(494, 359, 549, 1, 15.00, 0.00),
(495, 360, 7, 1, 290.00, 0.00),
(496, 361, 550, 1, 60.00, 0.00),
(497, 362, 551, 1, 280.00, 0.00),
(498, 363, 14, 1, 15.00, 0.00),
(499, 364, 579, 1, 100.00, 0.00),
(500, 364, 47, 1, 40.00, 0.00),
(501, 365, 14, 1, 15.00, 0.00),
(502, 366, 127, 1, 80.00, 0.00),
(503, 367, 581, 1, 120.00, 0.00),
(504, 368, 238, 1, 20.00, 0.00),
(505, 369, 97, 1, 45.00, 0.00),
(506, 370, 582, 1, 180.00, 0.00),
(507, 371, 126, 1, 80.00, 0.00),
(508, 372, 4, 1, 70.00, 0.00),
(509, 373, 583, 1, 470.00, 0.00),
(510, 374, 24, 2, 15.00, 0.00),
(511, 375, 584, 1, 20.00, 0.00),
(512, 376, 1, 1, 110.00, 0.00),
(513, 377, 585, 1, 60.00, 0.00),
(514, 378, 126, 1, 80.00, 0.00),
(515, 378, 127, 1, 80.00, 0.00),
(516, 378, 586, 1, 40.00, 0.00),
(517, 379, 587, 1, 15.00, 0.00),
(518, 380, 588, 1, 60.00, 0.00),
(519, 381, 379, 2, 20.00, 0.00),
(520, 382, 137, 1, 60.00, 0.00),
(521, 383, 489, 1, 250.00, 0.00),
(522, 384, 591, 1, 108.00, 0.00),
(523, 384, 592, 2, 70.00, 0.00),
(524, 385, 1, 1, 200.00, 0.00),
(525, 386, 21, 1, 15.00, 0.00),
(526, 387, 37, 1, 120.00, 0.00),
(527, 388, 608, 1, 110.00, 0.00),
(528, 388, 22, 1, 15.00, 0.00),
(529, 389, 103, 1, 40.00, 0.00),
(530, 390, 226, 1, 50.00, 0.00),
(531, 391, 129, 1, 90.00, 0.00),
(532, 392, 99, 1, 40.00, 0.00),
(533, 393, 34, 1, 150.00, 30.00),
(534, 394, 129, 1, 90.00, 0.00),
(535, 394, 127, 1, 80.00, 0.00),
(536, 395, 609, 1, 50.00, 0.00),
(539, 0, 610, 1, 50.00, 0.00),
(543, 401, 237, 1, 20.00, 0.00),
(544, 402, 237, 1, 20.00, 0.00),
(545, 403, 49, 1, 27.50, 0.00),
(546, 403, 50, 1, 27.50, 0.00),
(547, 403, 51, 1, 27.50, 0.00),
(548, 403, 52, 1, 27.50, 0.00),
(549, 404, 22, 1, 15.00, 0.00);

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
UPDATE articulo SET stock = stock - NEW.cantidad 
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `serie_comprobante` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_comprobante` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_compra`, `estado`) VALUES
(1, 409, 14, 'Ticket', '00', '01', '2025-06-01 00:00:00', 0.00, 8000.00, 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_caja`
--

CREATE TABLE `movimientos_caja` (
  `idmovimientocaja` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `concepto` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` enum('ingreso','egreso') COLLATE utf8_spanish_ci NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_gasto` enum('OTROS','ADELANTO') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'OTROS',
  `medio_pago` enum('Pago en Efectivo','Transferencia','Yape','Plin') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Pago en Efectivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimientos_caja`
--

INSERT INTO `movimientos_caja` (`idmovimientocaja`, `fecha`, `monto`, `concepto`, `tipo`, `idusuario`, `tipo_gasto`, `medio_pago`) VALUES
(1, '2025-07-28', 20.00, 'articulos de limpieza', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(2, '2025-07-28', 100.00, 'para dar vuelto', 'ingreso', 14, 'OTROS', 'Pago en Efectivo'),
(3, '2025-07-28', 50.00, 'para dar vuelto 2', 'ingreso', 14, 'OTROS', 'Pago en Efectivo'),
(4, '2025-07-31', 30.00, 'andrew adelanto', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(5, '2025-08-06', 100.00, 'andrew adelanto', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(6, '2025-08-06', 200.00, 'abel adelanto', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(7, '2025-08-06', 80.00, 'pago de toner', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(8, '2025-08-13', 50.00, 'test', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(9, '2025-08-15', 40.00, 'juan menu', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(10, '2025-08-15', 50.00, 'andrew', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(11, '2025-09-03', 10.00, 'ISAC  ADELANTO', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(12, '2025-09-03', 20.00, 'ABEL ADELANTO', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(13, '2025-09-03', 200.00, 'PAGO DE TONER PAMAS', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(14, '2025-09-03', 20.00, 'DEVOLUCION', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(15, '2025-09-03', 20.00, 'ENVIO PAQUETE', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(16, '2025-09-08', 400.00, 'abel adelanto', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(17, '2025-09-08', 280.00, 'andrew adelanto', 'egreso', 14, 'OTROS', 'Pago en Efectivo'),
(18, '2025-10-15', 100.00, 'QWERTY', 'egreso', 20, 'ADELANTO', 'Pago en Efectivo'),
(19, '2025-10-15', 50.00, 'qwerty', 'egreso', 23, 'ADELANTO', 'Yape'),
(20, '2025-10-15', 80.00, 'asdf', 'egreso', 23, 'ADELANTO', 'Plin'),
(21, '2025-10-17', 50.00, 'adelanto', 'egreso', 21, 'ADELANTO', 'Pago en Efectivo'),
(22, '2025-10-17', 100.00, 'adelanto', 'egreso', 20, 'ADELANTO', 'Pago en Efectivo'),
(23, '2025-10-17', 100.00, 'agua', 'egreso', 20, 'OTROS', 'Pago en Efectivo'),
(24, '2025-10-21', 40.00, 'adelanto', 'egreso', 20, 'ADELANTO', 'Yape'),
(25, '2025-10-21', 20.00, 'agua', 'egreso', 23, 'OTROS', 'Pago en Efectivo'),
(26, '2025-10-21', 50.00, 'adelanto', 'egreso', 21, 'ADELANTO', 'Transferencia'),
(27, '2025-10-25', 100.00, 'ADELANTO', 'egreso', 23, 'ADELANTO', 'Pago en Efectivo'),
(28, '2025-10-25', 200.00, 'ADELANTO', 'egreso', 20, 'ADELANTO', 'Yape'),
(29, '2025-10-25', 250.00, 'OTROS', 'egreso', 21, 'OTROS', 'Transferencia'),
(30, '2025-10-25', 200.00, 'ADELAMTO', 'egreso', 31, 'ADELANTO', 'Pago en Efectivo'),
(31, '2025-10-25', 100.00, 'OTROS', 'egreso', 30, 'OTROS', 'Plin'),
(32, '2025-10-25', 200.00, 'adelanto', 'egreso', 21, 'ADELANTO', 'Yape'),
(33, '2025-10-27', 400.00, 'ADELANTO', 'egreso', 32, 'ADELANTO', 'Yape'),
(34, '2025-10-27', 179.00, 'ADELANTO', 'egreso', 33, 'ADELANTO', 'Yape'),
(35, '2025-10-27', 100.00, 'adelanto', 'egreso', 34, 'ADELANTO', 'Yape'),
(36, '2025-10-27', 10.00, 'adelanto', 'egreso', 41, 'ADELANTO', 'Yape'),
(37, '2025-10-27', 50.00, 'adelanto', 'egreso', 33, 'ADELANTO', 'Pago en Efectivo'),
(38, '2025-10-27', 50.00, 'aguatero', 'egreso', 42, 'OTROS', 'Pago en Efectivo'),
(39, '2025-10-27', 50.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Pago en Efectivo'),
(40, '2025-10-29', 10.00, 'adelanto', 'egreso', 34, 'ADELANTO', 'Pago en Efectivo'),
(41, '2025-10-29', 50.00, 'agua', 'egreso', 42, 'OTROS', 'Yape'),
(42, '2025-10-29', 600.00, 'adelanto', 'egreso', 34, 'ADELANTO', 'Pago en Efectivo'),
(43, '2025-11-06', 30.00, 'repuesto', 'egreso', 42, 'OTROS', 'Pago en Efectivo'),
(44, '2025-11-06', 50.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Pago en Efectivo'),
(45, '2025-11-06', 100.00, 'adelanto', 'egreso', 34, 'ADELANTO', 'Yape'),
(46, '2025-11-06', 200.00, 'adelnato', 'egreso', 38, 'ADELANTO', 'Transferencia'),
(47, '2025-11-06', 60.00, 'adelanto', 'egreso', 41, 'ADELANTO', 'Pago en Efectivo'),
(48, '2025-11-06', 80.00, 'adealnto', 'egreso', 37, 'ADELANTO', 'Plin'),
(49, '2025-11-06', 50.00, 'tintas', 'egreso', 42, 'OTROS', 'Pago en Efectivo'),
(50, '2025-11-06', 50.00, 'bandeja', 'egreso', 42, 'OTROS', 'Pago en Efectivo'),
(51, '2025-11-10', 104.00, 'adelanto', 'egreso', 33, 'ADELANTO', 'Yape'),
(52, '2025-11-10', 350.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Yape'),
(53, '2025-11-13', 37.00, 'PINTURA', 'egreso', 42, 'OTROS', 'Yape'),
(54, '2025-11-17', 300.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Yape'),
(55, '2025-11-17', 124.00, 'adelanto', 'egreso', 33, 'ADELANTO', 'Yape'),
(56, '2025-11-17', 75.00, 'CARGADORES', 'egreso', 42, 'OTROS', 'Yape'),
(57, '2025-11-17', 110.00, 'adelantto', 'egreso', 32, 'ADELANTO', 'Pago en Efectivo'),
(58, '2025-11-17', 10.00, 'pago x dia', 'egreso', 40, 'OTROS', 'Pago en Efectivo'),
(59, '2025-11-17', 10.00, 'pago menu', 'egreso', 36, 'OTROS', 'Pago en Efectivo'),
(60, '2025-11-17', 15.00, 'pago x dia senati', 'egreso', 39, 'OTROS', 'Pago en Efectivo'),
(61, '2025-11-18', 30.00, 'impresora', 'egreso', 42, 'OTROS', 'Pago en Efectivo'),
(62, '2025-11-18', 10.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Pago en Efectivo'),
(63, '2025-11-18', 10.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Yape'),
(64, '2025-11-18', 10.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Pago en Efectivo'),
(65, '2025-11-18', 50.00, 'adelanto', 'egreso', 33, 'ADELANTO', 'Pago en Efectivo'),
(66, '2025-11-24', 160.00, 'adelanto', 'egreso', 33, 'ADELANTO', 'Yape'),
(67, '2025-11-24', 400.00, 'adelanto', 'egreso', 32, 'ADELANTO', 'Yape');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(35) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Acceso'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas'),
(8, 'Backup'),
(9, 'Reportes'),
(10, 'Consulta Ventas por producto'),
(11, 'Cotización');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_documento` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `observaciones`) VALUES
(406, 'Cliente', 'FR SYSTEM S.A.C.', 'RUC', '20601579317', 'LIMA', '', '', '-'),
(408, 'Proveedor', 'DATACONT S.A.C', 'RUC', '20100131359', 'AV. REPUBLICA DE PANAMA NRO. 3517 INT. 9 URB. EL PALOMAR LIMA - LIMA -', '211-0909', 'ventas@datacont.com', ''),
(409, 'Proveedor', 'PROVEEDORES VARIOS', 'DNI', '0000', '000', '00', '', ''),
(410, 'Cliente', 'CLIENTES VARIOS', 'DNI', '0000', '000', '000', 'C@GMAIL.COM', '00'),
(411, 'Proveedor', 'SUPERTEC S.A.C.', 'RUC', '20434327611', 'AV. JOSE GALVEZ NRO. 1661 LIMA - LIMA - LINCE', '998149916', 'maribel@supertec.com.pe', ''),
(412, 'Cliente', 'OFIGROUP SOCIEDAD ANONIMA CERRADA', 'RUC', '20603547676', 'AV. DEL AIRE NRO. 901 URB. TUPAC AMARU LIMA LIMA SAN LUIS - SAN LUIS - LIMA - LIMA', '905 454 868', '', 'envio con motorizado in driver'),
(413, 'Cliente', 'ORGANIZACION CASTRO BONILLA S.R.L.', 'RUC', '20452288941', 'CAL. LAS CAMPANILLAS NRO. 122 INT. 101, URB. PARQUE DE MONTERRICO LIMA LIMA ATE - ATE - LIMA - LIMA', '984104837', '', 'shalom'),
(414, 'Cliente', 'GALLEGOS, CASABONNE, ARANGO, QUESADA, INGENIEROS CIVILES S.A.C. / G.C.A.Q. INGENIEROS CIVILES S.A.C.', 'RUC', '20106832111', 'AV. REPUBLICA DE COLOMBIA NRO. 671 INT. 801 LIMA LIMA SAN ISIDRO - SAN ISIDRO - LIMA - LIMA', '', '', '4407254'),
(415, 'Cliente', 'DIRECCION EJECUTIVA DE INVESTIGACION CRIMINAL Y APOYO A LA JUSTICIA PNP - DIREICAJ  PNP', 'RUC', '20556118079', 'AV. ESPAÑA NRO. 323 LIMA LIMA LIMA - LIMA - LIMA - LIMA', '09', '', 'edu'),
(416, 'Cliente', 'IMPRIMED S.R.L', 'RUC', '20517755037', 'CAL. ALFA MZA. G LOTE. 18 URB. TAURIJA LIMA LIMA LOS OLIVOS - LOS OLIVOS - LIMA - LIMA', '993 685 590', '', 'w'),
(417, 'Cliente', 'GRUPO JDK INNOVATEC S.A.C.', 'RUC', '20602817467', 'AV. BOLIVIA NRO. 180 INT. 105 SEMI SOTANO CERCADO DE LI LIMA LIMA LIMA - LIMA - LIMA - LIMA', '', '', 'hasta agotar'),
(418, 'Cliente', 'ALEX STEWART (INTERNATIONAL) DEL PERU S.R.L.', 'RUC', '20100355206', 'CAL. LOS NEGOCIOS NRO. 420A LIMA LIMA SURQUILLO - SURQUILLO - LIMA - LIMA', '', '', '01'),
(419, 'Cliente', 'MUNICIPALIDAD DE SAN BORJA', 'RUC', '20131373741', 'AV. JOAQUIN MADRID NRO. 200 LIMA LIMA SAN BORJA - SAN BORJA - LIMA - LIMA', '', '', '1'),
(420, 'Cliente', 'ELAMAR S.A.', 'DNI', '20606238224', 'CAL. LOS GIRASOLES MZA. O LOTE. 20 URB. SANTA MARIA DEL PINAR PIURA PIURA PIURA - PIURA - PIURA - PIURA', '', '', '963 937 661'),
(421, 'Cliente', 'AHUANLLA BAUTISTA ROCIO', 'DNI', '47175377', 'LIMA', '943734941', '', 'F 351'),
(422, 'Cliente', 'INSTITUCION EDUCATIVA MARIA AUXILIADORA', 'RUC', '20604809241', 'JR. RAZUHUILLCA NRO. 920 AYACUCHO HUANTA HUANTA - HUANTA - HUANTA - AYACUCHO', '', '', 'coleg'),
(423, 'Cliente', 'GOMEZ NIEVES JHONEY YENSON', 'DNI', '40972614', 'LIMA', '921 174 935', '', '921 174 935'),
(424, 'Cliente', 'PACHAS MENDOZA CARLOS JESUS', 'DNI', '46778297', 'chincha', '901702223', '', '01'),
(425, 'Cliente', 'MULTISERVICIOS DEL NORTE PERU S.A.C.', 'RUC', '20532064768', 'JR. LIMA MZA. S LOTE. 9 P.J. FLORIDA BAJA ANCASH SANTA CHIMBOTE - CHIMBOTE - SANTA - ANCASH', '', '', 'cabe'),
(426, 'Cliente', 'CARLOS ALFREDO NAVARRO CHICANA', 'DNI', '40096893', 'ariquipa', '', '', 'aq'),
(427, 'Cliente', 'EDUARDO MOISES RIVERA SANTIAGO', 'DNI', '10125105', 'Av guillermo dansey 390', '', '', 'washi'),
(428, 'Cliente', 'JULIO JAVIER PEZZIA MOSTACERO', 'DNI', '42587513', 'lima', '986734617', '', 'L5590'),
(429, 'Cliente', 'CERTIFICADORA VERITAS PERU S.A.C.', 'RUC', '20517125289', 'JR. CALIFORNIA NRO. 127 LIMA LIMA COMAS - COMAS', '', '', '-'),
(430, 'Cliente', 'VIDAL FIGUEROA SOTO', 'DNI', '09880404', 'LIMA', '931330998', '', 'T574'),
(431, 'Cliente', 'ELMER ROBERTO MISAICO ESPINOZA', 'DNI', '10040523', 'LIMA', '993701279', '', 'IMP'),
(432, 'Cliente', 'DIANA CAROLINA BRAVO NORIEGA', 'DNI', '74660162', 'LIMA', '949317957', '', 'RESET'),
(433, 'Cliente', 'marta wilson plaza', 'DNI', '955324130', '', '', '', '-'),
(434, 'Cliente', 'ALEX STEWART (INTERNATIONAL) DEL PERU S.R.L.', 'RUC', '20100355206', 'CAL.LOS NEGOCIOS NRO. 420A (420-B,422,ALT. CDRA 39 REP. DE PANAMA) LIM', '9', '', 'c'),
(435, 'Cliente', 'FRANKLIN MANUEL CAJUSOL SOLIS', 'DNI', '42574551', 'LIMA', '979402007', '', '-'),
(436, 'Cliente', 'JOSE MANUEL MILLA VIVIANO', 'DNI', '46385803', 'LIMA', '937532798', '', '-'),
(437, 'Cliente', 'LEDHY ZILA VELA VIDAL', 'DNI', '09611506', 'LIMA', '963746223', '', 'ct'),
(438, 'Cliente', 'ADELMO FERNANDEZ MEDINA', 'DNI', '09792140', 'LIMA', '918178612', '', 'LIMA'),
(439, 'Cliente', 'MARCO ANTONIO IBARRA GARCIA', 'DNI', '29517679', 'LIMa', '986653404', '', 'ser'),
(440, 'Cliente', 'ALBERT DANIEL GUARDIA HUAMAN', 'DNI', '40466965', 'lima', '9', '', 'caja'),
(441, 'Cliente', 'JHON NICOLAS PALACIOS ASENCIOS', 'DNI', '45648712', 'LIMa', '927614989', '', 'VRESET'),
(442, 'Cliente', 'EDUARDO CASTAÑEDA LAGOS', 'DNI', '45169272', '', '996537112', '', '-'),
(443, 'Cliente', 'lucio castañeda', 'DNI', '08399266', '', '933660740', '', '-'),
(444, 'Cliente', 'maribel wilson plaza', 'DNI', '989840876', '', '', '', '-'),
(445, 'Cliente', 'eric av. garcilazo', 'DNI', '942887534', '', '', '', '-'),
(446, 'Cliente', 'diana muñeca centro lima', 'DNI', '980646122', '', '', '', '-'),
(447, 'Cliente', 'CARLOS ALBERTO VILLARREAL SOTELO', 'DNI', '41272069', 'LIMA', '954862577', '', '-CAB'),
(448, 'Cliente', 'RUBEN DARIO ANGELINO ESPINOZA', 'DNI', '09923215', 'lima', '932390064', '', 'grasa'),
(449, 'Cliente', 'NORMA AMELIA CRESPO MANRIQUE', 'DNI', '03473495', 'lima', '971577089', '', '-t'),
(450, 'Cliente', 'GUSTAVO HUMBERTO OSORIO VIGURIA', 'DNI', '08830813', 'lima', '993544206', '', '-CJ'),
(451, 'Cliente', 'CENTRAL CARGO PERU S.A.C.', 'RUC', '20538091201', 'CAL. MONSEÑOR PEDRO VILLAR NRO. 127 URB. PANDO PRIMERA ETAPA LIMA LIMA SAN MIGUEL - SAN MIGUEL', '', '', '-'),
(452, 'Cliente', 'JIMMY JOHNNY ESPINOZA LAGOS', 'DNI', '45169270', 'AV. INCA GARCILAZO DE LA VEGA NRO. 1348 INT. 1B LIMA LIMA LIMA - LIMA', '', '', '-'),
(453, 'Cliente', 'CENTRAL CARGO PERU S.A.C.', 'RUC', '20538091201', 'CAL. MONSEÑOR PEDRO VILLAR NRO. 127 URB. PANDO PRIMERA ETAPA LIMA LIMA SAN MIGUEL - SAN MIGUEL', '', '', '-'),
(454, 'Cliente', 'JUAN RICARDO FARFAN NUÑEZ', 'DNI', '10718713', '', '', '', '-'),
(455, 'Cliente', 'RUBEN ERNESTO MAMANI MAMANI', 'DNI', '29431225', 'LIMA', '', '', '-'),
(456, 'Cliente', 'CLAUDIO LLAIQUI FLOREZ', 'DNI', '40363025', '', '984716248', '', '-'),
(457, 'Cliente', 'CALEB JESUS RAMIREZ SALCEDO', 'DNI', '40761350', '', '', '', '-'),
(458, 'Cliente', 'GERALD RONALD GARCIA VERASTEGUI', 'DNI', '20427225', '', '', '', '-'),
(459, 'Cliente', 'JOSAFAT JORAM VILLANUEVA PARIONA', 'DNI', '74268933', '', '', '', '-'),
(460, 'Cliente', 'GROUP SELECT ZL S.A.C.', 'RUC', '20612853461', 'AV. INCA GARCILAZO DE LA VEGA NRO. 1348 INT. 1B LIMA LIMA LIMA - LIMA', '', '', '-'),
(461, 'Cliente', 'INGPDRO E.I.R.L.', 'RUC', '20610564985', 'CAL. 3 MZA. K LOTE. 14 URB. LA POLVORA LIMA LIMA LA VICTORIA - LA VICTORIA', '', '', '-'),
(462, 'Cliente', 'PEDRO GERMAN ROJAS CONDORI', 'DNI', '40192175', '', '', '', '-'),
(463, 'Cliente', 'ANDRES FELIX LUIS IPARRAGUIRRE', 'DNI', '45622592', '', '912800940', '', '-'),
(464, 'Cliente', 'JHOMER SAUL BERAUN TIBURCIO', 'DNI', '45968388', '', '', '', '-'),
(465, 'Cliente', 'CONSULT ENGINEERING &amp; CONSTRUCCION  E.I.R.L.', 'RUC', '20601792215', 'OTR. CL PEDEMONTE Y TALAVERA N ICA PISCO PISCO - PISCO', '', '', '-'),
(466, 'Cliente', 'LUIS IVAN GOMEZ JIMENEZ', 'DNI', '40661004', '', '', '', '-'),
(467, 'Cliente', 'CESAR EDUARDO PEREZ VALLE', 'DNI', '45610973', '', '', '', '-'),
(468, 'Cliente', 'CESAR EDUARDO PEREZ VALLE', 'DNI', '45610973', '', '', '', '-'),
(469, 'Cliente', 'RICHAR BENJAMIN LOPEZ TAYPE', 'DNI', '41576870', '', '', '', '-'),
(470, 'Cliente', 'CARLOS ALBERTO VILLARREAL SOTELO', 'DNI', '41272069', '', '', '', '-'),
(471, 'Cliente', 'HUBERT PABLO DIAZ CUMPA', 'DNI', '16691677', '', '', '', '-'),
(472, 'Cliente', 'VIRGILIO GUTIERREZ LEON', 'DNI', '15422174', '', '', '', '-'),
(473, 'Cliente', 'REBECA FELIPE CASTELLANOS', 'DNI', '41269441', '', '', '', '-'),
(474, 'Cliente', 'REBECA FELIPE CASTELLANOS', 'DNI', '41269441', '', '', '', '-'),
(475, 'Cliente', 'JOSE DANIEL CESPEDES BRAVO', 'DNI', '09327986', '', '', '', '-'),
(476, 'Cliente', 'JOSE DANIEL CESPEDES BRAVO', 'DNI', '09327986', '', '997885278', '', '-'),
(477, 'Cliente', 'A&amp;M COMPUTER SOLUTIONS SAC', 'RUC', '20607222232', 'MZA. E LOTE. 8 URB. ELMER FAUCETT CALLAO CALLAO CALLAO - CALLAO', '994 018 729', '', '-'),
(478, 'Cliente', 'EMILIA CASAVERDE AYQUIPA', 'DNI', '08653536', '', '', '', '-'),
(479, 'Cliente', 'HERNAN GARCILAZO', 'DNI', '9928080110', '', '', '', '-'),
(480, 'Cliente', 'ROLY OSCAR MARTINEZ LUIS', 'DNI', '20602817476', '', '', '', '-'),
(481, 'Cliente', 'JENNY MARLIT QUIO BARTRA', 'DNI', '45169285', '', '', '', '-'),
(482, 'Cliente', 'FUNDACION HOGAR AZUL', 'RUC', '20610312960', '---- JOSE QUIÑONEZ NRO. 155 LIMA LIMA JESUS MARIA - JESUS MARIA', '', '', '-'),
(483, 'Cliente', 'ALBERTO ALINDOR VASQUEZ CERDAN', 'DNI', '08666370', '', '959405400', '', '-'),
(484, 'Cliente', 'JUAN ALBERTO FARFAN CORDOVA', 'DNI', '40082933', '', '988 959 771', '', '-'),
(485, 'Cliente', 'JOSE OSCAR PARIASCA LEON', 'DNI', '15626734', '', '', '', '-'),
(486, 'Cliente', 'JOSE OSCAR PARIASCA LEON', 'DNI', '15626734', '', '996633316', '', '-'),
(487, 'Cliente', 'ALCORI PERU S.A.C.', 'RUC', '20613248014', 'AV. VENEZUELA NRO. 704 INT. 312 URB. CHACRA COLORADA LIMA LIMA BREÑA - BREÑA', '+51 902 094 201', '', '-'),
(488, 'Cliente', 'GRUPO COLD INOX S.A.C.', 'RUC', '20610680845', 'AV. PARQUE INDUSTRIAL MZA. F1 LOTE. 10-D LIMA LIMA VILLA EL SALVADOR - VILLA EL SALVADOR', '+51 955 465 538', '', '-'),
(489, 'Cliente', 'KAREN VIVIANA PANDURO VASQUEZ', 'DNI', '41357576', '', '', '', '-'),
(490, 'Cliente', 'KAREN VIVIANA PANDURO VASQUEZ', 'DNI', '41357576', '', '982977622', '', '-'),
(491, 'Cliente', 'DARIANA ALLISON ESPINOZA MORALES', 'DNI', '76023393', '', '+51 946 631 204', '', '-'),
(492, 'Cliente', 'DAVID', 'DNI', '932990453', '', '', '', '-'),
(493, 'Cliente', 'JULIO GARCILAZO', 'DNI', '983524342', '', '', '', '-'),
(494, 'Cliente', 'IRINA COMPUPLAZA', 'DNI', '993976512', '', '', '', '-'),
(495, 'Cliente', 'MUÑECA CENTRO LIMA', 'DNI', '980646122', '', '', '', '-'),
(496, 'Cliente', 'CHAN CHAN AMARYL S.A.C.', 'RUC', '20601321816', 'LOTE. VD-6 SEC. 04 LA LIBERTAD VIRU VIRU - VIRU', '+51 902 881 708', '', '-'),
(497, 'Cliente', 'RONDON GUERRERO CLEYDER JOSUE', 'RUC', '15605940517', '', '910805693', '', '-'),
(498, 'Cliente', 'H &amp; E CONSTRUCTORA INMOBILIARIA S.A.C.', 'RUC', '20512577742', 'AV. GENERAL MIGUEL IGLESIAS NRO. 542 LIMA LIMA SAN JUAN DE MIRAFLORES - SAN JUAN DE MIRAFLORES', '981175111', '', '-'),
(499, 'Cliente', 'CORPORACION SIC S.A.C.', 'RUC', '20600862813', 'AV. JAVIER PRADO ESTE NRO. 6210 DPTO. 701 URB. LA RIVIERA DE MONTERRICO LIMA LIMA LA MOLINA - LA MOLINA', '', '', '-'),
(500, 'Cliente', 'JAVIER FRANCISCO MUÑOZ CCORAHUA', 'DNI', '44016942', '', '991831392', '', '-'),
(501, 'Cliente', 'YEYMI KARIM GUTARRA GOYTENDIA', 'DNI', '42375815', '', '952122122', '', '-'),
(502, 'Cliente', 'ATC MULTISERVICIOS SOCIEDAD ANONIMA CERRADA', 'RUC', '20512173901', 'CAL. FRANCISCO DE ZELA NRO. 1872 INT. 101B URB. RISSO LIMA LIMA LINCE - LINCE', '', '', '-'),
(503, 'Cliente', 'ANDRES LINDOR SALAZAR HOSPINAL', 'DNI', '72645381', '', '924578425', '', '-'),
(504, 'Cliente', 'AMADOR LIZONDE BARRIENTOS', 'DNI', '09005654', '', '', '', '-'),
(505, 'Cliente', 'AMADOR LIZONDE BARRIENTOS', 'DNI', '09005654', '', '', '', '-'),
(506, 'Cliente', 'JOHNNY ANIBAL CHUCHON MANRRIQUE', 'DNI', '08355477', '', '997238604', '', '-'),
(507, 'Cliente', 'eduardo guevara pje velarde', 'DNI', '991254111', '', '', '', '-'),
(508, 'Cliente', 'valid garcilazo', 'DNI', '926911824', '', '', '', '-'),
(509, 'Cliente', 'erick edwar av. garcilazo', 'DNI', '942887534', '', '', '', '-'),
(510, 'Cliente', 'gordito tktk  jorje', 'DNI', '978372349', '', '', '', '-'),
(511, 'Cliente', 'Laiva', 'DNI', '00000001', '', '', '', '-'),
(512, 'Cliente', 'JESUS PELAYO TAMARA CARRILLO', 'DNI', '40637770', '', '908840710', '', '-'),
(513, 'Cliente', 'PIO DAVID HERRERA CASTRO', 'DNI', '10700538', '', '', '', '-'),
(514, 'Cliente', 'ALEX STEWART (INTERNATIONAL) DEL PERU S.R.L.', 'RUC', '20100355206', 'CAL. LOS NEGOCIOS NRO. 420A LIMA LIMA SURQUILLO - SURQUILLO', '', '', '-'),
(515, 'Cliente', 'JOSE LUIS CUELLAR TANCHIVA', 'DNI', '40479052', '', '972 677 320', '', '-'),
(516, 'Cliente', 'ROCK ANDY HUAMANI NIETO', 'DNI', '09687784', '', '', '', '-'),
(517, 'Cliente', 'CONSORCIO CCECC PERÚ', 'RUC', '20605654046', 'AV. LAS CAMELIAS NRO. 280 URB. JARDIN LIMA LIMA SAN ISIDRO - SAN ISIDRO', '+51 957 184 787', '', '-'),
(518, 'Cliente', 'LAS VIÑAS EL PARAISO DE LAS FRUTAS S.A.C.', 'RUC', '20547567553', 'JR. CAMANA NRO. 371 LIMA LIMA LIMA - LIMA', '', '', '-'),
(519, 'Cliente', 'CONSTRUCTORA RFG S.A.C.', 'RUC', '20550363811', 'CAL. CARLOS GONZALES NRO. 275 INT. 101 URB. MARANGA ET. SIETE LIMA LIMA SAN MIGUEL - SAN MIGUEL', '', '', '-'),
(520, 'Cliente', 'EDUARD GARCIA FLORES', 'DNI', '03870566', '', '997713729 / 94984864', '', '-'),
(521, 'Cliente', 'EDWARD TIMOTY SULLCAHUAMAN MONZON', 'DNI', '70767532', '', '980799986', '', '-'),
(522, 'Cliente', 'CARLOS AGUSTO REBAZA CASTILLO', 'DNI', '44460471', 'LIMA', '996357018', '', '-'),
(523, 'Cliente', 'RONAL RAMIREZ MALUQUIS', 'DNI', '42409028', '', '', '', '-'),
(524, 'Cliente', 'SELENI ROXANA FUSTER MEJIA', 'DNI', '09786152', '', '919541546', '', '-'),
(525, 'Cliente', 'FUNDACION HOGAR AZUL', 'RUC', '20610312960', '---- JOSE QUIÑONEZ NRO. 155 LIMA LIMA JESUS MARIA - JESUS MARIA', '', '', '-'),
(526, 'Cliente', 'PRINTER SUMINISTROS DEL PERU S.A.C. - PRINSUPE S.A.C.', 'RUC', '20543499391', 'CAL. 4 MZA. R1 LOTE. 4 URB. LAS PRADERAS DE LURIN LIMA LIMA LURIN - LURIN', '', '', '-'),
(527, 'Cliente', 'ORLANDO ALFREDO AGUILAR VILCAPE', 'DNI', '40638737', '', '928766756', '', '-'),
(528, 'Cliente', 'ORLANDO ALFREDO AGUILAR VILCAPE', 'DNI', '40638737', '', '928766756', '', '-'),
(529, 'Cliente', 'TOYOHATSU S.A.', 'RUC', '20388234262', 'AV. REPUBLICA DE PANAMA NRO. 3837 URB. VILLA VICTORIA LIMA LIMA SURQUILLO - SURQUILLO', '', '', '-'),
(530, 'Cliente', 'TOYOHATSU S.A.', 'RUC', '20388234262', 'AV. REPUBLICA DE PANAMA NRO. 3837 URB. VILLA VICTORIA LIMA LIMA SURQUILLO - SURQUILLO', '', '', '-'),
(531, 'Cliente', 'OSCAR AARON TRONCOS RIVAS', 'DNI', '74641878', '', '945726605', '', '-'),
(532, 'Cliente', 'ALAMIRO ELOY LEON MORENO', 'DNI', '09599789', '', '961722297', '', '-'),
(533, 'Cliente', 'TITO JAVIER PAIRAZAMAN HONORIO', 'DNI', '44845760', '', '902228281', '', '-'),
(534, 'Cliente', 'JOSE ANTONIO NUÑEZ CCALLOCUNTO', 'DNI', '45496691', '', '950190652', '', '-'),
(535, 'Cliente', 'NILTON CESAR CABRERA CONTRERAS', 'DNI', '10112005', '', '943266895', '', '-'),
(536, 'Cliente', 'CESAR AUGUSTO GUTIERREZ RIVERO', 'DNI', '07426624', '', '', '', '-'),
(537, 'Cliente', 'JULIO ANGEL CALCINA DELGADO', 'DNI', '09493027', '', '992284814', '', '-'),
(538, 'Cliente', 'EDGAR WILLIAM GARCIA FIGUEROA', 'DNI', '08879042', '', '967005544', '', '-'),
(539, 'Cliente', 'ORTEGA BETETTA JORGE SEGUNDO', 'RUC', '15145260563', '', '941443048', '', '-'),
(540, 'Cliente', 'PABLO MANDARACHI CAMARENA', 'DNI', '40212035', '', '988209290', '', '-'),
(541, 'Cliente', 'JOSE LUIS ALMEYDA MAGALLANES', 'DNI', '07496773', '', '946131275', '', '-'),
(542, 'Cliente', 'MILAGROS MERCEDES FIERRO ROJAS', 'DNI', '44290201', '', '987355660', '', '-'),
(543, 'Cliente', 'LUIS ALBERTO QUISPE TODELANO', 'DNI', '46788608', '', '910607004', '', '-'),
(544, 'Cliente', 'CONSTRUCTORES &amp; SERVICIOS GENERALES VARA S.A.C.', 'RUC', '20534655101', 'JR. BOLIVAR NRO. 223 AYACUCHO LUCANAS PUQUIO - PUQUIO', '', '', '-'),
(545, 'Cliente', 'CONSTRUCTORES &amp; SERVICIOS GENERALES VARA S.A.C.', 'RUC', '20534655101', 'JR. BOLIVAR NRO. 223 AYACUCHO LUCANAS PUQUIO - PUQUIO', '', '', '-'),
(546, 'Cliente', 'EDWARD MARCEL YLLESCAS SIANCAS', 'DNI', '07617761', '', '993432513', '', '-'),
(547, 'Cliente', 'CONSTRUCTORES &amp; SERVICIOS GENERALES VARA S.A.C.', 'RUC', '20534655101', 'JR. BOLIVAR NRO. 223 AYACUCHO LUCANAS PUQUIO - PUQUIO', '', '', '-'),
(548, 'Cliente', 'EDUARDO CASTAÑEDA LAGOS', 'DNI', '45169272', '', '', '', '-'),
(549, 'Cliente', 'GUIDO JHASMANI QUISPE GONZALES', 'DNI', '41677131', '', '', '', '-'),
(550, 'Cliente', 'SIXTO HUGO CELESTINO ALZAMORA', 'DNI', '15965191', '', '992 123 477', '', '-'),
(551, 'Cliente', 'MARIO JOSE MAMANI TICONA', 'DNI', '42240224', '', '930989981', '', '-'),
(552, 'Cliente', 'FRANCISCO MARCOS SILVA RENDON', 'DNI', '28848502', '', '9993951039', '', '-'),
(553, 'Cliente', 'VICTOR HUGO MAS CAMUS', 'DNI', '08674653', '', '993030709', '', '-'),
(554, 'Cliente', 'ALEX STEWART (INTERNATIONAL) DEL PERU S.R.L.', 'RUC', '20100355206', 'CAL. LOS NEGOCIOS NRO. 420A LIMA LIMA SURQUILLO - SURQUILLO', '', '', '-'),
(555, 'Cliente', 'JOSE HANCCO MELCHOR', 'DNI', '48160645', '', '947891021', '', '-'),
(556, 'Cliente', 'JEAN NORIEGA', 'DNI', '003476044', '', '932450395', '', '-'),
(557, 'Cliente', 'COMPUMECH PERU SOCIEDAD ANONIMA CERRADA - COMPUMECH PERU S.A.C.', 'RUC', '20603003609', 'AV. MICAELA BASTIDAS NRO. 507A CUSCO CUSCO WANCHAQ - WANCHAQ', '+51 972 211 678', '', '-'),
(558, 'Cliente', 'COMPUMECH PERU SOCIEDAD ANONIMA CERRADA - COMPUMECH PERU S.A.C.', 'RUC', '20603003609', 'AV. MICAELA BASTIDAS NRO. 507A CUSCO CUSCO WANCHAQ - WANCHAQ', '+51 972 211 678', '', '-'),
(559, 'Cliente', 'COMPUMECH PERU SOCIEDAD ANONIMA CERRADA - COMPUMECH PERU S.A.C.', 'RUC', '20603003609', 'AV. MICAELA BASTIDAS NRO. 507A CUSCO CUSCO WANCHAQ - WANCHAQ', '', '', '-'),
(560, 'Cliente', 'ROBERTO SERRANO', 'DNI', '003866544', '', '923520218', '', '-'),
(561, 'Cliente', 'PERUVIAN PARK S.A.', 'RUC', '20613075853', 'AV. LORENZO DE ENCALADA NRO. 123 URB. EL MANZANO LIMA LIMA RIMAC - RIMAC', '930 458 598', '', '-'),
(562, 'Cliente', 'CARINA SARAI PALACIOS MORE', 'DNI', '44534536', '', '987797128', '', '-'),
(563, 'Cliente', 'ANA MARIA RUEDA GUERRERO', 'DNI', '15840657', '', '963779348', '', '-'),
(564, 'Cliente', 'NELCY AYDDE CARRERO SILVA', 'DNI', '40675907', '', '957831515', '', '-'),
(565, 'Cliente', 'NELCY AYDDE CARRERO SILVA', 'DNI', '40675907', '', '957831515', '', '-'),
(566, 'Cliente', 'JEFA ALEXANDER', 'DNI', '123455678', '', '', '', '-'),
(567, 'Cliente', 'BERTA CYBER', 'DNI', '12345678', '', '', '', '-'),
(568, 'Cliente', 'KOKY GARCILAZO', 'DNI', '12345678', '', '', '', '-'),
(569, 'Cliente', 'junior cyberplaza', 'DNI', '12345678', '', '', '', '-'),
(570, 'Cliente', 'BTRAVO CYBERPLZA', 'DNI', '123456788', '', '', '', '-'),
(571, 'Cliente', 'BRAVO CYBERPLZA', 'DNI', '123456788', '', '', '', '-'),
(572, 'Cliente', 'gordito blancon wenny phoo', 'DNI', '123456987', '', '', '', '-'),
(573, 'Cliente', 'paloma garcilazo', 'DNI', '123456987', '', '', '', '-'),
(574, 'Cliente', 'sr pina', 'DNI', '1236554789', '', '', '', '-'),
(575, 'Cliente', 'rosmery compuplaza', 'DNI', '789456123', '', '', '', '-'),
(576, 'Cliente', 'FELIX FORTUNATO EVANGELISTA VELASQUEZ', 'DNI', '15746224', '', '9', '', '-'),
(577, 'Cliente', 'JOSE BELEM TORRES LOZANO', 'DNI', '07655996', '', '', '', '-'),
(578, 'Cliente', 'PEDRO MARTIN MUÑANTE VELASQUEZ', 'DNI', '10046443', '', '913761360', '', '-'),
(579, 'Cliente', 'CRISTIAN ENRIQUE VELEZ DE VILLA LEON', 'DNI', '40188086', '', '914598548', '', '-'),
(580, 'Cliente', 'CRISTIAN ENRIQUE VELEZ DE VILLA LEON', 'DNI', '40188086', '', '914598548', '', '-'),
(581, 'Cliente', 'CARPICENTRO S.A.C.', 'RUC', '20337362151', 'AV. GERARDO UNGER NRO. 3209 Z.I. URB PANAM NORTE LIMA LIMA INDEPENDENCIA - INDEPENDENCIA', '', '', '-'),
(582, 'Cliente', 'JUDITH MONICA RIVAS BERMUDEZ', 'DNI', '42544206', '', '980233715', '', '-'),
(583, 'Cliente', 'EDWIN VEGA ICHANG', 'DNI', '19868630', '', '948565600', '', '-'),
(584, 'Cliente', 'RICARDO ENRIQUE LAZARO ESPINOZA', 'DNI', '48098582', '', '976156772', '', '-'),
(585, 'Cliente', 'SOLUCIONES 1A1 SOCIEDAD ANONIMA CERRADA', 'RUC', '20512999221', 'JR. FRANCISCO DE ZELA NRO. 1872 INT. 201 LIMA LIMA LINCE - LINCE', '', '', '-'),
(586, 'Cliente', 'SOLUCIONES 1A1 SOCIEDAD ANONIMA CERRADA', 'RUC', '20512999221', 'JR. FRANCISCO DE ZELA NRO. 1872 INT. 201 LIMA LIMA LINCE - LINCE', '', '', '-'),
(587, 'Cliente', 'ELIHU MILLA DE LEON LOPEZ', 'DNI', '10788395', '', '', '', '-'),
(588, 'Cliente', 'SHAGY', 'DNI', '32145678', '', '', '', '-'),
(589, 'Cliente', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'RUC', '20172356720', 'CAR. CENTRAL KM. 1.21 HUANUCO LEONCIO PRADO RUPA-RUPA - RUPA-RUPA', '965 436 454', '', '-'),
(590, 'Cliente', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'RUC', '20172356720', 'CAR. CENTRAL KM. 1.21 HUANUCO LEONCIO PRADO RUPA-RUPA - RUPA-RUPA', '965 436 454', '', '-'),
(591, 'Cliente', 'JOSE LUIS RAMIREZ ARAGON', 'DNI', '10133210', '', '996707857', '', '-'),
(592, 'Cliente', 'RAUL ALEX PONCE HUAMANI', 'DNI', '10055658', '', '998365851', '', '-'),
(593, 'Cliente', 'JUNTOS INVERTIMOS E.I.R.L.', 'RUC', '20613453840', 'MZA. D LOTE. 13 ASC. VICTOR CHAVEZ CASTILLO AREQUIPA AREQUIPA SOCABAYA - SOCABAYA', '', '', '-'),
(594, 'Cliente', 'ASESORES Y CONSULTORES MINEROS S.A. - ACOMISA', 'RUC', '20154682385', 'CAL. JORGE MUELLE NRO. 169 DPTO. 1PIS C.H. TORRES DE LIMATAMBO LIMA LIMA SAN BORJA - SAN BORJA', '', '', '-'),
(595, 'Cliente', 'ESPOSA JUNIOR', 'DNI', '1234565663', '', '', '', '-'),
(596, 'Cliente', 'PINKY CENTRO LIMA', 'DNI', '57865856868', '', '', '', '-'),
(597, 'Cliente', 'ROSA COMPUPLAZA', 'DNI', '35535365353', '', '', '', '-'),
(598, 'Cliente', 'JBM', 'DNI', '546766970', '', '', '', '-'),
(599, 'Cliente', 'MARIO VELARDE', 'DNI', '45564564576', '', '', '', '-'),
(600, 'Cliente', 'MARIO VELARDE', 'DNI', '45564564576', '', '', '', '-'),
(601, 'Cliente', 'SR GONZALO MAXI PLAZA', 'DNI', '3454646545', '', '', '', '-'),
(602, 'Cliente', 'JUNIOR ESPOSA CYBER', 'DNI', '34545645645', '', '', '', '-'),
(603, 'Cliente', 'YORJAN ESPOSA', 'DNI', '34545645644', '', '', '', '-'),
(604, 'Cliente', 'JAVIER MORENO COMPUPLAZA', 'DNI', '345365575', '', '', '', '-'),
(605, 'Cliente', 'JULIO GARCILAZO', 'DNI', '75986798536', '', '', '', '-'),
(606, 'Cliente', 'GALLEGOS, CASABONNE, ARANGO, QUESADA, INGENIEROS CIVILES S.A.C. / G.C.A.Q. INGENIEROS CIVILES S.A.C.', 'RUC', '20106832111', 'AV. REPUBLICA DE COLOMBIA NRO. 671 INT. 801 LIMA LIMA SAN ISIDRO - SAN ISIDRO', '', '', '-'),
(607, 'Cliente', 'sr mauro', 'DNI', '7657658965', '', '', '', '-'),
(608, 'Cliente', 'rusbel casona', 'DNI', '356357575', '', '', '', '-'),
(609, 'Cliente', 'arturo centrolima', 'DNI', '56748877598', '', '', '', '-'),
(610, 'Cliente', 'tio pelusa', 'DNI', '3564567457', '', '', '', '-'),
(611, 'Cliente', 'karol wilson plaza', 'DNI', '87658748654', '', '', '', '-'),
(612, 'Cliente', 'karol wilson plaza', 'DNI', '87658748654', '', '', '', '-'),
(613, 'Cliente', 'evaldo', 'DNI', '764589768', '', '', '', '-'),
(614, 'Cliente', 'juan de la cruz', 'DNI', '54356875785', '', '', '', '-'),
(615, 'Cliente', 'KEVIN JUNIOR PAREJA PALOMINO', 'DNI', '75323465', '', '968051630', '', '-'),
(616, 'Cliente', 'karla perricholy', 'DNI', '234565567', '', '', '', '-'),
(617, 'Cliente', 'chino tristan', 'DNI', '53674676784', '', '', '', '-'),
(618, 'Cliente', 'elias plazatec', 'DNI', '67658579698', '', '', '', '-'),
(619, 'Cliente', 'guido cuzco', 'DNI', '45645766587', '', '', '', '-'),
(620, 'Cliente', 'chiky centro lima', 'DNI', '56456564564', '', '', '', '-'),
(621, 'Cliente', 'socio ernesto', 'DNI', '84693456434', '', '', '', '-'),
(622, 'Cliente', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'RUC', '20172356720', 'CAR. CENTRAL KM. 1.21 HUANUCO LEONCIO PRADO RUPA-RUPA - RUPA-RUPA', '965 436 454', '', '-'),
(623, 'Cliente', 'JONATHAN MARTIN SIGUEÑAS CACEDA', 'DNI', '46001770', '', '992774359', '', '-'),
(624, 'Cliente', 'I.S.T. REPUBLICA FEDERAL DE ALEMANIA', 'RUC', '20174486841', 'AV. ELVIRA GARCIA Y GARC NRO. 755 URB. LOS PARQUES LAMBAYEQUE CHICLAYO CHICLAYO - CHICLAYO', '', '', '-'),
(625, 'Cliente', 'ROSSY MARIA ARANZAMENDI HUAMANZANA', 'DNI', '25732734', '', '3834182', '', '-'),
(626, 'Cliente', 'ELMER VILLAZANA ESTEBAN', 'DNI', '43715658', '', '', '', '-'),
(627, 'Cliente', 'CONSORCIO CCECC PERÚ', 'RUC', '20605654046', 'AV. LAS CAMELIAS NRO. 280 URB. JARDIN LIMA LIMA SAN ISIDRO - SAN ISIDRO', '935 842 459', '', '-'),
(628, 'Cliente', 'CRISTHIAN ALONSO OLVEA YUCRA', 'DNI', '70884597', '', '950036271', '', '-'),
(629, 'Cliente', 'CRISTHIAN ALONSO OLVEA YUCRA', 'DNI', '70884597', '', '950036271', '', '-'),
(630, 'Cliente', 'JIMMY LOAYZA SERRANO', 'DNI', '43736054', '', '920775900', '', '-'),
(631, 'Cliente', 'JOSVE CAMILO LUJAN URRUTIA', 'DNI', '70857673', '', '983 019 251', '', '-'),
(632, 'Cliente', 'YONATAN YOVER MUÑOZ YUCRA', 'DNI', '61719842', 'Ayacucho - huamanga -Ayacucho', '931130725', '', '-'),
(633, 'Cliente', 'JOSVE CAMILO LUJAN URRUTIA', 'DNI', '70857673', 'Pauza - chavin express', '983 019 251', '', '-'),
(634, 'Cliente', 'GLORIA ISABEL CUBAS BOLEJE DE BENITES', 'DNI', '10394162', '', '', '', '-'),
(635, 'Cliente', 'ZULEMA SUSAN LINARES CRISPIN', 'DNI', '46897502', '', '', '', '-'),
(636, 'Cliente', 'ZULEMA SUSAN LINARES CRISPIN', 'DNI', '46897502', '', '91243406', '', '-'),
(637, 'Cliente', 'NEMESIO JAVIER GUARDAMINO MOSQUERA', 'DNI', '15750472', '', '91243406', '', '-'),
(638, 'Cliente', 'CASTILLO ACHULLA FLORENTINO', 'DNI', '10071893982', '', '936485750', '', '-'),
(639, 'Cliente', 'JEFFERSON ROSSELL JONAS ROJAS ALDAVA', 'DNI', '43907811', '', '', '', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_article`
--

CREATE TABLE `type_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `type_article`
--

INSERT INTO `type_article` (`id`, `name`) VALUES
(1, 'Producto'),
(2, 'Servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadmedida`
--

CREATE TABLE `unidadmedida` (
  `id` int(11) NOT NULL,
  `indice` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `valor` varchar(150) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'unidadmedida',
  `condicion` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidadmedida`
--

INSERT INTO `unidadmedida` (`id`, `indice`, `valor`, `condicion`) VALUES
(1, 'UNID', 'unidadmedida', 0),
(2, 'UNID', 'unidadmedida', 0),
(3, 'UNID', 'unidadmedida', 1),
(4, 'UNID', 'unidadmedida', 0),
(5, 'UNID', 'unidadmedida', 0),
(6, 'UNID', 'unidadmedida', 0),
(7, 'UNID', 'unidadmedida', 0),
(8, 'UNID', 'unidadmedida', 0),
(9, 'UNID', 'unidadmedida', 0),
(10, 'UNID', 'unidadmedida', 0),
(13, 'UNID', 'unidadmedida', 0),
(11, 'UNID', 'unidadmedida', 0),
(12, 'UNID', 'unidadmedida', 0),
(14, 'UNID', 'unidadmedida', 0),
(15, 'UNID', 'unidadmedida', 0),
(16, 'UNID', 'unidadmedida', 0),
(17, 'CIENTO', 'unidadmedida', 1),
(18, 'DOC', 'unidadmedida', 1),
(19, 'MILLAR', 'unidadmedida', 1),
(20, 'PAR', 'unidadmedida', 1),
(21, 'MTS', 'unidadmedida', 1),
(22, 'X50 PCS', 'unidadmedida', 1),
(23, 'X25 PCS', 'unidadmedida', 1),
(24, 'X10 PCS', 'unidadmedida', 1),
(25, 'X20 PCS', 'unidadmedida', 1),
(26, 'X30 PCS', 'unidadmedida', 1),
(27, 'COMBO', 'unidadmedida', 1),
(28, 'X6 PCS', 'unidadmedida', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `num_documento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(55) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cargo` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `login` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(55) COLLATE utf8_spanish_ci NOT NULL,
  `condicion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(14, 'EDUARDO CASTAÑEDA', 'DNI', '43520957', 'AV LOS NENUFARES 981', '967779769', 'aldosantiniss@gmail.com', 'GERENTE', 'EDUARDO', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1732472187.jpg', 1),
(15, 'AMY LIVIAPOMA', 'DNI', '74910799', 'AV LOS NENUFARES 995', '946073619', '', 'VENTAS', 'AMY', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', 0),
(16, 'SUSAN', 'DNI', '48127291', '', '981116573', 'andreasantinisa@gmail.com', 'ADMINISTRADOR', 'GISSELLE', 'b8519969f184edfe7dba233fc008569eff3444f16aa11b6b784ba25f1df48aac', '', 1),
(19, 'Zulema Susan linares C', 'DNI', '46897502', 'Jirón Chota 1337, Lima, Perú 1337', '938280351', 'susanli1322@gmail.com', 'subgerente', 'ZULEMA', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', 1),
(20, 'Juan Perez', 'DNI', '456789121', 'LIMA', '456789121', 'empleado@gmail.com', 'EMPLEADO', 'EMPLEADO', '8a4b8cbd97f44b362656c75b8a7d096f4cc994ded356064e035e4ff90d7da7c9', '', 0),
(21, 'EMPLEADO 2', 'DNI', '74125895', 'LIMA', '74125895', 'empleado2@gmail.com', 'EMPLEADO', 'EMPLEADO2', '74b44a13973785599041724476fc9ca197f482cfec45357863d7405574ca1530', '', 0),
(23, 'RODRIGO DIAZ', 'DNI', '85214758', 'LIMA', '85214758', 'empleado3@gmail.com', 'EMPLEADO', 'RODRIGO', 'c0e2fb41adc0b19b03117142a863746747a0f4c99793aeee76ad75b937aacc9d', '1761409811.png', 0),
(30, 'EMPLEADO3', 'DNI', '24514574', 'LIMA', '', '', 'EMPLEADO', 'EMPLEADO3', 'bb07b04e3622f80df8ca822cc02f55ebaae71bed8abf8ca4bfd425a0a3fcd5cd', '', 0),
(31, 'CESAR CASTAÑEDA', 'DNI', '98765432', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'CESAR', '6d8c89ef3e43b23d272136bc13e3f8dbc54e08e51c328057ab0651bd7507113b', '', 0),
(32, 'ABEL', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'ABEL', '8b30fcda0e1c94c19f21eb08d6a346ba8ebadd5c6a807ebf59c24b734827e93c', '', 1),
(33, 'ANDREW', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'ANDREW', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(34, 'ENZO', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'ENZO', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(35, 'LEO', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'LEO', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(36, 'JUAN CARLOS', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'JUAN CARLOS', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(37, 'PEDRITO', 'DNI', '9876', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'PEDRITO', 'b495947c8596fc18713c5f670b4b615e0d49d7b5d78600023f7de0e17f4414e0', '', 1),
(38, 'JHON', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'JHON', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(39, 'ALAN', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'ALAN', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(40, 'KEVIN', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'KEVIN', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(41, 'ISAC', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'ISAC', 'dbff5341acad5e2a58db4efd5e72e2d9a0a843a28e02b1183c68162d0a3a3de6', '', 1),
(42, 'OTROS', 'DNI', '85214758', 'Av. Bolivia 180 Int. 105 semi-Sótano', '996537112', 'jdkinnovatec@outlook.com', 'EMPLEADO', 'OTROS', 'b495947c8596fc18713c5f670b4b615e0d49d7b5d78600023f7de0e17f4414e0', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(107, 15, 1),
(108, 15, 2),
(109, 15, 3),
(110, 15, 4),
(111, 15, 5),
(112, 15, 6),
(113, 15, 7),
(114, 15, 8),
(115, 15, 9),
(116, 15, 10),
(117, 15, 11),
(118, 16, 1),
(119, 16, 2),
(120, 16, 3),
(121, 16, 4),
(122, 16, 5),
(123, 16, 6),
(124, 16, 7),
(125, 16, 8),
(126, 16, 9),
(127, 16, 10),
(128, 16, 11),
(140, 18, 1),
(141, 18, 2),
(142, 18, 3),
(143, 18, 4),
(144, 18, 5),
(145, 18, 6),
(146, 18, 7),
(147, 18, 8),
(148, 18, 9),
(149, 18, 10),
(150, 18, 11),
(162, 17, 1),
(163, 17, 2),
(164, 17, 3),
(165, 17, 4),
(166, 17, 5),
(167, 17, 6),
(168, 17, 7),
(169, 17, 8),
(170, 17, 9),
(171, 17, 10),
(172, 17, 11),
(186, 0, 1),
(187, 21, 1),
(188, 20, 1),
(190, 0, 1),
(191, 0, 1),
(192, 0, 1),
(193, 0, 1),
(194, 0, 1),
(195, 23, 1),
(196, 0, 1),
(197, 30, 1),
(198, 31, 1),
(200, 33, 1),
(201, 34, 1),
(202, 35, 1),
(203, 36, 1),
(205, 38, 1),
(206, 37, 1),
(207, 39, 1),
(208, 40, 1),
(209, 41, 1),
(211, 42, 1),
(226, 19, 1),
(227, 19, 2),
(228, 19, 3),
(229, 19, 4),
(230, 19, 5),
(231, 19, 6),
(232, 19, 7),
(233, 19, 8),
(234, 19, 9),
(235, 19, 10),
(236, 19, 11),
(238, 32, 1),
(240, 14, 1),
(241, 14, 2),
(242, 14, 3),
(243, 14, 4),
(244, 14, 5),
(245, 14, 6),
(246, 14, 7),
(247, 14, 8),
(248, 14, 9),
(249, 14, 10),
(250, 14, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores`
--

CREATE TABLE `valores` (
  `idvalores` bigint(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `valor` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `orden` varchar(25) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `valores`
--

INSERT INTO `valores` (`idvalores`, `nombre`, `valor`, `orden`) VALUES
(1, 'Contacto', 'TYPE_USER', '1'),
(2, 'Vendedor', 'TYPE_USER', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `serie_comprobante` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `num_comprobante` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `igv` decimal(11,2) NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `estado` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `tipomoneda` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `idvendedor` int(11) NOT NULL,
  `forma_pago` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `monto_pagado` decimal(11,2) DEFAULT NULL,
  `saldo_pendiente` decimal(11,2) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `subtotal`, `igv`, `total_venta`, `estado`, `tipomoneda`, `idvendedor`, `forma_pago`, `monto_pagado`, `saldo_pendiente`, `fecha_vencimiento`) VALUES
(1, 410, 14, 'Boleta', '1', '0001', '2025-06-14 00:00:00', 0.00, 497.46, 89.54, 587.00, 'Aceptado', '', 3, 'contado', 0.00, 587.00, '0000-00-00'),
(2, 410, 14, 'Boleta', '1', '0001', '2025-06-14 00:00:00', 0.00, 497.46, 89.54, 587.00, 'Aceptado', '', 3, 'credito', 100.00, 487.00, '2025-06-21'),
(3, 421, 14, 'Boleta', '1', '0008', '2025-06-26 00:00:00', 0.00, 466.10, 83.90, 550.00, 'Aceptado', '', 4, 'contado', 0.00, 550.00, '0000-00-00'),
(4, 410, 14, 'Boleta', '1', '123', '2025-06-28 00:00:00', 0.00, 0.00, 0.00, 0.00, 'Aceptado', '', 3, 'contado', 0.00, 0.00, '0000-00-00'),
(5, 410, 14, 'Boleta', '1', '323', '2025-06-28 00:00:00', 0.00, 0.00, 0.00, 0.00, 'Aceptado', '', 3, 'credito', 20.00, -20.00, '0000-00-00'),
(6, 410, 14, 'Boleta', '1', '00010', '2025-06-28 00:00:00', 0.00, 143.22, 25.78, 169.00, 'Aceptado', '', 3, 'credito', 100.00, 69.00, '2025-06-30'),
(7, 424, 19, 'Boleta', '1', '00011', '2025-07-15 00:00:00', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 4, 'contado', 0.00, 250.00, '0000-00-00'),
(8, 426, 19, 'Boleta', '1', '00013', '2025-07-24 00:00:00', 0.00, 275.42, 49.58, 325.00, 'Aceptado', '', 4, 'contado', 0.00, 325.00, '0000-00-00'),
(9, 420, 19, 'Boleta', '1', '01', '2025-07-25 00:00:00', 0.00, 0.00, 0.00, 0.00, 'Aceptado', '', 4, 'contado', 0.00, 0.00, '0000-00-00'),
(11, 410, 19, 'Boleta', '1', '00014', '2025-07-25 00:00:00', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 10, 'contado', 0.00, 60.00, '0000-00-00'),
(12, 427, 19, 'Boleta', '1', '00015', '2025-07-26 00:00:00', 0.00, 30.51, 5.49, 36.00, 'Aceptado', '', 10, 'contado', 0.00, 36.00, '0000-00-00'),
(13, 428, 19, 'Boleta', '1', '00016', '2025-07-26 00:00:00', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 10, 'contado', 0.00, 60.00, '0000-00-00'),
(14, 410, 14, 'Boleta', '1', '1234', '2025-07-27 19:06:49', 0.00, 380.51, 68.49, 449.00, 'Aceptado', '', 3, 'contado', 0.00, 449.00, '0000-00-00'),
(15, 429, 14, 'Boleta', '1', '4566', '2025-07-28 19:58:11', 0.00, 278.81, 50.19, 329.00, 'Aceptado', '', 3, 'credito', 29.00, 300.00, '2025-08-04'),
(16, 410, 19, 'Boleta', '1', '14', '2025-07-30 11:10:22', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 3, 'contado', 0.00, 60.00, '0000-00-00'),
(17, 410, 19, 'Boleta', '1', '15', '2025-07-30 11:16:12', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'contado', 0.00, 100.00, '0000-00-00'),
(18, 430, 19, 'Boleta', '1', '17', '2025-07-30 12:08:29', 0.00, 89.83, 16.17, 106.00, 'Aceptado', '', 10, 'contado', 0.00, 106.00, '0000-00-00'),
(34, 432, 19, 'Boleta', '1', '17', '2025-07-30 17:35:10', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 10, 'contado', 0.00, 150.00, '0000-00-00'),
(35, 430, 19, 'Boleta', '1', '18', '2025-07-30 17:39:05', 0.00, 1694.92, 305.08, 2000.00, 'Aceptado', '', 10, 'contado', 0.00, 2000.00, '0000-00-00'),
(37, 410, 14, 'Boleta', '1', '0036', '2025-07-31 09:14:03', 0.00, 550.85, 99.15, 650.00, 'Aceptado', '', 3, 'contado', 0.00, 650.00, '0000-00-00'),
(39, 410, 14, 'Boleta', '1', '0038', '2025-07-31 09:17:24', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'contado', 0.00, 150.00, '0000-00-00'),
(40, 433, 14, 'Boleta', '1', '0040', '2025-07-31 09:20:30', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '0000-00-00'),
(41, 410, 14, 'Boleta', '1', '0041', '2025-07-31 09:27:52', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 3, 'contado', 0.00, 120.00, '0000-00-00'),
(42, 435, 19, 'Boleta', '1', '0042', '2025-08-01 15:21:13', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 10, 'contado', 0.00, 250.00, '0000-00-00'),
(44, 438, 19, 'Boleta', '1', '0043', '2025-08-02 15:41:54', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 10, 'contado', 0.00, 110.00, '0000-00-00'),
(45, 439, 19, 'Boleta', '1', '0045', '2025-08-02 19:30:04', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 10, 'contado', 0.00, 250.00, '0000-00-00'),
(46, 440, 19, 'Boleta', '1', '0046', '2025-08-02 19:35:50', 0.00, 58.47, 10.53, 69.00, 'Aceptado', '', 10, 'contado', 0.00, 69.00, '0000-00-00'),
(47, 441, 19, 'Boleta', '1', '0047', '2025-08-04 11:55:08', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 10, 'contado', 0.00, 140.00, '0000-00-00'),
(48, 410, 14, 'Boleta', '1', '0048', '2025-08-06 07:05:35', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(50, 410, 14, 'Boleta', '1', '0049', '2025-08-06 07:09:36', 0.00, 237.29, 42.71, 280.00, 'Aceptado', '', 3, 'contado', 0.00, 280.00, '0000-00-00'),
(51, 410, 14, 'Boleta', '1', '0051', '2025-08-06 07:12:12', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'contado', 0.00, 50.00, '0000-00-00'),
(52, 442, 14, 'Boleta', '1', '0052', '2025-08-06 07:17:17', 0.00, 194.92, 35.08, 230.00, 'Aceptado', '', 3, 'contado', 0.00, 230.00, '0000-00-00'),
(53, 433, 14, 'Boleta', '1', '0053', '2025-08-06 07:35:18', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'credito', 0.00, 300.00, '0000-00-00'),
(54, 444, 14, 'Boleta', '1', '0054', '2025-08-06 07:39:08', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'credito', 0.00, 15.00, '0000-00-00'),
(55, 445, 14, 'Boleta', '1', '0055', '2025-08-06 07:49:52', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '2025-08-07'),
(56, 446, 14, 'Boleta', '1', '0056', '2025-08-06 07:58:03', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'contado', 0.00, 100.00, '0000-00-00'),
(57, 410, 14, 'Boleta', '1', '0057', '2025-08-06 08:09:02', 0.00, 847.46, 152.54, 1000.00, 'Aceptado', '', 3, 'contado', 0.00, 1000.00, '0000-00-00'),
(58, 410, 14, 'Boleta', '1', '0058', '2025-08-06 09:21:46', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(59, 447, 19, 'Boleta', '1', '0059', '2025-08-06 15:32:46', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 10, 'contado', 0.00, 80.00, '0000-00-00'),
(60, 448, 19, 'Boleta', '1', '0060', '2025-08-07 10:58:19', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(61, 449, 19, 'Boleta', '1', '0061', '2025-08-12 13:04:35', 0.00, 88.98, 16.02, 105.00, 'Aceptado', '', 10, 'contado', 0.00, 105.00, '0000-00-00'),
(62, 450, 19, 'Boleta', '1', '0062', '2025-08-12 15:53:57', 0.00, 55.08, 9.92, 65.00, 'Aceptado', '', 10, 'contado', 0.00, 65.00, '0000-00-00'),
(63, 410, 14, 'Boleta', '1', '0063', '2025-08-13 20:27:34', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(64, 433, 14, 'Boleta', '1', '0064', '2025-08-13 20:32:01', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'credito', 50.00, 50.00, '2025-08-15'),
(65, 433, 14, 'Boleta', '1', '0065', '2025-08-13 20:33:23', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 50.00, 150.00, '2025-08-15'),
(66, 433, 14, 'Boleta', '1', '0066', '2025-08-13 20:35:31', 0.00, 1353.39, 243.61, 1597.00, 'Aceptado', '', 3, 'credito', 200.00, 1397.00, '0000-00-00'),
(67, 433, 14, 'Boleta', '1', '0067', '2025-08-13 20:39:15', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '0000-00-00'),
(69, 410, 14, 'Boleta', '1', '0068', '2025-08-13 21:10:06', 0.00, 423.73, 76.27, 500.00, 'Aceptado', '', 3, 'contado', 0.00, 500.00, '0000-00-00'),
(70, 454, 19, 'Boleta', '1', '0070', '2025-08-14 16:07:18', 0.00, 76.27, 13.73, 90.00, 'Aceptado', '', 10, 'contado', 0.00, 90.00, '0000-00-00'),
(71, 410, 14, 'Boleta', '1', '0071', '2025-08-15 01:19:01', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'yape', 0.00, 100.00, '0000-00-00'),
(72, 455, 19, 'Boleta', '1', '0072', '2025-08-15 11:45:07', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 10, 'contado', 0.00, 80.00, '0000-00-00'),
(73, 457, 19, 'Boleta', '1', '0073', '2025-08-15 13:00:43', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 10, 'contado', 0.00, 300.00, '0000-00-00'),
(74, 458, 19, 'Boleta', '1', '0074', '2025-08-15 18:32:56', 0.00, 567.80, 102.20, 670.00, 'Aceptado', '', 10, 'contado', 0.00, 670.00, '0000-00-00'),
(75, 433, 14, 'Boleta', '1', '0075', '2025-08-15 18:55:17', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '0000-00-00'),
(76, 410, 19, 'Boleta', '1', '0076', '2025-08-16 13:29:32', 0.00, 54.24, 9.76, 64.00, 'Aceptado', '', 10, 'contado', 0.00, 64.00, '0000-00-00'),
(78, 459, 19, 'Boleta', '1', '0077', '2025-08-16 17:35:11', 0.00, 21.19, 3.81, 25.00, 'Aceptado', '', 10, 'contado', 0.00, 25.00, '0000-00-00'),
(80, 442, 19, 'Boleta', '1', '0079', '2025-08-18 11:30:52', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 10, 'credito', 0.00, 100.00, '2025-08-19'),
(81, 410, 19, 'Boleta', '1', '0081', '2025-08-18 11:37:08', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'credito', 0.00, 300.00, '0000-00-00'),
(84, 462, 19, 'Boleta', '1', '0082', '2025-08-20 12:12:18', 0.00, 415.25, 74.75, 490.00, 'Aceptado', '', 10, 'contado', 0.00, 490.00, '0000-00-00'),
(85, 463, 19, 'Boleta', '1', '0085', '2025-08-21 17:47:05', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(86, 464, 19, 'Boleta', '1', '0086', '2025-08-22 11:40:35', 0.00, 83.90, 15.10, 99.00, 'Aceptado', '', 10, 'contado', 0.00, 99.00, '0000-00-00'),
(87, 466, 19, 'Boleta', '1', '0087', '2025-08-26 16:09:13', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 10, 'contado', 0.00, 140.00, '0000-00-00'),
(88, 410, 19, 'Boleta', '1', '0088', '2025-08-26 16:19:17', 0.00, 21.19, 3.81, 25.00, 'Aceptado', '', 10, 'contado', 0.00, 25.00, '0000-00-00'),
(89, 410, 19, 'Boleta', '1', '0089', '2025-08-26 16:19:55', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'yape', 0.00, 15.00, '0000-00-00'),
(90, 467, 19, 'Boleta', '1', '0090', '2025-08-26 16:55:17', 0.00, 35.59, 6.41, 42.00, 'Aceptado', '', 10, 'contado', 0.00, 42.00, '0000-00-00'),
(91, 468, 19, 'Boleta', '1', '0091', '2025-08-28 17:19:39', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 10, 'contado', 0.00, 120.00, '0000-00-00'),
(92, 469, 19, 'Boleta', '1', '0092', '2025-08-28 18:57:00', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 10, 'contado', 0.00, 110.00, '0000-00-00'),
(93, 470, 19, 'Boleta', '1', '0093', '2025-08-28 19:43:59', 0.00, 63.56, 11.44, 75.00, 'Aceptado', '', 10, 'contado', 0.00, 75.00, '0000-00-00'),
(94, 471, 19, 'Boleta', '1', '0094', '2025-08-29 11:29:20', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(95, 472, 19, 'Boleta', '1', '0095', '2025-08-29 12:49:21', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 10, 'contado', 0.00, 80.00, '0000-00-00'),
(96, 474, 19, 'Boleta', '1', '0096', '2025-08-29 14:44:05', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 10, 'contado', 0.00, 150.00, '0000-00-00'),
(97, 410, 19, 'Boleta', '1', '0097', '2025-08-29 14:48:54', 0.00, 55.08, 9.92, 65.00, 'Aceptado', '', 10, 'contado', 0.00, 65.00, '0000-00-00'),
(98, 476, 19, 'Boleta', '1', '0098', '2025-08-29 16:10:10', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'contado', 0.00, 15.00, '0000-00-00'),
(101, 477, 19, 'Boleta', '1', '0099', '2025-08-29 18:13:34', 0.00, 110.17, 19.83, 130.00, 'Aceptado', '', 10, 'contado', 0.00, 130.00, '0000-00-00'),
(102, 478, 19, 'Boleta', '1', '0102', '2025-08-30 13:22:49', 0.00, 152.54, 27.46, 180.00, 'Aceptado', '', 10, 'contado', 0.00, 180.00, '0000-00-00'),
(115, 410, 14, 'Boleta', '1', '0103', '2025-09-01 19:45:14', 0.00, 76.27, 13.73, 90.00, 'Aceptado', '', 3, 'contado', 0.00, 90.00, '0000-00-00'),
(116, 410, 14, 'Boleta', '1', '0116', '2025-09-01 19:46:30', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(120, 410, 14, 'Boleta', '1', '0117', '2025-09-01 20:16:05', 0.00, 144.07, 25.93, 170.00, 'Aceptado', '', 3, 'yape', 0.00, 170.00, '0000-00-00'),
(121, 410, 14, 'Boleta', '1', '0121', '2025-09-01 20:18:23', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(126, 410, 14, 'Boleta', '1', '0126', '2025-09-02 11:05:33', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'yape', 0.00, 100.00, '0000-00-00'),
(127, 410, 14, 'Boleta', '1', '0127', '2025-09-02 11:06:55', 0.00, 296.61, 53.39, 350.00, 'Aceptado', '', 3, 'yape', 0.00, 350.00, '0000-00-00'),
(128, 410, 14, 'Boleta', '1', '0128', '2025-09-02 11:07:40', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(129, 410, 14, 'Boleta', '1', '0129', '2025-09-02 11:10:33', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'yape', 0.00, 20.00, '0000-00-00'),
(130, 479, 14, 'Boleta', '1', '0130', '2025-09-02 11:12:06', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'credito', 0.00, 150.00, '0000-00-00'),
(131, 410, 14, 'Boleta', '1', '0131', '2025-09-02 11:14:43', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'yape', 0.00, 40.00, '0000-00-00'),
(132, 410, 14, 'Boleta', '1', '0132', '2025-09-02 11:16:38', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'yape', 0.00, 140.00, '0000-00-00'),
(133, 410, 19, 'Boleta', '1', '0133', '2025-09-02 11:58:09', 0.00, 72.03, 12.97, 85.00, 'Aceptado', '', 10, 'contado', 0.00, 85.00, '0000-00-00'),
(134, 483, 19, 'Boleta', '1', '0134', '2025-09-02 17:30:27', 0.00, 117.80, 21.20, 139.00, 'Aceptado', '', 10, 'contado', 0.00, 139.00, '0000-00-00'),
(135, 484, 19, 'Boleta', '1', '0135', '2025-09-02 17:32:47', 0.00, 130.51, 23.49, 154.00, 'Aceptado', '', 10, 'contado', 0.00, 154.00, '0000-00-00'),
(136, 486, 19, 'Boleta', '1', '0136', '2025-09-03 14:23:39', 0.00, 38.14, 6.86, 45.00, 'Aceptado', '', 10, 'contado', 0.00, 45.00, '0000-00-00'),
(137, 487, 19, 'Boleta', '1', '0137', '2025-09-03 14:26:59', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 10, 'contado', 0.00, 120.00, '0000-00-00'),
(138, 410, 19, 'Boleta', '1', '0138', '2025-09-03 14:30:51', 0.00, 122.88, 22.12, 145.00, 'Aceptado', '', 10, 'yape', 0.00, 145.00, '0000-00-00'),
(139, 488, 19, 'Boleta', '1', '0139', '2025-09-03 16:21:13', 0.00, 199.15, 35.85, 235.00, 'Aceptado', '', 10, 'contado', 0.00, 235.00, '0000-00-00'),
(140, 490, 19, 'Boleta', '1', '0140', '2025-09-03 16:35:37', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 10, 'contado', 0.00, 120.00, '0000-00-00'),
(141, 410, 19, 'Boleta', '1', '0141', '2025-09-03 16:52:42', 0.00, 63.56, 11.44, 75.00, 'Aceptado', '', 10, 'contado', 0.00, 75.00, '0000-00-00'),
(142, 491, 19, 'Boleta', '1', '0142', '2025-09-03 16:57:54', 0.00, 57.63, 10.37, 68.00, 'Aceptado', '', 10, 'contado', 0.00, 68.00, '0000-00-00'),
(143, 492, 14, 'Boleta', '1', '0143', '2025-09-03 20:07:13', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'yape', 0.00, 150.00, '0000-00-00'),
(144, 410, 14, 'Boleta', '1', '0144', '2025-09-03 20:08:20', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'contado', 0.00, 40.00, '0000-00-00'),
(145, 410, 14, 'Boleta', '1', '0145', '2025-09-03 20:12:50', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'yape', 0.00, 140.00, '0000-00-00'),
(146, 410, 14, 'Boleta', '1', '0146', '2025-09-03 20:14:29', 0.00, 415.25, 74.75, 490.00, 'Aceptado', '', 3, 'yape', 0.00, 490.00, '0000-00-00'),
(147, 410, 14, 'Boleta', '1', '0147', '2025-09-03 20:16:09', 0.00, 177.97, 32.03, 210.00, 'Aceptado', '', 3, 'yape', 0.00, 210.00, '0000-00-00'),
(148, 410, 14, 'Boleta', '1', '0148', '2025-09-03 20:18:05', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'contado', 0.00, 80.00, '0000-00-00'),
(149, 493, 14, 'Boleta', '1', '0149', '2025-09-03 20:31:26', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 3, 'credito', 0.00, 120.00, '0000-00-00'),
(151, 494, 14, 'Boleta', '1', '0150', '2025-09-03 20:35:16', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'credito', 0.00, 15.00, '0000-00-00'),
(152, 495, 14, 'Boleta', '1', '0152', '2025-09-03 20:38:21', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'efectivo', 0.00, 30.00, '0000-00-00'),
(153, 497, 19, 'Boleta', '1', '0153', '2025-09-04 13:24:22', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 10, 'contado', 0.00, 300.00, '0000-00-00'),
(154, 496, 19, 'Boleta', '1', '00026', '2025-09-04 14:14:48', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 10, 'contado', 0.00, 150.00, '0000-00-00'),
(155, 498, 19, 'Boleta', '1', '0155', '2025-09-04 17:46:21', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 10, 'contado', 0.00, 200.00, '0000-00-00'),
(156, 499, 14, 'Boleta', '1', '0156', '2025-09-05 12:07:49', 0.00, 652.54, 117.46, 770.00, 'Aceptado', '', 3, 'contado', 0.00, 770.00, '0000-00-00'),
(157, 500, 19, 'Boleta', '1', '0157', '2025-09-05 14:19:52', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 10, 'contado', 0.00, 30.00, '0000-00-00'),
(159, 501, 19, 'Boleta', '1', '0158', '2025-09-05 14:57:40', 0.00, 57.63, 10.37, 68.00, 'Aceptado', '', 10, 'contado', 0.00, 68.00, '0000-00-00'),
(160, 502, 19, 'Boleta', '1', '0160', '2025-09-05 16:01:28', 0.00, 364.41, 65.59, 430.00, 'Aceptado', '', 3, 'contado', 0.00, 430.00, '0000-00-00'),
(161, 501, 19, 'Boleta', '1', '0161', '2025-09-05 16:43:16', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'yape', 0.00, 15.00, '0000-00-00'),
(162, 410, 19, 'Boleta', '1', '0162', '2025-09-05 16:45:39', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 10, 'contado', 0.00, 250.00, '0000-00-00'),
(163, 503, 19, 'Boleta', '1', '0163', '2025-09-05 19:13:23', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 10, 'contado', 0.00, 140.00, '0000-00-00'),
(164, 505, 19, 'Boleta', '1', '0164', '2025-09-06 13:22:05', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'contado', 0.00, 200.00, '0000-00-00'),
(165, 506, 19, 'Boleta', '1', '0165', '2025-09-06 17:04:11', 0.00, 29.66, 5.34, 35.00, 'Aceptado', '', 10, 'contado', 0.00, 35.00, '0000-00-00'),
(166, 410, 19, 'Boleta', '1', '0166', '2025-09-08 11:20:24', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 10, 'contado', 0.00, 10.00, '0000-00-00'),
(167, 507, 14, 'Boleta', '1', '0167', '2025-09-08 11:47:02', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '0000-00-00'),
(168, 508, 14, 'Boleta', '1', '0168', '2025-09-08 11:53:50', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'credito', 0.00, 150.00, '0000-00-00'),
(169, 433, 14, 'Boleta', '1', '0169', '2025-09-08 11:54:46', 0.00, 203.39, 36.61, 240.00, 'Aceptado', '', 3, 'efectivo', 0.00, 240.00, '0000-00-00'),
(170, 493, 14, 'Boleta', '1', '0170', '2025-09-08 11:55:38', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'credito', 0.00, 50.00, '0000-00-00'),
(171, 509, 14, 'Boleta', '1', '0171', '2025-09-08 12:14:16', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'credito', 0.00, 40.00, '0000-00-00'),
(172, 510, 14, 'Boleta', '1', '0172', '2025-09-08 12:16:31', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(173, 410, 14, 'Boleta', '1', '0173', '2025-09-08 12:42:29', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'yape', 0.00, 10.00, '0000-00-00'),
(174, 511, 19, 'Boleta', '1', '0174', '2025-09-08 17:51:19', 0.00, 322.03, 57.97, 380.00, 'Aceptado', '', 10, 'contado', 0.00, 380.00, '0000-00-00'),
(175, 512, 19, 'Boleta', '1', '0175', '2025-09-09 16:34:37', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 10, 'contado', 0.00, 80.00, '0000-00-00'),
(176, 513, 19, 'Boleta', '1', '0176', '2025-09-09 17:51:03', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 10, 'contado', 0.00, 30.00, '0000-00-00'),
(177, 515, 19, 'Boleta', '1', '0177', '2025-09-11 16:59:44', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 10, 'contado', 0.00, 200.00, '0000-00-00'),
(179, 516, 19, 'Boleta', '1', '0178', '2025-09-13 12:49:36', 0.00, 292.37, 52.63, 345.00, 'Aceptado', '', 10, 'contado', 0.00, 345.00, '0000-00-00'),
(180, 410, 19, 'Boleta', '1', '0180', '2025-09-15 13:28:13', 0.00, 29.66, 5.34, 35.00, 'Aceptado', '', 10, 'contado', 0.00, 35.00, '0000-00-00'),
(181, 518, 19, 'Boleta', '1', '0181', '2025-09-17 14:20:22', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 10, 'contado', 0.00, 150.00, '0000-00-00'),
(182, 520, 19, 'Boleta', '1', '0182', '2025-09-20 12:14:12', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 10, 'contado', 0.00, 200.00, '0000-00-00'),
(183, 521, 19, 'Boleta', '1', '0183', '2025-09-20 14:57:56', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 10, 'contado', 0.00, 250.00, '0000-00-00'),
(184, 522, 19, 'Boleta', '1', '0184', '2025-09-22 13:37:57', 0.00, 21.19, 3.81, 25.00, 'Aceptado', '', 10, 'contado', 0.00, 25.00, '0000-00-00'),
(185, 523, 19, 'Boleta', '1', '0185', '2025-09-23 13:03:52', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(186, 524, 19, 'Boleta', '1', '0186', '2025-09-23 14:31:43', 0.00, 12.70, 2.29, 14.99, 'Aceptado', '', 10, 'contado', 0.00, 14.99, '0000-00-00'),
(188, 526, 19, 'Boleta', '1', '0187', '2025-09-27 11:40:59', 0.00, 355.93, 64.07, 420.00, 'Aceptado', '', 10, 'contado', 0.00, 420.00, '0000-00-00'),
(190, 528, 19, 'Boleta', '1', '0189', '2025-09-29 11:21:58', 0.00, 38.14, 6.86, 45.00, 'Aceptado', '', 10, 'contado', 0.00, 45.00, '0000-00-00'),
(192, 528, 19, 'Boleta', '1', '0192', '2025-09-29 11:34:05', 0.00, 194.92, 35.08, 230.00, 'Aceptado', '', 10, 'contado', 0.00, 230.00, '0000-00-00'),
(193, 528, 19, 'Boleta', '1', '0193', '2025-09-29 11:44:39', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 10, 'contado', 0.00, 60.00, '0000-00-00'),
(194, 528, 19, 'Boleta', '1', '0194', '2025-09-29 11:45:16', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 10, 'contado', 0.00, 10.00, '0000-00-00'),
(195, 530, 19, 'Boleta', '1', '0195', '2025-10-01 10:51:56', 0.00, 220.34, 39.66, 260.00, 'Aceptado', '', 10, 'contado', 0.00, 260.00, '0000-00-00'),
(196, 531, 19, 'Boleta', '1', '0196', '2025-10-02 15:00:10', 0.00, 148.31, 26.69, 175.00, 'Aceptado', '', 10, 'contado', 0.00, 175.00, '0000-00-00'),
(197, 532, 19, 'Boleta', '1', '0197', '2025-10-02 15:23:09', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 10, 'contado', 0.00, 70.00, '0000-00-00'),
(198, 533, 19, 'Boleta', '1', '0198', '2025-10-02 16:54:44', 0.00, 20.34, 3.66, 24.00, 'Aceptado', '', 10, 'contado', 0.00, 24.00, '0000-00-00'),
(199, 534, 19, 'Boleta', '1', '0199', '2025-10-03 11:59:14', 0.00, 31.36, 5.64, 37.00, 'Aceptado', '', 10, 'contado', 0.00, 37.00, '0000-00-00'),
(200, 535, 19, 'Boleta', '1', '0200', '2025-10-03 14:18:41', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'contado', 0.00, 15.00, '0000-00-00'),
(201, 536, 19, 'Boleta', '1', '0201', '2025-10-04 12:01:23', 0.00, 21.19, 3.81, 25.00, 'Aceptado', '', 10, 'contado', 0.00, 25.00, '0000-00-00'),
(202, 537, 19, 'Boleta', '1', '0202', '2025-10-08 14:00:15', 0.00, 29.66, 5.34, 35.00, 'Aceptado', '', 10, 'contado', 0.00, 35.00, '0000-00-00'),
(203, 538, 19, 'Boleta', '1', '0203', '2025-10-08 14:15:00', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 10, 'contado', 0.00, 40.00, '0000-00-00'),
(204, 540, 19, 'Boleta', '1', '0204', '2025-10-09 11:19:32', 0.00, 68.64, 12.36, 81.00, 'Aceptado', '', 10, 'contado', 0.00, 81.00, '0000-00-00'),
(205, 541, 19, 'Boleta', '1', '0205', '2025-10-10 16:55:01', 0.00, 10.17, 1.83, 12.00, 'Aceptado', '', 10, 'contado', 0.00, 12.00, '0000-00-00'),
(206, 541, 19, 'Boleta', '1', '0206', '2025-10-10 16:58:23', 0.00, 29.66, 5.34, 35.00, 'Aceptado', '', 10, 'contado', 0.00, 35.00, '0000-00-00'),
(207, 542, 19, 'Boleta', '1', '0207', '2025-10-10 18:20:19', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 10, 'contado', 0.00, 60.00, '0000-00-00'),
(208, 546, 19, 'Boleta', '1', '0208', '2025-10-11 16:19:22', 0.00, 245.76, 44.24, 290.00, 'Aceptado', '', 10, 'contado', 0.00, 290.00, '0000-00-00'),
(210, 442, 14, 'Boleta', '1', '0209', '2025-10-11 16:21:53', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'efectivo', 0.00, 200.00, '0000-00-00'),
(211, 406, 14, 'Boleta', '1', '0211', '2025-10-11 16:25:37', 0.00, 237.29, 42.71, 280.00, 'Aceptado', '', 3, 'contado', 0.00, 280.00, '0000-00-00'),
(212, 546, 19, 'Boleta', '1', '0212', '2025-10-11 16:29:04', 0.00, 245.76, 44.24, 290.00, 'Aceptado', '', 10, 'contado', 0.00, 290.00, '0000-00-00'),
(213, 546, 19, 'Boleta', '1', '0213', '2025-10-11 16:31:39', 0.00, 245.76, 44.24, 290.00, 'Aceptado', '', 10, 'contado', 0.00, 290.00, '0000-00-00'),
(214, 549, 14, 'Boleta', '1', '0214', '2025-10-11 16:40:07', 0.00, 186.44, 33.56, 220.00, 'Aceptado', '', 3, 'credito', 0.00, 220.00, '0000-00-00'),
(215, 550, 19, 'Boleta', '1', '0215', '2025-10-11 16:44:27', 0.00, 122.88, 22.12, 145.00, 'Aceptado', '', 10, 'contado', 0.00, 145.00, '0000-00-00'),
(216, 551, 19, 'Boleta', '1', '0216', '2025-10-14 16:51:15', 0.00, 11.02, 1.98, 13.00, 'Aceptado', '', 10, 'contado', 0.00, 13.00, '0000-00-00'),
(217, 552, 19, 'Boleta', '1', '0217', '2025-10-14 17:15:15', 0.00, 245.76, 44.24, 290.00, 'Aceptado', '', 10, 'contado', 0.00, 290.00, '0000-00-00'),
(218, 553, 19, 'Boleta', '1', '0218', '2025-10-16 11:39:29', 0.00, 23.73, 4.27, 28.00, 'Aceptado', '', 3, 'plin', 0.00, 28.00, '0000-00-00'),
(220, 555, 19, 'Boleta', '1', '0219', '2025-10-17 15:32:42', 0.00, 168.64, 30.36, 199.00, 'Aceptado', '', 10, 'contado', 0.00, 199.00, '0000-00-00'),
(221, 410, 14, 'Boleta', '1', '0221', '2025-10-17 16:19:35', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'contado', 0.00, 200.00, '0000-00-00'),
(222, 410, 14, 'Boleta', '1', '0222', '2025-10-17 16:20:09', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 3, 'credito', 0.00, 250.00, '0000-00-00'),
(223, 410, 14, 'Boleta', '1', '0223', '2025-10-17 16:20:40', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'yape', 0.00, 150.00, '0000-00-00'),
(224, 410, 14, 'Boleta', '1', '0224', '2025-10-17 16:21:13', 0.00, 194.92, 35.08, 230.00, 'Aceptado', '', 3, 'plin', 0.00, 230.00, '0000-00-00'),
(225, 410, 14, 'Boleta', '1', '0225', '2025-10-17 16:21:50', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'transferencia', 0.00, 300.00, '0000-00-00'),
(226, 410, 14, 'Boleta', '1', '0226', '2025-10-17 16:22:41', 0.00, 338.98, 61.02, 400.00, 'Aceptado', '', 3, 'contado', 0.00, 400.00, '0000-00-00'),
(227, 556, 19, 'Boleta', '1', '0227', '2025-10-20 12:27:34', 0.00, 72.03, 12.97, 85.00, 'Aceptado', '', 10, 'contado', 0.00, 85.00, '0000-00-00'),
(228, 410, 14, 'Boleta', '1', '0228', '2025-10-20 14:44:51', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'contado', 0.00, 150.00, '0000-00-00'),
(230, 410, 14, 'Boleta', '1', '0229', '2025-10-21 11:32:51', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(231, 410, 14, 'Boleta', '1', '0231', '2025-10-21 11:39:43', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(232, 560, 19, 'Boleta', '1', '0232', '2025-10-22 14:41:51', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 10, 'contado', 0.00, 80.00, '0000-00-00'),
(233, 410, 19, 'Boleta', '1', '0233', '2025-10-22 15:16:08', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 10, 'contado', 0.00, 40.00, '0000-00-00'),
(234, 562, 19, 'Boleta', '1', '0234', '2025-10-25 11:56:31', 0.00, 55.08, 9.92, 65.00, 'Aceptado', '', 10, 'contado', 0.00, 65.00, '0000-00-00'),
(235, 563, 19, 'Boleta', '1', '0235', '2025-10-25 16:38:52', 0.00, 73.73, 13.27, 87.00, 'Aceptado', '', 10, 'contado', 0.00, 87.00, '0000-00-00'),
(236, 410, 19, 'Boleta', '1', '0236', '2025-10-25 17:23:37', 0.00, 29.66, 5.34, 35.00, 'Aceptado', '', 10, 'contado', 0.00, 35.00, '0000-00-00'),
(238, 410, 14, 'Boleta', '1', '0237', '2025-10-25 18:44:36', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'credito', 0.00, 300.00, '0000-00-00'),
(240, 410, 14, 'Boleta', '1', '0239', '2025-10-25 18:52:56', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'contado', 0.00, 300.00, '0000-00-00'),
(241, 565, 19, 'Boleta', '1', '0241', '2025-10-27 13:36:22', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(242, 410, 14, 'Boleta', '1', '0242', '2025-10-27 14:46:48', 0.00, 203.39, 36.61, 240.00, 'Aceptado', '', 3, 'contado', 0.00, 240.00, '0000-00-00'),
(243, 410, 14, 'Boleta', '1', '0243', '2025-10-27 14:48:34', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(244, 410, 14, 'Boleta', '1', '0244', '2025-10-27 14:50:42', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'yape', 0.00, 30.00, '0000-00-00'),
(245, 410, 14, 'Boleta', '1', '0245', '2025-10-27 14:51:24', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'yape', 0.00, 10.00, '0000-00-00'),
(246, 410, 14, 'Boleta', '1', '0246', '2025-10-27 14:52:43', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'yape', 0.00, 140.00, '0000-00-00'),
(247, 410, 14, 'Boleta', '1', '0247', '2025-10-27 14:54:00', 0.00, 46.61, 8.39, 55.00, 'Aceptado', '', 3, 'yape', 0.00, 55.00, '0000-00-00'),
(248, 433, 14, 'Boleta', '1', '0248', '2025-10-27 14:55:48', 0.00, 152.54, 27.46, 180.00, 'Aceptado', '', 3, 'efectivo', 0.00, 180.00, '0000-00-00'),
(249, 566, 14, 'Boleta', '1', '0249', '2025-10-27 14:58:34', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'credito', 0.00, 20.00, '0000-00-00'),
(250, 509, 14, 'Boleta', '1', '0250', '2025-10-27 14:59:55', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'credito', 0.00, 40.00, '0000-00-00'),
(251, 567, 14, 'Boleta', '1', '0251', '2025-10-27 15:01:16', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'efectivo', 0.00, 15.00, '0000-00-00'),
(252, 568, 14, 'Boleta', '1', '0252', '2025-10-27 15:02:52', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'credito', 0.00, 50.00, '0000-00-00'),
(253, 410, 14, 'Boleta', '1', '0253', '2025-10-27 17:45:43', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'yape', 0.00, 10.00, '0000-00-00'),
(254, 410, 14, 'Boleta', '1', '0254', '2025-10-27 17:47:28', 0.00, 677.97, 122.03, 800.00, 'Aceptado', '', 3, 'transferencia', 0.00, 800.00, '0000-00-00'),
(256, 410, 14, 'Boleta', '1', '0255', '2025-10-27 17:50:13', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(257, 569, 14, 'Boleta', '1', '0257', '2025-10-27 17:51:47', 0.00, 80.51, 14.49, 95.00, 'Aceptado', '', 3, 'plin', 0.00, 95.00, '0000-00-00'),
(258, 571, 14, 'Boleta', '1', '0258', '2025-10-27 17:57:08', 0.00, 135.59, 24.41, 160.00, 'Aceptado', '', 3, 'credito', 0.00, 160.00, '0000-00-00'),
(259, 566, 14, 'Boleta', '1', '0259', '2025-10-27 17:59:52', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'credito', 0.00, 100.00, '0000-00-00'),
(261, 410, 14, 'Boleta', '1', '0260', '2025-10-27 19:15:28', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'contado', 0.00, 20.00, '0000-00-00'),
(262, 410, 14, 'Boleta', '1', '0262', '2025-10-27 19:21:59', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(263, 572, 14, 'Boleta', '1', '0263', '2025-10-28 10:35:08', 0.00, 144.07, 25.93, 170.00, 'Aceptado', '', 3, 'yape', 0.00, 170.00, '0000-00-00'),
(264, 573, 14, 'Boleta', '1', '0264', '2025-10-28 10:37:12', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'credito', 0.00, 150.00, '0000-00-00'),
(266, 573, 14, 'Boleta', '1', '0265', '2025-10-28 10:39:01', 0.00, 135.59, 24.41, 160.00, 'Aceptado', '', 3, 'credito', 0.00, 160.00, '0000-00-00'),
(267, 574, 14, 'Boleta', '1', '0267', '2025-10-28 10:53:35', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 3, 'yape', 0.00, 120.00, '0000-00-00'),
(268, 445, 14, 'Boleta', '1', '0268', '2025-10-28 10:56:05', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'credito', 0.00, 200.00, '0000-00-00'),
(269, 410, 14, 'Boleta', '1', '0269', '2025-10-28 11:03:32', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'contado', 0.00, 15.00, '0000-00-00'),
(270, 575, 14, 'Boleta', '1', '0270', '2025-10-28 11:09:03', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'credito', 0.00, 15.00, '0000-00-00'),
(271, 445, 14, 'Boleta', '1', '0271', '2025-10-28 11:10:27', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'credito', 0.00, 30.00, '0000-00-00'),
(272, 576, 14, 'Boleta', '1', '0272', '2025-10-28 11:29:29', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(273, 577, 19, 'Boleta', '1', '0273', '2025-10-28 14:59:11', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 10, 'contado', 0.00, 20.00, '0000-00-00'),
(274, 578, 14, 'Boleta', '1', '0274', '2025-10-29 19:56:59', 0.00, 466.10, 83.90, 550.00, 'Aceptado', '', 3, 'contado', 0.00, 550.00, '0000-00-00'),
(275, 578, 14, 'Boleta', '1', '0275', '2025-10-29 20:01:25', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'efectivo', 0.00, 80.00, '0000-00-00'),
(276, 578, 14, 'Boleta', '1', '0276', '2025-10-29 20:04:32', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'yape', 0.00, 50.00, '0000-00-00'),
(277, 410, 19, 'Boleta', '1', '0277', '2025-10-30 12:56:58', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'contado', 0.00, 15.00, '0000-00-00'),
(278, 410, 19, 'Boleta', '1', '0278', '2025-10-30 12:58:41', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 4, 'contado', 0.00, 30.00, '0000-00-00'),
(279, 410, 19, 'Boleta', '1', '0279', '2025-10-30 13:00:52', 0.00, 83.90, 15.10, 99.00, 'Aceptado', '', 10, 'contado', 0.00, 99.00, '0000-00-00'),
(280, 580, 14, 'Boleta', '1', '0280', '2025-11-01 16:43:02', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 10, 'contado', 0.00, 40.00, '0000-00-00'),
(281, 410, 14, 'Boleta', '1', '0281', '2025-11-04 14:06:26', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 10, 'contado', 0.00, 150.00, '0000-00-00'),
(282, 582, 14, 'Boleta', '1', '0282', '2025-11-04 16:51:12', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 3, 'contado', 0.00, 60.00, '0000-00-00'),
(283, 410, 14, 'Boleta', '1', '0283', '2025-11-06 08:38:18', 0.00, 72.03, 12.97, 85.00, 'Aceptado', '', 3, 'contado', 0.00, 85.00, '0000-00-00'),
(284, 410, 14, 'Boleta', '1', '0284', '2025-11-06 09:16:11', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'transferencia', 0.00, 140.00, '0000-00-00'),
(285, 410, 14, 'Boleta', '1', '0285', '2025-11-06 09:34:25', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'contado', 0.00, 20.00, '0000-00-00'),
(286, 583, 14, 'Boleta', '1', '0286', '2025-11-06 10:47:17', 0.00, 584.75, 105.25, 690.00, 'Aceptado', '', 10, 'contado', 0.00, 690.00, '0000-00-00'),
(287, 584, 14, 'Boleta', '1', '0287', '2025-11-06 11:11:35', 0.00, 381.36, 68.64, 450.00, 'Aceptado', '', 10, 'contado', 0.00, 450.00, '0000-00-00'),
(288, 410, 14, 'Boleta', '1', '0288', '2025-11-07 08:33:29', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 3, 'contado', 0.00, 70.00, '0000-00-00'),
(289, 587, 14, 'Boleta', '1', '0289', '2025-11-08 14:35:59', 0.00, 322.03, 57.97, 380.00, 'Aceptado', '', 10, 'contado', 0.00, 380.00, '0000-00-00'),
(290, 410, 14, 'Boleta', '1', '0290', '2025-11-08 14:46:45', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 10, 'yape', 0.00, 20.00, '0000-00-00'),
(291, 410, 14, 'Boleta', '1', '0291', '2025-11-10 09:38:43', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(292, 588, 14, 'Boleta', '1', '0292', '2025-11-10 10:39:33', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'credito', 0.00, 80.00, '0000-00-00'),
(293, 410, 14, 'Boleta', '1', '0293', '2025-11-10 10:40:18', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'yape', 0.00, 10.00, '0000-00-00'),
(294, 591, 14, 'Boleta', '1', '0294', '2025-11-11 12:10:02', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 10, 'contado', 0.00, 100.00, '0000-00-00'),
(295, 592, 14, 'Boleta', '1', '0295', '2025-11-12 13:29:10', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 10, 'contado', 0.00, 20.00, '0000-00-00'),
(296, 410, 14, 'Boleta', '1', '0296', '2025-11-13 09:36:09', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'contado', 0.00, 50.00, '0000-00-00'),
(297, 595, 14, 'Boleta', '1', '0297', '2025-11-13 09:54:32', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'credito', 0.00, 20.00, '0000-00-00'),
(298, 446, 14, 'Boleta', '1', '0298', '2025-11-13 09:55:22', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'credito', 0.00, 50.00, '0000-00-00'),
(299, 410, 14, 'Boleta', '1', '0299', '2025-11-13 10:07:14', 0.00, 18.64, 3.36, 22.00, 'Aceptado', '', 3, 'contado', 0.00, 22.00, '0000-00-00'),
(300, 433, 14, 'Boleta', '1', '0300', '2025-11-13 11:21:25', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 3, 'credito', 0.00, 70.00, '0000-00-00'),
(301, 595, 14, 'Boleta', '1', '0301', '2025-11-13 11:28:17', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'credito', 0.00, 20.00, '0000-00-00'),
(302, 410, 14, 'Boleta', '1', '0302', '2025-11-13 11:43:57', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 3, 'contado', 0.00, 70.00, '0000-00-00'),
(303, 596, 14, 'Boleta', '1', '0303', '2025-11-13 11:53:15', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'credito', 0.00, 20.00, '0000-00-00'),
(304, 597, 14, 'Boleta', '1', '0304', '2025-11-13 11:55:10', 0.00, 110.17, 19.83, 130.00, 'Aceptado', '', 3, 'credito', 0.00, 130.00, '0000-00-00'),
(305, 597, 14, 'Boleta', '1', '0305', '2025-11-13 11:59:50', 0.00, 110.17, 19.83, 130.00, 'Aceptado', '', 3, 'credito', 0.00, 130.00, '0000-00-00'),
(306, 410, 14, 'Boleta', '1', '0306', '2025-11-13 12:35:49', 0.00, 144.07, 25.93, 170.00, 'Aceptado', '', 3, 'yape', 0.00, 170.00, '0000-00-00'),
(307, 410, 14, 'Boleta', '1', '0307', '2025-11-13 12:43:37', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'contado', 0.00, 50.00, '0000-00-00'),
(308, 410, 14, 'Boleta', '1', '0308', '2025-11-13 12:44:35', 0.00, 72.03, 12.97, 85.00, 'Aceptado', '', 3, 'yape', 0.00, 85.00, '0000-00-00'),
(309, 410, 14, 'Boleta', '1', '0309', '2025-11-13 12:57:45', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(310, 410, 14, 'Boleta', '1', '0310', '2025-11-17 12:05:49', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'yape', 0.00, 30.00, '0000-00-00'),
(311, 410, 14, 'Boleta', '1', '0311', '2025-11-17 12:07:04', 0.00, 144.07, 25.93, 170.00, 'Aceptado', '', 3, 'yape', 0.00, 170.00, '0000-00-00'),
(312, 410, 14, 'Boleta', '1', '0312', '2025-11-17 12:07:45', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 3, 'yape', 0.00, 120.00, '0000-00-00'),
(313, 410, 14, 'Boleta', '1', '0313', '2025-11-17 12:09:44', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'yape', 0.00, 30.00, '0000-00-00'),
(314, 410, 14, 'Boleta', '1', '0314', '2025-11-17 12:23:36', 0.00, 148.31, 26.69, 175.00, 'Aceptado', '', 3, 'yape', 0.00, 175.00, '0000-00-00'),
(315, 410, 14, 'Boleta', '1', '0315', '2025-11-17 12:24:26', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'yape', 0.00, 20.00, '0000-00-00'),
(316, 566, 14, 'Boleta', '1', '0316', '2025-11-17 12:25:47', 0.00, 10.17, 1.83, 12.00, 'Aceptado', '', 3, 'efectivo', 0.00, 12.00, '0000-00-00'),
(317, 410, 14, 'Boleta', '1', '0317', '2025-11-17 12:49:02', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'contado', 0.00, 150.00, '0000-00-00'),
(318, 410, 14, 'Boleta', '1', '0318', '2025-11-17 13:18:47', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'contado', 0.00, 140.00, '0000-00-00'),
(319, 598, 14, 'Boleta', '1', '0319', '2025-11-17 13:20:57', 0.00, 110.17, 19.83, 130.00, 'Aceptado', '', 3, 'credito', 0.00, 130.00, '0000-00-00'),
(320, 410, 14, 'Boleta', '1', '0320', '2025-11-17 13:22:45', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'yape', 0.00, 50.00, '0000-00-00'),
(322, 599, 14, 'Boleta', '1', '0321', '2025-11-17 15:28:27', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'efectivo', 0.00, 30.00, '0000-00-00'),
(323, 601, 14, 'Boleta', '1', '0323', '2025-11-17 15:30:56', 0.00, 46.61, 8.39, 55.00, 'Aceptado', '', 3, 'efectivo', 0.00, 55.00, '0000-00-00'),
(324, 575, 14, 'Boleta', '1', '0324', '2025-11-17 15:31:57', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 3, 'efectivo', 0.00, 110.00, '0000-00-00'),
(325, 603, 14, 'Boleta', '1', '0325', '2025-11-17 15:37:07', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'credito', 0.00, 80.00, '0000-00-00'),
(326, 595, 14, 'Boleta', '1', '0326', '2025-11-17 15:38:10', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'credito', 0.00, 40.00, '0000-00-00'),
(327, 410, 14, 'Boleta', '1', '0327', '2025-11-17 15:50:00', 0.00, 296.61, 53.39, 350.00, 'Aceptado', '', 3, 'contado', 0.00, 350.00, '0000-00-00'),
(328, 410, 14, 'Boleta', '1', '0328', '2025-11-17 15:51:56', 0.00, 105.93, 19.07, 125.00, 'Aceptado', '', 3, 'contado', 0.00, 125.00, '0000-00-00'),
(329, 433, 14, 'Boleta', '1', '0329', '2025-11-17 15:52:53', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(330, 433, 14, 'Boleta', '1', '0330', '2025-11-17 16:54:09', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 3, 'efectivo', 0.00, 70.00, '0000-00-00'),
(331, 569, 14, 'Boleta', '1', '0331', '2025-11-17 16:54:59', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'credito', 0.00, 80.00, '0000-00-00'),
(332, 604, 14, 'Boleta', '1', '0332', '2025-11-17 16:55:59', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'efectivo', 0.00, 200.00, '0000-00-00'),
(333, 567, 14, 'Boleta', '1', '0333', '2025-11-17 16:57:50', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'efectivo', 0.00, 10.00, '0000-00-00'),
(334, 410, 14, 'Boleta', '1', '0334', '2025-11-17 17:00:10', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'yape', 0.00, 30.00, '0000-00-00'),
(335, 410, 14, 'Boleta', '1', '0335', '2025-11-17 17:01:10', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'yape', 0.00, 50.00, '0000-00-00'),
(336, 410, 14, 'Boleta', '1', '0336', '2025-11-17 17:18:16', 0.00, 97.46, 17.54, 115.00, 'Aceptado', '', 3, 'contado', 0.00, 115.00, '0000-00-00'),
(337, 493, 14, 'Boleta', '1', '0337', '2025-11-17 17:20:28', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'credito', 0.00, 30.00, '0000-00-00'),
(338, 600, 14, 'Boleta', '1', '0338', '2025-11-17 17:49:48', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 3, 'efectivo', 0.00, 110.00, '0000-00-00'),
(339, 410, 14, 'Boleta', '1', '0339', '2025-11-17 17:57:49', 0.00, 84.75, 15.25, 100.00, 'Aceptado', '', 3, 'yape', 0.00, 100.00, '0000-00-00'),
(340, 571, 14, 'Boleta', '1', '0340', '2025-11-17 18:07:06', 0.00, 76.27, 13.73, 90.00, 'Aceptado', '', 3, 'efectivo', 0.00, 90.00, '0000-00-00'),
(341, 410, 14, 'Boleta', '1', '0341', '2025-11-18 11:05:17', 0.00, 127.12, 22.88, 150.00, 'Aceptado', '', 3, 'yape', 0.00, 150.00, '0000-00-00'),
(342, 433, 14, 'Boleta', '1', '0342', '2025-11-18 15:39:07', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'contado', 0.00, 10.00, '0000-00-00'),
(343, 607, 14, 'Boleta', '1', '0343', '2025-11-18 15:42:28', 0.00, 38.14, 6.86, 45.00, 'Aceptado', '', 3, 'yape', 0.00, 45.00, '0000-00-00'),
(344, 604, 14, 'Boleta', '1', '0344', '2025-11-18 15:43:55', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'yape', 0.00, 20.00, '0000-00-00'),
(345, 410, 14, 'Boleta', '1', '0345', '2025-11-18 15:45:01', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'contado', 0.00, 40.00, '0000-00-00'),
(346, 410, 14, 'Boleta', '1', '0346', '2025-11-18 15:46:06', 0.00, 76.27, 13.73, 90.00, 'Aceptado', '', 3, 'yape', 0.00, 90.00, '0000-00-00'),
(347, 410, 14, 'Boleta', '1', '0347', '2025-11-18 15:47:21', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'plin', 0.00, 10.00, '0000-00-00'),
(348, 410, 14, 'Boleta', '1', '0348', '2025-11-18 15:48:15', 0.00, 110.17, 19.83, 130.00, 'Aceptado', '', 3, 'yape', 0.00, 130.00, '0000-00-00'),
(349, 410, 14, 'Boleta', '1', '0349', '2025-11-18 15:49:47', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'yape', 0.00, 80.00, '0000-00-00'),
(350, 410, 14, 'Boleta', '1', '0350', '2025-11-18 15:50:58', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 3, 'yape', 0.00, 50.00, '0000-00-00'),
(351, 608, 14, 'Boleta', '1', '0351', '2025-11-18 15:54:07', 0.00, 254.24, 45.76, 300.00, 'Aceptado', '', 3, 'efectivo', 0.00, 300.00, '0000-00-00'),
(352, 609, 14, 'Boleta', '1', '0352', '2025-11-18 15:56:04', 0.00, 38.98, 7.02, 46.00, 'Aceptado', '', 3, 'efectivo', 0.00, 46.00, '0000-00-00'),
(353, 600, 14, 'Boleta', '1', '0353', '2025-11-18 15:57:41', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'efectivo', 0.00, 10.00, '0000-00-00'),
(354, 610, 14, 'Boleta', '1', '0354', '2025-11-18 15:58:55', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'credito', 0.00, 10.00, '0000-00-00'),
(355, 604, 14, 'Boleta', '1', '0355', '2025-11-18 16:00:47', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'efectivo', 0.00, 15.00, '0000-00-00'),
(356, 567, 14, 'Boleta', '1', '0356', '2025-11-18 16:01:44', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 3, 'efectivo', 0.00, 110.00, '0000-00-00'),
(357, 611, 14, 'Boleta', '1', '0357', '2025-11-18 16:05:56', 0.00, 406.78, 73.22, 480.00, 'Aceptado', '', 3, 'credito', 0.00, 480.00, '0000-00-00'),
(358, 609, 14, 'Boleta', '1', '0358', '2025-11-18 16:07:22', 0.00, 8.47, 1.53, 10.00, 'Aceptado', '', 3, 'efectivo', 0.00, 10.00, '0000-00-00'),
(359, 611, 14, 'Boleta', '1', '0359', '2025-11-18 16:09:15', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'credito', 0.00, 15.00, '0000-00-00'),
(360, 567, 14, 'Boleta', '1', '0360', '2025-11-18 16:10:05', 0.00, 245.76, 44.24, 290.00, 'Aceptado', '', 3, 'efectivo', 0.00, 290.00, '0000-00-00'),
(361, 613, 14, 'Boleta', '1', '0361', '2025-11-18 16:11:53', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 3, 'efectivo', 0.00, 60.00, '0000-00-00'),
(362, 614, 14, 'Boleta', '1', '0362', '2025-11-18 16:13:16', 0.00, 237.29, 42.71, 280.00, 'Aceptado', '', 3, 'credito', 0.00, 280.00, '0000-00-00'),
(363, 433, 14, 'Boleta', '1', '0363', '2025-11-18 17:51:11', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'efectivo', 0.00, 15.00, '0000-00-00'),
(364, 615, 14, 'Boleta', '1', '0364', '2025-11-22 14:50:24', 0.00, 118.64, 21.36, 140.00, 'Aceptado', '', 3, 'contado', 0.00, 140.00, '0000-00-00'),
(365, 609, 14, 'Boleta', '1', '0365', '2025-11-24 12:59:44', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'credito', 0.00, 15.00, '0000-00-00'),
(366, 508, 14, 'Boleta', '1', '0366', '2025-11-24 13:00:49', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'credito', 0.00, 80.00, '0000-00-00'),
(367, 433, 14, 'Boleta', '1', '0367', '2025-11-24 13:02:10', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 3, 'credito', 0.00, 120.00, '0000-00-00'),
(368, 508, 14, 'Boleta', '1', '0368', '2025-11-24 13:03:50', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'credito', 0.00, 20.00, '0000-00-00'),
(369, 616, 14, 'Boleta', '1', '0369', '2025-11-24 13:05:00', 0.00, 38.14, 6.86, 45.00, 'Aceptado', '', 3, 'credito', 0.00, 45.00, '0000-00-00'),
(370, 617, 14, 'Boleta', '1', '0370', '2025-11-24 13:06:23', 0.00, 152.54, 27.46, 180.00, 'Aceptado', '', 3, 'credito', 0.00, 180.00, '0000-00-00'),
(371, 618, 14, 'Boleta', '1', '0371', '2025-11-24 13:07:42', 0.00, 67.80, 12.20, 80.00, 'Aceptado', '', 3, 'credito', 0.00, 80.00, '0000-00-00'),
(372, 433, 14, 'Boleta', '1', '0372', '2025-11-24 13:08:36', 0.00, 59.32, 10.68, 70.00, 'Aceptado', '', 3, 'efectivo', 0.00, 70.00, '0000-00-00'),
(373, 619, 14, 'Boleta', '1', '0373', '2025-11-24 13:10:06', 0.00, 398.31, 71.69, 470.00, 'Aceptado', '', 3, 'credito', 0.00, 470.00, '0000-00-00'),
(374, 410, 14, 'Boleta', '1', '0374', '2025-11-24 13:21:11', 0.00, 25.42, 4.58, 30.00, 'Aceptado', '', 3, 'contado', 0.00, 30.00, '0000-00-00'),
(375, 410, 14, 'Boleta', '1', '0375', '2025-11-24 13:22:04', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'contado', 0.00, 20.00, '0000-00-00'),
(376, 620, 14, 'Boleta', '1', '0376', '2025-11-24 13:23:31', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 3, 'yape', 0.00, 110.00, '0000-00-00'),
(377, 410, 14, 'Boleta', '1', '0377', '2025-11-24 13:24:39', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 3, 'yape', 0.00, 60.00, '0000-00-00'),
(378, 410, 14, 'Boleta', '1', '0378', '2025-11-24 13:39:52', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'contado', 0.00, 200.00, '0000-00-00'),
(379, 410, 14, 'Boleta', '1', '0379', '2025-11-24 13:40:39', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'contado', 0.00, 15.00, '0000-00-00'),
(380, 621, 14, 'Boleta', '1', '0380', '2025-11-24 13:42:43', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 3, 'yape', 0.00, 60.00, '0000-00-00'),
(381, 410, 14, 'Boleta', '1', '0381', '2025-11-24 13:43:25', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 3, 'contado', 0.00, 40.00, '0000-00-00'),
(382, 623, 14, 'Boleta', '1', '0382', '2025-11-27 13:18:46', 0.00, 50.85, 9.15, 60.00, 'Aceptado', '', 10, 'contado', 0.00, 60.00, '0000-00-00'),
(383, 624, 14, 'Boleta', '1', '0383', '2025-11-27 17:57:50', 0.00, 211.86, 38.14, 250.00, 'Aceptado', '', 10, 'contado', 0.00, 250.00, '0000-00-00'),
(384, 410, 14, 'Boleta', '1', '0384', '2025-11-28 12:22:36', 0.00, 210.17, 37.83, 248.00, 'Aceptado', '', 10, 'contado', 0.00, 248.00, '0000-00-00'),
(385, 410, 14, 'Boleta', '1', '0385', '2025-11-28 19:21:57', 0.00, 169.49, 30.51, 200.00, 'Aceptado', '', 3, 'contado', 0.00, 200.00, '0000-00-00'),
(386, 625, 14, 'Boleta', '1', '0386', '2025-12-02 10:01:07', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 3, 'contado', 0.00, 15.00, '0000-00-00'),
(387, 626, 14, 'Boleta', '1', '0387', '2025-12-02 15:49:15', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 10, 'contado', 0.00, 120.00, '0000-00-00'),
(388, 410, 14, 'Boleta', '1', '0388', '2025-12-08 11:12:57', 0.00, 105.93, 19.07, 125.00, 'Aceptado', '', 10, 'contado', 0.00, 125.00, '0000-00-00'),
(389, 629, 14, 'Boleta', '1', '0389', '2025-12-11 11:47:42', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 10, 'contado', 0.00, 40.00, '0000-00-00'),
(390, 630, 14, 'Boleta', '1', '0390', '2025-12-12 17:41:39', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(391, 410, 14, 'Boleta', '1', '0391', '2025-12-12 17:42:46', 0.00, 76.27, 13.73, 90.00, 'Aceptado', '', 10, 'contado', 0.00, 90.00, '0000-00-00'),
(392, 631, 14, 'Boleta', '1', '0392', '2025-12-12 17:45:59', 0.00, 33.90, 6.10, 40.00, 'Aceptado', '', 10, 'contado', 0.00, 40.00, '0000-00-00'),
(393, 632, 14, 'Boleta', '1', '0393', '2025-12-16 13:52:14', 0.00, 101.69, 18.31, 120.00, 'Aceptado', '', 10, 'contado', 0.00, 120.00, '0000-00-00'),
(394, 633, 14, 'Boleta', '1', '0394', '2025-12-16 14:06:22', 0.00, 144.07, 25.93, 170.00, 'Aceptado', '', 10, 'contado', 0.00, 170.00, '0000-00-00'),
(395, 634, 14, 'Boleta', '1', '0395', '2025-12-16 16:28:16', 0.00, 42.37, 7.63, 50.00, 'Aceptado', '', 10, 'contado', 0.00, 50.00, '0000-00-00'),
(401, 637, 14, 'Boleta', '1', '0396', '2025-12-19 12:34:52', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'contado', 0.00, 20.00, '0000-00-00'),
(402, 637, 14, 'Boleta', '1', '0402', '2025-12-19 12:36:09', 0.00, 16.95, 3.05, 20.00, 'Aceptado', '', 3, 'contado', 0.00, 20.00, '0000-00-00'),
(403, 638, 14, 'Boleta', '1', '0403', '2025-12-23 10:46:40', 0.00, 93.22, 16.78, 110.00, 'Aceptado', '', 10, 'contado', 0.00, 110.00, '0000-00-00'),
(404, 639, 14, 'Boleta', '1', '0404', '2025-12-23 14:24:14', 0.00, 12.71, 2.29, 15.00, 'Aceptado', '', 10, 'contado', 0.00, 15.00, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_pago`
--

CREATE TABLE `venta_pago` (
  `idpago` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `fecha_pago` datetime NOT NULL,
  `usuario_registro` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_swedish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `venta_pago`
--

INSERT INTO `venta_pago` (`idpago`, `idventa`, `monto`, `fecha_pago`, `usuario_registro`, `observaciones`) VALUES
(1, 15, 100.00, '2025-07-28 19:58:44', 'EDUARDO CASTAÑEDA ', 'test'),
(2, 15, 50.00, '2025-07-28 19:59:27', 'EDUARDO CASTAÑEDA ', 'prueba'),
(3, 64, 50.00, '2025-08-13 20:32:16', 'EDUARDO CASTAÑEDA ', ''),
(4, 65, 150.00, '2025-08-13 20:33:42', 'EDUARDO CASTAÑEDA ', 'CANCELA'),
(5, 66, 200.00, '2025-08-13 20:35:45', 'EDUARDO CASTAÑEDA ', '-'),
(6, 66, 500.00, '2025-08-13 20:35:52', 'EDUARDO CASTAÑEDA ', ''),
(7, 80, 50.00, '2025-08-18 11:31:15', 'Zulema Susan linares C', 'yape'),
(8, 80, 50.00, '2025-08-18 11:35:19', 'Zulema Susan linares C', 'efec'),
(9, 81, 300.00, '2025-08-18 11:37:33', 'Zulema Susan linares C', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD KEY `fk_articulo_categoria_idx` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idcontacto`) USING BTREE;

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`idcotizacion`) USING BTREE,
  ADD KEY `fk_venta_persona_idx` (`idcliente`),
  ADD KEY `fk_venta_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD PRIMARY KEY (`iddetalle_cotizacion`) USING BTREE,
  ADD KEY `fk_detalle_cotizacion_cotizacion_idx` (`idcotizacion`) USING BTREE,
  ADD KEY `fk_detalle_cotizacion_articulo_idx` (`idarticulo`) USING BTREE;

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_ingreso_ingreso_idx` (`idingreso`),
  ADD KEY `fk_detalle_ingreso_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `fk_detalle_venta_venta_idx` (`idventa`),
  ADD KEY `fk_detalle_venta_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_ingreso_persona_idx` (`idproveedor`),
  ADD KEY `fk_ingreso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `movimientos_caja`
--
ALTER TABLE `movimientos_caja`
  ADD PRIMARY KEY (`idmovimientocaja`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `type_article`
--
ALTER TABLE `type_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `unidadmedida`
--
ALTER TABLE `unidadmedida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_usuario_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_permiso_idx` (`idpermiso`);

--
-- Indices de la tabla `valores`
--
ALTER TABLE `valores`
  ADD PRIMARY KEY (`idvalores`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_persona_idx` (`idcliente`),
  ADD KEY `fk_venta_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `venta_pago`
--
ALTER TABLE `venta_pago`
  ADD PRIMARY KEY (`idpago`),
  ADD KEY `idventa` (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  MODIFY `iddetalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `movimientos_caja`
--
ALTER TABLE `movimientos_caja`
  MODIFY `idmovimientocaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;

--
-- AUTO_INCREMENT de la tabla `unidadmedida`
--
ALTER TABLE `unidadmedida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `valores`
--
ALTER TABLE `valores`
  MODIFY `idvalores` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT de la tabla `venta_pago`
--
ALTER TABLE `venta_pago`
  MODIFY `idpago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cotizacion_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_persona` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta_pago`
--
ALTER TABLE `venta_pago`
  ADD CONSTRAINT `venta_pago_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
