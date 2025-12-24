<?php
$direccion = "Lima";

// Activamos el almacenamiento en el buffer
ob_start();
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Validamos la sesión
if (!isset($_SESSION["nombre"])) {
    exit('Debe ingresar al sistema correctamente para visualizar el reporte');
}

// Verificamos permisos
if ($_SESSION['cotizacion'] != 1) {
    exit('No tiene permiso para visualizar el reporte');
}

// Requerimos archivos necesarios
require_once "../config/Conexion.php";
require('Factura2.php');
require_once "../modelos/Cotizacion.php";
require_once "Letras.php";

// Establecemos los datos de la empresa
$logo = LOGO;
$ext_logo = EXT_LOGO;
$email = "informes@frsystem.com.pe";
$bcpsoles = bcpsoles;
$bcpdolares = "";
$cuentadetracciones = cuentadetracciones;


// Validamos el parámetro 'id'
if (!isset($_GET["id"]) || !is_numeric($_GET["id"])) {
    exit('Parámetro inválido');
}

$cotizacion = new Cotizacion();
$rsptac = $cotizacion->cotizacioncabecera($_GET["id"]);

if (!$rsptac) {
    exit('No se pudo obtener la cabecera de la cotización');
}

$regc = $rsptac->fetch_object();
if (!$regc) {
    exit('La cotización no existe o fue eliminada');
}

// Datos del cliente
$contacto = $regc->nombre . ' ' . $regc->apellido;
$direccion_cliente = substr($regc->direccion, 0, 94);

// Configuración del PDF
$item = 1;
$y = 73;
$registrosPorPagina = 16;
$lineCount = 0;

// Obtenemos detalles de la cotización
$rsptad = $cotizacion->cotizaciondetalle($_GET["id"]);

if (!$rsptad) {
    exit('No se pudo obtener los detalles de la cotización');
}

$estadoImpresion = true;
$CantidadRegistros = $rsptad->num_rows;
$registrosPorPagina = 28; // Máximo de registros por página
$numeroHojas = ceil($CantidadRegistros / $registrosPorPagina);
$TIPO_MONEDA = $regc->tipomoneda;

$pdf = new PDF_Invoice('P', 'mm', 'A4');
$item = 1; // Contador de ítems
$y = 73;   // Posición inicial en la primera página

for ($i = 1; $i <= $numeroHojas; $i++) {
    // Agregar nueva página y configurar cabecera
    $pdf->AddPage();
    configurarCabecera($pdf, $regc, $direccion_cliente, $contacto, $regc->tipomoneda, $logo, $ext_logo, $bcpsoles, $bcpdolares, $cuentadetracciones);

    // Configurar encabezados de la tabla
    $pdf->SetFont("Arial", "B", 7);
    $ITEM = utf8_decode("Itém");
    $UNIDAD = utf8_decode("U/Medida");
    $CODIGO = utf8_decode("Código");
    $DESCRIPCION = utf8_decode("Descripción");
    $CANTIDAD = utf8_decode("Cantidad");
    $PRECIO = utf8_decode("Precio");
    $SUBTOTAL = utf8_decode("SubTotal");

    $cols = array(
        $ITEM => 9,
        $UNIDAD => 15,
        $CODIGO => 19,
        $DESCRIPCION => 83,
        $CANTIDAD => 14,
        $PRECIO => 25,
        $SUBTOTAL => 25
    );
    $pdf->addCols($cols);

    $cols = array(
        $ITEM => "C",
        $UNIDAD => "C",
        $CODIGO => "C",
        $DESCRIPCION => "L",
        $CANTIDAD => "C",
        $PRECIO => "R",
        $SUBTOTAL => "R"
    );
    $pdf->addLineFormat($cols);

    // Procesar registros para la página actual
    $lineCount = 0;
    while ($lineCount < $registrosPorPagina && $regd = $rsptad->fetch_object()) {
        $pdf->SetFont("Arial", "", 7);
        $line = array(
            $ITEM => $item,
            $UNIDAD => $regd->unidadmedida,
            $CODIGO => strtoupper($regd->codigo),
            $DESCRIPCION => strtoupper(utf8_decode(htmlspecialchars_decode($regd->articulo))),
            $CANTIDAD => "$regd->cantidad",
            $PRECIO => "$regd->precio_cotizacion",
            $SUBTOTAL => "$regd->subtotal"
        );
        $size = $pdf->addLine($y, $line);
        $y += $size + 3; // Ajustar posición vertical
        $item++;
        $lineCount++;
    }

    // Configurar pie de la página
    configurarPie($pdf, $regc, $TIPO_MONEDA, $bcpsoles, $bcpdolares, $cuentadetracciones);

    // Reiniciar posición para la siguiente página
    $y = 76;
}


function configurarCabecera($pdf, $regc, $direccion_cliente, $contacto, $TIPO_MONEDA, $logo, $ext_logo, $bcpsoles, $bcpdolares, $cuentadetracciones) {
    
    // Configurar los datos de la empresa sin bordes
    $pdf->addSociete(
        utf8_decode(NOMBRE_EMPRESA),
        utf8_decode(ADDRESS) ,
        $logo,
        $ext_logo // Ya ajustado previamente sin bordes
    );

    // Configurar encabezado de cotización (fact_dev)
    $pdf->fact_dev(
        utf8_decode("COTIZACIÓN"),
        "C00" . "$regc->serie_comprobante-$regc->num_comprobante",
        RUC
    ); // Asegúrate de que fact_dev no dibuje bordes.

    // Configurar otros textos como temporales
    $pdf->temporaire(""); // Verifica este método para bordes, si los dibuja elimínalos.

    // Agregar dirección del cliente sin bordes
    $pdf->addClientAdresse(
        utf8_decode(htmlspecialchars_decode($regc->cliente)),
        utf8_decode($direccion_cliente),
        $regc->num_documento,
        $regc->email,
        $regc->telefono,
        $regc->fecha2,
        $TIPO_MONEDA,
        'CONTADO',
        utf8_decode(htmlspecialchars_decode($contacto)) ,
        "        Obs. " . $regc->observaciones,
        $regc->usuario
    ); // Asegúrate de que addClientAdresse no incluya bordes.
}

function configurarPie($pdf, $regc, $TIPO_MONEDA, $bcpsoles, $bcpdolares, $cuentadetracciones) {
    // Incluir la clase para convertir números a letras
    require_once "Letras.php";
    $V = new EnLetras();

    // Determinar el tipo de moneda y sus propiedades
    if ($TIPO_MONEDA == "DOLARES") {
        $EXT_MSJ = "DOLARES AMERICANOS";
        $MONEY = "$ ";
    } else {
        $EXT_MSJ = "SOLES";
        $MONEY = "S/ ";
    }

    // Convertir el total en letras
    $con_letra = strtoupper($V->ValorEnLetras($regc->total_cotizacion, $EXT_MSJ));

    // Añadir el cuadro con información de totales
    $pdf->addCadreTVAs(NOMBRE_EMPRESA, $con_letra, $bcpsoles, $bcpdolares, $cuentadetracciones);

    // Mostrar el desglose de impuestos
    $pdf->addTVAs($regc->subtotal, $regc->igv, $regc->total_cotizacion, $MONEY);

    // Añadir el cuadro del IGV
    $pdf->addCadreEurosFrancs("IGV 18%");
}


// Salida del PDF
$pdf->Output("cotizacion-nro-" . $regc->serie_comprobante . "_" . $regc->num_comprobante . ".pdf", "I");
ob_end_flush();
?>
