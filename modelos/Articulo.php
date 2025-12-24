<?php
require_once "../config/Conexion.php";

class Articulo
{
    public function __construct()
    {
    }

    public function insertar($idcategoria, $codigo, $nombre, $stock, $descripcion, $unidadmedidaid, $imagen, $idtipoarticulo)
    {
        $sql = "INSERT INTO articulo (
                    idcategoria, codigo, nombre, stock, descripcion,
                    unidadmedidaid, imagen, condicion, idtipoarticulo
                ) VALUES (
                    '$idcategoria', '$codigo', '$nombre', '$stock', '$descripcion',
                    '$unidadmedidaid', '$imagen', '1', '$idtipoarticulo'
                )";
          //      echo $sql;
       return ejecutarConsulta($sql);
    }
    public function insertarArticulo($idcategoria, $codigo, $nombre, $stock, $descripcion, $unidadmedidaid, $imagen, $idtipoarticulo)
    {

        $totales = mysqli_fetch_assoc(ejecutarConsulta("SELECT COUNT(*) as tot FROM articulo"))['tot'];
        $totales = $totales + 1;
        $nombreFinal = $nombre . '.' . $totales;

        $sql = "INSERT INTO articulo (
                    idcategoria, codigo, nombre, stock, descripcion,
                    unidadmedidaid, imagen, condicion, idtipoarticulo
                ) VALUES (
                    '$idcategoria', '$codigo', '$nombreFinal', '$stock', '$descripcion',
                    '$unidadmedidaid', '$imagen', '1', '$idtipoarticulo'
                )";

        $resultado=ejecutarConsulta_retornarID($sql);
        if ($resultado) {
            return ['success' => true, 'idarticulo' => $resultado];
        } else {
            return ['success' => false, 'message' => 'Error al insertar el artículo.'];
        }
    }


    public function editar($idarticulo, $idcategoria, $codigo, $nombre, $stock, $descripcion, $unidadmedidaid, $imagen, $idtipoarticulo)
    {
        $sql = "UPDATE articulo SET 
                    idcategoria     = '$idcategoria',
                    codigo          = '$codigo',
                    nombre          = '$nombre',
                    stock           = '$stock',
                    descripcion     = '$descripcion',
                    unidadmedidaid  = '$unidadmedidaid',
                    imagen          = '$imagen',
                    idtipoarticulo  = '$idtipoarticulo'
                WHERE idarticulo = '$idarticulo'";
        return ejecutarConsulta($sql);
    }

    public function desactivar($idarticulo)
    {
        $sql = "UPDATE articulo SET condicion='0' WHERE idarticulo='$idarticulo'";
        return ejecutarConsulta($sql);
    }

    public function eliminar($idarticulo)
    {
        $sql = "DELETE FROM articulo WHERE idarticulo='$idarticulo'";
        return ejecutarConsulta($sql);
    }

    public function activar($idarticulo)
    {
        $sql = "UPDATE articulo SET condicion='1' WHERE idarticulo='$idarticulo'";
        return ejecutarConsulta($sql);
    }

    public function mostrar($idarticulo)
    {
        $sql = "SELECT * FROM articulo WHERE idarticulo='$idarticulo'";
        return ejecutarConsultaSimpleFila($sql);
    }

    public function listar()
    {
        $sql = "SELECT 
                    a.idarticulo, a.idcategoria, c.nombre AS categoria,
                    a.codigo, a.nombre, a.stock, a.descripcion,
                    a.imagen, a.condicion, a.idtipoarticulo,
                    t.name AS tipoarticulo
                FROM articulo a
                INNER JOIN categoria c ON a.idcategoria = c.idcategoria
                INNER JOIN type_article t ON a.idtipoarticulo = t.id";
        return ejecutarConsulta($sql);
    }

    public function listarActivos()
    {
        $sql = "SELECT 
                    a.idarticulo, a.idcategoria, c.nombre AS categoria,
                    a.codigo, a.nombre, a.stock, a.descripcion,
                    a.imagen, a.condicion, a.idtipoarticulo,
                    t.name AS tipoarticulo
                FROM articulo a
                INNER JOIN categoria c ON a.idcategoria = c.idcategoria
                INNER JOIN type_article t ON a.idtipoarticulo = t.id
                WHERE a.condicion = '1'";
        return ejecutarConsulta($sql);
    }

    public function listarActivosVenta()
    {
        $sql = "SELECT 
                    a.idarticulo, a.idcategoria, a.unidadmedidaid,
                    um.id, um.indice AS unidadmedida,
                    c.nombre AS categoria, a.codigo, a.nombre, a.stock,
                    (SELECT precio_venta FROM detalle_ingreso WHERE idarticulo = a.idarticulo ORDER BY iddetalle_ingreso DESC LIMIT 1) AS precio_venta,
                    a.descripcion, a.imagen, a.condicion, a.idtipoarticulo,
                    t.name AS tipoarticulo
                FROM articulo a
                INNER JOIN categoria c ON a.idcategoria = c.idcategoria
                INNER JOIN unidadmedida um ON a.unidadmedidaid = um.id
                INNER JOIN type_article t ON a.idtipoarticulo = t.id
 
                WHERE a.condicion = '1'";
        return ejecutarConsulta($sql);
    }

    public function selectarticulo()
    {
        $sql = "SELECT * FROM articulo";
        return ejecutarConsulta($sql);
    }

    public function actualizarArticulo($idarticulo, $nombre)
    {
        $idarticulo = intval($idarticulo);
        $nombre = addslashes(trim($nombre));

        $sqlVerificar = "SELECT COUNT(*) as total FROM articulo 
                        WHERE nombre = '$nombre' AND idarticulo != '$idarticulo'";

        $existe = mysqli_fetch_assoc(ejecutarConsulta($sqlVerificar));

        if ($existe['total'] > 0) {
            return ['success' => false, 'message' => 'Ya existe un artículo con ese nombre.'];
        }

        $sql = "UPDATE articulo SET nombre = '$nombre' WHERE idarticulo = '$idarticulo'";
        $resultado = ejecutarConsulta($sql);

        if ($resultado) {
            return ['success' => true, 'message' => 'Artículo actualizado satisfactoriamente'];
        } else {
            return ['success' => false, 'message' => 'Error al actualizar el artículo.'];
        }
    }

}
?>
