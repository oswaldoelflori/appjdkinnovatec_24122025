<?php
require_once "../modelos/Persona.php";

$persona = new Persona();
// condicion de una sola linea
$idpersona = isset($_POST["idpersona"])? limpiarCadena($_POST["idpersona"]):"";
$tipo_persona = isset($_POST["tipo_persona"])? limpiarCadena($_POST["tipo_persona"]):"";
$nombre = isset($_POST["nombre"])? limpiarCadena($_POST["nombre"]):"";
$tipo_documento = isset($_POST["tipo_documento"])? limpiarCadena($_POST["tipo_documento"]):"";
$num_documento = isset($_POST["num_documento"])? limpiarCadena($_POST["num_documento"]):"";
$direccion = isset($_POST["direccion"])? limpiarCadena($_POST["direccion"]):"";
$telefono = isset($_POST["telefono"])? limpiarCadena($_POST["telefono"]):"";
$email = isset($_POST["email"])? limpiarCadena($_POST["email"]):"";
$observaciones = isset($_POST["observaciones"])? limpiarCadena($_POST["observaciones"]):"";
 
 
//op significa Operacion
$dni = isset($_POST["dni"])? limpiarCadena($_POST["dni"]):"";
switch($_GET["op"]){
    case 'guardaryeditar':
        if(empty($idpersona)){
            $rspta=$persona->insertar($tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$observaciones);
            echo $rspta ? "Persona registrada" : "Persona no se pudo registrar";
        }
        else {
            $rspta=$persona->editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$observaciones);
          //echo $rspta;
          echo $rspta ? "Persona actualizada" : "Persona no se pudo actualizar";
        }
    break;
    case 'eliminar':
        $rspta=$persona->eliminar($idpersona);
        echo $rspta ? "Persona eliminada" : "Persona no se puede desactivar";
    break;
    case 'mostrar':
        $rspta=$persona->mostrar($idpersona);
        echo json_encode($rspta);
    break;
/*     case 'validarDniRuc':
        $rspta=$persona->validarDniRuc($num_documento);
       echo json_encode($rspta);
    break; */
    case 'validarReniec':
        $rspta=$persona->validarReniec($dni);
       echo json_encode($rspta);
    break;
    case 'listarp':
        $rspta=$persona->listarp();
        $data = Array();
        while ($reg=$rspta->fetch_object()){
            $data[]=array(
                "0"=>'<button class="btn btn-warning" onclick="mostrar('.$reg->idpersona.')"><i class="fa fa-pencil"></i></button>'.
                ' <button class="btn btn-danger" onclick="eliminar('.$reg->idpersona.')"><i class="fa fa-trash"></i></button>',
                "1"=>$reg->nombre,
                "2"=>$reg->tipo_documento,
                "3"=>$reg->num_documento,
                "4"=>$reg->telefono,
                "5"=>$reg->email,
            );

        }
        $results= array(
            "sEcho"=>1, //info para datatables
            "iTotalRecords"=>count($data),
            "iTotalDisplayRecords"=>count($data),
            "aaData"=>$data);
        echo json_encode($results);
    break;
    case 'listarc':
    $rspta=$persona->listarc();
    $data = Array();
    while ($reg=$rspta->fetch_object()){
        $data[]=array(
            "0"=>'<button class="btn btn-warning" onclick="mostrar('.$reg->idpersona.')"><i class="fa fa-pencil"></i></button>'.
            ' <button class="btn btn-danger" onclick="eliminar('.$reg->idpersona.')"><i class="fa fa-trash"></i></button>',
            "1"=>$reg->nombre,
            "2"=>$reg->tipo_documento,
            "3"=>$reg->num_documento,
            "4"=>$reg->telefono,
            "5"=>$reg->email,
        );

    }
    $results= array(
        "sEcho"=>1, //info para datatables
        "iTotalRecords"=>count($data),
        "iTotalDisplayRecords"=>count($data),
        "aaData"=>$data);
    echo json_encode($results);
break;

case 'guardarCliente':
    // Validar que el número de documento no esté vacío
    if (!empty($num_documento)) {
        // Insertar cliente
        $rspta = $persona->insertar(
            $tipo_persona,     // Ej: "Cliente"
            $nombre,
            $tipo_documento,   // Ej: "DNI" o "RUC"
            $num_documento,
            $direccion,
            $telefono,
            $email,
            $observaciones
        );

        // Preparar respuesta JSON
        $respuesta = [];

        if ($rspta) {
            $respuesta = [
                'success' => true,
                'message' => 'Cliente registrado correctamente.',
                'idpersona' => $rspta // devolver ID si tu función lo retorna
            ];
        } else {
            $respuesta = [
                'success' => false,
                'message' => 'Error al insertar el Cliente.'
            ];
        }

        echo json_encode($respuesta);
    } else {
        echo json_encode([
            'success' => false,
            'message' => 'Número de documento obligatorio.'
        ]);
    }
    break;


}
?>