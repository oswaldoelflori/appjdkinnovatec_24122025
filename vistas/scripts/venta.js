var tabla;
var filaParaDescripcion = null;
var descripcionPorFila = {}; 
var filaParaDescripcion = null;
var getIdArticleNew = null;
var impuesto=18;
var cont=0;
var detalles=0;


document.addEventListener("DOMContentLoaded", init);

function init(){


        mostrarform(false);
        listar();
    cargarClientes();
        cargarVendedores();

    $("#formulario").on("submit", guardaryeditar);
    $("#frmVendedor").on("submit", guardarVendedor);

    $("#forma_pago").on("change", toggleCreditFields);
    toggleCreditFields();
	
        $("#idSubtotal").prop("readonly", true);

    $("#btnFiltrar").on("click", function(e){
        e.preventDefault();
        tabla.ajax.reload();
    });

    $("#btnExportarPDF").on("click", function(e){
        e.preventDefault();
        exportarVentasPDF();
    });

    $(document).on("click", ".btn-credito", function(){
        const id = $(this).data("id");
        marcarCreditoComoContado(id);
    });

        $('#tbllistado').on('dblclick', 'button.btn-credito', function () {
        const idventa = $(this).data('id');
        if (!idventa) return;
        bootbox.confirm('¿Desea marcar el crédito como contado?', function (result) {
            if (result) {
                $.post('../ajax/venta.php?op=marcarCreditoComoContado', { idventa: idventa }, function () {
                    tabla.ajax.reload(null, false);
                });
            }
        });
    });

}
function cargarClientes() {
    $.post("../ajax/venta.php?op=selectCliente", function (r) {
        $("#idcliente").html(r);
        $('#idcliente').selectpicker('refresh');
    });
}

function cargarVendedores() {
    $.post("../ajax/venta.php?op=selectVendedor", function (r) {
        $("#idvendedor_frmPrimary").html(r);
    });
}
function guardarVendedor(e) {
    e.preventDefault();
    const formData = new FormData($("#frmVendedor")[0]);

    $.ajax({
        url: "../ajax/venta.php?op=guardarVendedor",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function (respuesta) {
            bootbox.alert(respuesta);
            $("#modalAddSell").modal("hide");
            cargarVendedores();
        }
    });

    limpiar();
}


// === formulario.js ===
function mostrarform(flag) {
    limpiar();
    if (flag) {
		var divSerie = document.querySelector("#serie_comprobante");
		divSerie.value = 'F001';
		divSerie.disabled = true;
        $("#listadoregistros").hide();
        $("#formularioregistros").show();
        $("#btnagregar").hide();
        $("#btnGuardar").hide();
        $("#btnCancelar").show();
        $("#btnAgregarArt").show();
        detalles = 0;
        listarArticulos();
        
            obtenerCorrelativoVenta();
         

        
    } else {
        $("#listadoregistros").show();
        $("#formularioregistros").hide();
        $("#btnagregar").show();
    }
}
function cancelarform() {
    limpiar();
    mostrarform(false);
}

function listar() {
    tabla = $('#tbllistado').DataTable({
        aProcessing: true,
        aServerSide: true,
        dom: 'Bfrtip',
        buttons: ['excelHtml5', 'pdf'],
        ajax: {
            url: '../ajax/venta.php?op=listar',
            type: "get",
            dataType: "json",
            data: function(d){
                d.fecha_inicio = $("#fecha_inicio").val();
                d.fecha_fin = $("#fecha_fin").val();
            },
            error: function (e) {
                console.log(e.responseText);
            }
        },
        bDestroy: true,
        iDisplayLength: 20,
        order: [[0, "desc"]]
    });
}

function listarArticulos() {
    const tipo = $("#tipoFiltro").val();

    tabla = $('#tblarticulos').DataTable({
        aProcessing: true,
        aServerSide: true,
        dom: 'Bfrtip',
        buttons: [],
        ajax: {
            url: `../ajax/venta.php?op=listarArticulosVenta&tipo=${tipo}`,
            type: "get",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        bDestroy: true,
        iDisplayLength: 10,
        order: [[0, "desc"]]
    });
}
function limpiar() {
    $("#formulario")[0].reset();
    $("#idcliente").val("").selectpicker('refresh');
    $("#tipo_comprobante").val("Boleta").selectpicker('refresh');
    $("#forma_pago").val("contado");
    $(".filas").remove();
    $("#total").html("0");
    $("#info_monto_pagado").text("");
    $("#info_saldo_pendiente").text("");
    $("#num_comprobante").text("");
    const today = new Date().toISOString().slice(0, 10);
    $('#fecha_hora').val(today);

    toggleCreditFields();
}

function mostrar(idventa) {
    $.post("../ajax/venta.php?op=mostrar", { idventa }, function (data) {
        data = JSON.parse(data);
        mostrarform(true);
        mostrarDetalle(data.idventa);

        $("#idcliente").val(data.idcliente).selectpicker('refresh');
        $("#tipo_comprobante").val(data.tipo_comprobante).selectpicker('refresh');
        $("#serie_comprobante").val(data.serie_comprobante);
        $("#num_comprobante").val(data.num_comprobante);
        $("#fecha_hora").val(data.fecha);
        $("#impuesto").val(data.impuesto);
        $("#idventa").val(data.idventa);

        $("#forma_pago").val(data.forma_pago || 'contado');
        $("#monto_pagado").val(data.monto_pagado || '0');
        $("#fecha_vencimiento").val(data.fecha_vencimiento || '');
        $("#saldo_pendiente").val(data.saldo_pendiente || '0');
        $("#info_monto_pagado").text(data.monto_pagado || '0');
     //   $("#info_saldo_pendiente").text(data.saldo_pendiente || '0');

        toggleCreditFields();
        $("#btnGuardar").hide();
        $("#btnCancelar").show();
        $("#btnAgregarArt").hide();
        
        $("#idventaPagoCredito").val(data.idventa);
        
      

    });
}

function guardaryeditar(e)
{
	e.preventDefault();
    const totalVenta = parseFloat($("#total_venta").val() || 0);
    const montoPagado = parseFloat($("#monto_pagado").val() || 0);
    $("#saldo_pendiente").val((totalVenta - montoPagado).toFixed(2));

    const formData = new FormData($("#formulario")[0]);

	$.ajax({
		url: "../ajax/venta.php?op=guardaryeditar",
	    type: "POST",
	    data: formData,
	    contentType: false,
	    processData: false,
	    success: function(datos)
	    {     
	          bootbox.alert(datos);	          
	          mostrarform(false);
	        // listar();
              if (tabla && typeof tabla.ajax.reload === "function") {
                      tabla.ajax.reload(null, false);
            }
	    }

	});
	limpiar();
}

function mostrarDetalle(idventa) {
    $.post(`../ajax/venta.php?op=listarDetalle&id=${idventa}`, function (r) {
        $("#detalles").html(r);
    });
}
function activar(idventa) {
    if (!idventa) return bootbox.alert("ID de venta no válido.");

    bootbox.confirm("¿Está seguro de activar el artículo?", (result) => {
        if (!result) return;

        $.post("../ajax/venta.php?op=activar", { idventa })
            .done((respuesta) => {
                bootbox.alert(respuesta);
                if (tabla && typeof tabla.ajax.reload === "function") {
                    //tabla.ajax.reload();
                     tabla.ajax.reload(null, false);
                }
            })
            .fail((xhr) => {
                console.error("Error al activar el artículo:", xhr.responseText);
                bootbox.alert("Ocurrió un error al intentar activar el artículo.");
            });
    });
}

function anular(idventa) {
    if (!idventa) return bootbox.alert("ID de venta no válido.");

    bootbox.confirm("¿Está seguro de anular la venta?", (result) => {
        if (!result) return;

        $.post("../ajax/venta.php?op=anular", { idventa })
            .done((respuesta) => {
                bootbox.alert(respuesta);
                if (tabla && typeof tabla.ajax.reload === "function") {
                   // tabla.ajax.reload();
                      tabla.ajax.reload(null, false);
                }
            })
            .fail((xhr) => {
                console.error("Error al anular la venta:", xhr.responseText);
                bootbox.alert("Ocurrió un error al intentar anular la venta.");
            });
    });
}
$("#btnGuardar").hide();
$("#tipo_comprobante").change(marcarImpuesto);

function marcarImpuesto()
  {
  	var tipo_comprobante=$("#tipo_comprobante option:selected").text();
  	if (tipo_comprobante=='Factura')
    {
        $("#impuesto").val(impuesto); 
    }
    else
    {
        $("#impuesto").val("0"); 
    }
  }

// === detalle.js ===
function agregarDetalle(idarticulo, articulo, precio_venta, tipo) {
    const cantidad = 1;
    const descuento = 0;
    const subtotal = cantidad * precio_venta;

    if (!idarticulo) {
        return bootbox.alert("Error al ingresar el detalle, revisar los datos del artículo");
    }

    if (tipo === 'Servicio') {
        insertarServicioNuevo(articulo, precio_venta);
    } else {
        agregarFilaDetalle(idarticulo, articulo, cantidad, precio_venta, descuento, subtotal);
    }
}
function agregarDetalleSolo(idarticulo, articulo, precio_venta) {
    const cantidad = 1;
    const descuento = 0;
    const subtotal = cantidad * precio_venta;

    if (!idarticulo) {
        return bootbox.alert("Error al ingresar el detalle, revisar los datos del artículo");
    }

    agregarFilaDetalle(idarticulo, articulo, cantidad, precio_venta, descuento, subtotal);
}

function insertarServicioNuevo(articulo, precio_venta) {
    $.ajax({
        url: '../ajax/articulo.php?op=insertarArticulo',
        type: 'POST',
        data: {
            idcategoria: "23",
            codigo: "SERVI",
            nombre: "Servicio Nuevo",
            stock: "0",
            descripcion: "descripcion",
            unidadmedidaid: "3",
            imagen: "",
            idtipoarticulo: "2"
        },
        dataType: 'json',
        success: function (respuesta) {
            if (respuesta.success) {
                agregarFilaDetalle(respuesta.idarticulo, "Servicio Nuevo", 1, precio_venta, 0, precio_venta);
            } else {
                alert("Error al guardar: " + respuesta.message);
            }
        },
        error: function (e) {
            console.error("Error en AJAX:", e.responseText);
        }
    });
}

function agregarFilaDetalle(idarticulo, articulo, cantidad, precio_venta, descuento, subtotal) {
    const fila = `
        <tr class="filas" id="fila${cont}">
            <td><button type="button" class="btn btn-danger" onclick="eliminarDetalle(${cont})">X</button></td>
            <td>
                <input type="hidden" name="idarticulo[]" value="${idarticulo}" />
                ${articulo.includes('Servicio') ? 
                    `Servicio Nuevo 
                     <button type="button" class="btn btn-info" onclick='addDescriptionDetail(${cont}, ${idarticulo})'>
                         <span class="fa fa-plus"></span>
                     </button>` 
                : articulo}
            </td>
            <td><input type="text" name="cantidad[]" id="cantidad${cont}" value="${cantidad}" onkeyup="modificarSubototales()"></td>
            <td><input type="text" name="precio_venta[]" id="precio_venta${cont}" value="${precio_venta}" onkeyup="modificarSubototales()"></td>
            <td><input type="text" name="descuento[]" value="${descuento}"></td>
            <td><input type="text" name="subtotal" id="subtotal${cont}" value="${subtotal}"></td>
            <td><button type="button" onclick="modificarSubototales()" class="btn btn-info"><i class="fa fa-refresh"></i></button></td>
        </tr>`;

    cont++;
    detalles++;
    $('#detalles').append(fila);
    modificarSubototales();
}

function agregarDetalleSolo(idarticulo,articulo,precio_venta)
{
  	var cantidad=1;
    var descuento=0;

	if (idarticulo != "")
	{
		var subtotal = cantidad * precio_venta;

			var fila = '<tr class="filas" id="fila' + cont + '">' +
				'<td><button type="button" class="btn btn-danger" onclick="eliminarDetalle(' + cont + ')">X</button></td>' +
				'<td><input type="hidden" name="idarticulo[]" value="' + idarticulo + '"/>' +
				articulo +
				
				'<td><input type="text" name="cantidad[]" id="cantidad' + cont + '" onkeyup="modificarSubototales()" value="' + cantidad + '"></td>' +
				'<td><input type="text" name="precio_venta[]" id="precio_venta' + cont + '" onkeyup="modificarSubototales()" value="' + precio_venta + '"></td>' +
				'<td><input type="text" name="descuento[]" value="' + descuento + '"></td>' +
				'<td><input type="text" name="subtotal" id="subtotal' + cont + '" value="' + subtotal + '"></td>' +
				'<td><button type="button" onclick="modificarSubototales()" class="btn btn-info"><i class="fa fa-refresh"></i></button></td>' +
				'</tr>';

			cont++;
			detalles++;
			$('#detalles').append(fila);
			modificarSubototales();
 

	} else 
	{
		bootbox.alert("Error al ingresar el detalle, revisar los datos del artículo");
	}
}
 
function modificarSubototales() {
    const cantidades = document.getElementsByName("cantidad[]");
    const precios = document.getElementsByName("precio_venta[]");
    const descuentos = document.getElementsByName("descuento[]");
    const subtotales = document.getElementsByName("subtotal");

    for (let i = 0; i < cantidades.length; i++) {
        const cantidad = parseFloat(cantidades[i].value) || 0;
        const precio = parseFloat(precios[i].value) || 0;
        const descuento = parseFloat(descuentos[i].value) || 0;
        const subtotal = (cantidad * precio) - descuento;
        subtotales[i].value = subtotal.toFixed(2);
    }

    calcularTotales();
}

function calcularTotales() {
    const subtotales = document.getElementsByName("subtotal");
    let totalVenta = 0;
    let montoBase = 0;

    for (let i = 0; i < subtotales.length; i++) {
        const subtotal = parseFloat(subtotales[i].value) || 0;
        const real = subtotal / 1.18;
        montoBase += real;
        totalVenta += subtotal;
    }

    const igv = totalVenta - montoBase;

    $("#idSubtotal").val(montoBase.toFixed(2));
    $("#igv").val(igv.toFixed(2));
    $("#total_venta").val(totalVenta.toFixed(2));
    $("#total_cotizacion").val(totalVenta.toFixed(2));
    $("#total").html("S/ " + totalVenta.toFixed(2));

    evaluar();
}
function evaluar() {
    $("#btnGuardar").toggle(detalles > 0);
    if (detalles === 0) cont = 0;
}

function eliminarDetalle(indice) {
    $("#fila" + indice).remove();
    detalles--;
    calcularTotales();
}
// === cotizacion_contacto_descripcion.js ===
// Cotización

function fnGetInvoice() {
    const quotation = $("#quotation").val().trim();
    if (!quotation) return alert("Por favor, ingrese un número de cotización.");

    $.post(`${url}/ajax/venta.php?op=searchquotation`, { quotation }, function (data) {
        data = JSON.parse(data);
        mostrarform(true);
        $("#idcliente").val(data.idcliente).selectpicker('refresh');
        $("#num_comprobante").val(data.num_comprobante);

        $("#btnGuardar").hide();
        $("#btnCancelar").show();

        fnGetInvoiceDetail(quotation);
    });
}

function fnGetInvoiceDetail(quotation){
	$.post(`${url}/ajax/venta.php?op=searchquotationdetail`,{quotation}, function(data){
        $("#detalles").html(data);
        $("#btnGuardar").show();
	});
}

$("#btnFindForQuotations").click(jsfindForQuotations);

function jsfindForQuotations() {
    tabla = $('#showQuotations').DataTable({
        aProcessing: true,
        aServerSide: true,
        dom: 'Bfrtip',
        buttons: [],
        ajax: {
            url: '../ajax/cotizacion.php?op=findForQuotations',
            type: "POST",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        bDestroy: true,
        iDisplayLength: 10,
        order: [[0, "desc"]]
    });
}

function showQuotationId(idcontacto) {
    if (!idcontacto) return bootbox.alert("Error al seleccionar la cotización");

    $("#quotation").val(idcontacto);
    $("#MdlFindForQuotations").modal("hide");
    fnGetInvoice();
}
// Contactos
$("#btnBuscarContacto").click(buscarContacto);

function buscarContacto() {
    tabla = $('#detalleBusqueda').DataTable({
        aProcessing: true,
        aServerSide: true,
        dom: 'Bfrtip',
        buttons: [],
        ajax: {
            url: '../ajax/cotizacion.php?op=buscarContacto',
            type: "POST",
            dataType: "json",
            error: function (e) {
                console.log(e.responseText);
            }
        },
        bDestroy: true,
        iDisplayLength: 10,
        order: [[0, "desc"]]
    });
}

function mostrarContactoDetalle(idcontacto, nombre, apellido) {
    if (!idcontacto) return bootbox.alert("Error al ingresar el detalle del contacto");

    const fila = `
        <tr class="filas2" id="filaContacto">
            <td><input type="hidden" name="idcontacto_tabla" value="${idcontacto}" />
                <input type="text" name="nombre_tabla" value="${nombre}">
            </td>
            <td><input type="text" name="apellido_tabla" value="${apellido}"></td>
        </tr>`;

    cont++;
    $("#tablaDetalleContacto").append(fila);
    $("#modalSearchCustomer").modal("hide");
    $("#btnBuscarContacto").prop("disabled", true);
}


function addDescriptionDetail(index, idArticleNew) {
    filaParaDescripcion = index;
    getIdArticleNew = idArticleNew;
    // Si ya se guardó una descripción antes, recuperarla
    var textoGuardado = descripcionPorFila[index] || "";
    $('#descripcionTextarea').val(textoGuardado);

    $('#modalDescripcion').modal('show');
}

$("#btnGuardarDescripcion").click(function () {
    const descripcion = $("#descripcionTextarea").val().trim();
    if (!descripcion) return alert("El campo descripción no puede estar vacío.");

    descripcionPorFila[filaParaDescripcion] = descripcion;

    const fila = document.getElementById("fila" + filaParaDescripcion);
    if (!fila) return alert("No se encontró la fila destino.");

    const inputNombre = fila.querySelector('input[name="nombre[]"]');
    if (inputNombre) {
        inputNombre.value = descripcion;
        inputNombre.setAttribute('value', descripcion);
    }

    $.ajax({
        url: '../ajax/articulo.php?op=actualizarDescripcionArticulo',
        type: 'POST',
        data: {
            idarticulo: getIdArticleNew,
            nombre: descripcion
        },
        dataType: 'json',
        success: function (respuesta) {
            alert(respuesta.success ? respuesta.message : `Error: ${respuesta.message}`);
        },
        error: function (e) {
            console.error("Error en AJAX:", e.responseText);
        }
    });

    $('#modalDescripcion').modal('hide');
});
function abrirModalCliente() {
  $('#modalCliente').modal('show');
}

$('#btnBuscarDocumento').click(function () {
    
    var documento = $('#documento').val().trim();

    if (documento.length !== 8 && documento.length !== 11) {
        alert("Ingrese DNI (8) o RUC (11) válido.");
        return;
    }

    var url = "../ajax/sunat_api.php?documento=" + documento;

    $.ajax({
        url: url,
        type: "GET",
        dataType: "json",
        success: function (data) {
 

         if (documento.length === 11 && !data.ruc) {
                alert("No se encontró información válida para el RUC.");
                return;
            } else if (documento.length === 8 && !data.nombres) {
                alert("No se encontró información válida para el DNI.");
                return;
            }
            // RUC o empresa            
            if (data.razonSocial) {
                $("#nombreClienteRazonSocial").val(data.razonSocial);
                $("#tipo_documento").val("RUC");
            }

            // DNI o persona natural
            if (data.nombres) {
                var nombresCompletos = data.nombres + ' ' +
                    (data.apellidoPaterno || '') + ' ' +
                    (data.apellidoMaterno || '');
                $("#nombreClienteRazonSocial").val(nombresCompletos.trim());
                $("#tipo_documento").val("DNI");
            }

            $("#num_documento").val(documento);
            $("#tipo_persona").val("Cliente");

            if (data.direccion) {
                var dir = data.direccion;
                if (data.distrito) dir += " - " + data.distrito;
             //  if (data.provincia) dir += " - " + data.provincia;
               // if (data.departamento) dir += " - " + data.departamento;

                $("#direccion").val(dir);
            }
        },
        error: function (xhr, status, error) {
            console.error("Error en la petición AJAX:", error);
            alert("Ocurrió un error al consultar el documento.");
        }
    });
});
$("#btnGuardarCliente").click(function (e) {
    e.preventDefault(); // evita envío del form
    insertarClienteNuevo();
});

function insertarClienteNuevo() {
    const clienteData = {
        tipo_persona: "Cliente",
        tipo_documento: $("#tipo_documento").val(),
        num_documento: $("#documento").val().trim(),
        nombre: $("#nombreClienteRazonSocial").val().trim(),
        direccion: $("#direccion").val().trim(),
        telefono: $("#telefono").val().trim(),
        email: $("#email").val().trim(),
        observaciones: $("#observaciones").val().trim()
    };

    if (clienteData.num_documento.length < 8) {
        alert("Número de documento no válido.");
        return;
    }

    if (!clienteData.nombre) {
        alert("El nombre o razón social es obligatorio.");
        return;
    }

    $.ajax({
        url: '../ajax/persona.php?op=guardarCliente',
        type: 'POST',
        data: clienteData,
        dataType: 'json',
        success: function (respuesta) {
            if (respuesta.success) {
                alert("Cliente registrado correctamente");
                $("#modalCliente").modal("hide");
                cargarClientes();
                // Aquí podrías recargar el combo de clientes o similar
            } else {
                alert("Error al registrar cliente: " + (respuesta.message || "Desconocido"));
            }
        },
        error: function (e) {
            console.error("Error en AJAX:", e.responseText);
            alert("Error al registrar cliente.");
        }
    });
}

function toggleCreditFields() {
    const isCredito = $("#forma_pago").val().toLowerCase() === "credito";
    console.log(isCredito)
    $(".credit-fields, .credit-summary").toggle(isCredito);
    $("#bloqueCredito").toggle(isCredito);
}

$('#forma_pago').change(function () {
    toggleCreditFields();
});

$('#btnAgregarPago').click(function () {
     const idventa = $("#idventa").val();
    if (!idventa) {
        alert("No se ha seleccionado una venta.");
        return;
    }
    $("#idventa").val(idventa); // este es el input hidden en el formulario
    $("#modalPagoCredito").modal("show");

});
$('#btnVerPagos').click(function ()
{
    const idventa = $("#idventa").val();
    if (!idventa) {
        alert("No se ha seleccionado una venta.");
        return;
    }
  //  $("#idventa").val(idventa); // este es el input hidden en el formulario
    listarPagos(idventa);       // este llama al backend y pinta la tabla
    $("#modalVerPagosRealizados").modal("show");
 obtenerTotalAbono(idventa);
});


function listarPagos(idventa) {
    $('#tablaPagos').DataTable({
        destroy: true,
        responsive: true,
        processing: true,
        serverSide: true,
        ajax: {
            url: '../ajax/venta_pago.php?op=listarPagos',
            type: 'POST',
            data: { idventa: idventa },
            error: function (xhr, error, thrown) {
                console.error("Error al listar pagos:", xhr.responseText);
            }
        },
        language: {
            url: "https://cdn.datatables.net/plug-ins/1.10.25/i18n/Spanish.json"
        },
        drawCallback: function (settings) {
            // Si quieres sumar los montos visibles en pantalla
            let total = 0;
            const api = this.api();
            api.rows().every(function () {
                const data = this.data();
                const monto = parseFloat(data[1].replace(",", "")) || 0;
                total += monto;
            });
            // Comentado porque usarás el total real desde el servidor
            // $("#totalPagado").text("S/. " + total.toFixed(2));
        },
        initComplete: function (settings, json) {
            // Llamada al total desde el servidor luego de que la tabla esté cargada
           
        }
    });
}


function obtenerTotalAbono(idventa) {
    $.ajax({
        url: '../ajax/venta_pago.php?op=totalAbono',
        type: 'POST',
        dataType: 'json',
        data: { idventa: idventa },
        success: function (response) {
            if (response && response.total_abono !== undefined) {
                $("#totalPagado").text("S/. " + parseFloat(response.total_abono).toFixed(2));
                $("#info_saldo_pendiente").text("S/. " + parseFloat(response.saldo_pendiente).toFixed(2));
            } else {
                $("#totalPagado").text("S/. 0.00");
                $("#info_saldo_pendiente").text("S/. 0.00");
            }
        },
        error: function (xhr, status, error) {
            console.error("Error al obtener total de abonos:", xhr.responseText);
            $("#info_saldo_pendiente").text("S/. 0.00");
        }
    });
}


function obtenerCorrelativoVenta() {
    $.ajax({
        url: '../ajax/venta.php?op=obtenerCorrelativoVenta',
        type: 'POST',
        dataType: 'json',
        success: function (response) {

           if (response && response.correlativo !== undefined) {
            const correlativo = response.correlativo;
            if (!$("#num_comprobante").val()) {
                $("#num_comprobante").val(correlativo);
            }
        } else {
            $("#num_comprobante").val("0000");
        }

        },
        error: function (xhr, status, error) {
            console.error("Error al obtener correlativo:", xhr.responseText);
            $("#num_comprobante").text("0000");
        }
    });
}


/* function abrirModalPago() {
    $("#idventa").val(idventa);
    listarPagos(idventa);
    $("#modalPagoCreditoAbonos").modal("show");
}
  */



function marcarCreditoComoContado(id){
    bootbox.confirm("¿Marcar esta venta como pagada al contado?", function(result){
        if(result){
            $.post("../ajax/venta.php?op=marcarCreditoComoContado", {idventa:id}, function(resp){
                var data = JSON.parse(resp);
                if(data.ok){
                    tabla.ajax.reload();
                }else{
                    bootbox.alert(data.msg || 'Error al actualizar');
                }
            });
        }
    });
}

function exportarVentasPDF(){
    var fi = $("#fecha_inicio").val();
    var ff = $("#fecha_fin").val();
    window.open(`../ajax/venta.php?op=exportarVentasPDF&fecha_inicio=${fi}&fecha_fin=${ff}`, '_blank');
}

