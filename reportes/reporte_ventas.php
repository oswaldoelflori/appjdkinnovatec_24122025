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
    require_once "../modelos/Venta.php";

    $venta = new Venta();
    $fecha_inicio = isset($_GET["fecha_inicio"]) ? $_GET["fecha_inicio"] : date("Y-m-d");
    $fecha_fin    = isset($_GET["fecha_fin"]) ? $_GET["fecha_fin"] : date("Y-m-d");

    $rspta = $venta->listarVentas($fecha_inicio, $fecha_fin,$idusuario);

    $pdf=new PDF_MC_Table();
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',12);
    $pdf->Cell(40,6,'',0,0,'C');
    $pdf->Cell(100,6,'REPORTE DE VENTAS',1,0,'C');
    $pdf->Ln(10);

    $pdf->SetFillColor(232,232,232);
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(28,6,'Fecha',1,0,'C',1);
    $pdf->Cell(40,6,'Cliente',1,0,'C',1);
    $pdf->Cell(30,6,'Doc.',1,0,'C',1);
    $pdf->Cell(30,6,'Numero',1,0,'C',1);
    $pdf->Cell(25,6,'Tipo',1,0,'C',1);
    $pdf->Cell(25,6,'Total',1,0,'C',1);
    $pdf->Ln(10);

    $pdf->SetWidths(array(28,40,30,30,25,25));

$totalCredito = 0;
$totalYape = 0;
$totalPlin = 0;
$totalTransferencia = 0;
$totalContado = 0;
$totalEfectivo = 0;
$totalGeneral = 0;


    while ($reg = $rspta->fetch_object()) {

   if (strtolower($reg->forma_pago) == 'credito') {
    $pdf->SetTextColor(255,0,0);
    $totalCredito += $reg->total_venta;
} elseif (strtolower($reg->forma_pago) == 'yape') {
    $pdf->SetTextColor(0,0,255);
    $totalYape += $reg->total_venta;
} elseif (strtolower($reg->forma_pago) == 'plin') {
    $pdf->SetTextColor(0,0,255);
    $totalPlin += $reg->total_venta;
} elseif (strtolower($reg->forma_pago) == 'transferencia') {
    $pdf->SetTextColor(0,0,255);
    $totalTransferencia += $reg->total_venta;
} elseif (strtolower($reg->forma_pago) == 'contado') {
    $pdf->SetTextColor(0,128,0);
    $totalContado += $reg->total_venta;
} elseif (strtolower($reg->forma_pago) == 'efectivo') {
    $pdf->SetTextColor(128,0,128);
    $totalEfectivo += $reg->total_venta;
} else {
    $pdf->SetTextColor(0,0,0);
}

$totalGeneral += $reg->total_venta; // siempre suma al total


        
        $pdf->SetFont('Arial','',10);
        $pdf->Row(array($reg->fecha, utf8_decode($reg->cliente), $reg->tipo_comprobante, $reg->num_comprobante,utf8_decode($reg->forma_pago),  number_format($reg->total_venta,2)));
    }
   $pdf->Ln(10);
$pdf->SetFont('Arial','B',12);

// Crédito
$pdf->SetTextColor(255,0,0);
$pdf->Cell(153,6,'TOTAL CREDITO:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalCredito,2),1,1,'R',1);

// Yape
$pdf->SetTextColor(0,0,255);
$pdf->Cell(153,6,'TOTAL YAPE:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalYape,2),1,1,'R',1);

// Plin
$pdf->Cell(153,6,'TOTAL PLIN:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalPlin,2),1,1,'R',1);

// Transferencia
$pdf->Cell(153,6,'TOTAL TRANSFERENCIA:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalTransferencia,2),1,1,'R',1);

// Contado
$pdf->SetTextColor(0,128,0);
$pdf->Cell(153,6,'TOTAL CONTADO:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalContado,2),1,1,'R',1);

// Efectivo
$pdf->SetTextColor(128,0,128);
$pdf->Cell(153,6,'TOTAL EFECTIVO:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalEfectivo,2),1,1,'R',1);

// General
$pdf->SetTextColor(0,0,0);
$pdf->Cell(153,6,'TOTAL GENERAL:',1,0,'R',1);
$pdf->Cell(25,6,number_format($totalGeneral,2),1,1,'R',1);



    $pdf->Output();
}
ob_end_flush();
?>
