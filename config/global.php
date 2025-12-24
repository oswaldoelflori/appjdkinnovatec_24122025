<?php
// ======================= CONFIGURACIÓN DE BASE DE DATOS =======================
define("DB_ENCODE","utf8");
define("DB_HOST","localhost");
/*
define("DB_NAME", "jdkinnovatec_31082025");
define("DB_USERNAME", "root");
define("DB_PASSWORD", ""); 
  */

 define("DB_NAME", "appjdkin_sistemadb");
define("DB_USERNAME", "appjdkin_jdkusuario");
define("DB_PASSWORD", "yfqD4uc80(8!"); 


// ======================= CONFIGURACIÓN GENERAL DEL SISTEMA =======================
define("PRO_NOMBRE","Mckenneth");
//abrir desarrollo url
//const URL = "http://localhost/jdkinnovatecappv13072025";
const URL = "https://jdkinnovatecapp.com";

// Configuración de formato numérico y monetario
const SPD = ".";
const SPM = ",";
const MMONEY = "S/";

// ======================= CONFIGURACIÓN DE LA EMPRESA =======================
const EMAIL = "jdkinnovatec@outlook.com";
const NOMBRE_REMITENTE = "JDK Innovatec";
const EMAIL_REMITENTE = "no-reply@sistemajdkinnovatec.com";
const NOMBRE_EMPRESA = "JDK INNOVATEC S.A.C.";

const ADDRESS = " Av. Bolivia 180 Int. 105 Semi-Sotano - Cercado de Lima. 
Soporte Tecnico: 960744781 Ventas: 923580552";

/*const ADDRESS2 = "Av. Inca Garcilaso de la Vega 1348 1B 168 - Cercado de Lima
Soporte Tecnico y Ventas: 928163320";*/

const ADDRESS2 = "Jr. Washington 1337 Cyberplaza 1B-168 Lima";

const RUC = "20602817467"; //20602817467 - GRUPO JDK INNOVATEC S.A.C.
const NOMBRE_EMPRESA_SLUG = "JDK";


// Configuración de contacto
define("CODIGO_PAIS", "51");
define("PAIS", "+51");
define("CELULAR1", "960744781");
define("CELULAR2", "923580552");

// ======================= CONFIGURACIÓN DE CORREO ELECTRÓNICO =======================
const WEB_EMPRESA = "www.sistemajdkinnovatec.com";
const EMAIL_RECIBE = "oswaldoelflori@gmail.com";


// ======================= CONFIGURACIÓN DE PDF =======================
const WEB_EMPRESA2 = "Pagína Web: www.jdkinnovatec.com";
const EMAIL2 = "Email: jdkinnovatec@outlook.com";
const SERVICIOS = "Venta  de equipos informaticos
Computadoras
Laptop
Impresoras
Suministros
Partes y accesorios";

const LOGO = "logo.png";
const EXT_LOGO = "png";
const bcpsoles = "192-8854889-0-20";
const cuentadetracciones = "00-000-000000";
const SLOGAN = "Venta de equipos informáticos";
const SLOGAN2 = "Computadoras";
const SLOGAN3 = "Laptops";
const SLOGAN4 = "Impresoras";

// Establecer zona horaria por defecto a Lima, Perú
date_default_timezone_set('America/Lima');

/* // Verificar que esté funcionando correctamente
echo "Fecha y hora actual en Lima: " . date('Y-m-d H:i:s'); */

?>