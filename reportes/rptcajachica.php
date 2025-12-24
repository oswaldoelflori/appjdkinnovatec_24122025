<?php
ob_start();
if (strlen(session_id()) < 1)
  session_start();

if (!isset($_SESSION["nombre"]))
{
  echo 'Debe ingresar al sistema correctamente para visualizar el reporte';
}
else
{
require('PDF_MC_Table.php');
require_once "../modelos/Caja.php";
require_once "../config/Conexion.php";

$fecha_desde = isset($_GET['fecha_desde']) ? $_GET['fecha_desde'] : date('Y-m-d');
$fecha_hasta = isset($_GET['fecha_hasta']) ? $_GET['fecha_hasta'] : $fecha_desde;
if(!DateTime::createFromFormat('Y-m-d',$fecha_desde)) { $fecha_desde = date('Y-m-d'); }
if(!DateTime::createFromFormat('Y-m-d',$fecha_hasta)) { $fecha_hasta = $fecha_desde; }
$caja = new Caja();
$movimientos = $caja->listar($fecha_desde, $fecha_hasta, '', '');
$resumen = $caja->resumenDiario($fecha_desde, $fecha_hasta);

$pdf = new PDF_MC_Table();
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);
$pdf->Cell(190,6,NOMBRE_EMPRESA,0,1,'C');
$pdf->Cell(190,6,'REPORTE DE CAJA CHICA - '.date('d/m/Y', strtotime($fecha_desde)).' al '.date('d/m/Y', strtotime($fecha_hasta)),0,1,'C');
$pdf->Ln(4);

$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(30,6,'Fecha',1,0,'C',1);
$pdf->Cell(20,6,'Tipo',1,0,'C',1);
$pdf->Cell(30,6,'Monto',1,0,'C',1);
$pdf->Cell(110,6,'Concepto',1,0,'C',1);
$pdf->Cell(110,6,'Empleado',1,0,'C',1);
$pdf->Ln();
$pdf->SetWidths(array(30,20,30,90,90));
while($reg = $movimientos->fetch_object())
{
    $pdf->SetFont('Arial','',10);
    if($reg->tipo=='egreso'){
        $pdf->SetTextColor(255,0,0);
    }else{
        $pdf->SetTextColor(0,0,0);
    }
    $pdf->Row(array($reg->fecha,$reg->tipo,$reg->monto,utf8_decode($reg->concepto),utf8_decode($reg->responsable)));
}
$pdf->SetTextColor(0,0,0);
$pdf->Ln(5);
$pdf->Cell(40,6,'Total Ingresos: '.$resumen['total_ingresos'],0,1);
$pdf->Cell(40,6,'Total Egresos: '.$resumen['total_egresos'],0,1);
$saldo = $resumen['total_ingresos'] - $resumen['total_egresos'];
$pdf->Cell(40,6,'Saldo del Periodo: '.$saldo,0,1);

$pdf->Output();
}
ob_end_flush();
?>
