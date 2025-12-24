<?php
require_once "../config/Conexion.php";

class Caja
{
    public function __construct()
    {
    }

    public function insertar($fecha, $monto, $concepto, $tipo, $idusuario, $tipoGasto, $medioPago)
    {
        $sql = "INSERT INTO movimientos_caja (fecha,monto,concepto,tipo,idusuario,tipo_gasto,medio_pago)"
            . " VALUES ('$fecha','$monto','$concepto','$tipo','$idusuario','$tipoGasto','$medioPago')";
        return ejecutarConsulta($sql);
    }

public function listar($desde="", $hasta="", $tipo="", $idusuario="")
    {
        $filtros = array();
        if($desde!="" && $hasta!="") {
            $filtros[] = "fecha BETWEEN '$desde' AND '$hasta'";
        }
        elseif($desde!="") { $filtros[] = "fecha>='$desde'"; }
        elseif($hasta!="") { $filtros[] = "fecha<='$hasta'"; }
        if($tipo!="") { $filtros[] = "tipo='$tipo'"; }
        if($idusuario!="") { $filtros[] = "u.idusuario='$idusuario'"; }
        $where = count($filtros) ? ('WHERE '.implode(' AND ', $filtros)) : '';
        $sql = "SELECT mc.*, u.nombre AS responsable FROM movimientos_caja mc"
             . " JOIN usuario u ON mc.idusuario=u.idusuario $where"
             . " ORDER BY mc.fecha DESC, mc.idmovimientocaja DESC";

       // echo $sql;
        return ejecutarConsulta($sql);
    }
    public function resumenDiario($desde, $hasta = null, $tipo = "", $idusuario = "")
    {
        if($hasta === null) { $hasta = $desde; }
        $filtros = array();
        $filtros[] = "fecha BETWEEN '$desde' AND '$hasta'";
        if($tipo != "") { $filtros[] = "tipo='$tipo'"; }
        if($idusuario != "") { $filtros[] = "idusuario='$idusuario'"; }
        $where = implode(' AND ', $filtros);
        $sql = "SELECT SUM(CASE WHEN tipo='ingreso' THEN monto ELSE 0 END) AS total_ingresos,"
             . " SUM(CASE WHEN tipo='egreso' THEN monto ELSE 0 END) AS total_egresos"
             . " FROM movimientos_caja WHERE $where";
        return ejecutarConsultaSimpleFila($sql);
    }
/*     public function resumenDiario($desde, $hasta = null)
    {
        if($hasta === null) { $hasta = $desde; }
        $sql = "SELECT SUM(CASE WHEN tipo='ingreso' THEN monto ELSE 0 END) AS total_ingresos,"
             . " SUM(CASE WHEN tipo='egreso' THEN monto ELSE 0 END) AS total_egresos"
             . " FROM movimientos_caja WHERE fecha BETWEEN '$desde' AND '$hasta'";
        return ejecutarConsultaSimpleFila($sql);
    } */

}
?>
