<?php
require_once "../modelos/Caja.php";
if (strlen(session_id()) < 1)
  session_start();

$caja = new Caja();

$idmovimientocaja = isset($_POST["idmovimientocaja"]) ? limpiarCadena($_POST["idmovimientocaja"]) : "";
$fecha = date('Y-m-d');
/*$fecha = isset($_POST["fecha"]) ? limpiarCadena($_POST["fecha"]) : "";*/// Oflores 15102025
$monto = isset($_POST["monto"]) ? limpiarCadena($_POST["monto"]) : 0;
$concepto = isset($_POST["concepto"]) ? limpiarCadena($_POST["concepto"]) : "";
$tipo = isset($_POST["tipo"]) ? limpiarCadena($_POST["tipo"]) : "";
$idusuario = isset($_POST["idusuario"]) ? limpiarCadena($_POST["idusuario"]) : "";
$tipoGasto = isset($_POST["TipoDeGasto"]) ? limpiarCadena($_POST["TipoDeGasto"]) : "";
$medioPago = isset($_POST["MedioDePago"]) ? limpiarCadena($_POST["MedioDePago"]) : "";
switch ($_GET["op"]) {
    case 'guardaryeditar':
        if ($monto <= 0 || $concepto == '' || $tipoGasto == '' || $medioPago == '') {
            echo "Datos inválidos";
        } else {
            $rspta = $caja->insertar($fecha, $monto, $concepto, $tipo, $idusuario, $tipoGasto, $medioPago);
            echo $rspta ? "Registro guardado" : "No se pudo registrar";
        }
    break;

    case 'listar':
      
        $fecha_desde = isset($_GET['fecha_desde']) ? limpiarCadena($_GET['fecha_desde']) : "";
        $fecha_hasta = isset($_GET['fecha_hasta']) ? limpiarCadena($_GET['fecha_hasta']) : "";
        $fecha_desde = ($fecha_desde!=="" && DateTime::createFromFormat('Y-m-d',$fecha_desde)) ? $fecha_desde : "";
        $fecha_hasta = ($fecha_hasta!=="" && DateTime::createFromFormat('Y-m-d',$fecha_hasta)) ? $fecha_hasta : "";
        $tipo = isset($_GET['tipo']) ? limpiarCadena($_GET['tipo']) : "";
        $responsable = isset($_GET['responsable']) ? limpiarCadena($_GET['responsable']) : "";
        $rspta = $caja->listar($fecha_desde, $fecha_hasta, $tipo, $responsable);

        $data = Array();
        while ($reg=$rspta->fetch_object()){
            $data[] = array(
                "0"=>$reg->fecha,
                "1"=>$reg->tipo,
                "2"=>$reg->monto,
                "3"=>$reg->concepto,
                "4"=>$reg->responsable
            );
        }
        $results = array(
            "sEcho"=>1,
            "iTotalRecords"=>count($data),
            "iTotalDisplayRecords"=>count($data),
            "aaData"=>$data);
        echo json_encode($results);
    break;

    case 'selectUsuario':
        require_once "../modelos/Usuario.php";
        $usuario = new Usuario();
        $rspta = $usuario->listarEmpleados();
        while ($reg = $rspta->fetch_object())
        {
            echo '<option value=' . $reg->idusuario . '>' . $reg->nombre . '</option>';
        }
    break;

    case 'resumenDiario':
        $fecha = isset($_GET['fecha']) ? limpiarCadena($_GET['fecha']) : date('Y-m-d');
        $tipo = isset($_GET['tipo']) ? limpiarCadena($_GET['tipo']) : "";
        $responsable = isset($_GET['responsable']) ? limpiarCadena($_GET['responsable']) : "";
        $rspta = $caja->resumenDiario($fecha, $fecha, $tipo, $responsable);
        echo json_encode($rspta);
    break;
}
?>
