<?php
require_once "../config/Conexion.php";

class Venta
{
    public function __construct()
    {

    }

    public function insertar($idcliente,$idusuario,$tipo_comprobante,$serie_comprobante,$num_comprobante,$fecha_hora,$subtotal_obtengodecotizacion,$igv_obtengodecotizacion,$total_venta_obtengodecotizacion,$idarticulo_obtengoDeCotizacion,$cantidad_obtengoDeCotizacion,$precio_venta_obtengoDeCotizacion,$descuento_obtengoDeCotizacion,$idcontacto_tabla,$forma_pago,$monto_pagado,$saldo_pendiente,$fecha_vencimiento)
    {
        $sql = "INSERT INTO venta (idcliente,idusuario,tipo_comprobante,serie_comprobante,num_comprobante,fecha_hora,subtotal,igv,total_venta,estado,idvendedor,forma_pago,monto_pagado,saldo_pendiente,fecha_vencimiento)
        VALUES ('$idcliente','$idusuario','$tipo_comprobante','$serie_comprobante','$num_comprobante',NOW(),'$subtotal_obtengodecotizacion','$igv_obtengodecotizacion','$total_venta_obtengodecotizacion', 'Aceptado',$idcontacto_tabla,'$forma_pago','$monto_pagado','$saldo_pendiente','$fecha_vencimiento')";

        //echo $sql; return;
        $idventanew=ejecutarConsulta_retornarID($sql);
        $num_elementos=0;
        $sw=true;
        while($num_elementos < count($idarticulo_obtengoDeCotizacion))
        {
            $sql_detalle = "INSERT INTO detalle_venta(idventa,idarticulo,cantidad,precio_venta,descuento) VALUES('$idventanew','$idarticulo_obtengoDeCotizacion[$num_elementos]','$cantidad_obtengoDeCotizacion[$num_elementos]','$precio_venta_obtengoDeCotizacion[$num_elementos]','$descuento_obtengoDeCotizacion[$num_elementos]')";
            //echo $sql_detalle."<br/>";
            ejecutarConsulta($sql_detalle) or $sw = false;
            $num_elementos= $num_elementos+1;
        }

        return $sw;

    }

    public function insertarVentaDirecta($idcliente,$idusuario,$tipo_comprobante,$serie_comprobante,$num_comprobante,$fecha_hora,$subtotal_obtengodecotizacion,$igv_obtengodecotizacion,$total_venta_obtengodecotizacion,$idarticulo_obtengoDeCotizacion,$cantidad_obtengoDeCotizacion,$precio_venta_obtengoDeCotizacion,$descuento_obtengoDeCotizacion,$idcontacto_tabla,$forma_pago,$monto_pagado,$saldo_pendiente,$fecha_vencimiento)
    {
        $sql = "INSERT INTO venta (idcliente,idusuario,tipo_comprobante,serie_comprobante,num_comprobante,fecha_hora,subtotal,igv,total_venta,estado,idvendedor,forma_pago,monto_pagado,saldo_pendiente,fecha_vencimiento)
        VALUES ('$idcliente','$idusuario','$tipo_comprobante','$serie_comprobante','$num_comprobante',NOW(),'$subtotal_obtengodecotizacion','$igv_obtengodecotizacion','$total_venta_obtengodecotizacion', 'Aceptado',$idcontacto_tabla,'$forma_pago','$monto_pagado','$saldo_pendiente','$fecha_vencimiento')";
        
       // echo $sql; return;
        //var_dump($precio_venta_obtengoDeCotizacion);
        $idventanew=ejecutarConsulta_retornarID($sql);
        $num_elementos=0;
        $sw=true;
        while($num_elementos < count($idarticulo_obtengoDeCotizacion))
        {
            $sql_detalle = "INSERT INTO detalle_venta(idventa,idarticulo,cantidad,precio_venta,descuento) 
            VALUES('$idventanew','$idarticulo_obtengoDeCotizacion[$num_elementos]','$cantidad_obtengoDeCotizacion[$num_elementos]','$precio_venta_obtengoDeCotizacion[$num_elementos]','$descuento_obtengoDeCotizacion[$num_elementos]')";
            //echo $sql_detalle."<br/>";
            ejecutarConsulta($sql_detalle) or $sw = false;
            $num_elementos= $num_elementos+1;
        }

        return $sw;

    }

    public function activar($idventa)
    {
        $sql="UPDATE venta SET estado='Aceptado' WHERE idventa='$idventa' ";
        return ejecutarConsulta($sql);
    }
    public function anular($idventa)
    {
        $sql = "SELECT * FROM detalle_venta WHERE idventa = '$idventa'";
        $sql1 = ejecutarConsulta($sql);

        while ($reg = mysqli_fetch_array($sql1)) {

            $idarticulo = $reg['idarticulo'];
            $cantidad = $reg['cantidad'];
            
            $sql3 = "UPDATE articulo
            SET stock = stock + $cantidad
            WHERE idarticulo = '$idarticulo';";
            ejecutarConsulta($sql3);
            
        }
        $delete_sql_hijo = "DELETE FROM detalle_venta WHERE idventa = '$idventa'";
        ejecutarConsulta($delete_sql_hijo);

        $delete_sql_padre = "DELETE FROM venta WHERE idventa = '$idventa'";
        ejecutarConsulta($delete_sql_padre);
    }
    public function anular2($idingreso)
    {
        
        $sql = "SELECT * FROM detalle_ingreso WHERE idingreso = '$idingreso'";

        $sql1 = ejecutarConsulta($sql);
	 
        while ($reg = mysqli_fetch_array($sql1)) {

            $idarticulo = $reg['idarticulo'];
            $cantidad = $reg['cantidad'];
            
            $sql3 = "UPDATE articulo
            SET stock = stock - $cantidad
            WHERE idarticulo = '$idarticulo';";
            ejecutarConsulta($sql3);
            
        }
        $delete_sql_hijo = "DELETE FROM detalle_ingreso WHERE idingreso = '$idingreso'";
        ejecutarConsulta($delete_sql_hijo);

        $delete_sql_padre = "DELETE FROM ingreso WHERE idingreso = '$idingreso'";
        ejecutarConsulta($delete_sql_padre);
    }
    public function mostrar($idventa)
    {
        $sql="SELECT v.idventa,DATE(v.fecha_hora) as fecha,v.idcliente,p.nombre as cliente,u.idusuario,u.nombre as usuario,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,
        v.total_venta,v.impuesto,v.estado,v.forma_pago,
            v.monto_pagado,
            v.saldo_pendiente,
            v.fecha_vencimiento FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN usuario u ON v.idusuario=u.idusuario WHERE v.idventa='$idventa'";
        return ejecutarConsultaSimpleFila($sql);
    }
//al hacer click en el ojo este codigo trae el detalle
    public function listarDetalle($idventa)
    {
        $sql="SELECT dv.iddetalle_venta, dv.idventa,dv.idarticulo,a.nombre,dv.cantidad,dv.precio_venta,dv.descuento,(dv.cantidad*dv.precio_venta-dv.descuento) as subtotal FROM detalle_venta dv inner join articulo a on dv.idarticulo=a.idarticulo where dv.idventa='$idventa'";
        return ejecutarConsulta($sql);
    }

/*     public function listar()
    {
        $sql="SELECT v.idventa, DATE_FORMAT(v.fecha_hora, '%d/%m/%Y %H:%i:%s') AS fecha, v.idcliente,p.nombre as cliente,u.idusuario,u.nombre as usuario,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.forma_pago,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN usuario u ON v.idusuario=u.idusuario ORDER BY v.idventa desc;";
        return ejecutarConsulta($sql);
    } */
     public function listar($fecha_inicio = '', $fecha_fin = '',$idusuario)
    {
        $where = '';
        if ($fecha_inicio && $fecha_fin) {
            $where = "WHERE DATE(v.fecha_hora) >= '$fecha_inicio' AND DATE(v.fecha_hora) <= '$fecha_fin' AND u.idusuario='$idusuario'";
        }
        $sql="SELECT v.idventa, DATE_FORMAT(v.fecha_hora, '%d/%m/%Y %H:%i:%s') AS fecha, v.idcliente,p.nombre as cliente,u.idusuario,u.nombre as usuario,v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.forma_pago,v.estado FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN usuario u ON v.idusuario=u.idusuario $where ORDER BY v.idventa desc;";
        return ejecutarConsulta($sql);
    }


    private function baseConsultaVentas($fechaInicio = null, $fechaFin = null)
    {
        $sql = " FROM venta v INNER JOIN persona p ON v.idcliente=p.idpersona INNER JOIN usuario u ON v.idusuario=u.idusuario";

        $condiciones = array();

        if ($fechaInicio !== null && $fechaInicio !== '') {
            $fechaInicio = limpiarCadena($fechaInicio);
            $condiciones[] = "DATE(v.fecha_hora) >= '". $fechaInicio ."'";
        }

        if ($fechaFin !== null && $fechaFin !== '') {
            $fechaFin = limpiarCadena($fechaFin);
            $condiciones[] = "DATE(v.fecha_hora) <= '". $fechaFin ."'";
        }

        if (!empty($condiciones)) {
            $sql .= " WHERE " . implode(" AND ", $condiciones);
        }

        $sql .= " ORDER BY v.fecha_hora DESC";

        return $sql;
    }

/*     public function listarVentas($fechaInicio = null, $fechaFin = null)
    {
        $consultaBase = $this->baseConsultaVentas($fechaInicio, $fechaFin);
        $sql = "SELECT DATE(v.fecha_hora) AS fecha, p.nombre AS cliente, u.nombre AS usuario, v.tipo_comprobante AS tipo_doc, CONCAT(v.serie_comprobante,'-',v.num_comprobante) AS nro_venta, v.total_venta AS total, v.forma_pago, v.estado" . $consultaBase;
        return ejecutarConsulta($sql);
    } */
     public function listarVentas($fecha_inicio, $fecha_fin,$idusuario)
    {
        $where = "";
        if (!empty($fecha_inicio) && !empty($fecha_fin)) {
            $where = "WHERE DATE(v.fecha_hora) >= '$fecha_inicio' AND DATE(v.fecha_hora) <= '$fecha_fin' AND u.idusuario='$idusuario'";
        }
        $sql = "SELECT v.idventa, DATE_FORMAT(v.fecha_hora, '%d/%m/%Y %H:%i:%s') AS fecha, v.idcliente,p.nombre as cliente,u.idusuario,u.nombre as usuario,
        v.tipo_comprobante,v.serie_comprobante,v.num_comprobante,v.total_venta,v.impuesto,v.forma_pago,v.estado 
        FROM venta v 
        INNER JOIN persona p ON v.idcliente=p.idpersona
         INNER JOIN usuario u ON v.idusuario=u.idusuario 
         $where ORDER BY v.idventa desc;";
        return ejecutarConsulta($sql);
    }
    public function listarVentasParaReporte($fechaInicio, $fechaFin)
    {
        $consultaBase = $this->baseConsultaVentas($fechaInicio, $fechaFin);
        $sql = "SELECT DATE(v.fecha_hora) AS fecha, v.tipo_comprobante AS tipo_doc, CONCAT(v.serie_comprobante,'-',v.num_comprobante) AS nro_venta, p.nombre AS cliente, u.nombre AS usuario, v.total_venta AS total, v.forma_pago, v.estado" . $consultaBase;
        return ejecutarConsulta($sql);
    }

    public function marcarCreditoComoContado($idVenta)
    {
        $idVenta = (int) $idVenta;
        $idVenta = limpiarCadena($idVenta);

        $sql = "SELECT forma_pago FROM venta WHERE idventa = '$idVenta'";
        $venta = ejecutarConsultaSimpleFila($sql);

        if (!$venta || strtolower($venta['forma_pago']) !== 'credito') {
            return false;
        }

        $sqlUpdate = "UPDATE venta SET forma_pago = 'efectivo' WHERE idventa = '$idVenta'";
        return ejecutarConsulta($sqlUpdate);
    }

    
    public function listarVentasParaReporte2($fi, $ff)
    {
        $sql = "SELECT DATE(v.fecha_hora) AS fecha, p.nombre AS cliente, u.nombre AS usuario, v.tipo_comprobante,
                CONCAT(v.serie_comprobante,'-',v.num_comprobante) AS numero, v.total_venta AS total,
                v.forma_pago, v.estado
            FROM venta v
            INNER JOIN persona p ON v.idcliente=p.idpersona
            INNER JOIN usuario u ON v.idusuario=u.idusuario
            WHERE DATE(v.fecha_hora) BETWEEN '$fi' AND '$ff'
            ORDER BY v.fecha_hora DESC";
        return ejecutarConsulta($sql);
    }
    public function obtenerCorrelativoVenta()
    {
        $sql = "SELECT LPAD(IFNULL(MAX(idventa), 0) + 1, 4, '0') AS correlativo_siguiente FROM venta";
        return ejecutarConsultaSimpleFila($sql);
    }

// Reporte de ventas para pdf factura
    public function ventacabecera($idventa){
        $sql="SELECT
        v.idventa,
        v.idcliente,
        p.nombre AS cliente,
        p.direccion,
        p.tipo_documento,
        p.num_documento,
        p.email,
        p.telefono,
        v.idusuario,
        u.nombre AS usuario,
        v.tipo_comprobante,
        v.serie_comprobante,
        v.num_comprobante,
          DATE_FORMAT(v.fecha_hora, '%d/%m/%Y %H:%i:%s') AS fecha,
        v.impuesto,
        v.total_venta,
        v.subtotal,
        v.igv,
        v.idvendedor,
        v.forma_pago,
        v.monto_pagado,
        v.saldo_pendiente,
        v.fecha_vencimiento,
        contacto.idcontacto AS idvendedor2,
        CONCAT(contacto.nombre, ' ', contacto.apellido) AS vende_nom_ape,
        p.observaciones
        FROM
        venta AS v
        INNER JOIN persona AS p ON v.idcliente = p.idpersona
        INNER JOIN usuario AS u ON v.idusuario = u.idusuario
        INNER JOIN contacto ON contacto.idcontacto = v.idvendedor
        WHERE v.idventa='$idventa'";
        return ejecutarConsulta($sql);
    }
    public function insertarVendedor($nombre,$apellido,$dni,$email,$celular,$whatsapp)
    {

        $sql_consulta="SELECT * from contacto WHERE nombre = '$nombre' and apellido = '$apellido'";
        $request = ejecutarConsulta($sql_consulta);

        while ($reg = mysqli_fetch_array($request)) {

            $idvendedor = $reg['idcontacto'];          
        }

        if(empty($idvendedor))
        {
        $sql = "INSERT INTO contacto (nombre,apellido,dni,email,celular,whatsapp,tipo)
        VALUES ('$nombre','$apellido','$dni','$email','$celular','$whatsapp','2')";
        $request_insert = ejecutarConsulta($sql);

        $return = $request_insert;
        }else
        {
            $return = "exist";
        }

        return $return;
    }

    public function selectVendedor()
    {
        $sql="SELECT * from contacto WHERE idcontacto>0 AND tipo = '2' ";
        return ejecutarConsulta($sql);
    }

    public function buscarVendedor($nombre)
    {
        $sql="SELECT idcontacto,nombre,apellido,dni,email,celular,whatsapp,tipo from contacto WHERE
                    nombre LIKE '%$nombre%'; ";
        return ejecutarConsulta($sql);
    }
    
    public function ventadetalle($idventa){
        $sql="SELECT a.nombre AS articulo,
       a.codigo,
       d.cantidad,
       d.precio_venta,
       d.descuento,
       (d.cantidad * d.precio_venta - d.descuento) AS subtotal,
       a.unidadmedidaid,
       e.indice as unidadmedida
        FROM detalle_venta d
        INNER JOIN articulo a ON d.idarticulo = a.idarticulo
        INNER JOIN unidadmedida e ON a.unidadmedidaid=e.id
        WHERE d.idventa = '$idventa';";
        return ejecutarConsulta($sql);
    }

}
?>