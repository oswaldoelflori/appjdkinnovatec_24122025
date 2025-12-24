<?php
if (session_status() == PHP_SESSION_NONE) session_start();
require_once "../modelos/Venta.php";
$venta = new Venta();

// === Entrada general de datos ===
function input($key, $default = "", $clean = true)
{
    return isset($_POST[$key]) 
        ? ($clean ? limpiarCadena($_POST[$key]) : $_POST[$key]) 
        : $default;
}

$idventa           = input("idventa");
$idcliente         = input("idcliente");
$idusuario         = $_SESSION["idusuario"];
$tipo_comprobante  = input("tipo_comprobante");
$serie_comprobante = '1'; // Fijo
$num_comprobante   = input("num_comprobante");
$fecha_hora        = input("fecha_hora");
$impuesto          = input("impuesto");

$idvendedor_tabla  = input("idvendedor_tabla");
$nombre_vendedor   = input("nombre_vendedor");
$idcontacto_tabla  = input("idcontacto_tabla");
$quotation         = input("quotation");

$forma_pago        = input('forma_pago', 'contado');
$monto_pagado      = input('monto_pagado', '0');
$saldo_pendiente   = input('saldo_pendiente', '0');
$fecha_vencimiento = input('fecha_vencimiento');

$idvendedor = isset($_POST["idvendedor"]) ? intval($_POST["idvendedor"]) : "";
$nombre     = input("nombre");
$apellido   = input("apellido");
$dni        = input("dni");
$email      = input("email");
$celular    = input("celular");
$whatsapp   = input("whatsapp");


if (isset($_POST["idarticulo_obtengoDeCotizacion"]))
{
    $subtotal     = input("txtSubTotal_obtengoDeCotizacion");
    $igv          = input("txtIgv_obtengoDeCotizacion");
    $total_venta  = input("txtTotal_venta_obtengoDeCotizacion");

    $articulosCotizacion = [
                    'ids'       => $_POST["idarticulo_obtengoDeCotizacion"],
                    'cant'      => $_POST["cantidad_obtengoDeCotizacion"],
                    'precio'    => $_POST["precio_venta_obtengoDeCotizacion"],
                    'descuento' => $_POST["descuento_obtengoDeCotizacion"],
                ];

} elseif (isset($_POST["cantidad"])) {

    $subtotal     = input("txtSubTotal");
    $igv          = input("txtIgv");
    $total_venta  = input("total_venta");

    $articulosVentaDirecta = [
                    'ids'       => $_POST["idarticulo"],
                    'cant'      => $_POST["cantidad"],
                    'precio'    => $_POST["precio_venta"],
                    'descuento' => $_POST["descuento"],
                ];
}

switch ($_GET["op"])
{
    case 'guardaryeditar':
        if (empty($idventa)) {
            if (empty($idcontacto_tabla)) {
                echo "Registre el contacto";
                break;
            }

            $rspta = isset($_POST["idarticulo_obtengoDeCotizacion"])
                ? $venta->insertar(
                    $idcliente, $idusuario, $tipo_comprobante, $serie_comprobante,
                    $num_comprobante, $fecha_hora, $subtotal, $igv, $total_venta,
                    $articulosCotizacion['ids'],
                    $articulosCotizacion['cant'],
                    $articulosCotizacion['precio'],
                    $articulosCotizacion['descuento'],
                    $idcontacto_tabla, $forma_pago,
                    $monto_pagado, $saldo_pendiente, $fecha_vencimiento
                )
                : $venta->insertarVentaDirecta(
                    $idcliente, $idusuario, $tipo_comprobante, $serie_comprobante,
                    $num_comprobante, $fecha_hora, $subtotal, $igv, $total_venta,
                    $articulosVentaDirecta['ids'],
                    $articulosVentaDirecta['cant'],
                    $articulosVentaDirecta['precio'],
                    $articulosVentaDirecta['descuento'],
                    $idcontacto_tabla, $forma_pago,
                    $monto_pagado, $saldo_pendiente, $fecha_vencimiento
            );

            echo $rspta ? "Venta registrada" : "No se registraron todos los datos de la venta satisfactoriamente";
        } else {
            if (empty($idventa)) {
                echo "ID de venta no válido";
                break;
            }

            $detalle = null;

            if (isset($_POST["idarticulo_obtengoDeCotizacion"])) {
                $detalle = $articulosCotizacion;
            } elseif (isset($_POST["cantidad"])) {
                $detalle = $articulosVentaDirecta;
            }

            if (!$detalle || empty($detalle['ids'])) {
                echo "No se recibieron productos para actualizar";
                break;
            }

            $validaArrays = count($detalle['ids']) === count($detalle['cant'])
                && count($detalle['ids']) === count($detalle['precio'])
                && count($detalle['ids']) === count($detalle['descuento']);

            if (!$validaArrays) {
                echo "Los datos del detalle de la venta son inconsistentes";
                break;
            }

            $rspta = $venta->actualizarVenta(
                $idventa,
                $idcliente,
                $idusuario,
                $tipo_comprobante,
                $serie_comprobante,
                $num_comprobante,
                $fecha_hora,
                $subtotal,
                $igv,
                $total_venta,
                $detalle['ids'],
                $detalle['cant'],
                $detalle['precio'],
                $detalle['descuento'],
                $idcontacto_tabla,
                $forma_pago,
                $monto_pagado,
                $saldo_pendiente,
                $fecha_vencimiento
            );

            echo $rspta ? "Venta actualizada" : "No se pudo actualizar la venta";
        }
    break;
    
    case 'obtenerCorrelativoVenta':
    $rspta = $venta->obtenerCorrelativoVenta(); // debe retornar un array (ejecutarConsultaSimpleFila)
    if ($rspta) {
        echo json_encode([
            'success' => true,
            'correlativo' => $rspta['correlativo_siguiente'],
        ]);
    } else {
        echo json_encode([
            'success' => false,
            'correlativo' => '0000',
        ]);
    }
   break;


    case 'anular':
        $rspta=$venta->anular($idventa);
        echo $rspta ? "Venta anulada" : "Venta no se puedo anular";
    break;
    
    case 'mostrar':
        $rspta=$venta->mostrar($idventa);
        echo json_encode($rspta);
    break;

    case 'listarDetalle':
        //Obtiene el idventa
        $id=$_GET['id']; 

        $rspta = $venta->listarDetalle($id);
        $total=0;
        echo '
        <thead style="background-color:#A9D0F5">
        <th>Opciones</th>
        <th>Artículo</th>
        <th>Cantidad</th>
        <th>Precio Venta</th>
        <th>Descuento</th>
        <th>Subtotal</th>
        </thead>';
        while ($reg = $rspta->fetch_object())
        {
            echo '<tr class="filas"><td></td><td>'.$reg->nombre. ' - '. $reg->iddetalle_venta.'</td><td>'.$reg->cantidad.'</td><td>'.$reg->precio_venta.'</td><td>'.$reg->descuento.'</td><td>'.$reg->subtotal.'</td></tr>';
            $total =$total+($reg->precio_venta*$reg->cantidad-$reg->descuento);
        }
        echo '
        <tfoot>
            <th>TOTAL</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th><h4 id="total">S/ '. $total.'</h4> <input type="hidden" name="total_venta" id="total_venta"> </th>
        </tfoot>';
    break;

    case 'listar':

        $fecha_inicio = isset($_GET['fecha_inicio']) ? $_GET['fecha_inicio'] : '';
        $fecha_fin    = isset($_GET['fecha_fin']) ? $_GET['fecha_fin'] : '';

        $rspta=$venta->listarVentas($fecha_inicio, $fecha_fin,$idusuario);
        $data = Array();
        while ($reg=$rspta->fetch_object())
       {

    $colorPago = '';
    switch(strtolower($reg->forma_pago)){
        case 'yape':
            $colorPago = 'label-yape';
            break;
        case 'plin':
            $colorPago = 'label-plin';
            break;
        case 'efectivo':
            $colorPago = 'label-efectivo';
            break;
        case 'credito':
            $colorPago = 'label-credito';
            break;
        default:
            $colorPago = 'label-default'; // por si no coincide
            break;
    }

            if($reg->tipo_comprobante=='Ticket')
            {
                $url='../reportes/exTicket.php?id=';
            }
            else{
                $url='../reportes/exFactura.php?id=';

            }

            if (strtolower($reg->forma_pago) === 'credito') {
                $col7 = '<button class="btn btn-sm btn-danger btn-credito" data-id="'.$reg->idventa.'">Crédito</button>';
            } else {
                $col7 = '<span class="label '.$colorPago.'">'.$reg->forma_pago.'</span>';
            }

           $data[]=array(
            "0"=>($reg->estado=='Aceptado')?'<button class="btn btn-warning" onclick="mostrar('.$reg->idventa.')"><i class="fa fa-eye"></i></button>'.
                ' <button class="btn btn-danger" onclick="anular('.$reg->idventa.')"><i class="fa fa-close"></i></button>'
                .' <a class="btn btn-info" target="_blank" href="'.$url.$reg->idventa.'"> <i class="fa fa-print"></a>':
                ' <button class="btn btn-danger" onclick="anular('.$reg->idventa.')"><i class="fa fa-close"></i></button>'.'<button class="btn btn-warning" onclick="mostrar('.$reg->idventa.')"><i class="fa fa-eye"></i></button>',

            "1"=>$reg->fecha,
            "2"=>$reg->cliente . " - ".$reg->idventa,
            "3"=>$reg->usuario,
            "4"=>$reg->tipo_comprobante,
            "5"=>$reg->serie_comprobante. '-' .$reg->num_comprobante,
            "6"=>number_format($reg->total_venta,2,SPD,SPM),
            "7"=>$col7,
            "8"=>($reg->estado=='Aceptado')?'<span class="label bg-green">Aceptado</span>':
            '<span class="label bg-red">Anulado</span>'
        );

        }
        $results= array(
            "sEcho"=>1, //info para datatables
            "iTotalRecords"=>count($data),
            "iTotalDisplayRecords"=>count($data),
            "aaData"=>$data);
        echo json_encode($results);
    break;

    case 'selectCliente':
        require_once "../modelos/Persona.php";
        $persona = new Persona();
        $rspta = $persona->listarC();
        echo '<option value="0" >Seleccione</option>';
        echo '<option value="0">Todos</option>';
        while ($reg = $rspta->fetch_object())
            {
              echo '<option value=' . $reg->idpersona . '>' . $reg->nombre . '</option>';
            }
    break;

     case 'selectVendedor':
        require_once "../modelos/Venta.php";
        $vendedor = new Venta();
        $rspta = $vendedor->selectVendedor();
        echo '<option value="0" >Seleccione</option>';
        while ($reg = $rspta->fetch_object())
            {
              echo '<option value=' . $reg->idcontacto . '>' . $reg->nombre . ' '. $reg->apellido . '</option>';
            }
    break;

    case 'listarArticulosVenta':
    require_once "../modelos/Articulo.php";
    $articulo = new Articulo();

    $tipoFiltro = isset($_GET["tipo"]) ? $_GET["tipo"] : 'Producto';

    $rspta = $articulo->listarActivosVenta();
    $data = array();

    while ($reg = $rspta->fetch_object()) {

        // Aplicar filtro si no es "Todos"
        if ($tipoFiltro !== 'Todos' && strtolower($reg->tipoarticulo) !== strtolower($tipoFiltro)) {
            continue;
        }
                
        // Botón común para todos
        $botonPrincipal = '<button class="btn btn-warning" onclick="agregarDetalle(' . $reg->idarticulo . ',\'' . $reg->nombre . '\',\'' . $reg->precio_venta . '\',\'' . $reg->tipoarticulo . '\')"><span class="fa fa-plus"></span></button>';
        
        // Si es servicio, agregar botón adicional
        if (strtolower($reg->tipoarticulo) === "servicio") {
            $botonServicio = '<button class="btn btn-info ml-1" onclick="agregarDetalleSolo(' . $reg->idarticulo . ',\'' . $reg->nombre . '\',\'' . $reg->precio_venta . '\')">Usar nuevamente</button>';
            $botones = $botonPrincipal . ' ' . $botonServicio;
        } else {
            $botones = $botonPrincipal;
        }

        $data[] = array(
            "0" => $botones,
            "1" => $reg->nombre,
            "2" => $reg->categoria,
            "3" => $reg->codigo,
            "4" => $reg->stock,
            "5" => $reg->precio_venta,
            "6" => $reg->tipoarticulo,
            "7" => '<img width="50" height="50" src="../files/articulos/' . $reg->imagen . '">'
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

    case 'searchquotation':

        require_once "../modelos/Cotizacion.php";
        $cotizacion = new Cotizacion();

        $rspta = $cotizacion->searchquotation($quotation);
        echo json_encode($rspta);
    break;

    case 'searchquotationdetail':

        require_once "../modelos/Cotizacion.php";
        $cotizacion = new Cotizacion();

        $rspta = $cotizacion->searchquotationdetail($quotation);

        $total=0;
        echo '
        <thead style="background-color:#A9D0F5">
        <th>Opciones</th>
        <th>Artículo</th>
        <th>Cantidad</th>
        <th>Precio Venta</th>
        <th>Descuento</th>
        <th>Subtotal</th>
        </thead>';

        $count = 1;
        while ($reg = $rspta->fetch_object())
        {
            echo '<tr class="filas" id="fila'.$count.'">
                <td></td>
                <td><input type="hidden" name="idarticulo_obtengoDeCotizacion[]" value="'.$reg->idarticulo.'"> '.$reg->articulo.'</td>
                <td><input type="text" name="cantidad_obtengoDeCotizacion[]" id="cantidad[]" value="'.$reg->cantidad.'"></td>
                <td><input type="text" name="precio_venta_obtengoDeCotizacion[]" id="precio_venta[]" value="'.$reg->precio_cotizacion.'"></td>
                <td><input type="text" name="descuento_obtengoDeCotizacion[]" value="'.$reg->descuento.'"></td>
                <td>'.$reg->subtotal.'</td>
                <td></td>
            </tr>';

            $total =$total+($reg->precio_cotizacion*$reg->cantidad-$reg->descuento);
            $subtotal_real = $reg->subtotal/1.18;
            $monto_base = $monto_base+$subtotal_real;
            $v_subtotal = $v_subtotal+$reg->subtotal;
            $igv = $v_subtotal-$monto_base;

            $count++;
        }
        function addTwoDecimals($number)
        {
           return  number_format((float)$number, 2, '.', '');
        }

        echo '
                <tfoot>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>SubTotal</td>
                    <td><input placeholder="SubTotal" id="idSubtotal" name="txtSubTotal_obtengoDeCotizacion" value="'.addTwoDecimals( $monto_base)  .'" readonly></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>IGV</td>
                    <td><input placeholder="IGV" id="igv" name="txtIgv_obtengoDeCotizacion" value="'. addTwoDecimals($igv).'" readonly></td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>TOTAL</th>
                    <th>
                        <h4 class="total" id="total">S/ '. addTwoDecimals($v_subtotal).'</h4>
                        <input type="hidden" id="total_venta" name="txtTotal_venta_obtengoDeCotizacion" value="'. addTwoDecimals($v_subtotal).'">
                    </th>
                </tr>
        </tfoot>';

    break;

    case 'marcarCreditoComoContado':
        $id = isset($_POST['idventa']) ? intval($_POST['idventa']) : 0;
        $rspta = $venta->marcarCreditoComoContado($id);
        if ($rspta) {
            echo json_encode(["ok" => true]);
        } else {
            echo json_encode(["ok" => false, "msg" => "No se pudo actualizar"]);
        }
    break;

    case 'exportarVentasPDF':
        $fecha_inicio = isset($_GET['fecha_inicio']) ? $_GET['fecha_inicio'] : '';
        $fecha_fin    = isset($_GET['fecha_fin']) ? $_GET['fecha_fin'] : '';
        $_GET['fecha_inicio'] = $fecha_inicio;
        $_GET['fecha_fin'] = $fecha_fin;
        require '../reportes/reporte_ventas.php';
    break;

    
   /*  case 'reporteVentas':
            $fi = isset($_GET['fecha_inicio']) ? $_GET['fecha_inicio'] : '';
            $ff = isset($_GET['fecha_fin']) ? $_GET['fecha_fin'] : '';
            require_once '../reportes/reporte_ventas.php';
            $file = generarReporteVentas($fi, $ff);
            if ($file) {
                echo json_encode(['success' => true, 'file' => '../reportes/' . $file]);
            } else {
                echo json_encode(['success' => false]);
            }
        break; */

    case 'guardarVendedor':

        if(empty($idvendedor)){
            $option = 1;
            $rspta=$venta->insertarVendedor($nombre,$apellido,$dni,$email,$celular,$whatsapp);

        }

        if($rspta > 0 )
		{
            if($option == 1){
                echo "Vendedor registrado";
            }else{
                echo "Vendedor no se pudo registrar";
            }       
        }else if($rspta == 'exist'){
            echo "El Vendedor registrado ya existe";
        }
    break;

}
?>