<?php
require_once "../config/Conexion.php";

class VentaPago
{
    public function __construct() {}

    public function insertar($idventa, $monto, $usuario, $observaciones)
    {
        $sql = "INSERT INTO venta_pago (idventa, monto, fecha_pago, usuario_registro, observaciones)
                VALUES ('$idventa', '$monto', NOW(), '$usuario', '$observaciones')";
        return ejecutarConsulta($sql);
    }

    public function eliminar($idpago)
    {
        $sql = "DELETE FROM venta_pago WHERE idpago = '$idpago'";
        return ejecutarConsulta($sql);
    }

    public function listarPagos($idventa)
    {
        $sql = "SELECT idpago, monto, DATE_FORMAT(fecha_pago, '%d/%m/%Y %H:%i:%s') AS fecha_pago, usuario_registro, observaciones
                FROM venta_pago
                WHERE idventa = '$idventa'
                ORDER BY fecha_pago ASC";
        return ejecutarConsulta($sql);
    }

    public function obtenerTotalPagado($idventa)
    {
        $sql = "SELECT IFNULL(SUM(monto), 0) AS total_pagado
                FROM venta_pago
                WHERE idventa = '$idventa'";
        return ejecutarConsultaSimpleFila($sql);
    }
    
    public function totalAbono($idventa)
    {
        $sql = "SELECT 
                    v.idventa, 
                    v.forma_pago, 
                    v.total_venta,
                    v.monto_pagado, 
                    SUM(vp.monto) AS total_adicional,
                    (v.monto_pagado + SUM(vp.monto)) AS total_abono,
                    (v.total_venta - (v.monto_pagado + SUM(vp.monto))) AS saldo_pendiente
                FROM venta v
                INNER JOIN venta_pago vp ON v.idventa = vp.idventa
                WHERE v.forma_pago = 'credito' AND v.monto_pagado > 0 AND v.idventa = '$idventa'
                GROUP BY v.idventa, v.forma_pago, v.total_venta, v.monto_pagado";
        
        return ejecutarConsultaSimpleFila($sql);
    }



}


?>





