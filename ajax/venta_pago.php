<?php
if (session_status() == PHP_SESSION_NONE) session_start();

require_once "../modelos/VentaPago.php";
$venta_pago = new VentaPago();

// === Entrada general de datos ===
function input($key, $default = "", $clean = true)
{
    return isset($_POST[$key]) 
        ? ($clean ? limpiarCadena($_POST[$key]) : $_POST[$key]) 
        : $default;
}

$idventa       = input("idventa");
$monto         = input("monto");
$observaciones = input("observaciones");

// Usuario de sesión
$idusuario = isset($_SESSION["idusuario"]) ? $_SESSION["idusuario"] : "";
$usuario   = isset($_SESSION["nombre"]) ? $_SESSION["nombre"] : "";

switch ($_GET["op"])
{
    case 'guardarPago':
        if (!empty($monto) && !empty($idventa)) {
            $rspta = $venta_pago->insertar($idventa, $monto, $usuario, $observaciones);

            echo json_encode([
                'success' => $rspta ? true : false,
                'message' => $rspta ? 'Pago registrado correctamente.' : 'Error al registrar el pago.'
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Faltan datos obligatorios (venta o monto).'
            ]);
        }
        break;

    case 'eliminar':
        $idpago = input("idpago");
        if (!empty($idpago)) {
            $rspta = $venta_pago->eliminar($idpago);
            echo $rspta ? "Pago eliminado correctamente" : "No se pudo eliminar el pago";
        } else {
            echo "ID de pago no proporcionado";
        }
        break;

    case 'listarPagos':
        $rspta = $venta_pago->listarPagos($idventa);


        $data = array();
        $contador = 1;

        while ($reg = $rspta->fetch_object()) {
            $data[] = array(
                "0" => $contador++,
                "1" => number_format($reg->monto, 2, '.', ','),
                "2" => $reg->fecha_pago,
                "3" => $reg->usuario_registro,
                "4" => $reg->observaciones,
                "5" => '<button class="btn btn-danger btn-sm" onclick="eliminarPago('.$reg->idpago.')"><i class="fa fa-trash"></i></button>'
            );
        }

        $results = array(
            "sEcho" => 1,
            "iTotalRecords" => count($data),
            "iTotalDisplayRecords" => count($data),
            "aaData" => $data
        );

        echo json_encode($results);
        break;

    default:
        echo json_encode([
            'success' => false,
            'message' => 'Operación no válida.'
        ]);


    case 'totalAbono':
        $rspta = $venta_pago->totalAbono($_POST["idventa"]);

        if ($rspta) {
            echo json_encode([
                'success' => true,
                'total_abono' => $rspta['total_abono'],
                'saldo_pendiente' => $rspta['saldo_pendiente']
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'total_abono' => 0,
                'saldo_pendiente' => 0
            ]);
        }
    break;


    
}
