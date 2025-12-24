<?php
ob_start();

if (strlen(session_id()) < 1) {
    session_start();
}

if (!isset($_SESSION["nombre"])) {
    die('Debe ingresar al sistema correctamente para visualizar el reporte');
}

if (empty($_SESSION['cotizacion']) || $_SESSION['cotizacion'] != 1) {
    die('No tiene permiso para visualizar el reporte');
}

if (empty($_GET["id"]) || !is_numeric($_GET["id"])) {
    die('ID de venta inválido');
}

require_once "../config/Conexion.php";
/* require('Factura_paraFactura.php'); */
require('Factura2.php');
require_once "../modelos/Venta.php";

// Validar existencia de constantes necesarias
defined('LOGO') or define('LOGO', '');
defined('EXT_LOGO') or define('EXT_LOGO', '');
defined('bcpsoles') or define('bcpsoles', '');
defined('cuentadetracciones') or define('cuentadetracciones', '');
defined('NOMBRE_EMPRESA') or define('NOMBRE_EMPRESA', '');
defined('ADDRESS') or define('ADDRESS', '');
defined('RUC') or define('RUC', '');

$venta = new Venta();
$id_venta = (int)$_GET["id"];

// Obtener cabecera de venta
$rsptav = $venta->ventacabecera($id_venta);
if (!$rsptav || $rsptav->num_rows == 0) {
    die('Venta no encontrada');
}

$regv = $rsptav->fetch_object();
$contacto = $regv->vende_nom_ape ?? '';
$TIPO_MONEDA = $regv->tipomoneda ?? 'SOLES';

// Configurar datos de la empresa
$logo = LOGO;
$ext_logo = EXT_LOGO;
$email = "informes@frsystem.com.pe";
$bcpsoles = bcpsoles;
$bcpdolares = "";
$cuentadetracciones = cuentadetracciones;

// Función para formatear caracteres especiales
function formatUtf8($value) {
    return mb_convert_encoding($value, 'ISO-8859-1', 'UTF-8');
}

 

$pdf = new PDF_Invoice('P', 'mm', 'A4');
$pdf->AddPage();

// Encabezado de la factura
$pdf->addSociete(
    utf8_decode(NOMBRE_EMPRESA),
    utf8_decode(ADDRESS),
    $logo,
    $ext_logo
);

$pdf->fact_dev(
    formatUtf8("VENTA"), 
    "F00{$regv->serie_comprobante}-{$regv->num_comprobante}", 
    RUC
);

$pdf->temporaire("");

// Dirección del cliente (con validación de longitud)
$direccion_cliente = substr($regv->direccion ?? '', 0, 94);

// Detalles del cliente
$pdf->addClientAdresse(
    formatUtf8(htmlspecialchars_decode($regv->cliente ?? '')),
    formatUtf8($direccion_cliente),
    $regv->num_documento ?? '',
    $regv->email ?? '',
    $regv->telefono ?? '',
    formatDateMysql($regv->fecha ?? ''),
    $TIPO_MONEDA,
    $regv->forma_pago ?? 'CONTADO',
    $contacto,
    "Obs. " . ($regv->observaciones ?? ''),
     $regv->usuario
);

// Columnas de la tabla
$pdf->SetFont("Arial", "B", 7);
$cols = array(
    formatUtf8("Itém") => 7,
    formatUtf8("U/Medida") => 15,
    formatUtf8("Código") => 20,
    formatUtf8("Descripción") => 84,
    formatUtf8("Cantidad") => 14,
    formatUtf8("Precio") => 25,
    formatUtf8("SubTotal") => 25
);

$pdf->addCols($cols);

$colAlign = array(
    formatUtf8("Itém") => "C",
    formatUtf8("U/Medida") => "C",
    formatUtf8("Código") => "C",
    formatUtf8("Descripción") => "L",
    formatUtf8("Cantidad") => "C",
    formatUtf8("Precio") => "R",
    formatUtf8("SubTotal") => "R"
);

$pdf->addLineFormat($colAlign);

// Obtener detalles de la venta
$rsptad = $venta->ventadetalle($id_venta);
if (!$rsptad) {
    die('Error al obtener detalles de la venta');
}

$y = 73;
$item = 1;

while ($regd = $rsptad->fetch_object()) {
    $pdf->SetFont("Arial", "", 7);
    
    $line = array(
        formatUtf8("Itém") => $item,
        formatUtf8("U/Medida") => $regd->unidadmedida ?? '',
        formatUtf8("Código") => strtoupper($regd->codigo ?? ''),
        formatUtf8("Descripción") => strtoupper(formatUtf8(htmlspecialchars_decode($regd->articulo ?? ''))),
        formatUtf8("Cantidad") => $regd->cantidad ?? '0',
        formatUtf8("Precio") => number_format($regd->precio_venta ?? 0, 2),
        formatUtf8("SubTotal") => number_format($regd->subtotal ?? 0, 2)
    );
    
    $size = $pdf->addLine($y, $line);
    $y += $size + 3;
    $item++;
}

// Convertir total a letras
require_once "Letras.php";
$V = new EnLetras();

if ($TIPO_MONEDA == "DOLARES") {
    $EXT_MSJ = "DOLARES AMERICANOS";
    $MONEY = "$ ";
    $bcpdolares = bcpdolares ?? '';
    $bcpsoles = '';
} else {
    $EXT_MSJ = "SOLES";
    $MONEY = "S/ ";
    $bcpdolares = '';
}

$con_letra = strtoupper($V->ValorEnLetras($regv->total_venta, $EXT_MSJ));

// Pie de página con totales
$pdf->addCadreTVAs(
    NOMBRE_EMPRESA,
    $con_letra,
    $bcpsoles,
    $bcpdolares,
    $cuentadetracciones
);

$pdf->addTVAs(
    $regv->subtotal ?? 0,
    $regv->igv ?? 0,
    $regv->total_venta ?? 0,
    $MONEY
);

$pdf->addCadreEurosFrancs("IGV " . ($regv->igv ?? 0) . "%");

// Salida del PDF
$pdf->Output(
    "boleta-nro-{$regv->serie_comprobante}_{$regv->num_comprobante}.pdf",
    "I"
);

ob_end_flush();
?>