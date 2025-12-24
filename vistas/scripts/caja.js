var tabla;

function init(){
    mostrarform(false);
    listar();

    $("#formulario").on("submit",function(e){
        guardaryeditar(e);
    });

    $.post("../ajax/caja.php?op=selectUsuario", function(r){
        $("#idusuario").html(r);
        $('#idusuario').selectpicker('refresh');
        $("#responsable").html('<option value="">Todos</option>'+r);
        $('#responsable').selectpicker('refresh');
    });

    $("#btnBuscar").on('click', function(){
        var desde = $('#fecha_desde').val();
        var hasta = $('#fecha_hasta').val();
        if(desde && hasta && desde>hasta){
            alert('La fecha "Desde" no puede ser mayor que "Hasta"');
            return;
        }
        tabla.ajax.reload();
    });
    $("#btnLimpiar").on('click', function(){
        $('#fecha_desde').val('');
        $('#fecha_hasta').val('');
        $('#filtro_tipo').val('');
        $('#responsable').val('');
        $('#responsable').selectpicker('refresh');
        tabla.ajax.reload();
    });
    $("#btnReporte").on('click', function(){
        var desde = $('#fecha_desde').val();
        var hasta = $('#fecha_hasta').val();
        if(desde && hasta && desde>hasta){
            alert('La fecha "Desde" no puede ser mayor que "Hasta"');
            return false;
        }
        var tipo = $('#filtro_tipo').val();
        var responsable = $('#responsable').val();
        var url = '../reportes/rptcajachica.php?fecha_desde='+desde+'&fecha_hasta='+hasta+'&tipo='+tipo+'&responsable='+responsable;
        $(this).attr('href', url);
    });
    $("#btnReporteExcel").on('click', function(){
        var desde = $('#fecha_desde').val();
        var hasta = $('#fecha_hasta').val();
        if(desde && hasta && desde>hasta){
            alert('La fecha "Desde" no puede ser mayor que "Hasta"');
            return false;
        }
        var tipo = $('#filtro_tipo').val();
        var responsable = $('#responsable').val();
        var url = '../reportes/rptcajachica_excel.php?fecha_desde='+desde+'&fecha_hasta='+hasta+'&tipo='+tipo+'&responsable='+responsable;
        $(this).attr('href', url);
    });
}

function limpiar(){
    $("#fecha").val('');
    $("#monto").val('');
    $("#concepto").val('');
    $("#TipoDeGasto").val('');
    $("#MedioDePago").val('');
    if ($.fn.selectpicker) {
        $('#TipoDeGasto').selectpicker('refresh');
        $('#MedioDePago').selectpicker('refresh');
    }
}

function mostrarform(flag){
    limpiar();
    if(flag){
        $("#listadoregistros").hide();
        $("#formularioregistros").show();
        $("#btnGuardar").prop("disabled",false);
        $("#btnagregar").hide();
    }else{
        $("#listadoregistros").show();
        $("#formularioregistros").hide();
        $("#btnagregar").show();
    }
}

function cancelarform(){
    limpiar();
    mostrarform(false);
}

function listar(){
    tabla=$('#tbllistado').dataTable({
        "aProcessing": true,
        "aServerSide": true,
        dom: 'Bfrtip',
        buttons: ['excelHtml5','pdf'],
        "ajax": {
            url: '../ajax/caja.php?op=listar',
            type: "get",
            data: function(d){
                d.fecha_desde = $('#fecha_desde').val();
                d.fecha_hasta = $('#fecha_hasta').val();
                d.tipo = $('#filtro_tipo').val();
                d.responsable = $('#responsable').val();
            },
            dataType: "json",
            error: function(e){
                console.log(e.responseText);
            }
        },
        "bDestroy": true,
        "iDisplayLength": 25,
        "order": [[0,"desc"]]
    }).DataTable();
}

function guardaryeditar(e){
    e.preventDefault();
    var tipo = $("#tipo_movimiento").val();
    var tipoGasto = $("#TipoDeGasto").val();
    var medioPago = $("#MedioDePago").val();
    if(tipoGasto === '' || medioPago === ''){
        alert('Debe seleccionar el tipo de gasto y el medio de pago.');
        return false;
    }
    var formData = new FormData($("#formulario")[0]);
    formData.append('tipo', tipo);
    $.ajax({
        url: "../ajax/caja.php?op=guardaryeditar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(datos){
            alert(datos);
            mostrarform(false);
            tabla.ajax.reload();
        }
    });
}

init();