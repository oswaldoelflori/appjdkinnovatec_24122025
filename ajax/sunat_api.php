<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST');

if (!isset($_GET['documento'])) {
    echo json_encode(['error' => 'Parámetro "documento" requerido.']);
    exit;
}

$num_documento = trim($_GET['documento']);
$llave = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InJ5cnNpY2Vpbmdlbmllcm9zQGdtYWlsLmNvbSJ9.RKguF7OCJJ9HOICyHuyCJUTSrmgTsI1nbGIfOfgZF2o";

if (strlen($num_documento) == 8) {
    $url = "https://dniruc.apisperu.com/api/v1/dni/$num_documento?token=$llave";
} elseif (strlen($num_documento) == 11) {
    $url = "https://dniruc.apisperu.com/api/v1/ruc/$num_documento?token=$llave";
} else {
    echo json_encode(['error' => 'Número de documento inválido. Debe tener 8 (DNI) o 11 (RUC) dígitos.']);
    exit;
}

$curl = curl_init();
curl_setopt_array($curl, [
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => ["cache-control: no-cache"],
]);

$response = curl_exec($curl);
$err = curl_error($curl);
curl_close($curl);

if ($err) {
    echo json_encode(['error' => 'Error en la consulta CURL: ' . $err]);
} else {
    echo $response;
}
