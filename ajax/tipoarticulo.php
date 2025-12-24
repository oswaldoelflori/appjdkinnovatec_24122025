<?php
require_once "../modelos/TipoArticulo.php";

$tipoarticulo = new TipoArticulo();

$id = isset($_POST["id"])? limpiarCadena($_POST["id"]) : "";
$nombre = isset($_POST["nombre"])? limpiarCadena($_POST["nombre"]) : "";

switch ($_GET["op"]) {
    case 'guardaryeditar':
        if (empty($id)) {
            $rspta = $tipoarticulo->insertar($nombre);
            echo $rspta ? "Tipo de artículo registrado" : "No se pudo registrar";
        } else {
            $rspta = $tipoarticulo->editar($id, $nombre);
            echo $rspta ? "Tipo de artículo actualizado" : "No se pudo actualizar";
        }
        break;

    case 'eliminar':
        $rspta = $tipoarticulo->eliminar($id);
        echo $rspta ? "Tipo de artículo eliminado" : "No se pudo eliminar";
        break;

    case 'mostrar':
        $rspta = $tipoarticulo->mostrar($id);
        echo json_encode($rspta);
        break;

    case 'listar':
        $rspta = $tipoarticulo->listar();
        $data = array();
        while ($reg = $rspta->fetch_object()) {
            $data[] = array(
                "0" => '<button class="btn btn-warning" onclick="mostrar(' . $reg->id . ')"><i class="fa fa-pencil"></i></button>
                        <button class="btn btn-danger" onclick="eliminar(' . $reg->id . ')"><i class="fa fa-trash"></i></button>',
                "1" => $reg->name
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

    case 'select':
        $rspta = $tipoarticulo->select();
        while ($reg = $rspta->fetch_object()) {
            echo '<option value="' . $reg->id . '">' . $reg->name . '</option>';
        }
        break;
}
?>
