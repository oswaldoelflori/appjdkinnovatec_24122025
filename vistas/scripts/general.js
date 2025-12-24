function getSunat() {
    var num_documento = $("#num_documento").val();
    var formData = new FormData($("#formulario")[0]);

    $.ajax({
        url: "../ajax/persona.php?op=validarSunat&idDocumento=" + num_documento,
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,

        success: function(datos) {
            try {
                var data = JSON.parse(datos);

                // Validar que el campo RUC venga en la respuesta
                if (!data.ruc) {
                    alert("No se encontró información válida para el RUC.");
                    console.log("Respuesta incompleta:", data);
                    return;
                }

                // Extraer campos
                var razonSocial = data.razonSocial || '';
                var direccion = data.direccion || 'Sin dirección';
                var distrito = data.distrito || 'Sin distrito';
                var provincia = data.provincia || 'Sin provincia';
                var departamento = data.departamento || 'Sin departamento';

                // Rellenar inputs
                $("#nombre").val(razonSocial);
                $("#direccion").val(`${direccion} - ${distrito} - ${provincia} - ${departamento}`);
            } catch (e) {
                console.error("Error procesando la respuesta:", e);
                alert("Error al interpretar los datos del proveedor.");
            }
        },
        error: function(xhr, status, error) {
            console.error("Error en la petición AJAX:", error);
            alert("Ocurrió un error al consultar SUNAT.");
        }
    });
}

function getReniec(){
	var num_documento = $("#dni").val();
	 
	var formData = new FormData($("#frmContacto")[0]);
	$.ajax({
		url: "../ajax/persona.php?op=validarReniec&idDocumento="+ num_documento,
		type: "POST",
		data: formData,
		contentType: false,
		processData: false,

		success: function(datos) //datos mensaje de archivo categoria ajax
		{

			data = JSON.parse(datos); // convierte los datos que se esta recibiendo de la url a un objeto javascrit
var nombre = data.item.nombre;
var paterno = data.item.paterno;
var materno = data.item.materno;
		$("#nombre").val(data.item.nombre);
		$("#apellido").val(paterno+ ' '+ materno);
			console.log(data);	  
			console.log(datos);	  
		}
	});
}