<?php
ob_start();
if (strlen(session_id()) < 1) {
  session_start();
}

if (!isset($_SESSION["nombre"])) {
  echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
} else {
  require_once "SimpleXLSXGen.php";
  require_once "../modelos/Caja.php";
  require_once "../config/Conexion.php";

  // Sanitización de parámetros recibidos
  $fecha_desde = isset($_GET['fecha_desde']) ? limpiarCadena($_GET['fecha_desde']) : date('Y-m-d');
  $fecha_hasta = isset($_GET['fecha_hasta']) ? limpiarCadena($_GET['fecha_hasta']) : $fecha_desde;
  $tipo = isset($_GET['tipo']) ? limpiarCadena($_GET['tipo']) : '';
  $responsable = isset($_GET['responsable']) ? limpiarCadena($_GET['responsable']) : '';

  // Validación básica de formato de fecha
  if (!DateTime::createFromFormat('Y-m-d', $fecha_desde)) {
    $fecha_desde = date('Y-m-d');
  }
  if (!DateTime::createFromFormat('Y-m-d', $fecha_hasta)) {
    $fecha_hasta = $fecha_desde;
  }

  $caja = new Caja();
  // Se replica el mismo comportamiento del reporte PDF existente
  $movimientos = $caja->listar($fecha_desde, $fecha_hasta, '', '');
  $resumen = $caja->resumenDiario($fecha_desde, $fecha_hasta);

  // Encabezados del reporte, replicando el contenido del PDF
  $data = array();
  $data[] = array(NOMBRE_EMPRESA);
  $data[] = array('REPORTE DE CAJA CHICA - ' . date('d/m/Y', strtotime($fecha_desde)) . ' al ' . date('d/m/Y', strtotime($fecha_hasta)));
  $data[] = array();
  $data[] = array(
    array('value' => 'Fecha', 'style' => 'header'),
    array('value' => 'Tipo', 'style' => 'header'),
    array('value' => 'Monto', 'style' => 'header'),
    array('value' => 'Concepto', 'style' => 'header'),
    array('value' => 'Medio de Pago', 'style' => 'header'),
    array('value' => 'Empleado', 'style' => 'header')
  );

  while ($reg = $movimientos->fetch_object()) {
    $monto = (float)$reg->monto;
    $montoCell = array('value' => $monto);
    if ($monto < 0) {
      $montoCell['style'] = 'negative';
    }

    $data[] = array(
      $reg->fecha,
      $reg->tipo,
      $montoCell,
      $reg->concepto,
      isset($reg->medio_pago) ? $reg->medio_pago : '',
      $reg->responsable
    );
  }

  $data[] = array();
  $totalIngresos = isset($resumen['total_ingresos']) ? (float)$resumen['total_ingresos'] : 0;
  $totalEgresos = isset($resumen['total_egresos']) ? (float)$resumen['total_egresos'] : 0;
  $saldo = $totalIngresos - $totalEgresos;
  $totalIngresosCell = array('value' => $totalIngresos);
  if ($totalIngresos < 0) {
    $totalIngresosCell['style'] = 'negative';
  }

  $totalEgresosCell = array('value' => $totalEgresos);
  if ($totalEgresos < 0) {
    $totalEgresosCell['style'] = 'negative';
  }

  $saldoCell = array('value' => $saldo);
  if ($saldo < 0) {
    $saldoCell['style'] = 'negative';
  }

  $data[] = array('Total Ingresos:', $totalIngresosCell);
  $data[] = array('Total Egresos:', $totalEgresosCell);
  $data[] = array('Saldo del Periodo:', $saldoCell);

  // Nombre de archivo dinámico con rango de fechas
  $filename = 'reporte_caja_chica_' . $fecha_desde . '_al_' . $fecha_hasta . '.xlsx';
  $xlsx = SimpleXLSXGen::fromArray($data);
  $xlsx->downloadAs($filename);
}
ob_end_flush();
?>