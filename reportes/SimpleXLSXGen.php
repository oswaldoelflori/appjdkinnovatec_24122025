<?php
/**
 * SimpleXLSXGen - lightweight XLSX generator.
 * Version adapted for PHP 7.4 compatibility.
 * Fuente: https://github.com/shuchkin/simplexlsxgen (licencia MIT).
 * El archivo se incluye localmente para evitar dependencias externas.
 */

class SimpleXLSXGen
{
    /** @var array $rows Conjunto de filas a exportar */
    private $rows = array();

    /**
     * Mapa de estilos disponibles para las celdas.
     *
     * @var array
     */
    private $styleMap = array(
        'default'  => 0,
        'header'   => 1,
        'negative' => 2,
    );

    /**
     * Constructor privado para forzar el uso de make.
     *
     * @param array $rows
     */
    private function __construct(array $rows)
    {
        $this->rows = $rows;
    }

    /**
     * Crea una instancia a partir de un arreglo bidimensional.
     *
     * @param array $rows
     * @return SimpleXLSXGen
     */
    public static function fromArray(array $rows)
    {
        return new self($rows);
    }

    /**
     * Genera el contenido XLSX y lo envía directamente al navegador.
     *
     * @param string $filename
     */
    public function downloadAs($filename)
    {
        $xlsx = $this->buildXLSX();
        header('Content-disposition: attachment; filename=' . $filename);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Transfer-Encoding: binary');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        echo $xlsx;
        exit;
    }

    /**
     * Crea el contenido binario del archivo XLSX en memoria.
     *
     * @return string
     */
    private function buildXLSX()
    {
        $xml = $this->buildXML();

        $zip = new ZipArchive();
        $tempFile = tempnam(sys_get_temp_dir(), 'xlsx');
        $zip->open($tempFile, ZipArchive::OVERWRITE);
        $zip->addFromString('[Content_Types].xml', $this->contentTypesXML());
        $zip->addFromString('_rels/.rels', $this->relsXML());
        $zip->addFromString('xl/_rels/workbook.xml.rels', $this->workbookRelsXML());
        $zip->addFromString('xl/workbook.xml', $this->workbookXML());
        $zip->addFromString('xl/styles.xml', $this->stylesXML());
        $zip->addFromString('xl/worksheets/sheet1.xml', $xml);
        $zip->close();

        $contents = file_get_contents($tempFile);
        unlink($tempFile);

        return $contents;
    }

    /**
     * Construye el XML de la hoja.
     *
     * @return string
     */
    private function buildXML()
    {
        $rowsXML = '';
        $rowIndex = 1;
        foreach ($this->rows as $row) {
            $cellsXML = '';
            $colIndex = 1;
            foreach ($row as $value) {
                $cellsXML .= $this->buildCellXML($value, $rowIndex, $colIndex);
                $colIndex++;
            }
            $rowsXML .= '<row r="' . $rowIndex . '">' . $cellsXML . '</row>';
            $rowIndex++;
        }

        return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            . '<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"'
            . ' xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">'
            . '<sheetData>' . $rowsXML . '</sheetData>'
            . '</worksheet>';
    }

    /**
     * Genera la celda individual.
     *
     * @param mixed $value
     * @param int $rowIndex
     * @param int $colIndex
     * @return string
     */
    private function buildCellXML($value, $rowIndex, $colIndex)
    {
        $column = $this->columnName($colIndex) . $rowIndex;
        $style = $this->extractStyle($value);
        $styleAttr = $style !== 0 ? ' s="' . $style . '"' : '';

        $cellValue = $this->extractValue($value);

        if (is_numeric($cellValue)) {
            return '<c r="' . $column . '" t="n"' . $styleAttr . '><v>' . $cellValue . '</v></c>';
        }

        $escaped = htmlspecialchars($cellValue, ENT_XML1 | ENT_COMPAT, 'UTF-8');
        return '<c r="' . $column . '" t="inlineStr"' . $styleAttr . '><is><t>' . $escaped . '</t></is></c>';
    }

    /**
     * Obtiene el índice del estilo aplicado a la celda.
     *
     * @param mixed $value
     * @return int
     */
    private function extractStyle($value)
    {
        if (is_array($value) && isset($value['style'])) {
            $style = $value['style'];
            if (isset($this->styleMap[$style])) {
                return $this->styleMap[$style];
            }
        }

        return $this->styleMap['default'];
    }

    /**
     * Obtiene el valor puro de la celda, independientemente del estilo.
     *
     * @param mixed $value
     * @return mixed
     */
    private function extractValue($value)
    {
        if (!is_array($value)) {
            return $value;
        }

        if (array_key_exists('value', $value)) {
            return $value['value'];
        }

        if (array_key_exists(0, $value)) {
            return $value[0];
        }

        return '';
    }

    /**
     * Convierte un índice numérico a la letra de columna correspondiente (A, B, ... AA, AB, ...).
     *
     * @param int $index
     * @return string
     */
    private function columnName($index)
    {
        $name = '';
        while ($index > 0) {
            $index--;
            $name = chr(65 + ($index % 26)) . $name;
            $index = intval($index / 26);
        }
        return $name;
    }

    private function contentTypesXML()
    {
        return '<?xml version="1.0" encoding="UTF-8"?>'
            . '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
            . '<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>'
            . '<Default Extension="xml" ContentType="application/xml"/>'
            . '<Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>'
            . '<Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>'
            . '<Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>'
            . '</Types>';
    }

    private function relsXML()
    {
        return '<?xml version="1.0" encoding="UTF-8"?>'
            . '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
            . '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>'
            . '</Relationships>';
    }

    private function workbookRelsXML()
    {
        return '<?xml version="1.0" encoding="UTF-8"?>'
            . '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
            . '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/>'
            . '<Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>'
            . '</Relationships>';
    }

    private function workbookXML()
    {
        return '<?xml version="1.0" encoding="UTF-8"?>'
            . '<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"'
            . ' xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">'
            . '<sheets>'
            . '<sheet name="Hoja1" sheetId="1" r:id="rId1"/>'
            . '</sheets>'
            . '</workbook>';
    }

    private function stylesXML()
    {
        return '<?xml version="1.0" encoding="UTF-8"?>'
            . '<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">'
            . '<fonts count="3">'
            . '<font><sz val="11"/><color rgb="FF000000"/><name val="Calibri"/></font>'
            . '<font><b/><sz val="11"/><color rgb="FF000000"/><name val="Calibri"/></font>'
            . '<font><sz val="11"/><color rgb="FFFF0000"/><name val="Calibri"/></font>'
            . '</fonts>'
            . '<fills count="2">'
            . '<fill><patternFill patternType="none"/></fill>'
            . '<fill><patternFill patternType="solid"><fgColor rgb="FFD9E1F2"/><bgColor indexed="64"/></patternFill></fill>'
            . '</fills>'
            . '<borders count="1"><border><left/><right/><top/><bottom/><diagonal/></border></borders>'
            . '<cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>'
            . '<cellXfs count="3">'
            . '<xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0"/>'
            . '<xf numFmtId="0" fontId="1" fillId="1" borderId="0" xfId="0" applyFont="1" applyFill="1"/>'
            . '<xf numFmtId="0" fontId="2" fillId="0" borderId="0" xfId="0" applyFont="1"/>'
            . '</cellXfs>'
            . '<cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/></cellStyles>'
            . '</styleSheet>';
    }
}
