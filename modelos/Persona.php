<?php
require_once "../config/Conexion.php";

class Persona
{
    public function __construct()
    {

    }
    public function insertar($tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$observaciones="")
    {
        $sql = "INSERT INTO persona (tipo_persona,nombre,tipo_documento,num_documento,direccion,telefono,email,observaciones)
        VALUES ('$tipo_persona','$nombre','$tipo_documento','$num_documento','$direccion','$telefono','$email','$observaciones')";
        return ejecutarConsulta($sql);

    }
    public function editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$observaciones)
    {
        $sql ="UPDATE persona SET tipo_persona='$tipo_persona',nombre='$nombre',tipo_documento='$tipo_documento',num_documento='$num_documento',direccion='$direccion',telefono='$telefono',email='$email',observaciones='$observaciones' WHERE idpersona ='$idpersona'";
        // echo $sql;
        return ejecutarConsulta($sql);
    }

    public function eliminar($idpersona)
    {
        $sql = "DELETE FROM persona WHERE idpersona='$idpersona' ";
        return ejecutarConsulta($sql);
    }

    public function mostrar($idpersona)
    {
        $sql = "SELECT * FROM persona WHERE idpersona='$idpersona'";
        return ejecutarConsultaSimpleFila($sql);
    }
/*     public function validarDniRuc($num_documento)
    {
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');

        $llave = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InJ5cnNpY2Vpbmdlbmllcm9zQGdtYWlsLmNvbSJ9.RKguF7OCJJ9HOICyHuyCJUTSrmgTsI1nbGIfOfgZF2o";

        $url = '';
        if (strlen($num_documento) == 8) {
            // Consulta por DNI
            $url = "https://dniruc.apisperu.com/api/v1/dni/$num_documento?token=$llave";
        } elseif (strlen($num_documento) == 11) {
            // Consulta por RUC
            $url = "https://dniruc.apisperu.com/api/v1/ruc/$num_documento?token=$llave";
        } else {
            return ['error' => 'Número de documento inválido'];
        }

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array("cache-control: no-cache"),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            return ['error' => 'Error en la consulta: ' . $err];
        }

        return json_decode($response, true);
    }
 */

/*     public function validarReniec($num_documento)
    {
        // Recojo informacion de sunat
        $llave = "5b8e0a07c0307c1e5a5c55cb";
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');

        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "http://servicio.fitcoders.com/v1/all?service=DNI&id=$num_documento&key=$llave",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "cache-control: no-cache"
          ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        $response = json_decode($response, true);

        return $response;
    } */
//Listar Proveedores
    public function listarp()
    {
        $sql = "SELECT * FROM persona WHERE tipo_persona='Proveedor'";
        return ejecutarConsulta($sql);
    }
//Listar CLiente
    public function listarc()
    {
        $sql = "SELECT * FROM persona WHERE tipo_persona='Cliente'";
        return ejecutarConsulta($sql);
    }

}
?>