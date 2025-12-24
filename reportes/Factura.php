<?php
// Esto lo pongo para que no salgan los errores y muestre que esta deprecado
//error_reporting(0);
require('../fpdf181/fpdf.php');
//require_once('../config/global.php');
define('EURO', chr(128) );
define('EURO_VAL', 6.55957 );


//////////////////////////////////////
// Public functions                 //
//////////////////////////////////////
//  function sizeOfText( $texte, $larg )
//  function addSociete( $nom, $adresse )
//  function fact_dev( $libelle, $num )
//  function addDevis( $numdev )
//  function addFacture( $numfact )
//  function addDate( $date )
//  function addClient( $ref )
//  function addPageNumber( $page )
//  function addClientAdresse( $adresse )
//  function addReglement( $mode )
//  function addEcheance( $date )
//  function addNumTVA($tva)
//  function addReference($ref)
//  function addCols( $tab )
//  function addLineFormat( $tab )
//  function lineVert( $tab )
//  function addLine( $ligne, $tab )
//  function addRemarque($remarque)
//  function addCadreTVAs()
//  function addCadreEurosFrancs()
//  function addTVAs( $params, $tab_tva, $invoice )
//  function temporaire( $texte )

class PDF_Invoice extends FPDF
{
// private variables
var $colonnes;
var $format;
var $angle=0;

// private functions
function RoundedRect($x, $y, $w, $h, $r, $style = '')
{
	$k = $this->k;
	$hp = $this->h;
	if($style=='F')
		$op='f';
	elseif($style=='FD' || $style=='DF')
		$op='B';
	else
		$op='S';
	$MyArc = 4/3 * (sqrt(2) - 1);
	$this->_out(sprintf('%.2F %.2F m',($x+$r)*$k,($hp-$y)*$k ));
	$xc = $x+$w-$r ;
	$yc = $y+$r;
	$this->_out(sprintf('%.2F %.2F l', $xc*$k,($hp-$y)*$k ));

	$this->_Arc($xc + $r*$MyArc, $yc - $r, $xc + $r, $yc - $r*$MyArc, $xc + $r, $yc);
	$xc = $x+$w-$r ;
	$yc = $y+$h-$r;
	$this->_out(sprintf('%.2F %.2F l',($x+$w)*$k,($hp-$yc)*$k));
	$this->_Arc($xc + $r, $yc + $r*$MyArc, $xc + $r*$MyArc, $yc + $r, $xc, $yc + $r);
	$xc = $x+$r ;
	$yc = $y+$h-$r;
	$this->_out(sprintf('%.2F %.2F l',$xc*$k,($hp-($y+$h))*$k));
	$this->_Arc($xc - $r*$MyArc, $yc + $r, $xc - $r, $yc + $r*$MyArc, $xc - $r, $yc);
	$xc = $x+$r ;
	$yc = $y+$r;
	$this->_out(sprintf('%.2F %.2F l',($x)*$k,($hp-$yc)*$k ));
	$this->_Arc($xc - $r, $yc - $r*$MyArc, $xc - $r*$MyArc, $yc - $r, $xc, $yc - $r);
	$this->_out($op);
}

function _Arc($x1, $y1, $x2, $y2, $x3, $y3)
{
	$h = $this->h;
	$this->_out(sprintf('%.2F %.2F %.2F %.2F %.2F %.2F c ', $x1*$this->k, ($h-$y1)*$this->k,
						$x2*$this->k, ($h-$y2)*$this->k, $x3*$this->k, ($h-$y3)*$this->k));
}

function Rotate($angle, $x=-1, $y=-1)
{
	if($x==-1)
		$x=$this->x;
	if($y==-1)
		$y=$this->y;
	if($this->angle!=0)
		$this->_out('Q');
	$this->angle=$angle;
	if($angle!=0)
	{
		$angle*=M_PI/180;
		$c=cos($angle);
		$s=sin($angle);
		$cx=$x*$this->k;
		$cy=($this->h-$y)*$this->k;
		$this->_out(sprintf('q %.5F %.5F %.5F %.5F %.2F %.2F cm 1 0 0 1 %.2F %.2F cm',$c,$s,-$s,$c,$cx,$cy,-$cx,-$cy));
	}
}

function _endpage()
{
	if($this->angle!=0)
	{
		$this->angle=0;
		$this->_out('Q');
	}
	parent::_endpage();
}

// public functions
function sizeOfText( $texte, $largeur )
{
	$index    = 0;
	$nb_lines = 0;
	$loop     = TRUE;
	while ( $loop )
	{
		$pos = strpos($texte, "\n");
		if (!$pos)
		{
			$loop  = FALSE;
			$ligne = $texte;
		}
		else
		{
			$ligne  = substr( $texte, $index, $pos);
			$texte = substr( $texte, $pos+1 );
		}
		$length = floor( $this->GetStringWidth( $ligne ) );
		$res = 1 + floor( $length / $largeur) ;
		$nb_lines += $res;
	}
	return $nb_lines;
}

// Company
function addSociete($nom, $adresse, $logo, $ext_logo)
{
    // ========== CONFIGURACIÓN INICIAL ==========
    $x1 = 65;       // Posición X inicial para el texto
    $y1 = 8;        // Posición Y inicial para el texto
    $alignTop = 7;   // Margen superior para elementos secundarios
    $alignLeft = 5;  // Margen izquierdo para elementos secundarios
    
    // ========== INSERCIÓN DEL LOGO ==========
    $marginTop = 2;      // Margen superior para el logo
    $marginLeft = 1;    // Margen izquierdo para el logo
    $widthImage = 50;    // Ancho de la imagen del logo
    $heightImage = 26;   // Alto de la imagen del logo
    
    // Insertar logo en posición (10,7) con dimensiones 68x20
    $this->Image($logo, $marginLeft, $marginTop, $widthImage, $heightImage, $ext_logo);
    
    // ========== NOMBRE DE LA EMPRESA ==========
    $this->SetXY(50,2);        // Posicionar cursor en (65,8)
    $this->SetTextColor(0, 0, 0);  // Color de texto negro (RGB)
    $this->SetFont('Arial', 'B', 9); // Fuente Arial negrita tamaño 15
    
    $length = $this->GetStringWidth($nom);  // Calcular ancho del texto
    $this->Cell($length, 4, "Principal:");          // Dibujar celda con el nombre
    
    // ========== DIRECCIÓN DE LA EMPRESA ==========
    $this->SetTextColor(0, 0, 0);          // Restablecer color negro
    $this->SetFont('Arial', 'B', 9);      // Cambiar fuente (no usado en texto posterior)
    $this->SetXY( 49, 6); // Posición (80,15)
    $this->SetFont('Arial', '', 8.5);       // Fuente normal tamaño 8.5
    
    $length = $this->GetStringWidth($adresse); // Calcular ancho de dirección
    $lignes = $this->sizeOfText($adresse, $length); // Calcular líneas necesarias (no usado)
    
    // Dibujar cuadro multilínea para dirección
    $this->MultiCell($length, 4, $adresse); // Alto de línea 4 unidades
    
    //$length = $this->GetStringWidth($nom);  // Calcular ancho del texto
	$this->SetXY( 50, 16);
    $this->SetTextColor(0, 0, 0);  // Color de texto negro (RGB)
    $this->SetFont('Arial', 'B', 9); // Fuente Arial negrita tamaño 15
    $this->Cell(100, 5, "Sucursal:");          // Dibujar celda con el nombre

    $this->SetXY( 50, 20); // Posición (80,15)
    $this->SetFont('Arial', '', 8.5);       // Fuente normal tamaño 8.5	
    $length = $this->GetStringWidth(ADDRESS); // Calcular ancho de dirección
    $lignes = $this->sizeOfText(ADDRESS, $length); // Calcular líneas necesarias (no usado)
    
    // Dibujar cuadro multilínea para dirección
    $this->MultiCell($length, 4, ADDRESS2); // Alto de línea 4 unidades

}

// Label and number of invoice/estimate
function fact_dev($libelle, $num, $ruc)
{
    // Márgenes horizontales y verticales
    $boxX = $this->w - 70;
    $boxWidth = 62;
    $boxY = 6;
    $boxHeight = 25;

    // Ajuste dinámico del tamaño de fuente para que el texto quepa en el ancho del rectángulo
    $fontSize = 12;
    $maxTextWidth = $boxWidth - 2; // 1 de margen a cada lado

    while (true) {
        $this->SetFont('Arial', 'B', $fontSize);
        $textWidth = $this->GetStringWidth($libelle);

        if ($textWidth <= $maxTextWidth) {
            break;
        }

        if ($fontSize <= 6) { // Evita que la fuente se vuelva ilegible
            break;
        }

        $fontSize--;
    }

    // Dibujar el rectángulo
    $this->SetLineWidth(0.1);
    $this->SetFillColor(255, 255, 255);
    $this->RoundedRect($boxX, $boxY, $boxWidth, $boxHeight, 1.5, 'DF');

    // Posiciones relativas dentro del rectángulo
    $this->SetXY($boxX + 1, $boxY + 2);
    $this->Cell($boxWidth - 2, 5, $libelle, 0, 0, 'C');

    $this->SetXY($boxX + 1, $boxY + 9);
    $this->Cell($boxWidth - 2, 5, $num, 0, 0, 'C');

    $this->SetXY($boxX + 1, $boxY + 16);
    $this->Cell($boxWidth - 2, 5, $ruc, 0, 0, 'C');
}

// Estimate
function addDevis( $numdev )
{
	$string = sprintf("DEV%04d",$numdev);
	$this->fact_dev( "Devis", $string );
}

// Invoice
function addFacture( $numfact )
{
	$string = sprintf("FA%04d",$numfact);
	$this->fact_dev( "Facture", $string );
}

function addDate( $date )
{
	$r1  = $this->w - 61;
	$r2  = $r1 + 49;
	$y1  = 17;
	$y2  = $y1 ;
	$mid = $y1 + ($y2 / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), $y2, 3.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1+3 );
	$this->SetFont( "Arial", "B", 10);
	$this->Cell(10,5, "Fecha", 0, 0, "C");
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1+9 );
	$this->SetFont( "Arial", "", 10);
	$this->Cell(10,5,$date, 0,0, "C");
}




function addClient( $ref )
{
	$r1  = $this->w - 31;
	$r2  = $r1 + 19;
	$y1  = 17;
	$y2  = $y1;
	$mid = $y1 + ($y2 / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), $y2, 3.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1+3 );
	$this->SetFont( "Arial", "B", 10);
	$this->Cell(10,5, "CLIENT", 0, 0, "C");
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1 + 9 );
	$this->SetFont( "Arial", "", 10);
	$this->Cell(10,5,$ref, 0,0, "C");
}

function addPageNumber( $page )
{
	$r1  = $this->w - 80;
	$r2  = $r1 + 19;
	$y1  = 17;
	$y2  = $y1;
	$mid = $y1 + ($y2 / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), $y2, 3.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1+3 );
	$this->SetFont( "Arial", "B", 10);
	$this->Cell(10,5, "PAGE", 0, 0, "C");
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5, $y1 + 9 );
	$this->SetFont( "Arial", "", 10);
	$this->Cell(10,5,$page, 0,0, "C");
}

// Client address
function addClientAdresse($cliente, $domicilio, $num_documento, $email, $telefono, $fecha, $tipomoneda, $forma_pago, $contacto, $observacion, $usuario) {
    $r1 = $this->w - 200;
    $r2 = $r1 + 68;
    $y1 = 40;
	$TamanoLetra = 7;
    $this->SetXY($r1, $y1);
    $this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(13, 5, 'CLIENTE:', 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(120, 5, $cliente, 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(10, 5, 'FECHA:', 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(50, 5, $fecha, 0, 0, 'L', false); // Sin bordes
    $this->SetFont("Arial", "", $TamanoLetra);
    $this->Ln(5);
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(16, 5, utf8_decode('DIRECCIÓN:'), 0, 0, false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(166, 5, utf8_decode(strtoupper($domicilio)), 0, 0, false); // Sin bordes
	$this->SetFont('arial', '', $TamanoLetra);	
    $this->Ln(5);
	$this->SetFont("Arial", "B", $TamanoLetra);
	$this->Cell(7, 5, utf8_decode('RUC:'), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(20, 5, utf8_decode($num_documento), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(12, 5, utf8_decode('MONEDA:'), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(18, 5, utf8_decode($tipomoneda), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(27, 5, utf8_decode('CONDICIONES PAGO:'), 0, 0, 'L', false); // Sin bordes
        $this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(31, 5, utf8_decode($forma_pago), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(17, 5, utf8_decode('TELÉFONOS:'), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(25, 5, utf8_decode($telefono), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Ln(5);
    $this->SetFont('arial', '', 7);
	$this->SetFont("Arial", "B", $TamanoLetra);
    $this->Cell(16, 5, 'VENDEDOR:', 0, 0, 'L', false); // Sin bordes
    $this->Cell(25, 5, utf8_decode($usuario), 0, 0, 'L', false); // Sin bordes
	$this->SetFont("Arial", "", $TamanoLetra);
    $this->Cell(143, 5, utf8_decode($observacion), 0, 0, 'L', false); // Sin bordes
}


// Mode of payment
function addReglement( $mode )
{
	$r1  = 10;
	$r2  = $r1 + 60;
	$y1  = 80;
	$y2  = $y1+10;
	$mid = $y1 + (($y2-$y1) / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), ($y2-$y1), 2.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + ($r2-$r1)/2 -5 , $y1+1 );
	$this->SetFont( "Arial", "B", 10);
	$this->Cell(10,4, "CLIENTE", 0, 0, "C");
	$this->SetXY( $r1 + ($r2-$r1)/2 -5 , $y1 + 5 );
	$this->SetFont( "Arial", "", 10);
	$this->Cell(10,5,$mode, 0,0, "C");
}

// Expiry date
function addEcheance( $documento,$numero )
{
	$r1  = 80;
	$r2  = $r1 + 40;
	$y1  = 80;
	$y2  = $y1+10;
	$mid = $y1 + (($y2-$y1) / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), ($y2-$y1), 2.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + ($r2 - $r1)/2 - 5 , $y1+1 );
	$this->SetFont( "Arial", "B", 10);
	$this->Cell(10,4, $numero, 0, 0, "C");
	$this->SetXY( $r1 + ($r2-$r1)/2 - 5 , $y1 + 5 );
	$this->SetFont( "Arial", "", 10);
	$this->Cell(10,5,$numero, 0,0, "C");
}

// VAT number
function addNumTVA($tva)
{
	$this->SetFont( "Arial", "B", 10);
	$r1  = $this->w - 80;
	$r2  = $r1 + 70;
	$y1  = 80;
	$y2  = $y1+10;
	$mid = $y1 + (($y2-$y1) / 2);
	$this->RoundedRect($r1, $y1, ($r2 - $r1), ($y2-$y1), 2.5, 'D');
	$this->Line( $r1, $mid, $r2, $mid);
	$this->SetXY( $r1 + 16 , $y1+1 );
	$this->Cell(40, 4, "DIRECCI�N", '', '', "C");
	$this->SetFont( "Arial", "", 10);
	$this->SetXY( $r1 + 16 , $y1+5 );
	$this->Cell(40, 5, $tva, '', '', "C");
}

function addReference($ref)
{
	$this->SetFont( "Arial", "", 10);
	$length = $this->GetStringWidth( "R�f�rences : " . $ref );
	$r1  = 10;
	$r2  = $r1 + $length;
	$y1  = 92;
	$y2  = $y1+5;
	$this->SetXY( $r1 , $y1 );
	$this->Cell($length,4, "R�f�rences : " . $ref);
}

//agregamos un espacio para que se muestre los datos del while grilla
function addCols( $tab )
{
	global $colonnes;
	
	$r1  = 10;
	$r2  = $this->w - ($r1 * 2) ;
	$y1  = 65;
	$y2  = $this->h - 50 - $y1;
	$this->SetXY( $r1, $y1 );
	$this->Rect( $r1, $y1, $r2, $y2, "D");
	$this->Line( $r1, $y1+6, $r1+$r2, $y1+6);
	$colX = $r1;
	$colonnes = $tab;
	while ( list( $lib, $pos ) = each ($tab) )
	{
		$this->SetXY( $colX, $y1+2 );
		$this->Cell( $pos, 1, $lib, 0, 0, "C");
		$colX += $pos;
		$this->Line( $colX, $y1, $colX, $y1+$y2);
	}
}

function addLineFormat( $tab )
{
	
	global $format, $colonnes;
	
	while ( list( $lib, $pos ) = each ($colonnes) )
	{
		if ( isset( $tab["$lib"] ) )
			$format[ $lib ] = $tab["$lib"];
	}
}

function lineVert( $tab )
{
	global $colonnes;

	reset( $colonnes );
	$maxSize=0;
	while ( list( $lib, $pos ) = each ($colonnes) )
	{
		$texte = $tab[ $lib ];
		$longCell  = $pos -2;
		$size = $this->sizeOfText( $texte, $longCell );
		if ($size > $maxSize)
			$maxSize = $size;
	}
	return $maxSize;
}

// add a line to the invoice/estimate
/*    $ligne = array( "REFERENCE"    => $prod["ref"],
                      "DESIGNATION"  => $libelle,
                      "QUANTITE"     => sprintf( "%.2F", $prod["qte"]) ,
                      "P.U. HT"      => sprintf( "%.2F", $prod["px_unit"]),
                      "MONTANT H.T." => sprintf ( "%.2F", $prod["qte"] * $prod["px_unit"]) ,
                      "TVA"          => $prod["tva"] );
*/
function addLine( $ligne, $tab )
{
	global $colonnes, $format;

	$ordonnee     = 10;
	$maxSize      = $ligne;

	reset( $colonnes );
	while ( list( $lib, $pos ) = each ($colonnes) )
	{
		$longCell  = $pos -2;
		$texte     = $tab[ $lib ];
		$length    = $this->GetStringWidth( $texte );
		$tailleTexte = $this->sizeOfText( $texte, $length );
		$formText  = $format[ $lib ];
		$this->SetXY( $ordonnee, $ligne-1);
		$this->MultiCell( $longCell, 4 , $texte, 0, $formText);
		if ( $maxSize < ($this->GetY()  ) )
			$maxSize = $this->GetY() ;
		$ordonnee += $pos;
	}
	return ( $maxSize - $ligne );
}

function addRemarque($remarque)
{
	$this->SetFont( "Arial", "", 10);
	$length = $this->GetStringWidth( "Remarque : " . $remarque );
	$r1  = 10;
	$r2  = $r1 + $length;
	$y1  = $this->h - 45.5;
	$y2  = $y1+5;
	$this->SetXY( $r1 , $y1 );
	$this->Cell($length,4, "Remarque : " . $remarque);
}

function addCadreTVAs($nombre_empresa,$monto,$bcpsoles,$bcpdolares,$cuentadetracciones)
{
	$this->SetFont( "Arial", "B", 8);
	$r1  = 10;
	$r2  = $r1 + 120;
	$y1  = $this->h - 52;
	$y2  = $y1+20;

	$this->SetXY( $r1+9, $y1+3);
	$this->Cell(10,4, "");
	$this->SetFont( "Arial", "", 7);
	$this->SetXY( $r1+0, $y1+5);
	$this->SetFont('Arial', 'B', 7); // 'B' es para negrita
	$this->MultiCell(130, 4, 'SON: ');
	$this->SetXY( $r1+7, $y1+5);
	$this->SetFont('Arial', '', 7); // Restaurar a normal si es necesario
	$this->MultiCell(134, 4,  $monto);

		$this->RoundedRect(10, 257, 62, 20, 1, 'D');
		$this->SetFont( "Arial", "B", 9);
		
		$this->SetXY( $r1+3, $y1+13);
		$this->MultiCell(100,4+3, utf8_decode(WEB_EMPRESA2));
		$this->SetFont( "Arial", "B", 9);
		$this->SetXY( $r1+3, $y1+18);
		$this->MultiCell(100,4+6, utf8_decode(EMAIL2));
		$this->SetFont( "Arial", "", 8);
		$this->SetXY( $r1+0, $y1+22);
		$this->MultiCell(100,4, utf8_decode(""));
		//$this->MultiCell(100,4, utf8_decode( "N° CTA CTE BCP DÓLARES: $bcpdolares"));


		$this->RoundedRect(73, 257, 62, 20, 1, 'D');
		$this->SetFont( "Arial", "b", 6);
		$this->SetXY( $r1+63, $y1+13);
		$this->MultiCell(100,4, utf8_decode(""));
		$this->SetFont( "Arial", "BI", 7);
		$this->SetXY( $r1+68, $y1+13);
		$this->MultiCell(100,3, utf8_decode(SERVICIOS));
		$this->SetFont( "Arial", "", 7);
		$this->SetXY( $r1+63, $y1+22);
		$this->MultiCell(100,4, utf8_decode( ""));
 
	$this->Line( $r1, $y1+10, $r2, $y1+10);
}

function addCadreEurosFrancs($impuesto)
{
	$r1  = $this->w - 70;
	$r2  = $r1 + 60;
	$y1  = $this->h - 40;
	$y2  = $y1+20;
	$this->RoundedRect($r1, $y1, ($r2 - $r1), ($y2-$y1), 2.5, 'D');
	$this->Line( $r1+20,  $y1, $r1+20, $y2); // avant EUROS
	//$this->Line( $r1+20, $y1+4, $r2, $y1+4); // Sous Euros & Francs
	//$this->Line( $r1+38,  $y1, $r1+38, $y2); // Entre Euros & Francs
	$this->SetFont( "Arial", "", 8);
	$this->SetXY( $r1+22, $y1 );
	//$this->Cell(15,4, "TOTALES", 0, 0, "C");
	//$this->SetFont( "Arial", "", 8);
	//$this->SetXY( $r1+42, $y1 );
	//$this->Cell(15,4, "FRANCS", 0, 0, "C");
	$this->SetFont( "Arial", "", 8);
	$this->SetXY( $r1, $y1+3 );
	$this->Cell(20,4, "Sub Total", 0, 0, "C");
	$this->SetXY( $r1, $y1+8);
	$this->Cell(20,4, $impuesto, 0, 0, "C");
	$this->SetXY( $r1, $y1+14 );
	$this->SetFont( "Arial", "B", 8);
	$this->Cell(20,4, "TOTAL", 0, 0, "C");
}

// remplit les cadres TVA / Totaux et la remarque
// params  = array( "RemiseGlobale" => [0|1],
//                      "remise_tva"     => [1|2...],  // {la remise s'applique sur ce code TVA}
//                      "remise"         => value,     // {montant de la remise}
//                      "remise_percent" => percent,   // {pourcentage de remise sur ce montant de TVA}
//                  "FraisPort"     => [0|1],
//                      "portTTC"        => value,     // montant des frais de ports TTC
//                                                     // par defaut la TVA = 19.6 %
//                      "portHT"         => value,     // montant des frais de ports HT
//                      "portTVA"        => tva_value, // valeur de la TVA a appliquer sur le montant HT
//                  "AccompteExige" => [0|1],
//                      "accompte"         => value    // montant de l'acompte (TTC)
//                      "accompte_percent" => percent  // pourcentage d'acompte (TTC)
//                  "Remarque" => "texte"              // texte
// tab_tva = array( "1"       => 19.6,
//                  "2"       => 5.5, ... );
// invoice = array( "px_unit" => value,
//                  "qte"     => qte,
//                  "tva"     => code_tva );
function addTVAs( $subtotal, $igv, $total, $moneda )
{
	$this->SetFont('Arial','',8);

	$re  = $this->w - 30;
	$rf  = $this->w - 29;
	$y1  = $this->h - 40;
	$this->SetFont( "Arial", "", 9);
	$this->SetXY( $re, $y1+3);
	$this->Cell( 17,4, $moneda.sprintf("%0.2F", $subtotal), '', '', 'R');
	$this->SetXY( $re, $y1+8 );
	$this->SetFont( "Arial", "", 9);
	$this->Cell( 17,4, $moneda.sprintf("%0.2F", $igv), '', '', 'R');
	$this->SetXY( $re, $y1+13 );
	$this->SetFont( "Arial", "B", 9);
	$this->Cell( 17,4, $moneda.sprintf("%0.2F", $total), '', '', 'R');
	
}

// add a watermark (temporary estimate, DUPLICATA...)
// call this method first
function temporaire( $texte )
{
	$this->SetFont('Arial','B',50);
	$this->SetTextColor(203,203,203);
	$this->Rotate(45,55,190);
	$this->Text(55,190,$texte);
	$this->Rotate(0);
	$this->SetTextColor(0,0,0);
}

}
?>
