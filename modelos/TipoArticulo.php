<?php
require_once "../config/Conexion.php";

class TipoArticulo
{
    public function __construct()
    {
    }

    public function insertar($nombre)
    {
        $sql = "INSERT INTO type_article (name) VALUES ('$nombre')";
        return ejecutarConsulta($sql);
    }

    public function editar($id, $nombre)
    {
        $sql = "UPDATE type_article SET name = '$nombre' WHERE id = '$id'";
        return ejecutarConsulta($sql);
    }

    public function eliminar($id)
    {
        $sql = "DELETE FROM type_article WHERE id = '$id'";
        return ejecutarConsulta($sql);
    }

    public function mostrar($id)
    {
        $sql = "SELECT * FROM type_article WHERE id = '$id'";
        return ejecutarConsultaSimpleFila($sql);
    }

    public function listar()
    {
        $sql = "SELECT * FROM type_article ORDER BY name";
        return ejecutarConsulta($sql);
    }

    // Para cargar en un select, sin filtros
    public function select()
    {
        $sql = "SELECT id, name FROM type_article ORDER BY name";
        return ejecutarConsulta($sql);
    }
}
?>
